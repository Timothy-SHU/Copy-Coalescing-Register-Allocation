; ModuleID = 'kernel/range.c'
source_filename = "kernel/range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.range = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"\013%s: run out of slot in ranges\0A\00", align 1, !dbg !0
@__func__.subtract_range = private unnamed_addr constant [15 x i8] c"subtract_range\00", align 1, !dbg !7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @add_range(ptr noundef %range, i32 noundef %az, i32 noundef %nr_range, i64 noundef %start, i64 noundef %end) #0 align 16 !dbg !24 {
entry:
  %retval = alloca i32, align 4
  %range.addr = alloca ptr, align 8
  %az.addr = alloca i32, align 4
  %nr_range.addr = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !40, metadata !DIExpression()), !dbg !45
  store i32 %az, ptr %az.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %az.addr, metadata !41, metadata !DIExpression()), !dbg !46
  store i32 %nr_range, ptr %nr_range.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_range.addr, metadata !42, metadata !DIExpression()), !dbg !47
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !43, metadata !DIExpression()), !dbg !48
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !44, metadata !DIExpression()), !dbg !49
  %0 = load i64, ptr %start.addr, align 8, !dbg !50
  %1 = load i64, ptr %end.addr, align 8, !dbg !52
  %cmp = icmp uge i64 %0, %1, !dbg !53
  br i1 %cmp, label %if.then, label %if.end, !dbg !54

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %nr_range.addr, align 4, !dbg !55
  store i32 %2, ptr %retval, align 4, !dbg !56
  br label %return, !dbg !56

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %nr_range.addr, align 4, !dbg !57
  %4 = load i32, ptr %az.addr, align 4, !dbg !59
  %cmp1 = icmp sge i32 %3, %4, !dbg !60
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !61

if.then2:                                         ; preds = %if.end
  %5 = load i32, ptr %nr_range.addr, align 4, !dbg !62
  store i32 %5, ptr %retval, align 4, !dbg !63
  br label %return, !dbg !63

if.end3:                                          ; preds = %if.end
  %6 = load i64, ptr %start.addr, align 8, !dbg !64
  %7 = load ptr, ptr %range.addr, align 8, !dbg !65
  %8 = load i32, ptr %nr_range.addr, align 4, !dbg !66
  %idxprom = sext i32 %8 to i64, !dbg !65
  %arrayidx = getelementptr %struct.range, ptr %7, i64 %idxprom, !dbg !65
  %start4 = getelementptr inbounds %struct.range, ptr %arrayidx, i32 0, i32 0, !dbg !67
  store i64 %6, ptr %start4, align 8, !dbg !68
  %9 = load i64, ptr %end.addr, align 8, !dbg !69
  %10 = load ptr, ptr %range.addr, align 8, !dbg !70
  %11 = load i32, ptr %nr_range.addr, align 4, !dbg !71
  %idxprom5 = sext i32 %11 to i64, !dbg !70
  %arrayidx6 = getelementptr %struct.range, ptr %10, i64 %idxprom5, !dbg !70
  %end7 = getelementptr inbounds %struct.range, ptr %arrayidx6, i32 0, i32 1, !dbg !72
  store i64 %9, ptr %end7, align 8, !dbg !73
  %12 = load i32, ptr %nr_range.addr, align 4, !dbg !74
  %inc = add i32 %12, 1, !dbg !74
  store i32 %inc, ptr %nr_range.addr, align 4, !dbg !74
  %13 = load i32, ptr %nr_range.addr, align 4, !dbg !75
  store i32 %13, ptr %retval, align 4, !dbg !76
  br label %return, !dbg !76

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %14 = load i32, ptr %retval, align 4, !dbg !77
  ret i32 %14, !dbg !77
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @add_range_with_merge(ptr noundef %range, i32 noundef %az, i32 noundef %nr_range, i64 noundef %start, i64 noundef %end) #0 align 16 !dbg !78 {
entry:
  %retval = alloca i32, align 4
  %range.addr = alloca ptr, align 8
  %az.addr = alloca i32, align 4
  %nr_range.addr = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %common_start = alloca i64, align 8
  %common_end = alloca i64, align 8
  %__UNIQUE_ID___x0 = alloca i64, align 8
  %__UNIQUE_ID___y1 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x2 = alloca i64, align 8
  %__UNIQUE_ID___y3 = alloca i64, align 8
  %tmp12 = alloca i64, align 8
  %__UNIQUE_ID___x4 = alloca i64, align 8
  %__UNIQUE_ID___y5 = alloca i64, align 8
  %tmp24 = alloca i64, align 8
  %__UNIQUE_ID___x6 = alloca i64, align 8
  %__UNIQUE_ID___y7 = alloca i64, align 8
  %tmp33 = alloca i64, align 8
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !80, metadata !DIExpression()), !dbg !103
  store i32 %az, ptr %az.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %az.addr, metadata !81, metadata !DIExpression()), !dbg !104
  store i32 %nr_range, ptr %nr_range.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_range.addr, metadata !82, metadata !DIExpression()), !dbg !105
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !83, metadata !DIExpression()), !dbg !106
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !84, metadata !DIExpression()), !dbg !107
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !108
  call void @llvm.dbg.declare(metadata ptr %i, metadata !85, metadata !DIExpression()), !dbg !109
  %0 = load i64, ptr %start.addr, align 8, !dbg !110
  %1 = load i64, ptr %end.addr, align 8, !dbg !112
  %cmp = icmp uge i64 %0, %1, !dbg !113
  br i1 %cmp, label %if.then, label %if.end, !dbg !114

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %nr_range.addr, align 4, !dbg !115
  store i32 %2, ptr %retval, align 4, !dbg !116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !116

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !117
  br label %for.cond, !dbg !118

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, ptr %i, align 4, !dbg !119
  %4 = load i32, ptr %nr_range.addr, align 4, !dbg !120
  %cmp1 = icmp slt i32 %3, %4, !dbg !121
  br i1 %cmp1, label %for.body, label %for.end, !dbg !122

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %common_start) #6, !dbg !123
  call void @llvm.dbg.declare(metadata ptr %common_start, metadata !86, metadata !DIExpression()), !dbg !124
  call void @llvm.lifetime.start.p0(i64 8, ptr %common_end) #6, !dbg !123
  call void @llvm.dbg.declare(metadata ptr %common_end, metadata !90, metadata !DIExpression()), !dbg !125
  %5 = load ptr, ptr %range.addr, align 8, !dbg !126
  %6 = load i32, ptr %i, align 4, !dbg !128
  %idxprom = sext i32 %6 to i64, !dbg !126
  %arrayidx = getelementptr %struct.range, ptr %5, i64 %idxprom, !dbg !126
  %end2 = getelementptr inbounds %struct.range, ptr %arrayidx, i32 0, i32 1, !dbg !129
  %7 = load i64, ptr %end2, align 8, !dbg !129
  %tobool = icmp ne i64 %7, 0, !dbg !126
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !130

if.then3:                                         ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !131

if.end4:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x0) #6, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x0, metadata !91, metadata !DIExpression()), !dbg !132
  %8 = load ptr, ptr %range.addr, align 8, !dbg !132
  %9 = load i32, ptr %i, align 4, !dbg !132
  %idxprom5 = sext i32 %9 to i64, !dbg !132
  %arrayidx6 = getelementptr %struct.range, ptr %8, i64 %idxprom5, !dbg !132
  %start7 = getelementptr inbounds %struct.range, ptr %arrayidx6, i32 0, i32 0, !dbg !132
  %10 = load i64, ptr %start7, align 8, !dbg !132
  store i64 %10, ptr %__UNIQUE_ID___x0, align 8, !dbg !132
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y1) #6, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y1, metadata !93, metadata !DIExpression()), !dbg !132
  %11 = load i64, ptr %start.addr, align 8, !dbg !132
  store i64 %11, ptr %__UNIQUE_ID___y1, align 8, !dbg !132
  %12 = load i64, ptr %__UNIQUE_ID___x0, align 8, !dbg !132
  %13 = load i64, ptr %__UNIQUE_ID___y1, align 8, !dbg !132
  %cmp8 = icmp ugt i64 %12, %13, !dbg !132
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !132

cond.true:                                        ; preds = %if.end4
  %14 = load i64, ptr %__UNIQUE_ID___x0, align 8, !dbg !132
  br label %cond.end, !dbg !132

cond.false:                                       ; preds = %if.end4
  %15 = load i64, ptr %__UNIQUE_ID___y1, align 8, !dbg !132
  br label %cond.end, !dbg !132

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !132
  store i64 %cond, ptr %tmp, align 8, !dbg !132
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y1) #6, !dbg !133
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x0) #6, !dbg !133
  %16 = load i64, ptr %tmp, align 8, !dbg !132
  store i64 %16, ptr %common_start, align 8, !dbg !134
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x2) #6, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x2, metadata !94, metadata !DIExpression()), !dbg !135
  %17 = load ptr, ptr %range.addr, align 8, !dbg !135
  %18 = load i32, ptr %i, align 4, !dbg !135
  %idxprom9 = sext i32 %18 to i64, !dbg !135
  %arrayidx10 = getelementptr %struct.range, ptr %17, i64 %idxprom9, !dbg !135
  %end11 = getelementptr inbounds %struct.range, ptr %arrayidx10, i32 0, i32 1, !dbg !135
  %19 = load i64, ptr %end11, align 8, !dbg !135
  store i64 %19, ptr %__UNIQUE_ID___x2, align 8, !dbg !135
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y3) #6, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y3, metadata !96, metadata !DIExpression()), !dbg !135
  %20 = load i64, ptr %end.addr, align 8, !dbg !135
  store i64 %20, ptr %__UNIQUE_ID___y3, align 8, !dbg !135
  %21 = load i64, ptr %__UNIQUE_ID___x2, align 8, !dbg !135
  %22 = load i64, ptr %__UNIQUE_ID___y3, align 8, !dbg !135
  %cmp13 = icmp ult i64 %21, %22, !dbg !135
  br i1 %cmp13, label %cond.true14, label %cond.false15, !dbg !135

cond.true14:                                      ; preds = %cond.end
  %23 = load i64, ptr %__UNIQUE_ID___x2, align 8, !dbg !135
  br label %cond.end16, !dbg !135

cond.false15:                                     ; preds = %cond.end
  %24 = load i64, ptr %__UNIQUE_ID___y3, align 8, !dbg !135
  br label %cond.end16, !dbg !135

cond.end16:                                       ; preds = %cond.false15, %cond.true14
  %cond17 = phi i64 [ %23, %cond.true14 ], [ %24, %cond.false15 ], !dbg !135
  store i64 %cond17, ptr %tmp12, align 8, !dbg !135
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y3) #6, !dbg !136
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x2) #6, !dbg !136
  %25 = load i64, ptr %tmp12, align 8, !dbg !135
  store i64 %25, ptr %common_end, align 8, !dbg !137
  %26 = load i64, ptr %common_start, align 8, !dbg !138
  %27 = load i64, ptr %common_end, align 8, !dbg !140
  %cmp18 = icmp ugt i64 %26, %27, !dbg !141
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !142

