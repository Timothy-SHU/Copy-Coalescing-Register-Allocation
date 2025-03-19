; ModuleID = 'security/min_addr.c'
source_filename = "security/min_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall0.init..kmod_min_addr__279_53_init_mmap_min_addr\22, \22a\22\09\09"
module asm "__initcall__kmod_min_addr__279_53_init_mmap_min_addr0:\09\09\09"
module asm ".long\09__initstub__kmod_min_addr__279_53_init_mmap_min_addr0 - .\09"
module asm ".previous\09\09\09\09\09"

@dac_mmap_min_addr = hidden global i64 4096, align 8, !dbg !0
@__UNIQUE_ID___addressable___initstub__kmod_min_addr__279_53_init_mmap_min_addr0280 = internal global ptr @__initstub__kmod_min_addr__279_53_init_mmap_min_addr0, section ".discard.addressable", align 8, !dbg !104
@mmap_min_addr = hidden global i64 0, align 8, !dbg !106
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_min_addr__279_53_init_mmap_min_addr0280], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @mmap_min_addr_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 16 !dbg !117 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %write.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  %ppos.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !119, metadata !DIExpression()), !dbg !125
  store i32 %write, ptr %write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !120, metadata !DIExpression()), !dbg !126
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !121, metadata !DIExpression()), !dbg !127
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lenp.addr, metadata !122, metadata !DIExpression()), !dbg !128
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !123, metadata !DIExpression()), !dbg !129
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !124, metadata !DIExpression()), !dbg !131
  %0 = load i32, ptr %write.addr, align 4, !dbg !132
  %tobool = icmp ne i32 %0, 0, !dbg !132
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !134

