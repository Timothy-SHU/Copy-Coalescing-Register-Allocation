; ModuleID = 'arch/x86/boot/string.c'
source_filename = "arch/x86/boot/string.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%union.anon = type { i64 }

; Function Attrs: nounwind
define dso_local i32 @memcmp(ptr inreg noundef %s1, ptr inreg noundef %s2, i32 inreg noundef %len) #0 !dbg !22 {
entry:
  %s1.addr = alloca ptr, align 4
  %s2.addr = alloca ptr, align 4
  %len.addr = alloca i32, align 4
  %diff = alloca i8, align 1
  store ptr %s1, ptr %s1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !33, metadata !DIExpression()), !dbg !39
  store ptr %s2, ptr %s2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !34, metadata !DIExpression()), !dbg !40
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !35, metadata !DIExpression()), !dbg !41
  call void @llvm.lifetime.start.p0(i64 1, ptr %diff) #6, !dbg !42
  call void @llvm.dbg.declare(metadata ptr %diff, metadata !36, metadata !DIExpression()), !dbg !43
  %0 = load ptr, ptr %s1.addr, align 4, !dbg !44
  %1 = load ptr, ptr %s2.addr, align 4, !dbg !44
  %2 = load i32, ptr %len.addr, align 4, !dbg !44
  %3 = call { i8, ptr, ptr, i32 } asm "repe; cmpsb\0A\09/* output condition code nz*/\0A", "={@ccnz},={di},={si},={cx},1,2,3,~{dirflag},~{fpsr},~{flags}"(ptr %0, ptr %1, i32 %2) #7, !dbg !44, !srcloc !45
  %asmresult = extractvalue { i8, ptr, ptr, i32 } %3, 0, !dbg !44
  %asmresult1 = extractvalue { i8, ptr, ptr, i32 } %3, 1, !dbg !44
  %asmresult2 = extractvalue { i8, ptr, ptr, i32 } %3, 2, !dbg !44
  %asmresult3 = extractvalue { i8, ptr, ptr, i32 } %3, 3, !dbg !44
  %4 = icmp ult i8 %asmresult, 2, !dbg !44
  call void @llvm.assume(i1 %4), !dbg !44
  store i8 %asmresult, ptr %diff, align 1, !dbg !44
  store ptr %asmresult1, ptr %s1.addr, align 4, !dbg !44
  store ptr %asmresult2, ptr %s2.addr, align 4, !dbg !44
  store i32 %asmresult3, ptr %len.addr, align 4, !dbg !44
  %5 = load i8, ptr %diff, align 1, !dbg !46, !range !47, !noundef !48
  %tobool = trunc i8 %5 to i1, !dbg !46
  %conv = zext i1 %tobool to i32, !dbg !46
  call void @llvm.lifetime.end.p0(i64 1, ptr %diff) #6, !dbg !49
  ret i32 %conv, !dbg !50
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define dso_local i32 @bcmp(ptr inreg noundef %s1, ptr inreg noundef %s2, i32 inreg noundef %len) #0 !dbg !51 {
entry:
  %s1.addr = alloca ptr, align 4
  %s2.addr = alloca ptr, align 4
  %len.addr = alloca i32, align 4
  store ptr %s1, ptr %s1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !53, metadata !DIExpression()), !dbg !56
  store ptr %s2, ptr %s2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !54, metadata !DIExpression()), !dbg !57
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !55, metadata !DIExpression()), !dbg !58
  %0 = load ptr, ptr %s1.addr, align 4, !dbg !59
  %1 = load ptr, ptr %s2.addr, align 4, !dbg !60
  %2 = load i32, ptr %len.addr, align 4, !dbg !61
  %call = call i32 @memcmp(ptr inreg noundef %0, ptr inreg noundef %1, i32 inreg noundef %2) #8, !dbg !62
  ret i32 %call, !dbg !63
}

; Function Attrs: nounwind
define dso_local i32 @strcmp(ptr inreg noundef %str1, ptr inreg noundef %str2) #0 !dbg !64 {
entry:
  %retval = alloca i32, align 4
  %str1.addr = alloca ptr, align 4
  %str2.addr = alloca ptr, align 4
  %s1 = alloca ptr, align 4
  %s2 = alloca ptr, align 4
  %delta = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str1, ptr %str1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %str1.addr, metadata !70, metadata !DIExpression()), !dbg !75
  store ptr %str2, ptr %str2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %str2.addr, metadata !71, metadata !DIExpression()), !dbg !76
  call void @llvm.lifetime.start.p0(i64 4, ptr %s1) #6, !dbg !77
  call void @llvm.dbg.declare(metadata ptr %s1, metadata !72, metadata !DIExpression()), !dbg !78
  %0 = load ptr, ptr %str1.addr, align 4, !dbg !79
  store ptr %0, ptr %s1, align 4, !dbg !78
  call void @llvm.lifetime.start.p0(i64 4, ptr %s2) #6, !dbg !80
  call void @llvm.dbg.declare(metadata ptr %s2, metadata !73, metadata !DIExpression()), !dbg !81
  %1 = load ptr, ptr %str2.addr, align 4, !dbg !82
  store ptr %1, ptr %s2, align 4, !dbg !81
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta) #6, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !74, metadata !DIExpression()), !dbg !84
  store i32 0, ptr %delta, align 4, !dbg !84
  br label %while.cond, !dbg !85

while.cond:                                       ; preds = %if.end, %entry
  %2 = load ptr, ptr %s1, align 4, !dbg !86
  %3 = load i8, ptr %2, align 1, !dbg !87
  %conv = zext i8 %3 to i32, !dbg !87
  %tobool = icmp ne i32 %conv, 0, !dbg !87
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !88

lor.rhs:                                          ; preds = %while.cond
  %4 = load ptr, ptr %s2, align 4, !dbg !89
  %5 = load i8, ptr %4, align 1, !dbg !90
  %conv1 = zext i8 %5 to i32, !dbg !90
  %tobool2 = icmp ne i32 %conv1, 0, !dbg !88
  br label %lor.end, !dbg !88

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %6 = phi i1 [ true, %while.cond ], [ %tobool2, %lor.rhs ]
  br i1 %6, label %while.body, label %while.end, !dbg !85

while.body:                                       ; preds = %lor.end
  %7 = load ptr, ptr %s1, align 4, !dbg !91
  %8 = load i8, ptr %7, align 1, !dbg !93
  %conv3 = zext i8 %8 to i32, !dbg !93
  %9 = load ptr, ptr %s2, align 4, !dbg !94
  %10 = load i8, ptr %9, align 1, !dbg !95
  %conv4 = zext i8 %10 to i32, !dbg !95
  %sub = sub nsw i32 %conv3, %conv4, !dbg !96
  store i32 %sub, ptr %delta, align 4, !dbg !97
  %11 = load i32, ptr %delta, align 4, !dbg !98
  %tobool5 = icmp ne i32 %11, 0, !dbg !98
  br i1 %tobool5, label %if.then, label %if.end, !dbg !100

if.then:                                          ; preds = %while.body
  %12 = load i32, ptr %delta, align 4, !dbg !101
  store i32 %12, ptr %retval, align 4, !dbg !102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !102

if.end:                                           ; preds = %while.body
  %13 = load ptr, ptr %s1, align 4, !dbg !103
  %incdec.ptr = getelementptr inbounds i8, ptr %13, i32 1, !dbg !103
  store ptr %incdec.ptr, ptr %s1, align 4, !dbg !103
  %14 = load ptr, ptr %s2, align 4, !dbg !104
  %incdec.ptr6 = getelementptr inbounds i8, ptr %14, i32 1, !dbg !104
  store ptr %incdec.ptr6, ptr %s2, align 4, !dbg !104
  br label %while.cond, !dbg !85, !llvm.loop !105

while.end:                                        ; preds = %lor.end
  store i32 0, ptr %retval, align 4, !dbg !109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !109

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta) #6, !dbg !110
  call void @llvm.lifetime.end.p0(i64 4, ptr %s2) #6, !dbg !110
  call void @llvm.lifetime.end.p0(i64 4, ptr %s1) #6, !dbg !110
  %15 = load i32, ptr %retval, align 4, !dbg !110
  ret i32 %15, !dbg !110
}

; Function Attrs: nounwind
define dso_local i32 @strncmp(ptr inreg noundef %cs, ptr inreg noundef %ct, i32 inreg noundef %count) #0 !dbg !111 {
entry:
  %retval = alloca i32, align 4
  %cs.addr = alloca ptr, align 4
  %ct.addr = alloca ptr, align 4
  %count.addr = alloca i32, align 4
  %c1 = alloca i8, align 1
  %c2 = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cs, ptr %cs.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cs.addr, metadata !115, metadata !DIExpression()), !dbg !120
  store ptr %ct, ptr %ct.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ct.addr, metadata !116, metadata !DIExpression()), !dbg !121
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !117, metadata !DIExpression()), !dbg !122
  call void @llvm.lifetime.start.p0(i64 1, ptr %c1) #6, !dbg !123
  call void @llvm.dbg.declare(metadata ptr %c1, metadata !118, metadata !DIExpression()), !dbg !124
  call void @llvm.lifetime.start.p0(i64 1, ptr %c2) #6, !dbg !123
  call void @llvm.dbg.declare(metadata ptr %c2, metadata !119, metadata !DIExpression()), !dbg !125
  br label %while.cond, !dbg !126

while.cond:                                       ; preds = %if.end10, %entry
  %0 = load i32, ptr %count.addr, align 4, !dbg !127
  %tobool = icmp ne i32 %0, 0, !dbg !126
  br i1 %tobool, label %while.body, label %while.end, !dbg !126

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %cs.addr, align 4, !dbg !128
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1, !dbg !128
  store ptr %incdec.ptr, ptr %cs.addr, align 4, !dbg !128
  %2 = load i8, ptr %1, align 1, !dbg !130
  store i8 %2, ptr %c1, align 1, !dbg !131
  %3 = load ptr, ptr %ct.addr, align 4, !dbg !132
  %incdec.ptr1 = getelementptr inbounds i8, ptr %3, i32 1, !dbg !132
  store ptr %incdec.ptr1, ptr %ct.addr, align 4, !dbg !132
  %4 = load i8, ptr %3, align 1, !dbg !133
  store i8 %4, ptr %c2, align 1, !dbg !134
  %5 = load i8, ptr %c1, align 1, !dbg !135
  %conv = zext i8 %5 to i32, !dbg !135
  %6 = load i8, ptr %c2, align 1, !dbg !137
  %conv2 = zext i8 %6 to i32, !dbg !137
  %cmp = icmp ne i32 %conv, %conv2, !dbg !138
  br i1 %cmp, label %if.then, label %if.end, !dbg !139

if.then:                                          ; preds = %while.body
  %7 = load i8, ptr %c1, align 1, !dbg !140
  %conv4 = zext i8 %7 to i32, !dbg !140
  %8 = load i8, ptr %c2, align 1, !dbg !141
  %conv5 = zext i8 %8 to i32, !dbg !141
  %cmp6 = icmp slt i32 %conv4, %conv5, !dbg !142
  %9 = zext i1 %cmp6 to i64, !dbg !140
  %cond = select i1 %cmp6, i32 -1, i32 1, !dbg !140
  store i32 %cond, ptr %retval, align 4, !dbg !143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !143

if.end:                                           ; preds = %while.body
  %10 = load i8, ptr %c1, align 1, !dbg !144
  %tobool8 = icmp ne i8 %10, 0, !dbg !144
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !146

if.then9:                                         ; preds = %if.end
  br label %while.end, !dbg !147

if.end10:                                         ; preds = %if.end
  %11 = load i32, ptr %count.addr, align 4, !dbg !148
  %dec = add i32 %11, -1, !dbg !148
  store i32 %dec, ptr %count.addr, align 4, !dbg !148
  br label %while.cond, !dbg !126, !llvm.loop !149

while.end:                                        ; preds = %if.then9, %while.cond
  store i32 0, ptr %retval, align 4, !dbg !151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !151

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %c2) #6, !dbg !152
  call void @llvm.lifetime.end.p0(i64 1, ptr %c1) #6, !dbg !152
  %12 = load i32, ptr %retval, align 4, !dbg !152
  ret i32 %12, !dbg !152
}

; Function Attrs: nounwind
define dso_local i32 @strnlen(ptr inreg noundef %s, i32 inreg noundef %maxlen) #0 !dbg !153 {
entry:
  %s.addr = alloca ptr, align 4
  %maxlen.addr = alloca i32, align 4
  %es = alloca ptr, align 4
  store ptr %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !157, metadata !DIExpression()), !dbg !160
  store i32 %maxlen, ptr %maxlen.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxlen.addr, metadata !158, metadata !DIExpression()), !dbg !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %es) #6, !dbg !162
  call void @llvm.dbg.declare(metadata ptr %es, metadata !159, metadata !DIExpression()), !dbg !163
  %0 = load ptr, ptr %s.addr, align 4, !dbg !164
  store ptr %0, ptr %es, align 4, !dbg !163
  br label %while.cond, !dbg !165

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %es, align 4, !dbg !166
  %2 = load i8, ptr %1, align 1, !dbg !167
  %conv = sext i8 %2 to i32, !dbg !167
  %tobool = icmp ne i32 %conv, 0, !dbg !167
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !168

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, ptr %maxlen.addr, align 4, !dbg !169
  %tobool1 = icmp ne i32 %3, 0, !dbg !168
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ], !dbg !170
  br i1 %4, label %while.body, label %while.end, !dbg !165

while.body:                                       ; preds = %land.end
  %5 = load ptr, ptr %es, align 4, !dbg !171
  %incdec.ptr = getelementptr inbounds i8, ptr %5, i32 1, !dbg !171
  store ptr %incdec.ptr, ptr %es, align 4, !dbg !171
  %6 = load i32, ptr %maxlen.addr, align 4, !dbg !173
  %dec = add i32 %6, -1, !dbg !173
  store i32 %dec, ptr %maxlen.addr, align 4, !dbg !173
  br label %while.cond, !dbg !165, !llvm.loop !174

while.end:                                        ; preds = %land.end
  %7 = load ptr, ptr %es, align 4, !dbg !176
  %8 = load ptr, ptr %s.addr, align 4, !dbg !177
  %sub.ptr.lhs.cast = ptrtoint ptr %7 to i32, !dbg !178
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i32, !dbg !178
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !178
  call void @llvm.lifetime.end.p0(i64 4, ptr %es) #6, !dbg !179
  ret i32 %sub.ptr.sub, !dbg !180
}

