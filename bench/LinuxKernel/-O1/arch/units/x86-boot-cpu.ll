; ModuleID = 'arch/x86/boot/cpu.c'
source_filename = "arch/x86/boot/cpu.c"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-i128:128-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i386-unknown-linux-code16"

@.str = private unnamed_addr constant [33 x i8] c"This kernel requires an %s CPU, \00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"but only detected an %s CPU.\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [69 x i8] c"This kernel requires the following features not present on the CPU:\0A\00", align 1, !dbg !12
@cpu_name.buf = internal global [6 x i8] zeroinitializer, align 1, !dbg !17
@.str.3 = private unnamed_addr constant [7 x i8] c"x86-64\00", align 1, !dbg !30
@.str.4 = private unnamed_addr constant [6 x i8] c"i%d86\00", align 1, !dbg !35
@x86_cap_strs = internal constant [72 x i8] c"\00\00fpu\00\00\03pse\00\00\05msr\00\00\06pae\00\00\08cx8\00\00\0Fcmov\00\00\18fxsr\00\00\19sse\00\00\1Asse2\00\01\1Dlm\00\03\14nopl\00\15\1F\00", align 1, !dbg !47
@.str.5 = private unnamed_addr constant [4 x i8] c"%s \00", align 1, !dbg !40
@.str.6 = private unnamed_addr constant [7 x i8] c"%d:%d \00", align 1, !dbg !45

; Function Attrs: nounwind
define dso_local i32 @validate_cpu() #0 !dbg !62 {
entry:
  %retval = alloca i32, align 4
  %err_flags = alloca ptr, align 4
  %cpu_level = alloca i32, align 4
  %req_level = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %err_flags) #4, !dbg !75
  call void @llvm.dbg.declare(metadata ptr %err_flags, metadata !66, metadata !DIExpression()), !dbg !76
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu_level) #4, !dbg !77
  call void @llvm.dbg.declare(metadata ptr %cpu_level, metadata !73, metadata !DIExpression()), !dbg !78
  call void @llvm.lifetime.start.p0(i64 4, ptr %req_level) #4, !dbg !77
  call void @llvm.dbg.declare(metadata ptr %req_level, metadata !74, metadata !DIExpression()), !dbg !79
  %call = call i32 @check_cpu(ptr inreg noundef %cpu_level, ptr inreg noundef %req_level, ptr inreg noundef %err_flags) #5, !dbg !80
  %0 = load i32, ptr %cpu_level, align 4, !dbg !81
  %1 = load i32, ptr %req_level, align 4, !dbg !83
  %cmp = icmp slt i32 %0, %1, !dbg !84
  br i1 %cmp, label %if.then, label %if.end, !dbg !85

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %req_level, align 4, !dbg !86
  %call1 = call ptr @cpu_name(i32 inreg noundef %2) #5, !dbg !88
  %call2 = call i32 (ptr, ...) @printf(ptr inreg noundef @.str, ptr inreg noundef %call1) #5, !dbg !89
  %3 = load i32, ptr %cpu_level, align 4, !dbg !90
  %call3 = call ptr @cpu_name(i32 inreg noundef %3) #5, !dbg !91
  %call4 = call i32 (ptr, ...) @printf(ptr inreg noundef @.str.1, ptr inreg noundef %call3) #5, !dbg !92
  store i32 -1, ptr %retval, align 4, !dbg !93
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !93

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %err_flags, align 4, !dbg !94
  %tobool = icmp ne ptr %4, null, !dbg !94
  br i1 %tobool, label %if.then5, label %if.else, !dbg !96

if.then5:                                         ; preds = %if.end
  call void @puts(ptr inreg noundef @.str.2) #5, !dbg !97
  %5 = load ptr, ptr %err_flags, align 4, !dbg !99
  call void @show_cap_strs(ptr inreg noundef %5) #5, !dbg !100
  call void @putchar(i32 inreg noundef 10) #5, !dbg !101
  store i32 -1, ptr %retval, align 4, !dbg !102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !102

if.else:                                          ; preds = %if.end
  %call6 = call i32 @check_knl_erratum() #5, !dbg !103
  %tobool7 = icmp ne i32 %call6, 0, !dbg !103
  br i1 %tobool7, label %if.then8, label %if.else9, !dbg !105

