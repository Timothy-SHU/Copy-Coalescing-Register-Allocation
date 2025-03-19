; ModuleID = 'lib/cmdline.c'
source_filename = "lib/cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ctype = external hidden constant [0 x i8], align 1

; Function Attrs: noredzone nounwind
define hidden i32 @get_option(ptr noundef %str, ptr noundef %pint) #0 !dbg !21 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca ptr, align 8
  %pint.addr = alloca ptr, align 8
  %cur = alloca ptr, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !26, metadata !DIExpression()), !dbg !30
  store ptr %pint, ptr %pint.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pint.addr, metadata !27, metadata !DIExpression()), !dbg !31
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur) #4, !dbg !32
  call void @llvm.dbg.declare(metadata ptr %cur, metadata !28, metadata !DIExpression()), !dbg !33
  %0 = load ptr, ptr %str.addr, align 8, !dbg !34
  %1 = load ptr, ptr %0, align 8, !dbg !35
  store ptr %1, ptr %cur, align 8, !dbg !33
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #4, !dbg !36
  call void @llvm.dbg.declare(metadata ptr %value, metadata !29, metadata !DIExpression()), !dbg !37
  %2 = load ptr, ptr %cur, align 8, !dbg !38
  %tobool = icmp ne ptr %2, null, !dbg !38
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !40

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %cur, align 8, !dbg !41
  %4 = load i8, ptr %3, align 1, !dbg !42
  %tobool1 = icmp ne i8 %4, 0, !dbg !43
  br i1 %tobool1, label %if.end, label %if.then, !dbg !44

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !45
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !45

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %cur, align 8, !dbg !46
  %6 = load i8, ptr %5, align 1, !dbg !48
  %conv = sext i8 %6 to i32, !dbg !48
  %cmp = icmp eq i32 %conv, 45, !dbg !49
  br i1 %cmp, label %if.then3, label %if.else, !dbg !50

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %cur, align 8, !dbg !51
  %incdec.ptr = getelementptr inbounds i8, ptr %7, i32 1, !dbg !51
  store ptr %incdec.ptr, ptr %cur, align 8, !dbg !51
  %8 = load ptr, ptr %str.addr, align 8, !dbg !52
  %call = call i64 @simple_strtoull(ptr noundef %incdec.ptr, ptr noundef %8, i32 noundef 0) #5, !dbg !53
  %sub = sub i64 0, %call, !dbg !54
  %conv4 = trunc i64 %sub to i32, !dbg !54
  store i32 %conv4, ptr %value, align 4, !dbg !55
  br label %if.end7, !dbg !56

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %cur, align 8, !dbg !57
  %10 = load ptr, ptr %str.addr, align 8, !dbg !58
  %call5 = call i64 @simple_strtoull(ptr noundef %9, ptr noundef %10, i32 noundef 0) #5, !dbg !59
  %conv6 = trunc i64 %call5 to i32, !dbg !59
  store i32 %conv6, ptr %value, align 4, !dbg !60
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  %11 = load ptr, ptr %pint.addr, align 8, !dbg !61
  %tobool8 = icmp ne ptr %11, null, !dbg !61
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !63

if.then9:                                         ; preds = %if.end7
  %12 = load i32, ptr %value, align 4, !dbg !64
  %13 = load ptr, ptr %pint.addr, align 8, !dbg !65
  store i32 %12, ptr %13, align 4, !dbg !66
  br label %if.end10, !dbg !67

if.end10:                                         ; preds = %if.then9, %if.end7
  %14 = load ptr, ptr %cur, align 8, !dbg !68
  %15 = load ptr, ptr %str.addr, align 8, !dbg !70
  %16 = load ptr, ptr %15, align 8, !dbg !71
  %cmp11 = icmp eq ptr %14, %16, !dbg !72
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !73

if.then13:                                        ; preds = %if.end10
  store i32 0, ptr %retval, align 4, !dbg !74
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !74

if.end14:                                         ; preds = %if.end10
  %17 = load ptr, ptr %str.addr, align 8, !dbg !75
  %18 = load ptr, ptr %17, align 8, !dbg !77
  %19 = load i8, ptr %18, align 1, !dbg !78
  %conv15 = sext i8 %19 to i32, !dbg !78
  %cmp16 = icmp eq i32 %conv15, 44, !dbg !79
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !80

if.then18:                                        ; preds = %if.end14
  %20 = load ptr, ptr %str.addr, align 8, !dbg !81
  %21 = load ptr, ptr %20, align 8, !dbg !83
  %incdec.ptr19 = getelementptr inbounds i8, ptr %21, i32 1, !dbg !83
  store ptr %incdec.ptr19, ptr %20, align 8, !dbg !83
  store i32 2, ptr %retval, align 4, !dbg !84
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !84

if.end20:                                         ; preds = %if.end14
  %22 = load ptr, ptr %str.addr, align 8, !dbg !85
  %23 = load ptr, ptr %22, align 8, !dbg !87
  %24 = load i8, ptr %23, align 1, !dbg !88
  %conv21 = sext i8 %24 to i32, !dbg !88
  %cmp22 = icmp eq i32 %conv21, 45, !dbg !89
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !90

if.then24:                                        ; preds = %if.end20
  store i32 3, ptr %retval, align 4, !dbg !91
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !91

if.end25:                                         ; preds = %if.end20
  store i32 1, ptr %retval, align 4, !dbg !92
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !92

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then18, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #4, !dbg !93
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur) #4, !dbg !93
  %25 = load i32, ptr %retval, align 4, !dbg !93
  ret i32 %25, !dbg !93
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone
declare !dbg !94 hidden i64 @simple_strtoull(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone nounwind
define hidden ptr @get_options(ptr noundef %str, i32 noundef %nints, ptr noundef %ints) #0 !dbg !101 {
entry:
  %str.addr = alloca ptr, align 8
  %nints.addr = alloca i32, align 4
  %ints.addr = alloca ptr, align 8
  %validate = alloca i8, align 1
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  %pint = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %n = alloca i32, align 4
  %range_nums = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !105, metadata !DIExpression()), !dbg !120
  store i32 %nints, ptr %nints.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nints.addr, metadata !106, metadata !DIExpression()), !dbg !121
  store ptr %ints, ptr %ints.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ints.addr, metadata !107, metadata !DIExpression()), !dbg !122
  call void @llvm.lifetime.start.p0(i64 1, ptr %validate) #4, !dbg !123
  call void @llvm.dbg.declare(metadata ptr %validate, metadata !108, metadata !DIExpression()), !dbg !124
  %0 = load i32, ptr %nints.addr, align 4, !dbg !125
  %cmp = icmp eq i32 %0, 0, !dbg !126
  %frombool = zext i1 %cmp to i8, !dbg !124
  store i8 %frombool, ptr %validate, align 1, !dbg !124
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #4, !dbg !127
  call void @llvm.dbg.declare(metadata ptr %res, metadata !112, metadata !DIExpression()), !dbg !128
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !127
  call void @llvm.dbg.declare(metadata ptr %i, metadata !113, metadata !DIExpression()), !dbg !129
  store i32 1, ptr %i, align 4, !dbg !129
  br label %while.cond, !dbg !130

while.cond:                                       ; preds = %cleanup.cont23, %entry
  %1 = load i32, ptr %i, align 4, !dbg !131
  %2 = load i32, ptr %nints.addr, align 4, !dbg !132
  %cmp1 = icmp slt i32 %1, %2, !dbg !133
  br i1 %cmp1, label %lor.end, label %lor.rhs, !dbg !134

lor.rhs:                                          ; preds = %while.cond
  %3 = load i8, ptr %validate, align 1, !dbg !135, !range !136, !noundef !137
  %tobool = trunc i8 %3 to i1, !dbg !135
  br label %lor.end, !dbg !134

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %4 = phi i1 [ true, %while.cond ], [ %tobool, %lor.rhs ]
  br i1 %4, label %while.body, label %while.end, !dbg !130

while.body:                                       ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pint) #4, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %pint, metadata !114, metadata !DIExpression()), !dbg !139
  %5 = load i8, ptr %validate, align 1, !dbg !140, !range !136, !noundef !137
  %tobool2 = trunc i8 %5 to i1, !dbg !140
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !140

cond.true:                                        ; preds = %while.body
  %6 = load ptr, ptr %ints.addr, align 8, !dbg !141
  br label %cond.end, !dbg !140

cond.false:                                       ; preds = %while.body
  %7 = load ptr, ptr %ints.addr, align 8, !dbg !142
  %8 = load i32, ptr %i, align 4, !dbg !143
  %idx.ext = sext i32 %8 to i64, !dbg !144
  %add.ptr = getelementptr inbounds i32, ptr %7, i64 %idx.ext, !dbg !144
  br label %cond.end, !dbg !140

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ %add.ptr, %cond.false ], !dbg !140
  store ptr %cond, ptr %pint, align 8, !dbg !139
  %9 = load ptr, ptr %pint, align 8, !dbg !145
  %call = call i32 @get_option(ptr noundef %str.addr, ptr noundef %9) #5, !dbg !146
  store i32 %call, ptr %res, align 4, !dbg !147
  %10 = load i32, ptr %res, align 4, !dbg !148
  %cmp3 = icmp eq i32 %10, 0, !dbg !150
  br i1 %cmp3, label %if.then, label %if.end, !dbg !151

if.then:                                          ; preds = %cond.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !152

