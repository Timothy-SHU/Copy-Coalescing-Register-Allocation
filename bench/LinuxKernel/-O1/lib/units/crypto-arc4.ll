; ModuleID = 'lib/crypto/arc4.c'
source_filename = "lib/crypto/arc4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_arc4_setkey: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad arc4_setkey ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_arc4_crypt: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad arc4_crypt ; .previous"

%struct.arc4_ctx = type { [256 x i32], i32, i32 }

@__UNIQUE_ID___addressable_arc4_setkey195 = internal global ptr @arc4_setkey, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_arc4_crypt196 = internal global ptr @arc4_crypt, section ".discard.addressable", align 8, !dbg !14
@__UNIQUE_ID_file197 = internal constant [32 x i8] c"libarc4.file=lib/crypto/libarc4\00", section ".modinfo", align 1, !dbg !16
@__UNIQUE_ID_license198 = internal constant [20 x i8] c"libarc4.license=GPL\00", section ".modinfo", align 1, !dbg !23
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_arc4_setkey195, ptr @__UNIQUE_ID___addressable_arc4_crypt196, ptr @__UNIQUE_ID_file197, ptr @__UNIQUE_ID_license198], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arc4_setkey(ptr noundef %ctx, ptr noundef %in_key, i32 noundef %key_len) #0 align 16 !dbg !37 {
entry:
  %ctx.addr = alloca ptr, align 8
  %in_key.addr = alloca ptr, align 8
  %key_len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !61, metadata !DIExpression()), !dbg !71
  store ptr %in_key, ptr %in_key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in_key.addr, metadata !62, metadata !DIExpression()), !dbg !72
  store i32 %key_len, ptr %key_len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %key_len.addr, metadata !63, metadata !DIExpression()), !dbg !73
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %i, metadata !64, metadata !DIExpression()), !dbg !75
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %j, metadata !65, metadata !DIExpression()), !dbg !76
  store i32 0, ptr %j, align 4, !dbg !76
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3, !dbg !74
  call void @llvm.dbg.declare(metadata ptr %k, metadata !66, metadata !DIExpression()), !dbg !77
  store i32 0, ptr %k, align 4, !dbg !77
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !78
  %x = getelementptr inbounds %struct.arc4_ctx, ptr %0, i32 0, i32 1, !dbg !79
  store i32 1, ptr %x, align 4, !dbg !80
  %1 = load ptr, ptr %ctx.addr, align 8, !dbg !81
  %y = getelementptr inbounds %struct.arc4_ctx, ptr %1, i32 0, i32 2, !dbg !82
  store i32 0, ptr %y, align 4, !dbg !83
  store i32 0, ptr %i, align 4, !dbg !84
  br label %for.cond, !dbg !86

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !dbg !87
  %cmp = icmp slt i32 %2, 256, !dbg !89
  br i1 %cmp, label %for.body, label %for.end, !dbg !90

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !dbg !91
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !92
  %S = getelementptr inbounds %struct.arc4_ctx, ptr %4, i32 0, i32 0, !dbg !93
  %5 = load i32, ptr %i, align 4, !dbg !94
  %idxprom = sext i32 %5 to i64, !dbg !92
  %arrayidx = getelementptr [256 x i32], ptr %S, i64 0, i64 %idxprom, !dbg !92
  store i32 %3, ptr %arrayidx, align 4, !dbg !95
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !96
  %inc = add i32 %6, 1, !dbg !96
  store i32 %inc, ptr %i, align 4, !dbg !96
  br label %for.cond, !dbg !97, !llvm.loop !98

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !102
  br label %for.cond1, !dbg !103

for.cond1:                                        ; preds = %for.inc22, %for.end
  %7 = load i32, ptr %i, align 4, !dbg !104
  %cmp2 = icmp slt i32 %7, 256, !dbg !105
  br i1 %cmp2, label %for.body3, label %for.end24, !dbg !106

