; ModuleID = 'drivers/rtc/lib.c'
source_filename = "drivers/rtc/lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rtc_month_days: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rtc_month_days ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rtc_year_days: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rtc_year_days ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rtc_time64_to_tm: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rtc_time64_to_tm ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rtc_valid_tm: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rtc_valid_tm ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rtc_tm_to_time64: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rtc_tm_to_time64 ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rtc_tm_to_ktime: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rtc_tm_to_ktime ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rtc_ktime_to_tm: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rtc_ktime_to_tm ; .previous"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.timespec64 = type { i64, i64 }

@rtc_days_in_month = internal constant [12 x i8] c"\1F\1C\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F", align 1, !dbg !0
@__UNIQUE_ID___addressable_rtc_month_days267 = internal global ptr @rtc_month_days, section ".discard.addressable", align 8, !dbg !22
@rtc_ydays = internal constant [2 x [13 x i16]] [[13 x i16] [i16 0, i16 31, i16 59, i16 90, i16 120, i16 151, i16 181, i16 212, i16 243, i16 273, i16 304, i16 334, i16 365], [13 x i16] [i16 0, i16 31, i16 60, i16 91, i16 121, i16 152, i16 182, i16 213, i16 244, i16 274, i16 305, i16 335, i16 366]], align 16, !dbg !36
@__UNIQUE_ID___addressable_rtc_year_days268 = internal global ptr @rtc_year_days, section ".discard.addressable", align 8, !dbg !24
@__UNIQUE_ID___addressable_rtc_time64_to_tm269 = internal global ptr @rtc_time64_to_tm, section ".discard.addressable", align 8, !dbg !26
@__UNIQUE_ID___addressable_rtc_valid_tm270 = internal global ptr @rtc_valid_tm, section ".discard.addressable", align 8, !dbg !28
@__UNIQUE_ID___addressable_rtc_tm_to_time64271 = internal global ptr @rtc_tm_to_time64, section ".discard.addressable", align 8, !dbg !30
@__UNIQUE_ID___addressable_rtc_tm_to_ktime272 = internal global ptr @rtc_tm_to_ktime, section ".discard.addressable", align 8, !dbg !32
@__UNIQUE_ID___addressable_rtc_ktime_to_tm273 = internal global ptr @rtc_ktime_to_tm, section ".discard.addressable", align 8, !dbg !34
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_rtc_month_days267, ptr @__UNIQUE_ID___addressable_rtc_year_days268, ptr @__UNIQUE_ID___addressable_rtc_time64_to_tm269, ptr @__UNIQUE_ID___addressable_rtc_valid_tm270, ptr @__UNIQUE_ID___addressable_rtc_tm_to_time64271, ptr @__UNIQUE_ID___addressable_rtc_tm_to_ktime272, ptr @__UNIQUE_ID___addressable_rtc_ktime_to_tm273], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rtc_month_days(i32 noundef %month, i32 noundef %year) #0 align 16 !dbg !57 {
entry:
  %month.addr = alloca i32, align 4
  %year.addr = alloca i32, align 4
  store i32 %month, ptr %month.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %month.addr, metadata !61, metadata !DIExpression()), !dbg !63
  store i32 %year, ptr %year.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %year.addr, metadata !62, metadata !DIExpression()), !dbg !64
  %0 = load i32, ptr %month.addr, align 4, !dbg !65
  %idxprom = zext i32 %0 to i64, !dbg !66
  %arrayidx = getelementptr [12 x i8], ptr @rtc_days_in_month, i64 0, i64 %idxprom, !dbg !66
  %1 = load i8, ptr %arrayidx, align 1, !dbg !66
  %conv = zext i8 %1 to i32, !dbg !66
  %2 = load i32, ptr %year.addr, align 4, !dbg !67
  %call = call zeroext i1 @is_leap_year(i32 noundef %2) #7, !dbg !68
  br i1 %call, label %land.rhs, label %land.end, !dbg !69

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %month.addr, align 4, !dbg !70
  %cmp = icmp eq i32 %3, 1, !dbg !71
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !72
  %land.ext = zext i1 %4 to i32, !dbg !69
  %add = add i32 %conv, %land.ext, !dbg !73
  ret i32 %add, !dbg !74
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_leap_year(i32 noundef %year) #2 align 16 !dbg !75 {
entry:
  %year.addr = alloca i32, align 4
  store i32 %year, ptr %year.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %year.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load i32, ptr %year.addr, align 4, !dbg !85
  %rem = urem i32 %0, 4, !dbg !86
  %tobool = icmp ne i32 %rem, 0, !dbg !86
  br i1 %tobool, label %lor.rhs, label %land.lhs.true, !dbg !87

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %year.addr, align 4, !dbg !88
  %rem1 = urem i32 %1, 100, !dbg !89
  %tobool2 = icmp ne i32 %rem1, 0, !dbg !89
  br i1 %tobool2, label %lor.end, label %lor.rhs, !dbg !90

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %2 = load i32, ptr %year.addr, align 4, !dbg !91
  %rem3 = urem i32 %2, 400, !dbg !92
  %tobool4 = icmp ne i32 %rem3, 0, !dbg !93
  %lnot = xor i1 %tobool4, true, !dbg !93
  br label %lor.end, !dbg !90

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %3 = phi i1 [ true, %land.lhs.true ], [ %lnot, %lor.rhs ]
  ret i1 %3, !dbg !94
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rtc_year_days(i32 noundef %day, i32 noundef %month, i32 noundef %year) #0 align 16 !dbg !95 {
entry:
  %day.addr = alloca i32, align 4
  %month.addr = alloca i32, align 4
  %year.addr = alloca i32, align 4
  store i32 %day, ptr %day.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %day.addr, metadata !99, metadata !DIExpression()), !dbg !102
  store i32 %month, ptr %month.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %month.addr, metadata !100, metadata !DIExpression()), !dbg !103
  store i32 %year, ptr %year.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %year.addr, metadata !101, metadata !DIExpression()), !dbg !104
  %0 = load i32, ptr %year.addr, align 4, !dbg !105
  %call = call zeroext i1 @is_leap_year(i32 noundef %0) #7, !dbg !106
  %idxprom = zext i1 %call to i64, !dbg !107
  %arrayidx = getelementptr [2 x [13 x i16]], ptr @rtc_ydays, i64 0, i64 %idxprom, !dbg !107
  %1 = load i32, ptr %month.addr, align 4, !dbg !108
  %idxprom1 = zext i32 %1 to i64, !dbg !107
  %arrayidx2 = getelementptr [13 x i16], ptr %arrayidx, i64 0, i64 %idxprom1, !dbg !107
  %2 = load i16, ptr %arrayidx2, align 2, !dbg !107
  %conv = zext i16 %2 to i32, !dbg !107
  %3 = load i32, ptr %day.addr, align 4, !dbg !109
  %add = add i32 %conv, %3, !dbg !110
  %sub = sub i32 %add, 1, !dbg !111
  ret i32 %sub, !dbg !112
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rtc_time64_to_tm(i64 noundef %time, ptr noundef %tm) #0 align 16 !dbg !113 {
entry:
  %time.addr = alloca i64, align 8
  %tm.addr = alloca ptr, align 8
  %secs = alloca i32, align 4
  %days = alloca i32, align 4
  %u64tmp = alloca i64, align 8
  %u32tmp = alloca i32, align 4
  %udays = alloca i32, align 4
  %century = alloca i32, align 4
  %day_of_century = alloca i32, align 4
  %year_of_century = alloca i32, align 4
  %year = alloca i32, align 4
  %day_of_year = alloca i32, align 4
  %month = alloca i32, align 4
  %day = alloca i32, align 4
  %is_Jan_or_Feb = alloca i8, align 1
  %is_leap_year = alloca i8, align 1
  store i64 %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !132, metadata !DIExpression()), !dbg !148
  store ptr %tm, ptr %tm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tm.addr, metadata !133, metadata !DIExpression()), !dbg !149
  call void @llvm.lifetime.start.p0(i64 4, ptr %secs) #8, !dbg !150
  call void @llvm.dbg.declare(metadata ptr %secs, metadata !134, metadata !DIExpression()), !dbg !151
  call void @llvm.lifetime.start.p0(i64 4, ptr %days) #8, !dbg !152
  call void @llvm.dbg.declare(metadata ptr %days, metadata !135, metadata !DIExpression()), !dbg !153
  call void @llvm.lifetime.start.p0(i64 8, ptr %u64tmp) #8, !dbg !154
  call void @llvm.dbg.declare(metadata ptr %u64tmp, metadata !136, metadata !DIExpression()), !dbg !155
  call void @llvm.lifetime.start.p0(i64 4, ptr %u32tmp) #8, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %u32tmp, metadata !137, metadata !DIExpression()), !dbg !157
  call void @llvm.lifetime.start.p0(i64 4, ptr %udays) #8, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %udays, metadata !138, metadata !DIExpression()), !dbg !158
  call void @llvm.lifetime.start.p0(i64 4, ptr %century) #8, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %century, metadata !139, metadata !DIExpression()), !dbg !159
  call void @llvm.lifetime.start.p0(i64 4, ptr %day_of_century) #8, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %day_of_century, metadata !140, metadata !DIExpression()), !dbg !160
  call void @llvm.lifetime.start.p0(i64 4, ptr %year_of_century) #8, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %year_of_century, metadata !141, metadata !DIExpression()), !dbg !161
  call void @llvm.lifetime.start.p0(i64 4, ptr %year) #8, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %year, metadata !142, metadata !DIExpression()), !dbg !162
  call void @llvm.lifetime.start.p0(i64 4, ptr %day_of_year) #8, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %day_of_year, metadata !143, metadata !DIExpression()), !dbg !163
  call void @llvm.lifetime.start.p0(i64 4, ptr %month) #8, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %month, metadata !144, metadata !DIExpression()), !dbg !164
  call void @llvm.lifetime.start.p0(i64 4, ptr %day) #8, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %day, metadata !145, metadata !DIExpression()), !dbg !165
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_Jan_or_Feb) #8, !dbg !166
  call void @llvm.dbg.declare(metadata ptr %is_Jan_or_Feb, metadata !146, metadata !DIExpression()), !dbg !167
  call void @llvm.lifetime.start.p0(i64 1, ptr %is_leap_year) #8, !dbg !166
  call void @llvm.dbg.declare(metadata ptr %is_leap_year, metadata !147, metadata !DIExpression()), !dbg !168
  %0 = load i64, ptr %time.addr, align 8, !dbg !169
  %call = call i64 @div_s64_rem(i64 noundef %0, i32 noundef 86400, ptr noundef %secs) #7, !dbg !170
  %conv = trunc i64 %call to i32, !dbg !170
  store i32 %conv, ptr %days, align 4, !dbg !171
  %1 = load i32, ptr %days, align 4, !dbg !172
  %add = add i32 %1, 4, !dbg !173
  %rem = srem i32 %add, 7, !dbg !174
  %2 = load ptr, ptr %tm.addr, align 8, !dbg !175
  %tm_wday = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 6, !dbg !176
  store i32 %rem, ptr %tm_wday, align 4, !dbg !177
  %3 = load i32, ptr %days, align 4, !dbg !178
  %add1 = add i32 %3, 719468, !dbg !179
  store i32 %add1, ptr %udays, align 4, !dbg !180
  %4 = load i32, ptr %udays, align 4, !dbg !181
  %mul = mul i32 4, %4, !dbg !182
  %add2 = add i32 %mul, 3, !dbg !183
  store i32 %add2, ptr %u32tmp, align 4, !dbg !184
  %5 = load i32, ptr %u32tmp, align 4, !dbg !185
  %div = udiv i32 %5, 146097, !dbg !186
  store i32 %div, ptr %century, align 4, !dbg !187
  %6 = load i32, ptr %u32tmp, align 4, !dbg !188
  %rem3 = urem i32 %6, 146097, !dbg !189
  %div4 = udiv i32 %rem3, 4, !dbg !190
  store i32 %div4, ptr %day_of_century, align 4, !dbg !191
  %7 = load i32, ptr %day_of_century, align 4, !dbg !192
  %mul5 = mul i32 4, %7, !dbg !193
  %add6 = add i32 %mul5, 3, !dbg !194
  store i32 %add6, ptr %u32tmp, align 4, !dbg !195
  %8 = load i32, ptr %u32tmp, align 4, !dbg !196
  %conv7 = zext i32 %8 to i64, !dbg !196
  %mul8 = mul i64 2939745, %conv7, !dbg !197
  store i64 %mul8, ptr %u64tmp, align 8, !dbg !198
  %9 = load i64, ptr %u64tmp, align 8, !dbg !199
  %shr = lshr i64 %9, 16, !dbg !199
  %shr9 = lshr i64 %shr, 16, !dbg !199
  %conv10 = trunc i64 %shr9 to i32, !dbg !199
  store i32 %conv10, ptr %year_of_century, align 4, !dbg !200
  %10 = load i64, ptr %u64tmp, align 8, !dbg !201
  %and = and i64 %10, 4294967295, !dbg !201
  %conv11 = trunc i64 %and to i32, !dbg !201
  %div12 = udiv i32 %conv11, 2939745, !dbg !202
  %div13 = udiv i32 %div12, 4, !dbg !203
  store i32 %div13, ptr %day_of_year, align 4, !dbg !204
  %11 = load i32, ptr %century, align 4, !dbg !205
  %mul14 = mul i32 100, %11, !dbg !206
  %12 = load i32, ptr %year_of_century, align 4, !dbg !207
  %add15 = add i32 %mul14, %12, !dbg !208
  store i32 %add15, ptr %year, align 4, !dbg !209
  %13 = load i32, ptr %year_of_century, align 4, !dbg !210
  %cmp = icmp ne i32 %13, 0, !dbg !211
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !210

