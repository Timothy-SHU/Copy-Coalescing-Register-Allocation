; ModuleID = 'kernel/ksyms_common.c'
source_filename = "kernel/ksyms_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_namespace = type opaque

@kptr_restrict = external dso_local global i32, align 4
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@sysctl_perf_event_paranoid = external dso_local global i32, align 4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @kallsyms_show_value(ptr noundef %cred) #0 align 16 !dbg !18 {
entry:
  %retval = alloca i1, align 1
  %cred.addr = alloca ptr, align 8
  store ptr %cred, ptr %cred.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cred.addr, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load i32, ptr @kptr_restrict, align 4, !dbg !339
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !340

sw.bb:                                            ; preds = %entry
  %call = call i32 @kallsyms_for_perf() #4, !dbg !341
  %tobool = icmp ne i32 %call, 0, !dbg !341
  br i1 %tobool, label %if.then, label %if.end, !dbg !344

if.then:                                          ; preds = %sw.bb
  store i1 true, ptr %retval, align 1, !dbg !345
  br label %return, !dbg !345

if.end:                                           ; preds = %sw.bb
  br label %sw.bb1, !dbg !346

sw.bb1:                                           ; preds = %entry, %if.end
  %1 = load ptr, ptr %cred.addr, align 8, !dbg !347
  %call2 = call i32 @security_capable(ptr noundef %1, ptr noundef @init_user_ns, i32 noundef 34, i32 noundef 2) #4, !dbg !349
  %cmp = icmp eq i32 %call2, 0, !dbg !350
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !351

if.then3:                                         ; preds = %sw.bb1
  store i1 true, ptr %retval, align 1, !dbg !352
  br label %return, !dbg !352

if.end4:                                          ; preds = %sw.bb1
  br label %sw.default, !dbg !353

sw.default:                                       ; preds = %entry, %if.end4
  store i1 false, ptr %retval, align 1, !dbg !354
  br label %return, !dbg !354