; Function Attrs: nounwind
define dso_local i32 @atou(ptr inreg noundef %s) #0 !dbg !181 {
entry:
  %s.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !185, metadata !DIExpression()), !dbg !187
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !188
  call void @llvm.dbg.declare(metadata ptr %i, metadata !186, metadata !DIExpression()), !dbg !189
  store i32 0, ptr %i, align 4, !dbg !189
  br label %while.cond, !dbg !190

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %s.addr, align 4, !dbg !191
  %1 = load i8, ptr %0, align 1, !dbg !192
  %conv = sext i8 %1 to i32, !dbg !192
  %call = call i32 @isdigit(i32 inreg noundef %conv) #8, !dbg !193
  %tobool = icmp ne i32 %call, 0, !dbg !190
  br i1 %tobool, label %while.body, label %while.end, !dbg !190

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %i, align 4, !dbg !194
  %mul = mul i32 %2, 10, !dbg !195
  %3 = load ptr, ptr %s.addr, align 4, !dbg !196
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1, !dbg !196
  store ptr %incdec.ptr, ptr %s.addr, align 4, !dbg !196
  %4 = load i8, ptr %3, align 1, !dbg !197
  %conv1 = sext i8 %4 to i32, !dbg !197
  %sub = sub nsw i32 %conv1, 48, !dbg !198
  %add = add i32 %mul, %sub, !dbg !199
  store i32 %add, ptr %i, align 4, !dbg !200
  br label %while.cond, !dbg !190, !llvm.loop !201

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %i, align 4, !dbg !203
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !204
  ret i32 %5, !dbg !205
}

; Function Attrs: inlinehint nounwind
define internal i32 @isdigit(i32 inreg noundef %ch) #4 !dbg !206 {
entry:
  %ch.addr = alloca i32, align 4
  store i32 %ch, ptr %ch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !211, metadata !DIExpression()), !dbg !212
  %0 = load i32, ptr %ch.addr, align 4, !dbg !213
  %cmp = icmp sge i32 %0, 48, !dbg !214
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !215

land.rhs:                                         ; preds = %entry
  %1 = load i32, ptr %ch.addr, align 4, !dbg !216
  %cmp1 = icmp sle i32 %1, 57, !dbg !217
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !218
  %land.ext = zext i1 %2 to i32, !dbg !215
  ret i32 %land.ext, !dbg !219
}

; Function Attrs: nounwind
define dso_local i64 @simple_strtoull(ptr inreg noundef %cp, ptr inreg noundef %endp, i32 inreg noundef %base) #0 !dbg !220 {
entry:
  %cp.addr = alloca ptr, align 4
  %endp.addr = alloca ptr, align 4
  %base.addr = alloca i32, align 4
  %result = alloca i64, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cp, ptr %cp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cp.addr, metadata !226, metadata !DIExpression()), !dbg !232
  store ptr %endp, ptr %endp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %endp.addr, metadata !227, metadata !DIExpression()), !dbg !233
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !228, metadata !DIExpression()), !dbg !234
  call void @llvm.lifetime.start.p0(i64 8, ptr %result) #6, !dbg !235
  call void @llvm.dbg.declare(metadata ptr %result, metadata !229, metadata !DIExpression()), !dbg !236
  store i64 0, ptr %result, align 8, !dbg !236
  %0 = load i32, ptr %base.addr, align 4, !dbg !237
  %tobool = icmp ne i32 %0, 0, !dbg !237
  br i1 %tobool, label %if.end, label %if.then, !dbg !239

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %cp.addr, align 4, !dbg !240
  %call = call i32 @simple_guess_base(ptr inreg noundef %1) #8, !dbg !241
  store i32 %call, ptr %base.addr, align 4, !dbg !242
  br label %if.end, !dbg !243

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %base.addr, align 4, !dbg !244
  %cmp = icmp eq i32 %2, 16, !dbg !246
  br i1 %cmp, label %land.lhs.true, label %if.end9, !dbg !247

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr %cp.addr, align 4, !dbg !248
  %arrayidx = getelementptr inbounds i8, ptr %3, i32 0, !dbg !248
  %4 = load i8, ptr %arrayidx, align 1, !dbg !248
  %conv = sext i8 %4 to i32, !dbg !248
  %cmp1 = icmp eq i32 %conv, 48, !dbg !249
  br i1 %cmp1, label %land.lhs.true3, label %if.end9, !dbg !250

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %cp.addr, align 4, !dbg !251
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i32 1, !dbg !251
  %6 = load i8, ptr %arrayidx4, align 1, !dbg !251
  %conv5 = sext i8 %6 to i32, !dbg !251
  %or = or i32 %conv5, 32, !dbg !251
  %cmp6 = icmp eq i32 %or, 120, !dbg !252
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !253

if.then8:                                         ; preds = %land.lhs.true3
  %7 = load ptr, ptr %cp.addr, align 4, !dbg !254
  %add.ptr = getelementptr inbounds i8, ptr %7, i32 2, !dbg !254
  store ptr %add.ptr, ptr %cp.addr, align 4, !dbg !254
  br label %if.end9, !dbg !255

if.end9:                                          ; preds = %if.then8, %land.lhs.true3, %land.lhs.true, %if.end
  br label %while.cond, !dbg !256

while.cond:                                       ; preds = %cleanup.cont, %if.end9
  %8 = load ptr, ptr %cp.addr, align 4, !dbg !257
  %9 = load i8, ptr %8, align 1, !dbg !258
  %conv10 = sext i8 %9 to i32, !dbg !258
  %call11 = call i32 @isxdigit(i32 inreg noundef %conv10) #8, !dbg !259
  %tobool12 = icmp ne i32 %call11, 0, !dbg !256
  br i1 %tobool12, label %while.body, label %while.end, !dbg !256

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #6, !dbg !260
  call void @llvm.dbg.declare(metadata ptr %value, metadata !230, metadata !DIExpression()), !dbg !261
  %10 = load ptr, ptr %cp.addr, align 4, !dbg !262
  %11 = load i8, ptr %10, align 1, !dbg !263
  %conv13 = sext i8 %11 to i32, !dbg !263
  %call14 = call i32 @isdigit(i32 inreg noundef %conv13) #8, !dbg !264
  %tobool15 = icmp ne i32 %call14, 0, !dbg !264
  br i1 %tobool15, label %cond.true, label %cond.false, !dbg !264

cond.true:                                        ; preds = %while.body
  %12 = load ptr, ptr %cp.addr, align 4, !dbg !265
  %13 = load i8, ptr %12, align 1, !dbg !266
  %conv16 = sext i8 %13 to i32, !dbg !266
  %sub = sub nsw i32 %conv16, 48, !dbg !267
  br label %cond.end, !dbg !264

cond.false:                                       ; preds = %while.body
  %14 = load ptr, ptr %cp.addr, align 4, !dbg !268
  %15 = load i8, ptr %14, align 1, !dbg !268
  %conv17 = sext i8 %15 to i32, !dbg !268
  %or18 = or i32 %conv17, 32, !dbg !268
  %sub19 = sub nsw i32 %or18, 97, !dbg !269
  %add = add nsw i32 %sub19, 10, !dbg !270
  br label %cond.end, !dbg !264

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %add, %cond.false ], !dbg !264
  store i32 %cond, ptr %value, align 4, !dbg !271
  %16 = load i32, ptr %value, align 4, !dbg !272
  %17 = load i32, ptr %base.addr, align 4, !dbg !274
  %cmp20 = icmp uge i32 %16, %17, !dbg !275
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !276

if.then22:                                        ; preds = %cond.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !277

if.end23:                                         ; preds = %cond.end
  %18 = load i64, ptr %result, align 8, !dbg !278
  %19 = load i32, ptr %base.addr, align 4, !dbg !279
  %conv24 = zext i32 %19 to i64, !dbg !279
  %mul = mul i64 %18, %conv24, !dbg !280
  %20 = load i32, ptr %value, align 4, !dbg !281
  %conv25 = zext i32 %20 to i64, !dbg !281
  %add26 = add i64 %mul, %conv25, !dbg !282
  store i64 %add26, ptr %result, align 8, !dbg !283
  %21 = load ptr, ptr %cp.addr, align 4, !dbg !284
  %incdec.ptr = getelementptr inbounds i8, ptr %21, i32 1, !dbg !284
  store ptr %incdec.ptr, ptr %cp.addr, align 4, !dbg !284
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !285
  br label %cleanup, !dbg !285

cleanup:                                          ; preds = %if.end23, %if.then22
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #6, !dbg !285
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !256, !llvm.loop !286

while.end:                                        ; preds = %cleanup, %while.cond
  %22 = load ptr, ptr %endp.addr, align 4, !dbg !287
  %tobool27 = icmp ne ptr %22, null, !dbg !287
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !289

if.then28:                                        ; preds = %while.end
  %23 = load ptr, ptr %cp.addr, align 4, !dbg !290
  %24 = load ptr, ptr %endp.addr, align 4, !dbg !291
  store ptr %23, ptr %24, align 4, !dbg !292
  br label %if.end29, !dbg !293

if.end29:                                         ; preds = %if.then28, %while.end
  %25 = load i64, ptr %result, align 8, !dbg !294
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %result) #6, !dbg !295
  ret i64 %25, !dbg !296

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
define internal i32 @simple_guess_base(ptr inreg noundef %cp) #0 !dbg !297 {
entry:
  %retval = alloca i32, align 4
  %cp.addr = alloca ptr, align 4
  store ptr %cp, ptr %cp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cp.addr, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = load ptr, ptr %cp.addr, align 4, !dbg !301
  %arrayidx = getelementptr inbounds i8, ptr %0, i32 0, !dbg !301
  %1 = load i8, ptr %arrayidx, align 1, !dbg !301
  %conv = sext i8 %1 to i32, !dbg !301
  %cmp = icmp eq i32 %conv, 48, !dbg !303
  br i1 %cmp, label %if.then, label %if.else9, !dbg !304

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cp.addr, align 4, !dbg !305
  %arrayidx2 = getelementptr inbounds i8, ptr %2, i32 1, !dbg !305
  %3 = load i8, ptr %arrayidx2, align 1, !dbg !305
  %conv3 = sext i8 %3 to i32, !dbg !305
  %or = or i32 %conv3, 32, !dbg !305
  %cmp4 = icmp eq i32 %or, 120, !dbg !308
  br i1 %cmp4, label %land.lhs.true, label %if.else, !dbg !309

land.lhs.true:                                    ; preds = %if.then
  %4 = load ptr, ptr %cp.addr, align 4, !dbg !310
  %arrayidx6 = getelementptr inbounds i8, ptr %4, i32 2, !dbg !310
  %5 = load i8, ptr %arrayidx6, align 1, !dbg !310
  %conv7 = sext i8 %5 to i32, !dbg !310
  %call = call i32 @isxdigit(i32 inreg noundef %conv7) #8, !dbg !311
  %tobool = icmp ne i32 %call, 0, !dbg !311
  br i1 %tobool, label %if.then8, label %if.else, !dbg !312

if.then8:                                         ; preds = %land.lhs.true
  store i32 16, ptr %retval, align 4, !dbg !313
  br label %return, !dbg !313

if.else:                                          ; preds = %land.lhs.true, %if.then
  store i32 8, ptr %retval, align 4, !dbg !314
  br label %return, !dbg !314

if.else9:                                         ; preds = %entry
  store i32 10, ptr %retval, align 4, !dbg !315
  br label %return, !dbg !315

return:                                           ; preds = %if.else9, %if.else, %if.then8
  %6 = load i32, ptr %retval, align 4, !dbg !317
  ret i32 %6, !dbg !317
}

; Function Attrs: inlinehint nounwind
define internal i32 @isxdigit(i32 inreg noundef %ch) #4 !dbg !318 {
entry:
  %retval = alloca i32, align 4
  %ch.addr = alloca i32, align 4
  store i32 %ch, ptr %ch.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ch.addr, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = load i32, ptr %ch.addr, align 4, !dbg !322
  %call = call i32 @isdigit(i32 inreg noundef %0) #8, !dbg !324
  %tobool = icmp ne i32 %call, 0, !dbg !324
  br i1 %tobool, label %if.then, label %if.end, !dbg !325

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !326
  br label %return, !dbg !326

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %ch.addr, align 4, !dbg !327
  %cmp = icmp sge i32 %1, 97, !dbg !329
  br i1 %cmp, label %land.lhs.true, label %if.end3, !dbg !330

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, ptr %ch.addr, align 4, !dbg !331
  %cmp1 = icmp sle i32 %2, 102, !dbg !332
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !333

if.then2:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !334
  br label %return, !dbg !334

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %3 = load i32, ptr %ch.addr, align 4, !dbg !335
  %cmp4 = icmp sge i32 %3, 65, !dbg !336
  br i1 %cmp4, label %land.rhs, label %land.end, !dbg !337

land.rhs:                                         ; preds = %if.end3
  %4 = load i32, ptr %ch.addr, align 4, !dbg !338
  %cmp5 = icmp sle i32 %4, 70, !dbg !339
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end3
  %5 = phi i1 [ false, %if.end3 ], [ %cmp5, %land.rhs ], !dbg !340
  %land.ext = zext i1 %5 to i32, !dbg !337
  store i32 %land.ext, ptr %retval, align 4, !dbg !341
  br label %return, !dbg !341

return:                                           ; preds = %land.end, %if.then2, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !342
  ret i32 %6, !dbg !342
}

; Function Attrs: nounwind
define dso_local i32 @simple_strtol(ptr inreg noundef %cp, ptr inreg noundef %endp, i32 inreg noundef %base) #0 !dbg !343 {
entry:
  %retval = alloca i32, align 4
  %cp.addr = alloca ptr, align 4
  %endp.addr = alloca ptr, align 4
  %base.addr = alloca i32, align 4
  store ptr %cp, ptr %cp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cp.addr, metadata !348, metadata !DIExpression()), !dbg !351
  store ptr %endp, ptr %endp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %endp.addr, metadata !349, metadata !DIExpression()), !dbg !352
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !350, metadata !DIExpression()), !dbg !353
  %0 = load ptr, ptr %cp.addr, align 4, !dbg !354
  %1 = load i8, ptr %0, align 1, !dbg !356
  %conv = sext i8 %1 to i32, !dbg !356
  %cmp = icmp eq i32 %conv, 45, !dbg !357
  br i1 %cmp, label %if.then, label %if.end, !dbg !358

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %cp.addr, align 4, !dbg !359
  %add.ptr = getelementptr inbounds i8, ptr %2, i32 1, !dbg !360
  %3 = load ptr, ptr %endp.addr, align 4, !dbg !361
  %4 = load i32, ptr %base.addr, align 4, !dbg !362
  %call = call i64 @simple_strtoull(ptr inreg noundef %add.ptr, ptr inreg noundef %3, i32 inreg noundef %4) #8, !dbg !363
  %sub = sub i64 0, %call, !dbg !364
  %conv2 = trunc i64 %sub to i32, !dbg !364
  store i32 %conv2, ptr %retval, align 4, !dbg !365
  br label %return, !dbg !365

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %cp.addr, align 4, !dbg !366
  %6 = load ptr, ptr %endp.addr, align 4, !dbg !367
  %7 = load i32, ptr %base.addr, align 4, !dbg !368
  %call3 = call i64 @simple_strtoull(ptr inreg noundef %5, ptr inreg noundef %6, i32 inreg noundef %7) #8, !dbg !369
  %conv4 = trunc i64 %call3 to i32, !dbg !369
  store i32 %conv4, ptr %retval, align 4, !dbg !370
  br label %return, !dbg !370

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !371
  ret i32 %8, !dbg !371
}

