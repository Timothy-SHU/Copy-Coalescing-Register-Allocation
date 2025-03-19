; ModuleID = 'arch/x86/lib/cmdline.c'
source_filename = "arch/x86/lib/cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cmdline_find_option_bool(ptr noundef %cmdline, ptr noundef %option) #0 align 16 !dbg !54 {
entry:
  %cmdline.addr = alloca ptr, align 8
  %option.addr = alloca ptr, align 8
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !58, metadata !DIExpression()), !dbg !60
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !59, metadata !DIExpression()), !dbg !61
  %0 = load ptr, ptr %cmdline.addr, align 8, !dbg !62
  %1 = load ptr, ptr %option.addr, align 8, !dbg !63
  %call = call i32 @__cmdline_find_option_bool(ptr noundef %0, i32 noundef 2048, ptr noundef %1) #4, !dbg !64
  ret i32 %call, !dbg !65
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__cmdline_find_option_bool(ptr noundef %cmdline, i32 noundef %max_cmdline_size, ptr noundef %option) #0 align 16 !dbg !4 {
entry:
  %retval = alloca i32, align 4
  %cmdline.addr = alloca ptr, align 8
  %max_cmdline_size.addr = alloca i32, align 4
  %option.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %pos = alloca i32, align 4
  %wstart = alloca i32, align 4
  %opptr = alloca ptr, align 8
  %state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !12, metadata !DIExpression()), !dbg !66
  store i32 %max_cmdline_size, ptr %max_cmdline_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_cmdline_size.addr, metadata !13, metadata !DIExpression()), !dbg !67
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !14, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #5, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %c, metadata !15, metadata !DIExpression()), !dbg !70
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #5, !dbg !71
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !16, metadata !DIExpression()), !dbg !72
  store i32 0, ptr %pos, align 4, !dbg !72
  call void @llvm.lifetime.start.p0(i64 4, ptr %wstart) #5, !dbg !71
  call void @llvm.dbg.declare(metadata ptr %wstart, metadata !17, metadata !DIExpression()), !dbg !73
  store i32 0, ptr %wstart, align 4, !dbg !73
  call void @llvm.lifetime.start.p0(i64 8, ptr %opptr) #5, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %opptr, metadata !18, metadata !DIExpression()), !dbg !75
  store ptr null, ptr %opptr, align 8, !dbg !75
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #5, !dbg !76
  call void @llvm.dbg.declare(metadata ptr %state, metadata !19, metadata !DIExpression()), !dbg !77
  store i32 0, ptr %state, align 4, !dbg !77
  %0 = load ptr, ptr %cmdline.addr, align 8, !dbg !78
  %tobool = icmp ne ptr %0, null, !dbg !78
  br i1 %tobool, label %if.end, label %if.then, !dbg !80

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !81
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !81

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !82

while.cond:                                       ; preds = %sw.epilog, %if.end
  %1 = load i32, ptr %pos, align 4, !dbg !83
  %2 = load i32, ptr %max_cmdline_size.addr, align 4, !dbg !84
  %cmp = icmp slt i32 %1, %2, !dbg !85
  br i1 %cmp, label %while.body, label %while.end, !dbg !82

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %cmdline.addr, align 8, !dbg !86
  %incdec.ptr = getelementptr i8, ptr %3, i32 1, !dbg !86
  store ptr %incdec.ptr, ptr %cmdline.addr, align 8, !dbg !86
  %4 = load i8, ptr %3, align 1, !dbg !88
  store i8 %4, ptr %c, align 1, !dbg !89
  %5 = load i32, ptr %pos, align 4, !dbg !90
  %inc = add i32 %5, 1, !dbg !90
  store i32 %inc, ptr %pos, align 4, !dbg !90
  %6 = load i32, ptr %state, align 4, !dbg !91
  switch i32 %6, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb27
  ], !dbg !92

sw.bb:                                            ; preds = %while.body
  %7 = load i8, ptr %c, align 1, !dbg !93
  %tobool1 = icmp ne i8 %7, 0, !dbg !93
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !96

if.then2:                                         ; preds = %sw.bb
  store i32 0, ptr %retval, align 4, !dbg !97
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !97

if.else:                                          ; preds = %sw.bb
  %8 = load i8, ptr %c, align 1, !dbg !98
  %call = call i32 @myisspace(i8 noundef zeroext %8) #4, !dbg !100
  %tobool3 = icmp ne i32 %call, 0, !dbg !100
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !101

if.then4:                                         ; preds = %if.else
  br label %sw.epilog, !dbg !102

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5
  store i32 1, ptr %state, align 4, !dbg !103
  %9 = load ptr, ptr %option.addr, align 8, !dbg !104
  store ptr %9, ptr %opptr, align 8, !dbg !105
  %10 = load i32, ptr %pos, align 4, !dbg !106
  store i32 %10, ptr %wstart, align 4, !dbg !107
  br label %sw.bb7, !dbg !108

sw.bb7:                                           ; preds = %while.body, %if.end6
  %11 = load ptr, ptr %opptr, align 8, !dbg !109
  %12 = load i8, ptr %11, align 1, !dbg !111
  %tobool8 = icmp ne i8 %12, 0, !dbg !111
  br i1 %tobool8, label %if.else15, label %if.then9, !dbg !112

