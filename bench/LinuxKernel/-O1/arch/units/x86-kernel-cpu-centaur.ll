; ModuleID = 'arch/x86/kernel/cpu/centaur.c'
source_filename = "arch/x86/kernel/cpu/centaur.c"
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

@centaur_cpu_dev = internal constant %struct.cpu_dev { ptr @.str, [2 x ptr] [ptr @.str.1, ptr null], ptr @early_init_centaur, ptr null, ptr @init_centaur, ptr null, ptr null, i32 5 }, align 8, !dbg !0
@__cpu_dev_centaur_cpu_dev = internal constant ptr @centaur_cpu_dev, section ".x86_cpu_dev.init", align 8, !dbg !55
@.str = private unnamed_addr constant [8 x i8] c"Centaur\00", align 1, !dbg !155
@.str.1 = private unnamed_addr constant [13 x i8] c"CentaurHauls\00", align 1, !dbg !160
@.str.2 = private unnamed_addr constant [31 x i8] c"\016CPU: Enabled ACE h/w crypto\0A\00", align 1, !dbg !165
@.str.3 = private unnamed_addr constant [24 x i8] c"\016CPU: Enabled h/w RNG\0A\00", align 1, !dbg !170
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__cpu_dev_centaur_cpu_dev], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_init_centaur(ptr noundef %c) #0 align 16 !dbg !182 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !184, metadata !DIExpression()), !dbg !185
  %0 = load ptr, ptr %c.addr, align 8, !dbg !186
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 0, !dbg !188
  %x86 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1, !dbg !188
  %2 = load i8, ptr %x86, align 1, !dbg !188
  %conv = zext i8 %2 to i32, !dbg !186
  %cmp = icmp eq i32 %conv, 6, !dbg !189
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !190

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %c.addr, align 8, !dbg !191
  %4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 0, !dbg !192
  %x86_model = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 0, !dbg !192
  %5 = load i8, ptr %x86_model, align 8, !dbg !192
  %conv2 = zext i8 %5 to i32, !dbg !191
  %cmp3 = icmp sge i32 %conv2, 15, !dbg !193
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !194

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %c.addr, align 8, !dbg !195
  %7 = getelementptr inbounds %struct.cpuinfo_x86, ptr %6, i32 0, i32 0, !dbg !196
  %x865 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1, !dbg !196
  %8 = load i8, ptr %x865, align 1, !dbg !196
  %conv6 = zext i8 %8 to i32, !dbg !195
  %cmp7 = icmp sge i32 %conv6, 7, !dbg !197
  br i1 %cmp7, label %if.then, label %if.end, !dbg !198

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %9 = load ptr, ptr %c.addr, align 8, !dbg !199
  %10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 10, !dbg !199
  %arraydecay = getelementptr inbounds [24 x i32], ptr %10, i64 0, i64 0, !dbg !199
  call void @set_bit(i64 noundef 104, ptr noundef %arraydecay) #8, !dbg !199
  br label %if.end, !dbg !199

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %11 = load ptr, ptr %c.addr, align 8, !dbg !200
  %12 = getelementptr inbounds %struct.cpuinfo_x86, ptr %11, i32 0, i32 10, !dbg !200
  %arraydecay9 = getelementptr inbounds [24 x i32], ptr %12, i64 0, i64 0, !dbg !200
  call void @set_bit(i64 noundef 111, ptr noundef %arraydecay9) #8, !dbg !200
  %13 = load ptr, ptr %c.addr, align 8, !dbg !201
  %x86_power = getelementptr inbounds %struct.cpuinfo_x86, ptr %13, i32 0, i32 18, !dbg !203
  %14 = load i32, ptr %x86_power, align 4, !dbg !203
  %and = and i32 %14, 256, !dbg !204
  %tobool = icmp ne i32 %and, 0, !dbg !204
  br i1 %tobool, label %if.then10, label %if.end13, !dbg !205

if.then10:                                        ; preds = %if.end
  %15 = load ptr, ptr %c.addr, align 8, !dbg !206
  %16 = getelementptr inbounds %struct.cpuinfo_x86, ptr %15, i32 0, i32 10, !dbg !206
  %arraydecay11 = getelementptr inbounds [24 x i32], ptr %16, i64 0, i64 0, !dbg !206
  call void @set_bit(i64 noundef 104, ptr noundef %arraydecay11) #8, !dbg !206
  %17 = load ptr, ptr %c.addr, align 8, !dbg !208
  %18 = getelementptr inbounds %struct.cpuinfo_x86, ptr %17, i32 0, i32 10, !dbg !208
  %arraydecay12 = getelementptr inbounds [24 x i32], ptr %18, i64 0, i64 0, !dbg !208
  call void @set_bit(i64 noundef 120, ptr noundef %arraydecay12) #8, !dbg !208
  br label %if.end13, !dbg !209

if.end13:                                         ; preds = %if.then10, %if.end
  ret void, !dbg !210
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_centaur(ptr noundef %c) #0 align 16 !dbg !211 {
entry:
  %c.addr = alloca ptr, align 8
  %eax = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !213, metadata !DIExpression()), !dbg !217
  %0 = load ptr, ptr %c.addr, align 8, !dbg !218
  call void @early_init_centaur(ptr noundef %0) #8, !dbg !219
  %1 = load ptr, ptr %c.addr, align 8, !dbg !220
  call void @init_intel_cacheinfo(ptr noundef %1) #8, !dbg !221
  %2 = load ptr, ptr %c.addr, align 8, !dbg !222
  call void @detect_num_cpu_cores(ptr noundef %2) #8, !dbg !223
  %3 = load ptr, ptr %c.addr, align 8, !dbg !224
  %cpuid_level = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 9, !dbg !225
  %4 = load i32, ptr %cpuid_level, align 8, !dbg !225
  %cmp = icmp sgt i32 %4, 9, !dbg !226
  br i1 %cmp, label %if.then, label %if.end4, !dbg !227

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #9, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !214, metadata !DIExpression()), !dbg !229
  %call = call i32 @cpuid_eax(i32 noundef 10) #8, !dbg !230
  store i32 %call, ptr %eax, align 4, !dbg !229
  %5 = load i32, ptr %eax, align 4, !dbg !231
  %and = and i32 %5, 255, !dbg !233
  %tobool = icmp ne i32 %and, 0, !dbg !233
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !234

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32, ptr %eax, align 4, !dbg !235
  %shr = lshr i32 %6, 8, !dbg !236
  %and1 = and i32 %shr, 255, !dbg !237
  %cmp2 = icmp ugt i32 %and1, 1, !dbg !238
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !239

if.then3:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %c.addr, align 8, !dbg !240
  %8 = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 10, !dbg !240
  %arraydecay = getelementptr inbounds [24 x i32], ptr %8, i64 0, i64 0, !dbg !240
  call void @set_bit(i64 noundef 107, ptr noundef %arraydecay) #8, !dbg !240
  br label %if.end, !dbg !240

if.end:                                           ; preds = %if.then3, %land.lhs.true, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #9, !dbg !241
  br label %if.end4, !dbg !242

if.end4:                                          ; preds = %if.end, %entry
  %9 = load ptr, ptr %c.addr, align 8, !dbg !243
  %10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 0, !dbg !245
  %x86 = getelementptr inbounds %struct.anon, ptr %10, i32 0, i32 1, !dbg !245
  %11 = load i8, ptr %x86, align 1, !dbg !245
  %conv = zext i8 %11 to i32, !dbg !243
  %cmp5 = icmp eq i32 %conv, 6, !dbg !246
  br i1 %cmp5, label %if.then11, label %lor.lhs.false, !dbg !247

lor.lhs.false:                                    ; preds = %if.end4
  %12 = load ptr, ptr %c.addr, align 8, !dbg !248
  %13 = getelementptr inbounds %struct.cpuinfo_x86, ptr %12, i32 0, i32 0, !dbg !249
  %x867 = getelementptr inbounds %struct.anon, ptr %13, i32 0, i32 1, !dbg !249
  %14 = load i8, ptr %x867, align 1, !dbg !249
  %conv8 = zext i8 %14 to i32, !dbg !248
  %cmp9 = icmp sge i32 %conv8, 7, !dbg !250
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !251

