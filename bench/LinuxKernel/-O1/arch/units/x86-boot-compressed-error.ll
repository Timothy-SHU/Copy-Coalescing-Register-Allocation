; ModuleID = 'arch/x86/boot/compressed/error.c'
source_filename = "arch/x86/boot/compressed/error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [18 x i8] c" -- System halted\00", align 1, !dbg !7
@panic.buf = internal global [1024 x i8] zeroinitializer, align 16, !dbg !12

; Function Attrs: noredzone nounwind
define hidden void @warn(ptr noundef %m) #0 !dbg !50 {
entry:
  %m.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !54, metadata !DIExpression()), !dbg !55
  call void @__putstr(ptr noundef @.str) #7, !dbg !56
  %0 = load ptr, ptr %m.addr, align 8, !dbg !57
  call void @__putstr(ptr noundef %0) #7, !dbg !57
  call void @__putstr(ptr noundef @.str) #7, !dbg !58
  ret void, !dbg !59
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare !dbg !60 hidden void @__putstr(ptr noundef) #2

; Function Attrs: noredzone noreturn nounwind
define hidden void @error(ptr noundef %m) #3 !dbg !62 {
entry:
  %m.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !67, metadata !DIExpression()), !dbg !68
  %0 = load ptr, ptr %m.addr, align 8, !dbg !69
  call void @warn(ptr noundef %0) #7, !dbg !70
  call void @__putstr(ptr noundef @.str.1) #7, !dbg !71
  br label %while.body, !dbg !72

while.body:                                       ; preds = %entry, %while.body
  call void asm sideeffect "hlt", "~{dirflag},~{fpsr},~{flags}"() #8, !dbg !73, !srcloc !74
  br label %while.body, !dbg !72, !llvm.loop !75
}

