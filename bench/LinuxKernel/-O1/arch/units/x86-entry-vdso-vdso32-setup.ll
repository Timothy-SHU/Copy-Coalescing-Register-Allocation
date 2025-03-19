; ModuleID = 'arch/x86/entry/vdso/vdso32-setup.c'
source_filename = "arch/x86/entry/vdso/vdso32-setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_vdso32_setup__88_78_ia32_binfmt_init\22, \22a\22\09\09"
module asm "__initcall__kmod_vdso32_setup__88_78_ia32_binfmt_init6:\09\09\09"
module asm ".long\09__initstub__kmod_vdso32_setup__88_78_ia32_binfmt_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }

@vdso32_enabled = hidden global i32 1, section ".data..read_mostly", align 4, !dbg !0
@__setup_str_vdso32_setup = internal constant [8 x i8] c"vdso32=\00", section ".init.rodata", align 1, !dbg !118
@__setup_vdso32_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_vdso32_setup, ptr @vdso32_setup, i32 0 }, section ".init.setup", align 8, !dbg !104
@__UNIQUE_ID___addressable___initstub__kmod_vdso32_setup__88_78_ia32_binfmt_init689 = internal global ptr @__initstub__kmod_vdso32_setup__88_78_ia32_binfmt_init6, section ".discard.addressable", align 8, !dbg !116
@.str = private unnamed_addr constant [73 x i8] c"\014vdso32 values other than 0 and 1 are no longer allowed; vdso disabled\0A\00", align 1, !dbg !123
@.str.1 = private unnamed_addr constant [4 x i8] c"abi\00", align 1, !dbg !128
@abi_table2 = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.2, ptr @vdso32_enabled, i32 4, i16 420, i32 0, ptr @proc_dointvec_minmax, ptr null, ptr @sysctl_vals, ptr getelementptr (i8, ptr @sysctl_vals, i64 4) }, %struct.ctl_table zeroinitializer], align 16, !dbg !138
@.str.2 = private unnamed_addr constant [11 x i8] c"vsyscall32\00", align 1, !dbg !133
@sysctl_vals = external dso_local constant [0 x i32], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__setup_vdso32_setup, ptr @__UNIQUE_ID___addressable___initstub__kmod_vdso32_setup__88_78_ia32_binfmt_init689], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @vdso32_setup(ptr noundef %s) #0 section ".init.text" align 16 !dbg !152 {
entry:
  %s.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !154, metadata !DIExpression()), !dbg !155
  %0 = load ptr, ptr %s.addr, align 8, !dbg !156
  %call = call i64 @simple_strtoul(ptr noundef %0, ptr noundef null, i32 noundef 0) #4, !dbg !157
  %conv = trunc i64 %call to i32, !dbg !157
  store i32 %conv, ptr @vdso32_enabled, align 4, !dbg !158
  %1 = load i32, ptr @vdso32_enabled, align 4, !dbg !159
  %cmp = icmp ugt i32 %1, 1, !dbg !161
  br i1 %cmp, label %if.then, label %if.end, !dbg !162

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !163

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !166

do.end:                                           ; preds = %do.body
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str) #5, !dbg !163
  store i32 %call2, ptr %tmp, align 4, !dbg !166
  %2 = load i32, ptr %tmp, align 4, !dbg !163
  store i32 0, ptr @vdso32_enabled, align 4, !dbg !168
  br label %if.end, !dbg !169