if.then11:                                        ; preds = %lor.lhs.false, %if.end4
  %15 = load ptr, ptr %c.addr, align 8, !dbg !252
  call void @init_c3(ptr noundef %15) #8, !dbg !253
  br label %if.end12, !dbg !253

if.end12:                                         ; preds = %if.then11, %lor.lhs.false
  %16 = load ptr, ptr %c.addr, align 8, !dbg !254
  %17 = getelementptr inbounds %struct.cpuinfo_x86, ptr %16, i32 0, i32 10, !dbg !254
  %arraydecay13 = getelementptr inbounds [24 x i32], ptr %17, i64 0, i64 0, !dbg !254
  call void @set_bit(i64 noundef 642, ptr noundef %arraydecay13) #8, !dbg !254
  %18 = load ptr, ptr %c.addr, align 8, !dbg !255
  call void @init_ia32_feat_ctl(ptr noundef %18) #8, !dbg !256
  ret void, !dbg !257
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !258 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !265, metadata !DIExpression()), !dbg !267
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !266, metadata !DIExpression()), !dbg !268
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !269
  %1 = load i64, ptr %nr.addr, align 8, !dbg !270
  %div = sdiv i64 %1, 64, !dbg !270
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !271
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #8, !dbg !272
  %2 = load i64, ptr %nr.addr, align 8, !dbg !273
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !274
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #8, !dbg !275
  ret void, !dbg !276
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #2 align 16 !dbg !277 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !289, metadata !DIExpression()), !dbg !291
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !290, metadata !DIExpression()), !dbg !292
  %0 = load ptr, ptr %v.addr, align 8, !dbg !293
  %1 = load i64, ptr %size.addr, align 8, !dbg !294
  %conv = trunc i64 %1 to i32, !dbg !294
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !295
  %2 = load ptr, ptr %v.addr, align 8, !dbg !296
  %3 = load i64, ptr %size.addr, align 8, !dbg !296
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #8, !dbg !296
  ret void, !dbg !297
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #2 align 16 !dbg !298 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !301, metadata !DIExpression()), !dbg !303
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !302, metadata !DIExpression()), !dbg !304
  %0 = load i64, ptr %nr.addr, align 8, !dbg !305
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !307
  br i1 %1, label %if.then, label %if.else, !dbg !308

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !309
  %3 = load i64, ptr %nr.addr, align 8, !dbg !309
  %shr = ashr i64 %3, 3, !dbg !309
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !309
  %4 = load i64, ptr %nr.addr, align 8, !dbg !311
  %and = and i64 %4, 7, !dbg !311
  %sh_prom = trunc i64 %and to i32, !dbg !311
  %shl = shl i32 1, %sh_prom, !dbg !311
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #9, !dbg !312, !srcloc !313
  br label %if.end, !dbg !314

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !315
  %6 = load i64, ptr %nr.addr, align 8, !dbg !317
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #9, !dbg !318, !srcloc !319
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !320
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !321 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !326, metadata !DIExpression()), !dbg !328
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !327, metadata !DIExpression()), !dbg !329
  ret i1 true, !dbg !330
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !331 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !336, metadata !DIExpression()), !dbg !339
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !337, metadata !DIExpression()), !dbg !340
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !338, metadata !DIExpression()), !dbg !341
  ret void, !dbg !342
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !343 dso_local void @init_intel_cacheinfo(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !344 dso_local void @detect_num_cpu_cores(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_eax(i32 noundef %op) #3 align 16 !dbg !345 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !350, metadata !DIExpression()), !dbg !355
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #9, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !351, metadata !DIExpression()), !dbg !357
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #9, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !352, metadata !DIExpression()), !dbg !358
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #9, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !353, metadata !DIExpression()), !dbg !359
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #9, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !354, metadata !DIExpression()), !dbg !360
  %0 = load i32, ptr %op.addr, align 4, !dbg !361
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #8, !dbg !362
  %1 = load i32, ptr %eax, align 4, !dbg !363
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #9, !dbg !364
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #9, !dbg !364
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #9, !dbg !364
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #9, !dbg !364
  ret i32 %1, !dbg !365
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_c3(ptr noundef %c) #0 align 16 !dbg !366 {
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
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !368, metadata !DIExpression()), !dbg !382
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #9, !dbg !383
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !369, metadata !DIExpression()), !dbg !384
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #9, !dbg !383
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !370, metadata !DIExpression()), !dbg !385
  %call = call i32 @cpuid_eax(i32 noundef -1073741824) #8, !dbg !386
  %cmp = icmp uge i32 %call, -1073741823, !dbg !387
  br i1 %cmp, label %if.then, label %if.end31, !dbg !388

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #9, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !371, metadata !DIExpression()), !dbg !390
  %call1 = call i32 @cpuid_edx(i32 noundef -1073741823) #8, !dbg !391
  store i32 %call1, ptr %tmp, align 4, !dbg !390
  %0 = load i32, ptr %tmp, align 4, !dbg !392
  %and = and i32 %0, 192, !dbg !393
  %cmp2 = icmp eq i32 %and, 64, !dbg !394
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !395

if.then3:                                         ; preds = %if.then
  br label %do.body, !dbg !396

do.body:                                          ; preds = %if.then3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #9, !dbg !397
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !374, metadata !DIExpression()), !dbg !397
  %call4 = call i64 @native_read_msr(i32 noundef 4359) #8, !dbg !397
  store i64 %call4, ptr %__val, align 8, !dbg !397
  %1 = load i64, ptr %__val, align 8, !dbg !397
  %conv = trunc i64 %1 to i32, !dbg !397
  store i32 %conv, ptr %lo, align 4, !dbg !397
  %2 = load i64, ptr %__val, align 8, !dbg !397
  %shr = lshr i64 %2, 32, !dbg !397
  %conv5 = trunc i64 %shr to i32, !dbg !397
  store i32 %conv5, ptr %hi, align 4, !dbg !397
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #9, !dbg !396
  br label %do.cond, !dbg !397

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !397

do.end:                                           ; preds = %do.cond
  %3 = load i32, ptr %lo, align 4, !dbg !398
  %or = or i32 %3, 268435456, !dbg !398
  store i32 %or, ptr %lo, align 4, !dbg !398
  %4 = load i32, ptr %lo, align 4, !dbg !399
  %5 = load i32, ptr %hi, align 4, !dbg !400
  call void @wrmsr(i32 noundef 4359, i32 noundef %4, i32 noundef %5) #8, !dbg !401
  br label %do.body6, !dbg !402

do.body6:                                         ; preds = %do.end
  br label %do.cond7, !dbg !404

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !404

do.end8:                                          ; preds = %do.cond7
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #10, !dbg !402
  store i32 %call10, ptr %tmp9, align 4, !dbg !404
  %6 = load i32, ptr %tmp9, align 4, !dbg !402
  br label %if.end, !dbg !406

if.end:                                           ; preds = %do.end8, %if.then
  %7 = load i32, ptr %tmp, align 4, !dbg !407
  %and11 = and i32 %7, 12, !dbg !408
  %cmp12 = icmp eq i32 %and11, 4, !dbg !409
  br i1 %cmp12, label %if.then14, label %if.end29, !dbg !410

if.then14:                                        ; preds = %if.end
  br label %do.body15, !dbg !411

do.body15:                                        ; preds = %if.then14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val16) #9, !dbg !412
  call void @llvm.dbg.declare(metadata ptr %__val16, metadata !378, metadata !DIExpression()), !dbg !412
  %call17 = call i64 @native_read_msr(i32 noundef 4363) #8, !dbg !412
  store i64 %call17, ptr %__val16, align 8, !dbg !412
  %8 = load i64, ptr %__val16, align 8, !dbg !412
  %conv18 = trunc i64 %8 to i32, !dbg !412
  store i32 %conv18, ptr %lo, align 4, !dbg !412
  %9 = load i64, ptr %__val16, align 8, !dbg !412
  %shr19 = lshr i64 %9, 32, !dbg !412
  %conv20 = trunc i64 %shr19 to i32, !dbg !412
  store i32 %conv20, ptr %hi, align 4, !dbg !412
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val16) #9, !dbg !411
  br label %do.cond21, !dbg !412

