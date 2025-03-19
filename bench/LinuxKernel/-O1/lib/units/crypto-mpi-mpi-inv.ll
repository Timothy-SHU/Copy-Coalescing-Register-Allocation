; ModuleID = 'lib/crypto/mpi/mpi-inv.c'
source_filename = "lib/crypto/mpi/mpi-inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_mpi_invm: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad mpi_invm ; .previous"

%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@__UNIQUE_ID___addressable_mpi_invm287 = internal global ptr @mpi_invm, section ".discard.addressable", align 8, !dbg !0
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_mpi_invm287], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mpi_invm(ptr noundef %x, ptr noundef %a, ptr noundef %n) #0 align 16 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %n.addr = alloca ptr, align 8
  %u = alloca ptr, align 8
  %v = alloca ptr, align 8
  %u1 = alloca ptr, align 8
  %u2 = alloca ptr, align 8
  %u3 = alloca ptr, align 8
  %v1 = alloca ptr, align 8
  %v2 = alloca ptr, align 8
  %v3 = alloca ptr, align 8
  %t1 = alloca ptr, align 8
  %t2 = alloca ptr, align 8
  %t3 = alloca ptr, align 8
  %k = alloca i32, align 4
  %sign = alloca i32, align 4
  %odd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !36, metadata !DIExpression()), !dbg !56
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !37, metadata !DIExpression()), !dbg !57
  store ptr %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !38, metadata !DIExpression()), !dbg !58
  call void @llvm.lifetime.start.p0(i64 8, ptr %u) #4, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %u, metadata !39, metadata !DIExpression()), !dbg !60
  call void @llvm.lifetime.start.p0(i64 8, ptr %v) #4, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %v, metadata !40, metadata !DIExpression()), !dbg !61
  call void @llvm.lifetime.start.p0(i64 8, ptr %u1) #4, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %u1, metadata !41, metadata !DIExpression()), !dbg !62
  call void @llvm.lifetime.start.p0(i64 8, ptr %u2) #4, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %u2, metadata !42, metadata !DIExpression()), !dbg !63
  store ptr null, ptr %u2, align 8, !dbg !63
  call void @llvm.lifetime.start.p0(i64 8, ptr %u3) #4, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %u3, metadata !43, metadata !DIExpression()), !dbg !64
  call void @llvm.lifetime.start.p0(i64 8, ptr %v1) #4, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %v1, metadata !44, metadata !DIExpression()), !dbg !65
  call void @llvm.lifetime.start.p0(i64 8, ptr %v2) #4, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %v2, metadata !45, metadata !DIExpression()), !dbg !66
  store ptr null, ptr %v2, align 8, !dbg !66
  call void @llvm.lifetime.start.p0(i64 8, ptr %v3) #4, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %v3, metadata !46, metadata !DIExpression()), !dbg !67
  call void @llvm.lifetime.start.p0(i64 8, ptr %t1) #4, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %t1, metadata !47, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 8, ptr %t2) #4, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %t2, metadata !48, metadata !DIExpression()), !dbg !69
  store ptr null, ptr %t2, align 8, !dbg !69
  call void @llvm.lifetime.start.p0(i64 8, ptr %t3) #4, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %t3, metadata !49, metadata !DIExpression()), !dbg !70
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4, !dbg !71
  call void @llvm.dbg.declare(metadata ptr %k, metadata !50, metadata !DIExpression()), !dbg !72
  call void @llvm.lifetime.start.p0(i64 4, ptr %sign) #4, !dbg !73
  call void @llvm.dbg.declare(metadata ptr %sign, metadata !51, metadata !DIExpression()), !dbg !74
  call void @llvm.lifetime.start.p0(i64 4, ptr %odd) #4, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %odd, metadata !52, metadata !DIExpression()), !dbg !76
  %0 = load ptr, ptr %a.addr, align 8, !dbg !77
  %call = call i32 @mpi_cmp_ui(ptr noundef %0, i64 noundef 0) #5, !dbg !79
  %tobool = icmp ne i32 %call, 0, !dbg !79
  br i1 %tobool, label %if.end, label %if.then, !dbg !80

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !81
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !81

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %n.addr, align 8, !dbg !82
  %call1 = call i32 @mpi_cmp_ui(ptr noundef %1, i64 noundef 1) #5, !dbg !84
  %tobool2 = icmp ne i32 %call1, 0, !dbg !84
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !85

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !86
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !86

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %a.addr, align 8, !dbg !87
  %call5 = call ptr @mpi_copy(ptr noundef %2) #5, !dbg !88
  store ptr %call5, ptr %u, align 8, !dbg !89
  %3 = load ptr, ptr %n.addr, align 8, !dbg !90
  %call6 = call ptr @mpi_copy(ptr noundef %3) #5, !dbg !91
  store ptr %call6, ptr %v, align 8, !dbg !92
  store i32 0, ptr %k, align 4, !dbg !93
  br label %for.cond, !dbg !95

for.cond:                                         ; preds = %for.inc, %if.end4
  %4 = load ptr, ptr %u, align 8, !dbg !96
  %call7 = call i32 @mpi_test_bit(ptr noundef %4, i32 noundef 0) #5, !dbg !98
  %tobool8 = icmp ne i32 %call7, 0, !dbg !98
  br i1 %tobool8, label %land.end, label %land.rhs, !dbg !99

land.rhs:                                         ; preds = %for.cond
  %5 = load ptr, ptr %v, align 8, !dbg !100
  %call9 = call i32 @mpi_test_bit(ptr noundef %5, i32 noundef 0) #5, !dbg !101
  %tobool10 = icmp ne i32 %call9, 0, !dbg !102
  %lnot = xor i1 %tobool10, true, !dbg !102
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ], !dbg !103
  br i1 %6, label %for.body, label %for.end, !dbg !104

for.body:                                         ; preds = %land.end
  %7 = load ptr, ptr %u, align 8, !dbg !105
  %8 = load ptr, ptr %u, align 8, !dbg !107
  call void @mpi_rshift(ptr noundef %7, ptr noundef %8, i32 noundef 1) #5, !dbg !108
  %9 = load ptr, ptr %v, align 8, !dbg !109
  %10 = load ptr, ptr %v, align 8, !dbg !110
  call void @mpi_rshift(ptr noundef %9, ptr noundef %10, i32 noundef 1) #5, !dbg !111
  br label %for.inc, !dbg !112

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %k, align 4, !dbg !113
  %inc = add i32 %11, 1, !dbg !113
  store i32 %inc, ptr %k, align 4, !dbg !113
  br label %for.cond, !dbg !114, !llvm.loop !115

for.end:                                          ; preds = %land.end
  %12 = load ptr, ptr %v, align 8, !dbg !119
  %call11 = call i32 @mpi_test_bit(ptr noundef %12, i32 noundef 0) #5, !dbg !120
  store i32 %call11, ptr %odd, align 4, !dbg !121
  %call12 = call ptr @mpi_alloc_set_ui(i64 noundef 1) #5, !dbg !122
  store ptr %call12, ptr %u1, align 8, !dbg !123
  %13 = load i32, ptr %odd, align 4, !dbg !124
  %tobool13 = icmp ne i32 %13, 0, !dbg !124
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !126