for.body3:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3, !dbg !107
  call void @llvm.dbg.declare(metadata ptr %a, metadata !67, metadata !DIExpression()), !dbg !108
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !109
  %S4 = getelementptr inbounds %struct.arc4_ctx, ptr %8, i32 0, i32 0, !dbg !110
  %9 = load i32, ptr %i, align 4, !dbg !111
  %idxprom5 = sext i32 %9 to i64, !dbg !109
  %arrayidx6 = getelementptr [256 x i32], ptr %S4, i64 0, i64 %idxprom5, !dbg !109
  %10 = load i32, ptr %arrayidx6, align 4, !dbg !109
  store i32 %10, ptr %a, align 4, !dbg !108
  %11 = load i32, ptr %j, align 4, !dbg !112
  %12 = load ptr, ptr %in_key.addr, align 8, !dbg !113
  %13 = load i32, ptr %k, align 4, !dbg !114
  %idxprom7 = sext i32 %13 to i64, !dbg !113
  %arrayidx8 = getelementptr i8, ptr %12, i64 %idxprom7, !dbg !113
  %14 = load i8, ptr %arrayidx8, align 1, !dbg !113
  %conv = zext i8 %14 to i32, !dbg !113
  %add = add i32 %11, %conv, !dbg !115
  %15 = load i32, ptr %a, align 4, !dbg !116
  %add9 = add i32 %add, %15, !dbg !117
  %and = and i32 %add9, 255, !dbg !118
  store i32 %and, ptr %j, align 4, !dbg !119
  %16 = load ptr, ptr %ctx.addr, align 8, !dbg !120
  %S10 = getelementptr inbounds %struct.arc4_ctx, ptr %16, i32 0, i32 0, !dbg !121
  %17 = load i32, ptr %j, align 4, !dbg !122
  %idxprom11 = sext i32 %17 to i64, !dbg !120
  %arrayidx12 = getelementptr [256 x i32], ptr %S10, i64 0, i64 %idxprom11, !dbg !120
  %18 = load i32, ptr %arrayidx12, align 4, !dbg !120
  %19 = load ptr, ptr %ctx.addr, align 8, !dbg !123
  %S13 = getelementptr inbounds %struct.arc4_ctx, ptr %19, i32 0, i32 0, !dbg !124
  %20 = load i32, ptr %i, align 4, !dbg !125
  %idxprom14 = sext i32 %20 to i64, !dbg !123
  %arrayidx15 = getelementptr [256 x i32], ptr %S13, i64 0, i64 %idxprom14, !dbg !123
  store i32 %18, ptr %arrayidx15, align 4, !dbg !126
  %21 = load i32, ptr %a, align 4, !dbg !127
  %22 = load ptr, ptr %ctx.addr, align 8, !dbg !128
  %S16 = getelementptr inbounds %struct.arc4_ctx, ptr %22, i32 0, i32 0, !dbg !129
  %23 = load i32, ptr %j, align 4, !dbg !130
  %idxprom17 = sext i32 %23 to i64, !dbg !128
  %arrayidx18 = getelementptr [256 x i32], ptr %S16, i64 0, i64 %idxprom17, !dbg !128
  store i32 %21, ptr %arrayidx18, align 4, !dbg !131
  %24 = load i32, ptr %k, align 4, !dbg !132
  %inc19 = add i32 %24, 1, !dbg !132
  store i32 %inc19, ptr %k, align 4, !dbg !132
  %25 = load i32, ptr %key_len.addr, align 4, !dbg !134
  %cmp20 = icmp uge i32 %inc19, %25, !dbg !135
  br i1 %cmp20, label %if.then, label %if.end, !dbg !136

if.then:                                          ; preds = %for.body3
  store i32 0, ptr %k, align 4, !dbg !137
  br label %if.end, !dbg !138

if.end:                                           ; preds = %if.then, %for.body3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3, !dbg !139
  br label %for.inc22, !dbg !140

for.inc22:                                        ; preds = %if.end
  %26 = load i32, ptr %i, align 4, !dbg !141
  %inc23 = add i32 %26, 1, !dbg !141
  store i32 %inc23, ptr %i, align 4, !dbg !141
  br label %for.cond1, !dbg !142, !llvm.loop !143

