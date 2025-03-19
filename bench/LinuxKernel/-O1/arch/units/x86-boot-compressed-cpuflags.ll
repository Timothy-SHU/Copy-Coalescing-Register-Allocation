; ModuleID = 'arch/x86/boot/compressed/cpuflags.c'
source_filename = "arch/x86/boot/compressed/cpuflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_features = type { i32, i32, i32, [22 x i32] }

@loaded_flags = internal global i8 0, align 1, !dbg !0
@cpu = hidden global %struct.cpu_features zeroinitializer, align 4, !dbg !18
@cpu_vendor = hidden global [3 x i32] zeroinitializer, align 4, !dbg !32

; Function Attrs: noredzone nounwind
define hidden i32 @has_eflag(i64 noundef %mask) #0 !dbg !47 {
entry:
  %mask.addr = alloca i64, align 8
  %f0 = alloca i64, align 8
  %f1 = alloca i64, align 8
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !52, metadata !DIExpression()), !dbg !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %f0) #6, !dbg !56
  call void @llvm.dbg.declare(metadata ptr %f0, metadata !53, metadata !DIExpression()), !dbg !57
  call void @llvm.lifetime.start.p0(i64 8, ptr %f1) #6, !dbg !56
  call void @llvm.dbg.declare(metadata ptr %f1, metadata !54, metadata !DIExpression()), !dbg !58
  %0 = load i64, ptr %mask.addr, align 8, !dbg !59
  %1 = call { i64, i64 } asm sideeffect "pushfq\09\0A\09pushfq\09\0A\09pop $0\09\0A\09mov $0,$1\09\0A\09xor $2,$1\09\0A\09push $1\09\0A\09popfq\09\0A\09pushfq\09\0A\09pop $1\09\0A\09popfq", "=&r,=&r,ri,~{dirflag},~{fpsr},~{flags}"(i64 %0) #6, !dbg !60, !srcloc !61
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !60
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !60
  store i64 %asmresult, ptr %f0, align 8, !dbg !60
  store i64 %asmresult1, ptr %f1, align 8, !dbg !60
  %2 = load i64, ptr %f0, align 8, !dbg !62
  %3 = load i64, ptr %f1, align 8, !dbg !63
  %xor = xor i64 %2, %3, !dbg !64
  %4 = load i64, ptr %mask.addr, align 8, !dbg !65
  %and = and i64 %xor, %4, !dbg !66
  %tobool = icmp ne i64 %and, 0, !dbg !67
  %lnot = xor i1 %tobool, true, !dbg !67
  %lnot2 = xor i1 %lnot, true, !dbg !68
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !68
  call void @llvm.lifetime.end.p0(i64 8, ptr %f1) #6, !dbg !69
  call void @llvm.lifetime.end.p0(i64 8, ptr %f0) #6, !dbg !69
  ret i32 %lnot.ext, !dbg !70
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone nounwind
define hidden void @cpuid_count(i32 noundef %id, i32 noundef %count, ptr noundef %a, ptr noundef %b, ptr noundef %c, ptr noundef %d) #0 !dbg !71 {
entry:
  %id.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %d.addr = alloca ptr, align 8
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !75, metadata !DIExpression()), !dbg !81
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !76, metadata !DIExpression()), !dbg !82
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !77, metadata !DIExpression()), !dbg !83
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !78, metadata !DIExpression()), !dbg !84
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !79, metadata !DIExpression()), !dbg !85
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !80, metadata !DIExpression()), !dbg !86
  %0 = load ptr, ptr %a.addr, align 8, !dbg !87
  %1 = load ptr, ptr %b.addr, align 8, !dbg !88
  %2 = load ptr, ptr %c.addr, align 8, !dbg !89
  %3 = load ptr, ptr %d.addr, align 8, !dbg !90
  %4 = load i32, ptr %id.addr, align 4, !dbg !91
  %5 = load i32, ptr %count.addr, align 4, !dbg !92
  %6 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 %4, i32 %5) #6, !dbg !93, !srcloc !94
  %asmresult = extractvalue { i32, i32, i32, i32 } %6, 0, !dbg !93
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %6, 1, !dbg !93
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %6, 2, !dbg !93
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %6, 3, !dbg !93
  store i32 %asmresult, ptr %0, align 4, !dbg !93
  store i32 %asmresult1, ptr %1, align 4, !dbg !93
  store i32 %asmresult2, ptr %2, align 4, !dbg !93
  store i32 %asmresult3, ptr %3, align 4, !dbg !93
  ret void, !dbg !95
}