cond.true:                                        ; preds = %entry
  %14 = load i32, ptr %year_of_century, align 4, !dbg !212
  %rem17 = urem i32 %14, 4, !dbg !213
  %cmp18 = icmp eq i32 %rem17, 0, !dbg !214
  %conv19 = zext i1 %cmp18 to i32, !dbg !214
  br label %cond.end, !dbg !210

cond.false:                                       ; preds = %entry
  %15 = load i32, ptr %century, align 4, !dbg !215
  %rem20 = urem i32 %15, 4, !dbg !216
  %cmp21 = icmp eq i32 %rem20, 0, !dbg !217
  %conv22 = zext i1 %cmp21 to i32, !dbg !217
  br label %cond.end, !dbg !210

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv19, %cond.true ], [ %conv22, %cond.false ], !dbg !210
  %tobool = icmp ne i32 %cond, 0, !dbg !210
  %frombool = zext i1 %tobool to i8, !dbg !218
  store i8 %frombool, ptr %is_leap_year, align 1, !dbg !218
  %16 = load i32, ptr %day_of_year, align 4, !dbg !219
  %mul23 = mul i32 2141, %16, !dbg !220
  %add24 = add i32 %mul23, 132377, !dbg !221
  store i32 %add24, ptr %u32tmp, align 4, !dbg !222
  %17 = load i32, ptr %u32tmp, align 4, !dbg !223
  %shr25 = lshr i32 %17, 16, !dbg !224
  store i32 %shr25, ptr %month, align 4, !dbg !225
  %18 = load i32, ptr %u32tmp, align 4, !dbg !226
  %conv26 = trunc i32 %18 to i16, !dbg !227
  %conv27 = zext i16 %conv26 to i32, !dbg !228
  %div28 = sdiv i32 %conv27, 2141, !dbg !229
  store i32 %div28, ptr %day, align 4, !dbg !230
  %19 = load i32, ptr %day_of_year, align 4, !dbg !231
  %cmp29 = icmp uge i32 %19, 306, !dbg !232
  %frombool31 = zext i1 %cmp29 to i8, !dbg !233
  store i8 %frombool31, ptr %is_Jan_or_Feb, align 1, !dbg !233
  %20 = load i32, ptr %year, align 4, !dbg !234
  %21 = load i8, ptr %is_Jan_or_Feb, align 1, !dbg !235, !range !236, !noundef !237
  %tobool32 = trunc i8 %21 to i1, !dbg !235
  %conv33 = zext i1 %tobool32 to i32, !dbg !235
  %add34 = add i32 %20, %conv33, !dbg !238
  store i32 %add34, ptr %year, align 4, !dbg !239
  %22 = load i8, ptr %is_Jan_or_Feb, align 1, !dbg !240, !range !236, !noundef !237
  %tobool35 = trunc i8 %22 to i1, !dbg !240
  br i1 %tobool35, label %cond.true37, label %cond.false38, !dbg !240

