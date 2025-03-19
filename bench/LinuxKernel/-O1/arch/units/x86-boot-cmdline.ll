; ModuleID = 'arch/x86/boot/cmdline.c'
source_filename = "arch/x86/boot/cmdline.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

; Function Attrs: nounwind
define dso_local i32 @__cmdline_find_option(i32 inreg noundef %cmdline_ptr, ptr inreg noundef %option, ptr inreg noundef %buffer, i32 noundef %bufsize) #0 !dbg !4 {
entry:
  %retval = alloca i32, align 4
  %cmdline_ptr.addr = alloca i32, align 4
  %option.addr = alloca ptr, align 4
  %buffer.addr = alloca ptr, align 4
  %bufsize.addr = alloca i32, align 4
  %cptr = alloca i32, align 4
  %c = alloca i8, align 1
  %len = alloca i32, align 4
  %opptr = alloca ptr, align 4
  %bufptr = alloca ptr, align 4
  %state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cmdline_ptr, ptr %cmdline_ptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmdline_ptr.addr, metadata !14, metadata !DIExpression()), !dbg !60
  store ptr %option, ptr %option.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !15, metadata !DIExpression()), !dbg !61
  store ptr %buffer, ptr %buffer.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !16, metadata !DIExpression()), !dbg !62
  store i32 %bufsize, ptr %bufsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bufsize.addr, metadata !17, metadata !DIExpression()), !dbg !63
  call void @llvm.lifetime.start.p0(i64 4, ptr %cptr) #4, !dbg !64
  call void @llvm.dbg.declare(metadata ptr %cptr, metadata !18, metadata !DIExpression()), !dbg !65
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #4, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %c, metadata !22, metadata !DIExpression()), !dbg !67
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #4, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %len, metadata !23, metadata !DIExpression()), !dbg !69
  store i32 -1, ptr %len, align 4, !dbg !69
  call void @llvm.lifetime.start.p0(i64 4, ptr %opptr) #4, !dbg !70
  call void @llvm.dbg.declare(metadata ptr %opptr, metadata !24, metadata !DIExpression()), !dbg !71
  store ptr null, ptr %opptr, align 4, !dbg !71
  call void @llvm.lifetime.start.p0(i64 4, ptr %bufptr) #4, !dbg !72
  call void @llvm.dbg.declare(metadata ptr %bufptr, metadata !25, metadata !DIExpression()), !dbg !73
  %0 = load ptr, ptr %buffer.addr, align 4, !dbg !74
  store ptr %0, ptr %bufptr, align 4, !dbg !73
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #4, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %state, metadata !26, metadata !DIExpression()), !dbg !76
  store i32 0, ptr %state, align 4, !dbg !76
  %1 = load i32, ptr %cmdline_ptr.addr, align 4, !dbg !77
  %tobool = icmp ne i32 %1, 0, !dbg !77
  br i1 %tobool, label %if.end, label %if.then, !dbg !79

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !80
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !80

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %cmdline_ptr.addr, align 4, !dbg !81
  %and = and i32 %2, 15, !dbg !82
  store i32 %and, ptr %cptr, align 4, !dbg !83
  %3 = load i32, ptr %cmdline_ptr.addr, align 4, !dbg !84
  %shr = lshr i32 %3, 4, !dbg !85
  %conv = trunc i32 %shr to i16, !dbg !84
  call void @set_fs(i16 inreg noundef zeroext %conv) #5, !dbg !86
  br label %while.cond, !dbg !87

while.cond:                                       ; preds = %sw.epilog, %if.end
  %4 = load i32, ptr %cptr, align 4, !dbg !88
  %cmp = icmp ult i32 %4, 65536, !dbg !89
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !90

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, ptr %cptr, align 4, !dbg !91
  %inc = add i32 %5, 1, !dbg !91
  store i32 %inc, ptr %cptr, align 4, !dbg !91
  %call = call zeroext i8 @rdfs8(i32 inreg noundef %5) #5, !dbg !92
  store i8 %call, ptr %c, align 1, !dbg !93
  %conv2 = sext i8 %call to i32, !dbg !94
  %tobool3 = icmp ne i32 %conv2, 0, !dbg !90
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ], !dbg !95
  br i1 %6, label %while.body, label %while.end, !dbg !87

while.body:                                       ; preds = %land.end
  %7 = load i32, ptr %state, align 4, !dbg !96
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb26
    i32 3, label %sw.bb31
  ], !dbg !98

sw.bb:                                            ; preds = %while.body
  %8 = load i8, ptr %c, align 1, !dbg !99
  %call4 = call i32 @myisspace(i8 inreg noundef zeroext %8) #5, !dbg !102
  %tobool5 = icmp ne i32 %call4, 0, !dbg !102
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !103

if.then6:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !104

if.end7:                                          ; preds = %sw.bb
  store i32 1, ptr %state, align 4, !dbg !105
  %9 = load ptr, ptr %option.addr, align 4, !dbg !106
  store ptr %9, ptr %opptr, align 4, !dbg !107
  br label %sw.bb8, !dbg !108

sw.bb8:                                           ; preds = %while.body, %if.end7
  %10 = load i8, ptr %c, align 1, !dbg !109
  %conv9 = sext i8 %10 to i32, !dbg !109
  %cmp10 = icmp eq i32 %conv9, 61, !dbg !111
  br i1 %cmp10, label %land.lhs.true, label %if.else, !dbg !112

