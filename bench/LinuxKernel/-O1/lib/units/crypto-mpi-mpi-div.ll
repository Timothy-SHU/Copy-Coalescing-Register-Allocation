; ModuleID = 'lib/crypto/mpi/mpi-div.c'
source_filename = "lib/crypto/mpi/mpi-div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_fdiv_r(ptr noundef %rem, ptr noundef %dividend, ptr noundef %divisor) #0 align 16 !dbg !11 {
entry:
  %rem.addr = alloca ptr, align 8
  %dividend.addr = alloca ptr, align 8
  %divisor.addr = alloca ptr, align 8
  %divisor_sign = alloca i32, align 4
  %temp_divisor = alloca ptr, align 8
  store ptr %rem, ptr %rem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rem.addr, metadata !31, metadata !DIExpression()), !dbg !36
  store ptr %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !32, metadata !DIExpression()), !dbg !37
  store ptr %divisor, ptr %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !33, metadata !DIExpression()), !dbg !38
  call void @llvm.lifetime.start.p0(i64 4, ptr %divisor_sign) #6, !dbg !39
  call void @llvm.dbg.declare(metadata ptr %divisor_sign, metadata !34, metadata !DIExpression()), !dbg !40
  %0 = load ptr, ptr %divisor.addr, align 8, !dbg !41
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3, !dbg !42
  %1 = load i32, ptr %sign, align 4, !dbg !42
  store i32 %1, ptr %divisor_sign, align 4, !dbg !40
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp_divisor) #6, !dbg !43
  call void @llvm.dbg.declare(metadata ptr %temp_divisor, metadata !35, metadata !DIExpression()), !dbg !44
  store ptr null, ptr %temp_divisor, align 8, !dbg !44
  %2 = load ptr, ptr %rem.addr, align 8, !dbg !45
  %3 = load ptr, ptr %divisor.addr, align 8, !dbg !47
  %cmp = icmp eq ptr %2, %3, !dbg !48
  br i1 %cmp, label %if.then, label %if.end, !dbg !49

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %divisor.addr, align 8, !dbg !50
  %call = call ptr @mpi_copy(ptr noundef %4) #7, !dbg !52
  store ptr %call, ptr %temp_divisor, align 8, !dbg !53
  %5 = load ptr, ptr %temp_divisor, align 8, !dbg !54
  store ptr %5, ptr %divisor.addr, align 8, !dbg !55
  br label %if.end, !dbg !56

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %rem.addr, align 8, !dbg !57
  %7 = load ptr, ptr %dividend.addr, align 8, !dbg !58
  %8 = load ptr, ptr %divisor.addr, align 8, !dbg !59
  call void @mpi_tdiv_r(ptr noundef %6, ptr noundef %7, ptr noundef %8) #7, !dbg !60
  %9 = load i32, ptr %divisor_sign, align 4, !dbg !61
  %tobool = icmp ne i32 %9, 0, !dbg !61
  %10 = zext i1 %tobool to i64, !dbg !61
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !61
  %11 = load ptr, ptr %dividend.addr, align 8, !dbg !63
  %sign1 = getelementptr inbounds %struct.gcry_mpi, ptr %11, i32 0, i32 3, !dbg !64
  %12 = load i32, ptr %sign1, align 4, !dbg !64
  %tobool2 = icmp ne i32 %12, 0, !dbg !63
  %13 = zext i1 %tobool2 to i64, !dbg !63
  %cond3 = select i1 %tobool2, i32 1, i32 0, !dbg !63
  %xor = xor i32 %cond, %cond3, !dbg !65
  %tobool4 = icmp ne i32 %xor, 0, !dbg !65
  br i1 %tobool4, label %land.lhs.true, label %if.end7, !dbg !66

land.lhs.true:                                    ; preds = %if.end
  %14 = load ptr, ptr %rem.addr, align 8, !dbg !67
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %14, i32 0, i32 1, !dbg !68
  %15 = load i32, ptr %nlimbs, align 4, !dbg !68
  %tobool5 = icmp ne i32 %15, 0, !dbg !67
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !69

if.then6:                                         ; preds = %land.lhs.true
  %16 = load ptr, ptr %rem.addr, align 8, !dbg !70
  %17 = load ptr, ptr %rem.addr, align 8, !dbg !71
  %18 = load ptr, ptr %divisor.addr, align 8, !dbg !72
  call void @mpi_add(ptr noundef %16, ptr noundef %17, ptr noundef %18) #7, !dbg !73
  br label %if.end7, !dbg !73

if.end7:                                          ; preds = %if.then6, %land.lhs.true, %if.end
  %19 = load ptr, ptr %temp_divisor, align 8, !dbg !74
  %tobool8 = icmp ne ptr %19, null, !dbg !74
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !76

if.then9:                                         ; preds = %if.end7
  %20 = load ptr, ptr %temp_divisor, align 8, !dbg !77
  call void @mpi_free(ptr noundef %20) #7, !dbg !78
  br label %if.end10, !dbg !78

if.end10:                                         ; preds = %if.then9, %if.end7
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp_divisor) #6, !dbg !79
  call void @llvm.lifetime.end.p0(i64 4, ptr %divisor_sign) #6, !dbg !79
  ret void, !dbg !79
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !80 dso_local ptr @mpi_copy(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_tdiv_r(ptr noundef %rem, ptr noundef %num, ptr noundef %den) #0 align 16 !dbg !83 {
entry:
  %rem.addr = alloca ptr, align 8
  %num.addr = alloca ptr, align 8
  %den.addr = alloca ptr, align 8
  store ptr %rem, ptr %rem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rem.addr, metadata !85, metadata !DIExpression()), !dbg !88
  store ptr %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !86, metadata !DIExpression()), !dbg !89
  store ptr %den, ptr %den.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %den.addr, metadata !87, metadata !DIExpression()), !dbg !90
  %0 = load ptr, ptr %rem.addr, align 8, !dbg !91
  %1 = load ptr, ptr %num.addr, align 8, !dbg !92
  %2 = load ptr, ptr %den.addr, align 8, !dbg !93
  call void @mpi_tdiv_qr(ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2) #7, !dbg !94
  ret void, !dbg !95
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !96 dso_local void @mpi_add(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !97 dso_local void @mpi_free(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_fdiv_q(ptr noundef %quot, ptr noundef %dividend, ptr noundef %divisor) #0 align 16 !dbg !100 {
entry:
  %quot.addr = alloca ptr, align 8
  %dividend.addr = alloca ptr, align 8
  %divisor.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %quot, ptr %quot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %quot.addr, metadata !102, metadata !DIExpression()), !dbg !106
  store ptr %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !103, metadata !DIExpression()), !dbg !107
  store ptr %divisor, ptr %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !104, metadata !DIExpression()), !dbg !108
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #6, !dbg !109
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !105, metadata !DIExpression()), !dbg !110
  %0 = load ptr, ptr %quot.addr, align 8, !dbg !111
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1, !dbg !111
  %1 = load i32, ptr %nlimbs, align 4, !dbg !111
  %call = call ptr @mpi_alloc(i32 noundef %1) #7, !dbg !112
  store ptr %call, ptr %tmp, align 8, !dbg !110
  %2 = load ptr, ptr %quot.addr, align 8, !dbg !113
  %3 = load ptr, ptr %tmp, align 8, !dbg !114
  %4 = load ptr, ptr %dividend.addr, align 8, !dbg !115
  %5 = load ptr, ptr %divisor.addr, align 8, !dbg !116
  call void @mpi_fdiv_qr(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #7, !dbg !117
  %6 = load ptr, ptr %tmp, align 8, !dbg !118
  call void @mpi_free(ptr noundef %6) #7, !dbg !119
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #6, !dbg !120
  ret void, !dbg !120
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !121 dso_local ptr @mpi_alloc(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_fdiv_qr(ptr noundef %quot, ptr noundef %rem, ptr noundef %dividend, ptr noundef %divisor) #0 align 16 !dbg !124 {
entry:
  %quot.addr = alloca ptr, align 8
  %rem.addr = alloca ptr, align 8
  %dividend.addr = alloca ptr, align 8
  %divisor.addr = alloca ptr, align 8
  %divisor_sign = alloca i32, align 4
  %temp_divisor = alloca ptr, align 8
  store ptr %quot, ptr %quot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %quot.addr, metadata !128, metadata !DIExpression()), !dbg !134
  store ptr %rem, ptr %rem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rem.addr, metadata !129, metadata !DIExpression()), !dbg !135
  store ptr %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !130, metadata !DIExpression()), !dbg !136
  store ptr %divisor, ptr %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !131, metadata !DIExpression()), !dbg !137
  call void @llvm.lifetime.start.p0(i64 4, ptr %divisor_sign) #6, !dbg !138
  call void @llvm.dbg.declare(metadata ptr %divisor_sign, metadata !132, metadata !DIExpression()), !dbg !139
  %0 = load ptr, ptr %divisor.addr, align 8, !dbg !140
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3, !dbg !141
  %1 = load i32, ptr %sign, align 4, !dbg !141
  store i32 %1, ptr %divisor_sign, align 4, !dbg !139
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp_divisor) #6, !dbg !142
  call void @llvm.dbg.declare(metadata ptr %temp_divisor, metadata !133, metadata !DIExpression()), !dbg !143
  store ptr null, ptr %temp_divisor, align 8, !dbg !143
  %2 = load ptr, ptr %quot.addr, align 8, !dbg !144
  %3 = load ptr, ptr %divisor.addr, align 8, !dbg !146
  %cmp = icmp eq ptr %2, %3, !dbg !147
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !148

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %rem.addr, align 8, !dbg !149
  %5 = load ptr, ptr %divisor.addr, align 8, !dbg !150
  %cmp1 = icmp eq ptr %4, %5, !dbg !151
  br i1 %cmp1, label %if.then, label %if.end, !dbg !152

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load ptr, ptr %divisor.addr, align 8, !dbg !153
  %call = call ptr @mpi_copy(ptr noundef %6) #7, !dbg !155
  store ptr %call, ptr %temp_divisor, align 8, !dbg !156
  %7 = load ptr, ptr %temp_divisor, align 8, !dbg !157
  store ptr %7, ptr %divisor.addr, align 8, !dbg !158
  br label %if.end, !dbg !159

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %8 = load ptr, ptr %quot.addr, align 8, !dbg !160
  %9 = load ptr, ptr %rem.addr, align 8, !dbg !161
  %10 = load ptr, ptr %dividend.addr, align 8, !dbg !162
  %11 = load ptr, ptr %divisor.addr, align 8, !dbg !163
  call void @mpi_tdiv_qr(ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11) #7, !dbg !164
  %12 = load i32, ptr %divisor_sign, align 4, !dbg !165
  %13 = load ptr, ptr %dividend.addr, align 8, !dbg !167
  %sign2 = getelementptr inbounds %struct.gcry_mpi, ptr %13, i32 0, i32 3, !dbg !168
  %14 = load i32, ptr %sign2, align 4, !dbg !168
  %xor = xor i32 %12, %14, !dbg !169
  %tobool = icmp ne i32 %xor, 0, !dbg !169
  br i1 %tobool, label %land.lhs.true, label %if.end6, !dbg !170

land.lhs.true:                                    ; preds = %if.end
  %15 = load ptr, ptr %rem.addr, align 8, !dbg !171
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %15, i32 0, i32 1, !dbg !172
  %16 = load i32, ptr %nlimbs, align 4, !dbg !172
  %tobool3 = icmp ne i32 %16, 0, !dbg !171
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !173

if.then4:                                         ; preds = %land.lhs.true
  %17 = load ptr, ptr %quot.addr, align 8, !dbg !174
  %18 = load ptr, ptr %quot.addr, align 8, !dbg !176
  %call5 = call i32 @mpi_sub_ui(ptr noundef %17, ptr noundef %18, i64 noundef 1) #7, !dbg !177
  %19 = load ptr, ptr %rem.addr, align 8, !dbg !178
  %20 = load ptr, ptr %rem.addr, align 8, !dbg !179
  %21 = load ptr, ptr %divisor.addr, align 8, !dbg !180
  call void @mpi_add(ptr noundef %19, ptr noundef %20, ptr noundef %21) #7, !dbg !181
  br label %if.end6, !dbg !182

if.end6:                                          ; preds = %if.then4, %land.lhs.true, %if.end
  %22 = load ptr, ptr %temp_divisor, align 8, !dbg !183
  %tobool7 = icmp ne ptr %22, null, !dbg !183
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !185

if.then8:                                         ; preds = %if.end6
  %23 = load ptr, ptr %temp_divisor, align 8, !dbg !186
  call void @mpi_free(ptr noundef %23) #7, !dbg !187
  br label %if.end9, !dbg !187

