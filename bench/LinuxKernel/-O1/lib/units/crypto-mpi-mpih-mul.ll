; ModuleID = 'lib/crypto/mpi/mpih-mul.c'
source_filename = "lib/crypto/mpi/mpih-mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.karatsuba_ctx = type { ptr, ptr, i32, ptr, i32 }

@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpih_sqr_n_basecase(ptr noundef %prodp, ptr noundef %up, i32 noundef %size) #0 align 16 !dbg !39 {
entry:
  %prodp.addr = alloca ptr, align 8
  %up.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cy_limb = alloca i64, align 8
  %v_limb = alloca i64, align 8
  %_i = alloca i32, align 4
  %_i8 = alloca i32, align 4
  store ptr %prodp, ptr %prodp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prodp.addr, metadata !50, metadata !DIExpression()), !dbg !63
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !51, metadata !DIExpression()), !dbg !64
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !52, metadata !DIExpression()), !dbg !65
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !66
  call void @llvm.dbg.declare(metadata ptr %i, metadata !53, metadata !DIExpression()), !dbg !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy_limb) #14, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %cy_limb, metadata !54, metadata !DIExpression()), !dbg !69
  call void @llvm.lifetime.start.p0(i64 8, ptr %v_limb) #14, !dbg !70
  call void @llvm.dbg.declare(metadata ptr %v_limb, metadata !55, metadata !DIExpression()), !dbg !71
  %0 = load ptr, ptr %up.addr, align 8, !dbg !72
  %arrayidx = getelementptr i64, ptr %0, i64 0, !dbg !72
  %1 = load i64, ptr %arrayidx, align 8, !dbg !72
  store i64 %1, ptr %v_limb, align 8, !dbg !73
  %2 = load i64, ptr %v_limb, align 8, !dbg !74
  %cmp = icmp ule i64 %2, 1, !dbg !75
  br i1 %cmp, label %if.then, label %if.else19, !dbg !76

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %v_limb, align 8, !dbg !77
  %cmp1 = icmp eq i64 %3, 1, !dbg !78
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !79

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !80

do.body:                                          ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #14, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !56, metadata !DIExpression()), !dbg !81
  store i32 0, ptr %_i, align 4, !dbg !82
  br label %for.cond, !dbg !82

for.cond:                                         ; preds = %for.inc, %do.body
  %4 = load i32, ptr %_i, align 4, !dbg !84
  %5 = load i32, ptr %size.addr, align 4, !dbg !84
  %cmp3 = icmp slt i32 %4, %5, !dbg !84
  br i1 %cmp3, label %for.body, label %for.end, !dbg !82

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %up.addr, align 8, !dbg !84
  %7 = load i32, ptr %_i, align 4, !dbg !84
  %idxprom = sext i32 %7 to i64, !dbg !84
  %arrayidx4 = getelementptr i64, ptr %6, i64 %idxprom, !dbg !84
  %8 = load i64, ptr %arrayidx4, align 8, !dbg !84
  %9 = load ptr, ptr %prodp.addr, align 8, !dbg !84
  %10 = load i32, ptr %_i, align 4, !dbg !84
  %idxprom5 = sext i32 %10 to i64, !dbg !84
  %arrayidx6 = getelementptr i64, ptr %9, i64 %idxprom5, !dbg !84
  store i64 %8, ptr %arrayidx6, align 8, !dbg !84
  br label %for.inc, !dbg !84

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %_i, align 4, !dbg !84
  %inc = add i32 %11, 1, !dbg !84
  store i32 %inc, ptr %_i, align 4, !dbg !84
  br label %for.cond, !dbg !84, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #14, !dbg !80
  br label %do.cond, !dbg !81

do.cond:                                          ; preds = %for.end
  br label %do.end, !dbg !81

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !81

if.else:                                          ; preds = %if.then
  br label %do.body7, !dbg !89

do.body7:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i8) #14, !dbg !90
  call void @llvm.dbg.declare(metadata ptr %_i8, metadata !61, metadata !DIExpression()), !dbg !90
  store i32 0, ptr %_i8, align 4, !dbg !91
  br label %for.cond9, !dbg !91

for.cond9:                                        ; preds = %for.inc14, %do.body7
  %12 = load i32, ptr %_i8, align 4, !dbg !93
  %13 = load i32, ptr %size.addr, align 4, !dbg !93
  %cmp10 = icmp slt i32 %12, %13, !dbg !93
  br i1 %cmp10, label %for.body11, label %for.end16, !dbg !91

for.body11:                                       ; preds = %for.cond9
  %14 = load ptr, ptr %prodp.addr, align 8, !dbg !93
  %15 = load i32, ptr %_i8, align 4, !dbg !93
  %idxprom12 = sext i32 %15 to i64, !dbg !93
  %arrayidx13 = getelementptr i64, ptr %14, i64 %idxprom12, !dbg !93
  store i64 0, ptr %arrayidx13, align 8, !dbg !93
  br label %for.inc14, !dbg !93

for.inc14:                                        ; preds = %for.body11
  %16 = load i32, ptr %_i8, align 4, !dbg !93
  %inc15 = add i32 %16, 1, !dbg !93
  store i32 %inc15, ptr %_i8, align 4, !dbg !93
  br label %for.cond9, !dbg !93, !llvm.loop !95

for.end16:                                        ; preds = %for.cond9
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i8) #14, !dbg !89
  br label %do.cond17, !dbg !90

do.cond17:                                        ; preds = %for.end16
  br label %do.end18, !dbg !90

do.end18:                                         ; preds = %do.cond17
  br label %if.end

if.end:                                           ; preds = %do.end18, %do.end
  store i64 0, ptr %cy_limb, align 8, !dbg !96
  br label %if.end20, !dbg !97

if.else19:                                        ; preds = %entry
  %17 = load ptr, ptr %prodp.addr, align 8, !dbg !98
  %18 = load ptr, ptr %up.addr, align 8, !dbg !99
  %19 = load i32, ptr %size.addr, align 4, !dbg !100
  %20 = load i64, ptr %v_limb, align 8, !dbg !101
  %call = call i64 @mpihelp_mul_1(ptr noundef %17, ptr noundef %18, i32 noundef %19, i64 noundef %20) #15, !dbg !102
  store i64 %call, ptr %cy_limb, align 8, !dbg !103
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.end
  %21 = load i64, ptr %cy_limb, align 8, !dbg !104
  %22 = load ptr, ptr %prodp.addr, align 8, !dbg !105
  %23 = load i32, ptr %size.addr, align 4, !dbg !106
  %idxprom21 = sext i32 %23 to i64, !dbg !105
  %arrayidx22 = getelementptr i64, ptr %22, i64 %idxprom21, !dbg !105
  store i64 %21, ptr %arrayidx22, align 8, !dbg !107
  %24 = load ptr, ptr %prodp.addr, align 8, !dbg !108
  %incdec.ptr = getelementptr i64, ptr %24, i32 1, !dbg !108
  store ptr %incdec.ptr, ptr %prodp.addr, align 8, !dbg !108
  store i32 1, ptr %i, align 4, !dbg !109
  br label %for.cond23, !dbg !111

for.cond23:                                       ; preds = %for.inc40, %if.end20
  %25 = load i32, ptr %i, align 4, !dbg !112
  %26 = load i32, ptr %size.addr, align 4, !dbg !114
  %cmp24 = icmp slt i32 %25, %26, !dbg !115
  br i1 %cmp24, label %for.body25, label %for.end42, !dbg !116

for.body25:                                       ; preds = %for.cond23
  %27 = load ptr, ptr %up.addr, align 8, !dbg !117
  %28 = load i32, ptr %i, align 4, !dbg !119
  %idxprom26 = sext i32 %28 to i64, !dbg !117
  %arrayidx27 = getelementptr i64, ptr %27, i64 %idxprom26, !dbg !117
  %29 = load i64, ptr %arrayidx27, align 8, !dbg !117
  store i64 %29, ptr %v_limb, align 8, !dbg !120
  %30 = load i64, ptr %v_limb, align 8, !dbg !121
  %cmp28 = icmp ule i64 %30, 1, !dbg !123
  br i1 %cmp28, label %if.then29, label %if.else34, !dbg !124

if.then29:                                        ; preds = %for.body25
  store i64 0, ptr %cy_limb, align 8, !dbg !125
  %31 = load i64, ptr %v_limb, align 8, !dbg !127
  %cmp30 = icmp eq i64 %31, 1, !dbg !129
  br i1 %cmp30, label %if.then31, label %if.end33, !dbg !130

if.then31:                                        ; preds = %if.then29
  %32 = load ptr, ptr %prodp.addr, align 8, !dbg !131
  %33 = load ptr, ptr %prodp.addr, align 8, !dbg !132
  %34 = load ptr, ptr %up.addr, align 8, !dbg !133
  %35 = load i32, ptr %size.addr, align 4, !dbg !134
  %call32 = call i64 @mpihelp_add_n(ptr noundef %32, ptr noundef %33, ptr noundef %34, i32 noundef %35) #15, !dbg !135
  store i64 %call32, ptr %cy_limb, align 8, !dbg !136
  br label %if.end33, !dbg !137

if.end33:                                         ; preds = %if.then31, %if.then29
  br label %if.end36, !dbg !138

if.else34:                                        ; preds = %for.body25
  %36 = load ptr, ptr %prodp.addr, align 8, !dbg !139
  %37 = load ptr, ptr %up.addr, align 8, !dbg !140
  %38 = load i32, ptr %size.addr, align 4, !dbg !141
  %39 = load i64, ptr %v_limb, align 8, !dbg !142
  %call35 = call i64 @mpihelp_addmul_1(ptr noundef %36, ptr noundef %37, i32 noundef %38, i64 noundef %39) #15, !dbg !143
  store i64 %call35, ptr %cy_limb, align 8, !dbg !144
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.end33
  %40 = load i64, ptr %cy_limb, align 8, !dbg !145
  %41 = load ptr, ptr %prodp.addr, align 8, !dbg !146
  %42 = load i32, ptr %size.addr, align 4, !dbg !147
  %idxprom37 = sext i32 %42 to i64, !dbg !146
  %arrayidx38 = getelementptr i64, ptr %41, i64 %idxprom37, !dbg !146
  store i64 %40, ptr %arrayidx38, align 8, !dbg !148
  %43 = load ptr, ptr %prodp.addr, align 8, !dbg !149
  %incdec.ptr39 = getelementptr i64, ptr %43, i32 1, !dbg !149
  store ptr %incdec.ptr39, ptr %prodp.addr, align 8, !dbg !149
  br label %for.inc40, !dbg !150

for.inc40:                                        ; preds = %if.end36
  %44 = load i32, ptr %i, align 4, !dbg !151
  %inc41 = add i32 %44, 1, !dbg !151
  store i32 %inc41, ptr %i, align 4, !dbg !151
  br label %for.cond23, !dbg !152, !llvm.loop !153

for.end42:                                        ; preds = %for.cond23
  call void @llvm.lifetime.end.p0(i64 8, ptr %v_limb) #14, !dbg !155
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy_limb) #14, !dbg !155
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !155
  ret void, !dbg !155
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !156 dso_local i64 @mpihelp_mul_1(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !159 dso_local i64 @mpihelp_add_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !162 dso_local i64 @mpihelp_addmul_1(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpih_sqr_n(ptr noundef %prodp, ptr noundef %up, i32 noundef %size, ptr noundef %tspace) #0 align 16 !dbg !163 {
entry:
  %prodp.addr = alloca ptr, align 8
  %up.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %tspace.addr = alloca ptr, align 8
  %esize = alloca i32, align 4
  %cy_limb = alloca i64, align 8
  %hsize = alloca i32, align 4
  %cy = alloca i64, align 8
  %_i = alloca i32, align 4
  %_i105 = alloca i32, align 4
  store ptr %prodp, ptr %prodp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prodp.addr, metadata !167, metadata !DIExpression()), !dbg !182
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !168, metadata !DIExpression()), !dbg !183
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !169, metadata !DIExpression()), !dbg !184
  store ptr %tspace, ptr %tspace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tspace.addr, metadata !170, metadata !DIExpression()), !dbg !185
  %0 = load i32, ptr %size.addr, align 4, !dbg !186
  %and = and i32 %0, 1, !dbg !187
  %tobool = icmp ne i32 %and, 0, !dbg !187
  br i1 %tobool, label %if.then, label %if.else12, !dbg !188

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %esize) #14, !dbg !189
  call void @llvm.dbg.declare(metadata ptr %esize, metadata !171, metadata !DIExpression()), !dbg !190
  %1 = load i32, ptr %size.addr, align 4, !dbg !191
  %sub = sub i32 %1, 1, !dbg !192
  store i32 %sub, ptr %esize, align 4, !dbg !190
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy_limb) #14, !dbg !193
  call void @llvm.dbg.declare(metadata ptr %cy_limb, metadata !174, metadata !DIExpression()), !dbg !194
  br label %do.body, !dbg !195

do.body:                                          ; preds = %if.then
  %2 = load i32, ptr %esize, align 4, !dbg !196
  %cmp = icmp slt i32 %2, 16, !dbg !196
  br i1 %cmp, label %if.then1, label %if.else, !dbg !199

if.then1:                                         ; preds = %do.body
  %3 = load ptr, ptr %prodp.addr, align 8, !dbg !196
  %4 = load ptr, ptr %up.addr, align 8, !dbg !196
  %5 = load i32, ptr %esize, align 4, !dbg !196
  call void @mpih_sqr_n_basecase(ptr noundef %3, ptr noundef %4, i32 noundef %5) #15, !dbg !196
  br label %if.end, !dbg !196

if.else:                                          ; preds = %do.body
  %6 = load ptr, ptr %prodp.addr, align 8, !dbg !196
  %7 = load ptr, ptr %up.addr, align 8, !dbg !196
  %8 = load i32, ptr %esize, align 4, !dbg !196
  %9 = load ptr, ptr %tspace.addr, align 8, !dbg !196
  call void @mpih_sqr_n(ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9) #15, !dbg !196
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %do.cond, !dbg !199

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !199

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %prodp.addr, align 8, !dbg !200
  %11 = load i32, ptr %esize, align 4, !dbg !201
  %idx.ext = sext i32 %11 to i64, !dbg !202
  %add.ptr = getelementptr i64, ptr %10, i64 %idx.ext, !dbg !202
  %12 = load ptr, ptr %up.addr, align 8, !dbg !203
  %13 = load i32, ptr %esize, align 4, !dbg !204
  %14 = load ptr, ptr %up.addr, align 8, !dbg !205
  %15 = load i32, ptr %esize, align 4, !dbg !206
  %idxprom = sext i32 %15 to i64, !dbg !205
  %arrayidx = getelementptr i64, ptr %14, i64 %idxprom, !dbg !205
  %16 = load i64, ptr %arrayidx, align 8, !dbg !205
  %call = call i64 @mpihelp_addmul_1(ptr noundef %add.ptr, ptr noundef %12, i32 noundef %13, i64 noundef %16) #15, !dbg !207
  store i64 %call, ptr %cy_limb, align 8, !dbg !208
  %17 = load i64, ptr %cy_limb, align 8, !dbg !209
  %18 = load ptr, ptr %prodp.addr, align 8, !dbg !210
  %19 = load i32, ptr %esize, align 4, !dbg !211
  %20 = load i32, ptr %esize, align 4, !dbg !212
  %add = add i32 %19, %20, !dbg !213
  %idxprom2 = sext i32 %add to i64, !dbg !210
  %arrayidx3 = getelementptr i64, ptr %18, i64 %idxprom2, !dbg !210
  store i64 %17, ptr %arrayidx3, align 8, !dbg !214
  %21 = load ptr, ptr %prodp.addr, align 8, !dbg !215
  %22 = load i32, ptr %esize, align 4, !dbg !216
  %idx.ext4 = sext i32 %22 to i64, !dbg !217
  %add.ptr5 = getelementptr i64, ptr %21, i64 %idx.ext4, !dbg !217
  %23 = load ptr, ptr %up.addr, align 8, !dbg !218
  %24 = load i32, ptr %size.addr, align 4, !dbg !219
  %25 = load ptr, ptr %up.addr, align 8, !dbg !220
  %26 = load i32, ptr %esize, align 4, !dbg !221
  %idxprom6 = sext i32 %26 to i64, !dbg !220
  %arrayidx7 = getelementptr i64, ptr %25, i64 %idxprom6, !dbg !220
  %27 = load i64, ptr %arrayidx7, align 8, !dbg !220
  %call8 = call i64 @mpihelp_addmul_1(ptr noundef %add.ptr5, ptr noundef %23, i32 noundef %24, i64 noundef %27) #15, !dbg !222
  store i64 %call8, ptr %cy_limb, align 8, !dbg !223
  %28 = load i64, ptr %cy_limb, align 8, !dbg !224
  %29 = load ptr, ptr %prodp.addr, align 8, !dbg !225
  %30 = load i32, ptr %esize, align 4, !dbg !226
  %31 = load i32, ptr %size.addr, align 4, !dbg !227
  %add9 = add i32 %30, %31, !dbg !228
  %idxprom10 = sext i32 %add9 to i64, !dbg !225
  %arrayidx11 = getelementptr i64, ptr %29, i64 %idxprom10, !dbg !225
  store i64 %28, ptr %arrayidx11, align 8, !dbg !229
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy_limb) #14, !dbg !230
  call void @llvm.lifetime.end.p0(i64 4, ptr %esize) #14, !dbg !230
  br label %if.end133, !dbg !231

if.else12:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %hsize) #14, !dbg !232
  call void @llvm.dbg.declare(metadata ptr %hsize, metadata !175, metadata !DIExpression()), !dbg !233
  %32 = load i32, ptr %size.addr, align 4, !dbg !234
  %shr = ashr i32 %32, 1, !dbg !235
  store i32 %shr, ptr %hsize, align 4, !dbg !233
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #14, !dbg !236
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !177, metadata !DIExpression()), !dbg !237
  br label %do.body13, !dbg !238

do.body13:                                        ; preds = %if.else12
  %33 = load i32, ptr %hsize, align 4, !dbg !239
  %cmp14 = icmp slt i32 %33, 16, !dbg !239
  br i1 %cmp14, label %if.then15, label %if.else20, !dbg !242

if.then15:                                        ; preds = %do.body13
  %34 = load ptr, ptr %prodp.addr, align 8, !dbg !239
  %35 = load i32, ptr %size.addr, align 4, !dbg !239
  %idx.ext16 = sext i32 %35 to i64, !dbg !239
  %add.ptr17 = getelementptr i64, ptr %34, i64 %idx.ext16, !dbg !239
  %36 = load ptr, ptr %up.addr, align 8, !dbg !239
  %37 = load i32, ptr %hsize, align 4, !dbg !239
  %idx.ext18 = sext i32 %37 to i64, !dbg !239
  %add.ptr19 = getelementptr i64, ptr %36, i64 %idx.ext18, !dbg !239
  %38 = load i32, ptr %hsize, align 4, !dbg !239
  call void @mpih_sqr_n_basecase(ptr noundef %add.ptr17, ptr noundef %add.ptr19, i32 noundef %38) #15, !dbg !239
  br label %if.end25, !dbg !239

if.else20:                                        ; preds = %do.body13
  %39 = load ptr, ptr %prodp.addr, align 8, !dbg !239
  %40 = load i32, ptr %size.addr, align 4, !dbg !239
  %idx.ext21 = sext i32 %40 to i64, !dbg !239
  %add.ptr22 = getelementptr i64, ptr %39, i64 %idx.ext21, !dbg !239
  %41 = load ptr, ptr %up.addr, align 8, !dbg !239
  %42 = load i32, ptr %hsize, align 4, !dbg !239
  %idx.ext23 = sext i32 %42 to i64, !dbg !239
  %add.ptr24 = getelementptr i64, ptr %41, i64 %idx.ext23, !dbg !239
  %43 = load i32, ptr %hsize, align 4, !dbg !239
  %44 = load ptr, ptr %tspace.addr, align 8, !dbg !239
  call void @mpih_sqr_n(ptr noundef %add.ptr22, ptr noundef %add.ptr24, i32 noundef %43, ptr noundef %44) #15, !dbg !239
  br label %if.end25

if.end25:                                         ; preds = %if.else20, %if.then15
  br label %do.cond26, !dbg !242

do.cond26:                                        ; preds = %if.end25
  br label %do.end27, !dbg !242

do.end27:                                         ; preds = %do.cond26
  %45 = load ptr, ptr %up.addr, align 8, !dbg !243
  %46 = load i32, ptr %hsize, align 4, !dbg !245
  %idx.ext28 = sext i32 %46 to i64, !dbg !246
  %add.ptr29 = getelementptr i64, ptr %45, i64 %idx.ext28, !dbg !246
  %47 = load ptr, ptr %up.addr, align 8, !dbg !247
  %48 = load i32, ptr %hsize, align 4, !dbg !248
  %call30 = call i32 @mpihelp_cmp(ptr noundef %add.ptr29, ptr noundef %47, i32 noundef %48) #15, !dbg !249
  %cmp31 = icmp sge i32 %call30, 0, !dbg !250
  br i1 %cmp31, label %if.then32, label %if.else36, !dbg !251

if.then32:                                        ; preds = %do.end27
  %49 = load ptr, ptr %prodp.addr, align 8, !dbg !252
  %50 = load ptr, ptr %up.addr, align 8, !dbg !253
  %51 = load i32, ptr %hsize, align 4, !dbg !254
  %idx.ext33 = sext i32 %51 to i64, !dbg !255
  %add.ptr34 = getelementptr i64, ptr %50, i64 %idx.ext33, !dbg !255
  %52 = load ptr, ptr %up.addr, align 8, !dbg !256
  %53 = load i32, ptr %hsize, align 4, !dbg !257
  %call35 = call i64 @mpihelp_sub_n(ptr noundef %49, ptr noundef %add.ptr34, ptr noundef %52, i32 noundef %53) #15, !dbg !258
  br label %if.end40, !dbg !258

if.else36:                                        ; preds = %do.end27
  %54 = load ptr, ptr %prodp.addr, align 8, !dbg !259
  %55 = load ptr, ptr %up.addr, align 8, !dbg !260
  %56 = load ptr, ptr %up.addr, align 8, !dbg !261
  %57 = load i32, ptr %hsize, align 4, !dbg !262
  %idx.ext37 = sext i32 %57 to i64, !dbg !263
  %add.ptr38 = getelementptr i64, ptr %56, i64 %idx.ext37, !dbg !263
  %58 = load i32, ptr %hsize, align 4, !dbg !264
  %call39 = call i64 @mpihelp_sub_n(ptr noundef %54, ptr noundef %55, ptr noundef %add.ptr38, i32 noundef %58) #15, !dbg !265
  br label %if.end40

if.end40:                                         ; preds = %if.else36, %if.then32
  br label %do.body41, !dbg !266

do.body41:                                        ; preds = %if.end40
  %59 = load i32, ptr %hsize, align 4, !dbg !267
  %cmp42 = icmp slt i32 %59, 16, !dbg !267
  br i1 %cmp42, label %if.then43, label %if.else44, !dbg !270

if.then43:                                        ; preds = %do.body41
  %60 = load ptr, ptr %tspace.addr, align 8, !dbg !267
  %61 = load ptr, ptr %prodp.addr, align 8, !dbg !267
  %62 = load i32, ptr %hsize, align 4, !dbg !267
  call void @mpih_sqr_n_basecase(ptr noundef %60, ptr noundef %61, i32 noundef %62) #15, !dbg !267
  br label %if.end47, !dbg !267

if.else44:                                        ; preds = %do.body41
  %63 = load ptr, ptr %tspace.addr, align 8, !dbg !267
  %64 = load ptr, ptr %prodp.addr, align 8, !dbg !267
  %65 = load i32, ptr %hsize, align 4, !dbg !267
  %66 = load ptr, ptr %tspace.addr, align 8, !dbg !267
  %67 = load i32, ptr %size.addr, align 4, !dbg !267
  %idx.ext45 = sext i32 %67 to i64, !dbg !267
  %add.ptr46 = getelementptr i64, ptr %66, i64 %idx.ext45, !dbg !267
  call void @mpih_sqr_n(ptr noundef %63, ptr noundef %64, i32 noundef %65, ptr noundef %add.ptr46) #15, !dbg !267
  br label %if.end47

if.end47:                                         ; preds = %if.else44, %if.then43
  br label %do.cond48, !dbg !270

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !270

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !271

do.body50:                                        ; preds = %do.end49
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #14, !dbg !272
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !178, metadata !DIExpression()), !dbg !272
  store i32 0, ptr %_i, align 4, !dbg !273
  br label %for.cond, !dbg !273

for.cond:                                         ; preds = %for.inc, %do.body50
  %68 = load i32, ptr %_i, align 4, !dbg !275
  %69 = load i32, ptr %hsize, align 4, !dbg !275
  %cmp51 = icmp slt i32 %68, %69, !dbg !275
  br i1 %cmp51, label %for.body, label %for.end, !dbg !273

for.body:                                         ; preds = %for.cond
  %70 = load ptr, ptr %prodp.addr, align 8, !dbg !275
  %71 = load i32, ptr %size.addr, align 4, !dbg !275
  %idx.ext52 = sext i32 %71 to i64, !dbg !275
  %add.ptr53 = getelementptr i64, ptr %70, i64 %idx.ext52, !dbg !275
  %72 = load i32, ptr %_i, align 4, !dbg !275
  %idxprom54 = sext i32 %72 to i64, !dbg !275
  %arrayidx55 = getelementptr i64, ptr %add.ptr53, i64 %idxprom54, !dbg !275
  %73 = load i64, ptr %arrayidx55, align 8, !dbg !275
  %74 = load ptr, ptr %prodp.addr, align 8, !dbg !275
  %75 = load i32, ptr %hsize, align 4, !dbg !275
  %idx.ext56 = sext i32 %75 to i64, !dbg !275
  %add.ptr57 = getelementptr i64, ptr %74, i64 %idx.ext56, !dbg !275
  %76 = load i32, ptr %_i, align 4, !dbg !275
  %idxprom58 = sext i32 %76 to i64, !dbg !275
  %arrayidx59 = getelementptr i64, ptr %add.ptr57, i64 %idxprom58, !dbg !275
  store i64 %73, ptr %arrayidx59, align 8, !dbg !275
  br label %for.inc, !dbg !275

for.inc:                                          ; preds = %for.body
  %77 = load i32, ptr %_i, align 4, !dbg !275
  %inc = add i32 %77, 1, !dbg !275
  store i32 %inc, ptr %_i, align 4, !dbg !275
  br label %for.cond, !dbg !275, !llvm.loop !277

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #14, !dbg !271
  br label %do.cond60, !dbg !272

do.cond60:                                        ; preds = %for.end
  br label %do.end61, !dbg !272

do.end61:                                         ; preds = %do.cond60
  %78 = load ptr, ptr %prodp.addr, align 8, !dbg !278
  %79 = load i32, ptr %size.addr, align 4, !dbg !279
  %idx.ext62 = sext i32 %79 to i64, !dbg !280
  %add.ptr63 = getelementptr i64, ptr %78, i64 %idx.ext62, !dbg !280
  %80 = load ptr, ptr %prodp.addr, align 8, !dbg !281
  %81 = load i32, ptr %size.addr, align 4, !dbg !282
  %idx.ext64 = sext i32 %81 to i64, !dbg !283
  %add.ptr65 = getelementptr i64, ptr %80, i64 %idx.ext64, !dbg !283
  %82 = load ptr, ptr %prodp.addr, align 8, !dbg !284
  %83 = load i32, ptr %size.addr, align 4, !dbg !285
  %idx.ext66 = sext i32 %83 to i64, !dbg !286
  %add.ptr67 = getelementptr i64, ptr %82, i64 %idx.ext66, !dbg !286
  %84 = load i32, ptr %hsize, align 4, !dbg !287
  %idx.ext68 = sext i32 %84 to i64, !dbg !288
  %add.ptr69 = getelementptr i64, ptr %add.ptr67, i64 %idx.ext68, !dbg !288
  %85 = load i32, ptr %hsize, align 4, !dbg !289
  %call70 = call i64 @mpihelp_add_n(ptr noundef %add.ptr63, ptr noundef %add.ptr65, ptr noundef %add.ptr69, i32 noundef %85) #15, !dbg !290
  store i64 %call70, ptr %cy, align 8, !dbg !291
  %86 = load ptr, ptr %prodp.addr, align 8, !dbg !292
  %87 = load i32, ptr %hsize, align 4, !dbg !293
  %idx.ext71 = sext i32 %87 to i64, !dbg !294
  %add.ptr72 = getelementptr i64, ptr %86, i64 %idx.ext71, !dbg !294
  %88 = load ptr, ptr %prodp.addr, align 8, !dbg !295
  %89 = load i32, ptr %hsize, align 4, !dbg !296
  %idx.ext73 = sext i32 %89 to i64, !dbg !297
  %add.ptr74 = getelementptr i64, ptr %88, i64 %idx.ext73, !dbg !297
  %90 = load ptr, ptr %tspace.addr, align 8, !dbg !298
  %91 = load i32, ptr %size.addr, align 4, !dbg !299
  %call75 = call i64 @mpihelp_sub_n(ptr noundef %add.ptr72, ptr noundef %add.ptr74, ptr noundef %90, i32 noundef %91) #15, !dbg !300
  %92 = load i64, ptr %cy, align 8, !dbg !301
  %sub76 = sub i64 %92, %call75, !dbg !301
  store i64 %sub76, ptr %cy, align 8, !dbg !301
  br label %do.body77, !dbg !302

do.body77:                                        ; preds = %do.end61
  %93 = load i32, ptr %hsize, align 4, !dbg !303
  %cmp78 = icmp slt i32 %93, 16, !dbg !303
  br i1 %cmp78, label %if.then79, label %if.else80, !dbg !306

if.then79:                                        ; preds = %do.body77
  %94 = load ptr, ptr %tspace.addr, align 8, !dbg !303
  %95 = load ptr, ptr %up.addr, align 8, !dbg !303
  %96 = load i32, ptr %hsize, align 4, !dbg !303
  call void @mpih_sqr_n_basecase(ptr noundef %94, ptr noundef %95, i32 noundef %96) #15, !dbg !303
  br label %if.end83, !dbg !303

if.else80:                                        ; preds = %do.body77
  %97 = load ptr, ptr %tspace.addr, align 8, !dbg !303
  %98 = load ptr, ptr %up.addr, align 8, !dbg !303
  %99 = load i32, ptr %hsize, align 4, !dbg !303
  %100 = load ptr, ptr %tspace.addr, align 8, !dbg !303
  %101 = load i32, ptr %size.addr, align 4, !dbg !303
  %idx.ext81 = sext i32 %101 to i64, !dbg !303
  %add.ptr82 = getelementptr i64, ptr %100, i64 %idx.ext81, !dbg !303
  call void @mpih_sqr_n(ptr noundef %97, ptr noundef %98, i32 noundef %99, ptr noundef %add.ptr82) #15, !dbg !303
  br label %if.end83

if.end83:                                         ; preds = %if.else80, %if.then79
  br label %do.cond84, !dbg !306

do.cond84:                                        ; preds = %if.end83
  br label %do.end85, !dbg !306

do.end85:                                         ; preds = %do.cond84
  %102 = load ptr, ptr %prodp.addr, align 8, !dbg !307
  %103 = load i32, ptr %hsize, align 4, !dbg !308
  %idx.ext86 = sext i32 %103 to i64, !dbg !309
  %add.ptr87 = getelementptr i64, ptr %102, i64 %idx.ext86, !dbg !309
  %104 = load ptr, ptr %prodp.addr, align 8, !dbg !310
  %105 = load i32, ptr %hsize, align 4, !dbg !311
  %idx.ext88 = sext i32 %105 to i64, !dbg !312
  %add.ptr89 = getelementptr i64, ptr %104, i64 %idx.ext88, !dbg !312
  %106 = load ptr, ptr %tspace.addr, align 8, !dbg !313
  %107 = load i32, ptr %size.addr, align 4, !dbg !314
  %call90 = call i64 @mpihelp_add_n(ptr noundef %add.ptr87, ptr noundef %add.ptr89, ptr noundef %106, i32 noundef %107) #15, !dbg !315
  %108 = load i64, ptr %cy, align 8, !dbg !316
  %add91 = add i64 %108, %call90, !dbg !316
  store i64 %add91, ptr %cy, align 8, !dbg !316
  %109 = load i64, ptr %cy, align 8, !dbg !317
  %tobool92 = icmp ne i64 %109, 0, !dbg !317
  br i1 %tobool92, label %if.then93, label %if.end103, !dbg !319

