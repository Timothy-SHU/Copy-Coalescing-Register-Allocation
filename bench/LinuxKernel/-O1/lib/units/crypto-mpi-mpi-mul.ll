; ModuleID = 'lib/crypto/mpi/mpi-mul.c'
source_filename = "lib/crypto/mpi/mpi-mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_mul: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_mul ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_mulm: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_mulm ; .previous"

%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__UNIQUE_ID___addressable_mpi_mul287 = internal global ptr @mpi_mul, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_mpi_mulm288 = internal global ptr @mpi_mulm, section ".discard.addressable", align 8, !dbg !7
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_mpi_mul287, ptr @__UNIQUE_ID___addressable_mpi_mulm288], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_mul(ptr noundef %w, ptr noundef %u, ptr noundef %v) #0 align 16 !dbg !18 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %usize = alloca i32, align 4
  %vsize = alloca i32, align 4
  %wsize = alloca i32, align 4
  %up = alloca ptr, align 8
  %vp = alloca ptr, align 8
  %wp = alloca ptr, align 8
  %cy = alloca i64, align 8
  %usign = alloca i32, align 4
  %vsign = alloca i32, align 4
  %sign_product = alloca i32, align 4
  %assign_wp = alloca i32, align 4
  %tmp_limb = alloca ptr, align 8
  %_i = alloca i32, align 4
  %_i37 = alloca i32, align 4
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !38, metadata !DIExpression()), !dbg !66
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !39, metadata !DIExpression()), !dbg !67
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !40, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 4, ptr %usize) #4, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %usize, metadata !41, metadata !DIExpression()), !dbg !70
  call void @llvm.lifetime.start.p0(i64 4, ptr %vsize) #4, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %vsize, metadata !44, metadata !DIExpression()), !dbg !71
  call void @llvm.lifetime.start.p0(i64 4, ptr %wsize) #4, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %wsize, metadata !45, metadata !DIExpression()), !dbg !72
  call void @llvm.lifetime.start.p0(i64 8, ptr %up) #4, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %up, metadata !46, metadata !DIExpression()), !dbg !74
  call void @llvm.lifetime.start.p0(i64 8, ptr %vp) #4, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %vp, metadata !48, metadata !DIExpression()), !dbg !75
  call void @llvm.lifetime.start.p0(i64 8, ptr %wp) #4, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %wp, metadata !49, metadata !DIExpression()), !dbg !76
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy) #4, !dbg !77
  call void @llvm.dbg.declare(metadata ptr %cy, metadata !50, metadata !DIExpression()), !dbg !78
  call void @llvm.lifetime.start.p0(i64 4, ptr %usign) #4, !dbg !79
  call void @llvm.dbg.declare(metadata ptr %usign, metadata !51, metadata !DIExpression()), !dbg !80
  call void @llvm.lifetime.start.p0(i64 4, ptr %vsign) #4, !dbg !79
  call void @llvm.dbg.declare(metadata ptr %vsign, metadata !52, metadata !DIExpression()), !dbg !81
  call void @llvm.lifetime.start.p0(i64 4, ptr %sign_product) #4, !dbg !79
  call void @llvm.dbg.declare(metadata ptr %sign_product, metadata !53, metadata !DIExpression()), !dbg !82
  call void @llvm.lifetime.start.p0(i64 4, ptr %assign_wp) #4, !dbg !83
  call void @llvm.dbg.declare(metadata ptr %assign_wp, metadata !54, metadata !DIExpression()), !dbg !84
  store i32 0, ptr %assign_wp, align 4, !dbg !84
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp_limb) #4, !dbg !85
  call void @llvm.dbg.declare(metadata ptr %tmp_limb, metadata !55, metadata !DIExpression()), !dbg !86
  store ptr null, ptr %tmp_limb, align 8, !dbg !86
  %0 = load ptr, ptr %u.addr, align 8, !dbg !87
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1, !dbg !89
  %1 = load i32, ptr %nlimbs, align 4, !dbg !89
  %2 = load ptr, ptr %v.addr, align 8, !dbg !90
  %nlimbs1 = getelementptr inbounds %struct.gcry_mpi, ptr %2, i32 0, i32 1, !dbg !91
  %3 = load i32, ptr %nlimbs1, align 4, !dbg !91
  %cmp = icmp slt i32 %1, %3, !dbg !92
  br i1 %cmp, label %if.then, label %if.else, !dbg !93

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %v.addr, align 8, !dbg !94
  %nlimbs2 = getelementptr inbounds %struct.gcry_mpi, ptr %4, i32 0, i32 1, !dbg !96
  %5 = load i32, ptr %nlimbs2, align 4, !dbg !96
  store i32 %5, ptr %usize, align 4, !dbg !97
  %6 = load ptr, ptr %v.addr, align 8, !dbg !98
  %sign = getelementptr inbounds %struct.gcry_mpi, ptr %6, i32 0, i32 3, !dbg !99
  %7 = load i32, ptr %sign, align 4, !dbg !99
  store i32 %7, ptr %usign, align 4, !dbg !100
  %8 = load ptr, ptr %v.addr, align 8, !dbg !101
  %d = getelementptr inbounds %struct.gcry_mpi, ptr %8, i32 0, i32 5, !dbg !102
  %9 = load ptr, ptr %d, align 8, !dbg !102
  store ptr %9, ptr %up, align 8, !dbg !103
  %10 = load ptr, ptr %u.addr, align 8, !dbg !104
  %nlimbs3 = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 1, !dbg !105
  %11 = load i32, ptr %nlimbs3, align 4, !dbg !105
  store i32 %11, ptr %vsize, align 4, !dbg !106
  %12 = load ptr, ptr %u.addr, align 8, !dbg !107
  %sign4 = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 3, !dbg !108
  %13 = load i32, ptr %sign4, align 4, !dbg !108
  store i32 %13, ptr %vsign, align 4, !dbg !109
  %14 = load ptr, ptr %u.addr, align 8, !dbg !110
  %d5 = getelementptr inbounds %struct.gcry_mpi, ptr %14, i32 0, i32 5, !dbg !111
  %15 = load ptr, ptr %d5, align 8, !dbg !111
  store ptr %15, ptr %vp, align 8, !dbg !112
  br label %if.end, !dbg !113

