; ModuleID = 'drivers/acpi/acpica/utnonansi.c'
source_filename = "drivers/acpi/acpica/utnonansi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ctype = external dso_local constant [0 x i8], align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_strlwr(ptr noundef %src_string) #0 align 16 !dbg !15 {
entry:
  %src_string.addr = alloca ptr, align 8
  %string = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src_string, ptr %src_string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src_string.addr, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.lifetime.start.p0(i64 8, ptr %string) #4, !dbg !23
  call void @llvm.dbg.declare(metadata ptr %string, metadata !21, metadata !DIExpression()), !dbg !24
  %0 = load ptr, ptr %src_string.addr, align 8, !dbg !25
  %tobool = icmp ne ptr %0, null, !dbg !25
  br i1 %tobool, label %if.end, label %if.then, !dbg !27

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !28

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %src_string.addr, align 8, !dbg !30
  store ptr %1, ptr %string, align 8, !dbg !32
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %string, align 8, !dbg !34
  %3 = load i8, ptr %2, align 1, !dbg !36
  %tobool1 = icmp ne i8 %3, 0, !dbg !37
  br i1 %tobool1, label %for.body, label %for.end, !dbg !37

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %string, align 8, !dbg !38
  %5 = load i8, ptr %4, align 1, !dbg !38
  %conv = zext i8 %5 to i32, !dbg !38
  %conv2 = trunc i32 %conv to i8, !dbg !38
  %call = call zeroext i8 @__tolower(i8 noundef zeroext %conv2) #5, !dbg !38
  %6 = load ptr, ptr %string, align 8, !dbg !40
  store i8 %call, ptr %6, align 1, !dbg !41
  br label %for.inc, !dbg !42

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %string, align 8, !dbg !43
  %incdec.ptr = getelementptr i8, ptr %7, i32 1, !dbg !43
  store ptr %incdec.ptr, ptr %string, align 8, !dbg !43
  br label %for.cond, !dbg !44, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !49
  br label %cleanup, !dbg !49

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %string) #4, !dbg !49
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !49

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__tolower(i8 noundef zeroext %c) #3 align 16 !dbg !50 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !55, metadata !DIExpression()), !dbg !56
  %0 = load i8, ptr %c.addr, align 1, !dbg !57
  %conv = zext i8 %0 to i32, !dbg !57
  %idxprom = sext i32 %conv to i64, !dbg !57
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !57
  %1 = load i8, ptr %arrayidx, align 1, !dbg !57
  %conv1 = zext i8 %1 to i32, !dbg !57
  %and = and i32 %conv1, 1, !dbg !57
  %cmp = icmp ne i32 %and, 0, !dbg !57
  br i1 %cmp, label %if.then, label %if.end, !dbg !59

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1, !dbg !60
  %conv3 = zext i8 %2 to i32, !dbg !60
  %sub = sub i32 %conv3, -32, !dbg !60
  %conv4 = trunc i32 %sub to i8, !dbg !60
  store i8 %conv4, ptr %c.addr, align 1, !dbg !60
  br label %if.end, !dbg !61

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %c.addr, align 1, !dbg !62
  ret i8 %3, !dbg !63
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_strupr(ptr noundef %src_string) #0 align 16 !dbg !64 {
entry:
  %src_string.addr = alloca ptr, align 8
  %string = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %src_string, ptr %src_string.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src_string.addr, metadata !66, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 8, ptr %string) #4, !dbg !69
  call void @llvm.dbg.declare(metadata ptr %string, metadata !67, metadata !DIExpression()), !dbg !70
  %0 = load ptr, ptr %src_string.addr, align 8, !dbg !71
  %tobool = icmp ne ptr %0, null, !dbg !71
  br i1 %tobool, label %if.end, label %if.then, !dbg !73

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !74

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %src_string.addr, align 8, !dbg !76
  store ptr %1, ptr %string, align 8, !dbg !78
  br label %for.cond, !dbg !79

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load ptr, ptr %string, align 8, !dbg !80
  %3 = load i8, ptr %2, align 1, !dbg !82
  %tobool1 = icmp ne i8 %3, 0, !dbg !83
  br i1 %tobool1, label %for.body, label %for.end, !dbg !83

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %string, align 8, !dbg !84
  %5 = load i8, ptr %4, align 1, !dbg !84
  %conv = zext i8 %5 to i32, !dbg !84
  %conv2 = trunc i32 %conv to i8, !dbg !84
  %call = call zeroext i8 @__toupper(i8 noundef zeroext %conv2) #5, !dbg !84
  %6 = load ptr, ptr %string, align 8, !dbg !86
  store i8 %call, ptr %6, align 1, !dbg !87
  br label %for.inc, !dbg !88

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %string, align 8, !dbg !89
  %incdec.ptr = getelementptr i8, ptr %7, i32 1, !dbg !89
  store ptr %incdec.ptr, ptr %string, align 8, !dbg !89
  br label %for.cond, !dbg !90, !llvm.loop !91

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !93
  br label %cleanup, !dbg !93

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %string) #4, !dbg !93
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !93

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__toupper(i8 noundef zeroext %c) #3 align 16 !dbg !94 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !96, metadata !DIExpression()), !dbg !97
  %0 = load i8, ptr %c.addr, align 1, !dbg !98
  %conv = zext i8 %0 to i32, !dbg !98
  %idxprom = sext i32 %conv to i64, !dbg !98
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !98
  %1 = load i8, ptr %arrayidx, align 1, !dbg !98
  %conv1 = zext i8 %1 to i32, !dbg !98
  %and = and i32 %conv1, 2, !dbg !98
  %cmp = icmp ne i32 %and, 0, !dbg !98
  br i1 %cmp, label %if.then, label %if.end, !dbg !100

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1, !dbg !101
  %conv3 = zext i8 %2 to i32, !dbg !101
  %sub = sub i32 %conv3, 32, !dbg !101
  %conv4 = trunc i32 %sub to i8, !dbg !101
  store i8 %conv4, ptr %c.addr, align 1, !dbg !101
  br label %if.end, !dbg !102

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %c.addr, align 1, !dbg !103
  ret i8 %3, !dbg !104
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_ut_stricmp(ptr noundef %string1, ptr noundef %string2) #0 align 16 !dbg !105 {
entry:
  %string1.addr = alloca ptr, align 8
  %string2.addr = alloca ptr, align 8
  %c1 = alloca i32, align 4
  %c2 = alloca i32, align 4
  store ptr %string1, ptr %string1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string1.addr, metadata !109, metadata !DIExpression()), !dbg !113
  store ptr %string2, ptr %string2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %string2.addr, metadata !110, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 4, ptr %c1) #4, !dbg !115
  call void @llvm.dbg.declare(metadata ptr %c1, metadata !111, metadata !DIExpression()), !dbg !116
  call void @llvm.lifetime.start.p0(i64 4, ptr %c2) #4, !dbg !117
  call void @llvm.dbg.declare(metadata ptr %c2, metadata !112, metadata !DIExpression()), !dbg !118
  br label %do.body, !dbg !119