land.lhs.true:                                    ; preds = %sw.bb8
  %11 = load ptr, ptr %opptr, align 4, !dbg !113
  %12 = load i8, ptr %11, align 1, !dbg !114
  %tobool12 = icmp ne i8 %12, 0, !dbg !114
  br i1 %tobool12, label %if.else, label %if.then13, !dbg !115

if.then13:                                        ; preds = %land.lhs.true
  store i32 0, ptr %len, align 4, !dbg !116
  %13 = load ptr, ptr %buffer.addr, align 4, !dbg !118
  store ptr %13, ptr %bufptr, align 4, !dbg !119
  store i32 3, ptr %state, align 4, !dbg !120
  br label %if.end25, !dbg !121

if.else:                                          ; preds = %land.lhs.true, %sw.bb8
  %14 = load i8, ptr %c, align 1, !dbg !122
  %call14 = call i32 @myisspace(i8 inreg noundef zeroext %14) #5, !dbg !124
  %tobool15 = icmp ne i32 %call14, 0, !dbg !124
  br i1 %tobool15, label %if.then16, label %if.else17, !dbg !125

if.then16:                                        ; preds = %if.else
  store i32 0, ptr %state, align 4, !dbg !126
  br label %if.end24, !dbg !128

if.else17:                                        ; preds = %if.else
  %15 = load i8, ptr %c, align 1, !dbg !129
  %conv18 = sext i8 %15 to i32, !dbg !129
  %16 = load ptr, ptr %opptr, align 4, !dbg !131
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1, !dbg !131
  store ptr %incdec.ptr, ptr %opptr, align 4, !dbg !131
  %17 = load i8, ptr %16, align 1, !dbg !132
  %conv19 = sext i8 %17 to i32, !dbg !132
  %cmp20 = icmp ne i32 %conv18, %conv19, !dbg !133
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !134

if.then22:                                        ; preds = %if.else17
  store i32 2, ptr %state, align 4, !dbg !135
  br label %if.end23, !dbg !137

if.end23:                                         ; preds = %if.then22, %if.else17
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then13
  br label %sw.epilog, !dbg !138

sw.bb26:                                          ; preds = %while.body
  %18 = load i8, ptr %c, align 1, !dbg !139
  %call27 = call i32 @myisspace(i8 inreg noundef zeroext %18) #5, !dbg !141
  %tobool28 = icmp ne i32 %call27, 0, !dbg !141
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !142

if.then29:                                        ; preds = %sw.bb26
  store i32 0, ptr %state, align 4, !dbg !143
  br label %if.end30, !dbg !144

if.end30:                                         ; preds = %if.then29, %sw.bb26
  br label %sw.epilog, !dbg !145

sw.bb31:                                          ; preds = %while.body
  %19 = load i8, ptr %c, align 1, !dbg !146
  %call32 = call i32 @myisspace(i8 inreg noundef zeroext %19) #5, !dbg !148
  %tobool33 = icmp ne i32 %call32, 0, !dbg !148
  br i1 %tobool33, label %if.then34, label %if.else35, !dbg !149

if.then34:                                        ; preds = %sw.bb31
  store i32 0, ptr %state, align 4, !dbg !150
  br label %if.end42, !dbg !152

if.else35:                                        ; preds = %sw.bb31
  %20 = load i32, ptr %len, align 4, !dbg !153
  %21 = load i32, ptr %bufsize.addr, align 4, !dbg !156
  %sub = sub nsw i32 %21, 1, !dbg !157
  %cmp36 = icmp slt i32 %20, %sub, !dbg !158
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !159

if.then38:                                        ; preds = %if.else35
  %22 = load i8, ptr %c, align 1, !dbg !160
  %23 = load ptr, ptr %bufptr, align 4, !dbg !161
  %incdec.ptr39 = getelementptr inbounds i8, ptr %23, i32 1, !dbg !161
  store ptr %incdec.ptr39, ptr %bufptr, align 4, !dbg !161
  store i8 %22, ptr %23, align 1, !dbg !162
  br label %if.end40, !dbg !163

if.end40:                                         ; preds = %if.then38, %if.else35
  %24 = load i32, ptr %len, align 4, !dbg !164
  %inc41 = add nsw i32 %24, 1, !dbg !164
  store i32 %inc41, ptr %len, align 4, !dbg !164
  br label %if.end42

if.end42:                                         ; preds = %if.end40, %if.then34
  br label %sw.epilog, !dbg !165

sw.epilog:                                        ; preds = %while.body, %if.end42, %if.end30, %if.end25, %if.then6
  br label %while.cond, !dbg !87, !llvm.loop !166

while.end:                                        ; preds = %land.end
  %25 = load i32, ptr %bufsize.addr, align 4, !dbg !170
  %tobool43 = icmp ne i32 %25, 0, !dbg !170
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !172

if.then44:                                        ; preds = %while.end
  %26 = load ptr, ptr %bufptr, align 4, !dbg !173
  store i8 0, ptr %26, align 1, !dbg !174
  br label %if.end45, !dbg !175

if.end45:                                         ; preds = %if.then44, %while.end
  %27 = load i32, ptr %len, align 4, !dbg !176
  store i32 %27, ptr %retval, align 4, !dbg !177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !177

