; ModuleID = 'kernel/crash_dump.c'
source_filename = "kernel/crash_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_elfcorehdr_addr: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad elfcorehdr_addr ; .previous"

%struct.obs_kernel_param = type { ptr, ptr, i32 }

@elfcorehdr_addr = hidden global i64 -1, align 8, !dbg !0
@__UNIQUE_ID___addressable_elfcorehdr_addr321 = internal global ptr @elfcorehdr_addr, section ".discard.addressable", align 8, !dbg !7
@__setup_str_setup_elfcorehdr = internal constant [11 x i8] c"elfcorehdr\00", section ".init.rodata", align 1, !dbg !28
@__setup_setup_elfcorehdr = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_elfcorehdr, ptr @setup_elfcorehdr, i32 1 }, section ".init.setup", align 8, !dbg !9
@elfcorehdr_size = hidden global i64 0, align 8, !dbg !25
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_elfcorehdr_addr321, ptr @__setup_setup_elfcorehdr], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @setup_elfcorehdr(ptr noundef %arg) #0 section ".init.text" align 16 !dbg !42 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  %end = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !44, metadata !DIExpression()), !dbg !46
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #4, !dbg !47
  call void @llvm.dbg.declare(metadata ptr %end, metadata !45, metadata !DIExpression()), !dbg !48
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !49
  %tobool = icmp ne ptr %0, null, !dbg !49
  br i1 %tobool, label %if.end, label %if.then, !dbg !51

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !52
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !52

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %arg.addr, align 8, !dbg !53
  %call = call i64 @memparse(ptr noundef %1, ptr noundef %end) #5, !dbg !54
  store i64 %call, ptr @elfcorehdr_addr, align 8, !dbg !55
  %2 = load ptr, ptr %end, align 8, !dbg !56
  %3 = load i8, ptr %2, align 1, !dbg !58
  %conv = zext i8 %3 to i32, !dbg !58
  %cmp = icmp eq i32 %conv, 64, !dbg !59
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !60

if.then2:                                         ; preds = %if.end
  %4 = load i64, ptr @elfcorehdr_addr, align 8, !dbg !61
  store i64 %4, ptr @elfcorehdr_size, align 8, !dbg !63
  %5 = load ptr, ptr %end, align 8, !dbg !64
  %add.ptr = getelementptr i8, ptr %5, i64 1, !dbg !65
  %call3 = call i64 @memparse(ptr noundef %add.ptr, ptr noundef %end) #5, !dbg !66
  store i64 %call3, ptr @elfcorehdr_addr, align 8, !dbg !67
  br label %if.end4, !dbg !68

if.end4:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr %end, align 8, !dbg !69
  %7 = load ptr, ptr %arg.addr, align 8, !dbg !70
  %cmp5 = icmp ugt ptr %6, %7, !dbg !71
  %8 = zext i1 %cmp5 to i64, !dbg !69
  %cond = select i1 %cmp5, i32 0, i32 -22, !dbg !69
  store i32 %cond, ptr %retval, align 4, !dbg !72
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !72

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #4, !dbg !73
  %9 = load i32, ptr %retval, align 4, !dbg !73
  ret i32 %9, !dbg !73
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !74 dso_local i64 @memparse(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "elfcorehdr_addr", scope: !2, file: !3, line: 15, type: !27, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.crash_dump.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/crash_dump\22 -D KBUILD_BASENAME=\22crash_dump\22 -D KBUILD_MODNAME=\22crash_dump\22 -D __KBUILD_MODNAME=kmod_crash_dump -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/crash_dump.ll kernel/crash_dump.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/crash_dump.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71491abef24b5351b4d21fb801e6c477")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!0, !7, !9, !25, !28}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_elfcorehdr_addr321", scope: !2, file: !3, line: 16, type: !5, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "__setup_setup_elfcorehdr", scope: !2, file: !3, line: 41, type: !11, isLocal: true, isDefinition: true, align: 64)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !12, line: 324, size: 192, elements: !13)
!12 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!13 = !{!14, !18, !24}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !11, file: !12, line: 325, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !11, file: !12, line: 326, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DISubroutineType(types: !21)
!21 = !{!22, !23}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !11, file: !12, line: 327, baseType: !22, size: 32, offset: 128)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "elfcorehdr_size", scope: !2, file: !3, line: 21, type: !27, isLocal: false, isDefinition: true)
!27 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "__setup_str_setup_elfcorehdr", scope: !2, file: !3, line: 41, type: !30, isLocal: true, isDefinition: true, align: 8)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 88, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 11)
!33 = !{i32 7, !"Dwarf Version", i32 5}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 8, !"cf-protection-branch", i32 1}
!37 = !{i32 4, !"function_return_thunk_extern", i32 1}
!38 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!39 = !{i32 1, !"Code Model", i32 2}
!40 = !{i32 1, !"override-stack-alignment", i32 8}
!41 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!42 = distinct !DISubprogram(name: "setup_elfcorehdr", scope: !3, file: !3, line: 29, type: !20, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !43)
!43 = !{!44, !45}
!44 = !DILocalVariable(name: "arg", arg: 1, scope: !42, file: !3, line: 29, type: !23)
!45 = !DILocalVariable(name: "end", scope: !42, file: !3, line: 31, type: !23)
!46 = !DILocation(line: 29, column: 42, scope: !42)
!47 = !DILocation(line: 31, column: 2, scope: !42)
!48 = !DILocation(line: 31, column: 8, scope: !42)
!49 = !DILocation(line: 32, column: 7, scope: !50)
!50 = distinct !DILexicalBlock(scope: !42, file: !3, line: 32, column: 6)
!51 = !DILocation(line: 32, column: 6, scope: !42)
!52 = !DILocation(line: 33, column: 3, scope: !50)
!53 = !DILocation(line: 34, column: 29, scope: !42)
!54 = !DILocation(line: 34, column: 20, scope: !42)
!55 = !DILocation(line: 34, column: 18, scope: !42)
!56 = !DILocation(line: 35, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !42, file: !3, line: 35, column: 6)
!58 = !DILocation(line: 35, column: 6, scope: !57)
!59 = !DILocation(line: 35, column: 11, scope: !57)
!60 = !DILocation(line: 35, column: 6, scope: !42)
!61 = !DILocation(line: 36, column: 21, scope: !62)
!62 = distinct !DILexicalBlock(scope: !57, file: !3, line: 35, column: 19)
!63 = !DILocation(line: 36, column: 19, scope: !62)
!64 = !DILocation(line: 37, column: 30, scope: !62)
!65 = !DILocation(line: 37, column: 34, scope: !62)
!66 = !DILocation(line: 37, column: 21, scope: !62)
!67 = !DILocation(line: 37, column: 19, scope: !62)
!68 = !DILocation(line: 38, column: 2, scope: !62)
!69 = !DILocation(line: 39, column: 9, scope: !42)
!70 = !DILocation(line: 39, column: 15, scope: !42)
!71 = !DILocation(line: 39, column: 13, scope: !42)
!72 = !DILocation(line: 39, column: 2, scope: !42)
!73 = !DILocation(line: 40, column: 1, scope: !42)
!74 = !DISubprogram(name: "memparse", scope: !75, file: !75, line: 209, type: !76, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!75 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!76 = !DISubroutineType(types: !77)
!77 = !{!27, !15, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