if.then9:                                         ; preds = %sw.bb7
  %13 = load i8, ptr %c, align 1, !dbg !113
  %tobool10 = icmp ne i8 %13, 0, !dbg !113
  br i1 %tobool10, label %lor.lhs.false, label %if.then13, !dbg !116

lor.lhs.false:                                    ; preds = %if.then9
  %14 = load i8, ptr %c, align 1, !dbg !117
  %call11 = call i32 @myisspace(i8 noundef zeroext %14) #4, !dbg !118
  %tobool12 = icmp ne i32 %call11, 0, !dbg !118
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !119

if.then13:                                        ; preds = %lor.lhs.false, %if.then9
  %15 = load i32, ptr %wstart, align 4, !dbg !120
  store i32 %15, ptr %retval, align 4, !dbg !121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !121

if.end14:                                         ; preds = %lor.lhs.false
  br label %if.end26, !dbg !122

if.else15:                                        ; preds = %sw.bb7
  %16 = load i8, ptr %c, align 1, !dbg !123
  %tobool16 = icmp ne i8 %16, 0, !dbg !123
  br i1 %tobool16, label %if.else18, label %if.then17, !dbg !125

if.then17:                                        ; preds = %if.else15
  store i32 0, ptr %retval, align 4, !dbg !126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !126

if.else18:                                        ; preds = %if.else15
  %17 = load i8, ptr %c, align 1, !dbg !128
  %conv = zext i8 %17 to i32, !dbg !128
  %18 = load ptr, ptr %opptr, align 8, !dbg !130
  %incdec.ptr19 = getelementptr i8, ptr %18, i32 1, !dbg !130
  store ptr %incdec.ptr19, ptr %opptr, align 8, !dbg !130
  %19 = load i8, ptr %18, align 1, !dbg !131
  %conv20 = zext i8 %19 to i32, !dbg !131
  %cmp21 = icmp eq i32 %conv, %conv20, !dbg !132
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !133

if.then23:                                        ; preds = %if.else18
  br label %sw.epilog, !dbg !134

if.end24:                                         ; preds = %if.else18
  br label %if.end25

if.end25:                                         ; preds = %if.end24
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end14
  store i32 2, ptr %state, align 4, !dbg !136
  br label %sw.bb27, !dbg !137

sw.bb27:                                          ; preds = %while.body, %if.end26
  %20 = load i8, ptr %c, align 1, !dbg !138
  %tobool28 = icmp ne i8 %20, 0, !dbg !138
  br i1 %tobool28, label %if.else30, label %if.then29, !dbg !140

if.then29:                                        ; preds = %sw.bb27
  store i32 0, ptr %retval, align 4, !dbg !141
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !141

if.else30:                                        ; preds = %sw.bb27
  %21 = load i8, ptr %c, align 1, !dbg !142
  %call31 = call i32 @myisspace(i8 noundef zeroext %21) #4, !dbg !144
  %tobool32 = icmp ne i32 %call31, 0, !dbg !144
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !145

if.then33:                                        ; preds = %if.else30
  store i32 0, ptr %state, align 4, !dbg !146
  br label %if.end34, !dbg !147

if.end34:                                         ; preds = %if.then33, %if.else30
  br label %if.end35

if.end35:                                         ; preds = %if.end34
  br label %sw.epilog, !dbg !148

sw.epilog:                                        ; preds = %while.body, %if.end35, %if.then23, %if.then4
  br label %while.cond, !dbg !82, !llvm.loop !149

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !153