if.then19:                                        ; preds = %cond.end16
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !143

if.end20:                                         ; preds = %cond.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x4) #6, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x4, metadata !97, metadata !DIExpression()), !dbg !144
  %28 = load ptr, ptr %range.addr, align 8, !dbg !144
  %29 = load i32, ptr %i, align 4, !dbg !144
  %idxprom21 = sext i32 %29 to i64, !dbg !144
  %arrayidx22 = getelementptr %struct.range, ptr %28, i64 %idxprom21, !dbg !144
  %start23 = getelementptr inbounds %struct.range, ptr %arrayidx22, i32 0, i32 0, !dbg !144
  %30 = load i64, ptr %start23, align 8, !dbg !144
  store i64 %30, ptr %__UNIQUE_ID___x4, align 8, !dbg !144
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y5) #6, !dbg !144
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y5, metadata !99, metadata !DIExpression()), !dbg !144
  %31 = load i64, ptr %start.addr, align 8, !dbg !144
  store i64 %31, ptr %__UNIQUE_ID___y5, align 8, !dbg !144
  %32 = load i64, ptr %__UNIQUE_ID___x4, align 8, !dbg !144
  %33 = load i64, ptr %__UNIQUE_ID___y5, align 8, !dbg !144
  %cmp25 = icmp ult i64 %32, %33, !dbg !144
  br i1 %cmp25, label %cond.true26, label %cond.false27, !dbg !144

cond.true26:                                      ; preds = %if.end20
  %34 = load i64, ptr %__UNIQUE_ID___x4, align 8, !dbg !144
  br label %cond.end28, !dbg !144

cond.false27:                                     ; preds = %if.end20
  %35 = load i64, ptr %__UNIQUE_ID___y5, align 8, !dbg !144
  br label %cond.end28, !dbg !144

cond.end28:                                       ; preds = %cond.false27, %cond.true26
  %cond29 = phi i64 [ %34, %cond.true26 ], [ %35, %cond.false27 ], !dbg !144
  store i64 %cond29, ptr %tmp24, align 8, !dbg !144
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y5) #6, !dbg !145
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x4) #6, !dbg !145
  %36 = load i64, ptr %tmp24, align 8, !dbg !144
  store i64 %36, ptr %start.addr, align 8, !dbg !146
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x6) #6, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x6, metadata !100, metadata !DIExpression()), !dbg !147
  %37 = load ptr, ptr %range.addr, align 8, !dbg !147
  %38 = load i32, ptr %i, align 4, !dbg !147
  %idxprom30 = sext i32 %38 to i64, !dbg !147
  %arrayidx31 = getelementptr %struct.range, ptr %37, i64 %idxprom30, !dbg !147
  %end32 = getelementptr inbounds %struct.range, ptr %arrayidx31, i32 0, i32 1, !dbg !147
  %39 = load i64, ptr %end32, align 8, !dbg !147
  store i64 %39, ptr %__UNIQUE_ID___x6, align 8, !dbg !147
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y7) #6, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y7, metadata !102, metadata !DIExpression()), !dbg !147
  %40 = load i64, ptr %end.addr, align 8, !dbg !147
  store i64 %40, ptr %__UNIQUE_ID___y7, align 8, !dbg !147
  %41 = load i64, ptr %__UNIQUE_ID___x6, align 8, !dbg !147
  %42 = load i64, ptr %__UNIQUE_ID___y7, align 8, !dbg !147
  %cmp34 = icmp ugt i64 %41, %42, !dbg !147
  br i1 %cmp34, label %cond.true35, label %cond.false36, !dbg !147

cond.true35:                                      ; preds = %cond.end28
  %43 = load i64, ptr %__UNIQUE_ID___x6, align 8, !dbg !147
  br label %cond.end37, !dbg !147

cond.false36:                                     ; preds = %cond.end28
  %44 = load i64, ptr %__UNIQUE_ID___y7, align 8, !dbg !147
  br label %cond.end37, !dbg !147

cond.end37:                                       ; preds = %cond.false36, %cond.true35
  %cond38 = phi i64 [ %43, %cond.true35 ], [ %44, %cond.false36 ], !dbg !147
  store i64 %cond38, ptr %tmp33, align 8, !dbg !147
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y7) #6, !dbg !148
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x6) #6, !dbg !148
  %45 = load i64, ptr %tmp33, align 8, !dbg !147
  store i64 %45, ptr %end.addr, align 8, !dbg !149
  %46 = load ptr, ptr %range.addr, align 8, !dbg !150
  %47 = load i32, ptr %i, align 4, !dbg !151
  %idxprom39 = sext i32 %47 to i64, !dbg !150
  %arrayidx40 = getelementptr %struct.range, ptr %46, i64 %idxprom39, !dbg !150
  %48 = load ptr, ptr %range.addr, align 8, !dbg !152
  %49 = load i32, ptr %i, align 4, !dbg !153
  %add = add i32 %49, 1, !dbg !154
  %idxprom41 = sext i32 %add to i64, !dbg !152
  %arrayidx42 = getelementptr %struct.range, ptr %48, i64 %idxprom41, !dbg !152
  %50 = load i32, ptr %nr_range.addr, align 4, !dbg !155
  %51 = load i32, ptr %i, align 4, !dbg !156
  %add43 = add i32 %51, 1, !dbg !157
  %sub = sub i32 %50, %add43, !dbg !158
  %conv = sext i32 %sub to i64, !dbg !159
  %mul = mul i64 %conv, 16, !dbg !160
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %arrayidx40, ptr align 8 %arrayidx42, i64 %mul, i1 false), !dbg !161
  %52 = load ptr, ptr %range.addr, align 8, !dbg !162
  %53 = load i32, ptr %nr_range.addr, align 4, !dbg !163
  %sub44 = sub i32 %53, 1, !dbg !164
  %idxprom45 = sext i32 %sub44 to i64, !dbg !162
  %arrayidx46 = getelementptr %struct.range, ptr %52, i64 %idxprom45, !dbg !162
  %start47 = getelementptr inbounds %struct.range, ptr %arrayidx46, i32 0, i32 0, !dbg !165
  store i64 0, ptr %start47, align 8, !dbg !166
  %54 = load ptr, ptr %range.addr, align 8, !dbg !167
  %55 = load i32, ptr %nr_range.addr, align 4, !dbg !168
  %sub48 = sub i32 %55, 1, !dbg !169
  %idxprom49 = sext i32 %sub48 to i64, !dbg !167
  %arrayidx50 = getelementptr %struct.range, ptr %54, i64 %idxprom49, !dbg !167
  %end51 = getelementptr inbounds %struct.range, ptr %arrayidx50, i32 0, i32 1, !dbg !170
  store i64 0, ptr %end51, align 8, !dbg !171
  %56 = load i32, ptr %nr_range.addr, align 4, !dbg !172
  %dec = add i32 %56, -1, !dbg !172
  store i32 %dec, ptr %nr_range.addr, align 4, !dbg !172
  %57 = load i32, ptr %i, align 4, !dbg !173
  %dec52 = add i32 %57, -1, !dbg !173
  store i32 %dec52, ptr %i, align 4, !dbg !173
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !174
  br label %cleanup, !dbg !174

cleanup:                                          ; preds = %cond.end37, %if.then19, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %common_end) #6, !dbg !174
  call void @llvm.lifetime.end.p0(i64 8, ptr %common_start) #6, !dbg !174
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !175

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %58 = load i32, ptr %i, align 4, !dbg !176
  %inc = add i32 %58, 1, !dbg !176
  store i32 %inc, ptr %i, align 4, !dbg !176
  br label %for.cond, !dbg !177, !llvm.loop !178

for.end:                                          ; preds = %for.cond
  %59 = load ptr, ptr %range.addr, align 8, !dbg !182
  %60 = load i32, ptr %az.addr, align 4, !dbg !183
  %61 = load i32, ptr %nr_range.addr, align 4, !dbg !184
  %62 = load i64, ptr %start.addr, align 8, !dbg !185
  %63 = load i64, ptr %end.addr, align 8, !dbg !186
  %call = call i32 @add_range(ptr noundef %59, i32 noundef %60, i32 noundef %61, i64 noundef %62, i64 noundef %63) #7, !dbg !187
  store i32 %call, ptr %retval, align 4, !dbg !188
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup54, !dbg !188

cleanup54:                                        ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !189
  %64 = load i32, ptr %retval, align 4, !dbg !189
  ret i32 %64, !dbg !189

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @subtract_range(ptr noundef %range, i32 noundef %az, i64 noundef %start, i64 noundef %end) #0 align 16 !dbg !190 {
entry:
  %range.addr = alloca ptr, align 8
  %az.addr = alloca i32, align 4
  %start.addr = alloca i64, align 8
  %end.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !194, metadata !DIExpression()), !dbg !200
  store i32 %az, ptr %az.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %az.addr, metadata !195, metadata !DIExpression()), !dbg !201
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !196, metadata !DIExpression()), !dbg !202
  store i64 %end, ptr %end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %end.addr, metadata !197, metadata !DIExpression()), !dbg !203
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %i, metadata !198, metadata !DIExpression()), !dbg !205
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %j, metadata !199, metadata !DIExpression()), !dbg !206
  %0 = load i64, ptr %start.addr, align 8, !dbg !207
  %1 = load i64, ptr %end.addr, align 8, !dbg !209
  %cmp = icmp uge i64 %0, %1, !dbg !210
  br i1 %cmp, label %if.then, label %if.end, !dbg !211

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !212

if.end:                                           ; preds = %entry
  store i32 0, ptr %j, align 4, !dbg !213
  br label %for.cond, !dbg !215

for.cond:                                         ; preds = %for.inc94, %if.end
  %2 = load i32, ptr %j, align 4, !dbg !216
  %3 = load i32, ptr %az.addr, align 4, !dbg !218
  %cmp1 = icmp slt i32 %2, %3, !dbg !219
  br i1 %cmp1, label %for.body, label %for.end96, !dbg !220

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %range.addr, align 8, !dbg !221
  %5 = load i32, ptr %j, align 4, !dbg !224
  %idxprom = sext i32 %5 to i64, !dbg !221
  %arrayidx = getelementptr %struct.range, ptr %4, i64 %idxprom, !dbg !221
  %end2 = getelementptr inbounds %struct.range, ptr %arrayidx, i32 0, i32 1, !dbg !225
  %6 = load i64, ptr %end2, align 8, !dbg !225
  %tobool = icmp ne i64 %6, 0, !dbg !221
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !226

if.then3:                                         ; preds = %for.body
  br label %for.inc94, !dbg !227

if.end4:                                          ; preds = %for.body
  %7 = load i64, ptr %start.addr, align 8, !dbg !228
  %8 = load ptr, ptr %range.addr, align 8, !dbg !230
  %9 = load i32, ptr %j, align 4, !dbg !231
  %idxprom5 = sext i32 %9 to i64, !dbg !230
  %arrayidx6 = getelementptr %struct.range, ptr %8, i64 %idxprom5, !dbg !230
  %start7 = getelementptr inbounds %struct.range, ptr %arrayidx6, i32 0, i32 0, !dbg !232
  %10 = load i64, ptr %start7, align 8, !dbg !232
  %cmp8 = icmp ule i64 %7, %10, !dbg !233
  br i1 %cmp8, label %land.lhs.true, label %if.end20, !dbg !234

