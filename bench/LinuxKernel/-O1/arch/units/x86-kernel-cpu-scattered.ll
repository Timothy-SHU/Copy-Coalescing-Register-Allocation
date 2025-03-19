; ModuleID = 'arch/x86/kernel/cpu/scattered.c'
source_filename = "arch/x86/kernel/cpu/scattered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuid_bit = type { i16, i8, i8, i32, i32 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }

@cpuid_bits = internal constant [28 x %struct.cpuid_bit] [%struct.cpuid_bit { i16 124, i8 2, i8 0, i32 6, i32 0 }, %struct.cpuid_bit { i16 227, i8 2, i8 3, i32 6, i32 0 }, %struct.cpuid_bit { i16 238, i8 1, i8 0, i32 7, i32 1 }, %struct.cpuid_bit { i16 363, i8 3, i8 2, i32 7, i32 2 }, %struct.cpuid_bit { i16 674, i8 3, i8 4, i32 7, i32 2 }, %struct.cpuid_bit { i16 352, i8 3, i8 1, i32 15, i32 0 }, %struct.cpuid_bit { i16 353, i8 3, i8 0, i32 15, i32 1 }, %struct.cpuid_bit { i16 354, i8 3, i8 1, i32 15, i32 1 }, %struct.cpuid_bit { i16 355, i8 3, i8 2, i32 15, i32 1 }, %struct.cpuid_bit { i16 228, i8 1, i8 1, i32 16, i32 0 }, %struct.cpuid_bit { i16 229, i8 1, i8 2, i32 16, i32 0 }, %struct.cpuid_bit { i16 230, i8 2, i8 2, i32 16, i32 1 }, %struct.cpuid_bit { i16 239, i8 2, i8 2, i32 16, i32 2 }, %struct.cpuid_bit { i16 242, i8 1, i8 3, i32 16, i32 0 }, %struct.cpuid_bit { i16 359, i8 2, i8 0, i32 16, i32 3 }, %struct.cpuid_bit { i16 360, i8 0, i8 0, i32 18, i32 0 }, %struct.cpuid_bit { i16 361, i8 0, i8 1, i32 18, i32 0 }, %struct.cpuid_bit { i16 370, i8 0, i8 11, i32 18, i32 0 }, %struct.cpuid_bit { i16 232, i8 3, i8 7, i32 -2147483641, i32 0 }, %struct.cpuid_bit { i16 226, i8 3, i8 9, i32 -2147483641, i32 0 }, %struct.cpuid_bit { i16 233, i8 3, i8 11, i32 -2147483641, i32 0 }, %struct.cpuid_bit { i16 242, i8 1, i8 6, i32 -2147483640, i32 0 }, %struct.cpuid_bit { i16 373, i8 1, i8 2, i32 -2147483616, i32 0 }, %struct.cpuid_bit { i16 374, i8 1, i8 3, i32 -2147483616, i32 0 }, %struct.cpuid_bit { i16 244, i8 0, i8 0, i32 -2147483614, i32 0 }, %struct.cpuid_bit { i16 113, i8 0, i8 1, i32 -2147483614, i32 0 }, %struct.cpuid_bit { i16 672, i8 0, i8 2, i32 -2147483614, i32 0 }, %struct.cpuid_bit zeroinitializer], align 16, !dbg !0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @init_scattered_cpuid_features(ptr noundef %c) #0 align 16 !dbg !59 {
entry:
  %c.addr = alloca ptr, align 8
  %max_level = alloca i32, align 4
  %regs = alloca [4 x i32], align 16
  %cb = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !136, metadata !DIExpression()), !dbg !144
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_level) #6, !dbg !145
  call void @llvm.dbg.declare(metadata ptr %max_level, metadata !137, metadata !DIExpression()), !dbg !146
  call void @llvm.lifetime.start.p0(i64 16, ptr %regs) #6, !dbg !147
  call void @llvm.dbg.declare(metadata ptr %regs, metadata !138, metadata !DIExpression()), !dbg !148
  call void @llvm.lifetime.start.p0(i64 8, ptr %cb) #6, !dbg !149
  call void @llvm.dbg.declare(metadata ptr %cb, metadata !142, metadata !DIExpression()), !dbg !150
  store ptr @cpuid_bits, ptr %cb, align 8, !dbg !151
  br label %for.cond, !dbg !153

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %cb, align 8, !dbg !154
  %feature = getelementptr inbounds %struct.cpuid_bit, ptr %0, i32 0, i32 0, !dbg !156
  %1 = load i16, ptr %feature, align 4, !dbg !156
  %tobool = icmp ne i16 %1, 0, !dbg !157
  br i1 %tobool, label %for.body, label %for.end, !dbg !157

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %cb, align 8, !dbg !158
  %level = getelementptr inbounds %struct.cpuid_bit, ptr %2, i32 0, i32 3, !dbg !160
  %3 = load i32, ptr %level, align 4, !dbg !160
  %and = and i32 %3, -65536, !dbg !161
  %call = call i32 @cpuid_eax(i32 noundef %and) #7, !dbg !162
  store i32 %call, ptr %max_level, align 4, !dbg !163
  %4 = load i32, ptr %max_level, align 4, !dbg !164
  %5 = load ptr, ptr %cb, align 8, !dbg !166
  %level1 = getelementptr inbounds %struct.cpuid_bit, ptr %5, i32 0, i32 3, !dbg !167
  %6 = load i32, ptr %level1, align 4, !dbg !167
  %cmp = icmp ult i32 %4, %6, !dbg !168
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !169

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, ptr %max_level, align 4, !dbg !170
  %8 = load ptr, ptr %cb, align 8, !dbg !171
  %level2 = getelementptr inbounds %struct.cpuid_bit, ptr %8, i32 0, i32 3, !dbg !172
  %9 = load i32, ptr %level2, align 4, !dbg !172
  %or = or i32 %9, 65535, !dbg !173
  %cmp3 = icmp ugt i32 %7, %or, !dbg !174
  br i1 %cmp3, label %if.then, label %if.end, !dbg !175

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc, !dbg !176

