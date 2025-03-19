; ModuleID = 'lib/ucs2_string.c'
source_filename = "lib/ucs2_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ucs2_strnlen: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ucs2_strnlen ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ucs2_strlen: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ucs2_strlen ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ucs2_strsize: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ucs2_strsize ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ucs2_strncmp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ucs2_strncmp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ucs2_utf8size: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ucs2_utf8size ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ucs2_as_utf8: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ucs2_as_utf8 ; .previous"

@__UNIQUE_ID___addressable_ucs2_strnlen195 = internal global ptr @ucs2_strnlen, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_ucs2_strlen196 = internal global ptr @ucs2_strlen, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_ucs2_strsize197 = internal global ptr @ucs2_strsize, section ".discard.addressable", align 8, !dbg !9
@__UNIQUE_ID___addressable_ucs2_strncmp198 = internal global ptr @ucs2_strncmp, section ".discard.addressable", align 8, !dbg !11
@__UNIQUE_ID___addressable_ucs2_utf8size199 = internal global ptr @ucs2_utf8size, section ".discard.addressable", align 8, !dbg !13
@__UNIQUE_ID___addressable_ucs2_as_utf8200 = internal global ptr @ucs2_as_utf8, section ".discard.addressable", align 8, !dbg !15
@__UNIQUE_ID_file201 = internal constant [33 x i8] c"ucs2_string.file=lib/ucs2_string\00", section ".modinfo", align 1, !dbg !17
@__UNIQUE_ID_license202 = internal constant [27 x i8] c"ucs2_string.license=GPL v2\00", section ".modinfo", align 1, !dbg !24
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_ucs2_strnlen195, ptr @__UNIQUE_ID___addressable_ucs2_strlen196, ptr @__UNIQUE_ID___addressable_ucs2_strsize197, ptr @__UNIQUE_ID___addressable_ucs2_strncmp198, ptr @__UNIQUE_ID___addressable_ucs2_utf8size199, ptr @__UNIQUE_ID___addressable_ucs2_as_utf8200, ptr @__UNIQUE_ID_file201, ptr @__UNIQUE_ID_license202], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ucs2_strnlen(ptr noundef %s, i64 noundef %maxlength) #0 align 16 !dbg !38 {
entry:
  %s.addr = alloca ptr, align 8
  %maxlength.addr = alloca i64, align 8
  %length = alloca i64, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !57, metadata !DIExpression()), !dbg !60
  store i64 %maxlength, ptr %maxlength.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxlength.addr, metadata !58, metadata !DIExpression()), !dbg !61
  call void @llvm.lifetime.start.p0(i64 8, ptr %length) #3, !dbg !62
  call void @llvm.dbg.declare(metadata ptr %length, metadata !59, metadata !DIExpression()), !dbg !63
  store i64 0, ptr %length, align 8, !dbg !63
  br label %while.cond, !dbg !64

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 8, !dbg !65
  %incdec.ptr = getelementptr i16, ptr %0, i32 1, !dbg !65
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !65
  %1 = load i16, ptr %0, align 2, !dbg !66
  %conv = zext i16 %1 to i32, !dbg !66
  %cmp = icmp ne i32 %conv, 0, !dbg !67
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !68

land.rhs:                                         ; preds = %while.cond
  %2 = load i64, ptr %length, align 8, !dbg !69
  %3 = load i64, ptr %maxlength.addr, align 8, !dbg !70
  %cmp2 = icmp ult i64 %2, %3, !dbg !71
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ], !dbg !72
  br i1 %4, label %while.body, label %while.end, !dbg !64

while.body:                                       ; preds = %land.end
  %5 = load i64, ptr %length, align 8, !dbg !73
  %inc = add i64 %5, 1, !dbg !73
  store i64 %inc, ptr %length, align 8, !dbg !73
  br label %while.cond, !dbg !64, !llvm.loop !74

while.end:                                        ; preds = %land.end
  %6 = load i64, ptr %length, align 8, !dbg !77
  call void @llvm.lifetime.end.p0(i64 8, ptr %length) #3, !dbg !78
  ret i64 %6, !dbg !79
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ucs2_strlen(ptr noundef %s) #0 align 16 !dbg !80 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !84, metadata !DIExpression()), !dbg !85
  %0 = load ptr, ptr %s.addr, align 8, !dbg !86
  %call = call i64 @ucs2_strnlen(ptr noundef %0, i64 noundef -1) #4, !dbg !87
  ret i64 %call, !dbg !88
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ucs2_strsize(ptr noundef %data, i64 noundef %maxlength) #0 align 16 !dbg !89 {
entry:
  %data.addr = alloca ptr, align 8
  %maxlength.addr = alloca i64, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !93, metadata !DIExpression()), !dbg !95
  store i64 %maxlength, ptr %maxlength.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxlength.addr, metadata !94, metadata !DIExpression()), !dbg !96
  %0 = load ptr, ptr %data.addr, align 8, !dbg !97
  %1 = load i64, ptr %maxlength.addr, align 8, !dbg !98
  %div = udiv i64 %1, 2, !dbg !99
  %call = call i64 @ucs2_strnlen(ptr noundef %0, i64 noundef %div) #4, !dbg !100
  %mul = mul i64 %call, 2, !dbg !101
  ret i64 %mul, !dbg !102
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @ucs2_strncmp(ptr noundef %a, ptr noundef %b, i64 noundef %len) #0 align 16 !dbg !103 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !108, metadata !DIExpression()), !dbg !111
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !109, metadata !DIExpression()), !dbg !112
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !110, metadata !DIExpression()), !dbg !113
  br label %while.body, !dbg !114