land.lhs.true:                                    ; preds = %if.end4
  %11 = load i64, ptr %end.addr, align 8, !dbg !235
  %12 = load ptr, ptr %range.addr, align 8, !dbg !236
  %13 = load i32, ptr %j, align 4, !dbg !237
  %idxprom9 = sext i32 %13 to i64, !dbg !236
  %arrayidx10 = getelementptr %struct.range, ptr %12, i64 %idxprom9, !dbg !236
  %end11 = getelementptr inbounds %struct.range, ptr %arrayidx10, i32 0, i32 1, !dbg !238
  %14 = load i64, ptr %end11, align 8, !dbg !238
  %cmp12 = icmp uge i64 %11, %14, !dbg !239
  br i1 %cmp12, label %if.then13, label %if.end20, !dbg !240

if.then13:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %range.addr, align 8, !dbg !241
  %16 = load i32, ptr %j, align 4, !dbg !243
  %idxprom14 = sext i32 %16 to i64, !dbg !241
  %arrayidx15 = getelementptr %struct.range, ptr %15, i64 %idxprom14, !dbg !241
  %start16 = getelementptr inbounds %struct.range, ptr %arrayidx15, i32 0, i32 0, !dbg !244
  store i64 0, ptr %start16, align 8, !dbg !245
  %17 = load ptr, ptr %range.addr, align 8, !dbg !246
  %18 = load i32, ptr %j, align 4, !dbg !247
  %idxprom17 = sext i32 %18 to i64, !dbg !246
  %arrayidx18 = getelementptr %struct.range, ptr %17, i64 %idxprom17, !dbg !246
  %end19 = getelementptr inbounds %struct.range, ptr %arrayidx18, i32 0, i32 1, !dbg !248
  store i64 0, ptr %end19, align 8, !dbg !249
  br label %for.inc94, !dbg !250

if.end20:                                         ; preds = %land.lhs.true, %if.end4
  %19 = load i64, ptr %start.addr, align 8, !dbg !251
  %20 = load ptr, ptr %range.addr, align 8, !dbg !253
  %21 = load i32, ptr %j, align 4, !dbg !254
  %idxprom21 = sext i32 %21 to i64, !dbg !253
  %arrayidx22 = getelementptr %struct.range, ptr %20, i64 %idxprom21, !dbg !253
  %start23 = getelementptr inbounds %struct.range, ptr %arrayidx22, i32 0, i32 0, !dbg !255
  %22 = load i64, ptr %start23, align 8, !dbg !255
  %cmp24 = icmp ule i64 %19, %22, !dbg !256
  br i1 %cmp24, label %land.lhs.true25, label %if.end39, !dbg !257

land.lhs.true25:                                  ; preds = %if.end20
  %23 = load i64, ptr %end.addr, align 8, !dbg !258
  %24 = load ptr, ptr %range.addr, align 8, !dbg !259
  %25 = load i32, ptr %j, align 4, !dbg !260
  %idxprom26 = sext i32 %25 to i64, !dbg !259
  %arrayidx27 = getelementptr %struct.range, ptr %24, i64 %idxprom26, !dbg !259
  %end28 = getelementptr inbounds %struct.range, ptr %arrayidx27, i32 0, i32 1, !dbg !261
  %26 = load i64, ptr %end28, align 8, !dbg !261
  %cmp29 = icmp ult i64 %23, %26, !dbg !262
  br i1 %cmp29, label %land.lhs.true30, label %if.end39, !dbg !263

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %27 = load ptr, ptr %range.addr, align 8, !dbg !264
  %28 = load i32, ptr %j, align 4, !dbg !265
  %idxprom31 = sext i32 %28 to i64, !dbg !264
  %arrayidx32 = getelementptr %struct.range, ptr %27, i64 %idxprom31, !dbg !264
  %start33 = getelementptr inbounds %struct.range, ptr %arrayidx32, i32 0, i32 0, !dbg !266
  %29 = load i64, ptr %start33, align 8, !dbg !266
  %30 = load i64, ptr %end.addr, align 8, !dbg !267
  %cmp34 = icmp ult i64 %29, %30, !dbg !268
  br i1 %cmp34, label %if.then35, label %if.end39, !dbg !269

if.then35:                                        ; preds = %land.lhs.true30
  %31 = load i64, ptr %end.addr, align 8, !dbg !270
  %32 = load ptr, ptr %range.addr, align 8, !dbg !272
  %33 = load i32, ptr %j, align 4, !dbg !273
  %idxprom36 = sext i32 %33 to i64, !dbg !272
  %arrayidx37 = getelementptr %struct.range, ptr %32, i64 %idxprom36, !dbg !272
  %start38 = getelementptr inbounds %struct.range, ptr %arrayidx37, i32 0, i32 0, !dbg !274
  store i64 %31, ptr %start38, align 8, !dbg !275
  br label %for.inc94, !dbg !276

if.end39:                                         ; preds = %land.lhs.true30, %land.lhs.true25, %if.end20
  %34 = load i64, ptr %start.addr, align 8, !dbg !277
  %35 = load ptr, ptr %range.addr, align 8, !dbg !279
  %36 = load i32, ptr %j, align 4, !dbg !280
  %idxprom40 = sext i32 %36 to i64, !dbg !279
  %arrayidx41 = getelementptr %struct.range, ptr %35, i64 %idxprom40, !dbg !279
  %start42 = getelementptr inbounds %struct.range, ptr %arrayidx41, i32 0, i32 0, !dbg !281
  %37 = load i64, ptr %start42, align 8, !dbg !281
  %cmp43 = icmp ugt i64 %34, %37, !dbg !282
  br i1 %cmp43, label %land.lhs.true44, label %if.end58, !dbg !283

land.lhs.true44:                                  ; preds = %if.end39
  %38 = load i64, ptr %end.addr, align 8, !dbg !284
  %39 = load ptr, ptr %range.addr, align 8, !dbg !285
  %40 = load i32, ptr %j, align 4, !dbg !286
  %idxprom45 = sext i32 %40 to i64, !dbg !285
  %arrayidx46 = getelementptr %struct.range, ptr %39, i64 %idxprom45, !dbg !285
  %end47 = getelementptr inbounds %struct.range, ptr %arrayidx46, i32 0, i32 1, !dbg !287
  %41 = load i64, ptr %end47, align 8, !dbg !287
  %cmp48 = icmp uge i64 %38, %41, !dbg !288
  br i1 %cmp48, label %land.lhs.true49, label %if.end58, !dbg !289

land.lhs.true49:                                  ; preds = %land.lhs.true44
  %42 = load ptr, ptr %range.addr, align 8, !dbg !290
  %43 = load i32, ptr %j, align 4, !dbg !291
  %idxprom50 = sext i32 %43 to i64, !dbg !290
  %arrayidx51 = getelementptr %struct.range, ptr %42, i64 %idxprom50, !dbg !290
  %end52 = getelementptr inbounds %struct.range, ptr %arrayidx51, i32 0, i32 1, !dbg !292
  %44 = load i64, ptr %end52, align 8, !dbg !292
  %45 = load i64, ptr %start.addr, align 8, !dbg !293
  %cmp53 = icmp ugt i64 %44, %45, !dbg !294
  br i1 %cmp53, label %if.then54, label %if.end58, !dbg !295

if.then54:                                        ; preds = %land.lhs.true49
  %46 = load i64, ptr %start.addr, align 8, !dbg !296
  %47 = load ptr, ptr %range.addr, align 8, !dbg !298
  %48 = load i32, ptr %j, align 4, !dbg !299
  %idxprom55 = sext i32 %48 to i64, !dbg !298
  %arrayidx56 = getelementptr %struct.range, ptr %47, i64 %idxprom55, !dbg !298
  %end57 = getelementptr inbounds %struct.range, ptr %arrayidx56, i32 0, i32 1, !dbg !300
  store i64 %46, ptr %end57, align 8, !dbg !301
  br label %for.inc94, !dbg !302

if.end58:                                         ; preds = %land.lhs.true49, %land.lhs.true44, %if.end39
  %49 = load i64, ptr %start.addr, align 8, !dbg !303
  %50 = load ptr, ptr %range.addr, align 8, !dbg !305
  %51 = load i32, ptr %j, align 4, !dbg !306
  %idxprom59 = sext i32 %51 to i64, !dbg !305
  %arrayidx60 = getelementptr %struct.range, ptr %50, i64 %idxprom59, !dbg !305
  %start61 = getelementptr inbounds %struct.range, ptr %arrayidx60, i32 0, i32 0, !dbg !307
  %52 = load i64, ptr %start61, align 8, !dbg !307
  %cmp62 = icmp ugt i64 %49, %52, !dbg !308
  br i1 %cmp62, label %land.lhs.true63, label %if.end93, !dbg !309

land.lhs.true63:                                  ; preds = %if.end58
  %53 = load i64, ptr %end.addr, align 8, !dbg !310
  %54 = load ptr, ptr %range.addr, align 8, !dbg !311
  %55 = load i32, ptr %j, align 4, !dbg !312
  %idxprom64 = sext i32 %55 to i64, !dbg !311
  %arrayidx65 = getelementptr %struct.range, ptr %54, i64 %idxprom64, !dbg !311
  %end66 = getelementptr inbounds %struct.range, ptr %arrayidx65, i32 0, i32 1, !dbg !313
  %56 = load i64, ptr %end66, align 8, !dbg !313
  %cmp67 = icmp ult i64 %53, %56, !dbg !314
  br i1 %cmp67, label %if.then68, label %if.end93, !dbg !315

if.then68:                                        ; preds = %land.lhs.true63
  store i32 0, ptr %i, align 4, !dbg !316
  br label %for.cond69, !dbg !319

for.cond69:                                       ; preds = %for.inc, %if.then68
  %57 = load i32, ptr %i, align 4, !dbg !320
  %58 = load i32, ptr %az.addr, align 4, !dbg !322
  %cmp70 = icmp slt i32 %57, %58, !dbg !323
  br i1 %cmp70, label %for.body71, label %for.end, !dbg !324

for.body71:                                       ; preds = %for.cond69
  %59 = load ptr, ptr %range.addr, align 8, !dbg !325
  %60 = load i32, ptr %i, align 4, !dbg !328
  %idxprom72 = sext i32 %60 to i64, !dbg !325
  %arrayidx73 = getelementptr %struct.range, ptr %59, i64 %idxprom72, !dbg !325
  %end74 = getelementptr inbounds %struct.range, ptr %arrayidx73, i32 0, i32 1, !dbg !329
  %61 = load i64, ptr %end74, align 8, !dbg !329
  %cmp75 = icmp eq i64 %61, 0, !dbg !330
  br i1 %cmp75, label %if.then76, label %if.end77, !dbg !331