; Function Attrs: nounwind
define dso_local i32 @strlen(ptr inreg noundef %s) #0 !dbg !372 {
entry:
  %s.addr = alloca ptr, align 4
  %sc = alloca ptr, align 4
  store ptr %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !376, metadata !DIExpression()), !dbg !378
  call void @llvm.lifetime.start.p0(i64 4, ptr %sc) #6, !dbg !379
  call void @llvm.dbg.declare(metadata ptr %sc, metadata !377, metadata !DIExpression()), !dbg !380
  %0 = load ptr, ptr %s.addr, align 4, !dbg !381
  store ptr %0, ptr %sc, align 4, !dbg !383
  br label %for.cond, !dbg !384

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %sc, align 4, !dbg !385
  %2 = load i8, ptr %1, align 1, !dbg !387
  %conv = sext i8 %2 to i32, !dbg !387
  %cmp = icmp ne i32 %conv, 0, !dbg !388
  br i1 %cmp, label %for.body, label %for.end, !dbg !389

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !389

for.inc:                                          ; preds = %for.body
  %3 = load ptr, ptr %sc, align 4, !dbg !390
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1, !dbg !390
  store ptr %incdec.ptr, ptr %sc, align 4, !dbg !390
  br label %for.cond, !dbg !391, !llvm.loop !392

for.end:                                          ; preds = %for.cond
  %4 = load ptr, ptr %sc, align 4, !dbg !394
  %5 = load ptr, ptr %s.addr, align 4, !dbg !395
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i32, !dbg !396
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32, !dbg !396
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !396
  call void @llvm.lifetime.end.p0(i64 4, ptr %sc) #6, !dbg !397
  ret i32 %sub.ptr.sub, !dbg !398
}

; Function Attrs: nounwind
define dso_local ptr @strstr(ptr inreg noundef %s1, ptr inreg noundef %s2) #0 !dbg !399 {
entry:
  %retval = alloca ptr, align 4
  %s1.addr = alloca ptr, align 4
  %s2.addr = alloca ptr, align 4
  %l1 = alloca i32, align 4
  %l2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s1, ptr %s1.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s1.addr, metadata !403, metadata !DIExpression()), !dbg !407
  store ptr %s2, ptr %s2.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s2.addr, metadata !404, metadata !DIExpression()), !dbg !408
  call void @llvm.lifetime.start.p0(i64 4, ptr %l1) #6, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %l1, metadata !405, metadata !DIExpression()), !dbg !410
  call void @llvm.lifetime.start.p0(i64 4, ptr %l2) #6, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %l2, metadata !406, metadata !DIExpression()), !dbg !411
  %0 = load ptr, ptr %s2.addr, align 4, !dbg !412
  %call = call i32 @strlen(ptr inreg noundef %0) #8, !dbg !413
  store i32 %call, ptr %l2, align 4, !dbg !414
  %1 = load i32, ptr %l2, align 4, !dbg !415
  %tobool = icmp ne i32 %1, 0, !dbg !415
  br i1 %tobool, label %if.end, label %if.then, !dbg !417

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s1.addr, align 4, !dbg !418
  store ptr %2, ptr %retval, align 4, !dbg !419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !419

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %s1.addr, align 4, !dbg !420
  %call1 = call i32 @strlen(ptr inreg noundef %3) #8, !dbg !421
  store i32 %call1, ptr %l1, align 4, !dbg !422
  br label %while.cond, !dbg !423

while.cond:                                       ; preds = %if.end5, %if.end
  %4 = load i32, ptr %l1, align 4, !dbg !424
  %5 = load i32, ptr %l2, align 4, !dbg !425
  %cmp = icmp uge i32 %4, %5, !dbg !426
  br i1 %cmp, label %while.body, label %while.end, !dbg !423

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %l1, align 4, !dbg !427
  %dec = add i32 %6, -1, !dbg !427
  store i32 %dec, ptr %l1, align 4, !dbg !427
  %7 = load ptr, ptr %s1.addr, align 4, !dbg !429
  %8 = load ptr, ptr %s2.addr, align 4, !dbg !431
  %9 = load i32, ptr %l2, align 4, !dbg !432
  %call2 = call i32 @memcmp(ptr inreg noundef %7, ptr inreg noundef %8, i32 inreg noundef %9) #8, !dbg !433
  %tobool3 = icmp ne i32 %call2, 0, !dbg !433
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !434

if.then4:                                         ; preds = %while.body
  %10 = load ptr, ptr %s1.addr, align 4, !dbg !435
  store ptr %10, ptr %retval, align 4, !dbg !436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !436

if.end5:                                          ; preds = %while.body
  %11 = load ptr, ptr %s1.addr, align 4, !dbg !437
  %incdec.ptr = getelementptr inbounds i8, ptr %11, i32 1, !dbg !437
  store ptr %incdec.ptr, ptr %s1.addr, align 4, !dbg !437
  br label %while.cond, !dbg !423, !llvm.loop !438

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 4, !dbg !440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !440

cleanup:                                          ; preds = %while.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %l2) #6, !dbg !441
  call void @llvm.lifetime.end.p0(i64 4, ptr %l1) #6, !dbg !441
  %12 = load ptr, ptr %retval, align 4, !dbg !441
  ret ptr %12, !dbg !441
}

; Function Attrs: nounwind
define dso_local ptr @strchr(ptr inreg noundef %s, i32 inreg noundef %c) #0 !dbg !442 {
entry:
  %retval = alloca ptr, align 4
  %s.addr = alloca ptr, align 4
  %c.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !446, metadata !DIExpression()), !dbg !448
  store i32 %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !447, metadata !DIExpression()), !dbg !449
  br label %while.cond, !dbg !450

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %s.addr, align 4, !dbg !451
  %1 = load i8, ptr %0, align 1, !dbg !452
  %conv = sext i8 %1 to i32, !dbg !452
  %2 = load i32, ptr %c.addr, align 4, !dbg !453
  %conv1 = trunc i32 %2 to i8, !dbg !454
  %conv2 = sext i8 %conv1 to i32, !dbg !454
  %cmp = icmp ne i32 %conv, %conv2, !dbg !455
  br i1 %cmp, label %while.body, label %while.end, !dbg !450

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %s.addr, align 4, !dbg !456
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1, !dbg !456
  store ptr %incdec.ptr, ptr %s.addr, align 4, !dbg !456
  %4 = load i8, ptr %3, align 1, !dbg !458
  %conv4 = sext i8 %4 to i32, !dbg !458
  %cmp5 = icmp eq i32 %conv4, 0, !dbg !459
  br i1 %cmp5, label %if.then, label %if.end, !dbg !460

if.then:                                          ; preds = %while.body
  store ptr null, ptr %retval, align 4, !dbg !461
  br label %return, !dbg !461

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !450, !llvm.loop !462

while.end:                                        ; preds = %while.cond
  %5 = load ptr, ptr %s.addr, align 4, !dbg !464
  store ptr %5, ptr %retval, align 4, !dbg !465
  br label %return, !dbg !465

return:                                           ; preds = %while.end, %if.then
  %6 = load ptr, ptr %retval, align 4, !dbg !466
  ret ptr %6, !dbg !466
}

; Function Attrs: nounwind
define dso_local i32 @kstrtoull(ptr inreg noundef %s, i32 inreg noundef %base, ptr inreg noundef %res) #0 !dbg !467 {
entry:
  %s.addr = alloca ptr, align 4
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 4
  store ptr %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !472, metadata !DIExpression()), !dbg !475
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !473, metadata !DIExpression()), !dbg !476
  store ptr %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !474, metadata !DIExpression()), !dbg !477
  %0 = load ptr, ptr %s.addr, align 4, !dbg !478
  %arrayidx = getelementptr inbounds i8, ptr %0, i32 0, !dbg !478
  %1 = load i8, ptr %arrayidx, align 1, !dbg !478
  %conv = sext i8 %1 to i32, !dbg !478
  %cmp = icmp eq i32 %conv, 43, !dbg !480
  br i1 %cmp, label %if.then, label %if.end, !dbg !481

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 4, !dbg !482
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1, !dbg !482
  store ptr %incdec.ptr, ptr %s.addr, align 4, !dbg !482
  br label %if.end, !dbg !483

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %s.addr, align 4, !dbg !484
  %4 = load i32, ptr %base.addr, align 4, !dbg !485
  %5 = load ptr, ptr %res.addr, align 4, !dbg !486
  %call = call i32 @_kstrtoull(ptr inreg noundef %3, i32 inreg noundef %4, ptr inreg noundef %5) #8, !dbg !487
  ret i32 %call, !dbg !488
}

; Function Attrs: nounwind
define internal i32 @_kstrtoull(ptr inreg noundef %s, i32 inreg noundef %base, ptr inreg noundef %res) #0 !dbg !489 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 4
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 4
  %_res = alloca i64, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !491, metadata !DIExpression()), !dbg !496
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !492, metadata !DIExpression()), !dbg !497
  store ptr %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !493, metadata !DIExpression()), !dbg !498
  call void @llvm.lifetime.start.p0(i64 8, ptr %_res) #6, !dbg !499
  call void @llvm.dbg.declare(metadata ptr %_res, metadata !494, metadata !DIExpression()), !dbg !500
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6, !dbg !501
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !495, metadata !DIExpression()), !dbg !502
  %0 = load ptr, ptr %s.addr, align 4, !dbg !503
  %call = call ptr @_parse_integer_fixup_radix(ptr inreg noundef %0, ptr inreg noundef %base.addr) #8, !dbg !504
  store ptr %call, ptr %s.addr, align 4, !dbg !505
  %1 = load ptr, ptr %s.addr, align 4, !dbg !506
  %2 = load i32, ptr %base.addr, align 4, !dbg !507
  %call1 = call i32 @_parse_integer(ptr inreg noundef %1, i32 inreg noundef %2, ptr inreg noundef %_res) #8, !dbg !508
  store i32 %call1, ptr %rv, align 4, !dbg !509
  %3 = load i32, ptr %rv, align 4, !dbg !510
  %and = and i32 %3, -2147483648, !dbg !512
  %tobool = icmp ne i32 %and, 0, !dbg !512
  br i1 %tobool, label %if.then, label %if.end, !dbg !513

if.then:                                          ; preds = %entry
  store i32 -34, ptr %retval, align 4, !dbg !514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !514

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %rv, align 4, !dbg !515
  %cmp = icmp eq i32 %4, 0, !dbg !517
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !518

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !519
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !519

if.end3:                                          ; preds = %if.end
  %5 = load i32, ptr %rv, align 4, !dbg !520
  %6 = load ptr, ptr %s.addr, align 4, !dbg !521
  %add.ptr = getelementptr inbounds i8, ptr %6, i32 %5, !dbg !521
  store ptr %add.ptr, ptr %s.addr, align 4, !dbg !521
  %7 = load ptr, ptr %s.addr, align 4, !dbg !522
  %8 = load i8, ptr %7, align 1, !dbg !524
  %conv = sext i8 %8 to i32, !dbg !524
  %cmp4 = icmp eq i32 %conv, 10, !dbg !525
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !526

if.then6:                                         ; preds = %if.end3
  %9 = load ptr, ptr %s.addr, align 4, !dbg !527
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1, !dbg !527
  store ptr %incdec.ptr, ptr %s.addr, align 4, !dbg !527
  br label %if.end7, !dbg !528

if.end7:                                          ; preds = %if.then6, %if.end3
  %10 = load ptr, ptr %s.addr, align 4, !dbg !529
  %11 = load i8, ptr %10, align 1, !dbg !531
  %tobool8 = icmp ne i8 %11, 0, !dbg !531
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !532

if.then9:                                         ; preds = %if.end7
  store i32 -22, ptr %retval, align 4, !dbg !533
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !533

if.end10:                                         ; preds = %if.end7
  %12 = load i64, ptr %_res, align 8, !dbg !534
  %13 = load ptr, ptr %res.addr, align 4, !dbg !535
  store i64 %12, ptr %13, align 4, !dbg !536
  store i32 0, ptr %retval, align 4, !dbg !537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !537

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6, !dbg !538
  call void @llvm.lifetime.end.p0(i64 8, ptr %_res) #6, !dbg !538
  %14 = load i32, ptr %retval, align 4, !dbg !538
  ret i32 %14, !dbg !538
}

; Function Attrs: nounwind
define dso_local i32 @boot_kstrtoul(ptr inreg noundef %s, i32 inreg noundef %base, ptr inreg noundef %res) #0 !dbg !539 {
entry:
  %s.addr = alloca ptr, align 4
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 4
  store ptr %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !544, metadata !DIExpression()), !dbg !547
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !545, metadata !DIExpression()), !dbg !548
  store ptr %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !546, metadata !DIExpression()), !dbg !549
  %0 = load ptr, ptr %s.addr, align 4, !dbg !550
  %1 = load i32, ptr %base.addr, align 4, !dbg !552
  %2 = load ptr, ptr %res.addr, align 4, !dbg !553
  %call = call i32 @_kstrtoul(ptr inreg noundef %0, i32 inreg noundef %1, ptr inreg noundef %2) #8, !dbg !554
  ret i32 %call, !dbg !555
}

; Function Attrs: nounwind
define internal i32 @_kstrtoul(ptr inreg noundef %s, i32 inreg noundef %base, ptr inreg noundef %res) #0 !dbg !556 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca ptr, align 4
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 4
  %tmp = alloca i64, align 8
  %rv = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !558, metadata !DIExpression()), !dbg !563
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !559, metadata !DIExpression()), !dbg !564
  store ptr %res, ptr %res.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !560, metadata !DIExpression()), !dbg !565
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6, !dbg !566
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !561, metadata !DIExpression()), !dbg !567
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6, !dbg !568
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !562, metadata !DIExpression()), !dbg !569
  %0 = load ptr, ptr %s.addr, align 4, !dbg !570
  %1 = load i32, ptr %base.addr, align 4, !dbg !571
  %call = call i32 @kstrtoull(ptr inreg noundef %0, i32 inreg noundef %1, ptr inreg noundef %tmp) #8, !dbg !572
  store i32 %call, ptr %rv, align 4, !dbg !573
  %2 = load i32, ptr %rv, align 4, !dbg !574
  %cmp = icmp slt i32 %2, 0, !dbg !576
  br i1 %cmp, label %if.then, label %if.end, !dbg !577

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %rv, align 4, !dbg !578
  store i32 %3, ptr %retval, align 4, !dbg !579
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !579

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %tmp, align 8, !dbg !580
  %5 = load i64, ptr %tmp, align 8, !dbg !582
  %conv = trunc i64 %5 to i32, !dbg !583
  %conv1 = zext i32 %conv to i64, !dbg !583
  %cmp2 = icmp ne i64 %4, %conv1, !dbg !584
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !585