if.end:                                           ; preds = %cond.end
  %11 = load i32, ptr %res, align 4, !dbg !153
  %cmp4 = icmp eq i32 %11, 3, !dbg !154
  br i1 %cmp4, label %if.then5, label %if.end17, !dbg !155

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %n, metadata !116, metadata !DIExpression()), !dbg !157
  %12 = load i8, ptr %validate, align 1, !dbg !158, !range !136, !noundef !137
  %tobool6 = trunc i8 %12 to i1, !dbg !158
  br i1 %tobool6, label %cond.true7, label %cond.false8, !dbg !158

cond.true7:                                       ; preds = %if.then5
  br label %cond.end9, !dbg !158

cond.false8:                                      ; preds = %if.then5
  %13 = load i32, ptr %nints.addr, align 4, !dbg !159
  %14 = load i32, ptr %i, align 4, !dbg !160
  %sub = sub nsw i32 %13, %14, !dbg !161
  br label %cond.end9, !dbg !158

cond.end9:                                        ; preds = %cond.false8, %cond.true7
  %cond10 = phi i32 [ 0, %cond.true7 ], [ %sub, %cond.false8 ], !dbg !158
  store i32 %cond10, ptr %n, align 4, !dbg !157
  call void @llvm.lifetime.start.p0(i64 4, ptr %range_nums) #4, !dbg !162
  call void @llvm.dbg.declare(metadata ptr %range_nums, metadata !119, metadata !DIExpression()), !dbg !163
  %15 = load ptr, ptr %pint, align 8, !dbg !164
  %16 = load i32, ptr %n, align 4, !dbg !165
  %call11 = call i32 @get_range(ptr noundef %str.addr, ptr noundef %15, i32 noundef %16) #5, !dbg !166
  store i32 %call11, ptr %range_nums, align 4, !dbg !167
  %17 = load i32, ptr %range_nums, align 4, !dbg !168
  %cmp12 = icmp slt i32 %17, 0, !dbg !170
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !171

if.then13:                                        ; preds = %cond.end9
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !172

if.end14:                                         ; preds = %cond.end9
  %18 = load i32, ptr %range_nums, align 4, !dbg !173
  %sub15 = sub nsw i32 %18, 1, !dbg !174
  %19 = load i32, ptr %i, align 4, !dbg !175
  %add = add nsw i32 %19, %sub15, !dbg !175
  store i32 %add, ptr %i, align 4, !dbg !175
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !176
  br label %cleanup, !dbg !176

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %range_nums) #4, !dbg !176
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4, !dbg !176
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup21 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end17, !dbg !177

if.end17:                                         ; preds = %cleanup.cont, %if.end
  %20 = load i32, ptr %i, align 4, !dbg !178
  %inc = add nsw i32 %20, 1, !dbg !178
  store i32 %inc, ptr %i, align 4, !dbg !178
  %21 = load i32, ptr %res, align 4, !dbg !179
  %cmp18 = icmp eq i32 %21, 1, !dbg !181
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !182

if.then19:                                        ; preds = %if.end17
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !183

if.end20:                                         ; preds = %if.end17
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !184
  br label %cleanup21, !dbg !184

cleanup21:                                        ; preds = %if.end20, %if.then19, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pint) #4, !dbg !184
  %cleanup.dest22 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest22, label %unreachable [
    i32 0, label %cleanup.cont23
    i32 3, label %while.end
  ]

cleanup.cont23:                                   ; preds = %cleanup21
  br label %while.cond, !dbg !130, !llvm.loop !185

while.end:                                        ; preds = %cleanup21, %lor.end
  %22 = load i32, ptr %i, align 4, !dbg !188
  %sub24 = sub nsw i32 %22, 1, !dbg !189
  %23 = load ptr, ptr %ints.addr, align 8, !dbg !190
  %arrayidx = getelementptr inbounds i32, ptr %23, i64 0, !dbg !190
  store i32 %sub24, ptr %arrayidx, align 4, !dbg !191
  %24 = load ptr, ptr %str.addr, align 8, !dbg !192
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !193
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #4, !dbg !193
  call void @llvm.lifetime.end.p0(i64 1, ptr %validate) #4, !dbg !193
  ret ptr %24, !dbg !194

unreachable:                                      ; preds = %cleanup21
  unreachable
}

; Function Attrs: noredzone nounwind
define internal i32 @get_range(ptr noundef %str, ptr noundef %pint, i32 noundef %n) #0 !dbg !195 {
entry:
  %str.addr = alloca ptr, align 8
  %pint.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %x = alloca i32, align 4
  %inc_counter = alloca i32, align 4
  %upper_range = alloca i32, align 4
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !199, metadata !DIExpression()), !dbg !205
  store ptr %pint, ptr %pint.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pint.addr, metadata !200, metadata !DIExpression()), !dbg !206
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !201, metadata !DIExpression()), !dbg !207
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #4, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %x, metadata !202, metadata !DIExpression()), !dbg !209
  call void @llvm.lifetime.start.p0(i64 4, ptr %inc_counter) #4, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %inc_counter, metadata !203, metadata !DIExpression()), !dbg !210
  call void @llvm.lifetime.start.p0(i64 4, ptr %upper_range) #4, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %upper_range, metadata !204, metadata !DIExpression()), !dbg !211
  %0 = load ptr, ptr %str.addr, align 8, !dbg !212
  %1 = load ptr, ptr %0, align 8, !dbg !213
  %incdec.ptr = getelementptr inbounds i8, ptr %1, i32 1, !dbg !213
  store ptr %incdec.ptr, ptr %0, align 8, !dbg !213
  %2 = load ptr, ptr %str.addr, align 8, !dbg !214
  %3 = load ptr, ptr %2, align 8, !dbg !215
  %call = call i64 @simple_strtol(ptr noundef %3, ptr noundef null, i32 noundef 0) #5, !dbg !216
  %conv = trunc i64 %call to i32, !dbg !216
  store i32 %conv, ptr %upper_range, align 4, !dbg !217
  %4 = load i32, ptr %upper_range, align 4, !dbg !218
  %5 = load ptr, ptr %pint.addr, align 8, !dbg !219
  %6 = load i32, ptr %5, align 4, !dbg !220
  %sub = sub nsw i32 %4, %6, !dbg !221
  store i32 %sub, ptr %inc_counter, align 4, !dbg !222
  %7 = load ptr, ptr %pint.addr, align 8, !dbg !223
  %8 = load i32, ptr %7, align 4, !dbg !225
  store i32 %8, ptr %x, align 4, !dbg !226
  br label %for.cond, !dbg !227

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, ptr %n.addr, align 4, !dbg !228
  %tobool = icmp ne i32 %9, 0, !dbg !228
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !230

land.rhs:                                         ; preds = %for.cond
  %10 = load i32, ptr %x, align 4, !dbg !231
  %11 = load i32, ptr %upper_range, align 4, !dbg !232
  %cmp = icmp slt i32 %10, %11, !dbg !233
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ], !dbg !234
  br i1 %12, label %for.body, label %for.end, !dbg !235

for.body:                                         ; preds = %land.end
  %13 = load i32, ptr %x, align 4, !dbg !236
  %14 = load ptr, ptr %pint.addr, align 8, !dbg !237
  %incdec.ptr2 = getelementptr inbounds i32, ptr %14, i32 1, !dbg !237
  store ptr %incdec.ptr2, ptr %pint.addr, align 8, !dbg !237
  store i32 %13, ptr %14, align 4, !dbg !238
  br label %for.inc, !dbg !239

for.inc:                                          ; preds = %for.body
  %15 = load i32, ptr %x, align 4, !dbg !240
  %inc = add nsw i32 %15, 1, !dbg !240
  store i32 %inc, ptr %x, align 4, !dbg !240
  %16 = load i32, ptr %n.addr, align 4, !dbg !241
  %dec = add nsw i32 %16, -1, !dbg !241
  store i32 %dec, ptr %n.addr, align 4, !dbg !241
  br label %for.cond, !dbg !242, !llvm.loop !243

for.end:                                          ; preds = %land.end
  %17 = load i32, ptr %inc_counter, align 4, !dbg !245
  call void @llvm.lifetime.end.p0(i64 4, ptr %upper_range) #4, !dbg !246
  call void @llvm.lifetime.end.p0(i64 4, ptr %inc_counter) #4, !dbg !246
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #4, !dbg !246
  ret i32 %17, !dbg !247
}

; Function Attrs: noredzone nounwind
define hidden i64 @memparse(ptr noundef %ptr, ptr noundef %retptr) #0 !dbg !248 {
entry:
  %ptr.addr = alloca ptr, align 8
  %retptr.addr = alloca ptr, align 8
  %endptr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !252, metadata !DIExpression()), !dbg !256
  store ptr %retptr, ptr %retptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %retptr.addr, metadata !253, metadata !DIExpression()), !dbg !257
  call void @llvm.lifetime.start.p0(i64 8, ptr %endptr) #4, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %endptr, metadata !254, metadata !DIExpression()), !dbg !259
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #4, !dbg !260
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !255, metadata !DIExpression()), !dbg !261
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !262
  %call = call i64 @simple_strtoull(ptr noundef %0, ptr noundef %endptr, i32 noundef 0) #5, !dbg !263
  store i64 %call, ptr %ret, align 8, !dbg !261
  %1 = load ptr, ptr %endptr, align 8, !dbg !264
  %2 = load i8, ptr %1, align 1, !dbg !265
  %conv = sext i8 %2 to i32, !dbg !265
  switch i32 %conv, label %sw.default [
    i32 69, label %sw.bb
    i32 101, label %sw.bb
    i32 80, label %sw.bb1
    i32 112, label %sw.bb1
    i32 84, label %sw.bb3
    i32 116, label %sw.bb3
    i32 71, label %sw.bb5
    i32 103, label %sw.bb5
    i32 77, label %sw.bb7
    i32 109, label %sw.bb7
    i32 75, label %sw.bb9
    i32 107, label %sw.bb9
  ], !dbg !266

