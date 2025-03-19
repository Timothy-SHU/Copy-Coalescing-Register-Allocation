; ModuleID = 'lib/argv_split.c'
source_filename = "lib/argv_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_argv_free: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad argv_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_argv_split: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad argv_split ; .previous"

@__UNIQUE_ID___addressable_argv_free118 = internal global ptr @argv_free, section ".discard.addressable", align 8, !dbg !0
@_ctype = external dso_local constant [0 x i8], align 1
@__UNIQUE_ID___addressable_argv_split119 = internal global ptr @argv_split, section ".discard.addressable", align 8, !dbg !29
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !31
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_argv_free118, ptr @__UNIQUE_ID___addressable_argv_split119], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @argv_free(ptr noundef %argv) #0 align 16 !dbg !46 {
entry:
  %argv.addr = alloca ptr, align 8
  store ptr %argv, ptr %argv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %argv.addr, metadata !52, metadata !DIExpression()), !dbg !53
  %0 = load ptr, ptr %argv.addr, align 8, !dbg !54
  %incdec.ptr = getelementptr ptr, ptr %0, i32 -1, !dbg !54
  store ptr %incdec.ptr, ptr %argv.addr, align 8, !dbg !54
  %1 = load ptr, ptr %argv.addr, align 8, !dbg !55
  %arrayidx = getelementptr ptr, ptr %1, i64 0, !dbg !55
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !55
  call void @kfree(ptr noundef %2) #13, !dbg !56
  %3 = load ptr, ptr %argv.addr, align 8, !dbg !57
  call void @kfree(ptr noundef %3) #13, !dbg !58
  ret void, !dbg !59
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !60 dso_local void @kfree(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @argv_split(i32 noundef %gfp, ptr noundef %str, ptr noundef %argcp) #0 align 16 !dbg !65 {
entry:
  %retval = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %argcp.addr = alloca ptr, align 8
  %argv_str = alloca ptr, align 8
  %was_space = alloca i8, align 1
  %argv = alloca ptr, align 8
  %argv_ret = alloca ptr, align 8
  %argc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !72, metadata !DIExpression()), !dbg !82
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !73, metadata !DIExpression()), !dbg !83
  store ptr %argcp, ptr %argcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %argcp.addr, metadata !74, metadata !DIExpression()), !dbg !84
  call void @llvm.lifetime.start.p0(i64 8, ptr %argv_str) #14, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %argv_str, metadata !75, metadata !DIExpression()), !dbg !86
  call void @llvm.lifetime.start.p0(i64 1, ptr %was_space) #14, !dbg !87
  call void @llvm.dbg.declare(metadata ptr %was_space, metadata !76, metadata !DIExpression()), !dbg !88
  call void @llvm.lifetime.start.p0(i64 8, ptr %argv) #14, !dbg !89
  call void @llvm.dbg.declare(metadata ptr %argv, metadata !79, metadata !DIExpression()), !dbg !90
  call void @llvm.lifetime.start.p0(i64 8, ptr %argv_ret) #14, !dbg !89
  call void @llvm.dbg.declare(metadata ptr %argv_ret, metadata !80, metadata !DIExpression()), !dbg !91
  call void @llvm.lifetime.start.p0(i64 4, ptr %argc) #14, !dbg !92
  call void @llvm.dbg.declare(metadata ptr %argc, metadata !81, metadata !DIExpression()), !dbg !93
  %0 = load ptr, ptr %str.addr, align 8, !dbg !94
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !95
  %call = call ptr @kstrndup(ptr noundef %0, i64 noundef 4194303, i32 noundef %1) #13, !dbg !96
  store ptr %call, ptr %argv_str, align 8, !dbg !97
  %2 = load ptr, ptr %argv_str, align 8, !dbg !98
  %tobool = icmp ne ptr %2, null, !dbg !98
  br i1 %tobool, label %if.end, label %if.then, !dbg !100

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !101

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %argv_str, align 8, !dbg !102
  %call1 = call i32 @count_argc(ptr noundef %3) #13, !dbg !103
  store i32 %call1, ptr %argc, align 4, !dbg !104
  %4 = load i32, ptr %argc, align 4, !dbg !105
  %add = add i32 %4, 2, !dbg !106
  %conv = sext i32 %add to i64, !dbg !105
  %5 = load i32, ptr %gfp.addr, align 4, !dbg !107
  %call2 = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef 8, i32 noundef %5) #15, !dbg !108
  store ptr %call2, ptr %argv, align 8, !dbg !109
  %6 = load ptr, ptr %argv, align 8, !dbg !110
  %tobool3 = icmp ne ptr %6, null, !dbg !110
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !112

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %argv_str, align 8, !dbg !113
  call void @kfree(ptr noundef %7) #13, !dbg !115
  store ptr null, ptr %retval, align 8, !dbg !116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !116

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %argv_str, align 8, !dbg !117
  %9 = load ptr, ptr %argv, align 8, !dbg !118
  store ptr %8, ptr %9, align 8, !dbg !119
  %10 = load ptr, ptr %argv, align 8, !dbg !120
  %incdec.ptr = getelementptr ptr, ptr %10, i32 1, !dbg !120
  store ptr %incdec.ptr, ptr %argv, align 8, !dbg !120
  store ptr %incdec.ptr, ptr %argv_ret, align 8, !dbg !121
  store i8 1, ptr %was_space, align 1, !dbg !122
  br label %for.cond, !dbg !124

for.cond:                                         ; preds = %for.inc, %if.end5
  %11 = load ptr, ptr %argv_str, align 8, !dbg !125
  %12 = load i8, ptr %11, align 1, !dbg !127
  %tobool6 = icmp ne i8 %12, 0, !dbg !128
  br i1 %tobool6, label %for.body, label %for.end, !dbg !128

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %argv_str, align 8, !dbg !129
  %14 = load i8, ptr %13, align 1, !dbg !129
  %conv7 = zext i8 %14 to i32, !dbg !129
  %idxprom = sext i32 %conv7 to i64, !dbg !129
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !129
  %15 = load i8, ptr %arrayidx, align 1, !dbg !129
  %conv8 = zext i8 %15 to i32, !dbg !129
  %and = and i32 %conv8, 32, !dbg !129
  %cmp = icmp ne i32 %and, 0, !dbg !129
  br i1 %cmp, label %if.then10, label %if.else, !dbg !132

