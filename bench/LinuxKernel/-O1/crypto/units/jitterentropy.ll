; ModuleID = 'crypto/jitterentropy.c'
source_filename = "crypto/jitterentropy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rand_data = type { ptr, i64, i64, i64, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.anon = type { i32, i32, i32, i32 }

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define hidden i32 @jent_read_entropy(ptr noundef %ec, ptr noundef %data, i32 noundef %len) #0 align 16 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %ec.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %tocopy = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !45, metadata !DIExpression()), !dbg !46
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !47, metadata !DIExpression()), !dbg !48
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata ptr %p, metadata !51, metadata !DIExpression()), !dbg !52
  %0 = load ptr, ptr %data.addr, align 8, !dbg !53
  store ptr %0, ptr %p, align 8, !dbg !52
  %1 = load ptr, ptr %ec.addr, align 8, !dbg !54
  %tobool = icmp ne ptr %1, null, !dbg !54
  br i1 %tobool, label %if.end, label %if.then, !dbg !56

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !57
  br label %return, !dbg !57

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !58

while.cond:                                       ; preds = %if.end20, %if.end
  %2 = load i32, ptr %len.addr, align 4, !dbg !59
  %cmp = icmp ugt i32 %2, 0, !dbg !60
  br i1 %cmp, label %while.body, label %while.end, !dbg !58

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata ptr %tocopy, metadata !61, metadata !DIExpression()), !dbg !63
  %3 = load ptr, ptr %ec.addr, align 8, !dbg !64
  call void @jent_gen_entropy(ptr noundef %3) #4, !dbg !65
  %4 = load ptr, ptr %ec.addr, align 8, !dbg !66
  %call = call i32 @jent_permanent_health_failure(ptr noundef %4) #4, !dbg !68
  %tobool1 = icmp ne i32 %call, 0, !dbg !68
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !69

if.then2:                                         ; preds = %while.body
  store i32 -3, ptr %retval, align 4, !dbg !70
  br label %return, !dbg !70

if.else:                                          ; preds = %while.body
  %5 = load ptr, ptr %ec.addr, align 8, !dbg !72
  %call3 = call i32 @jent_health_failure(ptr noundef %5) #4, !dbg !74
  %tobool4 = icmp ne i32 %call3, 0, !dbg !74
  br i1 %tobool4, label %if.then5, label %if.end10, !dbg !75

if.then5:                                         ; preds = %if.else
  %6 = load ptr, ptr %ec.addr, align 8, !dbg !76
  %hash_state = getelementptr inbounds %struct.rand_data, ptr %6, i32 0, i32 0, !dbg !79
  %7 = load ptr, ptr %hash_state, align 8, !dbg !79
  %call6 = call i32 @jent_entropy_init(ptr noundef %7) #4, !dbg !80
  %tobool7 = icmp ne i32 %call6, 0, !dbg !80
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !81

if.then8:                                         ; preds = %if.then5
  store i32 -3, ptr %retval, align 4, !dbg !82
  br label %return, !dbg !82

if.end9:                                          ; preds = %if.then5
  store i32 -2, ptr %retval, align 4, !dbg !83
  br label %return, !dbg !83

if.end10:                                         ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10
  %8 = load i32, ptr %len.addr, align 4, !dbg !84
  %cmp12 = icmp ult i32 32, %8, !dbg !86
  br i1 %cmp12, label %if.then13, label %if.else14, !dbg !87

if.then13:                                        ; preds = %if.end11
  store i32 32, ptr %tocopy, align 4, !dbg !88
  br label %if.end15, !dbg !89

if.else14:                                        ; preds = %if.end11
  %9 = load i32, ptr %len.addr, align 4, !dbg !90
  store i32 %9, ptr %tocopy, align 4, !dbg !91
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.then13
  %10 = load ptr, ptr %ec.addr, align 8, !dbg !92
  %hash_state16 = getelementptr inbounds %struct.rand_data, ptr %10, i32 0, i32 0, !dbg !94
  %11 = load ptr, ptr %hash_state16, align 8, !dbg !94
  %12 = load ptr, ptr %p, align 8, !dbg !95
  %13 = load i32, ptr %tocopy, align 4, !dbg !96
  %call17 = call i32 @jent_read_random_block(ptr noundef %11, ptr noundef %12, i32 noundef %13) #4, !dbg !97
  %tobool18 = icmp ne i32 %call17, 0, !dbg !97
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !98

if.then19:                                        ; preds = %if.end15
  store i32 -1, ptr %retval, align 4, !dbg !99
  br label %return, !dbg !99

if.end20:                                         ; preds = %if.end15
  %14 = load i32, ptr %tocopy, align 4, !dbg !100
  %15 = load i32, ptr %len.addr, align 4, !dbg !101
  %sub = sub i32 %15, %14, !dbg !101
  store i32 %sub, ptr %len.addr, align 4, !dbg !101
  %16 = load i32, ptr %tocopy, align 4, !dbg !102
  %17 = load ptr, ptr %p, align 8, !dbg !103
  %idx.ext = zext i32 %16 to i64, !dbg !103
  %add.ptr = getelementptr i8, ptr %17, i64 %idx.ext, !dbg !103
  store ptr %add.ptr, ptr %p, align 8, !dbg !103
  br label %while.cond, !dbg !58, !llvm.loop !104

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !107
  br label %return, !dbg !107

return:                                           ; preds = %while.end, %if.then19, %if.end9, %if.then8, %if.then2, %if.then
  %18 = load i32, ptr %retval, align 4, !dbg !108
  ret i32 %18, !dbg !108
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal void @jent_gen_entropy(ptr noundef %ec) #0 align 16 !dbg !109 {
entry:
  %ec.addr = alloca ptr, align 8
  %k = alloca i32, align 4
  %safety_factor = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata ptr %k, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 0, ptr %k, align 4, !dbg !115
  call void @llvm.dbg.declare(metadata ptr %safety_factor, metadata !116, metadata !DIExpression()), !dbg !117
  store i32 0, ptr %safety_factor, align 4, !dbg !117
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !118
  %call = call i32 @jent_measure_jitter(ptr noundef %0) #4, !dbg !119
  br label %while.cond, !dbg !120

while.cond:                                       ; preds = %if.end5, %if.then, %entry
  %1 = load ptr, ptr %ec.addr, align 8, !dbg !121
  %call1 = call i32 @jent_health_failure(ptr noundef %1) #4, !dbg !122
  %tobool = icmp ne i32 %call1, 0, !dbg !123
  %lnot = xor i1 %tobool, true, !dbg !123
  br i1 %lnot, label %while.body, label %while.end, !dbg !120

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %ec.addr, align 8, !dbg !124
  %call2 = call i32 @jent_measure_jitter(ptr noundef %2) #4, !dbg !127
  %tobool3 = icmp ne i32 %call2, 0, !dbg !127
  br i1 %tobool3, label %if.then, label %if.end, !dbg !128

if.then:                                          ; preds = %while.body
  br label %while.cond, !dbg !129, !llvm.loop !130

if.end:                                           ; preds = %while.body
  %3 = load i32, ptr %k, align 4, !dbg !132
  %inc = add i32 %3, 1, !dbg !132
  store i32 %inc, ptr %k, align 4, !dbg !132
  %4 = load i32, ptr %safety_factor, align 4, !dbg !134
  %add = add i32 256, %4, !dbg !135
  %5 = load ptr, ptr %ec.addr, align 8, !dbg !136
  %osr = getelementptr inbounds %struct.rand_data, ptr %5, i32 0, i32 4, !dbg !137
  %6 = load i32, ptr %osr, align 8, !dbg !137
  %mul = mul i32 %add, %6, !dbg !138
  %cmp = icmp uge i32 %inc, %mul, !dbg !139
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !140

if.then4:                                         ; preds = %if.end
  br label %while.end, !dbg !141

if.end5:                                          ; preds = %if.end
  br label %while.cond, !dbg !120, !llvm.loop !130

while.end:                                        ; preds = %if.then4, %while.cond
  ret void, !dbg !142
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal i32 @jent_permanent_health_failure(ptr noundef %ec) #0 align 16 !dbg !143 {
entry:
  %ec.addr = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !148
  %call = call i32 @jent_rct_permanent_failure(ptr noundef %0) #4, !dbg !149
  %1 = load ptr, ptr %ec.addr, align 8, !dbg !150
  %call1 = call i32 @jent_apt_permanent_failure(ptr noundef %1) #4, !dbg !151
  %or = or i32 %call, %call1, !dbg !152
  ret i32 %or, !dbg !153
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal i32 @jent_health_failure(ptr noundef %ec) #0 align 16 !dbg !154 {
entry:
  %ec.addr = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !155, metadata !DIExpression()), !dbg !156
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !157
  %call = call i32 @jent_rct_failure(ptr noundef %0) #4, !dbg !158
  %1 = load ptr, ptr %ec.addr, align 8, !dbg !159
  %call1 = call i32 @jent_apt_failure(ptr noundef %1) #4, !dbg !160
  %or = or i32 %call, %call1, !dbg !161
  ret i32 %or, !dbg !162
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define hidden i32 @jent_entropy_init(ptr noundef %hash_state) #0 align 16 !dbg !163 {
entry:
  %retval = alloca i32, align 4
  %hash_state.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %delta_sum = alloca i64, align 8
  %old_delta = alloca i64, align 8
  %nonstuck = alloca i32, align 4
  %time_backwards = alloca i32, align 4
  %count_mod = alloca i32, align 4
  %count_stuck = alloca i32, align 4
  %ec = alloca %struct.rand_data, align 8
  %time = alloca i64, align 8
  %time2 = alloca i64, align 8
  %delta = alloca i64, align 8
  %lowdelta = alloca i32, align 4
  %stuck = alloca i32, align 4
  store ptr %hash_state, ptr %hash_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hash_state.addr, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata ptr %i, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata ptr %delta_sum, metadata !170, metadata !DIExpression()), !dbg !171
  store i64 0, ptr %delta_sum, align 8, !dbg !171
  call void @llvm.dbg.declare(metadata ptr %old_delta, metadata !172, metadata !DIExpression()), !dbg !173
  store i64 0, ptr %old_delta, align 8, !dbg !173
  call void @llvm.dbg.declare(metadata ptr %nonstuck, metadata !174, metadata !DIExpression()), !dbg !175
  store i32 0, ptr %nonstuck, align 4, !dbg !175
  call void @llvm.dbg.declare(metadata ptr %time_backwards, metadata !176, metadata !DIExpression()), !dbg !177
  store i32 0, ptr %time_backwards, align 4, !dbg !177
  call void @llvm.dbg.declare(metadata ptr %count_mod, metadata !178, metadata !DIExpression()), !dbg !179
  store i32 0, ptr %count_mod, align 4, !dbg !179
  call void @llvm.dbg.declare(metadata ptr %count_stuck, metadata !180, metadata !DIExpression()), !dbg !181
  store i32 0, ptr %count_stuck, align 4, !dbg !181
  call void @llvm.dbg.declare(metadata ptr %ec, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.memset.p0.i64(ptr align 8 %ec, i8 0, i64 88, i1 false), !dbg !183
  %osr = getelementptr inbounds %struct.rand_data, ptr %ec, i32 0, i32 4, !dbg !184
  store i32 1, ptr %osr, align 8, !dbg !185
  %0 = load ptr, ptr %hash_state.addr, align 8, !dbg !186
  %hash_state1 = getelementptr inbounds %struct.rand_data, ptr %ec, i32 0, i32 0, !dbg !187
  store ptr %0, ptr %hash_state1, align 8, !dbg !188
  store i32 0, ptr %i, align 4, !dbg !189
  br label %for.cond, !dbg !191

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !192
  %cmp = icmp sgt i32 1124, %1, !dbg !194
  br i1 %cmp, label %for.body, label %for.end, !dbg !195

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata ptr %time, metadata !196, metadata !DIExpression()), !dbg !198
  store i64 0, ptr %time, align 8, !dbg !198
  call void @llvm.dbg.declare(metadata ptr %time2, metadata !199, metadata !DIExpression()), !dbg !200
  store i64 0, ptr %time2, align 8, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !201, metadata !DIExpression()), !dbg !202
  store i64 0, ptr %delta, align 8, !dbg !202
  call void @llvm.dbg.declare(metadata ptr %lowdelta, metadata !203, metadata !DIExpression()), !dbg !204
  store i32 0, ptr %lowdelta, align 4, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %stuck, metadata !205, metadata !DIExpression()), !dbg !206
  call void @jent_get_nstime(ptr noundef %time) #4, !dbg !207
  %2 = load i64, ptr %time, align 8, !dbg !208
  %prev_time = getelementptr inbounds %struct.rand_data, ptr %ec, i32 0, i32 1, !dbg !209
  store i64 %2, ptr %prev_time, align 8, !dbg !210
  %3 = load i64, ptr %time, align 8, !dbg !211
  %call = call i32 @jent_condition_data(ptr noundef %ec, i64 noundef %3, i32 noundef 0) #4, !dbg !212
  call void @jent_get_nstime(ptr noundef %time2) #4, !dbg !213
  %4 = load i64, ptr %time, align 8, !dbg !214
  %tobool = icmp ne i64 %4, 0, !dbg !214
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !216

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i64, ptr %time2, align 8, !dbg !217
  %tobool2 = icmp ne i64 %5, 0, !dbg !217
  br i1 %tobool2, label %if.end, label %if.then, !dbg !218

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 1, ptr %retval, align 4, !dbg !219
  br label %return, !dbg !219

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, ptr %time, align 8, !dbg !220
  %7 = load i64, ptr %time2, align 8, !dbg !221
  %call3 = call i64 @jent_delta(i64 noundef %6, i64 noundef %7) #4, !dbg !222
  store i64 %call3, ptr %delta, align 8, !dbg !223
  %8 = load i64, ptr %delta, align 8, !dbg !224
  %tobool4 = icmp ne i64 %8, 0, !dbg !224
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !226