cond.true37:                                      ; preds = %cond.end
  %23 = load i32, ptr %month, align 4, !dbg !241
  %sub = sub i32 %23, 12, !dbg !242
  br label %cond.end39, !dbg !240

cond.false38:                                     ; preds = %cond.end
  %24 = load i32, ptr %month, align 4, !dbg !243
  br label %cond.end39, !dbg !240

cond.end39:                                       ; preds = %cond.false38, %cond.true37
  %cond40 = phi i32 [ %sub, %cond.true37 ], [ %24, %cond.false38 ], !dbg !240
  store i32 %cond40, ptr %month, align 4, !dbg !244
  %25 = load i32, ptr %day, align 4, !dbg !245
  %add41 = add i32 %25, 1, !dbg !246
  store i32 %add41, ptr %day, align 4, !dbg !247
  %26 = load i8, ptr %is_Jan_or_Feb, align 1, !dbg !248, !range !236, !noundef !237
  %tobool42 = trunc i8 %26 to i1, !dbg !248
  br i1 %tobool42, label %cond.true44, label %cond.false46, !dbg !248

cond.true44:                                      ; preds = %cond.end39
  %27 = load i32, ptr %day_of_year, align 4, !dbg !249
  %sub45 = sub i32 %27, 306, !dbg !250
  br label %cond.end52, !dbg !248

cond.false46:                                     ; preds = %cond.end39
  %28 = load i32, ptr %day_of_year, align 4, !dbg !251
  %add47 = add i32 %28, 31, !dbg !252
  %add48 = add i32 %add47, 28, !dbg !253
  %29 = load i8, ptr %is_leap_year, align 1, !dbg !254, !range !236, !noundef !237
  %tobool49 = trunc i8 %29 to i1, !dbg !254
  %conv50 = zext i1 %tobool49 to i32, !dbg !254
  %add51 = add i32 %add48, %conv50, !dbg !255
  br label %cond.end52, !dbg !248

cond.end52:                                       ; preds = %cond.false46, %cond.true44
  %cond53 = phi i32 [ %sub45, %cond.true44 ], [ %add51, %cond.false46 ], !dbg !248
  store i32 %cond53, ptr %day_of_year, align 4, !dbg !256
  %30 = load i32, ptr %year, align 4, !dbg !257
  %sub54 = sub i32 %30, 1900, !dbg !258
  %31 = load ptr, ptr %tm.addr, align 8, !dbg !259
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %31, i32 0, i32 5, !dbg !260
  store i32 %sub54, ptr %tm_year, align 4, !dbg !261
  %32 = load i32, ptr %month, align 4, !dbg !262
  %33 = load ptr, ptr %tm.addr, align 8, !dbg !263
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %33, i32 0, i32 4, !dbg !264
  store i32 %32, ptr %tm_mon, align 4, !dbg !265
  %34 = load i32, ptr %day, align 4, !dbg !266
  %35 = load ptr, ptr %tm.addr, align 8, !dbg !267
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %35, i32 0, i32 3, !dbg !268
  store i32 %34, ptr %tm_mday, align 4, !dbg !269
  %36 = load i32, ptr %day_of_year, align 4, !dbg !270
  %add55 = add i32 %36, 1, !dbg !271
  %37 = load ptr, ptr %tm.addr, align 8, !dbg !272
  %tm_yday = getelementptr inbounds %struct.rtc_time, ptr %37, i32 0, i32 7, !dbg !273
  store i32 %add55, ptr %tm_yday, align 4, !dbg !274
  %38 = load i32, ptr %secs, align 4, !dbg !275
  %div56 = udiv i32 %38, 3600, !dbg !276
  %39 = load ptr, ptr %tm.addr, align 8, !dbg !277
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %39, i32 0, i32 2, !dbg !278
  store i32 %div56, ptr %tm_hour, align 4, !dbg !279
  %40 = load ptr, ptr %tm.addr, align 8, !dbg !280
  %tm_hour57 = getelementptr inbounds %struct.rtc_time, ptr %40, i32 0, i32 2, !dbg !281
  %41 = load i32, ptr %tm_hour57, align 4, !dbg !281
  %mul58 = mul i32 %41, 3600, !dbg !282
  %42 = load i32, ptr %secs, align 4, !dbg !283
  %sub59 = sub i32 %42, %mul58, !dbg !283
  store i32 %sub59, ptr %secs, align 4, !dbg !283
  %43 = load i32, ptr %secs, align 4, !dbg !284
  %div60 = udiv i32 %43, 60, !dbg !285
  %44 = load ptr, ptr %tm.addr, align 8, !dbg !286
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %44, i32 0, i32 1, !dbg !287
  store i32 %div60, ptr %tm_min, align 4, !dbg !288
  %45 = load i32, ptr %secs, align 4, !dbg !289
  %46 = load ptr, ptr %tm.addr, align 8, !dbg !290
  %tm_min61 = getelementptr inbounds %struct.rtc_time, ptr %46, i32 0, i32 1, !dbg !291
  %47 = load i32, ptr %tm_min61, align 4, !dbg !291
  %mul62 = mul i32 %47, 60, !dbg !292
  %sub63 = sub i32 %45, %mul62, !dbg !293
  %48 = load ptr, ptr %tm.addr, align 8, !dbg !294
  %tm_sec = getelementptr inbounds %struct.rtc_time, ptr %48, i32 0, i32 0, !dbg !295
  store i32 %sub63, ptr %tm_sec, align 4, !dbg !296
  %49 = load ptr, ptr %tm.addr, align 8, !dbg !297
  %tm_isdst = getelementptr inbounds %struct.rtc_time, ptr %49, i32 0, i32 8, !dbg !298
  store i32 0, ptr %tm_isdst, align 4, !dbg !299
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_leap_year) #8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 1, ptr %is_Jan_or_Feb) #8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %day) #8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %month) #8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %day_of_year) #8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %year) #8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %year_of_century) #8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %day_of_century) #8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %century) #8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %udays) #8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %u32tmp) #8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 8, ptr %u64tmp) #8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %days) #8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %secs) #8, !dbg !300
  ret void, !dbg !300
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_s64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #2 align 16 !dbg !301 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !309, metadata !DIExpression()), !dbg !312
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !310, metadata !DIExpression()), !dbg !313
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !311, metadata !DIExpression()), !dbg !314
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !315
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !316
  %conv = sext i32 %1 to i64, !dbg !316
  %rem = srem i64 %0, %conv, !dbg !317
  %conv1 = trunc i64 %rem to i32, !dbg !315
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !318
  store i32 %conv1, ptr %2, align 4, !dbg !319
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !320
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !321
  %conv2 = sext i32 %4 to i64, !dbg !321
  %div = sdiv i64 %3, %conv2, !dbg !322
  ret i64 %div, !dbg !323
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rtc_valid_tm(ptr noundef %tm) #0 align 16 !dbg !324 {
entry:
  %retval = alloca i32, align 4
  %tm.addr = alloca ptr, align 8
  store ptr %tm, ptr %tm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tm.addr, metadata !328, metadata !DIExpression()), !dbg !329
  %0 = load ptr, ptr %tm.addr, align 8, !dbg !330
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %0, i32 0, i32 5, !dbg !332
  %1 = load i32, ptr %tm_year, align 4, !dbg !332
  %cmp = icmp slt i32 %1, 70, !dbg !333
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !334

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %tm.addr, align 8, !dbg !335
  %tm_year1 = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 5, !dbg !336
  %3 = load i32, ptr %tm_year1, align 4, !dbg !336
  %cmp2 = icmp sgt i32 %3, 2147481747, !dbg !337
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !338

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load ptr, ptr %tm.addr, align 8, !dbg !339
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %4, i32 0, i32 4, !dbg !340
  %5 = load i32, ptr %tm_mon, align 4, !dbg !340
  %cmp4 = icmp uge i32 %5, 12, !dbg !341
  br i1 %cmp4, label %if.then, label %lor.lhs.false5, !dbg !342

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %6 = load ptr, ptr %tm.addr, align 8, !dbg !343
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %6, i32 0, i32 3, !dbg !344
  %7 = load i32, ptr %tm_mday, align 4, !dbg !344
  %cmp6 = icmp slt i32 %7, 1, !dbg !345
  br i1 %cmp6, label %if.then, label %lor.lhs.false7, !dbg !346

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %8 = load ptr, ptr %tm.addr, align 8, !dbg !347
  %tm_mday8 = getelementptr inbounds %struct.rtc_time, ptr %8, i32 0, i32 3, !dbg !348
  %9 = load i32, ptr %tm_mday8, align 4, !dbg !348
  %10 = load ptr, ptr %tm.addr, align 8, !dbg !349
  %tm_mon9 = getelementptr inbounds %struct.rtc_time, ptr %10, i32 0, i32 4, !dbg !350
  %11 = load i32, ptr %tm_mon9, align 4, !dbg !350
  %12 = load ptr, ptr %tm.addr, align 8, !dbg !351
  %tm_year10 = getelementptr inbounds %struct.rtc_time, ptr %12, i32 0, i32 5, !dbg !352
  %13 = load i32, ptr %tm_year10, align 4, !dbg !352
  %add = add i32 %13, 1900, !dbg !353
  %call = call i32 @rtc_month_days(i32 noundef %11, i32 noundef %add) #7, !dbg !354
  %cmp11 = icmp sgt i32 %9, %call, !dbg !355
  br i1 %cmp11, label %if.then, label %lor.lhs.false12, !dbg !356

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %14 = load ptr, ptr %tm.addr, align 8, !dbg !357
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %14, i32 0, i32 2, !dbg !358
  %15 = load i32, ptr %tm_hour, align 4, !dbg !358
  %cmp13 = icmp uge i32 %15, 24, !dbg !359
  br i1 %cmp13, label %if.then, label %lor.lhs.false14, !dbg !360

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %16 = load ptr, ptr %tm.addr, align 8, !dbg !361
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %16, i32 0, i32 1, !dbg !362
  %17 = load i32, ptr %tm_min, align 4, !dbg !362
  %cmp15 = icmp uge i32 %17, 60, !dbg !363
  br i1 %cmp15, label %if.then, label %lor.lhs.false16, !dbg !364

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %18 = load ptr, ptr %tm.addr, align 8, !dbg !365
  %tm_sec = getelementptr inbounds %struct.rtc_time, ptr %18, i32 0, i32 0, !dbg !366
  %19 = load i32, ptr %tm_sec, align 4, !dbg !366
  %cmp17 = icmp uge i32 %19, 60, !dbg !367
  br i1 %cmp17, label %if.then, label %if.end, !dbg !368