if.else:                                          ; preds = %entry
  %16 = load ptr, ptr %u.addr, align 8, !dbg !114
  %nlimbs6 = getelementptr inbounds %struct.gcry_mpi, ptr %16, i32 0, i32 1, !dbg !116
  %17 = load i32, ptr %nlimbs6, align 4, !dbg !116
  store i32 %17, ptr %usize, align 4, !dbg !117
  %18 = load ptr, ptr %u.addr, align 8, !dbg !118
  %sign7 = getelementptr inbounds %struct.gcry_mpi, ptr %18, i32 0, i32 3, !dbg !119
  %19 = load i32, ptr %sign7, align 4, !dbg !119
  store i32 %19, ptr %usign, align 4, !dbg !120
  %20 = load ptr, ptr %u.addr, align 8, !dbg !121
  %d8 = getelementptr inbounds %struct.gcry_mpi, ptr %20, i32 0, i32 5, !dbg !122
  %21 = load ptr, ptr %d8, align 8, !dbg !122
  store ptr %21, ptr %up, align 8, !dbg !123
  %22 = load ptr, ptr %v.addr, align 8, !dbg !124
  %nlimbs9 = getelementptr inbounds %struct.gcry_mpi, ptr %22, i32 0, i32 1, !dbg !125
  %23 = load i32, ptr %nlimbs9, align 4, !dbg !125
  store i32 %23, ptr %vsize, align 4, !dbg !126
  %24 = load ptr, ptr %v.addr, align 8, !dbg !127
  %sign10 = getelementptr inbounds %struct.gcry_mpi, ptr %24, i32 0, i32 3, !dbg !128
  %25 = load i32, ptr %sign10, align 4, !dbg !128
  store i32 %25, ptr %vsign, align 4, !dbg !129
  %26 = load ptr, ptr %v.addr, align 8, !dbg !130
  %d11 = getelementptr inbounds %struct.gcry_mpi, ptr %26, i32 0, i32 5, !dbg !131
  %27 = load ptr, ptr %d11, align 8, !dbg !131
  store ptr %27, ptr %vp, align 8, !dbg !132
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %28 = load i32, ptr %usign, align 4, !dbg !133
  %29 = load i32, ptr %vsign, align 4, !dbg !134
  %xor = xor i32 %28, %29, !dbg !135
  store i32 %xor, ptr %sign_product, align 4, !dbg !136
  %30 = load ptr, ptr %w.addr, align 8, !dbg !137
  %d12 = getelementptr inbounds %struct.gcry_mpi, ptr %30, i32 0, i32 5, !dbg !138
  %31 = load ptr, ptr %d12, align 8, !dbg !138
  store ptr %31, ptr %wp, align 8, !dbg !139
  %32 = load i32, ptr %usize, align 4, !dbg !140
  %33 = load i32, ptr %vsize, align 4, !dbg !141
  %add = add i32 %32, %33, !dbg !142
  store i32 %add, ptr %wsize, align 4, !dbg !143
  %34 = load ptr, ptr %w.addr, align 8, !dbg !144
  %alloced = getelementptr inbounds %struct.gcry_mpi, ptr %34, i32 0, i32 0, !dbg !145
  %35 = load i32, ptr %alloced, align 8, !dbg !145
  %36 = load i32, ptr %wsize, align 4, !dbg !146
  %cmp13 = icmp slt i32 %35, %36, !dbg !147
  br i1 %cmp13, label %if.then14, label %if.else22, !dbg !148

if.then14:                                        ; preds = %if.end
  %37 = load ptr, ptr %wp, align 8, !dbg !149
  %38 = load ptr, ptr %up, align 8, !dbg !152
  %cmp15 = icmp eq ptr %37, %38, !dbg !153
  br i1 %cmp15, label %if.then17, label %lor.lhs.false, !dbg !154

lor.lhs.false:                                    ; preds = %if.then14
  %39 = load ptr, ptr %wp, align 8, !dbg !155
  %40 = load ptr, ptr %vp, align 8, !dbg !156
  %cmp16 = icmp eq ptr %39, %40, !dbg !157
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !158

if.then17:                                        ; preds = %lor.lhs.false, %if.then14
  %41 = load i32, ptr %wsize, align 4, !dbg !159
  %call = call ptr @mpi_alloc_limb_space(i32 noundef %41) #5, !dbg !161
  store ptr %call, ptr %wp, align 8, !dbg !162
  store i32 1, ptr %assign_wp, align 4, !dbg !163
  br label %if.end21, !dbg !164

