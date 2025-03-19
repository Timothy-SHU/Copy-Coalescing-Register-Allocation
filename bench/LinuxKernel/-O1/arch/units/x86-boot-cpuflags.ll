; ModuleID = 'arch/x86/boot/cpuflags.c'
source_filename = "arch/x86/boot/cpuflags.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

%struct.cpu_features = type { i32, i32, i32, [22 x i32] }

@loaded_flags = internal global i8 0, align 1, !dbg !0
@cpu = dso_local global %struct.cpu_features zeroinitializer, align 4, !dbg !18
@cpu_vendor = dso_local global [3 x i32] zeroinitializer, align 4, !dbg !31

; Function Attrs: nounwind
define dso_local i32 @has_eflag(i32 inreg noundef %mask) #0 !dbg !45 {
entry:
  %mask.addr = alloca i32, align 4
  %f0 = alloca i32, align 4
  %f1 = alloca i32, align 4
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !50, metadata !DIExpression()), !dbg !53
  call void @llvm.lifetime.start.p0(i64 4, ptr %f0) #4, !dbg !54
  call void @llvm.dbg.declare(metadata ptr %f0, metadata !51, metadata !DIExpression()), !dbg !55
  call void @llvm.lifetime.start.p0(i64 4, ptr %f1) #4, !dbg !54
  call void @llvm.dbg.declare(metadata ptr %f1, metadata !52, metadata !DIExpression()), !dbg !56
  %0 = load i32, ptr %mask.addr, align 4, !dbg !57
  %1 = call { i32, i32 } asm sideeffect "pushfl\09\0A\09pushfl\09\0A\09pop $0\09\0A\09mov $0,$1\09\0A\09xor $2,$1\09\0A\09push $1\09\0A\09popfl\09\0A\09pushfl\09\0A\09pop $1\09\0A\09popfl", "=&r,=&r,ri,~{dirflag},~{fpsr},~{flags}"(i32 %0) #4, !dbg !58, !srcloc !59
  %asmresult = extractvalue { i32, i32 } %1, 0, !dbg !58
  %asmresult1 = extractvalue { i32, i32 } %1, 1, !dbg !58
  store i32 %asmresult, ptr %f0, align 4, !dbg !58
  store i32 %asmresult1, ptr %f1, align 4, !dbg !58
  %2 = load i32, ptr %f0, align 4, !dbg !60
  %3 = load i32, ptr %f1, align 4, !dbg !61
  %xor = xor i32 %2, %3, !dbg !62
  %4 = load i32, ptr %mask.addr, align 4, !dbg !63
  %and = and i32 %xor, %4, !dbg !64
  %tobool = icmp ne i32 %and, 0, !dbg !65
  %lnot = xor i1 %tobool, true, !dbg !65
  %lnot2 = xor i1 %lnot, true, !dbg !66
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !66
  call void @llvm.lifetime.end.p0(i64 4, ptr %f1) #4, !dbg !67
  call void @llvm.lifetime.end.p0(i64 4, ptr %f0) #4, !dbg !67
  ret i32 %lnot.ext, !dbg !68
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define dso_local void @cpuid_count(i32 inreg noundef %id, i32 inreg noundef %count, ptr inreg noundef %a, ptr noundef %b, ptr noundef %c, ptr noundef %d) #0 !dbg !69 {
entry:
  %id.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %a.addr = alloca ptr, align 4
  %b.addr = alloca ptr, align 4
  %c.addr = alloca ptr, align 4
  %d.addr = alloca ptr, align 4
  store i32 %id, ptr %id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !73, metadata !DIExpression()), !dbg !79
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !74, metadata !DIExpression()), !dbg !80
  store ptr %a, ptr %a.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !75, metadata !DIExpression()), !dbg !81
  store ptr %b, ptr %b.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !76, metadata !DIExpression()), !dbg !82
  store ptr %c, ptr %c.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !77, metadata !DIExpression()), !dbg !83
  store ptr %d, ptr %d.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !78, metadata !DIExpression()), !dbg !84
  %0 = load ptr, ptr %a.addr, align 4, !dbg !85
  %1 = load ptr, ptr %b.addr, align 4, !dbg !86
  %2 = load ptr, ptr %c.addr, align 4, !dbg !87
  %3 = load ptr, ptr %d.addr, align 4, !dbg !88
  %4 = load i32, ptr %id.addr, align 4, !dbg !89
  %5 = load i32, ptr %count.addr, align 4, !dbg !90
  %6 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{dirflag},~{fpsr},~{flags}"(i32 %4, i32 %5) #4, !dbg !91, !srcloc !92
  %asmresult = extractvalue { i32, i32, i32, i32 } %6, 0, !dbg !91
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %6, 1, !dbg !91
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %6, 2, !dbg !91
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %6, 3, !dbg !91
  store i32 %asmresult, ptr %0, align 4, !dbg !91
  store i32 %asmresult1, ptr %1, align 4, !dbg !91
  store i32 %asmresult2, ptr %2, align 4, !dbg !91
  store i32 %asmresult3, ptr %3, align 4, !dbg !91
  ret void, !dbg !93
}