cleanup:                                          ; preds = %while.end, %if.then29, %if.then17, %if.then13, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #5, !dbg !154
  call void @llvm.lifetime.end.p0(i64 8, ptr %opptr) #5, !dbg !154
  call void @llvm.lifetime.end.p0(i64 4, ptr %wstart) #5, !dbg !154
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #5, !dbg !154
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #5, !dbg !154
  %22 = load i32, ptr %retval, align 4, !dbg !154
  ret i32 %22, !dbg !154
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cmdline_find_option(ptr noundef %cmdline, ptr noundef %option, ptr noundef %buffer, i32 noundef %bufsize) #0 align 16 !dbg !155 {
entry:
  %cmdline.addr = alloca ptr, align 8
  %option.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %bufsize.addr = alloca i32, align 4
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !159, metadata !DIExpression()), !dbg !163
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !160, metadata !DIExpression()), !dbg !164
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !161, metadata !DIExpression()), !dbg !165
  store i32 %bufsize, ptr %bufsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bufsize.addr, metadata !162, metadata !DIExpression()), !dbg !166
  %0 = load ptr, ptr %cmdline.addr, align 8, !dbg !167
  %1 = load ptr, ptr %option.addr, align 8, !dbg !168
  %2 = load ptr, ptr %buffer.addr, align 8, !dbg !169
  %3 = load i32, ptr %bufsize.addr, align 4, !dbg !170
  %call = call i32 @__cmdline_find_option(ptr noundef %0, i32 noundef 2048, ptr noundef %1, ptr noundef %2, i32 noundef %3) #4, !dbg !171
  ret i32 %call, !dbg !172
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__cmdline_find_option(ptr noundef %cmdline, i32 noundef %max_cmdline_size, ptr noundef %option, ptr noundef %buffer, i32 noundef %bufsize) #0 align 16 !dbg !26 {
entry:
  %retval = alloca i32, align 4
  %cmdline.addr = alloca ptr, align 8
  %max_cmdline_size.addr = alloca i32, align 4
  %option.addr = alloca ptr, align 8
  %buffer.addr = alloca ptr, align 8
  %bufsize.addr = alloca i32, align 4
  %c = alloca i8, align 1
  %pos = alloca i32, align 4
  %len = alloca i32, align 4
  %opptr = alloca ptr, align 8
  %bufptr = alloca ptr, align 8
  %state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cmdline, ptr %cmdline.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cmdline.addr, metadata !31, metadata !DIExpression()), !dbg !173
  store i32 %max_cmdline_size, ptr %max_cmdline_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_cmdline_size.addr, metadata !32, metadata !DIExpression()), !dbg !174
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !33, metadata !DIExpression()), !dbg !175
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !34, metadata !DIExpression()), !dbg !176
  store i32 %bufsize, ptr %bufsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bufsize.addr, metadata !35, metadata !DIExpression()), !dbg !177
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #5, !dbg !178
  call void @llvm.dbg.declare(metadata ptr %c, metadata !36, metadata !DIExpression()), !dbg !179
  call void @llvm.lifetime.start.p0(i64 4, ptr %pos) #5, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !37, metadata !DIExpression()), !dbg !181
  store i32 0, ptr %pos, align 4, !dbg !181
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #5, !dbg !180
  call void @llvm.dbg.declare(metadata ptr %len, metadata !38, metadata !DIExpression()), !dbg !182
  store i32 -1, ptr %len, align 4, !dbg !182
  call void @llvm.lifetime.start.p0(i64 8, ptr %opptr) #5, !dbg !183
  call void @llvm.dbg.declare(metadata ptr %opptr, metadata !39, metadata !DIExpression()), !dbg !184
  store ptr null, ptr %opptr, align 8, !dbg !184
  call void @llvm.lifetime.start.p0(i64 8, ptr %bufptr) #5, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %bufptr, metadata !40, metadata !DIExpression()), !dbg !186
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !187
  store ptr %0, ptr %bufptr, align 8, !dbg !186
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #5, !dbg !188
  call void @llvm.dbg.declare(metadata ptr %state, metadata !41, metadata !DIExpression()), !dbg !189
  store i32 0, ptr %state, align 4, !dbg !189
  %1 = load ptr, ptr %cmdline.addr, align 8, !dbg !190
  %tobool = icmp ne ptr %1, null, !dbg !190
  br i1 %tobool, label %if.end, label %if.then, !dbg !192

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !193

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !194

while.cond:                                       ; preds = %sw.epilog, %if.end
  %2 = load i32, ptr %pos, align 4, !dbg !195
  %inc = add i32 %2, 1, !dbg !195
  store i32 %inc, ptr %pos, align 4, !dbg !195
  %3 = load i32, ptr %max_cmdline_size.addr, align 4, !dbg !196
  %cmp = icmp slt i32 %2, %3, !dbg !197
  br i1 %cmp, label %while.body, label %while.end, !dbg !194

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %cmdline.addr, align 8, !dbg !198
  %incdec.ptr = getelementptr i8, ptr %4, i32 1, !dbg !198
  store ptr %incdec.ptr, ptr %cmdline.addr, align 8, !dbg !198
  %5 = load i8, ptr %4, align 1, !dbg !200
  store i8 %5, ptr %c, align 1, !dbg !201
  %6 = load i8, ptr %c, align 1, !dbg !202
  %tobool1 = icmp ne i8 %6, 0, !dbg !202
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !204

if.then2:                                         ; preds = %while.body
  br label %while.end, !dbg !205

if.end3:                                          ; preds = %while.body
  %7 = load i32, ptr %state, align 4, !dbg !206
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb20
    i32 3, label %sw.bb25
  ], !dbg !207

sw.bb:                                            ; preds = %if.end3
  %8 = load i8, ptr %c, align 1, !dbg !208
  %call = call i32 @myisspace(i8 noundef zeroext %8) #4, !dbg !211
  %tobool4 = icmp ne i32 %call, 0, !dbg !211
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !212

if.then5:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !213

if.end6:                                          ; preds = %sw.bb
  store i32 1, ptr %state, align 4, !dbg !214
  %9 = load ptr, ptr %option.addr, align 8, !dbg !215
  store ptr %9, ptr %opptr, align 8, !dbg !216
  br label %sw.bb7, !dbg !217

sw.bb7:                                           ; preds = %if.end3, %if.end6
  %10 = load i8, ptr %c, align 1, !dbg !218
  %conv = zext i8 %10 to i32, !dbg !218
  %cmp8 = icmp eq i32 %conv, 61, !dbg !220
  br i1 %cmp8, label %land.lhs.true, label %if.else, !dbg !221