do.body:                                          ; preds = %land.end, %entry
  %0 = load ptr, ptr %string1.addr, align 8, !dbg !120
  %1 = load i8, ptr %0, align 1, !dbg !120
  %conv = zext i8 %1 to i32, !dbg !120
  %conv1 = trunc i32 %conv to i8, !dbg !120
  %call = call zeroext i8 @__tolower(i8 noundef zeroext %conv1) #5, !dbg !120
  %conv2 = zext i8 %call to i32, !dbg !120
  store i32 %conv2, ptr %c1, align 4, !dbg !122
  %2 = load ptr, ptr %string2.addr, align 8, !dbg !123
  %3 = load i8, ptr %2, align 1, !dbg !123
  %conv3 = zext i8 %3 to i32, !dbg !123
  %conv4 = trunc i32 %conv3 to i8, !dbg !123
  %call5 = call zeroext i8 @__tolower(i8 noundef zeroext %conv4) #5, !dbg !123
  %conv6 = zext i8 %call5 to i32, !dbg !123
  store i32 %conv6, ptr %c2, align 4, !dbg !124
  %4 = load ptr, ptr %string1.addr, align 8, !dbg !125
  %incdec.ptr = getelementptr i8, ptr %4, i32 1, !dbg !125
  store ptr %incdec.ptr, ptr %string1.addr, align 8, !dbg !125
  %5 = load ptr, ptr %string2.addr, align 8, !dbg !126
  %incdec.ptr7 = getelementptr i8, ptr %5, i32 1, !dbg !126
  store ptr %incdec.ptr7, ptr %string2.addr, align 8, !dbg !126
  br label %do.cond, !dbg !127

do.cond:                                          ; preds = %do.body
  %6 = load i32, ptr %c1, align 4, !dbg !128
  %7 = load i32, ptr %c2, align 4, !dbg !129
  %cmp = icmp eq i32 %6, %7, !dbg !130
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !131

land.rhs:                                         ; preds = %do.cond
  %8 = load i32, ptr %c1, align 4, !dbg !132
  %tobool = icmp ne i32 %8, 0, !dbg !131
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %9 = phi i1 [ false, %do.cond ], [ %tobool, %land.rhs ], !dbg !133
  br i1 %9, label %do.body, label %do.end, !dbg !127, !llvm.loop !134