if.then5:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !227
  br label %return, !dbg !227

if.end6:                                          ; preds = %if.end
  %9 = load i64, ptr %delta, align 8, !dbg !228
  %call7 = call i32 @jent_stuck(ptr noundef %ec, i64 noundef %9) #4, !dbg !229
  store i32 %call7, ptr %stuck, align 4, !dbg !230
  %10 = load i32, ptr %i, align 4, !dbg !231
  %cmp8 = icmp slt i32 %10, 100, !dbg !233
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !234

if.then9:                                         ; preds = %if.end6
  br label %for.inc, !dbg !235

if.end10:                                         ; preds = %if.end6
  %11 = load i32, ptr %stuck, align 4, !dbg !236
  %tobool11 = icmp ne i32 %11, 0, !dbg !236
  br i1 %tobool11, label %if.then12, label %if.else, !dbg !238

if.then12:                                        ; preds = %if.end10
  %12 = load i32, ptr %count_stuck, align 4, !dbg !239
  %inc = add i32 %12, 1, !dbg !239
  store i32 %inc, ptr %count_stuck, align 4, !dbg !239
  br label %if.end17, !dbg !240

if.else:                                          ; preds = %if.end10
  %13 = load i32, ptr %nonstuck, align 4, !dbg !241
  %inc13 = add i32 %13, 1, !dbg !241
  store i32 %inc13, ptr %nonstuck, align 4, !dbg !241
  %14 = load i32, ptr %nonstuck, align 4, !dbg !243
  %rem = urem i32 %14, 512, !dbg !245
  %cmp14 = icmp eq i32 %rem, 0, !dbg !246
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !247

if.then15:                                        ; preds = %if.else
  %15 = load i64, ptr %delta, align 8, !dbg !248
  %and = and i64 %15, 15, !dbg !250
  %conv = trunc i64 %and to i32, !dbg !248
  call void @jent_apt_reset(ptr noundef %ec, i32 noundef %conv) #4, !dbg !251
  br label %if.end16, !dbg !252

if.end16:                                         ; preds = %if.then15, %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then12
  %call18 = call i32 @jent_health_failure(ptr noundef %ec) #4, !dbg !253
  %tobool19 = icmp ne i32 %call18, 0, !dbg !253
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !255

if.then20:                                        ; preds = %if.end17
  store i32 9, ptr %retval, align 4, !dbg !256
  br label %return, !dbg !256

if.end21:                                         ; preds = %if.end17
  %16 = load i64, ptr %time2, align 8, !dbg !257
  %17 = load i64, ptr %time, align 8, !dbg !259
  %cmp22 = icmp ugt i64 %16, %17, !dbg !260
  br i1 %cmp22, label %if.end26, label %if.then24, !dbg !261

if.then24:                                        ; preds = %if.end21
  %18 = load i32, ptr %time_backwards, align 4, !dbg !262
  %inc25 = add i32 %18, 1, !dbg !262
  store i32 %inc25, ptr %time_backwards, align 4, !dbg !262
  br label %if.end26, !dbg !263

if.end26:                                         ; preds = %if.then24, %if.end21
  %19 = load i64, ptr %time2, align 8, !dbg !264
  %20 = load i64, ptr %time, align 8, !dbg !265
  %sub = sub i64 %19, %20, !dbg !266
  %conv27 = trunc i64 %sub to i32, !dbg !264
  store i32 %conv27, ptr %lowdelta, align 4, !dbg !267
  %21 = load i32, ptr %lowdelta, align 4, !dbg !268
  %rem28 = urem i32 %21, 100, !dbg !270
  %tobool29 = icmp ne i32 %rem28, 0, !dbg !270
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !271

if.then30:                                        ; preds = %if.end26
  %22 = load i32, ptr %count_mod, align 4, !dbg !272
  %inc31 = add i32 %22, 1, !dbg !272
  store i32 %inc31, ptr %count_mod, align 4, !dbg !272
  br label %if.end32, !dbg !273

if.end32:                                         ; preds = %if.then30, %if.end26
  %23 = load i64, ptr %delta, align 8, !dbg !274
  %24 = load i64, ptr %old_delta, align 8, !dbg !276
  %cmp33 = icmp ugt i64 %23, %24, !dbg !277
  br i1 %cmp33, label %if.then35, label %if.else37, !dbg !278

if.then35:                                        ; preds = %if.end32
  %25 = load i64, ptr %delta, align 8, !dbg !279
  %26 = load i64, ptr %old_delta, align 8, !dbg !280
  %sub36 = sub i64 %25, %26, !dbg !281
  %27 = load i64, ptr %delta_sum, align 8, !dbg !282
  %add = add i64 %27, %sub36, !dbg !282
  store i64 %add, ptr %delta_sum, align 8, !dbg !282
  br label %if.end40, !dbg !283

if.else37:                                        ; preds = %if.end32
  %28 = load i64, ptr %old_delta, align 8, !dbg !284
  %29 = load i64, ptr %delta, align 8, !dbg !285
  %sub38 = sub i64 %28, %29, !dbg !286
  %30 = load i64, ptr %delta_sum, align 8, !dbg !287
  %add39 = add i64 %30, %sub38, !dbg !287
  store i64 %add39, ptr %delta_sum, align 8, !dbg !287
  br label %if.end40

if.end40:                                         ; preds = %if.else37, %if.then35
  %31 = load i64, ptr %delta, align 8, !dbg !288
  store i64 %31, ptr %old_delta, align 8, !dbg !289
  br label %for.inc, !dbg !290

for.inc:                                          ; preds = %if.end40, %if.then9
  %32 = load i32, ptr %i, align 4, !dbg !291
  %inc41 = add i32 %32, 1, !dbg !291
  store i32 %inc41, ptr %i, align 4, !dbg !291
  br label %for.cond, !dbg !292, !llvm.loop !293

for.end:                                          ; preds = %for.cond
  %33 = load i32, ptr %time_backwards, align 4, !dbg !295
  %cmp42 = icmp sgt i32 %33, 3, !dbg !297
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !298

if.then44:                                        ; preds = %for.end
  store i32 3, ptr %retval, align 4, !dbg !299
  br label %return, !dbg !299

if.end45:                                         ; preds = %for.end
  %34 = load i64, ptr %delta_sum, align 8, !dbg !300
  %cmp46 = icmp ule i64 %34, 1, !dbg !302
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !303

if.then48:                                        ; preds = %if.end45
  store i32 5, ptr %retval, align 4, !dbg !304
  br label %return, !dbg !304

if.end49:                                         ; preds = %if.end45
  %35 = load i32, ptr %count_mod, align 4, !dbg !305
  %cmp50 = icmp slt i32 918, %35, !dbg !307
  br i1 %cmp50, label %if.then52, label %if.end53, !dbg !308

if.then52:                                        ; preds = %if.end49
  store i32 2, ptr %retval, align 4, !dbg !309
  br label %return, !dbg !309

if.end53:                                         ; preds = %if.end49
  %36 = load i32, ptr %count_stuck, align 4, !dbg !310
  %cmp54 = icmp slt i32 918, %36, !dbg !312
  br i1 %cmp54, label %if.then56, label %if.end57, !dbg !313

if.then56:                                        ; preds = %if.end53
  store i32 8, ptr %retval, align 4, !dbg !314
  br label %return, !dbg !314

if.end57:                                         ; preds = %if.end53
  store i32 0, ptr %retval, align 4, !dbg !315
  br label %return, !dbg !315

return:                                           ; preds = %if.end57, %if.then56, %if.then52, %if.then48, %if.then44, %if.then20, %if.then5, %if.then
  %37 = load i32, ptr %retval, align 4, !dbg !316
  ret i32 %37, !dbg !316
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @jent_read_random_block(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define hidden ptr @jent_entropy_collector_alloc(i32 noundef %osr, i32 noundef %flags, ptr noundef %hash_state) #0 align 16 !dbg !317 {
entry:
  %retval = alloca ptr, align 8
  %osr.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %hash_state.addr = alloca ptr, align 8
  %entropy_collector = alloca ptr, align 8
  store i32 %osr, ptr %osr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %osr.addr, metadata !320, metadata !DIExpression()), !dbg !321
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !322, metadata !DIExpression()), !dbg !323
  store ptr %hash_state, ptr %hash_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %hash_state.addr, metadata !324, metadata !DIExpression()), !dbg !325
  call void @llvm.dbg.declare(metadata ptr %entropy_collector, metadata !326, metadata !DIExpression()), !dbg !327
  %call = call ptr @jent_zalloc(i32 noundef 88) #4, !dbg !328
  store ptr %call, ptr %entropy_collector, align 8, !dbg !329
  %0 = load ptr, ptr %entropy_collector, align 8, !dbg !330
  %tobool = icmp ne ptr %0, null, !dbg !330
  br i1 %tobool, label %if.end, label %if.then, !dbg !332

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !333
  br label %return, !dbg !333

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !334
  %and = and i32 %1, 4, !dbg !336
  %tobool1 = icmp ne i32 %and, 0, !dbg !336
  br i1 %tobool1, label %if.end8, label %if.then2, !dbg !337

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @jent_zalloc(i32 noundef 2048) #4, !dbg !338
  %2 = load ptr, ptr %entropy_collector, align 8, !dbg !340
  %mem = getelementptr inbounds %struct.rand_data, ptr %2, i32 0, i32 5, !dbg !341
  store ptr %call3, ptr %mem, align 8, !dbg !342
  %3 = load ptr, ptr %entropy_collector, align 8, !dbg !343
  %mem4 = getelementptr inbounds %struct.rand_data, ptr %3, i32 0, i32 5, !dbg !345
  %4 = load ptr, ptr %mem4, align 8, !dbg !345
  %tobool5 = icmp ne ptr %4, null, !dbg !343
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !346

if.then6:                                         ; preds = %if.then2
  %5 = load ptr, ptr %entropy_collector, align 8, !dbg !347
  call void @jent_zfree(ptr noundef %5) #4, !dbg !349
  store ptr null, ptr %retval, align 8, !dbg !350
  br label %return, !dbg !350

if.end7:                                          ; preds = %if.then2
  %6 = load ptr, ptr %entropy_collector, align 8, !dbg !351
  %memblocksize = getelementptr inbounds %struct.rand_data, ptr %6, i32 0, i32 8, !dbg !352
  store i32 32, ptr %memblocksize, align 8, !dbg !353
  %7 = load ptr, ptr %entropy_collector, align 8, !dbg !354
  %memblocks = getelementptr inbounds %struct.rand_data, ptr %7, i32 0, i32 7, !dbg !355
  store i32 64, ptr %memblocks, align 4, !dbg !356
  %8 = load ptr, ptr %entropy_collector, align 8, !dbg !357
  %memaccessloops = getelementptr inbounds %struct.rand_data, ptr %8, i32 0, i32 9, !dbg !358
  store i32 128, ptr %memaccessloops, align 4, !dbg !359
  br label %if.end8, !dbg !360

if.end8:                                          ; preds = %if.end7, %if.end
  %9 = load i32, ptr %osr.addr, align 4, !dbg !361
  %cmp = icmp eq i32 %9, 0, !dbg !363
  br i1 %cmp, label %if.then9, label %if.end10, !dbg !364

if.then9:                                         ; preds = %if.end8
  store i32 1, ptr %osr.addr, align 4, !dbg !365
  br label %if.end10, !dbg !366

if.end10:                                         ; preds = %if.then9, %if.end8
  %10 = load i32, ptr %osr.addr, align 4, !dbg !367
  %11 = load ptr, ptr %entropy_collector, align 8, !dbg !368
  %osr11 = getelementptr inbounds %struct.rand_data, ptr %11, i32 0, i32 4, !dbg !369
  store i32 %10, ptr %osr11, align 8, !dbg !370
  %12 = load ptr, ptr %hash_state.addr, align 8, !dbg !371
  %13 = load ptr, ptr %entropy_collector, align 8, !dbg !372
  %hash_state12 = getelementptr inbounds %struct.rand_data, ptr %13, i32 0, i32 0, !dbg !373
  store ptr %12, ptr %hash_state12, align 8, !dbg !374
  %14 = load ptr, ptr %entropy_collector, align 8, !dbg !375
  call void @jent_gen_entropy(ptr noundef %14) #4, !dbg !376
  %15 = load ptr, ptr %entropy_collector, align 8, !dbg !377
  store ptr %15, ptr %retval, align 8, !dbg !378
  br label %return, !dbg !378