land.lhs.true:                                    ; preds = %entry
  %call = call zeroext i1 @capable(i32 noundef 17) #6, !dbg !135
  br i1 %call, label %if.end, label %if.then, !dbg !136

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !137

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = load ptr, ptr %table.addr, align 8, !dbg !138
  %2 = load i32, ptr %write.addr, align 4, !dbg !139
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !140
  %4 = load ptr, ptr %lenp.addr, align 8, !dbg !141
  %5 = load ptr, ptr %ppos.addr, align 8, !dbg !142
  %call1 = call i32 @proc_doulongvec_minmax(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #6, !dbg !143
  store i32 %call1, ptr %ret, align 4, !dbg !144
  call void @update_mmap_min_addr() #6, !dbg !145
  %6 = load i32, ptr %ret, align 4, !dbg !146
  store i32 %6, ptr %retval, align 4, !dbg !147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !147

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5, !dbg !148
  %7 = load i32, ptr %retval, align 4, !dbg !148
  ret i32 %7, !dbg !148
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !149 dso_local zeroext i1 @capable(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !155 dso_local i32 @proc_doulongvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @update_mmap_min_addr() #0 align 16 !dbg !156 {
entry:
  %0 = load i64, ptr @dac_mmap_min_addr, align 8, !dbg !159
  %cmp = icmp ugt i64 %0, 65536, !dbg !161
  br i1 %cmp, label %if.then, label %if.else, !dbg !162

if.then:                                          ; preds = %entry
  %1 = load i64, ptr @dac_mmap_min_addr, align 8, !dbg !163
  store i64 %1, ptr @mmap_min_addr, align 8, !dbg !164
  br label %if.end, !dbg !165

if.else:                                          ; preds = %entry
  store i64 65536, ptr @mmap_min_addr, align 8, !dbg !166
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !167
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_min_addr__279_53_init_mmap_min_addr0() #4 section ".init.text" align 16 !dbg !168 {
entry:
  %call = call i32 @init_mmap_min_addr() #7, !dbg !171
  ret i32 %call, !dbg !171
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @init_mmap_min_addr() #4 section ".init.text" align 16 !dbg !172 {
entry:
  call void @update_mmap_min_addr() #6, !dbg !173
  ret i32 0, !dbg !174
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dac_mmap_min_addr", scope: !2, file: !3, line: 10, type: !33, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/.min_addr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22security/min_addr\22 -D KBUILD_BASENAME=\22min_addr\22 -D KBUILD_MODNAME=\22min_addr\22 -D __KBUILD_MODNAME=kmod_min_addr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/min_addr.ll security/min_addr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !103, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "security/min_addr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "084f6f759aa00911c23bce24cf2e9363")
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
!102 = !{!14}
!103 = !{!0, !104, !106}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_min_addr__279_53_init_mmap_min_addr0280", scope: !2, file: !3, line: 53, type: !14, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "mmap_min_addr", scope: !2, file: !3, line: 8, type: !33, isLocal: false, isDefinition: true)
!108 = !{i32 7, !"Dwarf Version", i32 5}
!109 = !{i32 2, !"Debug Info Version", i32 3}
!110 = !{i32 1, !"wchar_size", i32 2}
!111 = !{i32 8, !"cf-protection-branch", i32 1}
!112 = !{i32 4, !"function_return_thunk_extern", i32 1}
!113 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!114 = !{i32 1, !"Code Model", i32 2}
!115 = !{i32 1, !"override-stack-alignment", i32 8}
!116 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!117 = distinct !DISubprogram(name: "mmap_min_addr_handler", scope: !3, file: !3, line: 32, type: !25, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!118 = !{!119, !120, !121, !122, !123, !124}
!119 = !DILocalVariable(name: "table", arg: 1, scope: !117, file: !3, line: 32, type: !27)
!120 = !DILocalVariable(name: "write", arg: 2, scope: !117, file: !3, line: 32, type: !16)
!121 = !DILocalVariable(name: "buffer", arg: 3, scope: !117, file: !3, line: 33, type: !14)
!122 = !DILocalVariable(name: "lenp", arg: 4, scope: !117, file: !3, line: 33, type: !28)
!123 = !DILocalVariable(name: "ppos", arg: 5, scope: !117, file: !3, line: 33, type: !34)
!124 = !DILocalVariable(name: "ret", scope: !117, file: !3, line: 35, type: !16)
!125 = !DILocation(line: 32, column: 45, scope: !117)
!126 = !DILocation(line: 32, column: 56, scope: !117)
!127 = !DILocation(line: 33, column: 12, scope: !117)
!128 = !DILocation(line: 33, column: 28, scope: !117)
!129 = !DILocation(line: 33, column: 42, scope: !117)
!130 = !DILocation(line: 35, column: 2, scope: !117)
!131 = !DILocation(line: 35, column: 6, scope: !117)
!132 = !DILocation(line: 37, column: 6, scope: !133)
!133 = distinct !DILexicalBlock(scope: !117, file: !3, line: 37, column: 6)
!134 = !DILocation(line: 37, column: 12, scope: !133)
!135 = !DILocation(line: 37, column: 16, scope: !133)
!136 = !DILocation(line: 37, column: 6, scope: !117)
!137 = !DILocation(line: 38, column: 3, scope: !133)
!138 = !DILocation(line: 40, column: 31, scope: !117)
!139 = !DILocation(line: 40, column: 38, scope: !117)
!140 = !DILocation(line: 40, column: 45, scope: !117)
!141 = !DILocation(line: 40, column: 53, scope: !117)
!142 = !DILocation(line: 40, column: 59, scope: !117)
!143 = !DILocation(line: 40, column: 8, scope: !117)
!144 = !DILocation(line: 40, column: 6, scope: !117)
!145 = !DILocation(line: 42, column: 2, scope: !117)
!146 = !DILocation(line: 44, column: 9, scope: !117)
!147 = !DILocation(line: 44, column: 2, scope: !117)
!148 = !DILocation(line: 45, column: 1, scope: !117)
!149 = !DISubprogram(name: "capable", scope: !150, file: !150, line: 148, type: !151, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!150 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!151 = !DISubroutineType(types: !152)
!152 = !{!153, !16}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !19, line: 35, baseType: !154)
!154 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!155 = !DISubprogram(name: "proc_doulongvec_minmax", scope: !6, file: !6, line: 84, type: !25, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!156 = distinct !DISubprogram(name: "update_mmap_min_addr", scope: !3, file: !3, line: 16, type: !157, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!157 = !DISubroutineType(types: !158)
!158 = !{null}
!159 = !DILocation(line: 19, column: 6, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !3, line: 19, column: 6)
!161 = !DILocation(line: 19, column: 24, scope: !160)
!162 = !DILocation(line: 19, column: 6, scope: !156)
!163 = !DILocation(line: 20, column: 19, scope: !160)
!164 = !DILocation(line: 20, column: 17, scope: !160)
!165 = !DILocation(line: 20, column: 3, scope: !160)
!166 = !DILocation(line: 22, column: 17, scope: !160)
!167 = !DILocation(line: 26, column: 1, scope: !156)
!168 = distinct !DISubprogram(name: "__initstub__kmod_min_addr__279_53_init_mmap_min_addr0", scope: !3, file: !3, line: 53, type: !169, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!169 = !DISubroutineType(types: !170)
!170 = !{!16}
!171 = !DILocation(line: 53, column: 1, scope: !168)
!172 = distinct !DISubprogram(name: "init_mmap_min_addr", scope: !3, file: !3, line: 47, type: !169, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!173 = !DILocation(line: 49, column: 2, scope: !172)
!174 = !DILocation(line: 51, column: 2, scope: !172)