while.body:                                       ; preds = %entry, %if.end16
  %0 = load i64, ptr %len.addr, align 8, !dbg !115
  %cmp = icmp eq i64 %0, 0, !dbg !118
  br i1 %cmp, label %if.then, label %if.end, !dbg !119

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4, !dbg !120
  br label %return, !dbg !120

if.end:                                           ; preds = %while.body
  %1 = load ptr, ptr %a.addr, align 8, !dbg !121
  %2 = load i16, ptr %1, align 2, !dbg !123
  %conv = zext i16 %2 to i32, !dbg !123
  %3 = load ptr, ptr %b.addr, align 8, !dbg !124
  %4 = load i16, ptr %3, align 2, !dbg !125
  %conv1 = zext i16 %4 to i32, !dbg !125
  %cmp2 = icmp slt i32 %conv, %conv1, !dbg !126
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !127

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4, !dbg !128
  br label %return, !dbg !128

if.end5:                                          ; preds = %if.end
  %5 = load ptr, ptr %a.addr, align 8, !dbg !129
  %6 = load i16, ptr %5, align 2, !dbg !131
  %conv6 = zext i16 %6 to i32, !dbg !131
  %7 = load ptr, ptr %b.addr, align 8, !dbg !132
  %8 = load i16, ptr %7, align 2, !dbg !133
  %conv7 = zext i16 %8 to i32, !dbg !133
  %cmp8 = icmp sgt i32 %conv6, %conv7, !dbg !134
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !135

if.then10:                                        ; preds = %if.end5
  store i32 1, ptr %retval, align 4, !dbg !136
  br label %return, !dbg !136

if.end11:                                         ; preds = %if.end5
  %9 = load ptr, ptr %a.addr, align 8, !dbg !137
  %10 = load i16, ptr %9, align 2, !dbg !139
  %conv12 = zext i16 %10 to i32, !dbg !139
  %cmp13 = icmp eq i32 %conv12, 0, !dbg !140
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !141

if.then15:                                        ; preds = %if.end11
  store i32 0, ptr %retval, align 4, !dbg !142
  br label %return, !dbg !142

if.end16:                                         ; preds = %if.end11
  %11 = load ptr, ptr %a.addr, align 8, !dbg !143
  %incdec.ptr = getelementptr i16, ptr %11, i32 1, !dbg !143
  store ptr %incdec.ptr, ptr %a.addr, align 8, !dbg !143
  %12 = load ptr, ptr %b.addr, align 8, !dbg !144
  %incdec.ptr17 = getelementptr i16, ptr %12, i32 1, !dbg !144
  store ptr %incdec.ptr17, ptr %b.addr, align 8, !dbg !144
  %13 = load i64, ptr %len.addr, align 8, !dbg !145
  %dec = add i64 %13, -1, !dbg !145
  store i64 %dec, ptr %len.addr, align 8, !dbg !145
  br label %while.body, !dbg !114, !llvm.loop !146

return:                                           ; preds = %if.then15, %if.then10, %if.then4, %if.then
  %14 = load i32, ptr %retval, align 4, !dbg !148
  ret i32 %14, !dbg !148
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ucs2_utf8size(ptr noundef %src) #0 align 16 !dbg !149 {
entry:
  %src.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %c = alloca i16, align 2
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !151, metadata !DIExpression()), !dbg !158
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3, !dbg !159
  call void @llvm.dbg.declare(metadata ptr %i, metadata !152, metadata !DIExpression()), !dbg !160
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %j, metadata !153, metadata !DIExpression()), !dbg !162
  store i64 0, ptr %j, align 8, !dbg !162
  store i64 0, ptr %i, align 8, !dbg !163
  br label %for.cond, !dbg !164

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %src.addr, align 8, !dbg !165
  %1 = load i64, ptr %i, align 8, !dbg !166
  %arrayidx = getelementptr i16, ptr %0, i64 %1, !dbg !165
  %2 = load i16, ptr %arrayidx, align 2, !dbg !165
  %tobool = icmp ne i16 %2, 0, !dbg !167
  br i1 %tobool, label %for.body, label %for.end, !dbg !167

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 2, ptr %c) #3, !dbg !168
  call void @llvm.dbg.declare(metadata ptr %c, metadata !154, metadata !DIExpression()), !dbg !169
  %3 = load ptr, ptr %src.addr, align 8, !dbg !170
  %4 = load i64, ptr %i, align 8, !dbg !171
  %arrayidx1 = getelementptr i16, ptr %3, i64 %4, !dbg !170
  %5 = load i16, ptr %arrayidx1, align 2, !dbg !170
  store i16 %5, ptr %c, align 2, !dbg !169
  %6 = load i16, ptr %c, align 2, !dbg !172
  %conv = zext i16 %6 to i32, !dbg !172
  %cmp = icmp sge i32 %conv, 2048, !dbg !174
  br i1 %cmp, label %if.then, label %if.else, !dbg !175

if.then:                                          ; preds = %for.body
  %7 = load i64, ptr %j, align 8, !dbg !176
  %add = add i64 %7, 3, !dbg !176
  store i64 %add, ptr %j, align 8, !dbg !176
  br label %if.end10, !dbg !177