return:                                           ; preds = %if.end10, %if.then6, %if.then
  %16 = load ptr, ptr %retval, align 8, !dbg !379
  ret ptr %16, !dbg !379
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @jent_zalloc(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @jent_zfree(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define hidden void @jent_entropy_collector_free(ptr noundef %entropy_collector) #0 align 16 !dbg !380 {
entry:
  %entropy_collector.addr = alloca ptr, align 8
  store ptr %entropy_collector, ptr %entropy_collector.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entropy_collector.addr, metadata !381, metadata !DIExpression()), !dbg !382
  %0 = load ptr, ptr %entropy_collector.addr, align 8, !dbg !383
  %mem = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 5, !dbg !384
  %1 = load ptr, ptr %mem, align 8, !dbg !384
  call void @jent_zfree(ptr noundef %1) #4, !dbg !385
  %2 = load ptr, ptr %entropy_collector.addr, align 8, !dbg !386
  %mem1 = getelementptr inbounds %struct.rand_data, ptr %2, i32 0, i32 5, !dbg !387
  store ptr null, ptr %mem1, align 8, !dbg !388
  %3 = load ptr, ptr %entropy_collector.addr, align 8, !dbg !389
  call void @jent_zfree(ptr noundef %3) #4, !dbg !390
  ret void, !dbg !391
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @jent_get_nstime(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal i32 @jent_condition_data(ptr noundef %ec, i64 noundef %time, i32 noundef %stuck) #0 align 16 !dbg !392 {
entry:
  %ec.addr = alloca ptr, align 8
  %time.addr = alloca i64, align 8
  %stuck.addr = alloca i32, align 4
  %addtl = alloca %struct.anon, align 4
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !395, metadata !DIExpression()), !dbg !396
  store i64 %time, ptr %time.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %time.addr, metadata !397, metadata !DIExpression()), !dbg !398
  store i32 %stuck, ptr %stuck.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %stuck.addr, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata ptr %addtl, metadata !401, metadata !DIExpression()), !dbg !408
  %rct_count = getelementptr inbounds %struct.anon, ptr %addtl, i32 0, i32 0, !dbg !409
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !410
  %rct_count1 = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 10, !dbg !411
  %1 = load i32, ptr %rct_count1, align 8, !dbg !411
  store i32 %1, ptr %rct_count, align 4, !dbg !409
  %apt_observations = getelementptr inbounds %struct.anon, ptr %addtl, i32 0, i32 1, !dbg !409
  %2 = load ptr, ptr %ec.addr, align 8, !dbg !412
  %apt_observations2 = getelementptr inbounds %struct.rand_data, ptr %2, i32 0, i32 11, !dbg !413
  %3 = load i32, ptr %apt_observations2, align 4, !dbg !413
  store i32 %3, ptr %apt_observations, align 4, !dbg !409
  %apt_count = getelementptr inbounds %struct.anon, ptr %addtl, i32 0, i32 2, !dbg !409
  %4 = load ptr, ptr %ec.addr, align 8, !dbg !414
  %apt_count3 = getelementptr inbounds %struct.rand_data, ptr %4, i32 0, i32 12, !dbg !415
  %5 = load i32, ptr %apt_count3, align 8, !dbg !415
  store i32 %5, ptr %apt_count, align 4, !dbg !409
  %apt_base = getelementptr inbounds %struct.anon, ptr %addtl, i32 0, i32 3, !dbg !409
  %6 = load ptr, ptr %ec.addr, align 8, !dbg !416
  %apt_base4 = getelementptr inbounds %struct.rand_data, ptr %6, i32 0, i32 13, !dbg !417
  %7 = load i32, ptr %apt_base4, align 4, !dbg !417
  store i32 %7, ptr %apt_base, align 4, !dbg !409
  %8 = load ptr, ptr %ec.addr, align 8, !dbg !418
  %hash_state = getelementptr inbounds %struct.rand_data, ptr %8, i32 0, i32 0, !dbg !419
  %9 = load ptr, ptr %hash_state, align 8, !dbg !419
  %10 = load i64, ptr %time.addr, align 8, !dbg !420
  %11 = load i32, ptr %stuck.addr, align 4, !dbg !421
  %call = call i32 @jent_hash_time(ptr noundef %9, i64 noundef %10, ptr noundef %addtl, i32 noundef 16, i64 noundef 8, i32 noundef %11) #4, !dbg !422
  ret i32 %call, !dbg !423
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal i64 @jent_delta(i64 noundef %prev, i64 noundef %next) #0 align 16 !dbg !424 {
entry:
  %prev.addr = alloca i64, align 8
  %next.addr = alloca i64, align 8
  store i64 %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !427, metadata !DIExpression()), !dbg !428
  store i64 %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !429, metadata !DIExpression()), !dbg !430
  %0 = load i64, ptr %prev.addr, align 8, !dbg !431
  %1 = load i64, ptr %next.addr, align 8, !dbg !432
  %cmp = icmp ult i64 %0, %1, !dbg !433
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !434

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %next.addr, align 8, !dbg !435
  %3 = load i64, ptr %prev.addr, align 8, !dbg !436
  %sub = sub i64 %2, %3, !dbg !437
  br label %cond.end, !dbg !434

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %prev.addr, align 8, !dbg !438
  %sub1 = sub i64 -1, %4, !dbg !439
  %add = add i64 %sub1, 1, !dbg !440
  %5 = load i64, ptr %next.addr, align 8, !dbg !441
  %add2 = add i64 %add, %5, !dbg !442
  br label %cond.end, !dbg !434

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ %add2, %cond.false ], !dbg !434
  ret i64 %cond, !dbg !443
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal i32 @jent_stuck(ptr noundef %ec, i64 noundef %current_delta) #0 align 16 !dbg !444 {
entry:
  %retval = alloca i32, align 4
  %ec.addr = alloca ptr, align 8
  %current_delta.addr = alloca i64, align 8
  %delta2 = alloca i64, align 8
  %delta3 = alloca i64, align 8
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !447, metadata !DIExpression()), !dbg !448
  store i64 %current_delta, ptr %current_delta.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %current_delta.addr, metadata !449, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata ptr %delta2, metadata !451, metadata !DIExpression()), !dbg !452
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !453
  %last_delta = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 2, !dbg !454
  %1 = load i64, ptr %last_delta, align 8, !dbg !454
  %2 = load i64, ptr %current_delta.addr, align 8, !dbg !455
  %call = call i64 @jent_delta(i64 noundef %1, i64 noundef %2) #4, !dbg !456
  store i64 %call, ptr %delta2, align 8, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %delta3, metadata !457, metadata !DIExpression()), !dbg !458
  %3 = load ptr, ptr %ec.addr, align 8, !dbg !459
  %last_delta2 = getelementptr inbounds %struct.rand_data, ptr %3, i32 0, i32 3, !dbg !460
  %4 = load i64, ptr %last_delta2, align 8, !dbg !460
  %5 = load i64, ptr %delta2, align 8, !dbg !461
  %call1 = call i64 @jent_delta(i64 noundef %4, i64 noundef %5) #4, !dbg !462
  store i64 %call1, ptr %delta3, align 8, !dbg !458
  %6 = load i64, ptr %current_delta.addr, align 8, !dbg !463
  %7 = load ptr, ptr %ec.addr, align 8, !dbg !464
  %last_delta3 = getelementptr inbounds %struct.rand_data, ptr %7, i32 0, i32 2, !dbg !465
  store i64 %6, ptr %last_delta3, align 8, !dbg !466
  %8 = load i64, ptr %delta2, align 8, !dbg !467
  %9 = load ptr, ptr %ec.addr, align 8, !dbg !468
  %last_delta24 = getelementptr inbounds %struct.rand_data, ptr %9, i32 0, i32 3, !dbg !469
  store i64 %8, ptr %last_delta24, align 8, !dbg !470
  %10 = load ptr, ptr %ec.addr, align 8, !dbg !471
  %11 = load i64, ptr %current_delta.addr, align 8, !dbg !472
  %conv = trunc i64 %11 to i32, !dbg !472
  call void @jent_apt_insert(ptr noundef %10, i32 noundef %conv) #4, !dbg !473
  %12 = load i64, ptr %current_delta.addr, align 8, !dbg !474
  %tobool = icmp ne i64 %12, 0, !dbg !474
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !476

lor.lhs.false:                                    ; preds = %entry
  %13 = load i64, ptr %delta2, align 8, !dbg !477
  %tobool5 = icmp ne i64 %13, 0, !dbg !477
  br i1 %tobool5, label %lor.lhs.false6, label %if.then, !dbg !478

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %14 = load i64, ptr %delta3, align 8, !dbg !479
  %tobool7 = icmp ne i64 %14, 0, !dbg !479
  br i1 %tobool7, label %if.end, label %if.then, !dbg !480

if.then:                                          ; preds = %lor.lhs.false6, %lor.lhs.false, %entry
  %15 = load ptr, ptr %ec.addr, align 8, !dbg !481
  call void @jent_rct_insert(ptr noundef %15, i32 noundef 1) #4, !dbg !483
  store i32 1, ptr %retval, align 4, !dbg !484
  br label %return, !dbg !484

if.end:                                           ; preds = %lor.lhs.false6
  %16 = load ptr, ptr %ec.addr, align 8, !dbg !485
  call void @jent_rct_insert(ptr noundef %16, i32 noundef 0) #4, !dbg !486
  store i32 0, ptr %retval, align 4, !dbg !487
  br label %return, !dbg !487

return:                                           ; preds = %if.end, %if.then
  %17 = load i32, ptr %retval, align 4, !dbg !488
  ret i32 %17, !dbg !488
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal void @jent_apt_reset(ptr noundef %ec, i32 noundef %delta_masked) #0 align 16 !dbg !489 {
entry:
  %ec.addr = alloca ptr, align 8
  %delta_masked.addr = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !492, metadata !DIExpression()), !dbg !493
  store i32 %delta_masked, ptr %delta_masked.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %delta_masked.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !496
  %apt_count = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 12, !dbg !497
  store i32 0, ptr %apt_count, align 8, !dbg !498
  %1 = load i32, ptr %delta_masked.addr, align 4, !dbg !499
  %2 = load ptr, ptr %ec.addr, align 8, !dbg !500
  %apt_base = getelementptr inbounds %struct.rand_data, ptr %2, i32 0, i32 13, !dbg !501
  store i32 %1, ptr %apt_base, align 4, !dbg !502
  %3 = load ptr, ptr %ec.addr, align 8, !dbg !503
  %apt_observations = getelementptr inbounds %struct.rand_data, ptr %3, i32 0, i32 11, !dbg !504
  store i32 0, ptr %apt_observations, align 4, !dbg !505
  ret void, !dbg !506
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal i32 @jent_measure_jitter(ptr noundef %ec) #0 align 16 !dbg !507 {
entry:
  %ec.addr = alloca ptr, align 8
  %time = alloca i64, align 8
  %current_delta = alloca i64, align 8
  %stuck = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !508, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.declare(metadata ptr %time, metadata !510, metadata !DIExpression()), !dbg !511
  store i64 0, ptr %time, align 8, !dbg !511
  call void @llvm.dbg.declare(metadata ptr %current_delta, metadata !512, metadata !DIExpression()), !dbg !513
  store i64 0, ptr %current_delta, align 8, !dbg !513
  call void @llvm.dbg.declare(metadata ptr %stuck, metadata !514, metadata !DIExpression()), !dbg !515
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !516
  call void @jent_memaccess(ptr noundef %0, i64 noundef 0) #4, !dbg !517
  call void @jent_get_nstime(ptr noundef %time) #4, !dbg !518
  %1 = load ptr, ptr %ec.addr, align 8, !dbg !519
  %prev_time = getelementptr inbounds %struct.rand_data, ptr %1, i32 0, i32 1, !dbg !520
  %2 = load i64, ptr %prev_time, align 8, !dbg !520
  %3 = load i64, ptr %time, align 8, !dbg !521
  %call = call i64 @jent_delta(i64 noundef %2, i64 noundef %3) #4, !dbg !522
  store i64 %call, ptr %current_delta, align 8, !dbg !523
  %4 = load i64, ptr %time, align 8, !dbg !524
  %5 = load ptr, ptr %ec.addr, align 8, !dbg !525
  %prev_time1 = getelementptr inbounds %struct.rand_data, ptr %5, i32 0, i32 1, !dbg !526
  store i64 %4, ptr %prev_time1, align 8, !dbg !527
  %6 = load ptr, ptr %ec.addr, align 8, !dbg !528
  %7 = load i64, ptr %current_delta, align 8, !dbg !529
  %call2 = call i32 @jent_stuck(ptr noundef %6, i64 noundef %7) #4, !dbg !530
  store i32 %call2, ptr %stuck, align 4, !dbg !531
  %8 = load ptr, ptr %ec.addr, align 8, !dbg !532
  %9 = load i64, ptr %current_delta, align 8, !dbg !534
  %10 = load i32, ptr %stuck, align 4, !dbg !535
  %call3 = call i32 @jent_condition_data(ptr noundef %8, i64 noundef %9, i32 noundef %10) #4, !dbg !536
  %tobool = icmp ne i32 %call3, 0, !dbg !536
  br i1 %tobool, label %if.then, label %if.end, !dbg !537

if.then:                                          ; preds = %entry
  store i32 1, ptr %stuck, align 4, !dbg !538
  br label %if.end, !dbg !539

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %stuck, align 4, !dbg !540
  ret i32 %11, !dbg !541
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal void @jent_memaccess(ptr noundef %ec, i64 noundef %loop_cnt) #0 align 16 !dbg !542 {
entry:
  %ec.addr = alloca ptr, align 8
  %loop_cnt.addr = alloca i64, align 8
  %wrap = alloca i32, align 4
  %i = alloca i64, align 8
  %acc_loop_cnt = alloca i64, align 8
  %tmpval = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !545, metadata !DIExpression()), !dbg !546
  store i64 %loop_cnt, ptr %loop_cnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %loop_cnt.addr, metadata !547, metadata !DIExpression()), !dbg !548
  call void @llvm.dbg.declare(metadata ptr %wrap, metadata !549, metadata !DIExpression()), !dbg !550
  store i32 0, ptr %wrap, align 4, !dbg !550
  call void @llvm.dbg.declare(metadata ptr %i, metadata !551, metadata !DIExpression()), !dbg !552
  store i64 0, ptr %i, align 8, !dbg !552
  call void @llvm.dbg.declare(metadata ptr %acc_loop_cnt, metadata !553, metadata !DIExpression()), !dbg !554
  %call = call i64 @jent_loop_shuffle(i32 noundef 7, i32 noundef 0) #4, !dbg !555
  store i64 %call, ptr %acc_loop_cnt, align 8, !dbg !554
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !556
  %cmp = icmp eq ptr null, %0, !dbg !558
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !559

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %ec.addr, align 8, !dbg !560
  %mem = getelementptr inbounds %struct.rand_data, ptr %1, i32 0, i32 5, !dbg !561
  %2 = load ptr, ptr %mem, align 8, !dbg !561
  %cmp1 = icmp eq ptr null, %2, !dbg !562
  br i1 %cmp1, label %if.then, label %if.end, !dbg !563

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %for.end, !dbg !564

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %ec.addr, align 8, !dbg !565
  %memblocksize = getelementptr inbounds %struct.rand_data, ptr %3, i32 0, i32 8, !dbg !566
  %4 = load i32, ptr %memblocksize, align 8, !dbg !566
  %5 = load ptr, ptr %ec.addr, align 8, !dbg !567
  %memblocks = getelementptr inbounds %struct.rand_data, ptr %5, i32 0, i32 7, !dbg !568
  %6 = load i32, ptr %memblocks, align 4, !dbg !568
  %mul = mul i32 %4, %6, !dbg !569
  store i32 %mul, ptr %wrap, align 4, !dbg !570
  %7 = load i64, ptr %loop_cnt.addr, align 8, !dbg !571
  %tobool = icmp ne i64 %7, 0, !dbg !571
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !573