if.then76:                                        ; preds = %for.body71
  br label %for.end, !dbg !332

if.end77:                                         ; preds = %for.body71
  br label %for.inc, !dbg !333

for.inc:                                          ; preds = %if.end77
  %62 = load i32, ptr %i, align 4, !dbg !334
  %inc = add i32 %62, 1, !dbg !334
  store i32 %inc, ptr %i, align 4, !dbg !334
  br label %for.cond69, !dbg !335, !llvm.loop !336

for.end:                                          ; preds = %if.then76, %for.cond69
  %63 = load i32, ptr %i, align 4, !dbg !338
  %64 = load i32, ptr %az.addr, align 4, !dbg !340
  %cmp78 = icmp slt i32 %63, %64, !dbg !341
  br i1 %cmp78, label %if.then79, label %if.else, !dbg !342

if.then79:                                        ; preds = %for.end
  %65 = load ptr, ptr %range.addr, align 8, !dbg !343
  %66 = load i32, ptr %j, align 4, !dbg !345
  %idxprom80 = sext i32 %66 to i64, !dbg !343
  %arrayidx81 = getelementptr %struct.range, ptr %65, i64 %idxprom80, !dbg !343
  %end82 = getelementptr inbounds %struct.range, ptr %arrayidx81, i32 0, i32 1, !dbg !346
  %67 = load i64, ptr %end82, align 8, !dbg !346
  %68 = load ptr, ptr %range.addr, align 8, !dbg !347
  %69 = load i32, ptr %i, align 4, !dbg !348
  %idxprom83 = sext i32 %69 to i64, !dbg !347
  %arrayidx84 = getelementptr %struct.range, ptr %68, i64 %idxprom83, !dbg !347
  %end85 = getelementptr inbounds %struct.range, ptr %arrayidx84, i32 0, i32 1, !dbg !349
  store i64 %67, ptr %end85, align 8, !dbg !350
  %70 = load i64, ptr %end.addr, align 8, !dbg !351
  %71 = load ptr, ptr %range.addr, align 8, !dbg !352
  %72 = load i32, ptr %i, align 4, !dbg !353
  %idxprom86 = sext i32 %72 to i64, !dbg !352
  %arrayidx87 = getelementptr %struct.range, ptr %71, i64 %idxprom86, !dbg !352
  %start88 = getelementptr inbounds %struct.range, ptr %arrayidx87, i32 0, i32 0, !dbg !354
  store i64 %70, ptr %start88, align 8, !dbg !355
  br label %if.end89, !dbg !356

if.else:                                          ; preds = %for.end
  br label %do.body, !dbg !357

do.body:                                          ; preds = %if.else
  br label %do.cond, !dbg !360

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !360

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef @__func__.subtract_range) #8, !dbg !357
  store i32 %call, ptr %tmp, align 4, !dbg !360
  %73 = load i32, ptr %tmp, align 4, !dbg !357
  br label %if.end89

if.end89:                                         ; preds = %do.end, %if.then79
  %74 = load i64, ptr %start.addr, align 8, !dbg !362
  %75 = load ptr, ptr %range.addr, align 8, !dbg !363
  %76 = load i32, ptr %j, align 4, !dbg !364
  %idxprom90 = sext i32 %76 to i64, !dbg !363
  %arrayidx91 = getelementptr %struct.range, ptr %75, i64 %idxprom90, !dbg !363
  %end92 = getelementptr inbounds %struct.range, ptr %arrayidx91, i32 0, i32 1, !dbg !365
  store i64 %74, ptr %end92, align 8, !dbg !366
  br label %for.inc94, !dbg !367

if.end93:                                         ; preds = %land.lhs.true63, %if.end58
  br label %for.inc94, !dbg !368

for.inc94:                                        ; preds = %if.end93, %if.end89, %if.then54, %if.then35, %if.then13, %if.then3
  %77 = load i32, ptr %j, align 4, !dbg !369
  %inc95 = add i32 %77, 1, !dbg !369
  store i32 %inc95, ptr %j, align 4, !dbg !369
  br label %for.cond, !dbg !370, !llvm.loop !371

for.end96:                                        ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !373
  br label %cleanup, !dbg !373

cleanup:                                          ; preds = %for.end96, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6, !dbg !373
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !373
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !373

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !374 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @clean_sort_range(ptr noundef %range, i32 noundef %az) #0 align 16 !dbg !379 {
entry:
  %range.addr = alloca ptr, align 8
  %az.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nr_range = alloca i32, align 4
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !383, metadata !DIExpression()), !dbg !389
  store i32 %az, ptr %az.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %az.addr, metadata !384, metadata !DIExpression()), !dbg !390
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %i, metadata !385, metadata !DIExpression()), !dbg !392
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #6, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %j, metadata !386, metadata !DIExpression()), !dbg !393
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #6, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %k, metadata !387, metadata !DIExpression()), !dbg !394
  %0 = load i32, ptr %az.addr, align 4, !dbg !395
  %sub = sub i32 %0, 1, !dbg !396
  store i32 %sub, ptr %k, align 4, !dbg !394
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_range) #6, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %nr_range, metadata !388, metadata !DIExpression()), !dbg !397
  %1 = load i32, ptr %az.addr, align 4, !dbg !398
  store i32 %1, ptr %nr_range, align 4, !dbg !397
  store i32 0, ptr %i, align 4, !dbg !399
  br label %for.cond, !dbg !401

for.cond:                                         ; preds = %for.inc31, %entry
  %2 = load i32, ptr %i, align 4, !dbg !402
  %3 = load i32, ptr %k, align 4, !dbg !404
  %cmp = icmp slt i32 %2, %3, !dbg !405
  br i1 %cmp, label %for.body, label %for.end32, !dbg !406

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %range.addr, align 8, !dbg !407
  %5 = load i32, ptr %i, align 4, !dbg !410
  %idxprom = sext i32 %5 to i64, !dbg !407
  %arrayidx = getelementptr %struct.range, ptr %4, i64 %idxprom, !dbg !407
  %end = getelementptr inbounds %struct.range, ptr %arrayidx, i32 0, i32 1, !dbg !411
  %6 = load i64, ptr %end, align 8, !dbg !411
  %tobool = icmp ne i64 %6, 0, !dbg !407
  br i1 %tobool, label %if.then, label %if.end, !dbg !412

if.then:                                          ; preds = %for.body
  br label %for.inc31, !dbg !413

if.end:                                           ; preds = %for.body
  %7 = load i32, ptr %k, align 4, !dbg !414
  store i32 %7, ptr %j, align 4, !dbg !416
  br label %for.cond1, !dbg !417

for.cond1:                                        ; preds = %for.inc, %if.end
  %8 = load i32, ptr %j, align 4, !dbg !418
  %9 = load i32, ptr %i, align 4, !dbg !420
  %cmp2 = icmp sgt i32 %8, %9, !dbg !421
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !422

for.body3:                                        ; preds = %for.cond1
  %10 = load ptr, ptr %range.addr, align 8, !dbg !423
  %11 = load i32, ptr %j, align 4, !dbg !426
  %idxprom4 = sext i32 %11 to i64, !dbg !423
  %arrayidx5 = getelementptr %struct.range, ptr %10, i64 %idxprom4, !dbg !423
  %end6 = getelementptr inbounds %struct.range, ptr %arrayidx5, i32 0, i32 1, !dbg !427
  %12 = load i64, ptr %end6, align 8, !dbg !427
  %tobool7 = icmp ne i64 %12, 0, !dbg !423
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !428

if.then8:                                         ; preds = %for.body3
  %13 = load i32, ptr %j, align 4, !dbg !429
  store i32 %13, ptr %k, align 4, !dbg !431
  br label %for.end, !dbg !432

if.end9:                                          ; preds = %for.body3
  br label %for.inc, !dbg !433

for.inc:                                          ; preds = %if.end9
  %14 = load i32, ptr %j, align 4, !dbg !434
  %dec = add i32 %14, -1, !dbg !434
  store i32 %dec, ptr %j, align 4, !dbg !434
  br label %for.cond1, !dbg !435, !llvm.loop !436

for.end:                                          ; preds = %if.then8, %for.cond1
  %15 = load i32, ptr %j, align 4, !dbg !438
  %16 = load i32, ptr %i, align 4, !dbg !440
  %cmp10 = icmp eq i32 %15, %16, !dbg !441
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !442

if.then11:                                        ; preds = %for.end
  br label %for.end32, !dbg !443

if.end12:                                         ; preds = %for.end
  %17 = load ptr, ptr %range.addr, align 8, !dbg !444
  %18 = load i32, ptr %k, align 4, !dbg !445
  %idxprom13 = sext i32 %18 to i64, !dbg !444
  %arrayidx14 = getelementptr %struct.range, ptr %17, i64 %idxprom13, !dbg !444
  %start = getelementptr inbounds %struct.range, ptr %arrayidx14, i32 0, i32 0, !dbg !446
  %19 = load i64, ptr %start, align 8, !dbg !446
  %20 = load ptr, ptr %range.addr, align 8, !dbg !447
  %21 = load i32, ptr %i, align 4, !dbg !448
  %idxprom15 = sext i32 %21 to i64, !dbg !447
  %arrayidx16 = getelementptr %struct.range, ptr %20, i64 %idxprom15, !dbg !447
  %start17 = getelementptr inbounds %struct.range, ptr %arrayidx16, i32 0, i32 0, !dbg !449
  store i64 %19, ptr %start17, align 8, !dbg !450
  %22 = load ptr, ptr %range.addr, align 8, !dbg !451
  %23 = load i32, ptr %k, align 4, !dbg !452
  %idxprom18 = sext i32 %23 to i64, !dbg !451
  %arrayidx19 = getelementptr %struct.range, ptr %22, i64 %idxprom18, !dbg !451
  %end20 = getelementptr inbounds %struct.range, ptr %arrayidx19, i32 0, i32 1, !dbg !453
  %24 = load i64, ptr %end20, align 8, !dbg !453
  %25 = load ptr, ptr %range.addr, align 8, !dbg !454
  %26 = load i32, ptr %i, align 4, !dbg !455
  %idxprom21 = sext i32 %26 to i64, !dbg !454
  %arrayidx22 = getelementptr %struct.range, ptr %25, i64 %idxprom21, !dbg !454
  %end23 = getelementptr inbounds %struct.range, ptr %arrayidx22, i32 0, i32 1, !dbg !456
  store i64 %24, ptr %end23, align 8, !dbg !457
  %27 = load ptr, ptr %range.addr, align 8, !dbg !458
  %28 = load i32, ptr %k, align 4, !dbg !459
  %idxprom24 = sext i32 %28 to i64, !dbg !458
  %arrayidx25 = getelementptr %struct.range, ptr %27, i64 %idxprom24, !dbg !458
  %start26 = getelementptr inbounds %struct.range, ptr %arrayidx25, i32 0, i32 0, !dbg !460
  store i64 0, ptr %start26, align 8, !dbg !461
  %29 = load ptr, ptr %range.addr, align 8, !dbg !462
  %30 = load i32, ptr %k, align 4, !dbg !463
  %idxprom27 = sext i32 %30 to i64, !dbg !462
  %arrayidx28 = getelementptr %struct.range, ptr %29, i64 %idxprom27, !dbg !462
  %end29 = getelementptr inbounds %struct.range, ptr %arrayidx28, i32 0, i32 1, !dbg !464
  store i64 0, ptr %end29, align 8, !dbg !465
  %31 = load i32, ptr %k, align 4, !dbg !466
  %dec30 = add i32 %31, -1, !dbg !466
  store i32 %dec30, ptr %k, align 4, !dbg !466
  br label %for.inc31, !dbg !467