if.then8:                                         ; preds = %if.else
  store i32 -1, ptr %retval, align 4, !dbg !106
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !106

if.else9:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !108
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !108

cleanup:                                          ; preds = %if.else9, %if.then8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %req_level) #4, !dbg !110
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu_level) #4, !dbg !110
  call void @llvm.lifetime.end.p0(i64 4, ptr %err_flags) #4, !dbg !110
  %6 = load i32, ptr %retval, align 4, !dbg !110
  ret i32 %6, !dbg !110
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !111 dso_local i32 @check_cpu(ptr inreg noundef, ptr inreg noundef, ptr inreg noundef) #3

declare !dbg !117 dso_local i32 @printf(ptr inreg noundef, ...) #3

; Function Attrs: nounwind
define internal ptr @cpu_name(i32 inreg noundef %level) #0 !dbg !19 {
entry:
  %retval = alloca ptr, align 4
  %level.addr = alloca i32, align 4
  store i32 %level, ptr %level.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !55, metadata !DIExpression()), !dbg !121
  %0 = load i32, ptr %level.addr, align 4, !dbg !122
  %cmp = icmp eq i32 %0, 64, !dbg !124
  br i1 %cmp, label %if.then, label %if.else, !dbg !125

if.then:                                          ; preds = %entry
  store ptr @.str.3, ptr %retval, align 4, !dbg !126
  br label %return, !dbg !126

if.else:                                          ; preds = %entry
  %1 = load i32, ptr %level.addr, align 4, !dbg !128
  %cmp1 = icmp eq i32 %1, 15, !dbg !131
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !132

if.then2:                                         ; preds = %if.else
  store i32 6, ptr %level.addr, align 4, !dbg !133
  br label %if.end, !dbg !134

if.end:                                           ; preds = %if.then2, %if.else
  %2 = load i32, ptr %level.addr, align 4, !dbg !135
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr inreg noundef @cpu_name.buf, ptr inreg noundef @.str.4, i32 inreg noundef %2) #5, !dbg !136
  store ptr @cpu_name.buf, ptr %retval, align 4, !dbg !137
  br label %return, !dbg !137

return:                                           ; preds = %if.end, %if.then
  %3 = load ptr, ptr %retval, align 4, !dbg !138
  ret ptr %3, !dbg !138
}

declare !dbg !139 dso_local void @puts(ptr inreg noundef) #3

; Function Attrs: nounwind
define internal void @show_cap_strs(ptr inreg noundef %err_flags) #0 !dbg !142 {
entry:
  %err_flags.addr = alloca ptr, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %msg_strs = alloca ptr, align 4
  %e = alloca i32, align 4
  store ptr %err_flags, ptr %err_flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %err_flags.addr, metadata !146, metadata !DIExpression()), !dbg !154
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !155
  call void @llvm.dbg.declare(metadata ptr %i, metadata !147, metadata !DIExpression()), !dbg !156
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4, !dbg !155
  call void @llvm.dbg.declare(metadata ptr %j, metadata !148, metadata !DIExpression()), !dbg !157
  call void @llvm.lifetime.start.p0(i64 4, ptr %msg_strs) #4, !dbg !158
  call void @llvm.dbg.declare(metadata ptr %msg_strs, metadata !149, metadata !DIExpression()), !dbg !159
  store ptr @x86_cap_strs, ptr %msg_strs, align 4, !dbg !159
  store i32 0, ptr %i, align 4, !dbg !160
  br label %for.cond, !dbg !161

for.cond:                                         ; preds = %for.inc35, %entry
  %0 = load i32, ptr %i, align 4, !dbg !162
  %cmp = icmp slt i32 %0, 22, !dbg !163
  br i1 %cmp, label %for.body, label %for.end37, !dbg !164

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #4, !dbg !165
  call void @llvm.dbg.declare(metadata ptr %e, metadata !150, metadata !DIExpression()), !dbg !166
  %1 = load ptr, ptr %err_flags.addr, align 4, !dbg !167
  %2 = load i32, ptr %i, align 4, !dbg !168
  %arrayidx = getelementptr inbounds i32, ptr %1, i32 %2, !dbg !167
  %3 = load i32, ptr %arrayidx, align 4, !dbg !167
  store i32 %3, ptr %e, align 4, !dbg !166
  store i32 0, ptr %j, align 4, !dbg !169
  br label %for.cond1, !dbg !171

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, ptr %j, align 4, !dbg !172
  %cmp2 = icmp slt i32 %4, 32, !dbg !174
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !175