if.end:                                           ; preds = %lor.lhs.false
  %10 = load ptr, ptr %cb, align 8, !dbg !177
  %level4 = getelementptr inbounds %struct.cpuid_bit, ptr %10, i32 0, i32 3, !dbg !178
  %11 = load i32, ptr %level4, align 4, !dbg !178
  %12 = load ptr, ptr %cb, align 8, !dbg !179
  %sub_leaf = getelementptr inbounds %struct.cpuid_bit, ptr %12, i32 0, i32 4, !dbg !180
  %13 = load i32, ptr %sub_leaf, align 4, !dbg !180
  %arrayidx = getelementptr [4 x i32], ptr %regs, i64 0, i64 0, !dbg !181
  %arrayidx5 = getelementptr [4 x i32], ptr %regs, i64 0, i64 1, !dbg !182
  %arrayidx6 = getelementptr [4 x i32], ptr %regs, i64 0, i64 2, !dbg !183
  %arrayidx7 = getelementptr [4 x i32], ptr %regs, i64 0, i64 3, !dbg !184
  call void @cpuid_count(i32 noundef %11, i32 noundef %13, ptr noundef %arrayidx, ptr noundef %arrayidx5, ptr noundef %arrayidx6, ptr noundef %arrayidx7) #7, !dbg !185
  %14 = load ptr, ptr %cb, align 8, !dbg !186
  %reg = getelementptr inbounds %struct.cpuid_bit, ptr %14, i32 0, i32 1, !dbg !188
  %15 = load i8, ptr %reg, align 2, !dbg !188
  %idxprom = zext i8 %15 to i64, !dbg !189
  %arrayidx8 = getelementptr [4 x i32], ptr %regs, i64 0, i64 %idxprom, !dbg !189
  %16 = load i32, ptr %arrayidx8, align 4, !dbg !189
  %17 = load ptr, ptr %cb, align 8, !dbg !190
  %bit = getelementptr inbounds %struct.cpuid_bit, ptr %17, i32 0, i32 2, !dbg !191
  %18 = load i8, ptr %bit, align 1, !dbg !191
  %conv = zext i8 %18 to i32, !dbg !190
  %shl = shl i32 1, %conv, !dbg !192
  %and9 = and i32 %16, %shl, !dbg !193
  %tobool10 = icmp ne i32 %and9, 0, !dbg !193
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !194

if.then11:                                        ; preds = %if.end
  %19 = load ptr, ptr %cb, align 8, !dbg !195
  %feature12 = getelementptr inbounds %struct.cpuid_bit, ptr %19, i32 0, i32 0, !dbg !195
  %20 = load i16, ptr %feature12, align 4, !dbg !195
  %conv13 = zext i16 %20 to i64, !dbg !195
  %21 = load ptr, ptr %c.addr, align 8, !dbg !195
  %22 = getelementptr inbounds %struct.cpuinfo_x86, ptr %21, i32 0, i32 10, !dbg !195
  %arraydecay = getelementptr inbounds [24 x i32], ptr %22, i64 0, i64 0, !dbg !195
  call void @set_bit(i64 noundef %conv13, ptr noundef %arraydecay) #7, !dbg !195
  br label %if.end14, !dbg !195

if.end14:                                         ; preds = %if.then11, %if.end
  br label %for.inc, !dbg !196