land.lhs.true:                                    ; preds = %sw.bb7
  %11 = load ptr, ptr %opptr, align 8, !dbg !222
  %12 = load i8, ptr %11, align 1, !dbg !223
  %tobool10 = icmp ne i8 %12, 0, !dbg !223
  br i1 %tobool10, label %if.else, label %if.then11, !dbg !224

if.then11:                                        ; preds = %land.lhs.true
  store i32 0, ptr %len, align 4, !dbg !225
  %13 = load ptr, ptr %buffer.addr, align 8, !dbg !227
  store ptr %13, ptr %bufptr, align 8, !dbg !228
  store i32 3, ptr %state, align 4, !dbg !229
  br label %sw.epilog, !dbg !230

if.else:                                          ; preds = %land.lhs.true, %sw.bb7
  %14 = load i8, ptr %c, align 1, !dbg !231
  %conv12 = zext i8 %14 to i32, !dbg !231
  %15 = load ptr, ptr %opptr, align 8, !dbg !233
  %incdec.ptr13 = getelementptr i8, ptr %15, i32 1, !dbg !233
  store ptr %incdec.ptr13, ptr %opptr, align 8, !dbg !233
  %16 = load i8, ptr %15, align 1, !dbg !234
  %conv14 = zext i8 %16 to i32, !dbg !234
  %cmp15 = icmp eq i32 %conv12, %conv14, !dbg !235
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !236

if.then17:                                        ; preds = %if.else
  br label %sw.epilog, !dbg !237

if.end18:                                         ; preds = %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18
  store i32 2, ptr %state, align 4, !dbg !239
  br label %sw.bb20, !dbg !240

sw.bb20:                                          ; preds = %if.end3, %if.end19
  %17 = load i8, ptr %c, align 1, !dbg !241
  %call21 = call i32 @myisspace(i8 noundef zeroext %17) #4, !dbg !243
  %tobool22 = icmp ne i32 %call21, 0, !dbg !243
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !244

if.then23:                                        ; preds = %sw.bb20
  store i32 0, ptr %state, align 4, !dbg !245
  br label %if.end24, !dbg !246

if.end24:                                         ; preds = %if.then23, %sw.bb20
  br label %sw.epilog, !dbg !247

sw.bb25:                                          ; preds = %if.end3
  %18 = load i8, ptr %c, align 1, !dbg !248
  %call26 = call i32 @myisspace(i8 noundef zeroext %18) #4, !dbg !250
  %tobool27 = icmp ne i32 %call26, 0, !dbg !250
  br i1 %tobool27, label %if.then28, label %if.else29, !dbg !251

if.then28:                                        ; preds = %sw.bb25
  store i32 0, ptr %state, align 4, !dbg !252
  br label %if.end36, !dbg !254

if.else29:                                        ; preds = %sw.bb25
  %19 = load i32, ptr %len, align 4, !dbg !255
  %inc30 = add i32 %19, 1, !dbg !255
  store i32 %inc30, ptr %len, align 4, !dbg !255
  %20 = load i32, ptr %bufsize.addr, align 4, !dbg !258
  %cmp31 = icmp slt i32 %inc30, %20, !dbg !259
  br i1 %cmp31, label %if.then33, label %if.end35, !dbg !260

if.then33:                                        ; preds = %if.else29
  %21 = load i8, ptr %c, align 1, !dbg !261
  %22 = load ptr, ptr %bufptr, align 8, !dbg !262
  %incdec.ptr34 = getelementptr i8, ptr %22, i32 1, !dbg !262
  store ptr %incdec.ptr34, ptr %bufptr, align 8, !dbg !262
  store i8 %21, ptr %22, align 1, !dbg !263
  br label %if.end35, !dbg !264

if.end35:                                         ; preds = %if.then33, %if.else29
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then28
  br label %sw.epilog, !dbg !265

sw.epilog:                                        ; preds = %if.end3, %if.end36, %if.end24, %if.then17, %if.then11, %if.then5
  br label %while.cond, !dbg !194, !llvm.loop !266

while.end:                                        ; preds = %if.then2, %while.cond
  %23 = load i32, ptr %bufsize.addr, align 4, !dbg !268
  %tobool37 = icmp ne i32 %23, 0, !dbg !268
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !270

if.then38:                                        ; preds = %while.end
  %24 = load ptr, ptr %bufptr, align 8, !dbg !271
  store i8 0, ptr %24, align 1, !dbg !272
  br label %if.end39, !dbg !273

if.end39:                                         ; preds = %if.then38, %while.end
  %25 = load i32, ptr %len, align 4, !dbg !274
  store i32 %25, ptr %retval, align 4, !dbg !275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !275