if.end9:                                          ; preds = %if.then8, %if.end6
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp_divisor) #6, !dbg !188
  call void @llvm.lifetime.end.p0(i64 4, ptr %divisor_sign) #6, !dbg !188
  ret void, !dbg !188
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_tdiv_qr(ptr noundef %quot, ptr noundef %rem, ptr noundef %num, ptr noundef %den) #0 align 16 !dbg !189 {
entry:
  %quot.addr = alloca ptr, align 8
  %rem.addr = alloca ptr, align 8
  %num.addr = alloca ptr, align 8
  %den.addr = alloca ptr, align 8
  %np = alloca ptr, align 8
  %dp = alloca ptr, align 8
  %qp = alloca ptr, align 8
  %rp = alloca ptr, align 8
  %nsize = alloca i32, align 4
  %dsize = alloca i32, align 4
  %qsize = alloca i32, align 4
  %rsize = alloca i32, align 4
  %sign_remainder = alloca i32, align 4
  %sign_quotient = alloca i32, align 4
  %normalization_steps = alloca i32, align 4
  %q_limb = alloca i64, align 8
  %marker = alloca [5 x ptr], align 16
  %markidx = alloca i32, align 4
  %_i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %rlimb = alloca i64, align 8
  %_i60 = alloca i32, align 4
  %tp = alloca ptr, align 8
  %nlimb = alloca i64, align 8
  %tp103 = alloca ptr, align 8
  %_i109 = alloca i32, align 4
  %_i128 = alloca i32, align 4
  store ptr %quot, ptr %quot.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %quot.addr, metadata !191, metadata !DIExpression()), !dbg !243
  store ptr %rem, ptr %rem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rem.addr, metadata !192, metadata !DIExpression()), !dbg !244
  store ptr %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !193, metadata !DIExpression()), !dbg !245
  store ptr %den, ptr %den.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %den.addr, metadata !194, metadata !DIExpression()), !dbg !246
  call void @llvm.lifetime.start.p0(i64 8, ptr %np) #6, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %np, metadata !195, metadata !DIExpression()), !dbg !248
  call void @llvm.lifetime.start.p0(i64 8, ptr %dp) #6, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %dp, metadata !198, metadata !DIExpression()), !dbg !249
  call void @llvm.lifetime.start.p0(i64 8, ptr %qp) #6, !dbg !250
  call void @llvm.dbg.declare(metadata ptr %qp, metadata !199, metadata !DIExpression()), !dbg !251
  call void @llvm.lifetime.start.p0(i64 8, ptr %rp) #6, !dbg !250
  call void @llvm.dbg.declare(metadata ptr %rp, metadata !200, metadata !DIExpression()), !dbg !252
  call void @llvm.lifetime.start.p0(i64 4, ptr %nsize) #6, !dbg !253
  call void @llvm.dbg.declare(metadata ptr %nsize, metadata !201, metadata !DIExpression()), !dbg !254
  %0 = load ptr, ptr %num.addr, align 8, !dbg !255
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1, !dbg !256
  %1 = load i32, ptr %nlimbs, align 4, !dbg !256
  store i32 %1, ptr %nsize, align 4, !dbg !254
  call void @llvm.lifetime.start.p0(i64 4, ptr %dsize) #6, !dbg !257
  call void @llvm.dbg.declare(metadata ptr %dsize, metadata !203, metadata !DIExpression()), !dbg !258
  %2 = load ptr, ptr %den.addr, align 8, !dbg !259
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1, !dbg !260
  %3 = load i32, ptr %nlimbs1, align 4, !dbg !260
  store i32 %3, ptr %dsize, align 4, !dbg !258
  call void @llvm.lifetime.start.p0(i64 4, ptr %qsize) #6, !dbg !261
  call void @llvm.dbg.declare(metadata ptr %qsize, metadata !204, metadata !DIExpression()), !dbg !262
  call void @llvm.lifetime.start.p0(i64 4, ptr %rsize) #6, !dbg !261
  call void @llvm.dbg.declare(metadata ptr %rsize, metadata !205, metadata !DIExpression()), !dbg !263
  call void @llvm.lifetime.start.p0(i64 4, ptr %sign_remainder) #6, !dbg !264
  call void @llvm.dbg.declare(metadata ptr %sign_remainder, metadata !206, metadata !DIExpression()), !dbg !265
  %4 = load ptr, ptr %num.addr, align 8, !dbg !266
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 3, !dbg !267
  %5 = load i32, ptr %sign, align 4, !dbg !267
  store i32 %5, ptr %sign_remainder, align 4, !dbg !265
  call void @llvm.lifetime.start.p0(i64 4, ptr %sign_quotient) #6, !dbg !268
  call void @llvm.dbg.declare(metadata ptr %sign_quotient, metadata !207, metadata !DIExpression()), !dbg !269
  %6 = load ptr, ptr %num.addr, align 8, !dbg !270
  %sign2 = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 3, !dbg !271
  %7 = load i32, ptr %sign2, align 4, !dbg !271
  %8 = load ptr, ptr %den.addr, align 8, !dbg !272
  %sign3 = getelementptr inbounds %struct.gcry_mpi, ptr %8, i32 0, i32 3, !dbg !273
  %9 = load i32, ptr %sign3, align 4, !dbg !273
  %xor = xor i32 %7, %9, !dbg !274
  store i32 %xor, ptr %sign_quotient, align 4, !dbg !269
  call void @llvm.lifetime.start.p0(i64 4, ptr %normalization_steps) #6, !dbg !275
  call void @llvm.dbg.declare(metadata ptr %normalization_steps, metadata !208, metadata !DIExpression()), !dbg !276
  call void @llvm.lifetime.start.p0(i64 8, ptr %q_limb) #6, !dbg !277
  call void @llvm.dbg.declare(metadata ptr %q_limb, metadata !209, metadata !DIExpression()), !dbg !278
  call void @llvm.lifetime.start.p0(i64 40, ptr %marker) #6, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %marker, metadata !210, metadata !DIExpression()), !dbg !280
  call void @llvm.lifetime.start.p0(i64 4, ptr %markidx) #6, !dbg !281
  call void @llvm.dbg.declare(metadata ptr %markidx, metadata !214, metadata !DIExpression()), !dbg !282
  store i32 0, ptr %markidx, align 4, !dbg !282
  %10 = load i32, ptr %nsize, align 4, !dbg !283
  %add = add i32 %10, 1, !dbg !284
  store i32 %add, ptr %rsize, align 4, !dbg !285
  %11 = load ptr, ptr %rem.addr, align 8, !dbg !286
  %12 = load i32, ptr %rsize, align 4, !dbg !287
  %call = call i32 @mpi_resize(ptr noundef %11, i32 noundef %12) #7, !dbg !288
  %13 = load i32, ptr %rsize, align 4, !dbg !289
  %14 = load i32, ptr %dsize, align 4, !dbg !290
  %sub = sub i32 %13, %14, !dbg !291
  store i32 %sub, ptr %qsize, align 4, !dbg !292
  %15 = load i32, ptr %qsize, align 4, !dbg !293
  %cmp = icmp sle i32 %15, 0, !dbg !294
  br i1 %cmp, label %if.then, label %if.end18, !dbg !295

if.then:                                          ; preds = %entry
  %16 = load ptr, ptr %num.addr, align 8, !dbg !296
  %17 = load ptr, ptr %rem.addr, align 8, !dbg !297
  %cmp4 = icmp ne ptr %16, %17, !dbg !298
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !299

if.then5:                                         ; preds = %if.then
  %18 = load ptr, ptr %num.addr, align 8, !dbg !300
  %nlimbs6 = getelementptr inbounds %struct.gcry_mpi, ptr %18, i32 0, i32 1, !dbg !301
  %19 = load i32, ptr %nlimbs6, align 4, !dbg !301
  %20 = load ptr, ptr %rem.addr, align 8, !dbg !302
  %nlimbs7 = getelementptr inbounds %struct.gcry_mpi, ptr %20, i32 0, i32 1, !dbg !303
  store i32 %19, ptr %nlimbs7, align 4, !dbg !304
  %21 = load ptr, ptr %num.addr, align 8, !dbg !305
  %sign8 = getelementptr inbounds %struct.gcry_mpi, ptr %21, i32 0, i32 3, !dbg !306
  %22 = load i32, ptr %sign8, align 4, !dbg !306
  %23 = load ptr, ptr %rem.addr, align 8, !dbg !307
  %sign9 = getelementptr inbounds %struct.gcry_mpi, ptr %23, i32 0, i32 3, !dbg !308
  store i32 %22, ptr %sign9, align 4, !dbg !309
  br label %do.body, !dbg !310

do.body:                                          ; preds = %if.then5
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #6, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !215, metadata !DIExpression()), !dbg !311
  store i32 0, ptr %_i, align 4, !dbg !312
  br label %for.cond, !dbg !312

for.cond:                                         ; preds = %for.inc, %do.body
  %24 = load i32, ptr %_i, align 4, !dbg !314
  %25 = load i32, ptr %nsize, align 4, !dbg !314
  %cmp10 = icmp slt i32 %24, %25, !dbg !314
  br i1 %cmp10, label %for.body, label %for.end, !dbg !312

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr %num.addr, align 8, !dbg !314
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %26, i32 0, i32 5, !dbg !314
  %27 = load ptr, ptr %d, align 8, !dbg !314
  %28 = load i32, ptr %_i, align 4, !dbg !314
  %idxprom = sext i32 %28 to i64, !dbg !314
  %arrayidx = getelementptr i64, ptr %27, i64 %idxprom, !dbg !314
  %29 = load i64, ptr %arrayidx, align 8, !dbg !314
  %30 = load ptr, ptr %rem.addr, align 8, !dbg !314
  %d11 = getelementptr inbounds %struct.gcry_mpi, ptr %30, i32 0, i32 5, !dbg !314
  %31 = load ptr, ptr %d11, align 8, !dbg !314
  %32 = load i32, ptr %_i, align 4, !dbg !314
  %idxprom12 = sext i32 %32 to i64, !dbg !314
  %arrayidx13 = getelementptr i64, ptr %31, i64 %idxprom12, !dbg !314
  store i64 %29, ptr %arrayidx13, align 8, !dbg !314
  br label %for.inc, !dbg !314

for.inc:                                          ; preds = %for.body
  %33 = load i32, ptr %_i, align 4, !dbg !314
  %inc = add i32 %33, 1, !dbg !314
  store i32 %inc, ptr %_i, align 4, !dbg !314
  br label %for.cond, !dbg !314, !llvm.loop !316

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #6, !dbg !310
  br label %do.cond, !dbg !311

do.cond:                                          ; preds = %for.end
  br label %do.end, !dbg !311

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !319

if.end:                                           ; preds = %do.end, %if.then
  %34 = load ptr, ptr %quot.addr, align 8, !dbg !320
  %tobool = icmp ne ptr %34, null, !dbg !320
  br i1 %tobool, label %if.then14, label %if.end17, !dbg !322

if.then14:                                        ; preds = %if.end
  %35 = load ptr, ptr %quot.addr, align 8, !dbg !323
  %nlimbs15 = getelementptr inbounds %struct.gcry_mpi, ptr %35, i32 0, i32 1, !dbg !325
  store i32 0, ptr %nlimbs15, align 4, !dbg !326
  %36 = load ptr, ptr %quot.addr, align 8, !dbg !327
  %sign16 = getelementptr inbounds %struct.gcry_mpi, ptr %36, i32 0, i32 3, !dbg !328
  store i32 0, ptr %sign16, align 4, !dbg !329
  br label %if.end17, !dbg !330

if.end17:                                         ; preds = %if.then14, %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !331

if.end18:                                         ; preds = %entry
  %37 = load ptr, ptr %quot.addr, align 8, !dbg !332
  %tobool19 = icmp ne ptr %37, null, !dbg !332
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !334

if.then20:                                        ; preds = %if.end18
  %38 = load ptr, ptr %quot.addr, align 8, !dbg !335
  %39 = load i32, ptr %qsize, align 4, !dbg !336
  %call21 = call i32 @mpi_resize(ptr noundef %38, i32 noundef %39) #7, !dbg !337
  br label %if.end22, !dbg !337

if.end22:                                         ; preds = %if.then20, %if.end18
  %40 = load ptr, ptr %num.addr, align 8, !dbg !338
  %d23 = getelementptr inbounds %struct.gcry_mpi, ptr %40, i32 0, i32 5, !dbg !339
  %41 = load ptr, ptr %d23, align 8, !dbg !339
  store ptr %41, ptr %np, align 8, !dbg !340
  %42 = load ptr, ptr %den.addr, align 8, !dbg !341
  %d24 = getelementptr inbounds %struct.gcry_mpi, ptr %42, i32 0, i32 5, !dbg !342
  %43 = load ptr, ptr %d24, align 8, !dbg !342
  store ptr %43, ptr %dp, align 8, !dbg !343
  %44 = load ptr, ptr %rem.addr, align 8, !dbg !344
  %d25 = getelementptr inbounds %struct.gcry_mpi, ptr %44, i32 0, i32 5, !dbg !345
  %45 = load ptr, ptr %d25, align 8, !dbg !345
  store ptr %45, ptr %rp, align 8, !dbg !346
  %46 = load i32, ptr %dsize, align 4, !dbg !347
  %cmp26 = icmp eq i32 %46, 1, !dbg !348
  br i1 %cmp26, label %if.then27, label %if.end48, !dbg !349