; Function Attrs: noredzone nounwind
define hidden void @get_cpuflags() #0 !dbg !96 {
entry:
  %max_intel_level = alloca i32, align 4
  %max_amd_level = alloca i32, align 4
  %tfms = alloca i32, align 4
  %ignored = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_intel_level) #6, !dbg !104
  call void @llvm.dbg.declare(metadata ptr %max_intel_level, metadata !100, metadata !DIExpression()), !dbg !105
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_amd_level) #6, !dbg !104
  call void @llvm.dbg.declare(metadata ptr %max_amd_level, metadata !101, metadata !DIExpression()), !dbg !106
  call void @llvm.lifetime.start.p0(i64 4, ptr %tfms) #6, !dbg !107
  call void @llvm.dbg.declare(metadata ptr %tfms, metadata !102, metadata !DIExpression()), !dbg !108
  call void @llvm.lifetime.start.p0(i64 4, ptr %ignored) #6, !dbg !109
  call void @llvm.dbg.declare(metadata ptr %ignored, metadata !103, metadata !DIExpression()), !dbg !110
  %0 = load i8, ptr @loaded_flags, align 1, !dbg !111, !range !113, !noundef !114
  %tobool = trunc i8 %0 to i1, !dbg !111
  br i1 %tobool, label %if.then, label %if.end, !dbg !115

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !116

if.end:                                           ; preds = %entry
  store i8 1, ptr @loaded_flags, align 1, !dbg !117
  %call = call i32 @has_fpu() #7, !dbg !118
  %tobool1 = icmp ne i32 %call, 0, !dbg !118
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !120

if.then2:                                         ; preds = %if.end
  call void @set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3)) #7, !dbg !121
  br label %if.end3, !dbg !121

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = call i32 @has_eflag(i64 noundef 2097152) #7, !dbg !122
  %tobool5 = icmp ne i32 %call4, 0, !dbg !122
  br i1 %tobool5, label %if.then6, label %if.end25, !dbg !124

if.then6:                                         ; preds = %if.end3
  call void @cpuid_count(i32 noundef 0, i32 noundef 0, ptr noundef %max_intel_level, ptr noundef @cpu_vendor, ptr noundef getelementptr inbounds ([3 x i32], ptr @cpu_vendor, i64 0, i64 2), ptr noundef getelementptr inbounds ([3 x i32], ptr @cpu_vendor, i64 0, i64 1)) #7, !dbg !125
  %1 = load i32, ptr %max_intel_level, align 4, !dbg !127
  %cmp = icmp uge i32 %1, 1, !dbg !129
  br i1 %cmp, label %land.lhs.true, label %if.end16, !dbg !130

land.lhs.true:                                    ; preds = %if.then6
  %2 = load i32, ptr %max_intel_level, align 4, !dbg !131
  %cmp7 = icmp ule i32 %2, 65535, !dbg !132
  br i1 %cmp7, label %if.then8, label %if.end16, !dbg !133

if.then8:                                         ; preds = %land.lhs.true
  call void @cpuid_count(i32 noundef 1, i32 noundef 0, ptr noundef %tfms, ptr noundef %ignored, ptr noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3, i64 4), ptr noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3)) #7, !dbg !134
  %3 = load i32, ptr %tfms, align 4, !dbg !136
  %shr = lshr i32 %3, 8, !dbg !137
  %and = and i32 %shr, 15, !dbg !138
  store i32 %and, ptr @cpu, align 4, !dbg !139
  %4 = load i32, ptr @cpu, align 4, !dbg !140
  store i32 %4, ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 1), align 4, !dbg !141
  %5 = load i32, ptr %tfms, align 4, !dbg !142
  %shr9 = lshr i32 %5, 4, !dbg !143
  %and10 = and i32 %shr9, 15, !dbg !144
  store i32 %and10, ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 2), align 4, !dbg !145
  %6 = load i32, ptr @cpu, align 4, !dbg !146
  %cmp11 = icmp sge i32 %6, 6, !dbg !148
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !149

if.then12:                                        ; preds = %if.then8
  %7 = load i32, ptr %tfms, align 4, !dbg !150
  %shr13 = lshr i32 %7, 16, !dbg !151
  %and14 = and i32 %shr13, 15, !dbg !152
  %shl = shl i32 %and14, 4, !dbg !153
  %8 = load i32, ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 2), align 4, !dbg !154
  %add = add i32 %8, %shl, !dbg !154
  store i32 %add, ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 2), align 4, !dbg !154
  br label %if.end15, !dbg !155

if.end15:                                         ; preds = %if.then12, %if.then8
  br label %if.end16, !dbg !156

if.end16:                                         ; preds = %if.end15, %land.lhs.true, %if.then6
  %9 = load i32, ptr %max_intel_level, align 4, !dbg !157
  %cmp17 = icmp uge i32 %9, 7, !dbg !159
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !160

