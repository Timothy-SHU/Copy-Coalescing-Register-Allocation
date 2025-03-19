; ModuleID = 'arch/x86/boot/printf.c'
source_filename = "arch/x86/boot/printf.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

@number.digits = internal constant [16 x i8] c"0123456789ABCDEF", align 1, !dbg !0

; Function Attrs: nounwind
define dso_local i32 @vsprintf(ptr inreg noundef %buf, ptr inreg noundef %fmt, ptr inreg noundef %args) #0 !dbg !46 {
entry:
  %buf.addr = alloca ptr, align 4
  %fmt.addr = alloca ptr, align 4
  %args.addr = alloca ptr, align 4
  %len = alloca i32, align 4
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %base = alloca i32, align 4
  %str = alloca ptr, align 4
  %s = alloca ptr, align 4
  %flags = alloca i32, align 4
  %field_width = alloca i32, align 4
  %precision = alloca i32, align 4
  %qualifier = alloca i32, align 4
  %ip = alloca ptr, align 4
  %ip130 = alloca ptr, align 4
  store ptr %buf, ptr %buf.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !54, metadata !DIExpression()), !dbg !79
  store ptr %fmt, ptr %fmt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !55, metadata !DIExpression()), !dbg !80
  store ptr %args, ptr %args.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !56, metadata !DIExpression()), !dbg !81
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #6, !dbg !82
  call void @llvm.dbg.declare(metadata ptr %len, metadata !57, metadata !DIExpression()), !dbg !83
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #6, !dbg !84
  call void @llvm.dbg.declare(metadata ptr %num, metadata !58, metadata !DIExpression()), !dbg !85
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %i, metadata !59, metadata !DIExpression()), !dbg !87
  call void @llvm.lifetime.start.p0(i64 4, ptr %base) #6, !dbg !86
  call void @llvm.dbg.declare(metadata ptr %base, metadata !60, metadata !DIExpression()), !dbg !88
  call void @llvm.lifetime.start.p0(i64 4, ptr %str) #6, !dbg !89
  call void @llvm.dbg.declare(metadata ptr %str, metadata !61, metadata !DIExpression()), !dbg !90
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #6, !dbg !91
  call void @llvm.dbg.declare(metadata ptr %s, metadata !62, metadata !DIExpression()), !dbg !92
  call void @llvm.lifetime.start.p0(i64 4, ptr %flags) #6, !dbg !93
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !63, metadata !DIExpression()), !dbg !94
  call void @llvm.lifetime.start.p0(i64 4, ptr %field_width) #6, !dbg !95
  call void @llvm.dbg.declare(metadata ptr %field_width, metadata !64, metadata !DIExpression()), !dbg !96
  call void @llvm.lifetime.start.p0(i64 4, ptr %precision) #6, !dbg !97
  call void @llvm.dbg.declare(metadata ptr %precision, metadata !65, metadata !DIExpression()), !dbg !98
  call void @llvm.lifetime.start.p0(i64 4, ptr %qualifier) #6, !dbg !99
  call void @llvm.dbg.declare(metadata ptr %qualifier, metadata !66, metadata !DIExpression()), !dbg !100
  %0 = load ptr, ptr %buf.addr, align 4, !dbg !101
  store ptr %0, ptr %str, align 4, !dbg !102
  br label %for.cond, !dbg !103

for.cond:                                         ; preds = %for.inc185, %entry
  %1 = load ptr, ptr %fmt.addr, align 4, !dbg !104
  %2 = load i8, ptr %1, align 1, !dbg !105
  %tobool = icmp ne i8 %2, 0, !dbg !106
  br i1 %tobool, label %for.body, label %for.end187, !dbg !106

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %fmt.addr, align 4, !dbg !107
  %4 = load i8, ptr %3, align 1, !dbg !109
  %conv = sext i8 %4 to i32, !dbg !109
  %cmp = icmp ne i32 %conv, 37, !dbg !110
  br i1 %cmp, label %if.then, label %if.end, !dbg !111

if.then:                                          ; preds = %for.body
  %5 = load ptr, ptr %fmt.addr, align 4, !dbg !112
  %6 = load i8, ptr %5, align 1, !dbg !114
  %7 = load ptr, ptr %str, align 4, !dbg !115
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1, !dbg !115
  store ptr %incdec.ptr, ptr %str, align 4, !dbg !115
  store i8 %6, ptr %7, align 1, !dbg !116
  br label %for.inc185, !dbg !117

if.end:                                           ; preds = %for.body
  store i32 0, ptr %flags, align 4, !dbg !118
  br label %repeat, !dbg !119

repeat:                                           ; preds = %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb4, %sw.bb, %if.end
  call void @llvm.dbg.label(metadata !67), !dbg !120
  %8 = load ptr, ptr %fmt.addr, align 4, !dbg !121
  %incdec.ptr2 = getelementptr inbounds i8, ptr %8, i32 1, !dbg !121
  store ptr %incdec.ptr2, ptr %fmt.addr, align 4, !dbg !121
  %9 = load ptr, ptr %fmt.addr, align 4, !dbg !122
  %10 = load i8, ptr %9, align 1, !dbg !123
  %conv3 = sext i8 %10 to i32, !dbg !123
  switch i32 %conv3, label %sw.epilog [
    i32 45, label %sw.bb
    i32 43, label %sw.bb4
    i32 32, label %sw.bb6
    i32 35, label %sw.bb8
    i32 48, label %sw.bb10
  ], !dbg !124

sw.bb:                                            ; preds = %repeat
  %11 = load i32, ptr %flags, align 4, !dbg !125
  %or = or i32 %11, 16, !dbg !125
  store i32 %or, ptr %flags, align 4, !dbg !125
  br label %repeat, !dbg !127

sw.bb4:                                           ; preds = %repeat
  %12 = load i32, ptr %flags, align 4, !dbg !128
  %or5 = or i32 %12, 4, !dbg !128
  store i32 %or5, ptr %flags, align 4, !dbg !128
  br label %repeat, !dbg !129

sw.bb6:                                           ; preds = %repeat
  %13 = load i32, ptr %flags, align 4, !dbg !130
  %or7 = or i32 %13, 8, !dbg !130
  store i32 %or7, ptr %flags, align 4, !dbg !130
  br label %repeat, !dbg !131

sw.bb8:                                           ; preds = %repeat
  %14 = load i32, ptr %flags, align 4, !dbg !132
  %or9 = or i32 %14, 64, !dbg !132
  store i32 %or9, ptr %flags, align 4, !dbg !132
  br label %repeat, !dbg !133

sw.bb10:                                          ; preds = %repeat
  %15 = load i32, ptr %flags, align 4, !dbg !134
  %or11 = or i32 %15, 1, !dbg !134
  store i32 %or11, ptr %flags, align 4, !dbg !134
  br label %repeat, !dbg !135

sw.epilog:                                        ; preds = %repeat
  store i32 -1, ptr %field_width, align 4, !dbg !136
  %16 = load ptr, ptr %fmt.addr, align 4, !dbg !137
  %17 = load i8, ptr %16, align 1, !dbg !139
  %conv12 = sext i8 %17 to i32, !dbg !139
  %call = call i32 @isdigit(i32 inreg noundef %conv12) #7, !dbg !140
  %tobool13 = icmp ne i32 %call, 0, !dbg !140
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !141

if.then14:                                        ; preds = %sw.epilog
  %call15 = call i32 @skip_atoi(ptr inreg noundef %fmt.addr) #7, !dbg !142
  store i32 %call15, ptr %field_width, align 4, !dbg !143
  br label %if.end27, !dbg !144

if.else:                                          ; preds = %sw.epilog
  %18 = load ptr, ptr %fmt.addr, align 4, !dbg !145
  %19 = load i8, ptr %18, align 1, !dbg !147
  %conv16 = sext i8 %19 to i32, !dbg !147
  %cmp17 = icmp eq i32 %conv16, 42, !dbg !148
  br i1 %cmp17, label %if.then19, label %if.end26, !dbg !149

if.then19:                                        ; preds = %if.else
  %20 = load ptr, ptr %fmt.addr, align 4, !dbg !150
  %incdec.ptr20 = getelementptr inbounds i8, ptr %20, i32 1, !dbg !150
  store ptr %incdec.ptr20, ptr %fmt.addr, align 4, !dbg !150
  %argp.cur = load ptr, ptr %args.addr, align 4, !dbg !152
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4, !dbg !152
  store ptr %argp.next, ptr %args.addr, align 4, !dbg !152
  %21 = load i32, ptr %argp.cur, align 4, !dbg !152
  store i32 %21, ptr %field_width, align 4, !dbg !153
  %22 = load i32, ptr %field_width, align 4, !dbg !154
  %cmp21 = icmp slt i32 %22, 0, !dbg !156
  br i1 %cmp21, label %if.then23, label %if.end25, !dbg !157

if.then23:                                        ; preds = %if.then19
  %23 = load i32, ptr %field_width, align 4, !dbg !158
  %sub = sub nsw i32 0, %23, !dbg !160
  store i32 %sub, ptr %field_width, align 4, !dbg !161
  %24 = load i32, ptr %flags, align 4, !dbg !162
  %or24 = or i32 %24, 16, !dbg !162
  store i32 %or24, ptr %flags, align 4, !dbg !162
  br label %if.end25, !dbg !163

if.end25:                                         ; preds = %if.then23, %if.then19
  br label %if.end26, !dbg !164

if.end26:                                         ; preds = %if.end25, %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then14
  store i32 -1, ptr %precision, align 4, !dbg !165
  %25 = load ptr, ptr %fmt.addr, align 4, !dbg !166
  %26 = load i8, ptr %25, align 1, !dbg !168
  %conv28 = sext i8 %26 to i32, !dbg !168
  %cmp29 = icmp eq i32 %conv28, 46, !dbg !169
  br i1 %cmp29, label %if.then31, label %if.end52, !dbg !170

if.then31:                                        ; preds = %if.end27
  %27 = load ptr, ptr %fmt.addr, align 4, !dbg !171
  %incdec.ptr32 = getelementptr inbounds i8, ptr %27, i32 1, !dbg !171
  store ptr %incdec.ptr32, ptr %fmt.addr, align 4, !dbg !171
  %28 = load ptr, ptr %fmt.addr, align 4, !dbg !173
  %29 = load i8, ptr %28, align 1, !dbg !175
  %conv33 = sext i8 %29 to i32, !dbg !175
  %call34 = call i32 @isdigit(i32 inreg noundef %conv33) #7, !dbg !176
  %tobool35 = icmp ne i32 %call34, 0, !dbg !176
  br i1 %tobool35, label %if.then36, label %if.else38, !dbg !177

if.then36:                                        ; preds = %if.then31
  %call37 = call i32 @skip_atoi(ptr inreg noundef %fmt.addr) #7, !dbg !178
  store i32 %call37, ptr %precision, align 4, !dbg !179
  br label %if.end47, !dbg !180

if.else38:                                        ; preds = %if.then31
  %30 = load ptr, ptr %fmt.addr, align 4, !dbg !181
  %31 = load i8, ptr %30, align 1, !dbg !183
  %conv39 = sext i8 %31 to i32, !dbg !183
  %cmp40 = icmp eq i32 %conv39, 42, !dbg !184
  br i1 %cmp40, label %if.then42, label %if.end46, !dbg !185

if.then42:                                        ; preds = %if.else38
  %32 = load ptr, ptr %fmt.addr, align 4, !dbg !186
  %incdec.ptr43 = getelementptr inbounds i8, ptr %32, i32 1, !dbg !186
  store ptr %incdec.ptr43, ptr %fmt.addr, align 4, !dbg !186
  %argp.cur44 = load ptr, ptr %args.addr, align 4, !dbg !188
  %argp.next45 = getelementptr inbounds i8, ptr %argp.cur44, i32 4, !dbg !188
  store ptr %argp.next45, ptr %args.addr, align 4, !dbg !188
  %33 = load i32, ptr %argp.cur44, align 4, !dbg !188
  store i32 %33, ptr %precision, align 4, !dbg !189
  br label %if.end46, !dbg !190

if.end46:                                         ; preds = %if.then42, %if.else38
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then36
  %34 = load i32, ptr %precision, align 4, !dbg !191
  %cmp48 = icmp slt i32 %34, 0, !dbg !193
  br i1 %cmp48, label %if.then50, label %if.end51, !dbg !194

if.then50:                                        ; preds = %if.end47
  store i32 0, ptr %precision, align 4, !dbg !195
  br label %if.end51, !dbg !196

if.end51:                                         ; preds = %if.then50, %if.end47
  br label %if.end52, !dbg !197

if.end52:                                         ; preds = %if.end51, %if.end27
  store i32 -1, ptr %qualifier, align 4, !dbg !198
  %35 = load ptr, ptr %fmt.addr, align 4, !dbg !199
  %36 = load i8, ptr %35, align 1, !dbg !201
  %conv53 = sext i8 %36 to i32, !dbg !201
  %cmp54 = icmp eq i32 %conv53, 104, !dbg !202
  br i1 %cmp54, label %if.then63, label %lor.lhs.false, !dbg !203

lor.lhs.false:                                    ; preds = %if.end52
  %37 = load ptr, ptr %fmt.addr, align 4, !dbg !204
  %38 = load i8, ptr %37, align 1, !dbg !205
  %conv56 = sext i8 %38 to i32, !dbg !205
  %cmp57 = icmp eq i32 %conv56, 108, !dbg !206
  br i1 %cmp57, label %if.then63, label %lor.lhs.false59, !dbg !207

lor.lhs.false59:                                  ; preds = %lor.lhs.false
  %39 = load ptr, ptr %fmt.addr, align 4, !dbg !208
  %40 = load i8, ptr %39, align 1, !dbg !209
  %conv60 = sext i8 %40 to i32, !dbg !209
  %cmp61 = icmp eq i32 %conv60, 76, !dbg !210
  br i1 %cmp61, label %if.then63, label %if.end66, !dbg !211