if.then27:                                        ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr %rlimb) #6, !dbg !350
  call void @llvm.dbg.declare(metadata ptr %rlimb, metadata !221, metadata !DIExpression()), !dbg !351
  %47 = load ptr, ptr %quot.addr, align 8, !dbg !352
  %tobool28 = icmp ne ptr %47, null, !dbg !352
  br i1 %tobool28, label %if.then29, label %if.else, !dbg !354

if.then29:                                        ; preds = %if.then27
  %48 = load ptr, ptr %quot.addr, align 8, !dbg !355
  %d30 = getelementptr inbounds %struct.gcry_mpi, ptr %48, i32 0, i32 5, !dbg !357
  %49 = load ptr, ptr %d30, align 8, !dbg !357
  store ptr %49, ptr %qp, align 8, !dbg !358
  %50 = load ptr, ptr %qp, align 8, !dbg !359
  %51 = load ptr, ptr %np, align 8, !dbg !360
  %52 = load i32, ptr %nsize, align 4, !dbg !361
  %53 = load ptr, ptr %dp, align 8, !dbg !362
  %arrayidx31 = getelementptr i64, ptr %53, i64 0, !dbg !362
  %54 = load i64, ptr %arrayidx31, align 8, !dbg !362
  %call32 = call i64 @mpihelp_divmod_1(ptr noundef %50, ptr noundef %51, i32 noundef %52, i64 noundef %54) #7, !dbg !363
  store i64 %call32, ptr %rlimb, align 8, !dbg !364
  %55 = load ptr, ptr %qp, align 8, !dbg !365
  %56 = load i32, ptr %qsize, align 4, !dbg !366
  %sub33 = sub i32 %56, 1, !dbg !367
  %idxprom34 = sext i32 %sub33 to i64, !dbg !365
  %arrayidx35 = getelementptr i64, ptr %55, i64 %idxprom34, !dbg !365
  %57 = load i64, ptr %arrayidx35, align 8, !dbg !365
  %cmp36 = icmp eq i64 %57, 0, !dbg !368
  %conv = zext i1 %cmp36 to i32, !dbg !368
  %58 = load i32, ptr %qsize, align 4, !dbg !369
  %sub37 = sub i32 %58, %conv, !dbg !369
  store i32 %sub37, ptr %qsize, align 4, !dbg !369
  %59 = load i32, ptr %qsize, align 4, !dbg !370
  %60 = load ptr, ptr %quot.addr, align 8, !dbg !371
  %nlimbs38 = getelementptr inbounds %struct.gcry_mpi, ptr %60, i32 0, i32 1, !dbg !372
  store i32 %59, ptr %nlimbs38, align 4, !dbg !373
  %61 = load i32, ptr %sign_quotient, align 4, !dbg !374
  %62 = load ptr, ptr %quot.addr, align 8, !dbg !375
  %sign39 = getelementptr inbounds %struct.gcry_mpi, ptr %62, i32 0, i32 3, !dbg !376
  store i32 %61, ptr %sign39, align 4, !dbg !377
  br label %if.end42, !dbg !378

if.else:                                          ; preds = %if.then27
  %63 = load ptr, ptr %np, align 8, !dbg !379
  %64 = load i32, ptr %nsize, align 4, !dbg !380
  %65 = load ptr, ptr %dp, align 8, !dbg !381
  %arrayidx40 = getelementptr i64, ptr %65, i64 0, !dbg !381
  %66 = load i64, ptr %arrayidx40, align 8, !dbg !381
  %call41 = call i64 @mpihelp_mod_1(ptr noundef %63, i32 noundef %64, i64 noundef %66) #7, !dbg !382
  store i64 %call41, ptr %rlimb, align 8, !dbg !383
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then29
  %67 = load i64, ptr %rlimb, align 8, !dbg !384
  %68 = load ptr, ptr %rp, align 8, !dbg !385
  %arrayidx43 = getelementptr i64, ptr %68, i64 0, !dbg !385
  store i64 %67, ptr %arrayidx43, align 8, !dbg !386
  %69 = load i64, ptr %rlimb, align 8, !dbg !387
  %cmp44 = icmp ne i64 %69, 0, !dbg !388
  %70 = zext i1 %cmp44 to i64, !dbg !387
  %cond = select i1 %cmp44, i32 1, i32 0, !dbg !387
  store i32 %cond, ptr %rsize, align 4, !dbg !389
  %71 = load i32, ptr %rsize, align 4, !dbg !390
  %72 = load ptr, ptr %rem.addr, align 8, !dbg !391
  %nlimbs46 = getelementptr inbounds %struct.gcry_mpi, ptr %72, i32 0, i32 1, !dbg !392
  store i32 %71, ptr %nlimbs46, align 4, !dbg !393
  %73 = load i32, ptr %sign_remainder, align 4, !dbg !394
  %74 = load ptr, ptr %rem.addr, align 8, !dbg !395
  %sign47 = getelementptr inbounds %struct.gcry_mpi, ptr %74, i32 0, i32 3, !dbg !396
  store i32 %73, ptr %sign47, align 4, !dbg !397
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %rlimb) #6, !dbg !398
  br label %cleanup

if.end48:                                         ; preds = %if.end22
  %75 = load ptr, ptr %quot.addr, align 8, !dbg !399
  %tobool49 = icmp ne ptr %75, null, !dbg !399
  br i1 %tobool49, label %if.then50, label %if.else75, !dbg !400

if.then50:                                        ; preds = %if.end48
  %76 = load ptr, ptr %quot.addr, align 8, !dbg !401
  %d51 = getelementptr inbounds %struct.gcry_mpi, ptr %76, i32 0, i32 5, !dbg !402
  %77 = load ptr, ptr %d51, align 8, !dbg !402
  store ptr %77, ptr %qp, align 8, !dbg !403
  %78 = load ptr, ptr %qp, align 8, !dbg !404
  %79 = load ptr, ptr %np, align 8, !dbg !405
  %cmp52 = icmp eq ptr %78, %79, !dbg !406
  br i1 %cmp52, label %if.then54, label %if.end74, !dbg !407

if.then54:                                        ; preds = %if.then50
  %80 = load i32, ptr %nsize, align 4, !dbg !408
  %call55 = call ptr @mpi_alloc_limb_space(i32 noundef %80) #7, !dbg !409
  %81 = load i32, ptr %markidx, align 4, !dbg !410
  %inc56 = add i32 %81, 1, !dbg !410
  store i32 %inc56, ptr %markidx, align 4, !dbg !410
  %idxprom57 = sext i32 %81 to i64, !dbg !411
  %arrayidx58 = getelementptr [5 x ptr], ptr %marker, i64 0, i64 %idxprom57, !dbg !411
  store ptr %call55, ptr %arrayidx58, align 8, !dbg !412
  store ptr %call55, ptr %np, align 8, !dbg !413
  br label %do.body59, !dbg !414

do.body59:                                        ; preds = %if.then54
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i60) #6, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %_i60, metadata !224, metadata !DIExpression()), !dbg !415
  store i32 0, ptr %_i60, align 4, !dbg !416
  br label %for.cond61, !dbg !416

for.cond61:                                       ; preds = %for.inc69, %do.body59
  %82 = load i32, ptr %_i60, align 4, !dbg !418
  %83 = load i32, ptr %nsize, align 4, !dbg !418
  %cmp62 = icmp slt i32 %82, %83, !dbg !418
  br i1 %cmp62, label %for.body64, label %for.end71, !dbg !416

for.body64:                                       ; preds = %for.cond61
  %84 = load ptr, ptr %qp, align 8, !dbg !418
  %85 = load i32, ptr %_i60, align 4, !dbg !418
  %idxprom65 = sext i32 %85 to i64, !dbg !418
  %arrayidx66 = getelementptr i64, ptr %84, i64 %idxprom65, !dbg !418
  %86 = load i64, ptr %arrayidx66, align 8, !dbg !418
  %87 = load ptr, ptr %np, align 8, !dbg !418
  %88 = load i32, ptr %_i60, align 4, !dbg !418
  %idxprom67 = sext i32 %88 to i64, !dbg !418
  %arrayidx68 = getelementptr i64, ptr %87, i64 %idxprom67, !dbg !418
  store i64 %86, ptr %arrayidx68, align 8, !dbg !418
  br label %for.inc69, !dbg !418

for.inc69:                                        ; preds = %for.body64
  %89 = load i32, ptr %_i60, align 4, !dbg !418
  %inc70 = add i32 %89, 1, !dbg !418
  store i32 %inc70, ptr %_i60, align 4, !dbg !418
  br label %for.cond61, !dbg !418, !llvm.loop !420

for.end71:                                        ; preds = %for.cond61
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i60) #6, !dbg !414
  br label %do.cond72, !dbg !415

do.cond72:                                        ; preds = %for.end71
  br label %do.end73, !dbg !415

do.end73:                                         ; preds = %do.cond72
  br label %if.end74, !dbg !421

if.end74:                                         ; preds = %do.end73, %if.then50
  br label %if.end76, !dbg !422

if.else75:                                        ; preds = %if.end48
  %90 = load ptr, ptr %rp, align 8, !dbg !423
  %91 = load i32, ptr %dsize, align 4, !dbg !424
  %idx.ext = sext i32 %91 to i64, !dbg !425
  %add.ptr = getelementptr i64, ptr %90, i64 %idx.ext, !dbg !425
  store ptr %add.ptr, ptr %qp, align 8, !dbg !426
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %if.end74
  %92 = load ptr, ptr %dp, align 8, !dbg !427
  %93 = load i32, ptr %dsize, align 4, !dbg !428
  %sub77 = sub i32 %93, 1, !dbg !429
  %idxprom78 = sext i32 %sub77 to i64, !dbg !427
  %arrayidx79 = getelementptr i64, ptr %92, i64 %idxprom78, !dbg !427
  %94 = load i64, ptr %arrayidx79, align 8, !dbg !427
  %call80 = call i32 @count_leading_zeros(i64 noundef %94) #7, !dbg !430
  store i32 %call80, ptr %normalization_steps, align 4, !dbg !431
  %95 = load i32, ptr %normalization_steps, align 4, !dbg !432
  %tobool81 = icmp ne i32 %95, 0, !dbg !432
  br i1 %tobool81, label %if.then82, label %if.else96, !dbg !433

if.then82:                                        ; preds = %if.end76
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp) #6, !dbg !434
  call void @llvm.dbg.declare(metadata ptr %tp, metadata !230, metadata !DIExpression()), !dbg !435
  call void @llvm.lifetime.start.p0(i64 8, ptr %nlimb) #6, !dbg !436
  call void @llvm.dbg.declare(metadata ptr %nlimb, metadata !233, metadata !DIExpression()), !dbg !437
  %96 = load i32, ptr %dsize, align 4, !dbg !438
  %call83 = call ptr @mpi_alloc_limb_space(i32 noundef %96) #7, !dbg !439
  %97 = load i32, ptr %markidx, align 4, !dbg !440
  %inc84 = add i32 %97, 1, !dbg !440
  store i32 %inc84, ptr %markidx, align 4, !dbg !440
  %idxprom85 = sext i32 %97 to i64, !dbg !441
  %arrayidx86 = getelementptr [5 x ptr], ptr %marker, i64 0, i64 %idxprom85, !dbg !441
  store ptr %call83, ptr %arrayidx86, align 8, !dbg !442
  store ptr %call83, ptr %tp, align 8, !dbg !443
  %98 = load ptr, ptr %tp, align 8, !dbg !444
  %99 = load ptr, ptr %dp, align 8, !dbg !445
  %100 = load i32, ptr %dsize, align 4, !dbg !446
  %101 = load i32, ptr %normalization_steps, align 4, !dbg !447
  %call87 = call i64 @mpihelp_lshift(ptr noundef %98, ptr noundef %99, i32 noundef %100, i32 noundef %101) #7, !dbg !448
  %102 = load ptr, ptr %tp, align 8, !dbg !449
  store ptr %102, ptr %dp, align 8, !dbg !450
  %103 = load ptr, ptr %rp, align 8, !dbg !451
  %104 = load ptr, ptr %np, align 8, !dbg !452
  %105 = load i32, ptr %nsize, align 4, !dbg !453
  %106 = load i32, ptr %normalization_steps, align 4, !dbg !454
  %call88 = call i64 @mpihelp_lshift(ptr noundef %103, ptr noundef %104, i32 noundef %105, i32 noundef %106) #7, !dbg !455
  store i64 %call88, ptr %nlimb, align 8, !dbg !456
  %107 = load i64, ptr %nlimb, align 8, !dbg !457
  %tobool89 = icmp ne i64 %107, 0, !dbg !457
  br i1 %tobool89, label %if.then90, label %if.else94, !dbg !459