if.then:                                          ; preds = %lor.lhs.false16, %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !369
  br label %return, !dbg !369

if.end:                                           ; preds = %lor.lhs.false16
  store i32 0, ptr %retval, align 4, !dbg !370
  br label %return, !dbg !370

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, ptr %retval, align 4, !dbg !371
  ret i32 %20, !dbg !371
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @rtc_tm_to_time64(ptr noundef %tm) #0 align 16 !dbg !372 {
entry:
  %tm.addr = alloca ptr, align 8
  store ptr %tm, ptr %tm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tm.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load ptr, ptr %tm.addr, align 8, !dbg !378
  %tm_year = getelementptr inbounds %struct.rtc_time, ptr %0, i32 0, i32 5, !dbg !379
  %1 = load i32, ptr %tm_year, align 4, !dbg !379
  %add = add i32 %1, 1900, !dbg !380
  %2 = load ptr, ptr %tm.addr, align 8, !dbg !381
  %tm_mon = getelementptr inbounds %struct.rtc_time, ptr %2, i32 0, i32 4, !dbg !382
  %3 = load i32, ptr %tm_mon, align 4, !dbg !382
  %add1 = add i32 %3, 1, !dbg !383
  %4 = load ptr, ptr %tm.addr, align 8, !dbg !384
  %tm_mday = getelementptr inbounds %struct.rtc_time, ptr %4, i32 0, i32 3, !dbg !385
  %5 = load i32, ptr %tm_mday, align 4, !dbg !385
  %6 = load ptr, ptr %tm.addr, align 8, !dbg !386
  %tm_hour = getelementptr inbounds %struct.rtc_time, ptr %6, i32 0, i32 2, !dbg !387
  %7 = load i32, ptr %tm_hour, align 4, !dbg !387
  %8 = load ptr, ptr %tm.addr, align 8, !dbg !388
  %tm_min = getelementptr inbounds %struct.rtc_time, ptr %8, i32 0, i32 1, !dbg !389
  %9 = load i32, ptr %tm_min, align 4, !dbg !389
  %10 = load ptr, ptr %tm.addr, align 8, !dbg !390
  %tm_sec = getelementptr inbounds %struct.rtc_time, ptr %10, i32 0, i32 0, !dbg !391
  %11 = load i32, ptr %tm_sec, align 4, !dbg !391
  %call = call i64 @mktime64(i32 noundef %add, i32 noundef %add1, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11) #7, !dbg !392
  ret i64 %call, !dbg !393
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !394 dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @rtc_tm_to_ktime(ptr noundef byval(%struct.rtc_time) align 8 %tm) #0 align 16 !dbg !399 {
entry:
  call void @llvm.dbg.declare(metadata ptr %tm, metadata !405, metadata !DIExpression()), !dbg !406
  %call = call i64 @rtc_tm_to_time64(ptr noundef %tm) #7, !dbg !407
  %call1 = call i64 @ktime_set(i64 noundef %call, i64 noundef 0) #7, !dbg !408
  ret i64 %call1, !dbg !409
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_set(i64 noundef %secs, i64 noundef %nsecs) #2 align 16 !dbg !410 {
entry:
  %retval = alloca i64, align 8
  %secs.addr = alloca i64, align 8
  %nsecs.addr = alloca i64, align 8
  store i64 %secs, ptr %secs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %secs.addr, metadata !417, metadata !DIExpression()), !dbg !419
  store i64 %nsecs, ptr %nsecs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nsecs.addr, metadata !418, metadata !DIExpression()), !dbg !420
  %0 = load i64, ptr %secs.addr, align 8, !dbg !421
  %cmp = icmp sge i64 %0, 9223372036, !dbg !421
  %lnot = xor i1 %cmp, true, !dbg !421
  %lnot1 = xor i1 %lnot, true, !dbg !421
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !421
  %conv = sext i32 %lnot.ext to i64, !dbg !421
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !421
  %tobool = icmp ne i64 %expval, 0, !dbg !421
  br i1 %tobool, label %if.then, label %if.end, !dbg !423

if.then:                                          ; preds = %entry
  store i64 9223372036854775807, ptr %retval, align 8, !dbg !424
  br label %return, !dbg !424

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %secs.addr, align 8, !dbg !425
  %mul = mul i64 %1, 1000000000, !dbg !426
  %2 = load i64, ptr %nsecs.addr, align 8, !dbg !427
  %add = add i64 %mul, %2, !dbg !428
  store i64 %add, ptr %retval, align 8, !dbg !429
  br label %return, !dbg !429