return:                                           ; preds = %sw.default, %if.then3, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !355
  ret i1 %2, !dbg !355
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kallsyms_for_perf() #2 align 16 !dbg !356 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, ptr @sysctl_perf_event_paranoid, align 4, !dbg !359
  %cmp = icmp sle i32 %0, 1, !dbg !361
  br i1 %cmp, label %if.then, label %if.end, !dbg !362

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !363
  br label %return, !dbg !363

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !364
  br label %return, !dbg !364

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !365
  ret i32 %1, !dbg !365
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !366 dso_local i32 @security_capable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.ksyms_common.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/ksyms_common\22 -D KBUILD_BASENAME=\22ksyms_common\22 -D KBUILD_MODNAME=\22ksyms_common\22 -D __KBUILD_MODNAME=kmod_ksyms_common -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/ksyms_common.ll kernel/ksyms_common.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "kernel/ksyms_common.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8751f4b4512b3b8f2bba0f01a6a847b6")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "false", value: 0)
!8 = !DIEnumerator(name: "true", value: 1)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 8, !"cf-protection-branch", i32 1}
!13 = !{i32 4, !"function_return_thunk_extern", i32 1}
!14 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!15 = !{i32 1, !"Code Model", i32 2}
!16 = !{i32 1, !"override-stack-alignment", i32 8}
!17 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!18 = distinct !DISubprogram(name: "kallsyms_show_value", scope: !1, file: !1, line: 28, type: !19, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !336)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !24}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !22, line: 35, baseType: !23)
!22 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!23 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !27, line: 110, size: 1472, elements: !28)
!27 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!28 = !{!29, !41, !50, !57, !58, !59, !60, !61, !62, !63, !64, !73, !74, !75, !76, !77, !79, !272, !273, !274, !275, !276, !313, !317, !321, !331}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !26, file: !27, line: 111, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !31, line: 13, baseType: !32)
!31 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !22, line: 181, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 179, size: 64, elements: !34)
!34 = !{!35}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !33, file: !22, line: 180, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !37, line: 22, baseType: !38)
!37 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !39, line: 30, baseType: !40)
!39 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!40 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !26, file: !27, line: 112, baseType: !42, size: 32, offset: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !43, line: 23, baseType: !44)
!43 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 21, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !44, file: !43, line: 22, baseType: !47, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !22, line: 37, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !49, line: 49, baseType: !5)
!49 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!50 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !26, file: !27, line: 113, baseType: !51, size: 32, offset: 96)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !43, line: 28, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !43, line: 26, size: 32, elements: !53)
!53 = !{!54}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !52, file: !43, line: 27, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !22, line: 38, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !49, line: 50, baseType: !5)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !26, file: !27, line: 114, baseType: !42, size: 32, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !26, file: !27, line: 115, baseType: !51, size: 32, offset: 160)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !26, file: !27, line: 116, baseType: !42, size: 32, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !26, file: !27, line: 117, baseType: !51, size: 32, offset: 224)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !26, file: !27, line: 118, baseType: !42, size: 32, offset: 256)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !26, file: !27, line: 119, baseType: !51, size: 32, offset: 288)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !26, file: !27, line: 120, baseType: !5, size: 32, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !26, file: !27, line: 121, baseType: !65, size: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !66, line: 24, baseType: !67)
!66 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !66, line: 24, size: 64, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !67, file: !66, line: 24, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !37, line: 23, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !39, line: 31, baseType: !72)
!72 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !26, file: !27, line: 122, baseType: !65, size: 64, offset: 448)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !26, file: !27, line: 123, baseType: !65, size: 64, offset: 512)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !26, file: !27, line: 124, baseType: !65, size: 64, offset: 576)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !26, file: !27, line: 125, baseType: !65, size: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !26, file: !27, line: 127, baseType: !78, size: 8, offset: 704)
!78 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !26, file: !27, line: 129, baseType: !80, size: 64, offset: 768)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !82, line: 195, size: 1728, elements: !83)
!82 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!83 = !{!84, !95, !100, !118, !159, !162, !164, !171, !172, !173, !174, !179, !180, !181, !183, !184, !234, !257}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !81, file: !82, line: 196, baseType: !85, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !86, line: 113, baseType: !87)
!86 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !86, line: 111, size: 32, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !87, file: !86, line: 112, baseType: !90, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !22, line: 174, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !22, line: 172, size: 32, elements: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !91, file: !22, line: 173, baseType: !94, size: 32)
!94 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !81, file: !82, line: 197, baseType: !96, size: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !82, line: 28, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !22, line: 104, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !37, line: 20, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !39, line: 26, baseType: !94)
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !82, line: 198, baseType: !101, size: 192, offset: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !82, line: 198, size: 192, elements: !102)
!102 = !{!103, !109}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !101, file: !82, line: 199, baseType: !104, size: 128)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !22, line: 190, size: 128, elements: !105)
!105 = !{!106, !108}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !104, file: !22, line: 191, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !104, file: !22, line: 191, baseType: !107, size: 64, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !101, file: !82, line: 200, baseType: !110, size: 192, align: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !111, line: 5, size: 192, align: 64, elements: !112)
!111 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!112 = !{!113, !115, !117}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !110, file: !111, line: 6, baseType: !114, size: 64)
!114 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !110, file: !111, line: 7, baseType: !116, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !110, file: !111, line: 8, baseType: !116, size: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !81, file: !82, line: 205, baseType: !119, size: 320, offset: 256)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !120, line: 48, size: 320, elements: !121)
!120 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!121 = !{!122, !123, !124, !129, !158}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !119, file: !120, line: 49, baseType: !30, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !119, file: !120, line: 55, baseType: !30, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !119, file: !120, line: 57, baseType: !125, size: 32, offset: 128)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !126, line: 15, size: 32, elements: !127)
!126 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !125, file: !126, line: 20, baseType: !90, size: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !119, file: !120, line: 59, baseType: !130, size: 32, offset: 160)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !131, line: 23, baseType: !132)
!131 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !131, line: 14, size: 32, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !132, file: !131, line: 15, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !136, line: 44, baseType: !137)
!136 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !136, line: 14, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !137, file: !136, line: 15, baseType: !140, size: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !137, file: !136, line: 15, size: 32, elements: !141)
!141 = !{!142, !143, !150}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !140, file: !136, line: 16, baseType: !90, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !140, file: !136, line: 24, baseType: !144, size: 16)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !136, line: 24, size: 16, elements: !145)
!145 = !{!146, !149}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !144, file: !136, line: 25, baseType: !147, size: 8)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !37, line: 17, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !39, line: 21, baseType: !78)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !144, file: !136, line: 26, baseType: !147, size: 8, offset: 8)
!150 = !DIDerivedType(tag: DW_TAG_member, scope: !140, file: !136, line: 28, baseType: !151, size: 32)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !136, line: 28, size: 32, elements: !152)
!152 = !{!153, !157}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !151, file: !136, line: 29, baseType: !154, size: 16)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !37, line: 19, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !39, line: 24, baseType: !156)
!156 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !151, file: !136, line: 30, baseType: !154, size: 16, offset: 16)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !119, file: !120, line: 60, baseType: !104, size: 128, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !81, file: !82, line: 206, baseType: !160, size: 64, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !82, line: 206, flags: DIFlagFwdDecl)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !81, file: !82, line: 207, baseType: !163, size: 64, offset: 640)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !82, line: 208, baseType: !165, size: 64, offset: 704)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !82, line: 208, size: 64, elements: !166)
!166 = !{!167, !170}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !165, file: !82, line: 209, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !169, line: 8, baseType: !38)
!169 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!170 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !165, file: !82, line: 210, baseType: !168, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !81, file: !82, line: 212, baseType: !168, size: 64, offset: 768)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !81, file: !82, line: 213, baseType: !42, size: 32, offset: 832)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !81, file: !82, line: 214, baseType: !51, size: 32, offset: 864)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !81, file: !82, line: 215, baseType: !175, size: 32, offset: 896)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !82, line: 31, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !22, line: 110, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !37, line: 21, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !39, line: 27, baseType: !5)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !81, file: !82, line: 216, baseType: !156, size: 16, offset: 928)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !81, file: !82, line: 217, baseType: !156, size: 16, offset: 944)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !81, file: !82, line: 221, baseType: !182, size: 16, offset: 960)
!182 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !81, file: !82, line: 228, baseType: !114, size: 64, offset: 1024)
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !82, line: 245, baseType: !185, size: 320, offset: 1088)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !82, line: 245, size: 320, elements: !186)
!186 = !{!187, !225}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !185, file: !82, line: 246, baseType: !188, size: 320)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !82, line: 114, size: 320, elements: !189)
!189 = !{!190, !191, !204, !207, !222}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !188, file: !82, line: 116, baseType: !114, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !82, line: 117, baseType: !192, size: 64, offset: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !188, file: !82, line: 117, size: 64, elements: !193)
!193 = !{!194, !203}
!194 = !DIDerivedType(tag: DW_TAG_member, scope: !192, file: !82, line: 118, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !192, file: !82, line: 118, size: 64, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !195, file: !82, line: 120, baseType: !154, size: 16)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !195, file: !82, line: 121, baseType: !199, size: 48, offset: 16)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 48, elements: !201)
!200 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!201 = !{!202}
!202 = !DISubrange(count: 6)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !192, file: !82, line: 127, baseType: !114, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !188, file: !82, line: 129, baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !82, line: 102, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !188, file: !82, line: 130, baseType: !208, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !82, line: 108, size: 192, elements: !210)
!210 = !{!211, !220, !221}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !209, file: !82, line: 109, baseType: !212, size: 128, align: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !22, line: 232, size: 128, align: 64, elements: !213)
!213 = !{!214, !216}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !22, line: 233, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !212, file: !22, line: 234, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !215}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !209, file: !82, line: 110, baseType: !85, size: 32, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !209, file: !82, line: 111, baseType: !21, size: 8, offset: 160)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !188, file: !82, line: 131, baseType: !223, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!225 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !82, line: 247, baseType: !226, size: 320)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !185, file: !82, line: 247, size: 320, elements: !227)
!227 = !{!228, !229, !230, !231, !232}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !226, file: !82, line: 248, baseType: !114, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !226, file: !82, line: 249, baseType: !114, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !226, file: !82, line: 250, baseType: !205, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !226, file: !82, line: 251, baseType: !208, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !226, file: !82, line: 252, baseType: !233, size: 64, offset: 256)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !82, line: 260, baseType: !235, size: 256, offset: 1408)
!235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !82, line: 260, size: 256, elements: !236)
!236 = !{!237, !245}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !235, file: !82, line: 261, baseType: !238, size: 256)
!238 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !82, line: 134, size: 256, elements: !239)
!239 = !{!240, !241}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !238, file: !82, line: 135, baseType: !163, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !238, file: !82, line: 136, baseType: !242, size: 256)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 4)
!245 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !82, line: 262, baseType: !246, size: 256)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !235, file: !82, line: 262, size: 256, elements: !247)
!247 = !{!248, !249}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !246, file: !82, line: 264, baseType: !104, size: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !246, file: !82, line: 265, baseType: !250, size: 128, offset: 128)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !251, line: 22, size: 128, elements: !252)
!251 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!252 = !{!253, !256}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !250, file: !251, line: 23, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !251, line: 23, flags: DIFlagFwdDecl)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !250, file: !251, line: 24, baseType: !114, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !81, file: !82, line: 280, baseType: !258, size: 64, offset: 1664)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !82, line: 176, size: 192, elements: !260)
!260 = !{!261, !270, !271}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !259, file: !82, line: 177, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !82, line: 171, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!94, !80, !266, !268, !80}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !206)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !259, file: !82, line: 178, baseType: !80, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !259, file: !82, line: 179, baseType: !205, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !26, file: !27, line: 130, baseType: !80, size: 64, offset: 832)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !26, file: !27, line: 131, baseType: !80, size: 64, offset: 896)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !26, file: !27, line: 132, baseType: !80, size: 64, offset: 960)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !26, file: !27, line: 135, baseType: !163, size: 64, offset: 1024)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !26, file: !27, line: 137, baseType: !277, size: 64, offset: 1088)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !279, line: 14, size: 1088, elements: !280)
!279 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!280 = !{!281, !282, !291, !292, !293, !300, !301, !302}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !278, file: !279, line: 15, baseType: !85, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !278, file: !279, line: 17, baseType: !283, size: 320, offset: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !284, line: 22, size: 320, elements: !285)
!284 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!285 = !{!286, !287, !288, !289}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !283, file: !284, line: 23, baseType: !130, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !283, file: !284, line: 24, baseType: !36, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !283, file: !284, line: 26, baseType: !104, size: 128, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !283, file: !284, line: 28, baseType: !290, size: 64, offset: 256)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !278, file: !279, line: 19, baseType: !114, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !278, file: !279, line: 20, baseType: !30, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !278, file: !279, line: 23, baseType: !294, size: 128, offset: 512)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !22, line: 198, size: 128, elements: !295)
!295 = !{!296, !298}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !22, line: 199, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !294, file: !22, line: 199, baseType: !299, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !278, file: !279, line: 24, baseType: !42, size: 32, offset: 640)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !278, file: !279, line: 29, baseType: !30, size: 64, offset: 704)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !278, file: !279, line: 36, baseType: !303, size: 320, offset: 768)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !304, line: 15, size: 320, elements: !305)
!304 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!305 = !{!306, !307, !308, !309, !310, !311, !312}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !303, file: !304, line: 16, baseType: !130, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !303, file: !304, line: 18, baseType: !94, size: 32, offset: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !303, file: !304, line: 19, baseType: !94, size: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !303, file: !304, line: 20, baseType: !94, size: 32, offset: 96)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !303, file: !304, line: 21, baseType: !94, size: 32, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !303, file: !304, line: 22, baseType: !114, size: 64, offset: 192)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !303, file: !304, line: 23, baseType: !114, size: 64, offset: 256)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !26, file: !27, line: 138, baseType: !314, size: 64, offset: 1152)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !316, line: 901, flags: DIFlagFwdDecl)
!316 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !26, file: !27, line: 139, baseType: !318, size: 64, offset: 1216)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !320, line: 16, flags: DIFlagFwdDecl)
!320 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!321 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !26, file: !27, line: 140, baseType: !322, size: 64, offset: 1280)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !27, line: 25, size: 64, elements: !324)
!324 = !{!325, !326, !327}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !323, file: !27, line: 26, baseType: !90, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !323, file: !27, line: 27, baseType: !94, size: 32, offset: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !323, file: !27, line: 28, baseType: !328, offset: 64)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: -1)
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !26, file: !27, line: 142, baseType: !332, size: 128, offset: 1344)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !26, file: !27, line: 142, size: 128, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !332, file: !27, line: 143, baseType: !94, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !332, file: !27, line: 144, baseType: !212, size: 128, align: 64)
!336 = !{!337}
!337 = !DILocalVariable(name: "cred", arg: 1, scope: !18, file: !1, line: 28, type: !24)
!338 = !DILocation(line: 28, column: 45, scope: !18)
!339 = !DILocation(line: 30, column: 10, scope: !18)
!340 = !DILocation(line: 30, column: 2, scope: !18)
!341 = !DILocation(line: 32, column: 7, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !1, line: 32, column: 7)
!343 = distinct !DILexicalBlock(scope: !18, file: !1, line: 30, column: 25)
!344 = !DILocation(line: 32, column: 7, scope: !343)
!345 = !DILocation(line: 33, column: 4, scope: !342)
!346 = !DILocation(line: 32, column: 25, scope: !342)
!347 = !DILocation(line: 36, column: 24, scope: !348)
!348 = distinct !DILexicalBlock(scope: !343, file: !1, line: 36, column: 7)
!349 = !DILocation(line: 36, column: 7, scope: !348)
!350 = !DILocation(line: 37, column: 27, scope: !348)
!351 = !DILocation(line: 36, column: 7, scope: !343)
!352 = !DILocation(line: 38, column: 4, scope: !348)
!353 = !DILocation(line: 37, column: 30, scope: !348)
!354 = !DILocation(line: 41, column: 3, scope: !343)
!355 = !DILocation(line: 43, column: 1, scope: !18)
!356 = distinct !DISubprogram(name: "kallsyms_for_perf", scope: !1, file: !1, line: 9, type: !357, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!357 = !DISubroutineType(types: !358)
!358 = !{!94}
!359 = !DILocation(line: 14, column: 6, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !1, line: 14, column: 6)
!361 = !DILocation(line: 14, column: 33, scope: !360)
!362 = !DILocation(line: 14, column: 6, scope: !356)
!363 = !DILocation(line: 15, column: 3, scope: !360)
!364 = !DILocation(line: 17, column: 2, scope: !356)
!365 = !DILocation(line: 18, column: 1, scope: !356)
!366 = !DISubprogram(name: "security_capable", scope: !367, file: !367, line: 283, type: !368, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!367 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!368 = !DISubroutineType(types: !369)
!369 = !{!94, !24, !314, !94, !5}