if.then2:                                         ; preds = %if.end
  %8 = load i64, ptr %loop_cnt.addr, align 8, !dbg !574
  store i64 %8, ptr %acc_loop_cnt, align 8, !dbg !575
  br label %if.end3, !dbg !576

if.end3:                                          ; preds = %if.then2, %if.end
  store i64 0, ptr %i, align 8, !dbg !577
  br label %for.cond, !dbg !579

for.cond:                                         ; preds = %for.inc, %if.end3
  %9 = load i64, ptr %i, align 8, !dbg !580
  %10 = load ptr, ptr %ec.addr, align 8, !dbg !582
  %memaccessloops = getelementptr inbounds %struct.rand_data, ptr %10, i32 0, i32 9, !dbg !583
  %11 = load i32, ptr %memaccessloops, align 4, !dbg !583
  %conv = zext i32 %11 to i64, !dbg !582
  %12 = load i64, ptr %acc_loop_cnt, align 8, !dbg !584
  %add = add i64 %conv, %12, !dbg !585
  %cmp4 = icmp ult i64 %9, %add, !dbg !586
  br i1 %cmp4, label %for.body, label %for.end, !dbg !587

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata ptr %tmpval, metadata !588, metadata !DIExpression()), !dbg !590
  %13 = load ptr, ptr %ec.addr, align 8, !dbg !591
  %mem6 = getelementptr inbounds %struct.rand_data, ptr %13, i32 0, i32 5, !dbg !592
  %14 = load ptr, ptr %mem6, align 8, !dbg !592
  %15 = load ptr, ptr %ec.addr, align 8, !dbg !593
  %memlocation = getelementptr inbounds %struct.rand_data, ptr %15, i32 0, i32 6, !dbg !594
  %16 = load i32, ptr %memlocation, align 8, !dbg !594
  %idx.ext = zext i32 %16 to i64, !dbg !595
  %add.ptr = getelementptr i8, ptr %14, i64 %idx.ext, !dbg !595
  store ptr %add.ptr, ptr %tmpval, align 8, !dbg !590
  %17 = load ptr, ptr %tmpval, align 8, !dbg !596
  %18 = load i8, ptr %17, align 1, !dbg !597
  %conv7 = zext i8 %18 to i32, !dbg !597
  %add8 = add i32 %conv7, 1, !dbg !598
  %and = and i32 %add8, 255, !dbg !599
  %conv9 = trunc i32 %and to i8, !dbg !600
  %19 = load ptr, ptr %tmpval, align 8, !dbg !601
  store i8 %conv9, ptr %19, align 1, !dbg !602
  %20 = load ptr, ptr %ec.addr, align 8, !dbg !603
  %memlocation10 = getelementptr inbounds %struct.rand_data, ptr %20, i32 0, i32 6, !dbg !604
  %21 = load i32, ptr %memlocation10, align 8, !dbg !604
  %22 = load ptr, ptr %ec.addr, align 8, !dbg !605
  %memblocksize11 = getelementptr inbounds %struct.rand_data, ptr %22, i32 0, i32 8, !dbg !606
  %23 = load i32, ptr %memblocksize11, align 8, !dbg !606
  %add12 = add i32 %21, %23, !dbg !607
  %sub = sub i32 %add12, 1, !dbg !608
  %24 = load ptr, ptr %ec.addr, align 8, !dbg !609
  %memlocation13 = getelementptr inbounds %struct.rand_data, ptr %24, i32 0, i32 6, !dbg !610
  store i32 %sub, ptr %memlocation13, align 8, !dbg !611
  %25 = load ptr, ptr %ec.addr, align 8, !dbg !612
  %memlocation14 = getelementptr inbounds %struct.rand_data, ptr %25, i32 0, i32 6, !dbg !613
  %26 = load i32, ptr %memlocation14, align 8, !dbg !613
  %27 = load i32, ptr %wrap, align 4, !dbg !614
  %rem = urem i32 %26, %27, !dbg !615
  %28 = load ptr, ptr %ec.addr, align 8, !dbg !616
  %memlocation15 = getelementptr inbounds %struct.rand_data, ptr %28, i32 0, i32 6, !dbg !617
  store i32 %rem, ptr %memlocation15, align 8, !dbg !618
  br label %for.inc, !dbg !619

for.inc:                                          ; preds = %for.body
  %29 = load i64, ptr %i, align 8, !dbg !620
  %inc = add i64 %29, 1, !dbg !620
  store i64 %inc, ptr %i, align 8, !dbg !620
  br label %for.cond, !dbg !621, !llvm.loop !622

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !624
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal i64 @jent_loop_shuffle(i32 noundef %bits, i32 noundef %min) #0 align 16 !dbg !625 {
entry:
  %bits.addr = alloca i32, align 4
  %min.addr = alloca i32, align 4
  %time = alloca i64, align 8
  %shuffle = alloca i64, align 8
  %i = alloca i32, align 4
  %mask = alloca i32, align 4
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !628, metadata !DIExpression()), !dbg !629
  store i32 %min, ptr %min.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !630, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.declare(metadata ptr %time, metadata !632, metadata !DIExpression()), !dbg !633
  store i64 0, ptr %time, align 8, !dbg !633
  call void @llvm.dbg.declare(metadata ptr %shuffle, metadata !634, metadata !DIExpression()), !dbg !635
  store i64 0, ptr %shuffle, align 8, !dbg !635
  call void @llvm.dbg.declare(metadata ptr %i, metadata !636, metadata !DIExpression()), !dbg !637
  store i32 0, ptr %i, align 4, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !638, metadata !DIExpression()), !dbg !639
  %0 = load i32, ptr %bits.addr, align 4, !dbg !640
  %shl = shl i32 1, %0, !dbg !641
  %sub = sub i32 %shl, 1, !dbg !642
  store i32 %sub, ptr %mask, align 4, !dbg !639
  call void @jent_get_nstime(ptr noundef %time) #4, !dbg !643
  store i32 0, ptr %i, align 4, !dbg !644
  br label %for.cond, !dbg !646

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %bits.addr, align 4, !dbg !647
  %add = add i32 256, %1, !dbg !649
  %sub1 = sub i32 %add, 1, !dbg !650
  %2 = load i32, ptr %bits.addr, align 4, !dbg !651
  %div = udiv i32 %sub1, %2, !dbg !652
  %3 = load i32, ptr %i, align 4, !dbg !653
  %cmp = icmp ugt i32 %div, %3, !dbg !654
  br i1 %cmp, label %for.body, label %for.end, !dbg !655

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %time, align 8, !dbg !656
  %5 = load i32, ptr %mask, align 4, !dbg !658
  %conv = zext i32 %5 to i64, !dbg !658
  %and = and i64 %4, %conv, !dbg !659
  %6 = load i64, ptr %shuffle, align 8, !dbg !660
  %xor = xor i64 %6, %and, !dbg !660
  store i64 %xor, ptr %shuffle, align 8, !dbg !660
  %7 = load i64, ptr %time, align 8, !dbg !661
  %8 = load i32, ptr %bits.addr, align 4, !dbg !662
  %sh_prom = zext i32 %8 to i64, !dbg !663
  %shr = lshr i64 %7, %sh_prom, !dbg !663
  store i64 %shr, ptr %time, align 8, !dbg !664
  br label %for.inc, !dbg !665

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !666
  %inc = add i32 %9, 1, !dbg !666
  store i32 %inc, ptr %i, align 4, !dbg !666
  br label %for.cond, !dbg !667, !llvm.loop !668

for.end:                                          ; preds = %for.cond
  %10 = load i64, ptr %shuffle, align 8, !dbg !670
  %11 = load i32, ptr %min.addr, align 4, !dbg !671
  %shl2 = shl i32 1, %11, !dbg !672
  %conv3 = sext i32 %shl2 to i64, !dbg !673
  %add4 = add i64 %10, %conv3, !dbg !674
  ret i64 %add4, !dbg !675
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal i32 @jent_rct_permanent_failure(ptr noundef %ec) #0 align 16 !dbg !676 {
entry:
  %ec.addr = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !677, metadata !DIExpression()), !dbg !678
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !679
  %rct_count = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 10, !dbg !680
  %1 = load i32, ptr %rct_count, align 8, !dbg !680
  %cmp = icmp uge i32 %1, 60, !dbg !681
  %2 = zext i1 %cmp to i64, !dbg !682
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !682
  ret i32 %cond, !dbg !683
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal i32 @jent_apt_permanent_failure(ptr noundef %ec) #0 align 16 !dbg !684 {
entry:
  %ec.addr = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !685, metadata !DIExpression()), !dbg !686
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !687
  %apt_count = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 12, !dbg !688
  %1 = load i32, ptr %apt_count, align 8, !dbg !688
  %cmp = icmp uge i32 %1, 355, !dbg !689
  %2 = zext i1 %cmp to i64, !dbg !690
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !690
  ret i32 %cond, !dbg !691
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal i32 @jent_rct_failure(ptr noundef %ec) #0 align 16 !dbg !692 {
entry:
  %ec.addr = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !693, metadata !DIExpression()), !dbg !694
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !695
  %rct_count = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 10, !dbg !696
  %1 = load i32, ptr %rct_count, align 8, !dbg !696
  %cmp = icmp uge i32 %1, 30, !dbg !697
  %2 = zext i1 %cmp to i64, !dbg !698
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !698
  ret i32 %cond, !dbg !699
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal i32 @jent_apt_failure(ptr noundef %ec) #0 align 16 !dbg !700 {
entry:
  %ec.addr = alloca ptr, align 8
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !701, metadata !DIExpression()), !dbg !702
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !703
  %apt_count = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 12, !dbg !704
  %1 = load i32, ptr %apt_count, align 8, !dbg !704
  %cmp = icmp uge i32 %1, 325, !dbg !705
  %2 = zext i1 %cmp to i64, !dbg !706
  %cond = select i1 %cmp, i32 1, i32 0, !dbg !706
  ret i32 %cond, !dbg !707
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @jent_hash_time(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal void @jent_apt_insert(ptr noundef %ec, i32 noundef %delta_masked) #0 align 16 !dbg !708 {
entry:
  %ec.addr = alloca ptr, align 8
  %delta_masked.addr = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !709, metadata !DIExpression()), !dbg !710
  store i32 %delta_masked, ptr %delta_masked.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %delta_masked.addr, metadata !711, metadata !DIExpression()), !dbg !712
  %0 = load ptr, ptr %ec.addr, align 8, !dbg !713
  %apt_base_set = getelementptr inbounds %struct.rand_data, ptr %0, i32 0, i32 14, !dbg !715
  %bf.load = load i8, ptr %apt_base_set, align 8, !dbg !715
  %bf.clear = and i8 %bf.load, 1, !dbg !715
  %bf.cast = zext i8 %bf.clear to i32, !dbg !715
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !713
  br i1 %tobool, label %if.end, label %if.then, !dbg !716

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %delta_masked.addr, align 4, !dbg !717
  %2 = load ptr, ptr %ec.addr, align 8, !dbg !719
  %apt_base = getelementptr inbounds %struct.rand_data, ptr %2, i32 0, i32 13, !dbg !720
  store i32 %1, ptr %apt_base, align 4, !dbg !721
  %3 = load ptr, ptr %ec.addr, align 8, !dbg !722
  %apt_base_set1 = getelementptr inbounds %struct.rand_data, ptr %3, i32 0, i32 14, !dbg !723
  %bf.load2 = load i8, ptr %apt_base_set1, align 8, !dbg !724
  %bf.clear3 = and i8 %bf.load2, -2, !dbg !724
  %bf.set = or i8 %bf.clear3, 1, !dbg !724
  store i8 %bf.set, ptr %apt_base_set1, align 8, !dbg !724
  br label %if.end11, !dbg !725

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %delta_masked.addr, align 4, !dbg !726
  %5 = load ptr, ptr %ec.addr, align 8, !dbg !728
  %apt_base4 = getelementptr inbounds %struct.rand_data, ptr %5, i32 0, i32 13, !dbg !729
  %6 = load i32, ptr %apt_base4, align 4, !dbg !729
  %cmp = icmp eq i32 %4, %6, !dbg !730
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !731

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %ec.addr, align 8, !dbg !732
  %apt_count = getelementptr inbounds %struct.rand_data, ptr %7, i32 0, i32 12, !dbg !733
  %8 = load i32, ptr %apt_count, align 8, !dbg !734
  %inc = add i32 %8, 1, !dbg !734
  store i32 %inc, ptr %apt_count, align 8, !dbg !734
  br label %if.end6, !dbg !732

if.end6:                                          ; preds = %if.then5, %if.end
  %9 = load ptr, ptr %ec.addr, align 8, !dbg !735
  %apt_observations = getelementptr inbounds %struct.rand_data, ptr %9, i32 0, i32 11, !dbg !736
  %10 = load i32, ptr %apt_observations, align 4, !dbg !737
  %inc7 = add i32 %10, 1, !dbg !737
  store i32 %inc7, ptr %apt_observations, align 4, !dbg !737
  %11 = load ptr, ptr %ec.addr, align 8, !dbg !738
  %apt_observations8 = getelementptr inbounds %struct.rand_data, ptr %11, i32 0, i32 11, !dbg !740
  %12 = load i32, ptr %apt_observations8, align 4, !dbg !740
  %cmp9 = icmp uge i32 %12, 512, !dbg !741
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !742

