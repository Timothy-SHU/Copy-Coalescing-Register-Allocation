; ModuleID = 'arch/x86/kernel/cpu/zhaoxin.c'
source_filename = "arch/x86/kernel/cpu/zhaoxin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_dev = type { ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%struct.atomic_t = type { i32 }
%union.anon.1 = type { i64 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.anon = type { i8, i8, i8, i8 }

@zhaoxin_cpu_dev = internal constant %struct.cpu_dev { ptr @.str, [2 x ptr] [ptr @.str.1, ptr null], ptr @early_init_zhaoxin, ptr null, ptr @init_zhaoxin, ptr null, ptr null, i32 10 }, align 8, !dbg !0
@__cpu_dev_zhaoxin_cpu_dev = internal constant ptr @zhaoxin_cpu_dev, section ".x86_cpu_dev.init", align 8, !dbg !55
@.str = private unnamed_addr constant [8 x i8] c"zhaoxin\00", align 1, !dbg !155
@.str.1 = private unnamed_addr constant [13 x i8] c"  Shanghai  \00", align 1, !dbg !160
@.str.2 = private unnamed_addr constant [31 x i8] c"\016CPU: Enabled ACE h/w crypto\0A\00", align 1, !dbg !165
@.str.3 = private unnamed_addr constant [24 x i8] c"\016CPU: Enabled h/w RNG\0A\00", align 1, !dbg !170
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__cpu_dev_zhaoxin_cpu_dev], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_init_zhaoxin(ptr noundef %c) #0 align 16 !dbg !182 {
entry:
  %c.addr = alloca ptr, align 8
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !184, metadata !DIExpression()), !dbg !191
  %0 = load ptr, ptr %c.addr, align 8, !dbg !192
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 0, !dbg !194
  %x86 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1, !dbg !194
  %2 = load i8, ptr %x86, align 1, !dbg !194
  %conv = zext i8 %2 to i32, !dbg !192
  %cmp = icmp sge i32 %conv, 6, !dbg !195
  br i1 %cmp, label %if.then, label %if.end, !dbg !196

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %c.addr, align 8, !dbg !197
  %4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 10, !dbg !197
  %arraydecay = getelementptr inbounds [24 x i32], ptr %4, i64 0, i64 0, !dbg !197
  call void @set_bit(i64 noundef 104, ptr noundef %arraydecay) #8, !dbg !197
  br label %if.end, !dbg !197

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %c.addr, align 8, !dbg !198
  %6 = getelementptr inbounds %struct.cpuinfo_x86, ptr %5, i32 0, i32 10, !dbg !198
  %arraydecay2 = getelementptr inbounds [24 x i32], ptr %6, i64 0, i64 0, !dbg !198
  call void @set_bit(i64 noundef 111, ptr noundef %arraydecay2) #8, !dbg !198
  %7 = load ptr, ptr %c.addr, align 8, !dbg !199
  %x86_power = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 18, !dbg !201
  %8 = load i32, ptr %x86_power, align 4, !dbg !201
  %and = and i32 %8, 256, !dbg !202
  %tobool = icmp ne i32 %and, 0, !dbg !202
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !203

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr %c.addr, align 8, !dbg !204
  %10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 10, !dbg !204
  %arraydecay4 = getelementptr inbounds [24 x i32], ptr %10, i64 0, i64 0, !dbg !204
  call void @set_bit(i64 noundef 104, ptr noundef %arraydecay4) #8, !dbg !204
  %11 = load ptr, ptr %c.addr, align 8, !dbg !206
  %12 = getelementptr inbounds %struct.cpuinfo_x86, ptr %11, i32 0, i32 10, !dbg !206
  %arraydecay5 = getelementptr inbounds [24 x i32], ptr %12, i64 0, i64 0, !dbg !206
  call void @set_bit(i64 noundef 120, ptr noundef %arraydecay5) #8, !dbg !206
  br label %if.end6, !dbg !207

if.end6:                                          ; preds = %if.then3, %if.end
  %13 = load ptr, ptr %c.addr, align 8, !dbg !208
  %cpuid_level = getelementptr inbounds %struct.cpuinfo_x86, ptr %13, i32 0, i32 9, !dbg !209
  %14 = load i32, ptr %cpuid_level, align 8, !dbg !209
  %cmp7 = icmp sge i32 %14, 1, !dbg !210
  br i1 %cmp7, label %if.then9, label %if.end16, !dbg !211

if.then9:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #9, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !185, metadata !DIExpression()), !dbg !213
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #9, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !188, metadata !DIExpression()), !dbg !214
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #9, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !189, metadata !DIExpression()), !dbg !215
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #9, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !190, metadata !DIExpression()), !dbg !216
  call void @cpuid(i32 noundef 1, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #8, !dbg !217
  %15 = load i32, ptr %edx, align 4, !dbg !218
  %and10 = and i32 %15, 268435456, !dbg !220
  %tobool11 = icmp ne i32 %and10, 0, !dbg !220
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !221

if.then12:                                        ; preds = %if.then9
  %16 = load i32, ptr %ebx, align 4, !dbg !222
  %shr = lshr i32 %16, 16, !dbg !223
  %and13 = and i32 %shr, 255, !dbg !224
  %call = call i32 @get_count_order(i32 noundef %and13) #8, !dbg !225
  %conv14 = trunc i32 %call to i8, !dbg !225
  %17 = load ptr, ptr %c.addr, align 8, !dbg !226
  %x86_coreid_bits = getelementptr inbounds %struct.cpuinfo_x86, ptr %17, i32 0, i32 6, !dbg !227
  store i8 %conv14, ptr %x86_coreid_bits, align 2, !dbg !228
  br label %if.end15, !dbg !226

if.end15:                                         ; preds = %if.then12, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #9, !dbg !229
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #9, !dbg !229
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #9, !dbg !229
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #9, !dbg !229
  br label %if.end16, !dbg !230

if.end16:                                         ; preds = %if.end15, %if.end6
  ret void, !dbg !231
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_zhaoxin(ptr noundef %c) #0 align 16 !dbg !232 {
entry:
  %c.addr = alloca ptr, align 8
  %eax = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !234, metadata !DIExpression()), !dbg !238
  %0 = load ptr, ptr %c.addr, align 8, !dbg !239
  call void @early_init_zhaoxin(ptr noundef %0) #8, !dbg !240
  %1 = load ptr, ptr %c.addr, align 8, !dbg !241
  call void @init_intel_cacheinfo(ptr noundef %1) #8, !dbg !242
  %2 = load ptr, ptr %c.addr, align 8, !dbg !243
  call void @detect_num_cpu_cores(ptr noundef %2) #8, !dbg !244
  %3 = load ptr, ptr %c.addr, align 8, !dbg !245
  %cpuid_level = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 9, !dbg !246
  %4 = load i32, ptr %cpuid_level, align 8, !dbg !246
  %cmp = icmp sgt i32 %4, 9, !dbg !247
  br i1 %cmp, label %if.then, label %if.end4, !dbg !248

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #9, !dbg !249
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !235, metadata !DIExpression()), !dbg !250
  %call = call i32 @cpuid_eax(i32 noundef 10) #8, !dbg !251
  store i32 %call, ptr %eax, align 4, !dbg !250
  %5 = load i32, ptr %eax, align 4, !dbg !252
  %and = and i32 %5, 255, !dbg !254
  %tobool = icmp ne i32 %and, 0, !dbg !254
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !255

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32, ptr %eax, align 4, !dbg !256
  %shr = lshr i32 %6, 8, !dbg !257
  %and1 = and i32 %shr, 255, !dbg !258
  %cmp2 = icmp ugt i32 %and1, 1, !dbg !259
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !260

if.then3:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %c.addr, align 8, !dbg !261
  %8 = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 10, !dbg !261
  %arraydecay = getelementptr inbounds [24 x i32], ptr %8, i64 0, i64 0, !dbg !261
  call void @set_bit(i64 noundef 107, ptr noundef %arraydecay) #8, !dbg !261
  br label %if.end, !dbg !261

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #9, !dbg !262
  br label %if.end4, !dbg !263

if.end4:                                          ; preds = %if.end, %entry
  %9 = load ptr, ptr %c.addr, align 8, !dbg !264
  %10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 0, !dbg !266
  %x86 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1, !dbg !266
  %11 = load i8, ptr %x86, align 1, !dbg !266
  %conv = zext i8 %11 to i32, !dbg !264
  %cmp5 = icmp sge i32 %conv, 6, !dbg !267
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !268

if.then7:                                         ; preds = %if.end4
  %12 = load ptr, ptr %c.addr, align 8, !dbg !269
  call void @init_zhaoxin_cap(ptr noundef %12) #8, !dbg !270
  br label %if.end8, !dbg !270