for.inc31:                                        ; preds = %if.end12, %if.then
  %32 = load i32, ptr %i, align 4, !dbg !468
  %inc = add i32 %32, 1, !dbg !468
  store i32 %inc, ptr %i, align 4, !dbg !468
  br label %for.cond, !dbg !469, !llvm.loop !470

for.end32:                                        ; preds = %if.then11, %for.cond
  store i32 0, ptr %i, align 4, !dbg !472
  br label %for.cond33, !dbg !474

for.cond33:                                       ; preds = %for.inc42, %for.end32
  %33 = load i32, ptr %i, align 4, !dbg !475
  %34 = load i32, ptr %az.addr, align 4, !dbg !477
  %cmp34 = icmp slt i32 %33, %34, !dbg !478
  br i1 %cmp34, label %for.body35, label %for.end44, !dbg !479

for.body35:                                       ; preds = %for.cond33
  %35 = load ptr, ptr %range.addr, align 8, !dbg !480
  %36 = load i32, ptr %i, align 4, !dbg !483
  %idxprom36 = sext i32 %36 to i64, !dbg !480
  %arrayidx37 = getelementptr %struct.range, ptr %35, i64 %idxprom36, !dbg !480
  %end38 = getelementptr inbounds %struct.range, ptr %arrayidx37, i32 0, i32 1, !dbg !484
  %37 = load i64, ptr %end38, align 8, !dbg !484
  %tobool39 = icmp ne i64 %37, 0, !dbg !480
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !485

if.then40:                                        ; preds = %for.body35
  %38 = load i32, ptr %i, align 4, !dbg !486
  store i32 %38, ptr %nr_range, align 4, !dbg !488
  br label %for.end44, !dbg !489

if.end41:                                         ; preds = %for.body35
  br label %for.inc42, !dbg !490

for.inc42:                                        ; preds = %if.end41
  %39 = load i32, ptr %i, align 4, !dbg !491
  %inc43 = add i32 %39, 1, !dbg !491
  store i32 %inc43, ptr %i, align 4, !dbg !491
  br label %for.cond33, !dbg !492, !llvm.loop !493

for.end44:                                        ; preds = %if.then40, %for.cond33
  %40 = load ptr, ptr %range.addr, align 8, !dbg !495
  %41 = load i32, ptr %nr_range, align 4, !dbg !496
  %conv = sext i32 %41 to i64, !dbg !496
  call void @sort(ptr noundef %40, i64 noundef %conv, i64 noundef 16, ptr noundef @cmp_range, ptr noundef null) #7, !dbg !497
  %42 = load i32, ptr %nr_range, align 4, !dbg !498
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_range) #6, !dbg !499
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #6, !dbg !499
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #6, !dbg !499
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !499
  ret i32 %42, !dbg !500
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !501 dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cmp_range(ptr noundef %x1, ptr noundef %x2) #0 align 16 !dbg !522 {
entry:
  %retval = alloca i32, align 4
  %x1.addr = alloca ptr, align 8
  %x2.addr = alloca ptr, align 8
  %r1 = alloca ptr, align 8
  %r2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %x1, ptr %x1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x1.addr, metadata !524, metadata !DIExpression()), !dbg !530
  store ptr %x2, ptr %x2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x2.addr, metadata !525, metadata !DIExpression()), !dbg !531
  call void @llvm.lifetime.start.p0(i64 8, ptr %r1) #6, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %r1, metadata !526, metadata !DIExpression()), !dbg !533
  %0 = load ptr, ptr %x1.addr, align 8, !dbg !534
  store ptr %0, ptr %r1, align 8, !dbg !533
  call void @llvm.lifetime.start.p0(i64 8, ptr %r2) #6, !dbg !535
  call void @llvm.dbg.declare(metadata ptr %r2, metadata !529, metadata !DIExpression()), !dbg !536
  %1 = load ptr, ptr %x2.addr, align 8, !dbg !537
  store ptr %1, ptr %r2, align 8, !dbg !536
  %2 = load ptr, ptr %r1, align 8, !dbg !538
  %start = getelementptr inbounds %struct.range, ptr %2, i32 0, i32 0, !dbg !540
  %3 = load i64, ptr %start, align 8, !dbg !540
  %4 = load ptr, ptr %r2, align 8, !dbg !541
  %start1 = getelementptr inbounds %struct.range, ptr %4, i32 0, i32 0, !dbg !542
  %5 = load i64, ptr %start1, align 8, !dbg !542
  %cmp = icmp ult i64 %3, %5, !dbg !543
  br i1 %cmp, label %if.then, label %if.end, !dbg !544

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !545
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !545

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %r1, align 8, !dbg !546
  %start2 = getelementptr inbounds %struct.range, ptr %6, i32 0, i32 0, !dbg !548
  %7 = load i64, ptr %start2, align 8, !dbg !548
  %8 = load ptr, ptr %r2, align 8, !dbg !549
  %start3 = getelementptr inbounds %struct.range, ptr %8, i32 0, i32 0, !dbg !550
  %9 = load i64, ptr %start3, align 8, !dbg !550
  %cmp4 = icmp ugt i64 %7, %9, !dbg !551
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !552

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !553
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !553