if.then18:                                        ; preds = %if.end16
  call void @cpuid_count(i32 noundef 7, i32 noundef 0, ptr noundef %ignored, ptr noundef %ignored, ptr noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3, i64 16), ptr noundef %ignored) #7, !dbg !161
  br label %if.end19, !dbg !163

if.end19:                                         ; preds = %if.then18, %if.end16
  call void @cpuid_count(i32 noundef -2147483648, i32 noundef 0, ptr noundef %max_amd_level, ptr noundef %ignored, ptr noundef %ignored, ptr noundef %ignored) #7, !dbg !164
  %10 = load i32, ptr %max_amd_level, align 4, !dbg !165
  %cmp20 = icmp uge i32 %10, -2147483647, !dbg !167
  br i1 %cmp20, label %land.lhs.true21, label %if.end24, !dbg !168

land.lhs.true21:                                  ; preds = %if.end19
  %11 = load i32, ptr %max_amd_level, align 4, !dbg !169
  %cmp22 = icmp ule i32 %11, -2147418113, !dbg !170
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !171

if.then23:                                        ; preds = %land.lhs.true21
  call void @cpuid_count(i32 noundef -2147483647, i32 noundef 0, ptr noundef %ignored, ptr noundef %ignored, ptr noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3, i64 6), ptr noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3, i64 1)) #7, !dbg !172
  br label %if.end24, !dbg !174

if.end24:                                         ; preds = %if.then23, %land.lhs.true21, %if.end19
  br label %if.end25, !dbg !175

if.end25:                                         ; preds = %if.end24, %if.end3
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !176
  br label %cleanup, !dbg !176

cleanup:                                          ; preds = %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ignored) #6, !dbg !176
  call void @llvm.lifetime.end.p0(i64 4, ptr %tfms) #6, !dbg !176
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_amd_level) #6, !dbg !176
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_intel_level) #6, !dbg !176
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !176

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone nounwind
define internal i32 @has_fpu() #0 !dbg !177 {
entry:
  %fcw = alloca i16, align 2
  %fsw = alloca i16, align 2
  %cr0 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr %fcw) #6, !dbg !187
  call void @llvm.dbg.declare(metadata ptr %fcw, metadata !181, metadata !DIExpression()), !dbg !188
  store i16 -1, ptr %fcw, align 2, !dbg !188
  call void @llvm.lifetime.start.p0(i64 2, ptr %fsw) #6, !dbg !187
  call void @llvm.dbg.declare(metadata ptr %fsw, metadata !185, metadata !DIExpression()), !dbg !189
  store i16 -1, ptr %fsw, align 2, !dbg !189
  call void @llvm.lifetime.start.p0(i64 8, ptr %cr0) #6, !dbg !190
  call void @llvm.dbg.declare(metadata ptr %cr0, metadata !186, metadata !DIExpression()), !dbg !191
  %0 = call i64 asm sideeffect "mov %cr0,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !192, !srcloc !193
  store i64 %0, ptr %cr0, align 8, !dbg !192
  %1 = load i64, ptr %cr0, align 8, !dbg !194
  %and = and i64 %1, 12, !dbg !196
  %tobool = icmp ne i64 %and, 0, !dbg !196
  br i1 %tobool, label %if.then, label %if.end, !dbg !197

if.then:                                          ; preds = %entry
  %2 = load i64, ptr %cr0, align 8, !dbg !198
  %and1 = and i64 %2, -13, !dbg !198
  store i64 %and1, ptr %cr0, align 8, !dbg !198
  %3 = load i64, ptr %cr0, align 8, !dbg !200
  call void asm sideeffect "mov $0,%cr0", "r,~{dirflag},~{fpsr},~{flags}"(i64 %3) #6, !dbg !201, !srcloc !202
  br label %if.end, !dbg !203

if.end:                                           ; preds = %if.then, %entry
  call void asm sideeffect "fninit ; fnstsw $0 ; fnstcw $1", "=*m,=*m,*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %fsw, ptr elementtype(i16) %fcw, ptr elementtype(i16) %fsw, ptr elementtype(i16) %fcw) #6, !dbg !204, !srcloc !205
  %4 = load i16, ptr %fsw, align 2, !dbg !206
  %conv = zext i16 %4 to i32, !dbg !206
  %cmp = icmp eq i32 %conv, 0, !dbg !207
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !208

