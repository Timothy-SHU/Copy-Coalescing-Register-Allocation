; ModuleID = 'arch/x86/kernel/tsc_msr.c'
source_filename = "arch/x86/kernel/tsc_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_cpu_id = type { i16, i16, i16, i16, i16, i16, i64 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.freq_desc = type { i8, [16 x %struct.muldiv], [16 x i32], i32 }
%struct.muldiv = type { i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%struct.atomic_t = type { i32 }
%union.anon.1 = type { i64 }

@tsc_msr_cpu_ids = internal constant [8 x %struct.x86_cpu_id] [%struct.x86_cpu_id { i16 0, i16 6, i16 39, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @freq_desc_pnw to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 53, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @freq_desc_clv to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 55, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @freq_desc_byt to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 74, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @freq_desc_tng to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 76, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @freq_desc_cht to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 90, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @freq_desc_ann to i64) }, %struct.x86_cpu_id { i16 0, i16 6, i16 117, i16 0, i16 0, i16 1, i64 ptrtoint (ptr @freq_desc_lgm to i64) }, %struct.x86_cpu_id zeroinitializer], align 16, !dbg !0
@.str = private unnamed_addr constant [42 x i8] c"\013Error MSR_FSB_FREQ index %d is unknown\0A\00", align 1, !dbg !44
@lapic_timer_period = external dso_local global i32, align 4
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@cpu_caps_set = external dso_local global [24 x i32], align 16
@freq_desc_cht = internal constant %struct.freq_desc { i8 1, [16 x %struct.muldiv] [%struct.muldiv { i32 5, i32 6 }, %struct.muldiv { i32 1, i32 1 }, %struct.muldiv { i32 4, i32 3 }, %struct.muldiv { i32 7, i32 6 }, %struct.muldiv { i32 4, i32 5 }, %struct.muldiv { i32 14, i32 15 }, %struct.muldiv { i32 9, i32 10 }, %struct.muldiv { i32 8, i32 9 }, %struct.muldiv { i32 7, i32 8 }, %struct.muldiv zeroinitializer, %struct.muldiv zeroinitializer, %struct.muldiv zeroinitializer, %struct.muldiv zeroinitializer, %struct.muldiv zeroinitializer, %struct.muldiv zeroinitializer, %struct.muldiv zeroinitializer], [16 x i32] zeroinitializer, i32 15 }, align 4, !dbg !58
@freq_desc_lgm = internal constant %struct.freq_desc { i8 1, [16 x %struct.muldiv] zeroinitializer, [16 x i32] [i32 78000, i32 78000, i32 78000, i32 78000, i32 78000, i32 78000, i32 78000, i32 78000, i32 78000, i32 78000, i32 78000, i32 78000, i32 78000, i32 78000, i32 78000, i32 78000], i32 15 }, align 4, !dbg !62
@freq_desc_pnw = internal constant { i8, [16 x %struct.muldiv], <{ [8 x i32], [8 x i32] }>, i32 } { i8 0, [16 x %struct.muldiv] zeroinitializer, <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 99840, i32 0, i32 83200], [8 x i32] zeroinitializer }>, i32 7 }, align 4, !dbg !49
@freq_desc_clv = internal constant { i8, [16 x %struct.muldiv], <{ [8 x i32], [8 x i32] }>, i32 } { i8 0, [16 x %struct.muldiv] zeroinitializer, <{ [8 x i32], [8 x i32] }> <{ [8 x i32] [i32 0, i32 133200, i32 0, i32 0, i32 0, i32 99840, i32 0, i32 83200], [8 x i32] zeroinitializer }>, i32 7 }, align 4, !dbg !52
@freq_desc_byt = internal constant { i8, [3 x i8], <{ %struct.muldiv, %struct.muldiv, %struct.muldiv, %struct.muldiv, %struct.muldiv, [11 x %struct.muldiv] }>, [16 x i32], i32 } { i8 1, [3 x i8] undef, <{ %struct.muldiv, %struct.muldiv, %struct.muldiv, %struct.muldiv, %struct.muldiv, [11 x %struct.muldiv] }> <{ %struct.muldiv { i32 5, i32 6 }, %struct.muldiv { i32 1, i32 1 }, %struct.muldiv { i32 4, i32 3 }, %struct.muldiv { i32 7, i32 6 }, %struct.muldiv { i32 4, i32 5 }, [11 x %struct.muldiv] zeroinitializer }>, [16 x i32] zeroinitializer, i32 7 }, align 4, !dbg !54
@freq_desc_tng = internal constant { i8, [3 x i8], <{ %struct.muldiv, %struct.muldiv, %struct.muldiv, [13 x %struct.muldiv] }>, [16 x i32], i32 } { i8 1, [3 x i8] undef, <{ %struct.muldiv, %struct.muldiv, %struct.muldiv, [13 x %struct.muldiv] }> <{ %struct.muldiv zeroinitializer, %struct.muldiv { i32 1, i32 1 }, %struct.muldiv { i32 4, i32 3 }, [13 x %struct.muldiv] zeroinitializer }>, [16 x i32] zeroinitializer, i32 7 }, align 4, !dbg !56
@freq_desc_ann = internal constant { i8, [3 x i8], <{ %struct.muldiv, %struct.muldiv, %struct.muldiv, %struct.muldiv, [12 x %struct.muldiv] }>, [16 x i32], i32 } { i8 1, [3 x i8] undef, <{ %struct.muldiv, %struct.muldiv, %struct.muldiv, %struct.muldiv, [12 x %struct.muldiv] }> <{ %struct.muldiv { i32 5, i32 6 }, %struct.muldiv { i32 1, i32 1 }, %struct.muldiv { i32 4, i32 3 }, %struct.muldiv { i32 1, i32 1 }, [12 x %struct.muldiv] zeroinitializer }>, [16 x i32] zeroinitializer, i32 15 }, align 4, !dbg !60
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @cpu_khz_from_msr() #0 align 16 !dbg !90 {
entry:
  %retval = alloca i64, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %ratio = alloca i32, align 4
  %freq = alloca i32, align 4
  %tscref = alloca i32, align 4
  %freq_desc = alloca ptr, align 8
  %id = alloca ptr, align 8
  %md = alloca ptr, align 8
  %res = alloca i64, align 8
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__val = alloca i64, align 8
  %__val7 = alloca i64, align 8
  %__val18 = alloca i64, align 8
  %__x = alloca i32, align 4
  %__d = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__x30 = alloca i32, align 4
  %__d32 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #8, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !94, metadata !DIExpression()), !dbg !131
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #8, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !95, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 4, ptr %ratio) #8, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %ratio, metadata !96, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #8, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !97, metadata !DIExpression()), !dbg !134
  call void @llvm.lifetime.start.p0(i64 4, ptr %tscref) #8, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %tscref, metadata !98, metadata !DIExpression()), !dbg !135
  call void @llvm.lifetime.start.p0(i64 8, ptr %freq_desc) #8, !dbg !136
  call void @llvm.dbg.declare(metadata ptr %freq_desc, metadata !99, metadata !DIExpression()), !dbg !137
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #8, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %id, metadata !101, metadata !DIExpression()), !dbg !139
  call void @llvm.lifetime.start.p0(i64 8, ptr %md) #8, !dbg !140
  call void @llvm.dbg.declare(metadata ptr %md, metadata !103, metadata !DIExpression()), !dbg !141
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #8, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %res, metadata !106, metadata !DIExpression()), !dbg !143
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #8, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %index, metadata !107, metadata !DIExpression()), !dbg !145
  %call = call ptr @x86_match_cpu(ptr noundef @tsc_msr_cpu_ids) #9, !dbg !146
  store ptr %call, ptr %id, align 8, !dbg !147
  %0 = load ptr, ptr %id, align 8, !dbg !148
  %tobool = icmp ne ptr %0, null, !dbg !148
  br i1 %tobool, label %if.end, label %if.then, !dbg !150

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !151

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %id, align 8, !dbg !152
  %driver_data = getelementptr inbounds %struct.x86_cpu_id, ptr %1, i32 0, i32 6, !dbg !153
  %2 = load i64, ptr %driver_data, align 8, !dbg !153
  %3 = inttoptr i64 %2 to ptr, !dbg !154
  store ptr %3, ptr %freq_desc, align 8, !dbg !155
  %4 = load ptr, ptr %freq_desc, align 8, !dbg !156
  %use_msr_plat = getelementptr inbounds %struct.freq_desc, ptr %4, i32 0, i32 0, !dbg !157
  %5 = load i8, ptr %use_msr_plat, align 4, !dbg !157, !range !158, !noundef !159
  %tobool1 = trunc i8 %5 to i1, !dbg !157
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !160