if.else:                                          ; preds = %for.body
  %8 = load i16, ptr %c, align 2, !dbg !178
  %conv3 = zext i16 %8 to i32, !dbg !178
  %cmp4 = icmp sge i32 %conv3, 128, !dbg !180
  br i1 %cmp4, label %if.then6, label %if.else8, !dbg !181

if.then6:                                         ; preds = %if.else
  %9 = load i64, ptr %j, align 8, !dbg !182
  %add7 = add i64 %9, 2, !dbg !182
  store i64 %add7, ptr %j, align 8, !dbg !182
  br label %if.end, !dbg !183

if.else8:                                         ; preds = %if.else
  %10 = load i64, ptr %j, align 8, !dbg !184
  %add9 = add i64 %10, 1, !dbg !184
  store i64 %add9, ptr %j, align 8, !dbg !184
  br label %if.end

if.end:                                           ; preds = %if.else8, %if.then6
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %c) #3, !dbg !185
  br label %for.inc, !dbg !186

for.inc:                                          ; preds = %if.end10
  %11 = load i64, ptr %i, align 8, !dbg !187
  %inc = add i64 %11, 1, !dbg !187
  store i64 %inc, ptr %i, align 8, !dbg !187
  br label %for.cond, !dbg !188, !llvm.loop !189

for.end:                                          ; preds = %for.cond
  %12 = load i64, ptr %j, align 8, !dbg !191
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3, !dbg !192
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3, !dbg !192
  ret i64 %12, !dbg !193
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @ucs2_as_utf8(ptr noundef %dest, ptr noundef %src, i64 noundef %maxlength) #0 align 16 !dbg !194 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %maxlength.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i64, align 8
  %limit = alloca i64, align 8
  %c = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !202, metadata !DIExpression()), !dbg !213
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !203, metadata !DIExpression()), !dbg !214
  store i64 %maxlength, ptr %maxlength.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxlength.addr, metadata !204, metadata !DIExpression()), !dbg !215
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3, !dbg !216
  call void @llvm.dbg.declare(metadata ptr %i, metadata !205, metadata !DIExpression()), !dbg !217
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3, !dbg !218
  call void @llvm.dbg.declare(metadata ptr %j, metadata !207, metadata !DIExpression()), !dbg !219
  store i64 0, ptr %j, align 8, !dbg !219
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #3, !dbg !220
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !208, metadata !DIExpression()), !dbg !221
  %0 = load ptr, ptr %src.addr, align 8, !dbg !222
  %1 = load i64, ptr %maxlength.addr, align 8, !dbg !223
  %call = call i64 @ucs2_strnlen(ptr noundef %0, i64 noundef %1) #4, !dbg !224
  store i64 %call, ptr %limit, align 8, !dbg !221
  store i32 0, ptr %i, align 4, !dbg !225
  br label %for.cond, !dbg !226

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, ptr %maxlength.addr, align 8, !dbg !227
  %tobool = icmp ne i64 %2, 0, !dbg !227
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !228

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !229
  %conv = zext i32 %3 to i64, !dbg !229
  %4 = load i64, ptr %limit, align 8, !dbg !230
  %cmp = icmp ult i64 %conv, %4, !dbg !231
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !232
  br i1 %5, label %for.body, label %for.end, !dbg !233

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 2, ptr %c) #3, !dbg !234
  call void @llvm.dbg.declare(metadata ptr %c, metadata !209, metadata !DIExpression()), !dbg !235
  %6 = load ptr, ptr %src.addr, align 8, !dbg !236
  %7 = load i32, ptr %i, align 4, !dbg !237
  %idxprom = zext i32 %7 to i64, !dbg !236
  %arrayidx = getelementptr i16, ptr %6, i64 %idxprom, !dbg !236
  %8 = load i16, ptr %arrayidx, align 2, !dbg !236
  store i16 %8, ptr %c, align 2, !dbg !235
  %9 = load i16, ptr %c, align 2, !dbg !238
  %conv2 = zext i16 %9 to i32, !dbg !238
  %cmp3 = icmp sge i32 %conv2, 2048, !dbg !240
  br i1 %cmp3, label %if.then, label %if.else, !dbg !241

if.then:                                          ; preds = %for.body
  %10 = load i64, ptr %maxlength.addr, align 8, !dbg !242
  %cmp5 = icmp ult i64 %10, 3, !dbg !245
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !246

if.then7:                                         ; preds = %if.then
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !247