if.then10:                                        ; preds = %if.end6
  %13 = load ptr, ptr %ec.addr, align 8, !dbg !743
  %14 = load i32, ptr %delta_masked.addr, align 4, !dbg !744
  call void @jent_apt_reset(ptr noundef %13, i32 noundef %14) #4, !dbg !745
  br label %if.end11, !dbg !745

if.end11:                                         ; preds = %if.then, %if.then10, %if.end6
  ret void, !dbg !746
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong
define internal void @jent_rct_insert(ptr noundef %ec, i32 noundef %stuck) #0 align 16 !dbg !747 {
entry:
  %ec.addr = alloca ptr, align 8
  %stuck.addr = alloca i32, align 4
  store ptr %ec, ptr %ec.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ec.addr, metadata !750, metadata !DIExpression()), !dbg !751
  store i32 %stuck, ptr %stuck.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %stuck.addr, metadata !752, metadata !DIExpression()), !dbg !753
  %0 = load i32, ptr %stuck.addr, align 4, !dbg !754
  %tobool = icmp ne i32 %0, 0, !dbg !754
  br i1 %tobool, label %if.then, label %if.else, !dbg !756

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ec.addr, align 8, !dbg !757
  %rct_count = getelementptr inbounds %struct.rand_data, ptr %1, i32 0, i32 10, !dbg !759
  %2 = load i32, ptr %rct_count, align 8, !dbg !760
  %inc = add i32 %2, 1, !dbg !760
  store i32 %inc, ptr %rct_count, align 8, !dbg !760
  br label %if.end, !dbg !761

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %ec.addr, align 8, !dbg !762
  %rct_count1 = getelementptr inbounds %struct.rand_data, ptr %3, i32 0, i32 10, !dbg !764
  store i32 0, ptr %rct_count1, align 8, !dbg !765
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !766
}

