; ModuleID = 'kernel/time/timeconv.c'
source_filename = "kernel/time/timeconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_time64_to_tm: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad time64_to_tm ; .previous"

%struct.tm = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@__UNIQUE_ID___addressable_time64_to_tm195 = internal global ptr @time64_to_tm, section ".discard.addressable", align 8, !dbg !0
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_time64_to_tm195], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @time64_to_tm(i64 noundef %totalsecs, i32 noundef %offset, ptr noundef %result) #0 align 16 !dbg !29 {
entry:
  %totalsecs.addr = alloca i64, align 8
  %offset.addr = alloca i32, align 4
  %result.addr = alloca ptr, align 8
  %u32tmp = alloca i32, align 4
  %day_of_century = alloca i32, align 4
  %year_of_century = alloca i32, align 4
  %day_of_year = alloca i32, align 4
  %month = alloca i32, align 4
  %day = alloca i32, align 4
  %u64tmp = alloca i64, align 8
  %udays = alloca i64, align 8
  %century = alloca i64, align 8
  %year = alloca i64, align 8
  %is_Jan_or_Feb = alloca i8, align 1
  %is_leap_year = alloca i8, align 1
  %days = alloca i64, align 8
  %rem = alloca i64, align 8
  %remainder = alloca i32, align 4
  store i64 %totalsecs, ptr %totalsecs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %totalsecs.addr, metadata !49, metadata !DIExpression()), !dbg !70
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !50, metadata !DIExpression()), !dbg !71
  store ptr %result, ptr %result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %result.addr, metadata !51, metadata !DIExpression()), !dbg !72
  call void @llvm.lifetime.start.p0(i64 4, ptr %u32tmp) #4, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %u32tmp, metadata !52, metadata !DIExpression()), !dbg !74
  call void @llvm.lifetime.start.p0(i64 4, ptr %day_of_century) #4, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %day_of_century, metadata !53, metadata !DIExpression()), !dbg !75
  call void @llvm.lifetime.start.p0(i64 4, ptr %year_of_century) #4, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %year_of_century, metadata !54, metadata !DIExpression()), !dbg !76
  call void @llvm.lifetime.start.p0(i64 4, ptr %day_of_year) #4, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %day_of_year, metadata !55, metadata !DIExpression()), !dbg !77
  call void @llvm.lifetime.start.p0(i64 4, ptr %month) #4, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %month, metadata !56, metadata !DIExpression()), !dbg !78
  call void @llvm.lifetime.start.p0(i64 4, ptr %day) #4, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %day, metadata !57, metadata !DIExpression()), !dbg !79
  call void @llvm.lifetime.start.p0(i64 8, ptr %u64tmp) #4, !dbg !80
  call void @llvm.dbg.declare(metadata ptr %u64tmp, metadata !58, metadata !DIExpression()), !dbg !81
  call void @llvm.lifetime.start.p0(i64 8, ptr %udays) #4, !dbg !80
  call void @llvm.dbg.declare(metadata ptr %udays, metadata !59, metadata !DIExpression()), !dbg !82
  call void @llvm.lifetime.start.p0(i64 8, ptr %century) #4, !dbg !80
  call void @llvm.dbg.declare(metadata ptr %century, metadata !60, metadata !DIExpression()), !dbg !83
  call void @llvm.lifetime.start.p0(i64 8, ptr %year) #4, !dbg !80
  call void @llvm.dbg.declare(metadata ptr %year, metadata !61, metadata !DIExpression()), !dbg !84
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_Jan_or_Feb) #4, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %is_Jan_or_Feb, metadata !62, metadata !DIExpression()), !dbg !86
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_leap_year) #4, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %is_leap_year, metadata !66, metadata !DIExpression()), !dbg !87
  call void @llvm.lifetime.start.p0(i64 8, ptr %days) #4, !dbg !88
  call void @llvm.dbg.declare(metadata ptr %days, metadata !67, metadata !DIExpression()), !dbg !89
  call void @llvm.lifetime.start.p0(i64 8, ptr %rem) #4, !dbg !88
  call void @llvm.dbg.declare(metadata ptr %rem, metadata !68, metadata !DIExpression()), !dbg !90
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #4, !dbg !91
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !69, metadata !DIExpression()), !dbg !92
  %0 = load i64, ptr %totalsecs.addr, align 8, !dbg !93
  %call = call i64 @div_s64_rem(i64 noundef %0, i32 noundef 86400, ptr noundef %remainder) #5, !dbg !94
  store i64 %call, ptr %days, align 8, !dbg !95
  %1 = load i32, ptr %remainder, align 4, !dbg !96
  %conv = sext i32 %1 to i64, !dbg !96
  store i64 %conv, ptr %rem, align 8, !dbg !97
  %2 = load i32, ptr %offset.addr, align 4, !dbg !98
  %conv1 = sext i32 %2 to i64, !dbg !98
  %3 = load i64, ptr %rem, align 8, !dbg !99
  %add = add i64 %3, %conv1, !dbg !99
  store i64 %add, ptr %rem, align 8, !dbg !99
  br label %while.cond, !dbg !100

