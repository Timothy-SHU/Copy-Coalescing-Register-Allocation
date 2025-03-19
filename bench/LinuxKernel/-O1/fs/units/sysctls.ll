; ModuleID = 'fs/sysctls.c'
source_filename = "fs/sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcallearly.init..kmod_sysctls__67_38_init_fs_sysctls\22, \22a\22\09\09"
module asm "__initcall__kmod_sysctls__67_38_init_fs_sysctlsearly:\09\09\09"
module asm ".long\09__initstub__kmod_sysctls__67_38_init_fs_sysctlsearly - .\09"
module asm ".previous\09\09\09\09\09"

%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }

@__UNIQUE_ID___addressable___initstub__kmod_sysctls__67_38_init_fs_sysctlsearly68 = internal global ptr @__initstub__kmod_sysctls__67_38_init_fs_sysctlsearly, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"fs\00", align 1, !dbg !104
@fs_shared_sysctls = internal global [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.2, ptr @fs_overflowuid, i32 4, i16 420, i32 0, ptr @proc_dointvec_minmax, ptr null, ptr @sysctl_vals, ptr getelementptr (i8, ptr @sysctl_vals, i64 40) }, %struct.ctl_table { ptr @.str.3, ptr @fs_overflowgid, i32 4, i16 420, i32 0, ptr @proc_dointvec_minmax, ptr null, ptr @sysctl_vals, ptr getelementptr (i8, ptr @sysctl_vals, i64 40) }, %struct.ctl_table zeroinitializer], align 16, !dbg !121
@.str.1 = private unnamed_addr constant [18 x i8] c"fs_shared_sysctls\00", align 1, !dbg !109
@.str.2 = private unnamed_addr constant [12 x i8] c"overflowuid\00", align 1, !dbg !114
@fs_overflowuid = external dso_local global i32, align 4
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"overflowgid\00", align 1, !dbg !119
@fs_overflowgid = external dso_local global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_sysctls__67_38_init_fs_sysctlsearly68], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_sysctls__67_38_init_fs_sysctlsearly() #0 section ".init.text" align 16 !dbg !133 {
entry:
  %call = call i32 @init_fs_sysctls() #2, !dbg !136
  ret i32 %call, !dbg !136
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_fs_sysctls() #0 section ".init.text" align 16 !dbg !137 {
entry:
  call void @__register_sysctl_init(ptr noundef @.str, ptr noundef @fs_shared_sysctls, ptr noundef @.str.1, i64 noundef 3) #3, !dbg !138
  ret i32 0, !dbg !139
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !140 dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { cold noredzone }
attributes #3 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_sysctls__67_38_init_fs_sysctlsearly68", scope: !2, file: !3, line: 38, type: !14, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/.sysctls.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/sysctls\22 -D KBUILD_BASENAME=\22sysctls\22 -D KBUILD_MODNAME=\22sysctls\22 -D __KBUILD_MODNAME=kmod_sysctls -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/sysctls.ll fs/sysctls.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !103, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/sysctls.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a08855e6497fa683ada56f9d970ff22")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !6, line: 147, baseType: !98, size: 32, elements: !99)
!6 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !6, line: 135, size: 512, elements: !8)
!8 = !{!9, !13, !15, !17, !21, !22, !38, !96, !97}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !7, file: !6, line: 136, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 137, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !7, file: !6, line: 138, baseType: !16, size: 32, offset: 128)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !7, file: !6, line: 139, baseType: !18, size: 16, offset: 160)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !19, line: 24, baseType: !20)
!19 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!20 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !6, line: 150, baseType: !5, size: 32, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !7, file: !6, line: 151, baseType: !23, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !6, line: 64, baseType: !25)
!25 = !DISubroutineType(types: !26)
!26 = !{!16, !27, !16, !14, !28, !34}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 61, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !31, line: 72, baseType: !32)
!31 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !31, line: 16, baseType: !33)
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !19, line: 52, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !31, line: 88, baseType: !37)
!37 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !7, file: !6, line: 152, baseType: !39, size: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !6, line: 117, size: 256, elements: !41)
!41 = !{!42, !47}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !40, file: !6, line: 118, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !19, line: 174, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 172, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !44, file: !19, line: 173, baseType: !16, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !40, file: !6, line: 119, baseType: !48, size: 192, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !49, line: 41, baseType: !50)
!49 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !49, line: 37, size: 192, elements: !51)
!51 = !{!52, !90}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !50, file: !49, line: 38, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !54, line: 29, baseType: !55)
!54 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !54, line: 17, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, scope: !55, file: !54, line: 18, baseType: !58, size: 32)
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !54, line: 18, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !58, file: !54, line: 19, baseType: !61, size: 32)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !62, line: 14, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !61, file: !62, line: 15, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !66, line: 44, baseType: !67)
!66 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !66, line: 14, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !66, line: 15, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !66, line: 15, size: 32, elements: !71)
!71 = !{!72, !73, !83}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !70, file: !66, line: 16, baseType: !43, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !66, line: 24, baseType: !74, size: 16)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 24, size: 16, elements: !75)
!75 = !{!76, !82}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !74, file: !66, line: 25, baseType: !77, size: 8)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !78, line: 17, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !80, line: 21, baseType: !81)
!80 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !74, file: !66, line: 26, baseType: !77, size: 8, offset: 8)
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !66, line: 28, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 28, size: 32, elements: !85)
!85 = !{!86, !89}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !84, file: !66, line: 29, baseType: !87, size: 16)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !78, line: 19, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !80, line: 24, baseType: !20)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !84, file: !66, line: 30, baseType: !87, size: 16, offset: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !50, file: !49, line: 39, baseType: !91, size: 128, offset: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !19, line: 190, size: 128, elements: !92)
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !19, line: 191, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !91, file: !19, line: 191, baseType: !94, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !7, file: !6, line: 153, baseType: !14, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !7, file: !6, line: 154, baseType: !14, size: 64, offset: 448)
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !{!100, !101}
!100 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!101 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!102 = !{!14, !16}
!103 = !{!0, !104, !109, !114, !119, !121}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !3, line: 34, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 24, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 3)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !3, line: 34, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 144, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 18)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !3, line: 12, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 96, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 12)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !3, line: 21, type: !116, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "fs_shared_sysctls", scope: !2, file: !3, line: 10, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1536, elements: !107)
!124 = !{i32 7, !"Dwarf Version", i32 5}
!125 = !{i32 2, !"Debug Info Version", i32 3}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 8, !"cf-protection-branch", i32 1}
!128 = !{i32 4, !"function_return_thunk_extern", i32 1}
!129 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!130 = !{i32 1, !"Code Model", i32 2}
!131 = !{i32 1, !"override-stack-alignment", i32 8}
!132 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!133 = distinct !DISubprogram(name: "__initstub__kmod_sysctls__67_38_init_fs_sysctlsearly", scope: !3, file: !3, line: 38, type: !134, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!134 = !DISubroutineType(types: !135)
!135 = !{!16}
!136 = !DILocation(line: 38, column: 1, scope: !133)
!137 = distinct !DISubprogram(name: "init_fs_sysctls", scope: !3, file: !3, line: 32, type: !134, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!138 = !DILocation(line: 34, column: 2, scope: !137)
!139 = !DILocation(line: 35, column: 2, scope: !137)
!140 = !DISubprogram(name: "__register_sysctl_init", scope: !6, file: !6, line: 237, type: !141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !10, !27, !10, !29}