do.cond21:                                        ; preds = %do.body15
  br label %do.end22, !dbg !412

do.end22:                                         ; preds = %do.cond21
  %10 = load i32, ptr %lo, align 4, !dbg !413
  %or23 = or i32 %10, 64, !dbg !413
  store i32 %or23, ptr %lo, align 4, !dbg !413
  %11 = load i32, ptr %lo, align 4, !dbg !414
  %12 = load i32, ptr %hi, align 4, !dbg !415
  call void @wrmsr(i32 noundef 4363, i32 noundef %11, i32 noundef %12) #8, !dbg !416
  br label %do.body24, !dbg !417

do.body24:                                        ; preds = %do.end22
  br label %do.cond25, !dbg !419

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !419

do.end26:                                         ; preds = %do.cond25
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #10, !dbg !417
  store i32 %call28, ptr %tmp27, align 4, !dbg !419
  %13 = load i32, ptr %tmp27, align 4, !dbg !417
  br label %if.end29, !dbg !421

if.end29:                                         ; preds = %do.end26, %if.end
  %call30 = call i32 @cpuid_edx(i32 noundef -1073741823) #8, !dbg !422
  %14 = load ptr, ptr %c.addr, align 8, !dbg !423
  %15 = getelementptr inbounds %struct.cpuinfo_x86, ptr %14, i32 0, i32 10, !dbg !424
  %arrayidx = getelementptr [24 x i32], ptr %15, i64 0, i64 5, !dbg !423
  store i32 %call30, ptr %arrayidx, align 4, !dbg !425
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #9, !dbg !426
  br label %if.end31, !dbg !427

if.end31:                                         ; preds = %if.end29, %entry
  %16 = load ptr, ptr %c.addr, align 8, !dbg !428
  %17 = getelementptr inbounds %struct.cpuinfo_x86, ptr %16, i32 0, i32 0, !dbg !430
  %x86 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 1, !dbg !430
  %18 = load i8, ptr %x86, align 1, !dbg !430
  %conv32 = zext i8 %18 to i32, !dbg !428
  %cmp33 = icmp eq i32 %conv32, 6, !dbg !431
  br i1 %cmp33, label %land.lhs.true, label %if.end40, !dbg !432

land.lhs.true:                                    ; preds = %if.end31
  %19 = load ptr, ptr %c.addr, align 8, !dbg !433
  %20 = getelementptr inbounds %struct.cpuinfo_x86, ptr %19, i32 0, i32 0, !dbg !434
  %x86_model = getelementptr inbounds %struct.anon, ptr %20, i32 0, i32 0, !dbg !434
  %21 = load i8, ptr %x86_model, align 8, !dbg !434
  %conv35 = zext i8 %21 to i32, !dbg !433
  %cmp36 = icmp sge i32 %conv35, 15, !dbg !435
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !436

if.then38:                                        ; preds = %land.lhs.true
  %22 = load ptr, ptr %c.addr, align 8, !dbg !437
  %x86_clflush_size = getelementptr inbounds %struct.cpuinfo_x86, ptr %22, i32 0, i32 24, !dbg !439
  %23 = load i16, ptr %x86_clflush_size, align 2, !dbg !439
  %conv39 = zext i16 %23 to i32, !dbg !437
  %mul = mul i32 %conv39, 2, !dbg !440
  %24 = load ptr, ptr %c.addr, align 8, !dbg !441
  %x86_cache_alignment = getelementptr inbounds %struct.cpuinfo_x86, ptr %24, i32 0, i32 14, !dbg !442
  store i32 %mul, ptr %x86_cache_alignment, align 4, !dbg !443
  %25 = load ptr, ptr %c.addr, align 8, !dbg !444
  %26 = getelementptr inbounds %struct.cpuinfo_x86, ptr %25, i32 0, i32 10, !dbg !444
  %arraydecay = getelementptr inbounds [24 x i32], ptr %26, i64 0, i64 0, !dbg !444
  call void @set_bit(i64 noundef 112, ptr noundef %arraydecay) #8, !dbg !444
  br label %if.end40, !dbg !445

if.end40:                                         ; preds = %if.then38, %land.lhs.true, %if.end31
  %27 = load ptr, ptr %c.addr, align 8, !dbg !446
  %28 = getelementptr inbounds %struct.cpuinfo_x86, ptr %27, i32 0, i32 0, !dbg !448
  %x8641 = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 1, !dbg !448
  %29 = load i8, ptr %x8641, align 1, !dbg !448
  %conv42 = zext i8 %29 to i32, !dbg !446
  %cmp43 = icmp sge i32 %conv42, 7, !dbg !449
  br i1 %cmp43, label %if.then45, label %if.end47, !dbg !450

if.then45:                                        ; preds = %if.end40
  %30 = load ptr, ptr %c.addr, align 8, !dbg !451
  %31 = getelementptr inbounds %struct.cpuinfo_x86, ptr %30, i32 0, i32 10, !dbg !451
  %arraydecay46 = getelementptr inbounds [24 x i32], ptr %31, i64 0, i64 0, !dbg !451
  call void @set_bit(i64 noundef 112, ptr noundef %arraydecay46) #8, !dbg !451
  br label %if.end47, !dbg !451