cleanup:                                          ; preds = %if.end45, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #4, !dbg !178
  call void @llvm.lifetime.end.p0(i64 4, ptr %bufptr) #4, !dbg !178
  call void @llvm.lifetime.end.p0(i64 4, ptr %opptr) #4, !dbg !178
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #4, !dbg !178
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #4, !dbg !178
  call void @llvm.lifetime.end.p0(i64 4, ptr %cptr) #4, !dbg !178
  %28 = load i32, ptr %retval, align 4, !dbg !178
  ret i32 %28, !dbg !178
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind
define internal void @set_fs(i16 inreg noundef zeroext %seg) #3 !dbg !179 {
entry:
  %seg.addr = alloca i16, align 2
  store i16 %seg, ptr %seg.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %seg.addr, metadata !186, metadata !DIExpression()), !dbg !187
  %0 = load i16, ptr %seg.addr, align 2, !dbg !188
  call void asm sideeffect "movw $0,%fs", "rm,~{dirflag},~{fpsr},~{flags}"(i16 %0) #4, !dbg !189, !srcloc !190
  ret void, !dbg !191
}

; Function Attrs: inlinehint nounwind
define internal zeroext i8 @rdfs8(i32 inreg noundef %addr) #3 !dbg !192 {
entry:
  %addr.addr = alloca i32, align 4
  %ptr = alloca ptr, align 4
  %__ptr = alloca i32, align 4
  %tmp = alloca ptr, align 4
  %v = alloca i8, align 1
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !196, metadata !DIExpression()), !dbg !201
  call void @llvm.lifetime.start.p0(i64 4, ptr %ptr) #4, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !197, metadata !DIExpression()), !dbg !203
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ptr) #4, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !198, metadata !DIExpression()), !dbg !204
  %0 = load i32, ptr %addr.addr, align 4, !dbg !204
  %1 = inttoptr i32 %0 to ptr, !dbg !204
  %2 = ptrtoint ptr %1 to i32, !dbg !204
  store i32 %2, ptr %__ptr, align 4, !dbg !204
  %3 = load i32, ptr %__ptr, align 4, !dbg !204
  %add = add i32 %3, 0, !dbg !204
  %4 = inttoptr i32 %add to ptr, !dbg !204
  store ptr %4, ptr %tmp, align 4, !dbg !204
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ptr) #4, !dbg !205
  %5 = load ptr, ptr %tmp, align 4, !dbg !204
  store ptr %5, ptr %ptr, align 4, !dbg !203
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #4, !dbg !206
  call void @llvm.dbg.declare(metadata ptr %v, metadata !200, metadata !DIExpression()), !dbg !207
  %6 = load ptr, ptr %ptr, align 4, !dbg !208
  %7 = call i8 asm sideeffect "movb %fs:$1,$0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %6) #4, !dbg !209, !srcloc !210
  store i8 %7, ptr %v, align 1, !dbg !209
  %8 = load i8, ptr %v, align 1, !dbg !211
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #4, !dbg !212
  call void @llvm.lifetime.end.p0(i64 4, ptr %ptr) #4, !dbg !212
  ret i8 %8, !dbg !213
}

; Function Attrs: inlinehint nounwind
define internal i32 @myisspace(i8 inreg noundef zeroext %c) #3 !dbg !214 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = load i8, ptr %c.addr, align 1, !dbg !220
  %conv = zext i8 %0 to i32, !dbg !220
  %cmp = icmp sle i32 %conv, 32, !dbg !221
  %conv1 = zext i1 %cmp to i32, !dbg !221
  ret i32 %conv1, !dbg !222
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define dso_local i32 @__cmdline_find_option_bool(i32 inreg noundef %cmdline_ptr, ptr inreg noundef %option) #0 !dbg !33 {
entry:
  %retval = alloca i32, align 4
  %cmdline_ptr.addr = alloca i32, align 4
  %option.addr = alloca ptr, align 4
  %cptr = alloca i32, align 4
  %c = alloca i8, align 1
  %pos = alloca i32, align 4
  %wstart = alloca i32, align 4
  %opptr = alloca ptr, align 4
  %state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cmdline_ptr, ptr %cmdline_ptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmdline_ptr.addr, metadata !37, metadata !DIExpression()), !dbg !223
  store ptr %option, ptr %option.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !38, metadata !DIExpression()), !dbg !224
  call void @llvm.lifetime.start.p0(i64 4, ptr %cptr) #4, !dbg !225
  call void @llvm.dbg.declare(metadata ptr %cptr, metadata !39, metadata !DIExpression()), !dbg !226
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #4, !dbg !227
  call void @llvm.dbg.declare(metadata ptr %c, metadata !40, metadata !DIExpression()), !dbg !228
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #4, !dbg !229
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !41, metadata !DIExpression()), !dbg !230
  store i32 0, ptr %pos, align 4, !dbg !230
  call void @llvm.lifetime.start.p0(i64 4, ptr %wstart) #4, !dbg !229
  call void @llvm.dbg.declare(metadata ptr %wstart, metadata !42, metadata !DIExpression()), !dbg !231
  store i32 0, ptr %wstart, align 4, !dbg !231
  call void @llvm.lifetime.start.p0(i64 4, ptr %opptr) #4, !dbg !232
  call void @llvm.dbg.declare(metadata ptr %opptr, metadata !43, metadata !DIExpression()), !dbg !233
  store ptr null, ptr %opptr, align 4, !dbg !233
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #4, !dbg !234
  call void @llvm.dbg.declare(metadata ptr %state, metadata !44, metadata !DIExpression()), !dbg !235
  store i32 0, ptr %state, align 4, !dbg !235
  %0 = load i32, ptr %cmdline_ptr.addr, align 4, !dbg !236
  %tobool = icmp ne i32 %0, 0, !dbg !236
  br i1 %tobool, label %if.end, label %if.then, !dbg !238

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !239

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %cmdline_ptr.addr, align 4, !dbg !240
  %and = and i32 %1, 15, !dbg !241
  store i32 %and, ptr %cptr, align 4, !dbg !242
  %2 = load i32, ptr %cmdline_ptr.addr, align 4, !dbg !243
  %shr = lshr i32 %2, 4, !dbg !244
  %conv = trunc i32 %shr to i16, !dbg !243
  call void @set_fs(i16 inreg noundef zeroext %conv) #5, !dbg !245
  br label %while.cond, !dbg !246