for.end24:                                        ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3, !dbg !145
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3, !dbg !145
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3, !dbg !145
  ret i32 0, !dbg !146
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arc4_crypt(ptr noundef %ctx, ptr noundef %out, ptr noundef %in, i32 noundef %len) #0 align 16 !dbg !147 {
entry:
  %ctx.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %in.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %S = alloca ptr, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %ty = alloca i32, align 4
  %ta = alloca i32, align 4
  %tb = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !152, metadata !DIExpression()), !dbg !166
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !153, metadata !DIExpression()), !dbg !167
  store ptr %in, ptr %in.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %in.addr, metadata !154, metadata !DIExpression()), !dbg !168
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !155, metadata !DIExpression()), !dbg !169
  call void @llvm.lifetime.start.p0(i64 8, ptr %S) #3, !dbg !170
  call void @llvm.dbg.declare(metadata ptr %S, metadata !156, metadata !DIExpression()), !dbg !171
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !172
  %S1 = getelementptr inbounds %struct.arc4_ctx, ptr %0, i32 0, i32 0, !dbg !173
  %arraydecay = getelementptr inbounds [256 x i32], ptr %S1, i64 0, i64 0, !dbg !172
  store ptr %arraydecay, ptr %S, align 8, !dbg !171
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #3, !dbg !174
  call void @llvm.dbg.declare(metadata ptr %x, metadata !159, metadata !DIExpression()), !dbg !175
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #3, !dbg !174
  call void @llvm.dbg.declare(metadata ptr %y, metadata !160, metadata !DIExpression()), !dbg !176
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3, !dbg !174
  call void @llvm.dbg.declare(metadata ptr %a, metadata !161, metadata !DIExpression()), !dbg !177
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3, !dbg !174
  call void @llvm.dbg.declare(metadata ptr %b, metadata !162, metadata !DIExpression()), !dbg !178
  call void @llvm.lifetime.start.p0(i64 4, ptr %ty) #3, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %ty, metadata !163, metadata !DIExpression()), !dbg !180
  call void @llvm.lifetime.start.p0(i64 4, ptr %ta) #3, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %ta, metadata !164, metadata !DIExpression()), !dbg !181
  call void @llvm.lifetime.start.p0(i64 4, ptr %tb) #3, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %tb, metadata !165, metadata !DIExpression()), !dbg !182
  %1 = load i32, ptr %len.addr, align 4, !dbg !183
  %cmp = icmp eq i32 %1, 0, !dbg !185
  br i1 %cmp, label %if.then, label %if.end, !dbg !186

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !187

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !188
  %x2 = getelementptr inbounds %struct.arc4_ctx, ptr %2, i32 0, i32 1, !dbg !189
  %3 = load i32, ptr %x2, align 4, !dbg !189
  store i32 %3, ptr %x, align 4, !dbg !190
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !191
  %y3 = getelementptr inbounds %struct.arc4_ctx, ptr %4, i32 0, i32 2, !dbg !192
  %5 = load i32, ptr %y3, align 4, !dbg !192
  store i32 %5, ptr %y, align 4, !dbg !193
  %6 = load ptr, ptr %S, align 8, !dbg !194
  %7 = load i32, ptr %x, align 4, !dbg !195
  %idxprom = zext i32 %7 to i64, !dbg !194
  %arrayidx = getelementptr i32, ptr %6, i64 %idxprom, !dbg !194
  %8 = load i32, ptr %arrayidx, align 4, !dbg !194
  store i32 %8, ptr %a, align 4, !dbg !196
  %9 = load i32, ptr %y, align 4, !dbg !197
  %10 = load i32, ptr %a, align 4, !dbg !198
  %add = add i32 %9, %10, !dbg !199
  %and = and i32 %add, 255, !dbg !200
  store i32 %and, ptr %y, align 4, !dbg !201
  %11 = load ptr, ptr %S, align 8, !dbg !202
  %12 = load i32, ptr %y, align 4, !dbg !203
  %idxprom4 = zext i32 %12 to i64, !dbg !202
  %arrayidx5 = getelementptr i32, ptr %11, i64 %idxprom4, !dbg !202
  %13 = load i32, ptr %arrayidx5, align 4, !dbg !202
  store i32 %13, ptr %b, align 4, !dbg !204
  br label %do.body, !dbg !205