do.end:                                           ; preds = %land.end
  %10 = load i32, ptr %c1, align 4, !dbg !136
  %11 = load i32, ptr %c2, align 4, !dbg !137
  %sub = sub i32 %10, %11, !dbg !138
  call void @llvm.lifetime.end.p0(i64 4, ptr %c2) #4, !dbg !139
  call void @llvm.lifetime.end.p0(i64 4, ptr %c1) #4, !dbg !139
  ret i32 %sub, !dbg !140
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utnonansi.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utnonansi\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utnonansi.ll drivers/acpi/acpica/utnonansi.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utnonansi.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2180bbc23dda04a1487979bbf15af18a")
!2 = !{!3, !4, !5}
!3 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 8, !"cf-protection-branch", i32 1}
!10 = !{i32 4, !"function_return_thunk_extern", i32 1}
!11 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!12 = !{i32 1, !"Code Model", i32 2}
!13 = !{i32 1, !"override-stack-alignment", i32 8}
!14 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!15 = distinct !DISubprogram(name: "acpi_ut_strlwr", scope: !1, file: !1, line: 29, type: !16, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!19 = !{!20, !21}
!20 = !DILocalVariable(name: "src_string", arg: 1, scope: !15, file: !1, line: 29, type: !18)
!21 = !DILocalVariable(name: "string", scope: !15, file: !1, line: 31, type: !18)
!22 = !DILocation(line: 29, column: 27, scope: !15)
!23 = !DILocation(line: 31, column: 2, scope: !15)
!24 = !DILocation(line: 31, column: 8, scope: !15)
!25 = !DILocation(line: 35, column: 7, scope: !26)
!26 = distinct !DILexicalBlock(scope: !15, file: !1, line: 35, column: 6)
!27 = !DILocation(line: 35, column: 6, scope: !15)
!28 = !DILocation(line: 36, column: 3, scope: !29)
!29 = distinct !DILexicalBlock(scope: !26, file: !1, line: 35, column: 19)
!30 = !DILocation(line: 41, column: 16, scope: !31)
!31 = distinct !DILexicalBlock(scope: !15, file: !1, line: 41, column: 2)
!32 = !DILocation(line: 41, column: 14, scope: !31)
!33 = !DILocation(line: 41, column: 7, scope: !31)
!34 = !DILocation(line: 41, column: 29, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 41, column: 2)
!36 = !DILocation(line: 41, column: 28, scope: !35)
!37 = !DILocation(line: 41, column: 2, scope: !31)
!38 = !DILocation(line: 42, column: 19, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !1, line: 41, column: 47)
!40 = !DILocation(line: 42, column: 4, scope: !39)
!41 = !DILocation(line: 42, column: 11, scope: !39)
!42 = !DILocation(line: 43, column: 2, scope: !39)
!43 = !DILocation(line: 41, column: 43, scope: !35)
!44 = !DILocation(line: 41, column: 2, scope: !35)
!45 = distinct !{!45, !37, !46, !47, !48}
!46 = !DILocation(line: 43, column: 2, scope: !31)
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !DILocation(line: 44, column: 1, scope: !15)
!50 = distinct !DISubprogram(name: "__tolower", scope: !51, file: !51, line: 49, type: !52, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!51 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!52 = !DISubroutineType(types: !53)
!53 = !{!5, !5}
!54 = !{!55}
!55 = !DILocalVariable(name: "c", arg: 1, scope: !50, file: !51, line: 49, type: !5)
!56 = !DILocation(line: 49, column: 53, scope: !50)
!57 = !DILocation(line: 51, column: 6, scope: !58)
!58 = distinct !DILexicalBlock(scope: !50, file: !51, line: 51, column: 6)
!59 = !DILocation(line: 51, column: 6, scope: !50)
!60 = !DILocation(line: 52, column: 5, scope: !58)
!61 = !DILocation(line: 52, column: 3, scope: !58)
!62 = !DILocation(line: 53, column: 9, scope: !50)
!63 = !DILocation(line: 53, column: 2, scope: !50)
!64 = distinct !DISubprogram(name: "acpi_ut_strupr", scope: !1, file: !1, line: 58, type: !16, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !65)
!65 = !{!66, !67}
!66 = !DILocalVariable(name: "src_string", arg: 1, scope: !64, file: !1, line: 58, type: !18)
!67 = !DILocalVariable(name: "string", scope: !64, file: !1, line: 60, type: !18)
!68 = !DILocation(line: 58, column: 27, scope: !64)
!69 = !DILocation(line: 60, column: 2, scope: !64)
!70 = !DILocation(line: 60, column: 8, scope: !64)
!71 = !DILocation(line: 64, column: 7, scope: !72)
!72 = distinct !DILexicalBlock(scope: !64, file: !1, line: 64, column: 6)
!73 = !DILocation(line: 64, column: 6, scope: !64)
!74 = !DILocation(line: 65, column: 3, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !1, line: 64, column: 19)
!76 = !DILocation(line: 70, column: 16, scope: !77)
!77 = distinct !DILexicalBlock(scope: !64, file: !1, line: 70, column: 2)
!78 = !DILocation(line: 70, column: 14, scope: !77)
!79 = !DILocation(line: 70, column: 7, scope: !77)
!80 = !DILocation(line: 70, column: 29, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 70, column: 2)
!82 = !DILocation(line: 70, column: 28, scope: !81)
!83 = !DILocation(line: 70, column: 2, scope: !77)
!84 = !DILocation(line: 71, column: 19, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 70, column: 47)
!86 = !DILocation(line: 71, column: 4, scope: !85)
!87 = !DILocation(line: 71, column: 11, scope: !85)
!88 = !DILocation(line: 72, column: 2, scope: !85)
!89 = !DILocation(line: 70, column: 43, scope: !81)
!90 = !DILocation(line: 70, column: 2, scope: !81)
!91 = distinct !{!91, !83, !92, !47, !48}
!92 = !DILocation(line: 72, column: 2, scope: !77)
!93 = !DILocation(line: 73, column: 1, scope: !64)
!94 = distinct !DISubprogram(name: "__toupper", scope: !51, file: !51, line: 56, type: !52, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !95)
!95 = !{!96}
!96 = !DILocalVariable(name: "c", arg: 1, scope: !94, file: !51, line: 56, type: !5)
!97 = !DILocation(line: 56, column: 53, scope: !94)
!98 = !DILocation(line: 58, column: 6, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !51, line: 58, column: 6)
!100 = !DILocation(line: 58, column: 6, scope: !94)
!101 = !DILocation(line: 59, column: 5, scope: !99)
!102 = !DILocation(line: 59, column: 3, scope: !99)
!103 = !DILocation(line: 60, column: 9, scope: !94)
!104 = !DILocation(line: 60, column: 2, scope: !94)
!105 = distinct !DISubprogram(name: "acpi_ut_stricmp", scope: !1, file: !1, line: 90, type: !106, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !108)
!106 = !DISubroutineType(types: !107)
!107 = !{!4, !18, !18}
!108 = !{!109, !110, !111, !112}
!109 = !DILocalVariable(name: "string1", arg: 1, scope: !105, file: !1, line: 90, type: !18)
!110 = !DILocalVariable(name: "string2", arg: 2, scope: !105, file: !1, line: 90, type: !18)
!111 = !DILocalVariable(name: "c1", scope: !105, file: !1, line: 92, type: !4)
!112 = !DILocalVariable(name: "c2", scope: !105, file: !1, line: 93, type: !4)
!113 = !DILocation(line: 90, column: 27, scope: !105)
!114 = !DILocation(line: 90, column: 42, scope: !105)
!115 = !DILocation(line: 92, column: 2, scope: !105)
!116 = !DILocation(line: 92, column: 6, scope: !105)
!117 = !DILocation(line: 93, column: 2, scope: !105)
!118 = !DILocation(line: 93, column: 6, scope: !105)
!119 = !DILocation(line: 95, column: 2, scope: !105)
!120 = !DILocation(line: 96, column: 8, scope: !121)
!121 = distinct !DILexicalBlock(scope: !105, file: !1, line: 95, column: 5)
!122 = !DILocation(line: 96, column: 6, scope: !121)
!123 = !DILocation(line: 97, column: 8, scope: !121)
!124 = !DILocation(line: 97, column: 6, scope: !121)
!125 = !DILocation(line: 99, column: 10, scope: !121)
!126 = !DILocation(line: 100, column: 10, scope: !121)
!127 = !DILocation(line: 101, column: 2, scope: !121)
!128 = !DILocation(line: 102, column: 10, scope: !105)
!129 = !DILocation(line: 102, column: 16, scope: !105)
!130 = !DILocation(line: 102, column: 13, scope: !105)
!131 = !DILocation(line: 102, column: 20, scope: !105)
!132 = !DILocation(line: 102, column: 24, scope: !105)
!133 = !DILocation(line: 0, scope: !105)
!134 = distinct !{!134, !119, !135, !47, !48}
!135 = !DILocation(line: 102, column: 27, scope: !105)
!136 = !DILocation(line: 104, column: 10, scope: !105)
!137 = !DILocation(line: 104, column: 15, scope: !105)
!138 = !DILocation(line: 104, column: 13, scope: !105)
!139 = !DILocation(line: 105, column: 1, scope: !105)
!140 = !DILocation(line: 104, column: 2, scope: !105)
