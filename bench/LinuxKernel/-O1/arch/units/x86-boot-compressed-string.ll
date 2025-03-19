; ModuleID = 'arch/x86/boot/compressed/string.c'
source_filename = "arch/x86/boot/compressed/string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"Avoiding potentially unsafe overlapping memcpy()!\00", align 1, !dbg !0

; Function Attrs: noredzone nounwind
define hidden i32 @memcmp(ptr noundef %s1, ptr noundef %s2, i64 noundef %len) #0 !dbg !30 {
entry:
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %diff = alloca i8, align 1
  store ptr %s1, ptr %s1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !44, metadata !DIExpression()), !dbg !50
  store ptr %s2, ptr %s2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !45, metadata !DIExpression()), !dbg !51
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !46, metadata !DIExpression()), !dbg !52
  call void @llvm.lifetime.start.p0(i64 1, ptr %diff) #7, !dbg !53
  call void @llvm.dbg.declare(metadata ptr %diff, metadata !47, metadata !DIExpression()), !dbg !54
  %0 = load ptr, ptr %s1.addr, align 8, !dbg !55
  %1 = load ptr, ptr %s2.addr, align 8, !dbg !55
  %2 = load i64, ptr %len.addr, align 8, !dbg !55
  %3 = call { i8, ptr, ptr, i64 } asm "repe; cmpsb\0A\09/* output condition code nz*/\0A", "={@ccnz},={di},={si},={cx},1,2,3,~{dirflag},~{fpsr},~{flags}"(ptr %0, ptr %1, i64 %2) #8, !dbg !55, !srcloc !56
  %asmresult = extractvalue { i8, ptr, ptr, i64 } %3, 0, !dbg !55
  %asmresult1 = extractvalue { i8, ptr, ptr, i64 } %3, 1, !dbg !55
  %asmresult2 = extractvalue { i8, ptr, ptr, i64 } %3, 2, !dbg !55
  %asmresult3 = extractvalue { i8, ptr, ptr, i64 } %3, 3, !dbg !55
  %4 = icmp ult i8 %asmresult, 2, !dbg !55
  call void @llvm.assume(i1 %4), !dbg !55
  store i8 %asmresult, ptr %diff, align 1, !dbg !55
  store ptr %asmresult1, ptr %s1.addr, align 8, !dbg !55
  store ptr %asmresult2, ptr %s2.addr, align 8, !dbg !55
  store i64 %asmresult3, ptr %len.addr, align 8, !dbg !55
  %5 = load i8, ptr %diff, align 1, !dbg !57, !range !58, !noundef !59
  %tobool = trunc i8 %5 to i1, !dbg !57
  %conv = zext i1 %tobool to i32, !dbg !57
  call void @llvm.lifetime.end.p0(i64 1, ptr %diff) #7, !dbg !60
  ret i32 %conv, !dbg !61
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone nounwind
define hidden i32 @bcmp(ptr noundef %s1, ptr noundef %s2, i64 noundef %len) #0 !dbg !62 {
entry:
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %s1, ptr %s1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !64, metadata !DIExpression()), !dbg !67
  store ptr %s2, ptr %s2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !65, metadata !DIExpression()), !dbg !68
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !66, metadata !DIExpression()), !dbg !69
  %0 = load ptr, ptr %s1.addr, align 8, !dbg !70
  %1 = load ptr, ptr %s2.addr, align 8, !dbg !71
  %2 = load i64, ptr %len.addr, align 8, !dbg !72
  %call = call i32 @memcmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9, !dbg !73
  ret i32 %call, !dbg !74
}

; Function Attrs: noredzone nounwind
define hidden i32 @strcmp(ptr noundef %str1, ptr noundef %str2) #0 !dbg !75 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca ptr, align 8
  %str2.addr = alloca ptr, align 8
  %s1 = alloca ptr, align 8
  %s2 = alloca ptr, align 8
  %delta = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str1, ptr %str1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str1.addr, metadata !81, metadata !DIExpression()), !dbg !86
  store ptr %str2, ptr %str2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str2.addr, metadata !82, metadata !DIExpression()), !dbg !87
  call void @llvm.lifetime.start.p0(i64 8, ptr %s1) #7, !dbg !88
  call void @llvm.dbg.declare(metadata ptr %s1, metadata !83, metadata !DIExpression()), !dbg !89
  %0 = load ptr, ptr %str1.addr, align 8, !dbg !90
  store ptr %0, ptr %s1, align 8, !dbg !89
  call void @llvm.lifetime.start.p0(i64 8, ptr %s2) #7, !dbg !91
  call void @llvm.dbg.declare(metadata ptr %s2, metadata !84, metadata !DIExpression()), !dbg !92
  %1 = load ptr, ptr %str2.addr, align 8, !dbg !93
  store ptr %1, ptr %s2, align 8, !dbg !92
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta) #7, !dbg !94
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !85, metadata !DIExpression()), !dbg !95
  store i32 0, ptr %delta, align 4, !dbg !95
  br label %while.cond, !dbg !96

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %s1, align 8, !dbg !97
  %3 = load i8, ptr %2, align 1, !dbg !98
  %conv = zext i8 %3 to i32, !dbg !98
  %tobool = icmp ne i32 %conv, 0, !dbg !98
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !99

lor.rhs:                                          ; preds = %while.cond
  %4 = load ptr, ptr %s2, align 8, !dbg !100
  %5 = load i8, ptr %4, align 1, !dbg !101
  %conv1 = zext i8 %5 to i32, !dbg !101
  %tobool2 = icmp ne i32 %conv1, 0, !dbg !99
  br label %lor.end, !dbg !99

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %tobool2, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end, !dbg !96

while.body:                                       ; preds = %lor.end
  %7 = load ptr, ptr %s1, align 8, !dbg !102
  %8 = load i8, ptr %7, align 1, !dbg !104
  %conv3 = zext i8 %8 to i32, !dbg !104
  %9 = load ptr, ptr %s2, align 8, !dbg !105
  %10 = load i8, ptr %9, align 1, !dbg !106
  %conv4 = zext i8 %10 to i32, !dbg !106
  %sub = sub nsw i32 %conv3, %conv4, !dbg !107
  store i32 %sub, ptr %delta, align 4, !dbg !108
  %11 = load i32, ptr %delta, align 4, !dbg !109
  %tobool5 = icmp ne i32 %11, 0, !dbg !109
  br i1 %tobool5, label %if.then, label %if.end, !dbg !111

if.then:                                          ; preds = %while.body
  %12 = load i32, ptr %delta, align 4, !dbg !112
  store i32 %12, ptr %retval, align 4, !dbg !113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !113

if.end:                                           ; preds = %while.body
  %13 = load ptr, ptr %s1, align 8, !dbg !114
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1, !dbg !114
  store ptr %incdec.ptr, ptr %s1, align 8, !dbg !114
  %14 = load ptr, ptr %s2, align 8, !dbg !115
  %incdec.ptr6 = getelementptr inbounds i8, ptr %14, i32 1, !dbg !115
  store ptr %incdec.ptr6, ptr %s2, align 8, !dbg !115
  br label %while.cond, !dbg !96, !llvm.loop !116

while.end:                                        ; preds = %lor.end
  store i32 0, ptr %retval, align 4, !dbg !120
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !120

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta) #7, !dbg !121
  call void @llvm.lifetime.end.p0(i64 8, ptr %s2) #7, !dbg !121
  call void @llvm.lifetime.end.p0(i64 8, ptr %s1) #7, !dbg !121
  %15 = load i32, ptr %retval, align 4, !dbg !121
  ret i32 %15, !dbg !121
}

; Function Attrs: noredzone nounwind
define hidden i32 @strncmp(ptr noundef %cs, ptr noundef %ct, i64 noundef %count) #0 !dbg !122 {
entry:
  %retval = alloca i32, align 4
  %cs.addr = alloca ptr, align 8
  %ct.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cs, ptr %cs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !126, metadata !DIExpression()), !dbg !131
  store ptr %ct, ptr %ct.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !127, metadata !DIExpression()), !dbg !132
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !128, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1) #7, !dbg !134
  call void @llvm.dbg.declare(metadata ptr %c1, metadata !129, metadata !DIExpression()), !dbg !135
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2) #7, !dbg !134
  call void @llvm.dbg.declare(metadata ptr %c2, metadata !130, metadata !DIExpression()), !dbg !136
  br label %while.cond, !dbg !137

while.cond:                                       ; preds = %if.end10, %entry
  %0 = load i64, ptr %count.addr, align 8, !dbg !138
  %tobool = icmp ne i64 %0, 0, !dbg !137
  br i1 %tobool, label %while.body, label %while.end, !dbg !137

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %cs.addr, align 8, !dbg !139
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1, !dbg !139
  store ptr %incdec.ptr, ptr %cs.addr, align 8, !dbg !139
  %2 = load i8, ptr %1, align 1, !dbg !141
  store i8 %2, ptr %c1, align 1, !dbg !142
  %3 = load ptr, ptr %ct.addr, align 8, !dbg !143
  %incdec.ptr1 = getelementptr inbounds i8, ptr %3, i32 1, !dbg !143
  store ptr %incdec.ptr1, ptr %ct.addr, align 8, !dbg !143
  %4 = load i8, ptr %3, align 1, !dbg !144
  store i8 %4, ptr %c2, align 1, !dbg !145
  %5 = load i8, ptr %c1, align 1, !dbg !146
  %conv = zext i8 %5 to i32, !dbg !146
  %6 = load i8, ptr %c2, align 1, !dbg !148
  %conv2 = zext i8 %6 to i32, !dbg !148
  %cmp = icmp ne i32 %conv, %conv2, !dbg !149
  br i1 %cmp, label %if.then, label %if.end, !dbg !150

if.then:                                          ; preds = %while.body
  %7 = load i8, ptr %c1, align 1, !dbg !151
  %conv4 = zext i8 %7 to i32, !dbg !151
  %8 = load i8, ptr %c2, align 1, !dbg !152
  %conv5 = zext i8 %8 to i32, !dbg !152
  %cmp6 = icmp slt i32 %conv4, %conv5, !dbg !153
  %9 = zext i1 %cmp6 to i64, !dbg !151
  %cond = select i1 %cmp6, i32 -1, i32 1, !dbg !151
  store i32 %cond, ptr %retval, align 4, !dbg !154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !154

if.end:                                           ; preds = %while.body
  %10 = load i8, ptr %c1, align 1, !dbg !155
  %tobool8 = icmp ne i8 %10, 0, !dbg !155
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !157

if.then9:                                         ; preds = %if.end
  br label %while.end, !dbg !158

if.end10:                                         ; preds = %if.end
  %11 = load i64, ptr %count.addr, align 8, !dbg !159
  %dec = add i64 %11, -1, !dbg !159
  store i64 %dec, ptr %count.addr, align 8, !dbg !159
  br label %while.cond, !dbg !137, !llvm.loop !160

while.end:                                        ; preds = %if.then9, %while.cond
  store i32 0, ptr %retval, align 4, !dbg !162
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !162

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2) #7, !dbg !163
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1) #7, !dbg !163
  %12 = load i32, ptr %retval, align 4, !dbg !163
  ret i32 %12, !dbg !163
}

; Function Attrs: noredzone nounwind
define hidden i64 @strnlen(ptr noundef %s, i64 noundef %maxlen) #0 !dbg !164 {
entry:
  %s.addr = alloca ptr, align 8
  %maxlen.addr = alloca i64, align 8
  %es = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !168, metadata !DIExpression()), !dbg !171
  store i64 %maxlen, ptr %maxlen.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %maxlen.addr, metadata !169, metadata !DIExpression()), !dbg !172
  call void @llvm.lifetime.start.p0(i64 8, ptr %es) #7, !dbg !173
  call void @llvm.dbg.declare(metadata ptr %es, metadata !170, metadata !DIExpression()), !dbg !174
  %0 = load ptr, ptr %s.addr, align 8, !dbg !175
  store ptr %0, ptr %es, align 8, !dbg !174
  br label %while.cond, !dbg !176

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %es, align 8, !dbg !177
  %2 = load i8, ptr %1, align 1, !dbg !178
  %conv = sext i8 %2 to i32, !dbg !178
  %tobool = icmp ne i32 %conv, 0, !dbg !178
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !179

land.rhs:                                         ; preds = %while.cond
  %3 = load i64, ptr %maxlen.addr, align 8, !dbg !180
  %tobool1 = icmp ne i64 %3, 0, !dbg !179
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ], !dbg !181
  br i1 %4, label %while.body, label %while.end, !dbg !176

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %es, align 8, !dbg !182
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1, !dbg !182
  store ptr %incdec.ptr, ptr %es, align 8, !dbg !182
  %6 = load i64, ptr %maxlen.addr, align 8, !dbg !184
  %dec = add i64 %6, -1, !dbg !184
  store i64 %dec, ptr %maxlen.addr, align 8, !dbg !184
  br label %while.cond, !dbg !176, !llvm.loop !185

while.end:                                        ; preds = %land.end
  %7 = load ptr, ptr %es, align 8, !dbg !187
  %8 = load ptr, ptr %s.addr, align 8, !dbg !188
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i64, !dbg !189
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64, !dbg !189
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !189
  call void @llvm.lifetime.end.p0(i64 8, ptr %es) #7, !dbg !190
  ret i64 %sub.ptr.sub, !dbg !191
}

; Function Attrs: noredzone nounwind
define hidden i32 @atou(ptr noundef %s) #0 !dbg !192 {
entry:
  %s.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !196, metadata !DIExpression()), !dbg !198
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %i, metadata !197, metadata !DIExpression()), !dbg !200
  store i32 0, ptr %i, align 4, !dbg !200
  br label %while.cond, !dbg !201

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 8, !dbg !202
  %1 = load i8, ptr %0, align 1, !dbg !203
  %conv = sext i8 %1 to i32, !dbg !203
  %call = call i32 @isdigit(i32 noundef %conv) #9, !dbg !204
  %tobool = icmp ne i32 %call, 0, !dbg !201
  br i1 %tobool, label %while.body, label %while.end, !dbg !201

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %i, align 4, !dbg !205
  %mul = mul i32 %2, 10, !dbg !206
  %3 = load ptr, ptr %s.addr, align 8, !dbg !207
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1, !dbg !207
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !207
  %4 = load i8, ptr %3, align 1, !dbg !208
  %conv1 = sext i8 %4 to i32, !dbg !208
  %sub = sub nsw i32 %conv1, 48, !dbg !209
  %add = add i32 %mul, %sub, !dbg !210
  store i32 %add, ptr %i, align 4, !dbg !211
  br label %while.cond, !dbg !201, !llvm.loop !212

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %i, align 4, !dbg !214
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !215
  ret i32 %5, !dbg !216
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @isdigit(i32 noundef %ch) #4 !dbg !217 {
entry:
  %ch.addr = alloca i32, align 4
  store i32 %ch, ptr %ch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !222, metadata !DIExpression()), !dbg !223
  %0 = load i32, ptr %ch.addr, align 4, !dbg !224
  %cmp = icmp sge i32 %0, 48, !dbg !225
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !226

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %ch.addr, align 4, !dbg !227
  %cmp1 = icmp sle i32 %1, 57, !dbg !228
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !229
  %land.ext = zext i1 %2 to i32, !dbg !226
  ret i32 %land.ext, !dbg !230
}