if.then90:                                        ; preds = %if.then82
  %108 = load i64, ptr %nlimb, align 8, !dbg !460
  %109 = load ptr, ptr %rp, align 8, !dbg !462
  %110 = load i32, ptr %nsize, align 4, !dbg !463
  %idxprom91 = sext i32 %110 to i64, !dbg !462
  %arrayidx92 = getelementptr i64, ptr %109, i64 %idxprom91, !dbg !462
  store i64 %108, ptr %arrayidx92, align 8, !dbg !464
  %111 = load i32, ptr %nsize, align 4, !dbg !465
  %add93 = add i32 %111, 1, !dbg !466
  store i32 %add93, ptr %rsize, align 4, !dbg !467
  br label %if.end95, !dbg !468

if.else94:                                        ; preds = %if.then82
  %112 = load i32, ptr %nsize, align 4, !dbg !469
  store i32 %112, ptr %rsize, align 4, !dbg !470
  br label %if.end95

if.end95:                                         ; preds = %if.else94, %if.then90
  call void @llvm.lifetime.end.p0(i64 8, ptr %nlimb) #6, !dbg !471
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp) #6, !dbg !471
  br label %if.end143, !dbg !472

if.else96:                                        ; preds = %if.end76
  %113 = load ptr, ptr %dp, align 8, !dbg !473
  %114 = load ptr, ptr %rp, align 8, !dbg !474
  %cmp97 = icmp eq ptr %113, %114, !dbg !475
  br i1 %cmp97, label %if.then102, label %lor.lhs.false, !dbg !476

lor.lhs.false:                                    ; preds = %if.else96
  %115 = load ptr, ptr %quot.addr, align 8, !dbg !477
  %tobool99 = icmp ne ptr %115, null, !dbg !477
  br i1 %tobool99, label %land.lhs.true, label %if.end123, !dbg !478

land.lhs.true:                                    ; preds = %lor.lhs.false
  %116 = load ptr, ptr %dp, align 8, !dbg !479
  %117 = load ptr, ptr %qp, align 8, !dbg !480
  %cmp100 = icmp eq ptr %116, %117, !dbg !481
  br i1 %cmp100, label %if.then102, label %if.end123, !dbg !482

if.then102:                                       ; preds = %land.lhs.true, %if.else96
  call void @llvm.lifetime.start.p0(i64 8, ptr %tp103) #6, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %tp103, metadata !234, metadata !DIExpression()), !dbg !484
  %118 = load i32, ptr %dsize, align 4, !dbg !485
  %call104 = call ptr @mpi_alloc_limb_space(i32 noundef %118) #7, !dbg !486
  %119 = load i32, ptr %markidx, align 4, !dbg !487
  %inc105 = add i32 %119, 1, !dbg !487
  store i32 %inc105, ptr %markidx, align 4, !dbg !487
  %idxprom106 = sext i32 %119 to i64, !dbg !488
  %arrayidx107 = getelementptr [5 x ptr], ptr %marker, i64 0, i64 %idxprom106, !dbg !488
  store ptr %call104, ptr %arrayidx107, align 8, !dbg !489
  store ptr %call104, ptr %tp103, align 8, !dbg !490
  br label %do.body108, !dbg !491

do.body108:                                       ; preds = %if.then102
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i109) #6, !dbg !492
  call void @llvm.dbg.declare(metadata ptr %_i109, metadata !238, metadata !DIExpression()), !dbg !492
  store i32 0, ptr %_i109, align 4, !dbg !493
  br label %for.cond110, !dbg !493

for.cond110:                                      ; preds = %for.inc118, %do.body108
  %120 = load i32, ptr %_i109, align 4, !dbg !495
  %121 = load i32, ptr %dsize, align 4, !dbg !495
  %cmp111 = icmp slt i32 %120, %121, !dbg !495
  br i1 %cmp111, label %for.body113, label %for.end120, !dbg !493

for.body113:                                      ; preds = %for.cond110
  %122 = load ptr, ptr %dp, align 8, !dbg !495
  %123 = load i32, ptr %_i109, align 4, !dbg !495
  %idxprom114 = sext i32 %123 to i64, !dbg !495
  %arrayidx115 = getelementptr i64, ptr %122, i64 %idxprom114, !dbg !495
  %124 = load i64, ptr %arrayidx115, align 8, !dbg !495
  %125 = load ptr, ptr %tp103, align 8, !dbg !495
  %126 = load i32, ptr %_i109, align 4, !dbg !495
  %idxprom116 = sext i32 %126 to i64, !dbg !495
  %arrayidx117 = getelementptr i64, ptr %125, i64 %idxprom116, !dbg !495
  store i64 %124, ptr %arrayidx117, align 8, !dbg !495
  br label %for.inc118, !dbg !495

for.inc118:                                       ; preds = %for.body113
  %127 = load i32, ptr %_i109, align 4, !dbg !495
  %inc119 = add i32 %127, 1, !dbg !495
  store i32 %inc119, ptr %_i109, align 4, !dbg !495
  br label %for.cond110, !dbg !495, !llvm.loop !497

for.end120:                                       ; preds = %for.cond110
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i109) #6, !dbg !491
  br label %do.cond121, !dbg !492

do.cond121:                                       ; preds = %for.end120
  br label %do.end122, !dbg !492

do.end122:                                        ; preds = %do.cond121
  %128 = load ptr, ptr %tp103, align 8, !dbg !498
  store ptr %128, ptr %dp, align 8, !dbg !499
  call void @llvm.lifetime.end.p0(i64 8, ptr %tp103) #6, !dbg !500
  br label %if.end123, !dbg !501

if.end123:                                        ; preds = %do.end122, %land.lhs.true, %lor.lhs.false
  %129 = load ptr, ptr %rp, align 8, !dbg !502
  %130 = load ptr, ptr %np, align 8, !dbg !503
  %cmp124 = icmp ne ptr %129, %130, !dbg !504
  br i1 %cmp124, label %if.then126, label %if.end142, !dbg !505

if.then126:                                       ; preds = %if.end123
  br label %do.body127, !dbg !506

do.body127:                                       ; preds = %if.then126
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i128) #6, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %_i128, metadata !240, metadata !DIExpression()), !dbg !507
  store i32 0, ptr %_i128, align 4, !dbg !508
  br label %for.cond129, !dbg !508

for.cond129:                                      ; preds = %for.inc137, %do.body127
  %131 = load i32, ptr %_i128, align 4, !dbg !510
  %132 = load i32, ptr %nsize, align 4, !dbg !510
  %cmp130 = icmp slt i32 %131, %132, !dbg !510
  br i1 %cmp130, label %for.body132, label %for.end139, !dbg !508

for.body132:                                      ; preds = %for.cond129
  %133 = load ptr, ptr %np, align 8, !dbg !510
  %134 = load i32, ptr %_i128, align 4, !dbg !510
  %idxprom133 = sext i32 %134 to i64, !dbg !510
  %arrayidx134 = getelementptr i64, ptr %133, i64 %idxprom133, !dbg !510
  %135 = load i64, ptr %arrayidx134, align 8, !dbg !510
  %136 = load ptr, ptr %rp, align 8, !dbg !510
  %137 = load i32, ptr %_i128, align 4, !dbg !510
  %idxprom135 = sext i32 %137 to i64, !dbg !510
  %arrayidx136 = getelementptr i64, ptr %136, i64 %idxprom135, !dbg !510
  store i64 %135, ptr %arrayidx136, align 8, !dbg !510
  br label %for.inc137, !dbg !510

for.inc137:                                       ; preds = %for.body132
  %138 = load i32, ptr %_i128, align 4, !dbg !510
  %inc138 = add i32 %138, 1, !dbg !510
  store i32 %inc138, ptr %_i128, align 4, !dbg !510
  br label %for.cond129, !dbg !510, !llvm.loop !512

for.end139:                                       ; preds = %for.cond129
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i128) #6, !dbg !506
  br label %do.cond140, !dbg !507

do.cond140:                                       ; preds = %for.end139
  br label %do.end141, !dbg !507

do.end141:                                        ; preds = %do.cond140
  br label %if.end142, !dbg !507

if.end142:                                        ; preds = %do.end141, %if.end123
  %139 = load i32, ptr %nsize, align 4, !dbg !513
  store i32 %139, ptr %rsize, align 4, !dbg !514
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end95
  %140 = load ptr, ptr %qp, align 8, !dbg !515
  %141 = load ptr, ptr %rp, align 8, !dbg !516
  %142 = load i32, ptr %rsize, align 4, !dbg !517
  %143 = load ptr, ptr %dp, align 8, !dbg !518
  %144 = load i32, ptr %dsize, align 4, !dbg !519
  %call144 = call i64 @mpihelp_divrem(ptr noundef %140, i32 noundef 0, ptr noundef %141, i32 noundef %142, ptr noundef %143, i32 noundef %144) #7, !dbg !520
  store i64 %call144, ptr %q_limb, align 8, !dbg !521
  %145 = load ptr, ptr %quot.addr, align 8, !dbg !522
  %tobool145 = icmp ne ptr %145, null, !dbg !522
  br i1 %tobool145, label %if.then146, label %if.end156, !dbg !524

if.then146:                                       ; preds = %if.end143
  %146 = load i32, ptr %rsize, align 4, !dbg !525
  %147 = load i32, ptr %dsize, align 4, !dbg !527
  %sub147 = sub i32 %146, %147, !dbg !528
  store i32 %sub147, ptr %qsize, align 4, !dbg !529
  %148 = load i64, ptr %q_limb, align 8, !dbg !530
  %tobool148 = icmp ne i64 %148, 0, !dbg !530
  br i1 %tobool148, label %if.then149, label %if.end153, !dbg !532

if.then149:                                       ; preds = %if.then146
  %149 = load i64, ptr %q_limb, align 8, !dbg !533
  %150 = load ptr, ptr %qp, align 8, !dbg !535
  %151 = load i32, ptr %qsize, align 4, !dbg !536
  %idxprom150 = sext i32 %151 to i64, !dbg !535
  %arrayidx151 = getelementptr i64, ptr %150, i64 %idxprom150, !dbg !535
  store i64 %149, ptr %arrayidx151, align 8, !dbg !537
  %152 = load i32, ptr %qsize, align 4, !dbg !538
  %add152 = add i32 %152, 1, !dbg !538
  store i32 %add152, ptr %qsize, align 4, !dbg !538
  br label %if.end153, !dbg !539

if.end153:                                        ; preds = %if.then149, %if.then146
  %153 = load i32, ptr %qsize, align 4, !dbg !540
  %154 = load ptr, ptr %quot.addr, align 8, !dbg !541
  %nlimbs154 = getelementptr inbounds %struct.gcry_mpi, ptr %154, i32 0, i32 1, !dbg !542
  store i32 %153, ptr %nlimbs154, align 4, !dbg !543
  %155 = load i32, ptr %sign_quotient, align 4, !dbg !544
  %156 = load ptr, ptr %quot.addr, align 8, !dbg !545
  %sign155 = getelementptr inbounds %struct.gcry_mpi, ptr %156, i32 0, i32 3, !dbg !546
  store i32 %155, ptr %sign155, align 4, !dbg !547
  br label %if.end156, !dbg !548

if.end156:                                        ; preds = %if.end153, %if.end143
  %157 = load i32, ptr %dsize, align 4, !dbg !549
  store i32 %157, ptr %rsize, align 4, !dbg !550
  br label %do.body157, !dbg !551

do.body157:                                       ; preds = %if.end156
  br label %while.cond, !dbg !552

while.cond:                                       ; preds = %if.end165, %do.body157
  %158 = load i32, ptr %rsize, align 4, !dbg !552
  %cmp158 = icmp sgt i32 %158, 0, !dbg !552
  br i1 %cmp158, label %while.body, label %while.end, !dbg !552

while.body:                                       ; preds = %while.cond
  %159 = load ptr, ptr %rp, align 8, !dbg !554
  %160 = load i32, ptr %rsize, align 4, !dbg !554
  %sub160 = sub i32 %160, 1, !dbg !554
  %idxprom161 = sext i32 %sub160 to i64, !dbg !554
  %arrayidx162 = getelementptr i64, ptr %159, i64 %idxprom161, !dbg !554
  %161 = load i64, ptr %arrayidx162, align 8, !dbg !554
  %tobool163 = icmp ne i64 %161, 0, !dbg !554
  br i1 %tobool163, label %if.then164, label %if.end165, !dbg !557

if.then164:                                       ; preds = %while.body
  br label %while.end, !dbg !554

if.end165:                                        ; preds = %while.body
  %162 = load i32, ptr %rsize, align 4, !dbg !557
  %dec = add i32 %162, -1, !dbg !557
  store i32 %dec, ptr %rsize, align 4, !dbg !557
  br label %while.cond, !dbg !552, !llvm.loop !558