if.then2:                                         ; preds = %if.end
  br label %do.body, !dbg !161

do.body:                                          ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #8, !dbg !162
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !109, metadata !DIExpression()), !dbg !162
  %call3 = call i64 @native_read_msr(i32 noundef 206) #9, !dbg !162
  store i64 %call3, ptr %__val, align 8, !dbg !162
  %6 = load i64, ptr %__val, align 8, !dbg !162
  %conv = trunc i64 %6 to i32, !dbg !162
  store i32 %conv, ptr %lo, align 4, !dbg !162
  %7 = load i64, ptr %__val, align 8, !dbg !162
  %shr = lshr i64 %7, 32, !dbg !162
  %conv4 = trunc i64 %shr to i32, !dbg !162
  store i32 %conv4, ptr %hi, align 4, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #8, !dbg !161
  br label %do.cond, !dbg !162

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !162

do.end:                                           ; preds = %do.cond
  %8 = load i32, ptr %lo, align 4, !dbg !163
  %shr5 = lshr i32 %8, 8, !dbg !164
  %and = and i32 %shr5, 255, !dbg !165
  store i32 %and, ptr %ratio, align 4, !dbg !166
  br label %if.end16, !dbg !167

if.else:                                          ; preds = %if.end
  br label %do.body6, !dbg !168

do.body6:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val7) #8, !dbg !169
  call void @llvm.dbg.declare(metadata ptr %__val7, metadata !116, metadata !DIExpression()), !dbg !169
  %call8 = call i64 @native_read_msr(i32 noundef 408) #9, !dbg !169
  store i64 %call8, ptr %__val7, align 8, !dbg !169
  %9 = load i64, ptr %__val7, align 8, !dbg !169
  %conv9 = trunc i64 %9 to i32, !dbg !169
  store i32 %conv9, ptr %lo, align 4, !dbg !169
  %10 = load i64, ptr %__val7, align 8, !dbg !169
  %shr10 = lshr i64 %10, 32, !dbg !169
  %conv11 = trunc i64 %shr10 to i32, !dbg !169
  store i32 %conv11, ptr %hi, align 4, !dbg !169
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val7) #8, !dbg !168
  br label %do.cond12, !dbg !169

do.cond12:                                        ; preds = %do.body6
  br label %do.end13, !dbg !169

do.end13:                                         ; preds = %do.cond12
  %11 = load i32, ptr %hi, align 4, !dbg !170
  %shr14 = lshr i32 %11, 8, !dbg !171
  %and15 = and i32 %shr14, 31, !dbg !172
  store i32 %and15, ptr %ratio, align 4, !dbg !173
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %do.end
  br label %do.body17, !dbg !174

do.body17:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val18) #8, !dbg !175
  call void @llvm.dbg.declare(metadata ptr %__val18, metadata !119, metadata !DIExpression()), !dbg !175
  %call19 = call i64 @native_read_msr(i32 noundef 205) #9, !dbg !175
  store i64 %call19, ptr %__val18, align 8, !dbg !175
  %12 = load i64, ptr %__val18, align 8, !dbg !175
  %conv20 = trunc i64 %12 to i32, !dbg !175
  store i32 %conv20, ptr %lo, align 4, !dbg !175
  %13 = load i64, ptr %__val18, align 8, !dbg !175
  %shr21 = lshr i64 %13, 32, !dbg !175
  %conv22 = trunc i64 %shr21 to i32, !dbg !175
  store i32 %conv22, ptr %hi, align 4, !dbg !175
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val18) #8, !dbg !174
  br label %do.cond23, !dbg !175

do.cond23:                                        ; preds = %do.body17
  br label %do.end24, !dbg !175