land.rhs:                                         ; preds = %if.end
  %5 = load i16, ptr %fcw, align 2, !dbg !209
  %conv3 = zext i16 %5 to i32, !dbg !209
  %and4 = and i32 %conv3, 4159, !dbg !210
  %cmp5 = icmp eq i32 %and4, 63, !dbg !211
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %6 = phi i1 [ false, %if.end ], [ %cmp5, %land.rhs ], !dbg !212
  %land.ext = zext i1 %6 to i32, !dbg !208
  call void @llvm.lifetime.end.p0(i64 8, ptr %cr0) #6, !dbg !213
  call void @llvm.lifetime.end.p0(i64 2, ptr %fsw) #6, !dbg !213
  call void @llvm.lifetime.end.p0(i64 2, ptr %fcw) #6, !dbg !213
  ret i32 %land.ext, !dbg !214
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @set_bit(i32 noundef %nr, ptr noundef %addr) #3 !dbg !215 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !221, metadata !DIExpression()), !dbg !223
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !222, metadata !DIExpression()), !dbg !224
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !225
  %1 = load i32, ptr %nr.addr, align 4, !dbg !226
  call void asm "btsl $1,$0", "=*m,Ir,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 %1, ptr elementtype(i32) %0) #6, !dbg !227, !srcloc !228
  ret void, !dbg !229
}

; Function Attrs: noredzone nounwind
define hidden zeroext i1 @has_cpuflag(i32 noundef %flag) #0 !dbg !230 {
entry:
  %flag.addr = alloca i32, align 4
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !234, metadata !DIExpression()), !dbg !235
  call void @get_cpuflags() #7, !dbg !236
  %0 = load i32, ptr %flag.addr, align 4, !dbg !237
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !237
  br i1 %1, label %cond.true, label %cond.false, !dbg !237

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %flag.addr, align 4, !dbg !237
  %call = call zeroext i1 @constant_test_bit(i32 noundef %2, ptr noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3)) #7, !dbg !237
  %conv = zext i1 %call to i32, !dbg !237
  br label %cond.end, !dbg !237

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %flag.addr, align 4, !dbg !237
  %call1 = call zeroext i1 @variable_test_bit(i32 noundef %3, ptr noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3)) #7, !dbg !237
  %conv2 = zext i1 %call1 to i32, !dbg !237
  br label %cond.end, !dbg !237

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !237
  %tobool = icmp ne i32 %cond, 0, !dbg !237
  ret i1 %tobool, !dbg !238
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @constant_test_bit(i32 noundef %nr, ptr noundef %addr) #3 !dbg !239 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !245, metadata !DIExpression()), !dbg !250
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !246, metadata !DIExpression()), !dbg !251
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !252
  call void @llvm.dbg.declare(metadata ptr %p, metadata !247, metadata !DIExpression()), !dbg !253
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !254
  store ptr %0, ptr %p, align 8, !dbg !253
  %1 = load i32, ptr %nr.addr, align 4, !dbg !255
  %and = and i32 %1, 31, !dbg !256
  %sh_prom = zext i32 %and to i64, !dbg !257
  %shl = shl i64 1, %sh_prom, !dbg !257
  %2 = load ptr, ptr %p, align 8, !dbg !258
  %3 = load i32, ptr %nr.addr, align 4, !dbg !259
  %shr = ashr i32 %3, 5, !dbg !260
  %idxprom = sext i32 %shr to i64, !dbg !258
  %arrayidx = getelementptr inbounds i32, ptr %2, i64 %idxprom, !dbg !258
  %4 = load i32, ptr %arrayidx, align 4, !dbg !258
  %conv = zext i32 %4 to i64, !dbg !261
  %and1 = and i64 %shl, %conv, !dbg !262
  %cmp = icmp ne i64 %and1, 0, !dbg !263
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !264
  ret i1 %cmp, !dbg !265
}