if.end6:                                          ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !554

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %r2) #6, !dbg !555
  call void @llvm.lifetime.end.p0(i64 8, ptr %r1) #6, !dbg !555
  %10 = load i32, ptr %retval, align 4, !dbg !555
  ret i32 %10, !dbg !555
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sort_range(ptr noundef %range, i32 noundef %nr_range) #0 align 16 !dbg !556 {
entry:
  %range.addr = alloca ptr, align 8
  %nr_range.addr = alloca i32, align 4
  store ptr %range, ptr %range.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %range.addr, metadata !560, metadata !DIExpression()), !dbg !562
  store i32 %nr_range, ptr %nr_range.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr_range.addr, metadata !561, metadata !DIExpression()), !dbg !563
  %0 = load ptr, ptr %range.addr, align 8, !dbg !564
  %1 = load i32, ptr %nr_range.addr, align 4, !dbg !565
  %conv = sext i32 %1 to i64, !dbg !565
  call void @sort(ptr noundef %0, i64 noundef %conv, i64 noundef 16, ptr noundef @cmp_range, ptr noundef null) #7, !dbg !566
  ret void, !dbg !567
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/range.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9533119404e4d517f3185add52418be0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 33)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 120, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 15)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.range.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/range\22 -D KBUILD_BASENAME=\22range\22 -D KBUILD_MODNAME=\22range\22 -D __KBUILD_MODNAME=kmod_range -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/range.ll kernel/range.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !14, splitDebugInlining: false, nameTableKind: None)
!14 = !{!0, !7}
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 8, !"cf-protection-branch", i32 1}
!19 = !{i32 4, !"function_return_thunk_extern", i32 1}
!20 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!21 = !{i32 1, !"Code Model", i32 2}
!22 = !{i32 1, !"override-stack-alignment", i32 8}
!23 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!24 = distinct !DISubprogram(name: "add_range", scope: !2, file: !2, line: 12, type: !25, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !39)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !28, !27, !27, !33, !33}
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !30, line: 6, size: 128, elements: !31)
!30 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!31 = !{!32, !38}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !29, file: !30, line: 7, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !34, line: 23, baseType: !35)
!34 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !36, line: 31, baseType: !37)
!36 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!37 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !29, file: !30, line: 8, baseType: !33, size: 64, offset: 64)
!39 = !{!40, !41, !42, !43, !44}
!40 = !DILocalVariable(name: "range", arg: 1, scope: !24, file: !2, line: 12, type: !28)
!41 = !DILocalVariable(name: "az", arg: 2, scope: !24, file: !2, line: 12, type: !27)
!42 = !DILocalVariable(name: "nr_range", arg: 3, scope: !24, file: !2, line: 12, type: !27)
!43 = !DILocalVariable(name: "start", arg: 4, scope: !24, file: !2, line: 12, type: !33)
!44 = !DILocalVariable(name: "end", arg: 5, scope: !24, file: !2, line: 12, type: !33)
!45 = !DILocation(line: 12, column: 29, scope: !24)
!46 = !DILocation(line: 12, column: 40, scope: !24)
!47 = !DILocation(line: 12, column: 48, scope: !24)
!48 = !DILocation(line: 12, column: 62, scope: !24)
!49 = !DILocation(line: 12, column: 73, scope: !24)
!50 = !DILocation(line: 14, column: 6, scope: !51)
!51 = distinct !DILexicalBlock(scope: !24, file: !2, line: 14, column: 6)
!52 = !DILocation(line: 14, column: 15, scope: !51)
!53 = !DILocation(line: 14, column: 12, scope: !51)
!54 = !DILocation(line: 14, column: 6, scope: !24)
!55 = !DILocation(line: 15, column: 10, scope: !51)
!56 = !DILocation(line: 15, column: 3, scope: !51)
!57 = !DILocation(line: 18, column: 6, scope: !58)
!58 = distinct !DILexicalBlock(scope: !24, file: !2, line: 18, column: 6)
!59 = !DILocation(line: 18, column: 18, scope: !58)
!60 = !DILocation(line: 18, column: 15, scope: !58)
!61 = !DILocation(line: 18, column: 6, scope: !24)
!62 = !DILocation(line: 19, column: 10, scope: !58)
!63 = !DILocation(line: 19, column: 3, scope: !58)
!64 = !DILocation(line: 21, column: 26, scope: !24)
!65 = !DILocation(line: 21, column: 2, scope: !24)
!66 = !DILocation(line: 21, column: 8, scope: !24)
!67 = !DILocation(line: 21, column: 18, scope: !24)
!68 = !DILocation(line: 21, column: 24, scope: !24)
!69 = !DILocation(line: 22, column: 24, scope: !24)
!70 = !DILocation(line: 22, column: 2, scope: !24)
!71 = !DILocation(line: 22, column: 8, scope: !24)
!72 = !DILocation(line: 22, column: 18, scope: !24)
!73 = !DILocation(line: 22, column: 22, scope: !24)
!74 = !DILocation(line: 24, column: 10, scope: !24)
!75 = !DILocation(line: 26, column: 9, scope: !24)
!76 = !DILocation(line: 26, column: 2, scope: !24)
!77 = !DILocation(line: 27, column: 1, scope: !24)
!78 = distinct !DISubprogram(name: "add_range_with_merge", scope: !2, file: !2, line: 29, type: !25, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !79)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !90, !91, !93, !94, !96, !97, !99, !100, !102}
!80 = !DILocalVariable(name: "range", arg: 1, scope: !78, file: !2, line: 29, type: !28)
!81 = !DILocalVariable(name: "az", arg: 2, scope: !78, file: !2, line: 29, type: !27)
!82 = !DILocalVariable(name: "nr_range", arg: 3, scope: !78, file: !2, line: 29, type: !27)
!83 = !DILocalVariable(name: "start", arg: 4, scope: !78, file: !2, line: 30, type: !33)
!84 = !DILocalVariable(name: "end", arg: 5, scope: !78, file: !2, line: 30, type: !33)
!85 = !DILocalVariable(name: "i", scope: !78, file: !2, line: 32, type: !27)
!86 = !DILocalVariable(name: "common_start", scope: !87, file: !2, line: 39, type: !33)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 38, column: 33)
!88 = distinct !DILexicalBlock(scope: !89, file: !2, line: 38, column: 2)
!89 = distinct !DILexicalBlock(scope: !78, file: !2, line: 38, column: 2)
!90 = !DILocalVariable(name: "common_end", scope: !87, file: !2, line: 39, type: !33)
!91 = !DILocalVariable(name: "__UNIQUE_ID___x0", scope: !92, file: !2, line: 44, type: !33)
!92 = distinct !DILexicalBlock(scope: !87, file: !2, line: 44, column: 18)
!93 = !DILocalVariable(name: "__UNIQUE_ID___y1", scope: !92, file: !2, line: 44, type: !33)
!94 = !DILocalVariable(name: "__UNIQUE_ID___x2", scope: !95, file: !2, line: 45, type: !33)
!95 = distinct !DILexicalBlock(scope: !87, file: !2, line: 45, column: 16)
!96 = !DILocalVariable(name: "__UNIQUE_ID___y3", scope: !95, file: !2, line: 45, type: !33)
!97 = !DILocalVariable(name: "__UNIQUE_ID___x4", scope: !98, file: !2, line: 50, type: !33)
!98 = distinct !DILexicalBlock(scope: !87, file: !2, line: 50, column: 11)
!99 = !DILocalVariable(name: "__UNIQUE_ID___y5", scope: !98, file: !2, line: 50, type: !33)
!100 = !DILocalVariable(name: "__UNIQUE_ID___x6", scope: !101, file: !2, line: 51, type: !33)
!101 = distinct !DILexicalBlock(scope: !87, file: !2, line: 51, column: 9)
!102 = !DILocalVariable(name: "__UNIQUE_ID___y7", scope: !101, file: !2, line: 51, type: !33)
!103 = !DILocation(line: 29, column: 40, scope: !78)
!104 = !DILocation(line: 29, column: 51, scope: !78)
!105 = !DILocation(line: 29, column: 59, scope: !78)
!106 = !DILocation(line: 30, column: 12, scope: !78)
!107 = !DILocation(line: 30, column: 23, scope: !78)
!108 = !DILocation(line: 32, column: 2, scope: !78)
!109 = !DILocation(line: 32, column: 6, scope: !78)
!110 = !DILocation(line: 34, column: 6, scope: !111)
!111 = distinct !DILexicalBlock(scope: !78, file: !2, line: 34, column: 6)
!112 = !DILocation(line: 34, column: 15, scope: !111)
!113 = !DILocation(line: 34, column: 12, scope: !111)
!114 = !DILocation(line: 34, column: 6, scope: !78)
!115 = !DILocation(line: 35, column: 10, scope: !111)
!116 = !DILocation(line: 35, column: 3, scope: !111)
!117 = !DILocation(line: 38, column: 9, scope: !89)
!118 = !DILocation(line: 38, column: 7, scope: !89)
!119 = !DILocation(line: 38, column: 14, scope: !88)
!120 = !DILocation(line: 38, column: 18, scope: !88)
!121 = !DILocation(line: 38, column: 16, scope: !88)
!122 = !DILocation(line: 38, column: 2, scope: !89)
!123 = !DILocation(line: 39, column: 3, scope: !87)
!124 = !DILocation(line: 39, column: 7, scope: !87)
!125 = !DILocation(line: 39, column: 21, scope: !87)
!126 = !DILocation(line: 41, column: 8, scope: !127)
!127 = distinct !DILexicalBlock(scope: !87, file: !2, line: 41, column: 7)
!128 = !DILocation(line: 41, column: 14, scope: !127)
!129 = !DILocation(line: 41, column: 17, scope: !127)
!130 = !DILocation(line: 41, column: 7, scope: !87)
!131 = !DILocation(line: 42, column: 4, scope: !127)
!132 = !DILocation(line: 44, column: 18, scope: !92)
!133 = !DILocation(line: 44, column: 18, scope: !87)
!134 = !DILocation(line: 44, column: 16, scope: !87)
!135 = !DILocation(line: 45, column: 16, scope: !95)
!136 = !DILocation(line: 45, column: 16, scope: !87)
!137 = !DILocation(line: 45, column: 14, scope: !87)
!138 = !DILocation(line: 46, column: 7, scope: !139)
!139 = distinct !DILexicalBlock(scope: !87, file: !2, line: 46, column: 7)
!140 = !DILocation(line: 46, column: 22, scope: !139)
!141 = !DILocation(line: 46, column: 20, scope: !139)
!142 = !DILocation(line: 46, column: 7, scope: !87)
!143 = !DILocation(line: 47, column: 4, scope: !139)
!144 = !DILocation(line: 50, column: 11, scope: !98)
!145 = !DILocation(line: 50, column: 11, scope: !87)
!146 = !DILocation(line: 50, column: 9, scope: !87)
!147 = !DILocation(line: 51, column: 9, scope: !101)
!148 = !DILocation(line: 51, column: 9, scope: !87)
!149 = !DILocation(line: 51, column: 7, scope: !87)
!150 = !DILocation(line: 53, column: 12, scope: !87)
!151 = !DILocation(line: 53, column: 18, scope: !87)
!152 = !DILocation(line: 53, column: 23, scope: !87)
!153 = !DILocation(line: 53, column: 29, scope: !87)
!154 = !DILocation(line: 53, column: 31, scope: !87)
!155 = !DILocation(line: 54, column: 5, scope: !87)
!156 = !DILocation(line: 54, column: 17, scope: !87)
!157 = !DILocation(line: 54, column: 19, scope: !87)
!158 = !DILocation(line: 54, column: 14, scope: !87)
!159 = !DILocation(line: 54, column: 4, scope: !87)
!160 = !DILocation(line: 54, column: 25, scope: !87)
!161 = !DILocation(line: 53, column: 3, scope: !87)
!162 = !DILocation(line: 55, column: 3, scope: !87)
!163 = !DILocation(line: 55, column: 9, scope: !87)
!164 = !DILocation(line: 55, column: 18, scope: !87)
!165 = !DILocation(line: 55, column: 23, scope: !87)
!166 = !DILocation(line: 55, column: 29, scope: !87)
!167 = !DILocation(line: 56, column: 3, scope: !87)
!168 = !DILocation(line: 56, column: 9, scope: !87)
!169 = !DILocation(line: 56, column: 18, scope: !87)
!170 = !DILocation(line: 56, column: 23, scope: !87)
!171 = !DILocation(line: 56, column: 29, scope: !87)
!172 = !DILocation(line: 57, column: 11, scope: !87)
!173 = !DILocation(line: 58, column: 4, scope: !87)
!174 = !DILocation(line: 59, column: 2, scope: !88)
!175 = !DILocation(line: 59, column: 2, scope: !87)
!176 = !DILocation(line: 38, column: 29, scope: !88)
!177 = !DILocation(line: 38, column: 2, scope: !88)
!178 = distinct !{!178, !122, !179, !180, !181}
!179 = !DILocation(line: 59, column: 2, scope: !89)
!180 = !{!"llvm.loop.mustprogress"}
!181 = !{!"llvm.loop.unroll.disable"}
!182 = !DILocation(line: 62, column: 19, scope: !78)
!183 = !DILocation(line: 62, column: 26, scope: !78)
!184 = !DILocation(line: 62, column: 30, scope: !78)
!185 = !DILocation(line: 62, column: 40, scope: !78)
!186 = !DILocation(line: 62, column: 47, scope: !78)
!187 = !DILocation(line: 62, column: 9, scope: !78)
!188 = !DILocation(line: 62, column: 2, scope: !78)
!189 = !DILocation(line: 63, column: 1, scope: !78)
!190 = distinct !DISubprogram(name: "subtract_range", scope: !2, file: !2, line: 65, type: !191, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !28, !27, !33, !33}
!193 = !{!194, !195, !196, !197, !198, !199}
!194 = !DILocalVariable(name: "range", arg: 1, scope: !190, file: !2, line: 65, type: !28)
!195 = !DILocalVariable(name: "az", arg: 2, scope: !190, file: !2, line: 65, type: !27)
!196 = !DILocalVariable(name: "start", arg: 3, scope: !190, file: !2, line: 65, type: !33)
!197 = !DILocalVariable(name: "end", arg: 4, scope: !190, file: !2, line: 65, type: !33)
!198 = !DILocalVariable(name: "i", scope: !190, file: !2, line: 67, type: !27)
!199 = !DILocalVariable(name: "j", scope: !190, file: !2, line: 67, type: !27)
!200 = !DILocation(line: 65, column: 35, scope: !190)
!201 = !DILocation(line: 65, column: 46, scope: !190)
!202 = !DILocation(line: 65, column: 54, scope: !190)
!203 = !DILocation(line: 65, column: 65, scope: !190)
!204 = !DILocation(line: 67, column: 2, scope: !190)
!205 = !DILocation(line: 67, column: 6, scope: !190)
!206 = !DILocation(line: 67, column: 9, scope: !190)
!207 = !DILocation(line: 69, column: 6, scope: !208)
!208 = distinct !DILexicalBlock(scope: !190, file: !2, line: 69, column: 6)
!209 = !DILocation(line: 69, column: 15, scope: !208)
!210 = !DILocation(line: 69, column: 12, scope: !208)
!211 = !DILocation(line: 69, column: 6, scope: !190)
!212 = !DILocation(line: 70, column: 3, scope: !208)
!213 = !DILocation(line: 72, column: 9, scope: !214)
!214 = distinct !DILexicalBlock(scope: !190, file: !2, line: 72, column: 2)
!215 = !DILocation(line: 72, column: 7, scope: !214)
!216 = !DILocation(line: 72, column: 14, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !2, line: 72, column: 2)
!218 = !DILocation(line: 72, column: 18, scope: !217)
!219 = !DILocation(line: 72, column: 16, scope: !217)
!220 = !DILocation(line: 72, column: 2, scope: !214)
!221 = !DILocation(line: 73, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !2, line: 73, column: 7)
!223 = distinct !DILexicalBlock(scope: !217, file: !2, line: 72, column: 27)
!224 = !DILocation(line: 73, column: 14, scope: !222)
!225 = !DILocation(line: 73, column: 17, scope: !222)
!226 = !DILocation(line: 73, column: 7, scope: !223)
!227 = !DILocation(line: 74, column: 4, scope: !222)
!228 = !DILocation(line: 76, column: 7, scope: !229)
!229 = distinct !DILexicalBlock(scope: !223, file: !2, line: 76, column: 7)
!230 = !DILocation(line: 76, column: 16, scope: !229)
!231 = !DILocation(line: 76, column: 22, scope: !229)
!232 = !DILocation(line: 76, column: 25, scope: !229)
!233 = !DILocation(line: 76, column: 13, scope: !229)
!234 = !DILocation(line: 76, column: 31, scope: !229)
!235 = !DILocation(line: 76, column: 34, scope: !229)
!236 = !DILocation(line: 76, column: 41, scope: !229)
!237 = !DILocation(line: 76, column: 47, scope: !229)
!238 = !DILocation(line: 76, column: 50, scope: !229)
!239 = !DILocation(line: 76, column: 38, scope: !229)
!240 = !DILocation(line: 76, column: 7, scope: !223)
!241 = !DILocation(line: 77, column: 4, scope: !242)
!242 = distinct !DILexicalBlock(scope: !229, file: !2, line: 76, column: 55)
!243 = !DILocation(line: 77, column: 10, scope: !242)
!244 = !DILocation(line: 77, column: 13, scope: !242)
!245 = !DILocation(line: 77, column: 19, scope: !242)
!246 = !DILocation(line: 78, column: 4, scope: !242)
!247 = !DILocation(line: 78, column: 10, scope: !242)
!248 = !DILocation(line: 78, column: 13, scope: !242)
!249 = !DILocation(line: 78, column: 17, scope: !242)
!250 = !DILocation(line: 79, column: 4, scope: !242)
!251 = !DILocation(line: 82, column: 7, scope: !252)
!252 = distinct !DILexicalBlock(scope: !223, file: !2, line: 82, column: 7)
!253 = !DILocation(line: 82, column: 16, scope: !252)
!254 = !DILocation(line: 82, column: 22, scope: !252)
!255 = !DILocation(line: 82, column: 25, scope: !252)
!256 = !DILocation(line: 82, column: 13, scope: !252)
!257 = !DILocation(line: 82, column: 31, scope: !252)
!258 = !DILocation(line: 82, column: 34, scope: !252)
!259 = !DILocation(line: 82, column: 40, scope: !252)
!260 = !DILocation(line: 82, column: 46, scope: !252)
!261 = !DILocation(line: 82, column: 49, scope: !252)
!262 = !DILocation(line: 82, column: 38, scope: !252)
!263 = !DILocation(line: 82, column: 53, scope: !252)
!264 = !DILocation(line: 83, column: 7, scope: !252)
!265 = !DILocation(line: 83, column: 13, scope: !252)
!266 = !DILocation(line: 83, column: 16, scope: !252)
!267 = !DILocation(line: 83, column: 24, scope: !252)
!268 = !DILocation(line: 83, column: 22, scope: !252)
!269 = !DILocation(line: 82, column: 7, scope: !223)
!270 = !DILocation(line: 84, column: 21, scope: !271)
!271 = distinct !DILexicalBlock(scope: !252, file: !2, line: 83, column: 29)
!272 = !DILocation(line: 84, column: 4, scope: !271)
!273 = !DILocation(line: 84, column: 10, scope: !271)
!274 = !DILocation(line: 84, column: 13, scope: !271)
!275 = !DILocation(line: 84, column: 19, scope: !271)
!276 = !DILocation(line: 85, column: 4, scope: !271)
!277 = !DILocation(line: 89, column: 7, scope: !278)
!278 = distinct !DILexicalBlock(scope: !223, file: !2, line: 89, column: 7)
!279 = !DILocation(line: 89, column: 15, scope: !278)
!280 = !DILocation(line: 89, column: 21, scope: !278)
!281 = !DILocation(line: 89, column: 24, scope: !278)
!282 = !DILocation(line: 89, column: 13, scope: !278)
!283 = !DILocation(line: 89, column: 30, scope: !278)
!284 = !DILocation(line: 89, column: 33, scope: !278)
!285 = !DILocation(line: 89, column: 40, scope: !278)
!286 = !DILocation(line: 89, column: 46, scope: !278)
!287 = !DILocation(line: 89, column: 49, scope: !278)
!288 = !DILocation(line: 89, column: 37, scope: !278)
!289 = !DILocation(line: 89, column: 53, scope: !278)
!290 = !DILocation(line: 90, column: 7, scope: !278)
!291 = !DILocation(line: 90, column: 13, scope: !278)
!292 = !DILocation(line: 90, column: 16, scope: !278)
!293 = !DILocation(line: 90, column: 22, scope: !278)
!294 = !DILocation(line: 90, column: 20, scope: !278)
!295 = !DILocation(line: 89, column: 7, scope: !223)
!296 = !DILocation(line: 91, column: 19, scope: !297)
!297 = distinct !DILexicalBlock(scope: !278, file: !2, line: 90, column: 29)
!298 = !DILocation(line: 91, column: 4, scope: !297)
!299 = !DILocation(line: 91, column: 10, scope: !297)
!300 = !DILocation(line: 91, column: 13, scope: !297)
!301 = !DILocation(line: 91, column: 17, scope: !297)
!302 = !DILocation(line: 92, column: 4, scope: !297)
!303 = !DILocation(line: 95, column: 7, scope: !304)
!304 = distinct !DILexicalBlock(scope: !223, file: !2, line: 95, column: 7)
!305 = !DILocation(line: 95, column: 15, scope: !304)
!306 = !DILocation(line: 95, column: 21, scope: !304)
!307 = !DILocation(line: 95, column: 24, scope: !304)
!308 = !DILocation(line: 95, column: 13, scope: !304)
!309 = !DILocation(line: 95, column: 30, scope: !304)
!310 = !DILocation(line: 95, column: 33, scope: !304)
!311 = !DILocation(line: 95, column: 39, scope: !304)
!312 = !DILocation(line: 95, column: 45, scope: !304)
!313 = !DILocation(line: 95, column: 48, scope: !304)
!314 = !DILocation(line: 95, column: 37, scope: !304)
!315 = !DILocation(line: 95, column: 7, scope: !223)
!316 = !DILocation(line: 97, column: 11, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !2, line: 97, column: 4)
!318 = distinct !DILexicalBlock(scope: !304, file: !2, line: 95, column: 53)
!319 = !DILocation(line: 97, column: 9, scope: !317)
!320 = !DILocation(line: 97, column: 16, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !2, line: 97, column: 4)
!322 = !DILocation(line: 97, column: 20, scope: !321)
!323 = !DILocation(line: 97, column: 18, scope: !321)
!324 = !DILocation(line: 97, column: 4, scope: !317)
!325 = !DILocation(line: 98, column: 9, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !2, line: 98, column: 9)
!327 = distinct !DILexicalBlock(scope: !321, file: !2, line: 97, column: 29)
!328 = !DILocation(line: 98, column: 15, scope: !326)
!329 = !DILocation(line: 98, column: 18, scope: !326)
!330 = !DILocation(line: 98, column: 22, scope: !326)
!331 = !DILocation(line: 98, column: 9, scope: !327)
!332 = !DILocation(line: 99, column: 6, scope: !326)
!333 = !DILocation(line: 100, column: 4, scope: !327)
!334 = !DILocation(line: 97, column: 25, scope: !321)
!335 = !DILocation(line: 97, column: 4, scope: !321)
!336 = distinct !{!336, !324, !337, !180, !181}
!337 = !DILocation(line: 100, column: 4, scope: !317)
!338 = !DILocation(line: 101, column: 8, scope: !339)
!339 = distinct !DILexicalBlock(scope: !318, file: !2, line: 101, column: 8)
!340 = !DILocation(line: 101, column: 12, scope: !339)
!341 = !DILocation(line: 101, column: 10, scope: !339)
!342 = !DILocation(line: 101, column: 8, scope: !318)
!343 = !DILocation(line: 102, column: 20, scope: !344)
!344 = distinct !DILexicalBlock(scope: !339, file: !2, line: 101, column: 16)
!345 = !DILocation(line: 102, column: 26, scope: !344)
!346 = !DILocation(line: 102, column: 29, scope: !344)
!347 = !DILocation(line: 102, column: 5, scope: !344)
!348 = !DILocation(line: 102, column: 11, scope: !344)
!349 = !DILocation(line: 102, column: 14, scope: !344)
!350 = !DILocation(line: 102, column: 18, scope: !344)
!351 = !DILocation(line: 103, column: 22, scope: !344)
!352 = !DILocation(line: 103, column: 5, scope: !344)
!353 = !DILocation(line: 103, column: 11, scope: !344)
!354 = !DILocation(line: 103, column: 14, scope: !344)
!355 = !DILocation(line: 103, column: 20, scope: !344)
!356 = !DILocation(line: 104, column: 4, scope: !344)
!357 = !DILocation(line: 105, column: 5, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !2, line: 105, column: 5)
!359 = distinct !DILexicalBlock(scope: !339, file: !2, line: 104, column: 11)
!360 = !DILocation(line: 105, column: 5, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !2, line: 105, column: 5)
!362 = !DILocation(line: 108, column: 19, scope: !318)
!363 = !DILocation(line: 108, column: 4, scope: !318)
!364 = !DILocation(line: 108, column: 10, scope: !318)
!365 = !DILocation(line: 108, column: 13, scope: !318)
!366 = !DILocation(line: 108, column: 17, scope: !318)
!367 = !DILocation(line: 109, column: 4, scope: !318)
!368 = !DILocation(line: 111, column: 2, scope: !223)
!369 = !DILocation(line: 72, column: 23, scope: !217)
!370 = !DILocation(line: 72, column: 2, scope: !217)
!371 = distinct !{!371, !220, !372, !180, !181}
!372 = !DILocation(line: 111, column: 2, scope: !214)
!373 = !DILocation(line: 112, column: 1, scope: !190)
!374 = !DISubprogram(name: "_printk", scope: !375, file: !375, line: 153, type: !376, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!375 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!376 = !DISubroutineType(types: !377)
!377 = !{!27, !378, null}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!379 = distinct !DISubprogram(name: "clean_sort_range", scope: !2, file: !2, line: 126, type: !380, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !382)
!380 = !DISubroutineType(types: !381)
!381 = !{!27, !28, !27}
!382 = !{!383, !384, !385, !386, !387, !388}
!383 = !DILocalVariable(name: "range", arg: 1, scope: !379, file: !2, line: 126, type: !28)
!384 = !DILocalVariable(name: "az", arg: 2, scope: !379, file: !2, line: 126, type: !27)
!385 = !DILocalVariable(name: "i", scope: !379, file: !2, line: 128, type: !27)
!386 = !DILocalVariable(name: "j", scope: !379, file: !2, line: 128, type: !27)
!387 = !DILocalVariable(name: "k", scope: !379, file: !2, line: 128, type: !27)
!388 = !DILocalVariable(name: "nr_range", scope: !379, file: !2, line: 128, type: !27)
!389 = !DILocation(line: 126, column: 36, scope: !379)
!390 = !DILocation(line: 126, column: 47, scope: !379)
!391 = !DILocation(line: 128, column: 2, scope: !379)
!392 = !DILocation(line: 128, column: 6, scope: !379)
!393 = !DILocation(line: 128, column: 9, scope: !379)
!394 = !DILocation(line: 128, column: 12, scope: !379)
!395 = !DILocation(line: 128, column: 16, scope: !379)
!396 = !DILocation(line: 128, column: 19, scope: !379)
!397 = !DILocation(line: 128, column: 24, scope: !379)
!398 = !DILocation(line: 128, column: 35, scope: !379)
!399 = !DILocation(line: 130, column: 9, scope: !400)
!400 = distinct !DILexicalBlock(scope: !379, file: !2, line: 130, column: 2)
!401 = !DILocation(line: 130, column: 7, scope: !400)
!402 = !DILocation(line: 130, column: 14, scope: !403)
!403 = distinct !DILexicalBlock(scope: !400, file: !2, line: 130, column: 2)
!404 = !DILocation(line: 130, column: 18, scope: !403)
!405 = !DILocation(line: 130, column: 16, scope: !403)
!406 = !DILocation(line: 130, column: 2, scope: !400)
!407 = !DILocation(line: 131, column: 7, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !2, line: 131, column: 7)
!409 = distinct !DILexicalBlock(scope: !403, file: !2, line: 130, column: 26)
!410 = !DILocation(line: 131, column: 13, scope: !408)
!411 = !DILocation(line: 131, column: 16, scope: !408)
!412 = !DILocation(line: 131, column: 7, scope: !409)
!413 = !DILocation(line: 132, column: 4, scope: !408)
!414 = !DILocation(line: 133, column: 12, scope: !415)
!415 = distinct !DILexicalBlock(scope: !409, file: !2, line: 133, column: 3)
!416 = !DILocation(line: 133, column: 10, scope: !415)
!417 = !DILocation(line: 133, column: 8, scope: !415)
!418 = !DILocation(line: 133, column: 15, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !2, line: 133, column: 3)
!420 = !DILocation(line: 133, column: 19, scope: !419)
!421 = !DILocation(line: 133, column: 17, scope: !419)
!422 = !DILocation(line: 133, column: 3, scope: !415)
!423 = !DILocation(line: 134, column: 8, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !2, line: 134, column: 8)
!425 = distinct !DILexicalBlock(scope: !419, file: !2, line: 133, column: 27)
!426 = !DILocation(line: 134, column: 14, scope: !424)
!427 = !DILocation(line: 134, column: 17, scope: !424)
!428 = !DILocation(line: 134, column: 8, scope: !425)
!429 = !DILocation(line: 135, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !424, file: !2, line: 134, column: 22)
!431 = !DILocation(line: 135, column: 7, scope: !430)
!432 = !DILocation(line: 136, column: 5, scope: !430)
!433 = !DILocation(line: 138, column: 3, scope: !425)
!434 = !DILocation(line: 133, column: 23, scope: !419)
!435 = !DILocation(line: 133, column: 3, scope: !419)
!436 = distinct !{!436, !422, !437, !180, !181}
!437 = !DILocation(line: 138, column: 3, scope: !415)
!438 = !DILocation(line: 139, column: 7, scope: !439)
!439 = distinct !DILexicalBlock(scope: !409, file: !2, line: 139, column: 7)
!440 = !DILocation(line: 139, column: 12, scope: !439)
!441 = !DILocation(line: 139, column: 9, scope: !439)
!442 = !DILocation(line: 139, column: 7, scope: !409)
!443 = !DILocation(line: 140, column: 4, scope: !439)
!444 = !DILocation(line: 141, column: 20, scope: !409)
!445 = !DILocation(line: 141, column: 26, scope: !409)
!446 = !DILocation(line: 141, column: 29, scope: !409)
!447 = !DILocation(line: 141, column: 3, scope: !409)
!448 = !DILocation(line: 141, column: 9, scope: !409)
!449 = !DILocation(line: 141, column: 12, scope: !409)
!450 = !DILocation(line: 141, column: 18, scope: !409)
!451 = !DILocation(line: 142, column: 20, scope: !409)
!452 = !DILocation(line: 142, column: 26, scope: !409)
!453 = !DILocation(line: 142, column: 29, scope: !409)
!454 = !DILocation(line: 142, column: 3, scope: !409)
!455 = !DILocation(line: 142, column: 9, scope: !409)
!456 = !DILocation(line: 142, column: 12, scope: !409)
!457 = !DILocation(line: 142, column: 18, scope: !409)
!458 = !DILocation(line: 143, column: 3, scope: !409)
!459 = !DILocation(line: 143, column: 9, scope: !409)
!460 = !DILocation(line: 143, column: 12, scope: !409)
!461 = !DILocation(line: 143, column: 18, scope: !409)
!462 = !DILocation(line: 144, column: 3, scope: !409)
!463 = !DILocation(line: 144, column: 9, scope: !409)
!464 = !DILocation(line: 144, column: 12, scope: !409)
!465 = !DILocation(line: 144, column: 18, scope: !409)
!466 = !DILocation(line: 145, column: 4, scope: !409)
!467 = !DILocation(line: 146, column: 2, scope: !409)
!468 = !DILocation(line: 130, column: 22, scope: !403)
!469 = !DILocation(line: 130, column: 2, scope: !403)
!470 = distinct !{!470, !406, !471, !180, !181}
!471 = !DILocation(line: 146, column: 2, scope: !400)
!472 = !DILocation(line: 148, column: 9, scope: !473)
!473 = distinct !DILexicalBlock(scope: !379, file: !2, line: 148, column: 2)
!474 = !DILocation(line: 148, column: 7, scope: !473)
!475 = !DILocation(line: 148, column: 14, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !2, line: 148, column: 2)
!477 = !DILocation(line: 148, column: 18, scope: !476)
!478 = !DILocation(line: 148, column: 16, scope: !476)
!479 = !DILocation(line: 148, column: 2, scope: !473)
!480 = !DILocation(line: 149, column: 8, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !2, line: 149, column: 7)
!482 = distinct !DILexicalBlock(scope: !476, file: !2, line: 148, column: 27)
!483 = !DILocation(line: 149, column: 14, scope: !481)
!484 = !DILocation(line: 149, column: 17, scope: !481)
!485 = !DILocation(line: 149, column: 7, scope: !482)
!486 = !DILocation(line: 150, column: 15, scope: !487)
!487 = distinct !DILexicalBlock(scope: !481, file: !2, line: 149, column: 22)
!488 = !DILocation(line: 150, column: 13, scope: !487)
!489 = !DILocation(line: 151, column: 4, scope: !487)
!490 = !DILocation(line: 153, column: 2, scope: !482)
!491 = !DILocation(line: 148, column: 23, scope: !476)
!492 = !DILocation(line: 148, column: 2, scope: !476)
!493 = distinct !{!493, !479, !494, !180, !181}
!494 = !DILocation(line: 153, column: 2, scope: !473)
!495 = !DILocation(line: 156, column: 7, scope: !379)
!496 = !DILocation(line: 156, column: 14, scope: !379)
!497 = !DILocation(line: 156, column: 2, scope: !379)
!498 = !DILocation(line: 158, column: 9, scope: !379)
!499 = !DILocation(line: 159, column: 1, scope: !379)
!500 = !DILocation(line: 158, column: 2, scope: !379)
!501 = !DISubprogram(name: "sort", scope: !502, file: !502, line: 12, type: !503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!502 = !DIFile(filename: "./include/linux/sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3534dcfbb4117f954507eae129cf588")
!503 = !DISubroutineType(types: !504)
!504 = !{null, !505, !506, !506, !512, !518}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !507, line: 61, baseType: !508)
!507 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !509, line: 72, baseType: !510)
!509 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !509, line: 16, baseType: !511)
!511 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !507, line: 245, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!27, !516, !516}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_func_t", file: !507, line: 242, baseType: !519)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !505, !505, !27}
!522 = distinct !DISubprogram(name: "cmp_range", scope: !2, file: !2, line: 114, type: !514, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !523)
!523 = !{!524, !525, !526, !529}
!524 = !DILocalVariable(name: "x1", arg: 1, scope: !522, file: !2, line: 114, type: !516)
!525 = !DILocalVariable(name: "x2", arg: 2, scope: !522, file: !2, line: 114, type: !516)
!526 = !DILocalVariable(name: "r1", scope: !522, file: !2, line: 116, type: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!529 = !DILocalVariable(name: "r2", scope: !522, file: !2, line: 117, type: !527)
!530 = !DILocation(line: 114, column: 34, scope: !522)
!531 = !DILocation(line: 114, column: 50, scope: !522)
!532 = !DILocation(line: 116, column: 2, scope: !522)
!533 = !DILocation(line: 116, column: 22, scope: !522)
!534 = !DILocation(line: 116, column: 27, scope: !522)
!535 = !DILocation(line: 117, column: 2, scope: !522)
!536 = !DILocation(line: 117, column: 22, scope: !522)
!537 = !DILocation(line: 117, column: 27, scope: !522)
!538 = !DILocation(line: 119, column: 6, scope: !539)
!539 = distinct !DILexicalBlock(scope: !522, file: !2, line: 119, column: 6)
!540 = !DILocation(line: 119, column: 10, scope: !539)
!541 = !DILocation(line: 119, column: 18, scope: !539)
!542 = !DILocation(line: 119, column: 22, scope: !539)
!543 = !DILocation(line: 119, column: 16, scope: !539)
!544 = !DILocation(line: 119, column: 6, scope: !522)
!545 = !DILocation(line: 120, column: 3, scope: !539)
!546 = !DILocation(line: 121, column: 6, scope: !547)
!547 = distinct !DILexicalBlock(scope: !522, file: !2, line: 121, column: 6)
!548 = !DILocation(line: 121, column: 10, scope: !547)
!549 = !DILocation(line: 121, column: 18, scope: !547)
!550 = !DILocation(line: 121, column: 22, scope: !547)
!551 = !DILocation(line: 121, column: 16, scope: !547)
!552 = !DILocation(line: 121, column: 6, scope: !522)
!553 = !DILocation(line: 122, column: 3, scope: !547)
!554 = !DILocation(line: 123, column: 2, scope: !522)
!555 = !DILocation(line: 124, column: 1, scope: !522)
!556 = distinct !DISubprogram(name: "sort_range", scope: !2, file: !2, line: 161, type: !557, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !28, !27}
!559 = !{!560, !561}
!560 = !DILocalVariable(name: "range", arg: 1, scope: !556, file: !2, line: 161, type: !28)
!561 = !DILocalVariable(name: "nr_range", arg: 2, scope: !556, file: !2, line: 161, type: !27)
!562 = !DILocation(line: 161, column: 31, scope: !556)
!563 = !DILocation(line: 161, column: 42, scope: !556)
!564 = !DILocation(line: 164, column: 7, scope: !556)
!565 = !DILocation(line: 164, column: 14, scope: !556)
!566 = !DILocation(line: 164, column: 2, scope: !556)
!567 = !DILocation(line: 165, column: 1, scope: !556)