while.cond:                                       ; preds = %while.body, %entry
  %4 = load i64, ptr %rem, align 8, !dbg !101
  %cmp = icmp slt i64 %4, 0, !dbg !102
  br i1 %cmp, label %while.body, label %while.end, !dbg !100

while.body:                                       ; preds = %while.cond
  %5 = load i64, ptr %rem, align 8, !dbg !103
  %add3 = add i64 %5, 86400, !dbg !103
  store i64 %add3, ptr %rem, align 8, !dbg !103
  %6 = load i64, ptr %days, align 8, !dbg !105
  %dec = add i64 %6, -1, !dbg !105
  store i64 %dec, ptr %days, align 8, !dbg !105
  br label %while.cond, !dbg !100, !llvm.loop !106

while.end:                                        ; preds = %while.cond
  br label %while.cond4, !dbg !110

while.cond4:                                      ; preds = %while.body7, %while.end
  %7 = load i64, ptr %rem, align 8, !dbg !111
  %cmp5 = icmp sge i64 %7, 86400, !dbg !112
  br i1 %cmp5, label %while.body7, label %while.end8, !dbg !110

while.body7:                                      ; preds = %while.cond4
  %8 = load i64, ptr %rem, align 8, !dbg !113
  %sub = sub i64 %8, 86400, !dbg !113
  store i64 %sub, ptr %rem, align 8, !dbg !113
  %9 = load i64, ptr %days, align 8, !dbg !115
  %inc = add i64 %9, 1, !dbg !115
  store i64 %inc, ptr %days, align 8, !dbg !115
  br label %while.cond4, !dbg !110, !llvm.loop !116

while.end8:                                       ; preds = %while.cond4
  %10 = load i64, ptr %rem, align 8, !dbg !118
  %div = sdiv i64 %10, 3600, !dbg !119
  %conv9 = trunc i64 %div to i32, !dbg !118
  %11 = load ptr, ptr %result.addr, align 8, !dbg !120
  %tm_hour = getelementptr inbounds %struct.tm, ptr %11, i32 0, i32 2, !dbg !121
  store i32 %conv9, ptr %tm_hour, align 8, !dbg !122
  %12 = load i64, ptr %rem, align 8, !dbg !123
  %rem10 = srem i64 %12, 3600, !dbg !123
  store i64 %rem10, ptr %rem, align 8, !dbg !123
  %13 = load i64, ptr %rem, align 8, !dbg !124
  %div11 = sdiv i64 %13, 60, !dbg !125
  %conv12 = trunc i64 %div11 to i32, !dbg !124
  %14 = load ptr, ptr %result.addr, align 8, !dbg !126
  %tm_min = getelementptr inbounds %struct.tm, ptr %14, i32 0, i32 1, !dbg !127
  store i32 %conv12, ptr %tm_min, align 4, !dbg !128
  %15 = load i64, ptr %rem, align 8, !dbg !129
  %rem13 = srem i64 %15, 60, !dbg !130
  %conv14 = trunc i64 %rem13 to i32, !dbg !129
  %16 = load ptr, ptr %result.addr, align 8, !dbg !131
  %tm_sec = getelementptr inbounds %struct.tm, ptr %16, i32 0, i32 0, !dbg !132
  store i32 %conv14, ptr %tm_sec, align 8, !dbg !133
  %17 = load i64, ptr %days, align 8, !dbg !134
  %add15 = add i64 4, %17, !dbg !135
  %rem16 = srem i64 %add15, 7, !dbg !136
  %conv17 = trunc i64 %rem16 to i32, !dbg !137
  %18 = load ptr, ptr %result.addr, align 8, !dbg !138
  %tm_wday = getelementptr inbounds %struct.tm, ptr %18, i32 0, i32 6, !dbg !139
  store i32 %conv17, ptr %tm_wday, align 8, !dbg !140
  %19 = load ptr, ptr %result.addr, align 8, !dbg !141
  %tm_wday18 = getelementptr inbounds %struct.tm, ptr %19, i32 0, i32 6, !dbg !143
  %20 = load i32, ptr %tm_wday18, align 8, !dbg !143
  %cmp19 = icmp slt i32 %20, 0, !dbg !144
  br i1 %cmp19, label %if.then, label %if.end, !dbg !145

if.then:                                          ; preds = %while.end8
  %21 = load ptr, ptr %result.addr, align 8, !dbg !146
  %tm_wday21 = getelementptr inbounds %struct.tm, ptr %21, i32 0, i32 6, !dbg !147
  %22 = load i32, ptr %tm_wday21, align 8, !dbg !148
  %add22 = add i32 %22, 7, !dbg !148
  store i32 %add22, ptr %tm_wday21, align 8, !dbg !148
  br label %if.end, !dbg !146