do.body:                                          ; preds = %do.cond, %if.end
  %14 = load i32, ptr %a, align 4, !dbg !206
  %15 = load ptr, ptr %S, align 8, !dbg !208
  %16 = load i32, ptr %y, align 4, !dbg !209
  %idxprom6 = zext i32 %16 to i64, !dbg !208
  %arrayidx7 = getelementptr i32, ptr %15, i64 %idxprom6, !dbg !208
  store i32 %14, ptr %arrayidx7, align 4, !dbg !210
  %17 = load i32, ptr %a, align 4, !dbg !211
  %18 = load i32, ptr %b, align 4, !dbg !212
  %add8 = add i32 %17, %18, !dbg !213
  %and9 = and i32 %add8, 255, !dbg !214
  store i32 %and9, ptr %a, align 4, !dbg !215
  %19 = load i32, ptr %b, align 4, !dbg !216
  %20 = load ptr, ptr %S, align 8, !dbg !217
  %21 = load i32, ptr %x, align 4, !dbg !218
  %idxprom10 = zext i32 %21 to i64, !dbg !217
  %arrayidx11 = getelementptr i32, ptr %20, i64 %idxprom10, !dbg !217
  store i32 %19, ptr %arrayidx11, align 4, !dbg !219
  %22 = load i32, ptr %x, align 4, !dbg !220
  %add12 = add i32 %22, 1, !dbg !221
  %and13 = and i32 %add12, 255, !dbg !222
  store i32 %and13, ptr %x, align 4, !dbg !223
  %23 = load ptr, ptr %S, align 8, !dbg !224
  %24 = load i32, ptr %x, align 4, !dbg !225
  %idxprom14 = zext i32 %24 to i64, !dbg !224
  %arrayidx15 = getelementptr i32, ptr %23, i64 %idxprom14, !dbg !224
  %25 = load i32, ptr %arrayidx15, align 4, !dbg !224
  store i32 %25, ptr %ta, align 4, !dbg !226
  %26 = load i32, ptr %y, align 4, !dbg !227
  %27 = load i32, ptr %ta, align 4, !dbg !228
  %add16 = add i32 %26, %27, !dbg !229
  %and17 = and i32 %add16, 255, !dbg !230
  store i32 %and17, ptr %ty, align 4, !dbg !231
  %28 = load ptr, ptr %S, align 8, !dbg !232
  %29 = load i32, ptr %ty, align 4, !dbg !233
  %idxprom18 = zext i32 %29 to i64, !dbg !232
  %arrayidx19 = getelementptr i32, ptr %28, i64 %idxprom18, !dbg !232
  %30 = load i32, ptr %arrayidx19, align 4, !dbg !232
  store i32 %30, ptr %tb, align 4, !dbg !234
  %31 = load ptr, ptr %in.addr, align 8, !dbg !235
  %incdec.ptr = getelementptr i8, ptr %31, i32 1, !dbg !235
  store ptr %incdec.ptr, ptr %in.addr, align 8, !dbg !235
  %32 = load i8, ptr %31, align 1, !dbg !236
  %conv = zext i8 %32 to i32, !dbg !236
  %33 = load ptr, ptr %S, align 8, !dbg !237
  %34 = load i32, ptr %a, align 4, !dbg !238
  %idxprom20 = zext i32 %34 to i64, !dbg !237
  %arrayidx21 = getelementptr i32, ptr %33, i64 %idxprom20, !dbg !237
  %35 = load i32, ptr %arrayidx21, align 4, !dbg !237
  %xor = xor i32 %conv, %35, !dbg !239
  %conv22 = trunc i32 %xor to i8, !dbg !236
  %36 = load ptr, ptr %out.addr, align 8, !dbg !240
  %incdec.ptr23 = getelementptr i8, ptr %36, i32 1, !dbg !240
  store ptr %incdec.ptr23, ptr %out.addr, align 8, !dbg !240
  store i8 %conv22, ptr %36, align 1, !dbg !241
  %37 = load i32, ptr %len.addr, align 4, !dbg !242
  %dec = add i32 %37, -1, !dbg !242
  store i32 %dec, ptr %len.addr, align 4, !dbg !242
  %cmp24 = icmp eq i32 %dec, 0, !dbg !244
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !245

if.then26:                                        ; preds = %do.body
  br label %do.end, !dbg !246

if.end27:                                         ; preds = %do.body
  %38 = load i32, ptr %ty, align 4, !dbg !247
  store i32 %38, ptr %y, align 4, !dbg !248
  %39 = load i32, ptr %ta, align 4, !dbg !249
  store i32 %39, ptr %a, align 4, !dbg !250
  %40 = load i32, ptr %tb, align 4, !dbg !251
  store i32 %40, ptr %b, align 4, !dbg !252
  br label %do.cond, !dbg !253

do.cond:                                          ; preds = %if.end27
  br i1 true, label %do.body, label %do.end, !dbg !253, !llvm.loop !254