do.end24:                                         ; preds = %do.cond23
  %14 = load i32, ptr %lo, align 4, !dbg !176
  %15 = load ptr, ptr %freq_desc, align 8, !dbg !177
  %mask = getelementptr inbounds %struct.freq_desc, ptr %15, i32 0, i32 3, !dbg !178
  %16 = load i32, ptr %mask, align 4, !dbg !178
  %and25 = and i32 %14, %16, !dbg !179
  store i32 %and25, ptr %index, align 4, !dbg !180
  %17 = load ptr, ptr %freq_desc, align 8, !dbg !181
  %muldiv = getelementptr inbounds %struct.freq_desc, ptr %17, i32 0, i32 1, !dbg !182
  %18 = load i32, ptr %index, align 4, !dbg !183
  %idxprom = sext i32 %18 to i64, !dbg !181
  %arrayidx = getelementptr [16 x %struct.muldiv], ptr %muldiv, i64 0, i64 %idxprom, !dbg !181
  store ptr %arrayidx, ptr %md, align 8, !dbg !184
  %19 = load ptr, ptr %md, align 8, !dbg !185
  %divider = getelementptr inbounds %struct.muldiv, ptr %19, i32 0, i32 1, !dbg !186
  %20 = load i32, ptr %divider, align 4, !dbg !186
  %tobool26 = icmp ne i32 %20, 0, !dbg !185
  br i1 %tobool26, label %if.then27, label %if.else39, !dbg !187

if.then27:                                        ; preds = %do.end24
  %21 = load ptr, ptr %md, align 8, !dbg !188
  %multiplier = getelementptr inbounds %struct.muldiv, ptr %21, i32 0, i32 0, !dbg !189
  %22 = load i32, ptr %multiplier, align 4, !dbg !189
  %mul = mul i32 100000, %22, !dbg !190
  store i32 %mul, ptr %tscref, align 4, !dbg !191
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #8, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !121, metadata !DIExpression()), !dbg !192
  %23 = load i32, ptr %tscref, align 4, !dbg !192
  store i32 %23, ptr %__x, align 4, !dbg !192
  call void @llvm.lifetime.start.p0(i64 4, ptr %__d) #8, !dbg !192
  call void @llvm.dbg.declare(metadata ptr %__d, metadata !125, metadata !DIExpression()), !dbg !192
  %24 = load ptr, ptr %md, align 8, !dbg !192
  %divider28 = getelementptr inbounds %struct.muldiv, ptr %24, i32 0, i32 1, !dbg !192
  %25 = load i32, ptr %divider28, align 4, !dbg !192
  store i32 %25, ptr %__d, align 4, !dbg !192
  %26 = load i32, ptr %__x, align 4, !dbg !192
  %27 = load i32, ptr %__d, align 4, !dbg !192
  %div = udiv i32 %27, 2, !dbg !192
  %add = add i32 %26, %div, !dbg !192
  %28 = load i32, ptr %__d, align 4, !dbg !192
  %div29 = udiv i32 %add, %28, !dbg !192
  store i32 %div29, ptr %tmp, align 4, !dbg !192
  call void @llvm.lifetime.end.p0(i64 4, ptr %__d) #8, !dbg !193
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #8, !dbg !193
  %29 = load i32, ptr %tmp, align 4, !dbg !192
  store i32 %29, ptr %freq, align 4, !dbg !194
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x30) #8, !dbg !195
  call void @llvm.dbg.declare(metadata ptr %__x30, metadata !127, metadata !DIExpression()), !dbg !195
  %30 = load i32, ptr %tscref, align 4, !dbg !195
  %31 = load i32, ptr %ratio, align 4, !dbg !195
  %mul31 = mul i32 %30, %31, !dbg !195
  store i32 %mul31, ptr %__x30, align 4, !dbg !195
  call void @llvm.lifetime.start.p0(i64 4, ptr %__d32) #8, !dbg !195
  call void @llvm.dbg.declare(metadata ptr %__d32, metadata !129, metadata !DIExpression()), !dbg !195
  %32 = load ptr, ptr %md, align 8, !dbg !195
  %divider33 = getelementptr inbounds %struct.muldiv, ptr %32, i32 0, i32 1, !dbg !195
  %33 = load i32, ptr %divider33, align 4, !dbg !195
  store i32 %33, ptr %__d32, align 4, !dbg !195
  %34 = load i32, ptr %__x30, align 4, !dbg !195
  %35 = load i32, ptr %__d32, align 4, !dbg !195
  %div35 = udiv i32 %35, 2, !dbg !195
  %add36 = add i32 %34, %div35, !dbg !195
  %36 = load i32, ptr %__d32, align 4, !dbg !195
  %div37 = udiv i32 %add36, %36, !dbg !195
  store i32 %div37, ptr %tmp34, align 4, !dbg !195
  call void @llvm.lifetime.end.p0(i64 4, ptr %__d32) #8, !dbg !196
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x30) #8, !dbg !196
  %37 = load i32, ptr %tmp34, align 4, !dbg !195
  %conv38 = zext i32 %37 to i64, !dbg !196
  store i64 %conv38, ptr %res, align 8, !dbg !197
  br label %if.end44, !dbg !198

if.else39:                                        ; preds = %do.end24
  %38 = load ptr, ptr %freq_desc, align 8, !dbg !199
  %freqs = getelementptr inbounds %struct.freq_desc, ptr %38, i32 0, i32 2, !dbg !201
  %39 = load i32, ptr %index, align 4, !dbg !202
  %idxprom40 = sext i32 %39 to i64, !dbg !199
  %arrayidx41 = getelementptr [16 x i32], ptr %freqs, i64 0, i64 %idxprom40, !dbg !199
  %40 = load i32, ptr %arrayidx41, align 4, !dbg !199
  store i32 %40, ptr %freq, align 4, !dbg !203
  %41 = load i32, ptr %freq, align 4, !dbg !204
  %42 = load i32, ptr %ratio, align 4, !dbg !205
  %mul42 = mul i32 %41, %42, !dbg !206
  %conv43 = zext i32 %mul42 to i64, !dbg !204
  store i64 %conv43, ptr %res, align 8, !dbg !207
  br label %if.end44

if.end44:                                         ; preds = %if.else39, %if.then27
  %43 = load i32, ptr %freq, align 4, !dbg !208
  %cmp = icmp eq i32 %43, 0, !dbg !210
  br i1 %cmp, label %if.then46, label %if.end52, !dbg !211

if.then46:                                        ; preds = %if.end44
  br label %do.body47, !dbg !212

do.body47:                                        ; preds = %if.then46
  br label %do.cond48, !dbg !214

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !214

do.end49:                                         ; preds = %do.cond48
  %44 = load i32, ptr %index, align 4, !dbg !212
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %44) #10, !dbg !212
  store i32 %call51, ptr %tmp50, align 4, !dbg !214
  %45 = load i32, ptr %tmp50, align 4, !dbg !212
  br label %if.end52, !dbg !216