if.then10:                                        ; preds = %for.body
  store i8 1, ptr %was_space, align 1, !dbg !133
  %16 = load ptr, ptr %argv_str, align 8, !dbg !135
  store i8 0, ptr %16, align 1, !dbg !136
  br label %if.end15, !dbg !137

if.else:                                          ; preds = %for.body
  %17 = load i8, ptr %was_space, align 1, !dbg !138, !range !140, !noundef !141
  %tobool11 = trunc i8 %17 to i1, !dbg !138
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !142

if.then12:                                        ; preds = %if.else
  store i8 0, ptr %was_space, align 1, !dbg !143
  %18 = load ptr, ptr %argv_str, align 8, !dbg !145
  %19 = load ptr, ptr %argv, align 8, !dbg !146
  %incdec.ptr13 = getelementptr ptr, ptr %19, i32 1, !dbg !146
  store ptr %incdec.ptr13, ptr %argv, align 8, !dbg !146
  store ptr %18, ptr %19, align 8, !dbg !147
  br label %if.end14, !dbg !148

if.end14:                                         ; preds = %if.then12, %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then10
  br label %for.inc, !dbg !149

for.inc:                                          ; preds = %if.end15
  %20 = load ptr, ptr %argv_str, align 8, !dbg !150
  %incdec.ptr16 = getelementptr i8, ptr %20, i32 1, !dbg !150
  store ptr %incdec.ptr16, ptr %argv_str, align 8, !dbg !150
  br label %for.cond, !dbg !151, !llvm.loop !152

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %argv, align 8, !dbg !156
  store ptr null, ptr %21, align 8, !dbg !157
  %22 = load ptr, ptr %argcp.addr, align 8, !dbg !158
  %tobool17 = icmp ne ptr %22, null, !dbg !158
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !160

if.then18:                                        ; preds = %for.end
  %23 = load i32, ptr %argc, align 4, !dbg !161
  %24 = load ptr, ptr %argcp.addr, align 8, !dbg !162
  store i32 %23, ptr %24, align 4, !dbg !163
  br label %if.end19, !dbg !164

if.end19:                                         ; preds = %if.then18, %for.end
  %25 = load ptr, ptr %argv_ret, align 8, !dbg !165
  store ptr %25, ptr %retval, align 8, !dbg !166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !166

cleanup:                                          ; preds = %if.end19, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %argc) #14, !dbg !167
  call void @llvm.lifetime.end.p0(i64 8, ptr %argv_ret) #14, !dbg !167
  call void @llvm.lifetime.end.p0(i64 8, ptr %argv) #14, !dbg !167
  call void @llvm.lifetime.end.p0(i64 1, ptr %was_space) #14, !dbg !167
  call void @llvm.lifetime.end.p0(i64 8, ptr %argv_str) #14, !dbg !167
  %26 = load ptr, ptr %retval, align 8, !dbg !167
  ret ptr %26, !dbg !167
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !168 dso_local ptr @kstrndup(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @count_argc(ptr noundef %str) #0 align 16 !dbg !176 {
entry:
  %str.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %was_space = alloca i8, align 1
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !180, metadata !DIExpression()), !dbg !183
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #14, !dbg !184
  call void @llvm.dbg.declare(metadata ptr %count, metadata !181, metadata !DIExpression()), !dbg !185
  store i32 0, ptr %count, align 4, !dbg !185
  call void @llvm.lifetime.start.p0(i64 1, ptr %was_space) #14, !dbg !186
  call void @llvm.dbg.declare(metadata ptr %was_space, metadata !182, metadata !DIExpression()), !dbg !187
  store i8 1, ptr %was_space, align 1, !dbg !188
  br label %for.cond, !dbg !190

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %str.addr, align 8, !dbg !191
  %1 = load i8, ptr %0, align 1, !dbg !193
  %tobool = icmp ne i8 %1, 0, !dbg !194
  br i1 %tobool, label %for.body, label %for.end, !dbg !194

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %str.addr, align 8, !dbg !195
  %3 = load i8, ptr %2, align 1, !dbg !195
  %conv = zext i8 %3 to i32, !dbg !195
  %idxprom = sext i32 %conv to i64, !dbg !195
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !195
  %4 = load i8, ptr %arrayidx, align 1, !dbg !195
  %conv1 = zext i8 %4 to i32, !dbg !195
  %and = and i32 %conv1, 32, !dbg !195
  %cmp = icmp ne i32 %and, 0, !dbg !195
  br i1 %cmp, label %if.then, label %if.else, !dbg !198

if.then:                                          ; preds = %for.body
  store i8 1, ptr %was_space, align 1, !dbg !199
  br label %if.end5, !dbg !201

if.else:                                          ; preds = %for.body
  %5 = load i8, ptr %was_space, align 1, !dbg !202, !range !140, !noundef !141
  %tobool3 = trunc i8 %5 to i1, !dbg !202
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !204

if.then4:                                         ; preds = %if.else
  store i8 0, ptr %was_space, align 1, !dbg !205
  %6 = load i32, ptr %count, align 4, !dbg !207
  %inc = add i32 %6, 1, !dbg !207
  store i32 %inc, ptr %count, align 4, !dbg !207
  br label %if.end, !dbg !208

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  br label %for.inc, !dbg !209