sw.bb:                                            ; preds = %entry, %entry
  %3 = load i64, ptr %ret, align 8, !dbg !267
  %shl = shl i64 %3, 10, !dbg !267
  store i64 %shl, ptr %ret, align 8, !dbg !267
  br label %sw.bb1, !dbg !269

sw.bb1:                                           ; preds = %entry, %entry, %sw.bb
  %4 = load i64, ptr %ret, align 8, !dbg !270
  %shl2 = shl i64 %4, 10, !dbg !270
  store i64 %shl2, ptr %ret, align 8, !dbg !270
  br label %sw.bb3, !dbg !271

sw.bb3:                                           ; preds = %entry, %entry, %sw.bb1
  %5 = load i64, ptr %ret, align 8, !dbg !272
  %shl4 = shl i64 %5, 10, !dbg !272
  store i64 %shl4, ptr %ret, align 8, !dbg !272
  br label %sw.bb5, !dbg !273

sw.bb5:                                           ; preds = %entry, %entry, %sw.bb3
  %6 = load i64, ptr %ret, align 8, !dbg !274
  %shl6 = shl i64 %6, 10, !dbg !274
  store i64 %shl6, ptr %ret, align 8, !dbg !274
  br label %sw.bb7, !dbg !275

sw.bb7:                                           ; preds = %entry, %entry, %sw.bb5
  %7 = load i64, ptr %ret, align 8, !dbg !276
  %shl8 = shl i64 %7, 10, !dbg !276
  store i64 %shl8, ptr %ret, align 8, !dbg !276
  br label %sw.bb9, !dbg !277

sw.bb9:                                           ; preds = %entry, %entry, %sw.bb7
  %8 = load i64, ptr %ret, align 8, !dbg !278
  %shl10 = shl i64 %8, 10, !dbg !278
  store i64 %shl10, ptr %ret, align 8, !dbg !278
  %9 = load ptr, ptr %endptr, align 8, !dbg !279
  %incdec.ptr = getelementptr inbounds i8, ptr %9, i32 1, !dbg !279
  store ptr %incdec.ptr, ptr %endptr, align 8, !dbg !279
  br label %sw.default, !dbg !280

sw.default:                                       ; preds = %entry, %sw.bb9
  br label %sw.epilog, !dbg !281

sw.epilog:                                        ; preds = %sw.default
  %10 = load ptr, ptr %retptr.addr, align 8, !dbg !282
  %tobool = icmp ne ptr %10, null, !dbg !282
  br i1 %tobool, label %if.then, label %if.end, !dbg !284

if.then:                                          ; preds = %sw.epilog
  %11 = load ptr, ptr %endptr, align 8, !dbg !285
  %12 = load ptr, ptr %retptr.addr, align 8, !dbg !286
  store ptr %11, ptr %12, align 8, !dbg !287
  br label %if.end, !dbg !288

if.end:                                           ; preds = %if.then, %sw.epilog
  %13 = load i64, ptr %ret, align 8, !dbg !289
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #4, !dbg !290
  call void @llvm.lifetime.end.p0(i64 8, ptr %endptr) #4, !dbg !290
  ret i64 %13, !dbg !291
}

; Function Attrs: noredzone nounwind
define hidden zeroext i1 @parse_option_str(ptr noundef %str, ptr noundef %option) #0 !dbg !292 {
entry:
  %retval = alloca i1, align 1
  %str.addr = alloca ptr, align 8
  %option.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !296, metadata !DIExpression()), !dbg !298
  store ptr %option, ptr %option.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %option.addr, metadata !297, metadata !DIExpression()), !dbg !299
  br label %while.cond, !dbg !300

while.cond:                                       ; preds = %if.end20, %entry
  %0 = load ptr, ptr %str.addr, align 8, !dbg !301
  %1 = load i8, ptr %0, align 1, !dbg !302
  %tobool = icmp ne i8 %1, 0, !dbg !300
  br i1 %tobool, label %while.body, label %while.end21, !dbg !300

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %str.addr, align 8, !dbg !303
  %3 = load ptr, ptr %option.addr, align 8, !dbg !306
  %4 = load ptr, ptr %option.addr, align 8, !dbg !307
  %call = call i64 @strlen(ptr noundef %4) #5, !dbg !308
  %call1 = call i32 @strncmp(ptr noundef %2, ptr noundef %3, i64 noundef %call) #5, !dbg !309
  %tobool2 = icmp ne i32 %call1, 0, !dbg !309
  br i1 %tobool2, label %if.end7, label %if.then, !dbg !310

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %option.addr, align 8, !dbg !311
  %call3 = call i64 @strlen(ptr noundef %5) #5, !dbg !313
  %6 = load ptr, ptr %str.addr, align 8, !dbg !314
  %add.ptr = getelementptr inbounds i8, ptr %6, i64 %call3, !dbg !314
  store ptr %add.ptr, ptr %str.addr, align 8, !dbg !314
  %7 = load ptr, ptr %str.addr, align 8, !dbg !315
  %8 = load i8, ptr %7, align 1, !dbg !317
  %tobool4 = icmp ne i8 %8, 0, !dbg !317
  br i1 %tobool4, label %lor.lhs.false, label %if.then6, !dbg !318

lor.lhs.false:                                    ; preds = %if.then
  %9 = load ptr, ptr %str.addr, align 8, !dbg !319
  %10 = load i8, ptr %9, align 1, !dbg !320
  %conv = sext i8 %10 to i32, !dbg !320
  %cmp = icmp eq i32 %conv, 44, !dbg !321
  br i1 %cmp, label %if.then6, label %if.end, !dbg !322

if.then6:                                         ; preds = %lor.lhs.false, %if.then
  store i1 true, ptr %retval, align 1, !dbg !323
  br label %return, !dbg !323

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end7, !dbg !324

if.end7:                                          ; preds = %if.end, %while.body
  br label %while.cond8, !dbg !325

while.cond8:                                      ; preds = %while.body14, %if.end7
  %11 = load ptr, ptr %str.addr, align 8, !dbg !326
  %12 = load i8, ptr %11, align 1, !dbg !327
  %conv9 = sext i8 %12 to i32, !dbg !327
  %tobool10 = icmp ne i32 %conv9, 0, !dbg !327
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !328

land.rhs:                                         ; preds = %while.cond8
  %13 = load ptr, ptr %str.addr, align 8, !dbg !329
  %14 = load i8, ptr %13, align 1, !dbg !330
  %conv11 = sext i8 %14 to i32, !dbg !330
  %cmp12 = icmp ne i32 %conv11, 44, !dbg !331
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond8
  %15 = phi i1 [ false, %while.cond8 ], [ %cmp12, %land.rhs ], !dbg !332
  br i1 %15, label %while.body14, label %while.end, !dbg !325

while.body14:                                     ; preds = %land.end
  %16 = load ptr, ptr %str.addr, align 8, !dbg !333
  %incdec.ptr = getelementptr inbounds i8, ptr %16, i32 1, !dbg !333
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !333
  br label %while.cond8, !dbg !325, !llvm.loop !334

while.end:                                        ; preds = %land.end
  %17 = load ptr, ptr %str.addr, align 8, !dbg !335
  %18 = load i8, ptr %17, align 1, !dbg !337
  %conv15 = sext i8 %18 to i32, !dbg !337
  %cmp16 = icmp eq i32 %conv15, 44, !dbg !338
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !339

if.then18:                                        ; preds = %while.end
  %19 = load ptr, ptr %str.addr, align 8, !dbg !340
  %incdec.ptr19 = getelementptr inbounds i8, ptr %19, i32 1, !dbg !340
  store ptr %incdec.ptr19, ptr %str.addr, align 8, !dbg !340
  br label %if.end20, !dbg !341

if.end20:                                         ; preds = %if.then18, %while.end
  br label %while.cond, !dbg !300, !llvm.loop !342

while.end21:                                      ; preds = %while.cond
  store i1 false, ptr %retval, align 1, !dbg !344
  br label %return, !dbg !344

return:                                           ; preds = %while.end21, %if.then6
  %20 = load i1, ptr %retval, align 1, !dbg !345
  ret i1 %20, !dbg !345
}

; Function Attrs: noredzone
declare !dbg !346 hidden i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone
declare !dbg !354 hidden i64 @strlen(ptr noundef) #3