if.then4:                                         ; preds = %if.end
  store i32 -34, ptr %retval, align 4, !dbg !586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !586

if.end5:                                          ; preds = %if.end
  %6 = load i64, ptr %tmp, align 8, !dbg !587
  %conv6 = trunc i64 %6 to i32, !dbg !587
  %7 = load ptr, ptr %res.addr, align 4, !dbg !588
  store i32 %conv6, ptr %7, align 4, !dbg !589
  store i32 0, ptr %retval, align 4, !dbg !590
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !590

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6, !dbg !591
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6, !dbg !591
  %8 = load i32, ptr %retval, align 4, !dbg !591
  ret i32 %8, !dbg !591
}

; Function Attrs: nounwind
define internal ptr @_parse_integer_fixup_radix(ptr inreg noundef %s, ptr inreg noundef %base) #0 !dbg !592 {
entry:
  %s.addr = alloca ptr, align 4
  %base.addr = alloca ptr, align 4
  store ptr %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !597, metadata !DIExpression()), !dbg !599
  store ptr %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !598, metadata !DIExpression()), !dbg !600
  %0 = load ptr, ptr %base.addr, align 4, !dbg !601
  %1 = load i32, ptr %0, align 4, !dbg !603
  %cmp = icmp eq i32 %1, 0, !dbg !604
  br i1 %cmp, label %if.then, label %if.end14, !dbg !605

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %s.addr, align 4, !dbg !606
  %arrayidx = getelementptr inbounds i8, ptr %2, i32 0, !dbg !606
  %3 = load i8, ptr %arrayidx, align 1, !dbg !606
  %conv = sext i8 %3 to i32, !dbg !606
  %cmp1 = icmp eq i32 %conv, 48, !dbg !609
  br i1 %cmp1, label %if.then3, label %if.else12, !dbg !610

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr %s.addr, align 4, !dbg !611
  %arrayidx4 = getelementptr inbounds i8, ptr %4, i32 1, !dbg !611
  %5 = load i8, ptr %arrayidx4, align 1, !dbg !611
  %call = call signext i8 @_tolower(i8 inreg noundef signext %5) #8, !dbg !614
  %conv5 = sext i8 %call to i32, !dbg !614
  %cmp6 = icmp eq i32 %conv5, 120, !dbg !615
  br i1 %cmp6, label %land.lhs.true, label %if.else, !dbg !616

land.lhs.true:                                    ; preds = %if.then3
  %6 = load ptr, ptr %s.addr, align 4, !dbg !617
  %arrayidx8 = getelementptr inbounds i8, ptr %6, i32 2, !dbg !617
  %7 = load i8, ptr %arrayidx8, align 1, !dbg !617
  %conv9 = sext i8 %7 to i32, !dbg !617
  %call10 = call i32 @isxdigit(i32 inreg noundef %conv9) #8, !dbg !618
  %tobool = icmp ne i32 %call10, 0, !dbg !618
  br i1 %tobool, label %if.then11, label %if.else, !dbg !619

if.then11:                                        ; preds = %land.lhs.true
  %8 = load ptr, ptr %base.addr, align 4, !dbg !620
  store i32 16, ptr %8, align 4, !dbg !621
  br label %if.end, !dbg !622

if.else:                                          ; preds = %land.lhs.true, %if.then3
  %9 = load ptr, ptr %base.addr, align 4, !dbg !623
  store i32 8, ptr %9, align 4, !dbg !624
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then11
  br label %if.end13, !dbg !625

if.else12:                                        ; preds = %if.then
  %10 = load ptr, ptr %base.addr, align 4, !dbg !626
  store i32 10, ptr %10, align 4, !dbg !627
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.end
  br label %if.end14, !dbg !628

if.end14:                                         ; preds = %if.end13, %entry
  %11 = load ptr, ptr %base.addr, align 4, !dbg !629
  %12 = load i32, ptr %11, align 4, !dbg !631
  %cmp15 = icmp eq i32 %12, 16, !dbg !632
  br i1 %cmp15, label %land.lhs.true17, label %if.end29, !dbg !633

land.lhs.true17:                                  ; preds = %if.end14
  %13 = load ptr, ptr %s.addr, align 4, !dbg !634
  %arrayidx18 = getelementptr inbounds i8, ptr %13, i32 0, !dbg !634
  %14 = load i8, ptr %arrayidx18, align 1, !dbg !634
  %conv19 = sext i8 %14 to i32, !dbg !634
  %cmp20 = icmp eq i32 %conv19, 48, !dbg !635
  br i1 %cmp20, label %land.lhs.true22, label %if.end29, !dbg !636

land.lhs.true22:                                  ; preds = %land.lhs.true17
  %15 = load ptr, ptr %s.addr, align 4, !dbg !637
  %arrayidx23 = getelementptr inbounds i8, ptr %15, i32 1, !dbg !637
  %16 = load i8, ptr %arrayidx23, align 1, !dbg !637
  %call24 = call signext i8 @_tolower(i8 inreg noundef signext %16) #8, !dbg !638
  %conv25 = sext i8 %call24 to i32, !dbg !638
  %cmp26 = icmp eq i32 %conv25, 120, !dbg !639
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !640

if.then28:                                        ; preds = %land.lhs.true22
  %17 = load ptr, ptr %s.addr, align 4, !dbg !641
  %add.ptr = getelementptr inbounds i8, ptr %17, i32 2, !dbg !641
  store ptr %add.ptr, ptr %s.addr, align 4, !dbg !641
  br label %if.end29, !dbg !642

if.end29:                                         ; preds = %if.then28, %land.lhs.true22, %land.lhs.true17, %if.end14
  %18 = load ptr, ptr %s.addr, align 4, !dbg !643
  ret ptr %18, !dbg !644
}

; Function Attrs: nounwind
define internal i32 @_parse_integer(ptr inreg noundef %s, i32 inreg noundef %base, ptr inreg noundef %p) #0 !dbg !645 {
entry:
  %s.addr = alloca ptr, align 4
  %base.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 4
  %res = alloca i64, align 8
  %rv = alloca i32, align 4
  %c = alloca i32, align 4
  %lc = alloca i32, align 4
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !649, metadata !DIExpression()), !dbg !658
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !650, metadata !DIExpression()), !dbg !659
  store ptr %p, ptr %p.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !651, metadata !DIExpression()), !dbg !660
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #6, !dbg !661
  call void @llvm.dbg.declare(metadata ptr %res, metadata !652, metadata !DIExpression()), !dbg !662
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #6, !dbg !663
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !653, metadata !DIExpression()), !dbg !664
  store i64 0, ptr %res, align 8, !dbg !665
  store i32 0, ptr %rv, align 4, !dbg !666
  br label %while.cond, !dbg !667

while.cond:                                       ; preds = %cleanup.cont, %entry
  br label %while.body, !dbg !667

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #6, !dbg !668
  call void @llvm.dbg.declare(metadata ptr %c, metadata !654, metadata !DIExpression()), !dbg !669
  %0 = load ptr, ptr %s.addr, align 4, !dbg !670
  %1 = load i8, ptr %0, align 1, !dbg !671
  %conv = sext i8 %1 to i32, !dbg !671
  store i32 %conv, ptr %c, align 4, !dbg !669
  call void @llvm.lifetime.start.p0(i64 4, ptr %lc) #6, !dbg !672
  call void @llvm.dbg.declare(metadata ptr %lc, metadata !656, metadata !DIExpression()), !dbg !673
  %2 = load i32, ptr %c, align 4, !dbg !674
  %or = or i32 %2, 32, !dbg !675
  store i32 %or, ptr %lc, align 4, !dbg !673
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #6, !dbg !676
  call void @llvm.dbg.declare(metadata ptr %val, metadata !657, metadata !DIExpression()), !dbg !677
  %3 = load i32, ptr %c, align 4, !dbg !678
  %cmp = icmp ule i32 48, %3, !dbg !680
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !681

land.lhs.true:                                    ; preds = %while.body
  %4 = load i32, ptr %c, align 4, !dbg !682
  %cmp2 = icmp ule i32 %4, 57, !dbg !683
  br i1 %cmp2, label %if.then, label %if.else, !dbg !684

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, ptr %c, align 4, !dbg !685
  %sub = sub i32 %5, 48, !dbg !686
  store i32 %sub, ptr %val, align 4, !dbg !687
  br label %if.end12, !dbg !688

if.else:                                          ; preds = %land.lhs.true, %while.body
  %6 = load i32, ptr %lc, align 4, !dbg !689
  %cmp4 = icmp ule i32 97, %6, !dbg !691
  br i1 %cmp4, label %land.lhs.true6, label %if.else11, !dbg !692

land.lhs.true6:                                   ; preds = %if.else
  %7 = load i32, ptr %lc, align 4, !dbg !693
  %cmp7 = icmp ule i32 %7, 102, !dbg !694
  br i1 %cmp7, label %if.then9, label %if.else11, !dbg !695

if.then9:                                         ; preds = %land.lhs.true6
  %8 = load i32, ptr %lc, align 4, !dbg !696
  %sub10 = sub i32 %8, 97, !dbg !697
  %add = add i32 %sub10, 10, !dbg !698
  store i32 %add, ptr %val, align 4, !dbg !699
  br label %if.end, !dbg !700

if.else11:                                        ; preds = %land.lhs.true6, %if.else
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !701

if.end:                                           ; preds = %if.then9
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %9 = load i32, ptr %val, align 4, !dbg !702
  %10 = load i32, ptr %base.addr, align 4, !dbg !704
  %cmp13 = icmp uge i32 %9, %10, !dbg !705
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !706

if.then15:                                        ; preds = %if.end12
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !707

if.end16:                                         ; preds = %if.end12
  %11 = load i64, ptr %res, align 8, !dbg !708
  %and = and i64 %11, -1152921504606846976, !dbg !708
  %tobool = icmp ne i64 %and, 0, !dbg !708
  %lnot = xor i1 %tobool, true, !dbg !708
  %lnot17 = xor i1 %lnot, true, !dbg !708
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !708
  %expval = call i32 @llvm.expect.i32(i32 %lnot.ext, i32 0), !dbg !708
  %tobool18 = icmp ne i32 %expval, 0, !dbg !708
  br i1 %tobool18, label %if.then19, label %if.end27, !dbg !710

if.then19:                                        ; preds = %if.end16
  %12 = load i64, ptr %res, align 8, !dbg !711
  %13 = load i32, ptr %val, align 4, !dbg !714
  %conv20 = zext i32 %13 to i64, !dbg !714
  %sub21 = sub i64 -1, %conv20, !dbg !715
  %14 = load i32, ptr %base.addr, align 4, !dbg !716
  %call = call i64 @__div_u64(i64 inreg noundef %sub21, i32 inreg noundef %14) #8, !dbg !717
  %cmp22 = icmp ugt i64 %12, %call, !dbg !718
  br i1 %cmp22, label %if.then24, label %if.end26, !dbg !719

if.then24:                                        ; preds = %if.then19
  %15 = load i32, ptr %rv, align 4, !dbg !720
  %or25 = or i32 %15, -2147483648, !dbg !720
  store i32 %or25, ptr %rv, align 4, !dbg !720
  br label %if.end26, !dbg !721

if.end26:                                         ; preds = %if.then24, %if.then19
  br label %if.end27, !dbg !722

if.end27:                                         ; preds = %if.end26, %if.end16
  %16 = load i64, ptr %res, align 8, !dbg !723
  %17 = load i32, ptr %base.addr, align 4, !dbg !724
  %conv28 = zext i32 %17 to i64, !dbg !724
  %mul = mul i64 %16, %conv28, !dbg !725
  %18 = load i32, ptr %val, align 4, !dbg !726
  %conv29 = zext i32 %18 to i64, !dbg !726
  %add30 = add i64 %mul, %conv29, !dbg !727
  store i64 %add30, ptr %res, align 8, !dbg !728
  %19 = load i32, ptr %rv, align 4, !dbg !729
  %inc = add i32 %19, 1, !dbg !729
  store i32 %inc, ptr %rv, align 4, !dbg !729
  %20 = load ptr, ptr %s.addr, align 4, !dbg !730
  %incdec.ptr = getelementptr inbounds i8, ptr %20, i32 1, !dbg !730
  store ptr %incdec.ptr, ptr %s.addr, align 4, !dbg !730
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !731
  br label %cleanup, !dbg !731

cleanup:                                          ; preds = %if.end27, %if.then15, %if.else11
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #6, !dbg !731
  call void @llvm.lifetime.end.p0(i64 4, ptr %lc) #6, !dbg !731
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #6, !dbg !731
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !667, !llvm.loop !732

while.end:                                        ; preds = %cleanup
  %21 = load i64, ptr %res, align 8, !dbg !733
  %22 = load ptr, ptr %p.addr, align 4, !dbg !734
  store i64 %21, ptr %22, align 4, !dbg !735
  %23 = load i32, ptr %rv, align 4, !dbg !736
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #6, !dbg !737
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #6, !dbg !737
  ret i32 %23, !dbg !738

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: inlinehint nounwind
define internal signext i8 @_tolower(i8 inreg noundef signext %c) #4 !dbg !739 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !743, metadata !DIExpression()), !dbg !744
  %0 = load i8, ptr %c.addr, align 1, !dbg !745
  %conv = sext i8 %0 to i32, !dbg !745
  %or = or i32 %conv, 32, !dbg !746
  %conv1 = trunc i32 %or to i8, !dbg !745
  ret i8 %conv1, !dbg !747
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i32 @llvm.expect.i32(i32, i32) #5

; Function Attrs: inlinehint nounwind
define internal i64 @__div_u64(i64 inreg noundef %dividend, i32 inreg noundef %divisor) #4 !dbg !748 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !758, metadata !DIExpression()), !dbg !761
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !759, metadata !DIExpression()), !dbg !762
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #6, !dbg !763
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !760, metadata !DIExpression()), !dbg !764
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !765
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !766
  %call = call i64 @__div_u64_rem(i64 inreg noundef %0, i32 inreg noundef %1, ptr noundef %remainder) #8, !dbg !767
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #6, !dbg !768
  ret i64 %call, !dbg !769
}