if.end:                                           ; preds = %if.then
  %11 = load i64, ptr %maxlength.addr, align 8, !dbg !248
  %sub = sub i64 %11, 3, !dbg !248
  store i64 %sub, ptr %maxlength.addr, align 8, !dbg !248
  %12 = load i16, ptr %c, align 2, !dbg !249
  %conv8 = zext i16 %12 to i32, !dbg !249
  %and = and i32 %conv8, 61440, !dbg !250
  %shr = ashr i32 %and, 12, !dbg !251
  %or = or i32 224, %shr, !dbg !252
  %conv9 = trunc i32 %or to i8, !dbg !253
  %13 = load ptr, ptr %dest.addr, align 8, !dbg !254
  %14 = load i64, ptr %j, align 8, !dbg !255
  %inc = add i64 %14, 1, !dbg !255
  store i64 %inc, ptr %j, align 8, !dbg !255
  %arrayidx10 = getelementptr i8, ptr %13, i64 %14, !dbg !254
  store i8 %conv9, ptr %arrayidx10, align 1, !dbg !256
  %15 = load i16, ptr %c, align 2, !dbg !257
  %conv11 = zext i16 %15 to i32, !dbg !257
  %and12 = and i32 %conv11, 4032, !dbg !258
  %shr13 = ashr i32 %and12, 6, !dbg !259
  %or14 = or i32 128, %shr13, !dbg !260
  %conv15 = trunc i32 %or14 to i8, !dbg !261
  %16 = load ptr, ptr %dest.addr, align 8, !dbg !262
  %17 = load i64, ptr %j, align 8, !dbg !263
  %inc16 = add i64 %17, 1, !dbg !263
  store i64 %inc16, ptr %j, align 8, !dbg !263
  %arrayidx17 = getelementptr i8, ptr %16, i64 %17, !dbg !262
  store i8 %conv15, ptr %arrayidx17, align 1, !dbg !264
  %18 = load i16, ptr %c, align 2, !dbg !265
  %conv18 = zext i16 %18 to i32, !dbg !265
  %and19 = and i32 %conv18, 63, !dbg !266
  %or20 = or i32 128, %and19, !dbg !267
  %conv21 = trunc i32 %or20 to i8, !dbg !268
  %19 = load ptr, ptr %dest.addr, align 8, !dbg !269
  %20 = load i64, ptr %j, align 8, !dbg !270
  %inc22 = add i64 %20, 1, !dbg !270
  store i64 %inc22, ptr %j, align 8, !dbg !270
  %arrayidx23 = getelementptr i8, ptr %19, i64 %20, !dbg !269
  store i8 %conv21, ptr %arrayidx23, align 1, !dbg !271
  br label %if.end54, !dbg !272

if.else:                                          ; preds = %for.body
  %21 = load i16, ptr %c, align 2, !dbg !273
  %conv24 = zext i16 %21 to i32, !dbg !273
  %cmp25 = icmp sge i32 %conv24, 128, !dbg !275
  br i1 %cmp25, label %if.then27, label %if.else46, !dbg !276

if.then27:                                        ; preds = %if.else
  %22 = load i64, ptr %maxlength.addr, align 8, !dbg !277
  %cmp28 = icmp ult i64 %22, 2, !dbg !280
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !281

if.then30:                                        ; preds = %if.then27
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !282

if.end31:                                         ; preds = %if.then27
  %23 = load i64, ptr %maxlength.addr, align 8, !dbg !283
  %sub32 = sub i64 %23, 2, !dbg !283
  store i64 %sub32, ptr %maxlength.addr, align 8, !dbg !283
  %24 = load i16, ptr %c, align 2, !dbg !284
  %conv33 = zext i16 %24 to i32, !dbg !284
  %and34 = and i32 %conv33, 1984, !dbg !285
  %shr35 = ashr i32 %and34, 6, !dbg !286
  %or36 = or i32 192, %shr35, !dbg !287
  %conv37 = trunc i32 %or36 to i8, !dbg !288
  %25 = load ptr, ptr %dest.addr, align 8, !dbg !289
  %26 = load i64, ptr %j, align 8, !dbg !290
  %inc38 = add i64 %26, 1, !dbg !290
  store i64 %inc38, ptr %j, align 8, !dbg !290
  %arrayidx39 = getelementptr i8, ptr %25, i64 %26, !dbg !289
  store i8 %conv37, ptr %arrayidx39, align 1, !dbg !291
  %27 = load i16, ptr %c, align 2, !dbg !292
  %conv40 = zext i16 %27 to i32, !dbg !292
  %and41 = and i32 %conv40, 63, !dbg !293
  %or42 = or i32 128, %and41, !dbg !294
  %conv43 = trunc i32 %or42 to i8, !dbg !295
  %28 = load ptr, ptr %dest.addr, align 8, !dbg !296
  %29 = load i64, ptr %j, align 8, !dbg !297
  %inc44 = add i64 %29, 1, !dbg !297
  store i64 %inc44, ptr %j, align 8, !dbg !297
  %arrayidx45 = getelementptr i8, ptr %28, i64 %29, !dbg !296
  store i8 %conv43, ptr %arrayidx45, align 1, !dbg !298
  br label %if.end53, !dbg !299

if.else46:                                        ; preds = %if.else
  %30 = load i64, ptr %maxlength.addr, align 8, !dbg !300
  %sub47 = sub i64 %30, 1, !dbg !300
  store i64 %sub47, ptr %maxlength.addr, align 8, !dbg !300
  %31 = load i16, ptr %c, align 2, !dbg !302
  %conv48 = zext i16 %31 to i32, !dbg !302
  %and49 = and i32 %conv48, 127, !dbg !303
  %conv50 = trunc i32 %and49 to i8, !dbg !302
  %32 = load ptr, ptr %dest.addr, align 8, !dbg !304
  %33 = load i64, ptr %j, align 8, !dbg !305
  %inc51 = add i64 %33, 1, !dbg !305
  store i64 %inc51, ptr %j, align 8, !dbg !305
  %arrayidx52 = getelementptr i8, ptr %32, i64 %33, !dbg !304
  store i8 %conv50, ptr %arrayidx52, align 1, !dbg !306
  br label %if.end53

if.end53:                                         ; preds = %if.else46, %if.end31
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !307
  br label %cleanup, !dbg !307

cleanup:                                          ; preds = %if.end54, %if.then30, %if.then7
  call void @llvm.lifetime.end.p0(i64 2, ptr %c) #3, !dbg !307
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !308