if.else18:                                        ; preds = %lor.lhs.false
  %42 = load ptr, ptr %w.addr, align 8, !dbg !165
  %43 = load i32, ptr %wsize, align 4, !dbg !167
  %call19 = call i32 @mpi_resize(ptr noundef %42, i32 noundef %43) #5, !dbg !168
  %44 = load ptr, ptr %w.addr, align 8, !dbg !169
  %d20 = getelementptr inbounds %struct.gcry_mpi, ptr %44, i32 0, i32 5, !dbg !170
  %45 = load ptr, ptr %d20, align 8, !dbg !170
  store ptr %45, ptr %wp, align 8, !dbg !171
  br label %if.end21

if.end21:                                         ; preds = %if.else18, %if.then17
  br label %if.end52, !dbg !172

if.else22:                                        ; preds = %if.end
  %46 = load ptr, ptr %wp, align 8, !dbg !173
  %47 = load ptr, ptr %up, align 8, !dbg !174
  %cmp23 = icmp eq ptr %46, %47, !dbg !175
  br i1 %cmp23, label %if.then24, label %if.else32, !dbg !176

if.then24:                                        ; preds = %if.else22
  %48 = load i32, ptr %usize, align 4, !dbg !177
  %call25 = call ptr @mpi_alloc_limb_space(i32 noundef %48) #5, !dbg !178
  store ptr %call25, ptr %tmp_limb, align 8, !dbg !179
  store ptr %call25, ptr %up, align 8, !dbg !180
  %49 = load ptr, ptr %wp, align 8, !dbg !181
  %50 = load ptr, ptr %vp, align 8, !dbg !183
  %cmp26 = icmp eq ptr %49, %50, !dbg !184
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !185

if.then27:                                        ; preds = %if.then24
  %51 = load ptr, ptr %up, align 8, !dbg !186
  store ptr %51, ptr %vp, align 8, !dbg !187
  br label %if.end28, !dbg !188

if.end28:                                         ; preds = %if.then27, %if.then24
  br label %do.body, !dbg !189

do.body:                                          ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i) #4, !dbg !190
  call void @llvm.dbg.declare(metadata ptr %_i, metadata !56, metadata !DIExpression()), !dbg !190
  store i32 0, ptr %_i, align 4, !dbg !191
  br label %for.cond, !dbg !191

for.cond:                                         ; preds = %for.inc, %do.body
  %52 = load i32, ptr %_i, align 4, !dbg !193
  %53 = load i32, ptr %usize, align 4, !dbg !193
  %cmp29 = icmp slt i32 %52, %53, !dbg !193
  br i1 %cmp29, label %for.body, label %for.end, !dbg !191

for.body:                                         ; preds = %for.cond
  %54 = load ptr, ptr %wp, align 8, !dbg !193
  %55 = load i32, ptr %_i, align 4, !dbg !193
  %idxprom = sext i32 %55 to i64, !dbg !193
  %arrayidx = getelementptr i64, ptr %54, i64 %idxprom, !dbg !193
  %56 = load i64, ptr %arrayidx, align 8, !dbg !193
  %57 = load ptr, ptr %up, align 8, !dbg !193
  %58 = load i32, ptr %_i, align 4, !dbg !193
  %idxprom30 = sext i32 %58 to i64, !dbg !193
  %arrayidx31 = getelementptr i64, ptr %57, i64 %idxprom30, !dbg !193
  store i64 %56, ptr %arrayidx31, align 8, !dbg !193
  br label %for.inc, !dbg !193

for.inc:                                          ; preds = %for.body
  %59 = load i32, ptr %_i, align 4, !dbg !193
  %inc = add i32 %59, 1, !dbg !193
  store i32 %inc, ptr %_i, align 4, !dbg !193
  br label %for.cond, !dbg !193, !llvm.loop !195

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i) #4, !dbg !189
  br label %do.cond, !dbg !190

do.cond:                                          ; preds = %for.end
  br label %do.end, !dbg !190

do.end:                                           ; preds = %do.cond
  br label %if.end51, !dbg !198

if.else32:                                        ; preds = %if.else22
  %60 = load ptr, ptr %wp, align 8, !dbg !199
  %61 = load ptr, ptr %vp, align 8, !dbg !200
  %cmp33 = icmp eq ptr %60, %61, !dbg !201
  br i1 %cmp33, label %if.then34, label %if.end50, !dbg !202

if.then34:                                        ; preds = %if.else32
  %62 = load i32, ptr %vsize, align 4, !dbg !203
  %call35 = call ptr @mpi_alloc_limb_space(i32 noundef %62) #5, !dbg !204
  store ptr %call35, ptr %tmp_limb, align 8, !dbg !205
  store ptr %call35, ptr %vp, align 8, !dbg !206
  br label %do.body36, !dbg !207

do.body36:                                        ; preds = %if.then34
  call void @llvm.lifetime.start.p0(i64 4, ptr %_i37) #4, !dbg !208
  call void @llvm.dbg.declare(metadata ptr %_i37, metadata !62, metadata !DIExpression()), !dbg !208
  store i32 0, ptr %_i37, align 4, !dbg !209
  br label %for.cond38, !dbg !209

for.cond38:                                       ; preds = %for.inc45, %do.body36
  %63 = load i32, ptr %_i37, align 4, !dbg !211
  %64 = load i32, ptr %vsize, align 4, !dbg !211
  %cmp39 = icmp slt i32 %63, %64, !dbg !211
  br i1 %cmp39, label %for.body40, label %for.end47, !dbg !209

