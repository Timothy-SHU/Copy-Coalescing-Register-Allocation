; ModuleID = 'drivers/firmware/efi/libstub/skip_spaces.c'
source_filename = "drivers/firmware/efi/libstub/skip_spaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ctype = external hidden constant [0 x i8], align 1

; Function Attrs: noredzone nounwind
define hidden ptr @skip_spaces(ptr noundef %str) #0 !dbg !13 {
entry:
  %str.addr = alloca ptr, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !19, metadata !DIExpression()), !dbg !20
  br label %while.cond, !dbg !21

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %str.addr, align 8, !dbg !22
  %1 = load i8, ptr %0, align 1, !dbg !22
  %conv = zext i8 %1 to i32, !dbg !22
  %idxprom = sext i32 %conv to i64, !dbg !22
  %arrayidx = getelementptr inbounds [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !22
  %2 = load i8, ptr %arrayidx, align 1, !dbg !22
  %conv1 = zext i8 %2 to i32, !dbg !22
  %and = and i32 %conv1, 32, !dbg !22
  %cmp = icmp ne i32 %and, 0, !dbg !22
  br i1 %cmp, label %while.body, label %while.end, !dbg !21

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %str.addr, align 8, !dbg !23
  %incdec.ptr = getelementptr inbounds i8, ptr %3, i32 1, !dbg !23
  store ptr %incdec.ptr, ptr %str.addr, align 8, !dbg !23
  br label %while.cond, !dbg !21, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  %4 = load ptr, ptr %str.addr, align 8, !dbg !28
  ret ptr %4, !dbg !29
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noredzone nounwind "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+x87,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/firmware/efi/libstub/.skip_spaces.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -mcmodel=small -m64 -D __KERNEL__ -std=gnu11 -fPIC -fno-strict-aliasing -mno-red-zone -mno-mmx -mno-sse -fshort-wchar -Wno-pointer-sign -Wno-address-of-packed-member -Wno-gnu -fno-asynchronous-unwind-tables --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -O1 -D DISABLE_BRANCH_PROFILING -include ./include/linux/hidden.h -D __NO_FORTIFY -ffreestanding -fno-stack-protector -fno-addrsig -D __DISABLE_EXPORTS -D KBUILD_MODFILE=\22drivers/firmware/efi/libstub/skip_spaces\22 -D KBUILD_BASENAME=\22skip_spaces\22 -D KBUILD_MODNAME=\22skip_spaces\22 -D __KBUILD_MODNAME=kmod_skip_spaces -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/firmware/efi/libstub/skip_spaces.ll drivers/firmware/efi/libstub/skip_spaces.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/firmware/efi/libstub/skip_spaces.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9e58598246a3c2a7154697bff9fe9c84")
!2 = !{!3, !4, !5}
!3 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 1, !"Code Model", i32 1}
!12 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!13 = distinct !DISubprogram(name: "skip_spaces", scope: !1, file: !1, line: 7, type: !14, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!14 = !DISubroutineType(types: !15)
!15 = !{!5, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!18 = !{!19}
!19 = !DILocalVariable(name: "str", arg: 1, scope: !13, file: !1, line: 7, type: !16)
!20 = !DILocation(line: 7, column: 31, scope: !13)
!21 = !DILocation(line: 9, column: 2, scope: !13)
!22 = !DILocation(line: 9, column: 9, scope: !13)
!23 = !DILocation(line: 10, column: 3, scope: !13)
!24 = distinct !{!24, !21, !25, !26, !27}
!25 = !DILocation(line: 10, column: 5, scope: !13)
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"llvm.loop.unroll.disable"}
!28 = !DILocation(line: 11, column: 17, scope: !13)
!29 = !DILocation(line: 11, column: 2, scope: !13)
