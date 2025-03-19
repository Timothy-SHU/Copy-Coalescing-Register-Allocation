; ModuleID = 'net/core/netevent.c'
source_filename = "net/core/netevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_register_netevent_notifier: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad register_netevent_notifier ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_unregister_netevent_notifier: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad unregister_netevent_notifier ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_call_netevent_notifiers: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad call_netevent_notifiers ; .previous"

%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@netevent_notif_chain = internal global %struct.atomic_notifier_head zeroinitializer, align 8, !dbg !0
@__UNIQUE_ID___addressable_register_netevent_notifier405 = internal global ptr @register_netevent_notifier, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_unregister_netevent_notifier406 = internal global ptr @unregister_netevent_notifier, section ".discard.addressable", align 8, !dbg !9
@__UNIQUE_ID___addressable_call_netevent_notifiers407 = internal global ptr @call_netevent_notifiers, section ".discard.addressable", align 8, !dbg !11
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_register_netevent_notifier405, ptr @__UNIQUE_ID___addressable_unregister_netevent_notifier406, ptr @__UNIQUE_ID___addressable_call_netevent_notifiers407], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @register_netevent_notifier(ptr noundef %nb) #0 align 16 !dbg !82 {
entry:
  %nb.addr = alloca ptr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !86, metadata !DIExpression()), !dbg !87
  %0 = load ptr, ptr %nb.addr, align 8, !dbg !88
  %call = call i32 @atomic_notifier_chain_register(ptr noundef @netevent_notif_chain, ptr noundef %0) #3, !dbg !89
  ret i32 %call, !dbg !90
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !91 dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @unregister_netevent_notifier(ptr noundef %nb) #0 align 16 !dbg !95 {
entry:
  %nb.addr = alloca ptr, align 8
  store ptr %nb, ptr %nb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nb.addr, metadata !97, metadata !DIExpression()), !dbg !98
  %0 = load ptr, ptr %nb.addr, align 8, !dbg !99
  %call = call i32 @atomic_notifier_chain_unregister(ptr noundef @netevent_notif_chain, ptr noundef %0) #3, !dbg !100
  ret i32 %call, !dbg !101
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !102 dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @call_netevent_notifiers(i64 noundef %val, ptr noundef %v) #0 align 16 !dbg !103 {
entry:
  %val.addr = alloca i64, align 8
  %v.addr = alloca ptr, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !107, metadata !DIExpression()), !dbg !109
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !108, metadata !DIExpression()), !dbg !110
  %0 = load i64, ptr %val.addr, align 8, !dbg !111
  %1 = load ptr, ptr %v.addr, align 8, !dbg !112
  %call = call i32 @atomic_notifier_call_chain(ptr noundef @netevent_notif_chain, i64 noundef %0, ptr noundef %1) #3, !dbg !113
  ret i32 %call, !dbg !114
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !115 dso_local i32 @atomic_notifier_call_chain(ptr noundef, i64 noundef, ptr noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "netevent_notif_chain", scope: !2, file: !3, line: 17, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/core/.netevent.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/core/netevent\22 -D KBUILD_BASENAME=\22netevent\22 -D KBUILD_MODNAME=\22netevent\22 -D __KBUILD_MODNAME=kmod_netevent -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/core/netevent.ll net/core/netevent.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !6, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "net/core/netevent.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27fceb68364c1eabde689a4c19ac4295")
!4 = !{!5}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{!7, !9, !11, !0}
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_register_netevent_notifier405", scope: !2, file: !3, line: 32, type: !5, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_unregister_netevent_notifier406", scope: !2, file: !3, line: 48, type: !5, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_call_netevent_notifiers407", scope: !2, file: !3, line: 63, type: !5, isLocal: true, isDefinition: true)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "atomic_notifier_head", file: !14, line: 60, size: 128, elements: !15)
!14 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!15 = !{!16, !61}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !13, file: !14, line: 61, baseType: !17, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !18, line: 29, baseType: !19)
!18 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !18, line: 17, size: 32, elements: !20)
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, scope: !19, file: !18, line: 18, baseType: !22, size: 32)
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !19, file: !18, line: 18, size: 32, elements: !23)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !22, file: !18, line: 19, baseType: !25, size: 32)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !26, line: 14, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!27 = !{!28}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !25, file: !26, line: 15, baseType: !29, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !30, line: 44, baseType: !31)
!30 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !30, line: 14, size: 32, elements: !32)
!32 = !{!33}
!33 = !DIDerivedType(tag: DW_TAG_member, scope: !31, file: !30, line: 15, baseType: !34, size: 32)
!34 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !31, file: !30, line: 15, size: 32, elements: !35)
!35 = !{!36, !43, !53}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !34, file: !30, line: 16, baseType: !37, size: 32)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !38, line: 174, baseType: !39)
!38 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 172, size: 32, elements: !40)
!40 = !{!41}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !39, file: !38, line: 173, baseType: !42, size: 32)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, scope: !34, file: !30, line: 24, baseType: !44, size: 16)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !30, line: 24, size: 16, elements: !45)
!45 = !{!46, !52}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !44, file: !30, line: 25, baseType: !47, size: 8)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !48, line: 17, baseType: !49)
!48 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !50, line: 21, baseType: !51)
!50 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!51 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !44, file: !30, line: 26, baseType: !47, size: 8, offset: 8)
!53 = !DIDerivedType(tag: DW_TAG_member, scope: !34, file: !30, line: 28, baseType: !54, size: 32)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !34, file: !30, line: 28, size: 32, elements: !55)
!55 = !{!56, !60}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !54, file: !30, line: 29, baseType: !57, size: 16)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !48, line: 19, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !50, line: 24, baseType: !59)
!59 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !54, file: !30, line: 30, baseType: !57, size: 16, offset: 16)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !13, file: !14, line: 62, baseType: !62, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !14, line: 54, size: 192, elements: !64)
!64 = !{!65, !71, !72}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !63, file: !14, line: 55, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !14, line: 51, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!42, !62, !70, !5}
!70 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !63, file: !14, line: 56, baseType: !62, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !63, file: !14, line: 57, baseType: !42, size: 32, offset: 128)
!73 = !{i32 7, !"Dwarf Version", i32 5}
!74 = !{i32 2, !"Debug Info Version", i32 3}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 8, !"cf-protection-branch", i32 1}
!77 = !{i32 4, !"function_return_thunk_extern", i32 1}
!78 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!79 = !{i32 1, !"Code Model", i32 2}
!80 = !{i32 1, !"override-stack-alignment", i32 8}
!81 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!82 = distinct !DISubprogram(name: "register_netevent_notifier", scope: !3, file: !3, line: 28, type: !83, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !85)
!83 = !DISubroutineType(types: !84)
!84 = !{!42, !62}
!85 = !{!86}
!86 = !DILocalVariable(name: "nb", arg: 1, scope: !82, file: !3, line: 28, type: !62)
!87 = !DILocation(line: 28, column: 55, scope: !82)
!88 = !DILocation(line: 30, column: 63, scope: !82)
!89 = !DILocation(line: 30, column: 9, scope: !82)
!90 = !DILocation(line: 30, column: 2, scope: !82)
!91 = !DISubprogram(name: "atomic_notifier_chain_register", scope: !14, file: !14, line: 146, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!92 = !DISubroutineType(types: !93)
!93 = !{!42, !94, !62}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!95 = distinct !DISubprogram(name: "unregister_netevent_notifier", scope: !3, file: !3, line: 44, type: !83, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !96)
!96 = !{!97}
!97 = !DILocalVariable(name: "nb", arg: 1, scope: !95, file: !3, line: 44, type: !62)
!98 = !DILocation(line: 44, column: 57, scope: !95)
!99 = !DILocation(line: 46, column: 65, scope: !95)
!100 = !DILocation(line: 46, column: 9, scope: !95)
!101 = !DILocation(line: 46, column: 2, scope: !95)
!102 = !DISubprogram(name: "atomic_notifier_chain_unregister", scope: !14, file: !14, line: 160, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = distinct !DISubprogram(name: "call_netevent_notifiers", scope: !3, file: !3, line: 59, type: !104, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{!42, !70, !5}
!106 = !{!107, !108}
!107 = !DILocalVariable(name: "val", arg: 1, scope: !103, file: !3, line: 59, type: !70)
!108 = !DILocalVariable(name: "v", arg: 2, scope: !103, file: !3, line: 59, type: !5)
!109 = !DILocation(line: 59, column: 43, scope: !103)
!110 = !DILocation(line: 59, column: 54, scope: !103)
!111 = !DILocation(line: 61, column: 59, scope: !103)
!112 = !DILocation(line: 61, column: 64, scope: !103)
!113 = !DILocation(line: 61, column: 9, scope: !103)
!114 = !DILocation(line: 61, column: 2, scope: !103)
!115 = !DISubprogram(name: "atomic_notifier_call_chain", scope: !14, file: !14, line: 169, type: !116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!116 = !DISubroutineType(types: !117)
!117 = !{!42, !94, !70, !5}