for.body3:                                        ; preds = %for.cond1
  %5 = load ptr, ptr %msg_strs, align 4, !dbg !176
  %arrayidx4 = getelementptr inbounds i8, ptr %5, i32 0, !dbg !176
  %6 = load i8, ptr %arrayidx4, align 1, !dbg !176
  %conv = zext i8 %6 to i32, !dbg !176
  %7 = load i32, ptr %i, align 4, !dbg !179
  %cmp5 = icmp slt i32 %conv, %7, !dbg !180
  br i1 %cmp5, label %if.then, label %lor.lhs.false, !dbg !181

lor.lhs.false:                                    ; preds = %for.body3
  %8 = load ptr, ptr %msg_strs, align 4, !dbg !182
  %arrayidx7 = getelementptr inbounds i8, ptr %8, i32 0, !dbg !182
  %9 = load i8, ptr %arrayidx7, align 1, !dbg !182
  %conv8 = zext i8 %9 to i32, !dbg !182
  %10 = load i32, ptr %i, align 4, !dbg !183
  %cmp9 = icmp eq i32 %conv8, %10, !dbg !184
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !185

land.lhs.true:                                    ; preds = %lor.lhs.false
  %11 = load ptr, ptr %msg_strs, align 4, !dbg !186
  %arrayidx11 = getelementptr inbounds i8, ptr %11, i32 1, !dbg !186
  %12 = load i8, ptr %arrayidx11, align 1, !dbg !186
  %conv12 = zext i8 %12 to i32, !dbg !186
  %13 = load i32, ptr %j, align 4, !dbg !187
  %cmp13 = icmp slt i32 %conv12, %13, !dbg !188
  br i1 %cmp13, label %if.then, label %if.end, !dbg !189

if.then:                                          ; preds = %land.lhs.true, %for.body3
  %14 = load ptr, ptr %msg_strs, align 4, !dbg !190
  %add.ptr = getelementptr inbounds i8, ptr %14, i32 2, !dbg !190
  store ptr %add.ptr, ptr %msg_strs, align 4, !dbg !190
  br label %while.cond, !dbg !192

while.cond:                                       ; preds = %while.body, %if.then
  %15 = load ptr, ptr %msg_strs, align 4, !dbg !193
  %incdec.ptr = getelementptr inbounds i8, ptr %15, i32 1, !dbg !193
  store ptr %incdec.ptr, ptr %msg_strs, align 4, !dbg !193
  %16 = load i8, ptr %15, align 1, !dbg !194
  %tobool = icmp ne i8 %16, 0, !dbg !192
  br i1 %tobool, label %while.body, label %while.end, !dbg !192

while.body:                                       ; preds = %while.cond
  br label %while.cond, !dbg !192, !llvm.loop !195

while.end:                                        ; preds = %while.cond
  br label %if.end, !dbg !199

if.end:                                           ; preds = %while.end, %land.lhs.true, %lor.lhs.false
  %17 = load i32, ptr %e, align 4, !dbg !200
  %and = and i32 %17, 1, !dbg !202
  %tobool15 = icmp ne i32 %and, 0, !dbg !202
  br i1 %tobool15, label %if.then16, label %if.end34, !dbg !203

if.then16:                                        ; preds = %if.end
  %18 = load ptr, ptr %msg_strs, align 4, !dbg !204
  %arrayidx17 = getelementptr inbounds i8, ptr %18, i32 0, !dbg !204
  %19 = load i8, ptr %arrayidx17, align 1, !dbg !204
  %conv18 = zext i8 %19 to i32, !dbg !204
  %20 = load i32, ptr %i, align 4, !dbg !207
  %cmp19 = icmp eq i32 %conv18, %20, !dbg !208
  br i1 %cmp19, label %land.lhs.true21, label %if.else, !dbg !209

land.lhs.true21:                                  ; preds = %if.then16
  %21 = load ptr, ptr %msg_strs, align 4, !dbg !210
  %arrayidx22 = getelementptr inbounds i8, ptr %21, i32 1, !dbg !210
  %22 = load i8, ptr %arrayidx22, align 1, !dbg !210
  %conv23 = zext i8 %22 to i32, !dbg !210
  %23 = load i32, ptr %j, align 4, !dbg !211
  %cmp24 = icmp eq i32 %conv23, %23, !dbg !212
  br i1 %cmp24, label %land.lhs.true26, label %if.else, !dbg !213