; Function Attrs: noredzone nounwind
define hidden i64 @simple_strtoull(ptr noundef %cp, ptr noundef %endp, i32 noundef %base) #0 !dbg !231 {
entry:
  %cp.addr = alloca ptr, align 8
  %endp.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %result = alloca i64, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cp, ptr %cp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cp.addr, metadata !236, metadata !DIExpression()), !dbg !242
  store ptr %endp, ptr %endp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %endp.addr, metadata !237, metadata !DIExpression()), !dbg !243
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !238, metadata !DIExpression()), !dbg !244
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #7, !dbg !245
  call void @llvm.dbg.declare(metadata ptr %result, metadata !239, metadata !DIExpression()), !dbg !246
  store i64 0, ptr %result, align 8, !dbg !246
  %0 = load i32, ptr %base.addr, align 4, !dbg !247
  %tobool = icmp ne i32 %0, 0, !dbg !247
  br i1 %tobool, label %if.end, label %if.then, !dbg !249

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cp.addr, align 8, !dbg !250
  %call = call i32 @simple_guess_base(ptr noundef %1) #9, !dbg !251
  store i32 %call, ptr %base.addr, align 4, !dbg !252
  br label %if.end, !dbg !253

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %base.addr, align 4, !dbg !254
  %cmp = icmp eq i32 %2, 16, !dbg !256
  br i1 %cmp, label %land.lhs.true, label %if.end9, !dbg !257

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %cp.addr, align 8, !dbg !258
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 0, !dbg !258
  %4 = load i8, ptr %arrayidx, align 1, !dbg !258
  %conv = sext i8 %4 to i32, !dbg !258
  %cmp1 = icmp eq i32 %conv, 48, !dbg !259
  br i1 %cmp1, label %land.lhs.true3, label %if.end9, !dbg !260

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %cp.addr, align 8, !dbg !261
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !261
  %6 = load i8, ptr %arrayidx4, align 1, !dbg !261
  %conv5 = sext i8 %6 to i32, !dbg !261
  %or = or i32 %conv5, 32, !dbg !261
  %cmp6 = icmp eq i32 %or, 120, !dbg !262
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !263

if.then8:                                         ; preds = %land.lhs.true3
  %7 = load ptr, ptr %cp.addr, align 8, !dbg !264
  %add.ptr = getelementptr inbounds i8, ptr %7, i64 2, !dbg !264
  store ptr %add.ptr, ptr %cp.addr, align 8, !dbg !264
  br label %if.end9, !dbg !265

if.end9:                                          ; preds = %if.then8, %land.lhs.true3, %land.lhs.true, %if.end
  br label %while.cond, !dbg !266

while.cond:                                       ; preds = %cleanup.cont, %if.end9
  %8 = load ptr, ptr %cp.addr, align 8, !dbg !267
  %9 = load i8, ptr %8, align 1, !dbg !268
  %conv10 = sext i8 %9 to i32, !dbg !268
  %call11 = call i32 @isxdigit(i32 noundef %conv10) #9, !dbg !269
  %tobool12 = icmp ne i32 %call11, 0, !dbg !266
  br i1 %tobool12, label %while.body, label %while.end, !dbg !266

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #7, !dbg !270
  call void @llvm.dbg.declare(metadata ptr %value, metadata !240, metadata !DIExpression()), !dbg !271
  %10 = load ptr, ptr %cp.addr, align 8, !dbg !272
  %11 = load i8, ptr %10, align 1, !dbg !273
  %conv13 = sext i8 %11 to i32, !dbg !273
  %call14 = call i32 @isdigit(i32 noundef %conv13) #9, !dbg !274
  %tobool15 = icmp ne i32 %call14, 0, !dbg !274
  br i1 %tobool15, label %cond.true, label %cond.false, !dbg !274

cond.true:                                        ; preds = %while.body
  %12 = load ptr, ptr %cp.addr, align 8, !dbg !275
  %13 = load i8, ptr %12, align 1, !dbg !276
  %conv16 = sext i8 %13 to i32, !dbg !276
  %sub = sub nsw i32 %conv16, 48, !dbg !277
  br label %cond.end, !dbg !274

cond.false:                                       ; preds = %while.body
  %14 = load ptr, ptr %cp.addr, align 8, !dbg !278
  %15 = load i8, ptr %14, align 1, !dbg !278
  %conv17 = sext i8 %15 to i32, !dbg !278
  %or18 = or i32 %conv17, 32, !dbg !278
  %sub19 = sub nsw i32 %or18, 97, !dbg !279
  %add = add nsw i32 %sub19, 10, !dbg !280
  br label %cond.end, !dbg !274

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %add, %cond.false ], !dbg !274
  store i32 %cond, ptr %value, align 4, !dbg !281
  %16 = load i32, ptr %value, align 4, !dbg !282
  %17 = load i32, ptr %base.addr, align 4, !dbg !284
  %cmp20 = icmp uge i32 %16, %17, !dbg !285
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !286

if.then22:                                        ; preds = %cond.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !287

if.end23:                                         ; preds = %cond.end
  %18 = load i64, ptr %result, align 8, !dbg !288
  %19 = load i32, ptr %base.addr, align 4, !dbg !289
  %conv24 = zext i32 %19 to i64, !dbg !289
  %mul = mul i64 %18, %conv24, !dbg !290
  %20 = load i32, ptr %value, align 4, !dbg !291
  %conv25 = zext i32 %20 to i64, !dbg !291
  %add26 = add i64 %mul, %conv25, !dbg !292
  store i64 %add26, ptr %result, align 8, !dbg !293
  %21 = load ptr, ptr %cp.addr, align 8, !dbg !294
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1, !dbg !294
  store ptr %incdec.ptr, ptr %cp.addr, align 8, !dbg !294
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !295
  br label %cleanup, !dbg !295

cleanup:                                          ; preds = %if.end23, %if.then22
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #7, !dbg !295
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !266, !llvm.loop !296

while.end:                                        ; preds = %cleanup, %while.cond
  %22 = load ptr, ptr %endp.addr, align 8, !dbg !297
  %tobool27 = icmp ne ptr %22, null, !dbg !297
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !299

if.then28:                                        ; preds = %while.end
  %23 = load ptr, ptr %cp.addr, align 8, !dbg !300
  %24 = load ptr, ptr %endp.addr, align 8, !dbg !301
  store ptr %23, ptr %24, align 8, !dbg !302
  br label %if.end29, !dbg !303

if.end29:                                         ; preds = %if.then28, %while.end
  %25 = load i64, ptr %result, align 8, !dbg !304
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #7, !dbg !305
  ret i64 %25, !dbg !306

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone nounwind
define internal i32 @simple_guess_base(ptr noundef %cp) #0 !dbg !307 {
entry:
  %retval = alloca i32, align 4
  %cp.addr = alloca ptr, align 8
  store ptr %cp, ptr %cp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cp.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = load ptr, ptr %cp.addr, align 8, !dbg !311
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0, !dbg !311
  %1 = load i8, ptr %arrayidx, align 1, !dbg !311
  %conv = sext i8 %1 to i32, !dbg !311
  %cmp = icmp eq i32 %conv, 48, !dbg !313
  br i1 %cmp, label %if.then, label %if.else9, !dbg !314

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cp.addr, align 8, !dbg !315
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !315
  %3 = load i8, ptr %arrayidx2, align 1, !dbg !315
  %conv3 = sext i8 %3 to i32, !dbg !315
  %or = or i32 %conv3, 32, !dbg !315
  %cmp4 = icmp eq i32 %or, 120, !dbg !318
  br i1 %cmp4, label %land.lhs.true, label %if.else, !dbg !319

land.lhs.true:                                    ; preds = %if.then
  %4 = load ptr, ptr %cp.addr, align 8, !dbg !320
  %arrayidx6 = getelementptr inbounds i8, ptr %4, i64 2, !dbg !320
  %5 = load i8, ptr %arrayidx6, align 1, !dbg !320
  %conv7 = sext i8 %5 to i32, !dbg !320
  %call = call i32 @isxdigit(i32 noundef %conv7) #9, !dbg !321
  %tobool = icmp ne i32 %call, 0, !dbg !321
  br i1 %tobool, label %if.then8, label %if.else, !dbg !322

if.then8:                                         ; preds = %land.lhs.true
  store i32 16, ptr %retval, align 4, !dbg !323
  br label %return, !dbg !323

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 8, ptr %retval, align 4, !dbg !324
  br label %return, !dbg !324

if.else9:                                         ; preds = %entry
  store i32 10, ptr %retval, align 4, !dbg !325
  br label %return, !dbg !325

return:                                           ; preds = %if.else9, %if.else, %if.then8
  %6 = load i32, ptr %retval, align 4, !dbg !327
  ret i32 %6, !dbg !327
}

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @isxdigit(i32 noundef %ch) #4 !dbg !328 {
entry:
  %retval = alloca i32, align 4
  %ch.addr = alloca i32, align 4
  store i32 %ch, ptr %ch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load i32, ptr %ch.addr, align 4, !dbg !332
  %call = call i32 @isdigit(i32 noundef %0) #9, !dbg !334
  %tobool = icmp ne i32 %call, 0, !dbg !334
  br i1 %tobool, label %if.then, label %if.end, !dbg !335

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !336
  br label %return, !dbg !336

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %ch.addr, align 4, !dbg !337
  %cmp = icmp sge i32 %1, 97, !dbg !339
  br i1 %cmp, label %land.lhs.true, label %if.end3, !dbg !340

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, ptr %ch.addr, align 4, !dbg !341
  %cmp1 = icmp sle i32 %2, 102, !dbg !342
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !343

if.then2:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !344
  br label %return, !dbg !344

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %3 = load i32, ptr %ch.addr, align 4, !dbg !345
  %cmp4 = icmp sge i32 %3, 65, !dbg !346
  br i1 %cmp4, label %land.rhs, label %land.end, !dbg !347

land.rhs:                                         ; preds = %if.end3
  %4 = load i32, ptr %ch.addr, align 4, !dbg !348
  %cmp5 = icmp sle i32 %4, 70, !dbg !349
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end3
  %5 = phi i1 [ false, %if.end3 ], [ %cmp5, %land.rhs ], !dbg !350
  %land.ext = zext i1 %5 to i32, !dbg !347
  store i32 %land.ext, ptr %retval, align 4, !dbg !351
  br label %return, !dbg !351

return:                                           ; preds = %land.end, %if.then2, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !352
  ret i32 %6, !dbg !352
}

; Function Attrs: noredzone nounwind
define hidden i64 @simple_strtol(ptr noundef %cp, ptr noundef %endp, i32 noundef %base) #0 !dbg !353 {
entry:
  %retval = alloca i64, align 8
  %cp.addr = alloca ptr, align 8
  %endp.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  store ptr %cp, ptr %cp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cp.addr, metadata !358, metadata !DIExpression()), !dbg !361
  store ptr %endp, ptr %endp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %endp.addr, metadata !359, metadata !DIExpression()), !dbg !362
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !360, metadata !DIExpression()), !dbg !363
  %0 = load ptr, ptr %cp.addr, align 8, !dbg !364
  %1 = load i8, ptr %0, align 1, !dbg !366
  %conv = sext i8 %1 to i32, !dbg !366
  %cmp = icmp eq i32 %conv, 45, !dbg !367
  br i1 %cmp, label %if.then, label %if.end, !dbg !368

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cp.addr, align 8, !dbg !369
  %add.ptr = getelementptr inbounds i8, ptr %2, i64 1, !dbg !370
  %3 = load ptr, ptr %endp.addr, align 8, !dbg !371
  %4 = load i32, ptr %base.addr, align 4, !dbg !372
  %call = call i64 @simple_strtoull(ptr noundef %add.ptr, ptr noundef %3, i32 noundef %4) #9, !dbg !373
  %sub = sub i64 0, %call, !dbg !374
  store i64 %sub, ptr %retval, align 8, !dbg !375
  br label %return, !dbg !375

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %cp.addr, align 8, !dbg !376
  %6 = load ptr, ptr %endp.addr, align 8, !dbg !377
  %7 = load i32, ptr %base.addr, align 4, !dbg !378
  %call2 = call i64 @simple_strtoull(ptr noundef %5, ptr noundef %6, i32 noundef %7) #9, !dbg !379
  store i64 %call2, ptr %retval, align 8, !dbg !380
  br label %return, !dbg !380

return:                                           ; preds = %if.end, %if.then
  %8 = load i64, ptr %retval, align 8, !dbg !381
  ret i64 %8, !dbg !381
}

; Function Attrs: noredzone nounwind
define hidden i64 @strlen(ptr noundef %s) #0 !dbg !382 {
entry:
  %s.addr = alloca ptr, align 8
  %sc = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !386, metadata !DIExpression()), !dbg !388
  call void @llvm.lifetime.start.p0(i64 8, ptr %sc) #7, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !387, metadata !DIExpression()), !dbg !390
  %0 = load ptr, ptr %s.addr, align 8, !dbg !391
  store ptr %0, ptr %sc, align 8, !dbg !393
  br label %for.cond, !dbg !394

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %sc, align 8, !dbg !395
  %2 = load i8, ptr %1, align 1, !dbg !397
  %conv = sext i8 %2 to i32, !dbg !397
  %cmp = icmp ne i32 %conv, 0, !dbg !398
  br i1 %cmp, label %for.body, label %for.end, !dbg !399

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !399

for.inc:                                          ; preds = %for.body
  %3 = load ptr, ptr %sc, align 8, !dbg !400
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1, !dbg !400
  store ptr %incdec.ptr, ptr %sc, align 8, !dbg !400
  br label %for.cond, !dbg !401, !llvm.loop !402

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr %sc, align 8, !dbg !404
  %5 = load ptr, ptr %s.addr, align 8, !dbg !405
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64, !dbg !406
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64, !dbg !406
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !406
  call void @llvm.lifetime.end.p0(i64 8, ptr %sc) #7, !dbg !407
  ret i64 %sub.ptr.sub, !dbg !408
}

; Function Attrs: noredzone nounwind
define hidden ptr @strstr(ptr noundef %s1, ptr noundef %s2) #0 !dbg !409 {
entry:
  %retval = alloca ptr, align 8
  %s1.addr = alloca ptr, align 8
  %s2.addr = alloca ptr, align 8
  %l1 = alloca i64, align 8
  %l2 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s1, ptr %s1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !413, metadata !DIExpression()), !dbg !417
  store ptr %s2, ptr %s2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !414, metadata !DIExpression()), !dbg !418
  call void @llvm.lifetime.start.p0(i64 8, ptr %l1) #7, !dbg !419
  call void @llvm.dbg.declare(metadata ptr %l1, metadata !415, metadata !DIExpression()), !dbg !420
  call void @llvm.lifetime.start.p0(i64 8, ptr %l2) #7, !dbg !419
  call void @llvm.dbg.declare(metadata ptr %l2, metadata !416, metadata !DIExpression()), !dbg !421
  %0 = load ptr, ptr %s2.addr, align 8, !dbg !422
  %call = call i64 @strlen(ptr noundef %0) #9, !dbg !423
  store i64 %call, ptr %l2, align 8, !dbg !424
  %1 = load i64, ptr %l2, align 8, !dbg !425
  %tobool = icmp ne i64 %1, 0, !dbg !425
  br i1 %tobool, label %if.end, label %if.then, !dbg !427

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s1.addr, align 8, !dbg !428
  store ptr %2, ptr %retval, align 8, !dbg !429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !429

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %s1.addr, align 8, !dbg !430
  %call1 = call i64 @strlen(ptr noundef %3) #9, !dbg !431
  store i64 %call1, ptr %l1, align 8, !dbg !432
  br label %while.cond, !dbg !433

while.cond:                                       ; preds = %if.end5, %if.end
  %4 = load i64, ptr %l1, align 8, !dbg !434
  %5 = load i64, ptr %l2, align 8, !dbg !435
  %cmp = icmp uge i64 %4, %5, !dbg !436
  br i1 %cmp, label %while.body, label %while.end, !dbg !433

while.body:                                       ; preds = %while.cond
  %6 = load i64, ptr %l1, align 8, !dbg !437
  %dec = add i64 %6, -1, !dbg !437
  store i64 %dec, ptr %l1, align 8, !dbg !437
  %7 = load ptr, ptr %s1.addr, align 8, !dbg !439
  %8 = load ptr, ptr %s2.addr, align 8, !dbg !441
  %9 = load i64, ptr %l2, align 8, !dbg !442
  %call2 = call i32 @memcmp(ptr noundef %7, ptr noundef %8, i64 noundef %9) #9, !dbg !443
  %tobool3 = icmp ne i32 %call2, 0, !dbg !443
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !444

if.then4:                                         ; preds = %while.body
  %10 = load ptr, ptr %s1.addr, align 8, !dbg !445
  store ptr %10, ptr %retval, align 8, !dbg !446
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !446

if.end5:                                          ; preds = %while.body
  %11 = load ptr, ptr %s1.addr, align 8, !dbg !447
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1, !dbg !447
  store ptr %incdec.ptr, ptr %s1.addr, align 8, !dbg !447
  br label %while.cond, !dbg !433, !llvm.loop !448

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !450

cleanup:                                          ; preds = %while.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %l2) #7, !dbg !451
  call void @llvm.lifetime.end.p0(i64 8, ptr %l1) #7, !dbg !451
  %12 = load ptr, ptr %retval, align 8, !dbg !451
  ret ptr %12, !dbg !451
}