if.end8:                                          ; preds = %if.then7, %if.end4
  %13 = load ptr, ptr %c.addr, align 8, !dbg !271
  %14 = getelementptr inbounds %struct.cpuinfo_x86, ptr %13, i32 0, i32 10, !dbg !271
  %arraydecay9 = getelementptr inbounds [24 x i32], ptr %14, i64 0, i64 0, !dbg !271
  call void @set_bit(i64 noundef 642, ptr noundef %arraydecay9) #8, !dbg !271
  %15 = load ptr, ptr %c.addr, align 8, !dbg !272
  call void @init_ia32_feat_ctl(ptr noundef %15) #8, !dbg !273
  ret void, !dbg !274
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !275 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !282, metadata !DIExpression()), !dbg !284
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !283, metadata !DIExpression()), !dbg !285
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !286
  %1 = load i64, ptr %nr.addr, align 8, !dbg !287
  %div = sdiv i64 %1, 64, !dbg !287
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !288
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #8, !dbg !289
  %2 = load i64, ptr %nr.addr, align 8, !dbg !290
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !291
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !292
  ret void, !dbg !293
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid(i32 noundef %op, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !294 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !300, metadata !DIExpression()), !dbg !305
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !301, metadata !DIExpression()), !dbg !306
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !302, metadata !DIExpression()), !dbg !307
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !303, metadata !DIExpression()), !dbg !308
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !304, metadata !DIExpression()), !dbg !309
  %0 = load i32, ptr %op.addr, align 4, !dbg !310
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !311
  store i32 %0, ptr %1, align 4, !dbg !312
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !313
  store i32 0, ptr %2, align 4, !dbg !314
  %3 = load ptr, ptr %eax.addr, align 8, !dbg !315
  %4 = load ptr, ptr %ebx.addr, align 8, !dbg !316
  %5 = load ptr, ptr %ecx.addr, align 8, !dbg !317
  %6 = load ptr, ptr %edx.addr, align 8, !dbg !318
  call void @native_cpuid(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #8, !dbg !319
  ret void, !dbg !320
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_count_order(i32 noundef %count) #4 align 16 !dbg !321 {
entry:
  %retval = alloca i32, align 4
  %count.addr = alloca i32, align 4
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !326, metadata !DIExpression()), !dbg !327
  %0 = load i32, ptr %count.addr, align 4, !dbg !328
  %cmp = icmp eq i32 %0, 0, !dbg !330
  br i1 %cmp, label %if.then, label %if.end, !dbg !331

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !332
  br label %return, !dbg !332

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %count.addr, align 4, !dbg !333
  %dec = add i32 %1, -1, !dbg !333
  store i32 %dec, ptr %count.addr, align 4, !dbg !333
  %call = call i32 @fls(i32 noundef %dec) #8, !dbg !334
  store i32 %call, ptr %retval, align 4, !dbg !335
  br label %return, !dbg !335

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !336
  ret i32 %2, !dbg !336
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !337 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !349, metadata !DIExpression()), !dbg !351
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !350, metadata !DIExpression()), !dbg !352
  %0 = load ptr, ptr %v.addr, align 8, !dbg !353
  %1 = load i64, ptr %size.addr, align 8, !dbg !354
  %conv = trunc i64 %1 to i32, !dbg !354
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !355
  %2 = load ptr, ptr %v.addr, align 8, !dbg !356
  %3 = load i64, ptr %size.addr, align 8, !dbg !356
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #8, !dbg !356
  ret void, !dbg !357
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !358 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !361, metadata !DIExpression()), !dbg !363
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !362, metadata !DIExpression()), !dbg !364
  %0 = load i64, ptr %nr.addr, align 8, !dbg !365
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !367
  br i1 %1, label %if.then, label %if.else, !dbg !368

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !369
  %3 = load i64, ptr %nr.addr, align 8, !dbg !369
  %shr = ashr i64 %3, 3, !dbg !369
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !369
  %4 = load i64, ptr %nr.addr, align 8, !dbg !371
  %and = and i64 %4, 7, !dbg !371
  %sh_prom = trunc i64 %and to i32, !dbg !371
  %shl = shl i32 1, %sh_prom, !dbg !371
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #9, !dbg !372, !srcloc !373
  br label %if.end, !dbg !374

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !375
  %6 = load i64, ptr %nr.addr, align 8, !dbg !377
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #9, !dbg !378, !srcloc !379
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !380
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !381 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !386, metadata !DIExpression()), !dbg !388
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !387, metadata !DIExpression()), !dbg !389
  ret i1 true, !dbg !390
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !391 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !396, metadata !DIExpression()), !dbg !399
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !397, metadata !DIExpression()), !dbg !400
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !398, metadata !DIExpression()), !dbg !401
  ret void, !dbg !402
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !403 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !407, metadata !DIExpression()), !dbg !411
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !408, metadata !DIExpression()), !dbg !412
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !409, metadata !DIExpression()), !dbg !413
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !410, metadata !DIExpression()), !dbg !414
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !415
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !416
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !417
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !418
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !419
  %5 = load i32, ptr %4, align 4, !dbg !420
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !421
  %7 = load i32, ptr %6, align 4, !dbg !422
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #9, !dbg !423, !srcloc !424
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !423
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !423
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !423
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !423
  store i32 %asmresult, ptr %0, align 4, !dbg !423
  store i32 %asmresult1, ptr %1, align 4, !dbg !423
  store i32 %asmresult2, ptr %2, align 4, !dbg !423
  store i32 %asmresult3, ptr %3, align 4, !dbg !423
  ret void, !dbg !425
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #2 align 16 !dbg !426 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !428, metadata !DIExpression()), !dbg !430
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #9, !dbg !431
  call void @llvm.dbg.declare(metadata ptr %r, metadata !429, metadata !DIExpression()), !dbg !432
  %0 = load i32, ptr %x.addr, align 4, !dbg !433
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #10, !dbg !434, !srcloc !435
  store i32 %1, ptr %r, align 4, !dbg !434
  %2 = load i32, ptr %r, align 4, !dbg !436
  %add = add i32 %2, 1, !dbg !437
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #9, !dbg !438
  ret i32 %add, !dbg !439
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !440 dso_local void @init_intel_cacheinfo(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !441 dso_local void @detect_num_cpu_cores(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_eax(i32 noundef %op) #4 align 16 !dbg !442 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !446, metadata !DIExpression()), !dbg !451
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #9, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !447, metadata !DIExpression()), !dbg !453
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #9, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !448, metadata !DIExpression()), !dbg !454
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #9, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !449, metadata !DIExpression()), !dbg !455
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #9, !dbg !452
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !450, metadata !DIExpression()), !dbg !456
  %0 = load i32, ptr %op.addr, align 4, !dbg !457
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #8, !dbg !458
  %1 = load i32, ptr %eax, align 4, !dbg !459
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #9, !dbg !460
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #9, !dbg !460
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #9, !dbg !460
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #9, !dbg !460
  ret i32 %1, !dbg !461
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_zhaoxin_cap(ptr noundef %c) #0 align 16 !dbg !462 {
entry:
  %c.addr = alloca ptr, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__val = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__val16 = alloca i64, align 8
  %tmp27 = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !464, metadata !DIExpression()), !dbg !478
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #9, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !465, metadata !DIExpression()), !dbg !480
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #9, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !466, metadata !DIExpression()), !dbg !481
  %call = call i32 @cpuid_eax(i32 noundef -1073741824) #8, !dbg !482
  %cmp = icmp uge i32 %call, -1073741823, !dbg !483
  br i1 %cmp, label %if.then, label %if.end31, !dbg !484

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #9, !dbg !485
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !467, metadata !DIExpression()), !dbg !486
  %call1 = call i32 @cpuid_edx(i32 noundef -1073741823) #8, !dbg !487
  store i32 %call1, ptr %tmp, align 4, !dbg !486
  %0 = load i32, ptr %tmp, align 4, !dbg !488
  %and = and i32 %0, 192, !dbg !489
  %cmp2 = icmp eq i32 %and, 64, !dbg !490
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !491

if.then3:                                         ; preds = %if.then
  br label %do.body, !dbg !492

do.body:                                          ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #9, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !470, metadata !DIExpression()), !dbg !493
  %call4 = call i64 @native_read_msr(i32 noundef 4695) #8, !dbg !493
  store i64 %call4, ptr %__val, align 8, !dbg !493
  %1 = load i64, ptr %__val, align 8, !dbg !493
  %conv = trunc i64 %1 to i32, !dbg !493
  store i32 %conv, ptr %lo, align 4, !dbg !493
  %2 = load i64, ptr %__val, align 8, !dbg !493
  %shr = lshr i64 %2, 32, !dbg !493
  %conv5 = trunc i64 %shr to i32, !dbg !493
  store i32 %conv5, ptr %hi, align 4, !dbg !493
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #9, !dbg !492
  br label %do.cond, !dbg !493

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !493

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %lo, align 4, !dbg !494
  %or = or i32 %3, 128, !dbg !494
  store i32 %or, ptr %lo, align 4, !dbg !494
  %4 = load i32, ptr %lo, align 4, !dbg !495
  %5 = load i32, ptr %hi, align 4, !dbg !496
  call void @wrmsr(i32 noundef 4695, i32 noundef %4, i32 noundef %5) #8, !dbg !497
  br label %do.body6, !dbg !498

do.body6:                                         ; preds = %do.end
  br label %do.cond7, !dbg !500

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !500

do.end8:                                          ; preds = %do.cond7
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #11, !dbg !498
  store i32 %call10, ptr %tmp9, align 4, !dbg !500
  %6 = load i32, ptr %tmp9, align 4, !dbg !498
  br label %if.end, !dbg !502