attributes #0 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid optnone sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF crypto/.jitterentropy.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -O0 -D KBUILD_MODFILE=\22crypto/jitterentropy_rng\22 -D KBUILD_BASENAME=\22jitterentropy\22 -D KBUILD_MODNAME=\22jitterentropy_rng\22 -D __KBUILD_MODNAME=kmod_jitterentropy_rng -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o crypto/jitterentropy.ll crypto/jitterentropy.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "crypto/jitterentropy.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8684cdb540b4e2a324d95e0ab740c30")
!2 = !{!3, !4, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !1, line: 60, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !1, line: 57, baseType: !8)
!8 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 8, !"cf-protection-branch", i32 1}
!13 = !{i32 4, !"function_return_thunk_extern", i32 1}
!14 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!15 = !{i32 1, !"Code Model", i32 2}
!16 = !{i32 1, !"override-stack-alignment", i32 8}
!17 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!18 = distinct !DISubprogram(name: "jent_read_entropy", scope: !1, file: !1, line: 531, type: !19, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !22, !34, !32}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rand_data", file: !1, line: 64, size: 704, elements: !24)
!24 = !{!25, !26, !27, !28, !31, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "hash_state", scope: !23, file: !1, line: 71, baseType: !3, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "prev_time", scope: !23, file: !1, line: 72, baseType: !7, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "last_delta", scope: !23, file: !1, line: 73, baseType: !7, size: 64, offset: 128)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "last_delta2", scope: !23, file: !1, line: 74, baseType: !29, size: 64, offset: 192)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !1, line: 58, baseType: !30)
!30 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "osr", scope: !23, file: !1, line: 75, baseType: !32, size: 32, offset: 256)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !23, file: !1, line: 80, baseType: !34, size: 64, offset: 320)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "memlocation", scope: !23, file: !1, line: 82, baseType: !32, size: 32, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "memblocks", scope: !23, file: !1, line: 83, baseType: !32, size: 32, offset: 416)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "memblocksize", scope: !23, file: !1, line: 84, baseType: !32, size: 32, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "memaccessloops", scope: !23, file: !1, line: 85, baseType: !32, size: 32, offset: 480)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "rct_count", scope: !23, file: !1, line: 89, baseType: !32, size: 32, offset: 512)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "apt_observations", scope: !23, file: !1, line: 105, baseType: !32, size: 32, offset: 544)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "apt_count", scope: !23, file: !1, line: 106, baseType: !32, size: 32, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "apt_base", scope: !23, file: !1, line: 107, baseType: !32, size: 32, offset: 608)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "apt_base_set", scope: !23, file: !1, line: 108, baseType: !32, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!44 = !{}
!45 = !DILocalVariable(name: "ec", arg: 1, scope: !18, file: !1, line: 531, type: !22)
!46 = !DILocation(line: 531, column: 41, scope: !18)
!47 = !DILocalVariable(name: "data", arg: 2, scope: !18, file: !1, line: 531, type: !34)
!48 = !DILocation(line: 531, column: 60, scope: !18)
!49 = !DILocalVariable(name: "len", arg: 3, scope: !18, file: !1, line: 532, type: !32)
!50 = !DILocation(line: 532, column: 22, scope: !18)
!51 = !DILocalVariable(name: "p", scope: !18, file: !1, line: 534, type: !34)
!52 = !DILocation(line: 534, column: 17, scope: !18)
!53 = !DILocation(line: 534, column: 21, scope: !18)
!54 = !DILocation(line: 536, column: 7, scope: !55)
!55 = distinct !DILexicalBlock(scope: !18, file: !1, line: 536, column: 6)
!56 = !DILocation(line: 536, column: 6, scope: !18)
!57 = !DILocation(line: 537, column: 3, scope: !55)
!58 = !DILocation(line: 539, column: 2, scope: !18)
!59 = !DILocation(line: 539, column: 9, scope: !18)
!60 = !DILocation(line: 539, column: 13, scope: !18)
!61 = !DILocalVariable(name: "tocopy", scope: !62, file: !1, line: 540, type: !32)
!62 = distinct !DILexicalBlock(scope: !18, file: !1, line: 539, column: 18)
!63 = !DILocation(line: 540, column: 16, scope: !62)
!64 = !DILocation(line: 542, column: 20, scope: !62)
!65 = !DILocation(line: 542, column: 3, scope: !62)
!66 = !DILocation(line: 544, column: 37, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !1, line: 544, column: 7)
!68 = !DILocation(line: 544, column: 7, scope: !67)
!69 = !DILocation(line: 544, column: 7, scope: !62)
!70 = !DILocation(line: 551, column: 4, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 544, column: 42)
!72 = !DILocation(line: 552, column: 34, scope: !73)
!73 = distinct !DILexicalBlock(scope: !67, file: !1, line: 552, column: 14)
!74 = !DILocation(line: 552, column: 14, scope: !73)
!75 = !DILocation(line: 552, column: 14, scope: !67)
!76 = !DILocation(line: 557, column: 26, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 557, column: 8)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 552, column: 39)
!79 = !DILocation(line: 557, column: 30, scope: !77)
!80 = !DILocation(line: 557, column: 8, scope: !77)
!81 = !DILocation(line: 557, column: 8, scope: !78)
!82 = !DILocation(line: 558, column: 5, scope: !77)
!83 = !DILocation(line: 560, column: 4, scope: !78)
!84 = !DILocation(line: 563, column: 30, scope: !85)
!85 = distinct !DILexicalBlock(scope: !62, file: !1, line: 563, column: 7)
!86 = !DILocation(line: 563, column: 28, scope: !85)
!87 = !DILocation(line: 563, column: 7, scope: !62)
!88 = !DILocation(line: 564, column: 11, scope: !85)
!89 = !DILocation(line: 564, column: 4, scope: !85)
!90 = !DILocation(line: 566, column: 13, scope: !85)
!91 = !DILocation(line: 566, column: 11, scope: !85)
!92 = !DILocation(line: 567, column: 30, scope: !93)
!93 = distinct !DILexicalBlock(scope: !62, file: !1, line: 567, column: 7)
!94 = !DILocation(line: 567, column: 34, scope: !93)
!95 = !DILocation(line: 567, column: 46, scope: !93)
!96 = !DILocation(line: 567, column: 49, scope: !93)
!97 = !DILocation(line: 567, column: 7, scope: !93)
!98 = !DILocation(line: 567, column: 7, scope: !62)
!99 = !DILocation(line: 568, column: 4, scope: !93)
!100 = !DILocation(line: 570, column: 10, scope: !62)
!101 = !DILocation(line: 570, column: 7, scope: !62)
!102 = !DILocation(line: 571, column: 8, scope: !62)
!103 = !DILocation(line: 571, column: 5, scope: !62)
!104 = distinct !{!104, !58, !105, !106}
!105 = !DILocation(line: 572, column: 2, scope: !18)
!106 = !{!"llvm.loop.mustprogress"}
!107 = !DILocation(line: 574, column: 2, scope: !18)
!108 = !DILocation(line: 575, column: 1, scope: !18)
!109 = distinct !DISubprogram(name: "jent_gen_entropy", scope: !1, file: !1, line: 484, type: !110, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!110 = !DISubroutineType(types: !111)
!111 = !{null, !22}
!112 = !DILocalVariable(name: "ec", arg: 1, scope: !109, file: !1, line: 484, type: !22)
!113 = !DILocation(line: 484, column: 48, scope: !109)
!114 = !DILocalVariable(name: "k", scope: !109, file: !1, line: 486, type: !32)
!115 = !DILocation(line: 486, column: 15, scope: !109)
!116 = !DILocalVariable(name: "safety_factor", scope: !109, file: !1, line: 486, type: !32)
!117 = !DILocation(line: 486, column: 22, scope: !109)
!118 = !DILocation(line: 492, column: 22, scope: !109)
!119 = !DILocation(line: 492, column: 2, scope: !109)
!120 = !DILocation(line: 494, column: 2, scope: !109)
!121 = !DILocation(line: 494, column: 30, scope: !109)
!122 = !DILocation(line: 494, column: 10, scope: !109)
!123 = !DILocation(line: 494, column: 9, scope: !109)
!124 = !DILocation(line: 496, column: 27, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 496, column: 7)
!126 = distinct !DILexicalBlock(scope: !109, file: !1, line: 494, column: 35)
!127 = !DILocation(line: 496, column: 7, scope: !125)
!128 = !DILocation(line: 496, column: 7, scope: !126)
!129 = !DILocation(line: 497, column: 4, scope: !125)
!130 = distinct !{!130, !120, !131, !106}
!131 = !DILocation(line: 505, column: 2, scope: !109)
!132 = !DILocation(line: 503, column: 7, scope: !133)
!133 = distinct !DILexicalBlock(scope: !126, file: !1, line: 503, column: 7)
!134 = !DILocation(line: 503, column: 33, scope: !133)
!135 = !DILocation(line: 503, column: 31, scope: !133)
!136 = !DILocation(line: 503, column: 50, scope: !133)
!137 = !DILocation(line: 503, column: 54, scope: !133)
!138 = !DILocation(line: 503, column: 48, scope: !133)
!139 = !DILocation(line: 503, column: 11, scope: !133)
!140 = !DILocation(line: 503, column: 7, scope: !126)
!141 = !DILocation(line: 504, column: 4, scope: !133)
!142 = !DILocation(line: 506, column: 1, scope: !109)
!143 = distinct !DISubprogram(name: "jent_permanent_health_failure", scope: !1, file: !1, line: 295, type: !144, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!144 = !DISubroutineType(types: !145)
!145 = !{!21, !22}
!146 = !DILocalVariable(name: "ec", arg: 1, scope: !143, file: !1, line: 295, type: !22)
!147 = !DILocation(line: 295, column: 60, scope: !143)
!148 = !DILocation(line: 297, column: 36, scope: !143)
!149 = !DILocation(line: 297, column: 9, scope: !143)
!150 = !DILocation(line: 297, column: 69, scope: !143)
!151 = !DILocation(line: 297, column: 42, scope: !143)
!152 = !DILocation(line: 297, column: 40, scope: !143)
!153 = !DILocation(line: 297, column: 2, scope: !143)
!154 = distinct !DISubprogram(name: "jent_health_failure", scope: !1, file: !1, line: 290, type: !144, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!155 = !DILocalVariable(name: "ec", arg: 1, scope: !154, file: !1, line: 290, type: !22)
!156 = !DILocation(line: 290, column: 50, scope: !154)
!157 = !DILocation(line: 292, column: 26, scope: !154)
!158 = !DILocation(line: 292, column: 9, scope: !154)
!159 = !DILocation(line: 292, column: 49, scope: !154)
!160 = !DILocation(line: 292, column: 32, scope: !154)
!161 = !DILocation(line: 292, column: 30, scope: !154)
!162 = !DILocation(line: 292, column: 2, scope: !154)
!163 = distinct !DISubprogram(name: "jent_entropy_init", scope: !1, file: !1, line: 625, type: !164, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!164 = !DISubroutineType(types: !165)
!165 = !{!21, !3}
!166 = !DILocalVariable(name: "hash_state", arg: 1, scope: !163, file: !1, line: 625, type: !3)
!167 = !DILocation(line: 625, column: 29, scope: !163)
!168 = !DILocalVariable(name: "i", scope: !163, file: !1, line: 627, type: !21)
!169 = !DILocation(line: 627, column: 6, scope: !163)
!170 = !DILocalVariable(name: "delta_sum", scope: !163, file: !1, line: 628, type: !7)
!171 = !DILocation(line: 628, column: 8, scope: !163)
!172 = !DILocalVariable(name: "old_delta", scope: !163, file: !1, line: 629, type: !7)
!173 = !DILocation(line: 629, column: 8, scope: !163)
!174 = !DILocalVariable(name: "nonstuck", scope: !163, file: !1, line: 630, type: !32)
!175 = !DILocation(line: 630, column: 15, scope: !163)
!176 = !DILocalVariable(name: "time_backwards", scope: !163, file: !1, line: 631, type: !21)
!177 = !DILocation(line: 631, column: 6, scope: !163)
!178 = !DILocalVariable(name: "count_mod", scope: !163, file: !1, line: 632, type: !21)
!179 = !DILocation(line: 632, column: 6, scope: !163)
!180 = !DILocalVariable(name: "count_stuck", scope: !163, file: !1, line: 633, type: !21)
!181 = !DILocation(line: 633, column: 6, scope: !163)
!182 = !DILocalVariable(name: "ec", scope: !163, file: !1, line: 634, type: !23)
!183 = !DILocation(line: 634, column: 19, scope: !163)
!184 = !DILocation(line: 637, column: 5, scope: !163)
!185 = !DILocation(line: 637, column: 9, scope: !163)
!186 = !DILocation(line: 638, column: 18, scope: !163)
!187 = !DILocation(line: 638, column: 5, scope: !163)
!188 = !DILocation(line: 638, column: 16, scope: !163)
!189 = !DILocation(line: 666, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !163, file: !1, line: 666, column: 2)
!191 = !DILocation(line: 666, column: 7, scope: !190)
!192 = !DILocation(line: 666, column: 45, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !1, line: 666, column: 2)
!194 = !DILocation(line: 666, column: 43, scope: !193)
!195 = !DILocation(line: 666, column: 2, scope: !190)
!196 = !DILocalVariable(name: "time", scope: !197, file: !1, line: 667, type: !7)
!197 = distinct !DILexicalBlock(scope: !193, file: !1, line: 666, column: 53)
!198 = !DILocation(line: 667, column: 9, scope: !197)
!199 = !DILocalVariable(name: "time2", scope: !197, file: !1, line: 668, type: !7)
!200 = !DILocation(line: 668, column: 9, scope: !197)
!201 = !DILocalVariable(name: "delta", scope: !197, file: !1, line: 669, type: !7)
!202 = !DILocation(line: 669, column: 9, scope: !197)
!203 = !DILocalVariable(name: "lowdelta", scope: !197, file: !1, line: 670, type: !32)
!204 = !DILocation(line: 670, column: 16, scope: !197)
!205 = !DILocalVariable(name: "stuck", scope: !197, file: !1, line: 671, type: !21)
!206 = !DILocation(line: 671, column: 7, scope: !197)
!207 = !DILocation(line: 674, column: 3, scope: !197)
!208 = !DILocation(line: 675, column: 18, scope: !197)
!209 = !DILocation(line: 675, column: 6, scope: !197)
!210 = !DILocation(line: 675, column: 16, scope: !197)
!211 = !DILocation(line: 676, column: 28, scope: !197)
!212 = !DILocation(line: 676, column: 3, scope: !197)
!213 = !DILocation(line: 677, column: 3, scope: !197)
!214 = !DILocation(line: 680, column: 8, scope: !215)
!215 = distinct !DILexicalBlock(scope: !197, file: !1, line: 680, column: 7)
!216 = !DILocation(line: 680, column: 13, scope: !215)
!217 = !DILocation(line: 680, column: 17, scope: !215)
!218 = !DILocation(line: 680, column: 7, scope: !197)
!219 = !DILocation(line: 681, column: 4, scope: !215)
!220 = !DILocation(line: 682, column: 22, scope: !197)
!221 = !DILocation(line: 682, column: 28, scope: !197)
!222 = !DILocation(line: 682, column: 11, scope: !197)
!223 = !DILocation(line: 682, column: 9, scope: !197)
!224 = !DILocation(line: 688, column: 8, scope: !225)
!225 = distinct !DILexicalBlock(scope: !197, file: !1, line: 688, column: 7)
!226 = !DILocation(line: 688, column: 7, scope: !197)
!227 = !DILocation(line: 689, column: 4, scope: !225)
!228 = !DILocation(line: 691, column: 27, scope: !197)
!229 = !DILocation(line: 691, column: 11, scope: !197)
!230 = !DILocation(line: 691, column: 9, scope: !197)
!231 = !DILocation(line: 700, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !197, file: !1, line: 700, column: 7)
!233 = !DILocation(line: 700, column: 9, scope: !232)
!234 = !DILocation(line: 700, column: 7, scope: !197)
!235 = !DILocation(line: 701, column: 4, scope: !232)
!236 = !DILocation(line: 703, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !197, file: !1, line: 703, column: 7)
!238 = !DILocation(line: 703, column: 7, scope: !197)
!239 = !DILocation(line: 704, column: 15, scope: !237)
!240 = !DILocation(line: 704, column: 4, scope: !237)
!241 = !DILocation(line: 706, column: 12, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 705, column: 8)
!243 = !DILocation(line: 716, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !242, file: !1, line: 716, column: 8)
!245 = !DILocation(line: 716, column: 18, scope: !244)
!246 = !DILocation(line: 716, column: 42, scope: !244)
!247 = !DILocation(line: 716, column: 8, scope: !242)
!248 = !DILocation(line: 718, column: 13, scope: !249)
!249 = distinct !DILexicalBlock(scope: !244, file: !1, line: 716, column: 48)
!250 = !DILocation(line: 718, column: 19, scope: !249)
!251 = !DILocation(line: 717, column: 5, scope: !249)
!252 = !DILocation(line: 719, column: 4, scope: !249)
!253 = !DILocation(line: 723, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !197, file: !1, line: 723, column: 7)
!255 = !DILocation(line: 723, column: 7, scope: !197)
!256 = !DILocation(line: 724, column: 4, scope: !254)
!257 = !DILocation(line: 727, column: 9, scope: !258)
!258 = distinct !DILexicalBlock(scope: !197, file: !1, line: 727, column: 7)
!259 = !DILocation(line: 727, column: 17, scope: !258)
!260 = !DILocation(line: 727, column: 15, scope: !258)
!261 = !DILocation(line: 727, column: 7, scope: !197)
!262 = !DILocation(line: 728, column: 18, scope: !258)
!263 = !DILocation(line: 728, column: 4, scope: !258)
!264 = !DILocation(line: 731, column: 14, scope: !197)
!265 = !DILocation(line: 731, column: 22, scope: !197)
!266 = !DILocation(line: 731, column: 20, scope: !197)
!267 = !DILocation(line: 731, column: 12, scope: !197)
!268 = !DILocation(line: 732, column: 9, scope: !269)
!269 = distinct !DILexicalBlock(scope: !197, file: !1, line: 732, column: 7)
!270 = !DILocation(line: 732, column: 18, scope: !269)
!271 = !DILocation(line: 732, column: 7, scope: !197)
!272 = !DILocation(line: 733, column: 13, scope: !269)
!273 = !DILocation(line: 733, column: 4, scope: !269)
!274 = !DILocation(line: 741, column: 7, scope: !275)
!275 = distinct !DILexicalBlock(scope: !197, file: !1, line: 741, column: 7)
!276 = !DILocation(line: 741, column: 15, scope: !275)
!277 = !DILocation(line: 741, column: 13, scope: !275)
!278 = !DILocation(line: 741, column: 7, scope: !197)
!279 = !DILocation(line: 742, column: 18, scope: !275)
!280 = !DILocation(line: 742, column: 26, scope: !275)
!281 = !DILocation(line: 742, column: 24, scope: !275)
!282 = !DILocation(line: 742, column: 14, scope: !275)
!283 = !DILocation(line: 742, column: 4, scope: !275)
!284 = !DILocation(line: 744, column: 18, scope: !275)
!285 = !DILocation(line: 744, column: 30, scope: !275)
!286 = !DILocation(line: 744, column: 28, scope: !275)
!287 = !DILocation(line: 744, column: 14, scope: !275)
!288 = !DILocation(line: 745, column: 15, scope: !197)
!289 = !DILocation(line: 745, column: 13, scope: !197)
!290 = !DILocation(line: 746, column: 2, scope: !197)
!291 = !DILocation(line: 666, column: 49, scope: !193)
!292 = !DILocation(line: 666, column: 2, scope: !193)
!293 = distinct !{!293, !195, !294, !106}
!294 = !DILocation(line: 746, column: 2, scope: !190)
!295 = !DILocation(line: 755, column: 6, scope: !296)
!296 = distinct !DILexicalBlock(scope: !163, file: !1, line: 755, column: 6)
!297 = !DILocation(line: 755, column: 21, scope: !296)
!298 = !DILocation(line: 755, column: 6, scope: !163)
!299 = !DILocation(line: 756, column: 3, scope: !296)
!300 = !DILocation(line: 763, column: 7, scope: !301)
!301 = distinct !DILexicalBlock(scope: !163, file: !1, line: 763, column: 6)
!302 = !DILocation(line: 763, column: 18, scope: !301)
!303 = !DILocation(line: 763, column: 6, scope: !163)
!304 = !DILocation(line: 764, column: 3, scope: !301)
!305 = !DILocation(line: 771, column: 31, scope: !306)
!306 = distinct !DILexicalBlock(scope: !163, file: !1, line: 771, column: 6)
!307 = !DILocation(line: 771, column: 29, scope: !306)
!308 = !DILocation(line: 771, column: 6, scope: !163)
!309 = !DILocation(line: 772, column: 3, scope: !306)
!310 = !DILocation(line: 778, column: 31, scope: !311)
!311 = distinct !DILexicalBlock(scope: !163, file: !1, line: 778, column: 6)
!312 = !DILocation(line: 778, column: 29, scope: !311)
!313 = !DILocation(line: 778, column: 6, scope: !163)
!314 = !DILocation(line: 779, column: 3, scope: !311)
!315 = !DILocation(line: 781, column: 2, scope: !163)
!316 = !DILocation(line: 782, column: 1, scope: !163)
!317 = distinct !DISubprogram(name: "jent_entropy_collector_alloc", scope: !1, file: !1, line: 581, type: !318, scopeLine: 584, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!318 = !DISubroutineType(types: !319)
!319 = !{!22, !32, !32, !3}
!320 = !DILocalVariable(name: "osr", arg: 1, scope: !317, file: !1, line: 581, type: !32)
!321 = !DILocation(line: 581, column: 61, scope: !317)
!322 = !DILocalVariable(name: "flags", arg: 2, scope: !317, file: !1, line: 582, type: !32)
!323 = !DILocation(line: 582, column: 26, scope: !317)
!324 = !DILocalVariable(name: "hash_state", arg: 3, scope: !317, file: !1, line: 583, type: !3)
!325 = !DILocation(line: 583, column: 19, scope: !317)
!326 = !DILocalVariable(name: "entropy_collector", scope: !317, file: !1, line: 585, type: !22)
!327 = !DILocation(line: 585, column: 20, scope: !317)
!328 = !DILocation(line: 587, column: 22, scope: !317)
!329 = !DILocation(line: 587, column: 20, scope: !317)
!330 = !DILocation(line: 588, column: 7, scope: !331)
!331 = distinct !DILexicalBlock(scope: !317, file: !1, line: 588, column: 6)
!332 = !DILocation(line: 588, column: 6, scope: !317)
!333 = !DILocation(line: 589, column: 3, scope: !331)
!334 = !DILocation(line: 591, column: 8, scope: !335)
!335 = distinct !DILexicalBlock(scope: !317, file: !1, line: 591, column: 6)
!336 = !DILocation(line: 591, column: 14, scope: !335)
!337 = !DILocation(line: 591, column: 6, scope: !317)
!338 = !DILocation(line: 595, column: 28, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !1, line: 591, column: 45)
!340 = !DILocation(line: 595, column: 3, scope: !339)
!341 = !DILocation(line: 595, column: 22, scope: !339)
!342 = !DILocation(line: 595, column: 26, scope: !339)
!343 = !DILocation(line: 596, column: 8, scope: !344)
!344 = distinct !DILexicalBlock(scope: !339, file: !1, line: 596, column: 7)
!345 = !DILocation(line: 596, column: 27, scope: !344)
!346 = !DILocation(line: 596, column: 7, scope: !339)
!347 = !DILocation(line: 597, column: 15, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !1, line: 596, column: 32)
!349 = !DILocation(line: 597, column: 4, scope: !348)
!350 = !DILocation(line: 598, column: 4, scope: !348)
!351 = !DILocation(line: 600, column: 3, scope: !339)
!352 = !DILocation(line: 600, column: 22, scope: !339)
!353 = !DILocation(line: 600, column: 35, scope: !339)
!354 = !DILocation(line: 601, column: 3, scope: !339)
!355 = !DILocation(line: 601, column: 22, scope: !339)
!356 = !DILocation(line: 601, column: 32, scope: !339)
!357 = !DILocation(line: 602, column: 3, scope: !339)
!358 = !DILocation(line: 602, column: 22, scope: !339)
!359 = !DILocation(line: 602, column: 37, scope: !339)
!360 = !DILocation(line: 603, column: 2, scope: !339)
!361 = !DILocation(line: 606, column: 6, scope: !362)
!362 = distinct !DILexicalBlock(scope: !317, file: !1, line: 606, column: 6)
!363 = !DILocation(line: 606, column: 10, scope: !362)
!364 = !DILocation(line: 606, column: 6, scope: !317)
!365 = !DILocation(line: 607, column: 7, scope: !362)
!366 = !DILocation(line: 607, column: 3, scope: !362)
!367 = !DILocation(line: 608, column: 27, scope: !317)
!368 = !DILocation(line: 608, column: 2, scope: !317)
!369 = !DILocation(line: 608, column: 21, scope: !317)
!370 = !DILocation(line: 608, column: 25, scope: !317)
!371 = !DILocation(line: 610, column: 34, scope: !317)
!372 = !DILocation(line: 610, column: 2, scope: !317)
!373 = !DILocation(line: 610, column: 21, scope: !317)
!374 = !DILocation(line: 610, column: 32, scope: !317)
!375 = !DILocation(line: 613, column: 19, scope: !317)
!376 = !DILocation(line: 613, column: 2, scope: !317)
!377 = !DILocation(line: 615, column: 9, scope: !317)
!378 = !DILocation(line: 615, column: 2, scope: !317)
!379 = !DILocation(line: 616, column: 1, scope: !317)
!380 = distinct !DISubprogram(name: "jent_entropy_collector_free", scope: !1, file: !1, line: 618, type: !110, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!381 = !DILocalVariable(name: "entropy_collector", arg: 1, scope: !380, file: !1, line: 618, type: !22)
!382 = !DILocation(line: 618, column: 52, scope: !380)
!383 = !DILocation(line: 620, column: 13, scope: !380)
!384 = !DILocation(line: 620, column: 32, scope: !380)
!385 = !DILocation(line: 620, column: 2, scope: !380)
!386 = !DILocation(line: 621, column: 2, scope: !380)
!387 = !DILocation(line: 621, column: 21, scope: !380)
!388 = !DILocation(line: 621, column: 25, scope: !380)
!389 = !DILocation(line: 622, column: 13, scope: !380)
!390 = !DILocation(line: 622, column: 2, scope: !380)
!391 = !DILocation(line: 623, column: 1, scope: !380)
!392 = distinct !DISubprogram(name: "jent_condition_data", scope: !1, file: !1, line: 354, type: !393, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!393 = !DISubroutineType(types: !394)
!394 = !{!21, !22, !7, !21}
!395 = !DILocalVariable(name: "ec", arg: 1, scope: !392, file: !1, line: 354, type: !22)
!396 = !DILocation(line: 354, column: 50, scope: !392)
!397 = !DILocalVariable(name: "time", arg: 2, scope: !392, file: !1, line: 354, type: !7)
!398 = !DILocation(line: 354, column: 60, scope: !392)
!399 = !DILocalVariable(name: "stuck", arg: 3, scope: !392, file: !1, line: 354, type: !21)
!400 = !DILocation(line: 354, column: 70, scope: !392)
!401 = !DILocalVariable(name: "addtl", scope: !392, file: !1, line: 362, type: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !392, file: !1, line: 357, size: 128, elements: !403)
!403 = !{!404, !405, !406, !407}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rct_count", scope: !402, file: !1, line: 358, baseType: !21, size: 32)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "apt_observations", scope: !402, file: !1, line: 359, baseType: !32, size: 32, offset: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "apt_count", scope: !402, file: !1, line: 360, baseType: !32, size: 32, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "apt_base", scope: !402, file: !1, line: 361, baseType: !32, size: 32, offset: 96)
!408 = !DILocation(line: 362, column: 4, scope: !392)
!409 = !DILocation(line: 362, column: 12, scope: !392)
!410 = !DILocation(line: 363, column: 3, scope: !392)
!411 = !DILocation(line: 363, column: 7, scope: !392)
!412 = !DILocation(line: 364, column: 3, scope: !392)
!413 = !DILocation(line: 364, column: 7, scope: !392)
!414 = !DILocation(line: 365, column: 3, scope: !392)
!415 = !DILocation(line: 365, column: 7, scope: !392)
!416 = !DILocation(line: 366, column: 3, scope: !392)
!417 = !DILocation(line: 366, column: 7, scope: !392)
!418 = !DILocation(line: 369, column: 24, scope: !392)
!419 = !DILocation(line: 369, column: 28, scope: !392)
!420 = !DILocation(line: 369, column: 40, scope: !392)
!421 = !DILocation(line: 370, column: 26, scope: !392)
!422 = !DILocation(line: 369, column: 9, scope: !392)
!423 = !DILocation(line: 369, column: 2, scope: !392)
!424 = distinct !DISubprogram(name: "jent_delta", scope: !1, file: !1, line: 230, type: !425, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!425 = !DISubroutineType(types: !426)
!426 = !{!7, !7, !7}
!427 = !DILocalVariable(name: "prev", arg: 1, scope: !424, file: !1, line: 230, type: !7)
!428 = !DILocation(line: 230, column: 38, scope: !424)
!429 = !DILocalVariable(name: "next", arg: 2, scope: !424, file: !1, line: 230, type: !7)
!430 = !DILocation(line: 230, column: 50, scope: !424)
!431 = !DILocation(line: 233, column: 10, scope: !424)
!432 = !DILocation(line: 233, column: 17, scope: !424)
!433 = !DILocation(line: 233, column: 15, scope: !424)
!434 = !DILocation(line: 233, column: 9, scope: !424)
!435 = !DILocation(line: 233, column: 26, scope: !424)
!436 = !DILocation(line: 233, column: 33, scope: !424)
!437 = !DILocation(line: 233, column: 31, scope: !424)
!438 = !DILocation(line: 234, column: 30, scope: !424)
!439 = !DILocation(line: 234, column: 28, scope: !424)
!440 = !DILocation(line: 234, column: 35, scope: !424)
!441 = !DILocation(line: 234, column: 41, scope: !424)
!442 = !DILocation(line: 234, column: 39, scope: !424)
!443 = !DILocation(line: 233, column: 2, scope: !424)
!444 = distinct !DISubprogram(name: "jent_stuck", scope: !1, file: !1, line: 252, type: !445, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!445 = !DISubroutineType(types: !446)
!446 = !{!21, !22, !7}
!447 = !DILocalVariable(name: "ec", arg: 1, scope: !444, file: !1, line: 252, type: !22)
!448 = !DILocation(line: 252, column: 41, scope: !444)
!449 = !DILocalVariable(name: "current_delta", arg: 2, scope: !444, file: !1, line: 252, type: !7)
!450 = !DILocation(line: 252, column: 51, scope: !444)
!451 = !DILocalVariable(name: "delta2", scope: !444, file: !1, line: 254, type: !7)
!452 = !DILocation(line: 254, column: 8, scope: !444)
!453 = !DILocation(line: 254, column: 28, scope: !444)
!454 = !DILocation(line: 254, column: 32, scope: !444)
!455 = !DILocation(line: 254, column: 44, scope: !444)
!456 = !DILocation(line: 254, column: 17, scope: !444)
!457 = !DILocalVariable(name: "delta3", scope: !444, file: !1, line: 255, type: !7)
!458 = !DILocation(line: 255, column: 8, scope: !444)
!459 = !DILocation(line: 255, column: 28, scope: !444)
!460 = !DILocation(line: 255, column: 32, scope: !444)
!461 = !DILocation(line: 255, column: 45, scope: !444)
!462 = !DILocation(line: 255, column: 17, scope: !444)
!463 = !DILocation(line: 257, column: 19, scope: !444)
!464 = !DILocation(line: 257, column: 2, scope: !444)
!465 = !DILocation(line: 257, column: 6, scope: !444)
!466 = !DILocation(line: 257, column: 17, scope: !444)
!467 = !DILocation(line: 258, column: 20, scope: !444)
!468 = !DILocation(line: 258, column: 2, scope: !444)
!469 = !DILocation(line: 258, column: 6, scope: !444)
!470 = !DILocation(line: 258, column: 18, scope: !444)
!471 = !DILocation(line: 264, column: 18, scope: !444)
!472 = !DILocation(line: 264, column: 22, scope: !444)
!473 = !DILocation(line: 264, column: 2, scope: !444)
!474 = !DILocation(line: 266, column: 7, scope: !475)
!475 = distinct !DILexicalBlock(scope: !444, file: !1, line: 266, column: 6)
!476 = !DILocation(line: 266, column: 21, scope: !475)
!477 = !DILocation(line: 266, column: 25, scope: !475)
!478 = !DILocation(line: 266, column: 32, scope: !475)
!479 = !DILocation(line: 266, column: 36, scope: !475)
!480 = !DILocation(line: 266, column: 6, scope: !444)
!481 = !DILocation(line: 268, column: 19, scope: !482)
!482 = distinct !DILexicalBlock(scope: !475, file: !1, line: 266, column: 44)
!483 = !DILocation(line: 268, column: 3, scope: !482)
!484 = !DILocation(line: 269, column: 3, scope: !482)
!485 = !DILocation(line: 273, column: 18, scope: !444)
!486 = !DILocation(line: 273, column: 2, scope: !444)
!487 = !DILocation(line: 275, column: 2, scope: !444)
!488 = !DILocation(line: 276, column: 1, scope: !444)
!489 = distinct !DISubprogram(name: "jent_apt_reset", scope: !1, file: !1, line: 155, type: !490, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !22, !32}
!492 = !DILocalVariable(name: "ec", arg: 1, scope: !489, file: !1, line: 155, type: !22)
!493 = !DILocation(line: 155, column: 46, scope: !489)
!494 = !DILocalVariable(name: "delta_masked", arg: 2, scope: !489, file: !1, line: 155, type: !32)
!495 = !DILocation(line: 155, column: 63, scope: !489)
!496 = !DILocation(line: 158, column: 2, scope: !489)
!497 = !DILocation(line: 158, column: 6, scope: !489)
!498 = !DILocation(line: 158, column: 16, scope: !489)
!499 = !DILocation(line: 159, column: 17, scope: !489)
!500 = !DILocation(line: 159, column: 2, scope: !489)
!501 = !DILocation(line: 159, column: 6, scope: !489)
!502 = !DILocation(line: 159, column: 15, scope: !489)
!503 = !DILocation(line: 160, column: 2, scope: !489)
!504 = !DILocation(line: 160, column: 6, scope: !489)
!505 = !DILocation(line: 160, column: 23, scope: !489)
!506 = !DILocation(line: 161, column: 1, scope: !489)
!507 = distinct !DISubprogram(name: "jent_measure_jitter", scope: !1, file: !1, line: 451, type: !144, scopeLine: 452, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!508 = !DILocalVariable(name: "ec", arg: 1, scope: !507, file: !1, line: 451, type: !22)
!509 = !DILocation(line: 451, column: 50, scope: !507)
!510 = !DILocalVariable(name: "time", scope: !507, file: !1, line: 453, type: !7)
!511 = !DILocation(line: 453, column: 8, scope: !507)
!512 = !DILocalVariable(name: "current_delta", scope: !507, file: !1, line: 454, type: !7)
!513 = !DILocation(line: 454, column: 8, scope: !507)
!514 = !DILocalVariable(name: "stuck", scope: !507, file: !1, line: 455, type: !21)
!515 = !DILocation(line: 455, column: 6, scope: !507)
!516 = !DILocation(line: 458, column: 17, scope: !507)
!517 = !DILocation(line: 458, column: 2, scope: !507)
!518 = !DILocation(line: 464, column: 2, scope: !507)
!519 = !DILocation(line: 465, column: 29, scope: !507)
!520 = !DILocation(line: 465, column: 33, scope: !507)
!521 = !DILocation(line: 465, column: 44, scope: !507)
!522 = !DILocation(line: 465, column: 18, scope: !507)
!523 = !DILocation(line: 465, column: 16, scope: !507)
!524 = !DILocation(line: 466, column: 18, scope: !507)
!525 = !DILocation(line: 466, column: 2, scope: !507)
!526 = !DILocation(line: 466, column: 6, scope: !507)
!527 = !DILocation(line: 466, column: 16, scope: !507)
!528 = !DILocation(line: 469, column: 21, scope: !507)
!529 = !DILocation(line: 469, column: 25, scope: !507)
!530 = !DILocation(line: 469, column: 10, scope: !507)
!531 = !DILocation(line: 469, column: 8, scope: !507)
!532 = !DILocation(line: 472, column: 26, scope: !533)
!533 = distinct !DILexicalBlock(scope: !507, file: !1, line: 472, column: 6)
!534 = !DILocation(line: 472, column: 30, scope: !533)
!535 = !DILocation(line: 472, column: 45, scope: !533)
!536 = !DILocation(line: 472, column: 6, scope: !533)
!537 = !DILocation(line: 472, column: 6, scope: !507)
!538 = !DILocation(line: 473, column: 9, scope: !533)
!539 = !DILocation(line: 473, column: 3, scope: !533)
!540 = !DILocation(line: 475, column: 9, scope: !507)
!541 = !DILocation(line: 475, column: 2, scope: !507)
!542 = distinct !DISubprogram(name: "jent_memaccess", scope: !1, file: !1, line: 397, type: !543, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !22, !7}
!545 = !DILocalVariable(name: "ec", arg: 1, scope: !542, file: !1, line: 397, type: !22)
!546 = !DILocation(line: 397, column: 46, scope: !542)
!547 = !DILocalVariable(name: "loop_cnt", arg: 2, scope: !542, file: !1, line: 397, type: !7)
!548 = !DILocation(line: 397, column: 56, scope: !542)
!549 = !DILocalVariable(name: "wrap", scope: !542, file: !1, line: 399, type: !32)
!550 = !DILocation(line: 399, column: 15, scope: !542)
!551 = !DILocalVariable(name: "i", scope: !542, file: !1, line: 400, type: !7)
!552 = !DILocation(line: 400, column: 8, scope: !542)
!553 = !DILocalVariable(name: "acc_loop_cnt", scope: !542, file: !1, line: 403, type: !7)
!554 = !DILocation(line: 403, column: 8, scope: !542)
!555 = !DILocation(line: 404, column: 3, scope: !542)
!556 = !DILocation(line: 406, column: 14, scope: !557)
!557 = distinct !DILexicalBlock(scope: !542, file: !1, line: 406, column: 6)
!558 = !DILocation(line: 406, column: 11, scope: !557)
!559 = !DILocation(line: 406, column: 17, scope: !557)
!560 = !DILocation(line: 406, column: 28, scope: !557)
!561 = !DILocation(line: 406, column: 32, scope: !557)
!562 = !DILocation(line: 406, column: 25, scope: !557)
!563 = !DILocation(line: 406, column: 6, scope: !542)
!564 = !DILocation(line: 407, column: 3, scope: !557)
!565 = !DILocation(line: 408, column: 9, scope: !542)
!566 = !DILocation(line: 408, column: 13, scope: !542)
!567 = !DILocation(line: 408, column: 28, scope: !542)
!568 = !DILocation(line: 408, column: 32, scope: !542)
!569 = !DILocation(line: 408, column: 26, scope: !542)
!570 = !DILocation(line: 408, column: 7, scope: !542)
!571 = !DILocation(line: 414, column: 6, scope: !572)
!572 = distinct !DILexicalBlock(scope: !542, file: !1, line: 414, column: 6)
!573 = !DILocation(line: 414, column: 6, scope: !542)
!574 = !DILocation(line: 415, column: 18, scope: !572)
!575 = !DILocation(line: 415, column: 16, scope: !572)
!576 = !DILocation(line: 415, column: 3, scope: !572)
!577 = !DILocation(line: 417, column: 9, scope: !578)
!578 = distinct !DILexicalBlock(scope: !542, file: !1, line: 417, column: 2)
!579 = !DILocation(line: 417, column: 7, scope: !578)
!580 = !DILocation(line: 417, column: 14, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !1, line: 417, column: 2)
!582 = !DILocation(line: 417, column: 19, scope: !581)
!583 = !DILocation(line: 417, column: 23, scope: !581)
!584 = !DILocation(line: 417, column: 40, scope: !581)
!585 = !DILocation(line: 417, column: 38, scope: !581)
!586 = !DILocation(line: 417, column: 16, scope: !581)
!587 = !DILocation(line: 417, column: 2, scope: !578)
!588 = !DILocalVariable(name: "tmpval", scope: !589, file: !1, line: 418, type: !34)
!589 = distinct !DILexicalBlock(scope: !581, file: !1, line: 417, column: 60)
!590 = !DILocation(line: 418, column: 18, scope: !589)
!591 = !DILocation(line: 418, column: 27, scope: !589)
!592 = !DILocation(line: 418, column: 31, scope: !589)
!593 = !DILocation(line: 418, column: 37, scope: !589)
!594 = !DILocation(line: 418, column: 41, scope: !589)
!595 = !DILocation(line: 418, column: 35, scope: !589)
!596 = !DILocation(line: 424, column: 15, scope: !589)
!597 = !DILocation(line: 424, column: 14, scope: !589)
!598 = !DILocation(line: 424, column: 22, scope: !589)
!599 = !DILocation(line: 424, column: 27, scope: !589)
!600 = !DILocation(line: 424, column: 13, scope: !589)
!601 = !DILocation(line: 424, column: 4, scope: !589)
!602 = !DILocation(line: 424, column: 11, scope: !589)
!603 = !DILocation(line: 430, column: 21, scope: !589)
!604 = !DILocation(line: 430, column: 25, scope: !589)
!605 = !DILocation(line: 430, column: 39, scope: !589)
!606 = !DILocation(line: 430, column: 43, scope: !589)
!607 = !DILocation(line: 430, column: 37, scope: !589)
!608 = !DILocation(line: 430, column: 56, scope: !589)
!609 = !DILocation(line: 430, column: 3, scope: !589)
!610 = !DILocation(line: 430, column: 7, scope: !589)
!611 = !DILocation(line: 430, column: 19, scope: !589)
!612 = !DILocation(line: 431, column: 21, scope: !589)
!613 = !DILocation(line: 431, column: 25, scope: !589)
!614 = !DILocation(line: 431, column: 39, scope: !589)
!615 = !DILocation(line: 431, column: 37, scope: !589)
!616 = !DILocation(line: 431, column: 3, scope: !589)
!617 = !DILocation(line: 431, column: 7, scope: !589)
!618 = !DILocation(line: 431, column: 19, scope: !589)
!619 = !DILocation(line: 432, column: 2, scope: !589)
!620 = !DILocation(line: 417, column: 56, scope: !581)
!621 = !DILocation(line: 417, column: 2, scope: !581)
!622 = distinct !{!622, !587, !623, !106}
!623 = !DILocation(line: 432, column: 2, scope: !578)
!624 = !DILocation(line: 433, column: 1, scope: !542)
!625 = distinct !DISubprogram(name: "jent_loop_shuffle", scope: !1, file: !1, line: 315, type: !626, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!626 = !DISubroutineType(types: !627)
!627 = !{!7, !32, !32}
!628 = !DILocalVariable(name: "bits", arg: 1, scope: !625, file: !1, line: 315, type: !32)
!629 = !DILocation(line: 315, column: 45, scope: !625)
!630 = !DILocalVariable(name: "min", arg: 2, scope: !625, file: !1, line: 315, type: !32)
!631 = !DILocation(line: 315, column: 64, scope: !625)
!632 = !DILocalVariable(name: "time", scope: !625, file: !1, line: 317, type: !7)
!633 = !DILocation(line: 317, column: 8, scope: !625)
!634 = !DILocalVariable(name: "shuffle", scope: !625, file: !1, line: 318, type: !7)
!635 = !DILocation(line: 318, column: 8, scope: !625)
!636 = !DILocalVariable(name: "i", scope: !625, file: !1, line: 319, type: !32)
!637 = !DILocation(line: 319, column: 15, scope: !625)
!638 = !DILocalVariable(name: "mask", scope: !625, file: !1, line: 320, type: !32)
!639 = !DILocation(line: 320, column: 15, scope: !625)
!640 = !DILocation(line: 320, column: 26, scope: !625)
!641 = !DILocation(line: 320, column: 24, scope: !625)
!642 = !DILocation(line: 320, column: 32, scope: !625)
!643 = !DILocation(line: 322, column: 2, scope: !625)
!644 = !DILocation(line: 328, column: 9, scope: !645)
!645 = distinct !DILexicalBlock(scope: !625, file: !1, line: 328, column: 2)
!646 = !DILocation(line: 328, column: 7, scope: !645)
!647 = !DILocation(line: 328, column: 33, scope: !648)
!648 = distinct !DILexicalBlock(scope: !645, file: !1, line: 328, column: 2)
!649 = !DILocation(line: 328, column: 31, scope: !648)
!650 = !DILocation(line: 328, column: 38, scope: !648)
!651 = !DILocation(line: 328, column: 45, scope: !648)
!652 = !DILocation(line: 328, column: 43, scope: !648)
!653 = !DILocation(line: 328, column: 53, scope: !648)
!654 = !DILocation(line: 328, column: 51, scope: !648)
!655 = !DILocation(line: 328, column: 2, scope: !645)
!656 = !DILocation(line: 329, column: 14, scope: !657)
!657 = distinct !DILexicalBlock(scope: !648, file: !1, line: 328, column: 61)
!658 = !DILocation(line: 329, column: 21, scope: !657)
!659 = !DILocation(line: 329, column: 19, scope: !657)
!660 = !DILocation(line: 329, column: 11, scope: !657)
!661 = !DILocation(line: 330, column: 10, scope: !657)
!662 = !DILocation(line: 330, column: 18, scope: !657)
!663 = !DILocation(line: 330, column: 15, scope: !657)
!664 = !DILocation(line: 330, column: 8, scope: !657)
!665 = !DILocation(line: 331, column: 2, scope: !657)
!666 = !DILocation(line: 328, column: 57, scope: !648)
!667 = !DILocation(line: 328, column: 2, scope: !648)
!668 = distinct !{!668, !655, !669, !106}
!669 = !DILocation(line: 331, column: 2, scope: !645)
!670 = !DILocation(line: 337, column: 10, scope: !625)
!671 = !DILocation(line: 337, column: 24, scope: !625)
!672 = !DILocation(line: 337, column: 22, scope: !625)
!673 = !DILocation(line: 337, column: 20, scope: !625)
!674 = !DILocation(line: 337, column: 18, scope: !625)
!675 = !DILocation(line: 337, column: 2, scope: !625)
!676 = distinct !DISubprogram(name: "jent_rct_permanent_failure", scope: !1, file: !1, line: 279, type: !144, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!677 = !DILocalVariable(name: "ec", arg: 1, scope: !676, file: !1, line: 279, type: !22)
!678 = !DILocation(line: 279, column: 57, scope: !676)
!679 = !DILocation(line: 281, column: 10, scope: !676)
!680 = !DILocation(line: 281, column: 14, scope: !676)
!681 = !DILocation(line: 281, column: 24, scope: !676)
!682 = !DILocation(line: 281, column: 9, scope: !676)
!683 = !DILocation(line: 281, column: 2, scope: !676)
!684 = distinct !DISubprogram(name: "jent_apt_permanent_failure", scope: !1, file: !1, line: 188, type: !144, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!685 = !DILocalVariable(name: "ec", arg: 1, scope: !684, file: !1, line: 188, type: !22)
!686 = !DILocation(line: 188, column: 57, scope: !684)
!687 = !DILocation(line: 190, column: 10, scope: !684)
!688 = !DILocation(line: 190, column: 14, scope: !684)
!689 = !DILocation(line: 190, column: 24, scope: !684)
!690 = !DILocation(line: 190, column: 9, scope: !684)
!691 = !DILocation(line: 190, column: 2, scope: !684)
!692 = distinct !DISubprogram(name: "jent_rct_failure", scope: !1, file: !1, line: 284, type: !144, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!693 = !DILocalVariable(name: "ec", arg: 1, scope: !692, file: !1, line: 284, type: !22)
!694 = !DILocation(line: 284, column: 47, scope: !692)
!695 = !DILocation(line: 286, column: 10, scope: !692)
!696 = !DILocation(line: 286, column: 14, scope: !692)
!697 = !DILocation(line: 286, column: 24, scope: !692)
!698 = !DILocation(line: 286, column: 9, scope: !692)
!699 = !DILocation(line: 286, column: 2, scope: !692)
!700 = distinct !DISubprogram(name: "jent_apt_failure", scope: !1, file: !1, line: 193, type: !144, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!701 = !DILocalVariable(name: "ec", arg: 1, scope: !700, file: !1, line: 193, type: !22)
!702 = !DILocation(line: 193, column: 47, scope: !700)
!703 = !DILocation(line: 195, column: 10, scope: !700)
!704 = !DILocation(line: 195, column: 14, scope: !700)
!705 = !DILocation(line: 195, column: 24, scope: !700)
!706 = !DILocation(line: 195, column: 9, scope: !700)
!707 = !DILocation(line: 195, column: 2, scope: !700)
!708 = distinct !DISubprogram(name: "jent_apt_insert", scope: !1, file: !1, line: 169, type: !490, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!709 = !DILocalVariable(name: "ec", arg: 1, scope: !708, file: !1, line: 169, type: !22)
!710 = !DILocation(line: 169, column: 47, scope: !708)
!711 = !DILocalVariable(name: "delta_masked", arg: 2, scope: !708, file: !1, line: 169, type: !32)
!712 = !DILocation(line: 169, column: 64, scope: !708)
!713 = !DILocation(line: 172, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !708, file: !1, line: 172, column: 6)
!715 = !DILocation(line: 172, column: 11, scope: !714)
!716 = !DILocation(line: 172, column: 6, scope: !708)
!717 = !DILocation(line: 173, column: 18, scope: !718)
!718 = distinct !DILexicalBlock(scope: !714, file: !1, line: 172, column: 25)
!719 = !DILocation(line: 173, column: 3, scope: !718)
!720 = !DILocation(line: 173, column: 7, scope: !718)
!721 = !DILocation(line: 173, column: 16, scope: !718)
!722 = !DILocation(line: 174, column: 3, scope: !718)
!723 = !DILocation(line: 174, column: 7, scope: !718)
!724 = !DILocation(line: 174, column: 20, scope: !718)
!725 = !DILocation(line: 175, column: 3, scope: !718)
!726 = !DILocation(line: 178, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !708, file: !1, line: 178, column: 6)
!728 = !DILocation(line: 178, column: 22, scope: !727)
!729 = !DILocation(line: 178, column: 26, scope: !727)
!730 = !DILocation(line: 178, column: 19, scope: !727)
!731 = !DILocation(line: 178, column: 6, scope: !708)
!732 = !DILocation(line: 179, column: 3, scope: !727)
!733 = !DILocation(line: 179, column: 7, scope: !727)
!734 = !DILocation(line: 179, column: 16, scope: !727)
!735 = !DILocation(line: 181, column: 2, scope: !708)
!736 = !DILocation(line: 181, column: 6, scope: !708)
!737 = !DILocation(line: 181, column: 22, scope: !708)
!738 = !DILocation(line: 183, column: 6, scope: !739)
!739 = distinct !DILexicalBlock(scope: !708, file: !1, line: 183, column: 6)
!740 = !DILocation(line: 183, column: 10, scope: !739)
!741 = !DILocation(line: 183, column: 27, scope: !739)
!742 = !DILocation(line: 183, column: 6, scope: !708)
!743 = !DILocation(line: 184, column: 18, scope: !739)
!744 = !DILocation(line: 184, column: 22, scope: !739)
!745 = !DILocation(line: 184, column: 3, scope: !739)
!746 = !DILocation(line: 185, column: 1, scope: !708)
!747 = distinct !DISubprogram(name: "jent_rct_insert", scope: !1, file: !1, line: 220, type: !748, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !44)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !22, !21}
!750 = !DILocalVariable(name: "ec", arg: 1, scope: !747, file: !1, line: 220, type: !22)
!751 = !DILocation(line: 220, column: 47, scope: !747)
!752 = !DILocalVariable(name: "stuck", arg: 2, scope: !747, file: !1, line: 220, type: !21)
!753 = !DILocation(line: 220, column: 55, scope: !747)
!754 = !DILocation(line: 222, column: 6, scope: !755)
!755 = distinct !DILexicalBlock(scope: !747, file: !1, line: 222, column: 6)
!756 = !DILocation(line: 222, column: 6, scope: !747)
!757 = !DILocation(line: 223, column: 3, scope: !758)
!758 = distinct !DILexicalBlock(scope: !755, file: !1, line: 222, column: 13)
!759 = !DILocation(line: 223, column: 7, scope: !758)
!760 = !DILocation(line: 223, column: 16, scope: !758)
!761 = !DILocation(line: 224, column: 2, scope: !758)
!762 = !DILocation(line: 226, column: 3, scope: !763)
!763 = distinct !DILexicalBlock(scope: !755, file: !1, line: 224, column: 9)
!764 = !DILocation(line: 226, column: 7, scope: !763)
!765 = !DILocation(line: 226, column: 17, scope: !763)
!766 = !DILocation(line: 228, column: 1, scope: !747)