; Function Attrs: noredzone nounwind
define hidden ptr @strchr(ptr noundef %s, i32 noundef %c) #0 !dbg !452 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !456, metadata !DIExpression()), !dbg !458
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !457, metadata !DIExpression()), !dbg !459
  br label %while.cond, !dbg !460

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %s.addr, align 8, !dbg !461
  %1 = load i8, ptr %0, align 1, !dbg !462
  %conv = sext i8 %1 to i32, !dbg !462
  %2 = load i32, ptr %c.addr, align 4, !dbg !463
  %conv1 = trunc i32 %2 to i8, !dbg !464
  %conv2 = sext i8 %conv1 to i32, !dbg !464
  %cmp = icmp ne i32 %conv, %conv2, !dbg !465
  br i1 %cmp, label %while.body, label %while.end, !dbg !460

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %s.addr, align 8, !dbg !466
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1, !dbg !466
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !466
  %4 = load i8, ptr %3, align 1, !dbg !468
  %conv4 = sext i8 %4 to i32, !dbg !468
  %cmp5 = icmp eq i32 %conv4, 0, !dbg !469
  br i1 %cmp5, label %if.then, label %if.end, !dbg !470

if.then:                                          ; preds = %while.body
  store ptr null, ptr %retval, align 8, !dbg !471
  br label %return, !dbg !471

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !460, !llvm.loop !472

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %s.addr, align 8, !dbg !474
  store ptr %5, ptr %retval, align 8, !dbg !475
  br label %return, !dbg !475

return:                                           ; preds = %while.end, %if.then
  %6 = load ptr, ptr %retval, align 8, !dbg !476
  ret ptr %6, !dbg !476
}

; Function Attrs: noredzone nounwind
define hidden i32 @kstrtoull(ptr noundef %s, i32 noundef %base, ptr noundef %res) #0 !dbg !477 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !481, metadata !DIExpression()), !dbg !484
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !482, metadata !DIExpression()), !dbg !485
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !483, metadata !DIExpression()), !dbg !486
  %0 = load ptr, ptr %s.addr, align 8, !dbg !487
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0, !dbg !487
  %1 = load i8, ptr %arrayidx, align 1, !dbg !487
  %conv = sext i8 %1 to i32, !dbg !487
  %cmp = icmp eq i32 %conv, 43, !dbg !489
  br i1 %cmp, label %if.then, label %if.end, !dbg !490

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !491
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1, !dbg !491
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !491
  br label %if.end, !dbg !492

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %s.addr, align 8, !dbg !493
  %4 = load i32, ptr %base.addr, align 4, !dbg !494
  %5 = load ptr, ptr %res.addr, align 8, !dbg !495
  %call = call i32 @_kstrtoull(ptr noundef %3, i32 noundef %4, ptr noundef %5) #9, !dbg !496
  ret i32 %call, !dbg !497
}

; Function Attrs: noredzone nounwind
define internal i32 @_kstrtoull(ptr noundef %s, i32 noundef %base, ptr noundef %res) #0 !dbg !498 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  %_res = alloca i64, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !500, metadata !DIExpression()), !dbg !505
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !501, metadata !DIExpression()), !dbg !506
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !502, metadata !DIExpression()), !dbg !507
  call void @llvm.lifetime.start.p0(i64 8, ptr %_res) #7, !dbg !508
  call void @llvm.dbg.declare(metadata ptr %_res, metadata !503, metadata !DIExpression()), !dbg !509
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #7, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !504, metadata !DIExpression()), !dbg !511
  %0 = load ptr, ptr %s.addr, align 8, !dbg !512
  %call = call ptr @_parse_integer_fixup_radix(ptr noundef %0, ptr noundef %base.addr) #9, !dbg !513
  store ptr %call, ptr %s.addr, align 8, !dbg !514
  %1 = load ptr, ptr %s.addr, align 8, !dbg !515
  %2 = load i32, ptr %base.addr, align 4, !dbg !516
  %call1 = call i32 @_parse_integer(ptr noundef %1, i32 noundef %2, ptr noundef %_res) #9, !dbg !517
  store i32 %call1, ptr %rv, align 4, !dbg !518
  %3 = load i32, ptr %rv, align 4, !dbg !519
  %and = and i32 %3, -2147483648, !dbg !521
  %tobool = icmp ne i32 %and, 0, !dbg !521
  br i1 %tobool, label %if.then, label %if.end, !dbg !522

if.then:                                          ; preds = %entry
  store i32 -34, ptr %retval, align 4, !dbg !523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !523

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %rv, align 4, !dbg !524
  %cmp = icmp eq i32 %4, 0, !dbg !526
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !527

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !528
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !528

if.end3:                                          ; preds = %if.end
  %5 = load i32, ptr %rv, align 4, !dbg !529
  %6 = load ptr, ptr %s.addr, align 8, !dbg !530
  %idx.ext = zext i32 %5 to i64, !dbg !530
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %idx.ext, !dbg !530
  store ptr %add.ptr, ptr %s.addr, align 8, !dbg !530
  %7 = load ptr, ptr %s.addr, align 8, !dbg !531
  %8 = load i8, ptr %7, align 1, !dbg !533
  %conv = sext i8 %8 to i32, !dbg !533
  %cmp4 = icmp eq i32 %conv, 10, !dbg !534
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !535

if.then6:                                         ; preds = %if.end3
  %9 = load ptr, ptr %s.addr, align 8, !dbg !536
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1, !dbg !536
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !536
  br label %if.end7, !dbg !537

if.end7:                                          ; preds = %if.then6, %if.end3
  %10 = load ptr, ptr %s.addr, align 8, !dbg !538
  %11 = load i8, ptr %10, align 1, !dbg !540
  %tobool8 = icmp ne i8 %11, 0, !dbg !540
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !541

if.then9:                                         ; preds = %if.end7
  store i32 -22, ptr %retval, align 4, !dbg !542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !542

if.end10:                                         ; preds = %if.end7
  %12 = load i64, ptr %_res, align 8, !dbg !543
  %13 = load ptr, ptr %res.addr, align 8, !dbg !544
  store i64 %12, ptr %13, align 8, !dbg !545
  store i32 0, ptr %retval, align 4, !dbg !546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !546

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #7, !dbg !547
  call void @llvm.lifetime.end.p0(i64 8, ptr %_res) #7, !dbg !547
  %14 = load i32, ptr %retval, align 4, !dbg !547
  ret i32 %14, !dbg !547
}

; Function Attrs: noredzone nounwind
define hidden i32 @boot_kstrtoul(ptr noundef %s, i32 noundef %base, ptr noundef %res) #0 !dbg !548 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !553, metadata !DIExpression()), !dbg !556
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !554, metadata !DIExpression()), !dbg !557
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !555, metadata !DIExpression()), !dbg !558
  %0 = load ptr, ptr %s.addr, align 8, !dbg !559
  %1 = load i32, ptr %base.addr, align 4, !dbg !561
  %2 = load ptr, ptr %res.addr, align 8, !dbg !562
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %2) #9, !dbg !563
  ret i32 %call, !dbg !564
}

; Function Attrs: noredzone nounwind
define hidden ptr @memset(ptr noundef %s, i32 noundef %c, i64 noundef %n) #0 !dbg !565 {
entry:
  %s.addr = alloca ptr, align 8
  %c.addr = alloca i32, align 4
  %n.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %ss = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !570, metadata !DIExpression()), !dbg !575
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !571, metadata !DIExpression()), !dbg !576
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !572, metadata !DIExpression()), !dbg !577
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #7, !dbg !578
  call void @llvm.dbg.declare(metadata ptr %i, metadata !573, metadata !DIExpression()), !dbg !579
  call void @llvm.lifetime.start.p0(i64 8, ptr %ss) #7, !dbg !580
  call void @llvm.dbg.declare(metadata ptr %ss, metadata !574, metadata !DIExpression()), !dbg !581
  %0 = load ptr, ptr %s.addr, align 8, !dbg !582
  store ptr %0, ptr %ss, align 8, !dbg !581
  store i32 0, ptr %i, align 4, !dbg !583
  br label %for.cond, !dbg !585

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !586
  %conv = sext i32 %1 to i64, !dbg !586
  %2 = load i64, ptr %n.addr, align 8, !dbg !588
  %cmp = icmp ult i64 %conv, %2, !dbg !589
  br i1 %cmp, label %for.body, label %for.end, !dbg !590

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %c.addr, align 4, !dbg !591
  %conv2 = trunc i32 %3 to i8, !dbg !591
  %4 = load ptr, ptr %ss, align 8, !dbg !592
  %5 = load i32, ptr %i, align 4, !dbg !593
  %idxprom = sext i32 %5 to i64, !dbg !592
  %arrayidx = getelementptr inbounds i8, ptr %4, i64 %idxprom, !dbg !592
  store i8 %conv2, ptr %arrayidx, align 1, !dbg !594
  br label %for.inc, !dbg !592

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !595
  %inc = add nsw i32 %6, 1, !dbg !595
  store i32 %inc, ptr %i, align 4, !dbg !595
  br label %for.cond, !dbg !596, !llvm.loop !597

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %s.addr, align 8, !dbg !599
  call void @llvm.lifetime.end.p0(i64 8, ptr %ss) #7, !dbg !600
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7, !dbg !600
  ret ptr %7, !dbg !601
}

; Function Attrs: noredzone nounwind
define hidden ptr @memmove(ptr noundef %dest, ptr noundef %src, i64 noundef %n) #0 !dbg !602 {
entry:
  %retval = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %d = alloca ptr, align 8
  %s = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !606, metadata !DIExpression()), !dbg !612
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !607, metadata !DIExpression()), !dbg !613
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !608, metadata !DIExpression()), !dbg !614
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #7, !dbg !615
  call void @llvm.dbg.declare(metadata ptr %d, metadata !609, metadata !DIExpression()), !dbg !616
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !617
  store ptr %0, ptr %d, align 8, !dbg !616
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #7, !dbg !618
  call void @llvm.dbg.declare(metadata ptr %s, metadata !611, metadata !DIExpression()), !dbg !619
  %1 = load ptr, ptr %src.addr, align 8, !dbg !620
  store ptr %1, ptr %s, align 8, !dbg !619
  %2 = load ptr, ptr %d, align 8, !dbg !621
  %3 = load ptr, ptr %s, align 8, !dbg !623
  %cmp = icmp ule ptr %2, %3, !dbg !624
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !625

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %d, align 8, !dbg !626
  %5 = load ptr, ptr %s, align 8, !dbg !627
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64, !dbg !628
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64, !dbg !628
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !628
  %6 = load i64, ptr %n.addr, align 8, !dbg !629
  %cmp1 = icmp uge i64 %sub.ptr.sub, %6, !dbg !630
  br i1 %cmp1, label %if.then, label %if.end, !dbg !631

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr %dest.addr, align 8, !dbg !632
  %8 = load ptr, ptr %src.addr, align 8, !dbg !633
  %9 = load i64, ptr %n.addr, align 8, !dbg !634
  %call = call ptr @____memcpy(ptr noundef %7, ptr noundef %8, i64 noundef %9) #9, !dbg !635
  store ptr %call, ptr %retval, align 8, !dbg !636
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !636

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond, !dbg !637

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load i64, ptr %n.addr, align 8, !dbg !638
  %dec = add i64 %10, -1, !dbg !638
  store i64 %dec, ptr %n.addr, align 8, !dbg !638
  %cmp2 = icmp ugt i64 %10, 0, !dbg !639
  br i1 %cmp2, label %while.body, label %while.end, !dbg !637

while.body:                                       ; preds = %while.cond
  %11 = load ptr, ptr %s, align 8, !dbg !640
  %12 = load i64, ptr %n.addr, align 8, !dbg !641
  %arrayidx = getelementptr inbounds i8, ptr %11, i64 %12, !dbg !640
  %13 = load i8, ptr %arrayidx, align 1, !dbg !640
  %14 = load ptr, ptr %d, align 8, !dbg !642
  %15 = load i64, ptr %n.addr, align 8, !dbg !643
  %arrayidx3 = getelementptr inbounds i8, ptr %14, i64 %15, !dbg !642
  store i8 %13, ptr %arrayidx3, align 1, !dbg !644
  br label %while.cond, !dbg !637, !llvm.loop !645

while.end:                                        ; preds = %while.cond
  %16 = load ptr, ptr %dest.addr, align 8, !dbg !647
  store ptr %16, ptr %retval, align 8, !dbg !648
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !648

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #7, !dbg !649
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #7, !dbg !649
  %17 = load ptr, ptr %retval, align 8, !dbg !649
  ret ptr %17, !dbg !649
}

; Function Attrs: noredzone nounwind
define internal ptr @____memcpy(ptr noundef %dest, ptr noundef %src, i64 noundef %n) #0 !dbg !650 {
entry:
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %d0 = alloca i64, align 8
  %d1 = alloca i64, align 8
  %d2 = alloca i64, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !652, metadata !DIExpression()), !dbg !658
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !653, metadata !DIExpression()), !dbg !659
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !654, metadata !DIExpression()), !dbg !660
  call void @llvm.lifetime.start.p0(i64 8, ptr %d0) #7, !dbg !661
  call void @llvm.dbg.declare(metadata ptr %d0, metadata !655, metadata !DIExpression()), !dbg !662
  call void @llvm.lifetime.start.p0(i64 8, ptr %d1) #7, !dbg !661
  call void @llvm.dbg.declare(metadata ptr %d1, metadata !656, metadata !DIExpression()), !dbg !663
  call void @llvm.lifetime.start.p0(i64 8, ptr %d2) #7, !dbg !661
  call void @llvm.dbg.declare(metadata ptr %d2, metadata !657, metadata !DIExpression()), !dbg !664
  %0 = load i64, ptr %n.addr, align 8, !dbg !665
  %shr = lshr i64 %0, 3, !dbg !666
  %1 = load i64, ptr %n.addr, align 8, !dbg !667
  %and = and i64 %1, 7, !dbg !668
  %2 = load ptr, ptr %dest.addr, align 8, !dbg !669
  %3 = load ptr, ptr %src.addr, align 8, !dbg !670
  %4 = call { i64, i64, i64 } asm sideeffect "rep ; movsq\0A\09movq $4,%rcx\0A\09rep ; movsb\0A\09", "=&{cx},=&{di},=&{si},0,imr,1,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %shr, i64 %and, ptr %2, ptr %3) #7, !dbg !671, !srcloc !672
  %asmresult = extractvalue { i64, i64, i64 } %4, 0, !dbg !671
  %asmresult1 = extractvalue { i64, i64, i64 } %4, 1, !dbg !671
  %asmresult2 = extractvalue { i64, i64, i64 } %4, 2, !dbg !671
  store i64 %asmresult, ptr %d0, align 8, !dbg !671
  store i64 %asmresult1, ptr %d1, align 8, !dbg !671
  store i64 %asmresult2, ptr %d2, align 8, !dbg !671
  %5 = load ptr, ptr %dest.addr, align 8, !dbg !673
  call void @llvm.lifetime.end.p0(i64 8, ptr %d2) #7, !dbg !674
  call void @llvm.lifetime.end.p0(i64 8, ptr %d1) #7, !dbg !674
  call void @llvm.lifetime.end.p0(i64 8, ptr %d0) #7, !dbg !674
  ret ptr %5, !dbg !675
}

; Function Attrs: noredzone nounwind
define hidden ptr @memcpy(ptr noundef %dest, ptr noundef %src, i64 noundef %n) #0 !dbg !676 {
entry:
  %retval = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !678, metadata !DIExpression()), !dbg !681
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !679, metadata !DIExpression()), !dbg !682
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !680, metadata !DIExpression()), !dbg !683
  %0 = load ptr, ptr %dest.addr, align 8, !dbg !684
  %1 = load ptr, ptr %src.addr, align 8, !dbg !686
  %cmp = icmp ugt ptr %0, %1, !dbg !687
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !688

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %dest.addr, align 8, !dbg !689
  %3 = load ptr, ptr %src.addr, align 8, !dbg !690
  %sub.ptr.lhs.cast = ptrtoint ptr %2 to i64, !dbg !691
  %sub.ptr.rhs.cast = ptrtoint ptr %3 to i64, !dbg !691
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !691
  %4 = load i64, ptr %n.addr, align 8, !dbg !692
  %cmp1 = icmp ult i64 %sub.ptr.sub, %4, !dbg !693
  br i1 %cmp1, label %if.then, label %if.end, !dbg !694

