; ModuleID = 'fs/nfs/sysctl.c'
source_filename = "fs/nfs/sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"fs/nfs\00", align 1, !dbg !0
@nfs_cb_sysctls = internal global [3 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr @nfs_mountpoint_expiry_timeout, i32 4, i16 420, i32 0, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.2, ptr @nfs_congestion_kb, i32 4, i16 420, i32 0, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], align 16, !dbg !7
@nfs_callback_sysctl_table = internal global ptr null, align 8, !dbg !109
@.str.1 = private unnamed_addr constant [23 x i8] c"nfs_mountpoint_timeout\00", align 1, !dbg !221
@nfs_mountpoint_expiry_timeout = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"nfs_congestion_kb\00", align 1, !dbg !226
@nfs_congestion_kb = external dso_local global i32, align 4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @nfs_register_sysctl() #0 align 16 !dbg !243 {
entry:
  %retval = alloca i32, align 4
  %call = call ptr @register_sysctl_sz(ptr noundef @.str, ptr noundef @nfs_cb_sysctls, i64 noundef 3) #2, !dbg !246
  store ptr %call, ptr @nfs_callback_sysctl_table, align 8, !dbg !247
  %0 = load ptr, ptr @nfs_callback_sysctl_table, align 8, !dbg !248
  %cmp = icmp eq ptr %0, null, !dbg !250
  br i1 %cmp, label %if.then, label %if.end, !dbg !251

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !252
  br label %return, !dbg !252

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !253
  br label %return, !dbg !253

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !254
  ret i32 %1, !dbg !254
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !255 dso_local ptr @register_sysctl_sz(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @nfs_unregister_sysctl() #0 align 16 !dbg !258 {
entry:
  %0 = load ptr, ptr @nfs_callback_sysctl_table, align 8, !dbg !261
  call void @unregister_sysctl_table(ptr noundef %0) #2, !dbg !262
  store ptr null, ptr @nfs_callback_sysctl_table, align 8, !dbg !263
  ret void, !dbg !264
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !265 dso_local void @unregister_sysctl_table(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!234, !235, !236, !237, !238, !239, !240, !241}
!llvm.ident = !{!242}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 37, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "fs/nfs/sysctl.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bee1057d93c5abc48e8a753df5384b34")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "nfs_cb_sysctls", scope: !9, file: !2, line: 17, type: !231, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/nfs/.sysctl.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/nfs/nfs\22 -D KBUILD_BASENAME=\22sysctl\22 -D KBUILD_MODNAME=\22nfs\22 -D __KBUILD_MODNAME=kmod_nfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/nfs/sysctl.ll fs/nfs/sysctl.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !107, globals: !108, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !13, file: !12, line: 147, baseType: !103, size: 32, elements: !104)
!12 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !12, line: 135, size: 512, elements: !14)
!14 = !{!15, !18, !20, !22, !26, !27, !43, !101, !102}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !13, file: !12, line: 136, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !13, file: !12, line: 137, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !13, file: !12, line: 138, baseType: !21, size: 32, offset: 128)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !13, file: !12, line: 139, baseType: !23, size: 16, offset: 160)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !24, line: 24, baseType: !25)
!24 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 150, baseType: !11, size: 32, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !13, file: !12, line: 151, baseType: !28, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !12, line: 64, baseType: !30)
!30 = !DISubroutineType(types: !31)
!31 = !{!21, !32, !21, !19, !33, !39}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 61, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !36, line: 72, baseType: !37)
!36 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !36, line: 16, baseType: !38)
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !24, line: 52, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !36, line: 88, baseType: !42)
!42 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !13, file: !12, line: 152, baseType: !44, size: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !12, line: 117, size: 256, elements: !46)
!46 = !{!47, !52}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !45, file: !12, line: 118, baseType: !48, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !24, line: 174, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 172, size: 32, elements: !50)
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !49, file: !24, line: 173, baseType: !21, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !45, file: !12, line: 119, baseType: !53, size: 192, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !54, line: 41, baseType: !55)
!54 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !54, line: 37, size: 192, elements: !56)
!56 = !{!57, !95}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !55, file: !54, line: 38, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !59, line: 29, baseType: !60)
!59 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !59, line: 17, size: 32, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, scope: !60, file: !59, line: 18, baseType: !63, size: 32)
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !59, line: 18, size: 32, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !63, file: !59, line: 19, baseType: !66, size: 32)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !67, line: 14, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !66, file: !67, line: 15, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !71, line: 44, baseType: !72)
!71 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !71, line: 14, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, scope: !72, file: !71, line: 15, baseType: !75, size: 32)
!75 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !72, file: !71, line: 15, size: 32, elements: !76)
!76 = !{!77, !78, !88}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !75, file: !71, line: 16, baseType: !48, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !75, file: !71, line: 24, baseType: !79, size: 16)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !75, file: !71, line: 24, size: 16, elements: !80)
!80 = !{!81, !87}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !79, file: !71, line: 25, baseType: !82, size: 8)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !83, line: 17, baseType: !84)
!83 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !85, line: 21, baseType: !86)
!85 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!86 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !79, file: !71, line: 26, baseType: !82, size: 8, offset: 8)
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !75, file: !71, line: 28, baseType: !89, size: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !75, file: !71, line: 28, size: 32, elements: !90)
!90 = !{!91, !94}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !89, file: !71, line: 29, baseType: !92, size: 16)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !83, line: 19, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !85, line: 24, baseType: !25)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !89, file: !71, line: 30, baseType: !92, size: 16, offset: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !55, file: !54, line: 39, baseType: !96, size: 128, offset: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !24, line: 190, size: 128, elements: !97)
!97 = !{!98, !100}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !96, file: !24, line: 191, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !96, file: !24, line: 191, baseType: !99, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !13, file: !12, line: 153, baseType: !19, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !13, file: !12, line: 154, baseType: !19, size: 64, offset: 448)
!103 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!106 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!107 = !{!21, !19}
!108 = !{!0, !109, !221, !226, !7}
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "nfs_callback_sysctl_table", scope: !9, file: !2, line: 15, type: !111, isLocal: true, isDefinition: true)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !12, line: 173, size: 640, elements: !113)
!113 = !{!114, !134, !147, !148, !202, !203, !205, !211}
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !12, line: 174, baseType: !115, size: 192)
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !112, file: !12, line: 174, size: 192, elements: !116)
!116 = !{!117, !125}
!117 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !12, line: 175, baseType: !118, size: 192)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !115, file: !12, line: 175, size: 192, elements: !119)
!119 = !{!120, !121, !122, !123, !124}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !118, file: !12, line: 176, baseType: !32, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !118, file: !12, line: 177, baseType: !21, size: 32, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !118, file: !12, line: 178, baseType: !21, size: 32, offset: 96)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !118, file: !12, line: 179, baseType: !21, size: 32, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !118, file: !12, line: 180, baseType: !21, size: 32, offset: 160)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !115, file: !12, line: 182, baseType: !126, size: 128, align: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !24, line: 232, size: 128, align: 64, elements: !127)
!127 = !{!128, !130}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !126, file: !24, line: 233, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !126, file: !24, line: 234, baseType: !131, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !129}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !112, file: !12, line: 184, baseType: !135, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !137, line: 26, size: 256, elements: !138)
!137 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !136, file: !137, line: 27, baseType: !103, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !136, file: !137, line: 28, baseType: !141, size: 192, offset: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !142, line: 43, size: 192, elements: !143)
!142 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!143 = !{!144, !146}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !141, file: !142, line: 44, baseType: !145, size: 32)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !67, line: 23, baseType: !66)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !141, file: !142, line: 45, baseType: !96, size: 128, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !112, file: !12, line: 185, baseType: !32, size: 64, offset: 256)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !112, file: !12, line: 186, baseType: !149, size: 64, offset: 320)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !12, line: 204, size: 960, elements: !151)
!151 = !{!152, !175, !179, !198}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !150, file: !12, line: 205, baseType: !153, size: 768)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !12, line: 199, size: 768, elements: !154)
!154 = !{!155, !160}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !153, file: !12, line: 200, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!21, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !153, file: !12, line: 201, baseType: !161, size: 704, offset: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !12, line: 193, size: 704, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !161, file: !12, line: 195, baseType: !112, size: 640)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !161, file: !12, line: 196, baseType: !165, size: 64, offset: 640)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !166, line: 12, size: 64, elements: !167)
!166 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !165, file: !166, line: 13, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !166, line: 5, size: 192, align: 64, elements: !171)
!171 = !{!172, !173, !174}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !170, file: !166, line: 6, baseType: !38, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !170, file: !166, line: 7, baseType: !169, size: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !170, file: !166, line: 8, baseType: !169, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !150, file: !12, line: 206, baseType: !176, size: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!159, !149}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !150, file: !12, line: 207, baseType: !180, size: 64, offset: 832)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !111, !183, !191}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !185, line: 23, baseType: !186)
!185 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 21, size: 32, elements: !187)
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !185, line: 22, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !24, line: 37, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !36, line: 49, baseType: !103)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !185, line: 28, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 26, size: 32, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !193, file: !185, line: 27, baseType: !196, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !24, line: 38, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !36, line: 50, baseType: !103)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !150, file: !12, line: 209, baseType: !199, size: 64, offset: 896)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!21, !111, !32}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !112, file: !12, line: 187, baseType: !159, size: 64, offset: 384)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !112, file: !12, line: 188, baseType: !204, size: 64, offset: 448)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !112, file: !12, line: 189, baseType: !206, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !12, line: 157, size: 256, elements: !208)
!208 = !{!209, !210}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !207, file: !12, line: 158, baseType: !170, size: 192, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !207, file: !12, line: 159, baseType: !111, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !112, file: !12, line: 190, baseType: !212, size: 64, offset: 576)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !24, line: 194, size: 64, elements: !213)
!213 = !{!214}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !212, file: !24, line: 195, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !24, line: 198, size: 128, elements: !217)
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !216, file: !24, line: 199, baseType: !215, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !216, file: !24, line: 199, baseType: !220, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(scope: null, file: !2, line: 19, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !224)
!224 = !{!225}
!225 = !DISubrange(count: 23)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !2, line: 26, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 18)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1536, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 3)
!234 = !{i32 7, !"Dwarf Version", i32 5}
!235 = !{i32 2, !"Debug Info Version", i32 3}
!236 = !{i32 1, !"wchar_size", i32 2}
!237 = !{i32 8, !"cf-protection-branch", i32 1}
!238 = !{i32 4, !"function_return_thunk_extern", i32 1}
!239 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!240 = !{i32 1, !"Code Model", i32 2}
!241 = !{i32 1, !"override-stack-alignment", i32 8}
!242 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!243 = distinct !DISubprogram(name: "nfs_register_sysctl", scope: !2, file: !2, line: 35, type: !244, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!244 = !DISubroutineType(types: !245)
!245 = !{!21}
!246 = !DILocation(line: 37, column: 30, scope: !243)
!247 = !DILocation(line: 37, column: 28, scope: !243)
!248 = !DILocation(line: 38, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !243, file: !2, line: 38, column: 6)
!250 = !DILocation(line: 38, column: 32, scope: !249)
!251 = !DILocation(line: 38, column: 6, scope: !243)
!252 = !DILocation(line: 39, column: 3, scope: !249)
!253 = !DILocation(line: 40, column: 2, scope: !243)
!254 = !DILocation(line: 41, column: 1, scope: !243)
!255 = !DISubprogram(name: "register_sysctl_sz", scope: !12, file: !12, line: 232, type: !256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!256 = !DISubroutineType(types: !257)
!257 = !{!111, !16, !32, !34}
!258 = distinct !DISubprogram(name: "nfs_unregister_sysctl", scope: !2, file: !2, line: 43, type: !259, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!259 = !DISubroutineType(types: !260)
!260 = !{null}
!261 = !DILocation(line: 45, column: 26, scope: !258)
!262 = !DILocation(line: 45, column: 2, scope: !258)
!263 = !DILocation(line: 46, column: 28, scope: !258)
!264 = !DILocation(line: 47, column: 1, scope: !258)
!265 = !DISubprogram(name: "unregister_sysctl_table", scope: !12, file: !12, line: 234, type: !266, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !111}