if.then14:                                        ; preds = %for.end
  %call15 = call ptr @mpi_alloc_set_ui(i64 noundef 0) #5, !dbg !127
  store ptr %call15, ptr %u2, align 8, !dbg !128
  br label %if.end16, !dbg !129

if.end16:                                         ; preds = %if.then14, %for.end
  %14 = load ptr, ptr %u, align 8, !dbg !130
  %call17 = call ptr @mpi_copy(ptr noundef %14) #5, !dbg !131
  store ptr %call17, ptr %u3, align 8, !dbg !132
  %15 = load ptr, ptr %v, align 8, !dbg !133
  %call18 = call ptr @mpi_copy(ptr noundef %15) #5, !dbg !134
  store ptr %call18, ptr %v1, align 8, !dbg !135
  %16 = load i32, ptr %odd, align 4, !dbg !136
  %tobool19 = icmp ne i32 %16, 0, !dbg !136
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !138

if.then20:                                        ; preds = %if.end16
  %17 = load ptr, ptr %u, align 8, !dbg !139
  %nlimbs = getelementptr inbounds %struct.gcry_mpi, ptr %17, i32 0, i32 1, !dbg !139
  %18 = load i32, ptr %nlimbs, align 4, !dbg !139
  %call21 = call ptr @mpi_alloc(i32 noundef %18) #5, !dbg !141
  store ptr %call21, ptr %v2, align 8, !dbg !142
  %19 = load ptr, ptr %v2, align 8, !dbg !143
  %20 = load ptr, ptr %u1, align 8, !dbg !144
  %21 = load ptr, ptr %u, align 8, !dbg !145
  call void @mpi_sub(ptr noundef %19, ptr noundef %20, ptr noundef %21) #5, !dbg !146
  br label %if.end22, !dbg !147

if.end22:                                         ; preds = %if.then20, %if.end16
  %22 = load ptr, ptr %v, align 8, !dbg !148
  %call23 = call ptr @mpi_copy(ptr noundef %22) #5, !dbg !149
  store ptr %call23, ptr %v3, align 8, !dbg !150
  %23 = load ptr, ptr %u, align 8, !dbg !151
  %call24 = call i32 @mpi_test_bit(ptr noundef %23, i32 noundef 0) #5, !dbg !153
  %tobool25 = icmp ne i32 %call24, 0, !dbg !153
  br i1 %tobool25, label %if.then26, label %if.else, !dbg !154

if.then26:                                        ; preds = %if.end22
  %call27 = call ptr @mpi_alloc_set_ui(i64 noundef 0) #5, !dbg !155
  store ptr %call27, ptr %t1, align 8, !dbg !157
  %24 = load i32, ptr %odd, align 4, !dbg !158
  %tobool28 = icmp ne i32 %24, 0, !dbg !158
  br i1 %tobool28, label %if.end32, label %if.then29, !dbg !160

if.then29:                                        ; preds = %if.then26
  %call30 = call ptr @mpi_alloc_set_ui(i64 noundef 1) #5, !dbg !161
  store ptr %call30, ptr %t2, align 8, !dbg !163
  %25 = load ptr, ptr %t2, align 8, !dbg !164
  %sign31 = getelementptr inbounds %struct.gcry_mpi, ptr %25, i32 0, i32 3, !dbg !165
  store i32 1, ptr %sign31, align 4, !dbg !166
  br label %if.end32, !dbg !167

if.end32:                                         ; preds = %if.then29, %if.then26
  %26 = load ptr, ptr %v, align 8, !dbg !168
  %call33 = call ptr @mpi_copy(ptr noundef %26) #5, !dbg !169
  store ptr %call33, ptr %t3, align 8, !dbg !170
  %27 = load ptr, ptr %t3, align 8, !dbg !171
  %sign34 = getelementptr inbounds %struct.gcry_mpi, ptr %27, i32 0, i32 3, !dbg !172
  %28 = load i32, ptr %sign34, align 4, !dbg !172
  %tobool35 = icmp ne i32 %28, 0, !dbg !173
  %lnot36 = xor i1 %tobool35, true, !dbg !173
  %lnot.ext = zext i1 %lnot36 to i32, !dbg !173
  %29 = load ptr, ptr %t3, align 8, !dbg !174
  %sign37 = getelementptr inbounds %struct.gcry_mpi, ptr %29, i32 0, i32 3, !dbg !175
  store i32 %lnot.ext, ptr %sign37, align 4, !dbg !176
  br label %Y4, !dbg !177

if.else:                                          ; preds = %if.end22
  %call38 = call ptr @mpi_alloc_set_ui(i64 noundef 1) #5, !dbg !178
  store ptr %call38, ptr %t1, align 8, !dbg !180
  %30 = load i32, ptr %odd, align 4, !dbg !181
  %tobool39 = icmp ne i32 %30, 0, !dbg !181
  br i1 %tobool39, label %if.end42, label %if.then40, !dbg !183

if.then40:                                        ; preds = %if.else
  %call41 = call ptr @mpi_alloc_set_ui(i64 noundef 0) #5, !dbg !184
  store ptr %call41, ptr %t2, align 8, !dbg !185
  br label %if.end42, !dbg !186

if.end42:                                         ; preds = %if.then40, %if.else
  %31 = load ptr, ptr %u, align 8, !dbg !187
  %call43 = call ptr @mpi_copy(ptr noundef %31) #5, !dbg !188
  store ptr %call43, ptr %t3, align 8, !dbg !189
  br label %if.end44

if.end44:                                         ; preds = %if.end42
  br label %do.body, !dbg !190

do.body:                                          ; preds = %do.cond103, %if.end44
  br label %do.body45, !dbg !191

do.body45:                                        ; preds = %do.cond, %do.body
  %32 = load i32, ptr %odd, align 4, !dbg !192
  %tobool46 = icmp ne i32 %32, 0, !dbg !192
  br i1 %tobool46, label %if.else54, label %if.then47, !dbg !194

if.then47:                                        ; preds = %do.body45
  %33 = load ptr, ptr %t1, align 8, !dbg !195
  %call48 = call i32 @mpi_test_bit(ptr noundef %33, i32 noundef 0) #5, !dbg !198
  %tobool49 = icmp ne i32 %call48, 0, !dbg !198
  br i1 %tobool49, label %if.then52, label %lor.lhs.false, !dbg !199

lor.lhs.false:                                    ; preds = %if.then47
  %34 = load ptr, ptr %t2, align 8, !dbg !200
  %call50 = call i32 @mpi_test_bit(ptr noundef %34, i32 noundef 0) #5, !dbg !201
  %tobool51 = icmp ne i32 %call50, 0, !dbg !201
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !202

if.then52:                                        ; preds = %lor.lhs.false, %if.then47
  %35 = load ptr, ptr %t1, align 8, !dbg !203
  %36 = load ptr, ptr %t1, align 8, !dbg !205
  %37 = load ptr, ptr %v, align 8, !dbg !206
  call void @mpi_add(ptr noundef %35, ptr noundef %36, ptr noundef %37) #5, !dbg !207
  %38 = load ptr, ptr %t2, align 8, !dbg !208
  %39 = load ptr, ptr %t2, align 8, !dbg !209
  %40 = load ptr, ptr %u, align 8, !dbg !210
  call void @mpi_sub(ptr noundef %38, ptr noundef %39, ptr noundef %40) #5, !dbg !211
  br label %if.end53, !dbg !212