if.then:                                          ; preds = %land.lhs.true
  call void @warn(ptr noundef @.str) #9, !dbg !695
  %5 = load ptr, ptr %dest.addr, align 8, !dbg !697
  %6 = load ptr, ptr %src.addr, align 8, !dbg !698
  %7 = load i64, ptr %n.addr, align 8, !dbg !699
  %call = call ptr @memmove(ptr noundef %5, ptr noundef %6, i64 noundef %7) #9, !dbg !700
  store ptr %call, ptr %retval, align 8, !dbg !701
  br label %return, !dbg !701

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load ptr, ptr %dest.addr, align 8, !dbg !702
  %9 = load ptr, ptr %src.addr, align 8, !dbg !703
  %10 = load i64, ptr %n.addr, align 8, !dbg !704
  %call2 = call ptr @____memcpy(ptr noundef %8, ptr noundef %9, i64 noundef %10) #9, !dbg !705
  store ptr %call2, ptr %retval, align 8, !dbg !706
  br label %return, !dbg !706

return:                                           ; preds = %if.end, %if.then
  %11 = load ptr, ptr %retval, align 8, !dbg !707
  ret ptr %11, !dbg !707
}

; Function Attrs: noredzone
declare !dbg !708 hidden void @warn(ptr noundef) #5

; Function Attrs: noredzone nounwind
define internal ptr @_parse_integer_fixup_radix(ptr noundef %s, ptr noundef %base) #0 !dbg !712 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !717, metadata !DIExpression()), !dbg !719
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !718, metadata !DIExpression()), !dbg !720
  %0 = load ptr, ptr %base.addr, align 8, !dbg !721
  %1 = load i32, ptr %0, align 4, !dbg !723
  %cmp = icmp eq i32 %1, 0, !dbg !724
  br i1 %cmp, label %if.then, label %if.end14, !dbg !725

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 8, !dbg !726
  %arrayidx = getelementptr inbounds i8, ptr %2, i64 0, !dbg !726
  %3 = load i8, ptr %arrayidx, align 1, !dbg !726
  %conv = sext i8 %3 to i32, !dbg !726
  %cmp1 = icmp eq i32 %conv, 48, !dbg !729
  br i1 %cmp1, label %if.then3, label %if.else12, !dbg !730

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %s.addr, align 8, !dbg !731
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i64 1, !dbg !731
  %5 = load i8, ptr %arrayidx4, align 1, !dbg !731
  %call = call signext i8 @_tolower(i8 noundef signext %5) #9, !dbg !734
  %conv5 = sext i8 %call to i32, !dbg !734
  %cmp6 = icmp eq i32 %conv5, 120, !dbg !735
  br i1 %cmp6, label %land.lhs.true, label %if.else, !dbg !736

land.lhs.true:                                    ; preds = %if.then3
  %6 = load ptr, ptr %s.addr, align 8, !dbg !737
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i64 2, !dbg !737
  %7 = load i8, ptr %arrayidx8, align 1, !dbg !737
  %conv9 = sext i8 %7 to i32, !dbg !737
  %call10 = call i32 @isxdigit(i32 noundef %conv9) #9, !dbg !738
  %tobool = icmp ne i32 %call10, 0, !dbg !738
  br i1 %tobool, label %if.then11, label %if.else, !dbg !739

if.then11:                                        ; preds = %land.lhs.true
  %8 = load ptr, ptr %base.addr, align 8, !dbg !740
  store i32 16, ptr %8, align 4, !dbg !741
  br label %if.end, !dbg !742

if.else:                                          ; preds = %land.lhs.true, %if.then3
  %9 = load ptr, ptr %base.addr, align 8, !dbg !743
  store i32 8, ptr %9, align 4, !dbg !744
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then11
  br label %if.end13, !dbg !745

if.else12:                                        ; preds = %if.then
  %10 = load ptr, ptr %base.addr, align 8, !dbg !746
  store i32 10, ptr %10, align 4, !dbg !747
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.end
  br label %if.end14, !dbg !748

if.end14:                                         ; preds = %if.end13, %entry
  %11 = load ptr, ptr %base.addr, align 8, !dbg !749
  %12 = load i32, ptr %11, align 4, !dbg !751
  %cmp15 = icmp eq i32 %12, 16, !dbg !752
  br i1 %cmp15, label %land.lhs.true17, label %if.end29, !dbg !753

land.lhs.true17:                                  ; preds = %if.end14
  %13 = load ptr, ptr %s.addr, align 8, !dbg !754
  %arrayidx18 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !754
  %14 = load i8, ptr %arrayidx18, align 1, !dbg !754
  %conv19 = sext i8 %14 to i32, !dbg !754
  %cmp20 = icmp eq i32 %conv19, 48, !dbg !755
  br i1 %cmp20, label %land.lhs.true22, label %if.end29, !dbg !756

land.lhs.true22:                                  ; preds = %land.lhs.true17
  %15 = load ptr, ptr %s.addr, align 8, !dbg !757
  %arrayidx23 = getelementptr inbounds i8, ptr %15, i64 1, !dbg !757
  %16 = load i8, ptr %arrayidx23, align 1, !dbg !757
  %call24 = call signext i8 @_tolower(i8 noundef signext %16) #9, !dbg !758
  %conv25 = sext i8 %call24 to i32, !dbg !758
  %cmp26 = icmp eq i32 %conv25, 120, !dbg !759
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !760

if.then28:                                        ; preds = %land.lhs.true22
  %17 = load ptr, ptr %s.addr, align 8, !dbg !761
  %add.ptr = getelementptr inbounds i8, ptr %17, i64 2, !dbg !761
  store ptr %add.ptr, ptr %s.addr, align 8, !dbg !761
  br label %if.end29, !dbg !762

if.end29:                                         ; preds = %if.then28, %land.lhs.true22, %land.lhs.true17, %if.end14
  %18 = load ptr, ptr %s.addr, align 8, !dbg !763
  ret ptr %18, !dbg !764
}

; Function Attrs: noredzone nounwind
define internal i32 @_parse_integer(ptr noundef %s, i32 noundef %base, ptr noundef %p) #0 !dbg !765 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %res = alloca i64, align 8
  %rv = alloca i32, align 4
  %c = alloca i32, align 4
  %lc = alloca i32, align 4
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !769, metadata !DIExpression()), !dbg !778
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !770, metadata !DIExpression()), !dbg !779
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !771, metadata !DIExpression()), !dbg !780
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #7, !dbg !781
  call void @llvm.dbg.declare(metadata ptr %res, metadata !772, metadata !DIExpression()), !dbg !782
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #7, !dbg !783
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !773, metadata !DIExpression()), !dbg !784
  store i64 0, ptr %res, align 8, !dbg !785
  store i32 0, ptr %rv, align 4, !dbg !786
  br label %while.cond, !dbg !787

while.cond:                                       ; preds = %cleanup.cont, %entry
  br label %while.body, !dbg !787

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #7, !dbg !788
  call void @llvm.dbg.declare(metadata ptr %c, metadata !774, metadata !DIExpression()), !dbg !789
  %0 = load ptr, ptr %s.addr, align 8, !dbg !790
  %1 = load i8, ptr %0, align 1, !dbg !791
  %conv = sext i8 %1 to i32, !dbg !791
  store i32 %conv, ptr %c, align 4, !dbg !789
  call void @llvm.lifetime.start.p0(i64 4, ptr %lc) #7, !dbg !792
  call void @llvm.dbg.declare(metadata ptr %lc, metadata !776, metadata !DIExpression()), !dbg !793
  %2 = load i32, ptr %c, align 4, !dbg !794
  %or = or i32 %2, 32, !dbg !795
  store i32 %or, ptr %lc, align 4, !dbg !793
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #7, !dbg !796
  call void @llvm.dbg.declare(metadata ptr %val, metadata !777, metadata !DIExpression()), !dbg !797
  %3 = load i32, ptr %c, align 4, !dbg !798
  %cmp = icmp ule i32 48, %3, !dbg !800
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !801

land.lhs.true:                                    ; preds = %while.body
  %4 = load i32, ptr %c, align 4, !dbg !802
  %cmp2 = icmp ule i32 %4, 57, !dbg !803
  br i1 %cmp2, label %if.then, label %if.else, !dbg !804

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, ptr %c, align 4, !dbg !805
  %sub = sub i32 %5, 48, !dbg !806
  store i32 %sub, ptr %val, align 4, !dbg !807
  br label %if.end12, !dbg !808

if.else:                                          ; preds = %land.lhs.true, %while.body
  %6 = load i32, ptr %lc, align 4, !dbg !809
  %cmp4 = icmp ule i32 97, %6, !dbg !811
  br i1 %cmp4, label %land.lhs.true6, label %if.else11, !dbg !812

land.lhs.true6:                                   ; preds = %if.else
  %7 = load i32, ptr %lc, align 4, !dbg !813
  %cmp7 = icmp ule i32 %7, 102, !dbg !814
  br i1 %cmp7, label %if.then9, label %if.else11, !dbg !815

if.then9:                                         ; preds = %land.lhs.true6
  %8 = load i32, ptr %lc, align 4, !dbg !816
  %sub10 = sub i32 %8, 97, !dbg !817
  %add = add i32 %sub10, 10, !dbg !818
  store i32 %add, ptr %val, align 4, !dbg !819
  br label %if.end, !dbg !820

if.else11:                                        ; preds = %land.lhs.true6, %if.else
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !821

if.end:                                           ; preds = %if.then9
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %9 = load i32, ptr %val, align 4, !dbg !822
  %10 = load i32, ptr %base.addr, align 4, !dbg !824
  %cmp13 = icmp uge i32 %9, %10, !dbg !825
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !826

if.then15:                                        ; preds = %if.end12
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !827

if.end16:                                         ; preds = %if.end12
  %11 = load i64, ptr %res, align 8, !dbg !828
  %and = and i64 %11, -1152921504606846976, !dbg !828
  %tobool = icmp ne i64 %and, 0, !dbg !828
  %lnot = xor i1 %tobool, true, !dbg !828
  %lnot17 = xor i1 %lnot, true, !dbg !828
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !828
  %conv18 = sext i32 %lnot.ext to i64, !dbg !828
  %expval = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !828
  %tobool19 = icmp ne i64 %expval, 0, !dbg !828
  br i1 %tobool19, label %if.then20, label %if.end28, !dbg !830

if.then20:                                        ; preds = %if.end16
  %12 = load i64, ptr %res, align 8, !dbg !831
  %13 = load i32, ptr %val, align 4, !dbg !834
  %conv21 = zext i32 %13 to i64, !dbg !834
  %sub22 = sub i64 -1, %conv21, !dbg !835
  %14 = load i32, ptr %base.addr, align 4, !dbg !836
  %call = call i64 @__div_u64(i64 noundef %sub22, i32 noundef %14) #9, !dbg !837
  %cmp23 = icmp ugt i64 %12, %call, !dbg !838
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !839

if.then25:                                        ; preds = %if.then20
  %15 = load i32, ptr %rv, align 4, !dbg !840
  %or26 = or i32 %15, -2147483648, !dbg !840
  store i32 %or26, ptr %rv, align 4, !dbg !840
  br label %if.end27, !dbg !841

if.end27:                                         ; preds = %if.then25, %if.then20
  br label %if.end28, !dbg !842

if.end28:                                         ; preds = %if.end27, %if.end16
  %16 = load i64, ptr %res, align 8, !dbg !843
  %17 = load i32, ptr %base.addr, align 4, !dbg !844
  %conv29 = zext i32 %17 to i64, !dbg !844
  %mul = mul i64 %16, %conv29, !dbg !845
  %18 = load i32, ptr %val, align 4, !dbg !846
  %conv30 = zext i32 %18 to i64, !dbg !846
  %add31 = add i64 %mul, %conv30, !dbg !847
  store i64 %add31, ptr %res, align 8, !dbg !848
  %19 = load i32, ptr %rv, align 4, !dbg !849
  %inc = add i32 %19, 1, !dbg !849
  store i32 %inc, ptr %rv, align 4, !dbg !849
  %20 = load ptr, ptr %s.addr, align 8, !dbg !850
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i32 1, !dbg !850
  store ptr %incdec.ptr, ptr %s.addr, align 8, !dbg !850
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !851
  br label %cleanup, !dbg !851

cleanup:                                          ; preds = %if.end28, %if.then15, %if.else11
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #7, !dbg !851
  call void @llvm.lifetime.end.p0(i64 4, ptr %lc) #7, !dbg !851
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #7, !dbg !851
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !787, !llvm.loop !852

while.end:                                        ; preds = %cleanup
  %21 = load i64, ptr %res, align 8, !dbg !853
  %22 = load ptr, ptr %p.addr, align 8, !dbg !854
  store i64 %21, ptr %22, align 8, !dbg !855
  %23 = load i32, ptr %rv, align 4, !dbg !856
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #7, !dbg !857
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #7, !dbg !857
  ret i32 %23, !dbg !858

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint noredzone nounwind
define internal signext i8 @_tolower(i8 noundef signext %c) #4 !dbg !859 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !863, metadata !DIExpression()), !dbg !864
  %0 = load i8, ptr %c.addr, align 1, !dbg !865
  %conv = sext i8 %0 to i32, !dbg !865
  %or = or i32 %conv, 32, !dbg !866
  %conv1 = trunc i32 %or to i8, !dbg !865
  ret i8 %conv1, !dbg !867
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__div_u64(i64 noundef %dividend, i32 noundef %divisor) #4 !dbg !868 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !878, metadata !DIExpression()), !dbg !881
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !879, metadata !DIExpression()), !dbg !882
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #7, !dbg !883
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !880, metadata !DIExpression()), !dbg !884
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !885
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !886
  %call = call i64 @__div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #9, !dbg !887
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #7, !dbg !888
  ret i64 %call, !dbg !889
}

; Function Attrs: inlinehint noredzone nounwind
define internal i64 @__div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #4 !dbg !890 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  %d = alloca %union.anon, align 8
  %upper = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !895, metadata !DIExpression()), !dbg !907
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !896, metadata !DIExpression()), !dbg !908
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !897, metadata !DIExpression()), !dbg !909
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #7, !dbg !910
  call void @llvm.dbg.declare(metadata ptr %d, metadata !898, metadata !DIExpression()), !dbg !911
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !912
  store i64 %0, ptr %d, align 8, !dbg !913
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #7, !dbg !914
  call void @llvm.dbg.declare(metadata ptr %upper, metadata !906, metadata !DIExpression()), !dbg !915
  %arrayidx = getelementptr inbounds [2 x i32], ptr %d, i64 0, i64 1, !dbg !916
  %1 = load i32, ptr %arrayidx, align 4, !dbg !916
  store i32 %1, ptr %upper, align 4, !dbg !917
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %d, i64 0, i64 1, !dbg !918
  store i32 0, ptr %arrayidx1, align 4, !dbg !919
  %2 = load i32, ptr %upper, align 4, !dbg !920
  %3 = load i32, ptr %divisor.addr, align 4, !dbg !922
  %cmp = icmp uge i32 %2, %3, !dbg !923
  br i1 %cmp, label %if.then, label %if.end, !dbg !924

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %upper, align 4, !dbg !925
  %5 = load i32, ptr %divisor.addr, align 4, !dbg !927
  %div = udiv i32 %4, %5, !dbg !928
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr %d, i64 0, i64 1, !dbg !929
  store i32 %div, ptr %arrayidx2, align 4, !dbg !930
  %6 = load i32, ptr %divisor.addr, align 4, !dbg !931
  %7 = load i32, ptr %upper, align 4, !dbg !932
  %rem = urem i32 %7, %6, !dbg !932
  store i32 %rem, ptr %upper, align 4, !dbg !932
  br label %if.end, !dbg !933