cleanup:                                          ; preds = %if.end39, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #5, !dbg !276
  call void @llvm.lifetime.end.p0(i64 8, ptr %bufptr) #5, !dbg !276
  call void @llvm.lifetime.end.p0(i64 8, ptr %opptr) #5, !dbg !276
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #5, !dbg !276
  call void @llvm.lifetime.end.p0(i64 4, ptr %pos) #5, !dbg !276
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #5, !dbg !276
  %26 = load i32, ptr %retval, align 4, !dbg !276
  ret i32 %26, !dbg !276
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @myisspace(i8 noundef zeroext %c) #3 align 16 !dbg !277 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !286, metadata !DIExpression()), !dbg !287
  %0 = load i8, ptr %c.addr, align 1, !dbg !288
  %conv = zext i8 %0 to i32, !dbg !288
  %cmp = icmp sle i32 %conv, 32, !dbg !289
  %conv1 = zext i1 %cmp to i32, !dbg !289
  ret i32 %conv1, !dbg !290
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.cmdline.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/cmdline\22 -D KBUILD_BASENAME=\22cmdline\22 -D KBUILD_MODNAME=\22cmdline\22 -D __KBUILD_MODNAME=kmod_cmdline -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/cmdline.ll arch/x86/lib/cmdline.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !44, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/lib/cmdline.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dc3860d4a739431f41914becba206a7")
!2 = !{!3, !25}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !4, file: !1, line: 36, baseType: !20, size: 32, elements: !21)
!4 = distinct !DISubprogram(name: "__cmdline_find_option_bool", scope: !1, file: !1, line: 30, type: !5, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !8, !7, !8}
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19}
!12 = !DILocalVariable(name: "cmdline", arg: 1, scope: !4, file: !1, line: 30, type: !8)
!13 = !DILocalVariable(name: "max_cmdline_size", arg: 2, scope: !4, file: !1, line: 30, type: !7)
!14 = !DILocalVariable(name: "option", arg: 3, scope: !4, file: !1, line: 31, type: !8)
!15 = !DILocalVariable(name: "c", scope: !4, file: !1, line: 33, type: !10)
!16 = !DILocalVariable(name: "pos", scope: !4, file: !1, line: 34, type: !7)
!17 = !DILocalVariable(name: "wstart", scope: !4, file: !1, line: 34, type: !7)
!18 = !DILocalVariable(name: "opptr", scope: !4, file: !1, line: 35, type: !8)
!19 = !DILocalVariable(name: "state", scope: !4, file: !1, line: 40, type: !3)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !{!22, !23, !24}
!22 = !DIEnumerator(name: "st_wordstart", value: 0)
!23 = !DIEnumerator(name: "st_wordcmp", value: 1)
!24 = !DIEnumerator(name: "st_wordskip", value: 2)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !26, file: !1, line: 130, baseType: !20, size: 32, elements: !42)
!26 = distinct !DISubprogram(name: "__cmdline_find_option", scope: !1, file: !1, line: 123, type: !27, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!27 = !DISubroutineType(types: !28)
!28 = !{!7, !8, !7, !8, !29, !7}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!30 = !{!31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!31 = !DILocalVariable(name: "cmdline", arg: 1, scope: !26, file: !1, line: 123, type: !8)
!32 = !DILocalVariable(name: "max_cmdline_size", arg: 2, scope: !26, file: !1, line: 123, type: !7)
!33 = !DILocalVariable(name: "option", arg: 3, scope: !26, file: !1, line: 124, type: !8)
!34 = !DILocalVariable(name: "buffer", arg: 4, scope: !26, file: !1, line: 124, type: !29)
!35 = !DILocalVariable(name: "bufsize", arg: 5, scope: !26, file: !1, line: 124, type: !7)
!36 = !DILocalVariable(name: "c", scope: !26, file: !1, line: 126, type: !10)
!37 = !DILocalVariable(name: "pos", scope: !26, file: !1, line: 127, type: !7)
!38 = !DILocalVariable(name: "len", scope: !26, file: !1, line: 127, type: !7)
!39 = !DILocalVariable(name: "opptr", scope: !26, file: !1, line: 128, type: !8)
!40 = !DILocalVariable(name: "bufptr", scope: !26, file: !1, line: 129, type: !29)
!41 = !DILocalVariable(name: "state", scope: !26, file: !1, line: 135, type: !25)
!42 = !{!22, !23, !24, !43}
!43 = !DIEnumerator(name: "st_bufcpy", value: 3)
!44 = !{!29}
!45 = !{i32 7, !"Dwarf Version", i32 5}
!46 = !{i32 2, !"Debug Info Version", i32 3}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 8, !"cf-protection-branch", i32 1}
!49 = !{i32 4, !"function_return_thunk_extern", i32 1}
!50 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!51 = !{i32 1, !"Code Model", i32 2}
!52 = !{i32 1, !"override-stack-alignment", i32 8}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = distinct !DISubprogram(name: "cmdline_find_option_bool", scope: !1, file: !1, line: 206, type: !55, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{!7, !8, !8}
!57 = !{!58, !59}
!58 = !DILocalVariable(name: "cmdline", arg: 1, scope: !54, file: !1, line: 206, type: !8)
!59 = !DILocalVariable(name: "option", arg: 2, scope: !54, file: !1, line: 206, type: !8)
!60 = !DILocation(line: 206, column: 42, scope: !54)
!61 = !DILocation(line: 206, column: 63, scope: !54)
!62 = !DILocation(line: 208, column: 36, scope: !54)
!63 = !DILocation(line: 208, column: 64, scope: !54)
!64 = !DILocation(line: 208, column: 9, scope: !54)
!65 = !DILocation(line: 208, column: 2, scope: !54)
!66 = !DILocation(line: 30, column: 40, scope: !4)
!67 = !DILocation(line: 30, column: 53, scope: !4)
!68 = !DILocation(line: 31, column: 19, scope: !4)
!69 = !DILocation(line: 33, column: 2, scope: !4)
!70 = !DILocation(line: 33, column: 7, scope: !4)
!71 = !DILocation(line: 34, column: 2, scope: !4)
!72 = !DILocation(line: 34, column: 6, scope: !4)
!73 = !DILocation(line: 34, column: 15, scope: !4)
!74 = !DILocation(line: 35, column: 2, scope: !4)
!75 = !DILocation(line: 35, column: 14, scope: !4)
!76 = !DILocation(line: 36, column: 2, scope: !4)
!77 = !DILocation(line: 40, column: 4, scope: !4)
!78 = !DILocation(line: 42, column: 7, scope: !79)
!79 = distinct !DILexicalBlock(scope: !4, file: !1, line: 42, column: 6)
!80 = !DILocation(line: 42, column: 6, scope: !4)
!81 = !DILocation(line: 43, column: 3, scope: !79)
!82 = !DILocation(line: 49, column: 2, scope: !4)
!83 = !DILocation(line: 49, column: 9, scope: !4)
!84 = !DILocation(line: 49, column: 15, scope: !4)
!85 = !DILocation(line: 49, column: 13, scope: !4)
!86 = !DILocation(line: 50, column: 23, scope: !87)
!87 = distinct !DILexicalBlock(scope: !4, file: !1, line: 49, column: 33)
!88 = !DILocation(line: 50, column: 7, scope: !87)
!89 = !DILocation(line: 50, column: 5, scope: !87)
!90 = !DILocation(line: 51, column: 6, scope: !87)
!91 = !DILocation(line: 53, column: 11, scope: !87)
!92 = !DILocation(line: 53, column: 3, scope: !87)
!93 = !DILocation(line: 55, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 55, column: 8)
!95 = distinct !DILexicalBlock(scope: !87, file: !1, line: 53, column: 18)
!96 = !DILocation(line: 55, column: 8, scope: !95)
!97 = !DILocation(line: 56, column: 5, scope: !94)
!98 = !DILocation(line: 57, column: 23, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !1, line: 57, column: 13)
!100 = !DILocation(line: 57, column: 13, scope: !99)
!101 = !DILocation(line: 57, column: 13, scope: !94)
!102 = !DILocation(line: 58, column: 5, scope: !99)
!103 = !DILocation(line: 60, column: 10, scope: !95)
!104 = !DILocation(line: 61, column: 12, scope: !95)
!105 = !DILocation(line: 61, column: 10, scope: !95)
!106 = !DILocation(line: 62, column: 13, scope: !95)
!107 = !DILocation(line: 62, column: 11, scope: !95)
!108 = !DILocation(line: 62, column: 4, scope: !95)
!109 = !DILocation(line: 66, column: 10, scope: !110)
!110 = distinct !DILexicalBlock(scope: !95, file: !1, line: 66, column: 8)
!111 = !DILocation(line: 66, column: 9, scope: !110)
!112 = !DILocation(line: 66, column: 8, scope: !95)
!113 = !DILocation(line: 73, column: 10, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 73, column: 9)
!115 = distinct !DILexicalBlock(scope: !110, file: !1, line: 66, column: 17)
!116 = !DILocation(line: 73, column: 12, scope: !114)
!117 = !DILocation(line: 73, column: 25, scope: !114)
!118 = !DILocation(line: 73, column: 15, scope: !114)
!119 = !DILocation(line: 73, column: 9, scope: !115)
!120 = !DILocation(line: 74, column: 13, scope: !114)
!121 = !DILocation(line: 74, column: 6, scope: !114)
!122 = !DILocation(line: 80, column: 4, scope: !115)
!123 = !DILocation(line: 80, column: 16, scope: !124)
!124 = distinct !DILexicalBlock(scope: !110, file: !1, line: 80, column: 15)
!125 = !DILocation(line: 80, column: 15, scope: !110)
!126 = !DILocation(line: 85, column: 5, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !1, line: 80, column: 19)
!128 = !DILocation(line: 86, column: 15, scope: !129)
!129 = distinct !DILexicalBlock(scope: !124, file: !1, line: 86, column: 15)
!130 = !DILocation(line: 86, column: 26, scope: !129)
!131 = !DILocation(line: 86, column: 20, scope: !129)
!132 = !DILocation(line: 86, column: 17, scope: !129)
!133 = !DILocation(line: 86, column: 15, scope: !124)
!134 = !DILocation(line: 91, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !129, file: !1, line: 86, column: 30)
!136 = !DILocation(line: 93, column: 10, scope: !95)
!137 = !DILocation(line: 93, column: 4, scope: !95)
!138 = !DILocation(line: 97, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !95, file: !1, line: 97, column: 8)
!140 = !DILocation(line: 97, column: 8, scope: !95)
!141 = !DILocation(line: 98, column: 5, scope: !139)
!142 = !DILocation(line: 99, column: 23, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !1, line: 99, column: 13)
!144 = !DILocation(line: 99, column: 13, scope: !143)
!145 = !DILocation(line: 99, column: 13, scope: !139)
!146 = !DILocation(line: 100, column: 11, scope: !143)
!147 = !DILocation(line: 100, column: 5, scope: !143)
!148 = !DILocation(line: 101, column: 4, scope: !95)
!149 = distinct !{!149, !82, !150, !151, !152}
!150 = !DILocation(line: 103, column: 2, scope: !4)
!151 = !{!"llvm.loop.mustprogress"}
!152 = !{!"llvm.loop.unroll.disable"}
!153 = !DILocation(line: 105, column: 2, scope: !4)
!154 = !DILocation(line: 106, column: 1, scope: !4)
!155 = distinct !DISubprogram(name: "cmdline_find_option", scope: !1, file: !1, line: 211, type: !156, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{!7, !8, !8, !29, !7}
!158 = !{!159, !160, !161, !162}
!159 = !DILocalVariable(name: "cmdline", arg: 1, scope: !155, file: !1, line: 211, type: !8)
!160 = !DILocalVariable(name: "option", arg: 2, scope: !155, file: !1, line: 211, type: !8)
!161 = !DILocalVariable(name: "buffer", arg: 3, scope: !155, file: !1, line: 211, type: !29)
!162 = !DILocalVariable(name: "bufsize", arg: 4, scope: !155, file: !1, line: 212, type: !7)
!163 = !DILocation(line: 211, column: 37, scope: !155)
!164 = !DILocation(line: 211, column: 58, scope: !155)
!165 = !DILocation(line: 211, column: 72, scope: !155)
!166 = !DILocation(line: 212, column: 8, scope: !155)
!167 = !DILocation(line: 214, column: 31, scope: !155)
!168 = !DILocation(line: 214, column: 59, scope: !155)
!169 = !DILocation(line: 215, column: 10, scope: !155)
!170 = !DILocation(line: 215, column: 18, scope: !155)
!171 = !DILocation(line: 214, column: 9, scope: !155)
!172 = !DILocation(line: 214, column: 2, scope: !155)
!173 = !DILocation(line: 123, column: 35, scope: !26)
!174 = !DILocation(line: 123, column: 48, scope: !26)
!175 = !DILocation(line: 124, column: 21, scope: !26)
!176 = !DILocation(line: 124, column: 35, scope: !26)
!177 = !DILocation(line: 124, column: 47, scope: !26)
!178 = !DILocation(line: 126, column: 2, scope: !26)
!179 = !DILocation(line: 126, column: 7, scope: !26)
!180 = !DILocation(line: 127, column: 2, scope: !26)
!181 = !DILocation(line: 127, column: 6, scope: !26)
!182 = !DILocation(line: 127, column: 15, scope: !26)
!183 = !DILocation(line: 128, column: 2, scope: !26)
!184 = !DILocation(line: 128, column: 14, scope: !26)
!185 = !DILocation(line: 129, column: 2, scope: !26)
!186 = !DILocation(line: 129, column: 8, scope: !26)
!187 = !DILocation(line: 129, column: 17, scope: !26)
!188 = !DILocation(line: 130, column: 2, scope: !26)
!189 = !DILocation(line: 135, column: 4, scope: !26)
!190 = !DILocation(line: 137, column: 7, scope: !191)
!191 = distinct !DILexicalBlock(scope: !26, file: !1, line: 137, column: 6)
!192 = !DILocation(line: 137, column: 6, scope: !26)
!193 = !DILocation(line: 138, column: 3, scope: !191)
!194 = !DILocation(line: 144, column: 2, scope: !26)
!195 = !DILocation(line: 144, column: 12, scope: !26)
!196 = !DILocation(line: 144, column: 17, scope: !26)
!197 = !DILocation(line: 144, column: 15, scope: !26)
!198 = !DILocation(line: 145, column: 23, scope: !199)
!199 = distinct !DILexicalBlock(scope: !26, file: !1, line: 144, column: 35)
!200 = !DILocation(line: 145, column: 7, scope: !199)
!201 = !DILocation(line: 145, column: 5, scope: !199)
!202 = !DILocation(line: 146, column: 8, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 146, column: 7)
!204 = !DILocation(line: 146, column: 7, scope: !199)
!205 = !DILocation(line: 147, column: 4, scope: !203)
!206 = !DILocation(line: 149, column: 11, scope: !199)
!207 = !DILocation(line: 149, column: 3, scope: !199)
!208 = !DILocation(line: 151, column: 18, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !1, line: 151, column: 8)
!210 = distinct !DILexicalBlock(scope: !199, file: !1, line: 149, column: 18)
!211 = !DILocation(line: 151, column: 8, scope: !209)
!212 = !DILocation(line: 151, column: 8, scope: !210)
!213 = !DILocation(line: 152, column: 5, scope: !209)
!214 = !DILocation(line: 154, column: 10, scope: !210)
!215 = !DILocation(line: 155, column: 12, scope: !210)
!216 = !DILocation(line: 155, column: 10, scope: !210)
!217 = !DILocation(line: 155, column: 4, scope: !210)
!218 = !DILocation(line: 159, column: 9, scope: !219)
!219 = distinct !DILexicalBlock(scope: !210, file: !1, line: 159, column: 8)
!220 = !DILocation(line: 159, column: 11, scope: !219)
!221 = !DILocation(line: 159, column: 19, scope: !219)
!222 = !DILocation(line: 159, column: 24, scope: !219)
!223 = !DILocation(line: 159, column: 23, scope: !219)
!224 = !DILocation(line: 159, column: 8, scope: !210)
!225 = !DILocation(line: 165, column: 9, scope: !226)
!226 = distinct !DILexicalBlock(scope: !219, file: !1, line: 159, column: 31)
!227 = !DILocation(line: 166, column: 14, scope: !226)
!228 = !DILocation(line: 166, column: 12, scope: !226)
!229 = !DILocation(line: 167, column: 11, scope: !226)
!230 = !DILocation(line: 168, column: 5, scope: !226)
!231 = !DILocation(line: 169, column: 15, scope: !232)
!232 = distinct !DILexicalBlock(scope: !219, file: !1, line: 169, column: 15)
!233 = !DILocation(line: 169, column: 26, scope: !232)
!234 = !DILocation(line: 169, column: 20, scope: !232)
!235 = !DILocation(line: 169, column: 17, scope: !232)
!236 = !DILocation(line: 169, column: 15, scope: !219)
!237 = !DILocation(line: 174, column: 5, scope: !238)
!238 = distinct !DILexicalBlock(scope: !232, file: !1, line: 169, column: 30)
!239 = !DILocation(line: 176, column: 10, scope: !210)
!240 = !DILocation(line: 176, column: 4, scope: !210)
!241 = !DILocation(line: 180, column: 18, scope: !242)
!242 = distinct !DILexicalBlock(scope: !210, file: !1, line: 180, column: 8)
!243 = !DILocation(line: 180, column: 8, scope: !242)
!244 = !DILocation(line: 180, column: 8, scope: !210)
!245 = !DILocation(line: 181, column: 11, scope: !242)
!246 = !DILocation(line: 181, column: 5, scope: !242)
!247 = !DILocation(line: 182, column: 4, scope: !210)
!248 = !DILocation(line: 185, column: 18, scope: !249)
!249 = distinct !DILexicalBlock(scope: !210, file: !1, line: 185, column: 8)
!250 = !DILocation(line: 185, column: 8, scope: !249)
!251 = !DILocation(line: 185, column: 8, scope: !210)
!252 = !DILocation(line: 186, column: 11, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !1, line: 185, column: 22)
!254 = !DILocation(line: 187, column: 4, scope: !253)
!255 = !DILocation(line: 193, column: 9, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 193, column: 9)
!257 = distinct !DILexicalBlock(scope: !249, file: !1, line: 187, column: 11)
!258 = !DILocation(line: 193, column: 17, scope: !256)
!259 = !DILocation(line: 193, column: 15, scope: !256)
!260 = !DILocation(line: 193, column: 9, scope: !257)
!261 = !DILocation(line: 194, column: 18, scope: !256)
!262 = !DILocation(line: 194, column: 13, scope: !256)
!263 = !DILocation(line: 194, column: 16, scope: !256)
!264 = !DILocation(line: 194, column: 6, scope: !256)
!265 = !DILocation(line: 196, column: 4, scope: !210)
!266 = distinct !{!266, !194, !267, !151, !152}
!267 = !DILocation(line: 198, column: 2, scope: !26)
!268 = !DILocation(line: 200, column: 6, scope: !269)
!269 = distinct !DILexicalBlock(scope: !26, file: !1, line: 200, column: 6)
!270 = !DILocation(line: 200, column: 6, scope: !26)
!271 = !DILocation(line: 201, column: 4, scope: !269)
!272 = !DILocation(line: 201, column: 11, scope: !269)
!273 = !DILocation(line: 201, column: 3, scope: !269)
!274 = !DILocation(line: 203, column: 9, scope: !26)
!275 = !DILocation(line: 203, column: 2, scope: !26)
!276 = !DILocation(line: 204, column: 1, scope: !26)
!277 = distinct !DISubprogram(name: "myisspace", scope: !1, file: !1, line: 12, type: !278, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !285)
!278 = !DISubroutineType(types: !279)
!279 = !{!7, !280}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !281, line: 17, baseType: !282)
!281 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !283, line: 21, baseType: !284)
!283 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!284 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!285 = !{!286}
!286 = !DILocalVariable(name: "c", arg: 1, scope: !277, file: !1, line: 12, type: !280)
!287 = !DILocation(line: 12, column: 32, scope: !277)
!288 = !DILocation(line: 14, column: 9, scope: !277)
!289 = !DILocation(line: 14, column: 11, scope: !277)
!290 = !DILocation(line: 14, column: 2, scope: !277)