if.end52:                                         ; preds = %do.end49, %if.end44
  %46 = load i32, ptr %freq, align 4, !dbg !217
  %mul53 = mul i32 %46, 1000, !dbg !218
  %div54 = udiv i32 %mul53, 1000, !dbg !219
  store i32 %div54, ptr @lapic_timer_period, align 4, !dbg !220
  br label %do.body55, !dbg !221

do.body55:                                        ; preds = %if.end52
  call void @set_bit(i64 noundef 127, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #9, !dbg !222
  call void @set_bit(i64 noundef 127, ptr noundef @cpu_caps_set) #9, !dbg !222
  br label %do.cond56, !dbg !222

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !222

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !224

do.body58:                                        ; preds = %do.end57
  call void @set_bit(i64 noundef 119, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #9, !dbg !225
  call void @set_bit(i64 noundef 119, ptr noundef @cpu_caps_set) #9, !dbg !225
  br label %do.cond59, !dbg !225

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !225

do.end60:                                         ; preds = %do.cond59
  %47 = load i64, ptr %res, align 8, !dbg !227
  store i64 %47, ptr %retval, align 8, !dbg !228
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !228

cleanup:                                          ; preds = %do.end60, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #8, !dbg !229
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #8, !dbg !229
  call void @llvm.lifetime.end.p0(i64 8, ptr %md) #8, !dbg !229
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #8, !dbg !229
  call void @llvm.lifetime.end.p0(i64 8, ptr %freq_desc) #8, !dbg !229
  call void @llvm.lifetime.end.p0(i64 4, ptr %tscref) #8, !dbg !229
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #8, !dbg !229
  call void @llvm.lifetime.end.p0(i64 4, ptr %ratio) #8, !dbg !229
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #8, !dbg !229
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #8, !dbg !229
  %48 = load i64, ptr %retval, align 8, !dbg !229
  ret i64 %48, !dbg !229
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !230 dso_local ptr @x86_match_cpu(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #4 align 16 !dbg !234 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !239, metadata !DIExpression()), !dbg !241
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #8, !dbg !242
  call void @llvm.dbg.declare(metadata ptr %val, metadata !240, metadata !DIExpression()), !dbg !243
  %0 = load i32, ptr %msr.addr, align 4, !dbg !244
  %call = call i64 @__rdmsr(i32 noundef %0) #9, !dbg !245
  store i64 %call, ptr %val, align 8, !dbg !246
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #9, !dbg !247
  br i1 %call1, label %if.then, label %if.end, !dbg !249

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !250
  %2 = load i64, ptr %val, align 8, !dbg !251
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #9, !dbg !252
  br label %if.end, !dbg !252

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !253
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #8, !dbg !254
  ret i64 %3, !dbg !255
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !256 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !262 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !269, metadata !DIExpression()), !dbg !271
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !270, metadata !DIExpression()), !dbg !272
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !273
  %1 = load i64, ptr %nr.addr, align 8, !dbg !274
  %div = sdiv i64 %1, 64, !dbg !274
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !275
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !276
  %2 = load i64, ptr %nr.addr, align 8, !dbg !277
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !278
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !279
  ret void, !dbg !280
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #6 align 16 !dbg !281 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !283, metadata !DIExpression()), !dbg !286
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #8, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %low, metadata !284, metadata !DIExpression()), !dbg !287
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #8, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %high, metadata !285, metadata !DIExpression()), !dbg !287
  %0 = load i32, ptr %msr.addr, align 4, !dbg !288
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #8, !dbg !289, !srcloc !290
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !289
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !289
  store i64 %asmresult, ptr %low, align 8, !dbg !289
  store i64 %asmresult1, ptr %high, align 8, !dbg !289
  %2 = load i64, ptr %low, align 8, !dbg !291
  %3 = load i64, ptr %high, align 8, !dbg !291
  %shl = shl i64 %3, 32, !dbg !291
  %or = or i64 %2, %shl, !dbg !291
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #8, !dbg !292
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #8, !dbg !292
  ret i64 %or, !dbg !293
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #6 align 16 !dbg !294 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %0 = load ptr, ptr %key.addr, align 8, !dbg !325
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #9, !dbg !326
  ret i1 %call, !dbg !327
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !328 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !331 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !336, metadata !DIExpression()), !dbg !339
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !337, metadata !DIExpression()), !dbg !340
  %0 = load ptr, ptr %key.addr, align 8, !dbg !341
  %1 = load i8, ptr %branch.addr, align 1, !dbg !342, !range !158, !noundef !159
  %tobool = trunc i8 %1 to i1, !dbg !342
  %conv = zext i1 %tobool to i32, !dbg !342
  %or = or i32 2, %conv, !dbg !343
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #8
          to label %asm.fallthrough [label %l_yes], !dbg !344, !srcloc !345

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !346
  br label %return, !dbg !346

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !338), !dbg !347
  store i1 true, ptr %retval, align 1, !dbg !348
  br label %return, !dbg !348

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !349
  ret i1 %2, !dbg !349
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !350 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !362, metadata !DIExpression()), !dbg !364
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !363, metadata !DIExpression()), !dbg !365
  %0 = load ptr, ptr %v.addr, align 8, !dbg !366
  %1 = load i64, ptr %size.addr, align 8, !dbg !367
  %conv = trunc i64 %1 to i32, !dbg !367
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !368
  %2 = load ptr, ptr %v.addr, align 8, !dbg !369
  %3 = load i64, ptr %size.addr, align 8, !dbg !369
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #9, !dbg !369
  ret void, !dbg !370
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !371 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !374, metadata !DIExpression()), !dbg !376
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !375, metadata !DIExpression()), !dbg !377
  %0 = load i64, ptr %nr.addr, align 8, !dbg !378
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !380
  br i1 %1, label %if.then, label %if.else, !dbg !381

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !382
  %3 = load i64, ptr %nr.addr, align 8, !dbg !382
  %shr = ashr i64 %3, 3, !dbg !382
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !382
  %4 = load i64, ptr %nr.addr, align 8, !dbg !384
  %and = and i64 %4, 7, !dbg !384
  %sh_prom = trunc i64 %and to i32, !dbg !384
  %shl = shl i32 1, %sh_prom, !dbg !384
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #8, !dbg !385, !srcloc !386
  br label %if.end, !dbg !387

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !388
  %6 = load i64, ptr %nr.addr, align 8, !dbg !390
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #8, !dbg !391, !srcloc !392
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !393
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !394 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !399, metadata !DIExpression()), !dbg !401
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !400, metadata !DIExpression()), !dbg !402
  ret i1 true, !dbg !403
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !404 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !409, metadata !DIExpression()), !dbg !412
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !410, metadata !DIExpression()), !dbg !413
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !411, metadata !DIExpression()), !dbg !414
  ret void, !dbg !415
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tsc_msr_cpu_ids", scope: !2, file: !3, line: 149, type: !64, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.tsc_msr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/tsc_msr\22 -D KBUILD_BASENAME=\22tsc_msr\22 -D KBUILD_MODNAME=\22tsc_msr\22 -D __KBUILD_MODNAME=kmod_tsc_msr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/tsc_msr.ll arch/x86/kernel/tsc_msr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !43, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/tsc_msr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ccb479e5cc8c7c7c60ac57b251910d0")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !24, !34, !35, !36, !39, !40}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_desc", file: !3, line: 50, size: 1600, elements: !14)
!14 = !{!15, !19, !31, !33}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "use_msr_plat", scope: !13, file: !3, line: 51, baseType: !16, size: 8)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !17, line: 35, baseType: !18)
!17 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!18 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "muldiv", scope: !13, file: !3, line: 52, baseType: !20, size: 1024, offset: 32)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 1024, elements: !29)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "muldiv", file: !3, line: 38, size: 64, elements: !22)
!22 = !{!23, !28}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "multiplier", scope: !21, file: !3, line: 39, baseType: !24, size: 32)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !25, line: 21, baseType: !26)
!25 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !27, line: 27, baseType: !7)
!27 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!28 = !DIDerivedType(tag: DW_TAG_member, name: "divider", scope: !21, file: !3, line: 40, baseType: !24, size: 32, offset: 32)
!29 = !{!30}
!30 = !DISubrange(count: 16)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "freqs", scope: !13, file: !3, line: 57, baseType: !32, size: 512, offset: 1056)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 512, elements: !29)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !13, file: !3, line: 58, baseType: !24, size: 32, offset: 1568)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!42 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!43 = !{!44, !0, !49, !52, !54, !56, !58, !60, !62}
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !3, line: 211, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 336, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 42)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "freq_desc_pnw", scope: !2, file: !3, line: 66, type: !51, isLocal: true, isDefinition: true)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "freq_desc_clv", scope: !2, file: !3, line: 72, type: !51, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "freq_desc_byt", scope: !2, file: !3, line: 86, type: !51, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "freq_desc_tng", scope: !2, file: !3, line: 118, type: !51, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "freq_desc_cht", scope: !2, file: !3, line: 105, type: !51, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "freq_desc_ann", scope: !2, file: !3, line: 131, type: !51, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "freq_desc_lgm", scope: !2, file: !3, line: 142, type: !51, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 1536, elements: !79)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_cpu_id", file: !67, line: 687, size: 192, elements: !68)
!67 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!68 = !{!69, !72, !73, !74, !75, !76, !77}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !66, file: !67, line: 688, baseType: !70, size: 16)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !27, line: 24, baseType: !71)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !66, file: !67, line: 689, baseType: !70, size: 16, offset: 16)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !66, file: !67, line: 690, baseType: !70, size: 16, offset: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "steppings", scope: !66, file: !67, line: 691, baseType: !70, size: 16, offset: 48)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "feature", scope: !66, file: !67, line: 692, baseType: !70, size: 16, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !66, file: !67, line: 694, baseType: !70, size: 16, offset: 80)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !66, file: !67, line: 695, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !67, line: 15, baseType: !35)
!79 = !{!80}
!80 = !DISubrange(count: 8)
!81 = !{i32 7, !"Dwarf Version", i32 5}
!82 = !{i32 2, !"Debug Info Version", i32 3}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 8, !"cf-protection-branch", i32 1}
!85 = !{i32 4, !"function_return_thunk_extern", i32 1}
!86 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!87 = !{i32 1, !"Code Model", i32 2}
!88 = !{i32 1, !"override-stack-alignment", i32 8}
!89 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!90 = distinct !DISubprogram(name: "cpu_khz_from_msr", scope: !3, file: !3, line: 166, type: !91, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !93)
!91 = !DISubroutineType(types: !92)
!92 = !{!35}
!93 = !{!94, !95, !96, !97, !98, !99, !101, !103, !106, !107, !109, !116, !119, !121, !125, !127, !129}
!94 = !DILocalVariable(name: "lo", scope: !90, file: !3, line: 168, type: !24)
!95 = !DILocalVariable(name: "hi", scope: !90, file: !3, line: 168, type: !24)
!96 = !DILocalVariable(name: "ratio", scope: !90, file: !3, line: 168, type: !24)
!97 = !DILocalVariable(name: "freq", scope: !90, file: !3, line: 168, type: !24)
!98 = !DILocalVariable(name: "tscref", scope: !90, file: !3, line: 168, type: !24)
!99 = !DILocalVariable(name: "freq_desc", scope: !90, file: !3, line: 169, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!101 = !DILocalVariable(name: "id", scope: !90, file: !3, line: 170, type: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!103 = !DILocalVariable(name: "md", scope: !90, file: !3, line: 171, type: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!106 = !DILocalVariable(name: "res", scope: !90, file: !3, line: 172, type: !35)
!107 = !DILocalVariable(name: "index", scope: !90, file: !3, line: 173, type: !108)
!108 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!109 = !DILocalVariable(name: "__val", scope: !110, file: !3, line: 181, type: !113)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 181, column: 3)
!111 = distinct !DILexicalBlock(scope: !112, file: !3, line: 180, column: 31)
!112 = distinct !DILexicalBlock(scope: !90, file: !3, line: 180, column: 6)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !25, line: 23, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !27, line: 31, baseType: !115)
!115 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!116 = !DILocalVariable(name: "__val", scope: !117, file: !3, line: 184, type: !113)
!117 = distinct !DILexicalBlock(scope: !118, file: !3, line: 184, column: 3)
!118 = distinct !DILexicalBlock(scope: !112, file: !3, line: 183, column: 9)
!119 = !DILocalVariable(name: "__val", scope: !120, file: !3, line: 189, type: !113)
!120 = distinct !DILexicalBlock(scope: !90, file: !3, line: 189, column: 2)
!121 = !DILocalVariable(name: "__x", scope: !122, file: !3, line: 199, type: !24)
!122 = distinct !DILexicalBlock(scope: !123, file: !3, line: 199, column: 10)
!123 = distinct !DILexicalBlock(scope: !124, file: !3, line: 197, column: 19)
!124 = distinct !DILexicalBlock(scope: !90, file: !3, line: 197, column: 6)
!125 = !DILocalVariable(name: "__d", scope: !122, file: !3, line: 199, type: !126)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!127 = !DILocalVariable(name: "__x", scope: !128, file: !3, line: 204, type: !24)
!128 = distinct !DILexicalBlock(scope: !123, file: !3, line: 204, column: 9)
!129 = !DILocalVariable(name: "__d", scope: !128, file: !3, line: 204, type: !126)
!130 = !DILocation(line: 168, column: 2, scope: !90)
!131 = !DILocation(line: 168, column: 6, scope: !90)
!132 = !DILocation(line: 168, column: 10, scope: !90)
!133 = !DILocation(line: 168, column: 14, scope: !90)
!134 = !DILocation(line: 168, column: 21, scope: !90)
!135 = !DILocation(line: 168, column: 27, scope: !90)
!136 = !DILocation(line: 169, column: 2, scope: !90)
!137 = !DILocation(line: 169, column: 26, scope: !90)
!138 = !DILocation(line: 170, column: 2, scope: !90)
!139 = !DILocation(line: 170, column: 27, scope: !90)
!140 = !DILocation(line: 171, column: 2, scope: !90)
!141 = !DILocation(line: 171, column: 23, scope: !90)
!142 = !DILocation(line: 172, column: 2, scope: !90)
!143 = !DILocation(line: 172, column: 16, scope: !90)
!144 = !DILocation(line: 173, column: 2, scope: !90)
!145 = !DILocation(line: 173, column: 6, scope: !90)
!146 = !DILocation(line: 175, column: 7, scope: !90)
!147 = !DILocation(line: 175, column: 5, scope: !90)
!148 = !DILocation(line: 176, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !90, file: !3, line: 176, column: 6)
!150 = !DILocation(line: 176, column: 6, scope: !90)
!151 = !DILocation(line: 177, column: 3, scope: !149)
!152 = !DILocation(line: 179, column: 34, scope: !90)
!153 = !DILocation(line: 179, column: 38, scope: !90)
!154 = !DILocation(line: 179, column: 14, scope: !90)
!155 = !DILocation(line: 179, column: 12, scope: !90)
!156 = !DILocation(line: 180, column: 6, scope: !112)
!157 = !DILocation(line: 180, column: 17, scope: !112)
!158 = !{i8 0, i8 2}
!159 = !{}
!160 = !DILocation(line: 180, column: 6, scope: !90)
!161 = !DILocation(line: 181, column: 3, scope: !111)
!162 = !DILocation(line: 181, column: 3, scope: !110)
!163 = !DILocation(line: 182, column: 12, scope: !111)
!164 = !DILocation(line: 182, column: 15, scope: !111)
!165 = !DILocation(line: 182, column: 21, scope: !111)
!166 = !DILocation(line: 182, column: 9, scope: !111)
!167 = !DILocation(line: 183, column: 2, scope: !111)
!168 = !DILocation(line: 184, column: 3, scope: !118)
!169 = !DILocation(line: 184, column: 3, scope: !117)
!170 = !DILocation(line: 185, column: 12, scope: !118)
!171 = !DILocation(line: 185, column: 15, scope: !118)
!172 = !DILocation(line: 185, column: 21, scope: !118)
!173 = !DILocation(line: 185, column: 9, scope: !118)
!174 = !DILocation(line: 189, column: 2, scope: !90)
!175 = !DILocation(line: 189, column: 2, scope: !120)
!176 = !DILocation(line: 190, column: 10, scope: !90)
!177 = !DILocation(line: 190, column: 15, scope: !90)
!178 = !DILocation(line: 190, column: 26, scope: !90)
!179 = !DILocation(line: 190, column: 13, scope: !90)
!180 = !DILocation(line: 190, column: 8, scope: !90)
!181 = !DILocation(line: 191, column: 8, scope: !90)
!182 = !DILocation(line: 191, column: 19, scope: !90)
!183 = !DILocation(line: 191, column: 26, scope: !90)
!184 = !DILocation(line: 191, column: 5, scope: !90)
!185 = !DILocation(line: 197, column: 6, scope: !124)
!186 = !DILocation(line: 197, column: 10, scope: !124)
!187 = !DILocation(line: 197, column: 6, scope: !90)
!188 = !DILocation(line: 198, column: 32, scope: !123)
!189 = !DILocation(line: 198, column: 36, scope: !123)
!190 = !DILocation(line: 198, column: 30, scope: !123)
!191 = !DILocation(line: 198, column: 10, scope: !123)
!192 = !DILocation(line: 199, column: 10, scope: !122)
!193 = !DILocation(line: 199, column: 10, scope: !123)
!194 = !DILocation(line: 199, column: 8, scope: !123)
!195 = !DILocation(line: 204, column: 9, scope: !128)
!196 = !DILocation(line: 204, column: 9, scope: !123)
!197 = !DILocation(line: 204, column: 7, scope: !123)
!198 = !DILocation(line: 205, column: 2, scope: !123)
!199 = !DILocation(line: 206, column: 10, scope: !200)
!200 = distinct !DILexicalBlock(scope: !124, file: !3, line: 205, column: 9)
!201 = !DILocation(line: 206, column: 21, scope: !200)
!202 = !DILocation(line: 206, column: 27, scope: !200)
!203 = !DILocation(line: 206, column: 8, scope: !200)
!204 = !DILocation(line: 207, column: 9, scope: !200)
!205 = !DILocation(line: 207, column: 16, scope: !200)
!206 = !DILocation(line: 207, column: 14, scope: !200)
!207 = !DILocation(line: 207, column: 7, scope: !200)
!208 = !DILocation(line: 210, column: 6, scope: !209)
!209 = distinct !DILexicalBlock(scope: !90, file: !3, line: 210, column: 6)
!210 = !DILocation(line: 210, column: 11, scope: !209)
!211 = !DILocation(line: 210, column: 6, scope: !90)
!212 = !DILocation(line: 211, column: 3, scope: !213)
!213 = distinct !DILexicalBlock(scope: !209, file: !3, line: 211, column: 3)
!214 = !DILocation(line: 211, column: 3, scope: !215)
!215 = distinct !DILexicalBlock(scope: !213, file: !3, line: 211, column: 3)
!216 = !DILocation(line: 211, column: 3, scope: !209)
!217 = !DILocation(line: 214, column: 24, scope: !90)
!218 = !DILocation(line: 214, column: 29, scope: !90)
!219 = !DILocation(line: 214, column: 37, scope: !90)
!220 = !DILocation(line: 214, column: 21, scope: !90)
!221 = !DILocation(line: 223, column: 2, scope: !90)
!222 = !DILocation(line: 223, column: 2, scope: !223)
!223 = distinct !DILexicalBlock(scope: !90, file: !3, line: 223, column: 2)
!224 = !DILocation(line: 233, column: 2, scope: !90)
!225 = !DILocation(line: 233, column: 2, scope: !226)
!226 = distinct !DILexicalBlock(scope: !90, file: !3, line: 233, column: 2)
!227 = !DILocation(line: 235, column: 9, scope: !90)
!228 = !DILocation(line: 235, column: 2, scope: !90)
!229 = !DILocation(line: 236, column: 1, scope: !90)
!230 = !DISubprogram(name: "x86_match_cpu", scope: !231, file: !231, line: 291, type: !232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!231 = !DIFile(filename: "./arch/x86/include/asm/cpu_device_id.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e1a78964618b7c8a5d697bb345982db")
!232 = !DISubroutineType(types: !233)
!233 = !{!102, !102}
!234 = distinct !DISubprogram(name: "native_read_msr", scope: !235, file: !235, line: 114, type: !236, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !238)
!235 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!236 = !DISubroutineType(types: !237)
!237 = !{!115, !7}
!238 = !{!239, !240}
!239 = !DILocalVariable(name: "msr", arg: 1, scope: !234, file: !235, line: 114, type: !7)
!240 = !DILocalVariable(name: "val", scope: !234, file: !235, line: 116, type: !115)
!241 = !DILocation(line: 114, column: 63, scope: !234)
!242 = !DILocation(line: 116, column: 2, scope: !234)
!243 = !DILocation(line: 116, column: 21, scope: !234)
!244 = !DILocation(line: 118, column: 16, scope: !234)
!245 = !DILocation(line: 118, column: 8, scope: !234)
!246 = !DILocation(line: 118, column: 6, scope: !234)
!247 = !DILocation(line: 120, column: 6, scope: !248)
!248 = distinct !DILexicalBlock(scope: !234, file: !235, line: 120, column: 6)
!249 = !DILocation(line: 120, column: 6, scope: !234)
!250 = !DILocation(line: 121, column: 21, scope: !248)
!251 = !DILocation(line: 121, column: 26, scope: !248)
!252 = !DILocation(line: 121, column: 3, scope: !248)
!253 = !DILocation(line: 123, column: 9, scope: !234)
!254 = !DILocation(line: 124, column: 1, scope: !234)
!255 = !DILocation(line: 123, column: 2, scope: !234)
!256 = !DISubprogram(name: "_printk", scope: !257, file: !257, line: 153, type: !258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!258 = !DISubroutineType(types: !259)
!259 = !{!108, !260, null}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!262 = distinct !DISubprogram(name: "set_bit", scope: !263, file: !263, line: 26, type: !264, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!263 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!264 = !DISubroutineType(types: !265)
!265 = !{null, !42, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!268 = !{!269, !270}
!269 = !DILocalVariable(name: "nr", arg: 1, scope: !262, file: !263, line: 26, type: !42)
!270 = !DILocalVariable(name: "addr", arg: 2, scope: !262, file: !263, line: 26, type: !266)
!271 = !DILocation(line: 26, column: 42, scope: !262)
!272 = !DILocation(line: 26, column: 70, scope: !262)
!273 = !DILocation(line: 28, column: 26, scope: !262)
!274 = !DILocation(line: 28, column: 33, scope: !262)
!275 = !DILocation(line: 28, column: 31, scope: !262)
!276 = !DILocation(line: 28, column: 2, scope: !262)
!277 = !DILocation(line: 29, column: 15, scope: !262)
!278 = !DILocation(line: 29, column: 19, scope: !262)
!279 = !DILocation(line: 29, column: 2, scope: !262)
!280 = !DILocation(line: 30, column: 1, scope: !262)
!281 = distinct !DISubprogram(name: "__rdmsr", scope: !235, file: !235, line: 80, type: !236, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !282)
!282 = !{!283, !284, !285}
!283 = !DILocalVariable(name: "msr", arg: 1, scope: !281, file: !235, line: 80, type: !7)
!284 = !DILocalVariable(name: "low", scope: !281, file: !235, line: 82, type: !35)
!285 = !DILocalVariable(name: "high", scope: !281, file: !235, line: 82, type: !35)
!286 = !DILocation(line: 80, column: 64, scope: !281)
!287 = !DILocation(line: 82, column: 2, scope: !281)
!288 = !DILocation(line: 87, column: 45, scope: !281)
!289 = !DILocation(line: 84, column: 2, scope: !281)
!290 = !{i64 994724, i64 994745, i64 2149188394, i64 2149188438, i64 2149188461, i64 2149188494, i64 2149188525, i64 2149188564}
!291 = !DILocation(line: 89, column: 9, scope: !281)
!292 = !DILocation(line: 90, column: 1, scope: !281)
!293 = !DILocation(line: 89, column: 2, scope: !281)
!294 = distinct !DISubprogram(name: "static_key_false", scope: !295, file: !295, line: 205, type: !296, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !322)
!295 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!296 = !DISubroutineType(types: !297)
!297 = !{!16, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !295, line: 85, size: 128, elements: !300)
!300 = !{!301, !306}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !299, file: !295, line: 86, baseType: !302, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !17, line: 174, baseType: !303)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 172, size: 32, elements: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !303, file: !17, line: 173, baseType: !108, size: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !295, line: 101, baseType: !307, size: 64, offset: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !299, file: !295, line: 101, size: 64, elements: !308)
!308 = !{!309, !310, !319}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !307, file: !295, line: 102, baseType: !35, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !307, file: !295, line: 103, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !295, line: 117, size: 128, elements: !313)
!313 = !{!314, !317, !318}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !312, file: !295, line: 118, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !25, line: 20, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !27, line: 26, baseType: !108)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !312, file: !295, line: 119, baseType: !315, size: 32, offset: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !312, file: !295, line: 120, baseType: !42, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !295, line: 104, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !295, line: 104, flags: DIFlagFwdDecl)
!322 = !{!323}
!323 = !DILocalVariable(name: "key", arg: 1, scope: !294, file: !295, line: 205, type: !298)
!324 = !DILocation(line: 205, column: 65, scope: !294)
!325 = !DILocation(line: 207, column: 28, scope: !294)
!326 = !DILocation(line: 207, column: 9, scope: !294)
!327 = !DILocation(line: 207, column: 2, scope: !294)
!328 = !DISubprogram(name: "do_trace_read_msr", scope: !235, file: !235, line: 65, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !7, !113, !108}
!331 = distinct !DISubprogram(name: "arch_static_branch", scope: !332, file: !332, line: 25, type: !333, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !335)
!332 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!333 = !DISubroutineType(types: !334)
!334 = !{!16, !298, !16}
!335 = !{!336, !337, !338}
!336 = !DILocalVariable(name: "key", arg: 1, scope: !331, file: !332, line: 25, type: !298)
!337 = !DILocalVariable(name: "branch", arg: 2, scope: !331, file: !332, line: 25, type: !16)
!338 = !DILabel(scope: !331, name: "l_yes", file: !332, line: 33)
!339 = !DILocation(line: 25, column: 67, scope: !331)
!340 = !DILocation(line: 25, column: 77, scope: !331)
!341 = !DILocation(line: 30, column: 13, scope: !331)
!342 = !DILocation(line: 30, column: 28, scope: !331)
!343 = !DILocation(line: 30, column: 26, scope: !331)
!344 = !DILocation(line: 27, column: 2, scope: !331)
!345 = !{i64 899088, i64 899132, i64 2148383815, i64 2148383836, i64 2148383862, i64 2148383895, i64 2148383929, i64 2148383953}
!346 = !DILocation(line: 32, column: 2, scope: !331)
!347 = !DILocation(line: 33, column: 1, scope: !331)
!348 = !DILocation(line: 34, column: 2, scope: !331)
!349 = !DILocation(line: 35, column: 1, scope: !331)
!350 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !351, file: !351, line: 80, type: !352, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !361)
!351 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!352 = !DISubroutineType(types: !353)
!353 = !{null, !354, !357}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !17, line: 61, baseType: !358)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !359, line: 72, baseType: !360)
!359 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !359, line: 16, baseType: !35)
!361 = !{!362, !363}
!362 = !DILocalVariable(name: "v", arg: 1, scope: !350, file: !351, line: 80, type: !354)
!363 = !DILocalVariable(name: "size", arg: 2, scope: !350, file: !351, line: 80, type: !357)
!364 = !DILocation(line: 80, column: 74, scope: !350)
!365 = !DILocation(line: 80, column: 84, scope: !350)
!366 = !DILocation(line: 82, column: 20, scope: !350)
!367 = !DILocation(line: 82, column: 23, scope: !350)
!368 = !DILocation(line: 82, column: 2, scope: !350)
!369 = !DILocation(line: 83, column: 2, scope: !350)
!370 = !DILocation(line: 84, column: 1, scope: !350)
!371 = distinct !DISubprogram(name: "arch_set_bit", scope: !372, file: !372, line: 52, type: !264, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !373)
!372 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!373 = !{!374, !375}
!374 = !DILocalVariable(name: "nr", arg: 1, scope: !371, file: !372, line: 52, type: !42)
!375 = !DILocalVariable(name: "addr", arg: 2, scope: !371, file: !372, line: 52, type: !266)
!376 = !DILocation(line: 52, column: 19, scope: !371)
!377 = !DILocation(line: 52, column: 47, scope: !371)
!378 = !DILocation(line: 54, column: 27, scope: !379)
!379 = distinct !DILexicalBlock(scope: !371, file: !372, line: 54, column: 6)
!380 = !DILocation(line: 54, column: 6, scope: !379)
!381 = !DILocation(line: 54, column: 6, scope: !371)
!382 = !DILocation(line: 56, column: 6, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !372, line: 54, column: 32)
!384 = !DILocation(line: 57, column: 12, scope: !383)
!385 = !DILocation(line: 55, column: 3, scope: !383)
!386 = !{i64 2147791610, i64 2147791649, i64 2147791670, i64 2147791707, i64 2147791730, i64 2147791600}
!387 = !DILocation(line: 59, column: 2, scope: !383)
!388 = !DILocation(line: 61, column: 8, scope: !389)
!389 = distinct !DILexicalBlock(scope: !379, file: !372, line: 59, column: 9)
!390 = !DILocation(line: 61, column: 32, scope: !389)
!391 = !DILocation(line: 60, column: 3, scope: !389)
!392 = !{i64 2147791895, i64 2147791934, i64 2147791955, i64 2147791992, i64 2147792015, i64 2147791885}
!393 = !DILocation(line: 63, column: 1, scope: !371)
!394 = distinct !DISubprogram(name: "kasan_check_write", scope: !395, file: !395, line: 44, type: !396, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !398)
!395 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!396 = !DISubroutineType(types: !397)
!397 = !{!16, !354, !7}
!398 = !{!399, !400}
!399 = !DILocalVariable(name: "p", arg: 1, scope: !394, file: !395, line: 44, type: !354)
!400 = !DILocalVariable(name: "size", arg: 2, scope: !394, file: !395, line: 44, type: !7)
!401 = !DILocation(line: 44, column: 59, scope: !394)
!402 = !DILocation(line: 44, column: 75, scope: !394)
!403 = !DILocation(line: 46, column: 2, scope: !394)
!404 = distinct !DISubprogram(name: "kcsan_check_access", scope: !405, file: !405, line: 229, type: !406, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !408)
!405 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!406 = !DISubroutineType(types: !407)
!407 = !{null, !354, !357, !108}
!408 = !{!409, !410, !411}
!409 = !DILocalVariable(name: "ptr", arg: 1, scope: !404, file: !405, line: 229, type: !354)
!410 = !DILocalVariable(name: "size", arg: 2, scope: !404, file: !405, line: 229, type: !357)
!411 = !DILocalVariable(name: "type", arg: 3, scope: !404, file: !405, line: 230, type: !108)
!412 = !DILocation(line: 229, column: 60, scope: !404)
!413 = !DILocation(line: 229, column: 72, scope: !404)
!414 = !DILocation(line: 230, column: 15, scope: !404)
!415 = !DILocation(line: 230, column: 23, scope: !404)