; Function Attrs: nounwind
define dso_local void @get_cpuflags() #0 !dbg !94 {
entry:
  %max_intel_level = alloca i32, align 4
  %max_amd_level = alloca i32, align 4
  %tfms = alloca i32, align 4
  %ignored = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_intel_level) #4, !dbg !102
  call void @llvm.dbg.declare(metadata ptr %max_intel_level, metadata !98, metadata !DIExpression()), !dbg !103
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_amd_level) #4, !dbg !102
  call void @llvm.dbg.declare(metadata ptr %max_amd_level, metadata !99, metadata !DIExpression()), !dbg !104
  call void @llvm.lifetime.start.p0(i64 4, ptr %tfms) #4, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %tfms, metadata !100, metadata !DIExpression()), !dbg !106
  call void @llvm.lifetime.start.p0(i64 4, ptr %ignored) #4, !dbg !107
  call void @llvm.dbg.declare(metadata ptr %ignored, metadata !101, metadata !DIExpression()), !dbg !108
  %0 = load i8, ptr @loaded_flags, align 1, !dbg !109, !range !111, !noundef !112
  %tobool = trunc i8 %0 to i1, !dbg !109
  br i1 %tobool, label %if.then, label %if.end, !dbg !113

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !114

if.end:                                           ; preds = %entry
  store i8 1, ptr @loaded_flags, align 1, !dbg !115
  %call = call i32 @has_fpu() #5, !dbg !116
  %tobool1 = icmp ne i32 %call, 0, !dbg !116
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !118

if.then2:                                         ; preds = %if.end
  call void @set_bit(i32 inreg noundef 0, ptr inreg noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3)) #5, !dbg !119
  br label %if.end3, !dbg !119

if.end3:                                          ; preds = %if.then2, %if.end
  %call4 = call i32 @has_eflag(i32 inreg noundef 2097152) #5, !dbg !120
  %tobool5 = icmp ne i32 %call4, 0, !dbg !120
  br i1 %tobool5, label %if.then6, label %if.end25, !dbg !122

if.then6:                                         ; preds = %if.end3
  call void @cpuid_count(i32 inreg noundef 0, i32 inreg noundef 0, ptr inreg noundef %max_intel_level, ptr noundef @cpu_vendor, ptr noundef getelementptr inbounds ([3 x i32], ptr @cpu_vendor, i32 0, i32 2), ptr noundef getelementptr inbounds ([3 x i32], ptr @cpu_vendor, i32 0, i32 1)) #5, !dbg !123
  %1 = load i32, ptr %max_intel_level, align 4, !dbg !125
  %cmp = icmp uge i32 %1, 1, !dbg !127
  br i1 %cmp, label %land.lhs.true, label %if.end16, !dbg !128

land.lhs.true:                                    ; preds = %if.then6
  %2 = load i32, ptr %max_intel_level, align 4, !dbg !129
  %cmp7 = icmp ule i32 %2, 65535, !dbg !130
  br i1 %cmp7, label %if.then8, label %if.end16, !dbg !131

if.then8:                                         ; preds = %land.lhs.true
  call void @cpuid_count(i32 inreg noundef 1, i32 inreg noundef 0, ptr inreg noundef %tfms, ptr noundef %ignored, ptr noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3, i32 4), ptr noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3)) #5, !dbg !132
  %3 = load i32, ptr %tfms, align 4, !dbg !134
  %shr = lshr i32 %3, 8, !dbg !135
  %and = and i32 %shr, 15, !dbg !136
  store i32 %and, ptr @cpu, align 4, !dbg !137
  %4 = load i32, ptr @cpu, align 4, !dbg !138
  store i32 %4, ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 1), align 4, !dbg !139
  %5 = load i32, ptr %tfms, align 4, !dbg !140
  %shr9 = lshr i32 %5, 4, !dbg !141
  %and10 = and i32 %shr9, 15, !dbg !142
  store i32 %and10, ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 2), align 4, !dbg !143
  %6 = load i32, ptr @cpu, align 4, !dbg !144
  %cmp11 = icmp sge i32 %6, 6, !dbg !146
  br i1 %cmp11, label %if.then12, label %if.end15, !dbg !147