while.cond:                                       ; preds = %sw.epilog, %if.end
  %3 = load i32, ptr %cptr, align 4, !dbg !247
  %cmp = icmp ult i32 %3, 65536, !dbg !248
  br i1 %cmp, label %while.body, label %while.end, !dbg !246

while.body:                                       ; preds = %while.cond
  %4 = load i32, ptr %cptr, align 4, !dbg !249
  %inc = add i32 %4, 1, !dbg !249
  store i32 %inc, ptr %cptr, align 4, !dbg !249
  %call = call zeroext i8 @rdfs8(i32 inreg noundef %4) #5, !dbg !251
  store i8 %call, ptr %c, align 1, !dbg !252
  %5 = load i32, ptr %pos, align 4, !dbg !253
  %inc2 = add nsw i32 %5, 1, !dbg !253
  store i32 %inc2, ptr %pos, align 4, !dbg !253
  %6 = load i32, ptr %state, align 4, !dbg !254
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb31
  ], !dbg !255

sw.bb:                                            ; preds = %while.body
  %7 = load i8, ptr %c, align 1, !dbg !256
  %tobool3 = icmp ne i8 %7, 0, !dbg !256
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !259

if.then4:                                         ; preds = %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !260
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !260

if.else:                                          ; preds = %sw.bb
  %8 = load i8, ptr %c, align 1, !dbg !261
  %call5 = call i32 @myisspace(i8 inreg noundef zeroext %8) #5, !dbg !263
  %tobool6 = icmp ne i32 %call5, 0, !dbg !263
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !264

if.then7:                                         ; preds = %if.else
  br label %sw.epilog, !dbg !265

if.end8:                                          ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8
  store i32 1, ptr %state, align 4, !dbg !266
  %9 = load ptr, ptr %option.addr, align 4, !dbg !267
  store ptr %9, ptr %opptr, align 4, !dbg !268
  %10 = load i32, ptr %pos, align 4, !dbg !269
  store i32 %10, ptr %wstart, align 4, !dbg !270
  br label %sw.bb10, !dbg !271

sw.bb10:                                          ; preds = %while.body, %if.end9
  %11 = load ptr, ptr %opptr, align 4, !dbg !272
  %12 = load i8, ptr %11, align 1, !dbg !274
  %tobool11 = icmp ne i8 %12, 0, !dbg !274
  br i1 %tobool11, label %if.else19, label %if.then12, !dbg !275

if.then12:                                        ; preds = %sw.bb10
  %13 = load i8, ptr %c, align 1, !dbg !276
  %tobool13 = icmp ne i8 %13, 0, !dbg !276
  br i1 %tobool13, label %lor.lhs.false, label %if.then16, !dbg !278

lor.lhs.false:                                    ; preds = %if.then12
  %14 = load i8, ptr %c, align 1, !dbg !279
  %call14 = call i32 @myisspace(i8 inreg noundef zeroext %14) #5, !dbg !280
  %tobool15 = icmp ne i32 %call14, 0, !dbg !280
  br i1 %tobool15, label %if.then16, label %if.else17, !dbg !281

if.then16:                                        ; preds = %lor.lhs.false, %if.then12
  %15 = load i32, ptr %wstart, align 4, !dbg !282
  store i32 %15, ptr %retval, align 4, !dbg !283
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !283

if.else17:                                        ; preds = %lor.lhs.false
  store i32 2, ptr %state, align 4, !dbg !284
  br label %if.end18

if.end18:                                         ; preds = %if.else17
  br label %if.end30, !dbg !285

if.else19:                                        ; preds = %sw.bb10
  %16 = load i8, ptr %c, align 1, !dbg !286
  %tobool20 = icmp ne i8 %16, 0, !dbg !286
  br i1 %tobool20, label %if.else22, label %if.then21, !dbg !288

if.then21:                                        ; preds = %if.else19
  store i32 0, ptr %retval, align 4, !dbg !289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !289

if.else22:                                        ; preds = %if.else19
  %17 = load i8, ptr %c, align 1, !dbg !290
  %conv23 = sext i8 %17 to i32, !dbg !290
  %18 = load ptr, ptr %opptr, align 4, !dbg !292
  %incdec.ptr = getelementptr inbounds i8, ptr %18, i32 1, !dbg !292
  store ptr %incdec.ptr, ptr %opptr, align 4, !dbg !292
  %19 = load i8, ptr %18, align 1, !dbg !293
  %conv24 = sext i8 %19 to i32, !dbg !293
  %cmp25 = icmp ne i32 %conv23, %conv24, !dbg !294
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !295

if.then27:                                        ; preds = %if.else22
  store i32 2, ptr %state, align 4, !dbg !296
  br label %if.end28, !dbg !297

if.end28:                                         ; preds = %if.then27, %if.else22
  br label %if.end29

if.end29:                                         ; preds = %if.end28
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end18
  br label %sw.epilog, !dbg !298

sw.bb31:                                          ; preds = %while.body
  %20 = load i8, ptr %c, align 1, !dbg !299
  %tobool32 = icmp ne i8 %20, 0, !dbg !299
  br i1 %tobool32, label %if.else34, label %if.then33, !dbg !301