; Function Attrs: noredzone nounwind
define hidden ptr @next_arg(ptr noundef %args, ptr noundef %param, ptr noundef %val) #0 !dbg !358 {
entry:
  %args.addr = alloca ptr, align 8
  %param.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %equals = alloca i32, align 4
  %in_quote = alloca i32, align 4
  %quoted = alloca i32, align 4
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !362, metadata !DIExpression()), !dbg !369
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !363, metadata !DIExpression()), !dbg !370
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !364, metadata !DIExpression()), !dbg !371
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !372
  call void @llvm.dbg.declare(metadata ptr %i, metadata !365, metadata !DIExpression()), !dbg !373
  call void @llvm.lifetime.start.p0(i64 4, ptr %equals) #4, !dbg !372
  call void @llvm.dbg.declare(metadata ptr %equals, metadata !366, metadata !DIExpression()), !dbg !374
  store i32 0, ptr %equals, align 4, !dbg !374
  call void @llvm.lifetime.start.p0(i64 4, ptr %in_quote) #4, !dbg !375
  call void @llvm.dbg.declare(metadata ptr %in_quote, metadata !367, metadata !DIExpression()), !dbg !376
  store i32 0, ptr %in_quote, align 4, !dbg !376
  call void @llvm.lifetime.start.p0(i64 4, ptr %quoted) #4, !dbg !375
  call void @llvm.dbg.declare(metadata ptr %quoted, metadata !368, metadata !DIExpression()), !dbg !377
  store i32 0, ptr %quoted, align 4, !dbg !377
  %0 = load ptr, ptr %args.addr, align 8, !dbg !378
  %1 = load i8, ptr %0, align 1, !dbg !380
  %conv = sext i8 %1 to i32, !dbg !380
  %cmp = icmp eq i32 %conv, 34, !dbg !381
  br i1 %cmp, label %if.then, label %if.end, !dbg !382

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %args.addr, align 8, !dbg !383
  %incdec.ptr = getelementptr inbounds i8, ptr %2, i32 1, !dbg !383
  store ptr %incdec.ptr, ptr %args.addr, align 8, !dbg !383
  store i32 1, ptr %in_quote, align 4, !dbg !385
  store i32 1, ptr %quoted, align 4, !dbg !386
  br label %if.end, !dbg !387

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4, !dbg !388
  br label %for.cond, !dbg !390

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load ptr, ptr %args.addr, align 8, !dbg !391
  %4 = load i32, ptr %i, align 4, !dbg !393
  %idxprom = zext i32 %4 to i64, !dbg !391
  %arrayidx = getelementptr inbounds i8, ptr %3, i64 %idxprom, !dbg !391
  %5 = load i8, ptr %arrayidx, align 1, !dbg !391
  %tobool = icmp ne i8 %5, 0, !dbg !394
  br i1 %tobool, label %for.body, label %for.end, !dbg !394

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %args.addr, align 8, !dbg !395
  %7 = load i32, ptr %i, align 4, !dbg !395
  %idxprom2 = zext i32 %7 to i64, !dbg !395
  %arrayidx3 = getelementptr inbounds i8, ptr %6, i64 %idxprom2, !dbg !395
  %8 = load i8, ptr %arrayidx3, align 1, !dbg !395
  %conv4 = zext i8 %8 to i32, !dbg !395
  %idxprom5 = sext i32 %conv4 to i64, !dbg !395
  %arrayidx6 = getelementptr inbounds [0 x i8], ptr @_ctype, i64 0, i64 %idxprom5, !dbg !395
  %9 = load i8, ptr %arrayidx6, align 1, !dbg !395
  %conv7 = zext i8 %9 to i32, !dbg !395
  %and = and i32 %conv7, 32, !dbg !395
  %cmp8 = icmp ne i32 %and, 0, !dbg !395
  br i1 %cmp8, label %land.lhs.true, label %if.end12, !dbg !398

land.lhs.true:                                    ; preds = %for.body
  %10 = load i32, ptr %in_quote, align 4, !dbg !399
  %tobool10 = icmp ne i32 %10, 0, !dbg !399
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !400

if.then11:                                        ; preds = %land.lhs.true
  br label %for.end, !dbg !401

if.end12:                                         ; preds = %land.lhs.true, %for.body
  %11 = load i32, ptr %equals, align 4, !dbg !402
  %cmp13 = icmp eq i32 %11, 0, !dbg !404
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !405

if.then15:                                        ; preds = %if.end12
  %12 = load ptr, ptr %args.addr, align 8, !dbg !406
  %13 = load i32, ptr %i, align 4, !dbg !409
  %idxprom16 = zext i32 %13 to i64, !dbg !406
  %arrayidx17 = getelementptr inbounds i8, ptr %12, i64 %idxprom16, !dbg !406
  %14 = load i8, ptr %arrayidx17, align 1, !dbg !406
  %conv18 = sext i8 %14 to i32, !dbg !406
  %cmp19 = icmp eq i32 %conv18, 61, !dbg !410
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !411

if.then21:                                        ; preds = %if.then15
  %15 = load i32, ptr %i, align 4, !dbg !412
  store i32 %15, ptr %equals, align 4, !dbg !413
  br label %if.end22, !dbg !414

if.end22:                                         ; preds = %if.then21, %if.then15
  br label %if.end23, !dbg !415

if.end23:                                         ; preds = %if.end22, %if.end12
  %16 = load ptr, ptr %args.addr, align 8, !dbg !416
  %17 = load i32, ptr %i, align 4, !dbg !418
  %idxprom24 = zext i32 %17 to i64, !dbg !416
  %arrayidx25 = getelementptr inbounds i8, ptr %16, i64 %idxprom24, !dbg !416
  %18 = load i8, ptr %arrayidx25, align 1, !dbg !416
  %conv26 = sext i8 %18 to i32, !dbg !416
  %cmp27 = icmp eq i32 %conv26, 34, !dbg !419
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !420

if.then29:                                        ; preds = %if.end23
  %19 = load i32, ptr %in_quote, align 4, !dbg !421
  %tobool30 = icmp ne i32 %19, 0, !dbg !422
  %lnot = xor i1 %tobool30, true, !dbg !422
  %lnot.ext = zext i1 %lnot to i32, !dbg !422
  store i32 %lnot.ext, ptr %in_quote, align 4, !dbg !423
  br label %if.end31, !dbg !424

if.end31:                                         ; preds = %if.then29, %if.end23
  br label %for.inc, !dbg !425

for.inc:                                          ; preds = %if.end31
  %20 = load i32, ptr %i, align 4, !dbg !426
  %inc = add i32 %20, 1, !dbg !426
  store i32 %inc, ptr %i, align 4, !dbg !426
  br label %for.cond, !dbg !427, !llvm.loop !428

for.end:                                          ; preds = %if.then11, %for.cond
  %21 = load ptr, ptr %args.addr, align 8, !dbg !430
  %22 = load ptr, ptr %param.addr, align 8, !dbg !431
  store ptr %21, ptr %22, align 8, !dbg !432
  %23 = load i32, ptr %equals, align 4, !dbg !433
  %tobool32 = icmp ne i32 %23, 0, !dbg !433
  br i1 %tobool32, label %if.else, label %if.then33, !dbg !435

if.then33:                                        ; preds = %for.end
  %24 = load ptr, ptr %val.addr, align 8, !dbg !436
  store ptr null, ptr %24, align 8, !dbg !437
  br label %if.end53, !dbg !438

if.else:                                          ; preds = %for.end
  %25 = load ptr, ptr %args.addr, align 8, !dbg !439
  %26 = load i32, ptr %equals, align 4, !dbg !441
  %idxprom34 = zext i32 %26 to i64, !dbg !439
  %arrayidx35 = getelementptr inbounds i8, ptr %25, i64 %idxprom34, !dbg !439
  store i8 0, ptr %arrayidx35, align 1, !dbg !442
  %27 = load ptr, ptr %args.addr, align 8, !dbg !443
  %28 = load i32, ptr %equals, align 4, !dbg !444
  %idx.ext = zext i32 %28 to i64, !dbg !445
  %add.ptr = getelementptr inbounds i8, ptr %27, i64 %idx.ext, !dbg !445
  %add.ptr36 = getelementptr inbounds i8, ptr %add.ptr, i64 1, !dbg !446
  %29 = load ptr, ptr %val.addr, align 8, !dbg !447
  store ptr %add.ptr36, ptr %29, align 8, !dbg !448
  %30 = load ptr, ptr %val.addr, align 8, !dbg !449
  %31 = load ptr, ptr %30, align 8, !dbg !451
  %32 = load i8, ptr %31, align 1, !dbg !452
  %conv37 = sext i8 %32 to i32, !dbg !452
  %cmp38 = icmp eq i32 %conv37, 34, !dbg !453
  br i1 %cmp38, label %if.then40, label %if.end52, !dbg !454

if.then40:                                        ; preds = %if.else
  %33 = load ptr, ptr %val.addr, align 8, !dbg !455
  %34 = load ptr, ptr %33, align 8, !dbg !457
  %incdec.ptr41 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !457
  store ptr %incdec.ptr41, ptr %33, align 8, !dbg !457
  %35 = load ptr, ptr %args.addr, align 8, !dbg !458
  %36 = load i32, ptr %i, align 4, !dbg !460
  %sub = sub i32 %36, 1, !dbg !461
  %idxprom42 = zext i32 %sub to i64, !dbg !458
  %arrayidx43 = getelementptr inbounds i8, ptr %35, i64 %idxprom42, !dbg !458
  %37 = load i8, ptr %arrayidx43, align 1, !dbg !458
  %conv44 = sext i8 %37 to i32, !dbg !458
  %cmp45 = icmp eq i32 %conv44, 34, !dbg !462
  br i1 %cmp45, label %if.then47, label %if.end51, !dbg !463

if.then47:                                        ; preds = %if.then40
  %38 = load ptr, ptr %args.addr, align 8, !dbg !464
  %39 = load i32, ptr %i, align 4, !dbg !465
  %sub48 = sub i32 %39, 1, !dbg !466
  %idxprom49 = zext i32 %sub48 to i64, !dbg !464
  %arrayidx50 = getelementptr inbounds i8, ptr %38, i64 %idxprom49, !dbg !464
  store i8 0, ptr %arrayidx50, align 1, !dbg !467
  br label %if.end51, !dbg !464

if.end51:                                         ; preds = %if.then47, %if.then40
  br label %if.end52, !dbg !468

if.end52:                                         ; preds = %if.end51, %if.else
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then33
  %40 = load i32, ptr %quoted, align 4, !dbg !469
  %tobool54 = icmp ne i32 %40, 0, !dbg !469
  br i1 %tobool54, label %land.lhs.true55, label %if.end69, !dbg !471