if.then12:                                        ; preds = %if.then8
  %7 = load i32, ptr %tfms, align 4, !dbg !148
  %shr13 = lshr i32 %7, 16, !dbg !149
  %and14 = and i32 %shr13, 15, !dbg !150
  %shl = shl i32 %and14, 4, !dbg !151
  %8 = load i32, ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 2), align 4, !dbg !152
  %add = add i32 %8, %shl, !dbg !152
  store i32 %add, ptr getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 2), align 4, !dbg !152
  br label %if.end15, !dbg !153

if.end15:                                         ; preds = %if.then12, %if.then8
  br label %if.end16, !dbg !154

if.end16:                                         ; preds = %if.end15, %land.lhs.true, %if.then6
  %9 = load i32, ptr %max_intel_level, align 4, !dbg !155
  %cmp17 = icmp uge i32 %9, 7, !dbg !157
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !158

if.then18:                                        ; preds = %if.end16
  call void @cpuid_count(i32 inreg noundef 7, i32 inreg noundef 0, ptr inreg noundef %ignored, ptr noundef %ignored, ptr noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3, i32 16), ptr noundef %ignored) #5, !dbg !159
  br label %if.end19, !dbg !161

if.end19:                                         ; preds = %if.then18, %if.end16
  call void @cpuid_count(i32 inreg noundef -2147483648, i32 inreg noundef 0, ptr inreg noundef %max_amd_level, ptr noundef %ignored, ptr noundef %ignored, ptr noundef %ignored) #5, !dbg !162
  %10 = load i32, ptr %max_amd_level, align 4, !dbg !163
  %cmp20 = icmp uge i32 %10, -2147483647, !dbg !165
  br i1 %cmp20, label %land.lhs.true21, label %if.end24, !dbg !166

land.lhs.true21:                                  ; preds = %if.end19
  %11 = load i32, ptr %max_amd_level, align 4, !dbg !167
  %cmp22 = icmp ule i32 %11, -2147418113, !dbg !168
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !169

if.then23:                                        ; preds = %land.lhs.true21
  call void @cpuid_count(i32 inreg noundef -2147483647, i32 inreg noundef 0, ptr inreg noundef %ignored, ptr noundef %ignored, ptr noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3, i32 6), ptr noundef getelementptr inbounds (%struct.cpu_features, ptr @cpu, i32 0, i32 3, i32 1)) #5, !dbg !170
  br label %if.end24, !dbg !172

if.end24:                                         ; preds = %if.then23, %land.lhs.true21, %if.end19
  br label %if.end25, !dbg !173

if.end25:                                         ; preds = %if.end24, %if.end3
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !174
  br label %cleanup, !dbg !174

cleanup:                                          ; preds = %if.end25, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ignored) #4, !dbg !174
  call void @llvm.lifetime.end.p0(i64 4, ptr %tfms) #4, !dbg !174
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_amd_level) #4, !dbg !174
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_intel_level) #4, !dbg !174
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !174

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
define internal i32 @has_fpu() #0 !dbg !175 {
entry:
  %fcw = alloca i16, align 2
  %fsw = alloca i16, align 2
  %cr0 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr %fcw) #4, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %fcw, metadata !179, metadata !DIExpression()), !dbg !186
  store i16 -1, ptr %fcw, align 2, !dbg !186
  call void @llvm.lifetime.start.p0(i64 2, ptr %fsw) #4, !dbg !185
  call void @llvm.dbg.declare(metadata ptr %fsw, metadata !183, metadata !DIExpression()), !dbg !187
  store i16 -1, ptr %fsw, align 2, !dbg !187
  call void @llvm.lifetime.start.p0(i64 4, ptr %cr0) #4, !dbg !188
  call void @llvm.dbg.declare(metadata ptr %cr0, metadata !184, metadata !DIExpression()), !dbg !189
  %0 = call i32 asm sideeffect "mov %cr0,$0", "=r,~{dirflag},~{fpsr},~{flags}"() #4, !dbg !190, !srcloc !191
  store i32 %0, ptr %cr0, align 4, !dbg !190
  %1 = load i32, ptr %cr0, align 4, !dbg !192
  %and = and i32 %1, 12, !dbg !194
  %tobool = icmp ne i32 %and, 0, !dbg !194
  br i1 %tobool, label %if.then, label %if.end, !dbg !195

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %cr0, align 4, !dbg !196
  %and1 = and i32 %2, -13, !dbg !196
  store i32 %and1, ptr %cr0, align 4, !dbg !196
  %3 = load i32, ptr %cr0, align 4, !dbg !198
  call void asm sideeffect "mov $0,%cr0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %3) #4, !dbg !199, !srcloc !200
  br label %if.end, !dbg !201

