; ModuleID = 'fs/fs_types.c'
source_filename = "fs/fs_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fs_ftype_to_dtype: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad fs_ftype_to_dtype ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fs_umode_to_ftype: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad fs_umode_to_ftype ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_fs_umode_to_dtype: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad fs_umode_to_dtype ; .previous"

@fs_dtype_by_ftype = internal constant [8 x i8] c"\00\08\04\02\06\01\0C\0A", align 1, !dbg !0
@__UNIQUE_ID___addressable_fs_ftype_to_dtype249 = internal global ptr @fs_ftype_to_dtype, section ".discard.addressable", align 8, !dbg !7
@fs_ftype_by_dtype = internal constant [16 x i8] c"\00\05\03\00\02\00\04\00\01\00\07\00\06\00\00\00", align 16, !dbg !13
@__UNIQUE_ID___addressable_fs_umode_to_ftype250 = internal global ptr @fs_umode_to_ftype, section ".discard.addressable", align 8, !dbg !9
@__UNIQUE_ID___addressable_fs_umode_to_dtype251 = internal global ptr @fs_umode_to_dtype, section ".discard.addressable", align 8, !dbg !11
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_fs_ftype_to_dtype249, ptr @__UNIQUE_ID___addressable_fs_umode_to_ftype250, ptr @__UNIQUE_ID___addressable_fs_umode_to_dtype251], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @fs_ftype_to_dtype(i32 noundef %filetype) #0 align 16 !dbg !32 {
entry:
  %retval = alloca i8, align 1
  %filetype.addr = alloca i32, align 4
  store i32 %filetype, ptr %filetype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %filetype.addr, metadata !37, metadata !DIExpression()), !dbg !38
  %0 = load i32, ptr %filetype.addr, align 4, !dbg !39
  %cmp = icmp uge i32 %0, 8, !dbg !41
  br i1 %cmp, label %if.then, label %if.end, !dbg !42

if.then:                                          ; preds = %entry
  store i8 0, ptr %retval, align 1, !dbg !43
  br label %return, !dbg !43

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %filetype.addr, align 4, !dbg !44
  %idxprom = zext i32 %1 to i64, !dbg !45
  %arrayidx = getelementptr [8 x i8], ptr @fs_dtype_by_ftype, i64 0, i64 %idxprom, !dbg !45
  %2 = load i8, ptr %arrayidx, align 1, !dbg !45
  store i8 %2, ptr %retval, align 1, !dbg !46
  br label %return, !dbg !46

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, ptr %retval, align 1, !dbg !47
  ret i8 %3, !dbg !47
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @fs_umode_to_ftype(i16 noundef zeroext %mode) #0 align 16 !dbg !48 {
entry:
  %mode.addr = alloca i16, align 2
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !55, metadata !DIExpression()), !dbg !56
  %0 = load i16, ptr %mode.addr, align 2, !dbg !57
  %conv = zext i16 %0 to i32, !dbg !57
  %and = and i32 %conv, 61440, !dbg !57
  %shr = ashr i32 %and, 12, !dbg !57
  %idxprom = sext i32 %shr to i64, !dbg !58
  %arrayidx = getelementptr [16 x i8], ptr @fs_ftype_by_dtype, i64 0, i64 %idxprom, !dbg !58
  %1 = load i8, ptr %arrayidx, align 1, !dbg !58
  ret i8 %1, !dbg !59
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @fs_umode_to_dtype(i16 noundef zeroext %mode) #0 align 16 !dbg !60 {
entry:
  %mode.addr = alloca i16, align 2
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = load i16, ptr %mode.addr, align 2, !dbg !64
  %call = call zeroext i8 @fs_umode_to_ftype(i16 noundef zeroext %0) #2, !dbg !65
  %conv = zext i8 %call to i32, !dbg !65
  %call1 = call zeroext i8 @fs_ftype_to_dtype(i32 noundef %conv) #2, !dbg !66
  ret i8 %call1, !dbg !67
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "fs_dtype_by_ftype", scope: !2, file: !3, line: 8, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.fs_types.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/fs_types\22 -D KBUILD_BASENAME=\22fs_types\22 -D KBUILD_MODNAME=\22fs_types\22 -D __KBUILD_MODNAME=kmod_fs_types -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/fs_types.ll fs/fs_types.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/fs_types.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d5739273e7d25aef506e802a7b510714")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!7, !9, !11, !0, !13}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fs_ftype_to_dtype249", scope: !2, file: !3, line: 44, type: !5, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fs_umode_to_ftype250", scope: !2, file: !3, line: 81, type: !5, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_fs_umode_to_dtype251", scope: !2, file: !3, line: 105, type: !5, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "fs_ftype_by_dtype", scope: !2, file: !3, line: 50, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 128, elements: !18)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !{!19}
!19 = !DISubrange(count: 16)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 64, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 8)
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 8, !"cf-protection-branch", i32 1}
!27 = !{i32 4, !"function_return_thunk_extern", i32 1}
!28 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!29 = !{i32 1, !"Code Model", i32 2}
!30 = !{i32 1, !"override-stack-alignment", i32 8}
!31 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!32 = distinct !DISubprogram(name: "fs_ftype_to_dtype", scope: !3, file: !3, line: 37, type: !33, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{!17, !35}
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !{!37}
!37 = !DILocalVariable(name: "filetype", arg: 1, scope: !32, file: !3, line: 37, type: !35)
!38 = !DILocation(line: 37, column: 46, scope: !32)
!39 = !DILocation(line: 39, column: 6, scope: !40)
!40 = distinct !DILexicalBlock(scope: !32, file: !3, line: 39, column: 6)
!41 = !DILocation(line: 39, column: 15, scope: !40)
!42 = !DILocation(line: 39, column: 6, scope: !32)
!43 = !DILocation(line: 40, column: 3, scope: !40)
!44 = !DILocation(line: 42, column: 27, scope: !32)
!45 = !DILocation(line: 42, column: 9, scope: !32)
!46 = !DILocation(line: 42, column: 2, scope: !32)
!47 = !DILocation(line: 43, column: 1, scope: !32)
!48 = distinct !DISubprogram(name: "fs_umode_to_ftype", scope: !3, file: !3, line: 77, type: !49, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !54)
!49 = !DISubroutineType(types: !50)
!50 = !{!17, !51}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !52, line: 24, baseType: !53)
!52 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !{!55}
!55 = !DILocalVariable(name: "mode", arg: 1, scope: !48, file: !3, line: 77, type: !51)
!56 = !DILocation(line: 77, column: 41, scope: !48)
!57 = !DILocation(line: 79, column: 27, scope: !48)
!58 = !DILocation(line: 79, column: 9, scope: !48)
!59 = !DILocation(line: 79, column: 2, scope: !48)
!60 = distinct !DISubprogram(name: "fs_umode_to_dtype", scope: !3, file: !3, line: 101, type: !49, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !61)
!61 = !{!62}
!62 = !DILocalVariable(name: "mode", arg: 1, scope: !60, file: !3, line: 101, type: !51)
!63 = !DILocation(line: 101, column: 41, scope: !60)
!64 = !DILocation(line: 103, column: 45, scope: !60)
!65 = !DILocation(line: 103, column: 27, scope: !60)
!66 = !DILocation(line: 103, column: 9, scope: !60)
!67 = !DILocation(line: 103, column: 2, scope: !60)