return:                                           ; preds = %if.end, %if.then
  %3 = load i64, ptr %retval, align 8, !dbg !430
  ret i64 %3, !dbg !430
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rtc_ktime_to_tm(ptr dead_on_unwind noalias writable sret(%struct.rtc_time) align 4 %agg.result, i64 noundef %kt) #0 align 16 !dbg !431 {
entry:
  %kt.addr = alloca i64, align 8
  %ts = alloca %struct.timespec64, align 8
  %tmp = alloca %struct.timespec64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !435, metadata !DIExpression()), !dbg !443
  call void @llvm.lifetime.start.p0(i64 16, ptr %ts) #8, !dbg !444
  call void @llvm.dbg.declare(metadata ptr %ts, metadata !436, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata ptr %agg.result, metadata !442, metadata !DIExpression()), !dbg !446
  call void @llvm.lifetime.start.p0(i64 16, ptr %tmp) #8, !dbg !447
  %0 = load i64, ptr %kt.addr, align 8, !dbg !447
  %call = call { i64, i64 } @ns_to_timespec64(i64 noundef %0) #7, !dbg !447
  %1 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 0, !dbg !447
  %2 = extractvalue { i64, i64 } %call, 0, !dbg !447
  store i64 %2, ptr %1, align 8, !dbg !447
  %3 = getelementptr inbounds { i64, i64 }, ptr %tmp, i32 0, i32 1, !dbg !447
  %4 = extractvalue { i64, i64 } %call, 1, !dbg !447
  store i64 %4, ptr %3, align 8, !dbg !447
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %ts, ptr align 8 %tmp, i64 16, i1 false), !dbg !447
  call void @llvm.lifetime.end.p0(i64 16, ptr %tmp) #8, !dbg !447
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1, !dbg !448
  %5 = load i64, ptr %tv_nsec, align 8, !dbg !448
  %tobool = icmp ne i64 %5, 0, !dbg !450
  br i1 %tobool, label %if.then, label %if.end, !dbg !451

if.then:                                          ; preds = %entry
  %tv_sec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !452
  %6 = load i64, ptr %tv_sec, align 8, !dbg !453
  %inc = add i64 %6, 1, !dbg !453
  store i64 %inc, ptr %tv_sec, align 8, !dbg !453
  br label %if.end, !dbg !454