if.end:                                           ; preds = %if.then, %entry
  call void asm sideeffect "fninit ; fnstsw $0 ; fnstcw $1", "=*m,=*m,*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %fsw, ptr elementtype(i16) %fcw, ptr elementtype(i16) %fsw, ptr elementtype(i16) %fcw) #4, !dbg !202, !srcloc !203
  %4 = load i16, ptr %fsw, align 2, !dbg !204
  %conv = zext i16 %4 to i32, !dbg !204
  %cmp = icmp eq i32 %conv, 0, !dbg !205
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !206

land.rhs:                                         ; preds = %if.end
  %5 = load i16, ptr %fcw, align 2, !dbg !207
  %conv3 = zext i16 %5 to i32, !dbg !207
  %and4 = and i32 %conv3, 4159, !dbg !208
  %cmp5 = icmp eq i32 %and4, 63, !dbg !209
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %6 = phi i1 [ false, %if.end ], [ %cmp5, %land.rhs ], !dbg !210
  %land.ext = zext i1 %6 to i32, !dbg !206
  call void @llvm.lifetime.end.p0(i64 4, ptr %cr0) #4, !dbg !211
  call void @llvm.lifetime.end.p0(i64 2, ptr %fsw) #4, !dbg !211
  call void @llvm.lifetime.end.p0(i64 2, ptr %fcw) #4, !dbg !211
  ret i32 %land.ext, !dbg !212
}