land.lhs.true26:                                  ; preds = %land.lhs.true21
  %24 = load ptr, ptr %msg_strs, align 4, !dbg !214
  %arrayidx27 = getelementptr inbounds i8, ptr %24, i32 2, !dbg !214
  %25 = load i8, ptr %arrayidx27, align 1, !dbg !214
  %conv28 = zext i8 %25 to i32, !dbg !214
  %tobool29 = icmp ne i32 %conv28, 0, !dbg !214
  br i1 %tobool29, label %if.then30, label %if.else, !dbg !215

if.then30:                                        ; preds = %land.lhs.true26
  %26 = load ptr, ptr %msg_strs, align 4, !dbg !216
  %add.ptr31 = getelementptr inbounds i8, ptr %26, i32 2, !dbg !217
  %call = call i32 (ptr, ...) @printf(ptr inreg noundef @.str.5, ptr inreg noundef %add.ptr31) #5, !dbg !218
  br label %if.end33, !dbg !218

if.else:                                          ; preds = %land.lhs.true26, %land.lhs.true21, %if.then16
  %27 = load i32, ptr %i, align 4, !dbg !219
  %28 = load i32, ptr %j, align 4, !dbg !220
  %call32 = call i32 (ptr, ...) @printf(ptr inreg noundef @.str.6, i32 inreg noundef %27, i32 inreg noundef %28) #5, !dbg !221
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then30
  br label %if.end34, !dbg !222

if.end34:                                         ; preds = %if.end33, %if.end
  %29 = load i32, ptr %e, align 4, !dbg !223
  %shr = lshr i32 %29, 1, !dbg !223
  store i32 %shr, ptr %e, align 4, !dbg !223
  br label %for.inc, !dbg !224

for.inc:                                          ; preds = %if.end34
  %30 = load i32, ptr %j, align 4, !dbg !225
  %inc = add nsw i32 %30, 1, !dbg !225
  store i32 %inc, ptr %j, align 4, !dbg !225
  br label %for.cond1, !dbg !226, !llvm.loop !227

for.end:                                          ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #4, !dbg !229
  br label %for.inc35, !dbg !230

for.inc35:                                        ; preds = %for.end
  %31 = load i32, ptr %i, align 4, !dbg !231
  %inc36 = add nsw i32 %31, 1, !dbg !231
  store i32 %inc36, ptr %i, align 4, !dbg !231
  br label %for.cond, !dbg !232, !llvm.loop !233

for.end37:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %msg_strs) #4, !dbg !235
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4, !dbg !235
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !235
  ret void, !dbg !235
}

declare !dbg !236 dso_local void @putchar(i32 inreg noundef) #3

declare !dbg !239 dso_local i32 @check_knl_erratum() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare !dbg !240 dso_local i32 @sprintf(ptr inreg noundef, ptr inreg noundef, ...) #3