for.body40:                                       ; preds = %for.cond38
  %65 = load ptr, ptr %wp, align 8, !dbg !211
  %66 = load i32, ptr %_i37, align 4, !dbg !211
  %idxprom41 = sext i32 %66 to i64, !dbg !211
  %arrayidx42 = getelementptr i64, ptr %65, i64 %idxprom41, !dbg !211
  %67 = load i64, ptr %arrayidx42, align 8, !dbg !211
  %68 = load ptr, ptr %vp, align 8, !dbg !211
  %69 = load i32, ptr %_i37, align 4, !dbg !211
  %idxprom43 = sext i32 %69 to i64, !dbg !211
  %arrayidx44 = getelementptr i64, ptr %68, i64 %idxprom43, !dbg !211
  store i64 %67, ptr %arrayidx44, align 8, !dbg !211
  br label %for.inc45, !dbg !211

for.inc45:                                        ; preds = %for.body40
  %70 = load i32, ptr %_i37, align 4, !dbg !211
  %inc46 = add i32 %70, 1, !dbg !211
  store i32 %inc46, ptr %_i37, align 4, !dbg !211
  br label %for.cond38, !dbg !211, !llvm.loop !213

for.end47:                                        ; preds = %for.cond38
  call void @llvm.lifetime.end.p0(i64 4, ptr %_i37) #4, !dbg !207
  br label %do.cond48, !dbg !208

do.cond48:                                        ; preds = %for.end47
  br label %do.end49, !dbg !208

do.end49:                                         ; preds = %do.cond48
  br label %if.end50, !dbg !214

if.end50:                                         ; preds = %do.end49, %if.else32
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %do.end
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %if.end21
  %71 = load i32, ptr %vsize, align 4, !dbg !215
  %tobool = icmp ne i32 %71, 0, !dbg !215
  br i1 %tobool, label %if.else54, label %if.then53, !dbg !217

if.then53:                                        ; preds = %if.end52
  store i32 0, ptr %wsize, align 4, !dbg !218
  br label %if.end57, !dbg !219

if.else54:                                        ; preds = %if.end52
  %72 = load ptr, ptr %wp, align 8, !dbg !220
  %73 = load ptr, ptr %up, align 8, !dbg !222
  %74 = load i32, ptr %usize, align 4, !dbg !223
  %75 = load ptr, ptr %vp, align 8, !dbg !224
  %76 = load i32, ptr %vsize, align 4, !dbg !225
  %call55 = call i32 @mpihelp_mul(ptr noundef %72, ptr noundef %73, i32 noundef %74, ptr noundef %75, i32 noundef %76, ptr noundef %cy) #5, !dbg !226
  %77 = load i64, ptr %cy, align 8, !dbg !227
  %tobool56 = icmp ne i64 %77, 0, !dbg !227
  %78 = zext i1 %tobool56 to i64, !dbg !227
  %cond = select i1 %tobool56, i32 0, i32 1, !dbg !227
  %79 = load i32, ptr %wsize, align 4, !dbg !228
  %sub = sub i32 %79, %cond, !dbg !228
  store i32 %sub, ptr %wsize, align 4, !dbg !228
  br label %if.end57

if.end57:                                         ; preds = %if.else54, %if.then53
  %80 = load i32, ptr %assign_wp, align 4, !dbg !229
  %tobool58 = icmp ne i32 %80, 0, !dbg !229
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !231

if.then59:                                        ; preds = %if.end57
  %81 = load ptr, ptr %w.addr, align 8, !dbg !232
  %82 = load ptr, ptr %wp, align 8, !dbg !233
  %83 = load i32, ptr %wsize, align 4, !dbg !234
  call void @mpi_assign_limb_space(ptr noundef %81, ptr noundef %82, i32 noundef %83) #5, !dbg !235
  br label %if.end60, !dbg !235

if.end60:                                         ; preds = %if.then59, %if.end57
  %84 = load i32, ptr %wsize, align 4, !dbg !236
  %85 = load ptr, ptr %w.addr, align 8, !dbg !237
  %nlimbs61 = getelementptr inbounds %struct.gcry_mpi, ptr %85, i32 0, i32 1, !dbg !238
  store i32 %84, ptr %nlimbs61, align 4, !dbg !239
  %86 = load i32, ptr %sign_product, align 4, !dbg !240
  %87 = load ptr, ptr %w.addr, align 8, !dbg !241
  %sign62 = getelementptr inbounds %struct.gcry_mpi, ptr %87, i32 0, i32 3, !dbg !242
  store i32 %86, ptr %sign62, align 4, !dbg !243
  %88 = load ptr, ptr %tmp_limb, align 8, !dbg !244
  %tobool63 = icmp ne ptr %88, null, !dbg !244
  br i1 %tobool63, label %if.then64, label %if.end65, !dbg !246

if.then64:                                        ; preds = %if.end60
  %89 = load ptr, ptr %tmp_limb, align 8, !dbg !247
  call void @mpi_free_limb_space(ptr noundef %89) #5, !dbg !248
  br label %if.end65, !dbg !248