if.then93:                                        ; preds = %do.end85
  %110 = load ptr, ptr %prodp.addr, align 8, !dbg !320
  %111 = load i32, ptr %hsize, align 4, !dbg !321
  %idx.ext94 = sext i32 %111 to i64, !dbg !322
  %add.ptr95 = getelementptr i64, ptr %110, i64 %idx.ext94, !dbg !322
  %112 = load i32, ptr %size.addr, align 4, !dbg !323
  %idx.ext96 = sext i32 %112 to i64, !dbg !324
  %add.ptr97 = getelementptr i64, ptr %add.ptr95, i64 %idx.ext96, !dbg !324
  %113 = load ptr, ptr %prodp.addr, align 8, !dbg !325
  %114 = load i32, ptr %hsize, align 4, !dbg !326
  %idx.ext98 = sext i32 %114 to i64, !dbg !327
  %add.ptr99 = getelementptr i64, ptr %113, i64 %idx.ext98, !dbg !327
  %115 = load i32, ptr %size.addr, align 4, !dbg !328
  %idx.ext100 = sext i32 %115 to i64, !dbg !329
  %add.ptr101 = getelementptr i64, ptr %add.ptr99, i64 %idx.ext100, !dbg !329
  %116 = load i32, ptr %hsize, align 4, !dbg !330
  %117 = load i64, ptr %cy, align 8, !dbg !331
  %call102 = call i64 @mpihelp_add_1(ptr noundef %add.ptr97, ptr noundef %add.ptr101, i32 noundef %116, i64 noundef %117) #15, !dbg !332
  br label %if.end103, !dbg !332

if.end103:                                        ; preds = %if.then93, %do.end85
  br label %do.body104, !dbg !333

do.body104:                                       ; preds = %if.end103
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i105) #14, !dbg !334
  call void @llvm.dbg.declare(metadata ptr %_i105, metadata !180, metadata !DIExpression()), !dbg !334
  store i32 0, ptr %_i105, align 4, !dbg !335
  br label %for.cond106, !dbg !335

for.cond106:                                      ; preds = %for.inc113, %do.body104
  %118 = load i32, ptr %_i105, align 4, !dbg !337
  %119 = load i32, ptr %hsize, align 4, !dbg !337
  %cmp107 = icmp slt i32 %118, %119, !dbg !337
  br i1 %cmp107, label %for.body108, label %for.end115, !dbg !335

for.body108:                                      ; preds = %for.cond106
  %120 = load ptr, ptr %tspace.addr, align 8, !dbg !337
  %121 = load i32, ptr %_i105, align 4, !dbg !337
  %idxprom109 = sext i32 %121 to i64, !dbg !337
  %arrayidx110 = getelementptr i64, ptr %120, i64 %idxprom109, !dbg !337
  %122 = load i64, ptr %arrayidx110, align 8, !dbg !337
  %123 = load ptr, ptr %prodp.addr, align 8, !dbg !337
  %124 = load i32, ptr %_i105, align 4, !dbg !337
  %idxprom111 = sext i32 %124 to i64, !dbg !337
  %arrayidx112 = getelementptr i64, ptr %123, i64 %idxprom111, !dbg !337
  store i64 %122, ptr %arrayidx112, align 8, !dbg !337
  br label %for.inc113, !dbg !337

for.inc113:                                       ; preds = %for.body108
  %125 = load i32, ptr %_i105, align 4, !dbg !337
  %inc114 = add i32 %125, 1, !dbg !337
  store i32 %inc114, ptr %_i105, align 4, !dbg !337
  br label %for.cond106, !dbg !337, !llvm.loop !339

for.end115:                                       ; preds = %for.cond106
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i105) #14, !dbg !333
  br label %do.cond116, !dbg !334

do.cond116:                                       ; preds = %for.end115
  br label %do.end117, !dbg !334

do.end117:                                        ; preds = %do.cond116
  %126 = load ptr, ptr %prodp.addr, align 8, !dbg !340
  %127 = load i32, ptr %hsize, align 4, !dbg !341
  %idx.ext118 = sext i32 %127 to i64, !dbg !342
  %add.ptr119 = getelementptr i64, ptr %126, i64 %idx.ext118, !dbg !342
  %128 = load ptr, ptr %prodp.addr, align 8, !dbg !343
  %129 = load i32, ptr %hsize, align 4, !dbg !344
  %idx.ext120 = sext i32 %129 to i64, !dbg !345
  %add.ptr121 = getelementptr i64, ptr %128, i64 %idx.ext120, !dbg !345
  %130 = load ptr, ptr %tspace.addr, align 8, !dbg !346
  %131 = load i32, ptr %hsize, align 4, !dbg !347
  %idx.ext122 = sext i32 %131 to i64, !dbg !348
  %add.ptr123 = getelementptr i64, ptr %130, i64 %idx.ext122, !dbg !348
  %132 = load i32, ptr %hsize, align 4, !dbg !349
  %call124 = call i64 @mpihelp_add_n(ptr noundef %add.ptr119, ptr noundef %add.ptr121, ptr noundef %add.ptr123, i32 noundef %132) #15, !dbg !350
  store i64 %call124, ptr %cy, align 8, !dbg !351
  %133 = load i64, ptr %cy, align 8, !dbg !352
  %tobool125 = icmp ne i64 %133, 0, !dbg !352
  br i1 %tobool125, label %if.then126, label %if.end132, !dbg !354

if.then126:                                       ; preds = %do.end117
  %134 = load ptr, ptr %prodp.addr, align 8, !dbg !355
  %135 = load i32, ptr %size.addr, align 4, !dbg !356
  %idx.ext127 = sext i32 %135 to i64, !dbg !357
  %add.ptr128 = getelementptr i64, ptr %134, i64 %idx.ext127, !dbg !357
  %136 = load ptr, ptr %prodp.addr, align 8, !dbg !358
  %137 = load i32, ptr %size.addr, align 4, !dbg !359
  %idx.ext129 = sext i32 %137 to i64, !dbg !360
  %add.ptr130 = getelementptr i64, ptr %136, i64 %idx.ext129, !dbg !360
  %138 = load i32, ptr %size.addr, align 4, !dbg !361
  %call131 = call i64 @mpihelp_add_1(ptr noundef %add.ptr128, ptr noundef %add.ptr130, i32 noundef %138, i64 noundef 1) #15, !dbg !362
  br label %if.end132, !dbg !362

if.end132:                                        ; preds = %if.then126, %do.end117
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #14, !dbg !363
  call void @llvm.lifetime.end.p0(i64 4, ptr %hsize) #14, !dbg !363
  br label %if.end133

if.end133:                                        ; preds = %if.end132, %do.end
  ret void, !dbg !364
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !365 dso_local i32 @mpihelp_cmp(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !368 dso_local i64 @mpihelp_sub_n(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mpihelp_add_1(ptr noundef %res_ptr, ptr noundef %s1_ptr, i32 noundef %s1_size, i64 noundef %s2_limb) #4 align 16 !dbg !369 {
entry:
  %retval = alloca i64, align 8
  %res_ptr.addr = alloca ptr, align 8
  %s1_ptr.addr = alloca ptr, align 8
  %s1_size.addr = alloca i32, align 4
  %s2_limb.addr = alloca i64, align 8
  %x = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %res_ptr, ptr %res_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res_ptr.addr, metadata !372, metadata !DIExpression()), !dbg !381
  store ptr %s1_ptr, ptr %s1_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1_ptr.addr, metadata !373, metadata !DIExpression()), !dbg !382
  store i32 %s1_size, ptr %s1_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s1_size.addr, metadata !374, metadata !DIExpression()), !dbg !383
  store i64 %s2_limb, ptr %s2_limb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2_limb.addr, metadata !375, metadata !DIExpression()), !dbg !384
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #14, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %x, metadata !376, metadata !DIExpression()), !dbg !386
  %0 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !387
  %incdec.ptr = getelementptr i64, ptr %0, i32 1, !dbg !387
  store ptr %incdec.ptr, ptr %s1_ptr.addr, align 8, !dbg !387
  %1 = load i64, ptr %0, align 8, !dbg !388
  store i64 %1, ptr %x, align 8, !dbg !389
  %2 = load i64, ptr %x, align 8, !dbg !390
  %3 = load i64, ptr %s2_limb.addr, align 8, !dbg !391
  %add = add i64 %3, %2, !dbg !391
  store i64 %add, ptr %s2_limb.addr, align 8, !dbg !391
  %4 = load i64, ptr %s2_limb.addr, align 8, !dbg !392
  %5 = load ptr, ptr %res_ptr.addr, align 8, !dbg !393
  %incdec.ptr1 = getelementptr i64, ptr %5, i32 1, !dbg !393
  store ptr %incdec.ptr1, ptr %res_ptr.addr, align 8, !dbg !393
  store i64 %4, ptr %5, align 8, !dbg !394
  %6 = load i64, ptr %s2_limb.addr, align 8, !dbg !395
  %7 = load i64, ptr %x, align 8, !dbg !397
  %cmp = icmp ult i64 %6, %7, !dbg !398
  br i1 %cmp, label %if.then, label %if.end7, !dbg !399

if.then:                                          ; preds = %entry
  br label %while.cond, !dbg !400

while.cond:                                       ; preds = %if.end, %if.then
  %8 = load i32, ptr %s1_size.addr, align 4, !dbg !402
  %dec = add i32 %8, -1, !dbg !402
  store i32 %dec, ptr %s1_size.addr, align 4, !dbg !402
  %tobool = icmp ne i32 %dec, 0, !dbg !400
  br i1 %tobool, label %while.body, label %while.end, !dbg !400

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !403
  %incdec.ptr2 = getelementptr i64, ptr %9, i32 1, !dbg !403
  store ptr %incdec.ptr2, ptr %s1_ptr.addr, align 8, !dbg !403
  %10 = load i64, ptr %9, align 8, !dbg !405
  %add3 = add i64 %10, 1, !dbg !406
  store i64 %add3, ptr %x, align 8, !dbg !407
  %11 = load i64, ptr %x, align 8, !dbg !408
  %12 = load ptr, ptr %res_ptr.addr, align 8, !dbg !409
  %incdec.ptr4 = getelementptr i64, ptr %12, i32 1, !dbg !409
  store ptr %incdec.ptr4, ptr %res_ptr.addr, align 8, !dbg !409
  store i64 %11, ptr %12, align 8, !dbg !410
  %13 = load i64, ptr %x, align 8, !dbg !411
  %tobool5 = icmp ne i64 %13, 0, !dbg !411
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !413

if.then6:                                         ; preds = %while.body
  br label %leave, !dbg !414

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !400, !llvm.loop !415

while.end:                                        ; preds = %while.cond
  store i64 1, ptr %retval, align 8, !dbg !417
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !417

if.end7:                                          ; preds = %entry
  br label %leave, !dbg !397

leave:                                            ; preds = %if.end7, %if.then6
  call void @llvm.dbg.label(metadata !377), !dbg !418
  %14 = load ptr, ptr %res_ptr.addr, align 8, !dbg !419
  %15 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !420
  %cmp8 = icmp ne ptr %14, %15, !dbg !421
  br i1 %cmp8, label %if.then9, label %if.end13, !dbg !422

if.then9:                                         ; preds = %leave
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %i, metadata !378, metadata !DIExpression()), !dbg !424
  store i32 0, ptr %i, align 4, !dbg !425
  br label %for.cond, !dbg !427

for.cond:                                         ; preds = %for.inc, %if.then9
  %16 = load i32, ptr %i, align 4, !dbg !428
  %17 = load i32, ptr %s1_size.addr, align 4, !dbg !430
  %sub = sub i32 %17, 1, !dbg !431
  %cmp10 = icmp slt i32 %16, %sub, !dbg !432
  br i1 %cmp10, label %for.body, label %for.end, !dbg !433

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !434
  %19 = load i32, ptr %i, align 4, !dbg !435
  %idxprom = sext i32 %19 to i64, !dbg !434
  %arrayidx = getelementptr i64, ptr %18, i64 %idxprom, !dbg !434
  %20 = load i64, ptr %arrayidx, align 8, !dbg !434
  %21 = load ptr, ptr %res_ptr.addr, align 8, !dbg !436
  %22 = load i32, ptr %i, align 4, !dbg !437
  %idxprom11 = sext i32 %22 to i64, !dbg !436
  %arrayidx12 = getelementptr i64, ptr %21, i64 %idxprom11, !dbg !436
  store i64 %20, ptr %arrayidx12, align 8, !dbg !438
  br label %for.inc, !dbg !436

for.inc:                                          ; preds = %for.body
  %23 = load i32, ptr %i, align 4, !dbg !439
  %inc = add i32 %23, 1, !dbg !439
  store i32 %inc, ptr %i, align 4, !dbg !439
  br label %for.cond, !dbg !440, !llvm.loop !441

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !443
  br label %if.end13, !dbg !444

if.end13:                                         ; preds = %for.end, %leave
  store i64 0, ptr %retval, align 8, !dbg !445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !445

cleanup:                                          ; preds = %if.end13, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #14, !dbg !446
  %24 = load i64, ptr %retval, align 8, !dbg !446
  ret i64 %24, !dbg !446
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpihelp_mul_n(ptr noundef %prodp, ptr noundef %up, ptr noundef %vp, i32 noundef %size) #0 align 16 !dbg !447 {
entry:
  %prodp.addr = alloca ptr, align 8
  %up.addr = alloca ptr, align 8
  %vp.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %tspace = alloca ptr, align 8
  %tspace8 = alloca ptr, align 8
  store ptr %prodp, ptr %prodp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prodp.addr, metadata !451, metadata !DIExpression()), !dbg !464
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !452, metadata !DIExpression()), !dbg !465
  store ptr %vp, ptr %vp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vp.addr, metadata !453, metadata !DIExpression()), !dbg !466
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !454, metadata !DIExpression()), !dbg !467
  %0 = load ptr, ptr %up.addr, align 8, !dbg !468
  %1 = load ptr, ptr %vp.addr, align 8, !dbg !469
  %cmp = icmp eq ptr %0, %1, !dbg !470
  br i1 %cmp, label %if.then, label %if.else3, !dbg !471

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %size.addr, align 4, !dbg !472
  %cmp1 = icmp slt i32 %2, 16, !dbg !473
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !474

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %prodp.addr, align 8, !dbg !475
  %4 = load ptr, ptr %up.addr, align 8, !dbg !476
  %5 = load i32, ptr %size.addr, align 4, !dbg !477
  call void @mpih_sqr_n_basecase(ptr noundef %3, ptr noundef %4, i32 noundef %5) #15, !dbg !478
  br label %if.end, !dbg !478

if.else:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %tspace) #14, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %tspace, metadata !455, metadata !DIExpression()), !dbg !480
  %6 = load i32, ptr %size.addr, align 4, !dbg !481
  %mul = mul i32 2, %6, !dbg !482
  %call = call ptr @mpi_alloc_limb_space(i32 noundef %mul) #15, !dbg !483
  store ptr %call, ptr %tspace, align 8, !dbg !484
  %7 = load ptr, ptr %prodp.addr, align 8, !dbg !485
  %8 = load ptr, ptr %up.addr, align 8, !dbg !486
  %9 = load i32, ptr %size.addr, align 4, !dbg !487
  %10 = load ptr, ptr %tspace, align 8, !dbg !488
  call void @mpih_sqr_n(ptr noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef %10) #15, !dbg !489
  %11 = load ptr, ptr %tspace, align 8, !dbg !490
  call void @mpi_free_limb_space(ptr noundef %11) #15, !dbg !491
  call void @llvm.lifetime.end.p0(i64 8, ptr %tspace) #14, !dbg !492
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end12, !dbg !493

if.else3:                                         ; preds = %entry
  %12 = load i32, ptr %size.addr, align 4, !dbg !494
  %cmp4 = icmp slt i32 %12, 16, !dbg !495
  br i1 %cmp4, label %if.then5, label %if.else7, !dbg !496

if.then5:                                         ; preds = %if.else3
  %13 = load ptr, ptr %prodp.addr, align 8, !dbg !497
  %14 = load ptr, ptr %up.addr, align 8, !dbg !498
  %15 = load ptr, ptr %vp.addr, align 8, !dbg !499
  %16 = load i32, ptr %size.addr, align 4, !dbg !500
  %call6 = call i64 @mul_n_basecase(ptr noundef %13, ptr noundef %14, ptr noundef %15, i32 noundef %16) #15, !dbg !501
  br label %if.end11, !dbg !501

if.else7:                                         ; preds = %if.else3
  call void @llvm.lifetime.start.p0(i64 8, ptr %tspace8) #14, !dbg !502
  call void @llvm.dbg.declare(metadata ptr %tspace8, metadata !460, metadata !DIExpression()), !dbg !503
  %17 = load i32, ptr %size.addr, align 4, !dbg !504
  %mul9 = mul i32 2, %17, !dbg !505
  %call10 = call ptr @mpi_alloc_limb_space(i32 noundef %mul9) #15, !dbg !506
  store ptr %call10, ptr %tspace8, align 8, !dbg !507
  %18 = load ptr, ptr %prodp.addr, align 8, !dbg !508
  %19 = load ptr, ptr %up.addr, align 8, !dbg !509
  %20 = load ptr, ptr %vp.addr, align 8, !dbg !510
  %21 = load i32, ptr %size.addr, align 4, !dbg !511
  %22 = load ptr, ptr %tspace8, align 8, !dbg !512
  call void @mul_n(ptr noundef %18, ptr noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %22) #15, !dbg !513
  %23 = load ptr, ptr %tspace8, align 8, !dbg !514
  call void @mpi_free_limb_space(ptr noundef %23) #15, !dbg !515
  call void @llvm.lifetime.end.p0(i64 8, ptr %tspace8) #14, !dbg !516
  br label %if.end11

if.end11:                                         ; preds = %if.else7, %if.then5
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  ret void, !dbg !517
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !518 dso_local ptr @mpi_alloc_limb_space(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !521 dso_local void @mpi_free_limb_space(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mul_n_basecase(ptr noundef %prodp, ptr noundef %up, ptr noundef %vp, i32 noundef %size) #0 align 16 !dbg !524 {
entry:
  %prodp.addr = alloca ptr, align 8
  %up.addr = alloca ptr, align 8
  %vp.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cy = alloca i64, align 8
  %v_limb = alloca i64, align 8
  %_i = alloca i32, align 4
  %_i8 = alloca i32, align 4
  store ptr %prodp, ptr %prodp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prodp.addr, metadata !526, metadata !DIExpression()), !dbg !540
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !527, metadata !DIExpression()), !dbg !541
  store ptr %vp, ptr %vp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vp.addr, metadata !528, metadata !DIExpression()), !dbg !542
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !529, metadata !DIExpression()), !dbg !543
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !544
  call void @llvm.dbg.declare(metadata ptr %i, metadata !530, metadata !DIExpression()), !dbg !545
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #14, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !531, metadata !DIExpression()), !dbg !547
  call void @llvm.lifetime.start.p0(i64 8, ptr %v_limb) #14, !dbg !548
  call void @llvm.dbg.declare(metadata ptr %v_limb, metadata !532, metadata !DIExpression()), !dbg !549
  %0 = load ptr, ptr %vp.addr, align 8, !dbg !550
  %arrayidx = getelementptr i64, ptr %0, i64 0, !dbg !550
  %1 = load i64, ptr %arrayidx, align 8, !dbg !550
  store i64 %1, ptr %v_limb, align 8, !dbg !551
  %2 = load i64, ptr %v_limb, align 8, !dbg !552
  %cmp = icmp ule i64 %2, 1, !dbg !553
  br i1 %cmp, label %if.then, label %if.else19, !dbg !554

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %v_limb, align 8, !dbg !555
  %cmp1 = icmp eq i64 %3, 1, !dbg !556
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !557

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !558

do.body:                                          ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #14, !dbg !559
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !533, metadata !DIExpression()), !dbg !559
  store i32 0, ptr %_i, align 4, !dbg !560
  br label %for.cond, !dbg !560

for.cond:                                         ; preds = %for.inc, %do.body
  %4 = load i32, ptr %_i, align 4, !dbg !562
  %5 = load i32, ptr %size.addr, align 4, !dbg !562
  %cmp3 = icmp slt i32 %4, %5, !dbg !562
  br i1 %cmp3, label %for.body, label %for.end, !dbg !560

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %up.addr, align 8, !dbg !562
  %7 = load i32, ptr %_i, align 4, !dbg !562
  %idxprom = sext i32 %7 to i64, !dbg !562
  %arrayidx4 = getelementptr i64, ptr %6, i64 %idxprom, !dbg !562
  %8 = load i64, ptr %arrayidx4, align 8, !dbg !562
  %9 = load ptr, ptr %prodp.addr, align 8, !dbg !562
  %10 = load i32, ptr %_i, align 4, !dbg !562
  %idxprom5 = sext i32 %10 to i64, !dbg !562
  %arrayidx6 = getelementptr i64, ptr %9, i64 %idxprom5, !dbg !562
  store i64 %8, ptr %arrayidx6, align 8, !dbg !562
  br label %for.inc, !dbg !562

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %_i, align 4, !dbg !562
  %inc = add i32 %11, 1, !dbg !562
  store i32 %inc, ptr %_i, align 4, !dbg !562
  br label %for.cond, !dbg !562, !llvm.loop !564

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #14, !dbg !558
  br label %do.cond, !dbg !559

do.cond:                                          ; preds = %for.end
  br label %do.end, !dbg !559

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !559

if.else:                                          ; preds = %if.then
  br label %do.body7, !dbg !565

do.body7:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i8) #14, !dbg !566
  call void @llvm.dbg.declare(metadata ptr %_i8, metadata !538, metadata !DIExpression()), !dbg !566
  store i32 0, ptr %_i8, align 4, !dbg !567
  br label %for.cond9, !dbg !567

for.cond9:                                        ; preds = %for.inc14, %do.body7
  %12 = load i32, ptr %_i8, align 4, !dbg !569
  %13 = load i32, ptr %size.addr, align 4, !dbg !569
  %cmp10 = icmp slt i32 %12, %13, !dbg !569
  br i1 %cmp10, label %for.body11, label %for.end16, !dbg !567

for.body11:                                       ; preds = %for.cond9
  %14 = load ptr, ptr %prodp.addr, align 8, !dbg !569
  %15 = load i32, ptr %_i8, align 4, !dbg !569
  %idxprom12 = sext i32 %15 to i64, !dbg !569
  %arrayidx13 = getelementptr i64, ptr %14, i64 %idxprom12, !dbg !569
  store i64 0, ptr %arrayidx13, align 8, !dbg !569
  br label %for.inc14, !dbg !569

for.inc14:                                        ; preds = %for.body11
  %16 = load i32, ptr %_i8, align 4, !dbg !569
  %inc15 = add i32 %16, 1, !dbg !569
  store i32 %inc15, ptr %_i8, align 4, !dbg !569
  br label %for.cond9, !dbg !569, !llvm.loop !571

for.end16:                                        ; preds = %for.cond9
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i8) #14, !dbg !565
  br label %do.cond17, !dbg !566

do.cond17:                                        ; preds = %for.end16
  br label %do.end18, !dbg !566

do.end18:                                         ; preds = %do.cond17
  br label %if.end

if.end:                                           ; preds = %do.end18, %do.end
  store i64 0, ptr %cy, align 8, !dbg !572
  br label %if.end20, !dbg !573

if.else19:                                        ; preds = %entry
  %17 = load ptr, ptr %prodp.addr, align 8, !dbg !574
  %18 = load ptr, ptr %up.addr, align 8, !dbg !575
  %19 = load i32, ptr %size.addr, align 4, !dbg !576
  %20 = load i64, ptr %v_limb, align 8, !dbg !577
  %call = call i64 @mpihelp_mul_1(ptr noundef %17, ptr noundef %18, i32 noundef %19, i64 noundef %20) #15, !dbg !578
  store i64 %call, ptr %cy, align 8, !dbg !579
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.end
  %21 = load i64, ptr %cy, align 8, !dbg !580
  %22 = load ptr, ptr %prodp.addr, align 8, !dbg !581
  %23 = load i32, ptr %size.addr, align 4, !dbg !582
  %idxprom21 = sext i32 %23 to i64, !dbg !581
  %arrayidx22 = getelementptr i64, ptr %22, i64 %idxprom21, !dbg !581
  store i64 %21, ptr %arrayidx22, align 8, !dbg !583
  %24 = load ptr, ptr %prodp.addr, align 8, !dbg !584
  %incdec.ptr = getelementptr i64, ptr %24, i32 1, !dbg !584
  store ptr %incdec.ptr, ptr %prodp.addr, align 8, !dbg !584
  store i32 1, ptr %i, align 4, !dbg !585
  br label %for.cond23, !dbg !587

for.cond23:                                       ; preds = %for.inc40, %if.end20
  %25 = load i32, ptr %i, align 4, !dbg !588
  %26 = load i32, ptr %size.addr, align 4, !dbg !590
  %cmp24 = icmp slt i32 %25, %26, !dbg !591
  br i1 %cmp24, label %for.body25, label %for.end42, !dbg !592

for.body25:                                       ; preds = %for.cond23
  %27 = load ptr, ptr %vp.addr, align 8, !dbg !593
  %28 = load i32, ptr %i, align 4, !dbg !595
  %idxprom26 = sext i32 %28 to i64, !dbg !593
  %arrayidx27 = getelementptr i64, ptr %27, i64 %idxprom26, !dbg !593
  %29 = load i64, ptr %arrayidx27, align 8, !dbg !593
  store i64 %29, ptr %v_limb, align 8, !dbg !596
  %30 = load i64, ptr %v_limb, align 8, !dbg !597
  %cmp28 = icmp ule i64 %30, 1, !dbg !599
  br i1 %cmp28, label %if.then29, label %if.else34, !dbg !600

if.then29:                                        ; preds = %for.body25
  store i64 0, ptr %cy, align 8, !dbg !601
  %31 = load i64, ptr %v_limb, align 8, !dbg !603
  %cmp30 = icmp eq i64 %31, 1, !dbg !605
  br i1 %cmp30, label %if.then31, label %if.end33, !dbg !606

if.then31:                                        ; preds = %if.then29
  %32 = load ptr, ptr %prodp.addr, align 8, !dbg !607
  %33 = load ptr, ptr %prodp.addr, align 8, !dbg !608
  %34 = load ptr, ptr %up.addr, align 8, !dbg !609
  %35 = load i32, ptr %size.addr, align 4, !dbg !610
  %call32 = call i64 @mpihelp_add_n(ptr noundef %32, ptr noundef %33, ptr noundef %34, i32 noundef %35) #15, !dbg !611
  store i64 %call32, ptr %cy, align 8, !dbg !612
  br label %if.end33, !dbg !613

if.end33:                                         ; preds = %if.then31, %if.then29
  br label %if.end36, !dbg !614

if.else34:                                        ; preds = %for.body25
  %36 = load ptr, ptr %prodp.addr, align 8, !dbg !615
  %37 = load ptr, ptr %up.addr, align 8, !dbg !616
  %38 = load i32, ptr %size.addr, align 4, !dbg !617
  %39 = load i64, ptr %v_limb, align 8, !dbg !618
  %call35 = call i64 @mpihelp_addmul_1(ptr noundef %36, ptr noundef %37, i32 noundef %38, i64 noundef %39) #15, !dbg !619
  store i64 %call35, ptr %cy, align 8, !dbg !620
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.end33
  %40 = load i64, ptr %cy, align 8, !dbg !621
  %41 = load ptr, ptr %prodp.addr, align 8, !dbg !622
  %42 = load i32, ptr %size.addr, align 4, !dbg !623
  %idxprom37 = sext i32 %42 to i64, !dbg !622
  %arrayidx38 = getelementptr i64, ptr %41, i64 %idxprom37, !dbg !622
  store i64 %40, ptr %arrayidx38, align 8, !dbg !624
  %43 = load ptr, ptr %prodp.addr, align 8, !dbg !625
  %incdec.ptr39 = getelementptr i64, ptr %43, i32 1, !dbg !625
  store ptr %incdec.ptr39, ptr %prodp.addr, align 8, !dbg !625
  br label %for.inc40, !dbg !626

for.inc40:                                        ; preds = %if.end36
  %44 = load i32, ptr %i, align 4, !dbg !627
  %inc41 = add i32 %44, 1, !dbg !627
  store i32 %inc41, ptr %i, align 4, !dbg !627
  br label %for.cond23, !dbg !628, !llvm.loop !629

for.end42:                                        ; preds = %for.cond23
  %45 = load i64, ptr %cy, align 8, !dbg !631
  call void @llvm.lifetime.end.p0(i64 8, ptr %v_limb) #14, !dbg !632
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #14, !dbg !632
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !632
  ret i64 %45, !dbg !633
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mul_n(ptr noundef %prodp, ptr noundef %up, ptr noundef %vp, i32 noundef %size, ptr noundef %tspace) #0 align 16 !dbg !634 {
entry:
  %prodp.addr = alloca ptr, align 8
  %up.addr = alloca ptr, align 8
  %vp.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %tspace.addr = alloca ptr, align 8
  %esize = alloca i32, align 4
  %cy_limb = alloca i64, align 8
  %hsize = alloca i32, align 4
  %cy = alloca i64, align 8
  %negflg = alloca i32, align 4
  %_i = alloca i32, align 4
  %_i144 = alloca i32, align 4
  store ptr %prodp, ptr %prodp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prodp.addr, metadata !638, metadata !DIExpression()), !dbg !655
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !639, metadata !DIExpression()), !dbg !656
  store ptr %vp, ptr %vp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vp.addr, metadata !640, metadata !DIExpression()), !dbg !657
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !641, metadata !DIExpression()), !dbg !658
  store ptr %tspace, ptr %tspace.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tspace.addr, metadata !642, metadata !DIExpression()), !dbg !659
  %0 = load i32, ptr %size.addr, align 4, !dbg !660
  %and = and i32 %0, 1, !dbg !661
  %tobool = icmp ne i32 %and, 0, !dbg !661
  br i1 %tobool, label %if.then, label %if.else13, !dbg !662

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %esize) #14, !dbg !663
  call void @llvm.dbg.declare(metadata ptr %esize, metadata !643, metadata !DIExpression()), !dbg !664
  %1 = load i32, ptr %size.addr, align 4, !dbg !665
  %sub = sub i32 %1, 1, !dbg !666
  store i32 %sub, ptr %esize, align 4, !dbg !664
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy_limb) #14, !dbg !667
  call void @llvm.dbg.declare(metadata ptr %cy_limb, metadata !646, metadata !DIExpression()), !dbg !668
  br label %do.body, !dbg !669

do.body:                                          ; preds = %if.then
  %2 = load i32, ptr %esize, align 4, !dbg !670
  %cmp = icmp slt i32 %2, 16, !dbg !670
  br i1 %cmp, label %if.then1, label %if.else, !dbg !673