for.inc:                                          ; preds = %if.end14, %if.then
  %23 = load ptr, ptr %cb, align 8, !dbg !197
  %incdec.ptr = getelementptr %struct.cpuid_bit, ptr %23, i32 1, !dbg !197
  store ptr %incdec.ptr, ptr %cb, align 8, !dbg !197
  br label %for.cond, !dbg !198, !llvm.loop !199

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %cb) #6, !dbg !203
  call void @llvm.lifetime.end.p0(i64 16, ptr %regs) #6, !dbg !203
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_level) #6, !dbg !203
  ret void, !dbg !203
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_eax(i32 noundef %op) #3 align 16 !dbg !204 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !208, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #6, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !209, metadata !DIExpression()), !dbg !215
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #6, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !210, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #6, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !211, metadata !DIExpression()), !dbg !217
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #6, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !212, metadata !DIExpression()), !dbg !218
  %0 = load i32, ptr %op.addr, align 4, !dbg !219
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #7, !dbg !220
  %1 = load i32, ptr %eax, align 4, !dbg !221
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #6, !dbg !222
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #6, !dbg !222
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #6, !dbg !222
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #6, !dbg !222
  ret i32 %1, !dbg !223
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid_count(i32 noundef %op, i32 noundef %count, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #3 align 16 !dbg !224 {
entry:
  %op.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !229, metadata !DIExpression()), !dbg !235
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !230, metadata !DIExpression()), !dbg !236
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !231, metadata !DIExpression()), !dbg !237
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !232, metadata !DIExpression()), !dbg !238
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !233, metadata !DIExpression()), !dbg !239
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !234, metadata !DIExpression()), !dbg !240
  %0 = load i32, ptr %op.addr, align 4, !dbg !241
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !242
  store i32 %0, ptr %1, align 4, !dbg !243
  %2 = load i32, ptr %count.addr, align 4, !dbg !244
  %3 = load ptr, ptr %ecx.addr, align 8, !dbg !245
  store i32 %2, ptr %3, align 4, !dbg !246
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !247
  %5 = load ptr, ptr %ebx.addr, align 8, !dbg !248
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !249
  %7 = load ptr, ptr %edx.addr, align 8, !dbg !250
  call void @native_cpuid(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #7, !dbg !251
  ret void, !dbg !252
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !253 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !260, metadata !DIExpression()), !dbg !262
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !261, metadata !DIExpression()), !dbg !263
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !264
  %1 = load i64, ptr %nr.addr, align 8, !dbg !265
  %div = sdiv i64 %1, 64, !dbg !265
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !266
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #7, !dbg !267
  %2 = load i64, ptr %nr.addr, align 8, !dbg !268
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !269
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #7, !dbg !270
  ret void, !dbg !271
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid(i32 noundef %op, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #3 align 16 !dbg !272 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !276, metadata !DIExpression()), !dbg !281
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !277, metadata !DIExpression()), !dbg !282
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !278, metadata !DIExpression()), !dbg !283
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !279, metadata !DIExpression()), !dbg !284
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !280, metadata !DIExpression()), !dbg !285
  %0 = load i32, ptr %op.addr, align 4, !dbg !286
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !287
  store i32 %0, ptr %1, align 4, !dbg !288
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !289
  store i32 0, ptr %2, align 4, !dbg !290
  %3 = load ptr, ptr %eax.addr, align 8, !dbg !291
  %4 = load ptr, ptr %ebx.addr, align 8, !dbg !292
  %5 = load ptr, ptr %ecx.addr, align 8, !dbg !293
  %6 = load ptr, ptr %edx.addr, align 8, !dbg !294
  call void @native_cpuid(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #7, !dbg !295
  ret void, !dbg !296
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #3 align 16 !dbg !297 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !301, metadata !DIExpression()), !dbg !305
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !302, metadata !DIExpression()), !dbg !306
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !303, metadata !DIExpression()), !dbg !307
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !304, metadata !DIExpression()), !dbg !308
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !309
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !310
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !311
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !312
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !313
  %5 = load i32, ptr %4, align 4, !dbg !314
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !315
  %7 = load i32, ptr %6, align 4, !dbg !316
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #6, !dbg !317, !srcloc !318
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !317
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !317
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !317
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !317
  store i32 %asmresult, ptr %0, align 4, !dbg !317
  store i32 %asmresult1, ptr %1, align 4, !dbg !317
  store i32 %asmresult2, ptr %2, align 4, !dbg !317
  store i32 %asmresult3, ptr %3, align 4, !dbg !317
  ret void, !dbg !319
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !320 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !332, metadata !DIExpression()), !dbg !334
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !333, metadata !DIExpression()), !dbg !335
  %0 = load ptr, ptr %v.addr, align 8, !dbg !336
  %1 = load i64, ptr %size.addr, align 8, !dbg !337
  %conv = trunc i64 %1 to i32, !dbg !337
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #7, !dbg !338
  %2 = load ptr, ptr %v.addr, align 8, !dbg !339
  %3 = load i64, ptr %size.addr, align 8, !dbg !339
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #7, !dbg !339
  ret void, !dbg !340
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !341 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !344, metadata !DIExpression()), !dbg !346
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !345, metadata !DIExpression()), !dbg !347
  %0 = load i64, ptr %nr.addr, align 8, !dbg !348
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !350
  br i1 %1, label %if.then, label %if.else, !dbg !351

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !352
  %3 = load i64, ptr %nr.addr, align 8, !dbg !352
  %shr = ashr i64 %3, 3, !dbg !352
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !352
  %4 = load i64, ptr %nr.addr, align 8, !dbg !354
  %and = and i64 %4, 7, !dbg !354
  %sh_prom = trunc i64 %and to i32, !dbg !354
  %shl = shl i32 1, %sh_prom, !dbg !354
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #6, !dbg !355, !srcloc !356
  br label %if.end, !dbg !357

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !358
  %6 = load i64, ptr %nr.addr, align 8, !dbg !360
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #6, !dbg !361, !srcloc !362
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !363
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !364 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !369, metadata !DIExpression()), !dbg !371
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !370, metadata !DIExpression()), !dbg !372
  ret i1 true, !dbg !373
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !374 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !379, metadata !DIExpression()), !dbg !382
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !380, metadata !DIExpression()), !dbg !383
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !381, metadata !DIExpression()), !dbg !384
  ret void, !dbg !385
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpuid_bits", scope: !2, file: !3, line: 26, type: !29, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.scattered.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/scattered\22 -D KBUILD_BASENAME=\22scattered\22 -D KBUILD_MODNAME=\22scattered\22 -D __KBUILD_MODNAME=kmod_scattered -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/scattered.ll arch/x86/kernel/cpu/scattered.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !18, globals: !28, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/scattered.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "77bd95e322982d6701d5c9815d09c611")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuid_regs_idx", file: !6, line: 15, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "CPUID_EAX", value: 0)
!10 = !DIEnumerator(name: "CPUID_EBX", value: 1)
!11 = !DIEnumerator(name: "CPUID_ECX", value: 2)
!12 = !DIEnumerator(name: "CPUID_EDX", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 10, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "false", value: 0)
!17 = !DIEnumerator(name: "true", value: 1)
!18 = !{!19, !21, !24, !25}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!27 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!28 = !{!0}
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 2688, elements: !48)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuid_bit", file: !3, line: 13, size: 96, elements: !32)
!32 = !{!33, !39, !43, !44, !47}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "feature", scope: !31, file: !3, line: 14, baseType: !34, size: 16)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !35, line: 19, baseType: !36)
!35 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !37, line: 24, baseType: !38)
!37 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !31, file: !3, line: 15, baseType: !40, size: 8, offset: 16)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !35, line: 17, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !37, line: 21, baseType: !42)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "bit", scope: !31, file: !3, line: 16, baseType: !40, size: 8, offset: 24)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !31, file: !3, line: 17, baseType: !45, size: 32, offset: 32)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !35, line: 21, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !37, line: 27, baseType: !7)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "sub_leaf", scope: !31, file: !3, line: 18, baseType: !45, size: 32, offset: 64)
!48 = !{!49}
!49 = !DISubrange(count: 28)
!50 = !{i32 7, !"Dwarf Version", i32 5}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 8, !"cf-protection-branch", i32 1}
!54 = !{i32 4, !"function_return_thunk_extern", i32 1}
!55 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!56 = !{i32 1, !"Code Model", i32 2}
!57 = !{i32 1, !"override-stack-alignment", i32 8}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = distinct !DISubprogram(name: "init_scattered_cpuid_features", scope: !3, file: !3, line: 57, type: !60, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !135)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !64, line: 83, size: 2368, elements: !65)
!64 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!65 = !{!66, !77, !78, !80, !84, !85, !86, !87, !88, !89, !90, !98, !102, !106, !107, !108, !109, !110, !111, !112, !113, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !132, !133, !134}
!66 = !DIDerivedType(tag: DW_TAG_member, scope: !63, file: !64, line: 84, baseType: !67, size: 32)
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !63, file: !64, line: 84, size: 32, elements: !68)
!68 = !{!69, !76}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !64, line: 90, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !64, line: 90, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !70, file: !64, line: 91, baseType: !41, size: 8)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !70, file: !64, line: 93, baseType: !41, size: 8, offset: 8)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !70, file: !64, line: 95, baseType: !41, size: 8, offset: 16)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !70, file: !64, line: 96, baseType: !41, size: 8, offset: 24)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !67, file: !64, line: 99, baseType: !46, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !63, file: !64, line: 101, baseType: !41, size: 8, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !63, file: !64, line: 104, baseType: !79, size: 32, offset: 64)
!79 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !63, file: !64, line: 107, baseType: !81, size: 160, offset: 96)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 160, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 5)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !63, file: !64, line: 109, baseType: !41, size: 8, offset: 256)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !63, file: !64, line: 110, baseType: !41, size: 8, offset: 264)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !63, file: !64, line: 112, baseType: !41, size: 8, offset: 272)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !63, file: !64, line: 113, baseType: !41, size: 8, offset: 280)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !63, file: !64, line: 115, baseType: !46, size: 32, offset: 288)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !63, file: !64, line: 117, baseType: !79, size: 32, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !63, file: !64, line: 123, baseType: !91, size: 768, offset: 384)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !63, file: !64, line: 123, size: 768, elements: !92)
!92 = !{!93, !97}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !91, file: !64, line: 124, baseType: !94, size: 768)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 768, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 24)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !91, file: !64, line: 125, baseType: !20, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !63, file: !64, line: 127, baseType: !99, size: 128, offset: 1152)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 128, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 16)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !63, file: !64, line: 128, baseType: !103, size: 512, offset: 1280)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !63, file: !64, line: 130, baseType: !7, size: 32, offset: 1792)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !63, file: !64, line: 131, baseType: !79, size: 32, offset: 1824)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !63, file: !64, line: 133, baseType: !79, size: 32, offset: 1856)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !63, file: !64, line: 134, baseType: !79, size: 32, offset: 1888)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !63, file: !64, line: 135, baseType: !79, size: 32, offset: 1920)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !63, file: !64, line: 136, baseType: !79, size: 32, offset: 1952)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !63, file: !64, line: 137, baseType: !20, size: 64, offset: 1984)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !63, file: !64, line: 139, baseType: !114, size: 64, offset: 2048)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !35, line: 23, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !37, line: 31, baseType: !116)
!116 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !63, file: !64, line: 141, baseType: !34, size: 16, offset: 2112)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !63, file: !64, line: 142, baseType: !34, size: 16, offset: 2128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !63, file: !64, line: 143, baseType: !34, size: 16, offset: 2144)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !63, file: !64, line: 144, baseType: !34, size: 16, offset: 2160)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !63, file: !64, line: 146, baseType: !34, size: 16, offset: 2176)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !63, file: !64, line: 148, baseType: !34, size: 16, offset: 2192)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !63, file: !64, line: 150, baseType: !34, size: 16, offset: 2208)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !63, file: !64, line: 152, baseType: !34, size: 16, offset: 2224)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !63, file: !64, line: 153, baseType: !34, size: 16, offset: 2240)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !63, file: !64, line: 154, baseType: !34, size: 16, offset: 2256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !63, file: !64, line: 156, baseType: !34, size: 16, offset: 2272)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !63, file: !64, line: 158, baseType: !129, size: 8, offset: 2288)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !130, line: 35, baseType: !131)
!130 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!131 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !63, file: !64, line: 159, baseType: !45, size: 32, offset: 2304)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !63, file: !64, line: 161, baseType: !40, size: 8, offset: 2336)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !63, file: !64, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!135 = !{!136, !137, !138, !142}
!136 = !DILocalVariable(name: "c", arg: 1, scope: !59, file: !3, line: 57, type: !62)
!137 = !DILocalVariable(name: "max_level", scope: !59, file: !3, line: 59, type: !45)
!138 = !DILocalVariable(name: "regs", scope: !59, file: !3, line: 60, type: !139)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 128, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 4)
!142 = !DILocalVariable(name: "cb", scope: !59, file: !3, line: 61, type: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!144 = !DILocation(line: 57, column: 56, scope: !59)
!145 = !DILocation(line: 59, column: 2, scope: !59)
!146 = !DILocation(line: 59, column: 6, scope: !59)
!147 = !DILocation(line: 60, column: 2, scope: !59)
!148 = !DILocation(line: 60, column: 6, scope: !59)
!149 = !DILocation(line: 61, column: 2, scope: !59)
!150 = !DILocation(line: 61, column: 26, scope: !59)
!151 = !DILocation(line: 63, column: 10, scope: !152)
!152 = distinct !DILexicalBlock(scope: !59, file: !3, line: 63, column: 2)
!153 = !DILocation(line: 63, column: 7, scope: !152)
!154 = !DILocation(line: 63, column: 24, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !3, line: 63, column: 2)
!156 = !DILocation(line: 63, column: 28, scope: !155)
!157 = !DILocation(line: 63, column: 2, scope: !152)
!158 = !DILocation(line: 66, column: 25, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !3, line: 63, column: 43)
!160 = !DILocation(line: 66, column: 29, scope: !159)
!161 = !DILocation(line: 66, column: 35, scope: !159)
!162 = !DILocation(line: 66, column: 15, scope: !159)
!163 = !DILocation(line: 66, column: 13, scope: !159)
!164 = !DILocation(line: 67, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !159, file: !3, line: 67, column: 7)
!166 = !DILocation(line: 67, column: 19, scope: !165)
!167 = !DILocation(line: 67, column: 23, scope: !165)
!168 = !DILocation(line: 67, column: 17, scope: !165)
!169 = !DILocation(line: 67, column: 29, scope: !165)
!170 = !DILocation(line: 68, column: 7, scope: !165)
!171 = !DILocation(line: 68, column: 20, scope: !165)
!172 = !DILocation(line: 68, column: 24, scope: !165)
!173 = !DILocation(line: 68, column: 30, scope: !165)
!174 = !DILocation(line: 68, column: 17, scope: !165)
!175 = !DILocation(line: 67, column: 7, scope: !159)
!176 = !DILocation(line: 69, column: 4, scope: !165)
!177 = !DILocation(line: 71, column: 15, scope: !159)
!178 = !DILocation(line: 71, column: 19, scope: !159)
!179 = !DILocation(line: 71, column: 26, scope: !159)
!180 = !DILocation(line: 71, column: 30, scope: !159)
!181 = !DILocation(line: 71, column: 41, scope: !159)
!182 = !DILocation(line: 72, column: 9, scope: !159)
!183 = !DILocation(line: 72, column: 27, scope: !159)
!184 = !DILocation(line: 73, column: 9, scope: !159)
!185 = !DILocation(line: 71, column: 3, scope: !159)
!186 = !DILocation(line: 75, column: 12, scope: !187)
!187 = distinct !DILexicalBlock(scope: !159, file: !3, line: 75, column: 7)
!188 = !DILocation(line: 75, column: 16, scope: !187)
!189 = !DILocation(line: 75, column: 7, scope: !187)
!190 = !DILocation(line: 75, column: 29, scope: !187)
!191 = !DILocation(line: 75, column: 33, scope: !187)
!192 = !DILocation(line: 75, column: 26, scope: !187)
!193 = !DILocation(line: 75, column: 21, scope: !187)
!194 = !DILocation(line: 75, column: 7, scope: !159)
!195 = !DILocation(line: 76, column: 4, scope: !187)
!196 = !DILocation(line: 77, column: 2, scope: !159)
!197 = !DILocation(line: 63, column: 39, scope: !155)
!198 = !DILocation(line: 63, column: 2, scope: !155)
!199 = distinct !{!199, !157, !200, !201, !202}
!200 = !DILocation(line: 77, column: 2, scope: !152)
!201 = !{!"llvm.loop.mustprogress"}
!202 = !{!"llvm.loop.unroll.disable"}
!203 = !DILocation(line: 78, column: 1, scope: !59)
!204 = distinct !DISubprogram(name: "cpuid_eax", scope: !6, file: !6, line: 94, type: !205, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !207)
!205 = !DISubroutineType(types: !206)
!206 = !{!7, !7}
!207 = !{!208, !209, !210, !211, !212}
!208 = !DILocalVariable(name: "op", arg: 1, scope: !204, file: !6, line: 94, type: !7)
!209 = !DILocalVariable(name: "eax", scope: !204, file: !6, line: 96, type: !7)
!210 = !DILocalVariable(name: "ebx", scope: !204, file: !6, line: 96, type: !7)
!211 = !DILocalVariable(name: "ecx", scope: !204, file: !6, line: 96, type: !7)
!212 = !DILocalVariable(name: "edx", scope: !204, file: !6, line: 96, type: !7)
!213 = !DILocation(line: 94, column: 51, scope: !204)
!214 = !DILocation(line: 96, column: 2, scope: !204)
!215 = !DILocation(line: 96, column: 15, scope: !204)
!216 = !DILocation(line: 96, column: 20, scope: !204)
!217 = !DILocation(line: 96, column: 25, scope: !204)
!218 = !DILocation(line: 96, column: 30, scope: !204)
!219 = !DILocation(line: 98, column: 8, scope: !204)
!220 = !DILocation(line: 98, column: 2, scope: !204)
!221 = !DILocation(line: 100, column: 9, scope: !204)
!222 = !DILocation(line: 101, column: 1, scope: !204)
!223 = !DILocation(line: 100, column: 2, scope: !204)
!224 = distinct !DISubprogram(name: "cpuid_count", scope: !6, file: !6, line: 82, type: !225, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !228)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !7, !79, !227, !227, !227, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!228 = !{!229, !230, !231, !232, !233, !234}
!229 = !DILocalVariable(name: "op", arg: 1, scope: !224, file: !6, line: 82, type: !7)
!230 = !DILocalVariable(name: "count", arg: 2, scope: !224, file: !6, line: 82, type: !79)
!231 = !DILocalVariable(name: "eax", arg: 3, scope: !224, file: !6, line: 83, type: !227)
!232 = !DILocalVariable(name: "ebx", arg: 4, scope: !224, file: !6, line: 83, type: !227)
!233 = !DILocalVariable(name: "ecx", arg: 5, scope: !224, file: !6, line: 84, type: !227)
!234 = !DILocalVariable(name: "edx", arg: 6, scope: !224, file: !6, line: 84, type: !227)
!235 = !DILocation(line: 82, column: 45, scope: !224)
!236 = !DILocation(line: 82, column: 53, scope: !224)
!237 = !DILocation(line: 83, column: 25, scope: !224)
!238 = !DILocation(line: 83, column: 44, scope: !224)
!239 = !DILocation(line: 84, column: 25, scope: !224)
!240 = !DILocation(line: 84, column: 44, scope: !224)
!241 = !DILocation(line: 86, column: 9, scope: !224)
!242 = !DILocation(line: 86, column: 3, scope: !224)
!243 = !DILocation(line: 86, column: 7, scope: !224)
!244 = !DILocation(line: 87, column: 9, scope: !224)
!245 = !DILocation(line: 87, column: 3, scope: !224)
!246 = !DILocation(line: 87, column: 7, scope: !224)
!247 = !DILocation(line: 88, column: 10, scope: !224)
!248 = !DILocation(line: 88, column: 15, scope: !224)
!249 = !DILocation(line: 88, column: 20, scope: !224)
!250 = !DILocation(line: 88, column: 25, scope: !224)
!251 = !DILocation(line: 88, column: 2, scope: !224)
!252 = !DILocation(line: 89, column: 1, scope: !224)
!253 = distinct !DISubprogram(name: "set_bit", scope: !254, file: !254, line: 26, type: !255, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !259)
!254 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!255 = !DISubroutineType(types: !256)
!256 = !{null, !27, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!259 = !{!260, !261}
!260 = !DILocalVariable(name: "nr", arg: 1, scope: !253, file: !254, line: 26, type: !27)
!261 = !DILocalVariable(name: "addr", arg: 2, scope: !253, file: !254, line: 26, type: !257)
!262 = !DILocation(line: 26, column: 42, scope: !253)
!263 = !DILocation(line: 26, column: 70, scope: !253)
!264 = !DILocation(line: 28, column: 26, scope: !253)
!265 = !DILocation(line: 28, column: 33, scope: !253)
!266 = !DILocation(line: 28, column: 31, scope: !253)
!267 = !DILocation(line: 28, column: 2, scope: !253)
!268 = !DILocation(line: 29, column: 15, scope: !253)
!269 = !DILocation(line: 29, column: 19, scope: !253)
!270 = !DILocation(line: 29, column: 2, scope: !253)
!271 = !DILocation(line: 30, column: 1, scope: !253)
!272 = distinct !DISubprogram(name: "cpuid", scope: !6, file: !6, line: 72, type: !273, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !275)
!273 = !DISubroutineType(types: !274)
!274 = !{null, !7, !227, !227, !227, !227}
!275 = !{!276, !277, !278, !279, !280}
!276 = !DILocalVariable(name: "op", arg: 1, scope: !272, file: !6, line: 72, type: !7)
!277 = !DILocalVariable(name: "eax", arg: 2, scope: !272, file: !6, line: 73, type: !227)
!278 = !DILocalVariable(name: "ebx", arg: 3, scope: !272, file: !6, line: 73, type: !227)
!279 = !DILocalVariable(name: "ecx", arg: 4, scope: !272, file: !6, line: 74, type: !227)
!280 = !DILocalVariable(name: "edx", arg: 5, scope: !272, file: !6, line: 74, type: !227)
!281 = !DILocation(line: 72, column: 39, scope: !272)
!282 = !DILocation(line: 73, column: 19, scope: !272)
!283 = !DILocation(line: 73, column: 38, scope: !272)
!284 = !DILocation(line: 74, column: 19, scope: !272)
!285 = !DILocation(line: 74, column: 38, scope: !272)
!286 = !DILocation(line: 76, column: 9, scope: !272)
!287 = !DILocation(line: 76, column: 3, scope: !272)
!288 = !DILocation(line: 76, column: 7, scope: !272)
!289 = !DILocation(line: 77, column: 3, scope: !272)
!290 = !DILocation(line: 77, column: 7, scope: !272)
!291 = !DILocation(line: 78, column: 10, scope: !272)
!292 = !DILocation(line: 78, column: 15, scope: !272)
!293 = !DILocation(line: 78, column: 20, scope: !272)
!294 = !DILocation(line: 78, column: 25, scope: !272)
!295 = !DILocation(line: 78, column: 2, scope: !272)
!296 = !DILocation(line: 79, column: 1, scope: !272)
!297 = distinct !DISubprogram(name: "native_cpuid", scope: !6, file: !6, line: 30, type: !298, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !227, !227, !227, !227}
!300 = !{!301, !302, !303, !304}
!301 = !DILocalVariable(name: "eax", arg: 1, scope: !297, file: !6, line: 30, type: !227)
!302 = !DILocalVariable(name: "ebx", arg: 2, scope: !297, file: !6, line: 30, type: !227)
!303 = !DILocalVariable(name: "ecx", arg: 3, scope: !297, file: !6, line: 31, type: !227)
!304 = !DILocalVariable(name: "edx", arg: 4, scope: !297, file: !6, line: 31, type: !227)
!305 = !DILocation(line: 30, column: 47, scope: !297)
!306 = !DILocation(line: 30, column: 66, scope: !297)
!307 = !DILocation(line: 31, column: 19, scope: !297)
!308 = !DILocation(line: 31, column: 38, scope: !297)
!309 = !DILocation(line: 35, column: 15, scope: !297)
!310 = !DILocation(line: 36, column: 15, scope: !297)
!311 = !DILocation(line: 37, column: 15, scope: !297)
!312 = !DILocation(line: 38, column: 15, scope: !297)
!313 = !DILocation(line: 39, column: 14, scope: !297)
!314 = !DILocation(line: 39, column: 13, scope: !297)
!315 = !DILocation(line: 39, column: 26, scope: !297)
!316 = !DILocation(line: 39, column: 25, scope: !297)
!317 = !DILocation(line: 34, column: 2, scope: !297)
!318 = !{i64 1870253}
!319 = !DILocation(line: 41, column: 1, scope: !297)
!320 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !321, file: !321, line: 80, type: !322, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !331)
!321 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!322 = !DISubroutineType(types: !323)
!323 = !{null, !324, !327}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!326 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 61, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !329, line: 72, baseType: !330)
!329 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !329, line: 16, baseType: !20)
!331 = !{!332, !333}
!332 = !DILocalVariable(name: "v", arg: 1, scope: !320, file: !321, line: 80, type: !324)
!333 = !DILocalVariable(name: "size", arg: 2, scope: !320, file: !321, line: 80, type: !327)
!334 = !DILocation(line: 80, column: 74, scope: !320)
!335 = !DILocation(line: 80, column: 84, scope: !320)
!336 = !DILocation(line: 82, column: 20, scope: !320)
!337 = !DILocation(line: 82, column: 23, scope: !320)
!338 = !DILocation(line: 82, column: 2, scope: !320)
!339 = !DILocation(line: 83, column: 2, scope: !320)
!340 = !DILocation(line: 84, column: 1, scope: !320)
!341 = distinct !DISubprogram(name: "arch_set_bit", scope: !342, file: !342, line: 52, type: !255, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !343)
!342 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!343 = !{!344, !345}
!344 = !DILocalVariable(name: "nr", arg: 1, scope: !341, file: !342, line: 52, type: !27)
!345 = !DILocalVariable(name: "addr", arg: 2, scope: !341, file: !342, line: 52, type: !257)
!346 = !DILocation(line: 52, column: 19, scope: !341)
!347 = !DILocation(line: 52, column: 47, scope: !341)
!348 = !DILocation(line: 54, column: 27, scope: !349)
!349 = distinct !DILexicalBlock(scope: !341, file: !342, line: 54, column: 6)
!350 = !DILocation(line: 54, column: 6, scope: !349)
!351 = !DILocation(line: 54, column: 6, scope: !341)
!352 = !DILocation(line: 56, column: 6, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !342, line: 54, column: 32)
!354 = !DILocation(line: 57, column: 12, scope: !353)
!355 = !DILocation(line: 55, column: 3, scope: !353)
!356 = !{i64 2147994921, i64 2147994960, i64 2147994981, i64 2147995018, i64 2147995041, i64 2147994911}
!357 = !DILocation(line: 59, column: 2, scope: !353)
!358 = !DILocation(line: 61, column: 8, scope: !359)
!359 = distinct !DILexicalBlock(scope: !349, file: !342, line: 59, column: 9)
!360 = !DILocation(line: 61, column: 32, scope: !359)
!361 = !DILocation(line: 60, column: 3, scope: !359)
!362 = !{i64 2147995206, i64 2147995245, i64 2147995266, i64 2147995303, i64 2147995326, i64 2147995196}
!363 = !DILocation(line: 63, column: 1, scope: !341)
!364 = distinct !DISubprogram(name: "kasan_check_write", scope: !365, file: !365, line: 44, type: !366, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!365 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!366 = !DISubroutineType(types: !367)
!367 = !{!129, !324, !7}
!368 = !{!369, !370}
!369 = !DILocalVariable(name: "p", arg: 1, scope: !364, file: !365, line: 44, type: !324)
!370 = !DILocalVariable(name: "size", arg: 2, scope: !364, file: !365, line: 44, type: !7)
!371 = !DILocation(line: 44, column: 59, scope: !364)
!372 = !DILocation(line: 44, column: 75, scope: !364)
!373 = !DILocation(line: 46, column: 2, scope: !364)
!374 = distinct !DISubprogram(name: "kcsan_check_access", scope: !375, file: !375, line: 229, type: !376, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !378)
!375 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!376 = !DISubroutineType(types: !377)
!377 = !{null, !324, !327, !79}
!378 = !{!379, !380, !381}
!379 = !DILocalVariable(name: "ptr", arg: 1, scope: !374, file: !375, line: 229, type: !324)
!380 = !DILocalVariable(name: "size", arg: 2, scope: !374, file: !375, line: 229, type: !327)
!381 = !DILocalVariable(name: "type", arg: 3, scope: !374, file: !375, line: 230, type: !79)
!382 = !DILocation(line: 229, column: 60, scope: !374)
!383 = !DILocation(line: 229, column: 72, scope: !374)
!384 = !DILocation(line: 230, column: 15, scope: !374)
!385 = !DILocation(line: 230, column: 23, scope: !374)