; Function Attrs: inlinehint nounwind
define internal void @set_bit(i32 inreg noundef %nr, ptr inreg noundef %addr) #3 !dbg !213 {
entry:
  %nr.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 4
  store i32 %nr, ptr %nr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !219, metadata !DIExpression()), !dbg !221
  store ptr %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !220, metadata !DIExpression()), !dbg !222
  %0 = load ptr, ptr %addr.addr, align 4, !dbg !223
  %1 = load i32, ptr %nr.addr, align 4, !dbg !224
  call void asm "btsl $1,$0", "=*m,Ir,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0, i32 %1, ptr elementtype(i32) %0) #4, !dbg !225, !srcloc !226
  ret void, !dbg !227
}

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "loaded_flags", scope: !2, file: !3, line: 13, type: !36, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.cpuflags.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/cpuflags\22 -D KBUILD_BASENAME=\22cpuflags\22 -D KBUILD_MODNAME=\22cpuflags\22 -D __KBUILD_MODNAME=kmod_cpuflags -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/cpuflags.ll arch/x86/boot/cpuflags.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !17, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/boot/cpuflags.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b3ba495653c0a56f4b8b0549e5e0202f")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 32)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !7)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!17 = !{!18, !31, !0}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "cpu", scope: !2, file: !3, line: 10, type: !20, isLocal: false, isDefinition: true)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_features", file: !21, line: 8, size: 800, elements: !22)
!21 = !DIFile(filename: "arch/x86/boot/cpuflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "73fe0716d42ae62735200ad0e486e43f")
!22 = !{!23, !25, !26, !27}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !20, file: !21, line: 9, baseType: !24, size: 32)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !20, file: !21, line: 10, baseType: !24, size: 32, offset: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !20, file: !21, line: 11, baseType: !24, size: 32, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !20, file: !21, line: 12, baseType: !28, size: 704, offset: 96)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 704, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 22)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "cpu_vendor", scope: !2, file: !3, line: 11, type: !33, isLocal: false, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 96, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 3)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !37, line: 35, baseType: !38)
!37 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!38 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!39 = !{i32 1, !"NumRegisterParameters", i32 3}
!40 = !{i32 7, !"Dwarf Version", i32 5}
!41 = !{i32 2, !"Debug Info Version", i32 3}
!42 = !{i32 1, !"wchar_size", i32 4}
!43 = !{i32 1, !"override-stack-alignment", i32 4}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = distinct !DISubprogram(name: "has_eflag", scope: !3, file: !3, line: 47, type: !46, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !49)
!46 = !DISubroutineType(types: !47)
!47 = !{!24, !48}
!48 = !DIBasicType(name: "unsigned long", size: 32, encoding: DW_ATE_unsigned)
!49 = !{!50, !51, !52}
!50 = !DILocalVariable(name: "mask", arg: 1, scope: !45, file: !3, line: 47, type: !48)
!51 = !DILocalVariable(name: "f0", scope: !45, file: !3, line: 49, type: !48)
!52 = !DILocalVariable(name: "f1", scope: !45, file: !3, line: 49, type: !48)
!53 = !DILocation(line: 47, column: 29, scope: !45)
!54 = !DILocation(line: 49, column: 2, scope: !45)
!55 = !DILocation(line: 49, column: 16, scope: !45)
!56 = !DILocation(line: 49, column: 20, scope: !45)
!57 = !DILocation(line: 62, column: 16, scope: !45)
!58 = !DILocation(line: 51, column: 2, scope: !45)
!59 = !{i64 2147793959, i64 1174, i64 1195, i64 1216, i64 1240, i64 1264, i64 1286, i64 1306, i64 1327, i64 1348}
!60 = !DILocation(line: 64, column: 13, scope: !45)
!61 = !DILocation(line: 64, column: 16, scope: !45)
!62 = !DILocation(line: 64, column: 15, scope: !45)
!63 = !DILocation(line: 64, column: 22, scope: !45)
!64 = !DILocation(line: 64, column: 20, scope: !45)
!65 = !DILocation(line: 64, column: 10, scope: !45)
!66 = !DILocation(line: 64, column: 9, scope: !45)
!67 = !DILocation(line: 65, column: 1, scope: !45)
!68 = !DILocation(line: 64, column: 2, scope: !45)
!69 = distinct !DISubprogram(name: "cpuid_count", scope: !3, file: !3, line: 67, type: !70, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !13, !13, !12, !12, !12, !12}
!72 = !{!73, !74, !75, !76, !77, !78}
!73 = !DILocalVariable(name: "id", arg: 1, scope: !69, file: !3, line: 67, type: !13)
!74 = !DILocalVariable(name: "count", arg: 2, scope: !69, file: !3, line: 67, type: !13)
!75 = !DILocalVariable(name: "a", arg: 3, scope: !69, file: !3, line: 67, type: !12)
!76 = !DILocalVariable(name: "b", arg: 4, scope: !69, file: !3, line: 67, type: !12)
!77 = !DILocalVariable(name: "c", arg: 5, scope: !69, file: !3, line: 67, type: !12)
!78 = !DILocalVariable(name: "d", arg: 6, scope: !69, file: !3, line: 67, type: !12)
!79 = !DILocation(line: 67, column: 22, scope: !69)
!80 = !DILocation(line: 67, column: 30, scope: !69)
!81 = !DILocation(line: 67, column: 42, scope: !69)
!82 = !DILocation(line: 67, column: 50, scope: !69)
!83 = !DILocation(line: 67, column: 58, scope: !69)
!84 = !DILocation(line: 67, column: 66, scope: !69)
!85 = !DILocation(line: 70, column: 17, scope: !69)
!86 = !DILocation(line: 70, column: 28, scope: !69)
!87 = !DILocation(line: 70, column: 39, scope: !69)
!88 = !DILocation(line: 70, column: 50, scope: !69)
!89 = !DILocation(line: 71, column: 15, scope: !69)
!90 = !DILocation(line: 71, column: 25, scope: !69)
!91 = !DILocation(line: 69, column: 2, scope: !69)
!92 = !{i64 1535}
!93 = !DILocation(line: 73, column: 1, scope: !69)
!94 = distinct !DISubprogram(name: "get_cpuflags", scope: !3, file: !3, line: 77, type: !95, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!95 = !DISubroutineType(types: !96)
!96 = !{null}
!97 = !{!98, !99, !100, !101}
!98 = !DILocalVariable(name: "max_intel_level", scope: !94, file: !3, line: 79, type: !13)
!99 = !DILocalVariable(name: "max_amd_level", scope: !94, file: !3, line: 79, type: !13)
!100 = !DILocalVariable(name: "tfms", scope: !94, file: !3, line: 80, type: !13)
!101 = !DILocalVariable(name: "ignored", scope: !94, file: !3, line: 81, type: !13)
!102 = !DILocation(line: 79, column: 2, scope: !94)
!103 = !DILocation(line: 79, column: 6, scope: !94)
!104 = !DILocation(line: 79, column: 23, scope: !94)
!105 = !DILocation(line: 80, column: 2, scope: !94)
!106 = !DILocation(line: 80, column: 6, scope: !94)
!107 = !DILocation(line: 81, column: 2, scope: !94)
!108 = !DILocation(line: 81, column: 6, scope: !94)
!109 = !DILocation(line: 83, column: 6, scope: !110)
!110 = distinct !DILexicalBlock(scope: !94, file: !3, line: 83, column: 6)
!111 = !{i8 0, i8 2}
!112 = !{}
!113 = !DILocation(line: 83, column: 6, scope: !94)
!114 = !DILocation(line: 84, column: 3, scope: !110)
!115 = !DILocation(line: 85, column: 15, scope: !94)
!116 = !DILocation(line: 87, column: 6, scope: !117)
!117 = distinct !DILexicalBlock(scope: !94, file: !3, line: 87, column: 6)
!118 = !DILocation(line: 87, column: 6, scope: !94)
!119 = !DILocation(line: 88, column: 3, scope: !117)
!120 = !DILocation(line: 90, column: 6, scope: !121)
!121 = distinct !DILexicalBlock(scope: !94, file: !3, line: 90, column: 6)
!122 = !DILocation(line: 90, column: 6, scope: !94)
!123 = !DILocation(line: 91, column: 3, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !3, line: 90, column: 32)
!125 = !DILocation(line: 94, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !124, file: !3, line: 94, column: 7)
!127 = !DILocation(line: 94, column: 23, scope: !126)
!128 = !DILocation(line: 94, column: 37, scope: !126)
!129 = !DILocation(line: 95, column: 7, scope: !126)
!130 = !DILocation(line: 95, column: 23, scope: !126)
!131 = !DILocation(line: 94, column: 7, scope: !124)
!132 = !DILocation(line: 96, column: 4, scope: !133)
!133 = distinct !DILexicalBlock(scope: !126, file: !3, line: 95, column: 38)
!134 = !DILocation(line: 98, column: 17, scope: !133)
!135 = !DILocation(line: 98, column: 22, scope: !133)
!136 = !DILocation(line: 98, column: 28, scope: !133)
!137 = !DILocation(line: 98, column: 14, scope: !133)
!138 = !DILocation(line: 99, column: 21, scope: !133)
!139 = !DILocation(line: 99, column: 15, scope: !133)
!140 = !DILocation(line: 100, column: 17, scope: !133)
!141 = !DILocation(line: 100, column: 22, scope: !133)
!142 = !DILocation(line: 100, column: 28, scope: !133)
!143 = !DILocation(line: 100, column: 14, scope: !133)
!144 = !DILocation(line: 101, column: 12, scope: !145)
!145 = distinct !DILexicalBlock(scope: !133, file: !3, line: 101, column: 8)
!146 = !DILocation(line: 101, column: 18, scope: !145)
!147 = !DILocation(line: 101, column: 8, scope: !133)
!148 = !DILocation(line: 102, column: 20, scope: !145)
!149 = !DILocation(line: 102, column: 25, scope: !145)
!150 = !DILocation(line: 102, column: 32, scope: !145)
!151 = !DILocation(line: 102, column: 39, scope: !145)
!152 = !DILocation(line: 102, column: 15, scope: !145)
!153 = !DILocation(line: 102, column: 5, scope: !145)
!154 = !DILocation(line: 103, column: 3, scope: !133)
!155 = !DILocation(line: 105, column: 7, scope: !156)
!156 = distinct !DILexicalBlock(scope: !124, file: !3, line: 105, column: 7)
!157 = !DILocation(line: 105, column: 23, scope: !156)
!158 = !DILocation(line: 105, column: 7, scope: !124)
!159 = !DILocation(line: 106, column: 4, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !3, line: 105, column: 38)
!161 = !DILocation(line: 108, column: 3, scope: !160)
!162 = !DILocation(line: 110, column: 3, scope: !124)
!163 = !DILocation(line: 113, column: 7, scope: !164)
!164 = distinct !DILexicalBlock(scope: !124, file: !3, line: 113, column: 7)
!165 = !DILocation(line: 113, column: 21, scope: !164)
!166 = !DILocation(line: 113, column: 35, scope: !164)
!167 = !DILocation(line: 114, column: 7, scope: !164)
!168 = !DILocation(line: 114, column: 21, scope: !164)
!169 = !DILocation(line: 113, column: 7, scope: !124)
!170 = !DILocation(line: 115, column: 4, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !3, line: 114, column: 36)
!172 = !DILocation(line: 117, column: 3, scope: !171)
!173 = !DILocation(line: 118, column: 2, scope: !124)
!174 = !DILocation(line: 119, column: 1, scope: !94)
!175 = distinct !DISubprogram(name: "has_fpu", scope: !3, file: !3, line: 15, type: !176, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !178)
!176 = !DISubroutineType(types: !177)
!177 = !{!24}
!178 = !{!179, !183, !184}
!179 = !DILocalVariable(name: "fcw", scope: !175, file: !3, line: 17, type: !180)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !182)
!182 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!183 = !DILocalVariable(name: "fsw", scope: !175, file: !3, line: 17, type: !180)
!184 = !DILocalVariable(name: "cr0", scope: !175, file: !3, line: 18, type: !48)
!185 = !DILocation(line: 17, column: 2, scope: !175)
!186 = !DILocation(line: 17, column: 6, scope: !175)
!187 = !DILocation(line: 17, column: 16, scope: !175)
!188 = !DILocation(line: 18, column: 2, scope: !175)
!189 = !DILocation(line: 18, column: 16, scope: !175)
!190 = !DILocation(line: 20, column: 2, scope: !175)
!191 = !{i64 361}
!192 = !DILocation(line: 21, column: 6, scope: !193)
!193 = distinct !DILexicalBlock(scope: !175, file: !3, line: 21, column: 6)
!194 = !DILocation(line: 21, column: 10, scope: !193)
!195 = !DILocation(line: 21, column: 6, scope: !175)
!196 = !DILocation(line: 22, column: 7, scope: !197)
!197 = distinct !DILexicalBlock(scope: !193, file: !3, line: 21, column: 37)
!198 = !DILocation(line: 23, column: 40, scope: !197)
!199 = !DILocation(line: 23, column: 3, scope: !197)
!200 = !{i64 479}
!201 = !DILocation(line: 24, column: 2, scope: !197)
!202 = !DILocation(line: 26, column: 2, scope: !175)
!203 = !{i64 528}
!204 = !DILocation(line: 29, column: 9, scope: !175)
!205 = !DILocation(line: 29, column: 13, scope: !175)
!206 = !DILocation(line: 29, column: 18, scope: !175)
!207 = !DILocation(line: 29, column: 22, scope: !175)
!208 = !DILocation(line: 29, column: 26, scope: !175)
!209 = !DILocation(line: 29, column: 36, scope: !175)
!210 = !DILocation(line: 0, scope: !175)
!211 = !DILocation(line: 30, column: 1, scope: !175)
!212 = !DILocation(line: 29, column: 2, scope: !175)
!213 = distinct !DISubprogram(name: "set_bit", scope: !214, file: !214, line: 39, type: !215, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !218)
!214 = !DIFile(filename: "arch/x86/boot/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "559e321cb1de9209de8bd80da9ca6886")
!215 = !DISubroutineType(types: !216)
!216 = !{null, !24, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 32)
!218 = !{!219, !220}
!219 = !DILocalVariable(name: "nr", arg: 1, scope: !213, file: !214, line: 39, type: !24)
!220 = !DILocalVariable(name: "addr", arg: 2, scope: !213, file: !214, line: 39, type: !217)
!221 = !DILocation(line: 39, column: 32, scope: !213)
!222 = !DILocation(line: 39, column: 42, scope: !213)
!223 = !DILocation(line: 41, column: 35, scope: !213)
!224 = !DILocation(line: 41, column: 49, scope: !213)
!225 = !DILocation(line: 41, column: 2, scope: !213)
!226 = !{i64 136878}
!227 = !DILocation(line: 42, column: 1, scope: !213)