if.then63:                                        ; preds = %lor.lhs.false59, %lor.lhs.false, %if.end52
  %41 = load ptr, ptr %fmt.addr, align 4, !dbg !212
  %42 = load i8, ptr %41, align 1, !dbg !214
  %conv64 = sext i8 %42 to i32, !dbg !214
  store i32 %conv64, ptr %qualifier, align 4, !dbg !215
  %43 = load ptr, ptr %fmt.addr, align 4, !dbg !216
  %incdec.ptr65 = getelementptr inbounds i8, ptr %43, i32 1, !dbg !216
  store ptr %incdec.ptr65, ptr %fmt.addr, align 4, !dbg !216
  br label %if.end66, !dbg !217

if.end66:                                         ; preds = %if.then63, %lor.lhs.false59
  store i32 10, ptr %base, align 4, !dbg !218
  %44 = load ptr, ptr %fmt.addr, align 4, !dbg !219
  %45 = load i8, ptr %44, align 1, !dbg !220
  %conv67 = sext i8 %45 to i32, !dbg !220
  switch i32 %conv67, label %sw.default [
    i32 99, label %sw.bb68
    i32 115, label %sw.bb86
    i32 112, label %sw.bb114
    i32 110, label %sw.bb123
    i32 37, label %sw.bb137
    i32 111, label %sw.bb139
    i32 120, label %sw.bb140
    i32 88, label %sw.bb142
    i32 100, label %sw.bb143
    i32 105, label %sw.bb143
    i32 117, label %sw.epilog152
  ], !dbg !221

sw.bb68:                                          ; preds = %if.end66
  %46 = load i32, ptr %flags, align 4, !dbg !222
  %and = and i32 %46, 16, !dbg !224
  %tobool69 = icmp ne i32 %and, 0, !dbg !224
  br i1 %tobool69, label %if.end74, label %if.then70, !dbg !225

if.then70:                                        ; preds = %sw.bb68
  br label %while.cond, !dbg !226

while.cond:                                       ; preds = %while.body, %if.then70
  %47 = load i32, ptr %field_width, align 4, !dbg !227
  %dec = add nsw i32 %47, -1, !dbg !227
  store i32 %dec, ptr %field_width, align 4, !dbg !227
  %cmp71 = icmp sgt i32 %dec, 0, !dbg !228
  br i1 %cmp71, label %while.body, label %while.end, !dbg !226

while.body:                                       ; preds = %while.cond
  %48 = load ptr, ptr %str, align 4, !dbg !229
  %incdec.ptr73 = getelementptr inbounds i8, ptr %48, i32 1, !dbg !229
  store ptr %incdec.ptr73, ptr %str, align 4, !dbg !229
  store i8 32, ptr %48, align 1, !dbg !230
  br label %while.cond, !dbg !226, !llvm.loop !231

while.end:                                        ; preds = %while.cond
  br label %if.end74, !dbg !226

if.end74:                                         ; preds = %while.end, %sw.bb68
  %argp.cur75 = load ptr, ptr %args.addr, align 4, !dbg !235
  %argp.next76 = getelementptr inbounds i8, ptr %argp.cur75, i32 4, !dbg !235
  store ptr %argp.next76, ptr %args.addr, align 4, !dbg !235
  %49 = load i32, ptr %argp.cur75, align 4, !dbg !235
  %conv77 = trunc i32 %49 to i8, !dbg !236
  %50 = load ptr, ptr %str, align 4, !dbg !237
  %incdec.ptr78 = getelementptr inbounds i8, ptr %50, i32 1, !dbg !237
  store ptr %incdec.ptr78, ptr %str, align 4, !dbg !237
  store i8 %conv77, ptr %50, align 1, !dbg !238
  br label %while.cond79, !dbg !239

while.cond79:                                     ; preds = %while.body83, %if.end74
  %51 = load i32, ptr %field_width, align 4, !dbg !240
  %dec80 = add nsw i32 %51, -1, !dbg !240
  store i32 %dec80, ptr %field_width, align 4, !dbg !240
  %cmp81 = icmp sgt i32 %dec80, 0, !dbg !241
  br i1 %cmp81, label %while.body83, label %while.end85, !dbg !239

while.body83:                                     ; preds = %while.cond79
  %52 = load ptr, ptr %str, align 4, !dbg !242
  %incdec.ptr84 = getelementptr inbounds i8, ptr %52, i32 1, !dbg !242
  store ptr %incdec.ptr84, ptr %str, align 4, !dbg !242
  store i8 32, ptr %52, align 1, !dbg !243
  br label %while.cond79, !dbg !239, !llvm.loop !244

while.end85:                                      ; preds = %while.cond79
  br label %for.inc185, !dbg !246

sw.bb86:                                          ; preds = %if.end66
  %argp.cur87 = load ptr, ptr %args.addr, align 4, !dbg !247
  %argp.next88 = getelementptr inbounds i8, ptr %argp.cur87, i32 4, !dbg !247
  store ptr %argp.next88, ptr %args.addr, align 4, !dbg !247
  %53 = load ptr, ptr %argp.cur87, align 4, !dbg !247
  store ptr %53, ptr %s, align 4, !dbg !248
  %54 = load ptr, ptr %s, align 4, !dbg !249
  %55 = load i32, ptr %precision, align 4, !dbg !250
  %call89 = call i32 @strnlen(ptr inreg noundef %54, i32 inreg noundef %55) #7, !dbg !251
  store i32 %call89, ptr %len, align 4, !dbg !252
  %56 = load i32, ptr %flags, align 4, !dbg !253
  %and90 = and i32 %56, 16, !dbg !255
  %tobool91 = icmp ne i32 %and90, 0, !dbg !255
  br i1 %tobool91, label %if.end100, label %if.then92, !dbg !256

if.then92:                                        ; preds = %sw.bb86
  br label %while.cond93, !dbg !257

while.cond93:                                     ; preds = %while.body97, %if.then92
  %57 = load i32, ptr %len, align 4, !dbg !258
  %58 = load i32, ptr %field_width, align 4, !dbg !259
  %dec94 = add nsw i32 %58, -1, !dbg !259
  store i32 %dec94, ptr %field_width, align 4, !dbg !259
  %cmp95 = icmp slt i32 %57, %58, !dbg !260
  br i1 %cmp95, label %while.body97, label %while.end99, !dbg !257

while.body97:                                     ; preds = %while.cond93
  %59 = load ptr, ptr %str, align 4, !dbg !261
  %incdec.ptr98 = getelementptr inbounds i8, ptr %59, i32 1, !dbg !261
  store ptr %incdec.ptr98, ptr %str, align 4, !dbg !261
  store i8 32, ptr %59, align 1, !dbg !262
  br label %while.cond93, !dbg !257, !llvm.loop !263

while.end99:                                      ; preds = %while.cond93
  br label %if.end100, !dbg !257

if.end100:                                        ; preds = %while.end99, %sw.bb86
  store i32 0, ptr %i, align 4, !dbg !265
  br label %for.cond101, !dbg !267

for.cond101:                                      ; preds = %for.inc, %if.end100
  %60 = load i32, ptr %i, align 4, !dbg !268
  %61 = load i32, ptr %len, align 4, !dbg !270
  %cmp102 = icmp slt i32 %60, %61, !dbg !271
  br i1 %cmp102, label %for.body104, label %for.end, !dbg !272

for.body104:                                      ; preds = %for.cond101
  %62 = load ptr, ptr %s, align 4, !dbg !273
  %incdec.ptr105 = getelementptr inbounds i8, ptr %62, i32 1, !dbg !273
  store ptr %incdec.ptr105, ptr %s, align 4, !dbg !273
  %63 = load i8, ptr %62, align 1, !dbg !274
  %64 = load ptr, ptr %str, align 4, !dbg !275
  %incdec.ptr106 = getelementptr inbounds i8, ptr %64, i32 1, !dbg !275
  store ptr %incdec.ptr106, ptr %str, align 4, !dbg !275
  store i8 %63, ptr %64, align 1, !dbg !276
  br label %for.inc, !dbg !277

for.inc:                                          ; preds = %for.body104
  %65 = load i32, ptr %i, align 4, !dbg !278
  %inc = add nsw i32 %65, 1, !dbg !278
  store i32 %inc, ptr %i, align 4, !dbg !278
  br label %for.cond101, !dbg !279, !llvm.loop !280

for.end:                                          ; preds = %for.cond101
  br label %while.cond107, !dbg !282

while.cond107:                                    ; preds = %while.body111, %for.end
  %66 = load i32, ptr %len, align 4, !dbg !283
  %67 = load i32, ptr %field_width, align 4, !dbg !284
  %dec108 = add nsw i32 %67, -1, !dbg !284
  store i32 %dec108, ptr %field_width, align 4, !dbg !284
  %cmp109 = icmp slt i32 %66, %67, !dbg !285
  br i1 %cmp109, label %while.body111, label %while.end113, !dbg !282

while.body111:                                    ; preds = %while.cond107
  %68 = load ptr, ptr %str, align 4, !dbg !286
  %incdec.ptr112 = getelementptr inbounds i8, ptr %68, i32 1, !dbg !286
  store ptr %incdec.ptr112, ptr %str, align 4, !dbg !286
  store i8 32, ptr %68, align 1, !dbg !287
  br label %while.cond107, !dbg !282, !llvm.loop !288

while.end113:                                     ; preds = %while.cond107
  br label %for.inc185, !dbg !290

sw.bb114:                                         ; preds = %if.end66
  %69 = load i32, ptr %field_width, align 4, !dbg !291
  %cmp115 = icmp eq i32 %69, -1, !dbg !293
  br i1 %cmp115, label %if.then117, label %if.end119, !dbg !294

if.then117:                                       ; preds = %sw.bb114
  store i32 8, ptr %field_width, align 4, !dbg !295
  %70 = load i32, ptr %flags, align 4, !dbg !297
  %or118 = or i32 %70, 1, !dbg !297
  store i32 %or118, ptr %flags, align 4, !dbg !297
  br label %if.end119, !dbg !298

if.end119:                                        ; preds = %if.then117, %sw.bb114
  %71 = load ptr, ptr %str, align 4, !dbg !299
  %argp.cur120 = load ptr, ptr %args.addr, align 4, !dbg !300
  %argp.next121 = getelementptr inbounds i8, ptr %argp.cur120, i32 4, !dbg !300
  store ptr %argp.next121, ptr %args.addr, align 4, !dbg !300
  %72 = load ptr, ptr %argp.cur120, align 4, !dbg !300
  %73 = ptrtoint ptr %72 to i32, !dbg !301
  %74 = load i32, ptr %field_width, align 4, !dbg !302
  %75 = load i32, ptr %precision, align 4, !dbg !303
  %76 = load i32, ptr %flags, align 4, !dbg !304
  %call122 = call ptr @number(ptr inreg noundef %71, i32 inreg noundef %73, i32 inreg noundef 16, i32 noundef %74, i32 noundef %75, i32 noundef %76) #7, !dbg !305
  store ptr %call122, ptr %str, align 4, !dbg !306
  br label %for.inc185, !dbg !307

sw.bb123:                                         ; preds = %if.end66
  %77 = load i32, ptr %qualifier, align 4, !dbg !308
  %cmp124 = icmp eq i32 %77, 108, !dbg !309
  br i1 %cmp124, label %if.then126, label %if.else129, !dbg !310

if.then126:                                       ; preds = %sw.bb123
  call void @llvm.lifetime.start.p0(i64 4, ptr %ip) #6, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !71, metadata !DIExpression()), !dbg !312
  %argp.cur127 = load ptr, ptr %args.addr, align 4, !dbg !313
  %argp.next128 = getelementptr inbounds i8, ptr %argp.cur127, i32 4, !dbg !313
  store ptr %argp.next128, ptr %args.addr, align 4, !dbg !313
  %78 = load ptr, ptr %argp.cur127, align 4, !dbg !313
  store ptr %78, ptr %ip, align 4, !dbg !312
  %79 = load ptr, ptr %str, align 4, !dbg !314
  %80 = load ptr, ptr %buf.addr, align 4, !dbg !315
  %sub.ptr.lhs.cast = ptrtoint ptr %79 to i32, !dbg !316
  %sub.ptr.rhs.cast = ptrtoint ptr %80 to i32, !dbg !316
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !316
  %81 = load ptr, ptr %ip, align 4, !dbg !317
  store i32 %sub.ptr.sub, ptr %81, align 4, !dbg !318
  call void @llvm.lifetime.end.p0(i64 4, ptr %ip) #6, !dbg !319
  br label %if.end136, !dbg !320

if.else129:                                       ; preds = %sw.bb123
  call void @llvm.lifetime.start.p0(i64 4, ptr %ip130) #6, !dbg !321
  call void @llvm.dbg.declare(metadata ptr %ip130, metadata !76, metadata !DIExpression()), !dbg !322
  %argp.cur131 = load ptr, ptr %args.addr, align 4, !dbg !323
  %argp.next132 = getelementptr inbounds i8, ptr %argp.cur131, i32 4, !dbg !323
  store ptr %argp.next132, ptr %args.addr, align 4, !dbg !323
  %82 = load ptr, ptr %argp.cur131, align 4, !dbg !323
  store ptr %82, ptr %ip130, align 4, !dbg !322
  %83 = load ptr, ptr %str, align 4, !dbg !324
  %84 = load ptr, ptr %buf.addr, align 4, !dbg !325
  %sub.ptr.lhs.cast133 = ptrtoint ptr %83 to i32, !dbg !326
  %sub.ptr.rhs.cast134 = ptrtoint ptr %84 to i32, !dbg !326
  %sub.ptr.sub135 = sub i32 %sub.ptr.lhs.cast133, %sub.ptr.rhs.cast134, !dbg !326
  %85 = load ptr, ptr %ip130, align 4, !dbg !327
  store i32 %sub.ptr.sub135, ptr %85, align 4, !dbg !328
  call void @llvm.lifetime.end.p0(i64 4, ptr %ip130) #6, !dbg !329
  br label %if.end136

if.end136:                                        ; preds = %if.else129, %if.then126
  br label %for.inc185, !dbg !330