if.end47:                                         ; preds = %if.then45, %if.end40
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #9, !dbg !452
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #9, !dbg !452
  ret void, !dbg !452
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !453 dso_local void @init_ia32_feat_ctl(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid(i32 noundef %op, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #3 align 16 !dbg !455 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !460, metadata !DIExpression()), !dbg !465
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !461, metadata !DIExpression()), !dbg !466
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !462, metadata !DIExpression()), !dbg !467
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !463, metadata !DIExpression()), !dbg !468
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !464, metadata !DIExpression()), !dbg !469
  %0 = load i32, ptr %op.addr, align 4, !dbg !470
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !471
  store i32 %0, ptr %1, align 4, !dbg !472
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !473
  store i32 0, ptr %2, align 4, !dbg !474
  %3 = load ptr, ptr %eax.addr, align 8, !dbg !475
  %4 = load ptr, ptr %ebx.addr, align 8, !dbg !476
  %5 = load ptr, ptr %ecx.addr, align 8, !dbg !477
  %6 = load ptr, ptr %edx.addr, align 8, !dbg !478
  call void @native_cpuid(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #8, !dbg !479
  ret void, !dbg !480
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #3 align 16 !dbg !481 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !485, metadata !DIExpression()), !dbg !489
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !486, metadata !DIExpression()), !dbg !490
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !487, metadata !DIExpression()), !dbg !491
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !488, metadata !DIExpression()), !dbg !492
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !493
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !494
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !495
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !496
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !497
  %5 = load i32, ptr %4, align 4, !dbg !498
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !499
  %7 = load i32, ptr %6, align 4, !dbg !500
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #9, !dbg !501, !srcloc !502
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !501
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !501
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !501
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !501
  store i32 %asmresult, ptr %0, align 4, !dbg !501
  store i32 %asmresult1, ptr %1, align 4, !dbg !501
  store i32 %asmresult2, ptr %2, align 4, !dbg !501
  store i32 %asmresult3, ptr %3, align 4, !dbg !501
  ret void, !dbg !503
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_edx(i32 noundef %op) #3 align 16 !dbg !504 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !506, metadata !DIExpression()), !dbg !511
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #9, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !507, metadata !DIExpression()), !dbg !513
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #9, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !508, metadata !DIExpression()), !dbg !514
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #9, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !509, metadata !DIExpression()), !dbg !515
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #9, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !510, metadata !DIExpression()), !dbg !516
  %0 = load i32, ptr %op.addr, align 4, !dbg !517
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #8, !dbg !518
  %1 = load i32, ptr %edx, align 4, !dbg !519
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #9, !dbg !520
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #9, !dbg !520
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #9, !dbg !520
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #9, !dbg !520
  ret i32 %1, !dbg !521
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #3 align 16 !dbg !522 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !527, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %val, metadata !528, metadata !DIExpression()), !dbg !531
  %0 = load i32, ptr %msr.addr, align 4, !dbg !532
  %call = call i64 @__rdmsr(i32 noundef %0) #8, !dbg !533
  store i64 %call, ptr %val, align 8, !dbg !534
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #8, !dbg !535
  br i1 %call1, label %if.then, label %if.end, !dbg !537

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !538
  %2 = load i64, ptr %val, align 8, !dbg !539
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #8, !dbg !540
  br label %if.end, !dbg !540

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !541
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !542
  ret i64 %3, !dbg !543
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #3 align 16 !dbg !544 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !548, metadata !DIExpression()), !dbg !551
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !549, metadata !DIExpression()), !dbg !552
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !550, metadata !DIExpression()), !dbg !553
  %0 = load i32, ptr %msr.addr, align 4, !dbg !554
  %1 = load i32, ptr %low.addr, align 4, !dbg !555
  %2 = load i32, ptr %high.addr, align 4, !dbg !556
  call void @native_write_msr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #8, !dbg !557
  ret void, !dbg !558
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !559 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #2 align 16 !dbg !563 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !565, metadata !DIExpression()), !dbg !568
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #9, !dbg !569
  call void @llvm.dbg.declare(metadata ptr %low, metadata !566, metadata !DIExpression()), !dbg !569
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #9, !dbg !569
  call void @llvm.dbg.declare(metadata ptr %high, metadata !567, metadata !DIExpression()), !dbg !569
  %0 = load i32, ptr %msr.addr, align 4, !dbg !570
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #9, !dbg !571, !srcloc !572
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !571
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !571
  store i64 %asmresult, ptr %low, align 8, !dbg !571
  store i64 %asmresult1, ptr %high, align 8, !dbg !571
  %2 = load i64, ptr %low, align 8, !dbg !573
  %3 = load i64, ptr %high, align 8, !dbg !573
  %shl = shl i64 %3, 32, !dbg !573
  %or = or i64 %2, %shl, !dbg !573
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #9, !dbg !574
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #9, !dbg !574
  ret i64 %or, !dbg !575
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #2 align 16 !dbg !576 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !605, metadata !DIExpression()), !dbg !606
  %0 = load ptr, ptr %key.addr, align 8, !dbg !607
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #8, !dbg !608
  ret i1 %call, !dbg !609
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !610 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #2 align 16 !dbg !613 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !618, metadata !DIExpression()), !dbg !621
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !619, metadata !DIExpression()), !dbg !622
  %0 = load ptr, ptr %key.addr, align 8, !dbg !623
  %1 = load i8, ptr %branch.addr, align 1, !dbg !624, !range !625, !noundef !626
  %tobool = trunc i8 %1 to i1, !dbg !624
  %conv = zext i1 %tobool to i32, !dbg !624
  %or = or i32 2, %conv, !dbg !627
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #9
          to label %asm.fallthrough [label %l_yes], !dbg !628, !srcloc !629

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !630
  br label %return, !dbg !630

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !620), !dbg !631
  store i1 true, ptr %retval, align 1, !dbg !632
  br label %return, !dbg !632

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !633
  ret i1 %2, !dbg !633
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #3 align 16 !dbg !634 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !636, metadata !DIExpression()), !dbg !639
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !637, metadata !DIExpression()), !dbg !640
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !638, metadata !DIExpression()), !dbg !641
  %0 = load i32, ptr %msr.addr, align 4, !dbg !642
  %1 = load i32, ptr %low.addr, align 4, !dbg !643
  %2 = load i32, ptr %high.addr, align 4, !dbg !644
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #8, !dbg !645
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #8, !dbg !646
  br i1 %call, label %if.then, label %if.end, !dbg !648

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !649
  %4 = load i32, ptr %high.addr, align 4, !dbg !650
  %conv = zext i32 %4 to i64, !dbg !651
  %shl = shl i64 %conv, 32, !dbg !652
  %5 = load i32, ptr %low.addr, align 4, !dbg !653
  %conv1 = zext i32 %5 to i64, !dbg !653
  %or = or i64 %shl, %conv1, !dbg !654
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #8, !dbg !655
  br label %if.end, !dbg !655

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !656
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #2 align 16 !dbg !657 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !659, metadata !DIExpression()), !dbg !662
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !660, metadata !DIExpression()), !dbg !663
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !661, metadata !DIExpression()), !dbg !664
  %0 = load i32, ptr %msr.addr, align 4, !dbg !665
  %1 = load i32, ptr %low.addr, align 4, !dbg !666
  %2 = load i32, ptr %high.addr, align 4, !dbg !667
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #9, !dbg !668, !srcloc !669
  ret void, !dbg !670
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !671 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "centaur_cpu_dev", scope: !2, file: !3, line: 240, type: !59, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.centaur.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/centaur\22 -D KBUILD_BASENAME=\22centaur\22 -D KBUILD_MODNAME=\22centaur\22 -D __KBUILD_MODNAME=kmod_centaur -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/centaur.ll arch/x86/kernel/cpu/centaur.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !37, globals: !54, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/centaur.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7548ff7ec7167a6d9444f9bc65be2e5b")
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
!56 = distinct !DIGlobalVariable(name: "__cpu_dev_centaur_cpu_dev", scope: !2, file: !3, line: 251, type: !57, isLocal: true, isDefinition: true)
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
!156 = distinct !DIGlobalVariable(scope: null, file: !3, line: 241, type: !157, isLocal: true, isDefinition: true)
!157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 64, elements: !158)
!158 = !{!159}
!159 = !DISubrange(count: 8)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !3, line: 242, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 104, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 13)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !3, line: 35, type: !167, isLocal: true, isDefinition: true)
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
!182 = distinct !DISubprogram(name: "early_init_centaur", scope: !3, file: !3, line: 94, type: !72, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !183)
!183 = !{!184}
!184 = !DILocalVariable(name: "c", arg: 1, scope: !182, file: !3, line: 94, type: !74)
!185 = !DILocation(line: 94, column: 52, scope: !182)
!186 = !DILocation(line: 101, column: 7, scope: !187)
!187 = distinct !DILexicalBlock(scope: !182, file: !3, line: 101, column: 6)
!188 = !DILocation(line: 101, column: 10, scope: !187)
!189 = !DILocation(line: 101, column: 14, scope: !187)
!190 = !DILocation(line: 101, column: 19, scope: !187)
!191 = !DILocation(line: 101, column: 22, scope: !187)
!192 = !DILocation(line: 101, column: 25, scope: !187)
!193 = !DILocation(line: 101, column: 35, scope: !187)
!194 = !DILocation(line: 101, column: 43, scope: !187)
!195 = !DILocation(line: 102, column: 7, scope: !187)
!196 = !DILocation(line: 102, column: 10, scope: !187)
!197 = !DILocation(line: 102, column: 14, scope: !187)
!198 = !DILocation(line: 101, column: 6, scope: !182)
!199 = !DILocation(line: 103, column: 3, scope: !187)
!200 = !DILocation(line: 106, column: 2, scope: !182)
!201 = !DILocation(line: 108, column: 6, scope: !202)
!202 = distinct !DILexicalBlock(scope: !182, file: !3, line: 108, column: 6)
!203 = !DILocation(line: 108, column: 9, scope: !202)
!204 = !DILocation(line: 108, column: 19, scope: !202)
!205 = !DILocation(line: 108, column: 6, scope: !182)
!206 = !DILocation(line: 109, column: 3, scope: !207)
!207 = distinct !DILexicalBlock(scope: !202, file: !3, line: 108, column: 31)
!208 = !DILocation(line: 110, column: 3, scope: !207)
!209 = !DILocation(line: 111, column: 2, scope: !207)
!210 = !DILocation(line: 112, column: 1, scope: !182)
!211 = distinct !DISubprogram(name: "init_centaur", scope: !3, file: !3, line: 114, type: !72, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !212)
!212 = !{!213, !214}
!213 = !DILocalVariable(name: "c", arg: 1, scope: !211, file: !3, line: 114, type: !74)
!214 = !DILocalVariable(name: "eax", scope: !215, file: !3, line: 137, type: !7)
!215 = distinct !DILexicalBlock(scope: !216, file: !3, line: 136, column: 26)
!216 = distinct !DILexicalBlock(scope: !211, file: !3, line: 136, column: 6)
!217 = !DILocation(line: 114, column: 46, scope: !211)
!218 = !DILocation(line: 129, column: 21, scope: !211)
!219 = !DILocation(line: 129, column: 2, scope: !211)
!220 = !DILocation(line: 130, column: 23, scope: !211)
!221 = !DILocation(line: 130, column: 2, scope: !211)
!222 = !DILocation(line: 131, column: 23, scope: !211)
!223 = !DILocation(line: 131, column: 2, scope: !211)
!224 = !DILocation(line: 136, column: 6, scope: !216)
!225 = !DILocation(line: 136, column: 9, scope: !216)
!226 = !DILocation(line: 136, column: 21, scope: !216)
!227 = !DILocation(line: 136, column: 6, scope: !211)
!228 = !DILocation(line: 137, column: 3, scope: !215)
!229 = !DILocation(line: 137, column: 16, scope: !215)
!230 = !DILocation(line: 137, column: 22, scope: !215)
!231 = !DILocation(line: 144, column: 8, scope: !232)
!232 = distinct !DILexicalBlock(scope: !215, file: !3, line: 144, column: 7)
!233 = !DILocation(line: 144, column: 12, scope: !232)
!234 = !DILocation(line: 144, column: 20, scope: !232)
!235 = !DILocation(line: 144, column: 26, scope: !232)
!236 = !DILocation(line: 144, column: 30, scope: !232)
!237 = !DILocation(line: 144, column: 36, scope: !232)
!238 = !DILocation(line: 144, column: 44, scope: !232)
!239 = !DILocation(line: 144, column: 7, scope: !215)
!240 = !DILocation(line: 145, column: 4, scope: !232)
!241 = !DILocation(line: 146, column: 2, scope: !216)
!242 = !DILocation(line: 146, column: 2, scope: !215)
!243 = !DILocation(line: 211, column: 6, scope: !244)
!244 = distinct !DILexicalBlock(scope: !211, file: !3, line: 211, column: 6)
!245 = !DILocation(line: 211, column: 9, scope: !244)
!246 = !DILocation(line: 211, column: 13, scope: !244)
!247 = !DILocation(line: 211, column: 18, scope: !244)
!248 = !DILocation(line: 211, column: 21, scope: !244)
!249 = !DILocation(line: 211, column: 24, scope: !244)
!250 = !DILocation(line: 211, column: 28, scope: !244)
!251 = !DILocation(line: 211, column: 6, scope: !211)
!252 = !DILocation(line: 212, column: 11, scope: !244)
!253 = !DILocation(line: 212, column: 3, scope: !244)
!254 = !DILocation(line: 214, column: 2, scope: !211)
!255 = !DILocation(line: 217, column: 21, scope: !211)
!256 = !DILocation(line: 217, column: 2, scope: !211)
!257 = !DILocation(line: 218, column: 1, scope: !211)
!258 = distinct !DISubprogram(name: "set_bit", scope: !259, file: !259, line: 26, type: !260, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !264)
!259 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!260 = !DISubroutineType(types: !261)
!261 = !{null, !46, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!264 = !{!265, !266}
!265 = !DILocalVariable(name: "nr", arg: 1, scope: !258, file: !259, line: 26, type: !46)
!266 = !DILocalVariable(name: "addr", arg: 2, scope: !258, file: !259, line: 26, type: !262)
!267 = !DILocation(line: 26, column: 42, scope: !258)
!268 = !DILocation(line: 26, column: 70, scope: !258)
!269 = !DILocation(line: 28, column: 26, scope: !258)
!270 = !DILocation(line: 28, column: 33, scope: !258)
!271 = !DILocation(line: 28, column: 31, scope: !258)
!272 = !DILocation(line: 28, column: 2, scope: !258)
!273 = !DILocation(line: 29, column: 15, scope: !258)
!274 = !DILocation(line: 29, column: 19, scope: !258)
!275 = !DILocation(line: 29, column: 2, scope: !258)
!276 = !DILocation(line: 30, column: 1, scope: !258)
!277 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !278, file: !278, line: 80, type: !279, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !288)
!278 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!279 = !DISubroutineType(types: !280)
!280 = !{null, !281, !284}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 61, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !286, line: 72, baseType: !287)
!286 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !286, line: 16, baseType: !39)
!288 = !{!289, !290}
!289 = !DILocalVariable(name: "v", arg: 1, scope: !277, file: !278, line: 80, type: !281)
!290 = !DILocalVariable(name: "size", arg: 2, scope: !277, file: !278, line: 80, type: !284)
!291 = !DILocation(line: 80, column: 74, scope: !277)
!292 = !DILocation(line: 80, column: 84, scope: !277)
!293 = !DILocation(line: 82, column: 20, scope: !277)
!294 = !DILocation(line: 82, column: 23, scope: !277)
!295 = !DILocation(line: 82, column: 2, scope: !277)
!296 = !DILocation(line: 83, column: 2, scope: !277)
!297 = !DILocation(line: 84, column: 1, scope: !277)
!298 = distinct !DISubprogram(name: "arch_set_bit", scope: !299, file: !299, line: 52, type: !260, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !300)
!299 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!300 = !{!301, !302}
!301 = !DILocalVariable(name: "nr", arg: 1, scope: !298, file: !299, line: 52, type: !46)
!302 = !DILocalVariable(name: "addr", arg: 2, scope: !298, file: !299, line: 52, type: !262)
!303 = !DILocation(line: 52, column: 19, scope: !298)
!304 = !DILocation(line: 52, column: 47, scope: !298)
!305 = !DILocation(line: 54, column: 27, scope: !306)
!306 = distinct !DILexicalBlock(scope: !298, file: !299, line: 54, column: 6)
!307 = !DILocation(line: 54, column: 6, scope: !306)
!308 = !DILocation(line: 54, column: 6, scope: !298)
!309 = !DILocation(line: 56, column: 6, scope: !310)
!310 = distinct !DILexicalBlock(scope: !306, file: !299, line: 54, column: 32)
!311 = !DILocation(line: 57, column: 12, scope: !310)
!312 = !DILocation(line: 55, column: 3, scope: !310)
!313 = !{i64 2147889302, i64 2147889341, i64 2147889362, i64 2147889399, i64 2147889422, i64 2147889292}
!314 = !DILocation(line: 59, column: 2, scope: !310)
!315 = !DILocation(line: 61, column: 8, scope: !316)
!316 = distinct !DILexicalBlock(scope: !306, file: !299, line: 59, column: 9)
!317 = !DILocation(line: 61, column: 32, scope: !316)
!318 = !DILocation(line: 60, column: 3, scope: !316)
!319 = !{i64 2147889587, i64 2147889626, i64 2147889647, i64 2147889684, i64 2147889707, i64 2147889577}
!320 = !DILocation(line: 63, column: 1, scope: !298)
!321 = distinct !DISubprogram(name: "kasan_check_write", scope: !322, file: !322, line: 44, type: !323, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !325)
!322 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!323 = !DISubroutineType(types: !324)
!324 = !{!143, !281, !7}
!325 = !{!326, !327}
!326 = !DILocalVariable(name: "p", arg: 1, scope: !321, file: !322, line: 44, type: !281)
!327 = !DILocalVariable(name: "size", arg: 2, scope: !321, file: !322, line: 44, type: !7)
!328 = !DILocation(line: 44, column: 59, scope: !321)
!329 = !DILocation(line: 44, column: 75, scope: !321)
!330 = !DILocation(line: 46, column: 2, scope: !321)
!331 = distinct !DISubprogram(name: "kcsan_check_access", scope: !332, file: !332, line: 229, type: !333, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !335)
!332 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!333 = !DISubroutineType(types: !334)
!334 = !{null, !281, !284, !93}
!335 = !{!336, !337, !338}
!336 = !DILocalVariable(name: "ptr", arg: 1, scope: !331, file: !332, line: 229, type: !281)
!337 = !DILocalVariable(name: "size", arg: 2, scope: !331, file: !332, line: 229, type: !284)
!338 = !DILocalVariable(name: "type", arg: 3, scope: !331, file: !332, line: 230, type: !93)
!339 = !DILocation(line: 229, column: 60, scope: !331)
!340 = !DILocation(line: 229, column: 72, scope: !331)
!341 = !DILocation(line: 230, column: 15, scope: !331)
!342 = !DILocation(line: 230, column: 23, scope: !331)
!343 = !DISubprogram(name: "init_intel_cacheinfo", scope: !61, file: !61, line: 70, type: !72, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!344 = !DISubprogram(name: "detect_num_cpu_cores", scope: !61, file: !61, line: 74, type: !72, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!345 = distinct !DISubprogram(name: "cpuid_eax", scope: !346, file: !346, line: 94, type: !347, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !349)
!346 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!347 = !DISubroutineType(types: !348)
!348 = !{!7, !7}
!349 = !{!350, !351, !352, !353, !354}
!350 = !DILocalVariable(name: "op", arg: 1, scope: !345, file: !346, line: 94, type: !7)
!351 = !DILocalVariable(name: "eax", scope: !345, file: !346, line: 96, type: !7)
!352 = !DILocalVariable(name: "ebx", scope: !345, file: !346, line: 96, type: !7)
!353 = !DILocalVariable(name: "ecx", scope: !345, file: !346, line: 96, type: !7)
!354 = !DILocalVariable(name: "edx", scope: !345, file: !346, line: 96, type: !7)
!355 = !DILocation(line: 94, column: 51, scope: !345)
!356 = !DILocation(line: 96, column: 2, scope: !345)
!357 = !DILocation(line: 96, column: 15, scope: !345)
!358 = !DILocation(line: 96, column: 20, scope: !345)
!359 = !DILocation(line: 96, column: 25, scope: !345)
!360 = !DILocation(line: 96, column: 30, scope: !345)
!361 = !DILocation(line: 98, column: 8, scope: !345)
!362 = !DILocation(line: 98, column: 2, scope: !345)
!363 = !DILocation(line: 100, column: 9, scope: !345)
!364 = !DILocation(line: 101, column: 1, scope: !345)
!365 = !DILocation(line: 100, column: 2, scope: !345)
!366 = distinct !DISubprogram(name: "init_c3", scope: !3, file: !3, line: 22, type: !72, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !367)
!367 = !{!368, !369, !370, !371, !374, !378}
!368 = !DILocalVariable(name: "c", arg: 1, scope: !366, file: !3, line: 22, type: !74)
!369 = !DILocalVariable(name: "lo", scope: !366, file: !3, line: 24, type: !47)
!370 = !DILocalVariable(name: "hi", scope: !366, file: !3, line: 24, type: !47)
!371 = !DILocalVariable(name: "tmp", scope: !372, file: !3, line: 28, type: !47)
!372 = distinct !DILexicalBlock(scope: !373, file: !3, line: 27, column: 43)
!373 = distinct !DILexicalBlock(scope: !366, file: !3, line: 27, column: 6)
!374 = !DILocalVariable(name: "__val", scope: !375, file: !3, line: 32, type: !51)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 32, column: 4)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 31, column: 59)
!377 = distinct !DILexicalBlock(scope: !372, file: !3, line: 31, column: 7)
!378 = !DILocalVariable(name: "__val", scope: !379, file: !3, line: 40, type: !51)
!379 = distinct !DILexicalBlock(scope: !380, file: !3, line: 40, column: 4)
!380 = distinct !DILexicalBlock(scope: !381, file: !3, line: 39, column: 59)
!381 = distinct !DILexicalBlock(scope: !372, file: !3, line: 39, column: 7)
!382 = !DILocation(line: 22, column: 41, scope: !366)
!383 = !DILocation(line: 24, column: 2, scope: !366)
!384 = !DILocation(line: 24, column: 7, scope: !366)
!385 = !DILocation(line: 24, column: 11, scope: !366)
!386 = !DILocation(line: 27, column: 6, scope: !373)
!387 = !DILocation(line: 27, column: 28, scope: !373)
!388 = !DILocation(line: 27, column: 6, scope: !366)
!389 = !DILocation(line: 28, column: 3, scope: !372)
!390 = !DILocation(line: 28, column: 7, scope: !372)
!391 = !DILocation(line: 28, column: 13, scope: !372)
!392 = !DILocation(line: 31, column: 8, scope: !377)
!393 = !DILocation(line: 31, column: 12, scope: !377)
!394 = !DILocation(line: 31, column: 43, scope: !377)
!395 = !DILocation(line: 31, column: 7, scope: !372)
!396 = !DILocation(line: 32, column: 4, scope: !376)
!397 = !DILocation(line: 32, column: 4, scope: !375)
!398 = !DILocation(line: 33, column: 7, scope: !376)
!399 = !DILocation(line: 34, column: 23, scope: !376)
!400 = !DILocation(line: 34, column: 27, scope: !376)
!401 = !DILocation(line: 34, column: 4, scope: !376)
!402 = !DILocation(line: 35, column: 4, scope: !403)
!403 = distinct !DILexicalBlock(scope: !376, file: !3, line: 35, column: 4)
!404 = !DILocation(line: 35, column: 4, scope: !405)
!405 = distinct !DILexicalBlock(scope: !403, file: !3, line: 35, column: 4)
!406 = !DILocation(line: 36, column: 3, scope: !376)
!407 = !DILocation(line: 39, column: 8, scope: !381)
!408 = !DILocation(line: 39, column: 12, scope: !381)
!409 = !DILocation(line: 39, column: 43, scope: !381)
!410 = !DILocation(line: 39, column: 7, scope: !372)
!411 = !DILocation(line: 40, column: 4, scope: !380)
!412 = !DILocation(line: 40, column: 4, scope: !379)
!413 = !DILocation(line: 41, column: 7, scope: !380)
!414 = !DILocation(line: 42, column: 23, scope: !380)
!415 = !DILocation(line: 42, column: 27, scope: !380)
!416 = !DILocation(line: 42, column: 4, scope: !380)
!417 = !DILocation(line: 43, column: 4, scope: !418)
!418 = distinct !DILexicalBlock(scope: !380, file: !3, line: 43, column: 4)
!419 = !DILocation(line: 43, column: 4, scope: !420)
!420 = distinct !DILexicalBlock(scope: !418, file: !3, line: 43, column: 4)
!421 = !DILocation(line: 44, column: 3, scope: !380)
!422 = !DILocation(line: 49, column: 44, scope: !372)
!423 = !DILocation(line: 49, column: 3, scope: !372)
!424 = !DILocation(line: 49, column: 6, scope: !372)
!425 = !DILocation(line: 49, column: 42, scope: !372)
!426 = !DILocation(line: 50, column: 2, scope: !373)
!427 = !DILocation(line: 50, column: 2, scope: !372)
!428 = !DILocation(line: 64, column: 6, scope: !429)
!429 = distinct !DILexicalBlock(scope: !366, file: !3, line: 64, column: 6)
!430 = !DILocation(line: 64, column: 9, scope: !429)
!431 = !DILocation(line: 64, column: 13, scope: !429)
!432 = !DILocation(line: 64, column: 20, scope: !429)
!433 = !DILocation(line: 64, column: 23, scope: !429)
!434 = !DILocation(line: 64, column: 26, scope: !429)
!435 = !DILocation(line: 64, column: 36, scope: !429)
!436 = !DILocation(line: 64, column: 6, scope: !366)
!437 = !DILocation(line: 65, column: 28, scope: !438)
!438 = distinct !DILexicalBlock(scope: !429, file: !3, line: 64, column: 44)
!439 = !DILocation(line: 65, column: 31, scope: !438)
!440 = !DILocation(line: 65, column: 48, scope: !438)
!441 = !DILocation(line: 65, column: 3, scope: !438)
!442 = !DILocation(line: 65, column: 6, scope: !438)
!443 = !DILocation(line: 65, column: 26, scope: !438)
!444 = !DILocation(line: 66, column: 3, scope: !438)
!445 = !DILocation(line: 67, column: 2, scope: !438)
!446 = !DILocation(line: 69, column: 6, scope: !447)
!447 = distinct !DILexicalBlock(scope: !366, file: !3, line: 69, column: 6)
!448 = !DILocation(line: 69, column: 9, scope: !447)
!449 = !DILocation(line: 69, column: 13, scope: !447)
!450 = !DILocation(line: 69, column: 6, scope: !366)
!451 = !DILocation(line: 70, column: 3, scope: !447)
!452 = !DILocation(line: 71, column: 1, scope: !366)
!453 = !DISubprogram(name: "init_ia32_feat_ctl", scope: !454, file: !454, line: 67, type: !72, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!454 = !DIFile(filename: "./arch/x86/include/asm/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7621f2ef482a6250db9c8e206e21622e")
!455 = distinct !DISubprogram(name: "cpuid", scope: !346, file: !346, line: 72, type: !456, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !459)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !7, !458, !458, !458, !458}
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!459 = !{!460, !461, !462, !463, !464}
!460 = !DILocalVariable(name: "op", arg: 1, scope: !455, file: !346, line: 72, type: !7)
!461 = !DILocalVariable(name: "eax", arg: 2, scope: !455, file: !346, line: 73, type: !458)
!462 = !DILocalVariable(name: "ebx", arg: 3, scope: !455, file: !346, line: 73, type: !458)
!463 = !DILocalVariable(name: "ecx", arg: 4, scope: !455, file: !346, line: 74, type: !458)
!464 = !DILocalVariable(name: "edx", arg: 5, scope: !455, file: !346, line: 74, type: !458)
!465 = !DILocation(line: 72, column: 39, scope: !455)
!466 = !DILocation(line: 73, column: 19, scope: !455)
!467 = !DILocation(line: 73, column: 38, scope: !455)
!468 = !DILocation(line: 74, column: 19, scope: !455)
!469 = !DILocation(line: 74, column: 38, scope: !455)
!470 = !DILocation(line: 76, column: 9, scope: !455)
!471 = !DILocation(line: 76, column: 3, scope: !455)
!472 = !DILocation(line: 76, column: 7, scope: !455)
!473 = !DILocation(line: 77, column: 3, scope: !455)
!474 = !DILocation(line: 77, column: 7, scope: !455)
!475 = !DILocation(line: 78, column: 10, scope: !455)
!476 = !DILocation(line: 78, column: 15, scope: !455)
!477 = !DILocation(line: 78, column: 20, scope: !455)
!478 = !DILocation(line: 78, column: 25, scope: !455)
!479 = !DILocation(line: 78, column: 2, scope: !455)
!480 = !DILocation(line: 79, column: 1, scope: !455)
!481 = distinct !DISubprogram(name: "native_cpuid", scope: !346, file: !346, line: 30, type: !482, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !484)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !458, !458, !458, !458}
!484 = !{!485, !486, !487, !488}
!485 = !DILocalVariable(name: "eax", arg: 1, scope: !481, file: !346, line: 30, type: !458)
!486 = !DILocalVariable(name: "ebx", arg: 2, scope: !481, file: !346, line: 30, type: !458)
!487 = !DILocalVariable(name: "ecx", arg: 3, scope: !481, file: !346, line: 31, type: !458)
!488 = !DILocalVariable(name: "edx", arg: 4, scope: !481, file: !346, line: 31, type: !458)
!489 = !DILocation(line: 30, column: 47, scope: !481)
!490 = !DILocation(line: 30, column: 66, scope: !481)
!491 = !DILocation(line: 31, column: 19, scope: !481)
!492 = !DILocation(line: 31, column: 38, scope: !481)
!493 = !DILocation(line: 35, column: 15, scope: !481)
!494 = !DILocation(line: 36, column: 15, scope: !481)
!495 = !DILocation(line: 37, column: 15, scope: !481)
!496 = !DILocation(line: 38, column: 15, scope: !481)
!497 = !DILocation(line: 39, column: 14, scope: !481)
!498 = !DILocation(line: 39, column: 13, scope: !481)
!499 = !DILocation(line: 39, column: 26, scope: !481)
!500 = !DILocation(line: 39, column: 25, scope: !481)
!501 = !DILocation(line: 34, column: 2, scope: !481)
!502 = !{i64 1807799}
!503 = !DILocation(line: 41, column: 1, scope: !481)
!504 = distinct !DISubprogram(name: "cpuid_edx", scope: !346, file: !346, line: 121, type: !347, scopeLine: 122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !505)
!505 = !{!506, !507, !508, !509, !510}
!506 = !DILocalVariable(name: "op", arg: 1, scope: !504, file: !346, line: 121, type: !7)
!507 = !DILocalVariable(name: "eax", scope: !504, file: !346, line: 123, type: !7)
!508 = !DILocalVariable(name: "ebx", scope: !504, file: !346, line: 123, type: !7)
!509 = !DILocalVariable(name: "ecx", scope: !504, file: !346, line: 123, type: !7)
!510 = !DILocalVariable(name: "edx", scope: !504, file: !346, line: 123, type: !7)
!511 = !DILocation(line: 121, column: 51, scope: !504)
!512 = !DILocation(line: 123, column: 2, scope: !504)
!513 = !DILocation(line: 123, column: 15, scope: !504)
!514 = !DILocation(line: 123, column: 20, scope: !504)
!515 = !DILocation(line: 123, column: 25, scope: !504)
!516 = !DILocation(line: 123, column: 30, scope: !504)
!517 = !DILocation(line: 125, column: 8, scope: !504)
!518 = !DILocation(line: 125, column: 2, scope: !504)
!519 = !DILocation(line: 127, column: 9, scope: !504)
!520 = !DILocation(line: 128, column: 1, scope: !504)
!521 = !DILocation(line: 127, column: 2, scope: !504)
!522 = distinct !DISubprogram(name: "native_read_msr", scope: !523, file: !523, line: 114, type: !524, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !526)
!523 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!524 = !DISubroutineType(types: !525)
!525 = !{!53, !7}
!526 = !{!527, !528}
!527 = !DILocalVariable(name: "msr", arg: 1, scope: !522, file: !523, line: 114, type: !7)
!528 = !DILocalVariable(name: "val", scope: !522, file: !523, line: 116, type: !53)
!529 = !DILocation(line: 114, column: 63, scope: !522)
!530 = !DILocation(line: 116, column: 2, scope: !522)
!531 = !DILocation(line: 116, column: 21, scope: !522)
!532 = !DILocation(line: 118, column: 16, scope: !522)
!533 = !DILocation(line: 118, column: 8, scope: !522)
!534 = !DILocation(line: 118, column: 6, scope: !522)
!535 = !DILocation(line: 120, column: 6, scope: !536)
!536 = distinct !DILexicalBlock(scope: !522, file: !523, line: 120, column: 6)
!537 = !DILocation(line: 120, column: 6, scope: !522)
!538 = !DILocation(line: 121, column: 21, scope: !536)
!539 = !DILocation(line: 121, column: 26, scope: !536)
!540 = !DILocation(line: 121, column: 3, scope: !536)
!541 = !DILocation(line: 123, column: 9, scope: !522)
!542 = !DILocation(line: 124, column: 1, scope: !522)
!543 = !DILocation(line: 123, column: 2, scope: !522)
!544 = distinct !DISubprogram(name: "wrmsr", scope: !523, file: !523, line: 252, type: !545, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{null, !7, !47, !47}
!547 = !{!548, !549, !550}
!548 = !DILocalVariable(name: "msr", arg: 1, scope: !544, file: !523, line: 252, type: !7)
!549 = !DILocalVariable(name: "low", arg: 2, scope: !544, file: !523, line: 252, type: !47)
!550 = !DILocalVariable(name: "high", arg: 3, scope: !544, file: !523, line: 252, type: !47)
!551 = !DILocation(line: 252, column: 39, scope: !544)
!552 = !DILocation(line: 252, column: 48, scope: !544)
!553 = !DILocation(line: 252, column: 57, scope: !544)
!554 = !DILocation(line: 254, column: 19, scope: !544)
!555 = !DILocation(line: 254, column: 24, scope: !544)
!556 = !DILocation(line: 254, column: 29, scope: !544)
!557 = !DILocation(line: 254, column: 2, scope: !544)
!558 = !DILocation(line: 255, column: 1, scope: !544)
!559 = !DISubprogram(name: "_printk", scope: !560, file: !560, line: 153, type: !561, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!560 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!561 = !DISubroutineType(types: !562)
!562 = !{!93, !64, null}
!563 = distinct !DISubprogram(name: "__rdmsr", scope: !523, file: !523, line: 80, type: !524, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !564)
!564 = !{!565, !566, !567}
!565 = !DILocalVariable(name: "msr", arg: 1, scope: !563, file: !523, line: 80, type: !7)
!566 = !DILocalVariable(name: "low", scope: !563, file: !523, line: 82, type: !39)
!567 = !DILocalVariable(name: "high", scope: !563, file: !523, line: 82, type: !39)
!568 = !DILocation(line: 80, column: 64, scope: !563)
!569 = !DILocation(line: 82, column: 2, scope: !563)
!570 = !DILocation(line: 87, column: 45, scope: !563)
!571 = !DILocation(line: 84, column: 2, scope: !563)
!572 = !{i64 1819786, i64 1819807, i64 2149497409, i64 2149497453, i64 2149497476, i64 2149497509, i64 2149497540, i64 2149497579}
!573 = !DILocation(line: 89, column: 9, scope: !563)
!574 = !DILocation(line: 90, column: 1, scope: !563)
!575 = !DILocation(line: 89, column: 2, scope: !563)
!576 = distinct !DISubprogram(name: "static_key_false", scope: !577, file: !577, line: 205, type: !578, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !604)
!577 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!578 = !DISubroutineType(types: !579)
!579 = !{!143, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !577, line: 85, size: 128, elements: !582)
!582 = !{!583, !588}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !581, file: !577, line: 86, baseType: !584, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !144, line: 174, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 172, size: 32, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !585, file: !144, line: 173, baseType: !93, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, scope: !581, file: !577, line: 101, baseType: !589, size: 64, offset: 64)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !581, file: !577, line: 101, size: 64, elements: !590)
!590 = !{!591, !592, !601}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !589, file: !577, line: 102, baseType: !39, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !589, file: !577, line: 103, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !577, line: 117, size: 128, elements: !595)
!595 = !{!596, !599, !600}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !594, file: !577, line: 118, baseType: !597, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !48, line: 20, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !50, line: 26, baseType: !93)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !594, file: !577, line: 119, baseType: !597, size: 32, offset: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !594, file: !577, line: 120, baseType: !46, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !589, file: !577, line: 104, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !577, line: 104, flags: DIFlagFwdDecl)
!604 = !{!605}
!605 = !DILocalVariable(name: "key", arg: 1, scope: !576, file: !577, line: 205, type: !580)
!606 = !DILocation(line: 205, column: 65, scope: !576)
!607 = !DILocation(line: 207, column: 28, scope: !576)
!608 = !DILocation(line: 207, column: 9, scope: !576)
!609 = !DILocation(line: 207, column: 2, scope: !576)
!610 = !DISubprogram(name: "do_trace_read_msr", scope: !523, file: !523, line: 65, type: !611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !7, !51, !93}
!613 = distinct !DISubprogram(name: "arch_static_branch", scope: !614, file: !614, line: 25, type: !615, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !617)
!614 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!615 = !DISubroutineType(types: !616)
!616 = !{!143, !580, !143}
!617 = !{!618, !619, !620}
!618 = !DILocalVariable(name: "key", arg: 1, scope: !613, file: !614, line: 25, type: !580)
!619 = !DILocalVariable(name: "branch", arg: 2, scope: !613, file: !614, line: 25, type: !143)
!620 = !DILabel(scope: !613, name: "l_yes", file: !614, line: 33)
!621 = !DILocation(line: 25, column: 67, scope: !613)
!622 = !DILocation(line: 25, column: 77, scope: !613)
!623 = !DILocation(line: 30, column: 13, scope: !613)
!624 = !DILocation(line: 30, column: 28, scope: !613)
!625 = !{i8 0, i8 2}
!626 = !{}
!627 = !DILocation(line: 30, column: 26, scope: !613)
!628 = !DILocation(line: 27, column: 2, scope: !613)
!629 = !{i64 1484108, i64 1484152, i64 2148968835, i64 2148968856, i64 2148968882, i64 2148968915, i64 2148968949, i64 2148968973}
!630 = !DILocation(line: 32, column: 2, scope: !613)
!631 = !DILocation(line: 33, column: 1, scope: !613)
!632 = !DILocation(line: 34, column: 2, scope: !613)
!633 = !DILocation(line: 35, column: 1, scope: !613)
!634 = distinct !DISubprogram(name: "native_write_msr", scope: !523, file: !523, line: 143, type: !545, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !635)
!635 = !{!636, !637, !638}
!636 = !DILocalVariable(name: "msr", arg: 1, scope: !634, file: !523, line: 143, type: !7)
!637 = !DILocalVariable(name: "low", arg: 2, scope: !634, file: !523, line: 143, type: !47)
!638 = !DILocalVariable(name: "high", arg: 3, scope: !634, file: !523, line: 143, type: !47)
!639 = !DILocation(line: 143, column: 31, scope: !634)
!640 = !DILocation(line: 143, column: 40, scope: !634)
!641 = !DILocation(line: 143, column: 49, scope: !634)
!642 = !DILocation(line: 145, column: 10, scope: !634)
!643 = !DILocation(line: 145, column: 15, scope: !634)
!644 = !DILocation(line: 145, column: 20, scope: !634)
!645 = !DILocation(line: 145, column: 2, scope: !634)
!646 = !DILocation(line: 147, column: 6, scope: !647)
!647 = distinct !DILexicalBlock(scope: !634, file: !523, line: 147, column: 6)
!648 = !DILocation(line: 147, column: 6, scope: !634)
!649 = !DILocation(line: 148, column: 22, scope: !647)
!650 = !DILocation(line: 148, column: 33, scope: !647)
!651 = !DILocation(line: 148, column: 28, scope: !647)
!652 = !DILocation(line: 148, column: 38, scope: !647)
!653 = !DILocation(line: 148, column: 46, scope: !647)
!654 = !DILocation(line: 148, column: 44, scope: !647)
!655 = !DILocation(line: 148, column: 3, scope: !647)
!656 = !DILocation(line: 149, column: 1, scope: !634)
!657 = distinct !DISubprogram(name: "__wrmsr", scope: !523, file: !523, line: 92, type: !545, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !658)
!658 = !{!659, !660, !661}
!659 = !DILocalVariable(name: "msr", arg: 1, scope: !657, file: !523, line: 92, type: !7)
!660 = !DILocalVariable(name: "low", arg: 2, scope: !657, file: !523, line: 92, type: !47)
!661 = !DILocalVariable(name: "high", arg: 3, scope: !657, file: !523, line: 92, type: !47)
!662 = !DILocation(line: 92, column: 50, scope: !657)
!663 = !DILocation(line: 92, column: 59, scope: !657)
!664 = !DILocation(line: 92, column: 68, scope: !657)
!665 = !DILocation(line: 97, column: 17, scope: !657)
!666 = !DILocation(line: 97, column: 27, scope: !657)
!667 = !DILocation(line: 97, column: 38, scope: !657)
!668 = !DILocation(line: 94, column: 2, scope: !657)
!669 = !{i64 1820042, i64 1820063, i64 2149497908, i64 2149497952, i64 2149497975, i64 2149498008, i64 2149498039, i64 2149498078}
!670 = !DILocation(line: 98, column: 1, scope: !657)
!671 = !DISubprogram(name: "do_trace_write_msr", scope: !523, file: !523, line: 64, type: !611, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