; Function Attrs: cold noredzone noreturn nounwind optsize
define hidden void @panic(ptr noundef %fmt, ...) #4 !dbg !14 {
entry:
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %len = alloca i32, align 4
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !22, metadata !DIExpression()), !dbg !78
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #8, !dbg !79
  call void @llvm.dbg.declare(metadata ptr %args, metadata !23, metadata !DIExpression()), !dbg !80
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #8, !dbg !81
  call void @llvm.dbg.declare(metadata ptr %len, metadata !38, metadata !DIExpression()), !dbg !82
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !83
  call void @llvm.va_start(ptr %arraydecay), !dbg !83
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !84
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !85
  %call = call i32 @vsnprintf(ptr noundef @panic.buf, i64 noundef 1024, ptr noundef %0, ptr noundef %arraydecay1) #7, !dbg !86
  store i32 %call, ptr %len, align 4, !dbg !87
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !88
  call void @llvm.va_end(ptr %arraydecay2), !dbg !88
  %1 = load i32, ptr %len, align 4, !dbg !89
  %tobool = icmp ne i32 %1, 0, !dbg !89
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !91

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %len, align 4, !dbg !92
  %sub = sub nsw i32 %2, 1, !dbg !93
  %idxprom = sext i32 %sub to i64, !dbg !94
  %arrayidx = getelementptr inbounds [1024 x i8], ptr @panic.buf, i64 0, i64 %idxprom, !dbg !94
  %3 = load i8, ptr %arrayidx, align 1, !dbg !94
  %conv = sext i8 %3 to i32, !dbg !94
  %cmp = icmp eq i32 %conv, 10, !dbg !95
  br i1 %cmp, label %if.then, label %if.end, !dbg !96

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, ptr %len, align 4, !dbg !97
  %sub4 = sub nsw i32 %4, 1, !dbg !98
  %idxprom5 = sext i32 %sub4 to i64, !dbg !99
  %arrayidx6 = getelementptr inbounds [1024 x i8], ptr @panic.buf, i64 0, i64 %idxprom5, !dbg !99
  store i8 0, ptr %arrayidx6, align 1, !dbg !100
  br label %if.end, !dbg !99

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @error(ptr noundef @panic.buf) #9, !dbg !101
  unreachable, !dbg !101
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: noredzone
declare !dbg !102 hidden i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone noreturn nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone noreturn nounwind optsize "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nobuiltin noredzone "no-builtins" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone noreturn "no-builtins" }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 12, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/boot/compressed/error.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31a238ecee8a44b102948e8248bad470")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 20, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 18)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "buf", scope: !14, file: !2, line: 30, type: !40, isLocal: true, isDefinition: true)
!14 = distinct !DISubprogram(name: "panic", scope: !2, file: !2, line: 28, type: !15, scopeLine: 29, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !21)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, null}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/boot/compressed/.error.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -m64 -O1 --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -std=gnu11 -fno-strict-aliasing -fPIE -Wundef -D DISABLE_BRANCH_PROFILING -mcmodel=small -mno-red-zone -mno-mmx -mno-sse -ffreestanding -fshort-wchar -fno-stack-protector -Wno-address-of-packed-member -Wno-gnu -Wno-pointer-sign -fmacro-prefix-map=./= -fno-asynchronous-unwind-tables -D __DISABLE_EXPORTS -Wa,-mrelax-relocations=no -include ./include/linux/hidden.h -D KBUILD_MODFILE=\22arch/x86/boot/compressed/error\22 -D KBUILD_BASENAME=\22error\22 -D KBUILD_MODNAME=\22error\22 -D __KBUILD_MODNAME=kmod_error -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/boot/compressed/error.ll arch/x86/boot/compressed/error.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !20, splitDebugInlining: false, nameTableKind: None)
!20 = !{!0, !7, !12}
!21 = !{!22, !23, !38}
!22 = !DILocalVariable(name: "fmt", arg: 1, scope: !14, file: !2, line: 28, type: !17)
!23 = !DILocalVariable(name: "args", scope: !14, file: !2, line: 31, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !25, line: 5, baseType: !26)
!25 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 192, elements: !36)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !29)
!29 = !{!30, !32, !33, !35}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !28, file: !2, line: 31, baseType: !31, size: 32)
!31 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !28, file: !2, line: 31, baseType: !31, size: 32, offset: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !28, file: !2, line: 31, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !28, file: !2, line: 31, baseType: !34, size: 64, offset: 128)
!36 = !{!37}
!37 = !DISubrange(count: 1)
!38 = !DILocalVariable(name: "len", scope: !14, file: !2, line: 32, type: !39)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 1024)
!43 = !{i32 7, !"Dwarf Version", i32 5}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 8, !"PIC Level", i32 2}
!47 = !{i32 7, !"PIE Level", i32 2}
!48 = !{i32 1, !"Code Model", i32 1}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = distinct !DISubprogram(name: "warn", scope: !2, file: !2, line: 10, type: !51, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !53)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !17}
!53 = !{!54}
!54 = !DILocalVariable(name: "m", arg: 1, scope: !50, file: !2, line: 10, type: !17)
!55 = !DILocation(line: 10, column: 23, scope: !50)
!56 = !DILocation(line: 12, column: 2, scope: !50)
!57 = !DILocation(line: 13, column: 2, scope: !50)
!58 = !DILocation(line: 14, column: 2, scope: !50)
!59 = !DILocation(line: 15, column: 1, scope: !50)
!60 = !DISubprogram(name: "__putstr", scope: !61, file: !61, line: 64, type: !51, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!61 = !DIFile(filename: "arch/x86/boot/compressed/misc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "31b219c11b56e2bcf8daba9cc959bca7")
!62 = distinct !DISubprogram(name: "error", scope: !2, file: !2, line: 17, type: !63, scopeLine: 18, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !66)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!66 = !{!67}
!67 = !DILocalVariable(name: "m", arg: 1, scope: !62, file: !2, line: 17, type: !65)
!68 = !DILocation(line: 17, column: 18, scope: !62)
!69 = !DILocation(line: 19, column: 7, scope: !62)
!70 = !DILocation(line: 19, column: 2, scope: !62)
!71 = !DILocation(line: 20, column: 2, scope: !62)
!72 = !DILocation(line: 22, column: 2, scope: !62)
!73 = !DILocation(line: 23, column: 3, scope: !62)
!74 = !{i64 482}
!75 = distinct !{!75, !72, !76, !77}
!76 = !DILocation(line: 23, column: 12, scope: !62)
!77 = !{!"llvm.loop.unroll.disable"}
!78 = !DILocation(line: 28, column: 24, scope: !14)
!79 = !DILocation(line: 31, column: 2, scope: !14)
!80 = !DILocation(line: 31, column: 10, scope: !14)
!81 = !DILocation(line: 32, column: 2, scope: !14)
!82 = !DILocation(line: 32, column: 6, scope: !14)
!83 = !DILocation(line: 34, column: 2, scope: !14)
!84 = !DILocation(line: 35, column: 36, scope: !14)
!85 = !DILocation(line: 35, column: 41, scope: !14)
!86 = !DILocation(line: 35, column: 8, scope: !14)
!87 = !DILocation(line: 35, column: 6, scope: !14)
!88 = !DILocation(line: 36, column: 2, scope: !14)
!89 = !DILocation(line: 38, column: 6, scope: !90)
!90 = distinct !DILexicalBlock(scope: !14, file: !2, line: 38, column: 6)
!91 = !DILocation(line: 38, column: 10, scope: !90)
!92 = !DILocation(line: 38, column: 17, scope: !90)
!93 = !DILocation(line: 38, column: 21, scope: !90)
!94 = !DILocation(line: 38, column: 13, scope: !90)
!95 = !DILocation(line: 38, column: 26, scope: !90)
!96 = !DILocation(line: 38, column: 6, scope: !14)
!97 = !DILocation(line: 39, column: 7, scope: !90)
!98 = !DILocation(line: 39, column: 11, scope: !90)
!99 = !DILocation(line: 39, column: 3, scope: !90)
!100 = !DILocation(line: 39, column: 16, scope: !90)
!101 = !DILocation(line: 41, column: 2, scope: !14)
!102 = !DISubprogram(name: "vsnprintf", scope: !103, file: !103, line: 13, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!104 = !DISubroutineType(types: !105)
!105 = !{!39, !65, !106, !17, !112}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 61, baseType: !108)
!107 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !109, line: 72, baseType: !110)
!109 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !109, line: 16, baseType: !111)
!111 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