do.end:                                           ; preds = %do.cond, %if.then26
  %41 = load i32, ptr %x, align 4, !dbg !256
  %42 = load ptr, ptr %ctx.addr, align 8, !dbg !257
  %x28 = getelementptr inbounds %struct.arc4_ctx, ptr %42, i32 0, i32 1, !dbg !258
  store i32 %41, ptr %x28, align 4, !dbg !259
  %43 = load i32, ptr %y, align 4, !dbg !260
  %44 = load ptr, ptr %ctx.addr, align 8, !dbg !261
  %y29 = getelementptr inbounds %struct.arc4_ctx, ptr %44, i32 0, i32 2, !dbg !262
  store i32 %43, ptr %y29, align 4, !dbg !263
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !264
  br label %cleanup, !dbg !264

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %tb) #3, !dbg !264
  call void @llvm.lifetime.end.p0(i64 4, ptr %ta) #3, !dbg !264
  call void @llvm.lifetime.end.p0(i64 4, ptr %ty) #3, !dbg !264
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3, !dbg !264
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3, !dbg !264
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #3, !dbg !264
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #3, !dbg !264
  call void @llvm.lifetime.end.p0(i64 8, ptr %S) #3, !dbg !264
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !264

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_arc4_setkey195", scope: !2, file: !3, line: 35, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/.arc4.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/libarc4\22 -D KBUILD_BASENAME=\22arc4\22 -D KBUILD_MODNAME=\22libarc4\22 -D __KBUILD_MODNAME=kmod_libarc4 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/arc4.ll lib/crypto/arc4.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/arc4.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e897aa6c76b1a59d5b6f3ed935d8b79")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !{!0, !14, !16, !23}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_arc4_crypt196", scope: !2, file: !3, line: 72, type: !12, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file197", scope: !2, file: !3, line: 74, type: !18, isLocal: true, isDefinition: true, align: 8)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !21)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !{!22}
!22 = !DISubrange(count: 32)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license198", scope: !2, file: !3, line: 74, type: !25, isLocal: true, isDefinition: true, align: 8)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 20)
!28 = !{i32 7, !"Dwarf Version", i32 5}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 8, !"cf-protection-branch", i32 1}
!32 = !{i32 4, !"function_return_thunk_extern", i32 1}
!33 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!34 = !{i32 1, !"Code Model", i32 2}
!35 = !{i32 1, !"override-stack-alignment", i32 8}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = distinct !DISubprogram(name: "arc4_setkey", scope: !3, file: !3, line: 13, type: !38, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !41, !55, !7}
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arc4_ctx", file: !43, line: 15, size: 8256, elements: !44)
!43 = !DIFile(filename: "./include/crypto/arc4.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7adb93878a149dae7e69a53ef42ff4d0")
!44 = !{!45, !53, !54}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "S", scope: !42, file: !43, line: 16, baseType: !46, size: 8192)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 8192, elements: !51)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !48, line: 21, baseType: !49)
!48 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !50, line: 27, baseType: !7)
!50 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!51 = !{!52}
!52 = !DISubrange(count: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !42, file: !43, line: 17, baseType: !47, size: 32, offset: 8192)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !42, file: !43, line: 17, baseType: !47, size: 32, offset: 8224)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !48, line: 17, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !50, line: 21, baseType: !59)
!59 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !DILocalVariable(name: "ctx", arg: 1, scope: !37, file: !3, line: 13, type: !41)
!62 = !DILocalVariable(name: "in_key", arg: 2, scope: !37, file: !3, line: 13, type: !55)
!63 = !DILocalVariable(name: "key_len", arg: 3, scope: !37, file: !3, line: 13, type: !7)
!64 = !DILocalVariable(name: "i", scope: !37, file: !3, line: 15, type: !40)
!65 = !DILocalVariable(name: "j", scope: !37, file: !3, line: 15, type: !40)
!66 = !DILocalVariable(name: "k", scope: !37, file: !3, line: 15, type: !40)
!67 = !DILocalVariable(name: "a", scope: !68, file: !3, line: 24, type: !47)
!68 = distinct !DILexicalBlock(scope: !69, file: !3, line: 23, column: 28)
!69 = distinct !DILexicalBlock(scope: !70, file: !3, line: 23, column: 2)
!70 = distinct !DILexicalBlock(scope: !37, file: !3, line: 23, column: 2)
!71 = !DILocation(line: 13, column: 34, scope: !37)
!72 = !DILocation(line: 13, column: 49, scope: !37)
!73 = !DILocation(line: 13, column: 70, scope: !37)
!74 = !DILocation(line: 15, column: 2, scope: !37)
!75 = !DILocation(line: 15, column: 6, scope: !37)
!76 = !DILocation(line: 15, column: 9, scope: !37)
!77 = !DILocation(line: 15, column: 16, scope: !37)
!78 = !DILocation(line: 17, column: 2, scope: !37)
!79 = !DILocation(line: 17, column: 7, scope: !37)
!80 = !DILocation(line: 17, column: 9, scope: !37)
!81 = !DILocation(line: 18, column: 2, scope: !37)
!82 = !DILocation(line: 18, column: 7, scope: !37)
!83 = !DILocation(line: 18, column: 9, scope: !37)
!84 = !DILocation(line: 20, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !37, file: !3, line: 20, column: 2)
!86 = !DILocation(line: 20, column: 7, scope: !85)
!87 = !DILocation(line: 20, column: 14, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !3, line: 20, column: 2)
!89 = !DILocation(line: 20, column: 16, scope: !88)
!90 = !DILocation(line: 20, column: 2, scope: !85)
!91 = !DILocation(line: 21, column: 15, scope: !88)
!92 = !DILocation(line: 21, column: 3, scope: !88)
!93 = !DILocation(line: 21, column: 8, scope: !88)
!94 = !DILocation(line: 21, column: 10, scope: !88)
!95 = !DILocation(line: 21, column: 13, scope: !88)
!96 = !DILocation(line: 20, column: 24, scope: !88)
!97 = !DILocation(line: 20, column: 2, scope: !88)
!98 = distinct !{!98, !90, !99, !100, !101}
!99 = !DILocation(line: 21, column: 15, scope: !85)
!100 = !{!"llvm.loop.mustprogress"}
!101 = !{!"llvm.loop.unroll.disable"}
!102 = !DILocation(line: 23, column: 9, scope: !70)
!103 = !DILocation(line: 23, column: 7, scope: !70)
!104 = !DILocation(line: 23, column: 14, scope: !69)
!105 = !DILocation(line: 23, column: 16, scope: !69)
!106 = !DILocation(line: 23, column: 2, scope: !70)
!107 = !DILocation(line: 24, column: 3, scope: !68)
!108 = !DILocation(line: 24, column: 7, scope: !68)
!109 = !DILocation(line: 24, column: 11, scope: !68)
!110 = !DILocation(line: 24, column: 16, scope: !68)
!111 = !DILocation(line: 24, column: 18, scope: !68)
!112 = !DILocation(line: 26, column: 8, scope: !68)
!113 = !DILocation(line: 26, column: 12, scope: !68)
!114 = !DILocation(line: 26, column: 19, scope: !68)
!115 = !DILocation(line: 26, column: 10, scope: !68)
!116 = !DILocation(line: 26, column: 24, scope: !68)
!117 = !DILocation(line: 26, column: 22, scope: !68)
!118 = !DILocation(line: 26, column: 27, scope: !68)
!119 = !DILocation(line: 26, column: 5, scope: !68)
!120 = !DILocation(line: 27, column: 15, scope: !68)
!121 = !DILocation(line: 27, column: 20, scope: !68)
!122 = !DILocation(line: 27, column: 22, scope: !68)
!123 = !DILocation(line: 27, column: 3, scope: !68)
!124 = !DILocation(line: 27, column: 8, scope: !68)
!125 = !DILocation(line: 27, column: 10, scope: !68)
!126 = !DILocation(line: 27, column: 13, scope: !68)
!127 = !DILocation(line: 28, column: 15, scope: !68)
!128 = !DILocation(line: 28, column: 3, scope: !68)
!129 = !DILocation(line: 28, column: 8, scope: !68)
!130 = !DILocation(line: 28, column: 10, scope: !68)
!131 = !DILocation(line: 28, column: 13, scope: !68)
!132 = !DILocation(line: 29, column: 7, scope: !133)
!133 = distinct !DILexicalBlock(scope: !68, file: !3, line: 29, column: 7)
!134 = !DILocation(line: 29, column: 14, scope: !133)
!135 = !DILocation(line: 29, column: 11, scope: !133)
!136 = !DILocation(line: 29, column: 7, scope: !68)
!137 = !DILocation(line: 30, column: 6, scope: !133)
!138 = !DILocation(line: 30, column: 4, scope: !133)
!139 = !DILocation(line: 31, column: 2, scope: !69)
!140 = !DILocation(line: 31, column: 2, scope: !68)
!141 = !DILocation(line: 23, column: 24, scope: !69)
!142 = !DILocation(line: 23, column: 2, scope: !69)
!143 = distinct !{!143, !106, !144, !100, !101}
!144 = !DILocation(line: 31, column: 2, scope: !70)
!145 = !DILocation(line: 34, column: 1, scope: !37)
!146 = !DILocation(line: 33, column: 2, scope: !37)
!147 = distinct !DISubprogram(name: "arc4_crypt", scope: !3, file: !3, line: 37, type: !148, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !151)
!148 = !DISubroutineType(types: !149)
!149 = !{null, !41, !150, !55, !7}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!151 = !{!152, !153, !154, !155, !156, !159, !160, !161, !162, !163, !164, !165}
!152 = !DILocalVariable(name: "ctx", arg: 1, scope: !147, file: !3, line: 37, type: !41)
!153 = !DILocalVariable(name: "out", arg: 2, scope: !147, file: !3, line: 37, type: !150)
!154 = !DILocalVariable(name: "in", arg: 3, scope: !147, file: !3, line: 37, type: !55)
!155 = !DILocalVariable(name: "len", arg: 4, scope: !147, file: !3, line: 37, type: !7)
!156 = !DILocalVariable(name: "S", scope: !147, file: !3, line: 39, type: !157)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!159 = !DILocalVariable(name: "x", scope: !147, file: !3, line: 40, type: !47)
!160 = !DILocalVariable(name: "y", scope: !147, file: !3, line: 40, type: !47)
!161 = !DILocalVariable(name: "a", scope: !147, file: !3, line: 40, type: !47)
!162 = !DILocalVariable(name: "b", scope: !147, file: !3, line: 40, type: !47)
!163 = !DILocalVariable(name: "ty", scope: !147, file: !3, line: 41, type: !47)
!164 = !DILocalVariable(name: "ta", scope: !147, file: !3, line: 41, type: !47)
!165 = !DILocalVariable(name: "tb", scope: !147, file: !3, line: 41, type: !47)
!166 = !DILocation(line: 37, column: 34, scope: !147)
!167 = !DILocation(line: 37, column: 43, scope: !147)
!168 = !DILocation(line: 37, column: 58, scope: !147)
!169 = !DILocation(line: 37, column: 75, scope: !147)
!170 = !DILocation(line: 39, column: 2, scope: !147)
!171 = !DILocation(line: 39, column: 13, scope: !147)
!172 = !DILocation(line: 39, column: 17, scope: !147)
!173 = !DILocation(line: 39, column: 22, scope: !147)
!174 = !DILocation(line: 40, column: 2, scope: !147)
!175 = !DILocation(line: 40, column: 6, scope: !147)
!176 = !DILocation(line: 40, column: 9, scope: !147)
!177 = !DILocation(line: 40, column: 12, scope: !147)
!178 = !DILocation(line: 40, column: 15, scope: !147)
!179 = !DILocation(line: 41, column: 2, scope: !147)
!180 = !DILocation(line: 41, column: 6, scope: !147)
!181 = !DILocation(line: 41, column: 10, scope: !147)
!182 = !DILocation(line: 41, column: 14, scope: !147)
!183 = !DILocation(line: 43, column: 6, scope: !184)
!184 = distinct !DILexicalBlock(scope: !147, file: !3, line: 43, column: 6)
!185 = !DILocation(line: 43, column: 10, scope: !184)
!186 = !DILocation(line: 43, column: 6, scope: !147)
!187 = !DILocation(line: 44, column: 3, scope: !184)
!188 = !DILocation(line: 46, column: 6, scope: !147)
!189 = !DILocation(line: 46, column: 11, scope: !147)
!190 = !DILocation(line: 46, column: 4, scope: !147)
!191 = !DILocation(line: 47, column: 6, scope: !147)
!192 = !DILocation(line: 47, column: 11, scope: !147)
!193 = !DILocation(line: 47, column: 4, scope: !147)
!194 = !DILocation(line: 49, column: 6, scope: !147)
!195 = !DILocation(line: 49, column: 8, scope: !147)
!196 = !DILocation(line: 49, column: 4, scope: !147)
!197 = !DILocation(line: 50, column: 7, scope: !147)
!198 = !DILocation(line: 50, column: 11, scope: !147)
!199 = !DILocation(line: 50, column: 9, scope: !147)
!200 = !DILocation(line: 50, column: 14, scope: !147)
!201 = !DILocation(line: 50, column: 4, scope: !147)
!202 = !DILocation(line: 51, column: 6, scope: !147)
!203 = !DILocation(line: 51, column: 8, scope: !147)
!204 = !DILocation(line: 51, column: 4, scope: !147)
!205 = !DILocation(line: 53, column: 2, scope: !147)
!206 = !DILocation(line: 54, column: 10, scope: !207)
!207 = distinct !DILexicalBlock(scope: !147, file: !3, line: 53, column: 5)
!208 = !DILocation(line: 54, column: 3, scope: !207)
!209 = !DILocation(line: 54, column: 5, scope: !207)
!210 = !DILocation(line: 54, column: 8, scope: !207)
!211 = !DILocation(line: 55, column: 8, scope: !207)
!212 = !DILocation(line: 55, column: 12, scope: !207)
!213 = !DILocation(line: 55, column: 10, scope: !207)
!214 = !DILocation(line: 55, column: 15, scope: !207)
!215 = !DILocation(line: 55, column: 5, scope: !207)
!216 = !DILocation(line: 56, column: 10, scope: !207)
!217 = !DILocation(line: 56, column: 3, scope: !207)
!218 = !DILocation(line: 56, column: 5, scope: !207)
!219 = !DILocation(line: 56, column: 8, scope: !207)
!220 = !DILocation(line: 57, column: 8, scope: !207)
!221 = !DILocation(line: 57, column: 10, scope: !207)
!222 = !DILocation(line: 57, column: 15, scope: !207)
!223 = !DILocation(line: 57, column: 5, scope: !207)
!224 = !DILocation(line: 58, column: 8, scope: !207)
!225 = !DILocation(line: 58, column: 10, scope: !207)
!226 = !DILocation(line: 58, column: 6, scope: !207)
!227 = !DILocation(line: 59, column: 9, scope: !207)
!228 = !DILocation(line: 59, column: 13, scope: !207)
!229 = !DILocation(line: 59, column: 11, scope: !207)
!230 = !DILocation(line: 59, column: 17, scope: !207)
!231 = !DILocation(line: 59, column: 6, scope: !207)
!232 = !DILocation(line: 60, column: 8, scope: !207)
!233 = !DILocation(line: 60, column: 10, scope: !207)
!234 = !DILocation(line: 60, column: 6, scope: !207)
!235 = !DILocation(line: 61, column: 15, scope: !207)
!236 = !DILocation(line: 61, column: 12, scope: !207)
!237 = !DILocation(line: 61, column: 20, scope: !207)
!238 = !DILocation(line: 61, column: 22, scope: !207)
!239 = !DILocation(line: 61, column: 18, scope: !207)
!240 = !DILocation(line: 61, column: 7, scope: !207)
!241 = !DILocation(line: 61, column: 10, scope: !207)
!242 = !DILocation(line: 62, column: 7, scope: !243)
!243 = distinct !DILexicalBlock(scope: !207, file: !3, line: 62, column: 7)
!244 = !DILocation(line: 62, column: 13, scope: !243)
!245 = !DILocation(line: 62, column: 7, scope: !207)
!246 = !DILocation(line: 63, column: 4, scope: !243)
!247 = !DILocation(line: 64, column: 7, scope: !207)
!248 = !DILocation(line: 64, column: 5, scope: !207)
!249 = !DILocation(line: 65, column: 7, scope: !207)
!250 = !DILocation(line: 65, column: 5, scope: !207)
!251 = !DILocation(line: 66, column: 7, scope: !207)
!252 = !DILocation(line: 66, column: 5, scope: !207)
!253 = !DILocation(line: 67, column: 2, scope: !207)
!254 = distinct !{!254, !205, !255, !101}
!255 = !DILocation(line: 67, column: 15, scope: !147)
!256 = !DILocation(line: 69, column: 11, scope: !147)
!257 = !DILocation(line: 69, column: 2, scope: !147)
!258 = !DILocation(line: 69, column: 7, scope: !147)
!259 = !DILocation(line: 69, column: 9, scope: !147)
!260 = !DILocation(line: 70, column: 11, scope: !147)
!261 = !DILocation(line: 70, column: 2, scope: !147)
!262 = !DILocation(line: 70, column: 7, scope: !147)
!263 = !DILocation(line: 70, column: 9, scope: !147)
!264 = !DILocation(line: 71, column: 1, scope: !147)