if.end:                                           ; preds = %do.end, %entry
  ret i32 1, !dbg !170
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_vdso32_setup__88_78_ia32_binfmt_init6() #0 section ".init.text" align 16 !dbg !171 {
entry:
  %call = call i32 @ia32_binfmt_init() #5, !dbg !174
  ret i32 %call, !dbg !174
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ia32_binfmt_init() #0 section ".init.text" align 16 !dbg !175 {
entry:
  %call = call ptr @register_sysctl_sz(ptr noundef @.str.1, ptr noundef @abi_table2, i64 noundef 2) #4, !dbg !176
  ret i32 0, !dbg !177
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !178 dso_local i64 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !183 dso_local i32 @_printk(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !187 dso_local ptr @register_sysctl_sz(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone }
attributes #5 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "vdso32_enabled", scope: !2, file: !3, line: 29, type: !98, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/entry/vdso/.vdso32-setup.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/entry/vdso/vdso32-setup\22 -D KBUILD_BASENAME=\22vdso32_setup\22 -D KBUILD_MODNAME=\22vdso32_setup\22 -D __KBUILD_MODNAME=kmod_vdso32_setup -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/entry/vdso/vdso32-setup.ll arch/x86/entry/vdso/vdso32-setup.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !103, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/entry/vdso/vdso32-setup.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86067ecb90f0826bf7ff29f71fc57b7c")
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
!103 = !{!0, !104, !116, !118, !123, !128, !133, !138}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "__setup_vdso32_setup", scope: !2, file: !3, line: 48, type: !106, isLocal: true, isDefinition: true, align: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !107, line: 324, size: 192, elements: !108)
!107 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!108 = !{!109, !110, !115}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !106, file: !107, line: 325, baseType: !10, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !106, file: !107, line: 326, baseType: !111, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!16, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !106, file: !107, line: 327, baseType: !16, size: 32, offset: 128)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_vdso32_setup__88_78_ia32_binfmt_init689", scope: !2, file: !3, line: 78, type: !14, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "__setup_str_vdso32_setup", scope: !2, file: !3, line: 48, type: !120, isLocal: true, isDefinition: true, align: 8)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 8)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !3, line: 36, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 584, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 73)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 4)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 88, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 11)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "abi_table2", scope: !2, file: !3, line: 60, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 2)
!143 = !{i32 7, !"Dwarf Version", i32 5}
!144 = !{i32 2, !"Debug Info Version", i32 3}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 8, !"cf-protection-branch", i32 1}
!147 = !{i32 4, !"function_return_thunk_extern", i32 1}
!148 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!149 = !{i32 1, !"Code Model", i32 2}
!150 = !{i32 1, !"override-stack-alignment", i32 8}
!151 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!152 = distinct !DISubprogram(name: "vdso32_setup", scope: !3, file: !3, line: 31, type: !112, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !153)
!153 = !{!154}
!154 = !DILocalVariable(name: "s", arg: 1, scope: !152, file: !3, line: 31, type: !114)
!155 = !DILocation(line: 31, column: 38, scope: !152)
!156 = !DILocation(line: 33, column: 34, scope: !152)
!157 = !DILocation(line: 33, column: 19, scope: !152)
!158 = !DILocation(line: 33, column: 17, scope: !152)
!159 = !DILocation(line: 35, column: 6, scope: !160)
!160 = distinct !DILexicalBlock(scope: !152, file: !3, line: 35, column: 6)
!161 = !DILocation(line: 35, column: 21, scope: !160)
!162 = !DILocation(line: 35, column: 6, scope: !152)
!163 = !DILocation(line: 36, column: 3, scope: !164)
!164 = distinct !DILexicalBlock(scope: !165, file: !3, line: 36, column: 3)
!165 = distinct !DILexicalBlock(scope: !160, file: !3, line: 35, column: 26)
!166 = !DILocation(line: 36, column: 3, scope: !167)
!167 = distinct !DILexicalBlock(scope: !164, file: !3, line: 36, column: 3)
!168 = !DILocation(line: 37, column: 18, scope: !165)
!169 = !DILocation(line: 38, column: 2, scope: !165)
!170 = !DILocation(line: 40, column: 2, scope: !152)
!171 = distinct !DISubprogram(name: "__initstub__kmod_vdso32_setup__88_78_ia32_binfmt_init6", scope: !3, file: !3, line: 78, type: !172, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!172 = !DISubroutineType(types: !173)
!173 = !{!16}
!174 = !DILocation(line: 78, column: 1, scope: !171)
!175 = distinct !DISubprogram(name: "ia32_binfmt_init", scope: !3, file: !3, line: 73, type: !172, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!176 = !DILocation(line: 75, column: 2, scope: !175)
!177 = !DILocation(line: 76, column: 2, scope: !175)
!178 = !DISubprogram(name: "simple_strtoul", scope: !179, file: !179, line: 145, type: !180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!179 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!180 = !DISubroutineType(types: !181)
!181 = !{!33, !10, !182, !98}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!183 = !DISubprogram(name: "_printk", scope: !184, file: !184, line: 153, type: !185, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!184 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!185 = !DISubroutineType(types: !186)
!186 = !{!16, !10, null}
!187 = !DISubprogram(name: "register_sysctl_sz", scope: !6, file: !6, line: 232, type: !188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !10, !27, !29}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !6, line: 173, size: 640, elements: !192)
!192 = !{!193, !213, !226, !227, !281, !282, !284, !290}
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !6, line: 174, baseType: !194, size: 192)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !6, line: 174, size: 192, elements: !195)
!195 = !{!196, !204}
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !6, line: 175, baseType: !197, size: 192)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !194, file: !6, line: 175, size: 192, elements: !198)
!198 = !{!199, !200, !201, !202, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !197, file: !6, line: 176, baseType: !27, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !197, file: !6, line: 177, baseType: !16, size: 32, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !197, file: !6, line: 178, baseType: !16, size: 32, offset: 96)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !197, file: !6, line: 179, baseType: !16, size: 32, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !197, file: !6, line: 180, baseType: !16, size: 32, offset: 160)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !194, file: !6, line: 182, baseType: !205, size: 128, align: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !19, line: 232, size: 128, align: 64, elements: !206)
!206 = !{!207, !209}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !205, file: !19, line: 233, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !205, file: !19, line: 234, baseType: !210, size: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !208}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !191, file: !6, line: 184, baseType: !214, size: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !216, line: 26, size: 256, elements: !217)
!216 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!217 = !{!218, !219}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !215, file: !216, line: 27, baseType: !98, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !215, file: !216, line: 28, baseType: !220, size: 192, offset: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !221, line: 43, size: 192, elements: !222)
!221 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!222 = !{!223, !225}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !220, file: !221, line: 44, baseType: !224, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !62, line: 23, baseType: !61)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !220, file: !221, line: 45, baseType: !91, size: 128, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !191, file: !6, line: 185, baseType: !27, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !191, file: !6, line: 186, baseType: !228, size: 64, offset: 320)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !6, line: 204, size: 960, elements: !230)
!230 = !{!231, !254, !258, !277}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !229, file: !6, line: 205, baseType: !232, size: 768)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !6, line: 199, size: 768, elements: !233)
!233 = !{!234, !239}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !232, file: !6, line: 200, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!16, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !232, file: !6, line: 201, baseType: !240, size: 704, offset: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !6, line: 193, size: 704, elements: !241)
!241 = !{!242, !243}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !240, file: !6, line: 195, baseType: !191, size: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !240, file: !6, line: 196, baseType: !244, size: 64, offset: 640)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !245, line: 12, size: 64, elements: !246)
!245 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !244, file: !245, line: 13, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !245, line: 5, size: 192, align: 64, elements: !250)
!250 = !{!251, !252, !253}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !249, file: !245, line: 6, baseType: !33, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !249, file: !245, line: 7, baseType: !248, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !249, file: !245, line: 8, baseType: !248, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !229, file: !6, line: 206, baseType: !255, size: 64, offset: 768)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!238, !228}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !229, file: !6, line: 207, baseType: !259, size: 64, offset: 832)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !190, !262, !270}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !264, line: 23, baseType: !265)
!264 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 21, size: 32, elements: !266)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !265, file: !264, line: 22, baseType: !268, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !19, line: 37, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !31, line: 49, baseType: !98)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !264, line: 28, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !264, line: 26, size: 32, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !272, file: !264, line: 27, baseType: !275, size: 32)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !19, line: 38, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !31, line: 50, baseType: !98)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !229, file: !6, line: 209, baseType: !278, size: 64, offset: 896)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!16, !190, !27}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !191, file: !6, line: 187, baseType: !238, size: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !191, file: !6, line: 188, baseType: !283, size: 64, offset: 448)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !191, file: !6, line: 189, baseType: !285, size: 64, offset: 512)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !6, line: 157, size: 256, elements: !287)
!287 = !{!288, !289}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !286, file: !6, line: 158, baseType: !249, size: 192, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !286, file: !6, line: 159, baseType: !190, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !191, file: !6, line: 190, baseType: !291, size: 64, offset: 576)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !19, line: 194, size: 64, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !291, file: !19, line: 195, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !19, line: 198, size: 128, elements: !296)
!296 = !{!297, !298}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !295, file: !19, line: 199, baseType: !294, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !295, file: !19, line: 199, baseType: !299, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