if.then1:                                         ; preds = %do.body
  %3 = load ptr, ptr %prodp.addr, align 8, !dbg !670
  %4 = load ptr, ptr %up.addr, align 8, !dbg !670
  %5 = load ptr, ptr %vp.addr, align 8, !dbg !670
  %6 = load i32, ptr %esize, align 4, !dbg !670
  %call = call i64 @mul_n_basecase(ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #15, !dbg !670
  br label %if.end, !dbg !670

if.else:                                          ; preds = %do.body
  %7 = load ptr, ptr %prodp.addr, align 8, !dbg !670
  %8 = load ptr, ptr %up.addr, align 8, !dbg !670
  %9 = load ptr, ptr %vp.addr, align 8, !dbg !670
  %10 = load i32, ptr %esize, align 4, !dbg !670
  %11 = load ptr, ptr %tspace.addr, align 8, !dbg !670
  call void @mul_n(ptr noundef %7, ptr noundef %8, ptr noundef %9, i32 noundef %10, ptr noundef %11) #15, !dbg !670
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %do.cond, !dbg !673

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !673

do.end:                                           ; preds = %do.cond
  %12 = load ptr, ptr %prodp.addr, align 8, !dbg !674
  %13 = load i32, ptr %esize, align 4, !dbg !675
  %idx.ext = sext i32 %13 to i64, !dbg !676
  %add.ptr = getelementptr i64, ptr %12, i64 %idx.ext, !dbg !676
  %14 = load ptr, ptr %up.addr, align 8, !dbg !677
  %15 = load i32, ptr %esize, align 4, !dbg !678
  %16 = load ptr, ptr %vp.addr, align 8, !dbg !679
  %17 = load i32, ptr %esize, align 4, !dbg !680
  %idxprom = sext i32 %17 to i64, !dbg !679
  %arrayidx = getelementptr i64, ptr %16, i64 %idxprom, !dbg !679
  %18 = load i64, ptr %arrayidx, align 8, !dbg !679
  %call2 = call i64 @mpihelp_addmul_1(ptr noundef %add.ptr, ptr noundef %14, i32 noundef %15, i64 noundef %18) #15, !dbg !681
  store i64 %call2, ptr %cy_limb, align 8, !dbg !682
  %19 = load i64, ptr %cy_limb, align 8, !dbg !683
  %20 = load ptr, ptr %prodp.addr, align 8, !dbg !684
  %21 = load i32, ptr %esize, align 4, !dbg !685
  %22 = load i32, ptr %esize, align 4, !dbg !686
  %add = add i32 %21, %22, !dbg !687
  %idxprom3 = sext i32 %add to i64, !dbg !684
  %arrayidx4 = getelementptr i64, ptr %20, i64 %idxprom3, !dbg !684
  store i64 %19, ptr %arrayidx4, align 8, !dbg !688
  %23 = load ptr, ptr %prodp.addr, align 8, !dbg !689
  %24 = load i32, ptr %esize, align 4, !dbg !690
  %idx.ext5 = sext i32 %24 to i64, !dbg !691
  %add.ptr6 = getelementptr i64, ptr %23, i64 %idx.ext5, !dbg !691
  %25 = load ptr, ptr %vp.addr, align 8, !dbg !692
  %26 = load i32, ptr %size.addr, align 4, !dbg !693
  %27 = load ptr, ptr %up.addr, align 8, !dbg !694
  %28 = load i32, ptr %esize, align 4, !dbg !695
  %idxprom7 = sext i32 %28 to i64, !dbg !694
  %arrayidx8 = getelementptr i64, ptr %27, i64 %idxprom7, !dbg !694
  %29 = load i64, ptr %arrayidx8, align 8, !dbg !694
  %call9 = call i64 @mpihelp_addmul_1(ptr noundef %add.ptr6, ptr noundef %25, i32 noundef %26, i64 noundef %29) #15, !dbg !696
  store i64 %call9, ptr %cy_limb, align 8, !dbg !697
  %30 = load i64, ptr %cy_limb, align 8, !dbg !698
  %31 = load ptr, ptr %prodp.addr, align 8, !dbg !699
  %32 = load i32, ptr %esize, align 4, !dbg !700
  %33 = load i32, ptr %size.addr, align 4, !dbg !701
  %add10 = add i32 %32, %33, !dbg !702
  %idxprom11 = sext i32 %add10 to i64, !dbg !699
  %arrayidx12 = getelementptr i64, ptr %31, i64 %idxprom11, !dbg !699
  store i64 %30, ptr %arrayidx12, align 8, !dbg !703
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy_limb) #14, !dbg !704
  call void @llvm.lifetime.end.p0(i64 4, ptr %esize) #14, !dbg !704
  br label %if.end172, !dbg !705

if.else13:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %hsize) #14, !dbg !706
  call void @llvm.dbg.declare(metadata ptr %hsize, metadata !647, metadata !DIExpression()), !dbg !707
  %34 = load i32, ptr %size.addr, align 4, !dbg !708
  %shr = ashr i32 %34, 1, !dbg !709
  store i32 %shr, ptr %hsize, align 4, !dbg !707
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #14, !dbg !710
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !649, metadata !DIExpression()), !dbg !711
  call void @llvm.lifetime.start.p0(i64 4, ptr %negflg) #14, !dbg !712
  call void @llvm.dbg.declare(metadata ptr %negflg, metadata !650, metadata !DIExpression()), !dbg !713
  br label %do.body14, !dbg !714

do.body14:                                        ; preds = %if.else13
  %35 = load i32, ptr %hsize, align 4, !dbg !715
  %cmp15 = icmp slt i32 %35, 16, !dbg !715
  br i1 %cmp15, label %if.then16, label %if.else24, !dbg !718

if.then16:                                        ; preds = %do.body14
  %36 = load ptr, ptr %prodp.addr, align 8, !dbg !715
  %37 = load i32, ptr %size.addr, align 4, !dbg !715
  %idx.ext17 = sext i32 %37 to i64, !dbg !715
  %add.ptr18 = getelementptr i64, ptr %36, i64 %idx.ext17, !dbg !715
  %38 = load ptr, ptr %up.addr, align 8, !dbg !715
  %39 = load i32, ptr %hsize, align 4, !dbg !715
  %idx.ext19 = sext i32 %39 to i64, !dbg !715
  %add.ptr20 = getelementptr i64, ptr %38, i64 %idx.ext19, !dbg !715
  %40 = load ptr, ptr %vp.addr, align 8, !dbg !715
  %41 = load i32, ptr %hsize, align 4, !dbg !715
  %idx.ext21 = sext i32 %41 to i64, !dbg !715
  %add.ptr22 = getelementptr i64, ptr %40, i64 %idx.ext21, !dbg !715
  %42 = load i32, ptr %hsize, align 4, !dbg !715
  %call23 = call i64 @mul_n_basecase(ptr noundef %add.ptr18, ptr noundef %add.ptr20, ptr noundef %add.ptr22, i32 noundef %42) #15, !dbg !715
  br label %if.end31, !dbg !715

if.else24:                                        ; preds = %do.body14
  %43 = load ptr, ptr %prodp.addr, align 8, !dbg !715
  %44 = load i32, ptr %size.addr, align 4, !dbg !715
  %idx.ext25 = sext i32 %44 to i64, !dbg !715
  %add.ptr26 = getelementptr i64, ptr %43, i64 %idx.ext25, !dbg !715
  %45 = load ptr, ptr %up.addr, align 8, !dbg !715
  %46 = load i32, ptr %hsize, align 4, !dbg !715
  %idx.ext27 = sext i32 %46 to i64, !dbg !715
  %add.ptr28 = getelementptr i64, ptr %45, i64 %idx.ext27, !dbg !715
  %47 = load ptr, ptr %vp.addr, align 8, !dbg !715
  %48 = load i32, ptr %hsize, align 4, !dbg !715
  %idx.ext29 = sext i32 %48 to i64, !dbg !715
  %add.ptr30 = getelementptr i64, ptr %47, i64 %idx.ext29, !dbg !715
  %49 = load i32, ptr %hsize, align 4, !dbg !715
  %50 = load ptr, ptr %tspace.addr, align 8, !dbg !715
  call void @mul_n(ptr noundef %add.ptr26, ptr noundef %add.ptr28, ptr noundef %add.ptr30, i32 noundef %49, ptr noundef %50) #15, !dbg !715
  br label %if.end31

if.end31:                                         ; preds = %if.else24, %if.then16
  br label %do.cond32, !dbg !718

do.cond32:                                        ; preds = %if.end31
  br label %do.end33, !dbg !718

do.end33:                                         ; preds = %do.cond32
  %51 = load ptr, ptr %up.addr, align 8, !dbg !719
  %52 = load i32, ptr %hsize, align 4, !dbg !721
  %idx.ext34 = sext i32 %52 to i64, !dbg !722
  %add.ptr35 = getelementptr i64, ptr %51, i64 %idx.ext34, !dbg !722
  %53 = load ptr, ptr %up.addr, align 8, !dbg !723
  %54 = load i32, ptr %hsize, align 4, !dbg !724
  %call36 = call i32 @mpihelp_cmp(ptr noundef %add.ptr35, ptr noundef %53, i32 noundef %54) #15, !dbg !725
  %cmp37 = icmp sge i32 %call36, 0, !dbg !726
  br i1 %cmp37, label %if.then38, label %if.else42, !dbg !727

if.then38:                                        ; preds = %do.end33
  %55 = load ptr, ptr %prodp.addr, align 8, !dbg !728
  %56 = load ptr, ptr %up.addr, align 8, !dbg !730
  %57 = load i32, ptr %hsize, align 4, !dbg !731
  %idx.ext39 = sext i32 %57 to i64, !dbg !732
  %add.ptr40 = getelementptr i64, ptr %56, i64 %idx.ext39, !dbg !732
  %58 = load ptr, ptr %up.addr, align 8, !dbg !733
  %59 = load i32, ptr %hsize, align 4, !dbg !734
  %call41 = call i64 @mpihelp_sub_n(ptr noundef %55, ptr noundef %add.ptr40, ptr noundef %58, i32 noundef %59) #15, !dbg !735
  store i32 0, ptr %negflg, align 4, !dbg !736
  br label %if.end46, !dbg !737

if.else42:                                        ; preds = %do.end33
  %60 = load ptr, ptr %prodp.addr, align 8, !dbg !738
  %61 = load ptr, ptr %up.addr, align 8, !dbg !740
  %62 = load ptr, ptr %up.addr, align 8, !dbg !741
  %63 = load i32, ptr %hsize, align 4, !dbg !742
  %idx.ext43 = sext i32 %63 to i64, !dbg !743
  %add.ptr44 = getelementptr i64, ptr %62, i64 %idx.ext43, !dbg !743
  %64 = load i32, ptr %hsize, align 4, !dbg !744
  %call45 = call i64 @mpihelp_sub_n(ptr noundef %60, ptr noundef %61, ptr noundef %add.ptr44, i32 noundef %64) #15, !dbg !745
  store i32 1, ptr %negflg, align 4, !dbg !746
  br label %if.end46

if.end46:                                         ; preds = %if.else42, %if.then38
  %65 = load ptr, ptr %vp.addr, align 8, !dbg !747
  %66 = load i32, ptr %hsize, align 4, !dbg !749
  %idx.ext47 = sext i32 %66 to i64, !dbg !750
  %add.ptr48 = getelementptr i64, ptr %65, i64 %idx.ext47, !dbg !750
  %67 = load ptr, ptr %vp.addr, align 8, !dbg !751
  %68 = load i32, ptr %hsize, align 4, !dbg !752
  %call49 = call i32 @mpihelp_cmp(ptr noundef %add.ptr48, ptr noundef %67, i32 noundef %68) #15, !dbg !753
  %cmp50 = icmp sge i32 %call49, 0, !dbg !754
  br i1 %cmp50, label %if.then51, label %if.else57, !dbg !755

if.then51:                                        ; preds = %if.end46
  %69 = load ptr, ptr %prodp.addr, align 8, !dbg !756
  %70 = load i32, ptr %hsize, align 4, !dbg !758
  %idx.ext52 = sext i32 %70 to i64, !dbg !759
  %add.ptr53 = getelementptr i64, ptr %69, i64 %idx.ext52, !dbg !759
  %71 = load ptr, ptr %vp.addr, align 8, !dbg !760
  %72 = load i32, ptr %hsize, align 4, !dbg !761
  %idx.ext54 = sext i32 %72 to i64, !dbg !762
  %add.ptr55 = getelementptr i64, ptr %71, i64 %idx.ext54, !dbg !762
  %73 = load ptr, ptr %vp.addr, align 8, !dbg !763
  %74 = load i32, ptr %hsize, align 4, !dbg !764
  %call56 = call i64 @mpihelp_sub_n(ptr noundef %add.ptr53, ptr noundef %add.ptr55, ptr noundef %73, i32 noundef %74) #15, !dbg !765
  %75 = load i32, ptr %negflg, align 4, !dbg !766
  %xor = xor i32 %75, 1, !dbg !766
  store i32 %xor, ptr %negflg, align 4, !dbg !766
  br label %if.end63, !dbg !767

if.else57:                                        ; preds = %if.end46
  %76 = load ptr, ptr %prodp.addr, align 8, !dbg !768
  %77 = load i32, ptr %hsize, align 4, !dbg !770
  %idx.ext58 = sext i32 %77 to i64, !dbg !771
  %add.ptr59 = getelementptr i64, ptr %76, i64 %idx.ext58, !dbg !771
  %78 = load ptr, ptr %vp.addr, align 8, !dbg !772
  %79 = load ptr, ptr %vp.addr, align 8, !dbg !773
  %80 = load i32, ptr %hsize, align 4, !dbg !774
  %idx.ext60 = sext i32 %80 to i64, !dbg !775
  %add.ptr61 = getelementptr i64, ptr %79, i64 %idx.ext60, !dbg !775
  %81 = load i32, ptr %hsize, align 4, !dbg !776
  %call62 = call i64 @mpihelp_sub_n(ptr noundef %add.ptr59, ptr noundef %78, ptr noundef %add.ptr61, i32 noundef %81) #15, !dbg !777
  br label %if.end63

if.end63:                                         ; preds = %if.else57, %if.then51
  br label %do.body64, !dbg !778

do.body64:                                        ; preds = %if.end63
  %82 = load i32, ptr %hsize, align 4, !dbg !779
  %cmp65 = icmp slt i32 %82, 16, !dbg !779
  br i1 %cmp65, label %if.then66, label %if.else70, !dbg !782

if.then66:                                        ; preds = %do.body64
  %83 = load ptr, ptr %tspace.addr, align 8, !dbg !779
  %84 = load ptr, ptr %prodp.addr, align 8, !dbg !779
  %85 = load ptr, ptr %prodp.addr, align 8, !dbg !779
  %86 = load i32, ptr %hsize, align 4, !dbg !779
  %idx.ext67 = sext i32 %86 to i64, !dbg !779
  %add.ptr68 = getelementptr i64, ptr %85, i64 %idx.ext67, !dbg !779
  %87 = load i32, ptr %hsize, align 4, !dbg !779
  %call69 = call i64 @mul_n_basecase(ptr noundef %83, ptr noundef %84, ptr noundef %add.ptr68, i32 noundef %87) #15, !dbg !779
  br label %if.end75, !dbg !779

if.else70:                                        ; preds = %do.body64
  %88 = load ptr, ptr %tspace.addr, align 8, !dbg !779
  %89 = load ptr, ptr %prodp.addr, align 8, !dbg !779
  %90 = load ptr, ptr %prodp.addr, align 8, !dbg !779
  %91 = load i32, ptr %hsize, align 4, !dbg !779
  %idx.ext71 = sext i32 %91 to i64, !dbg !779
  %add.ptr72 = getelementptr i64, ptr %90, i64 %idx.ext71, !dbg !779
  %92 = load i32, ptr %hsize, align 4, !dbg !779
  %93 = load ptr, ptr %tspace.addr, align 8, !dbg !779
  %94 = load i32, ptr %size.addr, align 4, !dbg !779
  %idx.ext73 = sext i32 %94 to i64, !dbg !779
  %add.ptr74 = getelementptr i64, ptr %93, i64 %idx.ext73, !dbg !779
  call void @mul_n(ptr noundef %88, ptr noundef %89, ptr noundef %add.ptr72, i32 noundef %92, ptr noundef %add.ptr74) #15, !dbg !779
  br label %if.end75

if.end75:                                         ; preds = %if.else70, %if.then66
  br label %do.cond76, !dbg !782

do.cond76:                                        ; preds = %if.end75
  br label %do.end77, !dbg !782

do.end77:                                         ; preds = %do.cond76
  br label %do.body78, !dbg !783

do.body78:                                        ; preds = %do.end77
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #14, !dbg !784
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !651, metadata !DIExpression()), !dbg !784
  store i32 0, ptr %_i, align 4, !dbg !785
  br label %for.cond, !dbg !785

for.cond:                                         ; preds = %for.inc, %do.body78
  %95 = load i32, ptr %_i, align 4, !dbg !787
  %96 = load i32, ptr %hsize, align 4, !dbg !787
  %cmp79 = icmp slt i32 %95, %96, !dbg !787
  br i1 %cmp79, label %for.body, label %for.end, !dbg !785

for.body:                                         ; preds = %for.cond
  %97 = load ptr, ptr %prodp.addr, align 8, !dbg !787
  %98 = load i32, ptr %size.addr, align 4, !dbg !787
  %idx.ext80 = sext i32 %98 to i64, !dbg !787
  %add.ptr81 = getelementptr i64, ptr %97, i64 %idx.ext80, !dbg !787
  %99 = load i32, ptr %_i, align 4, !dbg !787
  %idxprom82 = sext i32 %99 to i64, !dbg !787
  %arrayidx83 = getelementptr i64, ptr %add.ptr81, i64 %idxprom82, !dbg !787
  %100 = load i64, ptr %arrayidx83, align 8, !dbg !787
  %101 = load ptr, ptr %prodp.addr, align 8, !dbg !787
  %102 = load i32, ptr %hsize, align 4, !dbg !787
  %idx.ext84 = sext i32 %102 to i64, !dbg !787
  %add.ptr85 = getelementptr i64, ptr %101, i64 %idx.ext84, !dbg !787
  %103 = load i32, ptr %_i, align 4, !dbg !787
  %idxprom86 = sext i32 %103 to i64, !dbg !787
  %arrayidx87 = getelementptr i64, ptr %add.ptr85, i64 %idxprom86, !dbg !787
  store i64 %100, ptr %arrayidx87, align 8, !dbg !787
  br label %for.inc, !dbg !787

for.inc:                                          ; preds = %for.body
  %104 = load i32, ptr %_i, align 4, !dbg !787
  %inc = add i32 %104, 1, !dbg !787
  store i32 %inc, ptr %_i, align 4, !dbg !787
  br label %for.cond, !dbg !787, !llvm.loop !789

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #14, !dbg !783
  br label %do.cond88, !dbg !784

do.cond88:                                        ; preds = %for.end
  br label %do.end89, !dbg !784

do.end89:                                         ; preds = %do.cond88
  %105 = load ptr, ptr %prodp.addr, align 8, !dbg !790
  %106 = load i32, ptr %size.addr, align 4, !dbg !791
  %idx.ext90 = sext i32 %106 to i64, !dbg !792
  %add.ptr91 = getelementptr i64, ptr %105, i64 %idx.ext90, !dbg !792
  %107 = load ptr, ptr %prodp.addr, align 8, !dbg !793
  %108 = load i32, ptr %size.addr, align 4, !dbg !794
  %idx.ext92 = sext i32 %108 to i64, !dbg !795
  %add.ptr93 = getelementptr i64, ptr %107, i64 %idx.ext92, !dbg !795
  %109 = load ptr, ptr %prodp.addr, align 8, !dbg !796
  %110 = load i32, ptr %size.addr, align 4, !dbg !797
  %idx.ext94 = sext i32 %110 to i64, !dbg !798
  %add.ptr95 = getelementptr i64, ptr %109, i64 %idx.ext94, !dbg !798
  %111 = load i32, ptr %hsize, align 4, !dbg !799
  %idx.ext96 = sext i32 %111 to i64, !dbg !800
  %add.ptr97 = getelementptr i64, ptr %add.ptr95, i64 %idx.ext96, !dbg !800
  %112 = load i32, ptr %hsize, align 4, !dbg !801
  %call98 = call i64 @mpihelp_add_n(ptr noundef %add.ptr91, ptr noundef %add.ptr93, ptr noundef %add.ptr97, i32 noundef %112) #15, !dbg !802
  store i64 %call98, ptr %cy, align 8, !dbg !803
  %113 = load i32, ptr %negflg, align 4, !dbg !804
  %tobool99 = icmp ne i32 %113, 0, !dbg !804
  br i1 %tobool99, label %if.then100, label %if.else107, !dbg !806

if.then100:                                       ; preds = %do.end89
  %114 = load ptr, ptr %prodp.addr, align 8, !dbg !807
  %115 = load i32, ptr %hsize, align 4, !dbg !808
  %idx.ext101 = sext i32 %115 to i64, !dbg !809
  %add.ptr102 = getelementptr i64, ptr %114, i64 %idx.ext101, !dbg !809
  %116 = load ptr, ptr %prodp.addr, align 8, !dbg !810
  %117 = load i32, ptr %hsize, align 4, !dbg !811
  %idx.ext103 = sext i32 %117 to i64, !dbg !812
  %add.ptr104 = getelementptr i64, ptr %116, i64 %idx.ext103, !dbg !812
  %118 = load ptr, ptr %tspace.addr, align 8, !dbg !813
  %119 = load i32, ptr %size.addr, align 4, !dbg !814
  %call105 = call i64 @mpihelp_sub_n(ptr noundef %add.ptr102, ptr noundef %add.ptr104, ptr noundef %118, i32 noundef %119) #15, !dbg !815
  %120 = load i64, ptr %cy, align 8, !dbg !816
  %sub106 = sub i64 %120, %call105, !dbg !816
  store i64 %sub106, ptr %cy, align 8, !dbg !816
  br label %if.end114, !dbg !817

if.else107:                                       ; preds = %do.end89
  %121 = load ptr, ptr %prodp.addr, align 8, !dbg !818
  %122 = load i32, ptr %hsize, align 4, !dbg !819
  %idx.ext108 = sext i32 %122 to i64, !dbg !820
  %add.ptr109 = getelementptr i64, ptr %121, i64 %idx.ext108, !dbg !820
  %123 = load ptr, ptr %prodp.addr, align 8, !dbg !821
  %124 = load i32, ptr %hsize, align 4, !dbg !822
  %idx.ext110 = sext i32 %124 to i64, !dbg !823
  %add.ptr111 = getelementptr i64, ptr %123, i64 %idx.ext110, !dbg !823
  %125 = load ptr, ptr %tspace.addr, align 8, !dbg !824
  %126 = load i32, ptr %size.addr, align 4, !dbg !825
  %call112 = call i64 @mpihelp_add_n(ptr noundef %add.ptr109, ptr noundef %add.ptr111, ptr noundef %125, i32 noundef %126) #15, !dbg !826
  %127 = load i64, ptr %cy, align 8, !dbg !827
  %add113 = add i64 %127, %call112, !dbg !827
  store i64 %add113, ptr %cy, align 8, !dbg !827
  br label %if.end114

if.end114:                                        ; preds = %if.else107, %if.then100
  br label %do.body115, !dbg !828

do.body115:                                       ; preds = %if.end114
  %128 = load i32, ptr %hsize, align 4, !dbg !829
  %cmp116 = icmp slt i32 %128, 16, !dbg !829
  br i1 %cmp116, label %if.then117, label %if.else119, !dbg !832

if.then117:                                       ; preds = %do.body115
  %129 = load ptr, ptr %tspace.addr, align 8, !dbg !829
  %130 = load ptr, ptr %up.addr, align 8, !dbg !829
  %131 = load ptr, ptr %vp.addr, align 8, !dbg !829
  %132 = load i32, ptr %hsize, align 4, !dbg !829
  %call118 = call i64 @mul_n_basecase(ptr noundef %129, ptr noundef %130, ptr noundef %131, i32 noundef %132) #15, !dbg !829
  br label %if.end122, !dbg !829

if.else119:                                       ; preds = %do.body115
  %133 = load ptr, ptr %tspace.addr, align 8, !dbg !829
  %134 = load ptr, ptr %up.addr, align 8, !dbg !829
  %135 = load ptr, ptr %vp.addr, align 8, !dbg !829
  %136 = load i32, ptr %hsize, align 4, !dbg !829
  %137 = load ptr, ptr %tspace.addr, align 8, !dbg !829
  %138 = load i32, ptr %size.addr, align 4, !dbg !829
  %idx.ext120 = sext i32 %138 to i64, !dbg !829
  %add.ptr121 = getelementptr i64, ptr %137, i64 %idx.ext120, !dbg !829
  call void @mul_n(ptr noundef %133, ptr noundef %134, ptr noundef %135, i32 noundef %136, ptr noundef %add.ptr121) #15, !dbg !829
  br label %if.end122

if.end122:                                        ; preds = %if.else119, %if.then117
  br label %do.cond123, !dbg !832

do.cond123:                                       ; preds = %if.end122
  br label %do.end124, !dbg !832

do.end124:                                        ; preds = %do.cond123
  %139 = load ptr, ptr %prodp.addr, align 8, !dbg !833
  %140 = load i32, ptr %hsize, align 4, !dbg !834
  %idx.ext125 = sext i32 %140 to i64, !dbg !835
  %add.ptr126 = getelementptr i64, ptr %139, i64 %idx.ext125, !dbg !835
  %141 = load ptr, ptr %prodp.addr, align 8, !dbg !836
  %142 = load i32, ptr %hsize, align 4, !dbg !837
  %idx.ext127 = sext i32 %142 to i64, !dbg !838
  %add.ptr128 = getelementptr i64, ptr %141, i64 %idx.ext127, !dbg !838
  %143 = load ptr, ptr %tspace.addr, align 8, !dbg !839
  %144 = load i32, ptr %size.addr, align 4, !dbg !840
  %call129 = call i64 @mpihelp_add_n(ptr noundef %add.ptr126, ptr noundef %add.ptr128, ptr noundef %143, i32 noundef %144) #15, !dbg !841
  %145 = load i64, ptr %cy, align 8, !dbg !842
  %add130 = add i64 %145, %call129, !dbg !842
  store i64 %add130, ptr %cy, align 8, !dbg !842
  %146 = load i64, ptr %cy, align 8, !dbg !843
  %tobool131 = icmp ne i64 %146, 0, !dbg !843
  br i1 %tobool131, label %if.then132, label %if.end142, !dbg !845

if.then132:                                       ; preds = %do.end124
  %147 = load ptr, ptr %prodp.addr, align 8, !dbg !846
  %148 = load i32, ptr %hsize, align 4, !dbg !847
  %idx.ext133 = sext i32 %148 to i64, !dbg !848
  %add.ptr134 = getelementptr i64, ptr %147, i64 %idx.ext133, !dbg !848
  %149 = load i32, ptr %size.addr, align 4, !dbg !849
  %idx.ext135 = sext i32 %149 to i64, !dbg !850
  %add.ptr136 = getelementptr i64, ptr %add.ptr134, i64 %idx.ext135, !dbg !850
  %150 = load ptr, ptr %prodp.addr, align 8, !dbg !851
  %151 = load i32, ptr %hsize, align 4, !dbg !852
  %idx.ext137 = sext i32 %151 to i64, !dbg !853
  %add.ptr138 = getelementptr i64, ptr %150, i64 %idx.ext137, !dbg !853
  %152 = load i32, ptr %size.addr, align 4, !dbg !854
  %idx.ext139 = sext i32 %152 to i64, !dbg !855
  %add.ptr140 = getelementptr i64, ptr %add.ptr138, i64 %idx.ext139, !dbg !855
  %153 = load i32, ptr %hsize, align 4, !dbg !856
  %154 = load i64, ptr %cy, align 8, !dbg !857
  %call141 = call i64 @mpihelp_add_1(ptr noundef %add.ptr136, ptr noundef %add.ptr140, i32 noundef %153, i64 noundef %154) #15, !dbg !858
  br label %if.end142, !dbg !858

if.end142:                                        ; preds = %if.then132, %do.end124
  br label %do.body143, !dbg !859

do.body143:                                       ; preds = %if.end142
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i144) #14, !dbg !860
  call void @llvm.dbg.declare(metadata ptr %_i144, metadata !653, metadata !DIExpression()), !dbg !860
  store i32 0, ptr %_i144, align 4, !dbg !861
  br label %for.cond145, !dbg !861

for.cond145:                                      ; preds = %for.inc152, %do.body143
  %155 = load i32, ptr %_i144, align 4, !dbg !863
  %156 = load i32, ptr %hsize, align 4, !dbg !863
  %cmp146 = icmp slt i32 %155, %156, !dbg !863
  br i1 %cmp146, label %for.body147, label %for.end154, !dbg !861

for.body147:                                      ; preds = %for.cond145
  %157 = load ptr, ptr %tspace.addr, align 8, !dbg !863
  %158 = load i32, ptr %_i144, align 4, !dbg !863
  %idxprom148 = sext i32 %158 to i64, !dbg !863
  %arrayidx149 = getelementptr i64, ptr %157, i64 %idxprom148, !dbg !863
  %159 = load i64, ptr %arrayidx149, align 8, !dbg !863
  %160 = load ptr, ptr %prodp.addr, align 8, !dbg !863
  %161 = load i32, ptr %_i144, align 4, !dbg !863
  %idxprom150 = sext i32 %161 to i64, !dbg !863
  %arrayidx151 = getelementptr i64, ptr %160, i64 %idxprom150, !dbg !863
  store i64 %159, ptr %arrayidx151, align 8, !dbg !863
  br label %for.inc152, !dbg !863

for.inc152:                                       ; preds = %for.body147
  %162 = load i32, ptr %_i144, align 4, !dbg !863
  %inc153 = add i32 %162, 1, !dbg !863
  store i32 %inc153, ptr %_i144, align 4, !dbg !863
  br label %for.cond145, !dbg !863, !llvm.loop !865

for.end154:                                       ; preds = %for.cond145
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i144) #14, !dbg !859
  br label %do.cond155, !dbg !860

do.cond155:                                       ; preds = %for.end154
  br label %do.end156, !dbg !860

do.end156:                                        ; preds = %do.cond155
  %163 = load ptr, ptr %prodp.addr, align 8, !dbg !866
  %164 = load i32, ptr %hsize, align 4, !dbg !867
  %idx.ext157 = sext i32 %164 to i64, !dbg !868
  %add.ptr158 = getelementptr i64, ptr %163, i64 %idx.ext157, !dbg !868
  %165 = load ptr, ptr %prodp.addr, align 8, !dbg !869
  %166 = load i32, ptr %hsize, align 4, !dbg !870
  %idx.ext159 = sext i32 %166 to i64, !dbg !871
  %add.ptr160 = getelementptr i64, ptr %165, i64 %idx.ext159, !dbg !871
  %167 = load ptr, ptr %tspace.addr, align 8, !dbg !872
  %168 = load i32, ptr %hsize, align 4, !dbg !873
  %idx.ext161 = sext i32 %168 to i64, !dbg !874
  %add.ptr162 = getelementptr i64, ptr %167, i64 %idx.ext161, !dbg !874
  %169 = load i32, ptr %hsize, align 4, !dbg !875
  %call163 = call i64 @mpihelp_add_n(ptr noundef %add.ptr158, ptr noundef %add.ptr160, ptr noundef %add.ptr162, i32 noundef %169) #15, !dbg !876
  store i64 %call163, ptr %cy, align 8, !dbg !877
  %170 = load i64, ptr %cy, align 8, !dbg !878
  %tobool164 = icmp ne i64 %170, 0, !dbg !878
  br i1 %tobool164, label %if.then165, label %if.end171, !dbg !880