attributes #0 = { nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="i386" "target-features"="+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!24}
!llvm.module.flags = !{!56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/boot/cpu.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "086326514a98092654da5933cb9dfb03")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 33)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 552, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 69)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "buf", scope: !19, file: !2, line: 21, type: !37, isLocal: true, isDefinition: true)
!19 = distinct !DISubprogram(name: "cpu_name", scope: !2, file: !2, line: 19, type: !20, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !54)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 32)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/.cpu.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m16 -g -O1 -D DISABLE_BRANCH_PROFILING -D __DISABLE_EXPORTS -Wall -Wstrict-prototypes -march=i386 -mregparm=3 -fno-strict-aliasing -fomit-frame-pointer -fno-pic -mno-mmx -mno-sse -fcf-protection=none -ffreestanding -fno-stack-protector -Wno-address-of-packed-member -mstack-alignment=4 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -D _SETUP -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D KBUILD_MODFILE=\22arch/x86/boot/cpu\22 -D KBUILD_BASENAME=\22cpu\22 -D KBUILD_MODNAME=\22cpu\22 -D __KBUILD_MODNAME=kmod_cpu -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/cpu.ll arch/x86/boot/cpu.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !25, globals: !29, splitDebugInlining: false, nameTableKind: None)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!29 = !{!0, !7, !12, !17, !30, !35, !40, !45, !47}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !2, line: 24, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 7)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !2, line: 28, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 6)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !2, line: 51, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 4)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 53, type: !32, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "x86_cap_strs", scope: !24, file: !49, line: 1, type: !50, isLocal: true, isDefinition: true)
!49 = !DIFile(filename: "arch/x86/boot/cpustr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7bfce681d54b3addcbe10e2634dd78")
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 576, elements: !52)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!52 = !{!53}
!53 = !DISubrange(count: 72)
!54 = !{!55}
!55 = !DILocalVariable(name: "level", arg: 1, scope: !19, file: !2, line: 19, type: !23)
!56 = !{i32 1, !"NumRegisterParameters", i32 3}
!57 = !{i32 7, !"Dwarf Version", i32 5}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{i32 1, !"override-stack-alignment", i32 4}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = distinct !DISubprogram(name: "validate_cpu", scope: !2, file: !2, line: 60, type: !63, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !65)
!63 = !DISubroutineType(types: !64)
!64 = !{!23}
!65 = !{!66, !73, !74}
!66 = !DILocalVariable(name: "err_flags", scope: !62, file: !2, line: 62, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 32)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !69, line: 21, baseType: !70)
!69 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !71, line: 27, baseType: !72)
!71 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!72 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!73 = !DILocalVariable(name: "cpu_level", scope: !62, file: !2, line: 63, type: !23)
!74 = !DILocalVariable(name: "req_level", scope: !62, file: !2, line: 63, type: !23)
!75 = !DILocation(line: 62, column: 2, scope: !62)
!76 = !DILocation(line: 62, column: 7, scope: !62)
!77 = !DILocation(line: 63, column: 2, scope: !62)
!78 = !DILocation(line: 63, column: 6, scope: !62)
!79 = !DILocation(line: 63, column: 17, scope: !62)
!80 = !DILocation(line: 65, column: 2, scope: !62)
!81 = !DILocation(line: 67, column: 6, scope: !82)
!82 = distinct !DILexicalBlock(scope: !62, file: !2, line: 67, column: 6)
!83 = !DILocation(line: 67, column: 18, scope: !82)
!84 = !DILocation(line: 67, column: 16, scope: !82)
!85 = !DILocation(line: 67, column: 6, scope: !62)
!86 = !DILocation(line: 69, column: 19, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !2, line: 67, column: 29)
!88 = !DILocation(line: 69, column: 10, scope: !87)
!89 = !DILocation(line: 68, column: 3, scope: !87)
!90 = !DILocation(line: 71, column: 19, scope: !87)
!91 = !DILocation(line: 71, column: 10, scope: !87)
!92 = !DILocation(line: 70, column: 3, scope: !87)
!93 = !DILocation(line: 72, column: 3, scope: !87)
!94 = !DILocation(line: 75, column: 6, scope: !95)
!95 = distinct !DILexicalBlock(scope: !62, file: !2, line: 75, column: 6)
!96 = !DILocation(line: 75, column: 6, scope: !62)
!97 = !DILocation(line: 76, column: 3, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !2, line: 75, column: 17)
!99 = !DILocation(line: 78, column: 17, scope: !98)
!100 = !DILocation(line: 78, column: 3, scope: !98)
!101 = !DILocation(line: 79, column: 3, scope: !98)
!102 = !DILocation(line: 80, column: 3, scope: !98)
!103 = !DILocation(line: 81, column: 13, scope: !104)
!104 = distinct !DILexicalBlock(scope: !95, file: !2, line: 81, column: 13)
!105 = !DILocation(line: 81, column: 13, scope: !95)
!106 = !DILocation(line: 82, column: 3, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !2, line: 81, column: 34)
!108 = !DILocation(line: 84, column: 3, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !2, line: 83, column: 9)
!110 = !DILocation(line: 86, column: 1, scope: !62)
!111 = !DISubprogram(name: "check_cpu", scope: !112, file: !112, line: 272, type: !113, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!112 = !DIFile(filename: "arch/x86/boot/boot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "952610b86c161e31fd16c71d76234c9c")
!113 = !DISubroutineType(types: !114)
!114 = !{!23, !115, !115, !116}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 32)
!117 = !DISubprogram(name: "printf", scope: !112, file: !112, line: 299, type: !118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!118 = !DISubroutineType(types: !119)
!119 = !{!23, !120, null}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 32)
!121 = !DILocation(line: 19, column: 27, scope: !19)
!122 = !DILocation(line: 23, column: 6, scope: !123)
!123 = distinct !DILexicalBlock(scope: !19, file: !2, line: 23, column: 6)
!124 = !DILocation(line: 23, column: 12, scope: !123)
!125 = !DILocation(line: 23, column: 6, scope: !19)
!126 = !DILocation(line: 24, column: 3, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !2, line: 23, column: 19)
!128 = !DILocation(line: 26, column: 7, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !2, line: 26, column: 7)
!130 = distinct !DILexicalBlock(scope: !123, file: !2, line: 25, column: 9)
!131 = !DILocation(line: 26, column: 13, scope: !129)
!132 = !DILocation(line: 26, column: 7, scope: !130)
!133 = !DILocation(line: 27, column: 10, scope: !129)
!134 = !DILocation(line: 27, column: 4, scope: !129)
!135 = !DILocation(line: 28, column: 25, scope: !130)
!136 = !DILocation(line: 28, column: 3, scope: !130)
!137 = !DILocation(line: 29, column: 3, scope: !130)
!138 = !DILocation(line: 31, column: 1, scope: !19)
!139 = !DISubprogram(name: "puts", scope: !112, file: !112, line: 314, type: !140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !120}
!142 = distinct !DISubprogram(name: "show_cap_strs", scope: !2, file: !2, line: 33, type: !143, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !24, retainedNodes: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !67}
!145 = !{!146, !147, !148, !149, !150}
!146 = !DILocalVariable(name: "err_flags", arg: 1, scope: !142, file: !2, line: 33, type: !67)
!147 = !DILocalVariable(name: "i", scope: !142, file: !2, line: 35, type: !23)
!148 = !DILocalVariable(name: "j", scope: !142, file: !2, line: 35, type: !23)
!149 = !DILocalVariable(name: "msg_strs", scope: !142, file: !2, line: 36, type: !26)
!150 = !DILocalVariable(name: "e", scope: !151, file: !2, line: 38, type: !68)
!151 = distinct !DILexicalBlock(scope: !152, file: !2, line: 37, column: 33)
!152 = distinct !DILexicalBlock(scope: !153, file: !2, line: 37, column: 2)
!153 = distinct !DILexicalBlock(scope: !142, file: !2, line: 37, column: 2)
!154 = !DILocation(line: 33, column: 32, scope: !142)
!155 = !DILocation(line: 35, column: 2, scope: !142)
!156 = !DILocation(line: 35, column: 6, scope: !142)
!157 = !DILocation(line: 35, column: 9, scope: !142)
!158 = !DILocation(line: 36, column: 2, scope: !142)
!159 = !DILocation(line: 36, column: 23, scope: !142)
!160 = !DILocation(line: 37, column: 9, scope: !153)
!161 = !DILocation(line: 37, column: 7, scope: !153)
!162 = !DILocation(line: 37, column: 14, scope: !152)
!163 = !DILocation(line: 37, column: 16, scope: !152)
!164 = !DILocation(line: 37, column: 2, scope: !153)
!165 = !DILocation(line: 38, column: 3, scope: !151)
!166 = !DILocation(line: 38, column: 7, scope: !151)
!167 = !DILocation(line: 38, column: 11, scope: !151)
!168 = !DILocation(line: 38, column: 21, scope: !151)
!169 = !DILocation(line: 39, column: 10, scope: !170)
!170 = distinct !DILexicalBlock(scope: !151, file: !2, line: 39, column: 3)
!171 = !DILocation(line: 39, column: 8, scope: !170)
!172 = !DILocation(line: 39, column: 15, scope: !173)
!173 = distinct !DILexicalBlock(scope: !170, file: !2, line: 39, column: 3)
!174 = !DILocation(line: 39, column: 17, scope: !173)
!175 = !DILocation(line: 39, column: 3, scope: !170)
!176 = !DILocation(line: 40, column: 8, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !2, line: 40, column: 8)
!178 = distinct !DILexicalBlock(scope: !173, file: !2, line: 39, column: 28)
!179 = !DILocation(line: 40, column: 22, scope: !177)
!180 = !DILocation(line: 40, column: 20, scope: !177)
!181 = !DILocation(line: 40, column: 24, scope: !177)
!182 = !DILocation(line: 41, column: 9, scope: !177)
!183 = !DILocation(line: 41, column: 24, scope: !177)
!184 = !DILocation(line: 41, column: 21, scope: !177)
!185 = !DILocation(line: 41, column: 26, scope: !177)
!186 = !DILocation(line: 41, column: 29, scope: !177)
!187 = !DILocation(line: 41, column: 43, scope: !177)
!188 = !DILocation(line: 41, column: 41, scope: !177)
!189 = !DILocation(line: 40, column: 8, scope: !178)
!190 = !DILocation(line: 43, column: 14, scope: !191)
!191 = distinct !DILexicalBlock(scope: !177, file: !2, line: 41, column: 47)
!192 = !DILocation(line: 44, column: 5, scope: !191)
!193 = !DILocation(line: 44, column: 21, scope: !191)
!194 = !DILocation(line: 44, column: 12, scope: !191)
!195 = distinct !{!195, !192, !196, !197, !198}
!196 = !DILocation(line: 45, column: 6, scope: !191)
!197 = !{!"llvm.loop.mustprogress"}
!198 = !{!"llvm.loop.unroll.disable"}
!199 = !DILocation(line: 46, column: 4, scope: !191)
!200 = !DILocation(line: 47, column: 8, scope: !201)
!201 = distinct !DILexicalBlock(scope: !178, file: !2, line: 47, column: 8)
!202 = !DILocation(line: 47, column: 10, scope: !201)
!203 = !DILocation(line: 47, column: 8, scope: !178)
!204 = !DILocation(line: 48, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !2, line: 48, column: 9)
!206 = distinct !DILexicalBlock(scope: !201, file: !2, line: 47, column: 15)
!207 = !DILocation(line: 48, column: 24, scope: !205)
!208 = !DILocation(line: 48, column: 21, scope: !205)
!209 = !DILocation(line: 48, column: 26, scope: !205)
!210 = !DILocation(line: 49, column: 9, scope: !205)
!211 = !DILocation(line: 49, column: 24, scope: !205)
!212 = !DILocation(line: 49, column: 21, scope: !205)
!213 = !DILocation(line: 49, column: 26, scope: !205)
!214 = !DILocation(line: 50, column: 9, scope: !205)
!215 = !DILocation(line: 48, column: 9, scope: !206)
!216 = !DILocation(line: 51, column: 20, scope: !205)
!217 = !DILocation(line: 51, column: 28, scope: !205)
!218 = !DILocation(line: 51, column: 6, scope: !205)
!219 = !DILocation(line: 53, column: 23, scope: !205)
!220 = !DILocation(line: 53, column: 26, scope: !205)
!221 = !DILocation(line: 53, column: 6, scope: !205)
!222 = !DILocation(line: 54, column: 4, scope: !206)
!223 = !DILocation(line: 55, column: 6, scope: !178)
!224 = !DILocation(line: 56, column: 3, scope: !178)
!225 = !DILocation(line: 39, column: 24, scope: !173)
!226 = !DILocation(line: 39, column: 3, scope: !173)
!227 = distinct !{!227, !175, !228, !197, !198}
!228 = !DILocation(line: 56, column: 3, scope: !170)
!229 = !DILocation(line: 57, column: 2, scope: !152)
!230 = !DILocation(line: 57, column: 2, scope: !151)
!231 = !DILocation(line: 37, column: 29, scope: !152)
!232 = !DILocation(line: 37, column: 2, scope: !152)
!233 = distinct !{!233, !164, !234, !197, !198}
!234 = !DILocation(line: 57, column: 2, scope: !153)
!235 = !DILocation(line: 58, column: 1, scope: !142)
!236 = !DISubprogram(name: "putchar", scope: !112, file: !112, line: 315, type: !237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !23}
!239 = !DISubprogram(name: "check_knl_erratum", scope: !112, file: !112, line: 273, type: !63, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!240 = !DISubprogram(name: "sprintf", scope: !112, file: !112, line: 297, type: !241, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DISubroutineType(types: !242)
!242 = !{!23, !22, !120, null}