for.inc:                                          ; preds = %cleanup.cont
  %34 = load i32, ptr %i, align 4, !dbg !309
  %inc55 = add i32 %34, 1, !dbg !309
  store i32 %inc55, ptr %i, align 4, !dbg !309
  br label %for.cond, !dbg !310, !llvm.loop !311

for.end:                                          ; preds = %cleanup, %land.end
  %35 = load i64, ptr %maxlength.addr, align 8, !dbg !313
  %tobool56 = icmp ne i64 %35, 0, !dbg !313
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !315

if.then57:                                        ; preds = %for.end
  %36 = load ptr, ptr %dest.addr, align 8, !dbg !316
  %37 = load i64, ptr %j, align 8, !dbg !317
  %arrayidx58 = getelementptr i8, ptr %36, i64 %37, !dbg !316
  store i8 0, ptr %arrayidx58, align 1, !dbg !318
  br label %if.end59, !dbg !316

if.end59:                                         ; preds = %if.then57, %for.end
  %38 = load i64, ptr %j, align 8, !dbg !319
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #3, !dbg !320
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3, !dbg !320
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3, !dbg !320
  ret i64 %38, !dbg !321

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ucs2_strnlen195", scope: !2, file: !3, line: 15, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.ucs2_string.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/ucs2_string\22 -D KBUILD_BASENAME=\22ucs2_string\22 -D KBUILD_MODNAME=\22ucs2_string\22 -D __KBUILD_MODNAME=kmod_ucs2_string -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/ucs2_string.ll lib/ucs2_string.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/ucs2_string.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7d0eabeb85224e3360d1feacca7da0e6")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !9, !11, !13, !15, !17, !24}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ucs2_strlen196", scope: !2, file: !3, line: 22, type: !5, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ucs2_strsize197", scope: !2, file: !3, line: 33, type: !5, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ucs2_strncmp198", scope: !2, file: !3, line: 52, type: !5, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ucs2_utf8size199", scope: !2, file: !3, line: 73, type: !5, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ucs2_as_utf8200", scope: !2, file: !3, line: 114, type: !5, isLocal: true, isDefinition: true)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file201", scope: !2, file: !3, line: 116, type: !19, isLocal: true, isDefinition: true, align: 8)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 264, elements: !22)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!22 = !{!23}
!23 = !DISubrange(count: 33)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license202", scope: !2, file: !3, line: 116, type: !26, isLocal: true, isDefinition: true, align: 8)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 216, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 27)
!29 = !{i32 7, !"Dwarf Version", i32 5}
!30 = !{i32 2, !"Debug Info Version", i32 3}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 8, !"cf-protection-branch", i32 1}
!33 = !{i32 4, !"function_return_thunk_extern", i32 1}
!34 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!35 = !{i32 1, !"Code Model", i32 2}
!36 = !{i32 1, !"override-stack-alignment", i32 8}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = distinct !DISubprogram(name: "ucs2_strnlen", scope: !3, file: !3, line: 7, type: !39, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !56)
!39 = !DISubroutineType(types: !40)
!40 = !{!41, !42, !51}
!41 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "ucs2_char_t", file: !45, line: 8, baseType: !46)
!45 = !DIFile(filename: "./include/linux/ucs2_string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddcc7be0d4b5d0c3532f3fc5935abbee")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !47, line: 19, baseType: !48)
!47 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !49, line: 24, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!50 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 61, baseType: !53)
!52 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !54, line: 72, baseType: !55)
!54 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !54, line: 16, baseType: !41)
!56 = !{!57, !58, !59}
!57 = !DILocalVariable(name: "s", arg: 1, scope: !38, file: !3, line: 7, type: !42)
!58 = !DILocalVariable(name: "maxlength", arg: 2, scope: !38, file: !3, line: 7, type: !51)
!59 = !DILocalVariable(name: "length", scope: !38, file: !3, line: 9, type: !41)
!60 = !DILocation(line: 7, column: 33, scope: !38)
!61 = !DILocation(line: 7, column: 43, scope: !38)
!62 = !DILocation(line: 9, column: 9, scope: !38)
!63 = !DILocation(line: 9, column: 23, scope: !38)
!64 = !DILocation(line: 11, column: 9, scope: !38)
!65 = !DILocation(line: 11, column: 18, scope: !38)
!66 = !DILocation(line: 11, column: 16, scope: !38)
!67 = !DILocation(line: 11, column: 21, scope: !38)
!68 = !DILocation(line: 11, column: 26, scope: !38)
!69 = !DILocation(line: 11, column: 29, scope: !38)
!70 = !DILocation(line: 11, column: 38, scope: !38)
!71 = !DILocation(line: 11, column: 36, scope: !38)
!72 = !DILocation(line: 0, scope: !38)
!73 = !DILocation(line: 12, column: 23, scope: !38)
!74 = distinct !{!74, !64, !73, !75, !76}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !DILocation(line: 13, column: 16, scope: !38)
!78 = !DILocation(line: 14, column: 1, scope: !38)
!79 = !DILocation(line: 13, column: 9, scope: !38)
!80 = distinct !DISubprogram(name: "ucs2_strlen", scope: !3, file: !3, line: 18, type: !81, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{!41, !42}
!83 = !{!84}
!84 = !DILocalVariable(name: "s", arg: 1, scope: !80, file: !3, line: 18, type: !42)
!85 = !DILocation(line: 18, column: 32, scope: !80)
!86 = !DILocation(line: 20, column: 29, scope: !80)
!87 = !DILocation(line: 20, column: 16, scope: !80)
!88 = !DILocation(line: 20, column: 9, scope: !80)
!89 = distinct !DISubprogram(name: "ucs2_strsize", scope: !3, file: !3, line: 29, type: !90, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !92)
!90 = !DISubroutineType(types: !91)
!91 = !{!41, !42, !41}
!92 = !{!93, !94}
!93 = !DILocalVariable(name: "data", arg: 1, scope: !89, file: !3, line: 29, type: !42)
!94 = !DILocalVariable(name: "maxlength", arg: 2, scope: !89, file: !3, line: 29, type: !41)
!95 = !DILocation(line: 29, column: 33, scope: !89)
!96 = !DILocation(line: 29, column: 53, scope: !89)
!97 = !DILocation(line: 31, column: 29, scope: !89)
!98 = !DILocation(line: 31, column: 35, scope: !89)
!99 = !DILocation(line: 31, column: 44, scope: !89)
!100 = !DILocation(line: 31, column: 16, scope: !89)
!101 = !DILocation(line: 31, column: 66, scope: !89)
!102 = !DILocation(line: 31, column: 9, scope: !89)
!103 = distinct !DISubprogram(name: "ucs2_strncmp", scope: !3, file: !3, line: 36, type: !104, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !107)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !42, !42, !51}
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !{!108, !109, !110}
!108 = !DILocalVariable(name: "a", arg: 1, scope: !103, file: !3, line: 36, type: !42)
!109 = !DILocalVariable(name: "b", arg: 2, scope: !103, file: !3, line: 36, type: !42)
!110 = !DILocalVariable(name: "len", arg: 3, scope: !103, file: !3, line: 36, type: !51)
!111 = !DILocation(line: 36, column: 33, scope: !103)
!112 = !DILocation(line: 36, column: 55, scope: !103)
!113 = !DILocation(line: 36, column: 65, scope: !103)
!114 = !DILocation(line: 38, column: 9, scope: !103)
!115 = !DILocation(line: 39, column: 21, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 39, column: 21)
!117 = distinct !DILexicalBlock(scope: !103, file: !3, line: 38, column: 19)
!118 = !DILocation(line: 39, column: 25, scope: !116)
!119 = !DILocation(line: 39, column: 21, scope: !117)
!120 = !DILocation(line: 40, column: 25, scope: !116)
!121 = !DILocation(line: 41, column: 22, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !3, line: 41, column: 21)
!123 = !DILocation(line: 41, column: 21, scope: !122)
!124 = !DILocation(line: 41, column: 27, scope: !122)
!125 = !DILocation(line: 41, column: 26, scope: !122)
!126 = !DILocation(line: 41, column: 24, scope: !122)
!127 = !DILocation(line: 41, column: 21, scope: !117)
!128 = !DILocation(line: 42, column: 25, scope: !122)
!129 = !DILocation(line: 43, column: 22, scope: !130)
!130 = distinct !DILexicalBlock(scope: !117, file: !3, line: 43, column: 21)
!131 = !DILocation(line: 43, column: 21, scope: !130)
!132 = !DILocation(line: 43, column: 27, scope: !130)
!133 = !DILocation(line: 43, column: 26, scope: !130)
!134 = !DILocation(line: 43, column: 24, scope: !130)
!135 = !DILocation(line: 43, column: 21, scope: !117)
!136 = !DILocation(line: 44, column: 25, scope: !130)
!137 = !DILocation(line: 45, column: 22, scope: !138)
!138 = distinct !DILexicalBlock(scope: !117, file: !3, line: 45, column: 21)
!139 = !DILocation(line: 45, column: 21, scope: !138)
!140 = !DILocation(line: 45, column: 24, scope: !138)
!141 = !DILocation(line: 45, column: 21, scope: !117)
!142 = !DILocation(line: 46, column: 25, scope: !138)
!143 = !DILocation(line: 47, column: 18, scope: !117)
!144 = !DILocation(line: 48, column: 18, scope: !117)
!145 = !DILocation(line: 49, column: 20, scope: !117)
!146 = distinct !{!146, !114, !147, !76}
!147 = !DILocation(line: 50, column: 9, scope: !103)
!148 = !DILocation(line: 51, column: 1, scope: !103)
!149 = distinct !DISubprogram(name: "ucs2_utf8size", scope: !3, file: !3, line: 55, type: !81, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !150)
!150 = !{!151, !152, !153, !154}
!151 = !DILocalVariable(name: "src", arg: 1, scope: !149, file: !3, line: 55, type: !42)
!152 = !DILocalVariable(name: "i", scope: !149, file: !3, line: 57, type: !41)
!153 = !DILocalVariable(name: "j", scope: !149, file: !3, line: 58, type: !41)
!154 = !DILocalVariable(name: "c", scope: !155, file: !3, line: 61, type: !46)
!155 = distinct !DILexicalBlock(scope: !156, file: !3, line: 60, column: 27)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 60, column: 2)
!157 = distinct !DILexicalBlock(scope: !149, file: !3, line: 60, column: 2)
!158 = !DILocation(line: 55, column: 34, scope: !149)
!159 = !DILocation(line: 57, column: 2, scope: !149)
!160 = !DILocation(line: 57, column: 16, scope: !149)
!161 = !DILocation(line: 58, column: 2, scope: !149)
!162 = !DILocation(line: 58, column: 16, scope: !149)
!163 = !DILocation(line: 60, column: 9, scope: !157)
!164 = !DILocation(line: 60, column: 7, scope: !157)
!165 = !DILocation(line: 60, column: 14, scope: !156)
!166 = !DILocation(line: 60, column: 18, scope: !156)
!167 = !DILocation(line: 60, column: 2, scope: !157)
!168 = !DILocation(line: 61, column: 3, scope: !155)
!169 = !DILocation(line: 61, column: 7, scope: !155)
!170 = !DILocation(line: 61, column: 11, scope: !155)
!171 = !DILocation(line: 61, column: 15, scope: !155)
!172 = !DILocation(line: 63, column: 7, scope: !173)
!173 = distinct !DILexicalBlock(scope: !155, file: !3, line: 63, column: 7)
!174 = !DILocation(line: 63, column: 9, scope: !173)
!175 = !DILocation(line: 63, column: 7, scope: !155)
!176 = !DILocation(line: 64, column: 6, scope: !173)
!177 = !DILocation(line: 64, column: 4, scope: !173)
!178 = !DILocation(line: 65, column: 12, scope: !179)
!179 = distinct !DILexicalBlock(scope: !173, file: !3, line: 65, column: 12)
!180 = !DILocation(line: 65, column: 14, scope: !179)
!181 = !DILocation(line: 65, column: 12, scope: !173)
!182 = !DILocation(line: 66, column: 6, scope: !179)
!183 = !DILocation(line: 66, column: 4, scope: !179)
!184 = !DILocation(line: 68, column: 6, scope: !179)
!185 = !DILocation(line: 69, column: 2, scope: !156)
!186 = !DILocation(line: 69, column: 2, scope: !155)
!187 = !DILocation(line: 60, column: 23, scope: !156)
!188 = !DILocation(line: 60, column: 2, scope: !156)
!189 = distinct !{!189, !167, !190, !75, !76}
!190 = !DILocation(line: 69, column: 2, scope: !157)
!191 = !DILocation(line: 71, column: 9, scope: !149)
!192 = !DILocation(line: 72, column: 1, scope: !149)
!193 = !DILocation(line: 71, column: 2, scope: !149)
!194 = distinct !DISubprogram(name: "ucs2_as_utf8", scope: !3, file: !3, line: 83, type: !195, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !201)
!195 = !DISubroutineType(types: !196)
!196 = !{!41, !197, !42, !41}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !47, line: 17, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !49, line: 21, baseType: !200)
!200 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!201 = !{!202, !203, !204, !205, !207, !208, !209}
!202 = !DILocalVariable(name: "dest", arg: 1, scope: !194, file: !3, line: 83, type: !197)
!203 = !DILocalVariable(name: "src", arg: 2, scope: !194, file: !3, line: 83, type: !42)
!204 = !DILocalVariable(name: "maxlength", arg: 3, scope: !194, file: !3, line: 83, type: !41)
!205 = !DILocalVariable(name: "i", scope: !194, file: !3, line: 85, type: !206)
!206 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!207 = !DILocalVariable(name: "j", scope: !194, file: !3, line: 86, type: !41)
!208 = !DILocalVariable(name: "limit", scope: !194, file: !3, line: 87, type: !41)
!209 = !DILocalVariable(name: "c", scope: !210, file: !3, line: 90, type: !46)
!210 = distinct !DILexicalBlock(scope: !211, file: !3, line: 89, column: 43)
!211 = distinct !DILexicalBlock(scope: !212, file: !3, line: 89, column: 2)
!212 = distinct !DILexicalBlock(scope: !194, file: !3, line: 89, column: 2)
!213 = !DILocation(line: 83, column: 18, scope: !194)
!214 = !DILocation(line: 83, column: 43, scope: !194)
!215 = !DILocation(line: 83, column: 62, scope: !194)
!216 = !DILocation(line: 85, column: 2, scope: !194)
!217 = !DILocation(line: 85, column: 15, scope: !194)
!218 = !DILocation(line: 86, column: 2, scope: !194)
!219 = !DILocation(line: 86, column: 16, scope: !194)
!220 = !DILocation(line: 87, column: 2, scope: !194)
!221 = !DILocation(line: 87, column: 16, scope: !194)
!222 = !DILocation(line: 87, column: 37, scope: !194)
!223 = !DILocation(line: 87, column: 42, scope: !194)
!224 = !DILocation(line: 87, column: 24, scope: !194)
!225 = !DILocation(line: 89, column: 9, scope: !212)
!226 = !DILocation(line: 89, column: 7, scope: !212)
!227 = !DILocation(line: 89, column: 14, scope: !211)
!228 = !DILocation(line: 89, column: 24, scope: !211)
!229 = !DILocation(line: 89, column: 27, scope: !211)
!230 = !DILocation(line: 89, column: 31, scope: !211)
!231 = !DILocation(line: 89, column: 29, scope: !211)
!232 = !DILocation(line: 0, scope: !211)
!233 = !DILocation(line: 89, column: 2, scope: !212)
!234 = !DILocation(line: 90, column: 3, scope: !210)
!235 = !DILocation(line: 90, column: 7, scope: !210)
!236 = !DILocation(line: 90, column: 11, scope: !210)
!237 = !DILocation(line: 90, column: 15, scope: !210)
!238 = !DILocation(line: 92, column: 7, scope: !239)
!239 = distinct !DILexicalBlock(scope: !210, file: !3, line: 92, column: 7)
!240 = !DILocation(line: 92, column: 9, scope: !239)
!241 = !DILocation(line: 92, column: 7, scope: !210)
!242 = !DILocation(line: 93, column: 8, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !3, line: 93, column: 8)
!244 = distinct !DILexicalBlock(scope: !239, file: !3, line: 92, column: 19)
!245 = !DILocation(line: 93, column: 18, scope: !243)
!246 = !DILocation(line: 93, column: 8, scope: !244)
!247 = !DILocation(line: 94, column: 5, scope: !243)
!248 = !DILocation(line: 95, column: 14, scope: !244)
!249 = !DILocation(line: 96, column: 24, scope: !244)
!250 = !DILocation(line: 96, column: 26, scope: !244)
!251 = !DILocation(line: 96, column: 36, scope: !244)
!252 = !DILocation(line: 96, column: 21, scope: !244)
!253 = !DILocation(line: 96, column: 16, scope: !244)
!254 = !DILocation(line: 96, column: 4, scope: !244)
!255 = !DILocation(line: 96, column: 10, scope: !244)
!256 = !DILocation(line: 96, column: 14, scope: !244)
!257 = !DILocation(line: 97, column: 24, scope: !244)
!258 = !DILocation(line: 97, column: 26, scope: !244)
!259 = !DILocation(line: 97, column: 36, scope: !244)
!260 = !DILocation(line: 97, column: 21, scope: !244)
!261 = !DILocation(line: 97, column: 16, scope: !244)
!262 = !DILocation(line: 97, column: 4, scope: !244)
!263 = !DILocation(line: 97, column: 10, scope: !244)
!264 = !DILocation(line: 97, column: 14, scope: !244)
!265 = !DILocation(line: 98, column: 24, scope: !244)
!266 = !DILocation(line: 98, column: 26, scope: !244)
!267 = !DILocation(line: 98, column: 21, scope: !244)
!268 = !DILocation(line: 98, column: 16, scope: !244)
!269 = !DILocation(line: 98, column: 4, scope: !244)
!270 = !DILocation(line: 98, column: 10, scope: !244)
!271 = !DILocation(line: 98, column: 14, scope: !244)
!272 = !DILocation(line: 99, column: 3, scope: !244)
!273 = !DILocation(line: 99, column: 14, scope: !274)
!274 = distinct !DILexicalBlock(scope: !239, file: !3, line: 99, column: 14)
!275 = !DILocation(line: 99, column: 16, scope: !274)
!276 = !DILocation(line: 99, column: 14, scope: !239)
!277 = !DILocation(line: 100, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !3, line: 100, column: 8)
!279 = distinct !DILexicalBlock(scope: !274, file: !3, line: 99, column: 25)
!280 = !DILocation(line: 100, column: 18, scope: !278)
!281 = !DILocation(line: 100, column: 8, scope: !279)
!282 = !DILocation(line: 101, column: 5, scope: !278)
!283 = !DILocation(line: 102, column: 14, scope: !279)
!284 = !DILocation(line: 103, column: 24, scope: !279)
!285 = !DILocation(line: 103, column: 26, scope: !279)
!286 = !DILocation(line: 103, column: 35, scope: !279)
!287 = !DILocation(line: 103, column: 21, scope: !279)
!288 = !DILocation(line: 103, column: 16, scope: !279)
!289 = !DILocation(line: 103, column: 4, scope: !279)
!290 = !DILocation(line: 103, column: 10, scope: !279)
!291 = !DILocation(line: 103, column: 14, scope: !279)
!292 = !DILocation(line: 104, column: 24, scope: !279)
!293 = !DILocation(line: 104, column: 26, scope: !279)
!294 = !DILocation(line: 104, column: 21, scope: !279)
!295 = !DILocation(line: 104, column: 16, scope: !279)
!296 = !DILocation(line: 104, column: 4, scope: !279)
!297 = !DILocation(line: 104, column: 10, scope: !279)
!298 = !DILocation(line: 104, column: 14, scope: !279)
!299 = !DILocation(line: 105, column: 3, scope: !279)
!300 = !DILocation(line: 106, column: 14, scope: !301)
!301 = distinct !DILexicalBlock(scope: !274, file: !3, line: 105, column: 10)
!302 = !DILocation(line: 107, column: 16, scope: !301)
!303 = !DILocation(line: 107, column: 18, scope: !301)
!304 = !DILocation(line: 107, column: 4, scope: !301)
!305 = !DILocation(line: 107, column: 10, scope: !301)
!306 = !DILocation(line: 107, column: 14, scope: !301)
!307 = !DILocation(line: 109, column: 2, scope: !211)
!308 = !DILocation(line: 109, column: 2, scope: !210)
!309 = !DILocation(line: 89, column: 39, scope: !211)
!310 = !DILocation(line: 89, column: 2, scope: !211)
!311 = distinct !{!311, !233, !312, !75, !76}
!312 = !DILocation(line: 109, column: 2, scope: !212)
!313 = !DILocation(line: 110, column: 6, scope: !314)
!314 = distinct !DILexicalBlock(scope: !194, file: !3, line: 110, column: 6)
!315 = !DILocation(line: 110, column: 6, scope: !194)
!316 = !DILocation(line: 111, column: 3, scope: !314)
!317 = !DILocation(line: 111, column: 8, scope: !314)
!318 = !DILocation(line: 111, column: 11, scope: !314)
!319 = !DILocation(line: 112, column: 9, scope: !194)
!320 = !DILocation(line: 113, column: 1, scope: !194)
!321 = !DILocation(line: 112, column: 2, scope: !194)