sw.bb137:                                         ; preds = %if.end66
  %86 = load ptr, ptr %str, align 4, !dbg !331
  %incdec.ptr138 = getelementptr inbounds i8, ptr %86, i32 1, !dbg !331
  store ptr %incdec.ptr138, ptr %str, align 4, !dbg !331
  store i8 37, ptr %86, align 1, !dbg !332
  br label %for.inc185, !dbg !333

sw.bb139:                                         ; preds = %if.end66
  store i32 8, ptr %base, align 4, !dbg !334
  br label %sw.epilog152, !dbg !335

sw.bb140:                                         ; preds = %if.end66
  %87 = load i32, ptr %flags, align 4, !dbg !336
  %or141 = or i32 %87, 32, !dbg !336
  store i32 %or141, ptr %flags, align 4, !dbg !336
  br label %sw.bb142, !dbg !337

sw.bb142:                                         ; preds = %if.end66, %sw.bb140
  store i32 16, ptr %base, align 4, !dbg !338
  br label %sw.epilog152, !dbg !339

sw.bb143:                                         ; preds = %if.end66, %if.end66
  %88 = load i32, ptr %flags, align 4, !dbg !340
  %or144 = or i32 %88, 2, !dbg !340
  store i32 %or144, ptr %flags, align 4, !dbg !340
  br label %sw.epilog152, !dbg !341

sw.default:                                       ; preds = %if.end66
  %89 = load ptr, ptr %str, align 4, !dbg !342
  %incdec.ptr145 = getelementptr inbounds i8, ptr %89, i32 1, !dbg !342
  store ptr %incdec.ptr145, ptr %str, align 4, !dbg !342
  store i8 37, ptr %89, align 1, !dbg !343
  %90 = load ptr, ptr %fmt.addr, align 4, !dbg !344
  %91 = load i8, ptr %90, align 1, !dbg !346
  %tobool146 = icmp ne i8 %91, 0, !dbg !346
  br i1 %tobool146, label %if.then147, label %if.else149, !dbg !347

if.then147:                                       ; preds = %sw.default
  %92 = load ptr, ptr %fmt.addr, align 4, !dbg !348
  %93 = load i8, ptr %92, align 1, !dbg !349
  %94 = load ptr, ptr %str, align 4, !dbg !350
  %incdec.ptr148 = getelementptr inbounds i8, ptr %94, i32 1, !dbg !350
  store ptr %incdec.ptr148, ptr %str, align 4, !dbg !350
  store i8 %93, ptr %94, align 1, !dbg !351
  br label %if.end151, !dbg !352

if.else149:                                       ; preds = %sw.default
  %95 = load ptr, ptr %fmt.addr, align 4, !dbg !353
  %incdec.ptr150 = getelementptr inbounds i8, ptr %95, i32 -1, !dbg !353
  store ptr %incdec.ptr150, ptr %fmt.addr, align 4, !dbg !353
  br label %if.end151

if.end151:                                        ; preds = %if.else149, %if.then147
  br label %for.inc185, !dbg !354

sw.epilog152:                                     ; preds = %sw.bb143, %if.end66, %sw.bb142, %sw.bb139
  %96 = load i32, ptr %qualifier, align 4, !dbg !355
  %cmp153 = icmp eq i32 %96, 108, !dbg !357
  br i1 %cmp153, label %if.then155, label %if.else158, !dbg !358

if.then155:                                       ; preds = %sw.epilog152
  %argp.cur156 = load ptr, ptr %args.addr, align 4, !dbg !359
  %argp.next157 = getelementptr inbounds i8, ptr %argp.cur156, i32 4, !dbg !359
  store ptr %argp.next157, ptr %args.addr, align 4, !dbg !359
  %97 = load i32, ptr %argp.cur156, align 4, !dbg !359
  store i32 %97, ptr %num, align 4, !dbg !360
  br label %if.end183, !dbg !361

if.else158:                                       ; preds = %sw.epilog152
  %98 = load i32, ptr %qualifier, align 4, !dbg !362
  %cmp159 = icmp eq i32 %98, 104, !dbg !364
  br i1 %cmp159, label %if.then161, label %if.else172, !dbg !365

if.then161:                                       ; preds = %if.else158
  %argp.cur162 = load ptr, ptr %args.addr, align 4, !dbg !366
  %argp.next163 = getelementptr inbounds i8, ptr %argp.cur162, i32 4, !dbg !366
  store ptr %argp.next163, ptr %args.addr, align 4, !dbg !366
  %99 = load i32, ptr %argp.cur162, align 4, !dbg !366
  %conv164 = trunc i32 %99 to i16, !dbg !368
  %conv165 = zext i16 %conv164 to i32, !dbg !368
  store i32 %conv165, ptr %num, align 4, !dbg !369
  %100 = load i32, ptr %flags, align 4, !dbg !370
  %and166 = and i32 %100, 2, !dbg !372
  %tobool167 = icmp ne i32 %and166, 0, !dbg !372
  br i1 %tobool167, label %if.then168, label %if.end171, !dbg !373

if.then168:                                       ; preds = %if.then161
  %101 = load i32, ptr %num, align 4, !dbg !374
  %conv169 = trunc i32 %101 to i16, !dbg !375
  %conv170 = sext i16 %conv169 to i32, !dbg !375
  store i32 %conv170, ptr %num, align 4, !dbg !376
  br label %if.end171, !dbg !377

if.end171:                                        ; preds = %if.then168, %if.then161
  br label %if.end182, !dbg !378

if.else172:                                       ; preds = %if.else158
  %102 = load i32, ptr %flags, align 4, !dbg !379
  %and173 = and i32 %102, 2, !dbg !381
  %tobool174 = icmp ne i32 %and173, 0, !dbg !381
  br i1 %tobool174, label %if.then175, label %if.else178, !dbg !382

if.then175:                                       ; preds = %if.else172
  %argp.cur176 = load ptr, ptr %args.addr, align 4, !dbg !383
  %argp.next177 = getelementptr inbounds i8, ptr %argp.cur176, i32 4, !dbg !383
  store ptr %argp.next177, ptr %args.addr, align 4, !dbg !383
  %103 = load i32, ptr %argp.cur176, align 4, !dbg !383
  store i32 %103, ptr %num, align 4, !dbg !384
  br label %if.end181, !dbg !385

if.else178:                                       ; preds = %if.else172
  %argp.cur179 = load ptr, ptr %args.addr, align 4, !dbg !386
  %argp.next180 = getelementptr inbounds i8, ptr %argp.cur179, i32 4, !dbg !386
  store ptr %argp.next180, ptr %args.addr, align 4, !dbg !386
  %104 = load i32, ptr %argp.cur179, align 4, !dbg !386
  store i32 %104, ptr %num, align 4, !dbg !387
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then175
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %if.end171
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %if.then155
  %105 = load ptr, ptr %str, align 4, !dbg !388
  %106 = load i32, ptr %num, align 4, !dbg !389
  %107 = load i32, ptr %base, align 4, !dbg !390
  %108 = load i32, ptr %field_width, align 4, !dbg !391
  %109 = load i32, ptr %precision, align 4, !dbg !392
  %110 = load i32, ptr %flags, align 4, !dbg !393
  %call184 = call ptr @number(ptr inreg noundef %105, i32 inreg noundef %106, i32 inreg noundef %107, i32 noundef %108, i32 noundef %109, i32 noundef %110) #7, !dbg !394
  store ptr %call184, ptr %str, align 4, !dbg !395
  br label %for.inc185, !dbg !396

for.inc185:                                       ; preds = %if.end183, %if.end151, %sw.bb137, %if.end136, %if.end119, %while.end113, %while.end85, %if.then
  %111 = load ptr, ptr %fmt.addr, align 4, !dbg !397
  %incdec.ptr186 = getelementptr inbounds i8, ptr %111, i32 1, !dbg !397
  store ptr %incdec.ptr186, ptr %fmt.addr, align 4, !dbg !397
  br label %for.cond, !dbg !398, !llvm.loop !399

for.end187:                                       ; preds = %for.cond
  %112 = load ptr, ptr %str, align 4, !dbg !401
  store i8 0, ptr %112, align 1, !dbg !402
  %113 = load ptr, ptr %str, align 4, !dbg !403
  %114 = load ptr, ptr %buf.addr, align 4, !dbg !404
  %sub.ptr.lhs.cast188 = ptrtoint ptr %113 to i32, !dbg !405
  %sub.ptr.rhs.cast189 = ptrtoint ptr %114 to i32, !dbg !405
  %sub.ptr.sub190 = sub i32 %sub.ptr.lhs.cast188, %sub.ptr.rhs.cast189, !dbg !405
  call void @llvm.lifetime.end.p0(i64 4, ptr %qualifier) #6, !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr %precision) #6, !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr %field_width) #6, !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr %flags) #6, !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #6, !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr %str) #6, !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr %base) #6, !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #6, !dbg !406
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #6, !dbg !406
  ret i32 %sub.ptr.sub190, !dbg !407
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: inlinehint nounwind
define internal i32 @isdigit(i32 inreg noundef %ch) #3 !dbg !408 {
entry:
  %ch.addr = alloca i32, align 4
  store i32 %ch, ptr %ch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !413, metadata !DIExpression()), !dbg !414
  %0 = load i32, ptr %ch.addr, align 4, !dbg !415
  %cmp = icmp sge i32 %0, 48, !dbg !416
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !417

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %ch.addr, align 4, !dbg !418
  %cmp1 = icmp sle i32 %1, 57, !dbg !419
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !420
  %land.ext = zext i1 %2 to i32, !dbg !417
  ret i32 %land.ext, !dbg !421
}

; Function Attrs: nounwind
define internal i32 @skip_atoi(ptr inreg noundef %s) #0 !dbg !422 {
entry:
  %s.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !427, metadata !DIExpression()), !dbg !429
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !430
  call void @llvm.dbg.declare(metadata ptr %i, metadata !428, metadata !DIExpression()), !dbg !431
  store i32 0, ptr %i, align 4, !dbg !431
  br label %while.cond, !dbg !432

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 4, !dbg !433
  %1 = load ptr, ptr %0, align 4, !dbg !434
  %2 = load i8, ptr %1, align 1, !dbg !435
  %conv = sext i8 %2 to i32, !dbg !435
  %call = call i32 @isdigit(i32 inreg noundef %conv) #7, !dbg !436
  %tobool = icmp ne i32 %call, 0, !dbg !432
  br i1 %tobool, label %while.body, label %while.end, !dbg !432

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %i, align 4, !dbg !437
  %mul = mul nsw i32 %3, 10, !dbg !438
  %4 = load ptr, ptr %s.addr, align 4, !dbg !439
  %5 = load ptr, ptr %4, align 4, !dbg !440
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1, !dbg !440
  store ptr %incdec.ptr, ptr %4, align 4, !dbg !440
  %6 = load i8, ptr %5, align 1, !dbg !441
  %conv1 = sext i8 %6 to i32, !dbg !441
  %add = add nsw i32 %mul, %conv1, !dbg !442
  %sub = sub nsw i32 %add, 48, !dbg !443
  store i32 %sub, ptr %i, align 4, !dbg !444
  br label %while.cond, !dbg !432, !llvm.loop !445

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %i, align 4, !dbg !447
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !448
  ret i32 %7, !dbg !449
}

declare !dbg !450 dso_local i32 @strnlen(ptr inreg noundef, i32 inreg noundef) #4

; Function Attrs: nounwind
define internal ptr @number(ptr inreg noundef %str, i32 inreg noundef %num, i32 inreg noundef %base, i32 noundef %size, i32 noundef %precision, i32 noundef %type) #0 !dbg !2 {
entry:
  %retval = alloca ptr, align 4
  %str.addr = alloca ptr, align 4
  %num.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %precision.addr = alloca i32, align 4
  %type.addr = alloca i32, align 4
  %tmp = alloca [66 x i8], align 1
  %c = alloca i8, align 1
  %sign = alloca i8, align 1
  %locase = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__res = alloca i32, align 4
  %tmp51 = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !19, metadata !DIExpression()), !dbg !458
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !20, metadata !DIExpression()), !dbg !459
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !21, metadata !DIExpression()), !dbg !460
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !22, metadata !DIExpression()), !dbg !461
  store i32 %precision, ptr %precision.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %precision.addr, metadata !23, metadata !DIExpression()), !dbg !462
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !24, metadata !DIExpression()), !dbg !463
  call void @llvm.lifetime.start.p0(i64 66, ptr %tmp) #6, !dbg !464
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !25, metadata !DIExpression()), !dbg !465
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #6, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %c, metadata !29, metadata !DIExpression()), !dbg !467
  call void @llvm.lifetime.start.p0(i64 1, ptr %sign) #6, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %sign, metadata !30, metadata !DIExpression()), !dbg !468
  call void @llvm.lifetime.start.p0(i64 1, ptr %locase) #6, !dbg !466
  call void @llvm.dbg.declare(metadata ptr %locase, metadata !31, metadata !DIExpression()), !dbg !469
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !470
  call void @llvm.dbg.declare(metadata ptr %i, metadata !32, metadata !DIExpression()), !dbg !471
  %0 = load i32, ptr %type.addr, align 4, !dbg !472
  %and = and i32 %0, 32, !dbg !473
  %conv = trunc i32 %and to i8, !dbg !474
  store i8 %conv, ptr %locase, align 1, !dbg !475
  %1 = load i32, ptr %type.addr, align 4, !dbg !476
  %and1 = and i32 %1, 16, !dbg !478
  %tobool = icmp ne i32 %and1, 0, !dbg !478
  br i1 %tobool, label %if.then, label %if.end, !dbg !479

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %type.addr, align 4, !dbg !480
  %and2 = and i32 %2, -2, !dbg !480
  store i32 %and2, ptr %type.addr, align 4, !dbg !480
  br label %if.end, !dbg !481

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %base.addr, align 4, !dbg !482
  %cmp = icmp slt i32 %3, 2, !dbg !484
  br i1 %cmp, label %if.then6, label %lor.lhs.false, !dbg !485

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %base.addr, align 4, !dbg !486
  %cmp4 = icmp sgt i32 %4, 16, !dbg !487
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !488