for.inc:                                          ; preds = %if.end5
  %7 = load ptr, ptr %str.addr, align 8, !dbg !210
  %incdec.ptr = getelementptr i8, ptr %7, i32 1, !dbg !210
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !210
  br label %for.cond, !dbg !211, !llvm.loop !212

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %count, align 4, !dbg !214
  call void @llvm.lifetime.end.p0(i64 1, ptr %was_space) #14, !dbg !215
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #14, !dbg !215
  ret i32 %8, !dbg !216
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !217 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !221, metadata !DIExpression()), !dbg !225
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !222, metadata !DIExpression()), !dbg !226
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !223, metadata !DIExpression()), !dbg !227
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #14, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !224, metadata !DIExpression()), !dbg !229
  %0 = load i64, ptr %n.addr, align 8, !dbg !230
  %1 = load i64, ptr %size.addr, align 8, !dbg !230
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !230
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !230
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !230
  store i64 %4, ptr %bytes, align 8, !dbg !230
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #13, !dbg !230
  %lnot = xor i1 %call, true, !dbg !230
  %lnot1 = xor i1 %lnot, true, !dbg !230
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !230
  %conv = sext i32 %lnot.ext to i64, !dbg !230
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !230
  %tobool = icmp ne i64 %expval, 0, !dbg !230
  br i1 %tobool, label %if.then, label %if.end, !dbg !232

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !233

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !234
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !236
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !237

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !238
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !239
  br i1 %8, label %if.then2, label %if.end4, !dbg !240

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !241
  %10 = load i32, ptr %flags.addr, align 4, !dbg !242
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #16, !dbg !243
  store ptr %call3, ptr %retval, align 8, !dbg !244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !244

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !245
  %12 = load i32, ptr %flags.addr, align 4, !dbg !246
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #16, !dbg !247
  store ptr %call5, ptr %retval, align 8, !dbg !248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !248

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #14, !dbg !249
  %13 = load ptr, ptr %retval, align 8, !dbg !249
  ret ptr %13, !dbg !249
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #5 align 16 !dbg !250 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !255, metadata !DIExpression()), !dbg !256
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !257, !range !140, !noundef !141
  %tobool = trunc i8 %0 to i1, !dbg !257
  %lnot = xor i1 %tobool, true, !dbg !257
  %lnot1 = xor i1 %lnot, true, !dbg !257
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !257
  %conv = sext i32 %lnot.ext to i64, !dbg !257
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !257
  %tobool2 = icmp ne i64 %expval, 0, !dbg !257
  ret i1 %tobool2, !dbg !258
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !259 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !263, metadata !DIExpression()), !dbg !268
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !264, metadata !DIExpression()), !dbg !269
  %0 = load i64, ptr %size.addr, align 8, !dbg !270
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !271
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !272

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !273
  %tobool = icmp ne i64 %2, 0, !dbg !273
  br i1 %tobool, label %if.then, label %if.end7, !dbg !274

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !275
  call void @llvm.dbg.declare(metadata ptr %index, metadata !265, metadata !DIExpression()), !dbg !276
  %3 = load i64, ptr %size.addr, align 8, !dbg !277
  %cmp = icmp ugt i64 %3, 8192, !dbg !279
  br i1 %cmp, label %if.then1, label %if.end, !dbg !280

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !281
  %5 = load i32, ptr %flags.addr, align 4, !dbg !282
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !283
  store ptr %call, ptr %retval, align 8, !dbg !284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !284

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !285
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #13, !dbg !285
  store i32 %call2, ptr %index, align 4, !dbg !286
  %7 = load i32, ptr %flags.addr, align 4, !dbg !287
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !288
  %9 = ptrtoint ptr %8 to i64, !dbg !288
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #13, !dbg !289
  %idxprom = zext i32 %call3 to i64, !dbg !290
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !290
  %10 = load i32, ptr %index, align 4, !dbg !291
  %idxprom4 = zext i32 %10 to i64, !dbg !290
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !290
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !290
  %12 = load i32, ptr %flags.addr, align 4, !dbg !292
  %13 = load i64, ptr %size.addr, align 8, !dbg !293
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !294
  store ptr %call6, ptr %retval, align 8, !dbg !295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !295

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !296
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !297
  %15 = load i32, ptr %flags.addr, align 4, !dbg !298
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !299
  store ptr %call8, ptr %retval, align 8, !dbg !300
  br label %return, !dbg !300

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !301
  ret ptr %16, !dbg !301
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !302 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !303 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !304 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !308, metadata !DIExpression()), !dbg !310
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !309, metadata !DIExpression()), !dbg !311
  %0 = load i64, ptr %size.addr, align 8, !dbg !312
  %tobool = icmp ne i64 %0, 0, !dbg !312
  br i1 %tobool, label %if.end, label %if.then, !dbg !314

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !315
  br label %return, !dbg !315

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !316
  %cmp = icmp ule i64 %1, 8, !dbg !318
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !319

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !320
  br label %return, !dbg !320

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !321
  %cmp3 = icmp ugt i64 %2, 64, !dbg !323
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !324

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !325
  %cmp4 = icmp ule i64 %3, 96, !dbg !326
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !327

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !328
  br label %return, !dbg !328

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !329
  %cmp7 = icmp ugt i64 %4, 128, !dbg !331
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !332

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !333
  %cmp9 = icmp ule i64 %5, 192, !dbg !334
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !335

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !336
  br label %return, !dbg !336

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !337
  %cmp12 = icmp ule i64 %6, 8, !dbg !339
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !340

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !341
  br label %return, !dbg !341

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !342
  %cmp15 = icmp ule i64 %7, 16, !dbg !344
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !345

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !346
  br label %return, !dbg !346

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !347
  %cmp18 = icmp ule i64 %8, 32, !dbg !349
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !350

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !351
  br label %return, !dbg !351

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !352
  %cmp21 = icmp ule i64 %9, 64, !dbg !354
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !355

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !356
  br label %return, !dbg !356

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !357
  %cmp24 = icmp ule i64 %10, 128, !dbg !359
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !360

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !361
  br label %return, !dbg !361

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !362
  %cmp27 = icmp ule i64 %11, 256, !dbg !364
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !365

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !366
  br label %return, !dbg !366

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !367
  %cmp30 = icmp ule i64 %12, 512, !dbg !369
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !370

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !371
  br label %return, !dbg !371

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !372
  %cmp33 = icmp ule i64 %13, 1024, !dbg !374
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !375

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !376
  br label %return, !dbg !376

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !377
  %cmp36 = icmp ule i64 %14, 2048, !dbg !379
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !380

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !381
  br label %return, !dbg !381

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !382
  %cmp39 = icmp ule i64 %15, 4096, !dbg !384
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !385

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !386
  br label %return, !dbg !386

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !387
  %cmp42 = icmp ule i64 %16, 8192, !dbg !389
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !390

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !391
  br label %return, !dbg !391

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !392
  %cmp45 = icmp ule i64 %17, 16384, !dbg !394
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !395

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !396
  br label %return, !dbg !396

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !397
  %cmp48 = icmp ule i64 %18, 32768, !dbg !399
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !400

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !401
  br label %return, !dbg !401

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !402
  %cmp51 = icmp ule i64 %19, 65536, !dbg !404
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !405

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !406
  br label %return, !dbg !406

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !407
  %cmp54 = icmp ule i64 %20, 131072, !dbg !409
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !410

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !411
  br label %return, !dbg !411

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !412
  %cmp57 = icmp ule i64 %21, 262144, !dbg !414
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !415

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !416
  br label %return, !dbg !416

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !417
  %cmp60 = icmp ule i64 %22, 524288, !dbg !419
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !420

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !421
  br label %return, !dbg !421

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !422
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !424
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !425

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !426
  br label %return, !dbg !426

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !427
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !429
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !430

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !431
  br label %return, !dbg !431

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !432, !range !140, !noundef !141
  %tobool69 = trunc i8 %25 to i1, !dbg !432
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !434

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !435

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #18, !dbg !436, !srcloc !439
  unreachable, !dbg !436

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !440

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !441

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !442

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !444

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !442

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #14, !dbg !446, !srcloc !448
  br label %do.end75, !dbg !446

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !442

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !449
  br label %return, !dbg !449

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !450
  ret i32 %26, !dbg !450
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !451 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !457 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !461, metadata !DIExpression()), !dbg !463
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !462, metadata !DIExpression()), !dbg !464
  %0 = load i32, ptr %flags.addr, align 4, !dbg !465
  %and = and i32 %0, 17, !dbg !465
  %cmp = icmp eq i32 %and, 0, !dbg !465
  %lnot = xor i1 %cmp, true, !dbg !465
  %lnot1 = xor i1 %lnot, true, !dbg !465
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !465
  %conv = sext i32 %lnot.ext to i64, !dbg !465
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !465
  %tobool = icmp ne i64 %expval, 0, !dbg !465
  br i1 %tobool, label %if.then, label %if.end, !dbg !467

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !468
  br label %return, !dbg !468

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !469
  %and2 = and i32 %1, 1, !dbg !471
  %tobool3 = icmp ne i32 %and2, 0, !dbg !471
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !472

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !473
  br label %return, !dbg !473

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !474
  br label %return, !dbg !474

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !476
  ret i32 %2, !dbg !476
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !477 dso_local void @__compiletime_assert_117() #12

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(0,1) }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_argv_free118", scope: !2, file: !3, line: 41, type: !22, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.argv_split.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/argv_split\22 -D KBUILD_BASENAME=\22argv_split\22 -D KBUILD_MODNAME=\22argv_split\22 -D __KBUILD_MODNAME=kmod_argv_split -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/argv_split.ll lib/argv_split.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/argv_split.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a149c8de6ccaaab7dfc9de20406c94c")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !{!22, !23, !24, !25, !26}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !27, line: 154, baseType: !7)
!27 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!28 = !{!0, !29, !31}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_argv_split119", scope: !2, file: !3, line: 95, type: !22, isLocal: true, isDefinition: true)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 168, elements: !35)
!34 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!36}
!36 = !DISubrange(count: 21)
!37 = !{i32 7, !"Dwarf Version", i32 5}
!38 = !{i32 2, !"Debug Info Version", i32 3}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 8, !"cf-protection-branch", i32 1}
!41 = !{i32 4, !"function_return_thunk_extern", i32 1}
!42 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!43 = !{i32 1, !"Code Model", i32 2}
!44 = !{i32 1, !"override-stack-alignment", i32 8}
!45 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!46 = distinct !DISubprogram(name: "argv_free", scope: !3, file: !3, line: 35, type: !47, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!51 = !{!52}
!52 = !DILocalVariable(name: "argv", arg: 1, scope: !46, file: !3, line: 35, type: !49)
!53 = !DILocation(line: 35, column: 23, scope: !46)
!54 = !DILocation(line: 37, column: 6, scope: !46)
!55 = !DILocation(line: 38, column: 8, scope: !46)
!56 = !DILocation(line: 38, column: 2, scope: !46)
!57 = !DILocation(line: 39, column: 8, scope: !46)
!58 = !DILocation(line: 39, column: 2, scope: !46)
!59 = !DILocation(line: 40, column: 1, scope: !46)
!60 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !61, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!65 = distinct !DISubprogram(name: "argv_split", scope: !3, file: !3, line: 60, type: !66, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !71)
!66 = !DISubroutineType(types: !67)
!67 = !{!49, !26, !68, !70}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!71 = !{!72, !73, !74, !75, !76, !79, !80, !81}
!72 = !DILocalVariable(name: "gfp", arg: 1, scope: !65, file: !3, line: 60, type: !26)
!73 = !DILocalVariable(name: "str", arg: 2, scope: !65, file: !3, line: 60, type: !68)
!74 = !DILocalVariable(name: "argcp", arg: 3, scope: !65, file: !3, line: 60, type: !70)
!75 = !DILocalVariable(name: "argv_str", scope: !65, file: !3, line: 62, type: !50)
!76 = !DILocalVariable(name: "was_space", scope: !65, file: !3, line: 63, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !27, line: 35, baseType: !78)
!78 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!79 = !DILocalVariable(name: "argv", scope: !65, file: !3, line: 64, type: !49)
!80 = !DILocalVariable(name: "argv_ret", scope: !65, file: !3, line: 64, type: !49)
!81 = !DILocalVariable(name: "argc", scope: !65, file: !3, line: 65, type: !23)
!82 = !DILocation(line: 60, column: 25, scope: !65)
!83 = !DILocation(line: 60, column: 42, scope: !65)
!84 = !DILocation(line: 60, column: 52, scope: !65)
!85 = !DILocation(line: 62, column: 2, scope: !65)
!86 = !DILocation(line: 62, column: 8, scope: !65)
!87 = !DILocation(line: 63, column: 2, scope: !65)
!88 = !DILocation(line: 63, column: 7, scope: !65)
!89 = !DILocation(line: 64, column: 2, scope: !65)
!90 = !DILocation(line: 64, column: 9, scope: !65)
!91 = !DILocation(line: 64, column: 17, scope: !65)
!92 = !DILocation(line: 65, column: 2, scope: !65)
!93 = !DILocation(line: 65, column: 6, scope: !65)
!94 = !DILocation(line: 67, column: 22, scope: !65)
!95 = !DILocation(line: 67, column: 49, scope: !65)
!96 = !DILocation(line: 67, column: 13, scope: !65)
!97 = !DILocation(line: 67, column: 11, scope: !65)
!98 = !DILocation(line: 68, column: 7, scope: !99)
!99 = distinct !DILexicalBlock(scope: !65, file: !3, line: 68, column: 6)
!100 = !DILocation(line: 68, column: 6, scope: !65)
!101 = !DILocation(line: 69, column: 3, scope: !99)
!102 = !DILocation(line: 71, column: 20, scope: !65)
!103 = !DILocation(line: 71, column: 9, scope: !65)
!104 = !DILocation(line: 71, column: 7, scope: !65)
!105 = !DILocation(line: 72, column: 23, scope: !65)
!106 = !DILocation(line: 72, column: 28, scope: !65)
!107 = !DILocation(line: 72, column: 48, scope: !65)
!108 = !DILocation(line: 72, column: 9, scope: !65)
!109 = !DILocation(line: 72, column: 7, scope: !65)
!110 = !DILocation(line: 73, column: 7, scope: !111)
!111 = distinct !DILexicalBlock(scope: !65, file: !3, line: 73, column: 6)
!112 = !DILocation(line: 73, column: 6, scope: !65)
!113 = !DILocation(line: 74, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !3, line: 73, column: 13)
!115 = !DILocation(line: 74, column: 3, scope: !114)
!116 = !DILocation(line: 75, column: 3, scope: !114)
!117 = !DILocation(line: 78, column: 10, scope: !65)
!118 = !DILocation(line: 78, column: 3, scope: !65)
!119 = !DILocation(line: 78, column: 8, scope: !65)
!120 = !DILocation(line: 79, column: 13, scope: !65)
!121 = !DILocation(line: 79, column: 11, scope: !65)
!122 = !DILocation(line: 80, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !65, file: !3, line: 80, column: 2)
!124 = !DILocation(line: 80, column: 7, scope: !123)
!125 = !DILocation(line: 80, column: 26, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !3, line: 80, column: 2)
!127 = !DILocation(line: 80, column: 25, scope: !126)
!128 = !DILocation(line: 80, column: 2, scope: !123)
!129 = !DILocation(line: 81, column: 7, scope: !130)
!130 = distinct !DILexicalBlock(scope: !131, file: !3, line: 81, column: 7)
!131 = distinct !DILexicalBlock(scope: !126, file: !3, line: 80, column: 48)
!132 = !DILocation(line: 81, column: 7, scope: !131)
!133 = !DILocation(line: 82, column: 14, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !3, line: 81, column: 27)
!135 = !DILocation(line: 83, column: 5, scope: !134)
!136 = !DILocation(line: 83, column: 14, scope: !134)
!137 = !DILocation(line: 84, column: 3, scope: !134)
!138 = !DILocation(line: 84, column: 14, scope: !139)
!139 = distinct !DILexicalBlock(scope: !130, file: !3, line: 84, column: 14)
!140 = !{i8 0, i8 2}
!141 = !{}
!142 = !DILocation(line: 84, column: 14, scope: !130)
!143 = !DILocation(line: 85, column: 14, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !3, line: 84, column: 25)
!145 = !DILocation(line: 86, column: 14, scope: !144)
!146 = !DILocation(line: 86, column: 9, scope: !144)
!147 = !DILocation(line: 86, column: 12, scope: !144)
!148 = !DILocation(line: 87, column: 3, scope: !144)
!149 = !DILocation(line: 88, column: 2, scope: !131)
!150 = !DILocation(line: 80, column: 44, scope: !126)
!151 = !DILocation(line: 80, column: 2, scope: !126)
!152 = distinct !{!152, !128, !153, !154, !155}
!153 = !DILocation(line: 88, column: 2, scope: !123)
!154 = !{!"llvm.loop.mustprogress"}
!155 = !{!"llvm.loop.unroll.disable"}
!156 = !DILocation(line: 89, column: 3, scope: !65)
!157 = !DILocation(line: 89, column: 8, scope: !65)
!158 = !DILocation(line: 91, column: 6, scope: !159)
!159 = distinct !DILexicalBlock(scope: !65, file: !3, line: 91, column: 6)
!160 = !DILocation(line: 91, column: 6, scope: !65)
!161 = !DILocation(line: 92, column: 12, scope: !159)
!162 = !DILocation(line: 92, column: 4, scope: !159)
!163 = !DILocation(line: 92, column: 10, scope: !159)
!164 = !DILocation(line: 92, column: 3, scope: !159)
!165 = !DILocation(line: 93, column: 9, scope: !65)
!166 = !DILocation(line: 93, column: 2, scope: !65)
!167 = !DILocation(line: 94, column: 1, scope: !65)
!168 = !DISubprogram(name: "kstrndup", scope: !169, file: !169, line: 218, type: !170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!169 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!170 = !DISubroutineType(types: !171)
!171 = !{!50, !68, !172, !26}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 61, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !174, line: 72, baseType: !175)
!174 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !174, line: 16, baseType: !25)
!176 = distinct !DISubprogram(name: "count_argc", scope: !3, file: !3, line: 12, type: !177, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !179)
!177 = !DISubroutineType(types: !178)
!178 = !{!23, !68}
!179 = !{!180, !181, !182}
!180 = !DILocalVariable(name: "str", arg: 1, scope: !176, file: !3, line: 12, type: !68)
!181 = !DILocalVariable(name: "count", scope: !176, file: !3, line: 14, type: !23)
!182 = !DILocalVariable(name: "was_space", scope: !176, file: !3, line: 15, type: !77)
!183 = !DILocation(line: 12, column: 35, scope: !176)
!184 = !DILocation(line: 14, column: 2, scope: !176)
!185 = !DILocation(line: 14, column: 6, scope: !176)
!186 = !DILocation(line: 15, column: 2, scope: !176)
!187 = !DILocation(line: 15, column: 7, scope: !176)
!188 = !DILocation(line: 17, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !176, file: !3, line: 17, column: 2)
!190 = !DILocation(line: 17, column: 7, scope: !189)
!191 = !DILocation(line: 17, column: 26, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !3, line: 17, column: 2)
!193 = !DILocation(line: 17, column: 25, scope: !192)
!194 = !DILocation(line: 17, column: 2, scope: !189)
!195 = !DILocation(line: 18, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !3, line: 18, column: 7)
!197 = distinct !DILexicalBlock(scope: !192, file: !3, line: 17, column: 38)
!198 = !DILocation(line: 18, column: 7, scope: !197)
!199 = !DILocation(line: 19, column: 14, scope: !200)
!200 = distinct !DILexicalBlock(scope: !196, file: !3, line: 18, column: 22)
!201 = !DILocation(line: 20, column: 3, scope: !200)
!202 = !DILocation(line: 20, column: 14, scope: !203)
!203 = distinct !DILexicalBlock(scope: !196, file: !3, line: 20, column: 14)
!204 = !DILocation(line: 20, column: 14, scope: !196)
!205 = !DILocation(line: 21, column: 14, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !3, line: 20, column: 25)
!207 = !DILocation(line: 22, column: 9, scope: !206)
!208 = !DILocation(line: 23, column: 3, scope: !206)
!209 = !DILocation(line: 24, column: 2, scope: !197)
!210 = !DILocation(line: 17, column: 34, scope: !192)
!211 = !DILocation(line: 17, column: 2, scope: !192)
!212 = distinct !{!212, !194, !213, !154, !155}
!213 = !DILocation(line: 24, column: 2, scope: !189)
!214 = !DILocation(line: 26, column: 9, scope: !176)
!215 = !DILocation(line: 27, column: 1, scope: !176)
!216 = !DILocation(line: 26, column: 2, scope: !176)
!217 = distinct !DISubprogram(name: "kmalloc_array", scope: !12, file: !12, line: 629, type: !218, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !220)
!218 = !DISubroutineType(types: !219)
!219 = !{!22, !172, !172, !26}
!220 = !{!221, !222, !223, !224}
!221 = !DILocalVariable(name: "n", arg: 1, scope: !217, file: !12, line: 629, type: !172)
!222 = !DILocalVariable(name: "size", arg: 2, scope: !217, file: !12, line: 629, type: !172)
!223 = !DILocalVariable(name: "flags", arg: 3, scope: !217, file: !12, line: 629, type: !26)
!224 = !DILocalVariable(name: "bytes", scope: !217, file: !12, line: 631, type: !172)
!225 = !DILocation(line: 629, column: 61, scope: !217)
!226 = !DILocation(line: 629, column: 71, scope: !217)
!227 = !DILocation(line: 629, column: 83, scope: !217)
!228 = !DILocation(line: 631, column: 2, scope: !217)
!229 = !DILocation(line: 631, column: 9, scope: !217)
!230 = !DILocation(line: 633, column: 6, scope: !231)
!231 = distinct !DILexicalBlock(scope: !217, file: !12, line: 633, column: 6)
!232 = !DILocation(line: 633, column: 6, scope: !217)
!233 = !DILocation(line: 634, column: 3, scope: !231)
!234 = !DILocation(line: 635, column: 27, scope: !235)
!235 = distinct !DILexicalBlock(scope: !217, file: !12, line: 635, column: 6)
!236 = !DILocation(line: 635, column: 6, scope: !235)
!237 = !DILocation(line: 635, column: 30, scope: !235)
!238 = !DILocation(line: 635, column: 54, scope: !235)
!239 = !DILocation(line: 635, column: 33, scope: !235)
!240 = !DILocation(line: 635, column: 6, scope: !217)
!241 = !DILocation(line: 636, column: 18, scope: !235)
!242 = !DILocation(line: 636, column: 25, scope: !235)
!243 = !DILocation(line: 636, column: 10, scope: !235)
!244 = !DILocation(line: 636, column: 3, scope: !235)
!245 = !DILocation(line: 637, column: 19, scope: !217)
!246 = !DILocation(line: 637, column: 26, scope: !217)
!247 = !DILocation(line: 637, column: 9, scope: !217)
!248 = !DILocation(line: 637, column: 2, scope: !217)
!249 = !DILocation(line: 638, column: 1, scope: !217)
!250 = distinct !DISubprogram(name: "__must_check_overflow", scope: !251, file: !251, line: 51, type: !252, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!251 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!252 = !DISubroutineType(types: !253)
!253 = !{!77, !77}
!254 = !{!255}
!255 = !DILocalVariable(name: "overflow", arg: 1, scope: !250, file: !251, line: 51, type: !77)
!256 = !DILocation(line: 51, column: 60, scope: !250)
!257 = !DILocation(line: 53, column: 9, scope: !250)
!258 = !DILocation(line: 53, column: 2, scope: !250)
!259 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !260, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !262)
!260 = !DISubroutineType(types: !261)
!261 = !{!22, !172, !26}
!262 = !{!263, !264, !265}
!263 = !DILocalVariable(name: "size", arg: 1, scope: !259, file: !12, line: 591, type: !172)
!264 = !DILocalVariable(name: "flags", arg: 2, scope: !259, file: !12, line: 591, type: !26)
!265 = !DILocalVariable(name: "index", scope: !266, file: !12, line: 594, type: !7)
!266 = distinct !DILexicalBlock(scope: !267, file: !12, line: 593, column: 42)
!267 = distinct !DILexicalBlock(scope: !259, file: !12, line: 593, column: 6)
!268 = !DILocation(line: 591, column: 61, scope: !259)
!269 = !DILocation(line: 591, column: 73, scope: !259)
!270 = !DILocation(line: 593, column: 27, scope: !267)
!271 = !DILocation(line: 593, column: 6, scope: !267)
!272 = !DILocation(line: 593, column: 33, scope: !267)
!273 = !DILocation(line: 593, column: 36, scope: !267)
!274 = !DILocation(line: 593, column: 6, scope: !259)
!275 = !DILocation(line: 594, column: 3, scope: !266)
!276 = !DILocation(line: 594, column: 16, scope: !266)
!277 = !DILocation(line: 596, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !266, file: !12, line: 596, column: 7)
!279 = !DILocation(line: 596, column: 12, scope: !278)
!280 = !DILocation(line: 596, column: 7, scope: !266)
!281 = !DILocation(line: 597, column: 25, scope: !278)
!282 = !DILocation(line: 597, column: 31, scope: !278)
!283 = !DILocation(line: 597, column: 11, scope: !278)
!284 = !DILocation(line: 597, column: 4, scope: !278)
!285 = !DILocation(line: 599, column: 11, scope: !266)
!286 = !DILocation(line: 599, column: 9, scope: !266)
!287 = !DILocation(line: 601, column: 33, scope: !266)
!288 = !DILocation(line: 601, column: 40, scope: !266)
!289 = !DILocation(line: 601, column: 20, scope: !266)
!290 = !DILocation(line: 601, column: 5, scope: !266)
!291 = !DILocation(line: 601, column: 51, scope: !266)
!292 = !DILocation(line: 602, column: 5, scope: !266)
!293 = !DILocation(line: 602, column: 12, scope: !266)
!294 = !DILocation(line: 600, column: 10, scope: !266)
!295 = !DILocation(line: 600, column: 3, scope: !266)
!296 = !DILocation(line: 603, column: 2, scope: !267)
!297 = !DILocation(line: 604, column: 19, scope: !259)
!298 = !DILocation(line: 604, column: 25, scope: !259)
!299 = !DILocation(line: 604, column: 9, scope: !259)
!300 = !DILocation(line: 604, column: 2, scope: !259)
!301 = !DILocation(line: 605, column: 1, scope: !259)
!302 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!303 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!304 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !305, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !307)
!305 = !DISubroutineType(types: !306)
!306 = !{!7, !172, !77}
!307 = !{!308, !309}
!308 = !DILocalVariable(name: "size", arg: 1, scope: !304, file: !12, line: 444, type: !172)
!309 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !304, file: !12, line: 445, type: !77)
!310 = !DILocation(line: 444, column: 60, scope: !304)
!311 = !DILocation(line: 445, column: 16, scope: !304)
!312 = !DILocation(line: 447, column: 7, scope: !313)
!313 = distinct !DILexicalBlock(scope: !304, file: !12, line: 447, column: 6)
!314 = !DILocation(line: 447, column: 6, scope: !304)
!315 = !DILocation(line: 448, column: 3, scope: !313)
!316 = !DILocation(line: 450, column: 6, scope: !317)
!317 = distinct !DILexicalBlock(scope: !304, file: !12, line: 450, column: 6)
!318 = !DILocation(line: 450, column: 11, scope: !317)
!319 = !DILocation(line: 450, column: 6, scope: !304)
!320 = !DILocation(line: 451, column: 3, scope: !317)
!321 = !DILocation(line: 453, column: 32, scope: !322)
!322 = distinct !DILexicalBlock(scope: !304, file: !12, line: 453, column: 6)
!323 = !DILocation(line: 453, column: 37, scope: !322)
!324 = !DILocation(line: 453, column: 42, scope: !322)
!325 = !DILocation(line: 453, column: 45, scope: !322)
!326 = !DILocation(line: 453, column: 50, scope: !322)
!327 = !DILocation(line: 453, column: 6, scope: !304)
!328 = !DILocation(line: 454, column: 3, scope: !322)
!329 = !DILocation(line: 455, column: 32, scope: !330)
!330 = distinct !DILexicalBlock(scope: !304, file: !12, line: 455, column: 6)
!331 = !DILocation(line: 455, column: 37, scope: !330)
!332 = !DILocation(line: 455, column: 43, scope: !330)
!333 = !DILocation(line: 455, column: 46, scope: !330)
!334 = !DILocation(line: 455, column: 51, scope: !330)
!335 = !DILocation(line: 455, column: 6, scope: !304)
!336 = !DILocation(line: 456, column: 3, scope: !330)
!337 = !DILocation(line: 457, column: 6, scope: !338)
!338 = distinct !DILexicalBlock(scope: !304, file: !12, line: 457, column: 6)
!339 = !DILocation(line: 457, column: 11, scope: !338)
!340 = !DILocation(line: 457, column: 6, scope: !304)
!341 = !DILocation(line: 457, column: 26, scope: !338)
!342 = !DILocation(line: 458, column: 6, scope: !343)
!343 = distinct !DILexicalBlock(scope: !304, file: !12, line: 458, column: 6)
!344 = !DILocation(line: 458, column: 11, scope: !343)
!345 = !DILocation(line: 458, column: 6, scope: !304)
!346 = !DILocation(line: 458, column: 26, scope: !343)
!347 = !DILocation(line: 459, column: 6, scope: !348)
!348 = distinct !DILexicalBlock(scope: !304, file: !12, line: 459, column: 6)
!349 = !DILocation(line: 459, column: 11, scope: !348)
!350 = !DILocation(line: 459, column: 6, scope: !304)
!351 = !DILocation(line: 459, column: 26, scope: !348)
!352 = !DILocation(line: 460, column: 6, scope: !353)
!353 = distinct !DILexicalBlock(scope: !304, file: !12, line: 460, column: 6)
!354 = !DILocation(line: 460, column: 11, scope: !353)
!355 = !DILocation(line: 460, column: 6, scope: !304)
!356 = !DILocation(line: 460, column: 26, scope: !353)
!357 = !DILocation(line: 461, column: 6, scope: !358)
!358 = distinct !DILexicalBlock(scope: !304, file: !12, line: 461, column: 6)
!359 = !DILocation(line: 461, column: 11, scope: !358)
!360 = !DILocation(line: 461, column: 6, scope: !304)
!361 = !DILocation(line: 461, column: 26, scope: !358)
!362 = !DILocation(line: 462, column: 6, scope: !363)
!363 = distinct !DILexicalBlock(scope: !304, file: !12, line: 462, column: 6)
!364 = !DILocation(line: 462, column: 11, scope: !363)
!365 = !DILocation(line: 462, column: 6, scope: !304)
!366 = !DILocation(line: 462, column: 26, scope: !363)
!367 = !DILocation(line: 463, column: 6, scope: !368)
!368 = distinct !DILexicalBlock(scope: !304, file: !12, line: 463, column: 6)
!369 = !DILocation(line: 463, column: 11, scope: !368)
!370 = !DILocation(line: 463, column: 6, scope: !304)
!371 = !DILocation(line: 463, column: 26, scope: !368)
!372 = !DILocation(line: 464, column: 6, scope: !373)
!373 = distinct !DILexicalBlock(scope: !304, file: !12, line: 464, column: 6)
!374 = !DILocation(line: 464, column: 11, scope: !373)
!375 = !DILocation(line: 464, column: 6, scope: !304)
!376 = !DILocation(line: 464, column: 26, scope: !373)
!377 = !DILocation(line: 465, column: 6, scope: !378)
!378 = distinct !DILexicalBlock(scope: !304, file: !12, line: 465, column: 6)
!379 = !DILocation(line: 465, column: 11, scope: !378)
!380 = !DILocation(line: 465, column: 6, scope: !304)
!381 = !DILocation(line: 465, column: 26, scope: !378)
!382 = !DILocation(line: 466, column: 6, scope: !383)
!383 = distinct !DILexicalBlock(scope: !304, file: !12, line: 466, column: 6)
!384 = !DILocation(line: 466, column: 11, scope: !383)
!385 = !DILocation(line: 466, column: 6, scope: !304)
!386 = !DILocation(line: 466, column: 26, scope: !383)
!387 = !DILocation(line: 467, column: 6, scope: !388)
!388 = distinct !DILexicalBlock(scope: !304, file: !12, line: 467, column: 6)
!389 = !DILocation(line: 467, column: 11, scope: !388)
!390 = !DILocation(line: 467, column: 6, scope: !304)
!391 = !DILocation(line: 467, column: 26, scope: !388)
!392 = !DILocation(line: 468, column: 6, scope: !393)
!393 = distinct !DILexicalBlock(scope: !304, file: !12, line: 468, column: 6)
!394 = !DILocation(line: 468, column: 11, scope: !393)
!395 = !DILocation(line: 468, column: 6, scope: !304)
!396 = !DILocation(line: 468, column: 26, scope: !393)
!397 = !DILocation(line: 469, column: 6, scope: !398)
!398 = distinct !DILexicalBlock(scope: !304, file: !12, line: 469, column: 6)
!399 = !DILocation(line: 469, column: 11, scope: !398)
!400 = !DILocation(line: 469, column: 6, scope: !304)
!401 = !DILocation(line: 469, column: 26, scope: !398)
!402 = !DILocation(line: 470, column: 6, scope: !403)
!403 = distinct !DILexicalBlock(scope: !304, file: !12, line: 470, column: 6)
!404 = !DILocation(line: 470, column: 11, scope: !403)
!405 = !DILocation(line: 470, column: 6, scope: !304)
!406 = !DILocation(line: 470, column: 26, scope: !403)
!407 = !DILocation(line: 471, column: 6, scope: !408)
!408 = distinct !DILexicalBlock(scope: !304, file: !12, line: 471, column: 6)
!409 = !DILocation(line: 471, column: 11, scope: !408)
!410 = !DILocation(line: 471, column: 6, scope: !304)
!411 = !DILocation(line: 471, column: 26, scope: !408)
!412 = !DILocation(line: 472, column: 6, scope: !413)
!413 = distinct !DILexicalBlock(scope: !304, file: !12, line: 472, column: 6)
!414 = !DILocation(line: 472, column: 11, scope: !413)
!415 = !DILocation(line: 472, column: 6, scope: !304)
!416 = !DILocation(line: 472, column: 26, scope: !413)
!417 = !DILocation(line: 473, column: 6, scope: !418)
!418 = distinct !DILexicalBlock(scope: !304, file: !12, line: 473, column: 6)
!419 = !DILocation(line: 473, column: 11, scope: !418)
!420 = !DILocation(line: 473, column: 6, scope: !304)
!421 = !DILocation(line: 473, column: 26, scope: !418)
!422 = !DILocation(line: 474, column: 6, scope: !423)
!423 = distinct !DILexicalBlock(scope: !304, file: !12, line: 474, column: 6)
!424 = !DILocation(line: 474, column: 11, scope: !423)
!425 = !DILocation(line: 474, column: 6, scope: !304)
!426 = !DILocation(line: 474, column: 27, scope: !423)
!427 = !DILocation(line: 475, column: 6, scope: !428)
!428 = distinct !DILexicalBlock(scope: !304, file: !12, line: 475, column: 6)
!429 = !DILocation(line: 475, column: 11, scope: !428)
!430 = !DILocation(line: 475, column: 6, scope: !304)
!431 = !DILocation(line: 475, column: 32, scope: !428)
!432 = !DILocation(line: 477, column: 50, scope: !433)
!433 = distinct !DILexicalBlock(scope: !304, file: !12, line: 477, column: 6)
!434 = !DILocation(line: 477, column: 6, scope: !304)
!435 = !DILocation(line: 478, column: 3, scope: !433)
!436 = !DILocation(line: 478, column: 3, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !12, line: 478, column: 3)
!438 = distinct !DILexicalBlock(scope: !433, file: !12, line: 478, column: 3)
!439 = !{i32 -2143558206}
!440 = !DILocation(line: 478, column: 3, scope: !438)
!441 = !DILocation(line: 480, column: 3, scope: !433)
!442 = !DILocation(line: 480, column: 3, scope: !443)
!443 = distinct !DILexicalBlock(scope: !433, file: !12, line: 480, column: 3)
!444 = !DILocation(line: 480, column: 3, scope: !445)
!445 = distinct !DILexicalBlock(scope: !443, file: !12, line: 480, column: 3)
!446 = !DILocation(line: 480, column: 3, scope: !447)
!447 = distinct !DILexicalBlock(scope: !443, file: !12, line: 480, column: 3)
!448 = !{i64 2151409293, i64 2151409322, i64 2151409368, i64 2151409426, i64 2151409480, i64 2151409534, i64 2151409589, i64 2151409620}
!449 = !DILocation(line: 483, column: 2, scope: !304)
!450 = !DILocation(line: 484, column: 1, scope: !304)
!451 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!452 = !DISubroutineType(types: !453)
!453 = !{!22, !454, !26, !172}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !456, line: 11, flags: DIFlagFwdDecl)
!456 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!457 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !458, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !460)
!458 = !DISubroutineType(types: !459)
!459 = !{!11, !26, !25}
!460 = !{!461, !462}
!461 = !DILocalVariable(name: "flags", arg: 1, scope: !457, file: !12, line: 401, type: !26)
!462 = !DILocalVariable(name: "caller", arg: 2, scope: !457, file: !12, line: 401, type: !25)
!463 = !DILocation(line: 401, column: 67, scope: !457)
!464 = !DILocation(line: 401, column: 88, scope: !457)
!465 = !DILocation(line: 407, column: 6, scope: !466)
!466 = distinct !DILexicalBlock(scope: !457, file: !12, line: 407, column: 6)
!467 = !DILocation(line: 407, column: 6, scope: !457)
!468 = !DILocation(line: 413, column: 3, scope: !466)
!469 = !DILocation(line: 423, column: 38, scope: !470)
!470 = distinct !DILexicalBlock(scope: !457, file: !12, line: 423, column: 6)
!471 = !DILocation(line: 423, column: 44, scope: !470)
!472 = !DILocation(line: 423, column: 6, scope: !457)
!473 = !DILocation(line: 424, column: 3, scope: !470)
!474 = !DILocation(line: 426, column: 3, scope: !475)
!475 = distinct !DILexicalBlock(scope: !457, file: !12, line: 425, column: 6)
!476 = !DILocation(line: 429, column: 1, scope: !457)
!477 = !DISubprogram(name: "__compiletime_assert_117", scope: !12, file: !12, line: 478, type: !478, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!478 = !DISubroutineType(types: !479)
!479 = !{null}