if.then165:                                       ; preds = %do.end156
  %171 = load ptr, ptr %prodp.addr, align 8, !dbg !881
  %172 = load i32, ptr %size.addr, align 4, !dbg !882
  %idx.ext166 = sext i32 %172 to i64, !dbg !883
  %add.ptr167 = getelementptr i64, ptr %171, i64 %idx.ext166, !dbg !883
  %173 = load ptr, ptr %prodp.addr, align 8, !dbg !884
  %174 = load i32, ptr %size.addr, align 4, !dbg !885
  %idx.ext168 = sext i32 %174 to i64, !dbg !886
  %add.ptr169 = getelementptr i64, ptr %173, i64 %idx.ext168, !dbg !886
  %175 = load i32, ptr %size.addr, align 4, !dbg !887
  %call170 = call i64 @mpihelp_add_1(ptr noundef %add.ptr167, ptr noundef %add.ptr169, i32 noundef %175, i64 noundef 1) #15, !dbg !888
  br label %if.end171, !dbg !888

if.end171:                                        ; preds = %if.then165, %do.end156
  call void @llvm.lifetime.end.p0(i64 4, ptr %negflg) #14, !dbg !889
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #14, !dbg !889
  call void @llvm.lifetime.end.p0(i64 4, ptr %hsize) #14, !dbg !889
  br label %if.end172

if.end172:                                        ; preds = %if.end171, %do.end
  ret void, !dbg !890
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mpihelp_mul_karatsuba_case(ptr noundef %prodp, ptr noundef %up, i32 noundef %usize, ptr noundef %vp, i32 noundef %vsize, ptr noundef %ctx) #0 align 16 !dbg !891 {
entry:
  %retval = alloca i32, align 4
  %prodp.addr = alloca ptr, align 8
  %up.addr = alloca ptr, align 8
  %usize.addr = alloca i32, align 4
  %vp.addr = alloca ptr, align 8
  %vsize.addr = alloca i32, align 4
  %ctx.addr = alloca ptr, align 8
  %cy = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %prodp, ptr %prodp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prodp.addr, metadata !903, metadata !DIExpression()), !dbg !915
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !904, metadata !DIExpression()), !dbg !916
  store i32 %usize, ptr %usize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usize.addr, metadata !905, metadata !DIExpression()), !dbg !917
  store ptr %vp, ptr %vp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vp.addr, metadata !906, metadata !DIExpression()), !dbg !918
  store i32 %vsize, ptr %vsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vsize.addr, metadata !907, metadata !DIExpression()), !dbg !919
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !908, metadata !DIExpression()), !dbg !920
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #14, !dbg !921
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !909, metadata !DIExpression()), !dbg !922
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !923
  %tspace = getelementptr inbounds %struct.karatsuba_ctx, ptr %0, i32 0, i32 1, !dbg !925
  %1 = load ptr, ptr %tspace, align 8, !dbg !925
  %tobool = icmp ne ptr %1, null, !dbg !923
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !926

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !927
  %tspace_size = getelementptr inbounds %struct.karatsuba_ctx, ptr %2, i32 0, i32 2, !dbg !928
  %3 = load i32, ptr %tspace_size, align 8, !dbg !928
  %4 = load i32, ptr %vsize.addr, align 4, !dbg !929
  %cmp = icmp slt i32 %3, %4, !dbg !930
  br i1 %cmp, label %if.then, label %if.end11, !dbg !931

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load ptr, ptr %ctx.addr, align 8, !dbg !932
  %tspace1 = getelementptr inbounds %struct.karatsuba_ctx, ptr %5, i32 0, i32 1, !dbg !935
  %6 = load ptr, ptr %tspace1, align 8, !dbg !935
  %tobool2 = icmp ne ptr %6, null, !dbg !932
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !936

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %ctx.addr, align 8, !dbg !937
  %tspace4 = getelementptr inbounds %struct.karatsuba_ctx, ptr %7, i32 0, i32 1, !dbg !938
  %8 = load ptr, ptr %tspace4, align 8, !dbg !938
  call void @mpi_free_limb_space(ptr noundef %8) #15, !dbg !939
  br label %if.end, !dbg !939

if.end:                                           ; preds = %if.then3, %if.then
  %9 = load i32, ptr %vsize.addr, align 4, !dbg !940
  %mul = mul i32 2, %9, !dbg !941
  %call = call ptr @mpi_alloc_limb_space(i32 noundef %mul) #15, !dbg !942
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !943
  %tspace5 = getelementptr inbounds %struct.karatsuba_ctx, ptr %10, i32 0, i32 1, !dbg !944
  store ptr %call, ptr %tspace5, align 8, !dbg !945
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !946
  %tspace6 = getelementptr inbounds %struct.karatsuba_ctx, ptr %11, i32 0, i32 1, !dbg !948
  %12 = load ptr, ptr %tspace6, align 8, !dbg !948
  %tobool7 = icmp ne ptr %12, null, !dbg !946
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !949

if.then8:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109, !dbg !950

if.end9:                                          ; preds = %if.end
  %13 = load i32, ptr %vsize.addr, align 4, !dbg !951
  %14 = load ptr, ptr %ctx.addr, align 8, !dbg !952
  %tspace_size10 = getelementptr inbounds %struct.karatsuba_ctx, ptr %14, i32 0, i32 2, !dbg !953
  store i32 %13, ptr %tspace_size10, align 8, !dbg !954
  br label %if.end11, !dbg !955

if.end11:                                         ; preds = %if.end9, %lor.lhs.false
  br label %do.body, !dbg !956

do.body:                                          ; preds = %if.end11
  %15 = load i32, ptr %vsize.addr, align 4, !dbg !957
  %cmp12 = icmp slt i32 %15, 16, !dbg !957
  br i1 %cmp12, label %if.then13, label %if.else, !dbg !960

if.then13:                                        ; preds = %do.body
  %16 = load ptr, ptr %prodp.addr, align 8, !dbg !957
  %17 = load ptr, ptr %up.addr, align 8, !dbg !957
  %18 = load ptr, ptr %vp.addr, align 8, !dbg !957
  %19 = load i32, ptr %vsize.addr, align 4, !dbg !957
  %call14 = call i64 @mul_n_basecase(ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %19) #15, !dbg !957
  br label %if.end16, !dbg !957

if.else:                                          ; preds = %do.body
  %20 = load ptr, ptr %prodp.addr, align 8, !dbg !957
  %21 = load ptr, ptr %up.addr, align 8, !dbg !957
  %22 = load ptr, ptr %vp.addr, align 8, !dbg !957
  %23 = load i32, ptr %vsize.addr, align 4, !dbg !957
  %24 = load ptr, ptr %ctx.addr, align 8, !dbg !957
  %tspace15 = getelementptr inbounds %struct.karatsuba_ctx, ptr %24, i32 0, i32 1, !dbg !957
  %25 = load ptr, ptr %tspace15, align 8, !dbg !957
  call void @mul_n(ptr noundef %20, ptr noundef %21, ptr noundef %22, i32 noundef %23, ptr noundef %25) #15, !dbg !957
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  br label %do.cond, !dbg !960

do.cond:                                          ; preds = %if.end16
  br label %do.end, !dbg !960

do.end:                                           ; preds = %do.cond
  %26 = load i32, ptr %vsize.addr, align 4, !dbg !961
  %27 = load ptr, ptr %prodp.addr, align 8, !dbg !962
  %idx.ext = sext i32 %26 to i64, !dbg !962
  %add.ptr = getelementptr i64, ptr %27, i64 %idx.ext, !dbg !962
  store ptr %add.ptr, ptr %prodp.addr, align 8, !dbg !962
  %28 = load i32, ptr %vsize.addr, align 4, !dbg !963
  %29 = load ptr, ptr %up.addr, align 8, !dbg !964
  %idx.ext17 = sext i32 %28 to i64, !dbg !964
  %add.ptr18 = getelementptr i64, ptr %29, i64 %idx.ext17, !dbg !964
  store ptr %add.ptr18, ptr %up.addr, align 8, !dbg !964
  %30 = load i32, ptr %vsize.addr, align 4, !dbg !965
  %31 = load i32, ptr %usize.addr, align 4, !dbg !966
  %sub = sub i32 %31, %30, !dbg !966
  store i32 %sub, ptr %usize.addr, align 4, !dbg !966
  %32 = load i32, ptr %usize.addr, align 4, !dbg !967
  %33 = load i32, ptr %vsize.addr, align 4, !dbg !969
  %cmp19 = icmp sge i32 %32, %33, !dbg !970
  br i1 %cmp19, label %if.then20, label %if.end73, !dbg !971

if.then20:                                        ; preds = %do.end
  %34 = load ptr, ptr %ctx.addr, align 8, !dbg !972
  %tp = getelementptr inbounds %struct.karatsuba_ctx, ptr %34, i32 0, i32 3, !dbg !975
  %35 = load ptr, ptr %tp, align 8, !dbg !975
  %tobool21 = icmp ne ptr %35, null, !dbg !972
  br i1 %tobool21, label %lor.lhs.false22, label %if.then24, !dbg !976

lor.lhs.false22:                                  ; preds = %if.then20
  %36 = load ptr, ptr %ctx.addr, align 8, !dbg !977
  %tp_size = getelementptr inbounds %struct.karatsuba_ctx, ptr %36, i32 0, i32 4, !dbg !978
  %37 = load i32, ptr %tp_size, align 8, !dbg !978
  %38 = load i32, ptr %vsize.addr, align 4, !dbg !979
  %cmp23 = icmp slt i32 %37, %38, !dbg !980
  br i1 %cmp23, label %if.then24, label %if.end44, !dbg !981

if.then24:                                        ; preds = %lor.lhs.false22, %if.then20
  %39 = load ptr, ptr %ctx.addr, align 8, !dbg !982
  %tp25 = getelementptr inbounds %struct.karatsuba_ctx, ptr %39, i32 0, i32 3, !dbg !985
  %40 = load ptr, ptr %tp25, align 8, !dbg !985
  %tobool26 = icmp ne ptr %40, null, !dbg !982
  br i1 %tobool26, label %if.then27, label %if.end29, !dbg !986

if.then27:                                        ; preds = %if.then24
  %41 = load ptr, ptr %ctx.addr, align 8, !dbg !987
  %tp28 = getelementptr inbounds %struct.karatsuba_ctx, ptr %41, i32 0, i32 3, !dbg !988
  %42 = load ptr, ptr %tp28, align 8, !dbg !988
  call void @mpi_free_limb_space(ptr noundef %42) #15, !dbg !989
  br label %if.end29, !dbg !989

if.end29:                                         ; preds = %if.then27, %if.then24
  %43 = load i32, ptr %vsize.addr, align 4, !dbg !990
  %mul30 = mul i32 2, %43, !dbg !991
  %call31 = call ptr @mpi_alloc_limb_space(i32 noundef %mul30) #15, !dbg !992
  %44 = load ptr, ptr %ctx.addr, align 8, !dbg !993
  %tp32 = getelementptr inbounds %struct.karatsuba_ctx, ptr %44, i32 0, i32 3, !dbg !994
  store ptr %call31, ptr %tp32, align 8, !dbg !995
  %45 = load ptr, ptr %ctx.addr, align 8, !dbg !996
  %tp33 = getelementptr inbounds %struct.karatsuba_ctx, ptr %45, i32 0, i32 3, !dbg !998
  %46 = load ptr, ptr %tp33, align 8, !dbg !998
  %tobool34 = icmp ne ptr %46, null, !dbg !996
  br i1 %tobool34, label %if.end42, label %if.then35, !dbg !999

if.then35:                                        ; preds = %if.end29
  %47 = load ptr, ptr %ctx.addr, align 8, !dbg !1000
  %tspace36 = getelementptr inbounds %struct.karatsuba_ctx, ptr %47, i32 0, i32 1, !dbg !1003
  %48 = load ptr, ptr %tspace36, align 8, !dbg !1003
  %tobool37 = icmp ne ptr %48, null, !dbg !1000
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !1004

if.then38:                                        ; preds = %if.then35
  %49 = load ptr, ptr %ctx.addr, align 8, !dbg !1005
  %tspace39 = getelementptr inbounds %struct.karatsuba_ctx, ptr %49, i32 0, i32 1, !dbg !1006
  %50 = load ptr, ptr %tspace39, align 8, !dbg !1006
  call void @mpi_free_limb_space(ptr noundef %50) #15, !dbg !1007
  br label %if.end40, !dbg !1007

if.end40:                                         ; preds = %if.then38, %if.then35
  %51 = load ptr, ptr %ctx.addr, align 8, !dbg !1008
  %tspace41 = getelementptr inbounds %struct.karatsuba_ctx, ptr %51, i32 0, i32 1, !dbg !1009
  store ptr null, ptr %tspace41, align 8, !dbg !1010
  store i32 -12, ptr %retval, align 4, !dbg !1011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109, !dbg !1011

if.end42:                                         ; preds = %if.end29
  %52 = load i32, ptr %vsize.addr, align 4, !dbg !1012
  %53 = load ptr, ptr %ctx.addr, align 8, !dbg !1013
  %tp_size43 = getelementptr inbounds %struct.karatsuba_ctx, ptr %53, i32 0, i32 4, !dbg !1014
  store i32 %52, ptr %tp_size43, align 8, !dbg !1015
  br label %if.end44, !dbg !1016

if.end44:                                         ; preds = %if.end42, %lor.lhs.false22
  br label %do.body45, !dbg !1017

do.body45:                                        ; preds = %do.cond70, %if.end44
  br label %do.body46, !dbg !1018

do.body46:                                        ; preds = %do.body45
  %54 = load i32, ptr %vsize.addr, align 4, !dbg !1020
  %cmp47 = icmp slt i32 %54, 16, !dbg !1020
  br i1 %cmp47, label %if.then48, label %if.else51, !dbg !1023

if.then48:                                        ; preds = %do.body46
  %55 = load ptr, ptr %ctx.addr, align 8, !dbg !1020
  %tp49 = getelementptr inbounds %struct.karatsuba_ctx, ptr %55, i32 0, i32 3, !dbg !1020
  %56 = load ptr, ptr %tp49, align 8, !dbg !1020
  %57 = load ptr, ptr %up.addr, align 8, !dbg !1020
  %58 = load ptr, ptr %vp.addr, align 8, !dbg !1020
  %59 = load i32, ptr %vsize.addr, align 4, !dbg !1020
  %call50 = call i64 @mul_n_basecase(ptr noundef %56, ptr noundef %57, ptr noundef %58, i32 noundef %59) #15, !dbg !1020
  br label %if.end54, !dbg !1020

if.else51:                                        ; preds = %do.body46
  %60 = load ptr, ptr %ctx.addr, align 8, !dbg !1020
  %tp52 = getelementptr inbounds %struct.karatsuba_ctx, ptr %60, i32 0, i32 3, !dbg !1020
  %61 = load ptr, ptr %tp52, align 8, !dbg !1020
  %62 = load ptr, ptr %up.addr, align 8, !dbg !1020
  %63 = load ptr, ptr %vp.addr, align 8, !dbg !1020
  %64 = load i32, ptr %vsize.addr, align 4, !dbg !1020
  %65 = load ptr, ptr %ctx.addr, align 8, !dbg !1020
  %tspace53 = getelementptr inbounds %struct.karatsuba_ctx, ptr %65, i32 0, i32 1, !dbg !1020
  %66 = load ptr, ptr %tspace53, align 8, !dbg !1020
  call void @mul_n(ptr noundef %61, ptr noundef %62, ptr noundef %63, i32 noundef %64, ptr noundef %66) #15, !dbg !1020
  br label %if.end54

if.end54:                                         ; preds = %if.else51, %if.then48
  br label %do.cond55, !dbg !1023

do.cond55:                                        ; preds = %if.end54
  br label %do.end56, !dbg !1023

do.end56:                                         ; preds = %do.cond55
  %67 = load ptr, ptr %prodp.addr, align 8, !dbg !1024
  %68 = load ptr, ptr %prodp.addr, align 8, !dbg !1025
  %69 = load ptr, ptr %ctx.addr, align 8, !dbg !1026
  %tp57 = getelementptr inbounds %struct.karatsuba_ctx, ptr %69, i32 0, i32 3, !dbg !1027
  %70 = load ptr, ptr %tp57, align 8, !dbg !1027
  %71 = load i32, ptr %vsize.addr, align 4, !dbg !1028
  %call58 = call i64 @mpihelp_add_n(ptr noundef %67, ptr noundef %68, ptr noundef %70, i32 noundef %71) #15, !dbg !1029
  store i64 %call58, ptr %cy, align 8, !dbg !1030
  %72 = load ptr, ptr %prodp.addr, align 8, !dbg !1031
  %73 = load i32, ptr %vsize.addr, align 4, !dbg !1032
  %idx.ext59 = sext i32 %73 to i64, !dbg !1033
  %add.ptr60 = getelementptr i64, ptr %72, i64 %idx.ext59, !dbg !1033
  %74 = load ptr, ptr %ctx.addr, align 8, !dbg !1034
  %tp61 = getelementptr inbounds %struct.karatsuba_ctx, ptr %74, i32 0, i32 3, !dbg !1035
  %75 = load ptr, ptr %tp61, align 8, !dbg !1035
  %76 = load i32, ptr %vsize.addr, align 4, !dbg !1036
  %idx.ext62 = sext i32 %76 to i64, !dbg !1037
  %add.ptr63 = getelementptr i64, ptr %75, i64 %idx.ext62, !dbg !1037
  %77 = load i32, ptr %vsize.addr, align 4, !dbg !1038
  %78 = load i64, ptr %cy, align 8, !dbg !1039
  %call64 = call i64 @mpihelp_add_1(ptr noundef %add.ptr60, ptr noundef %add.ptr63, i32 noundef %77, i64 noundef %78) #15, !dbg !1040
  %79 = load i32, ptr %vsize.addr, align 4, !dbg !1041
  %80 = load ptr, ptr %prodp.addr, align 8, !dbg !1042
  %idx.ext65 = sext i32 %79 to i64, !dbg !1042
  %add.ptr66 = getelementptr i64, ptr %80, i64 %idx.ext65, !dbg !1042
  store ptr %add.ptr66, ptr %prodp.addr, align 8, !dbg !1042
  %81 = load i32, ptr %vsize.addr, align 4, !dbg !1043
  %82 = load ptr, ptr %up.addr, align 8, !dbg !1044
  %idx.ext67 = sext i32 %81 to i64, !dbg !1044
  %add.ptr68 = getelementptr i64, ptr %82, i64 %idx.ext67, !dbg !1044
  store ptr %add.ptr68, ptr %up.addr, align 8, !dbg !1044
  %83 = load i32, ptr %vsize.addr, align 4, !dbg !1045
  %84 = load i32, ptr %usize.addr, align 4, !dbg !1046
  %sub69 = sub i32 %84, %83, !dbg !1046
  store i32 %sub69, ptr %usize.addr, align 4, !dbg !1046
  br label %do.cond70, !dbg !1047

do.cond70:                                        ; preds = %do.end56
  %85 = load i32, ptr %usize.addr, align 4, !dbg !1048
  %86 = load i32, ptr %vsize.addr, align 4, !dbg !1049
  %cmp71 = icmp sge i32 %85, %86, !dbg !1050
  br i1 %cmp71, label %do.body45, label %do.end72, !dbg !1047, !llvm.loop !1051

do.end72:                                         ; preds = %do.cond70
  br label %if.end73, !dbg !1053

if.end73:                                         ; preds = %do.end72, %do.end
  %87 = load i32, ptr %usize.addr, align 4, !dbg !1054
  %tobool74 = icmp ne i32 %87, 0, !dbg !1054
  br i1 %tobool74, label %if.then75, label %if.end108, !dbg !1055

if.then75:                                        ; preds = %if.end73
  %88 = load i32, ptr %usize.addr, align 4, !dbg !1056
  %cmp76 = icmp slt i32 %88, 16, !dbg !1057
  br i1 %cmp76, label %if.then77, label %if.else83, !dbg !1058

if.then77:                                        ; preds = %if.then75
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #14, !dbg !1059
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !910, metadata !DIExpression()), !dbg !1060
  %89 = load ptr, ptr %ctx.addr, align 8, !dbg !1061
  %tspace78 = getelementptr inbounds %struct.karatsuba_ctx, ptr %89, i32 0, i32 1, !dbg !1063
  %90 = load ptr, ptr %tspace78, align 8, !dbg !1063
  %91 = load ptr, ptr %vp.addr, align 8, !dbg !1064
  %92 = load i32, ptr %vsize.addr, align 4, !dbg !1065
  %93 = load ptr, ptr %up.addr, align 8, !dbg !1066
  %94 = load i32, ptr %usize.addr, align 4, !dbg !1067
  %call79 = call i32 @mpihelp_mul(ptr noundef %90, ptr noundef %91, i32 noundef %92, ptr noundef %93, i32 noundef %94, ptr noundef %tmp) #15, !dbg !1068
  %cmp80 = icmp slt i32 %call79, 0, !dbg !1069
  br i1 %cmp80, label %if.then81, label %if.end82, !dbg !1070

if.then81:                                        ; preds = %if.then77
  store i32 -12, ptr %retval, align 4, !dbg !1071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1071

if.end82:                                         ; preds = %if.then77
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1072
  br label %cleanup, !dbg !1072

cleanup:                                          ; preds = %if.end82, %if.then81
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #14, !dbg !1072
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup109 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end99, !dbg !1073

if.else83:                                        ; preds = %if.then75
  %95 = load ptr, ptr %ctx.addr, align 8, !dbg !1074
  %next = getelementptr inbounds %struct.karatsuba_ctx, ptr %95, i32 0, i32 0, !dbg !1077
  %96 = load ptr, ptr %next, align 8, !dbg !1077
  %tobool84 = icmp ne ptr %96, null, !dbg !1074
  br i1 %tobool84, label %if.end92, label %if.then85, !dbg !1078

if.then85:                                        ; preds = %if.else83
  %call86 = call noalias ptr @kzalloc(i64 noundef 40, i32 noundef 3264) #16, !dbg !1079
  %97 = load ptr, ptr %ctx.addr, align 8, !dbg !1081
  %next87 = getelementptr inbounds %struct.karatsuba_ctx, ptr %97, i32 0, i32 0, !dbg !1082
  store ptr %call86, ptr %next87, align 8, !dbg !1083
  %98 = load ptr, ptr %ctx.addr, align 8, !dbg !1084
  %next88 = getelementptr inbounds %struct.karatsuba_ctx, ptr %98, i32 0, i32 0, !dbg !1086
  %99 = load ptr, ptr %next88, align 8, !dbg !1086
  %tobool89 = icmp ne ptr %99, null, !dbg !1084
  br i1 %tobool89, label %if.end91, label %if.then90, !dbg !1087

if.then90:                                        ; preds = %if.then85
  store i32 -12, ptr %retval, align 4, !dbg !1088
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109, !dbg !1088

if.end91:                                         ; preds = %if.then85
  br label %if.end92, !dbg !1089

if.end92:                                         ; preds = %if.end91, %if.else83
  %100 = load ptr, ptr %ctx.addr, align 8, !dbg !1090
  %tspace93 = getelementptr inbounds %struct.karatsuba_ctx, ptr %100, i32 0, i32 1, !dbg !1092
  %101 = load ptr, ptr %tspace93, align 8, !dbg !1092
  %102 = load ptr, ptr %vp.addr, align 8, !dbg !1093
  %103 = load i32, ptr %vsize.addr, align 4, !dbg !1094
  %104 = load ptr, ptr %up.addr, align 8, !dbg !1095
  %105 = load i32, ptr %usize.addr, align 4, !dbg !1096
  %106 = load ptr, ptr %ctx.addr, align 8, !dbg !1097
  %next94 = getelementptr inbounds %struct.karatsuba_ctx, ptr %106, i32 0, i32 0, !dbg !1098
  %107 = load ptr, ptr %next94, align 8, !dbg !1098
  %call95 = call i32 @mpihelp_mul_karatsuba_case(ptr noundef %101, ptr noundef %102, i32 noundef %103, ptr noundef %104, i32 noundef %105, ptr noundef %107) #15, !dbg !1099
  %cmp96 = icmp slt i32 %call95, 0, !dbg !1100
  br i1 %cmp96, label %if.then97, label %if.end98, !dbg !1101

if.then97:                                        ; preds = %if.end92
  store i32 -12, ptr %retval, align 4, !dbg !1102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109, !dbg !1102

if.end98:                                         ; preds = %if.end92
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %cleanup.cont
  %108 = load ptr, ptr %prodp.addr, align 8, !dbg !1103
  %109 = load ptr, ptr %prodp.addr, align 8, !dbg !1104
  %110 = load ptr, ptr %ctx.addr, align 8, !dbg !1105
  %tspace100 = getelementptr inbounds %struct.karatsuba_ctx, ptr %110, i32 0, i32 1, !dbg !1106
  %111 = load ptr, ptr %tspace100, align 8, !dbg !1106
  %112 = load i32, ptr %vsize.addr, align 4, !dbg !1107
  %call101 = call i64 @mpihelp_add_n(ptr noundef %108, ptr noundef %109, ptr noundef %111, i32 noundef %112) #15, !dbg !1108
  store i64 %call101, ptr %cy, align 8, !dbg !1109
  %113 = load ptr, ptr %prodp.addr, align 8, !dbg !1110
  %114 = load i32, ptr %vsize.addr, align 4, !dbg !1111
  %idx.ext102 = sext i32 %114 to i64, !dbg !1112
  %add.ptr103 = getelementptr i64, ptr %113, i64 %idx.ext102, !dbg !1112
  %115 = load ptr, ptr %ctx.addr, align 8, !dbg !1113
  %tspace104 = getelementptr inbounds %struct.karatsuba_ctx, ptr %115, i32 0, i32 1, !dbg !1114
  %116 = load ptr, ptr %tspace104, align 8, !dbg !1114
  %117 = load i32, ptr %vsize.addr, align 4, !dbg !1115
  %idx.ext105 = sext i32 %117 to i64, !dbg !1116
  %add.ptr106 = getelementptr i64, ptr %116, i64 %idx.ext105, !dbg !1116
  %118 = load i32, ptr %usize.addr, align 4, !dbg !1117
  %119 = load i64, ptr %cy, align 8, !dbg !1118
  %call107 = call i64 @mpihelp_add_1(ptr noundef %add.ptr103, ptr noundef %add.ptr106, i32 noundef %118, i64 noundef %119) #15, !dbg !1119
  br label %if.end108, !dbg !1120

if.end108:                                        ; preds = %if.end99, %if.end73
  store i32 0, ptr %retval, align 4, !dbg !1121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup109, !dbg !1121

cleanup109:                                       ; preds = %if.end108, %if.then97, %if.then90, %cleanup, %if.end40, %if.then8
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #14, !dbg !1122
  %120 = load i32, ptr %retval, align 4, !dbg !1122
  ret i32 %120, !dbg !1122
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mpihelp_mul(ptr noundef %prodp, ptr noundef %up, i32 noundef %usize, ptr noundef %vp, i32 noundef %vsize, ptr noundef %_result) #0 align 16 !dbg !1123 {
entry:
  %retval = alloca i32, align 4
  %prodp.addr = alloca ptr, align 8
  %up.addr = alloca ptr, align 8
  %usize.addr = alloca i32, align 4
  %vp.addr = alloca ptr, align 8
  %vsize.addr = alloca i32, align 4
  %_result.addr = alloca ptr, align 8
  %prod_endp = alloca ptr, align 8
  %cy = alloca i64, align 8
  %ctx = alloca %struct.karatsuba_ctx, align 8
  %i = alloca i32, align 4
  %v_limb = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_i = alloca i32, align 4
  %_i14 = alloca i32, align 4
  store ptr %prodp, ptr %prodp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prodp.addr, metadata !1127, metadata !DIExpression()), !dbg !1147
  store ptr %up, ptr %up.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %up.addr, metadata !1128, metadata !DIExpression()), !dbg !1148
  store i32 %usize, ptr %usize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %usize.addr, metadata !1129, metadata !DIExpression()), !dbg !1149
  store ptr %vp, ptr %vp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vp.addr, metadata !1130, metadata !DIExpression()), !dbg !1150
  store i32 %vsize, ptr %vsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vsize.addr, metadata !1131, metadata !DIExpression()), !dbg !1151
  store ptr %_result, ptr %_result.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %_result.addr, metadata !1132, metadata !DIExpression()), !dbg !1152
  call void @llvm.lifetime.start.p0(i64 8, ptr %prod_endp) #14, !dbg !1153
  call void @llvm.dbg.declare(metadata ptr %prod_endp, metadata !1133, metadata !DIExpression()), !dbg !1154
  %0 = load ptr, ptr %prodp.addr, align 8, !dbg !1155
  %1 = load i32, ptr %usize.addr, align 4, !dbg !1156
  %idx.ext = sext i32 %1 to i64, !dbg !1157
  %add.ptr = getelementptr i64, ptr %0, i64 %idx.ext, !dbg !1157
  %2 = load i32, ptr %vsize.addr, align 4, !dbg !1158
  %idx.ext1 = sext i32 %2 to i64, !dbg !1159
  %add.ptr2 = getelementptr i64, ptr %add.ptr, i64 %idx.ext1, !dbg !1159
  %add.ptr3 = getelementptr i64, ptr %add.ptr2, i64 -1, !dbg !1160
  store ptr %add.ptr3, ptr %prod_endp, align 8, !dbg !1154
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #14, !dbg !1161
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !1134, metadata !DIExpression()), !dbg !1162
  call void @llvm.lifetime.start.p0(i64 40, ptr %ctx) #14, !dbg !1163
  call void @llvm.dbg.declare(metadata ptr %ctx, metadata !1135, metadata !DIExpression()), !dbg !1164
  %3 = load i32, ptr %vsize.addr, align 4, !dbg !1165
  %cmp = icmp slt i32 %3, 16, !dbg !1166
  br i1 %cmp, label %if.then, label %if.end51, !dbg !1167

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !1168
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1136, metadata !DIExpression()), !dbg !1169
  call void @llvm.lifetime.start.p0(i64 8, ptr %v_limb) #14, !dbg !1170
  call void @llvm.dbg.declare(metadata ptr %v_limb, metadata !1139, metadata !DIExpression()), !dbg !1171
  %4 = load i32, ptr %vsize.addr, align 4, !dbg !1172
  %tobool = icmp ne i32 %4, 0, !dbg !1172
  br i1 %tobool, label %if.end, label %if.then4, !dbg !1174

if.then4:                                         ; preds = %if.then
  %5 = load ptr, ptr %_result.addr, align 8, !dbg !1175
  store i64 0, ptr %5, align 8, !dbg !1177
  store i32 0, ptr %retval, align 4, !dbg !1178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1178

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %vp.addr, align 8, !dbg !1179
  %arrayidx = getelementptr i64, ptr %6, i64 0, !dbg !1179
  %7 = load i64, ptr %arrayidx, align 8, !dbg !1179
  store i64 %7, ptr %v_limb, align 8, !dbg !1180
  %8 = load i64, ptr %v_limb, align 8, !dbg !1181
  %cmp5 = icmp ule i64 %8, 1, !dbg !1182
  br i1 %cmp5, label %if.then6, label %if.else26, !dbg !1183

if.then6:                                         ; preds = %if.end
  %9 = load i64, ptr %v_limb, align 8, !dbg !1184
  %cmp7 = icmp eq i64 %9, 1, !dbg !1185
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !1186

if.then8:                                         ; preds = %if.then6
  br label %do.body, !dbg !1187

do.body:                                          ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #14, !dbg !1188
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !1140, metadata !DIExpression()), !dbg !1188
  store i32 0, ptr %_i, align 4, !dbg !1189
  br label %for.cond, !dbg !1189

