; ModuleID = 'lib/check_signature.c'
source_filename = "lib/check_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_check_signature: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad check_signature ; .previous"

@__UNIQUE_ID___addressable_check_signature67 = internal global ptr @check_signature, section ".discard.addressable", align 8, !dbg !0
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_check_signature67], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @check_signature(ptr noundef %io_addr, ptr noundef %signature, i32 noundef %length) #0 align 16 !dbg !19 {
entry:
  %retval = alloca i32, align 4
  %io_addr.addr = alloca ptr, align 8
  %signature.addr = alloca ptr, align 8
  %length.addr = alloca i32, align 4
  store ptr %io_addr, ptr %io_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %io_addr.addr, metadata !29, metadata !DIExpression()), !dbg !32
  store ptr %signature, ptr %signature.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %signature.addr, metadata !30, metadata !DIExpression()), !dbg !33
  store i32 %length, ptr %length.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %length.addr, metadata !31, metadata !DIExpression()), !dbg !34
  br label %while.cond, !dbg !35

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr %length.addr, align 4, !dbg !36
  %dec = add i32 %0, -1, !dbg !36
  store i32 %dec, ptr %length.addr, align 4, !dbg !36
  %tobool = icmp ne i32 %0, 0, !dbg !35
  br i1 %tobool, label %while.body, label %while.end, !dbg !35

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %io_addr.addr, align 8, !dbg !37
  %call = call zeroext i8 @readb(ptr noundef %1) #4, !dbg !40
  %conv = zext i8 %call to i32, !dbg !40
  %2 = load ptr, ptr %signature.addr, align 8, !dbg !41
  %3 = load i8, ptr %2, align 1, !dbg !42
  %conv1 = zext i8 %3 to i32, !dbg !42
  %cmp = icmp ne i32 %conv, %conv1, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %while.body
  store i32 0, ptr %retval, align 4, !dbg !45
  br label %return, !dbg !45

if.end:                                           ; preds = %while.body
  %4 = load ptr, ptr %io_addr.addr, align 8, !dbg !46
  %incdec.ptr = getelementptr i8, ptr %4, i32 1, !dbg !46
  store ptr %incdec.ptr, ptr %io_addr.addr, align 8, !dbg !46
  %5 = load ptr, ptr %signature.addr, align 8, !dbg !47
  %incdec.ptr3 = getelementptr i8, ptr %5, i32 1, !dbg !47
  store ptr %incdec.ptr3, ptr %signature.addr, align 8, !dbg !47
  br label %while.cond, !dbg !35, !llvm.loop !48

while.end:                                        ; preds = %while.cond
  store i32 1, ptr %retval, align 4, !dbg !52
  br label %return, !dbg !52

return:                                           ; preds = %while.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !53
  ret i32 %6, !dbg !53
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @readb(ptr noundef %addr) #2 align 16 !dbg !54 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !59, metadata !DIExpression()), !dbg !61
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #5, !dbg !61
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !60, metadata !DIExpression()), !dbg !61
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !61
  %1 = call i8 asm sideeffect "movb $1,$0", "=q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %0) #5, !dbg !61, !srcloc !62
  store i8 %1, ptr %ret, align 1, !dbg !61
  %2 = load i8, ptr %ret, align 1, !dbg !61
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #5, !dbg !61
  ret i8 %2, !dbg !61
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_check_signature67", scope: !2, file: !3, line: 27, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.check_signature.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/check_signature\22 -D KBUILD_BASENAME=\22check_signature\22 -D KBUILD_MODNAME=\22check_signature\22 -D __KBUILD_MODNAME=kmod_check_signature -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/check_signature.ll lib/check_signature.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/check_signature.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18d9674e84f1efe8ef314831ba1e44c9")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !8)
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !{!0}
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 8, !"cf-protection-branch", i32 1}
!14 = !{i32 4, !"function_return_thunk_extern", i32 1}
!15 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!16 = !{i32 1, !"Code Model", i32 2}
!17 = !{i32 1, !"override-stack-alignment", i32 8}
!18 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!19 = distinct !DISubprogram(name: "check_signature", scope: !3, file: !3, line: 16, type: !20, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !28)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23, !26, !22}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!28 = !{!29, !30, !31}
!29 = !DILocalVariable(name: "io_addr", arg: 1, scope: !19, file: !3, line: 16, type: !23)
!30 = !DILocalVariable(name: "signature", arg: 2, scope: !19, file: !3, line: 17, type: !26)
!31 = !DILocalVariable(name: "length", arg: 3, scope: !19, file: !3, line: 17, type: !22)
!32 = !DILocation(line: 16, column: 50, scope: !19)
!33 = !DILocation(line: 17, column: 25, scope: !19)
!34 = !DILocation(line: 17, column: 40, scope: !19)
!35 = !DILocation(line: 19, column: 2, scope: !19)
!36 = !DILocation(line: 19, column: 15, scope: !19)
!37 = !DILocation(line: 20, column: 13, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !3, line: 20, column: 7)
!39 = distinct !DILexicalBlock(scope: !19, file: !3, line: 19, column: 19)
!40 = !DILocation(line: 20, column: 7, scope: !38)
!41 = !DILocation(line: 20, column: 26, scope: !38)
!42 = !DILocation(line: 20, column: 25, scope: !38)
!43 = !DILocation(line: 20, column: 22, scope: !38)
!44 = !DILocation(line: 20, column: 7, scope: !39)
!45 = !DILocation(line: 21, column: 4, scope: !38)
!46 = !DILocation(line: 22, column: 10, scope: !39)
!47 = !DILocation(line: 23, column: 12, scope: !39)
!48 = distinct !{!48, !35, !49, !50, !51}
!49 = !DILocation(line: 24, column: 2, scope: !19)
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !DILocation(line: 25, column: 2, scope: !19)
!53 = !DILocation(line: 26, column: 1, scope: !19)
!54 = distinct !DISubprogram(name: "readb", scope: !55, file: !55, line: 56, type: !56, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !58)
!55 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!56 = !DISubroutineType(types: !57)
!57 = !{!8, !23}
!58 = !{!59, !60}
!59 = !DILocalVariable(name: "addr", arg: 1, scope: !54, file: !55, line: 56, type: !23)
!60 = !DILocalVariable(name: "ret", scope: !54, file: !55, line: 56, type: !8)
!61 = !DILocation(line: 56, column: 1, scope: !54)
!62 = !{i64 2148163235}