if.end:                                           ; preds = %if.then, %while.end8
  %23 = load i64, ptr %days, align 8, !dbg !149
  %add23 = add i64 %23, 2305843009213814918, !dbg !150
  store i64 %add23, ptr %udays, align 8, !dbg !151
  %24 = load i64, ptr %udays, align 8, !dbg !152
  %mul = mul i64 4, %24, !dbg !153
  %add24 = add i64 %mul, 3, !dbg !154
  store i64 %add24, ptr %u64tmp, align 8, !dbg !155
  %25 = load i64, ptr %u64tmp, align 8, !dbg !156
  %call25 = call i64 @div64_u64_rem(i64 noundef %25, i64 noundef 146097, ptr noundef %u64tmp) #5, !dbg !157
  store i64 %call25, ptr %century, align 8, !dbg !158
  %26 = load i64, ptr %u64tmp, align 8, !dbg !159
  %div26 = udiv i64 %26, 4, !dbg !160
  %conv27 = trunc i64 %div26 to i32, !dbg !161
  store i32 %conv27, ptr %day_of_century, align 4, !dbg !162
  %27 = load i32, ptr %day_of_century, align 4, !dbg !163
  %mul28 = mul i32 4, %27, !dbg !164
  %add29 = add i32 %mul28, 3, !dbg !165
  store i32 %add29, ptr %u32tmp, align 4, !dbg !166
  %28 = load i32, ptr %u32tmp, align 4, !dbg !167
  %conv30 = zext i32 %28 to i64, !dbg !167
  %mul31 = mul i64 2939745, %conv30, !dbg !168
  store i64 %mul31, ptr %u64tmp, align 8, !dbg !169
  %29 = load i64, ptr %u64tmp, align 8, !dbg !170
  %shr = lshr i64 %29, 16, !dbg !170
  %shr32 = lshr i64 %shr, 16, !dbg !170
  %conv33 = trunc i64 %shr32 to i32, !dbg !170
  store i32 %conv33, ptr %year_of_century, align 4, !dbg !171
  %30 = load i64, ptr %u64tmp, align 8, !dbg !172
  %and = and i64 %30, 4294967295, !dbg !172
  %conv34 = trunc i64 %and to i32, !dbg !172
  %div35 = udiv i32 %conv34, 2939745, !dbg !173
  %div36 = udiv i32 %div35, 4, !dbg !174
  store i32 %div36, ptr %day_of_year, align 4, !dbg !175
  %31 = load i64, ptr %century, align 8, !dbg !176
  %mul37 = mul i64 100, %31, !dbg !177
  %32 = load i32, ptr %year_of_century, align 4, !dbg !178
  %conv38 = zext i32 %32 to i64, !dbg !178
  %add39 = add i64 %mul37, %conv38, !dbg !179
  store i64 %add39, ptr %year, align 8, !dbg !180
  %33 = load i32, ptr %year_of_century, align 4, !dbg !181
  %tobool = icmp ne i32 %33, 0, !dbg !181
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !181

cond.true:                                        ; preds = %if.end
  %34 = load i32, ptr %year_of_century, align 4, !dbg !182
  %rem40 = urem i32 %34, 4, !dbg !183
  %tobool41 = icmp ne i32 %rem40, 0, !dbg !184
  %lnot = xor i1 %tobool41, true, !dbg !184
  %lnot.ext = zext i1 %lnot to i32, !dbg !184
  br label %cond.end, !dbg !181

cond.false:                                       ; preds = %if.end
  %35 = load i64, ptr %century, align 8, !dbg !185
  %rem42 = urem i64 %35, 4, !dbg !186
  %tobool43 = icmp ne i64 %rem42, 0, !dbg !187
  %lnot44 = xor i1 %tobool43, true, !dbg !187
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !187
  br label %cond.end, !dbg !181

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %lnot.ext, %cond.true ], [ %lnot.ext45, %cond.false ], !dbg !181
  %tobool46 = icmp ne i32 %cond, 0, !dbg !181
  %frombool = zext i1 %tobool46 to i8, !dbg !188
  store i8 %frombool, ptr %is_leap_year, align 1, !dbg !188
  %36 = load i32, ptr %day_of_year, align 4, !dbg !189
  %mul47 = mul i32 2141, %36, !dbg !190
  %add48 = add i32 %mul47, 132377, !dbg !191
  store i32 %add48, ptr %u32tmp, align 4, !dbg !192
  %37 = load i32, ptr %u32tmp, align 4, !dbg !193
  %shr49 = lshr i32 %37, 16, !dbg !194
  store i32 %shr49, ptr %month, align 4, !dbg !195
  %38 = load i32, ptr %u32tmp, align 4, !dbg !196
  %conv50 = trunc i32 %38 to i16, !dbg !197
  %conv51 = zext i16 %conv50 to i32, !dbg !198
  %div52 = sdiv i32 %conv51, 2141, !dbg !199
  store i32 %div52, ptr %day, align 4, !dbg !200
  %39 = load i32, ptr %day_of_year, align 4, !dbg !201
  %cmp53 = icmp uge i32 %39, 306, !dbg !202
  %frombool55 = zext i1 %cmp53 to i8, !dbg !203
  store i8 %frombool55, ptr %is_Jan_or_Feb, align 1, !dbg !203
  %40 = load i64, ptr %year, align 8, !dbg !204
  %41 = load i8, ptr %is_Jan_or_Feb, align 1, !dbg !205, !range !206, !noundef !207
  %tobool56 = trunc i8 %41 to i1, !dbg !205
  %conv57 = zext i1 %tobool56 to i64, !dbg !205
  %add58 = add i64 %40, %conv57, !dbg !208
  %sub59 = sub i64 %add58, 6313183731940000, !dbg !209
  store i64 %sub59, ptr %year, align 8, !dbg !210
  %42 = load i8, ptr %is_Jan_or_Feb, align 1, !dbg !211, !range !206, !noundef !207
  %tobool60 = trunc i8 %42 to i1, !dbg !211
  br i1 %tobool60, label %cond.true62, label %cond.false64, !dbg !211