if.end53:                                         ; preds = %if.then52, %lor.lhs.false
  %41 = load ptr, ptr %t1, align 8, !dbg !213
  %42 = load ptr, ptr %t1, align 8, !dbg !214
  call void @mpi_rshift(ptr noundef %41, ptr noundef %42, i32 noundef 1) #5, !dbg !215
  %43 = load ptr, ptr %t2, align 8, !dbg !216
  %44 = load ptr, ptr %t2, align 8, !dbg !217
  call void @mpi_rshift(ptr noundef %43, ptr noundef %44, i32 noundef 1) #5, !dbg !218
  %45 = load ptr, ptr %t3, align 8, !dbg !219
  %46 = load ptr, ptr %t3, align 8, !dbg !220
  call void @mpi_rshift(ptr noundef %45, ptr noundef %46, i32 noundef 1) #5, !dbg !221
  br label %if.end59, !dbg !222

if.else54:                                        ; preds = %do.body45
  %47 = load ptr, ptr %t1, align 8, !dbg !223
  %call55 = call i32 @mpi_test_bit(ptr noundef %47, i32 noundef 0) #5, !dbg !226
  %tobool56 = icmp ne i32 %call55, 0, !dbg !226
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !227

if.then57:                                        ; preds = %if.else54
  %48 = load ptr, ptr %t1, align 8, !dbg !228
  %49 = load ptr, ptr %t1, align 8, !dbg !229
  %50 = load ptr, ptr %v, align 8, !dbg !230
  call void @mpi_add(ptr noundef %48, ptr noundef %49, ptr noundef %50) #5, !dbg !231
  br label %if.end58, !dbg !231

if.end58:                                         ; preds = %if.then57, %if.else54
  %51 = load ptr, ptr %t1, align 8, !dbg !232
  %52 = load ptr, ptr %t1, align 8, !dbg !233
  call void @mpi_rshift(ptr noundef %51, ptr noundef %52, i32 noundef 1) #5, !dbg !234
  %53 = load ptr, ptr %t3, align 8, !dbg !235
  %54 = load ptr, ptr %t3, align 8, !dbg !236
  call void @mpi_rshift(ptr noundef %53, ptr noundef %54, i32 noundef 1) #5, !dbg !237
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end53
  br label %Y4, !dbg !192

Y4:                                               ; preds = %if.end59, %if.end32
  call void @llvm.dbg.label(metadata !53), !dbg !238
  br label %do.cond, !dbg !239

do.cond:                                          ; preds = %Y4
  %55 = load ptr, ptr %t3, align 8, !dbg !240
  %call60 = call i32 @mpi_test_bit(ptr noundef %55, i32 noundef 0) #5, !dbg !241
  %tobool61 = icmp ne i32 %call60, 0, !dbg !242
  %lnot62 = xor i1 %tobool61, true, !dbg !242
  br i1 %lnot62, label %do.body45, label %do.end, !dbg !239, !llvm.loop !243

do.end:                                           ; preds = %do.cond
  %56 = load ptr, ptr %t3, align 8, !dbg !245
  %sign64 = getelementptr inbounds %struct.gcry_mpi, ptr %56, i32 0, i32 3, !dbg !247
  %57 = load i32, ptr %sign64, align 4, !dbg !247
  %tobool65 = icmp ne i32 %57, 0, !dbg !245
  br i1 %tobool65, label %if.else73, label %if.then66, !dbg !248

if.then66:                                        ; preds = %do.end
  %58 = load ptr, ptr %u1, align 8, !dbg !249
  %59 = load ptr, ptr %t1, align 8, !dbg !251
  %call67 = call ptr @mpi_set(ptr noundef %58, ptr noundef %59) #5, !dbg !252
  %60 = load i32, ptr %odd, align 4, !dbg !253
  %tobool68 = icmp ne i32 %60, 0, !dbg !253
  br i1 %tobool68, label %if.end71, label %if.then69, !dbg !255

if.then69:                                        ; preds = %if.then66
  %61 = load ptr, ptr %u2, align 8, !dbg !256
  %62 = load ptr, ptr %t2, align 8, !dbg !257
  %call70 = call ptr @mpi_set(ptr noundef %61, ptr noundef %62) #5, !dbg !258
  br label %if.end71, !dbg !258

if.end71:                                         ; preds = %if.then69, %if.then66
  %63 = load ptr, ptr %u3, align 8, !dbg !259
  %64 = load ptr, ptr %t3, align 8, !dbg !260
  %call72 = call ptr @mpi_set(ptr noundef %63, ptr noundef %64) #5, !dbg !261
  br label %if.end92, !dbg !262

if.else73:                                        ; preds = %do.end
  %65 = load ptr, ptr %v1, align 8, !dbg !263
  %66 = load ptr, ptr %v, align 8, !dbg !265
  %67 = load ptr, ptr %t1, align 8, !dbg !266
  call void @mpi_sub(ptr noundef %65, ptr noundef %66, ptr noundef %67) #5, !dbg !267
  %68 = load ptr, ptr %u, align 8, !dbg !268
  %sign74 = getelementptr inbounds %struct.gcry_mpi, ptr %68, i32 0, i32 3, !dbg !269
  %69 = load i32, ptr %sign74, align 4, !dbg !269
  store i32 %69, ptr %sign, align 4, !dbg !270
  %70 = load ptr, ptr %u, align 8, !dbg !271
  %sign75 = getelementptr inbounds %struct.gcry_mpi, ptr %70, i32 0, i32 3, !dbg !272
  %71 = load i32, ptr %sign75, align 4, !dbg !272
  %tobool76 = icmp ne i32 %71, 0, !dbg !273
  %lnot77 = xor i1 %tobool76, true, !dbg !273
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !273
  %72 = load ptr, ptr %u, align 8, !dbg !274
  %sign79 = getelementptr inbounds %struct.gcry_mpi, ptr %72, i32 0, i32 3, !dbg !275
  store i32 %lnot.ext78, ptr %sign79, align 4, !dbg !276
  %73 = load i32, ptr %odd, align 4, !dbg !277
  %tobool80 = icmp ne i32 %73, 0, !dbg !277
  br i1 %tobool80, label %if.end82, label %if.then81, !dbg !279

if.then81:                                        ; preds = %if.else73
  %74 = load ptr, ptr %v2, align 8, !dbg !280
  %75 = load ptr, ptr %u, align 8, !dbg !281
  %76 = load ptr, ptr %t2, align 8, !dbg !282
  call void @mpi_sub(ptr noundef %74, ptr noundef %75, ptr noundef %76) #5, !dbg !283
  br label %if.end82, !dbg !283