for.cond:                                         ; preds = %for.inc, %do.body
  %10 = load i32, ptr %_i, align 4, !dbg !1191
  %11 = load i32, ptr %usize.addr, align 4, !dbg !1191
  %cmp9 = icmp slt i32 %10, %11, !dbg !1191
  br i1 %cmp9, label %for.body, label %for.end, !dbg !1189

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %up.addr, align 8, !dbg !1191
  %13 = load i32, ptr %_i, align 4, !dbg !1191
  %idxprom = sext i32 %13 to i64, !dbg !1191
  %arrayidx10 = getelementptr i64, ptr %12, i64 %idxprom, !dbg !1191
  %14 = load i64, ptr %arrayidx10, align 8, !dbg !1191
  %15 = load ptr, ptr %prodp.addr, align 8, !dbg !1191
  %16 = load i32, ptr %_i, align 4, !dbg !1191
  %idxprom11 = sext i32 %16 to i64, !dbg !1191
  %arrayidx12 = getelementptr i64, ptr %15, i64 %idxprom11, !dbg !1191
  store i64 %14, ptr %arrayidx12, align 8, !dbg !1191
  br label %for.inc, !dbg !1191

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %_i, align 4, !dbg !1191
  %inc = add i32 %17, 1, !dbg !1191
  store i32 %inc, ptr %_i, align 4, !dbg !1191
  br label %for.cond, !dbg !1191, !llvm.loop !1193

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #14, !dbg !1187
  br label %do.cond, !dbg !1188

do.cond:                                          ; preds = %for.end
  br label %do.end, !dbg !1188

do.end:                                           ; preds = %do.cond
  br label %if.end25, !dbg !1188

if.else:                                          ; preds = %if.then6
  br label %do.body13, !dbg !1194

do.body13:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i14) #14, !dbg !1195
  call void @llvm.dbg.declare(metadata ptr %_i14, metadata !1145, metadata !DIExpression()), !dbg !1195
  store i32 0, ptr %_i14, align 4, !dbg !1196
  br label %for.cond15, !dbg !1196

for.cond15:                                       ; preds = %for.inc20, %do.body13
  %18 = load i32, ptr %_i14, align 4, !dbg !1198
  %19 = load i32, ptr %usize.addr, align 4, !dbg !1198
  %cmp16 = icmp slt i32 %18, %19, !dbg !1198
  br i1 %cmp16, label %for.body17, label %for.end22, !dbg !1196

for.body17:                                       ; preds = %for.cond15
  %20 = load ptr, ptr %prodp.addr, align 8, !dbg !1198
  %21 = load i32, ptr %_i14, align 4, !dbg !1198
  %idxprom18 = sext i32 %21 to i64, !dbg !1198
  %arrayidx19 = getelementptr i64, ptr %20, i64 %idxprom18, !dbg !1198
  store i64 0, ptr %arrayidx19, align 8, !dbg !1198
  br label %for.inc20, !dbg !1198

for.inc20:                                        ; preds = %for.body17
  %22 = load i32, ptr %_i14, align 4, !dbg !1198
  %inc21 = add i32 %22, 1, !dbg !1198
  store i32 %inc21, ptr %_i14, align 4, !dbg !1198
  br label %for.cond15, !dbg !1198, !llvm.loop !1200

for.end22:                                        ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i14) #14, !dbg !1194
  br label %do.cond23, !dbg !1195

do.cond23:                                        ; preds = %for.end22
  br label %do.end24, !dbg !1195

do.end24:                                         ; preds = %do.cond23
  br label %if.end25

if.end25:                                         ; preds = %do.end24, %do.end
  store i64 0, ptr %cy, align 8, !dbg !1201
  br label %if.end27, !dbg !1202

if.else26:                                        ; preds = %if.end
  %23 = load ptr, ptr %prodp.addr, align 8, !dbg !1203
  %24 = load ptr, ptr %up.addr, align 8, !dbg !1204
  %25 = load i32, ptr %usize.addr, align 4, !dbg !1205
  %26 = load i64, ptr %v_limb, align 8, !dbg !1206
  %call = call i64 @mpihelp_mul_1(ptr noundef %23, ptr noundef %24, i32 noundef %25, i64 noundef %26) #15, !dbg !1207
  store i64 %call, ptr %cy, align 8, !dbg !1208
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.end25
  %27 = load i64, ptr %cy, align 8, !dbg !1209
  %28 = load ptr, ptr %prodp.addr, align 8, !dbg !1210
  %29 = load i32, ptr %usize.addr, align 4, !dbg !1211
  %idxprom28 = sext i32 %29 to i64, !dbg !1210
  %arrayidx29 = getelementptr i64, ptr %28, i64 %idxprom28, !dbg !1210
  store i64 %27, ptr %arrayidx29, align 8, !dbg !1212
  %30 = load ptr, ptr %prodp.addr, align 8, !dbg !1213
  %incdec.ptr = getelementptr i64, ptr %30, i32 1, !dbg !1213
  store ptr %incdec.ptr, ptr %prodp.addr, align 8, !dbg !1213
  store i32 1, ptr %i, align 4, !dbg !1214
  br label %for.cond30, !dbg !1216

for.cond30:                                       ; preds = %for.inc47, %if.end27
  %31 = load i32, ptr %i, align 4, !dbg !1217
  %32 = load i32, ptr %vsize.addr, align 4, !dbg !1219
  %cmp31 = icmp slt i32 %31, %32, !dbg !1220
  br i1 %cmp31, label %for.body32, label %for.end49, !dbg !1221

for.body32:                                       ; preds = %for.cond30
  %33 = load ptr, ptr %vp.addr, align 8, !dbg !1222
  %34 = load i32, ptr %i, align 4, !dbg !1224
  %idxprom33 = sext i32 %34 to i64, !dbg !1222
  %arrayidx34 = getelementptr i64, ptr %33, i64 %idxprom33, !dbg !1222
  %35 = load i64, ptr %arrayidx34, align 8, !dbg !1222
  store i64 %35, ptr %v_limb, align 8, !dbg !1225
  %36 = load i64, ptr %v_limb, align 8, !dbg !1226
  %cmp35 = icmp ule i64 %36, 1, !dbg !1228
  br i1 %cmp35, label %if.then36, label %if.else41, !dbg !1229

if.then36:                                        ; preds = %for.body32
  store i64 0, ptr %cy, align 8, !dbg !1230
  %37 = load i64, ptr %v_limb, align 8, !dbg !1232
  %cmp37 = icmp eq i64 %37, 1, !dbg !1234
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !1235

if.then38:                                        ; preds = %if.then36
  %38 = load ptr, ptr %prodp.addr, align 8, !dbg !1236
  %39 = load ptr, ptr %prodp.addr, align 8, !dbg !1237
  %40 = load ptr, ptr %up.addr, align 8, !dbg !1238
  %41 = load i32, ptr %usize.addr, align 4, !dbg !1239
  %call39 = call i64 @mpihelp_add_n(ptr noundef %38, ptr noundef %39, ptr noundef %40, i32 noundef %41) #15, !dbg !1240
  store i64 %call39, ptr %cy, align 8, !dbg !1241
  br label %if.end40, !dbg !1242

if.end40:                                         ; preds = %if.then38, %if.then36
  br label %if.end43, !dbg !1243

if.else41:                                        ; preds = %for.body32
  %42 = load ptr, ptr %prodp.addr, align 8, !dbg !1244
  %43 = load ptr, ptr %up.addr, align 8, !dbg !1245
  %44 = load i32, ptr %usize.addr, align 4, !dbg !1246
  %45 = load i64, ptr %v_limb, align 8, !dbg !1247
  %call42 = call i64 @mpihelp_addmul_1(ptr noundef %42, ptr noundef %43, i32 noundef %44, i64 noundef %45) #15, !dbg !1248
  store i64 %call42, ptr %cy, align 8, !dbg !1249
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.end40
  %46 = load i64, ptr %cy, align 8, !dbg !1250
  %47 = load ptr, ptr %prodp.addr, align 8, !dbg !1251
  %48 = load i32, ptr %usize.addr, align 4, !dbg !1252
  %idxprom44 = sext i32 %48 to i64, !dbg !1251
  %arrayidx45 = getelementptr i64, ptr %47, i64 %idxprom44, !dbg !1251
  store i64 %46, ptr %arrayidx45, align 8, !dbg !1253
  %49 = load ptr, ptr %prodp.addr, align 8, !dbg !1254
  %incdec.ptr46 = getelementptr i64, ptr %49, i32 1, !dbg !1254
  store ptr %incdec.ptr46, ptr %prodp.addr, align 8, !dbg !1254
  br label %for.inc47, !dbg !1255

for.inc47:                                        ; preds = %if.end43
  %50 = load i32, ptr %i, align 4, !dbg !1256
  %inc48 = add i32 %50, 1, !dbg !1256
  store i32 %inc48, ptr %i, align 4, !dbg !1256
  br label %for.cond30, !dbg !1257, !llvm.loop !1258

for.end49:                                        ; preds = %for.cond30
  %51 = load i64, ptr %cy, align 8, !dbg !1260
  %52 = load ptr, ptr %_result.addr, align 8, !dbg !1261
  store i64 %51, ptr %52, align 8, !dbg !1262
  store i32 0, ptr %retval, align 4, !dbg !1263
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1263

cleanup:                                          ; preds = %for.end49, %if.then4
  call void @llvm.lifetime.end.p0(i64 8, ptr %v_limb) #14, !dbg !1264
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !1264
  br label %cleanup56

if.end51:                                         ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %ctx, i8 0, i64 40, i1 false), !dbg !1265
  %53 = load ptr, ptr %prodp.addr, align 8, !dbg !1266
  %54 = load ptr, ptr %up.addr, align 8, !dbg !1268
  %55 = load i32, ptr %usize.addr, align 4, !dbg !1269
  %56 = load ptr, ptr %vp.addr, align 8, !dbg !1270
  %57 = load i32, ptr %vsize.addr, align 4, !dbg !1271
  %call52 = call i32 @mpihelp_mul_karatsuba_case(ptr noundef %53, ptr noundef %54, i32 noundef %55, ptr noundef %56, i32 noundef %57, ptr noundef %ctx) #15, !dbg !1272
  %cmp53 = icmp slt i32 %call52, 0, !dbg !1273
  br i1 %cmp53, label %if.then54, label %if.end55, !dbg !1274

if.then54:                                        ; preds = %if.end51
  store i32 -12, ptr %retval, align 4, !dbg !1275
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !1275

if.end55:                                         ; preds = %if.end51
  call void @mpihelp_release_karatsuba_ctx(ptr noundef %ctx) #15, !dbg !1276
  %58 = load ptr, ptr %prod_endp, align 8, !dbg !1277
  %59 = load i64, ptr %58, align 8, !dbg !1278
  %60 = load ptr, ptr %_result.addr, align 8, !dbg !1279
  store i64 %59, ptr %60, align 8, !dbg !1280
  store i32 0, ptr %retval, align 4, !dbg !1281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !1281

cleanup56:                                        ; preds = %if.end55, %if.then54, %cleanup
  call void @llvm.lifetime.end.p0(i64 40, ptr %ctx) #14, !dbg !1282
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #14, !dbg !1282
  call void @llvm.lifetime.end.p0(i64 8, ptr %prod_endp) #14, !dbg !1282
  %61 = load i32, ptr %retval, align 4, !dbg !1282
  ret i32 %61, !dbg !1282
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !1283 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1292, metadata !DIExpression()), !dbg !1294
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1293, metadata !DIExpression()), !dbg !1295
  %0 = load i64, ptr %size.addr, align 8, !dbg !1296
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1297
  %or = or i32 %1, 256, !dbg !1298
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !1299
  ret ptr %call, !dbg !1300
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpihelp_release_karatsuba_ctx(ptr noundef %ctx) #0 align 16 !dbg !1301 {
entry:
  %ctx.addr = alloca ptr, align 8
  %ctx2 = alloca ptr, align 8
  store ptr %ctx, ptr %ctx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctx.addr, metadata !1305, metadata !DIExpression()), !dbg !1307
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctx2) #14, !dbg !1308
  call void @llvm.dbg.declare(metadata ptr %ctx2, metadata !1306, metadata !DIExpression()), !dbg !1309
  %0 = load ptr, ptr %ctx.addr, align 8, !dbg !1310
  %tp = getelementptr inbounds %struct.karatsuba_ctx, ptr %0, i32 0, i32 3, !dbg !1312
  %1 = load ptr, ptr %tp, align 8, !dbg !1312
  %tobool = icmp ne ptr %1, null, !dbg !1310
  br i1 %tobool, label %if.then, label %if.end, !dbg !1313

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ctx.addr, align 8, !dbg !1314
  %tp1 = getelementptr inbounds %struct.karatsuba_ctx, ptr %2, i32 0, i32 3, !dbg !1315
  %3 = load ptr, ptr %tp1, align 8, !dbg !1315
  call void @mpi_free_limb_space(ptr noundef %3) #15, !dbg !1316
  br label %if.end, !dbg !1316

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %ctx.addr, align 8, !dbg !1317
  %tspace = getelementptr inbounds %struct.karatsuba_ctx, ptr %4, i32 0, i32 1, !dbg !1319
  %5 = load ptr, ptr %tspace, align 8, !dbg !1319
  %tobool2 = icmp ne ptr %5, null, !dbg !1317
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !1320

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %ctx.addr, align 8, !dbg !1321
  %tspace4 = getelementptr inbounds %struct.karatsuba_ctx, ptr %6, i32 0, i32 1, !dbg !1322
  %7 = load ptr, ptr %tspace4, align 8, !dbg !1322
  call void @mpi_free_limb_space(ptr noundef %7) #15, !dbg !1323
  br label %if.end5, !dbg !1323

if.end5:                                          ; preds = %if.then3, %if.end
  %8 = load ptr, ptr %ctx.addr, align 8, !dbg !1324
  %next = getelementptr inbounds %struct.karatsuba_ctx, ptr %8, i32 0, i32 0, !dbg !1326
  %9 = load ptr, ptr %next, align 8, !dbg !1326
  store ptr %9, ptr %ctx.addr, align 8, !dbg !1327
  br label %for.cond, !dbg !1328

for.cond:                                         ; preds = %for.inc, %if.end5
  %10 = load ptr, ptr %ctx.addr, align 8, !dbg !1329
  %tobool6 = icmp ne ptr %10, null, !dbg !1331
  br i1 %tobool6, label %for.body, label %for.end, !dbg !1331

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %ctx.addr, align 8, !dbg !1332
  %next7 = getelementptr inbounds %struct.karatsuba_ctx, ptr %11, i32 0, i32 0, !dbg !1334
  %12 = load ptr, ptr %next7, align 8, !dbg !1334
  store ptr %12, ptr %ctx2, align 8, !dbg !1335
  %13 = load ptr, ptr %ctx.addr, align 8, !dbg !1336
  %tp8 = getelementptr inbounds %struct.karatsuba_ctx, ptr %13, i32 0, i32 3, !dbg !1338
  %14 = load ptr, ptr %tp8, align 8, !dbg !1338
  %tobool9 = icmp ne ptr %14, null, !dbg !1336
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !1339

if.then10:                                        ; preds = %for.body
  %15 = load ptr, ptr %ctx.addr, align 8, !dbg !1340
  %tp11 = getelementptr inbounds %struct.karatsuba_ctx, ptr %15, i32 0, i32 3, !dbg !1341
  %16 = load ptr, ptr %tp11, align 8, !dbg !1341
  call void @mpi_free_limb_space(ptr noundef %16) #15, !dbg !1342
  br label %if.end12, !dbg !1342

if.end12:                                         ; preds = %if.then10, %for.body
  %17 = load ptr, ptr %ctx.addr, align 8, !dbg !1343
  %tspace13 = getelementptr inbounds %struct.karatsuba_ctx, ptr %17, i32 0, i32 1, !dbg !1345
  %18 = load ptr, ptr %tspace13, align 8, !dbg !1345
  %tobool14 = icmp ne ptr %18, null, !dbg !1343
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !1346

if.then15:                                        ; preds = %if.end12
  %19 = load ptr, ptr %ctx.addr, align 8, !dbg !1347
  %tspace16 = getelementptr inbounds %struct.karatsuba_ctx, ptr %19, i32 0, i32 1, !dbg !1348
  %20 = load ptr, ptr %tspace16, align 8, !dbg !1348
  call void @mpi_free_limb_space(ptr noundef %20) #15, !dbg !1349
  br label %if.end17, !dbg !1349

if.end17:                                         ; preds = %if.then15, %if.end12
  %21 = load ptr, ptr %ctx.addr, align 8, !dbg !1350
  call void @kfree(ptr noundef %21) #15, !dbg !1351
  br label %for.inc, !dbg !1352