if.end:                                           ; preds = %do.end8, %if.then
  %7 = load i32, ptr %tmp, align 4, !dbg !503
  %and11 = and i32 %7, 12, !dbg !504
  %cmp12 = icmp eq i32 %and11, 4, !dbg !505
  br i1 %cmp12, label %if.then14, label %if.end29, !dbg !506

if.then14:                                        ; preds = %if.end
  br label %do.body15, !dbg !507

do.body15:                                        ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val16) #9, !dbg !508
  call void @llvm.dbg.declare(metadata ptr %__val16, metadata !474, metadata !DIExpression()), !dbg !508
  %call17 = call i64 @native_read_msr(i32 noundef 4695) #8, !dbg !508
  store i64 %call17, ptr %__val16, align 8, !dbg !508
  %8 = load i64, ptr %__val16, align 8, !dbg !508
  %conv18 = trunc i64 %8 to i32, !dbg !508
  store i32 %conv18, ptr %lo, align 4, !dbg !508
  %9 = load i64, ptr %__val16, align 8, !dbg !508
  %shr19 = lshr i64 %9, 32, !dbg !508
  %conv20 = trunc i64 %shr19 to i32, !dbg !508
  store i32 %conv20, ptr %hi, align 4, !dbg !508
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val16) #9, !dbg !507
  br label %do.cond21, !dbg !508

do.cond21:                                        ; preds = %do.body15
  br label %do.end22, !dbg !508

do.end22:                                         ; preds = %do.cond21
  %10 = load i32, ptr %lo, align 4, !dbg !509
  %or23 = or i32 %10, 256, !dbg !509
  store i32 %or23, ptr %lo, align 4, !dbg !509
  %11 = load i32, ptr %lo, align 4, !dbg !510
  %12 = load i32, ptr %hi, align 4, !dbg !511
  call void @wrmsr(i32 noundef 4695, i32 noundef %11, i32 noundef %12) #8, !dbg !512
  br label %do.body24, !dbg !513

do.body24:                                        ; preds = %do.end22
  br label %do.cond25, !dbg !515

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !515

do.end26:                                         ; preds = %do.cond25
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #11, !dbg !513
  store i32 %call28, ptr %tmp27, align 4, !dbg !515
  %13 = load i32, ptr %tmp27, align 4, !dbg !513
  br label %if.end29, !dbg !517

if.end29:                                         ; preds = %do.end26, %if.end
  %call30 = call i32 @cpuid_edx(i32 noundef -1073741823) #8, !dbg !518
  %14 = load ptr, ptr %c.addr, align 8, !dbg !519
  %15 = getelementptr inbounds %struct.cpuinfo_x86, ptr %14, i32 0, i32 10, !dbg !520
  %arrayidx = getelementptr [24 x i32], ptr %15, i64 0, i64 5, !dbg !519
  store i32 %call30, ptr %arrayidx, align 4, !dbg !521
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #9, !dbg !522
  br label %if.end31, !dbg !523

if.end31:                                         ; preds = %if.end29, %entry
  %16 = load ptr, ptr %c.addr, align 8, !dbg !524
  %17 = getelementptr inbounds %struct.cpuinfo_x86, ptr %16, i32 0, i32 0, !dbg !526
  %x86 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 1, !dbg !526
  %18 = load i8, ptr %x86, align 1, !dbg !526
  %conv32 = zext i8 %18 to i32, !dbg !524
  %cmp33 = icmp sge i32 %conv32, 6, !dbg !527
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !528

if.then35:                                        ; preds = %if.end31
  %19 = load ptr, ptr %c.addr, align 8, !dbg !529
  %20 = getelementptr inbounds %struct.cpuinfo_x86, ptr %19, i32 0, i32 10, !dbg !529
  %arraydecay = getelementptr inbounds [24 x i32], ptr %20, i64 0, i64 0, !dbg !529
  call void @set_bit(i64 noundef 112, ptr noundef %arraydecay) #8, !dbg !529
  br label %if.end36, !dbg !529