if.then6:                                         ; preds = %lor.lhs.false, %if.end
  store ptr null, ptr %retval, align 4, !dbg !489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !489

if.end7:                                          ; preds = %lor.lhs.false
  %5 = load i32, ptr %type.addr, align 4, !dbg !490
  %and8 = and i32 %5, 1, !dbg !491
  %tobool9 = icmp ne i32 %and8, 0, !dbg !492
  %6 = zext i1 %tobool9 to i64, !dbg !492
  %cond = select i1 %tobool9, i32 48, i32 32, !dbg !492
  %conv10 = trunc i32 %cond to i8, !dbg !492
  store i8 %conv10, ptr %c, align 1, !dbg !493
  store i8 0, ptr %sign, align 1, !dbg !494
  %7 = load i32, ptr %type.addr, align 4, !dbg !495
  %and11 = and i32 %7, 2, !dbg !497
  %tobool12 = icmp ne i32 %and11, 0, !dbg !497
  br i1 %tobool12, label %if.then13, label %if.end29, !dbg !498

if.then13:                                        ; preds = %if.end7
  %8 = load i32, ptr %num.addr, align 4, !dbg !499
  %cmp14 = icmp slt i32 %8, 0, !dbg !502
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !503

if.then16:                                        ; preds = %if.then13
  store i8 45, ptr %sign, align 1, !dbg !504
  %9 = load i32, ptr %num.addr, align 4, !dbg !506
  %sub = sub nsw i32 0, %9, !dbg !507
  store i32 %sub, ptr %num.addr, align 4, !dbg !508
  %10 = load i32, ptr %size.addr, align 4, !dbg !509
  %dec = add nsw i32 %10, -1, !dbg !509
  store i32 %dec, ptr %size.addr, align 4, !dbg !509
  br label %if.end28, !dbg !510

if.else:                                          ; preds = %if.then13
  %11 = load i32, ptr %type.addr, align 4, !dbg !511
  %and17 = and i32 %11, 4, !dbg !513
  %tobool18 = icmp ne i32 %and17, 0, !dbg !513
  br i1 %tobool18, label %if.then19, label %if.else21, !dbg !514

if.then19:                                        ; preds = %if.else
  store i8 43, ptr %sign, align 1, !dbg !515
  %12 = load i32, ptr %size.addr, align 4, !dbg !517
  %dec20 = add nsw i32 %12, -1, !dbg !517
  store i32 %dec20, ptr %size.addr, align 4, !dbg !517
  br label %if.end27, !dbg !518

if.else21:                                        ; preds = %if.else
  %13 = load i32, ptr %type.addr, align 4, !dbg !519
  %and22 = and i32 %13, 8, !dbg !521
  %tobool23 = icmp ne i32 %and22, 0, !dbg !521
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !522

if.then24:                                        ; preds = %if.else21
  store i8 32, ptr %sign, align 1, !dbg !523
  %14 = load i32, ptr %size.addr, align 4, !dbg !525
  %dec25 = add nsw i32 %14, -1, !dbg !525
  store i32 %dec25, ptr %size.addr, align 4, !dbg !525
  br label %if.end26, !dbg !526

if.end26:                                         ; preds = %if.then24, %if.else21
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.then19
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then16
  br label %if.end29, !dbg !527

if.end29:                                         ; preds = %if.end28, %if.end7
  %15 = load i32, ptr %type.addr, align 4, !dbg !528
  %and30 = and i32 %15, 64, !dbg !530
  %tobool31 = icmp ne i32 %and30, 0, !dbg !530
  br i1 %tobool31, label %if.then32, label %if.end44, !dbg !531

if.then32:                                        ; preds = %if.end29
  %16 = load i32, ptr %base.addr, align 4, !dbg !532
  %cmp33 = icmp eq i32 %16, 16, !dbg !535
  br i1 %cmp33, label %if.then35, label %if.else37, !dbg !536

if.then35:                                        ; preds = %if.then32
  %17 = load i32, ptr %size.addr, align 4, !dbg !537
  %sub36 = sub nsw i32 %17, 2, !dbg !537
  store i32 %sub36, ptr %size.addr, align 4, !dbg !537
  br label %if.end43, !dbg !538

if.else37:                                        ; preds = %if.then32
  %18 = load i32, ptr %base.addr, align 4, !dbg !539
  %cmp38 = icmp eq i32 %18, 8, !dbg !541
  br i1 %cmp38, label %if.then40, label %if.end42, !dbg !542

if.then40:                                        ; preds = %if.else37
  %19 = load i32, ptr %size.addr, align 4, !dbg !543
  %dec41 = add nsw i32 %19, -1, !dbg !543
  store i32 %dec41, ptr %size.addr, align 4, !dbg !543
  br label %if.end42, !dbg !544

if.end42:                                         ; preds = %if.then40, %if.else37
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then35
  br label %if.end44, !dbg !545

if.end44:                                         ; preds = %if.end43, %if.end29
  store i32 0, ptr %i, align 4, !dbg !546
  %20 = load i32, ptr %num.addr, align 4, !dbg !547
  %cmp45 = icmp eq i32 %20, 0, !dbg !548
  br i1 %cmp45, label %if.then47, label %if.else48, !dbg !549

if.then47:                                        ; preds = %if.end44
  %21 = load i32, ptr %i, align 4, !dbg !550
  %inc = add nsw i32 %21, 1, !dbg !550
  store i32 %inc, ptr %i, align 4, !dbg !550
  %arrayidx = getelementptr inbounds [66 x i8], ptr %tmp, i32 0, i32 %21, !dbg !551
  store i8 48, ptr %arrayidx, align 1, !dbg !552
  br label %if.end58, !dbg !551

if.else48:                                        ; preds = %if.end44
  br label %while.cond, !dbg !553

while.cond:                                       ; preds = %while.body, %if.else48
  %22 = load i32, ptr %num.addr, align 4, !dbg !554
  %cmp49 = icmp ne i32 %22, 0, !dbg !555
  br i1 %cmp49, label %while.body, label %while.end, !dbg !553

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #6, !dbg !556
  call void @llvm.dbg.declare(metadata ptr %__res, metadata !33, metadata !DIExpression()), !dbg !556
  %23 = load i32, ptr %num.addr, align 4, !dbg !556
  %24 = load i32, ptr %base.addr, align 4, !dbg !556
  %rem = urem i32 %23, %24, !dbg !556
  store i32 %rem, ptr %__res, align 4, !dbg !556
  %25 = load i32, ptr %num.addr, align 4, !dbg !556
  %26 = load i32, ptr %base.addr, align 4, !dbg !556
  %div = udiv i32 %25, %26, !dbg !556
  store i32 %div, ptr %num.addr, align 4, !dbg !556
  %27 = load i32, ptr %__res, align 4, !dbg !556
  store i32 %27, ptr %tmp51, align 4, !dbg !556
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #6, !dbg !557
  %28 = load i32, ptr %tmp51, align 4, !dbg !556
  %arrayidx52 = getelementptr inbounds [16 x i8], ptr @number.digits, i32 0, i32 %28, !dbg !558
  %29 = load i8, ptr %arrayidx52, align 1, !dbg !558
  %conv53 = sext i8 %29 to i32, !dbg !558
  %30 = load i8, ptr %locase, align 1, !dbg !559
  %conv54 = sext i8 %30 to i32, !dbg !559
  %or = or i32 %conv53, %conv54, !dbg !560
  %conv55 = trunc i32 %or to i8, !dbg !561
  %31 = load i32, ptr %i, align 4, !dbg !562
  %inc56 = add nsw i32 %31, 1, !dbg !562
  store i32 %inc56, ptr %i, align 4, !dbg !562
  %arrayidx57 = getelementptr inbounds [66 x i8], ptr %tmp, i32 0, i32 %31, !dbg !563
  store i8 %conv55, ptr %arrayidx57, align 1, !dbg !564
  br label %while.cond, !dbg !553, !llvm.loop !565

while.end:                                        ; preds = %while.cond
  br label %if.end58

if.end58:                                         ; preds = %while.end, %if.then47
  %32 = load i32, ptr %i, align 4, !dbg !567
  %33 = load i32, ptr %precision.addr, align 4, !dbg !569
  %cmp59 = icmp sgt i32 %32, %33, !dbg !570
  br i1 %cmp59, label %if.then61, label %if.end62, !dbg !571

if.then61:                                        ; preds = %if.end58
  %34 = load i32, ptr %i, align 4, !dbg !572
  store i32 %34, ptr %precision.addr, align 4, !dbg !573
  br label %if.end62, !dbg !574

if.end62:                                         ; preds = %if.then61, %if.end58
  %35 = load i32, ptr %precision.addr, align 4, !dbg !575
  %36 = load i32, ptr %size.addr, align 4, !dbg !576
  %sub63 = sub nsw i32 %36, %35, !dbg !576
  store i32 %sub63, ptr %size.addr, align 4, !dbg !576
  %37 = load i32, ptr %type.addr, align 4, !dbg !577
  %and64 = and i32 %37, 17, !dbg !579
  %tobool65 = icmp ne i32 %and64, 0, !dbg !579
  br i1 %tobool65, label %if.end73, label %if.then66, !dbg !580

if.then66:                                        ; preds = %if.end62
  br label %while.cond67, !dbg !581

while.cond67:                                     ; preds = %while.body71, %if.then66
  %38 = load i32, ptr %size.addr, align 4, !dbg !582
  %dec68 = add nsw i32 %38, -1, !dbg !582
  store i32 %dec68, ptr %size.addr, align 4, !dbg !582
  %cmp69 = icmp sgt i32 %38, 0, !dbg !583
  br i1 %cmp69, label %while.body71, label %while.end72, !dbg !581

while.body71:                                     ; preds = %while.cond67
  %39 = load ptr, ptr %str.addr, align 4, !dbg !584
  %incdec.ptr = getelementptr inbounds i8, ptr %39, i32 1, !dbg !584
  store ptr %incdec.ptr, ptr %str.addr, align 4, !dbg !584
  store i8 32, ptr %39, align 1, !dbg !585
  br label %while.cond67, !dbg !581, !llvm.loop !586

while.end72:                                      ; preds = %while.cond67
  br label %if.end73, !dbg !581

if.end73:                                         ; preds = %while.end72, %if.end62
  %40 = load i8, ptr %sign, align 1, !dbg !588
  %tobool74 = icmp ne i8 %40, 0, !dbg !588
  br i1 %tobool74, label %if.then75, label %if.end77, !dbg !590

if.then75:                                        ; preds = %if.end73
  %41 = load i8, ptr %sign, align 1, !dbg !591
  %42 = load ptr, ptr %str.addr, align 4, !dbg !592
  %incdec.ptr76 = getelementptr inbounds i8, ptr %42, i32 1, !dbg !592
  store ptr %incdec.ptr76, ptr %str.addr, align 4, !dbg !592
  store i8 %41, ptr %42, align 1, !dbg !593
  br label %if.end77, !dbg !594

if.end77:                                         ; preds = %if.then75, %if.end73
  %43 = load i32, ptr %type.addr, align 4, !dbg !595
  %and78 = and i32 %43, 64, !dbg !597
  %tobool79 = icmp ne i32 %and78, 0, !dbg !597
  br i1 %tobool79, label %if.then80, label %if.end96, !dbg !598

if.then80:                                        ; preds = %if.end77
  %44 = load i32, ptr %base.addr, align 4, !dbg !599
  %cmp81 = icmp eq i32 %44, 8, !dbg !602
  br i1 %cmp81, label %if.then83, label %if.else85, !dbg !603

if.then83:                                        ; preds = %if.then80
  %45 = load ptr, ptr %str.addr, align 4, !dbg !604
  %incdec.ptr84 = getelementptr inbounds i8, ptr %45, i32 1, !dbg !604
  store ptr %incdec.ptr84, ptr %str.addr, align 4, !dbg !604
  store i8 48, ptr %45, align 1, !dbg !605
  br label %if.end95, !dbg !606

if.else85:                                        ; preds = %if.then80
  %46 = load i32, ptr %base.addr, align 4, !dbg !607
  %cmp86 = icmp eq i32 %46, 16, !dbg !609
  br i1 %cmp86, label %if.then88, label %if.end94, !dbg !610

if.then88:                                        ; preds = %if.else85
  %47 = load ptr, ptr %str.addr, align 4, !dbg !611
  %incdec.ptr89 = getelementptr inbounds i8, ptr %47, i32 1, !dbg !611
  store ptr %incdec.ptr89, ptr %str.addr, align 4, !dbg !611
  store i8 48, ptr %47, align 1, !dbg !613
  %48 = load i8, ptr %locase, align 1, !dbg !614
  %conv90 = sext i8 %48 to i32, !dbg !614
  %or91 = or i32 88, %conv90, !dbg !615
  %conv92 = trunc i32 %or91 to i8, !dbg !616
  %49 = load ptr, ptr %str.addr, align 4, !dbg !617
  %incdec.ptr93 = getelementptr inbounds i8, ptr %49, i32 1, !dbg !617
  store ptr %incdec.ptr93, ptr %str.addr, align 4, !dbg !617
  store i8 %conv92, ptr %49, align 1, !dbg !618
  br label %if.end94, !dbg !619

if.end94:                                         ; preds = %if.then88, %if.else85
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.then83
  br label %if.end96, !dbg !620

if.end96:                                         ; preds = %if.end95, %if.end77
  %50 = load i32, ptr %type.addr, align 4, !dbg !621
  %and97 = and i32 %50, 16, !dbg !623
  %tobool98 = icmp ne i32 %and97, 0, !dbg !623
  br i1 %tobool98, label %if.end107, label %if.then99, !dbg !624

if.then99:                                        ; preds = %if.end96
  br label %while.cond100, !dbg !625

while.cond100:                                    ; preds = %while.body104, %if.then99
  %51 = load i32, ptr %size.addr, align 4, !dbg !626
  %dec101 = add nsw i32 %51, -1, !dbg !626
  store i32 %dec101, ptr %size.addr, align 4, !dbg !626
  %cmp102 = icmp sgt i32 %51, 0, !dbg !627
  br i1 %cmp102, label %while.body104, label %while.end106, !dbg !625