for.inc:                                          ; preds = %if.end17
  %22 = load ptr, ptr %ctx2, align 8, !dbg !1353
  store ptr %22, ptr %ctx.addr, align 8, !dbg !1354
  br label %for.cond, !dbg !1355, !llvm.loop !1356

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctx2) #14, !dbg !1358
  ret void, !dbg !1358
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1359 dso_local void @kfree(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1364 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1366, metadata !DIExpression()), !dbg !1371
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1367, metadata !DIExpression()), !dbg !1372
  %0 = load i64, ptr %size.addr, align 8, !dbg !1373
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1374
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1375

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1376
  %tobool = icmp ne i64 %2, 0, !dbg !1376
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1377

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !1378
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1368, metadata !DIExpression()), !dbg !1379
  %3 = load i64, ptr %size.addr, align 8, !dbg !1380
  %cmp = icmp ugt i64 %3, 8192, !dbg !1382
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1383

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1384
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1385
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !1386
  store ptr %call, ptr %retval, align 8, !dbg !1387
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1387

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1388
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !1388
  store i32 %call2, ptr %index, align 4, !dbg !1389
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1390
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1391
  %9 = ptrtoint ptr %8 to i64, !dbg !1391
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !1392
  %idxprom = zext i32 %call3 to i64, !dbg !1393
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1393
  %10 = load i32, ptr %index, align 4, !dbg !1394
  %idxprom4 = zext i32 %10 to i64, !dbg !1393
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1393
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1393
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1395
  %13 = load i64, ptr %size.addr, align 8, !dbg !1396
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !1397
  store ptr %call6, ptr %retval, align 8, !dbg !1398
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1398

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !1399
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1400
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1401
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !1402
  store ptr %call8, ptr %retval, align 8, !dbg !1403
  br label %return, !dbg !1403

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1404
  ret ptr %16, !dbg !1404
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1405 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !1406 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1412, metadata !DIExpression()), !dbg !1414
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1413, metadata !DIExpression()), !dbg !1415
  %0 = load i64, ptr %size.addr, align 8, !dbg !1416
  %tobool = icmp ne i64 %0, 0, !dbg !1416
  br i1 %tobool, label %if.end, label %if.then, !dbg !1418

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1419
  br label %return, !dbg !1419

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1420
  %cmp = icmp ule i64 %1, 8, !dbg !1422
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1423

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1424
  br label %return, !dbg !1424

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1425
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1427
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1428

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1429
  %cmp4 = icmp ule i64 %3, 96, !dbg !1430
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1431

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1432
  br label %return, !dbg !1432

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1433
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1435
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1436

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1437
  %cmp9 = icmp ule i64 %5, 192, !dbg !1438
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1439

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1440
  br label %return, !dbg !1440

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1441
  %cmp12 = icmp ule i64 %6, 8, !dbg !1443
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1444

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1445
  br label %return, !dbg !1445

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1446
  %cmp15 = icmp ule i64 %7, 16, !dbg !1448
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1449

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1450
  br label %return, !dbg !1450

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1451
  %cmp18 = icmp ule i64 %8, 32, !dbg !1453
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1454

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1455
  br label %return, !dbg !1455

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1456
  %cmp21 = icmp ule i64 %9, 64, !dbg !1458
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1459

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1460
  br label %return, !dbg !1460

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1461
  %cmp24 = icmp ule i64 %10, 128, !dbg !1463
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1464

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1465
  br label %return, !dbg !1465

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1466
  %cmp27 = icmp ule i64 %11, 256, !dbg !1468
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1469

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1470
  br label %return, !dbg !1470

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1471
  %cmp30 = icmp ule i64 %12, 512, !dbg !1473
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1474

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1475
  br label %return, !dbg !1475

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1476
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1478
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1479

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1480
  br label %return, !dbg !1480

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1481
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1483
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1484

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1485
  br label %return, !dbg !1485

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1486
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1488
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1489

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1490
  br label %return, !dbg !1490

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1491
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1493
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1494

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1495
  br label %return, !dbg !1495

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1496
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1498
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1499

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1500
  br label %return, !dbg !1500

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1501
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1503
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1504

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1505
  br label %return, !dbg !1505

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1506
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1508
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1509

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1510
  br label %return, !dbg !1510

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1511
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1513
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1514

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1515
  br label %return, !dbg !1515

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1516
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1518
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1519

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1520
  br label %return, !dbg !1520

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1521
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1523
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1524

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1525
  br label %return, !dbg !1525

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1526
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1528
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1529

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1530
  br label %return, !dbg !1530

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1531
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1533
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1534

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1535
  br label %return, !dbg !1535

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1536, !range !1538, !noundef !1539
  %tobool69 = trunc i8 %25 to i1, !dbg !1536
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1540

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1541

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #18, !dbg !1542, !srcloc !1545
  unreachable, !dbg !1542

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1546

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1547

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1548

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1550

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1548

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #14, !dbg !1552, !srcloc !1554
  br label %do.end75, !dbg !1552

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1548

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1555
  br label %return, !dbg !1555

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1556
  ret i32 %26, !dbg !1556
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1557 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !1563 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1567, metadata !DIExpression()), !dbg !1569
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1568, metadata !DIExpression()), !dbg !1570
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1571
  %and = and i32 %0, 17, !dbg !1571
  %cmp = icmp eq i32 %and, 0, !dbg !1571
  %lnot = xor i1 %cmp, true, !dbg !1571
  %lnot1 = xor i1 %lnot, true, !dbg !1571
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1571
  %conv = sext i32 %lnot.ext to i64, !dbg !1571
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1571
  %tobool = icmp ne i64 %expval, 0, !dbg !1571
  br i1 %tobool, label %if.then, label %if.end, !dbg !1573

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1574
  br label %return, !dbg !1574

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1575
  %and2 = and i32 %1, 1, !dbg !1577
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1577
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1578

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1579
  br label %return, !dbg !1579

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1580
  br label %return, !dbg !1580

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1582
  ret i32 %2, !dbg !1582
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1583 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1584 dso_local void @__compiletime_assert_196() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.mpih-mul.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22mpih_mul\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/mpih-mul.ll lib/crypto/mpi/mpih-mul.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !25, globals: !29, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "lib/crypto/mpi/mpih-mul.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4a020f6d384af35d1f3f21f543dcde4")
!9 = !{!10, !16}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 10, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "false", value: 0)
!15 = !DIEnumerator(name: "true", value: 1)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !2, line: 364, baseType: !12, size: 32, elements: !17)
!17 = !{!18, !19, !20, !21, !22, !23, !24}
!18 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!19 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!20 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!21 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!22 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!23 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!24 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!25 = !{!26, !28}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !27, line: 154, baseType: !12)
!27 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !{!0}
!30 = !{i32 7, !"Dwarf Version", i32 5}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 8, !"cf-protection-branch", i32 1}
!34 = !{i32 4, !"function_return_thunk_extern", i32 1}
!35 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!36 = !{i32 1, !"Code Model", i32 2}
!37 = !{i32 1, !"override-stack-alignment", i32 8}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = distinct !DISubprogram(name: "mpih_sqr_n_basecase", scope: !8, file: !8, line: 207, type: !40, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !49)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !42, !47}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_ptr_t", file: !43, line: 52, baseType: !44)
!43 = !DIFile(filename: "lib/crypto/mpi/mpi-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cffaba334cfde932ee1944172d38d6ce")
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !46, line: 26, baseType: !28)
!46 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_size_t", file: !43, line: 53, baseType: !48)
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !61}
!50 = !DILocalVariable(name: "prodp", arg: 1, scope: !39, file: !8, line: 207, type: !42)
!51 = !DILocalVariable(name: "up", arg: 2, scope: !39, file: !8, line: 207, type: !42)
!52 = !DILocalVariable(name: "size", arg: 3, scope: !39, file: !8, line: 207, type: !47)
!53 = !DILocalVariable(name: "i", scope: !39, file: !8, line: 209, type: !47)
!54 = !DILocalVariable(name: "cy_limb", scope: !39, file: !8, line: 210, type: !45)
!55 = !DILocalVariable(name: "v_limb", scope: !39, file: !8, line: 211, type: !45)
!56 = !DILocalVariable(name: "_i", scope: !57, file: !8, line: 218, type: !47)
!57 = distinct !DILexicalBlock(scope: !58, file: !8, line: 218, column: 4)
!58 = distinct !DILexicalBlock(scope: !59, file: !8, line: 217, column: 7)
!59 = distinct !DILexicalBlock(scope: !60, file: !8, line: 216, column: 19)
!60 = distinct !DILexicalBlock(scope: !39, file: !8, line: 216, column: 6)
!61 = !DILocalVariable(name: "_i", scope: !62, file: !8, line: 220, type: !48)
!62 = distinct !DILexicalBlock(scope: !58, file: !8, line: 220, column: 4)
!63 = !DILocation(line: 207, column: 36, scope: !39)
!64 = !DILocation(line: 207, column: 53, scope: !39)
!65 = !DILocation(line: 207, column: 68, scope: !39)
!66 = !DILocation(line: 209, column: 2, scope: !39)
!67 = !DILocation(line: 209, column: 13, scope: !39)
!68 = !DILocation(line: 210, column: 2, scope: !39)
!69 = !DILocation(line: 210, column: 13, scope: !39)
!70 = !DILocation(line: 211, column: 2, scope: !39)
!71 = !DILocation(line: 211, column: 13, scope: !39)
!72 = !DILocation(line: 215, column: 11, scope: !39)
!73 = !DILocation(line: 215, column: 9, scope: !39)
!74 = !DILocation(line: 216, column: 6, scope: !60)
!75 = !DILocation(line: 216, column: 13, scope: !60)
!76 = !DILocation(line: 216, column: 6, scope: !39)
!77 = !DILocation(line: 217, column: 7, scope: !58)
!78 = !DILocation(line: 217, column: 14, scope: !58)
!79 = !DILocation(line: 217, column: 7, scope: !59)
!80 = !DILocation(line: 218, column: 4, scope: !58)
!81 = !DILocation(line: 218, column: 4, scope: !57)
!82 = !DILocation(line: 218, column: 4, scope: !83)
!83 = distinct !DILexicalBlock(scope: !57, file: !8, line: 218, column: 4)
!84 = !DILocation(line: 218, column: 4, scope: !85)
!85 = distinct !DILexicalBlock(scope: !83, file: !8, line: 218, column: 4)
!86 = distinct !{!86, !82, !82, !87, !88}
!87 = !{!"llvm.loop.mustprogress"}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = !DILocation(line: 220, column: 4, scope: !58)
!90 = !DILocation(line: 220, column: 4, scope: !62)
!91 = !DILocation(line: 220, column: 4, scope: !92)
!92 = distinct !DILexicalBlock(scope: !62, file: !8, line: 220, column: 4)
!93 = !DILocation(line: 220, column: 4, scope: !94)
!94 = distinct !DILexicalBlock(scope: !92, file: !8, line: 220, column: 4)
!95 = distinct !{!95, !91, !91, !87, !88}
!96 = !DILocation(line: 221, column: 11, scope: !59)
!97 = !DILocation(line: 222, column: 2, scope: !59)
!98 = !DILocation(line: 223, column: 27, scope: !60)
!99 = !DILocation(line: 223, column: 34, scope: !60)
!100 = !DILocation(line: 223, column: 38, scope: !60)
!101 = !DILocation(line: 223, column: 44, scope: !60)
!102 = !DILocation(line: 223, column: 13, scope: !60)
!103 = !DILocation(line: 223, column: 11, scope: !60)
!104 = !DILocation(line: 225, column: 16, scope: !39)
!105 = !DILocation(line: 225, column: 2, scope: !39)
!106 = !DILocation(line: 225, column: 8, scope: !39)
!107 = !DILocation(line: 225, column: 14, scope: !39)
!108 = !DILocation(line: 226, column: 7, scope: !39)
!109 = !DILocation(line: 230, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !39, file: !8, line: 230, column: 2)
!111 = !DILocation(line: 230, column: 7, scope: !110)
!112 = !DILocation(line: 230, column: 14, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !8, line: 230, column: 2)
!114 = !DILocation(line: 230, column: 18, scope: !113)
!115 = !DILocation(line: 230, column: 16, scope: !113)
!116 = !DILocation(line: 230, column: 2, scope: !110)
!117 = !DILocation(line: 231, column: 12, scope: !118)
!118 = distinct !DILexicalBlock(scope: !113, file: !8, line: 230, column: 29)
!119 = !DILocation(line: 231, column: 15, scope: !118)
!120 = !DILocation(line: 231, column: 10, scope: !118)
!121 = !DILocation(line: 232, column: 7, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !8, line: 232, column: 7)
!123 = !DILocation(line: 232, column: 14, scope: !122)
!124 = !DILocation(line: 232, column: 7, scope: !118)
!125 = !DILocation(line: 233, column: 12, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !8, line: 232, column: 20)
!127 = !DILocation(line: 234, column: 8, scope: !128)
!128 = distinct !DILexicalBlock(scope: !126, file: !8, line: 234, column: 8)
!129 = !DILocation(line: 234, column: 15, scope: !128)
!130 = !DILocation(line: 234, column: 8, scope: !126)
!131 = !DILocation(line: 235, column: 29, scope: !128)
!132 = !DILocation(line: 235, column: 36, scope: !128)
!133 = !DILocation(line: 235, column: 43, scope: !128)
!134 = !DILocation(line: 235, column: 47, scope: !128)
!135 = !DILocation(line: 235, column: 15, scope: !128)
!136 = !DILocation(line: 235, column: 13, scope: !128)
!137 = !DILocation(line: 235, column: 5, scope: !128)
!138 = !DILocation(line: 236, column: 3, scope: !126)
!139 = !DILocation(line: 237, column: 31, scope: !122)
!140 = !DILocation(line: 237, column: 38, scope: !122)
!141 = !DILocation(line: 237, column: 42, scope: !122)
!142 = !DILocation(line: 237, column: 48, scope: !122)
!143 = !DILocation(line: 237, column: 14, scope: !122)
!144 = !DILocation(line: 237, column: 12, scope: !122)
!145 = !DILocation(line: 239, column: 17, scope: !118)
!146 = !DILocation(line: 239, column: 3, scope: !118)
!147 = !DILocation(line: 239, column: 9, scope: !118)
!148 = !DILocation(line: 239, column: 15, scope: !118)
!149 = !DILocation(line: 240, column: 8, scope: !118)
!150 = !DILocation(line: 241, column: 2, scope: !118)
!151 = !DILocation(line: 230, column: 25, scope: !113)
!152 = !DILocation(line: 230, column: 2, scope: !113)
!153 = distinct !{!153, !116, !154, !87, !88}
!154 = !DILocation(line: 241, column: 2, scope: !110)
!155 = !DILocation(line: 242, column: 1, scope: !39)
!156 = !DISubprogram(name: "mpihelp_mul_1", scope: !43, file: !43, line: 193, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!157 = !DISubroutineType(types: !158)
!158 = !{!45, !42, !42, !47, !45}
!159 = !DISubprogram(name: "mpihelp_add_n", scope: !43, file: !43, line: 148, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!160 = !DISubroutineType(types: !161)
!161 = !{!45, !42, !42, !42, !47}
!162 = !DISubprogram(name: "mpihelp_addmul_1", scope: !43, file: !43, line: 175, type: !157, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!163 = distinct !DISubprogram(name: "mpih_sqr_n", scope: !8, file: !8, line: 245, type: !164, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !166)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !42, !42, !47, !42}
!166 = !{!167, !168, !169, !170, !171, !174, !175, !177, !178, !180}
!167 = !DILocalVariable(name: "prodp", arg: 1, scope: !163, file: !8, line: 245, type: !42)
!168 = !DILocalVariable(name: "up", arg: 2, scope: !163, file: !8, line: 245, type: !42)
!169 = !DILocalVariable(name: "size", arg: 3, scope: !163, file: !8, line: 245, type: !47)
!170 = !DILocalVariable(name: "tspace", arg: 4, scope: !163, file: !8, line: 245, type: !42)
!171 = !DILocalVariable(name: "esize", scope: !172, file: !8, line: 258, type: !47)
!172 = distinct !DILexicalBlock(scope: !173, file: !8, line: 247, column: 16)
!173 = distinct !DILexicalBlock(scope: !163, file: !8, line: 247, column: 6)
!174 = !DILocalVariable(name: "cy_limb", scope: !172, file: !8, line: 259, type: !45)
!175 = !DILocalVariable(name: "hsize", scope: !176, file: !8, line: 268, type: !47)
!176 = distinct !DILexicalBlock(scope: !173, file: !8, line: 267, column: 9)
!177 = !DILocalVariable(name: "cy", scope: !176, file: !8, line: 269, type: !45)
!178 = !DILocalVariable(name: "_i", scope: !179, file: !8, line: 292, type: !47)
!179 = distinct !DILexicalBlock(scope: !176, file: !8, line: 292, column: 3)
!180 = !DILocalVariable(name: "_i", scope: !181, file: !8, line: 312, type: !47)
!181 = distinct !DILexicalBlock(scope: !176, file: !8, line: 312, column: 3)
!182 = !DILocation(line: 245, column: 22, scope: !163)
!183 = !DILocation(line: 245, column: 39, scope: !163)
!184 = !DILocation(line: 245, column: 54, scope: !163)
!185 = !DILocation(line: 245, column: 70, scope: !163)
!186 = !DILocation(line: 247, column: 6, scope: !173)
!187 = !DILocation(line: 247, column: 11, scope: !173)
!188 = !DILocation(line: 247, column: 6, scope: !163)
!189 = !DILocation(line: 258, column: 3, scope: !172)
!190 = !DILocation(line: 258, column: 14, scope: !172)
!191 = !DILocation(line: 258, column: 22, scope: !172)
!192 = !DILocation(line: 258, column: 27, scope: !172)
!193 = !DILocation(line: 259, column: 3, scope: !172)
!194 = !DILocation(line: 259, column: 14, scope: !172)
!195 = !DILocation(line: 261, column: 3, scope: !172)
!196 = !DILocation(line: 261, column: 3, scope: !197)
!197 = distinct !DILexicalBlock(scope: !198, file: !8, line: 261, column: 3)
!198 = distinct !DILexicalBlock(scope: !172, file: !8, line: 261, column: 3)
!199 = !DILocation(line: 261, column: 3, scope: !198)
!200 = !DILocation(line: 262, column: 30, scope: !172)
!201 = !DILocation(line: 262, column: 38, scope: !172)
!202 = !DILocation(line: 262, column: 36, scope: !172)
!203 = !DILocation(line: 262, column: 45, scope: !172)
!204 = !DILocation(line: 262, column: 49, scope: !172)
!205 = !DILocation(line: 262, column: 56, scope: !172)
!206 = !DILocation(line: 262, column: 59, scope: !172)
!207 = !DILocation(line: 262, column: 13, scope: !172)
!208 = !DILocation(line: 262, column: 11, scope: !172)
!209 = !DILocation(line: 263, column: 26, scope: !172)
!210 = !DILocation(line: 263, column: 3, scope: !172)
!211 = !DILocation(line: 263, column: 9, scope: !172)
!212 = !DILocation(line: 263, column: 17, scope: !172)
!213 = !DILocation(line: 263, column: 15, scope: !172)
!214 = !DILocation(line: 263, column: 24, scope: !172)
!215 = !DILocation(line: 264, column: 30, scope: !172)
!216 = !DILocation(line: 264, column: 38, scope: !172)
!217 = !DILocation(line: 264, column: 36, scope: !172)
!218 = !DILocation(line: 264, column: 45, scope: !172)
!219 = !DILocation(line: 264, column: 49, scope: !172)
!220 = !DILocation(line: 264, column: 55, scope: !172)
!221 = !DILocation(line: 264, column: 58, scope: !172)
!222 = !DILocation(line: 264, column: 13, scope: !172)
!223 = !DILocation(line: 264, column: 11, scope: !172)
!224 = !DILocation(line: 266, column: 25, scope: !172)
!225 = !DILocation(line: 266, column: 3, scope: !172)
!226 = !DILocation(line: 266, column: 9, scope: !172)
!227 = !DILocation(line: 266, column: 17, scope: !172)
!228 = !DILocation(line: 266, column: 15, scope: !172)
!229 = !DILocation(line: 266, column: 23, scope: !172)
!230 = !DILocation(line: 267, column: 2, scope: !173)
!231 = !DILocation(line: 267, column: 2, scope: !172)
!232 = !DILocation(line: 268, column: 3, scope: !176)
!233 = !DILocation(line: 268, column: 14, scope: !176)
!234 = !DILocation(line: 268, column: 22, scope: !176)
!235 = !DILocation(line: 268, column: 27, scope: !176)
!236 = !DILocation(line: 269, column: 3, scope: !176)
!237 = !DILocation(line: 269, column: 14, scope: !176)
!238 = !DILocation(line: 276, column: 3, scope: !176)
!239 = !DILocation(line: 276, column: 3, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !8, line: 276, column: 3)
!241 = distinct !DILexicalBlock(scope: !176, file: !8, line: 276, column: 3)
!242 = !DILocation(line: 276, column: 3, scope: !241)
!243 = !DILocation(line: 281, column: 19, scope: !244)
!244 = distinct !DILexicalBlock(scope: !176, file: !8, line: 281, column: 7)
!245 = !DILocation(line: 281, column: 24, scope: !244)
!246 = !DILocation(line: 281, column: 22, scope: !244)
!247 = !DILocation(line: 281, column: 31, scope: !244)
!248 = !DILocation(line: 281, column: 35, scope: !244)
!249 = !DILocation(line: 281, column: 7, scope: !244)
!250 = !DILocation(line: 281, column: 42, scope: !244)
!251 = !DILocation(line: 281, column: 7, scope: !176)
!252 = !DILocation(line: 282, column: 18, scope: !244)
!253 = !DILocation(line: 282, column: 25, scope: !244)
!254 = !DILocation(line: 282, column: 30, scope: !244)
!255 = !DILocation(line: 282, column: 28, scope: !244)
!256 = !DILocation(line: 282, column: 37, scope: !244)
!257 = !DILocation(line: 282, column: 41, scope: !244)
!258 = !DILocation(line: 282, column: 4, scope: !244)
!259 = !DILocation(line: 284, column: 18, scope: !244)
!260 = !DILocation(line: 284, column: 25, scope: !244)
!261 = !DILocation(line: 284, column: 29, scope: !244)
!262 = !DILocation(line: 284, column: 34, scope: !244)
!263 = !DILocation(line: 284, column: 32, scope: !244)
!264 = !DILocation(line: 284, column: 41, scope: !244)
!265 = !DILocation(line: 284, column: 4, scope: !244)
!266 = !DILocation(line: 289, column: 3, scope: !176)
!267 = !DILocation(line: 289, column: 3, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !8, line: 289, column: 3)
!269 = distinct !DILexicalBlock(scope: !176, file: !8, line: 289, column: 3)
!270 = !DILocation(line: 289, column: 3, scope: !269)
!271 = !DILocation(line: 292, column: 3, scope: !176)
!272 = !DILocation(line: 292, column: 3, scope: !179)
!273 = !DILocation(line: 292, column: 3, scope: !274)
!274 = distinct !DILexicalBlock(scope: !179, file: !8, line: 292, column: 3)
!275 = !DILocation(line: 292, column: 3, scope: !276)
!276 = distinct !DILexicalBlock(scope: !274, file: !8, line: 292, column: 3)
!277 = distinct !{!277, !273, !273, !87, !88}
!278 = !DILocation(line: 293, column: 22, scope: !176)
!279 = !DILocation(line: 293, column: 30, scope: !176)
!280 = !DILocation(line: 293, column: 28, scope: !176)
!281 = !DILocation(line: 293, column: 36, scope: !176)
!282 = !DILocation(line: 293, column: 44, scope: !176)
!283 = !DILocation(line: 293, column: 42, scope: !176)
!284 = !DILocation(line: 294, column: 8, scope: !176)
!285 = !DILocation(line: 294, column: 16, scope: !176)
!286 = !DILocation(line: 294, column: 14, scope: !176)
!287 = !DILocation(line: 294, column: 23, scope: !176)
!288 = !DILocation(line: 294, column: 21, scope: !176)
!289 = !DILocation(line: 294, column: 30, scope: !176)
!290 = !DILocation(line: 293, column: 8, scope: !176)
!291 = !DILocation(line: 293, column: 6, scope: !176)
!292 = !DILocation(line: 297, column: 23, scope: !176)
!293 = !DILocation(line: 297, column: 31, scope: !176)
!294 = !DILocation(line: 297, column: 29, scope: !176)
!295 = !DILocation(line: 297, column: 38, scope: !176)
!296 = !DILocation(line: 297, column: 46, scope: !176)
!297 = !DILocation(line: 297, column: 44, scope: !176)
!298 = !DILocation(line: 297, column: 53, scope: !176)
!299 = !DILocation(line: 297, column: 61, scope: !176)
!300 = !DILocation(line: 297, column: 9, scope: !176)
!301 = !DILocation(line: 297, column: 6, scope: !176)
!302 = !DILocation(line: 304, column: 3, scope: !176)
!303 = !DILocation(line: 304, column: 3, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !8, line: 304, column: 3)
!305 = distinct !DILexicalBlock(scope: !176, file: !8, line: 304, column: 3)
!306 = !DILocation(line: 304, column: 3, scope: !305)
!307 = !DILocation(line: 307, column: 23, scope: !176)
!308 = !DILocation(line: 307, column: 31, scope: !176)
!309 = !DILocation(line: 307, column: 29, scope: !176)
!310 = !DILocation(line: 307, column: 38, scope: !176)
!311 = !DILocation(line: 307, column: 46, scope: !176)
!312 = !DILocation(line: 307, column: 44, scope: !176)
!313 = !DILocation(line: 307, column: 53, scope: !176)
!314 = !DILocation(line: 307, column: 61, scope: !176)
!315 = !DILocation(line: 307, column: 9, scope: !176)
!316 = !DILocation(line: 307, column: 6, scope: !176)
!317 = !DILocation(line: 308, column: 7, scope: !318)
!318 = distinct !DILexicalBlock(scope: !176, file: !8, line: 308, column: 7)
!319 = !DILocation(line: 308, column: 7, scope: !176)
!320 = !DILocation(line: 309, column: 18, scope: !318)
!321 = !DILocation(line: 309, column: 26, scope: !318)
!322 = !DILocation(line: 309, column: 24, scope: !318)
!323 = !DILocation(line: 309, column: 34, scope: !318)
!324 = !DILocation(line: 309, column: 32, scope: !318)
!325 = !DILocation(line: 310, column: 11, scope: !318)
!326 = !DILocation(line: 310, column: 19, scope: !318)
!327 = !DILocation(line: 310, column: 17, scope: !318)
!328 = !DILocation(line: 310, column: 27, scope: !318)
!329 = !DILocation(line: 310, column: 25, scope: !318)
!330 = !DILocation(line: 310, column: 33, scope: !318)
!331 = !DILocation(line: 310, column: 40, scope: !318)
!332 = !DILocation(line: 309, column: 4, scope: !318)
!333 = !DILocation(line: 312, column: 3, scope: !176)
!334 = !DILocation(line: 312, column: 3, scope: !181)
!335 = !DILocation(line: 312, column: 3, scope: !336)
!336 = distinct !DILexicalBlock(scope: !181, file: !8, line: 312, column: 3)
!337 = !DILocation(line: 312, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !336, file: !8, line: 312, column: 3)
!339 = distinct !{!339, !335, !335, !87, !88}
!340 = !DILocation(line: 313, column: 22, scope: !176)
!341 = !DILocation(line: 313, column: 30, scope: !176)
!342 = !DILocation(line: 313, column: 28, scope: !176)
!343 = !DILocation(line: 313, column: 37, scope: !176)
!344 = !DILocation(line: 313, column: 45, scope: !176)
!345 = !DILocation(line: 313, column: 43, scope: !176)
!346 = !DILocation(line: 313, column: 52, scope: !176)
!347 = !DILocation(line: 313, column: 61, scope: !176)
!348 = !DILocation(line: 313, column: 59, scope: !176)
!349 = !DILocation(line: 314, column: 8, scope: !176)
!350 = !DILocation(line: 313, column: 8, scope: !176)
!351 = !DILocation(line: 313, column: 6, scope: !176)
!352 = !DILocation(line: 315, column: 7, scope: !353)
!353 = distinct !DILexicalBlock(scope: !176, file: !8, line: 315, column: 7)
!354 = !DILocation(line: 315, column: 7, scope: !176)
!355 = !DILocation(line: 316, column: 18, scope: !353)
!356 = !DILocation(line: 316, column: 26, scope: !353)
!357 = !DILocation(line: 316, column: 24, scope: !353)
!358 = !DILocation(line: 316, column: 32, scope: !353)
!359 = !DILocation(line: 316, column: 40, scope: !353)
!360 = !DILocation(line: 316, column: 38, scope: !353)
!361 = !DILocation(line: 316, column: 46, scope: !353)
!362 = !DILocation(line: 316, column: 4, scope: !353)
!363 = !DILocation(line: 317, column: 2, scope: !173)
!364 = !DILocation(line: 318, column: 1, scope: !163)
!365 = !DISubprogram(name: "mpihelp_cmp", scope: !43, file: !43, line: 161, type: !366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!366 = !DISubroutineType(types: !367)
!367 = !{!48, !42, !42, !47}
!368 = !DISubprogram(name: "mpihelp_sub_n", scope: !43, file: !43, line: 155, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!369 = distinct !DISubprogram(name: "mpihelp_add_1", scope: !370, file: !370, line: 24, type: !157, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !371)
!370 = !DIFile(filename: "lib/crypto/mpi/mpi-inline.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1eb4d706cf80b7747a30df77860dc8e1")
!371 = !{!372, !373, !374, !375, !376, !377, !378}
!372 = !DILocalVariable(name: "res_ptr", arg: 1, scope: !369, file: !370, line: 24, type: !42)
!373 = !DILocalVariable(name: "s1_ptr", arg: 2, scope: !369, file: !370, line: 24, type: !42)
!374 = !DILocalVariable(name: "s1_size", arg: 3, scope: !369, file: !370, line: 25, type: !47)
!375 = !DILocalVariable(name: "s2_limb", arg: 4, scope: !369, file: !370, line: 25, type: !45)
!376 = !DILocalVariable(name: "x", scope: !369, file: !370, line: 27, type: !45)
!377 = !DILabel(scope: !369, name: "leave", file: !370, line: 42)
!378 = !DILocalVariable(name: "i", scope: !379, file: !370, line: 44, type: !47)
!379 = distinct !DILexicalBlock(scope: !380, file: !370, line: 43, column: 25)
!380 = distinct !DILexicalBlock(scope: !369, file: !370, line: 43, column: 6)
!381 = !DILocation(line: 24, column: 25, scope: !369)
!382 = !DILocation(line: 24, column: 44, scope: !369)
!383 = !DILocation(line: 25, column: 19, scope: !369)
!384 = !DILocation(line: 25, column: 39, scope: !369)
!385 = !DILocation(line: 27, column: 2, scope: !369)
!386 = !DILocation(line: 27, column: 13, scope: !369)
!387 = !DILocation(line: 29, column: 13, scope: !369)
!388 = !DILocation(line: 29, column: 6, scope: !369)
!389 = !DILocation(line: 29, column: 4, scope: !369)
!390 = !DILocation(line: 30, column: 13, scope: !369)
!391 = !DILocation(line: 30, column: 10, scope: !369)
!392 = !DILocation(line: 31, column: 15, scope: !369)
!393 = !DILocation(line: 31, column: 10, scope: !369)
!394 = !DILocation(line: 31, column: 13, scope: !369)
!395 = !DILocation(line: 32, column: 6, scope: !396)
!396 = distinct !DILexicalBlock(scope: !369, file: !370, line: 32, column: 6)
!397 = !DILocation(line: 32, column: 16, scope: !396)
!398 = !DILocation(line: 32, column: 14, scope: !396)
!399 = !DILocation(line: 32, column: 6, scope: !369)
!400 = !DILocation(line: 33, column: 3, scope: !401)
!401 = distinct !DILexicalBlock(scope: !396, file: !370, line: 32, column: 19)
!402 = !DILocation(line: 33, column: 10, scope: !401)
!403 = !DILocation(line: 34, column: 15, scope: !404)
!404 = distinct !DILexicalBlock(scope: !401, file: !370, line: 33, column: 21)
!405 = !DILocation(line: 34, column: 8, scope: !404)
!406 = !DILocation(line: 34, column: 18, scope: !404)
!407 = !DILocation(line: 34, column: 6, scope: !404)
!408 = !DILocation(line: 35, column: 17, scope: !404)
!409 = !DILocation(line: 35, column: 12, scope: !404)
!410 = !DILocation(line: 35, column: 15, scope: !404)
!411 = !DILocation(line: 36, column: 8, scope: !412)
!412 = distinct !DILexicalBlock(scope: !404, file: !370, line: 36, column: 8)
!413 = !DILocation(line: 36, column: 8, scope: !404)
!414 = !DILocation(line: 37, column: 5, scope: !412)
!415 = distinct !{!415, !400, !416, !87, !88}
!416 = !DILocation(line: 38, column: 3, scope: !401)
!417 = !DILocation(line: 39, column: 3, scope: !401)
!418 = !DILocation(line: 42, column: 1, scope: !369)
!419 = !DILocation(line: 43, column: 6, scope: !380)
!420 = !DILocation(line: 43, column: 17, scope: !380)
!421 = !DILocation(line: 43, column: 14, scope: !380)
!422 = !DILocation(line: 43, column: 6, scope: !369)
!423 = !DILocation(line: 44, column: 3, scope: !379)
!424 = !DILocation(line: 44, column: 14, scope: !379)
!425 = !DILocation(line: 45, column: 10, scope: !426)
!426 = distinct !DILexicalBlock(scope: !379, file: !370, line: 45, column: 3)
!427 = !DILocation(line: 45, column: 8, scope: !426)
!428 = !DILocation(line: 45, column: 15, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !370, line: 45, column: 3)
!430 = !DILocation(line: 45, column: 19, scope: !429)
!431 = !DILocation(line: 45, column: 27, scope: !429)
!432 = !DILocation(line: 45, column: 17, scope: !429)
!433 = !DILocation(line: 45, column: 3, scope: !426)
!434 = !DILocation(line: 46, column: 17, scope: !429)
!435 = !DILocation(line: 46, column: 24, scope: !429)
!436 = !DILocation(line: 46, column: 4, scope: !429)
!437 = !DILocation(line: 46, column: 12, scope: !429)
!438 = !DILocation(line: 46, column: 15, scope: !429)
!439 = !DILocation(line: 45, column: 33, scope: !429)
!440 = !DILocation(line: 45, column: 3, scope: !429)
!441 = distinct !{!441, !433, !442, !87, !88}
!442 = !DILocation(line: 46, column: 25, scope: !426)
!443 = !DILocation(line: 47, column: 2, scope: !380)
!444 = !DILocation(line: 47, column: 2, scope: !379)
!445 = !DILocation(line: 48, column: 2, scope: !369)
!446 = !DILocation(line: 49, column: 1, scope: !369)
!447 = distinct !DISubprogram(name: "mpihelp_mul_n", scope: !8, file: !8, line: 321, type: !448, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !450)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !42, !42, !42, !47}
!450 = !{!451, !452, !453, !454, !455, !460}
!451 = !DILocalVariable(name: "prodp", arg: 1, scope: !447, file: !8, line: 321, type: !42)
!452 = !DILocalVariable(name: "up", arg: 2, scope: !447, file: !8, line: 322, type: !42)
!453 = !DILocalVariable(name: "vp", arg: 3, scope: !447, file: !8, line: 322, type: !42)
!454 = !DILocalVariable(name: "size", arg: 4, scope: !447, file: !8, line: 322, type: !47)
!455 = !DILocalVariable(name: "tspace", scope: !456, file: !8, line: 328, type: !42)
!456 = distinct !DILexicalBlock(scope: !457, file: !8, line: 327, column: 8)
!457 = distinct !DILexicalBlock(scope: !458, file: !8, line: 325, column: 7)
!458 = distinct !DILexicalBlock(scope: !459, file: !8, line: 324, column: 16)
!459 = distinct !DILexicalBlock(scope: !447, file: !8, line: 324, column: 6)
!460 = !DILocalVariable(name: "tspace", scope: !461, file: !8, line: 337, type: !42)
!461 = distinct !DILexicalBlock(scope: !462, file: !8, line: 336, column: 8)
!462 = distinct !DILexicalBlock(scope: !463, file: !8, line: 334, column: 7)
!463 = distinct !DILexicalBlock(scope: !459, file: !8, line: 333, column: 9)
!464 = !DILocation(line: 321, column: 30, scope: !447)
!465 = !DILocation(line: 322, column: 13, scope: !447)
!466 = !DILocation(line: 322, column: 27, scope: !447)
!467 = !DILocation(line: 322, column: 42, scope: !447)
!468 = !DILocation(line: 324, column: 6, scope: !459)
!469 = !DILocation(line: 324, column: 12, scope: !459)
!470 = !DILocation(line: 324, column: 9, scope: !459)
!471 = !DILocation(line: 324, column: 6, scope: !447)
!472 = !DILocation(line: 325, column: 7, scope: !457)
!473 = !DILocation(line: 325, column: 12, scope: !457)
!474 = !DILocation(line: 325, column: 7, scope: !458)
!475 = !DILocation(line: 326, column: 24, scope: !457)
!476 = !DILocation(line: 326, column: 31, scope: !457)
!477 = !DILocation(line: 326, column: 35, scope: !457)
!478 = !DILocation(line: 326, column: 4, scope: !457)
!479 = !DILocation(line: 328, column: 4, scope: !456)
!480 = !DILocation(line: 328, column: 14, scope: !456)
!481 = !DILocation(line: 329, column: 38, scope: !456)
!482 = !DILocation(line: 329, column: 36, scope: !456)
!483 = !DILocation(line: 329, column: 13, scope: !456)
!484 = !DILocation(line: 329, column: 11, scope: !456)
!485 = !DILocation(line: 330, column: 15, scope: !456)
!486 = !DILocation(line: 330, column: 22, scope: !456)
!487 = !DILocation(line: 330, column: 26, scope: !456)
!488 = !DILocation(line: 330, column: 32, scope: !456)
!489 = !DILocation(line: 330, column: 4, scope: !456)
!490 = !DILocation(line: 331, column: 24, scope: !456)
!491 = !DILocation(line: 331, column: 4, scope: !456)
!492 = !DILocation(line: 332, column: 3, scope: !457)
!493 = !DILocation(line: 333, column: 2, scope: !458)
!494 = !DILocation(line: 334, column: 7, scope: !462)
!495 = !DILocation(line: 334, column: 12, scope: !462)
!496 = !DILocation(line: 334, column: 7, scope: !463)
!497 = !DILocation(line: 335, column: 19, scope: !462)
!498 = !DILocation(line: 335, column: 26, scope: !462)
!499 = !DILocation(line: 335, column: 30, scope: !462)
!500 = !DILocation(line: 335, column: 34, scope: !462)
!501 = !DILocation(line: 335, column: 4, scope: !462)
!502 = !DILocation(line: 337, column: 4, scope: !461)
!503 = !DILocation(line: 337, column: 14, scope: !461)
!504 = !DILocation(line: 338, column: 38, scope: !461)
!505 = !DILocation(line: 338, column: 36, scope: !461)
!506 = !DILocation(line: 338, column: 13, scope: !461)
!507 = !DILocation(line: 338, column: 11, scope: !461)
!508 = !DILocation(line: 339, column: 10, scope: !461)
!509 = !DILocation(line: 339, column: 17, scope: !461)
!510 = !DILocation(line: 339, column: 21, scope: !461)
!511 = !DILocation(line: 339, column: 25, scope: !461)
!512 = !DILocation(line: 339, column: 31, scope: !461)
!513 = !DILocation(line: 339, column: 4, scope: !461)
!514 = !DILocation(line: 340, column: 24, scope: !461)
!515 = !DILocation(line: 340, column: 4, scope: !461)
!516 = !DILocation(line: 341, column: 3, scope: !462)
!517 = !DILocation(line: 343, column: 1, scope: !447)
!518 = !DISubprogram(name: "mpi_alloc_limb_space", scope: !43, file: !43, line: 142, type: !519, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!519 = !DISubroutineType(types: !520)
!520 = !{!42, !12}
!521 = !DISubprogram(name: "mpi_free_limb_space", scope: !43, file: !43, line: 143, type: !522, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !42}
!524 = distinct !DISubprogram(name: "mul_n_basecase", scope: !8, file: !8, line: 55, type: !160, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533, !538}
!526 = !DILocalVariable(name: "prodp", arg: 1, scope: !524, file: !8, line: 55, type: !42)
!527 = !DILocalVariable(name: "up", arg: 2, scope: !524, file: !8, line: 55, type: !42)
!528 = !DILocalVariable(name: "vp", arg: 3, scope: !524, file: !8, line: 55, type: !42)
!529 = !DILocalVariable(name: "size", arg: 4, scope: !524, file: !8, line: 55, type: !47)
!530 = !DILocalVariable(name: "i", scope: !524, file: !8, line: 57, type: !47)
!531 = !DILocalVariable(name: "cy", scope: !524, file: !8, line: 58, type: !45)
!532 = !DILocalVariable(name: "v_limb", scope: !524, file: !8, line: 59, type: !45)
!533 = !DILocalVariable(name: "_i", scope: !534, file: !8, line: 66, type: !47)
!534 = distinct !DILexicalBlock(scope: !535, file: !8, line: 66, column: 4)
!535 = distinct !DILexicalBlock(scope: !536, file: !8, line: 65, column: 7)
!536 = distinct !DILexicalBlock(scope: !537, file: !8, line: 64, column: 19)
!537 = distinct !DILexicalBlock(scope: !524, file: !8, line: 64, column: 6)
!538 = !DILocalVariable(name: "_i", scope: !539, file: !8, line: 68, type: !48)
!539 = distinct !DILexicalBlock(scope: !535, file: !8, line: 68, column: 4)
!540 = !DILocation(line: 55, column: 26, scope: !524)
!541 = !DILocation(line: 55, column: 43, scope: !524)
!542 = !DILocation(line: 55, column: 57, scope: !524)
!543 = !DILocation(line: 55, column: 72, scope: !524)
!544 = !DILocation(line: 57, column: 2, scope: !524)
!545 = !DILocation(line: 57, column: 13, scope: !524)
!546 = !DILocation(line: 58, column: 2, scope: !524)
!547 = !DILocation(line: 58, column: 13, scope: !524)
!548 = !DILocation(line: 59, column: 2, scope: !524)
!549 = !DILocation(line: 59, column: 13, scope: !524)
!550 = !DILocation(line: 63, column: 11, scope: !524)
!551 = !DILocation(line: 63, column: 9, scope: !524)
!552 = !DILocation(line: 64, column: 6, scope: !537)
!553 = !DILocation(line: 64, column: 13, scope: !537)
!554 = !DILocation(line: 64, column: 6, scope: !524)
!555 = !DILocation(line: 65, column: 7, scope: !535)
!556 = !DILocation(line: 65, column: 14, scope: !535)
!557 = !DILocation(line: 65, column: 7, scope: !536)
!558 = !DILocation(line: 66, column: 4, scope: !535)
!559 = !DILocation(line: 66, column: 4, scope: !534)
!560 = !DILocation(line: 66, column: 4, scope: !561)
!561 = distinct !DILexicalBlock(scope: !534, file: !8, line: 66, column: 4)
!562 = !DILocation(line: 66, column: 4, scope: !563)
!563 = distinct !DILexicalBlock(scope: !561, file: !8, line: 66, column: 4)
!564 = distinct !{!564, !560, !560, !87, !88}
!565 = !DILocation(line: 68, column: 4, scope: !535)
!566 = !DILocation(line: 68, column: 4, scope: !539)
!567 = !DILocation(line: 68, column: 4, scope: !568)
!568 = distinct !DILexicalBlock(scope: !539, file: !8, line: 68, column: 4)
!569 = !DILocation(line: 68, column: 4, scope: !570)
!570 = distinct !DILexicalBlock(scope: !568, file: !8, line: 68, column: 4)
!571 = distinct !{!571, !567, !567, !87, !88}
!572 = !DILocation(line: 69, column: 6, scope: !536)
!573 = !DILocation(line: 70, column: 2, scope: !536)
!574 = !DILocation(line: 71, column: 22, scope: !537)
!575 = !DILocation(line: 71, column: 29, scope: !537)
!576 = !DILocation(line: 71, column: 33, scope: !537)
!577 = !DILocation(line: 71, column: 39, scope: !537)
!578 = !DILocation(line: 71, column: 8, scope: !537)
!579 = !DILocation(line: 71, column: 6, scope: !537)
!580 = !DILocation(line: 73, column: 16, scope: !524)
!581 = !DILocation(line: 73, column: 2, scope: !524)
!582 = !DILocation(line: 73, column: 8, scope: !524)
!583 = !DILocation(line: 73, column: 14, scope: !524)
!584 = !DILocation(line: 74, column: 7, scope: !524)
!585 = !DILocation(line: 78, column: 9, scope: !586)
!586 = distinct !DILexicalBlock(scope: !524, file: !8, line: 78, column: 2)
!587 = !DILocation(line: 78, column: 7, scope: !586)
!588 = !DILocation(line: 78, column: 14, scope: !589)
!589 = distinct !DILexicalBlock(scope: !586, file: !8, line: 78, column: 2)
!590 = !DILocation(line: 78, column: 18, scope: !589)
!591 = !DILocation(line: 78, column: 16, scope: !589)
!592 = !DILocation(line: 78, column: 2, scope: !586)
!593 = !DILocation(line: 79, column: 12, scope: !594)
!594 = distinct !DILexicalBlock(scope: !589, file: !8, line: 78, column: 29)
!595 = !DILocation(line: 79, column: 15, scope: !594)
!596 = !DILocation(line: 79, column: 10, scope: !594)
!597 = !DILocation(line: 80, column: 7, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !8, line: 80, column: 7)
!599 = !DILocation(line: 80, column: 14, scope: !598)
!600 = !DILocation(line: 80, column: 7, scope: !594)
!601 = !DILocation(line: 81, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !598, file: !8, line: 80, column: 20)
!603 = !DILocation(line: 82, column: 8, scope: !604)
!604 = distinct !DILexicalBlock(scope: !602, file: !8, line: 82, column: 8)
!605 = !DILocation(line: 82, column: 15, scope: !604)
!606 = !DILocation(line: 82, column: 8, scope: !602)
!607 = !DILocation(line: 83, column: 24, scope: !604)
!608 = !DILocation(line: 83, column: 31, scope: !604)
!609 = !DILocation(line: 83, column: 38, scope: !604)
!610 = !DILocation(line: 83, column: 42, scope: !604)
!611 = !DILocation(line: 83, column: 10, scope: !604)
!612 = !DILocation(line: 83, column: 8, scope: !604)
!613 = !DILocation(line: 83, column: 5, scope: !604)
!614 = !DILocation(line: 84, column: 3, scope: !602)
!615 = !DILocation(line: 85, column: 26, scope: !598)
!616 = !DILocation(line: 85, column: 33, scope: !598)
!617 = !DILocation(line: 85, column: 37, scope: !598)
!618 = !DILocation(line: 85, column: 43, scope: !598)
!619 = !DILocation(line: 85, column: 9, scope: !598)
!620 = !DILocation(line: 85, column: 7, scope: !598)
!621 = !DILocation(line: 87, column: 17, scope: !594)
!622 = !DILocation(line: 87, column: 3, scope: !594)
!623 = !DILocation(line: 87, column: 9, scope: !594)
!624 = !DILocation(line: 87, column: 15, scope: !594)
!625 = !DILocation(line: 88, column: 8, scope: !594)
!626 = !DILocation(line: 89, column: 2, scope: !594)
!627 = !DILocation(line: 78, column: 25, scope: !589)
!628 = !DILocation(line: 78, column: 2, scope: !589)
!629 = distinct !{!629, !592, !630, !87, !88}
!630 = !DILocation(line: 89, column: 2, scope: !586)
!631 = !DILocation(line: 91, column: 9, scope: !524)
!632 = !DILocation(line: 92, column: 1, scope: !524)
!633 = !DILocation(line: 91, column: 2, scope: !524)
!634 = distinct !DISubprogram(name: "mul_n", scope: !8, file: !8, line: 95, type: !635, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !42, !42, !42, !47, !42}
!637 = !{!638, !639, !640, !641, !642, !643, !646, !647, !649, !650, !651, !653}
!638 = !DILocalVariable(name: "prodp", arg: 1, scope: !634, file: !8, line: 95, type: !42)
!639 = !DILocalVariable(name: "up", arg: 2, scope: !634, file: !8, line: 95, type: !42)
!640 = !DILocalVariable(name: "vp", arg: 3, scope: !634, file: !8, line: 95, type: !42)
!641 = !DILocalVariable(name: "size", arg: 4, scope: !634, file: !8, line: 96, type: !47)
!642 = !DILocalVariable(name: "tspace", arg: 5, scope: !634, file: !8, line: 96, type: !42)
!643 = !DILocalVariable(name: "esize", scope: !644, file: !8, line: 109, type: !47)
!644 = distinct !DILexicalBlock(scope: !645, file: !8, line: 98, column: 16)
!645 = distinct !DILexicalBlock(scope: !634, file: !8, line: 98, column: 6)
!646 = !DILocalVariable(name: "cy_limb", scope: !644, file: !8, line: 110, type: !45)
!647 = !DILocalVariable(name: "hsize", scope: !648, file: !8, line: 133, type: !47)
!648 = distinct !DILexicalBlock(scope: !645, file: !8, line: 117, column: 9)
!649 = !DILocalVariable(name: "cy", scope: !648, file: !8, line: 134, type: !45)
!650 = !DILocalVariable(name: "negflg", scope: !648, file: !8, line: 135, type: !48)
!651 = !DILocalVariable(name: "_i", scope: !652, file: !8, line: 170, type: !47)
!652 = distinct !DILexicalBlock(scope: !648, file: !8, line: 170, column: 3)
!653 = !DILocalVariable(name: "_i", scope: !654, file: !8, line: 199, type: !47)
!654 = distinct !DILexicalBlock(scope: !648, file: !8, line: 199, column: 3)
!655 = !DILocation(line: 95, column: 17, scope: !634)
!656 = !DILocation(line: 95, column: 34, scope: !634)
!657 = !DILocation(line: 95, column: 48, scope: !634)
!658 = !DILocation(line: 96, column: 14, scope: !634)
!659 = !DILocation(line: 96, column: 30, scope: !634)
!660 = !DILocation(line: 98, column: 6, scope: !645)
!661 = !DILocation(line: 98, column: 11, scope: !645)
!662 = !DILocation(line: 98, column: 6, scope: !634)
!663 = !DILocation(line: 109, column: 3, scope: !644)
!664 = !DILocation(line: 109, column: 14, scope: !644)
!665 = !DILocation(line: 109, column: 22, scope: !644)
!666 = !DILocation(line: 109, column: 27, scope: !644)
!667 = !DILocation(line: 110, column: 3, scope: !644)
!668 = !DILocation(line: 110, column: 14, scope: !644)
!669 = !DILocation(line: 112, column: 3, scope: !644)
!670 = !DILocation(line: 112, column: 3, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !8, line: 112, column: 3)
!672 = distinct !DILexicalBlock(scope: !644, file: !8, line: 112, column: 3)
!673 = !DILocation(line: 112, column: 3, scope: !672)
!674 = !DILocation(line: 113, column: 30, scope: !644)
!675 = !DILocation(line: 113, column: 38, scope: !644)
!676 = !DILocation(line: 113, column: 36, scope: !644)
!677 = !DILocation(line: 113, column: 45, scope: !644)
!678 = !DILocation(line: 113, column: 49, scope: !644)
!679 = !DILocation(line: 113, column: 56, scope: !644)
!680 = !DILocation(line: 113, column: 59, scope: !644)
!681 = !DILocation(line: 113, column: 13, scope: !644)
!682 = !DILocation(line: 113, column: 11, scope: !644)
!683 = !DILocation(line: 114, column: 26, scope: !644)
!684 = !DILocation(line: 114, column: 3, scope: !644)
!685 = !DILocation(line: 114, column: 9, scope: !644)
!686 = !DILocation(line: 114, column: 17, scope: !644)
!687 = !DILocation(line: 114, column: 15, scope: !644)
!688 = !DILocation(line: 114, column: 24, scope: !644)
!689 = !DILocation(line: 115, column: 30, scope: !644)
!690 = !DILocation(line: 115, column: 38, scope: !644)
!691 = !DILocation(line: 115, column: 36, scope: !644)
!692 = !DILocation(line: 115, column: 45, scope: !644)
!693 = !DILocation(line: 115, column: 49, scope: !644)
!694 = !DILocation(line: 115, column: 55, scope: !644)
!695 = !DILocation(line: 115, column: 58, scope: !644)
!696 = !DILocation(line: 115, column: 13, scope: !644)
!697 = !DILocation(line: 115, column: 11, scope: !644)
!698 = !DILocation(line: 116, column: 25, scope: !644)
!699 = !DILocation(line: 116, column: 3, scope: !644)
!700 = !DILocation(line: 116, column: 9, scope: !644)
!701 = !DILocation(line: 116, column: 17, scope: !644)
!702 = !DILocation(line: 116, column: 15, scope: !644)
!703 = !DILocation(line: 116, column: 23, scope: !644)
!704 = !DILocation(line: 117, column: 2, scope: !645)
!705 = !DILocation(line: 117, column: 2, scope: !644)
!706 = !DILocation(line: 133, column: 3, scope: !648)
!707 = !DILocation(line: 133, column: 14, scope: !648)
!708 = !DILocation(line: 133, column: 22, scope: !648)
!709 = !DILocation(line: 133, column: 27, scope: !648)
!710 = !DILocation(line: 134, column: 3, scope: !648)
!711 = !DILocation(line: 134, column: 14, scope: !648)
!712 = !DILocation(line: 135, column: 3, scope: !648)
!713 = !DILocation(line: 135, column: 7, scope: !648)
!714 = !DILocation(line: 142, column: 3, scope: !648)
!715 = !DILocation(line: 142, column: 3, scope: !716)
!716 = distinct !DILexicalBlock(scope: !717, file: !8, line: 142, column: 3)
!717 = distinct !DILexicalBlock(scope: !648, file: !8, line: 142, column: 3)
!718 = !DILocation(line: 142, column: 3, scope: !717)
!719 = !DILocation(line: 148, column: 19, scope: !720)
!720 = distinct !DILexicalBlock(scope: !648, file: !8, line: 148, column: 7)
!721 = !DILocation(line: 148, column: 24, scope: !720)
!722 = !DILocation(line: 148, column: 22, scope: !720)
!723 = !DILocation(line: 148, column: 31, scope: !720)
!724 = !DILocation(line: 148, column: 35, scope: !720)
!725 = !DILocation(line: 148, column: 7, scope: !720)
!726 = !DILocation(line: 148, column: 42, scope: !720)
!727 = !DILocation(line: 148, column: 7, scope: !648)
!728 = !DILocation(line: 149, column: 18, scope: !729)
!729 = distinct !DILexicalBlock(scope: !720, file: !8, line: 148, column: 48)
!730 = !DILocation(line: 149, column: 25, scope: !729)
!731 = !DILocation(line: 149, column: 30, scope: !729)
!732 = !DILocation(line: 149, column: 28, scope: !729)
!733 = !DILocation(line: 149, column: 37, scope: !729)
!734 = !DILocation(line: 149, column: 41, scope: !729)
!735 = !DILocation(line: 149, column: 4, scope: !729)
!736 = !DILocation(line: 150, column: 11, scope: !729)
!737 = !DILocation(line: 151, column: 3, scope: !729)
!738 = !DILocation(line: 152, column: 18, scope: !739)
!739 = distinct !DILexicalBlock(scope: !720, file: !8, line: 151, column: 10)
!740 = !DILocation(line: 152, column: 25, scope: !739)
!741 = !DILocation(line: 152, column: 29, scope: !739)
!742 = !DILocation(line: 152, column: 34, scope: !739)
!743 = !DILocation(line: 152, column: 32, scope: !739)
!744 = !DILocation(line: 152, column: 41, scope: !739)
!745 = !DILocation(line: 152, column: 4, scope: !739)
!746 = !DILocation(line: 153, column: 11, scope: !739)
!747 = !DILocation(line: 155, column: 19, scope: !748)
!748 = distinct !DILexicalBlock(scope: !648, file: !8, line: 155, column: 7)
!749 = !DILocation(line: 155, column: 24, scope: !748)
!750 = !DILocation(line: 155, column: 22, scope: !748)
!751 = !DILocation(line: 155, column: 31, scope: !748)
!752 = !DILocation(line: 155, column: 35, scope: !748)
!753 = !DILocation(line: 155, column: 7, scope: !748)
!754 = !DILocation(line: 155, column: 42, scope: !748)
!755 = !DILocation(line: 155, column: 7, scope: !648)
!756 = !DILocation(line: 156, column: 18, scope: !757)
!757 = distinct !DILexicalBlock(scope: !748, file: !8, line: 155, column: 48)
!758 = !DILocation(line: 156, column: 26, scope: !757)
!759 = !DILocation(line: 156, column: 24, scope: !757)
!760 = !DILocation(line: 156, column: 33, scope: !757)
!761 = !DILocation(line: 156, column: 38, scope: !757)
!762 = !DILocation(line: 156, column: 36, scope: !757)
!763 = !DILocation(line: 156, column: 45, scope: !757)
!764 = !DILocation(line: 156, column: 49, scope: !757)
!765 = !DILocation(line: 156, column: 4, scope: !757)
!766 = !DILocation(line: 157, column: 11, scope: !757)
!767 = !DILocation(line: 158, column: 3, scope: !757)
!768 = !DILocation(line: 159, column: 18, scope: !769)
!769 = distinct !DILexicalBlock(scope: !748, file: !8, line: 158, column: 10)
!770 = !DILocation(line: 159, column: 26, scope: !769)
!771 = !DILocation(line: 159, column: 24, scope: !769)
!772 = !DILocation(line: 159, column: 33, scope: !769)
!773 = !DILocation(line: 159, column: 37, scope: !769)
!774 = !DILocation(line: 159, column: 42, scope: !769)
!775 = !DILocation(line: 159, column: 40, scope: !769)
!776 = !DILocation(line: 159, column: 49, scope: !769)
!777 = !DILocation(line: 159, column: 4, scope: !769)
!778 = !DILocation(line: 166, column: 3, scope: !648)
!779 = !DILocation(line: 166, column: 3, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !8, line: 166, column: 3)
!781 = distinct !DILexicalBlock(scope: !648, file: !8, line: 166, column: 3)
!782 = !DILocation(line: 166, column: 3, scope: !781)
!783 = !DILocation(line: 170, column: 3, scope: !648)
!784 = !DILocation(line: 170, column: 3, scope: !652)
!785 = !DILocation(line: 170, column: 3, scope: !786)
!786 = distinct !DILexicalBlock(scope: !652, file: !8, line: 170, column: 3)
!787 = !DILocation(line: 170, column: 3, scope: !788)
!788 = distinct !DILexicalBlock(scope: !786, file: !8, line: 170, column: 3)
!789 = distinct !{!789, !785, !785, !87, !88}
!790 = !DILocation(line: 171, column: 22, scope: !648)
!791 = !DILocation(line: 171, column: 30, scope: !648)
!792 = !DILocation(line: 171, column: 28, scope: !648)
!793 = !DILocation(line: 171, column: 36, scope: !648)
!794 = !DILocation(line: 171, column: 44, scope: !648)
!795 = !DILocation(line: 171, column: 42, scope: !648)
!796 = !DILocation(line: 172, column: 8, scope: !648)
!797 = !DILocation(line: 172, column: 16, scope: !648)
!798 = !DILocation(line: 172, column: 14, scope: !648)
!799 = !DILocation(line: 172, column: 23, scope: !648)
!800 = !DILocation(line: 172, column: 21, scope: !648)
!801 = !DILocation(line: 172, column: 30, scope: !648)
!802 = !DILocation(line: 171, column: 8, scope: !648)
!803 = !DILocation(line: 171, column: 6, scope: !648)
!804 = !DILocation(line: 175, column: 7, scope: !805)
!805 = distinct !DILexicalBlock(scope: !648, file: !8, line: 175, column: 7)
!806 = !DILocation(line: 175, column: 7, scope: !648)
!807 = !DILocation(line: 177, column: 22, scope: !805)
!808 = !DILocation(line: 177, column: 30, scope: !805)
!809 = !DILocation(line: 177, column: 28, scope: !805)
!810 = !DILocation(line: 177, column: 37, scope: !805)
!811 = !DILocation(line: 177, column: 45, scope: !805)
!812 = !DILocation(line: 177, column: 43, scope: !805)
!813 = !DILocation(line: 177, column: 52, scope: !805)
!814 = !DILocation(line: 178, column: 8, scope: !805)
!815 = !DILocation(line: 177, column: 8, scope: !805)
!816 = !DILocation(line: 176, column: 7, scope: !805)
!817 = !DILocation(line: 176, column: 4, scope: !805)
!818 = !DILocation(line: 181, column: 22, scope: !805)
!819 = !DILocation(line: 181, column: 30, scope: !805)
!820 = !DILocation(line: 181, column: 28, scope: !805)
!821 = !DILocation(line: 181, column: 37, scope: !805)
!822 = !DILocation(line: 181, column: 45, scope: !805)
!823 = !DILocation(line: 181, column: 43, scope: !805)
!824 = !DILocation(line: 181, column: 52, scope: !805)
!825 = !DILocation(line: 182, column: 8, scope: !805)
!826 = !DILocation(line: 181, column: 8, scope: !805)
!827 = !DILocation(line: 180, column: 7, scope: !805)
!828 = !DILocation(line: 190, column: 3, scope: !648)
!829 = !DILocation(line: 190, column: 3, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !8, line: 190, column: 3)
!831 = distinct !DILexicalBlock(scope: !648, file: !8, line: 190, column: 3)
!832 = !DILocation(line: 190, column: 3, scope: !831)
!833 = !DILocation(line: 194, column: 23, scope: !648)
!834 = !DILocation(line: 194, column: 31, scope: !648)
!835 = !DILocation(line: 194, column: 29, scope: !648)
!836 = !DILocation(line: 194, column: 38, scope: !648)
!837 = !DILocation(line: 194, column: 46, scope: !648)
!838 = !DILocation(line: 194, column: 44, scope: !648)
!839 = !DILocation(line: 194, column: 53, scope: !648)
!840 = !DILocation(line: 194, column: 61, scope: !648)
!841 = !DILocation(line: 194, column: 9, scope: !648)
!842 = !DILocation(line: 194, column: 6, scope: !648)
!843 = !DILocation(line: 195, column: 7, scope: !844)
!844 = distinct !DILexicalBlock(scope: !648, file: !8, line: 195, column: 7)
!845 = !DILocation(line: 195, column: 7, scope: !648)
!846 = !DILocation(line: 196, column: 18, scope: !844)
!847 = !DILocation(line: 196, column: 26, scope: !844)
!848 = !DILocation(line: 196, column: 24, scope: !844)
!849 = !DILocation(line: 196, column: 34, scope: !844)
!850 = !DILocation(line: 196, column: 32, scope: !844)
!851 = !DILocation(line: 197, column: 11, scope: !844)
!852 = !DILocation(line: 197, column: 19, scope: !844)
!853 = !DILocation(line: 197, column: 17, scope: !844)
!854 = !DILocation(line: 197, column: 27, scope: !844)
!855 = !DILocation(line: 197, column: 25, scope: !844)
!856 = !DILocation(line: 197, column: 33, scope: !844)
!857 = !DILocation(line: 197, column: 40, scope: !844)
!858 = !DILocation(line: 196, column: 4, scope: !844)
!859 = !DILocation(line: 199, column: 3, scope: !648)
!860 = !DILocation(line: 199, column: 3, scope: !654)
!861 = !DILocation(line: 199, column: 3, scope: !862)
!862 = distinct !DILexicalBlock(scope: !654, file: !8, line: 199, column: 3)
!863 = !DILocation(line: 199, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !862, file: !8, line: 199, column: 3)
!865 = distinct !{!865, !861, !861, !87, !88}
!866 = !DILocation(line: 200, column: 22, scope: !648)
!867 = !DILocation(line: 200, column: 30, scope: !648)
!868 = !DILocation(line: 200, column: 28, scope: !648)
!869 = !DILocation(line: 200, column: 37, scope: !648)
!870 = !DILocation(line: 200, column: 45, scope: !648)
!871 = !DILocation(line: 200, column: 43, scope: !648)
!872 = !DILocation(line: 200, column: 52, scope: !648)
!873 = !DILocation(line: 200, column: 61, scope: !648)
!874 = !DILocation(line: 200, column: 59, scope: !648)
!875 = !DILocation(line: 201, column: 8, scope: !648)
!876 = !DILocation(line: 200, column: 8, scope: !648)
!877 = !DILocation(line: 200, column: 6, scope: !648)
!878 = !DILocation(line: 202, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !648, file: !8, line: 202, column: 7)
!880 = !DILocation(line: 202, column: 7, scope: !648)
!881 = !DILocation(line: 203, column: 18, scope: !879)
!882 = !DILocation(line: 203, column: 26, scope: !879)
!883 = !DILocation(line: 203, column: 24, scope: !879)
!884 = !DILocation(line: 203, column: 32, scope: !879)
!885 = !DILocation(line: 203, column: 40, scope: !879)
!886 = !DILocation(line: 203, column: 38, scope: !879)
!887 = !DILocation(line: 203, column: 46, scope: !879)
!888 = !DILocation(line: 203, column: 4, scope: !879)
!889 = !DILocation(line: 204, column: 2, scope: !645)
!890 = !DILocation(line: 205, column: 1, scope: !634)
!891 = distinct !DISubprogram(name: "mpihelp_mul_karatsuba_case", scope: !8, file: !8, line: 346, type: !892, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !902)
!892 = !DISubroutineType(types: !893)
!893 = !{!48, !42, !42, !47, !42, !47, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "karatsuba_ctx", file: !43, line: 165, size: 320, elements: !896)
!896 = !{!897, !898, !899, !900, !901}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !895, file: !43, line: 166, baseType: !894, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "tspace", scope: !895, file: !43, line: 167, baseType: !42, size: 64, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tspace_size", scope: !895, file: !43, line: 168, baseType: !47, size: 32, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !895, file: !43, line: 169, baseType: !42, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "tp_size", scope: !895, file: !43, line: 170, baseType: !47, size: 32, offset: 256)
!902 = !{!903, !904, !905, !906, !907, !908, !909, !910}
!903 = !DILocalVariable(name: "prodp", arg: 1, scope: !891, file: !8, line: 346, type: !42)
!904 = !DILocalVariable(name: "up", arg: 2, scope: !891, file: !8, line: 347, type: !42)
!905 = !DILocalVariable(name: "usize", arg: 3, scope: !891, file: !8, line: 347, type: !47)
!906 = !DILocalVariable(name: "vp", arg: 4, scope: !891, file: !8, line: 348, type: !42)
!907 = !DILocalVariable(name: "vsize", arg: 5, scope: !891, file: !8, line: 348, type: !47)
!908 = !DILocalVariable(name: "ctx", arg: 6, scope: !891, file: !8, line: 349, type: !894)
!909 = !DILocalVariable(name: "cy", scope: !891, file: !8, line: 351, type: !45)
!910 = !DILocalVariable(name: "tmp", scope: !911, file: !8, line: 394, type: !45)
!911 = distinct !DILexicalBlock(scope: !912, file: !8, line: 393, column: 36)
!912 = distinct !DILexicalBlock(scope: !913, file: !8, line: 393, column: 7)
!913 = distinct !DILexicalBlock(scope: !914, file: !8, line: 392, column: 13)
!914 = distinct !DILexicalBlock(scope: !891, file: !8, line: 392, column: 6)
!915 = !DILocation(line: 346, column: 38, scope: !891)
!916 = !DILocation(line: 347, column: 17, scope: !891)
!917 = !DILocation(line: 347, column: 32, scope: !891)
!918 = !DILocation(line: 348, column: 17, scope: !891)
!919 = !DILocation(line: 348, column: 32, scope: !891)
!920 = !DILocation(line: 349, column: 29, scope: !891)
!921 = !DILocation(line: 351, column: 2, scope: !891)
!922 = !DILocation(line: 351, column: 13, scope: !891)
!923 = !DILocation(line: 353, column: 7, scope: !924)
!924 = distinct !DILexicalBlock(scope: !891, file: !8, line: 353, column: 6)
!925 = !DILocation(line: 353, column: 12, scope: !924)
!926 = !DILocation(line: 353, column: 19, scope: !924)
!927 = !DILocation(line: 353, column: 22, scope: !924)
!928 = !DILocation(line: 353, column: 27, scope: !924)
!929 = !DILocation(line: 353, column: 41, scope: !924)
!930 = !DILocation(line: 353, column: 39, scope: !924)
!931 = !DILocation(line: 353, column: 6, scope: !891)
!932 = !DILocation(line: 354, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !8, line: 354, column: 7)
!934 = distinct !DILexicalBlock(scope: !924, file: !8, line: 353, column: 48)
!935 = !DILocation(line: 354, column: 12, scope: !933)
!936 = !DILocation(line: 354, column: 7, scope: !934)
!937 = !DILocation(line: 355, column: 24, scope: !933)
!938 = !DILocation(line: 355, column: 29, scope: !933)
!939 = !DILocation(line: 355, column: 4, scope: !933)
!940 = !DILocation(line: 356, column: 42, scope: !934)
!941 = !DILocation(line: 356, column: 40, scope: !934)
!942 = !DILocation(line: 356, column: 17, scope: !934)
!943 = !DILocation(line: 356, column: 3, scope: !934)
!944 = !DILocation(line: 356, column: 8, scope: !934)
!945 = !DILocation(line: 356, column: 15, scope: !934)
!946 = !DILocation(line: 357, column: 8, scope: !947)
!947 = distinct !DILexicalBlock(scope: !934, file: !8, line: 357, column: 7)
!948 = !DILocation(line: 357, column: 13, scope: !947)
!949 = !DILocation(line: 357, column: 7, scope: !934)
!950 = !DILocation(line: 358, column: 4, scope: !947)
!951 = !DILocation(line: 359, column: 22, scope: !934)
!952 = !DILocation(line: 359, column: 3, scope: !934)
!953 = !DILocation(line: 359, column: 8, scope: !934)
!954 = !DILocation(line: 359, column: 20, scope: !934)
!955 = !DILocation(line: 360, column: 2, scope: !934)
!956 = !DILocation(line: 362, column: 2, scope: !891)
!957 = !DILocation(line: 362, column: 2, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !8, line: 362, column: 2)
!959 = distinct !DILexicalBlock(scope: !891, file: !8, line: 362, column: 2)
!960 = !DILocation(line: 362, column: 2, scope: !959)
!961 = !DILocation(line: 364, column: 11, scope: !891)
!962 = !DILocation(line: 364, column: 8, scope: !891)
!963 = !DILocation(line: 365, column: 8, scope: !891)
!964 = !DILocation(line: 365, column: 5, scope: !891)
!965 = !DILocation(line: 366, column: 11, scope: !891)
!966 = !DILocation(line: 366, column: 8, scope: !891)
!967 = !DILocation(line: 367, column: 6, scope: !968)
!968 = distinct !DILexicalBlock(scope: !891, file: !8, line: 367, column: 6)
!969 = !DILocation(line: 367, column: 15, scope: !968)
!970 = !DILocation(line: 367, column: 12, scope: !968)
!971 = !DILocation(line: 367, column: 6, scope: !891)
!972 = !DILocation(line: 368, column: 8, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !8, line: 368, column: 7)
!974 = distinct !DILexicalBlock(scope: !968, file: !8, line: 367, column: 22)
!975 = !DILocation(line: 368, column: 13, scope: !973)
!976 = !DILocation(line: 368, column: 16, scope: !973)
!977 = !DILocation(line: 368, column: 19, scope: !973)
!978 = !DILocation(line: 368, column: 24, scope: !973)
!979 = !DILocation(line: 368, column: 34, scope: !973)
!980 = !DILocation(line: 368, column: 32, scope: !973)
!981 = !DILocation(line: 368, column: 7, scope: !974)
!982 = !DILocation(line: 369, column: 8, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !8, line: 369, column: 8)
!984 = distinct !DILexicalBlock(scope: !973, file: !8, line: 368, column: 41)
!985 = !DILocation(line: 369, column: 13, scope: !983)
!986 = !DILocation(line: 369, column: 8, scope: !984)
!987 = !DILocation(line: 370, column: 25, scope: !983)
!988 = !DILocation(line: 370, column: 30, scope: !983)
!989 = !DILocation(line: 370, column: 5, scope: !983)
!990 = !DILocation(line: 371, column: 39, scope: !984)
!991 = !DILocation(line: 371, column: 37, scope: !984)
!992 = !DILocation(line: 371, column: 14, scope: !984)
!993 = !DILocation(line: 371, column: 4, scope: !984)
!994 = !DILocation(line: 371, column: 9, scope: !984)
!995 = !DILocation(line: 371, column: 12, scope: !984)
!996 = !DILocation(line: 372, column: 9, scope: !997)
!997 = distinct !DILexicalBlock(scope: !984, file: !8, line: 372, column: 8)
!998 = !DILocation(line: 372, column: 14, scope: !997)
!999 = !DILocation(line: 372, column: 8, scope: !984)
!1000 = !DILocation(line: 373, column: 9, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !8, line: 373, column: 9)
!1002 = distinct !DILexicalBlock(scope: !997, file: !8, line: 372, column: 18)
!1003 = !DILocation(line: 373, column: 14, scope: !1001)
!1004 = !DILocation(line: 373, column: 9, scope: !1002)
!1005 = !DILocation(line: 374, column: 26, scope: !1001)
!1006 = !DILocation(line: 374, column: 31, scope: !1001)
!1007 = !DILocation(line: 374, column: 6, scope: !1001)
!1008 = !DILocation(line: 375, column: 5, scope: !1002)
!1009 = !DILocation(line: 375, column: 10, scope: !1002)
!1010 = !DILocation(line: 375, column: 17, scope: !1002)
!1011 = !DILocation(line: 376, column: 5, scope: !1002)
!1012 = !DILocation(line: 378, column: 19, scope: !984)
!1013 = !DILocation(line: 378, column: 4, scope: !984)
!1014 = !DILocation(line: 378, column: 9, scope: !984)
!1015 = !DILocation(line: 378, column: 17, scope: !984)
!1016 = !DILocation(line: 379, column: 3, scope: !984)
!1017 = !DILocation(line: 381, column: 3, scope: !974)
!1018 = !DILocation(line: 382, column: 4, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !974, file: !8, line: 381, column: 6)
!1020 = !DILocation(line: 382, column: 4, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !8, line: 382, column: 4)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !8, line: 382, column: 4)
!1023 = !DILocation(line: 382, column: 4, scope: !1022)
!1024 = !DILocation(line: 383, column: 23, scope: !1019)
!1025 = !DILocation(line: 383, column: 30, scope: !1019)
!1026 = !DILocation(line: 383, column: 37, scope: !1019)
!1027 = !DILocation(line: 383, column: 42, scope: !1019)
!1028 = !DILocation(line: 383, column: 46, scope: !1019)
!1029 = !DILocation(line: 383, column: 9, scope: !1019)
!1030 = !DILocation(line: 383, column: 7, scope: !1019)
!1031 = !DILocation(line: 384, column: 18, scope: !1019)
!1032 = !DILocation(line: 384, column: 26, scope: !1019)
!1033 = !DILocation(line: 384, column: 24, scope: !1019)
!1034 = !DILocation(line: 384, column: 33, scope: !1019)
!1035 = !DILocation(line: 384, column: 38, scope: !1019)
!1036 = !DILocation(line: 384, column: 43, scope: !1019)
!1037 = !DILocation(line: 384, column: 41, scope: !1019)
!1038 = !DILocation(line: 384, column: 50, scope: !1019)
!1039 = !DILocation(line: 385, column: 11, scope: !1019)
!1040 = !DILocation(line: 384, column: 4, scope: !1019)
!1041 = !DILocation(line: 386, column: 13, scope: !1019)
!1042 = !DILocation(line: 386, column: 10, scope: !1019)
!1043 = !DILocation(line: 387, column: 10, scope: !1019)
!1044 = !DILocation(line: 387, column: 7, scope: !1019)
!1045 = !DILocation(line: 388, column: 13, scope: !1019)
!1046 = !DILocation(line: 388, column: 10, scope: !1019)
!1047 = !DILocation(line: 389, column: 3, scope: !1019)
!1048 = !DILocation(line: 389, column: 12, scope: !974)
!1049 = !DILocation(line: 389, column: 21, scope: !974)
!1050 = !DILocation(line: 389, column: 18, scope: !974)
!1051 = distinct !{!1051, !1017, !1052, !87, !88}
!1052 = !DILocation(line: 389, column: 26, scope: !974)
!1053 = !DILocation(line: 390, column: 2, scope: !974)
!1054 = !DILocation(line: 392, column: 6, scope: !914)
!1055 = !DILocation(line: 392, column: 6, scope: !891)
!1056 = !DILocation(line: 393, column: 7, scope: !912)
!1057 = !DILocation(line: 393, column: 13, scope: !912)
!1058 = !DILocation(line: 393, column: 7, scope: !913)
!1059 = !DILocation(line: 394, column: 4, scope: !911)
!1060 = !DILocation(line: 394, column: 15, scope: !911)
!1061 = !DILocation(line: 395, column: 20, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !911, file: !8, line: 395, column: 8)
!1063 = !DILocation(line: 395, column: 25, scope: !1062)
!1064 = !DILocation(line: 395, column: 33, scope: !1062)
!1065 = !DILocation(line: 395, column: 37, scope: !1062)
!1066 = !DILocation(line: 395, column: 44, scope: !1062)
!1067 = !DILocation(line: 395, column: 48, scope: !1062)
!1068 = !DILocation(line: 395, column: 8, scope: !1062)
!1069 = !DILocation(line: 396, column: 8, scope: !1062)
!1070 = !DILocation(line: 395, column: 8, scope: !911)
!1071 = !DILocation(line: 397, column: 5, scope: !1062)
!1072 = !DILocation(line: 398, column: 3, scope: !912)
!1073 = !DILocation(line: 398, column: 3, scope: !911)
!1074 = !DILocation(line: 399, column: 9, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !8, line: 399, column: 8)
!1076 = distinct !DILexicalBlock(scope: !912, file: !8, line: 398, column: 10)
!1077 = !DILocation(line: 399, column: 14, scope: !1075)
!1078 = !DILocation(line: 399, column: 8, scope: !1076)
!1079 = !DILocation(line: 400, column: 17, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1075, file: !8, line: 399, column: 20)
!1081 = !DILocation(line: 400, column: 5, scope: !1080)
!1082 = !DILocation(line: 400, column: 10, scope: !1080)
!1083 = !DILocation(line: 400, column: 15, scope: !1080)
!1084 = !DILocation(line: 401, column: 10, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !8, line: 401, column: 9)
!1086 = !DILocation(line: 401, column: 15, scope: !1085)
!1087 = !DILocation(line: 401, column: 9, scope: !1080)
!1088 = !DILocation(line: 402, column: 6, scope: !1085)
!1089 = !DILocation(line: 403, column: 4, scope: !1080)
!1090 = !DILocation(line: 404, column: 35, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1076, file: !8, line: 404, column: 8)
!1092 = !DILocation(line: 404, column: 40, scope: !1091)
!1093 = !DILocation(line: 405, column: 14, scope: !1091)
!1094 = !DILocation(line: 405, column: 18, scope: !1091)
!1095 = !DILocation(line: 406, column: 14, scope: !1091)
!1096 = !DILocation(line: 406, column: 18, scope: !1091)
!1097 = !DILocation(line: 407, column: 14, scope: !1091)
!1098 = !DILocation(line: 407, column: 19, scope: !1091)
!1099 = !DILocation(line: 404, column: 8, scope: !1091)
!1100 = !DILocation(line: 407, column: 25, scope: !1091)
!1101 = !DILocation(line: 404, column: 8, scope: !1076)
!1102 = !DILocation(line: 408, column: 5, scope: !1091)
!1103 = !DILocation(line: 411, column: 22, scope: !913)
!1104 = !DILocation(line: 411, column: 29, scope: !913)
!1105 = !DILocation(line: 411, column: 36, scope: !913)
!1106 = !DILocation(line: 411, column: 41, scope: !913)
!1107 = !DILocation(line: 411, column: 49, scope: !913)
!1108 = !DILocation(line: 411, column: 8, scope: !913)
!1109 = !DILocation(line: 411, column: 6, scope: !913)
!1110 = !DILocation(line: 412, column: 17, scope: !913)
!1111 = !DILocation(line: 412, column: 25, scope: !913)
!1112 = !DILocation(line: 412, column: 23, scope: !913)
!1113 = !DILocation(line: 412, column: 32, scope: !913)
!1114 = !DILocation(line: 412, column: 37, scope: !913)
!1115 = !DILocation(line: 412, column: 46, scope: !913)
!1116 = !DILocation(line: 412, column: 44, scope: !913)
!1117 = !DILocation(line: 412, column: 53, scope: !913)
!1118 = !DILocation(line: 412, column: 60, scope: !913)
!1119 = !DILocation(line: 412, column: 3, scope: !913)
!1120 = !DILocation(line: 413, column: 2, scope: !913)
!1121 = !DILocation(line: 415, column: 2, scope: !891)
!1122 = !DILocation(line: 416, column: 1, scope: !891)
!1123 = distinct !DISubprogram(name: "mpihelp_mul", scope: !8, file: !8, line: 452, type: !1124, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1126)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!48, !42, !42, !47, !42, !47, !44}
!1126 = !{!1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1139, !1140, !1145}
!1127 = !DILocalVariable(name: "prodp", arg: 1, scope: !1123, file: !8, line: 452, type: !42)
!1128 = !DILocalVariable(name: "up", arg: 2, scope: !1123, file: !8, line: 452, type: !42)
!1129 = !DILocalVariable(name: "usize", arg: 3, scope: !1123, file: !8, line: 452, type: !47)
!1130 = !DILocalVariable(name: "vp", arg: 4, scope: !1123, file: !8, line: 453, type: !42)
!1131 = !DILocalVariable(name: "vsize", arg: 5, scope: !1123, file: !8, line: 453, type: !47)
!1132 = !DILocalVariable(name: "_result", arg: 6, scope: !1123, file: !8, line: 453, type: !44)
!1133 = !DILocalVariable(name: "prod_endp", scope: !1123, file: !8, line: 455, type: !42)
!1134 = !DILocalVariable(name: "cy", scope: !1123, file: !8, line: 456, type: !45)
!1135 = !DILocalVariable(name: "ctx", scope: !1123, file: !8, line: 457, type: !895)
!1136 = !DILocalVariable(name: "i", scope: !1137, file: !8, line: 460, type: !47)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !8, line: 459, column: 35)
!1138 = distinct !DILexicalBlock(scope: !1123, file: !8, line: 459, column: 6)
!1139 = !DILocalVariable(name: "v_limb", scope: !1137, file: !8, line: 461, type: !45)
!1140 = !DILocalVariable(name: "_i", scope: !1141, file: !8, line: 473, type: !47)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !8, line: 473, column: 5)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !8, line: 472, column: 8)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !8, line: 471, column: 20)
!1144 = distinct !DILexicalBlock(scope: !1137, file: !8, line: 471, column: 7)
!1145 = !DILocalVariable(name: "_i", scope: !1146, file: !8, line: 475, type: !48)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !8, line: 475, column: 5)
!1147 = !DILocation(line: 452, column: 23, scope: !1123)
!1148 = !DILocation(line: 452, column: 40, scope: !1123)
!1149 = !DILocation(line: 452, column: 55, scope: !1123)
!1150 = !DILocation(line: 453, column: 16, scope: !1123)
!1151 = !DILocation(line: 453, column: 31, scope: !1123)
!1152 = !DILocation(line: 453, column: 50, scope: !1123)
!1153 = !DILocation(line: 455, column: 2, scope: !1123)
!1154 = !DILocation(line: 455, column: 12, scope: !1123)
!1155 = !DILocation(line: 455, column: 24, scope: !1123)
!1156 = !DILocation(line: 455, column: 32, scope: !1123)
!1157 = !DILocation(line: 455, column: 30, scope: !1123)
!1158 = !DILocation(line: 455, column: 40, scope: !1123)
!1159 = !DILocation(line: 455, column: 38, scope: !1123)
!1160 = !DILocation(line: 455, column: 46, scope: !1123)
!1161 = !DILocation(line: 456, column: 2, scope: !1123)
!1162 = !DILocation(line: 456, column: 13, scope: !1123)
!1163 = !DILocation(line: 457, column: 2, scope: !1123)
!1164 = !DILocation(line: 457, column: 23, scope: !1123)
!1165 = !DILocation(line: 459, column: 6, scope: !1138)
!1166 = !DILocation(line: 459, column: 12, scope: !1138)
!1167 = !DILocation(line: 459, column: 6, scope: !1123)
!1168 = !DILocation(line: 460, column: 3, scope: !1137)
!1169 = !DILocation(line: 460, column: 14, scope: !1137)
!1170 = !DILocation(line: 461, column: 3, scope: !1137)
!1171 = !DILocation(line: 461, column: 14, scope: !1137)
!1172 = !DILocation(line: 463, column: 8, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1137, file: !8, line: 463, column: 7)
!1174 = !DILocation(line: 463, column: 7, scope: !1137)
!1175 = !DILocation(line: 464, column: 5, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1173, file: !8, line: 463, column: 15)
!1177 = !DILocation(line: 464, column: 13, scope: !1176)
!1178 = !DILocation(line: 465, column: 4, scope: !1176)
!1179 = !DILocation(line: 470, column: 12, scope: !1137)
!1180 = !DILocation(line: 470, column: 10, scope: !1137)
!1181 = !DILocation(line: 471, column: 7, scope: !1144)
!1182 = !DILocation(line: 471, column: 14, scope: !1144)
!1183 = !DILocation(line: 471, column: 7, scope: !1137)
!1184 = !DILocation(line: 472, column: 8, scope: !1142)
!1185 = !DILocation(line: 472, column: 15, scope: !1142)
!1186 = !DILocation(line: 472, column: 8, scope: !1143)
!1187 = !DILocation(line: 473, column: 5, scope: !1142)
!1188 = !DILocation(line: 473, column: 5, scope: !1141)
!1189 = !DILocation(line: 473, column: 5, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1141, file: !8, line: 473, column: 5)
!1191 = !DILocation(line: 473, column: 5, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1190, file: !8, line: 473, column: 5)
!1193 = distinct !{!1193, !1189, !1189, !87, !88}
!1194 = !DILocation(line: 475, column: 5, scope: !1142)
!1195 = !DILocation(line: 475, column: 5, scope: !1146)
!1196 = !DILocation(line: 475, column: 5, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1146, file: !8, line: 475, column: 5)
!1198 = !DILocation(line: 475, column: 5, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1197, file: !8, line: 475, column: 5)
!1200 = distinct !{!1200, !1196, !1196, !87, !88}
!1201 = !DILocation(line: 476, column: 7, scope: !1143)
!1202 = !DILocation(line: 477, column: 3, scope: !1143)
!1203 = !DILocation(line: 478, column: 23, scope: !1144)
!1204 = !DILocation(line: 478, column: 30, scope: !1144)
!1205 = !DILocation(line: 478, column: 34, scope: !1144)
!1206 = !DILocation(line: 478, column: 41, scope: !1144)
!1207 = !DILocation(line: 478, column: 9, scope: !1144)
!1208 = !DILocation(line: 478, column: 7, scope: !1144)
!1209 = !DILocation(line: 480, column: 18, scope: !1137)
!1210 = !DILocation(line: 480, column: 3, scope: !1137)
!1211 = !DILocation(line: 480, column: 9, scope: !1137)
!1212 = !DILocation(line: 480, column: 16, scope: !1137)
!1213 = !DILocation(line: 481, column: 8, scope: !1137)
!1214 = !DILocation(line: 485, column: 10, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1137, file: !8, line: 485, column: 3)
!1216 = !DILocation(line: 485, column: 8, scope: !1215)
!1217 = !DILocation(line: 485, column: 15, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !8, line: 485, column: 3)
!1219 = !DILocation(line: 485, column: 19, scope: !1218)
!1220 = !DILocation(line: 485, column: 17, scope: !1218)
!1221 = !DILocation(line: 485, column: 3, scope: !1215)
!1222 = !DILocation(line: 486, column: 13, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !8, line: 485, column: 31)
!1224 = !DILocation(line: 486, column: 16, scope: !1223)
!1225 = !DILocation(line: 486, column: 11, scope: !1223)
!1226 = !DILocation(line: 487, column: 8, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !8, line: 487, column: 8)
!1228 = !DILocation(line: 487, column: 15, scope: !1227)
!1229 = !DILocation(line: 487, column: 8, scope: !1223)
!1230 = !DILocation(line: 488, column: 8, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !8, line: 487, column: 21)
!1232 = !DILocation(line: 489, column: 9, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1231, file: !8, line: 489, column: 9)
!1234 = !DILocation(line: 489, column: 16, scope: !1233)
!1235 = !DILocation(line: 489, column: 9, scope: !1231)
!1236 = !DILocation(line: 490, column: 25, scope: !1233)
!1237 = !DILocation(line: 490, column: 32, scope: !1233)
!1238 = !DILocation(line: 490, column: 39, scope: !1233)
!1239 = !DILocation(line: 491, column: 11, scope: !1233)
!1240 = !DILocation(line: 490, column: 11, scope: !1233)
!1241 = !DILocation(line: 490, column: 9, scope: !1233)
!1242 = !DILocation(line: 490, column: 6, scope: !1233)
!1243 = !DILocation(line: 492, column: 4, scope: !1231)
!1244 = !DILocation(line: 493, column: 27, scope: !1227)
!1245 = !DILocation(line: 493, column: 34, scope: !1227)
!1246 = !DILocation(line: 493, column: 38, scope: !1227)
!1247 = !DILocation(line: 493, column: 45, scope: !1227)
!1248 = !DILocation(line: 493, column: 10, scope: !1227)
!1249 = !DILocation(line: 493, column: 8, scope: !1227)
!1250 = !DILocation(line: 495, column: 19, scope: !1223)
!1251 = !DILocation(line: 495, column: 4, scope: !1223)
!1252 = !DILocation(line: 495, column: 10, scope: !1223)
!1253 = !DILocation(line: 495, column: 17, scope: !1223)
!1254 = !DILocation(line: 496, column: 9, scope: !1223)
!1255 = !DILocation(line: 497, column: 3, scope: !1223)
!1256 = !DILocation(line: 485, column: 27, scope: !1218)
!1257 = !DILocation(line: 485, column: 3, scope: !1218)
!1258 = distinct !{!1258, !1221, !1259, !87, !88}
!1259 = !DILocation(line: 497, column: 3, scope: !1215)
!1260 = !DILocation(line: 499, column: 14, scope: !1137)
!1261 = !DILocation(line: 499, column: 4, scope: !1137)
!1262 = !DILocation(line: 499, column: 12, scope: !1137)
!1263 = !DILocation(line: 500, column: 3, scope: !1137)
!1264 = !DILocation(line: 501, column: 2, scope: !1138)
!1265 = !DILocation(line: 503, column: 2, scope: !1123)
!1266 = !DILocation(line: 504, column: 33, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1123, file: !8, line: 504, column: 6)
!1268 = !DILocation(line: 504, column: 40, scope: !1267)
!1269 = !DILocation(line: 504, column: 44, scope: !1267)
!1270 = !DILocation(line: 504, column: 51, scope: !1267)
!1271 = !DILocation(line: 504, column: 55, scope: !1267)
!1272 = !DILocation(line: 504, column: 6, scope: !1267)
!1273 = !DILocation(line: 504, column: 68, scope: !1267)
!1274 = !DILocation(line: 504, column: 6, scope: !1123)
!1275 = !DILocation(line: 505, column: 3, scope: !1267)
!1276 = !DILocation(line: 506, column: 2, scope: !1123)
!1277 = !DILocation(line: 507, column: 14, scope: !1123)
!1278 = !DILocation(line: 507, column: 13, scope: !1123)
!1279 = !DILocation(line: 507, column: 3, scope: !1123)
!1280 = !DILocation(line: 507, column: 11, scope: !1123)
!1281 = !DILocation(line: 508, column: 2, scope: !1123)
!1282 = !DILocation(line: 509, column: 1, scope: !1123)
!1283 = distinct !DISubprogram(name: "kzalloc", scope: !2, file: !2, line: 719, type: !1284, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1291)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!1286, !1287, !26}
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 61, baseType: !1288)
!1288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1289, line: 72, baseType: !1290)
!1289 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1289, line: 16, baseType: !28)
!1291 = !{!1292, !1293}
!1292 = !DILocalVariable(name: "size", arg: 1, scope: !1283, file: !2, line: 719, type: !1287)
!1293 = !DILocalVariable(name: "flags", arg: 2, scope: !1283, file: !2, line: 719, type: !26)
!1294 = !DILocation(line: 719, column: 52, scope: !1283)
!1295 = !DILocation(line: 719, column: 64, scope: !1283)
!1296 = !DILocation(line: 721, column: 17, scope: !1283)
!1297 = !DILocation(line: 721, column: 23, scope: !1283)
!1298 = !DILocation(line: 721, column: 29, scope: !1283)
!1299 = !DILocation(line: 721, column: 9, scope: !1283)
!1300 = !DILocation(line: 721, column: 2, scope: !1283)
!1301 = distinct !DISubprogram(name: "mpihelp_release_karatsuba_ctx", scope: !8, file: !8, line: 418, type: !1302, scopeLine: 419, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1304)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{null, !894}
!1304 = !{!1305, !1306}
!1305 = !DILocalVariable(name: "ctx", arg: 1, scope: !1301, file: !8, line: 418, type: !894)
!1306 = !DILocalVariable(name: "ctx2", scope: !1301, file: !8, line: 420, type: !894)
!1307 = !DILocation(line: 418, column: 58, scope: !1301)
!1308 = !DILocation(line: 420, column: 2, scope: !1301)
!1309 = !DILocation(line: 420, column: 24, scope: !1301)
!1310 = !DILocation(line: 422, column: 6, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1301, file: !8, line: 422, column: 6)
!1312 = !DILocation(line: 422, column: 11, scope: !1311)
!1313 = !DILocation(line: 422, column: 6, scope: !1301)
!1314 = !DILocation(line: 423, column: 23, scope: !1311)
!1315 = !DILocation(line: 423, column: 28, scope: !1311)
!1316 = !DILocation(line: 423, column: 3, scope: !1311)
!1317 = !DILocation(line: 424, column: 6, scope: !1318)
!1318 = distinct !DILexicalBlock(scope: !1301, file: !8, line: 424, column: 6)
!1319 = !DILocation(line: 424, column: 11, scope: !1318)
!1320 = !DILocation(line: 424, column: 6, scope: !1301)
!1321 = !DILocation(line: 425, column: 23, scope: !1318)
!1322 = !DILocation(line: 425, column: 28, scope: !1318)
!1323 = !DILocation(line: 425, column: 3, scope: !1318)
!1324 = !DILocation(line: 426, column: 13, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1301, file: !8, line: 426, column: 2)
!1326 = !DILocation(line: 426, column: 18, scope: !1325)
!1327 = !DILocation(line: 426, column: 11, scope: !1325)
!1328 = !DILocation(line: 426, column: 7, scope: !1325)
!1329 = !DILocation(line: 426, column: 24, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1325, file: !8, line: 426, column: 2)
!1331 = !DILocation(line: 426, column: 2, scope: !1325)
!1332 = !DILocation(line: 427, column: 10, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1330, file: !8, line: 426, column: 41)
!1334 = !DILocation(line: 427, column: 15, scope: !1333)
!1335 = !DILocation(line: 427, column: 8, scope: !1333)
!1336 = !DILocation(line: 428, column: 7, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1333, file: !8, line: 428, column: 7)
!1338 = !DILocation(line: 428, column: 12, scope: !1337)
!1339 = !DILocation(line: 428, column: 7, scope: !1333)
!1340 = !DILocation(line: 429, column: 24, scope: !1337)
!1341 = !DILocation(line: 429, column: 29, scope: !1337)
!1342 = !DILocation(line: 429, column: 4, scope: !1337)
!1343 = !DILocation(line: 430, column: 7, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1333, file: !8, line: 430, column: 7)
!1345 = !DILocation(line: 430, column: 12, scope: !1344)
!1346 = !DILocation(line: 430, column: 7, scope: !1333)
!1347 = !DILocation(line: 431, column: 24, scope: !1344)
!1348 = !DILocation(line: 431, column: 29, scope: !1344)
!1349 = !DILocation(line: 431, column: 4, scope: !1344)
!1350 = !DILocation(line: 432, column: 9, scope: !1333)
!1351 = !DILocation(line: 432, column: 3, scope: !1333)
!1352 = !DILocation(line: 433, column: 2, scope: !1333)
!1353 = !DILocation(line: 426, column: 35, scope: !1330)
!1354 = !DILocation(line: 426, column: 33, scope: !1330)
!1355 = !DILocation(line: 426, column: 2, scope: !1330)
!1356 = distinct !{!1356, !1331, !1357, !87, !88}
!1357 = !DILocation(line: 433, column: 2, scope: !1325)
!1358 = !DILocation(line: 434, column: 1, scope: !1301)
!1359 = !DISubprogram(name: "kfree", scope: !2, file: !2, line: 227, type: !1360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !1362}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1364 = distinct !DISubprogram(name: "kmalloc", scope: !2, file: !2, line: 591, type: !1284, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1365)
!1365 = !{!1366, !1367, !1368}
!1366 = !DILocalVariable(name: "size", arg: 1, scope: !1364, file: !2, line: 591, type: !1287)
!1367 = !DILocalVariable(name: "flags", arg: 2, scope: !1364, file: !2, line: 591, type: !26)
!1368 = !DILocalVariable(name: "index", scope: !1369, file: !2, line: 594, type: !12)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !2, line: 593, column: 42)
!1370 = distinct !DILexicalBlock(scope: !1364, file: !2, line: 593, column: 6)
!1371 = !DILocation(line: 591, column: 61, scope: !1364)
!1372 = !DILocation(line: 591, column: 73, scope: !1364)
!1373 = !DILocation(line: 593, column: 27, scope: !1370)
!1374 = !DILocation(line: 593, column: 6, scope: !1370)
!1375 = !DILocation(line: 593, column: 33, scope: !1370)
!1376 = !DILocation(line: 593, column: 36, scope: !1370)
!1377 = !DILocation(line: 593, column: 6, scope: !1364)
!1378 = !DILocation(line: 594, column: 3, scope: !1369)
!1379 = !DILocation(line: 594, column: 16, scope: !1369)
!1380 = !DILocation(line: 596, column: 7, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 596, column: 7)
!1382 = !DILocation(line: 596, column: 12, scope: !1381)
!1383 = !DILocation(line: 596, column: 7, scope: !1369)
!1384 = !DILocation(line: 597, column: 25, scope: !1381)
!1385 = !DILocation(line: 597, column: 31, scope: !1381)
!1386 = !DILocation(line: 597, column: 11, scope: !1381)
!1387 = !DILocation(line: 597, column: 4, scope: !1381)
!1388 = !DILocation(line: 599, column: 11, scope: !1369)
!1389 = !DILocation(line: 599, column: 9, scope: !1369)
!1390 = !DILocation(line: 601, column: 33, scope: !1369)
!1391 = !DILocation(line: 601, column: 40, scope: !1369)
!1392 = !DILocation(line: 601, column: 20, scope: !1369)
!1393 = !DILocation(line: 601, column: 5, scope: !1369)
!1394 = !DILocation(line: 601, column: 51, scope: !1369)
!1395 = !DILocation(line: 602, column: 5, scope: !1369)
!1396 = !DILocation(line: 602, column: 12, scope: !1369)
!1397 = !DILocation(line: 600, column: 10, scope: !1369)
!1398 = !DILocation(line: 600, column: 3, scope: !1369)
!1399 = !DILocation(line: 603, column: 2, scope: !1370)
!1400 = !DILocation(line: 604, column: 19, scope: !1364)
!1401 = !DILocation(line: 604, column: 25, scope: !1364)
!1402 = !DILocation(line: 604, column: 9, scope: !1364)
!1403 = !DILocation(line: 604, column: 2, scope: !1364)
!1404 = !DILocation(line: 605, column: 1, scope: !1364)
!1405 = !DISubprogram(name: "kmalloc_large", scope: !2, file: !2, line: 531, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1406 = distinct !DISubprogram(name: "__kmalloc_index", scope: !2, file: !2, line: 444, type: !1407, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1411)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!12, !1287, !1409}
!1409 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !27, line: 35, baseType: !1410)
!1410 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1411 = !{!1412, !1413}
!1412 = !DILocalVariable(name: "size", arg: 1, scope: !1406, file: !2, line: 444, type: !1287)
!1413 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1406, file: !2, line: 445, type: !1409)
!1414 = !DILocation(line: 444, column: 60, scope: !1406)
!1415 = !DILocation(line: 445, column: 16, scope: !1406)
!1416 = !DILocation(line: 447, column: 7, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 447, column: 6)
!1418 = !DILocation(line: 447, column: 6, scope: !1406)
!1419 = !DILocation(line: 448, column: 3, scope: !1417)
!1420 = !DILocation(line: 450, column: 6, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 450, column: 6)
!1422 = !DILocation(line: 450, column: 11, scope: !1421)
!1423 = !DILocation(line: 450, column: 6, scope: !1406)
!1424 = !DILocation(line: 451, column: 3, scope: !1421)
!1425 = !DILocation(line: 453, column: 32, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 453, column: 6)
!1427 = !DILocation(line: 453, column: 37, scope: !1426)
!1428 = !DILocation(line: 453, column: 42, scope: !1426)
!1429 = !DILocation(line: 453, column: 45, scope: !1426)
!1430 = !DILocation(line: 453, column: 50, scope: !1426)
!1431 = !DILocation(line: 453, column: 6, scope: !1406)
!1432 = !DILocation(line: 454, column: 3, scope: !1426)
!1433 = !DILocation(line: 455, column: 32, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 455, column: 6)
!1435 = !DILocation(line: 455, column: 37, scope: !1434)
!1436 = !DILocation(line: 455, column: 43, scope: !1434)
!1437 = !DILocation(line: 455, column: 46, scope: !1434)
!1438 = !DILocation(line: 455, column: 51, scope: !1434)
!1439 = !DILocation(line: 455, column: 6, scope: !1406)
!1440 = !DILocation(line: 456, column: 3, scope: !1434)
!1441 = !DILocation(line: 457, column: 6, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 457, column: 6)
!1443 = !DILocation(line: 457, column: 11, scope: !1442)
!1444 = !DILocation(line: 457, column: 6, scope: !1406)
!1445 = !DILocation(line: 457, column: 26, scope: !1442)
!1446 = !DILocation(line: 458, column: 6, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 458, column: 6)
!1448 = !DILocation(line: 458, column: 11, scope: !1447)
!1449 = !DILocation(line: 458, column: 6, scope: !1406)
!1450 = !DILocation(line: 458, column: 26, scope: !1447)
!1451 = !DILocation(line: 459, column: 6, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 459, column: 6)
!1453 = !DILocation(line: 459, column: 11, scope: !1452)
!1454 = !DILocation(line: 459, column: 6, scope: !1406)
!1455 = !DILocation(line: 459, column: 26, scope: !1452)
!1456 = !DILocation(line: 460, column: 6, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 460, column: 6)
!1458 = !DILocation(line: 460, column: 11, scope: !1457)
!1459 = !DILocation(line: 460, column: 6, scope: !1406)
!1460 = !DILocation(line: 460, column: 26, scope: !1457)
!1461 = !DILocation(line: 461, column: 6, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 461, column: 6)
!1463 = !DILocation(line: 461, column: 11, scope: !1462)
!1464 = !DILocation(line: 461, column: 6, scope: !1406)
!1465 = !DILocation(line: 461, column: 26, scope: !1462)
!1466 = !DILocation(line: 462, column: 6, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 462, column: 6)
!1468 = !DILocation(line: 462, column: 11, scope: !1467)
!1469 = !DILocation(line: 462, column: 6, scope: !1406)
!1470 = !DILocation(line: 462, column: 26, scope: !1467)
!1471 = !DILocation(line: 463, column: 6, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 463, column: 6)
!1473 = !DILocation(line: 463, column: 11, scope: !1472)
!1474 = !DILocation(line: 463, column: 6, scope: !1406)
!1475 = !DILocation(line: 463, column: 26, scope: !1472)
!1476 = !DILocation(line: 464, column: 6, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 464, column: 6)
!1478 = !DILocation(line: 464, column: 11, scope: !1477)
!1479 = !DILocation(line: 464, column: 6, scope: !1406)
!1480 = !DILocation(line: 464, column: 26, scope: !1477)
!1481 = !DILocation(line: 465, column: 6, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 465, column: 6)
!1483 = !DILocation(line: 465, column: 11, scope: !1482)
!1484 = !DILocation(line: 465, column: 6, scope: !1406)
!1485 = !DILocation(line: 465, column: 26, scope: !1482)
!1486 = !DILocation(line: 466, column: 6, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 466, column: 6)
!1488 = !DILocation(line: 466, column: 11, scope: !1487)
!1489 = !DILocation(line: 466, column: 6, scope: !1406)
!1490 = !DILocation(line: 466, column: 26, scope: !1487)
!1491 = !DILocation(line: 467, column: 6, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 467, column: 6)
!1493 = !DILocation(line: 467, column: 11, scope: !1492)
!1494 = !DILocation(line: 467, column: 6, scope: !1406)
!1495 = !DILocation(line: 467, column: 26, scope: !1492)
!1496 = !DILocation(line: 468, column: 6, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 468, column: 6)
!1498 = !DILocation(line: 468, column: 11, scope: !1497)
!1499 = !DILocation(line: 468, column: 6, scope: !1406)
!1500 = !DILocation(line: 468, column: 26, scope: !1497)
!1501 = !DILocation(line: 469, column: 6, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 469, column: 6)
!1503 = !DILocation(line: 469, column: 11, scope: !1502)
!1504 = !DILocation(line: 469, column: 6, scope: !1406)
!1505 = !DILocation(line: 469, column: 26, scope: !1502)
!1506 = !DILocation(line: 470, column: 6, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 470, column: 6)
!1508 = !DILocation(line: 470, column: 11, scope: !1507)
!1509 = !DILocation(line: 470, column: 6, scope: !1406)
!1510 = !DILocation(line: 470, column: 26, scope: !1507)
!1511 = !DILocation(line: 471, column: 6, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 471, column: 6)
!1513 = !DILocation(line: 471, column: 11, scope: !1512)
!1514 = !DILocation(line: 471, column: 6, scope: !1406)
!1515 = !DILocation(line: 471, column: 26, scope: !1512)
!1516 = !DILocation(line: 472, column: 6, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 472, column: 6)
!1518 = !DILocation(line: 472, column: 11, scope: !1517)
!1519 = !DILocation(line: 472, column: 6, scope: !1406)
!1520 = !DILocation(line: 472, column: 26, scope: !1517)
!1521 = !DILocation(line: 473, column: 6, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 473, column: 6)
!1523 = !DILocation(line: 473, column: 11, scope: !1522)
!1524 = !DILocation(line: 473, column: 6, scope: !1406)
!1525 = !DILocation(line: 473, column: 26, scope: !1522)
!1526 = !DILocation(line: 474, column: 6, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 474, column: 6)
!1528 = !DILocation(line: 474, column: 11, scope: !1527)
!1529 = !DILocation(line: 474, column: 6, scope: !1406)
!1530 = !DILocation(line: 474, column: 27, scope: !1527)
!1531 = !DILocation(line: 475, column: 6, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 475, column: 6)
!1533 = !DILocation(line: 475, column: 11, scope: !1532)
!1534 = !DILocation(line: 475, column: 6, scope: !1406)
!1535 = !DILocation(line: 475, column: 32, scope: !1532)
!1536 = !DILocation(line: 477, column: 50, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 477, column: 6)
!1538 = !{i8 0, i8 2}
!1539 = !{}
!1540 = !DILocation(line: 477, column: 6, scope: !1406)
!1541 = !DILocation(line: 478, column: 3, scope: !1537)
!1542 = !DILocation(line: 478, column: 3, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !2, line: 478, column: 3)
!1544 = distinct !DILexicalBlock(scope: !1537, file: !2, line: 478, column: 3)
!1545 = !{i32 -2142583281}
!1546 = !DILocation(line: 478, column: 3, scope: !1544)
!1547 = !DILocation(line: 480, column: 3, scope: !1537)
!1548 = !DILocation(line: 480, column: 3, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1537, file: !2, line: 480, column: 3)
!1550 = !DILocation(line: 480, column: 3, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 480, column: 3)
!1552 = !DILocation(line: 480, column: 3, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 480, column: 3)
!1554 = !{i64 2152384218, i64 2152384247, i64 2152384293, i64 2152384351, i64 2152384405, i64 2152384459, i64 2152384514, i64 2152384545}
!1555 = !DILocation(line: 483, column: 2, scope: !1406)
!1556 = !DILocation(line: 484, column: 1, scope: !1406)
!1557 = !DISubprogram(name: "kmalloc_trace", scope: !2, file: !2, line: 525, type: !1558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!1286, !1560, !26, !1287}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1562, line: 11, flags: DIFlagFwdDecl)
!1562 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1563 = distinct !DISubprogram(name: "kmalloc_type", scope: !2, file: !2, line: 401, type: !1564, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, retainedNodes: !1566)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!16, !26, !28}
!1566 = !{!1567, !1568}
!1567 = !DILocalVariable(name: "flags", arg: 1, scope: !1563, file: !2, line: 401, type: !26)
!1568 = !DILocalVariable(name: "caller", arg: 2, scope: !1563, file: !2, line: 401, type: !28)
!1569 = !DILocation(line: 401, column: 67, scope: !1563)
!1570 = !DILocation(line: 401, column: 88, scope: !1563)
!1571 = !DILocation(line: 407, column: 6, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 407, column: 6)
!1573 = !DILocation(line: 407, column: 6, scope: !1563)
!1574 = !DILocation(line: 413, column: 3, scope: !1572)
!1575 = !DILocation(line: 423, column: 38, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 423, column: 6)
!1577 = !DILocation(line: 423, column: 44, scope: !1576)
!1578 = !DILocation(line: 423, column: 6, scope: !1563)
!1579 = !DILocation(line: 424, column: 3, scope: !1576)
!1580 = !DILocation(line: 426, column: 3, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 425, column: 6)
!1582 = !DILocation(line: 429, column: 1, scope: !1563)
!1583 = !DISubprogram(name: "__kmalloc", scope: !2, file: !2, line: 488, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1584 = !DISubprogram(name: "__compiletime_assert_196", scope: !2, file: !2, line: 478, type: !1585, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null}