cond.true62:                                      ; preds = %cond.end
  %43 = load i32, ptr %month, align 4, !dbg !212
  %sub63 = sub i32 %43, 12, !dbg !213
  br label %cond.end65, !dbg !211

cond.false64:                                     ; preds = %cond.end
  %44 = load i32, ptr %month, align 4, !dbg !214
  br label %cond.end65, !dbg !211

cond.end65:                                       ; preds = %cond.false64, %cond.true62
  %cond66 = phi i32 [ %sub63, %cond.true62 ], [ %44, %cond.false64 ], !dbg !211
  store i32 %cond66, ptr %month, align 4, !dbg !215
  %45 = load i32, ptr %day, align 4, !dbg !216
  %add67 = add i32 %45, 1, !dbg !217
  store i32 %add67, ptr %day, align 4, !dbg !218
  %46 = load i8, ptr %is_Jan_or_Feb, align 1, !dbg !219, !range !206, !noundef !207
  %tobool68 = trunc i8 %46 to i1, !dbg !219
  br i1 %tobool68, label %cond.true70, label %cond.false71, !dbg !219

cond.true70:                                      ; preds = %cond.end65
  br label %cond.end75, !dbg !219

cond.false71:                                     ; preds = %cond.end65
  %47 = load i8, ptr %is_leap_year, align 1, !dbg !220, !range !206, !noundef !207
  %tobool72 = trunc i8 %47 to i1, !dbg !220
  %conv73 = zext i1 %tobool72 to i32, !dbg !220
  %add74 = add i32 59, %conv73, !dbg !221
  br label %cond.end75, !dbg !219