if.end65:                                         ; preds = %if.then64, %if.end60
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp_limb) #4, !dbg !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %assign_wp) #4, !dbg !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %sign_product) #4, !dbg !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %vsign) #4, !dbg !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %usign) #4, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy) #4, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %wp) #4, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %vp) #4, !dbg !249
  call void @llvm.lifetime.end.p0(i64 8, ptr %up) #4, !dbg !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %wsize) #4, !dbg !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %vsize) #4, !dbg !249
  call void @llvm.lifetime.end.p0(i64 4, ptr %usize) #4, !dbg !249
  ret void, !dbg !249
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !250 dso_local ptr @mpi_alloc_limb_space(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !253 dso_local i32 @mpi_resize(ptr noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !256 dso_local i32 @mpihelp_mul(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !259 dso_local void @mpi_assign_limb_space(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !262 dso_local void @mpi_free_limb_space(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @mpi_mulm(ptr noundef %w, ptr noundef %u, ptr noundef %v, ptr noundef %m) #0 align 16 !dbg !265 {
entry:
  %w.addr = alloca ptr, align 8
  %u.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  store ptr %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !269, metadata !DIExpression()), !dbg !273
  store ptr %u, ptr %u.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %u.addr, metadata !270, metadata !DIExpression()), !dbg !274
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !271, metadata !DIExpression()), !dbg !275
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !272, metadata !DIExpression()), !dbg !276
  %0 = load ptr, ptr %w.addr, align 8, !dbg !277
  %1 = load ptr, ptr %u.addr, align 8, !dbg !278
  %2 = load ptr, ptr %v.addr, align 8, !dbg !279
  call void @mpi_mul(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5, !dbg !280
  %3 = load ptr, ptr %w.addr, align 8, !dbg !281
  %4 = load ptr, ptr %w.addr, align 8, !dbg !282
  %5 = load ptr, ptr %m.addr, align 8, !dbg !283
  call void @mpi_tdiv_r(ptr noundef %3, ptr noundef %4, ptr noundef %5) #5, !dbg !284
  ret void, !dbg !285
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !286 dso_local void @mpi_tdiv_r(ptr noundef, ptr noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_mul287", scope: !2, file: !3, line: 85, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.mpi-mul.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22mpi_mul\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/mpi-mul.ll lib/crypto/mpi/mpi-mul.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/mpi/mpi-mul.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6ad9ea499a16fe8177c52845f31fe0fa")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_mulm288", scope: !2, file: !3, line: 92, type: !5, isLocal: true, isDefinition: true)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 8, !"cf-protection-branch", i32 1}
!13 = !{i32 4, !"function_return_thunk_extern", i32 1}
!14 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!15 = !{i32 1, !"Code Model", i32 2}
!16 = !{i32 1, !"override-stack-alignment", i32 8}
!17 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!18 = distinct !DISubprogram(name: "mpi_mul", scope: !3, file: !3, line: 16, type: !19, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !37)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !21, !21}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "MPI", file: !22, line: 40, baseType: !23)
!22 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcry_mpi", file: !22, line: 29, size: 256, elements: !25)
!25 = !{!26, !28, !29, !30, !31, !33}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !24, file: !22, line: 30, baseType: !27, size: 32)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "nlimbs", scope: !24, file: !22, line: 31, baseType: !27, size: 32, offset: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !24, file: !22, line: 32, baseType: !27, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !24, file: !22, line: 33, baseType: !27, size: 32, offset: 96)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !24, file: !22, line: 34, baseType: !32, size: 32, offset: 128)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !24, file: !22, line: 37, baseType: !34, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !22, line: 26, baseType: !36)
!36 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!37 = !{!38, !39, !40, !41, !44, !45, !46, !48, !49, !50, !51, !52, !53, !54, !55, !56, !62}
!38 = !DILocalVariable(name: "w", arg: 1, scope: !18, file: !3, line: 16, type: !21)
!39 = !DILocalVariable(name: "u", arg: 2, scope: !18, file: !3, line: 16, type: !21)
!40 = !DILocalVariable(name: "v", arg: 3, scope: !18, file: !3, line: 16, type: !21)
!41 = !DILocalVariable(name: "usize", scope: !18, file: !3, line: 18, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_size_t", file: !43, line: 53, baseType: !27)
!43 = !DIFile(filename: "lib/crypto/mpi/mpi-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cffaba334cfde932ee1944172d38d6ce")
!44 = !DILocalVariable(name: "vsize", scope: !18, file: !3, line: 18, type: !42)
!45 = !DILocalVariable(name: "wsize", scope: !18, file: !3, line: 18, type: !42)
!46 = !DILocalVariable(name: "up", scope: !18, file: !3, line: 19, type: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_ptr_t", file: !43, line: 52, baseType: !34)
!48 = !DILocalVariable(name: "vp", scope: !18, file: !3, line: 19, type: !47)
!49 = !DILocalVariable(name: "wp", scope: !18, file: !3, line: 19, type: !47)
!50 = !DILocalVariable(name: "cy", scope: !18, file: !3, line: 20, type: !35)
!51 = !DILocalVariable(name: "usign", scope: !18, file: !3, line: 21, type: !27)
!52 = !DILocalVariable(name: "vsign", scope: !18, file: !3, line: 21, type: !27)
!53 = !DILocalVariable(name: "sign_product", scope: !18, file: !3, line: 21, type: !27)
!54 = !DILocalVariable(name: "assign_wp", scope: !18, file: !3, line: 22, type: !27)
!55 = !DILocalVariable(name: "tmp_limb", scope: !18, file: !3, line: 23, type: !47)
!56 = !DILocalVariable(name: "_i", scope: !57, file: !3, line: 62, type: !42)
!57 = distinct !DILexicalBlock(scope: !58, file: !3, line: 62, column: 4)
!58 = distinct !DILexicalBlock(scope: !59, file: !3, line: 55, column: 17)
!59 = distinct !DILexicalBlock(scope: !60, file: !3, line: 55, column: 7)
!60 = distinct !DILexicalBlock(scope: !61, file: !3, line: 54, column: 9)
!61 = distinct !DILexicalBlock(scope: !18, file: !3, line: 46, column: 6)
!62 = !DILocalVariable(name: "_i", scope: !63, file: !3, line: 67, type: !42)
!63 = distinct !DILexicalBlock(scope: !64, file: !3, line: 67, column: 4)
!64 = distinct !DILexicalBlock(scope: !65, file: !3, line: 63, column: 24)
!65 = distinct !DILexicalBlock(scope: !59, file: !3, line: 63, column: 14)
!66 = !DILocation(line: 16, column: 18, scope: !18)
!67 = !DILocation(line: 16, column: 25, scope: !18)
!68 = !DILocation(line: 16, column: 32, scope: !18)
!69 = !DILocation(line: 18, column: 2, scope: !18)
!70 = !DILocation(line: 18, column: 13, scope: !18)
!71 = !DILocation(line: 18, column: 20, scope: !18)
!72 = !DILocation(line: 18, column: 27, scope: !18)
!73 = !DILocation(line: 19, column: 2, scope: !18)
!74 = !DILocation(line: 19, column: 12, scope: !18)
!75 = !DILocation(line: 19, column: 16, scope: !18)
!76 = !DILocation(line: 19, column: 20, scope: !18)
!77 = !DILocation(line: 20, column: 2, scope: !18)
!78 = !DILocation(line: 20, column: 13, scope: !18)
!79 = !DILocation(line: 21, column: 2, scope: !18)
!80 = !DILocation(line: 21, column: 6, scope: !18)
!81 = !DILocation(line: 21, column: 13, scope: !18)
!82 = !DILocation(line: 21, column: 20, scope: !18)
!83 = !DILocation(line: 22, column: 2, scope: !18)
!84 = !DILocation(line: 22, column: 6, scope: !18)
!85 = !DILocation(line: 23, column: 2, scope: !18)
!86 = !DILocation(line: 23, column: 12, scope: !18)
!87 = !DILocation(line: 25, column: 6, scope: !88)
!88 = distinct !DILexicalBlock(scope: !18, file: !3, line: 25, column: 6)
!89 = !DILocation(line: 25, column: 9, scope: !88)
!90 = !DILocation(line: 25, column: 18, scope: !88)
!91 = !DILocation(line: 25, column: 21, scope: !88)
!92 = !DILocation(line: 25, column: 16, scope: !88)
!93 = !DILocation(line: 25, column: 6, scope: !18)
!94 = !DILocation(line: 27, column: 11, scope: !95)
!95 = distinct !DILexicalBlock(scope: !88, file: !3, line: 25, column: 29)
!96 = !DILocation(line: 27, column: 14, scope: !95)
!97 = !DILocation(line: 27, column: 9, scope: !95)
!98 = !DILocation(line: 28, column: 11, scope: !95)
!99 = !DILocation(line: 28, column: 14, scope: !95)
!100 = !DILocation(line: 28, column: 9, scope: !95)
!101 = !DILocation(line: 29, column: 11, scope: !95)
!102 = !DILocation(line: 29, column: 14, scope: !95)
!103 = !DILocation(line: 29, column: 9, scope: !95)
!104 = !DILocation(line: 30, column: 11, scope: !95)
!105 = !DILocation(line: 30, column: 14, scope: !95)
!106 = !DILocation(line: 30, column: 9, scope: !95)
!107 = !DILocation(line: 31, column: 11, scope: !95)
!108 = !DILocation(line: 31, column: 14, scope: !95)
!109 = !DILocation(line: 31, column: 9, scope: !95)
!110 = !DILocation(line: 32, column: 11, scope: !95)
!111 = !DILocation(line: 32, column: 14, scope: !95)
!112 = !DILocation(line: 32, column: 9, scope: !95)
!113 = !DILocation(line: 33, column: 2, scope: !95)
!114 = !DILocation(line: 34, column: 11, scope: !115)
!115 = distinct !DILexicalBlock(scope: !88, file: !3, line: 33, column: 9)
!116 = !DILocation(line: 34, column: 14, scope: !115)
!117 = !DILocation(line: 34, column: 9, scope: !115)
!118 = !DILocation(line: 35, column: 11, scope: !115)
!119 = !DILocation(line: 35, column: 14, scope: !115)
!120 = !DILocation(line: 35, column: 9, scope: !115)
!121 = !DILocation(line: 36, column: 11, scope: !115)
!122 = !DILocation(line: 36, column: 14, scope: !115)
!123 = !DILocation(line: 36, column: 9, scope: !115)
!124 = !DILocation(line: 37, column: 11, scope: !115)
!125 = !DILocation(line: 37, column: 14, scope: !115)
!126 = !DILocation(line: 37, column: 9, scope: !115)
!127 = !DILocation(line: 38, column: 11, scope: !115)
!128 = !DILocation(line: 38, column: 14, scope: !115)
!129 = !DILocation(line: 38, column: 9, scope: !115)
!130 = !DILocation(line: 39, column: 11, scope: !115)
!131 = !DILocation(line: 39, column: 14, scope: !115)
!132 = !DILocation(line: 39, column: 9, scope: !115)
!133 = !DILocation(line: 41, column: 17, scope: !18)
!134 = !DILocation(line: 41, column: 25, scope: !18)
!135 = !DILocation(line: 41, column: 23, scope: !18)
!136 = !DILocation(line: 41, column: 15, scope: !18)
!137 = !DILocation(line: 42, column: 7, scope: !18)
!138 = !DILocation(line: 42, column: 10, scope: !18)
!139 = !DILocation(line: 42, column: 5, scope: !18)
!140 = !DILocation(line: 45, column: 10, scope: !18)
!141 = !DILocation(line: 45, column: 18, scope: !18)
!142 = !DILocation(line: 45, column: 16, scope: !18)
!143 = !DILocation(line: 45, column: 8, scope: !18)
!144 = !DILocation(line: 46, column: 6, scope: !61)
!145 = !DILocation(line: 46, column: 9, scope: !61)
!146 = !DILocation(line: 46, column: 19, scope: !61)
!147 = !DILocation(line: 46, column: 17, scope: !61)
!148 = !DILocation(line: 46, column: 6, scope: !18)
!149 = !DILocation(line: 47, column: 7, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !3, line: 47, column: 7)
!151 = distinct !DILexicalBlock(scope: !61, file: !3, line: 46, column: 26)
!152 = !DILocation(line: 47, column: 13, scope: !150)
!153 = !DILocation(line: 47, column: 10, scope: !150)
!154 = !DILocation(line: 47, column: 16, scope: !150)
!155 = !DILocation(line: 47, column: 19, scope: !150)
!156 = !DILocation(line: 47, column: 25, scope: !150)
!157 = !DILocation(line: 47, column: 22, scope: !150)
!158 = !DILocation(line: 47, column: 7, scope: !151)
!159 = !DILocation(line: 48, column: 30, scope: !160)
!160 = distinct !DILexicalBlock(scope: !150, file: !3, line: 47, column: 29)
!161 = !DILocation(line: 48, column: 9, scope: !160)
!162 = !DILocation(line: 48, column: 7, scope: !160)
!163 = !DILocation(line: 49, column: 14, scope: !160)
!164 = !DILocation(line: 50, column: 3, scope: !160)
!165 = !DILocation(line: 51, column: 15, scope: !166)
!166 = distinct !DILexicalBlock(scope: !150, file: !3, line: 50, column: 10)
!167 = !DILocation(line: 51, column: 18, scope: !166)
!168 = !DILocation(line: 51, column: 4, scope: !166)
!169 = !DILocation(line: 52, column: 9, scope: !166)
!170 = !DILocation(line: 52, column: 12, scope: !166)
!171 = !DILocation(line: 52, column: 7, scope: !166)
!172 = !DILocation(line: 54, column: 2, scope: !151)
!173 = !DILocation(line: 55, column: 7, scope: !59)
!174 = !DILocation(line: 55, column: 13, scope: !59)
!175 = !DILocation(line: 55, column: 10, scope: !59)
!176 = !DILocation(line: 55, column: 7, scope: !60)
!177 = !DILocation(line: 57, column: 41, scope: !58)
!178 = !DILocation(line: 57, column: 20, scope: !58)
!179 = !DILocation(line: 57, column: 18, scope: !58)
!180 = !DILocation(line: 57, column: 7, scope: !58)
!181 = !DILocation(line: 59, column: 8, scope: !182)
!182 = distinct !DILexicalBlock(scope: !58, file: !3, line: 59, column: 8)
!183 = !DILocation(line: 59, column: 14, scope: !182)
!184 = !DILocation(line: 59, column: 11, scope: !182)
!185 = !DILocation(line: 59, column: 8, scope: !58)
!186 = !DILocation(line: 60, column: 10, scope: !182)
!187 = !DILocation(line: 60, column: 8, scope: !182)
!188 = !DILocation(line: 60, column: 5, scope: !182)
!189 = !DILocation(line: 62, column: 4, scope: !58)
!190 = !DILocation(line: 62, column: 4, scope: !57)
!191 = !DILocation(line: 62, column: 4, scope: !192)
!192 = distinct !DILexicalBlock(scope: !57, file: !3, line: 62, column: 4)
!193 = !DILocation(line: 62, column: 4, scope: !194)
!194 = distinct !DILexicalBlock(scope: !192, file: !3, line: 62, column: 4)
!195 = distinct !{!195, !191, !191, !196, !197}
!196 = !{!"llvm.loop.mustprogress"}
!197 = !{!"llvm.loop.unroll.disable"}
!198 = !DILocation(line: 63, column: 3, scope: !58)
!199 = !DILocation(line: 63, column: 14, scope: !65)
!200 = !DILocation(line: 63, column: 20, scope: !65)
!201 = !DILocation(line: 63, column: 17, scope: !65)
!202 = !DILocation(line: 63, column: 14, scope: !59)
!203 = !DILocation(line: 65, column: 41, scope: !64)
!204 = !DILocation(line: 65, column: 20, scope: !64)
!205 = !DILocation(line: 65, column: 18, scope: !64)
!206 = !DILocation(line: 65, column: 7, scope: !64)
!207 = !DILocation(line: 67, column: 4, scope: !64)
!208 = !DILocation(line: 67, column: 4, scope: !63)
!209 = !DILocation(line: 67, column: 4, scope: !210)
!210 = distinct !DILexicalBlock(scope: !63, file: !3, line: 67, column: 4)
!211 = !DILocation(line: 67, column: 4, scope: !212)
!212 = distinct !DILexicalBlock(scope: !210, file: !3, line: 67, column: 4)
!213 = distinct !{!213, !209, !209, !196, !197}
!214 = !DILocation(line: 68, column: 3, scope: !64)
!215 = !DILocation(line: 71, column: 7, scope: !216)
!216 = distinct !DILexicalBlock(scope: !18, file: !3, line: 71, column: 6)
!217 = !DILocation(line: 71, column: 6, scope: !18)
!218 = !DILocation(line: 72, column: 9, scope: !216)
!219 = !DILocation(line: 72, column: 3, scope: !216)
!220 = !DILocation(line: 74, column: 15, scope: !221)
!221 = distinct !DILexicalBlock(scope: !216, file: !3, line: 73, column: 7)
!222 = !DILocation(line: 74, column: 19, scope: !221)
!223 = !DILocation(line: 74, column: 23, scope: !221)
!224 = !DILocation(line: 74, column: 30, scope: !221)
!225 = !DILocation(line: 74, column: 34, scope: !221)
!226 = !DILocation(line: 74, column: 3, scope: !221)
!227 = !DILocation(line: 75, column: 12, scope: !221)
!228 = !DILocation(line: 75, column: 9, scope: !221)
!229 = !DILocation(line: 78, column: 6, scope: !230)
!230 = distinct !DILexicalBlock(scope: !18, file: !3, line: 78, column: 6)
!231 = !DILocation(line: 78, column: 6, scope: !18)
!232 = !DILocation(line: 79, column: 25, scope: !230)
!233 = !DILocation(line: 79, column: 28, scope: !230)
!234 = !DILocation(line: 79, column: 32, scope: !230)
!235 = !DILocation(line: 79, column: 3, scope: !230)
!236 = !DILocation(line: 80, column: 14, scope: !18)
!237 = !DILocation(line: 80, column: 2, scope: !18)
!238 = !DILocation(line: 80, column: 5, scope: !18)
!239 = !DILocation(line: 80, column: 12, scope: !18)
!240 = !DILocation(line: 81, column: 12, scope: !18)
!241 = !DILocation(line: 81, column: 2, scope: !18)
!242 = !DILocation(line: 81, column: 5, scope: !18)
!243 = !DILocation(line: 81, column: 10, scope: !18)
!244 = !DILocation(line: 82, column: 6, scope: !245)
!245 = distinct !DILexicalBlock(scope: !18, file: !3, line: 82, column: 6)
!246 = !DILocation(line: 82, column: 6, scope: !18)
!247 = !DILocation(line: 83, column: 23, scope: !245)
!248 = !DILocation(line: 83, column: 3, scope: !245)
!249 = !DILocation(line: 84, column: 1, scope: !18)
!250 = !DISubprogram(name: "mpi_alloc_limb_space", scope: !43, file: !43, line: 142, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!251 = !DISubroutineType(types: !252)
!252 = !{!47, !32}
!253 = !DISubprogram(name: "mpi_resize", scope: !22, file: !22, line: 49, type: !254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!254 = !DISubroutineType(types: !255)
!255 = !{!27, !21, !32}
!256 = !DISubprogram(name: "mpihelp_mul", scope: !43, file: !43, line: 179, type: !257, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!257 = !DISubroutineType(types: !258)
!258 = !{!27, !47, !47, !42, !47, !42, !34}
!259 = !DISubprogram(name: "mpi_assign_limb_space", scope: !43, file: !43, line: 144, type: !260, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !21, !47, !32}
!262 = !DISubprogram(name: "mpi_free_limb_space", scope: !43, file: !43, line: 143, type: !263, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !47}
!265 = distinct !DISubprogram(name: "mpi_mulm", scope: !3, file: !3, line: 87, type: !266, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !268)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !21, !21, !21, !21}
!268 = !{!269, !270, !271, !272}
!269 = !DILocalVariable(name: "w", arg: 1, scope: !265, file: !3, line: 87, type: !21)
!270 = !DILocalVariable(name: "u", arg: 2, scope: !265, file: !3, line: 87, type: !21)
!271 = !DILocalVariable(name: "v", arg: 3, scope: !265, file: !3, line: 87, type: !21)
!272 = !DILocalVariable(name: "m", arg: 4, scope: !265, file: !3, line: 87, type: !21)
!273 = !DILocation(line: 87, column: 19, scope: !265)
!274 = !DILocation(line: 87, column: 26, scope: !265)
!275 = !DILocation(line: 87, column: 33, scope: !265)
!276 = !DILocation(line: 87, column: 40, scope: !265)
!277 = !DILocation(line: 89, column: 10, scope: !265)
!278 = !DILocation(line: 89, column: 13, scope: !265)
!279 = !DILocation(line: 89, column: 16, scope: !265)
!280 = !DILocation(line: 89, column: 2, scope: !265)
!281 = !DILocation(line: 90, column: 13, scope: !265)
!282 = !DILocation(line: 90, column: 16, scope: !265)
!283 = !DILocation(line: 90, column: 19, scope: !265)
!284 = !DILocation(line: 90, column: 2, scope: !265)
!285 = !DILocation(line: 91, column: 1, scope: !265)
!286 = !DISubprogram(name: "mpi_tdiv_r", scope: !22, file: !22, line: 153, type: !19, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