while.body104:                                    ; preds = %while.cond100
  %52 = load i8, ptr %c, align 1, !dbg !628
  %53 = load ptr, ptr %str.addr, align 4, !dbg !629
  %incdec.ptr105 = getelementptr inbounds i8, ptr %53, i32 1, !dbg !629
  store ptr %incdec.ptr105, ptr %str.addr, align 4, !dbg !629
  store i8 %52, ptr %53, align 1, !dbg !630
  br label %while.cond100, !dbg !625, !llvm.loop !631

while.end106:                                     ; preds = %while.cond100
  br label %if.end107, !dbg !625

if.end107:                                        ; preds = %while.end106, %if.end96
  br label %while.cond108, !dbg !632

while.cond108:                                    ; preds = %while.body112, %if.end107
  %54 = load i32, ptr %i, align 4, !dbg !633
  %55 = load i32, ptr %precision.addr, align 4, !dbg !634
  %dec109 = add nsw i32 %55, -1, !dbg !634
  store i32 %dec109, ptr %precision.addr, align 4, !dbg !634
  %cmp110 = icmp slt i32 %54, %55, !dbg !635
  br i1 %cmp110, label %while.body112, label %while.end114, !dbg !632

while.body112:                                    ; preds = %while.cond108
  %56 = load ptr, ptr %str.addr, align 4, !dbg !636
  %incdec.ptr113 = getelementptr inbounds i8, ptr %56, i32 1, !dbg !636
  store ptr %incdec.ptr113, ptr %str.addr, align 4, !dbg !636
  store i8 48, ptr %56, align 1, !dbg !637
  br label %while.cond108, !dbg !632, !llvm.loop !638

while.end114:                                     ; preds = %while.cond108
  br label %while.cond115, !dbg !640

while.cond115:                                    ; preds = %while.body119, %while.end114
  %57 = load i32, ptr %i, align 4, !dbg !641
  %dec116 = add nsw i32 %57, -1, !dbg !641
  store i32 %dec116, ptr %i, align 4, !dbg !641
  %cmp117 = icmp sgt i32 %57, 0, !dbg !642
  br i1 %cmp117, label %while.body119, label %while.end122, !dbg !640

while.body119:                                    ; preds = %while.cond115
  %58 = load i32, ptr %i, align 4, !dbg !643
  %arrayidx120 = getelementptr inbounds [66 x i8], ptr %tmp, i32 0, i32 %58, !dbg !644
  %59 = load i8, ptr %arrayidx120, align 1, !dbg !644
  %60 = load ptr, ptr %str.addr, align 4, !dbg !645
  %incdec.ptr121 = getelementptr inbounds i8, ptr %60, i32 1, !dbg !645
  store ptr %incdec.ptr121, ptr %str.addr, align 4, !dbg !645
  store i8 %59, ptr %60, align 1, !dbg !646
  br label %while.cond115, !dbg !640, !llvm.loop !647

while.end122:                                     ; preds = %while.cond115
  br label %while.cond123, !dbg !649

while.cond123:                                    ; preds = %while.body127, %while.end122
  %61 = load i32, ptr %size.addr, align 4, !dbg !650
  %dec124 = add nsw i32 %61, -1, !dbg !650
  store i32 %dec124, ptr %size.addr, align 4, !dbg !650
  %cmp125 = icmp sgt i32 %61, 0, !dbg !651
  br i1 %cmp125, label %while.body127, label %while.end129, !dbg !649

while.body127:                                    ; preds = %while.cond123
  %62 = load ptr, ptr %str.addr, align 4, !dbg !652
  %incdec.ptr128 = getelementptr inbounds i8, ptr %62, i32 1, !dbg !652
  store ptr %incdec.ptr128, ptr %str.addr, align 4, !dbg !652
  store i8 32, ptr %62, align 1, !dbg !653
  br label %while.cond123, !dbg !649, !llvm.loop !654

while.end129:                                     ; preds = %while.cond123
  %63 = load ptr, ptr %str.addr, align 4, !dbg !656
  store ptr %63, ptr %retval, align 4, !dbg !657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !657

cleanup:                                          ; preds = %while.end129, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !658
  call void @llvm.lifetime.end.p0(i64 1, ptr %locase) #6, !dbg !658
  call void @llvm.lifetime.end.p0(i64 1, ptr %sign) #6, !dbg !658
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #6, !dbg !658
  call void @llvm.lifetime.end.p0(i64 66, ptr %tmp) #6, !dbg !658
  %64 = load ptr, ptr %retval, align 4, !dbg !658
  ret ptr %64, !dbg !658
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define dso_local i32 @sprintf(ptr inreg noundef %buf, ptr inreg noundef %fmt, ...) #0 !dbg !659 {
entry:
  %buf.addr = alloca ptr, align 4
  %fmt.addr = alloca ptr, align 4
  %args = alloca ptr, align 4
  %i = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !663, metadata !DIExpression()), !dbg !667
  store ptr %fmt, ptr %fmt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !664, metadata !DIExpression()), !dbg !668
  call void @llvm.lifetime.start.p0(i64 4, ptr %args) #6, !dbg !669
  call void @llvm.dbg.declare(metadata ptr %args, metadata !665, metadata !DIExpression()), !dbg !670
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !671
  call void @llvm.dbg.declare(metadata ptr %i, metadata !666, metadata !DIExpression()), !dbg !672
  call void @llvm.va_start(ptr %args), !dbg !673
  %0 = load ptr, ptr %buf.addr, align 4, !dbg !674
  %1 = load ptr, ptr %fmt.addr, align 4, !dbg !675
  %2 = load ptr, ptr %args, align 4, !dbg !676
  %call = call i32 @vsprintf(ptr inreg noundef %0, ptr inreg noundef %1, ptr inreg noundef %2) #7, !dbg !677
  store i32 %call, ptr %i, align 4, !dbg !678
  call void @llvm.va_end(ptr %args), !dbg !679
  %3 = load i32, ptr %i, align 4, !dbg !680
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !681
  call void @llvm.lifetime.end.p0(i64 4, ptr %args) #6, !dbg !681
  ret i32 %3, !dbg !682
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nounwind
define dso_local i32 @printf(ptr inreg noundef %fmt, ...) #0 !dbg !683 {
entry:
  %fmt.addr = alloca ptr, align 4
  %printf_buf = alloca [1024 x i8], align 1
  %args = alloca ptr, align 4
  %printed = alloca i32, align 4
  store ptr %fmt, ptr %fmt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !687, metadata !DIExpression()), !dbg !694
  call void @llvm.lifetime.start.p0(i64 1024, ptr %printf_buf) #6, !dbg !695
  call void @llvm.dbg.declare(metadata ptr %printf_buf, metadata !688, metadata !DIExpression()), !dbg !696
  call void @llvm.lifetime.start.p0(i64 4, ptr %args) #6, !dbg !697
  call void @llvm.dbg.declare(metadata ptr %args, metadata !692, metadata !DIExpression()), !dbg !698
  call void @llvm.lifetime.start.p0(i64 4, ptr %printed) #6, !dbg !699
  call void @llvm.dbg.declare(metadata ptr %printed, metadata !693, metadata !DIExpression()), !dbg !700
  call void @llvm.va_start(ptr %args), !dbg !701
  %arraydecay = getelementptr inbounds [1024 x i8], ptr %printf_buf, i32 0, i32 0, !dbg !702
  %0 = load ptr, ptr %fmt.addr, align 4, !dbg !703
  %1 = load ptr, ptr %args, align 4, !dbg !704
  %call = call i32 @vsprintf(ptr inreg noundef %arraydecay, ptr inreg noundef %0, ptr inreg noundef %1) #7, !dbg !705
  store i32 %call, ptr %printed, align 4, !dbg !706
  call void @llvm.va_end(ptr %args), !dbg !707
  %arraydecay1 = getelementptr inbounds [1024 x i8], ptr %printf_buf, i32 0, i32 0, !dbg !708
  call void @puts(ptr inreg noundef %arraydecay1) #7, !dbg !709
  %2 = load i32, ptr %printed, align 4, !dbg !710
  call void @llvm.lifetime.end.p0(i64 4, ptr %printed) #6, !dbg !711
  call void @llvm.lifetime.end.p0(i64 4, ptr %args) #6, !dbg !711
  call void @llvm.lifetime.end.p0(i64 1024, ptr %printf_buf) #6, !dbg !711
  ret i32 %2, !dbg !712
}