if.end82:                                         ; preds = %if.then81, %if.else73
  %77 = load i32, ptr %sign, align 4, !dbg !284
  %78 = load ptr, ptr %u, align 8, !dbg !285
  %sign83 = getelementptr inbounds %struct.gcry_mpi, ptr %78, i32 0, i32 3, !dbg !286
  store i32 %77, ptr %sign83, align 4, !dbg !287
  %79 = load ptr, ptr %t3, align 8, !dbg !288
  %sign84 = getelementptr inbounds %struct.gcry_mpi, ptr %79, i32 0, i32 3, !dbg !289
  %80 = load i32, ptr %sign84, align 4, !dbg !289
  store i32 %80, ptr %sign, align 4, !dbg !290
  %81 = load ptr, ptr %t3, align 8, !dbg !291
  %sign85 = getelementptr inbounds %struct.gcry_mpi, ptr %81, i32 0, i32 3, !dbg !292
  %82 = load i32, ptr %sign85, align 4, !dbg !292
  %tobool86 = icmp ne i32 %82, 0, !dbg !293
  %lnot87 = xor i1 %tobool86, true, !dbg !293
  %lnot.ext88 = zext i1 %lnot87 to i32, !dbg !293
  %83 = load ptr, ptr %t3, align 8, !dbg !294
  %sign89 = getelementptr inbounds %struct.gcry_mpi, ptr %83, i32 0, i32 3, !dbg !295
  store i32 %lnot.ext88, ptr %sign89, align 4, !dbg !296
  %84 = load ptr, ptr %v3, align 8, !dbg !297
  %85 = load ptr, ptr %t3, align 8, !dbg !298
  %call90 = call ptr @mpi_set(ptr noundef %84, ptr noundef %85) #5, !dbg !299
  %86 = load i32, ptr %sign, align 4, !dbg !300
  %87 = load ptr, ptr %t3, align 8, !dbg !301
  %sign91 = getelementptr inbounds %struct.gcry_mpi, ptr %87, i32 0, i32 3, !dbg !302
  store i32 %86, ptr %sign91, align 4, !dbg !303
  br label %if.end92

if.end92:                                         ; preds = %if.end82, %if.end71
  %88 = load ptr, ptr %t1, align 8, !dbg !304
  %89 = load ptr, ptr %u1, align 8, !dbg !305
  %90 = load ptr, ptr %v1, align 8, !dbg !306
  call void @mpi_sub(ptr noundef %88, ptr noundef %89, ptr noundef %90) #5, !dbg !307
  %91 = load i32, ptr %odd, align 4, !dbg !308
  %tobool93 = icmp ne i32 %91, 0, !dbg !308
  br i1 %tobool93, label %if.end95, label %if.then94, !dbg !310

if.then94:                                        ; preds = %if.end92
  %92 = load ptr, ptr %t2, align 8, !dbg !311
  %93 = load ptr, ptr %u2, align 8, !dbg !312
  %94 = load ptr, ptr %v2, align 8, !dbg !313
  call void @mpi_sub(ptr noundef %92, ptr noundef %93, ptr noundef %94) #5, !dbg !314
  br label %if.end95, !dbg !314

if.end95:                                         ; preds = %if.then94, %if.end92
  %95 = load ptr, ptr %t3, align 8, !dbg !315
  %96 = load ptr, ptr %u3, align 8, !dbg !316
  %97 = load ptr, ptr %v3, align 8, !dbg !317
  call void @mpi_sub(ptr noundef %95, ptr noundef %96, ptr noundef %97) #5, !dbg !318
  %98 = load ptr, ptr %t1, align 8, !dbg !319
  %sign96 = getelementptr inbounds %struct.gcry_mpi, ptr %98, i32 0, i32 3, !dbg !321
  %99 = load i32, ptr %sign96, align 4, !dbg !321
  %tobool97 = icmp ne i32 %99, 0, !dbg !319
  br i1 %tobool97, label %if.then98, label %if.end102, !dbg !322

if.then98:                                        ; preds = %if.end95
  %100 = load ptr, ptr %t1, align 8, !dbg !323
  %101 = load ptr, ptr %t1, align 8, !dbg !325
  %102 = load ptr, ptr %v, align 8, !dbg !326
  call void @mpi_add(ptr noundef %100, ptr noundef %101, ptr noundef %102) #5, !dbg !327
  %103 = load i32, ptr %odd, align 4, !dbg !328
  %tobool99 = icmp ne i32 %103, 0, !dbg !328
  br i1 %tobool99, label %if.end101, label %if.then100, !dbg !330

if.then100:                                       ; preds = %if.then98
  %104 = load ptr, ptr %t2, align 8, !dbg !331
  %105 = load ptr, ptr %t2, align 8, !dbg !332
  %106 = load ptr, ptr %u, align 8, !dbg !333
  call void @mpi_sub(ptr noundef %104, ptr noundef %105, ptr noundef %106) #5, !dbg !334
  br label %if.end101, !dbg !334

if.end101:                                        ; preds = %if.then100, %if.then98
  br label %if.end102, !dbg !335

if.end102:                                        ; preds = %if.end101, %if.end95
  br label %do.cond103, !dbg !336

do.cond103:                                       ; preds = %if.end102
  %107 = load ptr, ptr %t3, align 8, !dbg !337
  %call104 = call i32 @mpi_cmp_ui(ptr noundef %107, i64 noundef 0) #5, !dbg !338
  %tobool105 = icmp ne i32 %call104, 0, !dbg !336
  br i1 %tobool105, label %do.body, label %do.end106, !dbg !336, !llvm.loop !339

do.end106:                                        ; preds = %do.cond103
  %108 = load ptr, ptr %x.addr, align 8, !dbg !341
  %109 = load ptr, ptr %u1, align 8, !dbg !342
  %call107 = call ptr @mpi_set(ptr noundef %108, ptr noundef %109) #5, !dbg !343
  %110 = load ptr, ptr %u1, align 8, !dbg !344
  call void @mpi_free(ptr noundef %110) #5, !dbg !345
  %111 = load ptr, ptr %v1, align 8, !dbg !346
  call void @mpi_free(ptr noundef %111) #5, !dbg !347
  %112 = load ptr, ptr %t1, align 8, !dbg !348
  call void @mpi_free(ptr noundef %112) #5, !dbg !349
  %113 = load i32, ptr %odd, align 4, !dbg !350
  %tobool108 = icmp ne i32 %113, 0, !dbg !350
  br i1 %tobool108, label %if.end110, label %if.then109, !dbg !352

if.then109:                                       ; preds = %do.end106
  %114 = load ptr, ptr %u2, align 8, !dbg !353
  call void @mpi_free(ptr noundef %114) #5, !dbg !355
  %115 = load ptr, ptr %v2, align 8, !dbg !356
  call void @mpi_free(ptr noundef %115) #5, !dbg !357
  %116 = load ptr, ptr %t2, align 8, !dbg !358
  call void @mpi_free(ptr noundef %116) #5, !dbg !359
  br label %if.end110, !dbg !360

if.end110:                                        ; preds = %if.then109, %do.end106
  %117 = load ptr, ptr %u3, align 8, !dbg !361
  call void @mpi_free(ptr noundef %117) #5, !dbg !362
  %118 = load ptr, ptr %v3, align 8, !dbg !363
  call void @mpi_free(ptr noundef %118) #5, !dbg !364
  %119 = load ptr, ptr %t3, align 8, !dbg !365
  call void @mpi_free(ptr noundef %119) #5, !dbg !366
  %120 = load ptr, ptr %u, align 8, !dbg !367
  call void @mpi_free(ptr noundef %120) #5, !dbg !368
  %121 = load ptr, ptr %v, align 8, !dbg !369
  call void @mpi_free(ptr noundef %121) #5, !dbg !370
  store i32 1, ptr %retval, align 4, !dbg !371
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !371

