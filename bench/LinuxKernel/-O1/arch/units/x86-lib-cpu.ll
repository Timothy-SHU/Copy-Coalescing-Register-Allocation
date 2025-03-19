; ModuleID = 'arch/x86/lib/cpu.c'
source_filename = "arch/x86/lib/cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_x86_family: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad x86_family ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_x86_model: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad x86_model ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_x86_stepping: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad x86_stepping ; .previous"

@__UNIQUE_ID___addressable_x86_family203 = internal global ptr @x86_family, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_x86_model204 = internal global ptr @x86_model, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_x86_stepping205 = internal global ptr @x86_stepping, section ".discard.addressable", align 8, !dbg !9
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_x86_family203, ptr @__UNIQUE_ID___addressable_x86_model204, ptr @__UNIQUE_ID___addressable_x86_stepping205], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x86_family(i32 noundef %sig) #0 align 16 !dbg !20 {
entry:
  %sig.addr = alloca i32, align 4
  %x86 = alloca i32, align 4
  store i32 %sig, ptr %sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sig.addr, metadata !25, metadata !DIExpression()), !dbg !27
  call void @llvm.lifetime.start.p0(i64 4, ptr %x86) #3, !dbg !28
  call void @llvm.dbg.declare(metadata ptr %x86, metadata !26, metadata !DIExpression()), !dbg !29
  %0 = load i32, ptr %sig.addr, align 4, !dbg !30
  %shr = lshr i32 %0, 8, !dbg !31
  %and = and i32 %shr, 15, !dbg !32
  store i32 %and, ptr %x86, align 4, !dbg !33
  %1 = load i32, ptr %x86, align 4, !dbg !34
  %cmp = icmp eq i32 %1, 15, !dbg !36
  br i1 %cmp, label %if.then, label %if.end, !dbg !37

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %sig.addr, align 4, !dbg !38
  %shr1 = lshr i32 %2, 20, !dbg !39
  %and2 = and i32 %shr1, 255, !dbg !40
  %3 = load i32, ptr %x86, align 4, !dbg !41
  %add = add i32 %3, %and2, !dbg !41
  store i32 %add, ptr %x86, align 4, !dbg !41
  br label %if.end, !dbg !42

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, ptr %x86, align 4, !dbg !43
  call void @llvm.lifetime.end.p0(i64 4, ptr %x86) #3, !dbg !44
  ret i32 %4, !dbg !45
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x86_model(i32 noundef %sig) #0 align 16 !dbg !46 {
entry:
  %sig.addr = alloca i32, align 4
  %fam = alloca i32, align 4
  %model = alloca i32, align 4
  store i32 %sig, ptr %sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sig.addr, metadata !48, metadata !DIExpression()), !dbg !51
  call void @llvm.lifetime.start.p0(i64 4, ptr %fam) #3, !dbg !52
  call void @llvm.dbg.declare(metadata ptr %fam, metadata !49, metadata !DIExpression()), !dbg !53
  call void @llvm.lifetime.start.p0(i64 4, ptr %model) #3, !dbg !52
  call void @llvm.dbg.declare(metadata ptr %model, metadata !50, metadata !DIExpression()), !dbg !54
  %0 = load i32, ptr %sig.addr, align 4, !dbg !55
  %call = call i32 @x86_family(i32 noundef %0) #4, !dbg !56
  store i32 %call, ptr %fam, align 4, !dbg !57
  %1 = load i32, ptr %sig.addr, align 4, !dbg !58
  %shr = lshr i32 %1, 4, !dbg !59
  %and = and i32 %shr, 15, !dbg !60
  store i32 %and, ptr %model, align 4, !dbg !61
  %2 = load i32, ptr %fam, align 4, !dbg !62
  %cmp = icmp uge i32 %2, 6, !dbg !64
  br i1 %cmp, label %if.then, label %if.end, !dbg !65

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %sig.addr, align 4, !dbg !66
  %shr1 = lshr i32 %3, 16, !dbg !67
  %and2 = and i32 %shr1, 15, !dbg !68
  %shl = shl i32 %and2, 4, !dbg !69
  %4 = load i32, ptr %model, align 4, !dbg !70
  %add = add i32 %4, %shl, !dbg !70
  store i32 %add, ptr %model, align 4, !dbg !70
  br label %if.end, !dbg !71

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %model, align 4, !dbg !72
  call void @llvm.lifetime.end.p0(i64 4, ptr %model) #3, !dbg !73
  call void @llvm.lifetime.end.p0(i64 4, ptr %fam) #3, !dbg !73
  ret i32 %5, !dbg !74
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @x86_stepping(i32 noundef %sig) #0 align 16 !dbg !75 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, ptr %sig.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sig.addr, metadata !77, metadata !DIExpression()), !dbg !78
  %0 = load i32, ptr %sig.addr, align 4, !dbg !79
  %and = and i32 %0, 15, !dbg !80
  ret i32 %and, !dbg !81
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_x86_family203", scope: !2, file: !3, line: 17, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.cpu.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/cpu\22 -D KBUILD_BASENAME=\22cpu\22 -D KBUILD_MODNAME=\22cpu\22 -D __KBUILD_MODNAME=kmod_cpu -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/cpu.ll arch/x86/lib/cpu.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/lib/cpu.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6c9a6115d66d9655b2c62cbb602152f")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !9}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_x86_model204", scope: !2, file: !3, line: 32, type: !5, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_x86_stepping205", scope: !2, file: !3, line: 38, type: !5, isLocal: true, isDefinition: true)
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 8, !"cf-protection-branch", i32 1}
!15 = !{i32 4, !"function_return_thunk_extern", i32 1}
!16 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!17 = !{i32 1, !"Code Model", i32 2}
!18 = !{i32 1, !"override-stack-alignment", i32 8}
!19 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!20 = distinct !DISubprogram(name: "x86_family", scope: !3, file: !3, line: 6, type: !21, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !23}
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !{!25, !26}
!25 = !DILocalVariable(name: "sig", arg: 1, scope: !20, file: !3, line: 6, type: !23)
!26 = !DILocalVariable(name: "x86", scope: !20, file: !3, line: 8, type: !23)
!27 = !DILocation(line: 6, column: 38, scope: !20)
!28 = !DILocation(line: 8, column: 2, scope: !20)
!29 = !DILocation(line: 8, column: 15, scope: !20)
!30 = !DILocation(line: 10, column: 9, scope: !20)
!31 = !DILocation(line: 10, column: 13, scope: !20)
!32 = !DILocation(line: 10, column: 19, scope: !20)
!33 = !DILocation(line: 10, column: 6, scope: !20)
!34 = !DILocation(line: 12, column: 6, scope: !35)
!35 = distinct !DILexicalBlock(scope: !20, file: !3, line: 12, column: 6)
!36 = !DILocation(line: 12, column: 10, scope: !35)
!37 = !DILocation(line: 12, column: 6, scope: !20)
!38 = !DILocation(line: 13, column: 11, scope: !35)
!39 = !DILocation(line: 13, column: 15, scope: !35)
!40 = !DILocation(line: 13, column: 22, scope: !35)
!41 = !DILocation(line: 13, column: 7, scope: !35)
!42 = !DILocation(line: 13, column: 3, scope: !35)
!43 = !DILocation(line: 15, column: 9, scope: !20)
!44 = !DILocation(line: 16, column: 1, scope: !20)
!45 = !DILocation(line: 15, column: 2, scope: !20)
!46 = distinct !DISubprogram(name: "x86_model", scope: !3, file: !3, line: 19, type: !21, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !47)
!47 = !{!48, !49, !50}
!48 = !DILocalVariable(name: "sig", arg: 1, scope: !46, file: !3, line: 19, type: !23)
!49 = !DILocalVariable(name: "fam", scope: !46, file: !3, line: 21, type: !23)
!50 = !DILocalVariable(name: "model", scope: !46, file: !3, line: 21, type: !23)
!51 = !DILocation(line: 19, column: 37, scope: !46)
!52 = !DILocation(line: 21, column: 2, scope: !46)
!53 = !DILocation(line: 21, column: 15, scope: !46)
!54 = !DILocation(line: 21, column: 20, scope: !46)
!55 = !DILocation(line: 23, column: 19, scope: !46)
!56 = !DILocation(line: 23, column: 8, scope: !46)
!57 = !DILocation(line: 23, column: 6, scope: !46)
!58 = !DILocation(line: 25, column: 11, scope: !46)
!59 = !DILocation(line: 25, column: 15, scope: !46)
!60 = !DILocation(line: 25, column: 21, scope: !46)
!61 = !DILocation(line: 25, column: 8, scope: !46)
!62 = !DILocation(line: 27, column: 6, scope: !63)
!63 = distinct !DILexicalBlock(scope: !46, file: !3, line: 27, column: 6)
!64 = !DILocation(line: 27, column: 10, scope: !63)
!65 = !DILocation(line: 27, column: 6, scope: !46)
!66 = !DILocation(line: 28, column: 14, scope: !63)
!67 = !DILocation(line: 28, column: 18, scope: !63)
!68 = !DILocation(line: 28, column: 25, scope: !63)
!69 = !DILocation(line: 28, column: 32, scope: !63)
!70 = !DILocation(line: 28, column: 9, scope: !63)
!71 = !DILocation(line: 28, column: 3, scope: !63)
!72 = !DILocation(line: 30, column: 9, scope: !46)
!73 = !DILocation(line: 31, column: 1, scope: !46)
!74 = !DILocation(line: 30, column: 2, scope: !46)
!75 = distinct !DISubprogram(name: "x86_stepping", scope: !3, file: !3, line: 34, type: !21, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !76)
!76 = !{!77}
!77 = !DILocalVariable(name: "sig", arg: 1, scope: !75, file: !3, line: 34, type: !23)
!78 = !DILocation(line: 34, column: 40, scope: !75)
!79 = !DILocation(line: 36, column: 9, scope: !75)
!80 = !DILocation(line: 36, column: 13, scope: !75)
!81 = !DILocation(line: 36, column: 2, scope: !75)