if.end:                                           ; preds = %if.then, %entry
  %tv_sec1 = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 0, !dbg !455
  %7 = load i64, ptr %tv_sec1, align 8, !dbg !455
  call void @rtc_time64_to_tm(i64 noundef %7, ptr noundef %agg.result) #7, !dbg !456
  call void @llvm.lifetime.end.p0(i64 16, ptr %ts) #8, !dbg !457
  ret void, !dbg !457
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !458 dso_local { i64, i64 } @ns_to_timespec64(i64 noundef) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rtc_days_in_month", scope: !2, file: !3, line: 16, type: !43, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/rtc/.lib.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/rtc/lib\22 -D KBUILD_BASENAME=\22lib\22 -D KBUILD_MODNAME=\22lib\22 -D __KBUILD_MODNAME=kmod_lib -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/rtc/lib.ll drivers/rtc/lib.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !21, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/rtc/lib.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dcee93c2ad07793047413a6c3b9ab1c")
!4 = !{!5, !6, !11, !14, !10, !15, !18}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !7, line: 21, baseType: !8)
!7 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !9, line: 27, baseType: !10)
!9 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !7, line: 19, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !9, line: 24, baseType: !13)
!13 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !7, line: 22, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !9, line: 30, baseType: !17)
!17 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !7, line: 23, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !9, line: 31, baseType: !20)
!20 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!21 = !{!22, !24, !26, !28, !30, !32, !34, !0, !36}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rtc_month_days267", scope: !2, file: !3, line: 34, type: !5, isLocal: true, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rtc_year_days268", scope: !2, file: !3, line: 43, type: !5, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rtc_time64_to_tm269", scope: !2, file: !3, line: 142, type: !5, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rtc_valid_tm270", scope: !2, file: !3, line: 162, type: !5, isLocal: true, isDefinition: true)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rtc_tm_to_time64271", scope: !2, file: !3, line: 173, type: !5, isLocal: true, isDefinition: true)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rtc_tm_to_ktime272", scope: !2, file: !3, line: 182, type: !5, isLocal: true, isDefinition: true)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rtc_ktime_to_tm273", scope: !2, file: !3, line: 199, type: !5, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "rtc_ydays", scope: !2, file: !3, line: 20, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 416, elements: !40)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!40 = !{!41, !42}
!41 = !DISubrange(count: 2)
!42 = !DISubrange(count: 13)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 96, elements: !46)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !{!47}
!47 = !DISubrange(count: 12)
!48 = !{i32 7, !"Dwarf Version", i32 5}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 8, !"cf-protection-branch", i32 1}
!52 = !{i32 4, !"function_return_thunk_extern", i32 1}
!53 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!54 = !{i32 1, !"Code Model", i32 2}
!55 = !{i32 1, !"override-stack-alignment", i32 8}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = distinct !DISubprogram(name: "rtc_month_days", scope: !3, file: !3, line: 30, type: !58, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{!14, !10, !10}
!60 = !{!61, !62}
!61 = !DILocalVariable(name: "month", arg: 1, scope: !57, file: !3, line: 30, type: !10)
!62 = !DILocalVariable(name: "year", arg: 2, scope: !57, file: !3, line: 30, type: !10)
!63 = !DILocation(line: 30, column: 33, scope: !57)
!64 = !DILocation(line: 30, column: 53, scope: !57)
!65 = !DILocation(line: 32, column: 27, scope: !57)
!66 = !DILocation(line: 32, column: 9, scope: !57)
!67 = !DILocation(line: 32, column: 50, scope: !57)
!68 = !DILocation(line: 32, column: 37, scope: !57)
!69 = !DILocation(line: 32, column: 56, scope: !57)
!70 = !DILocation(line: 32, column: 59, scope: !57)
!71 = !DILocation(line: 32, column: 65, scope: !57)
!72 = !DILocation(line: 0, scope: !57)
!73 = !DILocation(line: 32, column: 34, scope: !57)
!74 = !DILocation(line: 32, column: 2, scope: !57)
!75 = distinct !DISubprogram(name: "is_leap_year", scope: !76, file: !76, line: 223, type: !77, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !82)
!76 = !DIFile(filename: "./include/linux/rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff23d3d21ddec8b2b9f29ebd0a4cf8a2")
!77 = !DISubroutineType(types: !78)
!78 = !{!79, !10}
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !80, line: 35, baseType: !81)
!80 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!81 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!82 = !{!83}
!83 = !DILocalVariable(name: "year", arg: 1, scope: !75, file: !76, line: 223, type: !10)
!84 = !DILocation(line: 223, column: 46, scope: !75)
!85 = !DILocation(line: 225, column: 12, scope: !75)
!86 = !DILocation(line: 225, column: 17, scope: !75)
!87 = !DILocation(line: 225, column: 22, scope: !75)
!88 = !DILocation(line: 225, column: 26, scope: !75)
!89 = !DILocation(line: 225, column: 31, scope: !75)
!90 = !DILocation(line: 225, column: 39, scope: !75)
!91 = !DILocation(line: 225, column: 44, scope: !75)
!92 = !DILocation(line: 225, column: 49, scope: !75)
!93 = !DILocation(line: 225, column: 42, scope: !75)
!94 = !DILocation(line: 225, column: 2, scope: !75)
!95 = distinct !DISubprogram(name: "rtc_year_days", scope: !3, file: !3, line: 39, type: !96, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !98)
!96 = !DISubroutineType(types: !97)
!97 = !{!14, !10, !10, !10}
!98 = !{!99, !100, !101}
!99 = !DILocalVariable(name: "day", arg: 1, scope: !95, file: !3, line: 39, type: !10)
!100 = !DILocalVariable(name: "month", arg: 2, scope: !95, file: !3, line: 39, type: !10)
!101 = !DILocalVariable(name: "year", arg: 3, scope: !95, file: !3, line: 39, type: !10)
!102 = !DILocation(line: 39, column: 32, scope: !95)
!103 = !DILocation(line: 39, column: 50, scope: !95)
!104 = !DILocation(line: 39, column: 70, scope: !95)
!105 = !DILocation(line: 41, column: 32, scope: !95)
!106 = !DILocation(line: 41, column: 19, scope: !95)
!107 = !DILocation(line: 41, column: 9, scope: !95)
!108 = !DILocation(line: 41, column: 39, scope: !95)
!109 = !DILocation(line: 41, column: 48, scope: !95)
!110 = !DILocation(line: 41, column: 46, scope: !95)
!111 = !DILocation(line: 41, column: 52, scope: !95)
!112 = !DILocation(line: 41, column: 2, scope: !95)
!113 = distinct !DISubprogram(name: "rtc_time64_to_tm", scope: !3, file: !3, line: 52, type: !114, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !131)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !116, !118}
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !117, line: 8, baseType: !16)
!117 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_time", file: !120, line: 25, size: 288, elements: !121)
!120 = !DIFile(filename: "./include/uapi/linux/rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80f54d46d0d21ef6b644244083c34d9c")
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !119, file: !120, line: 26, baseType: !14, size: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !119, file: !120, line: 27, baseType: !14, size: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !119, file: !120, line: 28, baseType: !14, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !119, file: !120, line: 29, baseType: !14, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !119, file: !120, line: 30, baseType: !14, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !119, file: !120, line: 31, baseType: !14, size: 32, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !119, file: !120, line: 32, baseType: !14, size: 32, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !119, file: !120, line: 33, baseType: !14, size: 32, offset: 224)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !119, file: !120, line: 34, baseType: !14, size: 32, offset: 256)
!131 = !{!132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!132 = !DILocalVariable(name: "time", arg: 1, scope: !113, file: !3, line: 52, type: !116)
!133 = !DILocalVariable(name: "tm", arg: 2, scope: !113, file: !3, line: 52, type: !118)
!134 = !DILocalVariable(name: "secs", scope: !113, file: !3, line: 54, type: !10)
!135 = !DILocalVariable(name: "days", scope: !113, file: !3, line: 55, type: !14)
!136 = !DILocalVariable(name: "u64tmp", scope: !113, file: !3, line: 57, type: !18)
!137 = !DILocalVariable(name: "u32tmp", scope: !113, file: !3, line: 58, type: !6)
!138 = !DILocalVariable(name: "udays", scope: !113, file: !3, line: 58, type: !6)
!139 = !DILocalVariable(name: "century", scope: !113, file: !3, line: 58, type: !6)
!140 = !DILocalVariable(name: "day_of_century", scope: !113, file: !3, line: 58, type: !6)
!141 = !DILocalVariable(name: "year_of_century", scope: !113, file: !3, line: 58, type: !6)
!142 = !DILocalVariable(name: "year", scope: !113, file: !3, line: 58, type: !6)
!143 = !DILocalVariable(name: "day_of_year", scope: !113, file: !3, line: 59, type: !6)
!144 = !DILocalVariable(name: "month", scope: !113, file: !3, line: 59, type: !6)
!145 = !DILocalVariable(name: "day", scope: !113, file: !3, line: 59, type: !6)
!146 = !DILocalVariable(name: "is_Jan_or_Feb", scope: !113, file: !3, line: 60, type: !79)
!147 = !DILocalVariable(name: "is_leap_year", scope: !113, file: !3, line: 60, type: !79)
!148 = !DILocation(line: 52, column: 32, scope: !113)
!149 = !DILocation(line: 52, column: 55, scope: !113)
!150 = !DILocation(line: 54, column: 2, scope: !113)
!151 = !DILocation(line: 54, column: 15, scope: !113)
!152 = !DILocation(line: 55, column: 2, scope: !113)
!153 = !DILocation(line: 55, column: 6, scope: !113)
!154 = !DILocation(line: 57, column: 2, scope: !113)
!155 = !DILocation(line: 57, column: 6, scope: !113)
!156 = !DILocation(line: 58, column: 2, scope: !113)
!157 = !DILocation(line: 58, column: 6, scope: !113)
!158 = !DILocation(line: 58, column: 14, scope: !113)
!159 = !DILocation(line: 58, column: 21, scope: !113)
!160 = !DILocation(line: 58, column: 30, scope: !113)
!161 = !DILocation(line: 58, column: 46, scope: !113)
!162 = !DILocation(line: 58, column: 63, scope: !113)
!163 = !DILocation(line: 59, column: 3, scope: !113)
!164 = !DILocation(line: 59, column: 16, scope: !113)
!165 = !DILocation(line: 59, column: 23, scope: !113)
!166 = !DILocation(line: 60, column: 2, scope: !113)
!167 = !DILocation(line: 60, column: 7, scope: !113)
!168 = !DILocation(line: 60, column: 22, scope: !113)
!169 = !DILocation(line: 63, column: 21, scope: !113)
!170 = !DILocation(line: 63, column: 9, scope: !113)
!171 = !DILocation(line: 63, column: 7, scope: !113)
!172 = !DILocation(line: 66, column: 17, scope: !113)
!173 = !DILocation(line: 66, column: 22, scope: !113)
!174 = !DILocation(line: 66, column: 27, scope: !113)
!175 = !DILocation(line: 66, column: 2, scope: !113)
!176 = !DILocation(line: 66, column: 6, scope: !113)
!177 = !DILocation(line: 66, column: 14, scope: !113)
!178 = !DILocation(line: 96, column: 18, scope: !113)
!179 = !DILocation(line: 96, column: 24, scope: !113)
!180 = !DILocation(line: 96, column: 9, scope: !113)
!181 = !DILocation(line: 98, column: 16, scope: !113)
!182 = !DILocation(line: 98, column: 14, scope: !113)
!183 = !DILocation(line: 98, column: 22, scope: !113)
!184 = !DILocation(line: 98, column: 10, scope: !113)
!185 = !DILocation(line: 99, column: 13, scope: !113)
!186 = !DILocation(line: 99, column: 20, scope: !113)
!187 = !DILocation(line: 99, column: 11, scope: !113)
!188 = !DILocation(line: 100, column: 19, scope: !113)
!189 = !DILocation(line: 100, column: 26, scope: !113)
!190 = !DILocation(line: 100, column: 35, scope: !113)
!191 = !DILocation(line: 100, column: 17, scope: !113)
!192 = !DILocation(line: 102, column: 16, scope: !113)
!193 = !DILocation(line: 102, column: 14, scope: !113)
!194 = !DILocation(line: 102, column: 31, scope: !113)
!195 = !DILocation(line: 102, column: 10, scope: !113)
!196 = !DILocation(line: 103, column: 25, scope: !113)
!197 = !DILocation(line: 103, column: 23, scope: !113)
!198 = !DILocation(line: 103, column: 10, scope: !113)
!199 = !DILocation(line: 104, column: 20, scope: !113)
!200 = !DILocation(line: 104, column: 18, scope: !113)
!201 = !DILocation(line: 105, column: 16, scope: !113)
!202 = !DILocation(line: 105, column: 38, scope: !113)
!203 = !DILocation(line: 105, column: 48, scope: !113)
!204 = !DILocation(line: 105, column: 14, scope: !113)
!205 = !DILocation(line: 107, column: 16, scope: !113)
!206 = !DILocation(line: 107, column: 14, scope: !113)
!207 = !DILocation(line: 107, column: 26, scope: !113)
!208 = !DILocation(line: 107, column: 24, scope: !113)
!209 = !DILocation(line: 107, column: 8, scope: !113)
!210 = !DILocation(line: 108, column: 17, scope: !113)
!211 = !DILocation(line: 108, column: 33, scope: !113)
!212 = !DILocation(line: 109, column: 3, scope: !113)
!213 = !DILocation(line: 109, column: 19, scope: !113)
!214 = !DILocation(line: 109, column: 23, scope: !113)
!215 = !DILocation(line: 109, column: 30, scope: !113)
!216 = !DILocation(line: 109, column: 38, scope: !113)
!217 = !DILocation(line: 109, column: 42, scope: !113)
!218 = !DILocation(line: 108, column: 15, scope: !113)
!219 = !DILocation(line: 111, column: 19, scope: !113)
!220 = !DILocation(line: 111, column: 17, scope: !113)
!221 = !DILocation(line: 111, column: 31, scope: !113)
!222 = !DILocation(line: 111, column: 10, scope: !113)
!223 = !DILocation(line: 112, column: 11, scope: !113)
!224 = !DILocation(line: 112, column: 18, scope: !113)
!225 = !DILocation(line: 112, column: 9, scope: !113)
!226 = !DILocation(line: 113, column: 16, scope: !113)
!227 = !DILocation(line: 113, column: 10, scope: !113)
!228 = !DILocation(line: 113, column: 9, scope: !113)
!229 = !DILocation(line: 113, column: 24, scope: !113)
!230 = !DILocation(line: 113, column: 7, scope: !113)
!231 = !DILocation(line: 119, column: 18, scope: !113)
!232 = !DILocation(line: 119, column: 30, scope: !113)
!233 = !DILocation(line: 119, column: 16, scope: !113)
!234 = !DILocation(line: 122, column: 10, scope: !113)
!235 = !DILocation(line: 122, column: 17, scope: !113)
!236 = !{i8 0, i8 2}
!237 = !{}
!238 = !DILocation(line: 122, column: 15, scope: !113)
!239 = !DILocation(line: 122, column: 8, scope: !113)
!240 = !DILocation(line: 123, column: 11, scope: !113)
!241 = !DILocation(line: 123, column: 27, scope: !113)
!242 = !DILocation(line: 123, column: 33, scope: !113)
!243 = !DILocation(line: 123, column: 40, scope: !113)
!244 = !DILocation(line: 123, column: 9, scope: !113)
!245 = !DILocation(line: 124, column: 9, scope: !113)
!246 = !DILocation(line: 124, column: 13, scope: !113)
!247 = !DILocation(line: 124, column: 7, scope: !113)
!248 = !DILocation(line: 126, column: 16, scope: !113)
!249 = !DILocation(line: 127, column: 3, scope: !113)
!250 = !DILocation(line: 127, column: 15, scope: !113)
!251 = !DILocation(line: 127, column: 23, scope: !113)
!252 = !DILocation(line: 127, column: 35, scope: !113)
!253 = !DILocation(line: 127, column: 40, scope: !113)
!254 = !DILocation(line: 127, column: 47, scope: !113)
!255 = !DILocation(line: 127, column: 45, scope: !113)
!256 = !DILocation(line: 126, column: 14, scope: !113)
!257 = !DILocation(line: 130, column: 23, scope: !113)
!258 = !DILocation(line: 130, column: 28, scope: !113)
!259 = !DILocation(line: 130, column: 2, scope: !113)
!260 = !DILocation(line: 130, column: 6, scope: !113)
!261 = !DILocation(line: 130, column: 14, scope: !113)
!262 = !DILocation(line: 131, column: 21, scope: !113)
!263 = !DILocation(line: 131, column: 2, scope: !113)
!264 = !DILocation(line: 131, column: 6, scope: !113)
!265 = !DILocation(line: 131, column: 13, scope: !113)
!266 = !DILocation(line: 132, column: 22, scope: !113)
!267 = !DILocation(line: 132, column: 2, scope: !113)
!268 = !DILocation(line: 132, column: 6, scope: !113)
!269 = !DILocation(line: 132, column: 14, scope: !113)
!270 = !DILocation(line: 133, column: 22, scope: !113)
!271 = !DILocation(line: 133, column: 34, scope: !113)
!272 = !DILocation(line: 133, column: 2, scope: !113)
!273 = !DILocation(line: 133, column: 6, scope: !113)
!274 = !DILocation(line: 133, column: 14, scope: !113)
!275 = !DILocation(line: 135, column: 16, scope: !113)
!276 = !DILocation(line: 135, column: 21, scope: !113)
!277 = !DILocation(line: 135, column: 2, scope: !113)
!278 = !DILocation(line: 135, column: 6, scope: !113)
!279 = !DILocation(line: 135, column: 14, scope: !113)
!280 = !DILocation(line: 136, column: 10, scope: !113)
!281 = !DILocation(line: 136, column: 14, scope: !113)
!282 = !DILocation(line: 136, column: 22, scope: !113)
!283 = !DILocation(line: 136, column: 7, scope: !113)
!284 = !DILocation(line: 137, column: 15, scope: !113)
!285 = !DILocation(line: 137, column: 20, scope: !113)
!286 = !DILocation(line: 137, column: 2, scope: !113)
!287 = !DILocation(line: 137, column: 6, scope: !113)
!288 = !DILocation(line: 137, column: 13, scope: !113)
!289 = !DILocation(line: 138, column: 15, scope: !113)
!290 = !DILocation(line: 138, column: 22, scope: !113)
!291 = !DILocation(line: 138, column: 26, scope: !113)
!292 = !DILocation(line: 138, column: 33, scope: !113)
!293 = !DILocation(line: 138, column: 20, scope: !113)
!294 = !DILocation(line: 138, column: 2, scope: !113)
!295 = !DILocation(line: 138, column: 6, scope: !113)
!296 = !DILocation(line: 138, column: 13, scope: !113)
!297 = !DILocation(line: 140, column: 2, scope: !113)
!298 = !DILocation(line: 140, column: 6, scope: !113)
!299 = !DILocation(line: 140, column: 15, scope: !113)
!300 = !DILocation(line: 141, column: 1, scope: !113)
!301 = distinct !DISubprogram(name: "div_s64_rem", scope: !302, file: !302, line: 40, type: !303, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !308)
!302 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!303 = !DISubroutineType(types: !304)
!304 = !{!15, !15, !305, !307}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !7, line: 20, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !9, line: 26, baseType: !14)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!308 = !{!309, !310, !311}
!309 = !DILocalVariable(name: "dividend", arg: 1, scope: !301, file: !302, line: 40, type: !15)
!310 = !DILocalVariable(name: "divisor", arg: 2, scope: !301, file: !302, line: 40, type: !305)
!311 = !DILocalVariable(name: "remainder", arg: 3, scope: !301, file: !302, line: 40, type: !307)
!312 = !DILocation(line: 40, column: 35, scope: !301)
!313 = !DILocation(line: 40, column: 49, scope: !301)
!314 = !DILocation(line: 40, column: 63, scope: !301)
!315 = !DILocation(line: 42, column: 15, scope: !301)
!316 = !DILocation(line: 42, column: 26, scope: !301)
!317 = !DILocation(line: 42, column: 24, scope: !301)
!318 = !DILocation(line: 42, column: 3, scope: !301)
!319 = !DILocation(line: 42, column: 13, scope: !301)
!320 = !DILocation(line: 43, column: 9, scope: !301)
!321 = !DILocation(line: 43, column: 20, scope: !301)
!322 = !DILocation(line: 43, column: 18, scope: !301)
!323 = !DILocation(line: 43, column: 2, scope: !301)
!324 = distinct !DISubprogram(name: "rtc_valid_tm", scope: !3, file: !3, line: 147, type: !325, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !327)
!325 = !DISubroutineType(types: !326)
!326 = !{!14, !118}
!327 = !{!328}
!328 = !DILocalVariable(name: "tm", arg: 1, scope: !324, file: !3, line: 147, type: !118)
!329 = !DILocation(line: 147, column: 35, scope: !324)
!330 = !DILocation(line: 149, column: 6, scope: !331)
!331 = distinct !DILexicalBlock(scope: !324, file: !3, line: 149, column: 6)
!332 = !DILocation(line: 149, column: 10, scope: !331)
!333 = !DILocation(line: 149, column: 18, scope: !331)
!334 = !DILocation(line: 149, column: 23, scope: !331)
!335 = !DILocation(line: 150, column: 6, scope: !331)
!336 = !DILocation(line: 150, column: 10, scope: !331)
!337 = !DILocation(line: 150, column: 18, scope: !331)
!338 = !DILocation(line: 150, column: 37, scope: !331)
!339 = !DILocation(line: 151, column: 21, scope: !331)
!340 = !DILocation(line: 151, column: 25, scope: !331)
!341 = !DILocation(line: 151, column: 33, scope: !331)
!342 = !DILocation(line: 151, column: 39, scope: !331)
!343 = !DILocation(line: 152, column: 6, scope: !331)
!344 = !DILocation(line: 152, column: 10, scope: !331)
!345 = !DILocation(line: 152, column: 18, scope: !331)
!346 = !DILocation(line: 152, column: 22, scope: !331)
!347 = !DILocation(line: 153, column: 6, scope: !331)
!348 = !DILocation(line: 153, column: 10, scope: !331)
!349 = !DILocation(line: 153, column: 35, scope: !331)
!350 = !DILocation(line: 153, column: 39, scope: !331)
!351 = !DILocation(line: 154, column: 22, scope: !331)
!352 = !DILocation(line: 154, column: 26, scope: !331)
!353 = !DILocation(line: 154, column: 34, scope: !331)
!354 = !DILocation(line: 153, column: 20, scope: !331)
!355 = !DILocation(line: 153, column: 18, scope: !331)
!356 = !DILocation(line: 154, column: 43, scope: !331)
!357 = !DILocation(line: 155, column: 21, scope: !331)
!358 = !DILocation(line: 155, column: 25, scope: !331)
!359 = !DILocation(line: 155, column: 34, scope: !331)
!360 = !DILocation(line: 155, column: 40, scope: !331)
!361 = !DILocation(line: 156, column: 21, scope: !331)
!362 = !DILocation(line: 156, column: 25, scope: !331)
!363 = !DILocation(line: 156, column: 33, scope: !331)
!364 = !DILocation(line: 156, column: 39, scope: !331)
!365 = !DILocation(line: 157, column: 21, scope: !331)
!366 = !DILocation(line: 157, column: 25, scope: !331)
!367 = !DILocation(line: 157, column: 33, scope: !331)
!368 = !DILocation(line: 149, column: 6, scope: !324)
!369 = !DILocation(line: 158, column: 3, scope: !331)
!370 = !DILocation(line: 160, column: 2, scope: !324)
!371 = !DILocation(line: 161, column: 1, scope: !324)
!372 = distinct !DISubprogram(name: "rtc_tm_to_time64", scope: !3, file: !3, line: 168, type: !373, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !375)
!373 = !DISubroutineType(types: !374)
!374 = !{!116, !118}
!375 = !{!376}
!376 = !DILocalVariable(name: "tm", arg: 1, scope: !372, file: !3, line: 168, type: !118)
!377 = !DILocation(line: 168, column: 44, scope: !372)
!378 = !DILocation(line: 170, column: 33, scope: !372)
!379 = !DILocation(line: 170, column: 37, scope: !372)
!380 = !DILocation(line: 170, column: 45, scope: !372)
!381 = !DILocation(line: 170, column: 54, scope: !372)
!382 = !DILocation(line: 170, column: 58, scope: !372)
!383 = !DILocation(line: 170, column: 65, scope: !372)
!384 = !DILocation(line: 171, column: 4, scope: !372)
!385 = !DILocation(line: 171, column: 8, scope: !372)
!386 = !DILocation(line: 171, column: 17, scope: !372)
!387 = !DILocation(line: 171, column: 21, scope: !372)
!388 = !DILocation(line: 171, column: 30, scope: !372)
!389 = !DILocation(line: 171, column: 34, scope: !372)
!390 = !DILocation(line: 171, column: 42, scope: !372)
!391 = !DILocation(line: 171, column: 46, scope: !372)
!392 = !DILocation(line: 170, column: 9, scope: !372)
!393 = !DILocation(line: 170, column: 2, scope: !372)
!394 = !DISubprogram(name: "mktime64", scope: !395, file: !395, line: 20, type: !396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!395 = !DIFile(filename: "./include/linux/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f33592c8760b58e8aacec1e4121b19fc")
!396 = !DISubroutineType(types: !397)
!397 = !{!116, !398, !398, !398, !398, !398, !398}
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!399 = distinct !DISubprogram(name: "rtc_tm_to_ktime", scope: !3, file: !3, line: 178, type: !400, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !404)
!400 = !DISubroutineType(types: !401)
!401 = !{!402, !119}
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !403, line: 29, baseType: !15)
!403 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!404 = !{!405}
!405 = !DILocalVariable(name: "tm", arg: 1, scope: !399, file: !3, line: 178, type: !119)
!406 = !DILocation(line: 178, column: 41, scope: !399)
!407 = !DILocation(line: 180, column: 19, scope: !399)
!408 = !DILocation(line: 180, column: 9, scope: !399)
!409 = !DILocation(line: 180, column: 2, scope: !399)
!410 = distinct !DISubprogram(name: "ktime_set", scope: !403, file: !403, line: 38, type: !411, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !416)
!411 = !DISubroutineType(types: !412)
!412 = !{!402, !413, !414}
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !415)
!415 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!416 = !{!417, !418}
!417 = !DILocalVariable(name: "secs", arg: 1, scope: !410, file: !403, line: 38, type: !413)
!418 = !DILocalVariable(name: "nsecs", arg: 2, scope: !410, file: !403, line: 38, type: !414)
!419 = !DILocation(line: 38, column: 43, scope: !410)
!420 = !DILocation(line: 38, column: 69, scope: !410)
!421 = !DILocation(line: 40, column: 6, scope: !422)
!422 = distinct !DILexicalBlock(scope: !410, file: !403, line: 40, column: 6)
!423 = !DILocation(line: 40, column: 6, scope: !410)
!424 = !DILocation(line: 41, column: 3, scope: !422)
!425 = !DILocation(line: 43, column: 9, scope: !410)
!426 = !DILocation(line: 43, column: 14, scope: !410)
!427 = !DILocation(line: 43, column: 36, scope: !410)
!428 = !DILocation(line: 43, column: 29, scope: !410)
!429 = !DILocation(line: 43, column: 2, scope: !410)
!430 = !DILocation(line: 44, column: 1, scope: !410)
!431 = distinct !DISubprogram(name: "rtc_ktime_to_tm", scope: !3, file: !3, line: 187, type: !432, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !434)
!432 = !DISubroutineType(types: !433)
!433 = !{!119, !402}
!434 = !{!435, !436, !442}
!435 = !DILocalVariable(name: "kt", arg: 1, scope: !431, file: !3, line: 187, type: !402)
!436 = !DILocalVariable(name: "ts", scope: !431, file: !3, line: 189, type: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !117, line: 13, size: 128, elements: !438)
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !437, file: !117, line: 14, baseType: !116, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !437, file: !117, line: 15, baseType: !441, size: 64, offset: 64)
!441 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!442 = !DILocalVariable(name: "ret", scope: !431, file: !3, line: 190, type: !119)
!443 = !DILocation(line: 187, column: 41, scope: !431)
!444 = !DILocation(line: 189, column: 2, scope: !431)
!445 = !DILocation(line: 189, column: 20, scope: !431)
!446 = !DILocation(line: 190, column: 18, scope: !431)
!447 = !DILocation(line: 192, column: 7, scope: !431)
!448 = !DILocation(line: 194, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !431, file: !3, line: 194, column: 6)
!450 = !DILocation(line: 194, column: 6, scope: !449)
!451 = !DILocation(line: 194, column: 6, scope: !431)
!452 = !DILocation(line: 195, column: 6, scope: !449)
!453 = !DILocation(line: 195, column: 12, scope: !449)
!454 = !DILocation(line: 195, column: 3, scope: !449)
!455 = !DILocation(line: 196, column: 22, scope: !431)
!456 = !DILocation(line: 196, column: 2, scope: !431)
!457 = !DILocation(line: 198, column: 1, scope: !431)
!458 = !DISubprogram(name: "ns_to_timespec64", scope: !117, file: !117, line: 148, type: !459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!459 = !DISubroutineType(types: !460)
!460 = !{!437, !15}