if.end:                                           ; preds = %if.then, %entry
  %arrayidx3 = getelementptr inbounds [2 x i32], ptr %d, i64 0, i64 0, !dbg !934
  %8 = load ptr, ptr %remainder.addr, align 8, !dbg !935
  %9 = load i32, ptr %divisor.addr, align 4, !dbg !936
  %arrayidx4 = getelementptr inbounds [2 x i32], ptr %d, i64 0, i64 0, !dbg !937
  %10 = load i32, ptr %arrayidx4, align 8, !dbg !937
  %11 = load i32, ptr %upper, align 4, !dbg !938
  %12 = call { i32, i32 } asm "divl $2", "={ax},={dx},rm,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %9, i32 %10, i32 %11) #10, !dbg !939, !srcloc !940
  %asmresult = extractvalue { i32, i32 } %12, 0, !dbg !939
  %asmresult5 = extractvalue { i32, i32 } %12, 1, !dbg !939
  store i32 %asmresult, ptr %arrayidx3, align 8, !dbg !939
  store i32 %asmresult5, ptr %8, align 4, !dbg !939
  %13 = load i64, ptr %d, align 8, !dbg !941
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #7, !dbg !942
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #7, !dbg !942
  ret i64 %13, !dbg !943
}

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(none) }
attributes #9 = { nobuiltin noredzone "no-builtins" }
attributes #10 = { nounwind memory(read) }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/boot/compressed/string.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "890f180087dbdf6543de50fd19238e9b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 50)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/compressed/.string.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m64 -O1 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -std=gnu11 -fno-strict-aliasing -fPIE -Wundef -D DISABLE_BRANCH_PROFILING -mcmodel=small -mno-red-zone -mno-mmx -mno-sse -ffreestanding -fshort-wchar -fno-stack-protector -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D __DISABLE_EXPORTS -Wa,-mrelax-relocations=no -include ./include/linux/hidden.h -D KBUILD_MODFILE=\22arch/x86/boot/compressed/string\22 -D KBUILD_BASENAME=\22string\22 -D KBUILD_MODNAME=\22string\22 -D __KBUILD_MODNAME=kmod_string -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/compressed/string.ll arch/x86/boot/compressed/string.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !15, globals: !22, splitDebugInlining: false, nameTableKind: None)
!8 = !{!9}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 10, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !14}
!13 = !DIEnumerator(name: "false", value: 0)
!14 = !DIEnumerator(name: "true", value: 1)
!15 = !{!16, !19, !4, !20}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!22 = !{!0}
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 8, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 1, !"Code Model", i32 1}
!29 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!30 = distinct !DISubprogram(name: "memcmp", scope: !31, file: !31, line: 32, type: !32, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !43)
!31 = !DIFile(filename: "arch/x86/boot/compressed/../string.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c0a1f729eaae3a3ed35a8984c7ccee")
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !35, !35, !37}
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 61, baseType: !39)
!38 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !40, line: 72, baseType: !41)
!40 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !40, line: 16, baseType: !42)
!42 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!43 = !{!44, !45, !46, !47}
!44 = !DILocalVariable(name: "s1", arg: 1, scope: !30, file: !31, line: 32, type: !35)
!45 = !DILocalVariable(name: "s2", arg: 2, scope: !30, file: !31, line: 32, type: !35)
!46 = !DILocalVariable(name: "len", arg: 3, scope: !30, file: !31, line: 32, type: !37)
!47 = !DILocalVariable(name: "diff", scope: !30, file: !31, line: 34, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !38, line: 35, baseType: !49)
!49 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!50 = !DILocation(line: 32, column: 24, scope: !30)
!51 = !DILocation(line: 32, column: 40, scope: !30)
!52 = !DILocation(line: 32, column: 51, scope: !30)
!53 = !DILocation(line: 34, column: 2, scope: !30)
!54 = !DILocation(line: 34, column: 7, scope: !30)
!55 = !DILocation(line: 35, column: 2, scope: !30)
!56 = !{i64 174810, i64 2147688568}
!57 = !DILocation(line: 37, column: 9, scope: !30)
!58 = !{i8 0, i8 2}
!59 = !{}
!60 = !DILocation(line: 38, column: 1, scope: !30)
!61 = !DILocation(line: 37, column: 2, scope: !30)
!62 = distinct !DISubprogram(name: "bcmp", scope: !31, file: !31, line: 43, type: !32, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !63)
!63 = !{!64, !65, !66}
!64 = !DILocalVariable(name: "s1", arg: 1, scope: !62, file: !31, line: 43, type: !35)
!65 = !DILocalVariable(name: "s2", arg: 2, scope: !62, file: !31, line: 43, type: !35)
!66 = !DILocalVariable(name: "len", arg: 3, scope: !62, file: !31, line: 43, type: !37)
!67 = !DILocation(line: 43, column: 22, scope: !62)
!68 = !DILocation(line: 43, column: 38, scope: !62)
!69 = !DILocation(line: 43, column: 49, scope: !62)
!70 = !DILocation(line: 45, column: 16, scope: !62)
!71 = !DILocation(line: 45, column: 20, scope: !62)
!72 = !DILocation(line: 45, column: 24, scope: !62)
!73 = !DILocation(line: 45, column: 9, scope: !62)
!74 = !DILocation(line: 45, column: 2, scope: !62)
!75 = distinct !DISubprogram(name: "strcmp", scope: !31, file: !31, line: 48, type: !76, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !80)
!76 = !DISubroutineType(types: !77)
!77 = !{!34, !78, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!80 = !{!81, !82, !83, !84, !85}
!81 = !DILocalVariable(name: "str1", arg: 1, scope: !75, file: !31, line: 48, type: !78)
!82 = !DILocalVariable(name: "str2", arg: 2, scope: !75, file: !31, line: 48, type: !78)
!83 = !DILocalVariable(name: "s1", scope: !75, file: !31, line: 50, type: !16)
!84 = !DILocalVariable(name: "s2", scope: !75, file: !31, line: 51, type: !16)
!85 = !DILocalVariable(name: "delta", scope: !75, file: !31, line: 52, type: !34)
!86 = !DILocation(line: 48, column: 24, scope: !75)
!87 = !DILocation(line: 48, column: 42, scope: !75)
!88 = !DILocation(line: 50, column: 2, scope: !75)
!89 = !DILocation(line: 50, column: 23, scope: !75)
!90 = !DILocation(line: 50, column: 51, scope: !75)
!91 = !DILocation(line: 51, column: 2, scope: !75)
!92 = !DILocation(line: 51, column: 23, scope: !75)
!93 = !DILocation(line: 51, column: 51, scope: !75)
!94 = !DILocation(line: 52, column: 2, scope: !75)
!95 = !DILocation(line: 52, column: 6, scope: !75)
!96 = !DILocation(line: 54, column: 2, scope: !75)
!97 = !DILocation(line: 54, column: 10, scope: !75)
!98 = !DILocation(line: 54, column: 9, scope: !75)
!99 = !DILocation(line: 54, column: 13, scope: !75)
!100 = !DILocation(line: 54, column: 17, scope: !75)
!101 = !DILocation(line: 54, column: 16, scope: !75)
!102 = !DILocation(line: 55, column: 12, scope: !103)
!103 = distinct !DILexicalBlock(scope: !75, file: !31, line: 54, column: 21)
!104 = !DILocation(line: 55, column: 11, scope: !103)
!105 = !DILocation(line: 55, column: 18, scope: !103)
!106 = !DILocation(line: 55, column: 17, scope: !103)
!107 = !DILocation(line: 55, column: 15, scope: !103)
!108 = !DILocation(line: 55, column: 9, scope: !103)
!109 = !DILocation(line: 56, column: 7, scope: !110)
!110 = distinct !DILexicalBlock(scope: !103, file: !31, line: 56, column: 7)
!111 = !DILocation(line: 56, column: 7, scope: !103)
!112 = !DILocation(line: 57, column: 11, scope: !110)
!113 = !DILocation(line: 57, column: 4, scope: !110)
!114 = !DILocation(line: 58, column: 5, scope: !103)
!115 = !DILocation(line: 59, column: 5, scope: !103)
!116 = distinct !{!116, !96, !117, !118, !119}
!117 = !DILocation(line: 60, column: 2, scope: !75)
!118 = !{!"llvm.loop.mustprogress"}
!119 = !{!"llvm.loop.unroll.disable"}
!120 = !DILocation(line: 61, column: 2, scope: !75)
!121 = !DILocation(line: 62, column: 1, scope: !75)
!122 = distinct !DISubprogram(name: "strncmp", scope: !31, file: !31, line: 64, type: !123, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{!34, !78, !78, !37}
!125 = !{!126, !127, !128, !129, !130}
!126 = !DILocalVariable(name: "cs", arg: 1, scope: !122, file: !31, line: 64, type: !78)
!127 = !DILocalVariable(name: "ct", arg: 2, scope: !122, file: !31, line: 64, type: !78)
!128 = !DILocalVariable(name: "count", arg: 3, scope: !122, file: !31, line: 64, type: !37)
!129 = !DILocalVariable(name: "c1", scope: !122, file: !31, line: 66, type: !18)
!130 = !DILocalVariable(name: "c2", scope: !122, file: !31, line: 66, type: !18)
!131 = !DILocation(line: 64, column: 25, scope: !122)
!132 = !DILocation(line: 64, column: 41, scope: !122)
!133 = !DILocation(line: 64, column: 52, scope: !122)
!134 = !DILocation(line: 66, column: 2, scope: !122)
!135 = !DILocation(line: 66, column: 16, scope: !122)
!136 = !DILocation(line: 66, column: 20, scope: !122)
!137 = !DILocation(line: 68, column: 2, scope: !122)
!138 = !DILocation(line: 68, column: 9, scope: !122)
!139 = !DILocation(line: 69, column: 11, scope: !140)
!140 = distinct !DILexicalBlock(scope: !122, file: !31, line: 68, column: 16)
!141 = !DILocation(line: 69, column: 8, scope: !140)
!142 = !DILocation(line: 69, column: 6, scope: !140)
!143 = !DILocation(line: 70, column: 11, scope: !140)
!144 = !DILocation(line: 70, column: 8, scope: !140)
!145 = !DILocation(line: 70, column: 6, scope: !140)
!146 = !DILocation(line: 71, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !140, file: !31, line: 71, column: 7)
!148 = !DILocation(line: 71, column: 13, scope: !147)
!149 = !DILocation(line: 71, column: 10, scope: !147)
!150 = !DILocation(line: 71, column: 7, scope: !140)
!151 = !DILocation(line: 72, column: 11, scope: !147)
!152 = !DILocation(line: 72, column: 16, scope: !147)
!153 = !DILocation(line: 72, column: 14, scope: !147)
!154 = !DILocation(line: 72, column: 4, scope: !147)
!155 = !DILocation(line: 73, column: 8, scope: !156)
!156 = distinct !DILexicalBlock(scope: !140, file: !31, line: 73, column: 7)
!157 = !DILocation(line: 73, column: 7, scope: !140)
!158 = !DILocation(line: 74, column: 4, scope: !156)
!159 = !DILocation(line: 75, column: 8, scope: !140)
!160 = distinct !{!160, !137, !161, !118, !119}
!161 = !DILocation(line: 76, column: 2, scope: !122)
!162 = !DILocation(line: 77, column: 2, scope: !122)
!163 = !DILocation(line: 78, column: 1, scope: !122)
!164 = distinct !DISubprogram(name: "strnlen", scope: !31, file: !31, line: 80, type: !165, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{!37, !78, !37}
!167 = !{!168, !169, !170}
!168 = !DILocalVariable(name: "s", arg: 1, scope: !164, file: !31, line: 80, type: !78)
!169 = !DILocalVariable(name: "maxlen", arg: 2, scope: !164, file: !31, line: 80, type: !37)
!170 = !DILocalVariable(name: "es", scope: !164, file: !31, line: 82, type: !78)
!171 = !DILocation(line: 80, column: 28, scope: !164)
!172 = !DILocation(line: 80, column: 38, scope: !164)
!173 = !DILocation(line: 82, column: 2, scope: !164)
!174 = !DILocation(line: 82, column: 14, scope: !164)
!175 = !DILocation(line: 82, column: 19, scope: !164)
!176 = !DILocation(line: 83, column: 2, scope: !164)
!177 = !DILocation(line: 83, column: 10, scope: !164)
!178 = !DILocation(line: 83, column: 9, scope: !164)
!179 = !DILocation(line: 83, column: 13, scope: !164)
!180 = !DILocation(line: 83, column: 16, scope: !164)
!181 = !DILocation(line: 0, scope: !164)
!182 = !DILocation(line: 84, column: 5, scope: !183)
!183 = distinct !DILexicalBlock(scope: !164, file: !31, line: 83, column: 24)
!184 = !DILocation(line: 85, column: 9, scope: !183)
!185 = distinct !{!185, !176, !186, !118, !119}
!186 = !DILocation(line: 86, column: 2, scope: !164)
!187 = !DILocation(line: 88, column: 10, scope: !164)
!188 = !DILocation(line: 88, column: 15, scope: !164)
!189 = !DILocation(line: 88, column: 13, scope: !164)
!190 = !DILocation(line: 89, column: 1, scope: !164)
!191 = !DILocation(line: 88, column: 2, scope: !164)
!192 = distinct !DISubprogram(name: "atou", scope: !31, file: !31, line: 91, type: !193, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !195)
!193 = !DISubroutineType(types: !194)
!194 = !{!11, !78}
!195 = !{!196, !197}
!196 = !DILocalVariable(name: "s", arg: 1, scope: !192, file: !31, line: 91, type: !78)
!197 = !DILocalVariable(name: "i", scope: !192, file: !31, line: 93, type: !11)
!198 = !DILocation(line: 91, column: 31, scope: !192)
!199 = !DILocation(line: 93, column: 2, scope: !192)
!200 = !DILocation(line: 93, column: 15, scope: !192)
!201 = !DILocation(line: 94, column: 2, scope: !192)
!202 = !DILocation(line: 94, column: 18, scope: !192)
!203 = !DILocation(line: 94, column: 17, scope: !192)
!204 = !DILocation(line: 94, column: 9, scope: !192)
!205 = !DILocation(line: 95, column: 7, scope: !192)
!206 = !DILocation(line: 95, column: 9, scope: !192)
!207 = !DILocation(line: 95, column: 19, scope: !192)
!208 = !DILocation(line: 95, column: 17, scope: !192)
!209 = !DILocation(line: 95, column: 22, scope: !192)
!210 = !DILocation(line: 95, column: 14, scope: !192)
!211 = !DILocation(line: 95, column: 5, scope: !192)
!212 = distinct !{!212, !201, !213, !118, !119}
!213 = !DILocation(line: 95, column: 27, scope: !192)
!214 = !DILocation(line: 96, column: 9, scope: !192)
!215 = !DILocation(line: 97, column: 1, scope: !192)
!216 = !DILocation(line: 96, column: 2, scope: !192)
!217 = distinct !DISubprogram(name: "isdigit", scope: !218, file: !218, line: 5, type: !219, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !221)
!218 = !DIFile(filename: "arch/x86/boot/compressed/../ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a8b15308a5e1965a4f93156f0cfcae7c")
!219 = !DISubroutineType(types: !220)
!220 = !{!34, !34}
!221 = !{!222}
!222 = !DILocalVariable(name: "ch", arg: 1, scope: !217, file: !218, line: 5, type: !34)
!223 = !DILocation(line: 5, column: 31, scope: !217)
!224 = !DILocation(line: 7, column: 10, scope: !217)
!225 = !DILocation(line: 7, column: 13, scope: !217)
!226 = !DILocation(line: 7, column: 21, scope: !217)
!227 = !DILocation(line: 7, column: 25, scope: !217)
!228 = !DILocation(line: 7, column: 28, scope: !217)
!229 = !DILocation(line: 0, scope: !217)
!230 = !DILocation(line: 7, column: 2, scope: !217)
!231 = distinct !DISubprogram(name: "simple_strtoull", scope: !31, file: !31, line: 120, type: !232, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !235)
!232 = !DISubroutineType(types: !233)
!233 = !{!21, !78, !234, !11}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!235 = !{!236, !237, !238, !239, !240}
!236 = !DILocalVariable(name: "cp", arg: 1, scope: !231, file: !31, line: 120, type: !78)
!237 = !DILocalVariable(name: "endp", arg: 2, scope: !231, file: !31, line: 120, type: !234)
!238 = !DILocalVariable(name: "base", arg: 3, scope: !231, file: !31, line: 120, type: !11)
!239 = !DILocalVariable(name: "result", scope: !231, file: !31, line: 122, type: !21)
!240 = !DILocalVariable(name: "value", scope: !241, file: !31, line: 131, type: !11)
!241 = distinct !DILexicalBlock(scope: !231, file: !31, line: 130, column: 24)
!242 = !DILocation(line: 120, column: 48, scope: !231)
!243 = !DILocation(line: 120, column: 59, scope: !231)
!244 = !DILocation(line: 120, column: 78, scope: !231)
!245 = !DILocation(line: 122, column: 2, scope: !231)
!246 = !DILocation(line: 122, column: 21, scope: !231)
!247 = !DILocation(line: 124, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !231, file: !31, line: 124, column: 6)
!249 = !DILocation(line: 124, column: 6, scope: !231)
!250 = !DILocation(line: 125, column: 28, scope: !248)
!251 = !DILocation(line: 125, column: 10, scope: !248)
!252 = !DILocation(line: 125, column: 8, scope: !248)
!253 = !DILocation(line: 125, column: 3, scope: !248)
!254 = !DILocation(line: 127, column: 6, scope: !255)
!255 = distinct !DILexicalBlock(scope: !231, file: !31, line: 127, column: 6)
!256 = !DILocation(line: 127, column: 11, scope: !255)
!257 = !DILocation(line: 127, column: 17, scope: !255)
!258 = !DILocation(line: 127, column: 20, scope: !255)
!259 = !DILocation(line: 127, column: 26, scope: !255)
!260 = !DILocation(line: 127, column: 33, scope: !255)
!261 = !DILocation(line: 127, column: 36, scope: !255)
!262 = !DILocation(line: 127, column: 51, scope: !255)
!263 = !DILocation(line: 127, column: 6, scope: !231)
!264 = !DILocation(line: 128, column: 6, scope: !255)
!265 = !DILocation(line: 128, column: 3, scope: !255)
!266 = !DILocation(line: 130, column: 2, scope: !231)
!267 = !DILocation(line: 130, column: 19, scope: !231)
!268 = !DILocation(line: 130, column: 18, scope: !231)
!269 = !DILocation(line: 130, column: 9, scope: !231)
!270 = !DILocation(line: 131, column: 3, scope: !241)
!271 = !DILocation(line: 131, column: 16, scope: !241)
!272 = !DILocation(line: 133, column: 20, scope: !241)
!273 = !DILocation(line: 133, column: 19, scope: !241)
!274 = !DILocation(line: 133, column: 11, scope: !241)
!275 = !DILocation(line: 133, column: 27, scope: !241)
!276 = !DILocation(line: 133, column: 26, scope: !241)
!277 = !DILocation(line: 133, column: 30, scope: !241)
!278 = !DILocation(line: 133, column: 38, scope: !241)
!279 = !DILocation(line: 133, column: 51, scope: !241)
!280 = !DILocation(line: 133, column: 57, scope: !241)
!281 = !DILocation(line: 133, column: 9, scope: !241)
!282 = !DILocation(line: 134, column: 7, scope: !283)
!283 = distinct !DILexicalBlock(scope: !241, file: !31, line: 134, column: 7)
!284 = !DILocation(line: 134, column: 16, scope: !283)
!285 = !DILocation(line: 134, column: 13, scope: !283)
!286 = !DILocation(line: 134, column: 7, scope: !241)
!287 = !DILocation(line: 135, column: 4, scope: !283)
!288 = !DILocation(line: 136, column: 12, scope: !241)
!289 = !DILocation(line: 136, column: 21, scope: !241)
!290 = !DILocation(line: 136, column: 19, scope: !241)
!291 = !DILocation(line: 136, column: 28, scope: !241)
!292 = !DILocation(line: 136, column: 26, scope: !241)
!293 = !DILocation(line: 136, column: 10, scope: !241)
!294 = !DILocation(line: 137, column: 5, scope: !241)
!295 = !DILocation(line: 138, column: 2, scope: !231)
!296 = distinct !{!296, !266, !295, !118, !119}
!297 = !DILocation(line: 139, column: 6, scope: !298)
!298 = distinct !DILexicalBlock(scope: !231, file: !31, line: 139, column: 6)
!299 = !DILocation(line: 139, column: 6, scope: !231)
!300 = !DILocation(line: 140, column: 19, scope: !298)
!301 = !DILocation(line: 140, column: 4, scope: !298)
!302 = !DILocation(line: 140, column: 9, scope: !298)
!303 = !DILocation(line: 140, column: 3, scope: !298)
!304 = !DILocation(line: 142, column: 9, scope: !231)
!305 = !DILocation(line: 143, column: 1, scope: !231)
!306 = !DILocation(line: 142, column: 2, scope: !231)
!307 = distinct !DISubprogram(name: "simple_guess_base", scope: !31, file: !31, line: 102, type: !193, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !308)
!308 = !{!309}
!309 = !DILocalVariable(name: "cp", arg: 1, scope: !307, file: !31, line: 102, type: !78)
!310 = !DILocation(line: 102, column: 51, scope: !307)
!311 = !DILocation(line: 104, column: 6, scope: !312)
!312 = distinct !DILexicalBlock(scope: !307, file: !31, line: 104, column: 6)
!313 = !DILocation(line: 104, column: 12, scope: !312)
!314 = !DILocation(line: 104, column: 6, scope: !307)
!315 = !DILocation(line: 105, column: 7, scope: !316)
!316 = distinct !DILexicalBlock(scope: !317, file: !31, line: 105, column: 7)
!317 = distinct !DILexicalBlock(scope: !312, file: !31, line: 104, column: 20)
!318 = !DILocation(line: 105, column: 22, scope: !316)
!319 = !DILocation(line: 105, column: 29, scope: !316)
!320 = !DILocation(line: 105, column: 41, scope: !316)
!321 = !DILocation(line: 105, column: 32, scope: !316)
!322 = !DILocation(line: 105, column: 7, scope: !317)
!323 = !DILocation(line: 106, column: 4, scope: !316)
!324 = !DILocation(line: 108, column: 4, scope: !316)
!325 = !DILocation(line: 110, column: 3, scope: !326)
!326 = distinct !DILexicalBlock(scope: !312, file: !31, line: 109, column: 9)
!327 = !DILocation(line: 112, column: 1, scope: !307)
!328 = distinct !DISubprogram(name: "isxdigit", scope: !218, file: !218, line: 10, type: !219, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !329)
!329 = !{!330}
!330 = !DILocalVariable(name: "ch", arg: 1, scope: !328, file: !218, line: 10, type: !34)
!331 = !DILocation(line: 10, column: 32, scope: !328)
!332 = !DILocation(line: 12, column: 14, scope: !333)
!333 = distinct !DILexicalBlock(scope: !328, file: !218, line: 12, column: 6)
!334 = !DILocation(line: 12, column: 6, scope: !333)
!335 = !DILocation(line: 12, column: 6, scope: !328)
!336 = !DILocation(line: 13, column: 3, scope: !333)
!337 = !DILocation(line: 15, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !328, file: !218, line: 15, column: 6)
!339 = !DILocation(line: 15, column: 10, scope: !338)
!340 = !DILocation(line: 15, column: 18, scope: !338)
!341 = !DILocation(line: 15, column: 22, scope: !338)
!342 = !DILocation(line: 15, column: 25, scope: !338)
!343 = !DILocation(line: 15, column: 6, scope: !328)
!344 = !DILocation(line: 16, column: 3, scope: !338)
!345 = !DILocation(line: 18, column: 10, scope: !328)
!346 = !DILocation(line: 18, column: 13, scope: !328)
!347 = !DILocation(line: 18, column: 21, scope: !328)
!348 = !DILocation(line: 18, column: 25, scope: !328)
!349 = !DILocation(line: 18, column: 28, scope: !328)
!350 = !DILocation(line: 0, scope: !328)
!351 = !DILocation(line: 18, column: 2, scope: !328)
!352 = !DILocation(line: 19, column: 1, scope: !328)
!353 = distinct !DISubprogram(name: "simple_strtol", scope: !31, file: !31, line: 145, type: !354, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !357)
!354 = !DISubroutineType(types: !355)
!355 = !{!356, !78, !234, !11}
!356 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!357 = !{!358, !359, !360}
!358 = !DILocalVariable(name: "cp", arg: 1, scope: !353, file: !31, line: 145, type: !78)
!359 = !DILocalVariable(name: "endp", arg: 2, scope: !353, file: !31, line: 145, type: !234)
!360 = !DILocalVariable(name: "base", arg: 3, scope: !353, file: !31, line: 145, type: !11)
!361 = !DILocation(line: 145, column: 32, scope: !353)
!362 = !DILocation(line: 145, column: 43, scope: !353)
!363 = !DILocation(line: 145, column: 62, scope: !353)
!364 = !DILocation(line: 147, column: 7, scope: !365)
!365 = distinct !DILexicalBlock(scope: !353, file: !31, line: 147, column: 6)
!366 = !DILocation(line: 147, column: 6, scope: !365)
!367 = !DILocation(line: 147, column: 10, scope: !365)
!368 = !DILocation(line: 147, column: 6, scope: !353)
!369 = !DILocation(line: 148, column: 27, scope: !365)
!370 = !DILocation(line: 148, column: 30, scope: !365)
!371 = !DILocation(line: 148, column: 35, scope: !365)
!372 = !DILocation(line: 148, column: 41, scope: !365)
!373 = !DILocation(line: 148, column: 11, scope: !365)
!374 = !DILocation(line: 148, column: 10, scope: !365)
!375 = !DILocation(line: 148, column: 3, scope: !365)
!376 = !DILocation(line: 150, column: 25, scope: !353)
!377 = !DILocation(line: 150, column: 29, scope: !353)
!378 = !DILocation(line: 150, column: 35, scope: !353)
!379 = !DILocation(line: 150, column: 9, scope: !353)
!380 = !DILocation(line: 150, column: 2, scope: !353)
!381 = !DILocation(line: 151, column: 1, scope: !353)
!382 = distinct !DISubprogram(name: "strlen", scope: !31, file: !31, line: 157, type: !383, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !385)
!383 = !DISubroutineType(types: !384)
!384 = !{!37, !78}
!385 = !{!386, !387}
!386 = !DILocalVariable(name: "s", arg: 1, scope: !382, file: !31, line: 157, type: !78)
!387 = !DILocalVariable(name: "sc", scope: !382, file: !31, line: 159, type: !78)
!388 = !DILocation(line: 157, column: 27, scope: !382)
!389 = !DILocation(line: 159, column: 2, scope: !382)
!390 = !DILocation(line: 159, column: 14, scope: !382)
!391 = !DILocation(line: 161, column: 12, scope: !392)
!392 = distinct !DILexicalBlock(scope: !382, file: !31, line: 161, column: 2)
!393 = !DILocation(line: 161, column: 10, scope: !392)
!394 = !DILocation(line: 161, column: 7, scope: !392)
!395 = !DILocation(line: 161, column: 16, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !31, line: 161, column: 2)
!397 = !DILocation(line: 161, column: 15, scope: !396)
!398 = !DILocation(line: 161, column: 19, scope: !396)
!399 = !DILocation(line: 161, column: 2, scope: !392)
!400 = !DILocation(line: 161, column: 28, scope: !396)
!401 = !DILocation(line: 161, column: 2, scope: !396)
!402 = distinct !{!402, !399, !403, !118, !119}
!403 = !DILocation(line: 162, column: 16, scope: !392)
!404 = !DILocation(line: 163, column: 9, scope: !382)
!405 = !DILocation(line: 163, column: 14, scope: !382)
!406 = !DILocation(line: 163, column: 12, scope: !382)
!407 = !DILocation(line: 164, column: 1, scope: !382)
!408 = !DILocation(line: 163, column: 2, scope: !382)
!409 = distinct !DISubprogram(name: "strstr", scope: !31, file: !31, line: 171, type: !410, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !412)
!410 = !DISubroutineType(types: !411)
!411 = !{!19, !78, !78}
!412 = !{!413, !414, !415, !416}
!413 = !DILocalVariable(name: "s1", arg: 1, scope: !409, file: !31, line: 171, type: !78)
!414 = !DILocalVariable(name: "s2", arg: 2, scope: !409, file: !31, line: 171, type: !78)
!415 = !DILocalVariable(name: "l1", scope: !409, file: !31, line: 173, type: !37)
!416 = !DILocalVariable(name: "l2", scope: !409, file: !31, line: 173, type: !37)
!417 = !DILocation(line: 171, column: 26, scope: !409)
!418 = !DILocation(line: 171, column: 42, scope: !409)
!419 = !DILocation(line: 173, column: 2, scope: !409)
!420 = !DILocation(line: 173, column: 9, scope: !409)
!421 = !DILocation(line: 173, column: 13, scope: !409)
!422 = !DILocation(line: 175, column: 14, scope: !409)
!423 = !DILocation(line: 175, column: 7, scope: !409)
!424 = !DILocation(line: 175, column: 5, scope: !409)
!425 = !DILocation(line: 176, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !409, file: !31, line: 176, column: 6)
!427 = !DILocation(line: 176, column: 6, scope: !409)
!428 = !DILocation(line: 177, column: 18, scope: !426)
!429 = !DILocation(line: 177, column: 3, scope: !426)
!430 = !DILocation(line: 178, column: 14, scope: !409)
!431 = !DILocation(line: 178, column: 7, scope: !409)
!432 = !DILocation(line: 178, column: 5, scope: !409)
!433 = !DILocation(line: 179, column: 2, scope: !409)
!434 = !DILocation(line: 179, column: 9, scope: !409)
!435 = !DILocation(line: 179, column: 15, scope: !409)
!436 = !DILocation(line: 179, column: 12, scope: !409)
!437 = !DILocation(line: 180, column: 5, scope: !438)
!438 = distinct !DILexicalBlock(scope: !409, file: !31, line: 179, column: 19)
!439 = !DILocation(line: 181, column: 15, scope: !440)
!440 = distinct !DILexicalBlock(scope: !438, file: !31, line: 181, column: 7)
!441 = !DILocation(line: 181, column: 19, scope: !440)
!442 = !DILocation(line: 181, column: 23, scope: !440)
!443 = !DILocation(line: 181, column: 8, scope: !440)
!444 = !DILocation(line: 181, column: 7, scope: !438)
!445 = !DILocation(line: 182, column: 19, scope: !440)
!446 = !DILocation(line: 182, column: 4, scope: !440)
!447 = !DILocation(line: 183, column: 5, scope: !438)
!448 = distinct !{!448, !433, !449, !118, !119}
!449 = !DILocation(line: 184, column: 2, scope: !409)
!450 = !DILocation(line: 185, column: 2, scope: !409)
!451 = !DILocation(line: 186, column: 1, scope: !409)
!452 = distinct !DISubprogram(name: "strchr", scope: !31, file: !31, line: 193, type: !453, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !455)
!453 = !DISubroutineType(types: !454)
!454 = !{!19, !78, !34}
!455 = !{!456, !457}
!456 = !DILocalVariable(name: "s", arg: 1, scope: !452, file: !31, line: 193, type: !78)
!457 = !DILocalVariable(name: "c", arg: 2, scope: !452, file: !31, line: 193, type: !34)
!458 = !DILocation(line: 193, column: 26, scope: !452)
!459 = !DILocation(line: 193, column: 33, scope: !452)
!460 = !DILocation(line: 195, column: 2, scope: !452)
!461 = !DILocation(line: 195, column: 10, scope: !452)
!462 = !DILocation(line: 195, column: 9, scope: !452)
!463 = !DILocation(line: 195, column: 21, scope: !452)
!464 = !DILocation(line: 195, column: 15, scope: !452)
!465 = !DILocation(line: 195, column: 12, scope: !452)
!466 = !DILocation(line: 196, column: 9, scope: !467)
!467 = distinct !DILexicalBlock(scope: !452, file: !31, line: 196, column: 7)
!468 = !DILocation(line: 196, column: 7, scope: !467)
!469 = !DILocation(line: 196, column: 12, scope: !467)
!470 = !DILocation(line: 196, column: 7, scope: !452)
!471 = !DILocation(line: 197, column: 4, scope: !467)
!472 = distinct !{!472, !460, !473, !118, !119}
!473 = !DILocation(line: 197, column: 11, scope: !452)
!474 = !DILocation(line: 198, column: 17, scope: !452)
!475 = !DILocation(line: 198, column: 2, scope: !452)
!476 = !DILocation(line: 199, column: 1, scope: !452)
!477 = distinct !DISubprogram(name: "kstrtoull", scope: !31, file: !31, line: 331, type: !478, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !480)
!478 = !DISubroutineType(types: !479)
!479 = !{!34, !78, !11, !20}
!480 = !{!481, !482, !483}
!481 = !DILocalVariable(name: "s", arg: 1, scope: !477, file: !31, line: 331, type: !78)
!482 = !DILocalVariable(name: "base", arg: 2, scope: !477, file: !31, line: 331, type: !11)
!483 = !DILocalVariable(name: "res", arg: 3, scope: !477, file: !31, line: 331, type: !20)
!484 = !DILocation(line: 331, column: 27, scope: !477)
!485 = !DILocation(line: 331, column: 43, scope: !477)
!486 = !DILocation(line: 331, column: 69, scope: !477)
!487 = !DILocation(line: 333, column: 6, scope: !488)
!488 = distinct !DILexicalBlock(scope: !477, file: !31, line: 333, column: 6)
!489 = !DILocation(line: 333, column: 11, scope: !488)
!490 = !DILocation(line: 333, column: 6, scope: !477)
!491 = !DILocation(line: 334, column: 4, scope: !488)
!492 = !DILocation(line: 334, column: 3, scope: !488)
!493 = !DILocation(line: 335, column: 20, scope: !477)
!494 = !DILocation(line: 335, column: 23, scope: !477)
!495 = !DILocation(line: 335, column: 29, scope: !477)
!496 = !DILocation(line: 335, column: 9, scope: !477)
!497 = !DILocation(line: 335, column: 2, scope: !477)
!498 = distinct !DISubprogram(name: "_kstrtoull", scope: !31, file: !31, line: 295, type: !478, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !499)
!499 = !{!500, !501, !502, !503, !504}
!500 = !DILocalVariable(name: "s", arg: 1, scope: !498, file: !31, line: 295, type: !78)
!501 = !DILocalVariable(name: "base", arg: 2, scope: !498, file: !31, line: 295, type: !11)
!502 = !DILocalVariable(name: "res", arg: 3, scope: !498, file: !31, line: 295, type: !20)
!503 = !DILocalVariable(name: "_res", scope: !498, file: !31, line: 297, type: !21)
!504 = !DILocalVariable(name: "rv", scope: !498, file: !31, line: 298, type: !11)
!505 = !DILocation(line: 295, column: 35, scope: !498)
!506 = !DILocation(line: 295, column: 51, scope: !498)
!507 = !DILocation(line: 295, column: 77, scope: !498)
!508 = !DILocation(line: 297, column: 2, scope: !498)
!509 = !DILocation(line: 297, column: 21, scope: !498)
!510 = !DILocation(line: 298, column: 2, scope: !498)
!511 = !DILocation(line: 298, column: 15, scope: !498)
!512 = !DILocation(line: 300, column: 33, scope: !498)
!513 = !DILocation(line: 300, column: 6, scope: !498)
!514 = !DILocation(line: 300, column: 4, scope: !498)
!515 = !DILocation(line: 301, column: 22, scope: !498)
!516 = !DILocation(line: 301, column: 25, scope: !498)
!517 = !DILocation(line: 301, column: 7, scope: !498)
!518 = !DILocation(line: 301, column: 5, scope: !498)
!519 = !DILocation(line: 302, column: 6, scope: !520)
!520 = distinct !DILexicalBlock(scope: !498, file: !31, line: 302, column: 6)
!521 = !DILocation(line: 302, column: 9, scope: !520)
!522 = !DILocation(line: 302, column: 6, scope: !498)
!523 = !DILocation(line: 303, column: 3, scope: !520)
!524 = !DILocation(line: 304, column: 6, scope: !525)
!525 = distinct !DILexicalBlock(scope: !498, file: !31, line: 304, column: 6)
!526 = !DILocation(line: 304, column: 9, scope: !525)
!527 = !DILocation(line: 304, column: 6, scope: !498)
!528 = !DILocation(line: 305, column: 3, scope: !525)
!529 = !DILocation(line: 306, column: 7, scope: !498)
!530 = !DILocation(line: 306, column: 4, scope: !498)
!531 = !DILocation(line: 307, column: 7, scope: !532)
!532 = distinct !DILexicalBlock(scope: !498, file: !31, line: 307, column: 6)
!533 = !DILocation(line: 307, column: 6, scope: !532)
!534 = !DILocation(line: 307, column: 9, scope: !532)
!535 = !DILocation(line: 307, column: 6, scope: !498)
!536 = !DILocation(line: 308, column: 4, scope: !532)
!537 = !DILocation(line: 308, column: 3, scope: !532)
!538 = !DILocation(line: 309, column: 7, scope: !539)
!539 = distinct !DILexicalBlock(scope: !498, file: !31, line: 309, column: 6)
!540 = !DILocation(line: 309, column: 6, scope: !539)
!541 = !DILocation(line: 309, column: 6, scope: !498)
!542 = !DILocation(line: 310, column: 3, scope: !539)
!543 = !DILocation(line: 311, column: 9, scope: !498)
!544 = !DILocation(line: 311, column: 3, scope: !498)
!545 = !DILocation(line: 311, column: 7, scope: !498)
!546 = !DILocation(line: 312, column: 2, scope: !498)
!547 = !DILocation(line: 313, column: 1, scope: !498)
!548 = distinct !DISubprogram(name: "boot_kstrtoul", scope: !31, file: !31, line: 367, type: !549, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !552)
!549 = !DISubroutineType(types: !550)
!550 = !{!34, !78, !11, !551}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!552 = !{!553, !554, !555}
!553 = !DILocalVariable(name: "s", arg: 1, scope: !548, file: !31, line: 367, type: !78)
!554 = !DILocalVariable(name: "base", arg: 2, scope: !548, file: !31, line: 367, type: !11)
!555 = !DILocalVariable(name: "res", arg: 3, scope: !548, file: !31, line: 367, type: !551)
!556 = !DILocation(line: 367, column: 31, scope: !548)
!557 = !DILocation(line: 367, column: 47, scope: !548)
!558 = !DILocation(line: 367, column: 68, scope: !548)
!559 = !DILocation(line: 375, column: 20, scope: !560)
!560 = distinct !DILexicalBlock(scope: !548, file: !31, line: 373, column: 6)
!561 = !DILocation(line: 375, column: 23, scope: !560)
!562 = !DILocation(line: 375, column: 51, scope: !560)
!563 = !DILocation(line: 375, column: 10, scope: !560)
!564 = !DILocation(line: 375, column: 3, scope: !560)
!565 = distinct !DISubprogram(name: "memset", scope: !2, file: !2, line: 43, type: !566, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !569)
!566 = !DISubroutineType(types: !567)
!567 = !{!568, !568, !34, !37}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!569 = !{!570, !571, !572, !573, !574}
!570 = !DILocalVariable(name: "s", arg: 1, scope: !565, file: !2, line: 43, type: !568)
!571 = !DILocalVariable(name: "c", arg: 2, scope: !565, file: !2, line: 43, type: !34)
!572 = !DILocalVariable(name: "n", arg: 3, scope: !565, file: !2, line: 43, type: !37)
!573 = !DILocalVariable(name: "i", scope: !565, file: !2, line: 45, type: !34)
!574 = !DILocalVariable(name: "ss", scope: !565, file: !2, line: 46, type: !19)
!575 = !DILocation(line: 43, column: 20, scope: !565)
!576 = !DILocation(line: 43, column: 27, scope: !565)
!577 = !DILocation(line: 43, column: 37, scope: !565)
!578 = !DILocation(line: 45, column: 2, scope: !565)
!579 = !DILocation(line: 45, column: 6, scope: !565)
!580 = !DILocation(line: 46, column: 2, scope: !565)
!581 = !DILocation(line: 46, column: 8, scope: !565)
!582 = !DILocation(line: 46, column: 13, scope: !565)
!583 = !DILocation(line: 48, column: 9, scope: !584)
!584 = distinct !DILexicalBlock(scope: !565, file: !2, line: 48, column: 2)
!585 = !DILocation(line: 48, column: 7, scope: !584)
!586 = !DILocation(line: 48, column: 14, scope: !587)
!587 = distinct !DILexicalBlock(scope: !584, file: !2, line: 48, column: 2)
!588 = !DILocation(line: 48, column: 18, scope: !587)
!589 = !DILocation(line: 48, column: 16, scope: !587)
!590 = !DILocation(line: 48, column: 2, scope: !584)
!591 = !DILocation(line: 49, column: 11, scope: !587)
!592 = !DILocation(line: 49, column: 3, scope: !587)
!593 = !DILocation(line: 49, column: 6, scope: !587)
!594 = !DILocation(line: 49, column: 9, scope: !587)
!595 = !DILocation(line: 48, column: 22, scope: !587)
!596 = !DILocation(line: 48, column: 2, scope: !587)
!597 = distinct !{!597, !590, !598, !118, !119}
!598 = !DILocation(line: 49, column: 11, scope: !584)
!599 = !DILocation(line: 50, column: 9, scope: !565)
!600 = !DILocation(line: 51, column: 1, scope: !565)
!601 = !DILocation(line: 50, column: 2, scope: !565)
!602 = distinct !DISubprogram(name: "memmove", scope: !2, file: !2, line: 53, type: !603, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{!568, !568, !35, !37}
!605 = !{!606, !607, !608, !609, !611}
!606 = !DILocalVariable(name: "dest", arg: 1, scope: !602, file: !2, line: 53, type: !568)
!607 = !DILocalVariable(name: "src", arg: 2, scope: !602, file: !2, line: 53, type: !35)
!608 = !DILocalVariable(name: "n", arg: 3, scope: !602, file: !2, line: 53, type: !37)
!609 = !DILocalVariable(name: "d", scope: !602, file: !2, line: 55, type: !610)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!611 = !DILocalVariable(name: "s", scope: !602, file: !2, line: 56, type: !16)
!612 = !DILocation(line: 53, column: 21, scope: !602)
!613 = !DILocation(line: 53, column: 39, scope: !602)
!614 = !DILocation(line: 53, column: 51, scope: !602)
!615 = !DILocation(line: 55, column: 2, scope: !602)
!616 = !DILocation(line: 55, column: 17, scope: !602)
!617 = !DILocation(line: 55, column: 21, scope: !602)
!618 = !DILocation(line: 56, column: 2, scope: !602)
!619 = !DILocation(line: 56, column: 23, scope: !602)
!620 = !DILocation(line: 56, column: 27, scope: !602)
!621 = !DILocation(line: 58, column: 6, scope: !622)
!622 = distinct !DILexicalBlock(scope: !602, file: !2, line: 58, column: 6)
!623 = !DILocation(line: 58, column: 11, scope: !622)
!624 = !DILocation(line: 58, column: 8, scope: !622)
!625 = !DILocation(line: 58, column: 13, scope: !622)
!626 = !DILocation(line: 58, column: 16, scope: !622)
!627 = !DILocation(line: 58, column: 20, scope: !622)
!628 = !DILocation(line: 58, column: 18, scope: !622)
!629 = !DILocation(line: 58, column: 25, scope: !622)
!630 = !DILocation(line: 58, column: 22, scope: !622)
!631 = !DILocation(line: 58, column: 6, scope: !602)
!632 = !DILocation(line: 59, column: 21, scope: !622)
!633 = !DILocation(line: 59, column: 27, scope: !622)
!634 = !DILocation(line: 59, column: 32, scope: !622)
!635 = !DILocation(line: 59, column: 10, scope: !622)
!636 = !DILocation(line: 59, column: 3, scope: !622)
!637 = !DILocation(line: 61, column: 2, scope: !602)
!638 = !DILocation(line: 61, column: 10, scope: !602)
!639 = !DILocation(line: 61, column: 13, scope: !602)
!640 = !DILocation(line: 62, column: 10, scope: !602)
!641 = !DILocation(line: 62, column: 12, scope: !602)
!642 = !DILocation(line: 62, column: 3, scope: !602)
!643 = !DILocation(line: 62, column: 5, scope: !602)
!644 = !DILocation(line: 62, column: 8, scope: !602)
!645 = distinct !{!645, !637, !646, !118, !119}
!646 = !DILocation(line: 62, column: 13, scope: !602)
!647 = !DILocation(line: 64, column: 9, scope: !602)
!648 = !DILocation(line: 64, column: 2, scope: !602)
!649 = !DILocation(line: 65, column: 1, scope: !602)
!650 = distinct !DISubprogram(name: "____memcpy", scope: !2, file: !2, line: 28, type: !603, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !651)
!651 = !{!652, !653, !654, !655, !656, !657}
!652 = !DILocalVariable(name: "dest", arg: 1, scope: !650, file: !2, line: 28, type: !568)
!653 = !DILocalVariable(name: "src", arg: 2, scope: !650, file: !2, line: 28, type: !35)
!654 = !DILocalVariable(name: "n", arg: 3, scope: !650, file: !2, line: 28, type: !37)
!655 = !DILocalVariable(name: "d0", scope: !650, file: !2, line: 30, type: !356)
!656 = !DILocalVariable(name: "d1", scope: !650, file: !2, line: 30, type: !356)
!657 = !DILocalVariable(name: "d2", scope: !650, file: !2, line: 30, type: !356)
!658 = !DILocation(line: 28, column: 31, scope: !650)
!659 = !DILocation(line: 28, column: 49, scope: !650)
!660 = !DILocation(line: 28, column: 61, scope: !650)
!661 = !DILocation(line: 30, column: 2, scope: !650)
!662 = !DILocation(line: 30, column: 7, scope: !650)
!663 = !DILocation(line: 30, column: 11, scope: !650)
!664 = !DILocation(line: 30, column: 15, scope: !650)
!665 = !DILocation(line: 36, column: 10, scope: !650)
!666 = !DILocation(line: 36, column: 12, scope: !650)
!667 = !DILocation(line: 36, column: 24, scope: !650)
!668 = !DILocation(line: 36, column: 26, scope: !650)
!669 = !DILocation(line: 36, column: 37, scope: !650)
!670 = !DILocation(line: 36, column: 49, scope: !650)
!671 = !DILocation(line: 31, column: 2, scope: !650)
!672 = !{i64 866, i64 880, i64 902, i64 922}
!673 = !DILocation(line: 39, column: 9, scope: !650)
!674 = !DILocation(line: 40, column: 1, scope: !650)
!675 = !DILocation(line: 39, column: 2, scope: !650)
!676 = distinct !DISubprogram(name: "memcpy", scope: !2, file: !2, line: 68, type: !603, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !677)
!677 = !{!678, !679, !680}
!678 = !DILocalVariable(name: "dest", arg: 1, scope: !676, file: !2, line: 68, type: !568)
!679 = !DILocalVariable(name: "src", arg: 2, scope: !676, file: !2, line: 68, type: !35)
!680 = !DILocalVariable(name: "n", arg: 3, scope: !676, file: !2, line: 68, type: !37)
!681 = !DILocation(line: 68, column: 20, scope: !676)
!682 = !DILocation(line: 68, column: 38, scope: !676)
!683 = !DILocation(line: 68, column: 50, scope: !676)
!684 = !DILocation(line: 70, column: 6, scope: !685)
!685 = distinct !DILexicalBlock(scope: !676, file: !2, line: 70, column: 6)
!686 = !DILocation(line: 70, column: 13, scope: !685)
!687 = !DILocation(line: 70, column: 11, scope: !685)
!688 = !DILocation(line: 70, column: 17, scope: !685)
!689 = !DILocation(line: 70, column: 20, scope: !685)
!690 = !DILocation(line: 70, column: 27, scope: !685)
!691 = !DILocation(line: 70, column: 25, scope: !685)
!692 = !DILocation(line: 70, column: 33, scope: !685)
!693 = !DILocation(line: 70, column: 31, scope: !685)
!694 = !DILocation(line: 70, column: 6, scope: !676)
!695 = !DILocation(line: 71, column: 3, scope: !696)
!696 = distinct !DILexicalBlock(scope: !685, file: !2, line: 70, column: 36)
!697 = !DILocation(line: 72, column: 18, scope: !696)
!698 = !DILocation(line: 72, column: 24, scope: !696)
!699 = !DILocation(line: 72, column: 29, scope: !696)
!700 = !DILocation(line: 72, column: 10, scope: !696)
!701 = !DILocation(line: 72, column: 3, scope: !696)
!702 = !DILocation(line: 74, column: 20, scope: !676)
!703 = !DILocation(line: 74, column: 26, scope: !676)
!704 = !DILocation(line: 74, column: 31, scope: !676)
!705 = !DILocation(line: 74, column: 9, scope: !676)
!706 = !DILocation(line: 74, column: 2, scope: !676)
!707 = !DILocation(line: 75, column: 1, scope: !676)
!708 = !DISubprogram(name: "warn", scope: !709, file: !709, line: 7, type: !710, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!709 = !DIFile(filename: "arch/x86/boot/compressed/error.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0b20f0f8db8d544195cf5a95e28d98dc")
!710 = !DISubroutineType(types: !711)
!711 = !{null, !78}
!712 = distinct !DISubprogram(name: "_parse_integer_fixup_radix", scope: !31, file: !31, line: 232, type: !713, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !716)
!713 = !DISubroutineType(types: !714)
!714 = !{!78, !78, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!716 = !{!717, !718}
!717 = !DILocalVariable(name: "s", arg: 1, scope: !712, file: !31, line: 232, type: !78)
!718 = !DILocalVariable(name: "base", arg: 2, scope: !712, file: !31, line: 232, type: !715)
!719 = !DILocation(line: 232, column: 59, scope: !712)
!720 = !DILocation(line: 232, column: 76, scope: !712)
!721 = !DILocation(line: 234, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !712, file: !31, line: 234, column: 6)
!723 = !DILocation(line: 234, column: 6, scope: !722)
!724 = !DILocation(line: 234, column: 12, scope: !722)
!725 = !DILocation(line: 234, column: 6, scope: !712)
!726 = !DILocation(line: 235, column: 7, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !31, line: 235, column: 7)
!728 = distinct !DILexicalBlock(scope: !722, file: !31, line: 234, column: 18)
!729 = !DILocation(line: 235, column: 12, scope: !727)
!730 = !DILocation(line: 235, column: 7, scope: !728)
!731 = !DILocation(line: 236, column: 17, scope: !732)
!732 = distinct !DILexicalBlock(scope: !733, file: !31, line: 236, column: 8)
!733 = distinct !DILexicalBlock(scope: !727, file: !31, line: 235, column: 20)
!734 = !DILocation(line: 236, column: 8, scope: !732)
!735 = !DILocation(line: 236, column: 23, scope: !732)
!736 = !DILocation(line: 236, column: 30, scope: !732)
!737 = !DILocation(line: 236, column: 42, scope: !732)
!738 = !DILocation(line: 236, column: 33, scope: !732)
!739 = !DILocation(line: 236, column: 8, scope: !733)
!740 = !DILocation(line: 237, column: 6, scope: !732)
!741 = !DILocation(line: 237, column: 11, scope: !732)
!742 = !DILocation(line: 237, column: 5, scope: !732)
!743 = !DILocation(line: 239, column: 6, scope: !732)
!744 = !DILocation(line: 239, column: 11, scope: !732)
!745 = !DILocation(line: 240, column: 3, scope: !733)
!746 = !DILocation(line: 241, column: 5, scope: !727)
!747 = !DILocation(line: 241, column: 10, scope: !727)
!748 = !DILocation(line: 242, column: 2, scope: !728)
!749 = !DILocation(line: 243, column: 7, scope: !750)
!750 = distinct !DILexicalBlock(scope: !712, file: !31, line: 243, column: 6)
!751 = !DILocation(line: 243, column: 6, scope: !750)
!752 = !DILocation(line: 243, column: 12, scope: !750)
!753 = !DILocation(line: 243, column: 18, scope: !750)
!754 = !DILocation(line: 243, column: 21, scope: !750)
!755 = !DILocation(line: 243, column: 26, scope: !750)
!756 = !DILocation(line: 243, column: 33, scope: !750)
!757 = !DILocation(line: 243, column: 45, scope: !750)
!758 = !DILocation(line: 243, column: 36, scope: !750)
!759 = !DILocation(line: 243, column: 51, scope: !750)
!760 = !DILocation(line: 243, column: 6, scope: !712)
!761 = !DILocation(line: 244, column: 5, scope: !750)
!762 = !DILocation(line: 244, column: 3, scope: !750)
!763 = !DILocation(line: 245, column: 9, scope: !712)
!764 = !DILocation(line: 245, column: 2, scope: !712)
!765 = distinct !DISubprogram(name: "_parse_integer", scope: !31, file: !31, line: 256, type: !766, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !768)
!766 = !DISubroutineType(types: !767)
!767 = !{!11, !78, !11, !20}
!768 = !{!769, !770, !771, !772, !773, !774, !776, !777}
!769 = !DILocalVariable(name: "s", arg: 1, scope: !765, file: !31, line: 256, type: !78)
!770 = !DILocalVariable(name: "base", arg: 2, scope: !765, file: !31, line: 257, type: !11)
!771 = !DILocalVariable(name: "p", arg: 3, scope: !765, file: !31, line: 258, type: !20)
!772 = !DILocalVariable(name: "res", scope: !765, file: !31, line: 260, type: !21)
!773 = !DILocalVariable(name: "rv", scope: !765, file: !31, line: 261, type: !11)
!774 = !DILocalVariable(name: "c", scope: !775, file: !31, line: 266, type: !11)
!775 = distinct !DILexicalBlock(scope: !765, file: !31, line: 265, column: 12)
!776 = !DILocalVariable(name: "lc", scope: !775, file: !31, line: 267, type: !11)
!777 = !DILocalVariable(name: "val", scope: !775, file: !31, line: 268, type: !11)
!778 = !DILocation(line: 256, column: 48, scope: !765)
!779 = !DILocation(line: 257, column: 21, scope: !765)
!780 = !DILocation(line: 258, column: 28, scope: !765)
!781 = !DILocation(line: 260, column: 2, scope: !765)
!782 = !DILocation(line: 260, column: 21, scope: !765)
!783 = !DILocation(line: 261, column: 2, scope: !765)
!784 = !DILocation(line: 261, column: 15, scope: !765)
!785 = !DILocation(line: 263, column: 6, scope: !765)
!786 = !DILocation(line: 264, column: 5, scope: !765)
!787 = !DILocation(line: 265, column: 2, scope: !765)
!788 = !DILocation(line: 266, column: 3, scope: !775)
!789 = !DILocation(line: 266, column: 16, scope: !775)
!790 = !DILocation(line: 266, column: 21, scope: !775)
!791 = !DILocation(line: 266, column: 20, scope: !775)
!792 = !DILocation(line: 267, column: 3, scope: !775)
!793 = !DILocation(line: 267, column: 16, scope: !775)
!794 = !DILocation(line: 267, column: 21, scope: !775)
!795 = !DILocation(line: 267, column: 23, scope: !775)
!796 = !DILocation(line: 268, column: 3, scope: !775)
!797 = !DILocation(line: 268, column: 16, scope: !775)
!798 = !DILocation(line: 270, column: 14, scope: !799)
!799 = distinct !DILexicalBlock(scope: !775, file: !31, line: 270, column: 7)
!800 = !DILocation(line: 270, column: 11, scope: !799)
!801 = !DILocation(line: 270, column: 16, scope: !799)
!802 = !DILocation(line: 270, column: 19, scope: !799)
!803 = !DILocation(line: 270, column: 21, scope: !799)
!804 = !DILocation(line: 270, column: 7, scope: !775)
!805 = !DILocation(line: 271, column: 10, scope: !799)
!806 = !DILocation(line: 271, column: 12, scope: !799)
!807 = !DILocation(line: 271, column: 8, scope: !799)
!808 = !DILocation(line: 271, column: 4, scope: !799)
!809 = !DILocation(line: 272, column: 19, scope: !810)
!810 = distinct !DILexicalBlock(scope: !799, file: !31, line: 272, column: 12)
!811 = !DILocation(line: 272, column: 16, scope: !810)
!812 = !DILocation(line: 272, column: 22, scope: !810)
!813 = !DILocation(line: 272, column: 25, scope: !810)
!814 = !DILocation(line: 272, column: 28, scope: !810)
!815 = !DILocation(line: 272, column: 12, scope: !799)
!816 = !DILocation(line: 273, column: 10, scope: !810)
!817 = !DILocation(line: 273, column: 13, scope: !810)
!818 = !DILocation(line: 273, column: 19, scope: !810)
!819 = !DILocation(line: 273, column: 8, scope: !810)
!820 = !DILocation(line: 273, column: 4, scope: !810)
!821 = !DILocation(line: 275, column: 4, scope: !810)
!822 = !DILocation(line: 277, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !775, file: !31, line: 277, column: 7)
!824 = !DILocation(line: 277, column: 14, scope: !823)
!825 = !DILocation(line: 277, column: 11, scope: !823)
!826 = !DILocation(line: 277, column: 7, scope: !775)
!827 = !DILocation(line: 278, column: 4, scope: !823)
!828 = !DILocation(line: 283, column: 7, scope: !829)
!829 = distinct !DILexicalBlock(scope: !775, file: !31, line: 283, column: 7)
!830 = !DILocation(line: 283, column: 7, scope: !775)
!831 = !DILocation(line: 284, column: 8, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !31, line: 284, column: 8)
!833 = distinct !DILexicalBlock(scope: !829, file: !31, line: 283, column: 38)
!834 = !DILocation(line: 284, column: 37, scope: !832)
!835 = !DILocation(line: 284, column: 35, scope: !832)
!836 = !DILocation(line: 284, column: 42, scope: !832)
!837 = !DILocation(line: 284, column: 14, scope: !832)
!838 = !DILocation(line: 284, column: 12, scope: !832)
!839 = !DILocation(line: 284, column: 8, scope: !833)
!840 = !DILocation(line: 285, column: 8, scope: !832)
!841 = !DILocation(line: 285, column: 5, scope: !832)
!842 = !DILocation(line: 286, column: 3, scope: !833)
!843 = !DILocation(line: 287, column: 9, scope: !775)
!844 = !DILocation(line: 287, column: 15, scope: !775)
!845 = !DILocation(line: 287, column: 13, scope: !775)
!846 = !DILocation(line: 287, column: 22, scope: !775)
!847 = !DILocation(line: 287, column: 20, scope: !775)
!848 = !DILocation(line: 287, column: 7, scope: !775)
!849 = !DILocation(line: 288, column: 5, scope: !775)
!850 = !DILocation(line: 289, column: 4, scope: !775)
!851 = !DILocation(line: 290, column: 2, scope: !765)
!852 = distinct !{!852, !787, !851, !119}
!853 = !DILocation(line: 291, column: 7, scope: !765)
!854 = !DILocation(line: 291, column: 3, scope: !765)
!855 = !DILocation(line: 291, column: 5, scope: !765)
!856 = !DILocation(line: 292, column: 9, scope: !765)
!857 = !DILocation(line: 293, column: 1, scope: !765)
!858 = !DILocation(line: 292, column: 2, scope: !765)
!859 = distinct !DISubprogram(name: "_tolower", scope: !31, file: !31, line: 227, type: !860, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !862)
!860 = !DISubroutineType(types: !861)
!861 = !{!4, !79}
!862 = !{!863}
!863 = !DILocalVariable(name: "c", arg: 1, scope: !859, file: !31, line: 227, type: !79)
!864 = !DILocation(line: 227, column: 40, scope: !859)
!865 = !DILocation(line: 229, column: 9, scope: !859)
!866 = !DILocation(line: 229, column: 11, scope: !859)
!867 = !DILocation(line: 229, column: 2, scope: !859)
!868 = distinct !DISubprogram(name: "__div_u64", scope: !31, file: !31, line: 220, type: !869, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !877)
!869 = !DISubroutineType(types: !870)
!870 = !{!871, !871, !875}
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !872, line: 23, baseType: !873)
!872 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !874, line: 31, baseType: !21)
!874 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !872, line: 21, baseType: !876)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !874, line: 27, baseType: !11)
!877 = !{!878, !879, !880}
!878 = !DILocalVariable(name: "dividend", arg: 1, scope: !868, file: !31, line: 220, type: !871)
!879 = !DILocalVariable(name: "divisor", arg: 2, scope: !868, file: !31, line: 220, type: !875)
!880 = !DILocalVariable(name: "remainder", scope: !868, file: !31, line: 222, type: !875)
!881 = !DILocation(line: 220, column: 33, scope: !868)
!882 = !DILocation(line: 220, column: 47, scope: !868)
!883 = !DILocation(line: 222, column: 2, scope: !868)
!884 = !DILocation(line: 222, column: 6, scope: !868)
!885 = !DILocation(line: 224, column: 23, scope: !868)
!886 = !DILocation(line: 224, column: 33, scope: !868)
!887 = !DILocation(line: 224, column: 9, scope: !868)
!888 = !DILocation(line: 225, column: 1, scope: !868)
!889 = !DILocation(line: 224, column: 2, scope: !868)
!890 = distinct !DISubprogram(name: "__div_u64_rem", scope: !31, file: !31, line: 201, type: !891, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !894)
!891 = !DISubroutineType(types: !892)
!892 = !{!871, !871, !875, !893}
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!894 = !{!895, !896, !897, !898, !906}
!895 = !DILocalVariable(name: "dividend", arg: 1, scope: !890, file: !31, line: 201, type: !871)
!896 = !DILocalVariable(name: "divisor", arg: 2, scope: !890, file: !31, line: 201, type: !875)
!897 = !DILocalVariable(name: "remainder", arg: 3, scope: !890, file: !31, line: 201, type: !893)
!898 = !DILocalVariable(name: "d", scope: !890, file: !31, line: 206, type: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !31, line: 203, size: 64, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "v64", scope: !899, file: !31, line: 204, baseType: !871, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "v32", scope: !899, file: !31, line: 205, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 64, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 2)
!906 = !DILocalVariable(name: "upper", scope: !890, file: !31, line: 207, type: !875)
!907 = !DILocation(line: 201, column: 37, scope: !890)
!908 = !DILocation(line: 201, column: 51, scope: !890)
!909 = !DILocation(line: 201, column: 65, scope: !890)
!910 = !DILocation(line: 203, column: 2, scope: !890)
!911 = !DILocation(line: 206, column: 4, scope: !890)
!912 = !DILocation(line: 206, column: 10, scope: !890)
!913 = !DILocation(line: 206, column: 8, scope: !890)
!914 = !DILocation(line: 207, column: 2, scope: !890)
!915 = !DILocation(line: 207, column: 6, scope: !890)
!916 = !DILocation(line: 209, column: 10, scope: !890)
!917 = !DILocation(line: 209, column: 8, scope: !890)
!918 = !DILocation(line: 210, column: 2, scope: !890)
!919 = !DILocation(line: 210, column: 11, scope: !890)
!920 = !DILocation(line: 211, column: 6, scope: !921)
!921 = distinct !DILexicalBlock(scope: !890, file: !31, line: 211, column: 6)
!922 = !DILocation(line: 211, column: 15, scope: !921)
!923 = !DILocation(line: 211, column: 12, scope: !921)
!924 = !DILocation(line: 211, column: 6, scope: !890)
!925 = !DILocation(line: 212, column: 14, scope: !926)
!926 = distinct !DILexicalBlock(scope: !921, file: !31, line: 211, column: 24)
!927 = !DILocation(line: 212, column: 22, scope: !926)
!928 = !DILocation(line: 212, column: 20, scope: !926)
!929 = !DILocation(line: 212, column: 3, scope: !926)
!930 = !DILocation(line: 212, column: 12, scope: !926)
!931 = !DILocation(line: 213, column: 12, scope: !926)
!932 = !DILocation(line: 213, column: 9, scope: !926)
!933 = !DILocation(line: 214, column: 2, scope: !926)
!934 = !DILocation(line: 215, column: 25, scope: !890)
!935 = !DILocation(line: 215, column: 43, scope: !890)
!936 = !DILocation(line: 216, column: 9, scope: !890)
!937 = !DILocation(line: 216, column: 24, scope: !890)
!938 = !DILocation(line: 216, column: 40, scope: !890)
!939 = !DILocation(line: 215, column: 2, scope: !890)
!940 = !{i64 178062}
!941 = !DILocation(line: 217, column: 11, scope: !890)
!942 = !DILocation(line: 218, column: 1, scope: !890)
!943 = !DILocation(line: 217, column: 2, scope: !890)