cond.end75:                                       ; preds = %cond.false71, %cond.true70
  %cond76 = phi i32 [ -306, %cond.true70 ], [ %add74, %cond.false71 ], !dbg !219
  %48 = load i32, ptr %day_of_year, align 4, !dbg !222
  %add77 = add i32 %48, %cond76, !dbg !222
  store i32 %add77, ptr %day_of_year, align 4, !dbg !222
  %49 = load i64, ptr %year, align 8, !dbg !223
  %sub78 = sub i64 %49, 1900, !dbg !224
  %50 = load ptr, ptr %result.addr, align 8, !dbg !225
  %tm_year = getelementptr inbounds %struct.tm, ptr %50, i32 0, i32 5, !dbg !226
  store i64 %sub78, ptr %tm_year, align 8, !dbg !227
  %51 = load i32, ptr %month, align 4, !dbg !228
  %52 = load ptr, ptr %result.addr, align 8, !dbg !229
  %tm_mon = getelementptr inbounds %struct.tm, ptr %52, i32 0, i32 4, !dbg !230
  store i32 %51, ptr %tm_mon, align 8, !dbg !231
  %53 = load i32, ptr %day, align 4, !dbg !232
  %54 = load ptr, ptr %result.addr, align 8, !dbg !233
  %tm_mday = getelementptr inbounds %struct.tm, ptr %54, i32 0, i32 3, !dbg !234
  store i32 %53, ptr %tm_mday, align 4, !dbg !235
  %55 = load i32, ptr %day_of_year, align 4, !dbg !236
  %56 = load ptr, ptr %result.addr, align 8, !dbg !237
  %tm_yday = getelementptr inbounds %struct.tm, ptr %56, i32 0, i32 7, !dbg !238
  store i32 %55, ptr %tm_yday, align 4, !dbg !239
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %rem) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %days) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_leap_year) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_Jan_or_Feb) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %year) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %century) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %udays) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 8, ptr %u64tmp) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 4, ptr %day) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 4, ptr %month) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 4, ptr %day_of_year) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 4, ptr %year_of_century) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 4, ptr %day_of_century) #4, !dbg !240
  call void @llvm.lifetime.end.p0(i64 4, ptr %u32tmp) #4, !dbg !240
  ret void, !dbg !240
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_s64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #3 align 16 !dbg !241 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !250, metadata !DIExpression()), !dbg !253
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !251, metadata !DIExpression()), !dbg !254
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !252, metadata !DIExpression()), !dbg !255
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !256
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !257
  %conv = sext i32 %1 to i64, !dbg !257
  %rem = srem i64 %0, %conv, !dbg !258
  %conv1 = trunc i64 %rem to i32, !dbg !256
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !259
  store i32 %conv1, ptr %2, align 4, !dbg !260
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !261
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !262
  %conv2 = sext i32 %4 to i64, !dbg !262
  %div = sdiv i64 %3, %conv2, !dbg !263
  ret i64 %div, !dbg !264
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div64_u64_rem(i64 noundef %dividend, i64 noundef %divisor, ptr noundef %remainder) #3 align 16 !dbg !265 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !270, metadata !DIExpression()), !dbg !273
  store i64 %divisor, ptr %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !271, metadata !DIExpression()), !dbg !274
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !272, metadata !DIExpression()), !dbg !275
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !276
  %1 = load i64, ptr %divisor.addr, align 8, !dbg !277
  %rem = urem i64 %0, %1, !dbg !278
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !279
  store i64 %rem, ptr %2, align 8, !dbg !280
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !281
  %4 = load i64, ptr %divisor.addr, align 8, !dbg !282
  %div = udiv i64 %3, %4, !dbg !283
  ret i64 %div, !dbg !284
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_time64_to_tm195", scope: !2, file: !3, line: 141, type: !18, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/time/.timeconv.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/time/timeconv\22 -D KBUILD_BASENAME=\22timeconv\22 -D KBUILD_MODNAME=\22timeconv\22 -D __KBUILD_MODNAME=kmod_timeconv -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/time/timeconv.ll kernel/time/timeconv.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !19, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/time/timeconv.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a509ec2b84823f29bfda5fd3df3769e")
!4 = !{!5, !10, !13, !16, !17, !18}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !6, line: 23, baseType: !7)
!6 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !8, line: 31, baseType: !9)
!8 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!9 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !6, line: 21, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !8, line: 27, baseType: !12)
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !6, line: 19, baseType: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !8, line: 24, baseType: !15)
!15 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!16 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !{!0}
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 8, !"cf-protection-branch", i32 1}
!24 = !{i32 4, !"function_return_thunk_extern", i32 1}
!25 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!26 = !{i32 1, !"Code Model", i32 2}
!27 = !{i32 1, !"override-stack-alignment", i32 8}
!28 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!29 = distinct !DISubprogram(name: "time64_to_tm", scope: !3, file: !3, line: 47, type: !30, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !48)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !17, !36}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !33, line: 8, baseType: !34)
!33 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !8, line: 30, baseType: !35)
!35 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !38, line: 36, size: 320, elements: !39)
!38 = !DIFile(filename: "./include/linux/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f33592c8760b58e8aacec1e4121b19fc")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !37, file: !38, line: 41, baseType: !17, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !37, file: !38, line: 43, baseType: !17, size: 32, offset: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !37, file: !38, line: 45, baseType: !17, size: 32, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !37, file: !38, line: 47, baseType: !17, size: 32, offset: 96)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !37, file: !38, line: 49, baseType: !17, size: 32, offset: 128)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !37, file: !38, line: 51, baseType: !16, size: 64, offset: 192)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !37, file: !38, line: 53, baseType: !17, size: 32, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !37, file: !38, line: 55, baseType: !17, size: 32, offset: 288)
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !66, !67, !68, !69}
!49 = !DILocalVariable(name: "totalsecs", arg: 1, scope: !29, file: !3, line: 47, type: !32)
!50 = !DILocalVariable(name: "offset", arg: 2, scope: !29, file: !3, line: 47, type: !17)
!51 = !DILocalVariable(name: "result", arg: 3, scope: !29, file: !3, line: 47, type: !36)
!52 = !DILocalVariable(name: "u32tmp", scope: !29, file: !3, line: 49, type: !10)
!53 = !DILocalVariable(name: "day_of_century", scope: !29, file: !3, line: 49, type: !10)
!54 = !DILocalVariable(name: "year_of_century", scope: !29, file: !3, line: 49, type: !10)
!55 = !DILocalVariable(name: "day_of_year", scope: !29, file: !3, line: 49, type: !10)
!56 = !DILocalVariable(name: "month", scope: !29, file: !3, line: 49, type: !10)
!57 = !DILocalVariable(name: "day", scope: !29, file: !3, line: 49, type: !10)
!58 = !DILocalVariable(name: "u64tmp", scope: !29, file: !3, line: 50, type: !5)
!59 = !DILocalVariable(name: "udays", scope: !29, file: !3, line: 50, type: !5)
!60 = !DILocalVariable(name: "century", scope: !29, file: !3, line: 50, type: !5)
!61 = !DILocalVariable(name: "year", scope: !29, file: !3, line: 50, type: !5)
!62 = !DILocalVariable(name: "is_Jan_or_Feb", scope: !29, file: !3, line: 51, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !64, line: 35, baseType: !65)
!64 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!65 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!66 = !DILocalVariable(name: "is_leap_year", scope: !29, file: !3, line: 51, type: !63)
!67 = !DILocalVariable(name: "days", scope: !29, file: !3, line: 52, type: !16)
!68 = !DILocalVariable(name: "rem", scope: !29, file: !3, line: 52, type: !16)
!69 = !DILocalVariable(name: "remainder", scope: !29, file: !3, line: 53, type: !17)
!70 = !DILocation(line: 47, column: 28, scope: !29)
!71 = !DILocation(line: 47, column: 43, scope: !29)
!72 = !DILocation(line: 47, column: 62, scope: !29)
!73 = !DILocation(line: 49, column: 2, scope: !29)
!74 = !DILocation(line: 49, column: 6, scope: !29)
!75 = !DILocation(line: 49, column: 14, scope: !29)
!76 = !DILocation(line: 49, column: 30, scope: !29)
!77 = !DILocation(line: 49, column: 47, scope: !29)
!78 = !DILocation(line: 49, column: 60, scope: !29)
!79 = !DILocation(line: 49, column: 67, scope: !29)
!80 = !DILocation(line: 50, column: 2, scope: !29)
!81 = !DILocation(line: 50, column: 6, scope: !29)
!82 = !DILocation(line: 50, column: 14, scope: !29)
!83 = !DILocation(line: 50, column: 21, scope: !29)
!84 = !DILocation(line: 50, column: 30, scope: !29)
!85 = !DILocation(line: 51, column: 2, scope: !29)
!86 = !DILocation(line: 51, column: 7, scope: !29)
!87 = !DILocation(line: 51, column: 22, scope: !29)
!88 = !DILocation(line: 52, column: 2, scope: !29)
!89 = !DILocation(line: 52, column: 7, scope: !29)
!90 = !DILocation(line: 52, column: 13, scope: !29)
!91 = !DILocation(line: 53, column: 2, scope: !29)
!92 = !DILocation(line: 53, column: 6, scope: !29)
!93 = !DILocation(line: 55, column: 21, scope: !29)
!94 = !DILocation(line: 55, column: 9, scope: !29)
!95 = !DILocation(line: 55, column: 7, scope: !29)
!96 = !DILocation(line: 56, column: 8, scope: !29)
!97 = !DILocation(line: 56, column: 6, scope: !29)
!98 = !DILocation(line: 57, column: 9, scope: !29)
!99 = !DILocation(line: 57, column: 6, scope: !29)
!100 = !DILocation(line: 58, column: 2, scope: !29)
!101 = !DILocation(line: 58, column: 9, scope: !29)
!102 = !DILocation(line: 58, column: 13, scope: !29)
!103 = !DILocation(line: 59, column: 7, scope: !104)
!104 = distinct !DILexicalBlock(scope: !29, file: !3, line: 58, column: 18)
!105 = !DILocation(line: 60, column: 3, scope: !104)
!106 = distinct !{!106, !100, !107, !108, !109}
!107 = !DILocation(line: 61, column: 2, scope: !29)
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !DILocation(line: 62, column: 2, scope: !29)
!111 = !DILocation(line: 62, column: 9, scope: !29)
!112 = !DILocation(line: 62, column: 13, scope: !29)
!113 = !DILocation(line: 63, column: 7, scope: !114)
!114 = distinct !DILexicalBlock(scope: !29, file: !3, line: 62, column: 30)
!115 = !DILocation(line: 64, column: 3, scope: !114)
!116 = distinct !{!116, !110, !117, !108, !109}
!117 = !DILocation(line: 65, column: 2, scope: !29)
!118 = !DILocation(line: 67, column: 20, scope: !29)
!119 = !DILocation(line: 67, column: 24, scope: !29)
!120 = !DILocation(line: 67, column: 2, scope: !29)
!121 = !DILocation(line: 67, column: 10, scope: !29)
!122 = !DILocation(line: 67, column: 18, scope: !29)
!123 = !DILocation(line: 68, column: 6, scope: !29)
!124 = !DILocation(line: 69, column: 19, scope: !29)
!125 = !DILocation(line: 69, column: 23, scope: !29)
!126 = !DILocation(line: 69, column: 2, scope: !29)
!127 = !DILocation(line: 69, column: 10, scope: !29)
!128 = !DILocation(line: 69, column: 17, scope: !29)
!129 = !DILocation(line: 70, column: 19, scope: !29)
!130 = !DILocation(line: 70, column: 23, scope: !29)
!131 = !DILocation(line: 70, column: 2, scope: !29)
!132 = !DILocation(line: 70, column: 10, scope: !29)
!133 = !DILocation(line: 70, column: 17, scope: !29)
!134 = !DILocation(line: 73, column: 25, scope: !29)
!135 = !DILocation(line: 73, column: 23, scope: !29)
!136 = !DILocation(line: 73, column: 31, scope: !29)
!137 = !DILocation(line: 73, column: 20, scope: !29)
!138 = !DILocation(line: 73, column: 2, scope: !29)
!139 = !DILocation(line: 73, column: 10, scope: !29)
!140 = !DILocation(line: 73, column: 18, scope: !29)
!141 = !DILocation(line: 74, column: 6, scope: !142)
!142 = distinct !DILexicalBlock(scope: !29, file: !3, line: 74, column: 6)
!143 = !DILocation(line: 74, column: 14, scope: !142)
!144 = !DILocation(line: 74, column: 22, scope: !142)
!145 = !DILocation(line: 74, column: 6, scope: !29)
!146 = !DILocation(line: 75, column: 3, scope: !142)
!147 = !DILocation(line: 75, column: 11, scope: !142)
!148 = !DILocation(line: 75, column: 19, scope: !142)
!149 = !DILocation(line: 105, column: 17, scope: !29)
!150 = !DILocation(line: 105, column: 23, scope: !29)
!151 = !DILocation(line: 105, column: 8, scope: !29)
!152 = !DILocation(line: 107, column: 16, scope: !29)
!153 = !DILocation(line: 107, column: 14, scope: !29)
!154 = !DILocation(line: 107, column: 22, scope: !29)
!155 = !DILocation(line: 107, column: 10, scope: !29)
!156 = !DILocation(line: 108, column: 27, scope: !29)
!157 = !DILocation(line: 108, column: 13, scope: !29)
!158 = !DILocation(line: 108, column: 11, scope: !29)
!159 = !DILocation(line: 109, column: 26, scope: !29)
!160 = !DILocation(line: 109, column: 33, scope: !29)
!161 = !DILocation(line: 109, column: 19, scope: !29)
!162 = !DILocation(line: 109, column: 17, scope: !29)
!163 = !DILocation(line: 111, column: 16, scope: !29)
!164 = !DILocation(line: 111, column: 14, scope: !29)
!165 = !DILocation(line: 111, column: 31, scope: !29)
!166 = !DILocation(line: 111, column: 10, scope: !29)
!167 = !DILocation(line: 112, column: 25, scope: !29)
!168 = !DILocation(line: 112, column: 23, scope: !29)
!169 = !DILocation(line: 112, column: 10, scope: !29)
!170 = !DILocation(line: 113, column: 20, scope: !29)
!171 = !DILocation(line: 113, column: 18, scope: !29)
!172 = !DILocation(line: 114, column: 16, scope: !29)
!173 = !DILocation(line: 114, column: 38, scope: !29)
!174 = !DILocation(line: 114, column: 48, scope: !29)
!175 = !DILocation(line: 114, column: 14, scope: !29)
!176 = !DILocation(line: 116, column: 16, scope: !29)
!177 = !DILocation(line: 116, column: 14, scope: !29)
!178 = !DILocation(line: 116, column: 26, scope: !29)
!179 = !DILocation(line: 116, column: 24, scope: !29)
!180 = !DILocation(line: 116, column: 8, scope: !29)
!181 = !DILocation(line: 117, column: 17, scope: !29)
!182 = !DILocation(line: 117, column: 37, scope: !29)
!183 = !DILocation(line: 117, column: 53, scope: !29)
!184 = !DILocation(line: 117, column: 35, scope: !29)
!185 = !DILocation(line: 117, column: 62, scope: !29)
!186 = !DILocation(line: 117, column: 70, scope: !29)
!187 = !DILocation(line: 117, column: 60, scope: !29)
!188 = !DILocation(line: 117, column: 15, scope: !29)
!189 = !DILocation(line: 119, column: 19, scope: !29)
!190 = !DILocation(line: 119, column: 17, scope: !29)
!191 = !DILocation(line: 119, column: 31, scope: !29)
!192 = !DILocation(line: 119, column: 10, scope: !29)
!193 = !DILocation(line: 120, column: 11, scope: !29)
!194 = !DILocation(line: 120, column: 18, scope: !29)
!195 = !DILocation(line: 120, column: 9, scope: !29)
!196 = !DILocation(line: 121, column: 16, scope: !29)
!197 = !DILocation(line: 121, column: 10, scope: !29)
!198 = !DILocation(line: 121, column: 9, scope: !29)
!199 = !DILocation(line: 121, column: 24, scope: !29)
!200 = !DILocation(line: 121, column: 7, scope: !29)
!201 = !DILocation(line: 127, column: 18, scope: !29)
!202 = !DILocation(line: 127, column: 30, scope: !29)
!203 = !DILocation(line: 127, column: 16, scope: !29)
!204 = !DILocation(line: 130, column: 10, scope: !29)
!205 = !DILocation(line: 130, column: 17, scope: !29)
!206 = !{i8 0, i8 2}
!207 = !{}
!208 = !DILocation(line: 130, column: 15, scope: !29)
!209 = !DILocation(line: 130, column: 31, scope: !29)
!210 = !DILocation(line: 130, column: 8, scope: !29)
!211 = !DILocation(line: 131, column: 11, scope: !29)
!212 = !DILocation(line: 131, column: 27, scope: !29)
!213 = !DILocation(line: 131, column: 33, scope: !29)
!214 = !DILocation(line: 131, column: 40, scope: !29)
!215 = !DILocation(line: 131, column: 9, scope: !29)
!216 = !DILocation(line: 132, column: 9, scope: !29)
!217 = !DILocation(line: 132, column: 13, scope: !29)
!218 = !DILocation(line: 132, column: 7, scope: !29)
!219 = !DILocation(line: 133, column: 17, scope: !29)
!220 = !DILocation(line: 133, column: 50, scope: !29)
!221 = !DILocation(line: 133, column: 48, scope: !29)
!222 = !DILocation(line: 133, column: 14, scope: !29)
!223 = !DILocation(line: 136, column: 28, scope: !29)
!224 = !DILocation(line: 136, column: 33, scope: !29)
!225 = !DILocation(line: 136, column: 2, scope: !29)
!226 = !DILocation(line: 136, column: 10, scope: !29)
!227 = !DILocation(line: 136, column: 18, scope: !29)
!228 = !DILocation(line: 137, column: 26, scope: !29)
!229 = !DILocation(line: 137, column: 2, scope: !29)
!230 = !DILocation(line: 137, column: 10, scope: !29)
!231 = !DILocation(line: 137, column: 18, scope: !29)
!232 = !DILocation(line: 138, column: 26, scope: !29)
!233 = !DILocation(line: 138, column: 2, scope: !29)
!234 = !DILocation(line: 138, column: 10, scope: !29)
!235 = !DILocation(line: 138, column: 18, scope: !29)
!236 = !DILocation(line: 139, column: 26, scope: !29)
!237 = !DILocation(line: 139, column: 2, scope: !29)
!238 = !DILocation(line: 139, column: 10, scope: !29)
!239 = !DILocation(line: 139, column: 18, scope: !29)
!240 = !DILocation(line: 140, column: 1, scope: !29)
!241 = distinct !DISubprogram(name: "div_s64_rem", scope: !242, file: !242, line: 40, type: !243, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!242 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !245, !246, !248}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !6, line: 22, baseType: !34)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !6, line: 20, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !8, line: 26, baseType: !17)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!249 = !{!250, !251, !252}
!250 = !DILocalVariable(name: "dividend", arg: 1, scope: !241, file: !242, line: 40, type: !245)
!251 = !DILocalVariable(name: "divisor", arg: 2, scope: !241, file: !242, line: 40, type: !246)
!252 = !DILocalVariable(name: "remainder", arg: 3, scope: !241, file: !242, line: 40, type: !248)
!253 = !DILocation(line: 40, column: 35, scope: !241)
!254 = !DILocation(line: 40, column: 49, scope: !241)
!255 = !DILocation(line: 40, column: 63, scope: !241)
!256 = !DILocation(line: 42, column: 15, scope: !241)
!257 = !DILocation(line: 42, column: 26, scope: !241)
!258 = !DILocation(line: 42, column: 24, scope: !241)
!259 = !DILocation(line: 42, column: 3, scope: !241)
!260 = !DILocation(line: 42, column: 13, scope: !241)
!261 = !DILocation(line: 43, column: 9, scope: !241)
!262 = !DILocation(line: 43, column: 20, scope: !241)
!263 = !DILocation(line: 43, column: 18, scope: !241)
!264 = !DILocation(line: 43, column: 2, scope: !241)
!265 = distinct !DISubprogram(name: "div64_u64_rem", scope: !242, file: !242, line: 54, type: !266, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !269)
!266 = !DISubroutineType(types: !267)
!267 = !{!5, !5, !5, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!269 = !{!270, !271, !272}
!270 = !DILocalVariable(name: "dividend", arg: 1, scope: !265, file: !242, line: 54, type: !5)
!271 = !DILocalVariable(name: "divisor", arg: 2, scope: !265, file: !242, line: 54, type: !5)
!272 = !DILocalVariable(name: "remainder", arg: 3, scope: !265, file: !242, line: 54, type: !268)
!273 = !DILocation(line: 54, column: 37, scope: !265)
!274 = !DILocation(line: 54, column: 51, scope: !265)
!275 = !DILocation(line: 54, column: 65, scope: !265)
!276 = !DILocation(line: 56, column: 15, scope: !265)
!277 = !DILocation(line: 56, column: 26, scope: !265)
!278 = !DILocation(line: 56, column: 24, scope: !265)
!279 = !DILocation(line: 56, column: 3, scope: !265)
!280 = !DILocation(line: 56, column: 13, scope: !265)
!281 = !DILocation(line: 57, column: 9, scope: !265)
!282 = !DILocation(line: 57, column: 20, scope: !265)
!283 = !DILocation(line: 57, column: 18, scope: !265)
!284 = !DILocation(line: 57, column: 2, scope: !265)