declare !dbg !713 dso_local void @puts(ptr inreg noundef) #4

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!10}
!llvm.module.flags = !{!40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "digits", scope: !2, file: !3, line: 45, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "number", scope: !3, file: !3, line: 41, type: !4, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !18)
!3 = !DIFile(filename: "arch/x86/boot/printf.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b8a662e34f6b1fecf963c5755f47f41a")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6, !8, !9, !9, !9, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 32)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.printf.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/printf\22 -D KBUILD_BASENAME=\22printf\22 -D KBUILD_MODNAME=\22printf\22 -D __KBUILD_MODNAME=kmod_printf -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/printf.ll arch/x86/boot/printf.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !11, globals: !17, splitDebugInlining: false, nameTableKind: None)
!11 = !{!12, !13, !14, !15, !16}
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!14 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!15 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!0}
!18 = !{!19, !20, !21, !22, !23, !24, !25, !29, !30, !31, !32, !33}
!19 = !DILocalVariable(name: "str", arg: 1, scope: !2, file: !3, line: 41, type: !6)
!20 = !DILocalVariable(name: "num", arg: 2, scope: !2, file: !3, line: 41, type: !8)
!21 = !DILocalVariable(name: "base", arg: 3, scope: !2, file: !3, line: 41, type: !9)
!22 = !DILocalVariable(name: "size", arg: 4, scope: !2, file: !3, line: 41, type: !9)
!23 = !DILocalVariable(name: "precision", arg: 5, scope: !2, file: !3, line: 41, type: !9)
!24 = !DILocalVariable(name: "type", arg: 6, scope: !2, file: !3, line: 42, type: !9)
!25 = !DILocalVariable(name: "tmp", scope: !2, file: !3, line: 47, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 528, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 66)
!29 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 48, type: !7)
!30 = !DILocalVariable(name: "sign", scope: !2, file: !3, line: 48, type: !7)
!31 = !DILocalVariable(name: "locase", scope: !2, file: !3, line: 48, type: !7)
!32 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 49, type: !9)
!33 = !DILocalVariable(name: "__res", scope: !34, file: !3, line: 84, type: !9)
!34 = distinct !DILexicalBlock(scope: !35, file: !3, line: 84, column: 23)
!35 = distinct !DILexicalBlock(scope: !2, file: !3, line: 80, column: 6)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, elements: !38)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!38 = !{!39}
!39 = !DISubrange(count: 16)
!40 = !{i32 1, !"NumRegisterParameters", i32 3}
!41 = !{i32 7, !"Dwarf Version", i32 5}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{i32 1, !"override-stack-alignment", i32 4}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = distinct !DISubprogram(name: "vsprintf", scope: !3, file: !3, line: 113, type: !47, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !53)
!47 = !DISubroutineType(types: !48)
!48 = !{!9, !6, !49, !50}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !51, line: 5, baseType: !52)
!51 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !6)
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !71, !76}
!54 = !DILocalVariable(name: "buf", arg: 1, scope: !46, file: !3, line: 113, type: !6)
!55 = !DILocalVariable(name: "fmt", arg: 2, scope: !46, file: !3, line: 113, type: !49)
!56 = !DILocalVariable(name: "args", arg: 3, scope: !46, file: !3, line: 113, type: !50)
!57 = !DILocalVariable(name: "len", scope: !46, file: !3, line: 115, type: !9)
!58 = !DILocalVariable(name: "num", scope: !46, file: !3, line: 116, type: !13)
!59 = !DILocalVariable(name: "i", scope: !46, file: !3, line: 117, type: !9)
!60 = !DILocalVariable(name: "base", scope: !46, file: !3, line: 117, type: !9)
!61 = !DILocalVariable(name: "str", scope: !46, file: !3, line: 118, type: !6)
!62 = !DILocalVariable(name: "s", scope: !46, file: !3, line: 119, type: !49)
!63 = !DILocalVariable(name: "flags", scope: !46, file: !3, line: 121, type: !9)
!64 = !DILocalVariable(name: "field_width", scope: !46, file: !3, line: 123, type: !9)
!65 = !DILocalVariable(name: "precision", scope: !46, file: !3, line: 124, type: !9)
!66 = !DILocalVariable(name: "qualifier", scope: !46, file: !3, line: 126, type: !9)
!67 = !DILabel(scope: !68, name: "repeat", file: !3, line: 136)
!68 = distinct !DILexicalBlock(scope: !69, file: !3, line: 128, column: 31)
!69 = distinct !DILexicalBlock(scope: !70, file: !3, line: 128, column: 2)
!70 = distinct !DILexicalBlock(scope: !46, file: !3, line: 128, column: 2)
!71 = !DILocalVariable(name: "ip", scope: !72, file: !3, line: 230, type: !75)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 229, column: 26)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 229, column: 8)
!74 = distinct !DILexicalBlock(scope: !68, file: !3, line: 195, column: 17)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 32)
!76 = !DILocalVariable(name: "ip", scope: !77, file: !3, line: 233, type: !78)
!77 = distinct !DILexicalBlock(scope: !73, file: !3, line: 232, column: 11)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 32)
!79 = !DILocation(line: 113, column: 20, scope: !46)
!80 = !DILocation(line: 113, column: 37, scope: !46)
!81 = !DILocation(line: 113, column: 50, scope: !46)
!82 = !DILocation(line: 115, column: 2, scope: !46)
!83 = !DILocation(line: 115, column: 6, scope: !46)
!84 = !DILocation(line: 116, column: 2, scope: !46)
!85 = !DILocation(line: 116, column: 16, scope: !46)
!86 = !DILocation(line: 117, column: 2, scope: !46)
!87 = !DILocation(line: 117, column: 6, scope: !46)
!88 = !DILocation(line: 117, column: 9, scope: !46)
!89 = !DILocation(line: 118, column: 2, scope: !46)
!90 = !DILocation(line: 118, column: 8, scope: !46)
!91 = !DILocation(line: 119, column: 2, scope: !46)
!92 = !DILocation(line: 119, column: 14, scope: !46)
!93 = !DILocation(line: 121, column: 2, scope: !46)
!94 = !DILocation(line: 121, column: 6, scope: !46)
!95 = !DILocation(line: 123, column: 2, scope: !46)
!96 = !DILocation(line: 123, column: 6, scope: !46)
!97 = !DILocation(line: 124, column: 2, scope: !46)
!98 = !DILocation(line: 124, column: 6, scope: !46)
!99 = !DILocation(line: 126, column: 2, scope: !46)
!100 = !DILocation(line: 126, column: 6, scope: !46)
!101 = !DILocation(line: 128, column: 13, scope: !70)
!102 = !DILocation(line: 128, column: 11, scope: !70)
!103 = !DILocation(line: 128, column: 7, scope: !70)
!104 = !DILocation(line: 128, column: 19, scope: !69)
!105 = !DILocation(line: 128, column: 18, scope: !69)
!106 = !DILocation(line: 128, column: 2, scope: !70)
!107 = !DILocation(line: 129, column: 8, scope: !108)
!108 = distinct !DILexicalBlock(scope: !68, file: !3, line: 129, column: 7)
!109 = !DILocation(line: 129, column: 7, scope: !108)
!110 = !DILocation(line: 129, column: 12, scope: !108)
!111 = !DILocation(line: 129, column: 7, scope: !68)
!112 = !DILocation(line: 130, column: 14, scope: !113)
!113 = distinct !DILexicalBlock(scope: !108, file: !3, line: 129, column: 20)
!114 = !DILocation(line: 130, column: 13, scope: !113)
!115 = !DILocation(line: 130, column: 8, scope: !113)
!116 = !DILocation(line: 130, column: 11, scope: !113)
!117 = !DILocation(line: 131, column: 4, scope: !113)
!118 = !DILocation(line: 135, column: 9, scope: !68)
!119 = !DILocation(line: 135, column: 3, scope: !68)
!120 = !DILocation(line: 136, column: 8, scope: !68)
!121 = !DILocation(line: 137, column: 3, scope: !68)
!122 = !DILocation(line: 138, column: 12, scope: !68)
!123 = !DILocation(line: 138, column: 11, scope: !68)
!124 = !DILocation(line: 138, column: 3, scope: !68)
!125 = !DILocation(line: 140, column: 10, scope: !126)
!126 = distinct !DILexicalBlock(scope: !68, file: !3, line: 138, column: 17)
!127 = !DILocation(line: 141, column: 4, scope: !126)
!128 = !DILocation(line: 143, column: 10, scope: !126)
!129 = !DILocation(line: 144, column: 4, scope: !126)
!130 = !DILocation(line: 146, column: 10, scope: !126)
!131 = !DILocation(line: 147, column: 4, scope: !126)
!132 = !DILocation(line: 149, column: 10, scope: !126)
!133 = !DILocation(line: 150, column: 4, scope: !126)
!134 = !DILocation(line: 152, column: 10, scope: !126)
!135 = !DILocation(line: 153, column: 4, scope: !126)
!136 = !DILocation(line: 157, column: 15, scope: !68)
!137 = !DILocation(line: 158, column: 16, scope: !138)
!138 = distinct !DILexicalBlock(scope: !68, file: !3, line: 158, column: 7)
!139 = !DILocation(line: 158, column: 15, scope: !138)
!140 = !DILocation(line: 158, column: 7, scope: !138)
!141 = !DILocation(line: 158, column: 7, scope: !68)
!142 = !DILocation(line: 159, column: 18, scope: !138)
!143 = !DILocation(line: 159, column: 16, scope: !138)
!144 = !DILocation(line: 159, column: 4, scope: !138)
!145 = !DILocation(line: 160, column: 13, scope: !146)
!146 = distinct !DILexicalBlock(scope: !138, file: !3, line: 160, column: 12)
!147 = !DILocation(line: 160, column: 12, scope: !146)
!148 = !DILocation(line: 160, column: 17, scope: !146)
!149 = !DILocation(line: 160, column: 12, scope: !138)
!150 = !DILocation(line: 161, column: 4, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !3, line: 160, column: 25)
!152 = !DILocation(line: 163, column: 18, scope: !151)
!153 = !DILocation(line: 163, column: 16, scope: !151)
!154 = !DILocation(line: 164, column: 8, scope: !155)
!155 = distinct !DILexicalBlock(scope: !151, file: !3, line: 164, column: 8)
!156 = !DILocation(line: 164, column: 20, scope: !155)
!157 = !DILocation(line: 164, column: 8, scope: !151)
!158 = !DILocation(line: 165, column: 20, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !3, line: 164, column: 25)
!160 = !DILocation(line: 165, column: 19, scope: !159)
!161 = !DILocation(line: 165, column: 17, scope: !159)
!162 = !DILocation(line: 166, column: 11, scope: !159)
!163 = !DILocation(line: 167, column: 4, scope: !159)
!164 = !DILocation(line: 168, column: 3, scope: !151)
!165 = !DILocation(line: 171, column: 13, scope: !68)
!166 = !DILocation(line: 172, column: 8, scope: !167)
!167 = distinct !DILexicalBlock(scope: !68, file: !3, line: 172, column: 7)
!168 = !DILocation(line: 172, column: 7, scope: !167)
!169 = !DILocation(line: 172, column: 12, scope: !167)
!170 = !DILocation(line: 172, column: 7, scope: !68)
!171 = !DILocation(line: 173, column: 4, scope: !172)
!172 = distinct !DILexicalBlock(scope: !167, file: !3, line: 172, column: 20)
!173 = !DILocation(line: 174, column: 17, scope: !174)
!174 = distinct !DILexicalBlock(scope: !172, file: !3, line: 174, column: 8)
!175 = !DILocation(line: 174, column: 16, scope: !174)
!176 = !DILocation(line: 174, column: 8, scope: !174)
!177 = !DILocation(line: 174, column: 8, scope: !172)
!178 = !DILocation(line: 175, column: 17, scope: !174)
!179 = !DILocation(line: 175, column: 15, scope: !174)
!180 = !DILocation(line: 175, column: 5, scope: !174)
!181 = !DILocation(line: 176, column: 14, scope: !182)
!182 = distinct !DILexicalBlock(scope: !174, file: !3, line: 176, column: 13)
!183 = !DILocation(line: 176, column: 13, scope: !182)
!184 = !DILocation(line: 176, column: 18, scope: !182)
!185 = !DILocation(line: 176, column: 13, scope: !174)
!186 = !DILocation(line: 177, column: 5, scope: !187)
!187 = distinct !DILexicalBlock(scope: !182, file: !3, line: 176, column: 26)
!188 = !DILocation(line: 179, column: 17, scope: !187)
!189 = !DILocation(line: 179, column: 15, scope: !187)
!190 = !DILocation(line: 180, column: 4, scope: !187)
!191 = !DILocation(line: 181, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !172, file: !3, line: 181, column: 8)
!193 = !DILocation(line: 181, column: 18, scope: !192)
!194 = !DILocation(line: 181, column: 8, scope: !172)
!195 = !DILocation(line: 182, column: 15, scope: !192)
!196 = !DILocation(line: 182, column: 5, scope: !192)
!197 = !DILocation(line: 183, column: 3, scope: !172)
!198 = !DILocation(line: 186, column: 13, scope: !68)
!199 = !DILocation(line: 187, column: 8, scope: !200)
!200 = distinct !DILexicalBlock(scope: !68, file: !3, line: 187, column: 7)
!201 = !DILocation(line: 187, column: 7, scope: !200)
!202 = !DILocation(line: 187, column: 12, scope: !200)
!203 = !DILocation(line: 187, column: 19, scope: !200)
!204 = !DILocation(line: 187, column: 23, scope: !200)
!205 = !DILocation(line: 187, column: 22, scope: !200)
!206 = !DILocation(line: 187, column: 27, scope: !200)
!207 = !DILocation(line: 187, column: 34, scope: !200)
!208 = !DILocation(line: 187, column: 38, scope: !200)
!209 = !DILocation(line: 187, column: 37, scope: !200)
!210 = !DILocation(line: 187, column: 42, scope: !200)
!211 = !DILocation(line: 187, column: 7, scope: !68)
!212 = !DILocation(line: 188, column: 17, scope: !213)
!213 = distinct !DILexicalBlock(scope: !200, file: !3, line: 187, column: 50)
!214 = !DILocation(line: 188, column: 16, scope: !213)
!215 = !DILocation(line: 188, column: 14, scope: !213)
!216 = !DILocation(line: 189, column: 4, scope: !213)
!217 = !DILocation(line: 190, column: 3, scope: !213)
!218 = !DILocation(line: 193, column: 8, scope: !68)
!219 = !DILocation(line: 195, column: 12, scope: !68)
!220 = !DILocation(line: 195, column: 11, scope: !68)
!221 = !DILocation(line: 195, column: 3, scope: !68)
!222 = !DILocation(line: 197, column: 10, scope: !223)
!223 = distinct !DILexicalBlock(scope: !74, file: !3, line: 197, column: 8)
!224 = !DILocation(line: 197, column: 16, scope: !223)
!225 = !DILocation(line: 197, column: 8, scope: !74)
!226 = !DILocation(line: 198, column: 5, scope: !223)
!227 = !DILocation(line: 198, column: 12, scope: !223)
!228 = !DILocation(line: 198, column: 26, scope: !223)
!229 = !DILocation(line: 199, column: 10, scope: !223)
!230 = !DILocation(line: 199, column: 13, scope: !223)
!231 = distinct !{!231, !226, !232, !233, !234}
!232 = !DILocation(line: 199, column: 15, scope: !223)
!233 = !{!"llvm.loop.mustprogress"}
!234 = !{!"llvm.loop.unroll.disable"}
!235 = !DILocation(line: 200, column: 28, scope: !74)
!236 = !DILocation(line: 200, column: 13, scope: !74)
!237 = !DILocation(line: 200, column: 8, scope: !74)
!238 = !DILocation(line: 200, column: 11, scope: !74)
!239 = !DILocation(line: 201, column: 4, scope: !74)
!240 = !DILocation(line: 201, column: 11, scope: !74)
!241 = !DILocation(line: 201, column: 25, scope: !74)
!242 = !DILocation(line: 202, column: 9, scope: !74)
!243 = !DILocation(line: 202, column: 12, scope: !74)
!244 = distinct !{!244, !239, !245, !233, !234}
!245 = !DILocation(line: 202, column: 14, scope: !74)
!246 = !DILocation(line: 203, column: 4, scope: !74)
!247 = !DILocation(line: 206, column: 8, scope: !74)
!248 = !DILocation(line: 206, column: 6, scope: !74)
!249 = !DILocation(line: 207, column: 18, scope: !74)
!250 = !DILocation(line: 207, column: 21, scope: !74)
!251 = !DILocation(line: 207, column: 10, scope: !74)
!252 = !DILocation(line: 207, column: 8, scope: !74)
!253 = !DILocation(line: 209, column: 10, scope: !254)
!254 = distinct !DILexicalBlock(scope: !74, file: !3, line: 209, column: 8)
!255 = !DILocation(line: 209, column: 16, scope: !254)
!256 = !DILocation(line: 209, column: 8, scope: !74)
!257 = !DILocation(line: 210, column: 5, scope: !254)
!258 = !DILocation(line: 210, column: 12, scope: !254)
!259 = !DILocation(line: 210, column: 29, scope: !254)
!260 = !DILocation(line: 210, column: 16, scope: !254)
!261 = !DILocation(line: 211, column: 10, scope: !254)
!262 = !DILocation(line: 211, column: 13, scope: !254)
!263 = distinct !{!263, !257, !264, !233, !234}
!264 = !DILocation(line: 211, column: 15, scope: !254)
!265 = !DILocation(line: 212, column: 11, scope: !266)
!266 = distinct !DILexicalBlock(scope: !74, file: !3, line: 212, column: 4)
!267 = !DILocation(line: 212, column: 9, scope: !266)
!268 = !DILocation(line: 212, column: 16, scope: !269)
!269 = distinct !DILexicalBlock(scope: !266, file: !3, line: 212, column: 4)
!270 = !DILocation(line: 212, column: 20, scope: !269)
!271 = !DILocation(line: 212, column: 18, scope: !269)
!272 = !DILocation(line: 212, column: 4, scope: !266)
!273 = !DILocation(line: 213, column: 16, scope: !269)
!274 = !DILocation(line: 213, column: 14, scope: !269)
!275 = !DILocation(line: 213, column: 9, scope: !269)
!276 = !DILocation(line: 213, column: 12, scope: !269)
!277 = !DILocation(line: 213, column: 5, scope: !269)
!278 = !DILocation(line: 212, column: 25, scope: !269)
!279 = !DILocation(line: 212, column: 4, scope: !269)
!280 = distinct !{!280, !272, !281, !233, !234}
!281 = !DILocation(line: 213, column: 16, scope: !266)
!282 = !DILocation(line: 214, column: 4, scope: !74)
!283 = !DILocation(line: 214, column: 11, scope: !74)
!284 = !DILocation(line: 214, column: 28, scope: !74)
!285 = !DILocation(line: 214, column: 15, scope: !74)
!286 = !DILocation(line: 215, column: 9, scope: !74)
!287 = !DILocation(line: 215, column: 12, scope: !74)
!288 = distinct !{!288, !282, !289, !233, !234}
!289 = !DILocation(line: 215, column: 14, scope: !74)
!290 = !DILocation(line: 216, column: 4, scope: !74)
!291 = !DILocation(line: 219, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !74, file: !3, line: 219, column: 8)
!293 = !DILocation(line: 219, column: 20, scope: !292)
!294 = !DILocation(line: 219, column: 8, scope: !74)
!295 = !DILocation(line: 220, column: 17, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !3, line: 219, column: 27)
!297 = !DILocation(line: 221, column: 11, scope: !296)
!298 = !DILocation(line: 222, column: 4, scope: !296)
!299 = !DILocation(line: 223, column: 17, scope: !74)
!300 = !DILocation(line: 224, column: 25, scope: !74)
!301 = !DILocation(line: 224, column: 10, scope: !74)
!302 = !DILocation(line: 225, column: 10, scope: !74)
!303 = !DILocation(line: 225, column: 23, scope: !74)
!304 = !DILocation(line: 225, column: 34, scope: !74)
!305 = !DILocation(line: 223, column: 10, scope: !74)
!306 = !DILocation(line: 223, column: 8, scope: !74)
!307 = !DILocation(line: 226, column: 4, scope: !74)
!308 = !DILocation(line: 229, column: 8, scope: !73)
!309 = !DILocation(line: 229, column: 18, scope: !73)
!310 = !DILocation(line: 229, column: 8, scope: !74)
!311 = !DILocation(line: 230, column: 5, scope: !72)
!312 = !DILocation(line: 230, column: 11, scope: !72)
!313 = !DILocation(line: 230, column: 16, scope: !72)
!314 = !DILocation(line: 231, column: 12, scope: !72)
!315 = !DILocation(line: 231, column: 18, scope: !72)
!316 = !DILocation(line: 231, column: 16, scope: !72)
!317 = !DILocation(line: 231, column: 6, scope: !72)
!318 = !DILocation(line: 231, column: 9, scope: !72)
!319 = !DILocation(line: 232, column: 4, scope: !73)
!320 = !DILocation(line: 232, column: 4, scope: !72)
!321 = !DILocation(line: 233, column: 5, scope: !77)
!322 = !DILocation(line: 233, column: 10, scope: !77)
!323 = !DILocation(line: 233, column: 15, scope: !77)
!324 = !DILocation(line: 234, column: 12, scope: !77)
!325 = !DILocation(line: 234, column: 18, scope: !77)
!326 = !DILocation(line: 234, column: 16, scope: !77)
!327 = !DILocation(line: 234, column: 6, scope: !77)
!328 = !DILocation(line: 234, column: 9, scope: !77)
!329 = !DILocation(line: 235, column: 4, scope: !73)
!330 = !DILocation(line: 236, column: 4, scope: !74)
!331 = !DILocation(line: 239, column: 8, scope: !74)
!332 = !DILocation(line: 239, column: 11, scope: !74)
!333 = !DILocation(line: 240, column: 4, scope: !74)
!334 = !DILocation(line: 244, column: 9, scope: !74)
!335 = !DILocation(line: 245, column: 4, scope: !74)
!336 = !DILocation(line: 248, column: 10, scope: !74)
!337 = !DILocation(line: 248, column: 4, scope: !74)
!338 = !DILocation(line: 250, column: 9, scope: !74)
!339 = !DILocation(line: 251, column: 4, scope: !74)
!340 = !DILocation(line: 255, column: 10, scope: !74)
!341 = !DILocation(line: 255, column: 4, scope: !74)
!342 = !DILocation(line: 260, column: 8, scope: !74)
!343 = !DILocation(line: 260, column: 11, scope: !74)
!344 = !DILocation(line: 261, column: 9, scope: !345)
!345 = distinct !DILexicalBlock(scope: !74, file: !3, line: 261, column: 8)
!346 = !DILocation(line: 261, column: 8, scope: !345)
!347 = !DILocation(line: 261, column: 8, scope: !74)
!348 = !DILocation(line: 262, column: 15, scope: !345)
!349 = !DILocation(line: 262, column: 14, scope: !345)
!350 = !DILocation(line: 262, column: 9, scope: !345)
!351 = !DILocation(line: 262, column: 12, scope: !345)
!352 = !DILocation(line: 262, column: 5, scope: !345)
!353 = !DILocation(line: 264, column: 5, scope: !345)
!354 = !DILocation(line: 265, column: 4, scope: !74)
!355 = !DILocation(line: 267, column: 7, scope: !356)
!356 = distinct !DILexicalBlock(scope: !68, file: !3, line: 267, column: 7)
!357 = !DILocation(line: 267, column: 17, scope: !356)
!358 = !DILocation(line: 267, column: 7, scope: !68)
!359 = !DILocation(line: 268, column: 10, scope: !356)
!360 = !DILocation(line: 268, column: 8, scope: !356)
!361 = !DILocation(line: 268, column: 4, scope: !356)
!362 = !DILocation(line: 269, column: 12, scope: !363)
!363 = distinct !DILexicalBlock(scope: !356, file: !3, line: 269, column: 12)
!364 = !DILocation(line: 269, column: 22, scope: !363)
!365 = !DILocation(line: 269, column: 12, scope: !356)
!366 = !DILocation(line: 270, column: 26, scope: !367)
!367 = distinct !DILexicalBlock(scope: !363, file: !3, line: 269, column: 30)
!368 = !DILocation(line: 270, column: 10, scope: !367)
!369 = !DILocation(line: 270, column: 8, scope: !367)
!370 = !DILocation(line: 271, column: 8, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !3, line: 271, column: 8)
!372 = !DILocation(line: 271, column: 14, scope: !371)
!373 = !DILocation(line: 271, column: 8, scope: !367)
!374 = !DILocation(line: 272, column: 18, scope: !371)
!375 = !DILocation(line: 272, column: 11, scope: !371)
!376 = !DILocation(line: 272, column: 9, scope: !371)
!377 = !DILocation(line: 272, column: 5, scope: !371)
!378 = !DILocation(line: 273, column: 3, scope: !367)
!379 = !DILocation(line: 273, column: 14, scope: !380)
!380 = distinct !DILexicalBlock(scope: !363, file: !3, line: 273, column: 14)
!381 = !DILocation(line: 273, column: 20, scope: !380)
!382 = !DILocation(line: 273, column: 14, scope: !363)
!383 = !DILocation(line: 274, column: 10, scope: !380)
!384 = !DILocation(line: 274, column: 8, scope: !380)
!385 = !DILocation(line: 274, column: 4, scope: !380)
!386 = !DILocation(line: 276, column: 10, scope: !380)
!387 = !DILocation(line: 276, column: 8, scope: !380)
!388 = !DILocation(line: 277, column: 16, scope: !68)
!389 = !DILocation(line: 277, column: 21, scope: !68)
!390 = !DILocation(line: 277, column: 26, scope: !68)
!391 = !DILocation(line: 277, column: 32, scope: !68)
!392 = !DILocation(line: 277, column: 45, scope: !68)
!393 = !DILocation(line: 277, column: 56, scope: !68)
!394 = !DILocation(line: 277, column: 9, scope: !68)
!395 = !DILocation(line: 277, column: 7, scope: !68)
!396 = !DILocation(line: 278, column: 2, scope: !68)
!397 = !DILocation(line: 128, column: 24, scope: !69)
!398 = !DILocation(line: 128, column: 2, scope: !69)
!399 = distinct !{!399, !106, !400, !233, !234}
!400 = !DILocation(line: 278, column: 2, scope: !70)
!401 = !DILocation(line: 279, column: 3, scope: !46)
!402 = !DILocation(line: 279, column: 7, scope: !46)
!403 = !DILocation(line: 280, column: 9, scope: !46)
!404 = !DILocation(line: 280, column: 15, scope: !46)
!405 = !DILocation(line: 280, column: 13, scope: !46)
!406 = !DILocation(line: 281, column: 1, scope: !46)
!407 = !DILocation(line: 280, column: 2, scope: !46)
!408 = distinct !DISubprogram(name: "isdigit", scope: !409, file: !409, line: 5, type: !410, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !412)
!409 = !DIFile(filename: "arch/x86/boot/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a8b15308a5e1965a4f93156f0cfcae7c")
!410 = !DISubroutineType(types: !411)
!411 = !{!9, !9}
!412 = !{!413}
!413 = !DILocalVariable(name: "ch", arg: 1, scope: !408, file: !409, line: 5, type: !9)
!414 = !DILocation(line: 5, column: 31, scope: !408)
!415 = !DILocation(line: 7, column: 10, scope: !408)
!416 = !DILocation(line: 7, column: 13, scope: !408)
!417 = !DILocation(line: 7, column: 21, scope: !408)
!418 = !DILocation(line: 7, column: 25, scope: !408)
!419 = !DILocation(line: 7, column: 28, scope: !408)
!420 = !DILocation(line: 0, scope: !408)
!421 = !DILocation(line: 7, column: 2, scope: !408)
!422 = distinct !DISubprogram(name: "skip_atoi", scope: !3, file: !3, line: 18, type: !423, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !426)
!423 = !DISubroutineType(types: !424)
!424 = !{!9, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 32)
!426 = !{!427, !428}
!427 = !DILocalVariable(name: "s", arg: 1, scope: !422, file: !3, line: 18, type: !425)
!428 = !DILocalVariable(name: "i", scope: !422, file: !3, line: 20, type: !9)
!429 = !DILocation(line: 18, column: 35, scope: !422)
!430 = !DILocation(line: 20, column: 2, scope: !422)
!431 = !DILocation(line: 20, column: 6, scope: !422)
!432 = !DILocation(line: 22, column: 2, scope: !422)
!433 = !DILocation(line: 22, column: 19, scope: !422)
!434 = !DILocation(line: 22, column: 18, scope: !422)
!435 = !DILocation(line: 22, column: 17, scope: !422)
!436 = !DILocation(line: 22, column: 9, scope: !422)
!437 = !DILocation(line: 23, column: 7, scope: !422)
!438 = !DILocation(line: 23, column: 9, scope: !422)
!439 = !DILocation(line: 23, column: 20, scope: !422)
!440 = !DILocation(line: 23, column: 22, scope: !422)
!441 = !DILocation(line: 23, column: 16, scope: !422)
!442 = !DILocation(line: 23, column: 14, scope: !422)
!443 = !DILocation(line: 23, column: 26, scope: !422)
!444 = !DILocation(line: 23, column: 5, scope: !422)
!445 = distinct !{!445, !432, !446, !233, !234}
!446 = !DILocation(line: 23, column: 28, scope: !422)
!447 = !DILocation(line: 24, column: 9, scope: !422)
!448 = !DILocation(line: 25, column: 1, scope: !422)
!449 = !DILocation(line: 24, column: 2, scope: !422)
!450 = !DISubprogram(name: "strnlen", scope: !451, file: !451, line: 307, type: !452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!451 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!452 = !DISubroutineType(types: !453)
!453 = !{!454, !49, !454}
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !455, line: 61, baseType: !456)
!455 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !457, line: 68, baseType: !16)
!457 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!458 = !DILocation(line: 41, column: 27, scope: !2)
!459 = !DILocation(line: 41, column: 37, scope: !2)
!460 = !DILocation(line: 41, column: 46, scope: !2)
!461 = !DILocation(line: 41, column: 56, scope: !2)
!462 = !DILocation(line: 41, column: 66, scope: !2)
!463 = !DILocation(line: 42, column: 11, scope: !2)
!464 = !DILocation(line: 47, column: 2, scope: !2)
!465 = !DILocation(line: 47, column: 7, scope: !2)
!466 = !DILocation(line: 48, column: 2, scope: !2)
!467 = !DILocation(line: 48, column: 7, scope: !2)
!468 = !DILocation(line: 48, column: 10, scope: !2)
!469 = !DILocation(line: 48, column: 16, scope: !2)
!470 = !DILocation(line: 49, column: 2, scope: !2)
!471 = !DILocation(line: 49, column: 6, scope: !2)
!472 = !DILocation(line: 53, column: 12, scope: !2)
!473 = !DILocation(line: 53, column: 17, scope: !2)
!474 = !DILocation(line: 53, column: 11, scope: !2)
!475 = !DILocation(line: 53, column: 9, scope: !2)
!476 = !DILocation(line: 54, column: 6, scope: !477)
!477 = distinct !DILexicalBlock(scope: !2, file: !3, line: 54, column: 6)
!478 = !DILocation(line: 54, column: 11, scope: !477)
!479 = !DILocation(line: 54, column: 6, scope: !2)
!480 = !DILocation(line: 55, column: 8, scope: !477)
!481 = !DILocation(line: 55, column: 3, scope: !477)
!482 = !DILocation(line: 56, column: 6, scope: !483)
!483 = distinct !DILexicalBlock(scope: !2, file: !3, line: 56, column: 6)
!484 = !DILocation(line: 56, column: 11, scope: !483)
!485 = !DILocation(line: 56, column: 15, scope: !483)
!486 = !DILocation(line: 56, column: 18, scope: !483)
!487 = !DILocation(line: 56, column: 23, scope: !483)
!488 = !DILocation(line: 56, column: 6, scope: !2)
!489 = !DILocation(line: 57, column: 3, scope: !483)
!490 = !DILocation(line: 58, column: 7, scope: !2)
!491 = !DILocation(line: 58, column: 12, scope: !2)
!492 = !DILocation(line: 58, column: 6, scope: !2)
!493 = !DILocation(line: 58, column: 4, scope: !2)
!494 = !DILocation(line: 59, column: 7, scope: !2)
!495 = !DILocation(line: 60, column: 6, scope: !496)
!496 = distinct !DILexicalBlock(scope: !2, file: !3, line: 60, column: 6)
!497 = !DILocation(line: 60, column: 11, scope: !496)
!498 = !DILocation(line: 60, column: 6, scope: !2)
!499 = !DILocation(line: 61, column: 7, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !3, line: 61, column: 7)
!501 = distinct !DILexicalBlock(scope: !496, file: !3, line: 60, column: 19)
!502 = !DILocation(line: 61, column: 11, scope: !500)
!503 = !DILocation(line: 61, column: 7, scope: !501)
!504 = !DILocation(line: 62, column: 9, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !3, line: 61, column: 16)
!506 = !DILocation(line: 63, column: 11, scope: !505)
!507 = !DILocation(line: 63, column: 10, scope: !505)
!508 = !DILocation(line: 63, column: 8, scope: !505)
!509 = !DILocation(line: 64, column: 8, scope: !505)
!510 = !DILocation(line: 65, column: 3, scope: !505)
!511 = !DILocation(line: 65, column: 14, scope: !512)
!512 = distinct !DILexicalBlock(scope: !500, file: !3, line: 65, column: 14)
!513 = !DILocation(line: 65, column: 19, scope: !512)
!514 = !DILocation(line: 65, column: 14, scope: !500)
!515 = !DILocation(line: 66, column: 9, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !3, line: 65, column: 27)
!517 = !DILocation(line: 67, column: 8, scope: !516)
!518 = !DILocation(line: 68, column: 3, scope: !516)
!519 = !DILocation(line: 68, column: 14, scope: !520)
!520 = distinct !DILexicalBlock(scope: !512, file: !3, line: 68, column: 14)
!521 = !DILocation(line: 68, column: 19, scope: !520)
!522 = !DILocation(line: 68, column: 14, scope: !512)
!523 = !DILocation(line: 69, column: 9, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !3, line: 68, column: 28)
!525 = !DILocation(line: 70, column: 8, scope: !524)
!526 = !DILocation(line: 71, column: 3, scope: !524)
!527 = !DILocation(line: 72, column: 2, scope: !501)
!528 = !DILocation(line: 73, column: 6, scope: !529)
!529 = distinct !DILexicalBlock(scope: !2, file: !3, line: 73, column: 6)
!530 = !DILocation(line: 73, column: 11, scope: !529)
!531 = !DILocation(line: 73, column: 6, scope: !2)
!532 = !DILocation(line: 74, column: 7, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !3, line: 74, column: 7)
!534 = distinct !DILexicalBlock(scope: !529, file: !3, line: 73, column: 22)
!535 = !DILocation(line: 74, column: 12, scope: !533)
!536 = !DILocation(line: 74, column: 7, scope: !534)
!537 = !DILocation(line: 75, column: 9, scope: !533)
!538 = !DILocation(line: 75, column: 4, scope: !533)
!539 = !DILocation(line: 76, column: 12, scope: !540)
!540 = distinct !DILexicalBlock(scope: !533, file: !3, line: 76, column: 12)
!541 = !DILocation(line: 76, column: 17, scope: !540)
!542 = !DILocation(line: 76, column: 12, scope: !533)
!543 = !DILocation(line: 77, column: 8, scope: !540)
!544 = !DILocation(line: 77, column: 4, scope: !540)
!545 = !DILocation(line: 78, column: 2, scope: !534)
!546 = !DILocation(line: 79, column: 4, scope: !2)
!547 = !DILocation(line: 80, column: 6, scope: !35)
!548 = !DILocation(line: 80, column: 10, scope: !35)
!549 = !DILocation(line: 80, column: 6, scope: !2)
!550 = !DILocation(line: 81, column: 8, scope: !35)
!551 = !DILocation(line: 81, column: 3, scope: !35)
!552 = !DILocation(line: 81, column: 12, scope: !35)
!553 = !DILocation(line: 83, column: 3, scope: !35)
!554 = !DILocation(line: 83, column: 10, scope: !35)
!555 = !DILocation(line: 83, column: 14, scope: !35)
!556 = !DILocation(line: 84, column: 23, scope: !34)
!557 = !DILocation(line: 84, column: 23, scope: !35)
!558 = !DILocation(line: 84, column: 16, scope: !35)
!559 = !DILocation(line: 84, column: 46, scope: !35)
!560 = !DILocation(line: 84, column: 44, scope: !35)
!561 = !DILocation(line: 84, column: 15, scope: !35)
!562 = !DILocation(line: 84, column: 9, scope: !35)
!563 = !DILocation(line: 84, column: 4, scope: !35)
!564 = !DILocation(line: 84, column: 13, scope: !35)
!565 = distinct !{!565, !553, !566, !233, !234}
!566 = !DILocation(line: 84, column: 52, scope: !35)
!567 = !DILocation(line: 85, column: 6, scope: !568)
!568 = distinct !DILexicalBlock(scope: !2, file: !3, line: 85, column: 6)
!569 = !DILocation(line: 85, column: 10, scope: !568)
!570 = !DILocation(line: 85, column: 8, scope: !568)
!571 = !DILocation(line: 85, column: 6, scope: !2)
!572 = !DILocation(line: 86, column: 15, scope: !568)
!573 = !DILocation(line: 86, column: 13, scope: !568)
!574 = !DILocation(line: 86, column: 3, scope: !568)
!575 = !DILocation(line: 87, column: 10, scope: !2)
!576 = !DILocation(line: 87, column: 7, scope: !2)
!577 = !DILocation(line: 88, column: 8, scope: !578)
!578 = distinct !DILexicalBlock(scope: !2, file: !3, line: 88, column: 6)
!579 = !DILocation(line: 88, column: 13, scope: !578)
!580 = !DILocation(line: 88, column: 6, scope: !2)
!581 = !DILocation(line: 89, column: 3, scope: !578)
!582 = !DILocation(line: 89, column: 14, scope: !578)
!583 = !DILocation(line: 89, column: 17, scope: !578)
!584 = !DILocation(line: 90, column: 8, scope: !578)
!585 = !DILocation(line: 90, column: 11, scope: !578)
!586 = distinct !{!586, !581, !587, !233, !234}
!587 = !DILocation(line: 90, column: 13, scope: !578)
!588 = !DILocation(line: 91, column: 6, scope: !589)
!589 = distinct !DILexicalBlock(scope: !2, file: !3, line: 91, column: 6)
!590 = !DILocation(line: 91, column: 6, scope: !2)
!591 = !DILocation(line: 92, column: 12, scope: !589)
!592 = !DILocation(line: 92, column: 7, scope: !589)
!593 = !DILocation(line: 92, column: 10, scope: !589)
!594 = !DILocation(line: 92, column: 3, scope: !589)
!595 = !DILocation(line: 93, column: 6, scope: !596)
!596 = distinct !DILexicalBlock(scope: !2, file: !3, line: 93, column: 6)
!597 = !DILocation(line: 93, column: 11, scope: !596)
!598 = !DILocation(line: 93, column: 6, scope: !2)
!599 = !DILocation(line: 94, column: 7, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 94, column: 7)
!601 = distinct !DILexicalBlock(scope: !596, file: !3, line: 93, column: 22)
!602 = !DILocation(line: 94, column: 12, scope: !600)
!603 = !DILocation(line: 94, column: 7, scope: !601)
!604 = !DILocation(line: 95, column: 8, scope: !600)
!605 = !DILocation(line: 95, column: 11, scope: !600)
!606 = !DILocation(line: 95, column: 4, scope: !600)
!607 = !DILocation(line: 96, column: 12, scope: !608)
!608 = distinct !DILexicalBlock(scope: !600, file: !3, line: 96, column: 12)
!609 = !DILocation(line: 96, column: 17, scope: !608)
!610 = !DILocation(line: 96, column: 12, scope: !600)
!611 = !DILocation(line: 97, column: 8, scope: !612)
!612 = distinct !DILexicalBlock(scope: !608, file: !3, line: 96, column: 24)
!613 = !DILocation(line: 97, column: 11, scope: !612)
!614 = !DILocation(line: 98, column: 20, scope: !612)
!615 = !DILocation(line: 98, column: 18, scope: !612)
!616 = !DILocation(line: 98, column: 13, scope: !612)
!617 = !DILocation(line: 98, column: 8, scope: !612)
!618 = !DILocation(line: 98, column: 11, scope: !612)
!619 = !DILocation(line: 99, column: 3, scope: !612)
!620 = !DILocation(line: 100, column: 2, scope: !601)
!621 = !DILocation(line: 101, column: 8, scope: !622)
!622 = distinct !DILexicalBlock(scope: !2, file: !3, line: 101, column: 6)
!623 = !DILocation(line: 101, column: 13, scope: !622)
!624 = !DILocation(line: 101, column: 6, scope: !2)
!625 = !DILocation(line: 102, column: 3, scope: !622)
!626 = !DILocation(line: 102, column: 14, scope: !622)
!627 = !DILocation(line: 102, column: 17, scope: !622)
!628 = !DILocation(line: 103, column: 13, scope: !622)
!629 = !DILocation(line: 103, column: 8, scope: !622)
!630 = !DILocation(line: 103, column: 11, scope: !622)
!631 = distinct !{!631, !625, !628, !233, !234}
!632 = !DILocation(line: 104, column: 2, scope: !2)
!633 = !DILocation(line: 104, column: 9, scope: !2)
!634 = !DILocation(line: 104, column: 22, scope: !2)
!635 = !DILocation(line: 104, column: 11, scope: !2)
!636 = !DILocation(line: 105, column: 7, scope: !2)
!637 = !DILocation(line: 105, column: 10, scope: !2)
!638 = distinct !{!638, !632, !639, !233, !234}
!639 = !DILocation(line: 105, column: 12, scope: !2)
!640 = !DILocation(line: 106, column: 2, scope: !2)
!641 = !DILocation(line: 106, column: 10, scope: !2)
!642 = !DILocation(line: 106, column: 13, scope: !2)
!643 = !DILocation(line: 107, column: 16, scope: !2)
!644 = !DILocation(line: 107, column: 12, scope: !2)
!645 = !DILocation(line: 107, column: 7, scope: !2)
!646 = !DILocation(line: 107, column: 10, scope: !2)
!647 = distinct !{!647, !640, !648, !233, !234}
!648 = !DILocation(line: 107, column: 17, scope: !2)
!649 = !DILocation(line: 108, column: 2, scope: !2)
!650 = !DILocation(line: 108, column: 13, scope: !2)
!651 = !DILocation(line: 108, column: 16, scope: !2)
!652 = !DILocation(line: 109, column: 7, scope: !2)
!653 = !DILocation(line: 109, column: 10, scope: !2)
!654 = distinct !{!654, !649, !655, !233, !234}
!655 = !DILocation(line: 109, column: 12, scope: !2)
!656 = !DILocation(line: 110, column: 9, scope: !2)
!657 = !DILocation(line: 110, column: 2, scope: !2)
!658 = !DILocation(line: 111, column: 1, scope: !2)
!659 = distinct !DISubprogram(name: "sprintf", scope: !3, file: !3, line: 283, type: !660, scopeLine: 284, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !662)
!660 = !DISubroutineType(types: !661)
!661 = !{!9, !6, !49, null}
!662 = !{!663, !664, !665, !666}
!663 = !DILocalVariable(name: "buf", arg: 1, scope: !659, file: !3, line: 283, type: !6)
!664 = !DILocalVariable(name: "fmt", arg: 2, scope: !659, file: !3, line: 283, type: !49)
!665 = !DILocalVariable(name: "args", scope: !659, file: !3, line: 285, type: !50)
!666 = !DILocalVariable(name: "i", scope: !659, file: !3, line: 286, type: !9)
!667 = !DILocation(line: 283, column: 19, scope: !659)
!668 = !DILocation(line: 283, column: 36, scope: !659)
!669 = !DILocation(line: 285, column: 2, scope: !659)
!670 = !DILocation(line: 285, column: 10, scope: !659)
!671 = !DILocation(line: 286, column: 2, scope: !659)
!672 = !DILocation(line: 286, column: 6, scope: !659)
!673 = !DILocation(line: 288, column: 2, scope: !659)
!674 = !DILocation(line: 289, column: 15, scope: !659)
!675 = !DILocation(line: 289, column: 20, scope: !659)
!676 = !DILocation(line: 289, column: 25, scope: !659)
!677 = !DILocation(line: 289, column: 6, scope: !659)
!678 = !DILocation(line: 289, column: 4, scope: !659)
!679 = !DILocation(line: 290, column: 2, scope: !659)
!680 = !DILocation(line: 291, column: 9, scope: !659)
!681 = !DILocation(line: 292, column: 1, scope: !659)
!682 = !DILocation(line: 291, column: 2, scope: !659)
!683 = distinct !DISubprogram(name: "printf", scope: !3, file: !3, line: 294, type: !684, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{!9, !49, null}
!686 = !{!687, !688, !692, !693}
!687 = !DILocalVariable(name: "fmt", arg: 1, scope: !683, file: !3, line: 294, type: !49)
!688 = !DILocalVariable(name: "printf_buf", scope: !683, file: !3, line: 296, type: !689)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8192, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: 1024)
!692 = !DILocalVariable(name: "args", scope: !683, file: !3, line: 297, type: !50)
!693 = !DILocalVariable(name: "printed", scope: !683, file: !3, line: 298, type: !9)
!694 = !DILocation(line: 294, column: 24, scope: !683)
!695 = !DILocation(line: 296, column: 2, scope: !683)
!696 = !DILocation(line: 296, column: 7, scope: !683)
!697 = !DILocation(line: 297, column: 2, scope: !683)
!698 = !DILocation(line: 297, column: 10, scope: !683)
!699 = !DILocation(line: 298, column: 2, scope: !683)
!700 = !DILocation(line: 298, column: 6, scope: !683)
!701 = !DILocation(line: 300, column: 2, scope: !683)
!702 = !DILocation(line: 301, column: 21, scope: !683)
!703 = !DILocation(line: 301, column: 33, scope: !683)
!704 = !DILocation(line: 301, column: 38, scope: !683)
!705 = !DILocation(line: 301, column: 12, scope: !683)
!706 = !DILocation(line: 301, column: 10, scope: !683)
!707 = !DILocation(line: 302, column: 2, scope: !683)
!708 = !DILocation(line: 304, column: 7, scope: !683)
!709 = !DILocation(line: 304, column: 2, scope: !683)
!710 = !DILocation(line: 306, column: 9, scope: !683)
!711 = !DILocation(line: 307, column: 1, scope: !683)
!712 = !DILocation(line: 306, column: 2, scope: !683)
!713 = !DISubprogram(name: "puts", scope: !451, file: !451, line: 314, type: !714, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!714 = !DISubroutineType(types: !715)
!715 = !{null, !49}