if.end36:                                         ; preds = %if.then35, %if.end31
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #9, !dbg !530
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #9, !dbg !530
  ret void, !dbg !530
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !531 dso_local void @init_ia32_feat_ctl(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_edx(i32 noundef %op) #4 align 16 !dbg !533 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !535, metadata !DIExpression()), !dbg !540
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #9, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !536, metadata !DIExpression()), !dbg !542
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #9, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !537, metadata !DIExpression()), !dbg !543
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #9, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !538, metadata !DIExpression()), !dbg !544
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #9, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !539, metadata !DIExpression()), !dbg !545
  %0 = load i32, ptr %op.addr, align 4, !dbg !546
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #8, !dbg !547
  %1 = load i32, ptr %edx, align 4, !dbg !548
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #9, !dbg !549
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #9, !dbg !549
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #9, !dbg !549
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #9, !dbg !549
  ret i32 %1, !dbg !550
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #4 align 16 !dbg !551 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !556, metadata !DIExpression()), !dbg !558
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !559
  call void @llvm.dbg.declare(metadata ptr %val, metadata !557, metadata !DIExpression()), !dbg !560
  %0 = load i32, ptr %msr.addr, align 4, !dbg !561
  %call = call i64 @__rdmsr(i32 noundef %0) #8, !dbg !562
  store i64 %call, ptr %val, align 8, !dbg !563
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #8, !dbg !564
  br i1 %call1, label %if.then, label %if.end, !dbg !566

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !567
  %2 = load i64, ptr %val, align 8, !dbg !568
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #8, !dbg !569
  br label %if.end, !dbg !569

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !570
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !571
  ret i64 %3, !dbg !572
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !573 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !577, metadata !DIExpression()), !dbg !580
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !578, metadata !DIExpression()), !dbg !581
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !579, metadata !DIExpression()), !dbg !582
  %0 = load i32, ptr %msr.addr, align 4, !dbg !583
  %1 = load i32, ptr %low.addr, align 4, !dbg !584
  %2 = load i32, ptr %high.addr, align 4, !dbg !585
  call void @native_write_msr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #8, !dbg !586
  ret void, !dbg !587
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !588 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #2 align 16 !dbg !592 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !594, metadata !DIExpression()), !dbg !597
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #9, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %low, metadata !595, metadata !DIExpression()), !dbg !598
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #9, !dbg !598
  call void @llvm.dbg.declare(metadata ptr %high, metadata !596, metadata !DIExpression()), !dbg !598
  %0 = load i32, ptr %msr.addr, align 4, !dbg !599
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #9, !dbg !600, !srcloc !601
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !600
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !600
  store i64 %asmresult, ptr %low, align 8, !dbg !600
  store i64 %asmresult1, ptr %high, align 8, !dbg !600
  %2 = load i64, ptr %low, align 8, !dbg !602
  %3 = load i64, ptr %high, align 8, !dbg !602
  %shl = shl i64 %3, 32, !dbg !602
  %or = or i64 %2, %shl, !dbg !602
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #9, !dbg !603
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #9, !dbg !603
  ret i64 %or, !dbg !604
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #2 align 16 !dbg !605 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !634, metadata !DIExpression()), !dbg !635
  %0 = load ptr, ptr %key.addr, align 8, !dbg !636
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #8, !dbg !637
  ret i1 %call, !dbg !638
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !639 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #2 align 16 !dbg !642 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !647, metadata !DIExpression()), !dbg !650
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !648, metadata !DIExpression()), !dbg !651
  %0 = load ptr, ptr %key.addr, align 8, !dbg !652
  %1 = load i8, ptr %branch.addr, align 1, !dbg !653, !range !654, !noundef !655
  %tobool = trunc i8 %1 to i1, !dbg !653
  %conv = zext i1 %tobool to i32, !dbg !653
  %or = or i32 2, %conv, !dbg !656
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #9
          to label %asm.fallthrough [label %l_yes], !dbg !657, !srcloc !658

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !659
  br label %return, !dbg !659

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !649), !dbg !660
  store i1 true, ptr %retval, align 1, !dbg !661
  br label %return, !dbg !661

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !662
  ret i1 %2, !dbg !662
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !663 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !665, metadata !DIExpression()), !dbg !668
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !666, metadata !DIExpression()), !dbg !669
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !667, metadata !DIExpression()), !dbg !670
  %0 = load i32, ptr %msr.addr, align 4, !dbg !671
  %1 = load i32, ptr %low.addr, align 4, !dbg !672
  %2 = load i32, ptr %high.addr, align 4, !dbg !673
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #8, !dbg !674
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #8, !dbg !675
  br i1 %call, label %if.then, label %if.end, !dbg !677

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !678
  %4 = load i32, ptr %high.addr, align 4, !dbg !679
  %conv = zext i32 %4 to i64, !dbg !680
  %shl = shl i64 %conv, 32, !dbg !681
  %5 = load i32, ptr %low.addr, align 4, !dbg !682
  %conv1 = zext i32 %5 to i64, !dbg !682
  %or = or i64 %shl, %conv1, !dbg !683
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #8, !dbg !684
  br label %if.end, !dbg !684

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !685
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #2 align 16 !dbg !686 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !688, metadata !DIExpression()), !dbg !691
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !689, metadata !DIExpression()), !dbg !692
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !690, metadata !DIExpression()), !dbg !693
  %0 = load i32, ptr %msr.addr, align 4, !dbg !694
  %1 = load i32, ptr %low.addr, align 4, !dbg !695
  %2 = load i32, ptr %high.addr, align 4, !dbg !696
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #9, !dbg !697, !srcloc !698
  ret void, !dbg !699
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !700 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { nounwind memory(read) }
attributes #11 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "zhaoxin_cpu_dev", scope: !2, file: !3, line: 122, type: !59, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.zhaoxin.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/zhaoxin\22 -D KBUILD_BASENAME=\22zhaoxin\22 -D KBUILD_MODNAME=\22zhaoxin\22 -D __KBUILD_MODNAME=kmod_zhaoxin -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/zhaoxin.ll arch/x86/kernel/cpu/zhaoxin.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !37, globals: !54, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/zhaoxin.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fe02c48bb933fe0abcaa8a43a15f562e")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cpuid_leafs", file: !12, line: 13, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!14 = !DIEnumerator(name: "CPUID_1_EDX", value: 0)
!15 = !DIEnumerator(name: "CPUID_8000_0001_EDX", value: 1)
!16 = !DIEnumerator(name: "CPUID_8086_0001_EDX", value: 2)
!17 = !DIEnumerator(name: "CPUID_LNX_1", value: 3)
!18 = !DIEnumerator(name: "CPUID_1_ECX", value: 4)
!19 = !DIEnumerator(name: "CPUID_C000_0001_EDX", value: 5)
!20 = !DIEnumerator(name: "CPUID_8000_0001_ECX", value: 6)
!21 = !DIEnumerator(name: "CPUID_LNX_2", value: 7)
!22 = !DIEnumerator(name: "CPUID_LNX_3", value: 8)
!23 = !DIEnumerator(name: "CPUID_7_0_EBX", value: 9)
!24 = !DIEnumerator(name: "CPUID_D_1_EAX", value: 10)
!25 = !DIEnumerator(name: "CPUID_LNX_4", value: 11)
!26 = !DIEnumerator(name: "CPUID_7_1_EAX", value: 12)
!27 = !DIEnumerator(name: "CPUID_8000_0008_EBX", value: 13)
!28 = !DIEnumerator(name: "CPUID_6_EAX", value: 14)
!29 = !DIEnumerator(name: "CPUID_8000_000A_EDX", value: 15)
!30 = !DIEnumerator(name: "CPUID_7_ECX", value: 16)
!31 = !DIEnumerator(name: "CPUID_8000_0007_EBX", value: 17)
!32 = !DIEnumerator(name: "CPUID_7_EDX", value: 18)
!33 = !DIEnumerator(name: "CPUID_8000_001F_EAX", value: 19)
!34 = !DIEnumerator(name: "CPUID_8000_0021_EAX", value: 20)
!35 = !DIEnumerator(name: "CPUID_LNX_5", value: 21)
!36 = !DIEnumerator(name: "NR_CPUID_WORDS", value: 22)
!37 = !{!38, !40, !43, !44, !47, !51}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !46)
!46 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !48, line: 21, baseType: !49)
!48 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !50, line: 27, baseType: !7)
!50 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !48, line: 23, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !50, line: 31, baseType: !53)
!53 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!54 = !{!55, !155, !160, !0, !165, !170}
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "__cpu_dev_zhaoxin_cpu_dev", scope: !2, file: !3, line: 133, type: !57, isLocal: true, isDefinition: true)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_dev", file: !61, line: 6, size: 576, elements: !62)
!61 = !DIFile(filename: "arch/x86/kernel/cpu/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "363c46d03d8f48b64cec5a89455862ec")
!62 = !{!63, !66, !70, !150, !151, !152, !153, !154}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "c_vendor", scope: !60, file: !61, line: 7, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "c_ident", scope: !60, file: !61, line: 10, baseType: !67, size: 128, offset: 64)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 128, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 2)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "c_early_init", scope: !60, file: !61, line: 12, baseType: !71, size: 64, offset: 192)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !74}
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !76, line: 83, size: 2368, elements: !77)
!76 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!77 = !{!78, !91, !92, !94, !98, !99, !100, !101, !102, !103, !104, !112, !116, !120, !121, !122, !123, !124, !125, !126, !127, !128, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !146, !147, !149}
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !75, file: !76, line: 84, baseType: !79, size: 32)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !75, file: !76, line: 84, size: 32, elements: !80)
!80 = !{!81, !90}
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !76, line: 90, baseType: !82, size: 32)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !79, file: !76, line: 90, size: 32, elements: !83)
!83 = !{!84, !87, !88, !89}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !82, file: !76, line: 91, baseType: !85, size: 8)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !50, line: 21, baseType: !86)
!86 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !82, file: !76, line: 93, baseType: !85, size: 8, offset: 8)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !82, file: !76, line: 95, baseType: !85, size: 8, offset: 16)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !82, file: !76, line: 96, baseType: !85, size: 8, offset: 24)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !79, file: !76, line: 99, baseType: !49, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !75, file: !76, line: 101, baseType: !85, size: 8, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !75, file: !76, line: 104, baseType: !93, size: 32, offset: 64)
!93 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !75, file: !76, line: 107, baseType: !95, size: 160, offset: 96)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 160, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 5)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !75, file: !76, line: 109, baseType: !85, size: 8, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !75, file: !76, line: 110, baseType: !85, size: 8, offset: 264)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !75, file: !76, line: 112, baseType: !85, size: 8, offset: 272)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !75, file: !76, line: 113, baseType: !85, size: 8, offset: 280)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !75, file: !76, line: 115, baseType: !49, size: 32, offset: 288)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !75, file: !76, line: 117, baseType: !93, size: 32, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !75, file: !76, line: 123, baseType: !105, size: 768, offset: 384)
!105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !75, file: !76, line: 123, size: 768, elements: !106)
!106 = !{!107, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !105, file: !76, line: 124, baseType: !108, size: 768)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 768, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 24)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !105, file: !76, line: 125, baseType: !39, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !75, file: !76, line: 127, baseType: !113, size: 128, offset: 1152)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 128, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !75, file: !76, line: 128, baseType: !117, size: 512, offset: 1280)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 512, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !75, file: !76, line: 130, baseType: !7, size: 32, offset: 1792)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !75, file: !76, line: 131, baseType: !93, size: 32, offset: 1824)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !75, file: !76, line: 133, baseType: !93, size: 32, offset: 1856)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !75, file: !76, line: 134, baseType: !93, size: 32, offset: 1888)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !75, file: !76, line: 135, baseType: !93, size: 32, offset: 1920)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !75, file: !76, line: 136, baseType: !93, size: 32, offset: 1952)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !75, file: !76, line: 137, baseType: !39, size: 64, offset: 1984)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !75, file: !76, line: 139, baseType: !51, size: 64, offset: 2048)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !75, file: !76, line: 141, baseType: !129, size: 16, offset: 2112)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !48, line: 19, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !50, line: 24, baseType: !131)
!131 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !75, file: !76, line: 142, baseType: !129, size: 16, offset: 2128)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !75, file: !76, line: 143, baseType: !129, size: 16, offset: 2144)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !75, file: !76, line: 144, baseType: !129, size: 16, offset: 2160)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !75, file: !76, line: 146, baseType: !129, size: 16, offset: 2176)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !75, file: !76, line: 148, baseType: !129, size: 16, offset: 2192)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !75, file: !76, line: 150, baseType: !129, size: 16, offset: 2208)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !75, file: !76, line: 152, baseType: !129, size: 16, offset: 2224)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !75, file: !76, line: 153, baseType: !129, size: 16, offset: 2240)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !75, file: !76, line: 154, baseType: !129, size: 16, offset: 2256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !75, file: !76, line: 156, baseType: !129, size: 16, offset: 2272)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !75, file: !76, line: 158, baseType: !143, size: 8, offset: 2288)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !144, line: 35, baseType: !145)
!144 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!145 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !75, file: !76, line: 159, baseType: !47, size: 32, offset: 2304)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !75, file: !76, line: 161, baseType: !148, size: 8, offset: 2336)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !48, line: 17, baseType: !85)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !75, file: !76, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "c_bsp_init", scope: !60, file: !61, line: 13, baseType: !71, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "c_init", scope: !60, file: !61, line: 14, baseType: !71, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "c_identify", scope: !60, file: !61, line: 15, baseType: !71, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "c_detect_tlb", scope: !60, file: !61, line: 16, baseType: !71, size: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "c_x86_vendor", scope: !60, file: !61, line: 17, baseType: !93, size: 32, offset: 512)
!155 = !DIGlobalVariableExpression(var: !156, expr: !DIExpression())
!156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 8)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 104, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 13)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !3, line: 34, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 248, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 31)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !3, line: 43, type: !172, isLocal: true, isDefinition: true)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 192, elements: !109)
!173 = !{i32 7, !"Dwarf Version", i32 5}
!174 = !{i32 2, !"Debug Info Version", i32 3}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 8, !"cf-protection-branch", i32 1}
!177 = !{i32 4, !"function_return_thunk_extern", i32 1}
!178 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!179 = !{i32 1, !"Code Model", i32 2}
!180 = !{i32 1, !"override-stack-alignment", i32 8}
!181 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!182 = distinct !DISubprogram(name: "early_init_zhaoxin", scope: !3, file: !3, line: 57, type: !72, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !183)
!183 = !{!184, !185, !188, !189, !190}
!184 = !DILocalVariable(name: "c", arg: 1, scope: !182, file: !3, line: 57, type: !74)
!185 = !DILocalVariable(name: "eax", scope: !186, file: !3, line: 70, type: !47)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 69, column: 36)
!187 = distinct !DILexicalBlock(scope: !182, file: !3, line: 69, column: 6)
!188 = !DILocalVariable(name: "ebx", scope: !186, file: !3, line: 70, type: !47)
!189 = !DILocalVariable(name: "ecx", scope: !186, file: !3, line: 70, type: !47)
!190 = !DILocalVariable(name: "edx", scope: !186, file: !3, line: 70, type: !47)
!191 = !DILocation(line: 57, column: 52, scope: !182)
!192 = !DILocation(line: 59, column: 6, scope: !193)
!193 = distinct !DILexicalBlock(scope: !182, file: !3, line: 59, column: 6)
!194 = !DILocation(line: 59, column: 9, scope: !193)
!195 = !DILocation(line: 59, column: 13, scope: !193)
!196 = !DILocation(line: 59, column: 6, scope: !182)
!197 = !DILocation(line: 60, column: 3, scope: !193)
!198 = !DILocation(line: 62, column: 2, scope: !182)
!199 = !DILocation(line: 64, column: 6, scope: !200)
!200 = distinct !DILexicalBlock(scope: !182, file: !3, line: 64, column: 6)
!201 = !DILocation(line: 64, column: 9, scope: !200)
!202 = !DILocation(line: 64, column: 19, scope: !200)
!203 = !DILocation(line: 64, column: 6, scope: !182)
!204 = !DILocation(line: 65, column: 3, scope: !205)
!205 = distinct !DILexicalBlock(scope: !200, file: !3, line: 64, column: 31)
!206 = !DILocation(line: 66, column: 3, scope: !205)
!207 = !DILocation(line: 67, column: 2, scope: !205)
!208 = !DILocation(line: 69, column: 6, scope: !187)
!209 = !DILocation(line: 69, column: 9, scope: !187)
!210 = !DILocation(line: 69, column: 21, scope: !187)
!211 = !DILocation(line: 69, column: 6, scope: !182)
!212 = !DILocation(line: 70, column: 3, scope: !186)
!213 = !DILocation(line: 70, column: 7, scope: !186)
!214 = !DILocation(line: 70, column: 12, scope: !186)
!215 = !DILocation(line: 70, column: 17, scope: !186)
!216 = !DILocation(line: 70, column: 22, scope: !186)
!217 = !DILocation(line: 72, column: 3, scope: !186)
!218 = !DILocation(line: 78, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !186, file: !3, line: 78, column: 7)
!220 = !DILocation(line: 78, column: 11, scope: !219)
!221 = !DILocation(line: 78, column: 7, scope: !186)
!222 = !DILocation(line: 79, column: 42, scope: !219)
!223 = !DILocation(line: 79, column: 46, scope: !219)
!224 = !DILocation(line: 79, column: 53, scope: !219)
!225 = !DILocation(line: 79, column: 25, scope: !219)
!226 = !DILocation(line: 79, column: 4, scope: !219)
!227 = !DILocation(line: 79, column: 7, scope: !219)
!228 = !DILocation(line: 79, column: 23, scope: !219)
!229 = !DILocation(line: 80, column: 2, scope: !187)
!230 = !DILocation(line: 80, column: 2, scope: !186)
!231 = !DILocation(line: 82, column: 1, scope: !182)
!232 = distinct !DISubprogram(name: "init_zhaoxin", scope: !3, file: !3, line: 84, type: !72, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !233)
!233 = !{!234, !235}
!234 = !DILocalVariable(name: "c", arg: 1, scope: !232, file: !3, line: 84, type: !74)
!235 = !DILocalVariable(name: "eax", scope: !236, file: !3, line: 94, type: !7)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 93, column: 26)
!237 = distinct !DILexicalBlock(scope: !232, file: !3, line: 93, column: 6)
!238 = !DILocation(line: 84, column: 46, scope: !232)
!239 = !DILocation(line: 86, column: 21, scope: !232)
!240 = !DILocation(line: 86, column: 2, scope: !232)
!241 = !DILocation(line: 87, column: 23, scope: !232)
!242 = !DILocation(line: 87, column: 2, scope: !232)
!243 = !DILocation(line: 88, column: 23, scope: !232)
!244 = !DILocation(line: 88, column: 2, scope: !232)
!245 = !DILocation(line: 93, column: 6, scope: !237)
!246 = !DILocation(line: 93, column: 9, scope: !237)
!247 = !DILocation(line: 93, column: 21, scope: !237)
!248 = !DILocation(line: 93, column: 6, scope: !232)
!249 = !DILocation(line: 94, column: 3, scope: !236)
!250 = !DILocation(line: 94, column: 16, scope: !236)
!251 = !DILocation(line: 94, column: 22, scope: !236)
!252 = !DILocation(line: 101, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !236, file: !3, line: 101, column: 7)
!254 = !DILocation(line: 101, column: 12, scope: !253)
!255 = !DILocation(line: 101, column: 20, scope: !253)
!256 = !DILocation(line: 101, column: 26, scope: !253)
!257 = !DILocation(line: 101, column: 30, scope: !253)
!258 = !DILocation(line: 101, column: 36, scope: !253)
!259 = !DILocation(line: 101, column: 44, scope: !253)
!260 = !DILocation(line: 101, column: 7, scope: !236)
!261 = !DILocation(line: 102, column: 4, scope: !253)
!262 = !DILocation(line: 103, column: 2, scope: !237)
!263 = !DILocation(line: 103, column: 2, scope: !236)
!264 = !DILocation(line: 105, column: 6, scope: !265)
!265 = distinct !DILexicalBlock(scope: !232, file: !3, line: 105, column: 6)
!266 = !DILocation(line: 105, column: 9, scope: !265)
!267 = !DILocation(line: 105, column: 13, scope: !265)
!268 = !DILocation(line: 105, column: 6, scope: !232)
!269 = !DILocation(line: 106, column: 20, scope: !265)
!270 = !DILocation(line: 106, column: 3, scope: !265)
!271 = !DILocation(line: 108, column: 2, scope: !232)
!272 = !DILocation(line: 111, column: 21, scope: !232)
!273 = !DILocation(line: 111, column: 2, scope: !232)
!274 = !DILocation(line: 112, column: 1, scope: !232)
!275 = distinct !DISubprogram(name: "set_bit", scope: !276, file: !276, line: 26, type: !277, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !281)
!276 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!277 = !DISubroutineType(types: !278)
!278 = !{null, !46, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!281 = !{!282, !283}
!282 = !DILocalVariable(name: "nr", arg: 1, scope: !275, file: !276, line: 26, type: !46)
!283 = !DILocalVariable(name: "addr", arg: 2, scope: !275, file: !276, line: 26, type: !279)
!284 = !DILocation(line: 26, column: 42, scope: !275)
!285 = !DILocation(line: 26, column: 70, scope: !275)
!286 = !DILocation(line: 28, column: 26, scope: !275)
!287 = !DILocation(line: 28, column: 33, scope: !275)
!288 = !DILocation(line: 28, column: 31, scope: !275)
!289 = !DILocation(line: 28, column: 2, scope: !275)
!290 = !DILocation(line: 29, column: 15, scope: !275)
!291 = !DILocation(line: 29, column: 19, scope: !275)
!292 = !DILocation(line: 29, column: 2, scope: !275)
!293 = !DILocation(line: 30, column: 1, scope: !275)
!294 = distinct !DISubprogram(name: "cpuid", scope: !295, file: !295, line: 72, type: !296, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !299)
!295 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!296 = !DISubroutineType(types: !297)
!297 = !{null, !7, !298, !298, !298, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!299 = !{!300, !301, !302, !303, !304}
!300 = !DILocalVariable(name: "op", arg: 1, scope: !294, file: !295, line: 72, type: !7)
!301 = !DILocalVariable(name: "eax", arg: 2, scope: !294, file: !295, line: 73, type: !298)
!302 = !DILocalVariable(name: "ebx", arg: 3, scope: !294, file: !295, line: 73, type: !298)
!303 = !DILocalVariable(name: "ecx", arg: 4, scope: !294, file: !295, line: 74, type: !298)
!304 = !DILocalVariable(name: "edx", arg: 5, scope: !294, file: !295, line: 74, type: !298)
!305 = !DILocation(line: 72, column: 39, scope: !294)
!306 = !DILocation(line: 73, column: 19, scope: !294)
!307 = !DILocation(line: 73, column: 38, scope: !294)
!308 = !DILocation(line: 74, column: 19, scope: !294)
!309 = !DILocation(line: 74, column: 38, scope: !294)
!310 = !DILocation(line: 76, column: 9, scope: !294)
!311 = !DILocation(line: 76, column: 3, scope: !294)
!312 = !DILocation(line: 76, column: 7, scope: !294)
!313 = !DILocation(line: 77, column: 3, scope: !294)
!314 = !DILocation(line: 77, column: 7, scope: !294)
!315 = !DILocation(line: 78, column: 10, scope: !294)
!316 = !DILocation(line: 78, column: 15, scope: !294)
!317 = !DILocation(line: 78, column: 20, scope: !294)
!318 = !DILocation(line: 78, column: 25, scope: !294)
!319 = !DILocation(line: 78, column: 2, scope: !294)
!320 = !DILocation(line: 79, column: 1, scope: !294)
!321 = distinct !DISubprogram(name: "get_count_order", scope: !322, file: !322, line: 211, type: !323, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !325)
!322 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!323 = !DISubroutineType(types: !324)
!324 = !{!93, !7}
!325 = !{!326}
!326 = !DILocalVariable(name: "count", arg: 1, scope: !321, file: !322, line: 211, type: !7)
!327 = !DILocation(line: 211, column: 48, scope: !321)
!328 = !DILocation(line: 213, column: 6, scope: !329)
!329 = distinct !DILexicalBlock(scope: !321, file: !322, line: 213, column: 6)
!330 = !DILocation(line: 213, column: 12, scope: !329)
!331 = !DILocation(line: 213, column: 6, scope: !321)
!332 = !DILocation(line: 214, column: 3, scope: !329)
!333 = !DILocation(line: 216, column: 13, scope: !321)
!334 = !DILocation(line: 216, column: 9, scope: !321)
!335 = !DILocation(line: 216, column: 2, scope: !321)
!336 = !DILocation(line: 217, column: 1, scope: !321)
!337 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !338, file: !338, line: 80, type: !339, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !348)
!338 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!339 = !DISubroutineType(types: !340)
!340 = !{null, !341, !344}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 61, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !346, line: 72, baseType: !347)
!346 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !346, line: 16, baseType: !39)
!348 = !{!349, !350}
!349 = !DILocalVariable(name: "v", arg: 1, scope: !337, file: !338, line: 80, type: !341)
!350 = !DILocalVariable(name: "size", arg: 2, scope: !337, file: !338, line: 80, type: !344)
!351 = !DILocation(line: 80, column: 74, scope: !337)
!352 = !DILocation(line: 80, column: 84, scope: !337)
!353 = !DILocation(line: 82, column: 20, scope: !337)
!354 = !DILocation(line: 82, column: 23, scope: !337)
!355 = !DILocation(line: 82, column: 2, scope: !337)
!356 = !DILocation(line: 83, column: 2, scope: !337)
!357 = !DILocation(line: 84, column: 1, scope: !337)
!358 = distinct !DISubprogram(name: "arch_set_bit", scope: !359, file: !359, line: 52, type: !277, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !360)
!359 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!360 = !{!361, !362}
!361 = !DILocalVariable(name: "nr", arg: 1, scope: !358, file: !359, line: 52, type: !46)
!362 = !DILocalVariable(name: "addr", arg: 2, scope: !358, file: !359, line: 52, type: !279)
!363 = !DILocation(line: 52, column: 19, scope: !358)
!364 = !DILocation(line: 52, column: 47, scope: !358)
!365 = !DILocation(line: 54, column: 27, scope: !366)
!366 = distinct !DILexicalBlock(scope: !358, file: !359, line: 54, column: 6)
!367 = !DILocation(line: 54, column: 6, scope: !366)
!368 = !DILocation(line: 54, column: 6, scope: !358)
!369 = !DILocation(line: 56, column: 6, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !359, line: 54, column: 32)
!371 = !DILocation(line: 57, column: 12, scope: !370)
!372 = !DILocation(line: 55, column: 3, scope: !370)
!373 = !{i64 2147886514, i64 2147886553, i64 2147886574, i64 2147886611, i64 2147886634, i64 2147886504}
!374 = !DILocation(line: 59, column: 2, scope: !370)
!375 = !DILocation(line: 61, column: 8, scope: !376)
!376 = distinct !DILexicalBlock(scope: !366, file: !359, line: 59, column: 9)
!377 = !DILocation(line: 61, column: 32, scope: !376)
!378 = !DILocation(line: 60, column: 3, scope: !376)
!379 = !{i64 2147886799, i64 2147886838, i64 2147886859, i64 2147886896, i64 2147886919, i64 2147886789}
!380 = !DILocation(line: 63, column: 1, scope: !358)
!381 = distinct !DISubprogram(name: "kasan_check_write", scope: !382, file: !382, line: 44, type: !383, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !385)
!382 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!383 = !DISubroutineType(types: !384)
!384 = !{!143, !341, !7}
!385 = !{!386, !387}
!386 = !DILocalVariable(name: "p", arg: 1, scope: !381, file: !382, line: 44, type: !341)
!387 = !DILocalVariable(name: "size", arg: 2, scope: !381, file: !382, line: 44, type: !7)
!388 = !DILocation(line: 44, column: 59, scope: !381)
!389 = !DILocation(line: 44, column: 75, scope: !381)
!390 = !DILocation(line: 46, column: 2, scope: !381)
!391 = distinct !DISubprogram(name: "kcsan_check_access", scope: !392, file: !392, line: 229, type: !393, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !395)
!392 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!393 = !DISubroutineType(types: !394)
!394 = !{null, !341, !344, !93}
!395 = !{!396, !397, !398}
!396 = !DILocalVariable(name: "ptr", arg: 1, scope: !391, file: !392, line: 229, type: !341)
!397 = !DILocalVariable(name: "size", arg: 2, scope: !391, file: !392, line: 229, type: !344)
!398 = !DILocalVariable(name: "type", arg: 3, scope: !391, file: !392, line: 230, type: !93)
!399 = !DILocation(line: 229, column: 60, scope: !391)
!400 = !DILocation(line: 229, column: 72, scope: !391)
!401 = !DILocation(line: 230, column: 15, scope: !391)
!402 = !DILocation(line: 230, column: 23, scope: !391)
!403 = distinct !DISubprogram(name: "native_cpuid", scope: !295, file: !295, line: 30, type: !404, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !406)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !298, !298, !298, !298}
!406 = !{!407, !408, !409, !410}
!407 = !DILocalVariable(name: "eax", arg: 1, scope: !403, file: !295, line: 30, type: !298)
!408 = !DILocalVariable(name: "ebx", arg: 2, scope: !403, file: !295, line: 30, type: !298)
!409 = !DILocalVariable(name: "ecx", arg: 3, scope: !403, file: !295, line: 31, type: !298)
!410 = !DILocalVariable(name: "edx", arg: 4, scope: !403, file: !295, line: 31, type: !298)
!411 = !DILocation(line: 30, column: 47, scope: !403)
!412 = !DILocation(line: 30, column: 66, scope: !403)
!413 = !DILocation(line: 31, column: 19, scope: !403)
!414 = !DILocation(line: 31, column: 38, scope: !403)
!415 = !DILocation(line: 35, column: 15, scope: !403)
!416 = !DILocation(line: 36, column: 15, scope: !403)
!417 = !DILocation(line: 37, column: 15, scope: !403)
!418 = !DILocation(line: 38, column: 15, scope: !403)
!419 = !DILocation(line: 39, column: 14, scope: !403)
!420 = !DILocation(line: 39, column: 13, scope: !403)
!421 = !DILocation(line: 39, column: 26, scope: !403)
!422 = !DILocation(line: 39, column: 25, scope: !403)
!423 = !DILocation(line: 34, column: 2, scope: !403)
!424 = !{i64 1805011}
!425 = !DILocation(line: 41, column: 1, scope: !403)
!426 = distinct !DISubprogram(name: "fls", scope: !359, file: !359, line: 359, type: !323, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !427)
!427 = !{!428, !429}
!428 = !DILocalVariable(name: "x", arg: 1, scope: !426, file: !359, line: 359, type: !7)
!429 = !DILocalVariable(name: "r", scope: !426, file: !359, line: 361, type: !93)
!430 = !DILocation(line: 359, column: 45, scope: !426)
!431 = !DILocation(line: 361, column: 2, scope: !426)
!432 = !DILocation(line: 361, column: 6, scope: !426)
!433 = !DILocation(line: 375, column: 14, scope: !426)
!434 = !DILocation(line: 373, column: 2, scope: !426)
!435 = !{i64 398263}
!436 = !DILocation(line: 386, column: 9, scope: !426)
!437 = !DILocation(line: 386, column: 11, scope: !426)
!438 = !DILocation(line: 387, column: 1, scope: !426)
!439 = !DILocation(line: 386, column: 2, scope: !426)
!440 = !DISubprogram(name: "init_intel_cacheinfo", scope: !61, file: !61, line: 70, type: !72, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!441 = !DISubprogram(name: "detect_num_cpu_cores", scope: !61, file: !61, line: 74, type: !72, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!442 = distinct !DISubprogram(name: "cpuid_eax", scope: !295, file: !295, line: 94, type: !443, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !445)
!443 = !DISubroutineType(types: !444)
!444 = !{!7, !7}
!445 = !{!446, !447, !448, !449, !450}
!446 = !DILocalVariable(name: "op", arg: 1, scope: !442, file: !295, line: 94, type: !7)
!447 = !DILocalVariable(name: "eax", scope: !442, file: !295, line: 96, type: !7)
!448 = !DILocalVariable(name: "ebx", scope: !442, file: !295, line: 96, type: !7)
!449 = !DILocalVariable(name: "ecx", scope: !442, file: !295, line: 96, type: !7)
!450 = !DILocalVariable(name: "edx", scope: !442, file: !295, line: 96, type: !7)
!451 = !DILocation(line: 94, column: 51, scope: !442)
!452 = !DILocation(line: 96, column: 2, scope: !442)
!453 = !DILocation(line: 96, column: 15, scope: !442)
!454 = !DILocation(line: 96, column: 20, scope: !442)
!455 = !DILocation(line: 96, column: 25, scope: !442)
!456 = !DILocation(line: 96, column: 30, scope: !442)
!457 = !DILocation(line: 98, column: 8, scope: !442)
!458 = !DILocation(line: 98, column: 2, scope: !442)
!459 = !DILocation(line: 100, column: 9, scope: !442)
!460 = !DILocation(line: 101, column: 1, scope: !442)
!461 = !DILocation(line: 100, column: 2, scope: !442)
!462 = distinct !DISubprogram(name: "init_zhaoxin_cap", scope: !3, file: !3, line: 20, type: !72, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !463)
!463 = !{!464, !465, !466, !467, !470, !474}
!464 = !DILocalVariable(name: "c", arg: 1, scope: !462, file: !3, line: 20, type: !74)
!465 = !DILocalVariable(name: "lo", scope: !462, file: !3, line: 22, type: !47)
!466 = !DILocalVariable(name: "hi", scope: !462, file: !3, line: 22, type: !47)
!467 = !DILocalVariable(name: "tmp", scope: !468, file: !3, line: 26, type: !47)
!468 = distinct !DILexicalBlock(scope: !469, file: !3, line: 25, column: 43)
!469 = distinct !DILexicalBlock(scope: !462, file: !3, line: 25, column: 6)
!470 = !DILocalVariable(name: "__val", scope: !471, file: !3, line: 30, type: !51)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 30, column: 4)
!472 = distinct !DILexicalBlock(scope: !473, file: !3, line: 29, column: 59)
!473 = distinct !DILexicalBlock(scope: !468, file: !3, line: 29, column: 7)
!474 = !DILocalVariable(name: "__val", scope: !475, file: !3, line: 39, type: !51)
!475 = distinct !DILexicalBlock(scope: !476, file: !3, line: 39, column: 4)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 38, column: 59)
!477 = distinct !DILexicalBlock(scope: !468, file: !3, line: 38, column: 7)
!478 = !DILocation(line: 20, column: 50, scope: !462)
!479 = !DILocation(line: 22, column: 2, scope: !462)
!480 = !DILocation(line: 22, column: 7, scope: !462)
!481 = !DILocation(line: 22, column: 11, scope: !462)
!482 = !DILocation(line: 25, column: 6, scope: !469)
!483 = !DILocation(line: 25, column: 28, scope: !469)
!484 = !DILocation(line: 25, column: 6, scope: !462)
!485 = !DILocation(line: 26, column: 3, scope: !468)
!486 = !DILocation(line: 26, column: 7, scope: !468)
!487 = !DILocation(line: 26, column: 13, scope: !468)
!488 = !DILocation(line: 29, column: 8, scope: !473)
!489 = !DILocation(line: 29, column: 12, scope: !473)
!490 = !DILocation(line: 29, column: 43, scope: !473)
!491 = !DILocation(line: 29, column: 7, scope: !468)
!492 = !DILocation(line: 30, column: 4, scope: !472)
!493 = !DILocation(line: 30, column: 4, scope: !471)
!494 = !DILocation(line: 32, column: 7, scope: !472)
!495 = !DILocation(line: 33, column: 29, scope: !472)
!496 = !DILocation(line: 33, column: 33, scope: !472)
!497 = !DILocation(line: 33, column: 4, scope: !472)
!498 = !DILocation(line: 34, column: 4, scope: !499)
!499 = distinct !DILexicalBlock(scope: !472, file: !3, line: 34, column: 4)
!500 = !DILocation(line: 34, column: 4, scope: !501)
!501 = distinct !DILexicalBlock(scope: !499, file: !3, line: 34, column: 4)
!502 = !DILocation(line: 35, column: 3, scope: !472)
!503 = !DILocation(line: 38, column: 8, scope: !477)
!504 = !DILocation(line: 38, column: 12, scope: !477)
!505 = !DILocation(line: 38, column: 43, scope: !477)
!506 = !DILocation(line: 38, column: 7, scope: !468)
!507 = !DILocation(line: 39, column: 4, scope: !476)
!508 = !DILocation(line: 39, column: 4, scope: !475)
!509 = !DILocation(line: 41, column: 7, scope: !476)
!510 = !DILocation(line: 42, column: 29, scope: !476)
!511 = !DILocation(line: 42, column: 33, scope: !476)
!512 = !DILocation(line: 42, column: 4, scope: !476)
!513 = !DILocation(line: 43, column: 4, scope: !514)
!514 = distinct !DILexicalBlock(scope: !476, file: !3, line: 43, column: 4)
!515 = !DILocation(line: 43, column: 4, scope: !516)
!516 = distinct !DILexicalBlock(scope: !514, file: !3, line: 43, column: 4)
!517 = !DILocation(line: 44, column: 3, scope: !476)
!518 = !DILocation(line: 50, column: 44, scope: !468)
!519 = !DILocation(line: 50, column: 3, scope: !468)
!520 = !DILocation(line: 50, column: 6, scope: !468)
!521 = !DILocation(line: 50, column: 42, scope: !468)
!522 = !DILocation(line: 51, column: 2, scope: !469)
!523 = !DILocation(line: 51, column: 2, scope: !468)
!524 = !DILocation(line: 53, column: 6, scope: !525)
!525 = distinct !DILexicalBlock(scope: !462, file: !3, line: 53, column: 6)
!526 = !DILocation(line: 53, column: 9, scope: !525)
!527 = !DILocation(line: 53, column: 13, scope: !525)
!528 = !DILocation(line: 53, column: 6, scope: !462)
!529 = !DILocation(line: 54, column: 3, scope: !525)
!530 = !DILocation(line: 55, column: 1, scope: !462)
!531 = !DISubprogram(name: "init_ia32_feat_ctl", scope: !532, file: !532, line: 67, type: !72, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!532 = !DIFile(filename: "./arch/x86/include/asm/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7621f2ef482a6250db9c8e206e21622e")
!533 = distinct !DISubprogram(name: "cpuid_edx", scope: !295, file: !295, line: 121, type: !443, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !534)
!534 = !{!535, !536, !537, !538, !539}
!535 = !DILocalVariable(name: "op", arg: 1, scope: !533, file: !295, line: 121, type: !7)
!536 = !DILocalVariable(name: "eax", scope: !533, file: !295, line: 123, type: !7)
!537 = !DILocalVariable(name: "ebx", scope: !533, file: !295, line: 123, type: !7)
!538 = !DILocalVariable(name: "ecx", scope: !533, file: !295, line: 123, type: !7)
!539 = !DILocalVariable(name: "edx", scope: !533, file: !295, line: 123, type: !7)
!540 = !DILocation(line: 121, column: 51, scope: !533)
!541 = !DILocation(line: 123, column: 2, scope: !533)
!542 = !DILocation(line: 123, column: 15, scope: !533)
!543 = !DILocation(line: 123, column: 20, scope: !533)
!544 = !DILocation(line: 123, column: 25, scope: !533)
!545 = !DILocation(line: 123, column: 30, scope: !533)
!546 = !DILocation(line: 125, column: 8, scope: !533)
!547 = !DILocation(line: 125, column: 2, scope: !533)
!548 = !DILocation(line: 127, column: 9, scope: !533)
!549 = !DILocation(line: 128, column: 1, scope: !533)
!550 = !DILocation(line: 127, column: 2, scope: !533)
!551 = distinct !DISubprogram(name: "native_read_msr", scope: !552, file: !552, line: 114, type: !553, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !555)
!552 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!553 = !DISubroutineType(types: !554)
!554 = !{!53, !7}
!555 = !{!556, !557}
!556 = !DILocalVariable(name: "msr", arg: 1, scope: !551, file: !552, line: 114, type: !7)
!557 = !DILocalVariable(name: "val", scope: !551, file: !552, line: 116, type: !53)
!558 = !DILocation(line: 114, column: 63, scope: !551)
!559 = !DILocation(line: 116, column: 2, scope: !551)
!560 = !DILocation(line: 116, column: 21, scope: !551)
!561 = !DILocation(line: 118, column: 16, scope: !551)
!562 = !DILocation(line: 118, column: 8, scope: !551)
!563 = !DILocation(line: 118, column: 6, scope: !551)
!564 = !DILocation(line: 120, column: 6, scope: !565)
!565 = distinct !DILexicalBlock(scope: !551, file: !552, line: 120, column: 6)
!566 = !DILocation(line: 120, column: 6, scope: !551)
!567 = !DILocation(line: 121, column: 21, scope: !565)
!568 = !DILocation(line: 121, column: 26, scope: !565)
!569 = !DILocation(line: 121, column: 3, scope: !565)
!570 = !DILocation(line: 123, column: 9, scope: !551)
!571 = !DILocation(line: 124, column: 1, scope: !551)
!572 = !DILocation(line: 123, column: 2, scope: !551)
!573 = distinct !DISubprogram(name: "wrmsr", scope: !552, file: !552, line: 252, type: !574, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !7, !47, !47}
!576 = !{!577, !578, !579}
!577 = !DILocalVariable(name: "msr", arg: 1, scope: !573, file: !552, line: 252, type: !7)
!578 = !DILocalVariable(name: "low", arg: 2, scope: !573, file: !552, line: 252, type: !47)
!579 = !DILocalVariable(name: "high", arg: 3, scope: !573, file: !552, line: 252, type: !47)
!580 = !DILocation(line: 252, column: 39, scope: !573)
!581 = !DILocation(line: 252, column: 48, scope: !573)
!582 = !DILocation(line: 252, column: 57, scope: !573)
!583 = !DILocation(line: 254, column: 19, scope: !573)
!584 = !DILocation(line: 254, column: 24, scope: !573)
!585 = !DILocation(line: 254, column: 29, scope: !573)
!586 = !DILocation(line: 254, column: 2, scope: !573)
!587 = !DILocation(line: 255, column: 1, scope: !573)
!588 = !DISubprogram(name: "_printk", scope: !589, file: !589, line: 153, type: !590, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!589 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!590 = !DISubroutineType(types: !591)
!591 = !{!93, !64, null}
!592 = distinct !DISubprogram(name: "__rdmsr", scope: !552, file: !552, line: 80, type: !553, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !593)
!593 = !{!594, !595, !596}
!594 = !DILocalVariable(name: "msr", arg: 1, scope: !592, file: !552, line: 80, type: !7)
!595 = !DILocalVariable(name: "low", scope: !592, file: !552, line: 82, type: !39)
!596 = !DILocalVariable(name: "high", scope: !592, file: !552, line: 82, type: !39)
!597 = !DILocation(line: 80, column: 64, scope: !592)
!598 = !DILocation(line: 82, column: 2, scope: !592)
!599 = !DILocation(line: 87, column: 45, scope: !592)
!600 = !DILocation(line: 84, column: 2, scope: !592)
!601 = !{i64 1816998, i64 1817019, i64 2149494621, i64 2149494665, i64 2149494688, i64 2149494721, i64 2149494752, i64 2149494791}
!602 = !DILocation(line: 89, column: 9, scope: !592)
!603 = !DILocation(line: 90, column: 1, scope: !592)
!604 = !DILocation(line: 89, column: 2, scope: !592)
!605 = distinct !DISubprogram(name: "static_key_false", scope: !606, file: !606, line: 205, type: !607, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !633)
!606 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!607 = !DISubroutineType(types: !608)
!608 = !{!143, !609}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !606, line: 85, size: 128, elements: !611)
!611 = !{!612, !617}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !610, file: !606, line: 86, baseType: !613, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !144, line: 174, baseType: !614)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 172, size: 32, elements: !615)
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !614, file: !144, line: 173, baseType: !93, size: 32)
!617 = !DIDerivedType(tag: DW_TAG_member, scope: !610, file: !606, line: 101, baseType: !618, size: 64, offset: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !610, file: !606, line: 101, size: 64, elements: !619)
!619 = !{!620, !621, !630}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !618, file: !606, line: 102, baseType: !39, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !618, file: !606, line: 103, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !606, line: 117, size: 128, elements: !624)
!624 = !{!625, !628, !629}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !623, file: !606, line: 118, baseType: !626, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !48, line: 20, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !50, line: 26, baseType: !93)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !623, file: !606, line: 119, baseType: !626, size: 32, offset: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !623, file: !606, line: 120, baseType: !46, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !618, file: !606, line: 104, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !606, line: 104, flags: DIFlagFwdDecl)
!633 = !{!634}
!634 = !DILocalVariable(name: "key", arg: 1, scope: !605, file: !606, line: 205, type: !609)
!635 = !DILocation(line: 205, column: 65, scope: !605)
!636 = !DILocation(line: 207, column: 28, scope: !605)
!637 = !DILocation(line: 207, column: 9, scope: !605)
!638 = !DILocation(line: 207, column: 2, scope: !605)
!639 = !DISubprogram(name: "do_trace_read_msr", scope: !552, file: !552, line: 65, type: !640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !7, !51, !93}
!642 = distinct !DISubprogram(name: "arch_static_branch", scope: !643, file: !643, line: 25, type: !644, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!643 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!644 = !DISubroutineType(types: !645)
!645 = !{!143, !609, !143}
!646 = !{!647, !648, !649}
!647 = !DILocalVariable(name: "key", arg: 1, scope: !642, file: !643, line: 25, type: !609)
!648 = !DILocalVariable(name: "branch", arg: 2, scope: !642, file: !643, line: 25, type: !143)
!649 = !DILabel(scope: !642, name: "l_yes", file: !643, line: 33)
!650 = !DILocation(line: 25, column: 67, scope: !642)
!651 = !DILocation(line: 25, column: 77, scope: !642)
!652 = !DILocation(line: 30, column: 13, scope: !642)
!653 = !DILocation(line: 30, column: 28, scope: !642)
!654 = !{i8 0, i8 2}
!655 = !{}
!656 = !DILocation(line: 30, column: 26, scope: !642)
!657 = !DILocation(line: 27, column: 2, scope: !642)
!658 = !{i64 1481320, i64 1481364, i64 2148966047, i64 2148966068, i64 2148966094, i64 2148966127, i64 2148966161, i64 2148966185}
!659 = !DILocation(line: 32, column: 2, scope: !642)
!660 = !DILocation(line: 33, column: 1, scope: !642)
!661 = !DILocation(line: 34, column: 2, scope: !642)
!662 = !DILocation(line: 35, column: 1, scope: !642)
!663 = distinct !DISubprogram(name: "native_write_msr", scope: !552, file: !552, line: 143, type: !574, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !664)
!664 = !{!665, !666, !667}
!665 = !DILocalVariable(name: "msr", arg: 1, scope: !663, file: !552, line: 143, type: !7)
!666 = !DILocalVariable(name: "low", arg: 2, scope: !663, file: !552, line: 143, type: !47)
!667 = !DILocalVariable(name: "high", arg: 3, scope: !663, file: !552, line: 143, type: !47)
!668 = !DILocation(line: 143, column: 31, scope: !663)
!669 = !DILocation(line: 143, column: 40, scope: !663)
!670 = !DILocation(line: 143, column: 49, scope: !663)
!671 = !DILocation(line: 145, column: 10, scope: !663)
!672 = !DILocation(line: 145, column: 15, scope: !663)
!673 = !DILocation(line: 145, column: 20, scope: !663)
!674 = !DILocation(line: 145, column: 2, scope: !663)
!675 = !DILocation(line: 147, column: 6, scope: !676)
!676 = distinct !DILexicalBlock(scope: !663, file: !552, line: 147, column: 6)
!677 = !DILocation(line: 147, column: 6, scope: !663)
!678 = !DILocation(line: 148, column: 22, scope: !676)
!679 = !DILocation(line: 148, column: 33, scope: !676)
!680 = !DILocation(line: 148, column: 28, scope: !676)
!681 = !DILocation(line: 148, column: 38, scope: !676)
!682 = !DILocation(line: 148, column: 46, scope: !676)
!683 = !DILocation(line: 148, column: 44, scope: !676)
!684 = !DILocation(line: 148, column: 3, scope: !676)
!685 = !DILocation(line: 149, column: 1, scope: !663)
!686 = distinct !DISubprogram(name: "__wrmsr", scope: !552, file: !552, line: 92, type: !574, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !687)
!687 = !{!688, !689, !690}
!688 = !DILocalVariable(name: "msr", arg: 1, scope: !686, file: !552, line: 92, type: !7)
!689 = !DILocalVariable(name: "low", arg: 2, scope: !686, file: !552, line: 92, type: !47)
!690 = !DILocalVariable(name: "high", arg: 3, scope: !686, file: !552, line: 92, type: !47)
!691 = !DILocation(line: 92, column: 50, scope: !686)
!692 = !DILocation(line: 92, column: 59, scope: !686)
!693 = !DILocation(line: 92, column: 68, scope: !686)
!694 = !DILocation(line: 97, column: 17, scope: !686)
!695 = !DILocation(line: 97, column: 27, scope: !686)
!696 = !DILocation(line: 97, column: 38, scope: !686)
!697 = !DILocation(line: 94, column: 2, scope: !686)
!698 = !{i64 1817254, i64 1817275, i64 2149495120, i64 2149495164, i64 2149495187, i64 2149495220, i64 2149495251, i64 2149495290}
!699 = !DILocation(line: 98, column: 1, scope: !686)
!700 = !DISubprogram(name: "do_trace_write_msr", scope: !552, file: !552, line: 64, type: !640, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