land.lhs.true55:                                  ; preds = %if.end53
  %41 = load i32, ptr %i, align 4, !dbg !472
  %cmp56 = icmp ugt i32 %41, 0, !dbg !473
  br i1 %cmp56, label %land.lhs.true58, label %if.end69, !dbg !474

land.lhs.true58:                                  ; preds = %land.lhs.true55
  %42 = load ptr, ptr %args.addr, align 8, !dbg !475
  %43 = load i32, ptr %i, align 4, !dbg !476
  %sub59 = sub i32 %43, 1, !dbg !477
  %idxprom60 = zext i32 %sub59 to i64, !dbg !475
  %arrayidx61 = getelementptr inbounds i8, ptr %42, i64 %idxprom60, !dbg !475
  %44 = load i8, ptr %arrayidx61, align 1, !dbg !475
  %conv62 = sext i8 %44 to i32, !dbg !475
  %cmp63 = icmp eq i32 %conv62, 34, !dbg !478
  br i1 %cmp63, label %if.then65, label %if.end69, !dbg !479

if.then65:                                        ; preds = %land.lhs.true58
  %45 = load ptr, ptr %args.addr, align 8, !dbg !480
  %46 = load i32, ptr %i, align 4, !dbg !481
  %sub66 = sub i32 %46, 1, !dbg !482
  %idxprom67 = zext i32 %sub66 to i64, !dbg !480
  %arrayidx68 = getelementptr inbounds i8, ptr %45, i64 %idxprom67, !dbg !480
  store i8 0, ptr %arrayidx68, align 1, !dbg !483
  br label %if.end69, !dbg !480

if.end69:                                         ; preds = %if.then65, %land.lhs.true58, %land.lhs.true55, %if.end53
  %47 = load ptr, ptr %args.addr, align 8, !dbg !484
  %48 = load i32, ptr %i, align 4, !dbg !486
  %idxprom70 = zext i32 %48 to i64, !dbg !484
  %arrayidx71 = getelementptr inbounds i8, ptr %47, i64 %idxprom70, !dbg !484
  %49 = load i8, ptr %arrayidx71, align 1, !dbg !484
  %tobool72 = icmp ne i8 %49, 0, !dbg !484
  br i1 %tobool72, label %if.then73, label %if.else78, !dbg !487

if.then73:                                        ; preds = %if.end69
  %50 = load ptr, ptr %args.addr, align 8, !dbg !488
  %51 = load i32, ptr %i, align 4, !dbg !490
  %idxprom74 = zext i32 %51 to i64, !dbg !488
  %arrayidx75 = getelementptr inbounds i8, ptr %50, i64 %idxprom74, !dbg !488
  store i8 0, ptr %arrayidx75, align 1, !dbg !491
  %52 = load i32, ptr %i, align 4, !dbg !492
  %add = add i32 %52, 1, !dbg !493
  %53 = load ptr, ptr %args.addr, align 8, !dbg !494
  %idx.ext76 = zext i32 %add to i64, !dbg !494
  %add.ptr77 = getelementptr inbounds i8, ptr %53, i64 %idx.ext76, !dbg !494
  store ptr %add.ptr77, ptr %args.addr, align 8, !dbg !494
  br label %if.end81, !dbg !495

if.else78:                                        ; preds = %if.end69
  %54 = load i32, ptr %i, align 4, !dbg !496
  %55 = load ptr, ptr %args.addr, align 8, !dbg !497
  %idx.ext79 = zext i32 %54 to i64, !dbg !497
  %add.ptr80 = getelementptr inbounds i8, ptr %55, i64 %idx.ext79, !dbg !497
  store ptr %add.ptr80, ptr %args.addr, align 8, !dbg !497
  br label %if.end81

if.end81:                                         ; preds = %if.else78, %if.then73
  %56 = load ptr, ptr %args.addr, align 8, !dbg !498
  %call = call ptr @skip_spaces(ptr noundef %56) #5, !dbg !499
  call void @llvm.lifetime.end.p0(i64 4, ptr %quoted) #4, !dbg !500
  call void @llvm.lifetime.end.p0(i64 4, ptr %in_quote) #4, !dbg !500
  call void @llvm.lifetime.end.p0(i64 4, ptr %equals) #4, !dbg !500
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !500
  ret ptr %call, !dbg !501
}

; Function Attrs: noredzone
declare !dbg !502 hidden ptr @skip_spaces(ptr noundef) #3