; Function Attrs: inlinehint nounwind
define internal i64 @__div_u64_rem(i64 inreg noundef %dividend, i32 inreg noundef %divisor, ptr noundef %remainder) #4 !dbg !770 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 4
  %d = alloca %union.anon, align 4
  %upper = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !775, metadata !DIExpression()), !dbg !787
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !776, metadata !DIExpression()), !dbg !788
  store ptr %remainder, ptr %remainder.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !777, metadata !DIExpression()), !dbg !789
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #6, !dbg !790
  call void @llvm.dbg.declare(metadata ptr %d, metadata !778, metadata !DIExpression()), !dbg !791
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !792
  store i64 %0, ptr %d, align 4, !dbg !793
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper) #6, !dbg !794
  call void @llvm.dbg.declare(metadata ptr %upper, metadata !786, metadata !DIExpression()), !dbg !795
  %arrayidx = getelementptr inbounds [2 x i32], ptr %d, i32 0, i32 1, !dbg !796
  %1 = load i32, ptr %arrayidx, align 4, !dbg !796
  store i32 %1, ptr %upper, align 4, !dbg !797
  %arrayidx1 = getelementptr inbounds [2 x i32], ptr %d, i32 0, i32 1, !dbg !798
  store i32 0, ptr %arrayidx1, align 4, !dbg !799
  %2 = load i32, ptr %upper, align 4, !dbg !800
  %3 = load i32, ptr %divisor.addr, align 4, !dbg !802
  %cmp = icmp uge i32 %2, %3, !dbg !803
  br i1 %cmp, label %if.then, label %if.end, !dbg !804

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %upper, align 4, !dbg !805
  %5 = load i32, ptr %divisor.addr, align 4, !dbg !807
  %div = udiv i32 %4, %5, !dbg !808
  %arrayidx2 = getelementptr inbounds [2 x i32], ptr %d, i32 0, i32 1, !dbg !809
  store i32 %div, ptr %arrayidx2, align 4, !dbg !810
  %6 = load i32, ptr %divisor.addr, align 4, !dbg !811
  %7 = load i32, ptr %upper, align 4, !dbg !812
  %rem = urem i32 %7, %6, !dbg !812
  store i32 %rem, ptr %upper, align 4, !dbg !812
  br label %if.end, !dbg !813