cleanup:                                          ; preds = %if.end110, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %odd) #4, !dbg !372
  call void @llvm.lifetime.end.p0(i64 4, ptr %sign) #4, !dbg !372
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4, !dbg !372
  call void @llvm.lifetime.end.p0(i64 8, ptr %t3) #4, !dbg !372
  call void @llvm.lifetime.end.p0(i64 8, ptr %t2) #4, !dbg !372
  call void @llvm.lifetime.end.p0(i64 8, ptr %t1) #4, !dbg !372
  call void @llvm.lifetime.end.p0(i64 8, ptr %v3) #4, !dbg !372
  call void @llvm.lifetime.end.p0(i64 8, ptr %v2) #4, !dbg !372
  call void @llvm.lifetime.end.p0(i64 8, ptr %v1) #4, !dbg !372
  call void @llvm.lifetime.end.p0(i64 8, ptr %u3) #4, !dbg !372
  call void @llvm.lifetime.end.p0(i64 8, ptr %u2) #4, !dbg !372
  call void @llvm.lifetime.end.p0(i64 8, ptr %u1) #4, !dbg !372
  call void @llvm.lifetime.end.p0(i64 8, ptr %v) #4, !dbg !372
  call void @llvm.lifetime.end.p0(i64 8, ptr %u) #4, !dbg !372
  %122 = load i32, ptr %retval, align 4, !dbg !372
  ret i32 %122, !dbg !372
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !373 dso_local i32 @mpi_cmp_ui(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !378 dso_local ptr @mpi_copy(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !381 dso_local i32 @mpi_test_bit(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !384 dso_local void @mpi_rshift(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !387 dso_local ptr @mpi_alloc_set_ui(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !390 dso_local ptr @mpi_alloc(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !393 dso_local void @mpi_sub(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !396 dso_local void @mpi_add(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !397 dso_local ptr @mpi_set(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !400 dso_local void @mpi_free(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_mpi_invm287", scope: !2, file: !3, line: 143, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.mpi-inv.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22mpi_inv\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/mpi-inv.ll lib/crypto/mpi/mpi-inv.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/mpi/mpi-inv.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7de07b8f311f189d4739563a2ad3d94b")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0}
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 8, !"cf-protection-branch", i32 1}
!11 = !{i32 4, !"function_return_thunk_extern", i32 1}
!12 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!13 = !{i32 1, !"Code Model", i32 2}
!14 = !{i32 1, !"override-stack-alignment", i32 8}
!15 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!16 = distinct !DISubprogram(name: "mpi_invm", scope: !3, file: !3, line: 27, type: !17, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !35)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !20, !20, !20}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "MPI", file: !21, line: 40, baseType: !22)
!21 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gcry_mpi", file: !21, line: 29, size: 256, elements: !24)
!24 = !{!25, !26, !27, !28, !29, !31}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "alloced", scope: !23, file: !21, line: 30, baseType: !19, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "nlimbs", scope: !23, file: !21, line: 31, baseType: !19, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !23, file: !21, line: 32, baseType: !19, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !23, file: !21, line: 33, baseType: !19, size: 32, offset: 96)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !23, file: !21, line: 34, baseType: !30, size: 32, offset: 128)
!30 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !23, file: !21, line: 37, baseType: !32, size: 64, offset: 192)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !21, line: 26, baseType: !34)
!34 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!36 = !DILocalVariable(name: "x", arg: 1, scope: !16, file: !3, line: 27, type: !20)
!37 = !DILocalVariable(name: "a", arg: 2, scope: !16, file: !3, line: 27, type: !20)
!38 = !DILocalVariable(name: "n", arg: 3, scope: !16, file: !3, line: 27, type: !20)
!39 = !DILocalVariable(name: "u", scope: !16, file: !3, line: 33, type: !20)
!40 = !DILocalVariable(name: "v", scope: !16, file: !3, line: 33, type: !20)
!41 = !DILocalVariable(name: "u1", scope: !16, file: !3, line: 33, type: !20)
!42 = !DILocalVariable(name: "u2", scope: !16, file: !3, line: 33, type: !20)
!43 = !DILocalVariable(name: "u3", scope: !16, file: !3, line: 33, type: !20)
!44 = !DILocalVariable(name: "v1", scope: !16, file: !3, line: 33, type: !20)
!45 = !DILocalVariable(name: "v2", scope: !16, file: !3, line: 33, type: !20)
!46 = !DILocalVariable(name: "v3", scope: !16, file: !3, line: 33, type: !20)
!47 = !DILocalVariable(name: "t1", scope: !16, file: !3, line: 33, type: !20)
!48 = !DILocalVariable(name: "t2", scope: !16, file: !3, line: 33, type: !20)
!49 = !DILocalVariable(name: "t3", scope: !16, file: !3, line: 33, type: !20)
!50 = !DILocalVariable(name: "k", scope: !16, file: !3, line: 34, type: !30)
!51 = !DILocalVariable(name: "sign", scope: !16, file: !3, line: 35, type: !19)
!52 = !DILocalVariable(name: "odd", scope: !16, file: !3, line: 36, type: !19)
!53 = !DILabel(scope: !54, name: "Y4", file: !3, line: 95)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 79, column: 6)
!55 = distinct !DILexicalBlock(scope: !16, file: !3, line: 78, column: 5)
!56 = !DILocation(line: 27, column: 18, scope: !16)
!57 = !DILocation(line: 27, column: 25, scope: !16)
!58 = !DILocation(line: 27, column: 32, scope: !16)
!59 = !DILocation(line: 33, column: 2, scope: !16)
!60 = !DILocation(line: 33, column: 6, scope: !16)
!61 = !DILocation(line: 33, column: 9, scope: !16)
!62 = !DILocation(line: 33, column: 12, scope: !16)
!63 = !DILocation(line: 33, column: 16, scope: !16)
!64 = !DILocation(line: 33, column: 27, scope: !16)
!65 = !DILocation(line: 33, column: 31, scope: !16)
!66 = !DILocation(line: 33, column: 35, scope: !16)
!67 = !DILocation(line: 33, column: 46, scope: !16)
!68 = !DILocation(line: 33, column: 50, scope: !16)
!69 = !DILocation(line: 33, column: 54, scope: !16)
!70 = !DILocation(line: 33, column: 65, scope: !16)
!71 = !DILocation(line: 34, column: 2, scope: !16)
!72 = !DILocation(line: 34, column: 15, scope: !16)
!73 = !DILocation(line: 35, column: 2, scope: !16)
!74 = !DILocation(line: 35, column: 6, scope: !16)
!75 = !DILocation(line: 36, column: 2, scope: !16)
!76 = !DILocation(line: 36, column: 6, scope: !16)
!77 = !DILocation(line: 38, column: 18, scope: !78)
!78 = distinct !DILexicalBlock(scope: !16, file: !3, line: 38, column: 6)
!79 = !DILocation(line: 38, column: 7, scope: !78)
!80 = !DILocation(line: 38, column: 6, scope: !16)
!81 = !DILocation(line: 39, column: 3, scope: !78)
!82 = !DILocation(line: 40, column: 18, scope: !83)
!83 = distinct !DILexicalBlock(scope: !16, file: !3, line: 40, column: 6)
!84 = !DILocation(line: 40, column: 7, scope: !83)
!85 = !DILocation(line: 40, column: 6, scope: !16)
!86 = !DILocation(line: 41, column: 3, scope: !83)
!87 = !DILocation(line: 43, column: 15, scope: !16)
!88 = !DILocation(line: 43, column: 6, scope: !16)
!89 = !DILocation(line: 43, column: 4, scope: !16)
!90 = !DILocation(line: 44, column: 15, scope: !16)
!91 = !DILocation(line: 44, column: 6, scope: !16)
!92 = !DILocation(line: 44, column: 4, scope: !16)
!93 = !DILocation(line: 46, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !16, file: !3, line: 46, column: 2)
!95 = !DILocation(line: 46, column: 7, scope: !94)
!96 = !DILocation(line: 46, column: 28, scope: !97)
!97 = distinct !DILexicalBlock(scope: !94, file: !3, line: 46, column: 2)
!98 = !DILocation(line: 46, column: 15, scope: !97)
!99 = !DILocation(line: 46, column: 34, scope: !97)
!100 = !DILocation(line: 46, column: 51, scope: !97)
!101 = !DILocation(line: 46, column: 38, scope: !97)
!102 = !DILocation(line: 46, column: 37, scope: !97)
!103 = !DILocation(line: 0, scope: !97)
!104 = !DILocation(line: 46, column: 2, scope: !94)
!105 = !DILocation(line: 47, column: 14, scope: !106)
!106 = distinct !DILexicalBlock(scope: !97, file: !3, line: 46, column: 63)
!107 = !DILocation(line: 47, column: 17, scope: !106)
!108 = !DILocation(line: 47, column: 3, scope: !106)
!109 = !DILocation(line: 48, column: 14, scope: !106)
!110 = !DILocation(line: 48, column: 17, scope: !106)
!111 = !DILocation(line: 48, column: 3, scope: !106)
!112 = !DILocation(line: 49, column: 2, scope: !106)
!113 = !DILocation(line: 46, column: 59, scope: !97)
!114 = !DILocation(line: 46, column: 2, scope: !97)
!115 = distinct !{!115, !104, !116, !117, !118}
!116 = !DILocation(line: 49, column: 2, scope: !94)
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{!"llvm.loop.unroll.disable"}
!119 = !DILocation(line: 50, column: 21, scope: !16)
!120 = !DILocation(line: 50, column: 8, scope: !16)
!121 = !DILocation(line: 50, column: 6, scope: !16)
!122 = !DILocation(line: 52, column: 7, scope: !16)
!123 = !DILocation(line: 52, column: 5, scope: !16)
!124 = !DILocation(line: 53, column: 7, scope: !125)
!125 = distinct !DILexicalBlock(scope: !16, file: !3, line: 53, column: 6)
!126 = !DILocation(line: 53, column: 6, scope: !16)
!127 = !DILocation(line: 54, column: 8, scope: !125)
!128 = !DILocation(line: 54, column: 6, scope: !125)
!129 = !DILocation(line: 54, column: 3, scope: !125)
!130 = !DILocation(line: 55, column: 16, scope: !16)
!131 = !DILocation(line: 55, column: 7, scope: !16)
!132 = !DILocation(line: 55, column: 5, scope: !16)
!133 = !DILocation(line: 56, column: 16, scope: !16)
!134 = !DILocation(line: 56, column: 7, scope: !16)
!135 = !DILocation(line: 56, column: 5, scope: !16)
!136 = !DILocation(line: 57, column: 7, scope: !137)
!137 = distinct !DILexicalBlock(scope: !16, file: !3, line: 57, column: 6)
!138 = !DILocation(line: 57, column: 6, scope: !16)
!139 = !DILocation(line: 58, column: 18, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !3, line: 57, column: 12)
!141 = !DILocation(line: 58, column: 8, scope: !140)
!142 = !DILocation(line: 58, column: 6, scope: !140)
!143 = !DILocation(line: 59, column: 11, scope: !140)
!144 = !DILocation(line: 59, column: 15, scope: !140)
!145 = !DILocation(line: 59, column: 19, scope: !140)
!146 = !DILocation(line: 59, column: 3, scope: !140)
!147 = !DILocation(line: 60, column: 2, scope: !140)
!148 = !DILocation(line: 61, column: 16, scope: !16)
!149 = !DILocation(line: 61, column: 7, scope: !16)
!150 = !DILocation(line: 61, column: 5, scope: !16)
!151 = !DILocation(line: 62, column: 19, scope: !152)
!152 = distinct !DILexicalBlock(scope: !16, file: !3, line: 62, column: 6)
!153 = !DILocation(line: 62, column: 6, scope: !152)
!154 = !DILocation(line: 62, column: 6, scope: !16)
!155 = !DILocation(line: 63, column: 8, scope: !156)
!156 = distinct !DILexicalBlock(scope: !152, file: !3, line: 62, column: 26)
!157 = !DILocation(line: 63, column: 6, scope: !156)
!158 = !DILocation(line: 64, column: 8, scope: !159)
!159 = distinct !DILexicalBlock(scope: !156, file: !3, line: 64, column: 7)
!160 = !DILocation(line: 64, column: 7, scope: !156)
!161 = !DILocation(line: 65, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !3, line: 64, column: 13)
!163 = !DILocation(line: 65, column: 7, scope: !162)
!164 = !DILocation(line: 66, column: 4, scope: !162)
!165 = !DILocation(line: 66, column: 8, scope: !162)
!166 = !DILocation(line: 66, column: 13, scope: !162)
!167 = !DILocation(line: 67, column: 3, scope: !162)
!168 = !DILocation(line: 68, column: 17, scope: !156)
!169 = !DILocation(line: 68, column: 8, scope: !156)
!170 = !DILocation(line: 68, column: 6, scope: !156)
!171 = !DILocation(line: 69, column: 15, scope: !156)
!172 = !DILocation(line: 69, column: 19, scope: !156)
!173 = !DILocation(line: 69, column: 14, scope: !156)
!174 = !DILocation(line: 69, column: 3, scope: !156)
!175 = !DILocation(line: 69, column: 7, scope: !156)
!176 = !DILocation(line: 69, column: 12, scope: !156)
!177 = !DILocation(line: 70, column: 3, scope: !156)
!178 = !DILocation(line: 72, column: 8, scope: !179)
!179 = distinct !DILexicalBlock(scope: !152, file: !3, line: 71, column: 9)
!180 = !DILocation(line: 72, column: 6, scope: !179)
!181 = !DILocation(line: 73, column: 8, scope: !182)
!182 = distinct !DILexicalBlock(scope: !179, file: !3, line: 73, column: 7)
!183 = !DILocation(line: 73, column: 7, scope: !179)
!184 = !DILocation(line: 74, column: 9, scope: !182)
!185 = !DILocation(line: 74, column: 7, scope: !182)
!186 = !DILocation(line: 74, column: 4, scope: !182)
!187 = !DILocation(line: 75, column: 17, scope: !179)
!188 = !DILocation(line: 75, column: 8, scope: !179)
!189 = !DILocation(line: 75, column: 6, scope: !179)
!190 = !DILocation(line: 78, column: 2, scope: !16)
!191 = !DILocation(line: 79, column: 3, scope: !55)
!192 = !DILocation(line: 80, column: 9, scope: !193)
!193 = distinct !DILexicalBlock(scope: !54, file: !3, line: 80, column: 8)
!194 = !DILocation(line: 80, column: 8, scope: !54)
!195 = !DILocation(line: 81, column: 22, scope: !196)
!196 = distinct !DILexicalBlock(scope: !197, file: !3, line: 81, column: 9)
!197 = distinct !DILexicalBlock(scope: !193, file: !3, line: 80, column: 14)
!198 = !DILocation(line: 81, column: 9, scope: !196)
!199 = !DILocation(line: 81, column: 29, scope: !196)
!200 = !DILocation(line: 81, column: 45, scope: !196)
!201 = !DILocation(line: 81, column: 32, scope: !196)
!202 = !DILocation(line: 81, column: 9, scope: !197)
!203 = !DILocation(line: 83, column: 14, scope: !204)
!204 = distinct !DILexicalBlock(scope: !196, file: !3, line: 81, column: 53)
!205 = !DILocation(line: 83, column: 18, scope: !204)
!206 = !DILocation(line: 83, column: 22, scope: !204)
!207 = !DILocation(line: 83, column: 6, scope: !204)
!208 = !DILocation(line: 84, column: 14, scope: !204)
!209 = !DILocation(line: 84, column: 18, scope: !204)
!210 = !DILocation(line: 84, column: 22, scope: !204)
!211 = !DILocation(line: 84, column: 6, scope: !204)
!212 = !DILocation(line: 85, column: 5, scope: !204)
!213 = !DILocation(line: 86, column: 16, scope: !197)
!214 = !DILocation(line: 86, column: 20, scope: !197)
!215 = !DILocation(line: 86, column: 5, scope: !197)
!216 = !DILocation(line: 87, column: 16, scope: !197)
!217 = !DILocation(line: 87, column: 20, scope: !197)
!218 = !DILocation(line: 87, column: 5, scope: !197)
!219 = !DILocation(line: 88, column: 16, scope: !197)
!220 = !DILocation(line: 88, column: 20, scope: !197)
!221 = !DILocation(line: 88, column: 5, scope: !197)
!222 = !DILocation(line: 89, column: 4, scope: !197)
!223 = !DILocation(line: 90, column: 22, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 90, column: 9)
!225 = distinct !DILexicalBlock(scope: !193, file: !3, line: 89, column: 11)
!226 = !DILocation(line: 90, column: 9, scope: !224)
!227 = !DILocation(line: 90, column: 9, scope: !225)
!228 = !DILocation(line: 91, column: 14, scope: !224)
!229 = !DILocation(line: 91, column: 18, scope: !224)
!230 = !DILocation(line: 91, column: 22, scope: !224)
!231 = !DILocation(line: 91, column: 6, scope: !224)
!232 = !DILocation(line: 92, column: 16, scope: !225)
!233 = !DILocation(line: 92, column: 20, scope: !225)
!234 = !DILocation(line: 92, column: 5, scope: !225)
!235 = !DILocation(line: 93, column: 16, scope: !225)
!236 = !DILocation(line: 93, column: 20, scope: !225)
!237 = !DILocation(line: 93, column: 5, scope: !225)
!238 = !DILocation(line: 95, column: 1, scope: !54)
!239 = !DILocation(line: 97, column: 3, scope: !54)
!240 = !DILocation(line: 97, column: 26, scope: !55)
!241 = !DILocation(line: 97, column: 13, scope: !55)
!242 = !DILocation(line: 97, column: 12, scope: !55)
!243 = distinct !{!243, !191, !244, !117, !118}
!244 = !DILocation(line: 97, column: 32, scope: !55)
!245 = !DILocation(line: 99, column: 8, scope: !246)
!246 = distinct !DILexicalBlock(scope: !55, file: !3, line: 99, column: 7)
!247 = !DILocation(line: 99, column: 12, scope: !246)
!248 = !DILocation(line: 99, column: 7, scope: !55)
!249 = !DILocation(line: 100, column: 12, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 99, column: 18)
!251 = !DILocation(line: 100, column: 16, scope: !250)
!252 = !DILocation(line: 100, column: 4, scope: !250)
!253 = !DILocation(line: 101, column: 9, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !3, line: 101, column: 8)
!255 = !DILocation(line: 101, column: 8, scope: !250)
!256 = !DILocation(line: 102, column: 13, scope: !254)
!257 = !DILocation(line: 102, column: 17, scope: !254)
!258 = !DILocation(line: 102, column: 5, scope: !254)
!259 = !DILocation(line: 103, column: 12, scope: !250)
!260 = !DILocation(line: 103, column: 16, scope: !250)
!261 = !DILocation(line: 103, column: 4, scope: !250)
!262 = !DILocation(line: 104, column: 3, scope: !250)
!263 = !DILocation(line: 105, column: 12, scope: !264)
!264 = distinct !DILexicalBlock(scope: !246, file: !3, line: 104, column: 10)
!265 = !DILocation(line: 105, column: 16, scope: !264)
!266 = !DILocation(line: 105, column: 19, scope: !264)
!267 = !DILocation(line: 105, column: 4, scope: !264)
!268 = !DILocation(line: 106, column: 11, scope: !264)
!269 = !DILocation(line: 106, column: 14, scope: !264)
!270 = !DILocation(line: 106, column: 9, scope: !264)
!271 = !DILocation(line: 106, column: 31, scope: !264)
!272 = !DILocation(line: 106, column: 34, scope: !264)
!273 = !DILocation(line: 106, column: 30, scope: !264)
!274 = !DILocation(line: 106, column: 20, scope: !264)
!275 = !DILocation(line: 106, column: 23, scope: !264)
!276 = !DILocation(line: 106, column: 28, scope: !264)
!277 = !DILocation(line: 107, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !264, file: !3, line: 107, column: 8)
!279 = !DILocation(line: 107, column: 8, scope: !264)
!280 = !DILocation(line: 108, column: 13, scope: !278)
!281 = !DILocation(line: 108, column: 17, scope: !278)
!282 = !DILocation(line: 108, column: 20, scope: !278)
!283 = !DILocation(line: 108, column: 5, scope: !278)
!284 = !DILocation(line: 109, column: 14, scope: !264)
!285 = !DILocation(line: 109, column: 4, scope: !264)
!286 = !DILocation(line: 109, column: 7, scope: !264)
!287 = !DILocation(line: 109, column: 12, scope: !264)
!288 = !DILocation(line: 110, column: 11, scope: !264)
!289 = !DILocation(line: 110, column: 15, scope: !264)
!290 = !DILocation(line: 110, column: 9, scope: !264)
!291 = !DILocation(line: 110, column: 33, scope: !264)
!292 = !DILocation(line: 110, column: 37, scope: !264)
!293 = !DILocation(line: 110, column: 32, scope: !264)
!294 = !DILocation(line: 110, column: 21, scope: !264)
!295 = !DILocation(line: 110, column: 25, scope: !264)
!296 = !DILocation(line: 110, column: 30, scope: !264)
!297 = !DILocation(line: 111, column: 12, scope: !264)
!298 = !DILocation(line: 111, column: 16, scope: !264)
!299 = !DILocation(line: 111, column: 4, scope: !264)
!300 = !DILocation(line: 112, column: 15, scope: !264)
!301 = !DILocation(line: 112, column: 4, scope: !264)
!302 = !DILocation(line: 112, column: 8, scope: !264)
!303 = !DILocation(line: 112, column: 13, scope: !264)
!304 = !DILocation(line: 114, column: 11, scope: !55)
!305 = !DILocation(line: 114, column: 15, scope: !55)
!306 = !DILocation(line: 114, column: 19, scope: !55)
!307 = !DILocation(line: 114, column: 3, scope: !55)
!308 = !DILocation(line: 115, column: 8, scope: !309)
!309 = distinct !DILexicalBlock(scope: !55, file: !3, line: 115, column: 7)
!310 = !DILocation(line: 115, column: 7, scope: !55)
!311 = !DILocation(line: 116, column: 12, scope: !309)
!312 = !DILocation(line: 116, column: 16, scope: !309)
!313 = !DILocation(line: 116, column: 20, scope: !309)
!314 = !DILocation(line: 116, column: 4, scope: !309)
!315 = !DILocation(line: 117, column: 11, scope: !55)
!316 = !DILocation(line: 117, column: 15, scope: !55)
!317 = !DILocation(line: 117, column: 19, scope: !55)
!318 = !DILocation(line: 117, column: 3, scope: !55)
!319 = !DILocation(line: 118, column: 7, scope: !320)
!320 = distinct !DILexicalBlock(scope: !55, file: !3, line: 118, column: 7)
!321 = !DILocation(line: 118, column: 11, scope: !320)
!322 = !DILocation(line: 118, column: 7, scope: !55)
!323 = !DILocation(line: 119, column: 12, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !3, line: 118, column: 17)
!325 = !DILocation(line: 119, column: 16, scope: !324)
!326 = !DILocation(line: 119, column: 20, scope: !324)
!327 = !DILocation(line: 119, column: 4, scope: !324)
!328 = !DILocation(line: 120, column: 9, scope: !329)
!329 = distinct !DILexicalBlock(scope: !324, file: !3, line: 120, column: 8)
!330 = !DILocation(line: 120, column: 8, scope: !324)
!331 = !DILocation(line: 121, column: 13, scope: !329)
!332 = !DILocation(line: 121, column: 17, scope: !329)
!333 = !DILocation(line: 121, column: 21, scope: !329)
!334 = !DILocation(line: 121, column: 5, scope: !329)
!335 = !DILocation(line: 122, column: 3, scope: !324)
!336 = !DILocation(line: 123, column: 2, scope: !55)
!337 = !DILocation(line: 123, column: 22, scope: !16)
!338 = !DILocation(line: 123, column: 11, scope: !16)
!339 = distinct !{!339, !190, !340, !117, !118}
!340 = !DILocation(line: 123, column: 28, scope: !16)
!341 = !DILocation(line: 125, column: 10, scope: !16)
!342 = !DILocation(line: 125, column: 13, scope: !16)
!343 = !DILocation(line: 125, column: 2, scope: !16)
!344 = !DILocation(line: 127, column: 11, scope: !16)
!345 = !DILocation(line: 127, column: 2, scope: !16)
!346 = !DILocation(line: 128, column: 11, scope: !16)
!347 = !DILocation(line: 128, column: 2, scope: !16)
!348 = !DILocation(line: 129, column: 11, scope: !16)
!349 = !DILocation(line: 129, column: 2, scope: !16)
!350 = !DILocation(line: 130, column: 7, scope: !351)
!351 = distinct !DILexicalBlock(scope: !16, file: !3, line: 130, column: 6)
!352 = !DILocation(line: 130, column: 6, scope: !16)
!353 = !DILocation(line: 131, column: 12, scope: !354)
!354 = distinct !DILexicalBlock(scope: !351, file: !3, line: 130, column: 12)
!355 = !DILocation(line: 131, column: 3, scope: !354)
!356 = !DILocation(line: 132, column: 12, scope: !354)
!357 = !DILocation(line: 132, column: 3, scope: !354)
!358 = !DILocation(line: 133, column: 12, scope: !354)
!359 = !DILocation(line: 133, column: 3, scope: !354)
!360 = !DILocation(line: 134, column: 2, scope: !354)
!361 = !DILocation(line: 135, column: 11, scope: !16)
!362 = !DILocation(line: 135, column: 2, scope: !16)
!363 = !DILocation(line: 136, column: 11, scope: !16)
!364 = !DILocation(line: 136, column: 2, scope: !16)
!365 = !DILocation(line: 137, column: 11, scope: !16)
!366 = !DILocation(line: 137, column: 2, scope: !16)
!367 = !DILocation(line: 139, column: 11, scope: !16)
!368 = !DILocation(line: 139, column: 2, scope: !16)
!369 = !DILocation(line: 140, column: 11, scope: !16)
!370 = !DILocation(line: 140, column: 2, scope: !16)
!371 = !DILocation(line: 141, column: 2, scope: !16)
!372 = !DILocation(line: 142, column: 1, scope: !16)
!373 = !DISubprogram(name: "mpi_cmp_ui", scope: !21, file: !21, line: 121, type: !374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!374 = !DISubroutineType(types: !375)
!375 = !{!19, !20, !376}
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "ulong", file: !377, line: 94, baseType: !34)
!377 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!378 = !DISubprogram(name: "mpi_copy", scope: !21, file: !21, line: 56, type: !379, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!379 = !DISubroutineType(types: !380)
!380 = !{!20, !20}
!381 = !DISubprogram(name: "mpi_test_bit", scope: !21, file: !21, line: 131, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!382 = !DISubroutineType(types: !383)
!383 = !{!19, !20, !30}
!384 = !DISubprogram(name: "mpi_rshift", scope: !21, file: !21, line: 137, type: !385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !20, !20, !30}
!387 = !DISubprogram(name: "mpi_alloc_set_ui", scope: !21, file: !21, line: 61, type: !388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!388 = !DISubroutineType(types: !389)
!389 = !{!20, !34}
!390 = !DISubprogram(name: "mpi_alloc", scope: !21, file: !21, line: 46, type: !391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!391 = !DISubroutineType(types: !392)
!392 = !{!20, !30}
!393 = !DISubprogram(name: "mpi_sub", scope: !21, file: !21, line: 144, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !20, !20, !20}
!396 = !DISubprogram(name: "mpi_add", scope: !21, file: !21, line: 143, type: !394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!397 = !DISubprogram(name: "mpi_set", scope: !21, file: !21, line: 59, type: !398, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!398 = !DISubroutineType(types: !399)
!399 = !{!20, !20, !20}
!400 = !DISubprogram(name: "mpi_free", scope: !21, file: !21, line: 48, type: !401, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !20}