; Function Attrs: noredzone
declare !dbg !505 hidden i64 @simple_strtol(ptr noundef, ptr noundef, i32 noundef) #3

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.lib-cmdline.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/lib-cmdline\22 -D KBUILD_BASENAME=\22lib_cmdline\22 -D KBUILD_MODNAME=\22lib_cmdline\22 -D __KBUILD_MODNAME=kmod_lib_cmdline -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/lib-cmdline.ll lib/cmdline.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !9, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lib/cmdline.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e6e1e1bf5ecca5aab0462e451cfcdf2")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "false", value: 0)
!8 = !DIEnumerator(name: "true", value: 1)
!9 = !{!10, !11, !13, !14}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 8, !"PIC Level", i32 2}
!19 = !{i32 1, !"Code Model", i32 1}
!20 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!21 = distinct !DISubprogram(name: "get_option", scope: !1, file: !1, line: 56, type: !22, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !25)
!22 = !DISubroutineType(types: !23)
!23 = !{!13, !10, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!25 = !{!26, !27, !28, !29}
!26 = !DILocalVariable(name: "str", arg: 1, scope: !21, file: !1, line: 56, type: !10)
!27 = !DILocalVariable(name: "pint", arg: 2, scope: !21, file: !1, line: 56, type: !24)
!28 = !DILocalVariable(name: "cur", scope: !21, file: !1, line: 58, type: !11)
!29 = !DILocalVariable(name: "value", scope: !21, file: !1, line: 59, type: !13)
!30 = !DILocation(line: 56, column: 23, scope: !21)
!31 = !DILocation(line: 56, column: 33, scope: !21)
!32 = !DILocation(line: 58, column: 2, scope: !21)
!33 = !DILocation(line: 58, column: 8, scope: !21)
!34 = !DILocation(line: 58, column: 15, scope: !21)
!35 = !DILocation(line: 58, column: 14, scope: !21)
!36 = !DILocation(line: 59, column: 2, scope: !21)
!37 = !DILocation(line: 59, column: 6, scope: !21)
!38 = !DILocation(line: 61, column: 7, scope: !39)
!39 = distinct !DILexicalBlock(scope: !21, file: !1, line: 61, column: 6)
!40 = !DILocation(line: 61, column: 11, scope: !39)
!41 = !DILocation(line: 61, column: 17, scope: !39)
!42 = !DILocation(line: 61, column: 16, scope: !39)
!43 = !DILocation(line: 61, column: 15, scope: !39)
!44 = !DILocation(line: 61, column: 6, scope: !21)
!45 = !DILocation(line: 62, column: 3, scope: !39)
!46 = !DILocation(line: 63, column: 7, scope: !47)
!47 = distinct !DILexicalBlock(scope: !21, file: !1, line: 63, column: 6)
!48 = !DILocation(line: 63, column: 6, scope: !47)
!49 = !DILocation(line: 63, column: 11, scope: !47)
!50 = !DILocation(line: 63, column: 6, scope: !21)
!51 = !DILocation(line: 64, column: 28, scope: !47)
!52 = !DILocation(line: 64, column: 35, scope: !47)
!53 = !DILocation(line: 64, column: 12, scope: !47)
!54 = !DILocation(line: 64, column: 11, scope: !47)
!55 = !DILocation(line: 64, column: 9, scope: !47)
!56 = !DILocation(line: 64, column: 3, scope: !47)
!57 = !DILocation(line: 66, column: 27, scope: !47)
!58 = !DILocation(line: 66, column: 32, scope: !47)
!59 = !DILocation(line: 66, column: 11, scope: !47)
!60 = !DILocation(line: 66, column: 9, scope: !47)
!61 = !DILocation(line: 67, column: 6, scope: !62)
!62 = distinct !DILexicalBlock(scope: !21, file: !1, line: 67, column: 6)
!63 = !DILocation(line: 67, column: 6, scope: !21)
!64 = !DILocation(line: 68, column: 11, scope: !62)
!65 = !DILocation(line: 68, column: 4, scope: !62)
!66 = !DILocation(line: 68, column: 9, scope: !62)
!67 = !DILocation(line: 68, column: 3, scope: !62)
!68 = !DILocation(line: 69, column: 6, scope: !69)
!69 = distinct !DILexicalBlock(scope: !21, file: !1, line: 69, column: 6)
!70 = !DILocation(line: 69, column: 14, scope: !69)
!71 = !DILocation(line: 69, column: 13, scope: !69)
!72 = !DILocation(line: 69, column: 10, scope: !69)
!73 = !DILocation(line: 69, column: 6, scope: !21)
!74 = !DILocation(line: 70, column: 3, scope: !69)
!75 = !DILocation(line: 71, column: 8, scope: !76)
!76 = distinct !DILexicalBlock(scope: !21, file: !1, line: 71, column: 6)
!77 = !DILocation(line: 71, column: 7, scope: !76)
!78 = !DILocation(line: 71, column: 6, scope: !76)
!79 = !DILocation(line: 71, column: 12, scope: !76)
!80 = !DILocation(line: 71, column: 6, scope: !21)
!81 = !DILocation(line: 72, column: 5, scope: !82)
!82 = distinct !DILexicalBlock(scope: !76, file: !1, line: 71, column: 20)
!83 = !DILocation(line: 72, column: 9, scope: !82)
!84 = !DILocation(line: 73, column: 3, scope: !82)
!85 = !DILocation(line: 75, column: 8, scope: !86)
!86 = distinct !DILexicalBlock(scope: !21, file: !1, line: 75, column: 6)
!87 = !DILocation(line: 75, column: 7, scope: !86)
!88 = !DILocation(line: 75, column: 6, scope: !86)
!89 = !DILocation(line: 75, column: 12, scope: !86)
!90 = !DILocation(line: 75, column: 6, scope: !21)
!91 = !DILocation(line: 76, column: 3, scope: !86)
!92 = !DILocation(line: 78, column: 2, scope: !21)
!93 = !DILocation(line: 79, column: 1, scope: !21)
!94 = !DISubprogram(name: "simple_strtoull", scope: !95, file: !95, line: 147, type: !96, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!95 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !99, !10, !5}
!98 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!101 = distinct !DISubprogram(name: "get_options", scope: !1, file: !1, line: 107, type: !102, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{!11, !99, !13, !24}
!104 = !{!105, !106, !107, !108, !112, !113, !114, !116, !119}
!105 = !DILocalVariable(name: "str", arg: 1, scope: !101, file: !1, line: 107, type: !99)
!106 = !DILocalVariable(name: "nints", arg: 2, scope: !101, file: !1, line: 107, type: !13)
!107 = !DILocalVariable(name: "ints", arg: 3, scope: !101, file: !1, line: 107, type: !24)
!108 = !DILocalVariable(name: "validate", scope: !101, file: !1, line: 109, type: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !110, line: 35, baseType: !111)
!110 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!111 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!112 = !DILocalVariable(name: "res", scope: !101, file: !1, line: 110, type: !13)
!113 = !DILocalVariable(name: "i", scope: !101, file: !1, line: 110, type: !13)
!114 = !DILocalVariable(name: "pint", scope: !115, file: !1, line: 113, type: !24)
!115 = distinct !DILexicalBlock(scope: !101, file: !1, line: 112, column: 32)
!116 = !DILocalVariable(name: "n", scope: !117, file: !1, line: 119, type: !13)
!117 = distinct !DILexicalBlock(scope: !118, file: !1, line: 118, column: 17)
!118 = distinct !DILexicalBlock(scope: !115, file: !1, line: 118, column: 7)
!119 = !DILocalVariable(name: "range_nums", scope: !117, file: !1, line: 120, type: !13)
!120 = !DILocation(line: 107, column: 31, scope: !101)
!121 = !DILocation(line: 107, column: 40, scope: !101)
!122 = !DILocation(line: 107, column: 52, scope: !101)
!123 = !DILocation(line: 109, column: 2, scope: !101)
!124 = !DILocation(line: 109, column: 7, scope: !101)
!125 = !DILocation(line: 109, column: 19, scope: !101)
!126 = !DILocation(line: 109, column: 25, scope: !101)
!127 = !DILocation(line: 110, column: 2, scope: !101)
!128 = !DILocation(line: 110, column: 6, scope: !101)
!129 = !DILocation(line: 110, column: 11, scope: !101)
!130 = !DILocation(line: 112, column: 2, scope: !101)
!131 = !DILocation(line: 112, column: 9, scope: !101)
!132 = !DILocation(line: 112, column: 13, scope: !101)
!133 = !DILocation(line: 112, column: 11, scope: !101)
!134 = !DILocation(line: 112, column: 19, scope: !101)
!135 = !DILocation(line: 112, column: 22, scope: !101)
!136 = !{i8 0, i8 2}
!137 = !{}
!138 = !DILocation(line: 113, column: 3, scope: !115)
!139 = !DILocation(line: 113, column: 8, scope: !115)
!140 = !DILocation(line: 113, column: 15, scope: !115)
!141 = !DILocation(line: 113, column: 26, scope: !115)
!142 = !DILocation(line: 113, column: 33, scope: !115)
!143 = !DILocation(line: 113, column: 40, scope: !115)
!144 = !DILocation(line: 113, column: 38, scope: !115)
!145 = !DILocation(line: 115, column: 35, scope: !115)
!146 = !DILocation(line: 115, column: 9, scope: !115)
!147 = !DILocation(line: 115, column: 7, scope: !115)
!148 = !DILocation(line: 116, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !115, file: !1, line: 116, column: 7)
!150 = !DILocation(line: 116, column: 11, scope: !149)
!151 = !DILocation(line: 116, column: 7, scope: !115)
!152 = !DILocation(line: 117, column: 4, scope: !149)
!153 = !DILocation(line: 118, column: 7, scope: !118)
!154 = !DILocation(line: 118, column: 11, scope: !118)
!155 = !DILocation(line: 118, column: 7, scope: !115)
!156 = !DILocation(line: 119, column: 4, scope: !117)
!157 = !DILocation(line: 119, column: 8, scope: !117)
!158 = !DILocation(line: 119, column: 12, scope: !117)
!159 = !DILocation(line: 119, column: 27, scope: !117)
!160 = !DILocation(line: 119, column: 35, scope: !117)
!161 = !DILocation(line: 119, column: 33, scope: !117)
!162 = !DILocation(line: 120, column: 4, scope: !117)
!163 = !DILocation(line: 120, column: 8, scope: !117)
!164 = !DILocation(line: 122, column: 42, scope: !117)
!165 = !DILocation(line: 122, column: 48, scope: !117)
!166 = !DILocation(line: 122, column: 17, scope: !117)
!167 = !DILocation(line: 122, column: 15, scope: !117)
!168 = !DILocation(line: 123, column: 8, scope: !169)
!169 = distinct !DILexicalBlock(scope: !117, file: !1, line: 123, column: 8)
!170 = !DILocation(line: 123, column: 19, scope: !169)
!171 = !DILocation(line: 123, column: 8, scope: !117)
!172 = !DILocation(line: 124, column: 5, scope: !169)
!173 = !DILocation(line: 130, column: 10, scope: !117)
!174 = !DILocation(line: 130, column: 21, scope: !117)
!175 = !DILocation(line: 130, column: 6, scope: !117)
!176 = !DILocation(line: 131, column: 3, scope: !118)
!177 = !DILocation(line: 131, column: 3, scope: !117)
!178 = !DILocation(line: 132, column: 4, scope: !115)
!179 = !DILocation(line: 133, column: 7, scope: !180)
!180 = distinct !DILexicalBlock(scope: !115, file: !1, line: 133, column: 7)
!181 = !DILocation(line: 133, column: 11, scope: !180)
!182 = !DILocation(line: 133, column: 7, scope: !115)
!183 = !DILocation(line: 134, column: 4, scope: !180)
!184 = !DILocation(line: 135, column: 2, scope: !101)
!185 = distinct !{!185, !130, !184, !186, !187}
!186 = !{!"llvm.loop.mustprogress"}
!187 = !{!"llvm.loop.unroll.disable"}
!188 = !DILocation(line: 136, column: 12, scope: !101)
!189 = !DILocation(line: 136, column: 14, scope: !101)
!190 = !DILocation(line: 136, column: 2, scope: !101)
!191 = !DILocation(line: 136, column: 10, scope: !101)
!192 = !DILocation(line: 137, column: 17, scope: !101)
!193 = !DILocation(line: 138, column: 1, scope: !101)
!194 = !DILocation(line: 137, column: 2, scope: !101)
!195 = distinct !DISubprogram(name: "get_range", scope: !1, file: !1, line: 23, type: !196, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !198)
!196 = !DISubroutineType(types: !197)
!197 = !{!13, !10, !24, !13}
!198 = !{!199, !200, !201, !202, !203, !204}
!199 = !DILocalVariable(name: "str", arg: 1, scope: !195, file: !1, line: 23, type: !10)
!200 = !DILocalVariable(name: "pint", arg: 2, scope: !195, file: !1, line: 23, type: !24)
!201 = !DILocalVariable(name: "n", arg: 3, scope: !195, file: !1, line: 23, type: !13)
!202 = !DILocalVariable(name: "x", scope: !195, file: !1, line: 25, type: !13)
!203 = !DILocalVariable(name: "inc_counter", scope: !195, file: !1, line: 25, type: !13)
!204 = !DILocalVariable(name: "upper_range", scope: !195, file: !1, line: 25, type: !13)
!205 = !DILocation(line: 23, column: 29, scope: !195)
!206 = !DILocation(line: 23, column: 39, scope: !195)
!207 = !DILocation(line: 23, column: 49, scope: !195)
!208 = !DILocation(line: 25, column: 2, scope: !195)
!209 = !DILocation(line: 25, column: 6, scope: !195)
!210 = !DILocation(line: 25, column: 9, scope: !195)
!211 = !DILocation(line: 25, column: 22, scope: !195)
!212 = !DILocation(line: 27, column: 4, scope: !195)
!213 = !DILocation(line: 27, column: 8, scope: !195)
!214 = !DILocation(line: 28, column: 32, scope: !195)
!215 = !DILocation(line: 28, column: 31, scope: !195)
!216 = !DILocation(line: 28, column: 16, scope: !195)
!217 = !DILocation(line: 28, column: 14, scope: !195)
!218 = !DILocation(line: 29, column: 16, scope: !195)
!219 = !DILocation(line: 29, column: 31, scope: !195)
!220 = !DILocation(line: 29, column: 30, scope: !195)
!221 = !DILocation(line: 29, column: 28, scope: !195)
!222 = !DILocation(line: 29, column: 14, scope: !195)
!223 = !DILocation(line: 30, column: 12, scope: !224)
!224 = distinct !DILexicalBlock(scope: !195, file: !1, line: 30, column: 2)
!225 = !DILocation(line: 30, column: 11, scope: !224)
!226 = !DILocation(line: 30, column: 9, scope: !224)
!227 = !DILocation(line: 30, column: 7, scope: !224)
!228 = !DILocation(line: 30, column: 18, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !1, line: 30, column: 2)
!230 = !DILocation(line: 30, column: 20, scope: !229)
!231 = !DILocation(line: 30, column: 23, scope: !229)
!232 = !DILocation(line: 30, column: 27, scope: !229)
!233 = !DILocation(line: 30, column: 25, scope: !229)
!234 = !DILocation(line: 0, scope: !229)
!235 = !DILocation(line: 30, column: 2, scope: !224)
!236 = !DILocation(line: 31, column: 13, scope: !229)
!237 = !DILocation(line: 31, column: 8, scope: !229)
!238 = !DILocation(line: 31, column: 11, scope: !229)
!239 = !DILocation(line: 31, column: 3, scope: !229)
!240 = !DILocation(line: 30, column: 41, scope: !229)
!241 = !DILocation(line: 30, column: 46, scope: !229)
!242 = !DILocation(line: 30, column: 2, scope: !229)
!243 = distinct !{!243, !235, !244, !186, !187}
!244 = !DILocation(line: 31, column: 13, scope: !224)
!245 = !DILocation(line: 32, column: 9, scope: !195)
!246 = !DILocation(line: 33, column: 1, scope: !195)
!247 = !DILocation(line: 32, column: 2, scope: !195)
!248 = distinct !DISubprogram(name: "memparse", scope: !1, file: !1, line: 150, type: !249, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !251)
!249 = !DISubroutineType(types: !250)
!250 = !{!98, !99, !10}
!251 = !{!252, !253, !254, !255}
!252 = !DILocalVariable(name: "ptr", arg: 1, scope: !248, file: !1, line: 150, type: !99)
!253 = !DILocalVariable(name: "retptr", arg: 2, scope: !248, file: !1, line: 150, type: !10)
!254 = !DILocalVariable(name: "endptr", scope: !248, file: !1, line: 152, type: !11)
!255 = !DILocalVariable(name: "ret", scope: !248, file: !1, line: 154, type: !98)
!256 = !DILocation(line: 150, column: 41, scope: !248)
!257 = !DILocation(line: 150, column: 53, scope: !248)
!258 = !DILocation(line: 152, column: 2, scope: !248)
!259 = !DILocation(line: 152, column: 8, scope: !248)
!260 = !DILocation(line: 154, column: 2, scope: !248)
!261 = !DILocation(line: 154, column: 21, scope: !248)
!262 = !DILocation(line: 154, column: 43, scope: !248)
!263 = !DILocation(line: 154, column: 27, scope: !248)
!264 = !DILocation(line: 156, column: 11, scope: !248)
!265 = !DILocation(line: 156, column: 10, scope: !248)
!266 = !DILocation(line: 156, column: 2, scope: !248)
!267 = !DILocation(line: 159, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !248, file: !1, line: 156, column: 19)
!269 = !DILocation(line: 159, column: 3, scope: !268)
!270 = !DILocation(line: 163, column: 7, scope: !268)
!271 = !DILocation(line: 163, column: 3, scope: !268)
!272 = !DILocation(line: 167, column: 7, scope: !268)
!273 = !DILocation(line: 167, column: 3, scope: !268)
!274 = !DILocation(line: 171, column: 7, scope: !268)
!275 = !DILocation(line: 171, column: 3, scope: !268)
!276 = !DILocation(line: 175, column: 7, scope: !268)
!277 = !DILocation(line: 175, column: 3, scope: !268)
!278 = !DILocation(line: 179, column: 7, scope: !268)
!279 = !DILocation(line: 180, column: 9, scope: !268)
!280 = !DILocation(line: 180, column: 3, scope: !268)
!281 = !DILocation(line: 183, column: 3, scope: !268)
!282 = !DILocation(line: 186, column: 6, scope: !283)
!283 = distinct !DILexicalBlock(scope: !248, file: !1, line: 186, column: 6)
!284 = !DILocation(line: 186, column: 6, scope: !248)
!285 = !DILocation(line: 187, column: 13, scope: !283)
!286 = !DILocation(line: 187, column: 4, scope: !283)
!287 = !DILocation(line: 187, column: 11, scope: !283)
!288 = !DILocation(line: 187, column: 3, scope: !283)
!289 = !DILocation(line: 189, column: 9, scope: !248)
!290 = !DILocation(line: 190, column: 1, scope: !248)
!291 = !DILocation(line: 189, column: 2, scope: !248)
!292 = distinct !DISubprogram(name: "parse_option_str", scope: !1, file: !1, line: 203, type: !293, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{!109, !99, !99}
!295 = !{!296, !297}
!296 = !DILocalVariable(name: "str", arg: 1, scope: !292, file: !1, line: 203, type: !99)
!297 = !DILocalVariable(name: "option", arg: 2, scope: !292, file: !1, line: 203, type: !99)
!298 = !DILocation(line: 203, column: 35, scope: !292)
!299 = !DILocation(line: 203, column: 52, scope: !292)
!300 = !DILocation(line: 205, column: 2, scope: !292)
!301 = !DILocation(line: 205, column: 10, scope: !292)
!302 = !DILocation(line: 205, column: 9, scope: !292)
!303 = !DILocation(line: 206, column: 16, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !1, line: 206, column: 7)
!305 = distinct !DILexicalBlock(scope: !292, file: !1, line: 205, column: 15)
!306 = !DILocation(line: 206, column: 21, scope: !304)
!307 = !DILocation(line: 206, column: 36, scope: !304)
!308 = !DILocation(line: 206, column: 29, scope: !304)
!309 = !DILocation(line: 206, column: 8, scope: !304)
!310 = !DILocation(line: 206, column: 7, scope: !305)
!311 = !DILocation(line: 207, column: 18, scope: !312)
!312 = distinct !DILexicalBlock(scope: !304, file: !1, line: 206, column: 46)
!313 = !DILocation(line: 207, column: 11, scope: !312)
!314 = !DILocation(line: 207, column: 8, scope: !312)
!315 = !DILocation(line: 208, column: 10, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !1, line: 208, column: 8)
!317 = !DILocation(line: 208, column: 9, scope: !316)
!318 = !DILocation(line: 208, column: 14, scope: !316)
!319 = !DILocation(line: 208, column: 18, scope: !316)
!320 = !DILocation(line: 208, column: 17, scope: !316)
!321 = !DILocation(line: 208, column: 22, scope: !316)
!322 = !DILocation(line: 208, column: 8, scope: !312)
!323 = !DILocation(line: 209, column: 5, scope: !316)
!324 = !DILocation(line: 210, column: 3, scope: !312)
!325 = !DILocation(line: 212, column: 3, scope: !305)
!326 = !DILocation(line: 212, column: 11, scope: !305)
!327 = !DILocation(line: 212, column: 10, scope: !305)
!328 = !DILocation(line: 212, column: 15, scope: !305)
!329 = !DILocation(line: 212, column: 19, scope: !305)
!330 = !DILocation(line: 212, column: 18, scope: !305)
!331 = !DILocation(line: 212, column: 23, scope: !305)
!332 = !DILocation(line: 0, scope: !305)
!333 = !DILocation(line: 213, column: 7, scope: !305)
!334 = distinct !{!334, !325, !333, !186, !187}
!335 = !DILocation(line: 215, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !305, file: !1, line: 215, column: 7)
!337 = !DILocation(line: 215, column: 7, scope: !336)
!338 = !DILocation(line: 215, column: 12, scope: !336)
!339 = !DILocation(line: 215, column: 7, scope: !305)
!340 = !DILocation(line: 216, column: 7, scope: !336)
!341 = !DILocation(line: 216, column: 4, scope: !336)
!342 = distinct !{!342, !300, !343, !186, !187}
!343 = !DILocation(line: 217, column: 2, scope: !292)
!344 = !DILocation(line: 219, column: 2, scope: !292)
!345 = !DILocation(line: 220, column: 1, scope: !292)
!346 = !DISubprogram(name: "strncmp", scope: !347, file: !347, line: 91, type: !348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!347 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!348 = !DISubroutineType(types: !349)
!349 = !{!13, !99, !99, !350}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !351, line: 72, baseType: !352)
!351 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !351, line: 16, baseType: !353)
!353 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!354 = !DISubprogram(name: "strlen", scope: !347, file: !347, line: 128, type: !355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!355 = !DISubroutineType(types: !356)
!356 = !{!357, !99}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 61, baseType: !350)
!358 = distinct !DISubprogram(name: "next_arg", scope: !1, file: !1, line: 227, type: !359, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{!11, !11, !10, !10}
!361 = !{!362, !363, !364, !365, !366, !367, !368}
!362 = !DILocalVariable(name: "args", arg: 1, scope: !358, file: !1, line: 227, type: !11)
!363 = !DILocalVariable(name: "param", arg: 2, scope: !358, file: !1, line: 227, type: !10)
!364 = !DILocalVariable(name: "val", arg: 3, scope: !358, file: !1, line: 227, type: !10)
!365 = !DILocalVariable(name: "i", scope: !358, file: !1, line: 229, type: !5)
!366 = !DILocalVariable(name: "equals", scope: !358, file: !1, line: 229, type: !5)
!367 = !DILocalVariable(name: "in_quote", scope: !358, file: !1, line: 230, type: !13)
!368 = !DILocalVariable(name: "quoted", scope: !358, file: !1, line: 230, type: !13)
!369 = !DILocation(line: 227, column: 22, scope: !358)
!370 = !DILocation(line: 227, column: 35, scope: !358)
!371 = !DILocation(line: 227, column: 49, scope: !358)
!372 = !DILocation(line: 229, column: 2, scope: !358)
!373 = !DILocation(line: 229, column: 15, scope: !358)
!374 = !DILocation(line: 229, column: 18, scope: !358)
!375 = !DILocation(line: 230, column: 2, scope: !358)
!376 = !DILocation(line: 230, column: 6, scope: !358)
!377 = !DILocation(line: 230, column: 20, scope: !358)
!378 = !DILocation(line: 232, column: 7, scope: !379)
!379 = distinct !DILexicalBlock(scope: !358, file: !1, line: 232, column: 6)
!380 = !DILocation(line: 232, column: 6, scope: !379)
!381 = !DILocation(line: 232, column: 12, scope: !379)
!382 = !DILocation(line: 232, column: 6, scope: !358)
!383 = !DILocation(line: 233, column: 7, scope: !384)
!384 = distinct !DILexicalBlock(scope: !379, file: !1, line: 232, column: 20)
!385 = !DILocation(line: 234, column: 12, scope: !384)
!386 = !DILocation(line: 235, column: 10, scope: !384)
!387 = !DILocation(line: 236, column: 2, scope: !384)
!388 = !DILocation(line: 238, column: 9, scope: !389)
!389 = distinct !DILexicalBlock(scope: !358, file: !1, line: 238, column: 2)
!390 = !DILocation(line: 238, column: 7, scope: !389)
!391 = !DILocation(line: 238, column: 14, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !1, line: 238, column: 2)
!393 = !DILocation(line: 238, column: 19, scope: !392)
!394 = !DILocation(line: 238, column: 2, scope: !389)
!395 = !DILocation(line: 239, column: 7, scope: !396)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 239, column: 7)
!397 = distinct !DILexicalBlock(scope: !392, file: !1, line: 238, column: 28)
!398 = !DILocation(line: 239, column: 24, scope: !396)
!399 = !DILocation(line: 239, column: 28, scope: !396)
!400 = !DILocation(line: 239, column: 7, scope: !397)
!401 = !DILocation(line: 240, column: 4, scope: !396)
!402 = !DILocation(line: 241, column: 7, scope: !403)
!403 = distinct !DILexicalBlock(scope: !397, file: !1, line: 241, column: 7)
!404 = !DILocation(line: 241, column: 14, scope: !403)
!405 = !DILocation(line: 241, column: 7, scope: !397)
!406 = !DILocation(line: 242, column: 8, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 242, column: 8)
!408 = distinct !DILexicalBlock(scope: !403, file: !1, line: 241, column: 20)
!409 = !DILocation(line: 242, column: 13, scope: !407)
!410 = !DILocation(line: 242, column: 16, scope: !407)
!411 = !DILocation(line: 242, column: 8, scope: !408)
!412 = !DILocation(line: 243, column: 14, scope: !407)
!413 = !DILocation(line: 243, column: 12, scope: !407)
!414 = !DILocation(line: 243, column: 5, scope: !407)
!415 = !DILocation(line: 244, column: 3, scope: !408)
!416 = !DILocation(line: 245, column: 7, scope: !417)
!417 = distinct !DILexicalBlock(scope: !397, file: !1, line: 245, column: 7)
!418 = !DILocation(line: 245, column: 12, scope: !417)
!419 = !DILocation(line: 245, column: 15, scope: !417)
!420 = !DILocation(line: 245, column: 7, scope: !397)
!421 = !DILocation(line: 246, column: 16, scope: !417)
!422 = !DILocation(line: 246, column: 15, scope: !417)
!423 = !DILocation(line: 246, column: 13, scope: !417)
!424 = !DILocation(line: 246, column: 4, scope: !417)
!425 = !DILocation(line: 247, column: 2, scope: !397)
!426 = !DILocation(line: 238, column: 24, scope: !392)
!427 = !DILocation(line: 238, column: 2, scope: !392)
!428 = distinct !{!428, !394, !429, !186, !187}
!429 = !DILocation(line: 247, column: 2, scope: !389)
!430 = !DILocation(line: 249, column: 11, scope: !358)
!431 = !DILocation(line: 249, column: 3, scope: !358)
!432 = !DILocation(line: 249, column: 9, scope: !358)
!433 = !DILocation(line: 250, column: 7, scope: !434)
!434 = distinct !DILexicalBlock(scope: !358, file: !1, line: 250, column: 6)
!435 = !DILocation(line: 250, column: 6, scope: !358)
!436 = !DILocation(line: 251, column: 4, scope: !434)
!437 = !DILocation(line: 251, column: 8, scope: !434)
!438 = !DILocation(line: 251, column: 3, scope: !434)
!439 = !DILocation(line: 253, column: 3, scope: !440)
!440 = distinct !DILexicalBlock(scope: !434, file: !1, line: 252, column: 7)
!441 = !DILocation(line: 253, column: 8, scope: !440)
!442 = !DILocation(line: 253, column: 16, scope: !440)
!443 = !DILocation(line: 254, column: 10, scope: !440)
!444 = !DILocation(line: 254, column: 17, scope: !440)
!445 = !DILocation(line: 254, column: 15, scope: !440)
!446 = !DILocation(line: 254, column: 24, scope: !440)
!447 = !DILocation(line: 254, column: 4, scope: !440)
!448 = !DILocation(line: 254, column: 8, scope: !440)
!449 = !DILocation(line: 257, column: 9, scope: !450)
!450 = distinct !DILexicalBlock(scope: !440, file: !1, line: 257, column: 7)
!451 = !DILocation(line: 257, column: 8, scope: !450)
!452 = !DILocation(line: 257, column: 7, scope: !450)
!453 = !DILocation(line: 257, column: 13, scope: !450)
!454 = !DILocation(line: 257, column: 7, scope: !440)
!455 = !DILocation(line: 258, column: 6, scope: !456)
!456 = distinct !DILexicalBlock(scope: !450, file: !1, line: 257, column: 21)
!457 = !DILocation(line: 258, column: 10, scope: !456)
!458 = !DILocation(line: 259, column: 8, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !1, line: 259, column: 8)
!460 = !DILocation(line: 259, column: 13, scope: !459)
!461 = !DILocation(line: 259, column: 14, scope: !459)
!462 = !DILocation(line: 259, column: 18, scope: !459)
!463 = !DILocation(line: 259, column: 8, scope: !456)
!464 = !DILocation(line: 260, column: 5, scope: !459)
!465 = !DILocation(line: 260, column: 10, scope: !459)
!466 = !DILocation(line: 260, column: 11, scope: !459)
!467 = !DILocation(line: 260, column: 15, scope: !459)
!468 = !DILocation(line: 261, column: 3, scope: !456)
!469 = !DILocation(line: 263, column: 6, scope: !470)
!470 = distinct !DILexicalBlock(scope: !358, file: !1, line: 263, column: 6)
!471 = !DILocation(line: 263, column: 13, scope: !470)
!472 = !DILocation(line: 263, column: 16, scope: !470)
!473 = !DILocation(line: 263, column: 18, scope: !470)
!474 = !DILocation(line: 263, column: 22, scope: !470)
!475 = !DILocation(line: 263, column: 25, scope: !470)
!476 = !DILocation(line: 263, column: 30, scope: !470)
!477 = !DILocation(line: 263, column: 31, scope: !470)
!478 = !DILocation(line: 263, column: 35, scope: !470)
!479 = !DILocation(line: 263, column: 6, scope: !358)
!480 = !DILocation(line: 264, column: 3, scope: !470)
!481 = !DILocation(line: 264, column: 8, scope: !470)
!482 = !DILocation(line: 264, column: 9, scope: !470)
!483 = !DILocation(line: 264, column: 13, scope: !470)
!484 = !DILocation(line: 266, column: 6, scope: !485)
!485 = distinct !DILexicalBlock(scope: !358, file: !1, line: 266, column: 6)
!486 = !DILocation(line: 266, column: 11, scope: !485)
!487 = !DILocation(line: 266, column: 6, scope: !358)
!488 = !DILocation(line: 267, column: 3, scope: !489)
!489 = distinct !DILexicalBlock(scope: !485, file: !1, line: 266, column: 15)
!490 = !DILocation(line: 267, column: 8, scope: !489)
!491 = !DILocation(line: 267, column: 11, scope: !489)
!492 = !DILocation(line: 268, column: 11, scope: !489)
!493 = !DILocation(line: 268, column: 13, scope: !489)
!494 = !DILocation(line: 268, column: 8, scope: !489)
!495 = !DILocation(line: 269, column: 2, scope: !489)
!496 = !DILocation(line: 270, column: 11, scope: !485)
!497 = !DILocation(line: 270, column: 8, scope: !485)
!498 = !DILocation(line: 273, column: 21, scope: !358)
!499 = !DILocation(line: 273, column: 9, scope: !358)
!500 = !DILocation(line: 274, column: 1, scope: !358)
!501 = !DILocation(line: 273, column: 2, scope: !358)
!502 = !DISubprogram(name: "skip_spaces", scope: !347, file: !347, line: 112, type: !503, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!503 = !DISubroutineType(types: !504)
!504 = !{!11, !99}
!505 = !DISubprogram(name: "simple_strtol", scope: !95, file: !95, line: 146, type: !506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!506 = !DISubroutineType(types: !507)
!507 = !{!508, !99, !10, !5}
!508 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