if.end:                                           ; preds = %if.then, %entry
  %arrayidx3 = getelementptr inbounds [2 x i32], ptr %d, i32 0, i32 0, !dbg !814
  %8 = load ptr, ptr %remainder.addr, align 4, !dbg !815
  %9 = load i32, ptr %divisor.addr, align 4, !dbg !816
  %arrayidx4 = getelementptr inbounds [2 x i32], ptr %d, i32 0, i32 0, !dbg !817
  %10 = load i32, ptr %arrayidx4, align 4, !dbg !817
  %11 = load i32, ptr %upper, align 4, !dbg !818
  %12 = call { i32, i32 } asm "divl $2", "={ax},={dx},rm,0,1,~{dirflag},~{fpsr},~{flags}"(i32 %9, i32 %10, i32 %11) #9, !dbg !819, !srcloc !820
  %asmresult = extractvalue { i32, i32 } %12, 0, !dbg !819
  %asmresult5 = extractvalue { i32, i32 } %12, 1, !dbg !819
  store i32 %asmresult, ptr %arrayidx3, align 4, !dbg !819
  store i32 %asmresult5, ptr %8, align 4, !dbg !819
  %13 = load i64, ptr %d, align 4, !dbg !821
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper) #6, !dbg !822
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #6, !dbg !822
  ret i64 %13, !dbg !823
}

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind memory(none) }
attributes #8 = { nobuiltin "no-builtins" }
attributes #9 = { nounwind memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.string.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/string\22 -D KBUILD_BASENAME=\22string\22 -D KBUILD_MODNAME=\22string\22 -D __KBUILD_MODNAME=kmod_string -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/string.ll arch/x86/boot/string.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/boot/string.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c0a1f729eaae3a3ed35a8984c7ccee")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "false", value: 0)
!8 = !DIEnumerator(name: "true", value: 1)
!9 = !{!10, !13, !14, !15}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 32)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!16 = !{i32 1, !"NumRegisterParameters", i32 3}
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 1, !"override-stack-alignment", i32 4}
!21 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!22 = distinct !DISubprogram(name: "memcmp", scope: !1, file: !1, line: 32, type: !23, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !32)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !26, !26, !28}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 61, baseType: !30)
!29 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !31, line: 68, baseType: !5)
!31 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!32 = !{!33, !34, !35, !36}
!33 = !DILocalVariable(name: "s1", arg: 1, scope: !22, file: !1, line: 32, type: !26)
!34 = !DILocalVariable(name: "s2", arg: 2, scope: !22, file: !1, line: 32, type: !26)
!35 = !DILocalVariable(name: "len", arg: 3, scope: !22, file: !1, line: 32, type: !28)
!36 = !DILocalVariable(name: "diff", scope: !22, file: !1, line: 34, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !29, line: 35, baseType: !38)
!38 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!39 = !DILocation(line: 32, column: 24, scope: !22)
!40 = !DILocation(line: 32, column: 40, scope: !22)
!41 = !DILocation(line: 32, column: 51, scope: !22)
!42 = !DILocation(line: 34, column: 2, scope: !22)
!43 = !DILocation(line: 34, column: 7, scope: !22)
!44 = !DILocation(line: 35, column: 2, scope: !22)
!45 = !{i64 834, i64 2147685115}
!46 = !DILocation(line: 37, column: 9, scope: !22)
!47 = !{i8 0, i8 2}
!48 = !{}
!49 = !DILocation(line: 38, column: 1, scope: !22)
!50 = !DILocation(line: 37, column: 2, scope: !22)
!51 = distinct !DISubprogram(name: "bcmp", scope: !1, file: !1, line: 43, type: !23, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!52 = !{!53, !54, !55}
!53 = !DILocalVariable(name: "s1", arg: 1, scope: !51, file: !1, line: 43, type: !26)
!54 = !DILocalVariable(name: "s2", arg: 2, scope: !51, file: !1, line: 43, type: !26)
!55 = !DILocalVariable(name: "len", arg: 3, scope: !51, file: !1, line: 43, type: !28)
!56 = !DILocation(line: 43, column: 22, scope: !51)
!57 = !DILocation(line: 43, column: 38, scope: !51)
!58 = !DILocation(line: 43, column: 49, scope: !51)
!59 = !DILocation(line: 45, column: 16, scope: !51)
!60 = !DILocation(line: 45, column: 20, scope: !51)
!61 = !DILocation(line: 45, column: 24, scope: !51)
!62 = !DILocation(line: 45, column: 9, scope: !51)
!63 = !DILocation(line: 45, column: 2, scope: !51)
!64 = distinct !DISubprogram(name: "strcmp", scope: !1, file: !1, line: 48, type: !65, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !69)
!65 = !DISubroutineType(types: !66)
!66 = !{!25, !67, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!69 = !{!70, !71, !72, !73, !74}
!70 = !DILocalVariable(name: "str1", arg: 1, scope: !64, file: !1, line: 48, type: !67)
!71 = !DILocalVariable(name: "str2", arg: 2, scope: !64, file: !1, line: 48, type: !67)
!72 = !DILocalVariable(name: "s1", scope: !64, file: !1, line: 50, type: !10)
!73 = !DILocalVariable(name: "s2", scope: !64, file: !1, line: 51, type: !10)
!74 = !DILocalVariable(name: "delta", scope: !64, file: !1, line: 52, type: !25)
!75 = !DILocation(line: 48, column: 24, scope: !64)
!76 = !DILocation(line: 48, column: 42, scope: !64)
!77 = !DILocation(line: 50, column: 2, scope: !64)
!78 = !DILocation(line: 50, column: 23, scope: !64)
!79 = !DILocation(line: 50, column: 51, scope: !64)
!80 = !DILocation(line: 51, column: 2, scope: !64)
!81 = !DILocation(line: 51, column: 23, scope: !64)
!82 = !DILocation(line: 51, column: 51, scope: !64)
!83 = !DILocation(line: 52, column: 2, scope: !64)
!84 = !DILocation(line: 52, column: 6, scope: !64)
!85 = !DILocation(line: 54, column: 2, scope: !64)
!86 = !DILocation(line: 54, column: 10, scope: !64)
!87 = !DILocation(line: 54, column: 9, scope: !64)
!88 = !DILocation(line: 54, column: 13, scope: !64)
!89 = !DILocation(line: 54, column: 17, scope: !64)
!90 = !DILocation(line: 54, column: 16, scope: !64)
!91 = !DILocation(line: 55, column: 12, scope: !92)
!92 = distinct !DILexicalBlock(scope: !64, file: !1, line: 54, column: 21)
!93 = !DILocation(line: 55, column: 11, scope: !92)
!94 = !DILocation(line: 55, column: 18, scope: !92)
!95 = !DILocation(line: 55, column: 17, scope: !92)
!96 = !DILocation(line: 55, column: 15, scope: !92)
!97 = !DILocation(line: 55, column: 9, scope: !92)
!98 = !DILocation(line: 56, column: 7, scope: !99)
!99 = distinct !DILexicalBlock(scope: !92, file: !1, line: 56, column: 7)
!100 = !DILocation(line: 56, column: 7, scope: !92)
!101 = !DILocation(line: 57, column: 11, scope: !99)
!102 = !DILocation(line: 57, column: 4, scope: !99)
!103 = !DILocation(line: 58, column: 5, scope: !92)
!104 = !DILocation(line: 59, column: 5, scope: !92)
!105 = distinct !{!105, !85, !106, !107, !108}
!106 = !DILocation(line: 60, column: 2, scope: !64)
!107 = !{!"llvm.loop.mustprogress"}
!108 = !{!"llvm.loop.unroll.disable"}
!109 = !DILocation(line: 61, column: 2, scope: !64)
!110 = !DILocation(line: 62, column: 1, scope: !64)
!111 = distinct !DISubprogram(name: "strncmp", scope: !1, file: !1, line: 64, type: !112, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!112 = !DISubroutineType(types: !113)
!113 = !{!25, !67, !67, !28}
!114 = !{!115, !116, !117, !118, !119}
!115 = !DILocalVariable(name: "cs", arg: 1, scope: !111, file: !1, line: 64, type: !67)
!116 = !DILocalVariable(name: "ct", arg: 2, scope: !111, file: !1, line: 64, type: !67)
!117 = !DILocalVariable(name: "count", arg: 3, scope: !111, file: !1, line: 64, type: !28)
!118 = !DILocalVariable(name: "c1", scope: !111, file: !1, line: 66, type: !12)
!119 = !DILocalVariable(name: "c2", scope: !111, file: !1, line: 66, type: !12)
!120 = !DILocation(line: 64, column: 25, scope: !111)
!121 = !DILocation(line: 64, column: 41, scope: !111)
!122 = !DILocation(line: 64, column: 52, scope: !111)
!123 = !DILocation(line: 66, column: 2, scope: !111)
!124 = !DILocation(line: 66, column: 16, scope: !111)
!125 = !DILocation(line: 66, column: 20, scope: !111)
!126 = !DILocation(line: 68, column: 2, scope: !111)
!127 = !DILocation(line: 68, column: 9, scope: !111)
!128 = !DILocation(line: 69, column: 11, scope: !129)
!129 = distinct !DILexicalBlock(scope: !111, file: !1, line: 68, column: 16)
!130 = !DILocation(line: 69, column: 8, scope: !129)
!131 = !DILocation(line: 69, column: 6, scope: !129)
!132 = !DILocation(line: 70, column: 11, scope: !129)
!133 = !DILocation(line: 70, column: 8, scope: !129)
!134 = !DILocation(line: 70, column: 6, scope: !129)
!135 = !DILocation(line: 71, column: 7, scope: !136)
!136 = distinct !DILexicalBlock(scope: !129, file: !1, line: 71, column: 7)
!137 = !DILocation(line: 71, column: 13, scope: !136)
!138 = !DILocation(line: 71, column: 10, scope: !136)
!139 = !DILocation(line: 71, column: 7, scope: !129)
!140 = !DILocation(line: 72, column: 11, scope: !136)
!141 = !DILocation(line: 72, column: 16, scope: !136)
!142 = !DILocation(line: 72, column: 14, scope: !136)
!143 = !DILocation(line: 72, column: 4, scope: !136)
!144 = !DILocation(line: 73, column: 8, scope: !145)
!145 = distinct !DILexicalBlock(scope: !129, file: !1, line: 73, column: 7)
!146 = !DILocation(line: 73, column: 7, scope: !129)
!147 = !DILocation(line: 74, column: 4, scope: !145)
!148 = !DILocation(line: 75, column: 8, scope: !129)
!149 = distinct !{!149, !126, !150, !107, !108}
!150 = !DILocation(line: 76, column: 2, scope: !111)
!151 = !DILocation(line: 77, column: 2, scope: !111)
!152 = !DILocation(line: 78, column: 1, scope: !111)
!153 = distinct !DISubprogram(name: "strnlen", scope: !1, file: !1, line: 80, type: !154, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !156)
!154 = !DISubroutineType(types: !155)
!155 = !{!28, !67, !28}
!156 = !{!157, !158, !159}
!157 = !DILocalVariable(name: "s", arg: 1, scope: !153, file: !1, line: 80, type: !67)
!158 = !DILocalVariable(name: "maxlen", arg: 2, scope: !153, file: !1, line: 80, type: !28)
!159 = !DILocalVariable(name: "es", scope: !153, file: !1, line: 82, type: !67)
!160 = !DILocation(line: 80, column: 28, scope: !153)
!161 = !DILocation(line: 80, column: 38, scope: !153)
!162 = !DILocation(line: 82, column: 2, scope: !153)
!163 = !DILocation(line: 82, column: 14, scope: !153)
!164 = !DILocation(line: 82, column: 19, scope: !153)
!165 = !DILocation(line: 83, column: 2, scope: !153)
!166 = !DILocation(line: 83, column: 10, scope: !153)
!167 = !DILocation(line: 83, column: 9, scope: !153)
!168 = !DILocation(line: 83, column: 13, scope: !153)
!169 = !DILocation(line: 83, column: 16, scope: !153)
!170 = !DILocation(line: 0, scope: !153)
!171 = !DILocation(line: 84, column: 5, scope: !172)
!172 = distinct !DILexicalBlock(scope: !153, file: !1, line: 83, column: 24)
!173 = !DILocation(line: 85, column: 9, scope: !172)
!174 = distinct !{!174, !165, !175, !107, !108}
!175 = !DILocation(line: 86, column: 2, scope: !153)
!176 = !DILocation(line: 88, column: 10, scope: !153)
!177 = !DILocation(line: 88, column: 15, scope: !153)
!178 = !DILocation(line: 88, column: 13, scope: !153)
!179 = !DILocation(line: 89, column: 1, scope: !153)
!180 = !DILocation(line: 88, column: 2, scope: !153)
!181 = distinct !DISubprogram(name: "atou", scope: !1, file: !1, line: 91, type: !182, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !184)
!182 = !DISubroutineType(types: !183)
!183 = !{!5, !67}
!184 = !{!185, !186}
!185 = !DILocalVariable(name: "s", arg: 1, scope: !181, file: !1, line: 91, type: !67)
!186 = !DILocalVariable(name: "i", scope: !181, file: !1, line: 93, type: !5)
!187 = !DILocation(line: 91, column: 31, scope: !181)
!188 = !DILocation(line: 93, column: 2, scope: !181)
!189 = !DILocation(line: 93, column: 15, scope: !181)
!190 = !DILocation(line: 94, column: 2, scope: !181)
!191 = !DILocation(line: 94, column: 18, scope: !181)
!192 = !DILocation(line: 94, column: 17, scope: !181)
!193 = !DILocation(line: 94, column: 9, scope: !181)
!194 = !DILocation(line: 95, column: 7, scope: !181)
!195 = !DILocation(line: 95, column: 9, scope: !181)
!196 = !DILocation(line: 95, column: 19, scope: !181)
!197 = !DILocation(line: 95, column: 17, scope: !181)
!198 = !DILocation(line: 95, column: 22, scope: !181)
!199 = !DILocation(line: 95, column: 14, scope: !181)
!200 = !DILocation(line: 95, column: 5, scope: !181)
!201 = distinct !{!201, !190, !202, !107, !108}
!202 = !DILocation(line: 95, column: 27, scope: !181)
!203 = !DILocation(line: 96, column: 9, scope: !181)
!204 = !DILocation(line: 97, column: 1, scope: !181)
!205 = !DILocation(line: 96, column: 2, scope: !181)
!206 = distinct !DISubprogram(name: "isdigit", scope: !207, file: !207, line: 5, type: !208, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !210)
!207 = !DIFile(filename: "arch/x86/boot/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a8b15308a5e1965a4f93156f0cfcae7c")
!208 = !DISubroutineType(types: !209)
!209 = !{!25, !25}
!210 = !{!211}
!211 = !DILocalVariable(name: "ch", arg: 1, scope: !206, file: !207, line: 5, type: !25)
!212 = !DILocation(line: 5, column: 31, scope: !206)
!213 = !DILocation(line: 7, column: 10, scope: !206)
!214 = !DILocation(line: 7, column: 13, scope: !206)
!215 = !DILocation(line: 7, column: 21, scope: !206)
!216 = !DILocation(line: 7, column: 25, scope: !206)
!217 = !DILocation(line: 7, column: 28, scope: !206)
!218 = !DILocation(line: 0, scope: !206)
!219 = !DILocation(line: 7, column: 2, scope: !206)
!220 = distinct !DISubprogram(name: "simple_strtoull", scope: !1, file: !1, line: 120, type: !221, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !225)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !67, !224, !5}
!223 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!225 = !{!226, !227, !228, !229, !230}
!226 = !DILocalVariable(name: "cp", arg: 1, scope: !220, file: !1, line: 120, type: !67)
!227 = !DILocalVariable(name: "endp", arg: 2, scope: !220, file: !1, line: 120, type: !224)
!228 = !DILocalVariable(name: "base", arg: 3, scope: !220, file: !1, line: 120, type: !5)
!229 = !DILocalVariable(name: "result", scope: !220, file: !1, line: 122, type: !223)
!230 = !DILocalVariable(name: "value", scope: !231, file: !1, line: 131, type: !5)
!231 = distinct !DILexicalBlock(scope: !220, file: !1, line: 130, column: 24)
!232 = !DILocation(line: 120, column: 48, scope: !220)
!233 = !DILocation(line: 120, column: 59, scope: !220)
!234 = !DILocation(line: 120, column: 78, scope: !220)
!235 = !DILocation(line: 122, column: 2, scope: !220)
!236 = !DILocation(line: 122, column: 21, scope: !220)
!237 = !DILocation(line: 124, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !220, file: !1, line: 124, column: 6)
!239 = !DILocation(line: 124, column: 6, scope: !220)
!240 = !DILocation(line: 125, column: 28, scope: !238)
!241 = !DILocation(line: 125, column: 10, scope: !238)
!242 = !DILocation(line: 125, column: 8, scope: !238)
!243 = !DILocation(line: 125, column: 3, scope: !238)
!244 = !DILocation(line: 127, column: 6, scope: !245)
!245 = distinct !DILexicalBlock(scope: !220, file: !1, line: 127, column: 6)
!246 = !DILocation(line: 127, column: 11, scope: !245)
!247 = !DILocation(line: 127, column: 17, scope: !245)
!248 = !DILocation(line: 127, column: 20, scope: !245)
!249 = !DILocation(line: 127, column: 26, scope: !245)
!250 = !DILocation(line: 127, column: 33, scope: !245)
!251 = !DILocation(line: 127, column: 36, scope: !245)
!252 = !DILocation(line: 127, column: 51, scope: !245)
!253 = !DILocation(line: 127, column: 6, scope: !220)
!254 = !DILocation(line: 128, column: 6, scope: !245)
!255 = !DILocation(line: 128, column: 3, scope: !245)
!256 = !DILocation(line: 130, column: 2, scope: !220)
!257 = !DILocation(line: 130, column: 19, scope: !220)
!258 = !DILocation(line: 130, column: 18, scope: !220)
!259 = !DILocation(line: 130, column: 9, scope: !220)
!260 = !DILocation(line: 131, column: 3, scope: !231)
!261 = !DILocation(line: 131, column: 16, scope: !231)
!262 = !DILocation(line: 133, column: 20, scope: !231)
!263 = !DILocation(line: 133, column: 19, scope: !231)
!264 = !DILocation(line: 133, column: 11, scope: !231)
!265 = !DILocation(line: 133, column: 27, scope: !231)
!266 = !DILocation(line: 133, column: 26, scope: !231)
!267 = !DILocation(line: 133, column: 30, scope: !231)
!268 = !DILocation(line: 133, column: 38, scope: !231)
!269 = !DILocation(line: 133, column: 51, scope: !231)
!270 = !DILocation(line: 133, column: 57, scope: !231)
!271 = !DILocation(line: 133, column: 9, scope: !231)
!272 = !DILocation(line: 134, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !231, file: !1, line: 134, column: 7)
!274 = !DILocation(line: 134, column: 16, scope: !273)
!275 = !DILocation(line: 134, column: 13, scope: !273)
!276 = !DILocation(line: 134, column: 7, scope: !231)
!277 = !DILocation(line: 135, column: 4, scope: !273)
!278 = !DILocation(line: 136, column: 12, scope: !231)
!279 = !DILocation(line: 136, column: 21, scope: !231)
!280 = !DILocation(line: 136, column: 19, scope: !231)
!281 = !DILocation(line: 136, column: 28, scope: !231)
!282 = !DILocation(line: 136, column: 26, scope: !231)
!283 = !DILocation(line: 136, column: 10, scope: !231)
!284 = !DILocation(line: 137, column: 5, scope: !231)
!285 = !DILocation(line: 138, column: 2, scope: !220)
!286 = distinct !{!286, !256, !285, !107, !108}
!287 = !DILocation(line: 139, column: 6, scope: !288)
!288 = distinct !DILexicalBlock(scope: !220, file: !1, line: 139, column: 6)
!289 = !DILocation(line: 139, column: 6, scope: !220)
!290 = !DILocation(line: 140, column: 19, scope: !288)
!291 = !DILocation(line: 140, column: 4, scope: !288)
!292 = !DILocation(line: 140, column: 9, scope: !288)
!293 = !DILocation(line: 140, column: 3, scope: !288)
!294 = !DILocation(line: 142, column: 9, scope: !220)
!295 = !DILocation(line: 143, column: 1, scope: !220)
!296 = !DILocation(line: 142, column: 2, scope: !220)
!297 = distinct !DISubprogram(name: "simple_guess_base", scope: !1, file: !1, line: 102, type: !182, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !298)
!298 = !{!299}
!299 = !DILocalVariable(name: "cp", arg: 1, scope: !297, file: !1, line: 102, type: !67)
!300 = !DILocation(line: 102, column: 51, scope: !297)
!301 = !DILocation(line: 104, column: 6, scope: !302)
!302 = distinct !DILexicalBlock(scope: !297, file: !1, line: 104, column: 6)
!303 = !DILocation(line: 104, column: 12, scope: !302)
!304 = !DILocation(line: 104, column: 6, scope: !297)
!305 = !DILocation(line: 105, column: 7, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 105, column: 7)
!307 = distinct !DILexicalBlock(scope: !302, file: !1, line: 104, column: 20)
!308 = !DILocation(line: 105, column: 22, scope: !306)
!309 = !DILocation(line: 105, column: 29, scope: !306)
!310 = !DILocation(line: 105, column: 41, scope: !306)
!311 = !DILocation(line: 105, column: 32, scope: !306)
!312 = !DILocation(line: 105, column: 7, scope: !307)
!313 = !DILocation(line: 106, column: 4, scope: !306)
!314 = !DILocation(line: 108, column: 4, scope: !306)
!315 = !DILocation(line: 110, column: 3, scope: !316)
!316 = distinct !DILexicalBlock(scope: !302, file: !1, line: 109, column: 9)
!317 = !DILocation(line: 112, column: 1, scope: !297)
!318 = distinct !DISubprogram(name: "isxdigit", scope: !207, file: !207, line: 10, type: !208, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !319)
!319 = !{!320}
!320 = !DILocalVariable(name: "ch", arg: 1, scope: !318, file: !207, line: 10, type: !25)
!321 = !DILocation(line: 10, column: 32, scope: !318)
!322 = !DILocation(line: 12, column: 14, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !207, line: 12, column: 6)
!324 = !DILocation(line: 12, column: 6, scope: !323)
!325 = !DILocation(line: 12, column: 6, scope: !318)
!326 = !DILocation(line: 13, column: 3, scope: !323)
!327 = !DILocation(line: 15, column: 7, scope: !328)
!328 = distinct !DILexicalBlock(scope: !318, file: !207, line: 15, column: 6)
!329 = !DILocation(line: 15, column: 10, scope: !328)
!330 = !DILocation(line: 15, column: 18, scope: !328)
!331 = !DILocation(line: 15, column: 22, scope: !328)
!332 = !DILocation(line: 15, column: 25, scope: !328)
!333 = !DILocation(line: 15, column: 6, scope: !318)
!334 = !DILocation(line: 16, column: 3, scope: !328)
!335 = !DILocation(line: 18, column: 10, scope: !318)
!336 = !DILocation(line: 18, column: 13, scope: !318)
!337 = !DILocation(line: 18, column: 21, scope: !318)
!338 = !DILocation(line: 18, column: 25, scope: !318)
!339 = !DILocation(line: 18, column: 28, scope: !318)
!340 = !DILocation(line: 0, scope: !318)
!341 = !DILocation(line: 18, column: 2, scope: !318)
!342 = !DILocation(line: 19, column: 1, scope: !318)
!343 = distinct !DISubprogram(name: "simple_strtol", scope: !1, file: !1, line: 145, type: !344, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !347)
!344 = !DISubroutineType(types: !345)
!345 = !{!346, !67, !224, !5}
!346 = !DIBasicType(name: "long", size: 32, encoding: DW_ATE_signed)
!347 = !{!348, !349, !350}
!348 = !DILocalVariable(name: "cp", arg: 1, scope: !343, file: !1, line: 145, type: !67)
!349 = !DILocalVariable(name: "endp", arg: 2, scope: !343, file: !1, line: 145, type: !224)
!350 = !DILocalVariable(name: "base", arg: 3, scope: !343, file: !1, line: 145, type: !5)
!351 = !DILocation(line: 145, column: 32, scope: !343)
!352 = !DILocation(line: 145, column: 43, scope: !343)
!353 = !DILocation(line: 145, column: 62, scope: !343)
!354 = !DILocation(line: 147, column: 7, scope: !355)
!355 = distinct !DILexicalBlock(scope: !343, file: !1, line: 147, column: 6)
!356 = !DILocation(line: 147, column: 6, scope: !355)
!357 = !DILocation(line: 147, column: 10, scope: !355)
!358 = !DILocation(line: 147, column: 6, scope: !343)
!359 = !DILocation(line: 148, column: 27, scope: !355)
!360 = !DILocation(line: 148, column: 30, scope: !355)
!361 = !DILocation(line: 148, column: 35, scope: !355)
!362 = !DILocation(line: 148, column: 41, scope: !355)
!363 = !DILocation(line: 148, column: 11, scope: !355)
!364 = !DILocation(line: 148, column: 10, scope: !355)
!365 = !DILocation(line: 148, column: 3, scope: !355)
!366 = !DILocation(line: 150, column: 25, scope: !343)
!367 = !DILocation(line: 150, column: 29, scope: !343)
!368 = !DILocation(line: 150, column: 35, scope: !343)
!369 = !DILocation(line: 150, column: 9, scope: !343)
!370 = !DILocation(line: 150, column: 2, scope: !343)
!371 = !DILocation(line: 151, column: 1, scope: !343)
!372 = distinct !DISubprogram(name: "strlen", scope: !1, file: !1, line: 157, type: !373, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !375)
!373 = !DISubroutineType(types: !374)
!374 = !{!28, !67}
!375 = !{!376, !377}
!376 = !DILocalVariable(name: "s", arg: 1, scope: !372, file: !1, line: 157, type: !67)
!377 = !DILocalVariable(name: "sc", scope: !372, file: !1, line: 159, type: !67)
!378 = !DILocation(line: 157, column: 27, scope: !372)
!379 = !DILocation(line: 159, column: 2, scope: !372)
!380 = !DILocation(line: 159, column: 14, scope: !372)
!381 = !DILocation(line: 161, column: 12, scope: !382)
!382 = distinct !DILexicalBlock(scope: !372, file: !1, line: 161, column: 2)
!383 = !DILocation(line: 161, column: 10, scope: !382)
!384 = !DILocation(line: 161, column: 7, scope: !382)
!385 = !DILocation(line: 161, column: 16, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !1, line: 161, column: 2)
!387 = !DILocation(line: 161, column: 15, scope: !386)
!388 = !DILocation(line: 161, column: 19, scope: !386)
!389 = !DILocation(line: 161, column: 2, scope: !382)
!390 = !DILocation(line: 161, column: 28, scope: !386)
!391 = !DILocation(line: 161, column: 2, scope: !386)
!392 = distinct !{!392, !389, !393, !107, !108}
!393 = !DILocation(line: 162, column: 16, scope: !382)
!394 = !DILocation(line: 163, column: 9, scope: !372)
!395 = !DILocation(line: 163, column: 14, scope: !372)
!396 = !DILocation(line: 163, column: 12, scope: !372)
!397 = !DILocation(line: 164, column: 1, scope: !372)
!398 = !DILocation(line: 163, column: 2, scope: !372)
!399 = distinct !DISubprogram(name: "strstr", scope: !1, file: !1, line: 171, type: !400, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !402)
!400 = !DISubroutineType(types: !401)
!401 = !{!13, !67, !67}
!402 = !{!403, !404, !405, !406}
!403 = !DILocalVariable(name: "s1", arg: 1, scope: !399, file: !1, line: 171, type: !67)
!404 = !DILocalVariable(name: "s2", arg: 2, scope: !399, file: !1, line: 171, type: !67)
!405 = !DILocalVariable(name: "l1", scope: !399, file: !1, line: 173, type: !28)
!406 = !DILocalVariable(name: "l2", scope: !399, file: !1, line: 173, type: !28)
!407 = !DILocation(line: 171, column: 26, scope: !399)
!408 = !DILocation(line: 171, column: 42, scope: !399)
!409 = !DILocation(line: 173, column: 2, scope: !399)
!410 = !DILocation(line: 173, column: 9, scope: !399)
!411 = !DILocation(line: 173, column: 13, scope: !399)
!412 = !DILocation(line: 175, column: 14, scope: !399)
!413 = !DILocation(line: 175, column: 7, scope: !399)
!414 = !DILocation(line: 175, column: 5, scope: !399)
!415 = !DILocation(line: 176, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !399, file: !1, line: 176, column: 6)
!417 = !DILocation(line: 176, column: 6, scope: !399)
!418 = !DILocation(line: 177, column: 18, scope: !416)
!419 = !DILocation(line: 177, column: 3, scope: !416)
!420 = !DILocation(line: 178, column: 14, scope: !399)
!421 = !DILocation(line: 178, column: 7, scope: !399)
!422 = !DILocation(line: 178, column: 5, scope: !399)
!423 = !DILocation(line: 179, column: 2, scope: !399)
!424 = !DILocation(line: 179, column: 9, scope: !399)
!425 = !DILocation(line: 179, column: 15, scope: !399)
!426 = !DILocation(line: 179, column: 12, scope: !399)
!427 = !DILocation(line: 180, column: 5, scope: !428)
!428 = distinct !DILexicalBlock(scope: !399, file: !1, line: 179, column: 19)
!429 = !DILocation(line: 181, column: 15, scope: !430)
!430 = distinct !DILexicalBlock(scope: !428, file: !1, line: 181, column: 7)
!431 = !DILocation(line: 181, column: 19, scope: !430)
!432 = !DILocation(line: 181, column: 23, scope: !430)
!433 = !DILocation(line: 181, column: 8, scope: !430)
!434 = !DILocation(line: 181, column: 7, scope: !428)
!435 = !DILocation(line: 182, column: 19, scope: !430)
!436 = !DILocation(line: 182, column: 4, scope: !430)
!437 = !DILocation(line: 183, column: 5, scope: !428)
!438 = distinct !{!438, !423, !439, !107, !108}
!439 = !DILocation(line: 184, column: 2, scope: !399)
!440 = !DILocation(line: 185, column: 2, scope: !399)
!441 = !DILocation(line: 186, column: 1, scope: !399)
!442 = distinct !DISubprogram(name: "strchr", scope: !1, file: !1, line: 193, type: !443, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{!13, !67, !25}
!445 = !{!446, !447}
!446 = !DILocalVariable(name: "s", arg: 1, scope: !442, file: !1, line: 193, type: !67)
!447 = !DILocalVariable(name: "c", arg: 2, scope: !442, file: !1, line: 193, type: !25)
!448 = !DILocation(line: 193, column: 26, scope: !442)
!449 = !DILocation(line: 193, column: 33, scope: !442)
!450 = !DILocation(line: 195, column: 2, scope: !442)
!451 = !DILocation(line: 195, column: 10, scope: !442)
!452 = !DILocation(line: 195, column: 9, scope: !442)
!453 = !DILocation(line: 195, column: 21, scope: !442)
!454 = !DILocation(line: 195, column: 15, scope: !442)
!455 = !DILocation(line: 195, column: 12, scope: !442)
!456 = !DILocation(line: 196, column: 9, scope: !457)
!457 = distinct !DILexicalBlock(scope: !442, file: !1, line: 196, column: 7)
!458 = !DILocation(line: 196, column: 7, scope: !457)
!459 = !DILocation(line: 196, column: 12, scope: !457)
!460 = !DILocation(line: 196, column: 7, scope: !442)
!461 = !DILocation(line: 197, column: 4, scope: !457)
!462 = distinct !{!462, !450, !463, !107, !108}
!463 = !DILocation(line: 197, column: 11, scope: !442)
!464 = !DILocation(line: 198, column: 17, scope: !442)
!465 = !DILocation(line: 198, column: 2, scope: !442)
!466 = !DILocation(line: 199, column: 1, scope: !442)
!467 = distinct !DISubprogram(name: "kstrtoull", scope: !1, file: !1, line: 331, type: !468, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !471)
!468 = !DISubroutineType(types: !469)
!469 = !{!25, !67, !5, !470}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 32)
!471 = !{!472, !473, !474}
!472 = !DILocalVariable(name: "s", arg: 1, scope: !467, file: !1, line: 331, type: !67)
!473 = !DILocalVariable(name: "base", arg: 2, scope: !467, file: !1, line: 331, type: !5)
!474 = !DILocalVariable(name: "res", arg: 3, scope: !467, file: !1, line: 331, type: !470)
!475 = !DILocation(line: 331, column: 27, scope: !467)
!476 = !DILocation(line: 331, column: 43, scope: !467)
!477 = !DILocation(line: 331, column: 69, scope: !467)
!478 = !DILocation(line: 333, column: 6, scope: !479)
!479 = distinct !DILexicalBlock(scope: !467, file: !1, line: 333, column: 6)
!480 = !DILocation(line: 333, column: 11, scope: !479)
!481 = !DILocation(line: 333, column: 6, scope: !467)
!482 = !DILocation(line: 334, column: 4, scope: !479)
!483 = !DILocation(line: 334, column: 3, scope: !479)
!484 = !DILocation(line: 335, column: 20, scope: !467)
!485 = !DILocation(line: 335, column: 23, scope: !467)
!486 = !DILocation(line: 335, column: 29, scope: !467)
!487 = !DILocation(line: 335, column: 9, scope: !467)
!488 = !DILocation(line: 335, column: 2, scope: !467)
!489 = distinct !DISubprogram(name: "_kstrtoull", scope: !1, file: !1, line: 295, type: !468, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !490)
!490 = !{!491, !492, !493, !494, !495}
!491 = !DILocalVariable(name: "s", arg: 1, scope: !489, file: !1, line: 295, type: !67)
!492 = !DILocalVariable(name: "base", arg: 2, scope: !489, file: !1, line: 295, type: !5)
!493 = !DILocalVariable(name: "res", arg: 3, scope: !489, file: !1, line: 295, type: !470)
!494 = !DILocalVariable(name: "_res", scope: !489, file: !1, line: 297, type: !223)
!495 = !DILocalVariable(name: "rv", scope: !489, file: !1, line: 298, type: !5)
!496 = !DILocation(line: 295, column: 35, scope: !489)
!497 = !DILocation(line: 295, column: 51, scope: !489)
!498 = !DILocation(line: 295, column: 77, scope: !489)
!499 = !DILocation(line: 297, column: 2, scope: !489)
!500 = !DILocation(line: 297, column: 21, scope: !489)
!501 = !DILocation(line: 298, column: 2, scope: !489)
!502 = !DILocation(line: 298, column: 15, scope: !489)
!503 = !DILocation(line: 300, column: 33, scope: !489)
!504 = !DILocation(line: 300, column: 6, scope: !489)
!505 = !DILocation(line: 300, column: 4, scope: !489)
!506 = !DILocation(line: 301, column: 22, scope: !489)
!507 = !DILocation(line: 301, column: 25, scope: !489)
!508 = !DILocation(line: 301, column: 7, scope: !489)
!509 = !DILocation(line: 301, column: 5, scope: !489)
!510 = !DILocation(line: 302, column: 6, scope: !511)
!511 = distinct !DILexicalBlock(scope: !489, file: !1, line: 302, column: 6)
!512 = !DILocation(line: 302, column: 9, scope: !511)
!513 = !DILocation(line: 302, column: 6, scope: !489)
!514 = !DILocation(line: 303, column: 3, scope: !511)
!515 = !DILocation(line: 304, column: 6, scope: !516)
!516 = distinct !DILexicalBlock(scope: !489, file: !1, line: 304, column: 6)
!517 = !DILocation(line: 304, column: 9, scope: !516)
!518 = !DILocation(line: 304, column: 6, scope: !489)
!519 = !DILocation(line: 305, column: 3, scope: !516)
!520 = !DILocation(line: 306, column: 7, scope: !489)
!521 = !DILocation(line: 306, column: 4, scope: !489)
!522 = !DILocation(line: 307, column: 7, scope: !523)
!523 = distinct !DILexicalBlock(scope: !489, file: !1, line: 307, column: 6)
!524 = !DILocation(line: 307, column: 6, scope: !523)
!525 = !DILocation(line: 307, column: 9, scope: !523)
!526 = !DILocation(line: 307, column: 6, scope: !489)
!527 = !DILocation(line: 308, column: 4, scope: !523)
!528 = !DILocation(line: 308, column: 3, scope: !523)
!529 = !DILocation(line: 309, column: 7, scope: !530)
!530 = distinct !DILexicalBlock(scope: !489, file: !1, line: 309, column: 6)
!531 = !DILocation(line: 309, column: 6, scope: !530)
!532 = !DILocation(line: 309, column: 6, scope: !489)
!533 = !DILocation(line: 310, column: 3, scope: !530)
!534 = !DILocation(line: 311, column: 9, scope: !489)
!535 = !DILocation(line: 311, column: 3, scope: !489)
!536 = !DILocation(line: 311, column: 7, scope: !489)
!537 = !DILocation(line: 312, column: 2, scope: !489)
!538 = !DILocation(line: 313, column: 1, scope: !489)
!539 = distinct !DISubprogram(name: "boot_kstrtoul", scope: !1, file: !1, line: 367, type: !540, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !543)
!540 = !DISubroutineType(types: !541)
!541 = !{!25, !67, !5, !542}
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 32)
!543 = !{!544, !545, !546}
!544 = !DILocalVariable(name: "s", arg: 1, scope: !539, file: !1, line: 367, type: !67)
!545 = !DILocalVariable(name: "base", arg: 2, scope: !539, file: !1, line: 367, type: !5)
!546 = !DILocalVariable(name: "res", arg: 3, scope: !539, file: !1, line: 367, type: !542)
!547 = !DILocation(line: 367, column: 31, scope: !539)
!548 = !DILocation(line: 367, column: 47, scope: !539)
!549 = !DILocation(line: 367, column: 68, scope: !539)
!550 = !DILocation(line: 377, column: 20, scope: !551)
!551 = distinct !DILexicalBlock(scope: !539, file: !1, line: 373, column: 6)
!552 = !DILocation(line: 377, column: 23, scope: !551)
!553 = !DILocation(line: 377, column: 29, scope: !551)
!554 = !DILocation(line: 377, column: 10, scope: !551)
!555 = !DILocation(line: 377, column: 3, scope: !551)
!556 = distinct !DISubprogram(name: "_kstrtoul", scope: !1, file: !1, line: 338, type: !540, scopeLine: 339, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !557)
!557 = !{!558, !559, !560, !561, !562}
!558 = !DILocalVariable(name: "s", arg: 1, scope: !556, file: !1, line: 338, type: !67)
!559 = !DILocalVariable(name: "base", arg: 2, scope: !556, file: !1, line: 338, type: !5)
!560 = !DILocalVariable(name: "res", arg: 3, scope: !556, file: !1, line: 338, type: !542)
!561 = !DILocalVariable(name: "tmp", scope: !556, file: !1, line: 340, type: !223)
!562 = !DILocalVariable(name: "rv", scope: !556, file: !1, line: 341, type: !25)
!563 = !DILocation(line: 338, column: 34, scope: !556)
!564 = !DILocation(line: 338, column: 50, scope: !556)
!565 = !DILocation(line: 338, column: 71, scope: !556)
!566 = !DILocation(line: 340, column: 2, scope: !556)
!567 = !DILocation(line: 340, column: 21, scope: !556)
!568 = !DILocation(line: 341, column: 2, scope: !556)
!569 = !DILocation(line: 341, column: 6, scope: !556)
!570 = !DILocation(line: 343, column: 17, scope: !556)
!571 = !DILocation(line: 343, column: 20, scope: !556)
!572 = !DILocation(line: 343, column: 7, scope: !556)
!573 = !DILocation(line: 343, column: 5, scope: !556)
!574 = !DILocation(line: 344, column: 6, scope: !575)
!575 = distinct !DILexicalBlock(scope: !556, file: !1, line: 344, column: 6)
!576 = !DILocation(line: 344, column: 9, scope: !575)
!577 = !DILocation(line: 344, column: 6, scope: !556)
!578 = !DILocation(line: 345, column: 10, scope: !575)
!579 = !DILocation(line: 345, column: 3, scope: !575)
!580 = !DILocation(line: 346, column: 6, scope: !581)
!581 = distinct !DILexicalBlock(scope: !556, file: !1, line: 346, column: 6)
!582 = !DILocation(line: 346, column: 28, scope: !581)
!583 = !DILocation(line: 346, column: 13, scope: !581)
!584 = !DILocation(line: 346, column: 10, scope: !581)
!585 = !DILocation(line: 346, column: 6, scope: !556)
!586 = !DILocation(line: 347, column: 3, scope: !581)
!587 = !DILocation(line: 348, column: 9, scope: !556)
!588 = !DILocation(line: 348, column: 3, scope: !556)
!589 = !DILocation(line: 348, column: 7, scope: !556)
!590 = !DILocation(line: 349, column: 2, scope: !556)
!591 = !DILocation(line: 350, column: 1, scope: !556)
!592 = distinct !DISubprogram(name: "_parse_integer_fixup_radix", scope: !1, file: !1, line: 232, type: !593, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !596)
!593 = !DISubroutineType(types: !594)
!594 = !{!67, !67, !595}
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 32)
!596 = !{!597, !598}
!597 = !DILocalVariable(name: "s", arg: 1, scope: !592, file: !1, line: 232, type: !67)
!598 = !DILocalVariable(name: "base", arg: 2, scope: !592, file: !1, line: 232, type: !595)
!599 = !DILocation(line: 232, column: 59, scope: !592)
!600 = !DILocation(line: 232, column: 76, scope: !592)
!601 = !DILocation(line: 234, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !592, file: !1, line: 234, column: 6)
!603 = !DILocation(line: 234, column: 6, scope: !602)
!604 = !DILocation(line: 234, column: 12, scope: !602)
!605 = !DILocation(line: 234, column: 6, scope: !592)
!606 = !DILocation(line: 235, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !608, file: !1, line: 235, column: 7)
!608 = distinct !DILexicalBlock(scope: !602, file: !1, line: 234, column: 18)
!609 = !DILocation(line: 235, column: 12, scope: !607)
!610 = !DILocation(line: 235, column: 7, scope: !608)
!611 = !DILocation(line: 236, column: 17, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 236, column: 8)
!613 = distinct !DILexicalBlock(scope: !607, file: !1, line: 235, column: 20)
!614 = !DILocation(line: 236, column: 8, scope: !612)
!615 = !DILocation(line: 236, column: 23, scope: !612)
!616 = !DILocation(line: 236, column: 30, scope: !612)
!617 = !DILocation(line: 236, column: 42, scope: !612)
!618 = !DILocation(line: 236, column: 33, scope: !612)
!619 = !DILocation(line: 236, column: 8, scope: !613)
!620 = !DILocation(line: 237, column: 6, scope: !612)
!621 = !DILocation(line: 237, column: 11, scope: !612)
!622 = !DILocation(line: 237, column: 5, scope: !612)
!623 = !DILocation(line: 239, column: 6, scope: !612)
!624 = !DILocation(line: 239, column: 11, scope: !612)
!625 = !DILocation(line: 240, column: 3, scope: !613)
!626 = !DILocation(line: 241, column: 5, scope: !607)
!627 = !DILocation(line: 241, column: 10, scope: !607)
!628 = !DILocation(line: 242, column: 2, scope: !608)
!629 = !DILocation(line: 243, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !592, file: !1, line: 243, column: 6)
!631 = !DILocation(line: 243, column: 6, scope: !630)
!632 = !DILocation(line: 243, column: 12, scope: !630)
!633 = !DILocation(line: 243, column: 18, scope: !630)
!634 = !DILocation(line: 243, column: 21, scope: !630)
!635 = !DILocation(line: 243, column: 26, scope: !630)
!636 = !DILocation(line: 243, column: 33, scope: !630)
!637 = !DILocation(line: 243, column: 45, scope: !630)
!638 = !DILocation(line: 243, column: 36, scope: !630)
!639 = !DILocation(line: 243, column: 51, scope: !630)
!640 = !DILocation(line: 243, column: 6, scope: !592)
!641 = !DILocation(line: 244, column: 5, scope: !630)
!642 = !DILocation(line: 244, column: 3, scope: !630)
!643 = !DILocation(line: 245, column: 9, scope: !592)
!644 = !DILocation(line: 245, column: 2, scope: !592)
!645 = distinct !DISubprogram(name: "_parse_integer", scope: !1, file: !1, line: 256, type: !646, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{!5, !67, !5, !470}
!648 = !{!649, !650, !651, !652, !653, !654, !656, !657}
!649 = !DILocalVariable(name: "s", arg: 1, scope: !645, file: !1, line: 256, type: !67)
!650 = !DILocalVariable(name: "base", arg: 2, scope: !645, file: !1, line: 257, type: !5)
!651 = !DILocalVariable(name: "p", arg: 3, scope: !645, file: !1, line: 258, type: !470)
!652 = !DILocalVariable(name: "res", scope: !645, file: !1, line: 260, type: !223)
!653 = !DILocalVariable(name: "rv", scope: !645, file: !1, line: 261, type: !5)
!654 = !DILocalVariable(name: "c", scope: !655, file: !1, line: 266, type: !5)
!655 = distinct !DILexicalBlock(scope: !645, file: !1, line: 265, column: 12)
!656 = !DILocalVariable(name: "lc", scope: !655, file: !1, line: 267, type: !5)
!657 = !DILocalVariable(name: "val", scope: !655, file: !1, line: 268, type: !5)
!658 = !DILocation(line: 256, column: 48, scope: !645)
!659 = !DILocation(line: 257, column: 21, scope: !645)
!660 = !DILocation(line: 258, column: 28, scope: !645)
!661 = !DILocation(line: 260, column: 2, scope: !645)
!662 = !DILocation(line: 260, column: 21, scope: !645)
!663 = !DILocation(line: 261, column: 2, scope: !645)
!664 = !DILocation(line: 261, column: 15, scope: !645)
!665 = !DILocation(line: 263, column: 6, scope: !645)
!666 = !DILocation(line: 264, column: 5, scope: !645)
!667 = !DILocation(line: 265, column: 2, scope: !645)
!668 = !DILocation(line: 266, column: 3, scope: !655)
!669 = !DILocation(line: 266, column: 16, scope: !655)
!670 = !DILocation(line: 266, column: 21, scope: !655)
!671 = !DILocation(line: 266, column: 20, scope: !655)
!672 = !DILocation(line: 267, column: 3, scope: !655)
!673 = !DILocation(line: 267, column: 16, scope: !655)
!674 = !DILocation(line: 267, column: 21, scope: !655)
!675 = !DILocation(line: 267, column: 23, scope: !655)
!676 = !DILocation(line: 268, column: 3, scope: !655)
!677 = !DILocation(line: 268, column: 16, scope: !655)
!678 = !DILocation(line: 270, column: 14, scope: !679)
!679 = distinct !DILexicalBlock(scope: !655, file: !1, line: 270, column: 7)
!680 = !DILocation(line: 270, column: 11, scope: !679)
!681 = !DILocation(line: 270, column: 16, scope: !679)
!682 = !DILocation(line: 270, column: 19, scope: !679)
!683 = !DILocation(line: 270, column: 21, scope: !679)
!684 = !DILocation(line: 270, column: 7, scope: !655)
!685 = !DILocation(line: 271, column: 10, scope: !679)
!686 = !DILocation(line: 271, column: 12, scope: !679)
!687 = !DILocation(line: 271, column: 8, scope: !679)
!688 = !DILocation(line: 271, column: 4, scope: !679)
!689 = !DILocation(line: 272, column: 19, scope: !690)
!690 = distinct !DILexicalBlock(scope: !679, file: !1, line: 272, column: 12)
!691 = !DILocation(line: 272, column: 16, scope: !690)
!692 = !DILocation(line: 272, column: 22, scope: !690)
!693 = !DILocation(line: 272, column: 25, scope: !690)
!694 = !DILocation(line: 272, column: 28, scope: !690)
!695 = !DILocation(line: 272, column: 12, scope: !679)
!696 = !DILocation(line: 273, column: 10, scope: !690)
!697 = !DILocation(line: 273, column: 13, scope: !690)
!698 = !DILocation(line: 273, column: 19, scope: !690)
!699 = !DILocation(line: 273, column: 8, scope: !690)
!700 = !DILocation(line: 273, column: 4, scope: !690)
!701 = !DILocation(line: 275, column: 4, scope: !690)
!702 = !DILocation(line: 277, column: 7, scope: !703)
!703 = distinct !DILexicalBlock(scope: !655, file: !1, line: 277, column: 7)
!704 = !DILocation(line: 277, column: 14, scope: !703)
!705 = !DILocation(line: 277, column: 11, scope: !703)
!706 = !DILocation(line: 277, column: 7, scope: !655)
!707 = !DILocation(line: 278, column: 4, scope: !703)
!708 = !DILocation(line: 283, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !655, file: !1, line: 283, column: 7)
!710 = !DILocation(line: 283, column: 7, scope: !655)
!711 = !DILocation(line: 284, column: 8, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !1, line: 284, column: 8)
!713 = distinct !DILexicalBlock(scope: !709, file: !1, line: 283, column: 38)
!714 = !DILocation(line: 284, column: 37, scope: !712)
!715 = !DILocation(line: 284, column: 35, scope: !712)
!716 = !DILocation(line: 284, column: 42, scope: !712)
!717 = !DILocation(line: 284, column: 14, scope: !712)
!718 = !DILocation(line: 284, column: 12, scope: !712)
!719 = !DILocation(line: 284, column: 8, scope: !713)
!720 = !DILocation(line: 285, column: 8, scope: !712)
!721 = !DILocation(line: 285, column: 5, scope: !712)
!722 = !DILocation(line: 286, column: 3, scope: !713)
!723 = !DILocation(line: 287, column: 9, scope: !655)
!724 = !DILocation(line: 287, column: 15, scope: !655)
!725 = !DILocation(line: 287, column: 13, scope: !655)
!726 = !DILocation(line: 287, column: 22, scope: !655)
!727 = !DILocation(line: 287, column: 20, scope: !655)
!728 = !DILocation(line: 287, column: 7, scope: !655)
!729 = !DILocation(line: 288, column: 5, scope: !655)
!730 = !DILocation(line: 289, column: 4, scope: !655)
!731 = !DILocation(line: 290, column: 2, scope: !645)
!732 = distinct !{!732, !667, !731, !108}
!733 = !DILocation(line: 291, column: 7, scope: !645)
!734 = !DILocation(line: 291, column: 3, scope: !645)
!735 = !DILocation(line: 291, column: 5, scope: !645)
!736 = !DILocation(line: 292, column: 9, scope: !645)
!737 = !DILocation(line: 293, column: 1, scope: !645)
!738 = !DILocation(line: 292, column: 2, scope: !645)
!739 = distinct !DISubprogram(name: "_tolower", scope: !1, file: !1, line: 227, type: !740, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !742)
!740 = !DISubroutineType(types: !741)
!741 = !{!14, !68}
!742 = !{!743}
!743 = !DILocalVariable(name: "c", arg: 1, scope: !739, file: !1, line: 227, type: !68)
!744 = !DILocation(line: 227, column: 40, scope: !739)
!745 = !DILocation(line: 229, column: 9, scope: !739)
!746 = !DILocation(line: 229, column: 11, scope: !739)
!747 = !DILocation(line: 229, column: 2, scope: !739)
!748 = distinct !DISubprogram(name: "__div_u64", scope: !1, file: !1, line: 220, type: !749, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !757)
!749 = !DISubroutineType(types: !750)
!750 = !{!751, !751, !755}
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !752, line: 23, baseType: !753)
!752 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !754, line: 31, baseType: !223)
!754 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !752, line: 21, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !754, line: 27, baseType: !5)
!757 = !{!758, !759, !760}
!758 = !DILocalVariable(name: "dividend", arg: 1, scope: !748, file: !1, line: 220, type: !751)
!759 = !DILocalVariable(name: "divisor", arg: 2, scope: !748, file: !1, line: 220, type: !755)
!760 = !DILocalVariable(name: "remainder", scope: !748, file: !1, line: 222, type: !755)
!761 = !DILocation(line: 220, column: 33, scope: !748)
!762 = !DILocation(line: 220, column: 47, scope: !748)
!763 = !DILocation(line: 222, column: 2, scope: !748)
!764 = !DILocation(line: 222, column: 6, scope: !748)
!765 = !DILocation(line: 224, column: 23, scope: !748)
!766 = !DILocation(line: 224, column: 33, scope: !748)
!767 = !DILocation(line: 224, column: 9, scope: !748)
!768 = !DILocation(line: 225, column: 1, scope: !748)
!769 = !DILocation(line: 224, column: 2, scope: !748)
!770 = distinct !DISubprogram(name: "__div_u64_rem", scope: !1, file: !1, line: 201, type: !771, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !774)
!771 = !DISubroutineType(types: !772)
!772 = !{!751, !751, !755, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 32)
!774 = !{!775, !776, !777, !778, !786}
!775 = !DILocalVariable(name: "dividend", arg: 1, scope: !770, file: !1, line: 201, type: !751)
!776 = !DILocalVariable(name: "divisor", arg: 2, scope: !770, file: !1, line: 201, type: !755)
!777 = !DILocalVariable(name: "remainder", arg: 3, scope: !770, file: !1, line: 201, type: !773)
!778 = !DILocalVariable(name: "d", scope: !770, file: !1, line: 206, type: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !770, file: !1, line: 203, size: 64, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "v64", scope: !779, file: !1, line: 204, baseType: !751, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "v32", scope: !779, file: !1, line: 205, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 64, elements: !784)
!784 = !{!785}
!785 = !DISubrange(count: 2)
!786 = !DILocalVariable(name: "upper", scope: !770, file: !1, line: 207, type: !755)
!787 = !DILocation(line: 201, column: 37, scope: !770)
!788 = !DILocation(line: 201, column: 51, scope: !770)
!789 = !DILocation(line: 201, column: 65, scope: !770)
!790 = !DILocation(line: 203, column: 2, scope: !770)
!791 = !DILocation(line: 206, column: 4, scope: !770)
!792 = !DILocation(line: 206, column: 10, scope: !770)
!793 = !DILocation(line: 206, column: 8, scope: !770)
!794 = !DILocation(line: 207, column: 2, scope: !770)
!795 = !DILocation(line: 207, column: 6, scope: !770)
!796 = !DILocation(line: 209, column: 10, scope: !770)
!797 = !DILocation(line: 209, column: 8, scope: !770)
!798 = !DILocation(line: 210, column: 2, scope: !770)
!799 = !DILocation(line: 210, column: 11, scope: !770)
!800 = !DILocation(line: 211, column: 6, scope: !801)
!801 = distinct !DILexicalBlock(scope: !770, file: !1, line: 211, column: 6)
!802 = !DILocation(line: 211, column: 15, scope: !801)
!803 = !DILocation(line: 211, column: 12, scope: !801)
!804 = !DILocation(line: 211, column: 6, scope: !770)
!805 = !DILocation(line: 212, column: 14, scope: !806)
!806 = distinct !DILexicalBlock(scope: !801, file: !1, line: 211, column: 24)
!807 = !DILocation(line: 212, column: 22, scope: !806)
!808 = !DILocation(line: 212, column: 20, scope: !806)
!809 = !DILocation(line: 212, column: 3, scope: !806)
!810 = !DILocation(line: 212, column: 12, scope: !806)
!811 = !DILocation(line: 213, column: 12, scope: !806)
!812 = !DILocation(line: 213, column: 9, scope: !806)
!813 = !DILocation(line: 214, column: 2, scope: !806)
!814 = !DILocation(line: 215, column: 25, scope: !770)
!815 = !DILocation(line: 215, column: 43, scope: !770)
!816 = !DILocation(line: 216, column: 9, scope: !770)
!817 = !DILocation(line: 216, column: 24, scope: !770)
!818 = !DILocation(line: 216, column: 40, scope: !770)
!819 = !DILocation(line: 215, column: 2, scope: !770)
!820 = !{i64 4086}
!821 = !DILocation(line: 217, column: 11, scope: !770)
!822 = !DILocation(line: 218, column: 1, scope: !770)
!823 = !DILocation(line: 217, column: 2, scope: !770)