while.end:                                        ; preds = %if.then164, %while.cond
  br label %do.cond166, !dbg !552

do.cond166:                                       ; preds = %while.end
  br label %do.end167, !dbg !552

do.end167:                                        ; preds = %do.cond166
  %163 = load i32, ptr %normalization_steps, align 4, !dbg !559
  %tobool168 = icmp ne i32 %163, 0, !dbg !559
  br i1 %tobool168, label %land.lhs.true169, label %if.end180, !dbg !561

land.lhs.true169:                                 ; preds = %do.end167
  %164 = load i32, ptr %rsize, align 4, !dbg !562
  %tobool170 = icmp ne i32 %164, 0, !dbg !562
  br i1 %tobool170, label %if.then171, label %if.end180, !dbg !563

if.then171:                                       ; preds = %land.lhs.true169
  %165 = load ptr, ptr %rp, align 8, !dbg !564
  %166 = load ptr, ptr %rp, align 8, !dbg !566
  %167 = load i32, ptr %rsize, align 4, !dbg !567
  %168 = load i32, ptr %normalization_steps, align 4, !dbg !568
  %call172 = call i64 @mpihelp_rshift(ptr noundef %165, ptr noundef %166, i32 noundef %167, i32 noundef %168) #7, !dbg !569
  %169 = load ptr, ptr %rp, align 8, !dbg !570
  %170 = load i32, ptr %rsize, align 4, !dbg !571
  %sub173 = sub i32 %170, 1, !dbg !572
  %idxprom174 = sext i32 %sub173 to i64, !dbg !570
  %arrayidx175 = getelementptr i64, ptr %169, i64 %idxprom174, !dbg !570
  %171 = load i64, ptr %arrayidx175, align 8, !dbg !570
  %cmp176 = icmp eq i64 %171, 0, !dbg !573
  %172 = zext i1 %cmp176 to i64, !dbg !570
  %cond178 = select i1 %cmp176, i32 1, i32 0, !dbg !570
  %173 = load i32, ptr %rsize, align 4, !dbg !574
  %sub179 = sub i32 %173, %cond178, !dbg !574
  store i32 %sub179, ptr %rsize, align 4, !dbg !574
  br label %if.end180, !dbg !575

if.end180:                                        ; preds = %if.then171, %land.lhs.true169, %do.end167
  %174 = load i32, ptr %rsize, align 4, !dbg !576
  %175 = load ptr, ptr %rem.addr, align 8, !dbg !577
  %nlimbs181 = getelementptr inbounds %struct.gcry_mpi, ptr %175, i32 0, i32 1, !dbg !578
  store i32 %174, ptr %nlimbs181, align 4, !dbg !579
  %176 = load i32, ptr %sign_remainder, align 4, !dbg !580
  %177 = load ptr, ptr %rem.addr, align 8, !dbg !581
  %sign182 = getelementptr inbounds %struct.gcry_mpi, ptr %177, i32 0, i32 3, !dbg !582
  store i32 %176, ptr %sign182, align 4, !dbg !583
  br label %while.cond183, !dbg !584

while.cond183:                                    ; preds = %while.body185, %if.end180
  %178 = load i32, ptr %markidx, align 4, !dbg !585
  %tobool184 = icmp ne i32 %178, 0, !dbg !584
  br i1 %tobool184, label %while.body185, label %while.end189, !dbg !584

while.body185:                                    ; preds = %while.cond183
  %179 = load i32, ptr %markidx, align 4, !dbg !586
  %dec186 = add i32 %179, -1, !dbg !586
  store i32 %dec186, ptr %markidx, align 4, !dbg !586
  %180 = load i32, ptr %markidx, align 4, !dbg !588
  %idxprom187 = sext i32 %180 to i64, !dbg !589
  %arrayidx188 = getelementptr [5 x ptr], ptr %marker, i64 0, i64 %idxprom187, !dbg !589
  %181 = load ptr, ptr %arrayidx188, align 8, !dbg !589
  call void @mpi_free_limb_space(ptr noundef %181) #7, !dbg !590
  br label %while.cond183, !dbg !584, !llvm.loop !591

while.end189:                                     ; preds = %while.cond183
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !593
  br label %cleanup, !dbg !593