; Function Attrs: inlinehint noredzone nounwind
define internal zeroext i1 @variable_test_bit(i32 noundef %nr, ptr noundef %addr) #3 !dbg !266 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %v = alloca i8, align 1
  %p = alloca ptr, align 8
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !268, metadata !DIExpression()), !dbg !272
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !269, metadata !DIExpression()), !dbg !273
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #6, !dbg !274
  call void @llvm.dbg.declare(metadata ptr %v, metadata !270, metadata !DIExpression()), !dbg !275
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #6, !dbg !276
  call void @llvm.dbg.declare(metadata ptr %p, metadata !271, metadata !DIExpression()), !dbg !277
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !278
  store ptr %0, ptr %p, align 8, !dbg !277
  %1 = load ptr, ptr %p, align 8, !dbg !279
  %2 = load i32, ptr %nr.addr, align 4, !dbg !280
  %3 = call i8 asm "btl $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %1, i32 %2) #8, !dbg !281, !srcloc !282
  %4 = icmp ult i8 %3, 2, !dbg !281
  call void @llvm.assume(i1 %4), !dbg !281
  store i8 %3, ptr %v, align 1, !dbg !281
  %5 = load i8, ptr %v, align 1, !dbg !283, !range !113, !noundef !114
  %tobool = trunc i8 %5 to i1, !dbg !283
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #6, !dbg !284
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #6, !dbg !284
  ret i1 %tobool, !dbg !285
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone "no-builtins" }
attributes #8 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "loaded_flags", scope: !2, file: !20, line: 13, type: !37, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/compressed/.cpuflags.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m64 -O1 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -std=gnu11 -fno-strict-aliasing -fPIE -Wundef -D DISABLE_BRANCH_PROFILING -mcmodel=small -mno-red-zone -mno-mmx -mno-sse -ffreestanding -fshort-wchar -fno-stack-protector -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D __DISABLE_EXPORTS -Wa,-mrelax-relocations=no -include ./include/linux/hidden.h -D KBUILD_MODFILE=\22arch/x86/boot/compressed/cpuflags\22 -D KBUILD_BASENAME=\22cpuflags\22 -D KBUILD_MODNAME=\22cpuflags\22 -D __KBUILD_MODNAME=kmod_cpuflags -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/compressed/cpuflags.ll arch/x86/boot/compressed/cpuflags.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/boot/compressed/cpuflags.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c9400c5ac739eb7ed2fe132d8d48677")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !7)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!17 = !{!18, !32, !0}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "cpu", scope: !2, file: !20, line: 10, type: !21, isLocal: false, isDefinition: true)
!20 = !DIFile(filename: "arch/x86/boot/compressed/../cpuflags.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b3ba495653c0a56f4b8b0549e5e0202f")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_features", file: !22, line: 8, size: 800, elements: !23)
!22 = !DIFile(filename: "arch/x86/boot/compressed/../cpuflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "73fe0716d42ae62735200ad0e486e43f")
!23 = !{!24, !26, !27, !28}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !21, file: !22, line: 9, baseType: !25, size: 32)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !21, file: !22, line: 10, baseType: !25, size: 32, offset: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !21, file: !22, line: 11, baseType: !25, size: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !21, file: !22, line: 12, baseType: !29, size: 704, offset: 96)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 704, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 22)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(name: "cpu_vendor", scope: !2, file: !20, line: 11, type: !34, isLocal: false, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 96, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 3)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !38, line: 35, baseType: !39)
!38 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!39 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 8, !"PIC Level", i32 2}
!44 = !{i32 7, !"PIE Level", i32 2}
!45 = !{i32 1, !"Code Model", i32 1}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = distinct !DISubprogram(name: "has_eflag", scope: !20, file: !20, line: 47, type: !48, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !51)
!48 = !DISubroutineType(types: !49)
!49 = !{!25, !50}
!50 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!51 = !{!52, !53, !54}
!52 = !DILocalVariable(name: "mask", arg: 1, scope: !47, file: !20, line: 47, type: !50)
!53 = !DILocalVariable(name: "f0", scope: !47, file: !20, line: 49, type: !50)
!54 = !DILocalVariable(name: "f1", scope: !47, file: !20, line: 49, type: !50)
!55 = !DILocation(line: 47, column: 29, scope: !47)
!56 = !DILocation(line: 49, column: 2, scope: !47)
!57 = !DILocation(line: 49, column: 16, scope: !47)
!58 = !DILocation(line: 49, column: 20, scope: !47)
!59 = !DILocation(line: 62, column: 16, scope: !47)
!60 = !DILocation(line: 51, column: 2, scope: !47)
!61 = !{i64 2147795239, i64 113628, i64 113649, i64 113670, i64 113694, i64 113718, i64 113740, i64 113760, i64 113781, i64 113802}
!62 = !DILocation(line: 64, column: 13, scope: !47)
!63 = !DILocation(line: 64, column: 16, scope: !47)
!64 = !DILocation(line: 64, column: 15, scope: !47)
!65 = !DILocation(line: 64, column: 22, scope: !47)
!66 = !DILocation(line: 64, column: 20, scope: !47)
!67 = !DILocation(line: 64, column: 10, scope: !47)
!68 = !DILocation(line: 64, column: 9, scope: !47)
!69 = !DILocation(line: 65, column: 1, scope: !47)
!70 = !DILocation(line: 64, column: 2, scope: !47)
!71 = distinct !DISubprogram(name: "cpuid_count", scope: !20, file: !20, line: 67, type: !72, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !74)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !13, !13, !12, !12, !12, !12}
!74 = !{!75, !76, !77, !78, !79, !80}
!75 = !DILocalVariable(name: "id", arg: 1, scope: !71, file: !20, line: 67, type: !13)
!76 = !DILocalVariable(name: "count", arg: 2, scope: !71, file: !20, line: 67, type: !13)
!77 = !DILocalVariable(name: "a", arg: 3, scope: !71, file: !20, line: 67, type: !12)
!78 = !DILocalVariable(name: "b", arg: 4, scope: !71, file: !20, line: 67, type: !12)
!79 = !DILocalVariable(name: "c", arg: 5, scope: !71, file: !20, line: 67, type: !12)
!80 = !DILocalVariable(name: "d", arg: 6, scope: !71, file: !20, line: 67, type: !12)
!81 = !DILocation(line: 67, column: 22, scope: !71)
!82 = !DILocation(line: 67, column: 30, scope: !71)
!83 = !DILocation(line: 67, column: 42, scope: !71)
!84 = !DILocation(line: 67, column: 50, scope: !71)
!85 = !DILocation(line: 67, column: 58, scope: !71)
!86 = !DILocation(line: 67, column: 66, scope: !71)
!87 = !DILocation(line: 70, column: 17, scope: !71)
!88 = !DILocation(line: 70, column: 28, scope: !71)
!89 = !DILocation(line: 70, column: 39, scope: !71)
!90 = !DILocation(line: 70, column: 50, scope: !71)
!91 = !DILocation(line: 71, column: 15, scope: !71)
!92 = !DILocation(line: 71, column: 25, scope: !71)
!93 = !DILocation(line: 69, column: 2, scope: !71)
!94 = !{i64 113989}
!95 = !DILocation(line: 73, column: 1, scope: !71)
!96 = distinct !DISubprogram(name: "get_cpuflags", scope: !20, file: !20, line: 77, type: !97, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !99)
!97 = !DISubroutineType(types: !98)
!98 = !{null}
!99 = !{!100, !101, !102, !103}
!100 = !DILocalVariable(name: "max_intel_level", scope: !96, file: !20, line: 79, type: !13)
!101 = !DILocalVariable(name: "max_amd_level", scope: !96, file: !20, line: 79, type: !13)
!102 = !DILocalVariable(name: "tfms", scope: !96, file: !20, line: 80, type: !13)
!103 = !DILocalVariable(name: "ignored", scope: !96, file: !20, line: 81, type: !13)
!104 = !DILocation(line: 79, column: 2, scope: !96)
!105 = !DILocation(line: 79, column: 6, scope: !96)
!106 = !DILocation(line: 79, column: 23, scope: !96)
!107 = !DILocation(line: 80, column: 2, scope: !96)
!108 = !DILocation(line: 80, column: 6, scope: !96)
!109 = !DILocation(line: 81, column: 2, scope: !96)
!110 = !DILocation(line: 81, column: 6, scope: !96)
!111 = !DILocation(line: 83, column: 6, scope: !112)
!112 = distinct !DILexicalBlock(scope: !96, file: !20, line: 83, column: 6)
!113 = !{i8 0, i8 2}
!114 = !{}
!115 = !DILocation(line: 83, column: 6, scope: !96)
!116 = !DILocation(line: 84, column: 3, scope: !112)
!117 = !DILocation(line: 85, column: 15, scope: !96)
!118 = !DILocation(line: 87, column: 6, scope: !119)
!119 = distinct !DILexicalBlock(scope: !96, file: !20, line: 87, column: 6)
!120 = !DILocation(line: 87, column: 6, scope: !96)
!121 = !DILocation(line: 88, column: 3, scope: !119)
!122 = !DILocation(line: 90, column: 6, scope: !123)
!123 = distinct !DILexicalBlock(scope: !96, file: !20, line: 90, column: 6)
!124 = !DILocation(line: 90, column: 6, scope: !96)
!125 = !DILocation(line: 91, column: 3, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !20, line: 90, column: 32)
!127 = !DILocation(line: 94, column: 7, scope: !128)
!128 = distinct !DILexicalBlock(scope: !126, file: !20, line: 94, column: 7)
!129 = !DILocation(line: 94, column: 23, scope: !128)
!130 = !DILocation(line: 94, column: 37, scope: !128)
!131 = !DILocation(line: 95, column: 7, scope: !128)
!132 = !DILocation(line: 95, column: 23, scope: !128)
!133 = !DILocation(line: 94, column: 7, scope: !126)
!134 = !DILocation(line: 96, column: 4, scope: !135)
!135 = distinct !DILexicalBlock(scope: !128, file: !20, line: 95, column: 38)
!136 = !DILocation(line: 98, column: 17, scope: !135)
!137 = !DILocation(line: 98, column: 22, scope: !135)
!138 = !DILocation(line: 98, column: 28, scope: !135)
!139 = !DILocation(line: 98, column: 14, scope: !135)
!140 = !DILocation(line: 99, column: 21, scope: !135)
!141 = !DILocation(line: 99, column: 15, scope: !135)
!142 = !DILocation(line: 100, column: 17, scope: !135)
!143 = !DILocation(line: 100, column: 22, scope: !135)
!144 = !DILocation(line: 100, column: 28, scope: !135)
!145 = !DILocation(line: 100, column: 14, scope: !135)
!146 = !DILocation(line: 101, column: 12, scope: !147)
!147 = distinct !DILexicalBlock(scope: !135, file: !20, line: 101, column: 8)
!148 = !DILocation(line: 101, column: 18, scope: !147)
!149 = !DILocation(line: 101, column: 8, scope: !135)
!150 = !DILocation(line: 102, column: 20, scope: !147)
!151 = !DILocation(line: 102, column: 25, scope: !147)
!152 = !DILocation(line: 102, column: 32, scope: !147)
!153 = !DILocation(line: 102, column: 39, scope: !147)
!154 = !DILocation(line: 102, column: 15, scope: !147)
!155 = !DILocation(line: 102, column: 5, scope: !147)
!156 = !DILocation(line: 103, column: 3, scope: !135)
!157 = !DILocation(line: 105, column: 7, scope: !158)
!158 = distinct !DILexicalBlock(scope: !126, file: !20, line: 105, column: 7)
!159 = !DILocation(line: 105, column: 23, scope: !158)
!160 = !DILocation(line: 105, column: 7, scope: !126)
!161 = !DILocation(line: 106, column: 4, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !20, line: 105, column: 38)
!163 = !DILocation(line: 108, column: 3, scope: !162)
!164 = !DILocation(line: 110, column: 3, scope: !126)
!165 = !DILocation(line: 113, column: 7, scope: !166)
!166 = distinct !DILexicalBlock(scope: !126, file: !20, line: 113, column: 7)
!167 = !DILocation(line: 113, column: 21, scope: !166)
!168 = !DILocation(line: 113, column: 35, scope: !166)
!169 = !DILocation(line: 114, column: 7, scope: !166)
!170 = !DILocation(line: 114, column: 21, scope: !166)
!171 = !DILocation(line: 113, column: 7, scope: !126)
!172 = !DILocation(line: 115, column: 4, scope: !173)
!173 = distinct !DILexicalBlock(scope: !166, file: !20, line: 114, column: 36)
!174 = !DILocation(line: 117, column: 3, scope: !173)
!175 = !DILocation(line: 118, column: 2, scope: !126)
!176 = !DILocation(line: 119, column: 1, scope: !96)
!177 = distinct !DISubprogram(name: "has_fpu", scope: !20, file: !20, line: 15, type: !178, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!178 = !DISubroutineType(types: !179)
!179 = !{!25}
!180 = !{!181, !185, !186}
!181 = !DILocalVariable(name: "fcw", scope: !177, file: !20, line: 17, type: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !184)
!184 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!185 = !DILocalVariable(name: "fsw", scope: !177, file: !20, line: 17, type: !182)
!186 = !DILocalVariable(name: "cr0", scope: !177, file: !20, line: 18, type: !50)
!187 = !DILocation(line: 17, column: 2, scope: !177)
!188 = !DILocation(line: 17, column: 6, scope: !177)
!189 = !DILocation(line: 17, column: 16, scope: !177)
!190 = !DILocation(line: 18, column: 2, scope: !177)
!191 = !DILocation(line: 18, column: 16, scope: !177)
!192 = !DILocation(line: 20, column: 2, scope: !177)
!193 = !{i64 112815}
!194 = !DILocation(line: 21, column: 6, scope: !195)
!195 = distinct !DILexicalBlock(scope: !177, file: !20, line: 21, column: 6)
!196 = !DILocation(line: 21, column: 10, scope: !195)
!197 = !DILocation(line: 21, column: 6, scope: !177)
!198 = !DILocation(line: 22, column: 7, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !20, line: 21, column: 37)
!200 = !DILocation(line: 23, column: 40, scope: !199)
!201 = !DILocation(line: 23, column: 3, scope: !199)
!202 = !{i64 112933}
!203 = !DILocation(line: 24, column: 2, scope: !199)
!204 = !DILocation(line: 26, column: 2, scope: !177)
!205 = !{i64 112982}
!206 = !DILocation(line: 29, column: 9, scope: !177)
!207 = !DILocation(line: 29, column: 13, scope: !177)
!208 = !DILocation(line: 29, column: 18, scope: !177)
!209 = !DILocation(line: 29, column: 22, scope: !177)
!210 = !DILocation(line: 29, column: 26, scope: !177)
!211 = !DILocation(line: 29, column: 36, scope: !177)
!212 = !DILocation(line: 0, scope: !177)
!213 = !DILocation(line: 30, column: 1, scope: !177)
!214 = !DILocation(line: 29, column: 2, scope: !177)
!215 = distinct !DISubprogram(name: "set_bit", scope: !216, file: !216, line: 39, type: !217, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !220)
!216 = !DIFile(filename: "arch/x86/boot/compressed/../bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "559e321cb1de9209de8bd80da9ca6886")
!217 = !DISubroutineType(types: !218)
!218 = !{null, !25, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!220 = !{!221, !222}
!221 = !DILocalVariable(name: "nr", arg: 1, scope: !215, file: !216, line: 39, type: !25)
!222 = !DILocalVariable(name: "addr", arg: 2, scope: !215, file: !216, line: 39, type: !219)
!223 = !DILocation(line: 39, column: 32, scope: !215)
!224 = !DILocation(line: 39, column: 42, scope: !215)
!225 = !DILocation(line: 41, column: 35, scope: !215)
!226 = !DILocation(line: 41, column: 49, scope: !215)
!227 = !DILocation(line: 41, column: 2, scope: !215)
!228 = !{i64 138395}
!229 = !DILocation(line: 42, column: 1, scope: !215)
!230 = distinct !DISubprogram(name: "has_cpuflag", scope: !3, file: !3, line: 4, type: !231, scopeLine: 5, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{!37, !25}
!233 = !{!234}
!234 = !DILocalVariable(name: "flag", arg: 1, scope: !230, file: !3, line: 4, type: !25)
!235 = !DILocation(line: 4, column: 22, scope: !230)
!236 = !DILocation(line: 6, column: 2, scope: !230)
!237 = !DILocation(line: 8, column: 9, scope: !230)
!238 = !DILocation(line: 8, column: 2, scope: !230)
!239 = distinct !DISubprogram(name: "constant_test_bit", scope: !216, file: !216, line: 20, type: !240, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !244)
!240 = !DISubroutineType(types: !241)
!241 = !{!37, !25, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!244 = !{!245, !246, !247}
!245 = !DILocalVariable(name: "nr", arg: 1, scope: !239, file: !216, line: 20, type: !25)
!246 = !DILocalVariable(name: "addr", arg: 2, scope: !239, file: !216, line: 20, type: !242)
!247 = !DILocalVariable(name: "p", scope: !239, file: !216, line: 22, type: !248)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!250 = !DILocation(line: 20, column: 42, scope: !239)
!251 = !DILocation(line: 20, column: 58, scope: !239)
!252 = !DILocation(line: 22, column: 2, scope: !239)
!253 = !DILocation(line: 22, column: 13, scope: !239)
!254 = !DILocation(line: 22, column: 17, scope: !239)
!255 = !DILocation(line: 23, column: 19, scope: !239)
!256 = !DILocation(line: 23, column: 22, scope: !239)
!257 = !DILocation(line: 23, column: 15, scope: !239)
!258 = !DILocation(line: 23, column: 32, scope: !239)
!259 = !DILocation(line: 23, column: 34, scope: !239)
!260 = !DILocation(line: 23, column: 37, scope: !239)
!261 = !DILocation(line: 23, column: 31, scope: !239)
!262 = !DILocation(line: 23, column: 29, scope: !239)
!263 = !DILocation(line: 23, column: 45, scope: !239)
!264 = !DILocation(line: 24, column: 1, scope: !239)
!265 = !DILocation(line: 23, column: 2, scope: !239)
!266 = distinct !DISubprogram(name: "variable_test_bit", scope: !216, file: !216, line: 25, type: !240, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !267)
!267 = !{!268, !269, !270, !271}
!268 = !DILocalVariable(name: "nr", arg: 1, scope: !266, file: !216, line: 25, type: !25)
!269 = !DILocalVariable(name: "addr", arg: 2, scope: !266, file: !216, line: 25, type: !242)
!270 = !DILocalVariable(name: "v", scope: !266, file: !216, line: 27, type: !37)
!271 = !DILocalVariable(name: "p", scope: !266, file: !216, line: 28, type: !248)
!272 = !DILocation(line: 25, column: 42, scope: !266)
!273 = !DILocation(line: 25, column: 58, scope: !266)
!274 = !DILocation(line: 27, column: 2, scope: !266)
!275 = !DILocation(line: 27, column: 7, scope: !266)
!276 = !DILocation(line: 28, column: 2, scope: !266)
!277 = !DILocation(line: 28, column: 13, scope: !266)
!278 = !DILocation(line: 28, column: 17, scope: !266)
!279 = !DILocation(line: 30, column: 52, scope: !266)
!280 = !DILocation(line: 30, column: 62, scope: !266)
!281 = !DILocation(line: 30, column: 2, scope: !266)
!282 = !{i64 138137, i64 2147631636}
!283 = !DILocation(line: 31, column: 9, scope: !266)
!284 = !DILocation(line: 32, column: 1, scope: !266)
!285 = !DILocation(line: 31, column: 2, scope: !266)