if.then33:                                        ; preds = %sw.bb31
  store i32 0, ptr %retval, align 4, !dbg !302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !302

if.else34:                                        ; preds = %sw.bb31
  %21 = load i8, ptr %c, align 1, !dbg !303
  %call35 = call i32 @myisspace(i8 inreg noundef zeroext %21) #5, !dbg !305
  %tobool36 = icmp ne i32 %call35, 0, !dbg !305
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !306

if.then37:                                        ; preds = %if.else34
  store i32 0, ptr %state, align 4, !dbg !307
  br label %if.end38, !dbg !308

if.end38:                                         ; preds = %if.then37, %if.else34
  br label %if.end39

if.end39:                                         ; preds = %if.end38
  br label %sw.epilog, !dbg !309

sw.epilog:                                        ; preds = %while.body, %if.end39, %if.end30, %if.then7
  br label %while.cond, !dbg !246, !llvm.loop !310

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !312

cleanup:                                          ; preds = %while.end, %if.then33, %if.then21, %if.then16, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #4, !dbg !313
  call void @llvm.lifetime.end.p0(i64 4, ptr %opptr) #4, !dbg !313
  call void @llvm.lifetime.end.p0(i64 4, ptr %wstart) #4, !dbg !313
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #4, !dbg !313
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #4, !dbg !313
  call void @llvm.lifetime.end.p0(i64 4, ptr %cptr) #4, !dbg !313
  %22 = load i32, ptr %retval, align 4, !dbg !313
  ret i32 %22, !dbg !313
}

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.cmdline.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/cmdline\22 -D KBUILD_BASENAME=\22cmdline\22 -D KBUILD_MODNAME=\22cmdline\22 -D __KBUILD_MODNAME=kmod_cmdline -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/cmdline.ll arch/x86/boot/cmdline.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !46, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/boot/cmdline.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f77e640c987322df1530c050255f7d5")
!2 = !{!3, !32}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !4, file: !1, line: 35, baseType: !21, size: 32, elements: !27)
!4 = distinct !DISubprogram(name: "__cmdline_find_option", scope: !1, file: !1, line: 28, type: !5, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !8, !9, !12, !7}
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 32)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 32)
!13 = !{!14, !15, !16, !17, !18, !22, !23, !24, !25, !26}
!14 = !DILocalVariable(name: "cmdline_ptr", arg: 1, scope: !4, file: !1, line: 28, type: !8)
!15 = !DILocalVariable(name: "option", arg: 2, scope: !4, file: !1, line: 28, type: !9)
!16 = !DILocalVariable(name: "buffer", arg: 3, scope: !4, file: !1, line: 28, type: !12)
!17 = !DILocalVariable(name: "bufsize", arg: 4, scope: !4, file: !1, line: 28, type: !7)
!18 = !DILocalVariable(name: "cptr", scope: !4, file: !1, line: 30, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_t", file: !20, line: 76, baseType: !21)
!20 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "c", scope: !4, file: !1, line: 31, type: !11)
!23 = !DILocalVariable(name: "len", scope: !4, file: !1, line: 32, type: !7)
!24 = !DILocalVariable(name: "opptr", scope: !4, file: !1, line: 33, type: !9)
!25 = !DILocalVariable(name: "bufptr", scope: !4, file: !1, line: 34, type: !12)
!26 = !DILocalVariable(name: "state", scope: !4, file: !1, line: 40, type: !3)
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "st_wordstart", value: 0)
!29 = !DIEnumerator(name: "st_wordcmp", value: 1)
!30 = !DIEnumerator(name: "st_wordskip", value: 2)
!31 = !DIEnumerator(name: "st_bufcpy", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !33, file: !1, line: 106, baseType: !21, size: 32, elements: !45)
!33 = distinct !DISubprogram(name: "__cmdline_find_option_bool", scope: !1, file: !1, line: 100, type: !34, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{!7, !8, !9}
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44}
!37 = !DILocalVariable(name: "cmdline_ptr", arg: 1, scope: !33, file: !1, line: 100, type: !8)
!38 = !DILocalVariable(name: "option", arg: 2, scope: !33, file: !1, line: 100, type: !9)
!39 = !DILocalVariable(name: "cptr", scope: !33, file: !1, line: 102, type: !19)
!40 = !DILocalVariable(name: "c", scope: !33, file: !1, line: 103, type: !11)
!41 = !DILocalVariable(name: "pos", scope: !33, file: !1, line: 104, type: !7)
!42 = !DILocalVariable(name: "wstart", scope: !33, file: !1, line: 104, type: !7)
!43 = !DILocalVariable(name: "opptr", scope: !33, file: !1, line: 105, type: !9)
!44 = !DILocalVariable(name: "state", scope: !33, file: !1, line: 110, type: !32)
!45 = !{!28, !29, !30}
!46 = !{!47, !8, !53}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !49, line: 17, baseType: !50)
!49 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !51, line: 21, baseType: !52)
!51 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!52 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!54 = !{i32 1, !"NumRegisterParameters", i32 3}
!55 = !{i32 7, !"Dwarf Version", i32 5}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = !{i32 1, !"override-stack-alignment", i32 4}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = !DILocation(line: 28, column: 41, scope: !4)
!61 = !DILocation(line: 28, column: 66, scope: !4)
!62 = !DILocation(line: 28, column: 80, scope: !4)
!63 = !DILocation(line: 28, column: 92, scope: !4)
!64 = !DILocation(line: 30, column: 2, scope: !4)
!65 = !DILocation(line: 30, column: 9, scope: !4)
!66 = !DILocation(line: 31, column: 2, scope: !4)
!67 = !DILocation(line: 31, column: 7, scope: !4)
!68 = !DILocation(line: 32, column: 2, scope: !4)
!69 = !DILocation(line: 32, column: 6, scope: !4)
!70 = !DILocation(line: 33, column: 2, scope: !4)
!71 = !DILocation(line: 33, column: 14, scope: !4)
!72 = !DILocation(line: 34, column: 2, scope: !4)
!73 = !DILocation(line: 34, column: 8, scope: !4)
!74 = !DILocation(line: 34, column: 17, scope: !4)
!75 = !DILocation(line: 35, column: 2, scope: !4)
!76 = !DILocation(line: 40, column: 4, scope: !4)
!77 = !DILocation(line: 42, column: 7, scope: !78)
!78 = distinct !DILexicalBlock(scope: !4, file: !1, line: 42, column: 6)
!79 = !DILocation(line: 42, column: 6, scope: !4)
!80 = !DILocation(line: 43, column: 3, scope: !78)
!81 = !DILocation(line: 45, column: 9, scope: !4)
!82 = !DILocation(line: 45, column: 21, scope: !4)
!83 = !DILocation(line: 45, column: 7, scope: !4)
!84 = !DILocation(line: 46, column: 9, scope: !4)
!85 = !DILocation(line: 46, column: 21, scope: !4)
!86 = !DILocation(line: 46, column: 2, scope: !4)
!87 = !DILocation(line: 48, column: 2, scope: !4)
!88 = !DILocation(line: 48, column: 9, scope: !4)
!89 = !DILocation(line: 48, column: 14, scope: !4)
!90 = !DILocation(line: 48, column: 24, scope: !4)
!91 = !DILocation(line: 48, column: 42, scope: !4)
!92 = !DILocation(line: 48, column: 32, scope: !4)
!93 = !DILocation(line: 48, column: 30, scope: !4)
!94 = !DILocation(line: 48, column: 27, scope: !4)
!95 = !DILocation(line: 0, scope: !4)
!96 = !DILocation(line: 49, column: 11, scope: !97)
!97 = distinct !DILexicalBlock(scope: !4, file: !1, line: 48, column: 48)
!98 = !DILocation(line: 49, column: 3, scope: !97)
!99 = !DILocation(line: 51, column: 18, scope: !100)
!100 = distinct !DILexicalBlock(scope: !101, file: !1, line: 51, column: 8)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 49, column: 18)
!102 = !DILocation(line: 51, column: 8, scope: !100)
!103 = !DILocation(line: 51, column: 8, scope: !101)
!104 = !DILocation(line: 52, column: 5, scope: !100)
!105 = !DILocation(line: 55, column: 10, scope: !101)
!106 = !DILocation(line: 56, column: 12, scope: !101)
!107 = !DILocation(line: 56, column: 10, scope: !101)
!108 = !DILocation(line: 56, column: 4, scope: !101)
!109 = !DILocation(line: 60, column: 8, scope: !110)
!110 = distinct !DILexicalBlock(scope: !101, file: !1, line: 60, column: 8)
!111 = !DILocation(line: 60, column: 10, scope: !110)
!112 = !DILocation(line: 60, column: 17, scope: !110)
!113 = !DILocation(line: 60, column: 22, scope: !110)
!114 = !DILocation(line: 60, column: 21, scope: !110)
!115 = !DILocation(line: 60, column: 8, scope: !101)
!116 = !DILocation(line: 61, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !110, file: !1, line: 60, column: 29)
!118 = !DILocation(line: 62, column: 14, scope: !117)
!119 = !DILocation(line: 62, column: 12, scope: !117)
!120 = !DILocation(line: 63, column: 11, scope: !117)
!121 = !DILocation(line: 64, column: 4, scope: !117)
!122 = !DILocation(line: 64, column: 25, scope: !123)
!123 = distinct !DILexicalBlock(scope: !110, file: !1, line: 64, column: 15)
!124 = !DILocation(line: 64, column: 15, scope: !123)
!125 = !DILocation(line: 64, column: 15, scope: !110)
!126 = !DILocation(line: 65, column: 11, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 64, column: 29)
!128 = !DILocation(line: 66, column: 4, scope: !127)
!129 = !DILocation(line: 66, column: 15, scope: !130)
!130 = distinct !DILexicalBlock(scope: !123, file: !1, line: 66, column: 15)
!131 = !DILocation(line: 66, column: 26, scope: !130)
!132 = !DILocation(line: 66, column: 20, scope: !130)
!133 = !DILocation(line: 66, column: 17, scope: !130)
!134 = !DILocation(line: 66, column: 15, scope: !123)
!135 = !DILocation(line: 67, column: 11, scope: !136)
!136 = distinct !DILexicalBlock(scope: !130, file: !1, line: 66, column: 30)
!137 = !DILocation(line: 68, column: 4, scope: !136)
!138 = !DILocation(line: 69, column: 4, scope: !101)
!139 = !DILocation(line: 72, column: 18, scope: !140)
!140 = distinct !DILexicalBlock(scope: !101, file: !1, line: 72, column: 8)
!141 = !DILocation(line: 72, column: 8, scope: !140)
!142 = !DILocation(line: 72, column: 8, scope: !101)
!143 = !DILocation(line: 73, column: 11, scope: !140)
!144 = !DILocation(line: 73, column: 5, scope: !140)
!145 = !DILocation(line: 74, column: 4, scope: !101)
!146 = !DILocation(line: 77, column: 18, scope: !147)
!147 = distinct !DILexicalBlock(scope: !101, file: !1, line: 77, column: 8)
!148 = !DILocation(line: 77, column: 8, scope: !147)
!149 = !DILocation(line: 77, column: 8, scope: !101)
!150 = !DILocation(line: 78, column: 11, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 77, column: 22)
!152 = !DILocation(line: 79, column: 4, scope: !151)
!153 = !DILocation(line: 80, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !155, file: !1, line: 80, column: 9)
!155 = distinct !DILexicalBlock(scope: !147, file: !1, line: 79, column: 11)
!156 = !DILocation(line: 80, column: 15, scope: !154)
!157 = !DILocation(line: 80, column: 22, scope: !154)
!158 = !DILocation(line: 80, column: 13, scope: !154)
!159 = !DILocation(line: 80, column: 9, scope: !155)
!160 = !DILocation(line: 81, column: 18, scope: !154)
!161 = !DILocation(line: 81, column: 13, scope: !154)
!162 = !DILocation(line: 81, column: 16, scope: !154)
!163 = !DILocation(line: 81, column: 6, scope: !154)
!164 = !DILocation(line: 82, column: 8, scope: !155)
!165 = !DILocation(line: 84, column: 4, scope: !101)
!166 = distinct !{!166, !87, !167, !168, !169}
!167 = !DILocation(line: 86, column: 2, scope: !4)
!168 = !{!"llvm.loop.mustprogress"}
!169 = !{!"llvm.loop.unroll.disable"}
!170 = !DILocation(line: 88, column: 6, scope: !171)
!171 = distinct !DILexicalBlock(scope: !4, file: !1, line: 88, column: 6)
!172 = !DILocation(line: 88, column: 6, scope: !4)
!173 = !DILocation(line: 89, column: 4, scope: !171)
!174 = !DILocation(line: 89, column: 11, scope: !171)
!175 = !DILocation(line: 89, column: 3, scope: !171)
!176 = !DILocation(line: 91, column: 9, scope: !4)
!177 = !DILocation(line: 91, column: 2, scope: !4)
!178 = !DILocation(line: 92, column: 1, scope: !4)
!179 = distinct !DISubprogram(name: "set_fs", scope: !20, file: !20, line: 54, type: !180, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !185)
!180 = !DISubroutineType(types: !181)
!181 = !{null, !182}
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !49, line: 19, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !51, line: 24, baseType: !184)
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !{!186}
!186 = !DILocalVariable(name: "seg", arg: 1, scope: !179, file: !20, line: 54, type: !182)
!187 = !DILocation(line: 54, column: 31, scope: !179)
!188 = !DILocation(line: 56, column: 40, scope: !179)
!189 = !DILocation(line: 56, column: 2, scope: !179)
!190 = !{i64 115360}
!191 = !DILocation(line: 57, column: 1, scope: !179)
!192 = distinct !DISubprogram(name: "rdfs8", scope: !20, file: !20, line: 78, type: !193, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !195)
!193 = !DISubroutineType(types: !194)
!194 = !{!48, !19}
!195 = !{!196, !197, !198, !200}
!196 = !DILocalVariable(name: "addr", arg: 1, scope: !192, file: !20, line: 78, type: !19)
!197 = !DILocalVariable(name: "ptr", scope: !192, file: !20, line: 80, type: !47)
!198 = !DILocalVariable(name: "__ptr", scope: !199, file: !20, line: 80, type: !8)
!199 = distinct !DILexicalBlock(scope: !192, file: !20, line: 80, column: 18)
!200 = !DILocalVariable(name: "v", scope: !192, file: !20, line: 81, type: !48)
!201 = !DILocation(line: 78, column: 31, scope: !192)
!202 = !DILocation(line: 80, column: 2, scope: !192)
!203 = !DILocation(line: 80, column: 6, scope: !192)
!204 = !DILocation(line: 80, column: 18, scope: !199)
!205 = !DILocation(line: 80, column: 18, scope: !192)
!206 = !DILocation(line: 81, column: 2, scope: !192)
!207 = !DILocation(line: 81, column: 5, scope: !192)
!208 = !DILocation(line: 82, column: 52, scope: !192)
!209 = !DILocation(line: 82, column: 2, scope: !192)
!210 = !{i64 115809}
!211 = !DILocation(line: 83, column: 9, scope: !192)
!212 = !DILocation(line: 84, column: 1, scope: !192)
!213 = !DILocation(line: 83, column: 2, scope: !192)
!214 = distinct !DISubprogram(name: "myisspace", scope: !1, file: !1, line: 15, type: !215, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !217)
!215 = !DISubroutineType(types: !216)
!216 = !{!7, !48}
!217 = !{!218}
!218 = !DILocalVariable(name: "c", arg: 1, scope: !214, file: !1, line: 15, type: !48)
!219 = !DILocation(line: 15, column: 32, scope: !214)
!220 = !DILocation(line: 17, column: 9, scope: !214)
!221 = !DILocation(line: 17, column: 11, scope: !214)
!222 = !DILocation(line: 17, column: 2, scope: !214)
!223 = !DILocation(line: 100, column: 46, scope: !33)
!224 = !DILocation(line: 100, column: 71, scope: !33)
!225 = !DILocation(line: 102, column: 2, scope: !33)
!226 = !DILocation(line: 102, column: 9, scope: !33)
!227 = !DILocation(line: 103, column: 2, scope: !33)
!228 = !DILocation(line: 103, column: 7, scope: !33)
!229 = !DILocation(line: 104, column: 2, scope: !33)
!230 = !DILocation(line: 104, column: 6, scope: !33)
!231 = !DILocation(line: 104, column: 15, scope: !33)
!232 = !DILocation(line: 105, column: 2, scope: !33)
!233 = !DILocation(line: 105, column: 14, scope: !33)
!234 = !DILocation(line: 106, column: 2, scope: !33)
!235 = !DILocation(line: 110, column: 4, scope: !33)
!236 = !DILocation(line: 112, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !33, file: !1, line: 112, column: 6)
!238 = !DILocation(line: 112, column: 6, scope: !33)
!239 = !DILocation(line: 113, column: 3, scope: !237)
!240 = !DILocation(line: 115, column: 9, scope: !33)
!241 = !DILocation(line: 115, column: 21, scope: !33)
!242 = !DILocation(line: 115, column: 7, scope: !33)
!243 = !DILocation(line: 116, column: 9, scope: !33)
!244 = !DILocation(line: 116, column: 21, scope: !33)
!245 = !DILocation(line: 116, column: 2, scope: !33)
!246 = !DILocation(line: 118, column: 2, scope: !33)
!247 = !DILocation(line: 118, column: 9, scope: !33)
!248 = !DILocation(line: 118, column: 14, scope: !33)
!249 = !DILocation(line: 119, column: 17, scope: !250)
!250 = distinct !DILexicalBlock(scope: !33, file: !1, line: 118, column: 25)
!251 = !DILocation(line: 119, column: 7, scope: !250)
!252 = !DILocation(line: 119, column: 5, scope: !250)
!253 = !DILocation(line: 120, column: 6, scope: !250)
!254 = !DILocation(line: 122, column: 11, scope: !250)
!255 = !DILocation(line: 122, column: 3, scope: !250)
!256 = !DILocation(line: 124, column: 9, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 124, column: 8)
!258 = distinct !DILexicalBlock(scope: !250, file: !1, line: 122, column: 18)
!259 = !DILocation(line: 124, column: 8, scope: !258)
!260 = !DILocation(line: 125, column: 5, scope: !257)
!261 = !DILocation(line: 126, column: 23, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !1, line: 126, column: 13)
!263 = !DILocation(line: 126, column: 13, scope: !262)
!264 = !DILocation(line: 126, column: 13, scope: !257)
!265 = !DILocation(line: 127, column: 5, scope: !262)
!266 = !DILocation(line: 129, column: 10, scope: !258)
!267 = !DILocation(line: 130, column: 12, scope: !258)
!268 = !DILocation(line: 130, column: 10, scope: !258)
!269 = !DILocation(line: 131, column: 13, scope: !258)
!270 = !DILocation(line: 131, column: 11, scope: !258)
!271 = !DILocation(line: 131, column: 4, scope: !258)
!272 = !DILocation(line: 135, column: 10, scope: !273)
!273 = distinct !DILexicalBlock(scope: !258, file: !1, line: 135, column: 8)
!274 = !DILocation(line: 135, column: 9, scope: !273)
!275 = !DILocation(line: 135, column: 8, scope: !258)
!276 = !DILocation(line: 136, column: 10, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !1, line: 136, column: 9)
!278 = !DILocation(line: 136, column: 12, scope: !277)
!279 = !DILocation(line: 136, column: 25, scope: !277)
!280 = !DILocation(line: 136, column: 15, scope: !277)
!281 = !DILocation(line: 136, column: 9, scope: !273)
!282 = !DILocation(line: 137, column: 13, scope: !277)
!283 = !DILocation(line: 137, column: 6, scope: !277)
!284 = !DILocation(line: 139, column: 12, scope: !277)
!285 = !DILocation(line: 136, column: 26, scope: !277)
!286 = !DILocation(line: 140, column: 14, scope: !287)
!287 = distinct !DILexicalBlock(scope: !273, file: !1, line: 140, column: 13)
!288 = !DILocation(line: 140, column: 13, scope: !273)
!289 = !DILocation(line: 141, column: 5, scope: !287)
!290 = !DILocation(line: 142, column: 13, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !1, line: 142, column: 13)
!292 = !DILocation(line: 142, column: 24, scope: !291)
!293 = !DILocation(line: 142, column: 18, scope: !291)
!294 = !DILocation(line: 142, column: 15, scope: !291)
!295 = !DILocation(line: 142, column: 13, scope: !287)
!296 = !DILocation(line: 143, column: 11, scope: !291)
!297 = !DILocation(line: 143, column: 5, scope: !291)
!298 = !DILocation(line: 144, column: 4, scope: !258)
!299 = !DILocation(line: 147, column: 9, scope: !300)
!300 = distinct !DILexicalBlock(scope: !258, file: !1, line: 147, column: 8)
!301 = !DILocation(line: 147, column: 8, scope: !258)
!302 = !DILocation(line: 148, column: 5, scope: !300)
!303 = !DILocation(line: 149, column: 23, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !1, line: 149, column: 13)
!305 = !DILocation(line: 149, column: 13, scope: !304)
!306 = !DILocation(line: 149, column: 13, scope: !300)
!307 = !DILocation(line: 150, column: 11, scope: !304)
!308 = !DILocation(line: 150, column: 5, scope: !304)
!309 = !DILocation(line: 151, column: 4, scope: !258)
!310 = distinct !{!310, !246, !311, !168, !169}
!311 = !DILocation(line: 153, column: 2, scope: !33)
!312 = !DILocation(line: 155, column: 2, scope: !33)
!313 = !DILocation(line: 156, column: 1, scope: !33)