cleanup:                                          ; preds = %while.end189, %if.end42, %if.end17
  call void @llvm.lifetime.end.p0(i64 4, ptr %markidx) #6, !dbg !593
  call void @llvm.lifetime.end.p0(i64 40, ptr %marker) #6, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %q_limb) #6, !dbg !593
  call void @llvm.lifetime.end.p0(i64 4, ptr %normalization_steps) #6, !dbg !593
  call void @llvm.lifetime.end.p0(i64 4, ptr %sign_quotient) #6, !dbg !593
  call void @llvm.lifetime.end.p0(i64 4, ptr %sign_remainder) #6, !dbg !593
  call void @llvm.lifetime.end.p0(i64 4, ptr %rsize) #6, !dbg !593
  call void @llvm.lifetime.end.p0(i64 4, ptr %qsize) #6, !dbg !593
  call void @llvm.lifetime.end.p0(i64 4, ptr %dsize) #6, !dbg !593
  call void @llvm.lifetime.end.p0(i64 4, ptr %nsize) #6, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %rp) #6, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %qp) #6, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %dp) #6, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %np) #6, !dbg !593
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !593

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !594 dso_local i32 @mpi_sub_ui(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !597 dso_local i32 @mpi_resize(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !600 dso_local i64 @mpihelp_divmod_1(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !603 dso_local i64 @mpihelp_mod_1(ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !606 dso_local ptr @mpi_alloc_limb_space(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @count_leading_zeros(i64 noundef %x) #4 align 16 !dbg !609 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !614, metadata !DIExpression()), !dbg !615
  %0 = load i64, ptr %x.addr, align 8, !dbg !616
  %call = call i32 @fls64(i64 noundef %0) #7, !dbg !618
  %sub = sub i32 64, %call, !dbg !619
  ret i32 %sub, !dbg !620
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !621 dso_local i64 @mpihelp_lshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !624 dso_local i64 @mpihelp_divrem(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !627 dso_local i64 @mpihelp_rshift(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !628 dso_local void @mpi_free_limb_space(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #5 align 16 !dbg !631 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !639, metadata !DIExpression()), !dbg !641
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #6, !dbg !642
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !640, metadata !DIExpression()), !dbg !643
  store i32 -1, ptr %bitpos, align 4, !dbg !643
  %0 = load i32, ptr %bitpos, align 4, !dbg !644
  %1 = load i64, ptr %x.addr, align 8, !dbg !645
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #8, !dbg !644, !srcloc !646
  store i32 %2, ptr %bitpos, align 4, !dbg !644
  %3 = load i32, ptr %bitpos, align 4, !dbg !647
  %add = add i32 %3, 1, !dbg !648
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #6, !dbg !649
  ret i32 %add, !dbg !650
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }
attributes #8 = { nounwind memory(read) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.mpi-div.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22mpi_div\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/mpi-div.ll lib/crypto/mpi/mpi-div.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lib/crypto/mpi/mpi-div.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7256d299b84aa221fbd638fe92f73d55")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!11 = distinct !DISubprogram(name: "mpi_fdiv_r", scope: !1, file: !1, line: 20, type: !12, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !30)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14, !14, !14}
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "MPI", file: !15, line: 40, baseType: !16)
!15 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcry_mpi", file: !15, line: 29, size: 256, elements: !18)
!18 = !{!19, !21, !22, !23, !24, !26}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !17, file: !15, line: 30, baseType: !20, size: 32)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "nlimbs", scope: !17, file: !15, line: 31, baseType: !20, size: 32, offset: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !17, file: !15, line: 32, baseType: !20, size: 32, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !17, file: !15, line: 33, baseType: !20, size: 32, offset: 96)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !17, file: !15, line: 34, baseType: !25, size: 32, offset: 128)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !17, file: !15, line: 37, baseType: !27, size: 64, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !15, line: 26, baseType: !29)
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !{!31, !32, !33, !34, !35}
!31 = !DILocalVariable(name: "rem", arg: 1, scope: !11, file: !1, line: 20, type: !14)
!32 = !DILocalVariable(name: "dividend", arg: 2, scope: !11, file: !1, line: 20, type: !14)
!33 = !DILocalVariable(name: "divisor", arg: 3, scope: !11, file: !1, line: 20, type: !14)
!34 = !DILocalVariable(name: "divisor_sign", scope: !11, file: !1, line: 22, type: !20)
!35 = !DILocalVariable(name: "temp_divisor", scope: !11, file: !1, line: 23, type: !14)
!36 = !DILocation(line: 20, column: 21, scope: !11)
!37 = !DILocation(line: 20, column: 30, scope: !11)
!38 = !DILocation(line: 20, column: 44, scope: !11)
!39 = !DILocation(line: 22, column: 2, scope: !11)
!40 = !DILocation(line: 22, column: 6, scope: !11)
!41 = !DILocation(line: 22, column: 21, scope: !11)
!42 = !DILocation(line: 22, column: 30, scope: !11)
!43 = !DILocation(line: 23, column: 2, scope: !11)
!44 = !DILocation(line: 23, column: 6, scope: !11)
!45 = !DILocation(line: 29, column: 6, scope: !46)
!46 = distinct !DILexicalBlock(scope: !11, file: !1, line: 29, column: 6)
!47 = !DILocation(line: 29, column: 13, scope: !46)
!48 = !DILocation(line: 29, column: 10, scope: !46)
!49 = !DILocation(line: 29, column: 6, scope: !11)
!50 = !DILocation(line: 30, column: 27, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 29, column: 22)
!52 = !DILocation(line: 30, column: 18, scope: !51)
!53 = !DILocation(line: 30, column: 16, scope: !51)
!54 = !DILocation(line: 31, column: 13, scope: !51)
!55 = !DILocation(line: 31, column: 11, scope: !51)
!56 = !DILocation(line: 32, column: 2, scope: !51)
!57 = !DILocation(line: 34, column: 13, scope: !11)
!58 = !DILocation(line: 34, column: 18, scope: !11)
!59 = !DILocation(line: 34, column: 28, scope: !11)
!60 = !DILocation(line: 34, column: 2, scope: !11)
!61 = !DILocation(line: 36, column: 8, scope: !62)
!62 = distinct !DILexicalBlock(scope: !11, file: !1, line: 36, column: 6)
!63 = !DILocation(line: 36, column: 29, scope: !62)
!64 = !DILocation(line: 36, column: 39, scope: !62)
!65 = !DILocation(line: 36, column: 26, scope: !62)
!66 = !DILocation(line: 36, column: 50, scope: !62)
!67 = !DILocation(line: 36, column: 53, scope: !62)
!68 = !DILocation(line: 36, column: 58, scope: !62)
!69 = !DILocation(line: 36, column: 6, scope: !11)
!70 = !DILocation(line: 37, column: 11, scope: !62)
!71 = !DILocation(line: 37, column: 16, scope: !62)
!72 = !DILocation(line: 37, column: 21, scope: !62)
!73 = !DILocation(line: 37, column: 3, scope: !62)
!74 = !DILocation(line: 39, column: 6, scope: !75)
!75 = distinct !DILexicalBlock(scope: !11, file: !1, line: 39, column: 6)
!76 = !DILocation(line: 39, column: 6, scope: !11)
!77 = !DILocation(line: 40, column: 12, scope: !75)
!78 = !DILocation(line: 40, column: 3, scope: !75)
!79 = !DILocation(line: 41, column: 1, scope: !11)
!80 = !DISubprogram(name: "mpi_copy", scope: !15, file: !15, line: 56, type: !81, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!81 = !DISubroutineType(types: !82)
!82 = !{!14, !14}
!83 = distinct !DISubprogram(name: "mpi_tdiv_r", scope: !1, file: !1, line: 78, type: !12, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !84)
!84 = !{!85, !86, !87}
!85 = !DILocalVariable(name: "rem", arg: 1, scope: !83, file: !1, line: 78, type: !14)
!86 = !DILocalVariable(name: "num", arg: 2, scope: !83, file: !1, line: 78, type: !14)
!87 = !DILocalVariable(name: "den", arg: 3, scope: !83, file: !1, line: 78, type: !14)
!88 = !DILocation(line: 78, column: 21, scope: !83)
!89 = !DILocation(line: 78, column: 30, scope: !83)
!90 = !DILocation(line: 78, column: 39, scope: !83)
!91 = !DILocation(line: 80, column: 20, scope: !83)
!92 = !DILocation(line: 80, column: 25, scope: !83)
!93 = !DILocation(line: 80, column: 30, scope: !83)
!94 = !DILocation(line: 80, column: 2, scope: !83)
!95 = !DILocation(line: 81, column: 1, scope: !83)
!96 = !DISubprogram(name: "mpi_add", scope: !15, file: !15, line: 143, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!97 = !DISubprogram(name: "mpi_free", scope: !15, file: !15, line: 48, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !14}
!100 = distinct !DISubprogram(name: "mpi_fdiv_q", scope: !1, file: !1, line: 43, type: !12, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !101)
!101 = !{!102, !103, !104, !105}
!102 = !DILocalVariable(name: "quot", arg: 1, scope: !100, file: !1, line: 43, type: !14)
!103 = !DILocalVariable(name: "dividend", arg: 2, scope: !100, file: !1, line: 43, type: !14)
!104 = !DILocalVariable(name: "divisor", arg: 3, scope: !100, file: !1, line: 43, type: !14)
!105 = !DILocalVariable(name: "tmp", scope: !100, file: !1, line: 45, type: !14)
!106 = !DILocation(line: 43, column: 21, scope: !100)
!107 = !DILocation(line: 43, column: 31, scope: !100)
!108 = !DILocation(line: 43, column: 45, scope: !100)
!109 = !DILocation(line: 45, column: 2, scope: !100)
!110 = !DILocation(line: 45, column: 6, scope: !100)
!111 = !DILocation(line: 45, column: 22, scope: !100)
!112 = !DILocation(line: 45, column: 12, scope: !100)
!113 = !DILocation(line: 46, column: 14, scope: !100)
!114 = !DILocation(line: 46, column: 20, scope: !100)
!115 = !DILocation(line: 46, column: 25, scope: !100)
!116 = !DILocation(line: 46, column: 35, scope: !100)
!117 = !DILocation(line: 46, column: 2, scope: !100)
!118 = !DILocation(line: 47, column: 11, scope: !100)
!119 = !DILocation(line: 47, column: 2, scope: !100)
!120 = !DILocation(line: 48, column: 1, scope: !100)
!121 = !DISubprogram(name: "mpi_alloc", scope: !15, file: !15, line: 46, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!122 = !DISubroutineType(types: !123)
!123 = !{!14, !25}
!124 = distinct !DISubprogram(name: "mpi_fdiv_qr", scope: !1, file: !1, line: 50, type: !125, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !127)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !14, !14, !14, !14}
!127 = !{!128, !129, !130, !131, !132, !133}
!128 = !DILocalVariable(name: "quot", arg: 1, scope: !124, file: !1, line: 50, type: !14)
!129 = !DILocalVariable(name: "rem", arg: 2, scope: !124, file: !1, line: 50, type: !14)
!130 = !DILocalVariable(name: "dividend", arg: 3, scope: !124, file: !1, line: 50, type: !14)
!131 = !DILocalVariable(name: "divisor", arg: 4, scope: !124, file: !1, line: 50, type: !14)
!132 = !DILocalVariable(name: "divisor_sign", scope: !124, file: !1, line: 52, type: !20)
!133 = !DILocalVariable(name: "temp_divisor", scope: !124, file: !1, line: 53, type: !14)
!134 = !DILocation(line: 50, column: 22, scope: !124)
!135 = !DILocation(line: 50, column: 32, scope: !124)
!136 = !DILocation(line: 50, column: 41, scope: !124)
!137 = !DILocation(line: 50, column: 55, scope: !124)
!138 = !DILocation(line: 52, column: 2, scope: !124)
!139 = !DILocation(line: 52, column: 6, scope: !124)
!140 = !DILocation(line: 52, column: 21, scope: !124)
!141 = !DILocation(line: 52, column: 30, scope: !124)
!142 = !DILocation(line: 53, column: 2, scope: !124)
!143 = !DILocation(line: 53, column: 6, scope: !124)
!144 = !DILocation(line: 55, column: 6, scope: !145)
!145 = distinct !DILexicalBlock(scope: !124, file: !1, line: 55, column: 6)
!146 = !DILocation(line: 55, column: 14, scope: !145)
!147 = !DILocation(line: 55, column: 11, scope: !145)
!148 = !DILocation(line: 55, column: 22, scope: !145)
!149 = !DILocation(line: 55, column: 25, scope: !145)
!150 = !DILocation(line: 55, column: 32, scope: !145)
!151 = !DILocation(line: 55, column: 29, scope: !145)
!152 = !DILocation(line: 55, column: 6, scope: !124)
!153 = !DILocation(line: 56, column: 27, scope: !154)
!154 = distinct !DILexicalBlock(scope: !145, file: !1, line: 55, column: 41)
!155 = !DILocation(line: 56, column: 18, scope: !154)
!156 = !DILocation(line: 56, column: 16, scope: !154)
!157 = !DILocation(line: 57, column: 13, scope: !154)
!158 = !DILocation(line: 57, column: 11, scope: !154)
!159 = !DILocation(line: 58, column: 2, scope: !154)
!160 = !DILocation(line: 60, column: 14, scope: !124)
!161 = !DILocation(line: 60, column: 20, scope: !124)
!162 = !DILocation(line: 60, column: 25, scope: !124)
!163 = !DILocation(line: 60, column: 35, scope: !124)
!164 = !DILocation(line: 60, column: 2, scope: !124)
!165 = !DILocation(line: 62, column: 7, scope: !166)
!166 = distinct !DILexicalBlock(scope: !124, file: !1, line: 62, column: 6)
!167 = !DILocation(line: 62, column: 22, scope: !166)
!168 = !DILocation(line: 62, column: 32, scope: !166)
!169 = !DILocation(line: 62, column: 20, scope: !166)
!170 = !DILocation(line: 62, column: 38, scope: !166)
!171 = !DILocation(line: 62, column: 41, scope: !166)
!172 = !DILocation(line: 62, column: 46, scope: !166)
!173 = !DILocation(line: 62, column: 6, scope: !124)
!174 = !DILocation(line: 63, column: 14, scope: !175)
!175 = distinct !DILexicalBlock(scope: !166, file: !1, line: 62, column: 54)
!176 = !DILocation(line: 63, column: 20, scope: !175)
!177 = !DILocation(line: 63, column: 3, scope: !175)
!178 = !DILocation(line: 64, column: 11, scope: !175)
!179 = !DILocation(line: 64, column: 16, scope: !175)
!180 = !DILocation(line: 64, column: 21, scope: !175)
!181 = !DILocation(line: 64, column: 3, scope: !175)
!182 = !DILocation(line: 65, column: 2, scope: !175)
!183 = !DILocation(line: 67, column: 6, scope: !184)
!184 = distinct !DILexicalBlock(scope: !124, file: !1, line: 67, column: 6)
!185 = !DILocation(line: 67, column: 6, scope: !124)
!186 = !DILocation(line: 68, column: 12, scope: !184)
!187 = !DILocation(line: 68, column: 3, scope: !184)
!188 = !DILocation(line: 69, column: 1, scope: !124)
!189 = distinct !DISubprogram(name: "mpi_tdiv_qr", scope: !1, file: !1, line: 83, type: !125, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !190)
!190 = !{!191, !192, !193, !194, !195, !198, !199, !200, !201, !203, !204, !205, !206, !207, !208, !209, !210, !214, !215, !221, !224, !230, !233, !234, !238, !240}
!191 = !DILocalVariable(name: "quot", arg: 1, scope: !189, file: !1, line: 83, type: !14)
!192 = !DILocalVariable(name: "rem", arg: 2, scope: !189, file: !1, line: 83, type: !14)
!193 = !DILocalVariable(name: "num", arg: 3, scope: !189, file: !1, line: 83, type: !14)
!194 = !DILocalVariable(name: "den", arg: 4, scope: !189, file: !1, line: 83, type: !14)
!195 = !DILocalVariable(name: "np", scope: !189, file: !1, line: 85, type: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_ptr_t", file: !197, line: 52, baseType: !27)
!197 = !DIFile(filename: "lib/crypto/mpi/mpi-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cffaba334cfde932ee1944172d38d6ce")
!198 = !DILocalVariable(name: "dp", scope: !189, file: !1, line: 85, type: !196)
!199 = !DILocalVariable(name: "qp", scope: !189, file: !1, line: 86, type: !196)
!200 = !DILocalVariable(name: "rp", scope: !189, file: !1, line: 86, type: !196)
!201 = !DILocalVariable(name: "nsize", scope: !189, file: !1, line: 87, type: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_size_t", file: !197, line: 53, baseType: !20)
!203 = !DILocalVariable(name: "dsize", scope: !189, file: !1, line: 88, type: !202)
!204 = !DILocalVariable(name: "qsize", scope: !189, file: !1, line: 89, type: !202)
!205 = !DILocalVariable(name: "rsize", scope: !189, file: !1, line: 89, type: !202)
!206 = !DILocalVariable(name: "sign_remainder", scope: !189, file: !1, line: 90, type: !202)
!207 = !DILocalVariable(name: "sign_quotient", scope: !189, file: !1, line: 91, type: !202)
!208 = !DILocalVariable(name: "normalization_steps", scope: !189, file: !1, line: 92, type: !25)
!209 = !DILocalVariable(name: "q_limb", scope: !189, file: !1, line: 93, type: !28)
!210 = !DILocalVariable(name: "marker", scope: !189, file: !1, line: 94, type: !211)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 320, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 5)
!214 = !DILocalVariable(name: "markidx", scope: !189, file: !1, line: 95, type: !20)
!215 = !DILocalVariable(name: "_i", scope: !216, file: !1, line: 109, type: !202)
!216 = distinct !DILexicalBlock(scope: !217, file: !1, line: 109, column: 4)
!217 = distinct !DILexicalBlock(scope: !218, file: !1, line: 106, column: 19)
!218 = distinct !DILexicalBlock(scope: !219, file: !1, line: 106, column: 7)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 105, column: 18)
!220 = distinct !DILexicalBlock(scope: !189, file: !1, line: 105, column: 6)
!221 = !DILocalVariable(name: "rlimb", scope: !222, file: !1, line: 131, type: !28)
!222 = distinct !DILexicalBlock(scope: !223, file: !1, line: 130, column: 18)
!223 = distinct !DILexicalBlock(scope: !189, file: !1, line: 130, column: 6)
!224 = !DILocalVariable(name: "_i", scope: !225, file: !1, line: 155, type: !202)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 155, column: 4)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 153, column: 17)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 153, column: 7)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 148, column: 12)
!229 = distinct !DILexicalBlock(scope: !189, file: !1, line: 148, column: 6)
!230 = !DILocalVariable(name: "tp", scope: !231, file: !1, line: 167, type: !196)
!231 = distinct !DILexicalBlock(scope: !232, file: !1, line: 166, column: 27)
!232 = distinct !DILexicalBlock(scope: !189, file: !1, line: 166, column: 6)
!233 = !DILocalVariable(name: "nlimb", scope: !231, file: !1, line: 168, type: !28)
!234 = !DILocalVariable(name: "tp", scope: !235, file: !1, line: 193, type: !196)
!235 = distinct !DILexicalBlock(scope: !236, file: !1, line: 192, column: 41)
!236 = distinct !DILexicalBlock(scope: !237, file: !1, line: 192, column: 7)
!237 = distinct !DILexicalBlock(scope: !232, file: !1, line: 188, column: 9)
!238 = !DILocalVariable(name: "_i", scope: !239, file: !1, line: 196, type: !202)
!239 = distinct !DILexicalBlock(scope: !235, file: !1, line: 196, column: 4)
!240 = !DILocalVariable(name: "_i", scope: !241, file: !1, line: 202, type: !202)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 202, column: 4)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 201, column: 7)
!243 = !DILocation(line: 83, column: 22, scope: !189)
!244 = !DILocation(line: 83, column: 32, scope: !189)
!245 = !DILocation(line: 83, column: 41, scope: !189)
!246 = !DILocation(line: 83, column: 50, scope: !189)
!247 = !DILocation(line: 85, column: 2, scope: !189)
!248 = !DILocation(line: 85, column: 12, scope: !189)
!249 = !DILocation(line: 85, column: 16, scope: !189)
!250 = !DILocation(line: 86, column: 2, scope: !189)
!251 = !DILocation(line: 86, column: 12, scope: !189)
!252 = !DILocation(line: 86, column: 16, scope: !189)
!253 = !DILocation(line: 87, column: 2, scope: !189)
!254 = !DILocation(line: 87, column: 13, scope: !189)
!255 = !DILocation(line: 87, column: 21, scope: !189)
!256 = !DILocation(line: 87, column: 26, scope: !189)
!257 = !DILocation(line: 88, column: 2, scope: !189)
!258 = !DILocation(line: 88, column: 13, scope: !189)
!259 = !DILocation(line: 88, column: 21, scope: !189)
!260 = !DILocation(line: 88, column: 26, scope: !189)
!261 = !DILocation(line: 89, column: 2, scope: !189)
!262 = !DILocation(line: 89, column: 13, scope: !189)
!263 = !DILocation(line: 89, column: 20, scope: !189)
!264 = !DILocation(line: 90, column: 2, scope: !189)
!265 = !DILocation(line: 90, column: 13, scope: !189)
!266 = !DILocation(line: 90, column: 30, scope: !189)
!267 = !DILocation(line: 90, column: 35, scope: !189)
!268 = !DILocation(line: 91, column: 2, scope: !189)
!269 = !DILocation(line: 91, column: 13, scope: !189)
!270 = !DILocation(line: 91, column: 29, scope: !189)
!271 = !DILocation(line: 91, column: 34, scope: !189)
!272 = !DILocation(line: 91, column: 41, scope: !189)
!273 = !DILocation(line: 91, column: 46, scope: !189)
!274 = !DILocation(line: 91, column: 39, scope: !189)
!275 = !DILocation(line: 92, column: 2, scope: !189)
!276 = !DILocation(line: 92, column: 15, scope: !189)
!277 = !DILocation(line: 93, column: 2, scope: !189)
!278 = !DILocation(line: 93, column: 13, scope: !189)
!279 = !DILocation(line: 94, column: 2, scope: !189)
!280 = !DILocation(line: 94, column: 12, scope: !189)
!281 = !DILocation(line: 95, column: 2, scope: !189)
!282 = !DILocation(line: 95, column: 6, scope: !189)
!283 = !DILocation(line: 101, column: 10, scope: !189)
!284 = !DILocation(line: 101, column: 16, scope: !189)
!285 = !DILocation(line: 101, column: 8, scope: !189)
!286 = !DILocation(line: 102, column: 13, scope: !189)
!287 = !DILocation(line: 102, column: 18, scope: !189)
!288 = !DILocation(line: 102, column: 2, scope: !189)
!289 = !DILocation(line: 104, column: 10, scope: !189)
!290 = !DILocation(line: 104, column: 18, scope: !189)
!291 = !DILocation(line: 104, column: 16, scope: !189)
!292 = !DILocation(line: 104, column: 8, scope: !189)
!293 = !DILocation(line: 105, column: 6, scope: !220)
!294 = !DILocation(line: 105, column: 12, scope: !220)
!295 = !DILocation(line: 105, column: 6, scope: !189)
!296 = !DILocation(line: 106, column: 7, scope: !218)
!297 = !DILocation(line: 106, column: 14, scope: !218)
!298 = !DILocation(line: 106, column: 11, scope: !218)
!299 = !DILocation(line: 106, column: 7, scope: !219)
!300 = !DILocation(line: 107, column: 18, scope: !217)
!301 = !DILocation(line: 107, column: 23, scope: !217)
!302 = !DILocation(line: 107, column: 4, scope: !217)
!303 = !DILocation(line: 107, column: 9, scope: !217)
!304 = !DILocation(line: 107, column: 16, scope: !217)
!305 = !DILocation(line: 108, column: 16, scope: !217)
!306 = !DILocation(line: 108, column: 21, scope: !217)
!307 = !DILocation(line: 108, column: 4, scope: !217)
!308 = !DILocation(line: 108, column: 9, scope: !217)
!309 = !DILocation(line: 108, column: 14, scope: !217)
!310 = !DILocation(line: 109, column: 4, scope: !217)
!311 = !DILocation(line: 109, column: 4, scope: !216)
!312 = !DILocation(line: 109, column: 4, scope: !313)
!313 = distinct !DILexicalBlock(scope: !216, file: !1, line: 109, column: 4)
!314 = !DILocation(line: 109, column: 4, scope: !315)
!315 = distinct !DILexicalBlock(scope: !313, file: !1, line: 109, column: 4)
!316 = distinct !{!316, !312, !312, !317, !318}
!317 = !{!"llvm.loop.mustprogress"}
!318 = !{!"llvm.loop.unroll.disable"}
!319 = !DILocation(line: 110, column: 3, scope: !217)
!320 = !DILocation(line: 111, column: 7, scope: !321)
!321 = distinct !DILexicalBlock(scope: !219, file: !1, line: 111, column: 7)
!322 = !DILocation(line: 111, column: 7, scope: !219)
!323 = !DILocation(line: 115, column: 4, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !1, line: 111, column: 13)
!325 = !DILocation(line: 115, column: 10, scope: !324)
!326 = !DILocation(line: 115, column: 17, scope: !324)
!327 = !DILocation(line: 116, column: 4, scope: !324)
!328 = !DILocation(line: 116, column: 10, scope: !324)
!329 = !DILocation(line: 116, column: 15, scope: !324)
!330 = !DILocation(line: 117, column: 3, scope: !324)
!331 = !DILocation(line: 118, column: 3, scope: !219)
!332 = !DILocation(line: 121, column: 6, scope: !333)
!333 = distinct !DILexicalBlock(scope: !189, file: !1, line: 121, column: 6)
!334 = !DILocation(line: 121, column: 6, scope: !189)
!335 = !DILocation(line: 122, column: 14, scope: !333)
!336 = !DILocation(line: 122, column: 20, scope: !333)
!337 = !DILocation(line: 122, column: 3, scope: !333)
!338 = !DILocation(line: 125, column: 7, scope: !189)
!339 = !DILocation(line: 125, column: 12, scope: !189)
!340 = !DILocation(line: 125, column: 5, scope: !189)
!341 = !DILocation(line: 126, column: 7, scope: !189)
!342 = !DILocation(line: 126, column: 12, scope: !189)
!343 = !DILocation(line: 126, column: 5, scope: !189)
!344 = !DILocation(line: 127, column: 7, scope: !189)
!345 = !DILocation(line: 127, column: 12, scope: !189)
!346 = !DILocation(line: 127, column: 5, scope: !189)
!347 = !DILocation(line: 130, column: 6, scope: !223)
!348 = !DILocation(line: 130, column: 12, scope: !223)
!349 = !DILocation(line: 130, column: 6, scope: !189)
!350 = !DILocation(line: 131, column: 3, scope: !222)
!351 = !DILocation(line: 131, column: 14, scope: !222)
!352 = !DILocation(line: 132, column: 7, scope: !353)
!353 = distinct !DILexicalBlock(scope: !222, file: !1, line: 132, column: 7)
!354 = !DILocation(line: 132, column: 7, scope: !222)
!355 = !DILocation(line: 133, column: 9, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !1, line: 132, column: 13)
!357 = !DILocation(line: 133, column: 15, scope: !356)
!358 = !DILocation(line: 133, column: 7, scope: !356)
!359 = !DILocation(line: 134, column: 29, scope: !356)
!360 = !DILocation(line: 134, column: 33, scope: !356)
!361 = !DILocation(line: 134, column: 37, scope: !356)
!362 = !DILocation(line: 134, column: 44, scope: !356)
!363 = !DILocation(line: 134, column: 12, scope: !356)
!364 = !DILocation(line: 134, column: 10, scope: !356)
!365 = !DILocation(line: 135, column: 13, scope: !356)
!366 = !DILocation(line: 135, column: 16, scope: !356)
!367 = !DILocation(line: 135, column: 22, scope: !356)
!368 = !DILocation(line: 135, column: 27, scope: !356)
!369 = !DILocation(line: 135, column: 10, scope: !356)
!370 = !DILocation(line: 136, column: 19, scope: !356)
!371 = !DILocation(line: 136, column: 4, scope: !356)
!372 = !DILocation(line: 136, column: 10, scope: !356)
!373 = !DILocation(line: 136, column: 17, scope: !356)
!374 = !DILocation(line: 137, column: 17, scope: !356)
!375 = !DILocation(line: 137, column: 4, scope: !356)
!376 = !DILocation(line: 137, column: 10, scope: !356)
!377 = !DILocation(line: 137, column: 15, scope: !356)
!378 = !DILocation(line: 138, column: 3, scope: !356)
!379 = !DILocation(line: 139, column: 26, scope: !353)
!380 = !DILocation(line: 139, column: 30, scope: !353)
!381 = !DILocation(line: 139, column: 37, scope: !353)
!382 = !DILocation(line: 139, column: 12, scope: !353)
!383 = !DILocation(line: 139, column: 10, scope: !353)
!384 = !DILocation(line: 140, column: 11, scope: !222)
!385 = !DILocation(line: 140, column: 3, scope: !222)
!386 = !DILocation(line: 140, column: 9, scope: !222)
!387 = !DILocation(line: 141, column: 11, scope: !222)
!388 = !DILocation(line: 141, column: 17, scope: !222)
!389 = !DILocation(line: 141, column: 9, scope: !222)
!390 = !DILocation(line: 142, column: 17, scope: !222)
!391 = !DILocation(line: 142, column: 3, scope: !222)
!392 = !DILocation(line: 142, column: 8, scope: !222)
!393 = !DILocation(line: 142, column: 15, scope: !222)
!394 = !DILocation(line: 143, column: 15, scope: !222)
!395 = !DILocation(line: 143, column: 3, scope: !222)
!396 = !DILocation(line: 143, column: 8, scope: !222)
!397 = !DILocation(line: 143, column: 13, scope: !222)
!398 = !DILocation(line: 145, column: 2, scope: !223)
!399 = !DILocation(line: 148, column: 6, scope: !229)
!400 = !DILocation(line: 148, column: 6, scope: !189)
!401 = !DILocation(line: 149, column: 8, scope: !228)
!402 = !DILocation(line: 149, column: 14, scope: !228)
!403 = !DILocation(line: 149, column: 6, scope: !228)
!404 = !DILocation(line: 153, column: 7, scope: !227)
!405 = !DILocation(line: 153, column: 13, scope: !227)
!406 = !DILocation(line: 153, column: 10, scope: !227)
!407 = !DILocation(line: 153, column: 7, scope: !228)
!408 = !DILocation(line: 154, column: 50, scope: !226)
!409 = !DILocation(line: 154, column: 29, scope: !226)
!410 = !DILocation(line: 154, column: 23, scope: !226)
!411 = !DILocation(line: 154, column: 9, scope: !226)
!412 = !DILocation(line: 154, column: 27, scope: !226)
!413 = !DILocation(line: 154, column: 7, scope: !226)
!414 = !DILocation(line: 155, column: 4, scope: !226)
!415 = !DILocation(line: 155, column: 4, scope: !225)
!416 = !DILocation(line: 155, column: 4, scope: !417)
!417 = distinct !DILexicalBlock(scope: !225, file: !1, line: 155, column: 4)
!418 = !DILocation(line: 155, column: 4, scope: !419)
!419 = distinct !DILexicalBlock(scope: !417, file: !1, line: 155, column: 4)
!420 = distinct !{!420, !416, !416, !317, !318}
!421 = !DILocation(line: 156, column: 3, scope: !226)
!422 = !DILocation(line: 157, column: 2, scope: !228)
!423 = !DILocation(line: 158, column: 8, scope: !229)
!424 = !DILocation(line: 158, column: 13, scope: !229)
!425 = !DILocation(line: 158, column: 11, scope: !229)
!426 = !DILocation(line: 158, column: 6, scope: !229)
!427 = !DILocation(line: 160, column: 44, scope: !189)
!428 = !DILocation(line: 160, column: 47, scope: !189)
!429 = !DILocation(line: 160, column: 53, scope: !189)
!430 = !DILocation(line: 160, column: 24, scope: !189)
!431 = !DILocation(line: 160, column: 22, scope: !189)
!432 = !DILocation(line: 166, column: 6, scope: !232)
!433 = !DILocation(line: 166, column: 6, scope: !189)
!434 = !DILocation(line: 167, column: 3, scope: !231)
!435 = !DILocation(line: 167, column: 13, scope: !231)
!436 = !DILocation(line: 168, column: 3, scope: !231)
!437 = !DILocation(line: 168, column: 14, scope: !231)
!438 = !DILocation(line: 174, column: 49, scope: !231)
!439 = !DILocation(line: 174, column: 28, scope: !231)
!440 = !DILocation(line: 174, column: 22, scope: !231)
!441 = !DILocation(line: 174, column: 8, scope: !231)
!442 = !DILocation(line: 174, column: 26, scope: !231)
!443 = !DILocation(line: 174, column: 6, scope: !231)
!444 = !DILocation(line: 175, column: 18, scope: !231)
!445 = !DILocation(line: 175, column: 22, scope: !231)
!446 = !DILocation(line: 175, column: 26, scope: !231)
!447 = !DILocation(line: 175, column: 33, scope: !231)
!448 = !DILocation(line: 175, column: 3, scope: !231)
!449 = !DILocation(line: 176, column: 8, scope: !231)
!450 = !DILocation(line: 176, column: 6, scope: !231)
!451 = !DILocation(line: 182, column: 26, scope: !231)
!452 = !DILocation(line: 182, column: 30, scope: !231)
!453 = !DILocation(line: 182, column: 34, scope: !231)
!454 = !DILocation(line: 182, column: 41, scope: !231)
!455 = !DILocation(line: 182, column: 11, scope: !231)
!456 = !DILocation(line: 182, column: 9, scope: !231)
!457 = !DILocation(line: 183, column: 7, scope: !458)
!458 = distinct !DILexicalBlock(scope: !231, file: !1, line: 183, column: 7)
!459 = !DILocation(line: 183, column: 7, scope: !231)
!460 = !DILocation(line: 184, column: 16, scope: !461)
!461 = distinct !DILexicalBlock(scope: !458, file: !1, line: 183, column: 14)
!462 = !DILocation(line: 184, column: 4, scope: !461)
!463 = !DILocation(line: 184, column: 7, scope: !461)
!464 = !DILocation(line: 184, column: 14, scope: !461)
!465 = !DILocation(line: 185, column: 12, scope: !461)
!466 = !DILocation(line: 185, column: 18, scope: !461)
!467 = !DILocation(line: 185, column: 10, scope: !461)
!468 = !DILocation(line: 186, column: 3, scope: !461)
!469 = !DILocation(line: 187, column: 12, scope: !458)
!470 = !DILocation(line: 187, column: 10, scope: !458)
!471 = !DILocation(line: 188, column: 2, scope: !232)
!472 = !DILocation(line: 188, column: 2, scope: !231)
!473 = !DILocation(line: 192, column: 7, scope: !236)
!474 = !DILocation(line: 192, column: 13, scope: !236)
!475 = !DILocation(line: 192, column: 10, scope: !236)
!476 = !DILocation(line: 192, column: 16, scope: !236)
!477 = !DILocation(line: 192, column: 20, scope: !236)
!478 = !DILocation(line: 192, column: 25, scope: !236)
!479 = !DILocation(line: 192, column: 29, scope: !236)
!480 = !DILocation(line: 192, column: 35, scope: !236)
!481 = !DILocation(line: 192, column: 32, scope: !236)
!482 = !DILocation(line: 192, column: 7, scope: !237)
!483 = !DILocation(line: 193, column: 4, scope: !235)
!484 = !DILocation(line: 193, column: 14, scope: !235)
!485 = !DILocation(line: 195, column: 50, scope: !235)
!486 = !DILocation(line: 195, column: 29, scope: !235)
!487 = !DILocation(line: 195, column: 23, scope: !235)
!488 = !DILocation(line: 195, column: 9, scope: !235)
!489 = !DILocation(line: 195, column: 27, scope: !235)
!490 = !DILocation(line: 195, column: 7, scope: !235)
!491 = !DILocation(line: 196, column: 4, scope: !235)
!492 = !DILocation(line: 196, column: 4, scope: !239)
!493 = !DILocation(line: 196, column: 4, scope: !494)
!494 = distinct !DILexicalBlock(scope: !239, file: !1, line: 196, column: 4)
!495 = !DILocation(line: 196, column: 4, scope: !496)
!496 = distinct !DILexicalBlock(scope: !494, file: !1, line: 196, column: 4)
!497 = distinct !{!497, !493, !493, !317, !318}
!498 = !DILocation(line: 197, column: 9, scope: !235)
!499 = !DILocation(line: 197, column: 7, scope: !235)
!500 = !DILocation(line: 198, column: 3, scope: !236)
!501 = !DILocation(line: 198, column: 3, scope: !235)
!502 = !DILocation(line: 201, column: 7, scope: !242)
!503 = !DILocation(line: 201, column: 13, scope: !242)
!504 = !DILocation(line: 201, column: 10, scope: !242)
!505 = !DILocation(line: 201, column: 7, scope: !237)
!506 = !DILocation(line: 202, column: 4, scope: !242)
!507 = !DILocation(line: 202, column: 4, scope: !241)
!508 = !DILocation(line: 202, column: 4, scope: !509)
!509 = distinct !DILexicalBlock(scope: !241, file: !1, line: 202, column: 4)
!510 = !DILocation(line: 202, column: 4, scope: !511)
!511 = distinct !DILexicalBlock(scope: !509, file: !1, line: 202, column: 4)
!512 = distinct !{!512, !508, !508, !317, !318}
!513 = !DILocation(line: 204, column: 11, scope: !237)
!514 = !DILocation(line: 204, column: 9, scope: !237)
!515 = !DILocation(line: 207, column: 26, scope: !189)
!516 = !DILocation(line: 207, column: 33, scope: !189)
!517 = !DILocation(line: 207, column: 37, scope: !189)
!518 = !DILocation(line: 207, column: 44, scope: !189)
!519 = !DILocation(line: 207, column: 48, scope: !189)
!520 = !DILocation(line: 207, column: 11, scope: !189)
!521 = !DILocation(line: 207, column: 9, scope: !189)
!522 = !DILocation(line: 209, column: 6, scope: !523)
!523 = distinct !DILexicalBlock(scope: !189, file: !1, line: 209, column: 6)
!524 = !DILocation(line: 209, column: 6, scope: !189)
!525 = !DILocation(line: 210, column: 11, scope: !526)
!526 = distinct !DILexicalBlock(scope: !523, file: !1, line: 209, column: 12)
!527 = !DILocation(line: 210, column: 19, scope: !526)
!528 = !DILocation(line: 210, column: 17, scope: !526)
!529 = !DILocation(line: 210, column: 9, scope: !526)
!530 = !DILocation(line: 211, column: 7, scope: !531)
!531 = distinct !DILexicalBlock(scope: !526, file: !1, line: 211, column: 7)
!532 = !DILocation(line: 211, column: 7, scope: !526)
!533 = !DILocation(line: 212, column: 16, scope: !534)
!534 = distinct !DILexicalBlock(scope: !531, file: !1, line: 211, column: 15)
!535 = !DILocation(line: 212, column: 4, scope: !534)
!536 = !DILocation(line: 212, column: 7, scope: !534)
!537 = !DILocation(line: 212, column: 14, scope: !534)
!538 = !DILocation(line: 213, column: 10, scope: !534)
!539 = !DILocation(line: 214, column: 3, scope: !534)
!540 = !DILocation(line: 216, column: 18, scope: !526)
!541 = !DILocation(line: 216, column: 3, scope: !526)
!542 = !DILocation(line: 216, column: 9, scope: !526)
!543 = !DILocation(line: 216, column: 16, scope: !526)
!544 = !DILocation(line: 217, column: 16, scope: !526)
!545 = !DILocation(line: 217, column: 3, scope: !526)
!546 = !DILocation(line: 217, column: 9, scope: !526)
!547 = !DILocation(line: 217, column: 14, scope: !526)
!548 = !DILocation(line: 218, column: 2, scope: !526)
!549 = !DILocation(line: 220, column: 10, scope: !189)
!550 = !DILocation(line: 220, column: 8, scope: !189)
!551 = !DILocation(line: 221, column: 2, scope: !189)
!552 = !DILocation(line: 221, column: 2, scope: !553)
!553 = distinct !DILexicalBlock(scope: !189, file: !1, line: 221, column: 2)
!554 = !DILocation(line: 221, column: 2, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 221, column: 2)
!556 = distinct !DILexicalBlock(scope: !553, file: !1, line: 221, column: 2)
!557 = !DILocation(line: 221, column: 2, scope: !556)
!558 = distinct !{!558, !552, !552, !317, !318}
!559 = !DILocation(line: 223, column: 6, scope: !560)
!560 = distinct !DILexicalBlock(scope: !189, file: !1, line: 223, column: 6)
!561 = !DILocation(line: 223, column: 26, scope: !560)
!562 = !DILocation(line: 223, column: 29, scope: !560)
!563 = !DILocation(line: 223, column: 6, scope: !189)
!564 = !DILocation(line: 224, column: 18, scope: !565)
!565 = distinct !DILexicalBlock(scope: !560, file: !1, line: 223, column: 36)
!566 = !DILocation(line: 224, column: 22, scope: !565)
!567 = !DILocation(line: 224, column: 26, scope: !565)
!568 = !DILocation(line: 224, column: 33, scope: !565)
!569 = !DILocation(line: 224, column: 3, scope: !565)
!570 = !DILocation(line: 225, column: 12, scope: !565)
!571 = !DILocation(line: 225, column: 15, scope: !565)
!572 = !DILocation(line: 225, column: 21, scope: !565)
!573 = !DILocation(line: 225, column: 26, scope: !565)
!574 = !DILocation(line: 225, column: 9, scope: !565)
!575 = !DILocation(line: 226, column: 2, scope: !565)
!576 = !DILocation(line: 228, column: 16, scope: !189)
!577 = !DILocation(line: 228, column: 2, scope: !189)
!578 = !DILocation(line: 228, column: 7, scope: !189)
!579 = !DILocation(line: 228, column: 14, scope: !189)
!580 = !DILocation(line: 229, column: 14, scope: !189)
!581 = !DILocation(line: 229, column: 2, scope: !189)
!582 = !DILocation(line: 229, column: 7, scope: !189)
!583 = !DILocation(line: 229, column: 12, scope: !189)
!584 = !DILocation(line: 230, column: 2, scope: !189)
!585 = !DILocation(line: 230, column: 9, scope: !189)
!586 = !DILocation(line: 231, column: 10, scope: !587)
!587 = distinct !DILexicalBlock(scope: !189, file: !1, line: 230, column: 18)
!588 = !DILocation(line: 232, column: 30, scope: !587)
!589 = !DILocation(line: 232, column: 23, scope: !587)
!590 = !DILocation(line: 232, column: 3, scope: !587)
!591 = distinct !{!591, !584, !592, !317, !318}
!592 = !DILocation(line: 233, column: 2, scope: !189)
!593 = !DILocation(line: 234, column: 1, scope: !189)
!594 = !DISubprogram(name: "mpi_sub_ui", scope: !15, file: !15, line: 126, type: !595, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!595 = !DISubroutineType(types: !596)
!596 = !{!20, !14, !14, !29}
!597 = !DISubprogram(name: "mpi_resize", scope: !15, file: !15, line: 49, type: !598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!598 = !DISubroutineType(types: !599)
!599 = !{!20, !14, !25}
!600 = !DISubprogram(name: "mpihelp_divmod_1", scope: !197, file: !197, line: 202, type: !601, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!601 = !DISubroutineType(types: !602)
!602 = !{!28, !196, !196, !202, !28}
!603 = !DISubprogram(name: "mpihelp_mod_1", scope: !197, file: !197, line: 197, type: !604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!604 = !DISubroutineType(types: !605)
!605 = !{!28, !196, !202, !28}
!606 = !DISubprogram(name: "mpi_alloc_limb_space", scope: !197, file: !197, line: 142, type: !607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!607 = !DISubroutineType(types: !608)
!608 = !{!196, !25}
!609 = distinct !DISubprogram(name: "count_leading_zeros", scope: !610, file: !610, line: 23, type: !611, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !613)
!610 = !DIFile(filename: "./include/linux/count_zeros.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31ae7e2ac9cfc331b9e745b8587e0cf8")
!611 = !DISubroutineType(types: !612)
!612 = !{!20, !29}
!613 = !{!614}
!614 = !DILocalVariable(name: "x", arg: 1, scope: !609, file: !610, line: 23, type: !29)
!615 = !DILocation(line: 23, column: 53, scope: !609)
!616 = !DILocation(line: 28, column: 32, scope: !617)
!617 = distinct !DILexicalBlock(scope: !609, file: !610, line: 25, column: 6)
!618 = !DILocation(line: 28, column: 26, scope: !617)
!619 = !DILocation(line: 28, column: 24, scope: !617)
!620 = !DILocation(line: 28, column: 3, scope: !617)
!621 = !DISubprogram(name: "mpihelp_lshift", scope: !197, file: !197, line: 207, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!622 = !DISubroutineType(types: !623)
!623 = !{!28, !196, !196, !202, !25}
!624 = !DISubprogram(name: "mpihelp_divrem", scope: !197, file: !197, line: 199, type: !625, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!625 = !DISubroutineType(types: !626)
!626 = !{!28, !196, !202, !196, !202, !196, !202}
!627 = !DISubprogram(name: "mpihelp_rshift", scope: !197, file: !197, line: 209, type: !622, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!628 = !DISubprogram(name: "mpi_free_limb_space", scope: !197, file: !197, line: 143, type: !629, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !196}
!631 = distinct !DISubprogram(name: "fls64", scope: !632, file: !632, line: 401, type: !633, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !638)
!632 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!633 = !DISubroutineType(types: !634)
!634 = !{!20, !635}
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !636, line: 31, baseType: !637)
!636 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!637 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!638 = !{!639, !640}
!639 = !DILocalVariable(name: "x", arg: 1, scope: !631, file: !632, line: 401, type: !635)
!640 = !DILocalVariable(name: "bitpos", scope: !631, file: !632, line: 403, type: !20)
!641 = !DILocation(line: 401, column: 40, scope: !631)
!642 = !DILocation(line: 403, column: 2, scope: !631)
!643 = !DILocation(line: 403, column: 6, scope: !631)
!644 = !DILocation(line: 409, column: 2, scope: !631)
!645 = !DILocation(line: 411, column: 14, scope: !631)
!646 = !{i64 852636}
!647 = !DILocation(line: 412, column: 9, scope: !631)
!648 = !DILocation(line: 412, column: 16, scope: !631)
!649 = !DILocation(line: 413, column: 1, scope: !631)
!650 = !DILocation(line: 412, column: 2, scope: !631)
