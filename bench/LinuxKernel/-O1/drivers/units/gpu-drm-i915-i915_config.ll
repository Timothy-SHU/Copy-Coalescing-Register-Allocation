; ModuleID = 'drivers/gpu/drm/i915/i915_config.c'
source_filename = "drivers/gpu/drm/i915/i915_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @i915_fence_context_timeout(ptr noundef %i915, i64 noundef %context) #0 align 16 !dbg !15 {
entry:
  %retval = alloca i64, align 8
  %i915.addr = alloca ptr, align 8
  %context.addr = alloca i64, align 8
  store ptr %i915, ptr %i915.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i915.addr, metadata !28, metadata !DIExpression()), !dbg !30
  store i64 %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !29, metadata !DIExpression()), !dbg !31
  %0 = load i64, ptr %context.addr, align 8, !dbg !32
  %tobool = icmp ne i64 %0, 0, !dbg !32
  br i1 %tobool, label %if.then, label %if.end, !dbg !34

if.then:                                          ; preds = %entry
  %call = call i64 @msecs_to_jiffies_timeout(i32 noundef 10000) #7, !dbg !35
  store i64 %call, ptr %retval, align 8, !dbg !36
  br label %return, !dbg !36

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !37
  br label %return, !dbg !37

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !38
  ret i64 %1, !dbg !38
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies_timeout(i32 noundef %m) #2 align 16 !dbg !39 {
entry:
  %m.addr = alloca i32, align 4
  %j = alloca i64, align 8
  %__UNIQUE_ID___x150 = alloca i64, align 8
  %__UNIQUE_ID___y151 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !46, metadata !DIExpression()), !dbg !51
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #8, !dbg !52
  call void @llvm.dbg.declare(metadata ptr %j, metadata !47, metadata !DIExpression()), !dbg !53
  %0 = load i32, ptr %m.addr, align 4, !dbg !54
  %call = call i64 @msecs_to_jiffies(i32 noundef %0) #7, !dbg !55
  store i64 %call, ptr %j, align 8, !dbg !53
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x150) #8, !dbg !56
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x150, metadata !48, metadata !DIExpression()), !dbg !56
  store i64 4611686018427387902, ptr %__UNIQUE_ID___x150, align 8, !dbg !56
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y151) #8, !dbg !56
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y151, metadata !50, metadata !DIExpression()), !dbg !56
  %1 = load i64, ptr %j, align 8, !dbg !56
  %add = add i64 %1, 1, !dbg !56
  store i64 %add, ptr %__UNIQUE_ID___y151, align 8, !dbg !56
  %2 = load i64, ptr %__UNIQUE_ID___x150, align 8, !dbg !56
  %3 = load i64, ptr %__UNIQUE_ID___y151, align 8, !dbg !56
  %cmp = icmp ult i64 %2, %3, !dbg !56
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !56

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___x150, align 8, !dbg !56
  br label %cond.end, !dbg !56

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr %__UNIQUE_ID___y151, align 8, !dbg !56
  br label %cond.end, !dbg !56

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %5, %cond.false ], !dbg !56
  store i64 %cond, ptr %tmp, align 8, !dbg !56
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y151) #8, !dbg !57
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x150) #8, !dbg !57
  %6 = load i64, ptr %tmp, align 8, !dbg !56
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #8, !dbg !58
  ret i64 %6, !dbg !59
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #4 align 16 !dbg !60 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !63, metadata !DIExpression()), !dbg !64
  %0 = load i32, ptr %m.addr, align 4, !dbg !65
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !67
  br i1 %1, label %if.then, label %if.else, !dbg !68

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !69
  %cmp = icmp slt i32 %2, 0, !dbg !72
  br i1 %cmp, label %if.then1, label %if.end, !dbg !73

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !74
  br label %return, !dbg !74

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !75
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #7, !dbg !76
  store i64 %call, ptr %retval, align 8, !dbg !77
  br label %return, !dbg !77

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !78
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #7, !dbg !80
  store i64 %call2, ptr %retval, align 8, !dbg !81
  br label %return, !dbg !81

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !82
  ret i64 %5, !dbg !82
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #2 align 16 !dbg !83 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !85, metadata !DIExpression()), !dbg !86
  %0 = load i32, ptr %m.addr, align 4, !dbg !87
  %conv = zext i32 %0 to i64, !dbg !87
  %add = add i64 %conv, 1, !dbg !88
  %sub = sub i64 %add, 1, !dbg !89
  %div = sdiv i64 %sub, 1, !dbg !90
  ret i64 %div, !dbg !91
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !92 dso_local i64 @__msecs_to_jiffies(i32 noundef) #6

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/i915/.i915_config.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -Wall -Wextra -Wno-format-security -Wno-unused-parameter -Wno-type-limits -Wno-missing-field-initializers -Wno-sign-compare -Wno-shift-negative-value -Wunused-but-set-variable -Wno-frame-address -I ./drivers/gpu/drm/i915 -D KBUILD_MODFILE=\22drivers/gpu/drm/i915/i915\22 -D KBUILD_BASENAME=\22i915_config\22 -D KBUILD_MODNAME=\22i915\22 -D __KBUILD_MODNAME=kmod_i915 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/i915/i915_config.ll drivers/gpu/drm/i915/i915_config.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/gpu/drm/i915/i915_config.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "974b290b0178023411bc79c96edbe5dd")
!2 = !{!3, !4, !5}
!3 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!4 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 8, !"cf-protection-branch", i32 1}
!10 = !{i32 4, !"function_return_thunk_extern", i32 1}
!11 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!12 = !{i32 1, !"Code Model", i32 2}
!13 = !{i32 1, !"override-stack-alignment", i32 8}
!14 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!15 = distinct !DISubprogram(name: "i915_fence_context_timeout", scope: !1, file: !1, line: 12, type: !16, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!16 = !DISubroutineType(types: !17)
!17 = !{!3, !18, !22}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_i915_private", file: !21, line: 12, flags: DIFlagFwdDecl)
!21 = !DIFile(filename: "drivers/gpu/drm/i915/i915_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0b67ee1147b7d564e9cc2d6966914302")
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !23, line: 23, baseType: !24)
!23 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !25, line: 31, baseType: !26)
!25 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!26 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!27 = !{!28, !29}
!28 = !DILocalVariable(name: "i915", arg: 1, scope: !15, file: !1, line: 12, type: !18)
!29 = !DILocalVariable(name: "context", arg: 2, scope: !15, file: !1, line: 12, type: !22)
!30 = !DILocation(line: 12, column: 59, scope: !15)
!31 = !DILocation(line: 12, column: 69, scope: !15)
!32 = !DILocation(line: 14, column: 39, scope: !33)
!33 = distinct !DILexicalBlock(scope: !15, file: !1, line: 14, column: 6)
!34 = !DILocation(line: 14, column: 6, scope: !15)
!35 = !DILocation(line: 15, column: 10, scope: !33)
!36 = !DILocation(line: 15, column: 3, scope: !33)
!37 = !DILocation(line: 17, column: 2, scope: !15)
!38 = !DILocation(line: 18, column: 1, scope: !15)
!39 = distinct !DISubprogram(name: "msecs_to_jiffies_timeout", scope: !40, file: !40, line: 219, type: !41, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !45)
!40 = !DIFile(filename: "drivers/gpu/drm/i915/i915_utils.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d5a8870c2b197da5032cbb99d63cff3")
!41 = !DISubroutineType(types: !42)
!42 = !{!3, !43}
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!45 = !{!46, !47, !48, !50}
!46 = !DILocalVariable(name: "m", arg: 1, scope: !39, file: !40, line: 219, type: !43)
!47 = !DILocalVariable(name: "j", scope: !39, file: !40, line: 221, type: !3)
!48 = !DILocalVariable(name: "__UNIQUE_ID___x150", scope: !49, file: !40, line: 223, type: !3)
!49 = distinct !DILexicalBlock(scope: !39, file: !40, line: 223, column: 9)
!50 = !DILocalVariable(name: "__UNIQUE_ID___y151", scope: !49, file: !40, line: 223, type: !3)
!51 = !DILocation(line: 219, column: 73, scope: !39)
!52 = !DILocation(line: 221, column: 2, scope: !39)
!53 = !DILocation(line: 221, column: 16, scope: !39)
!54 = !DILocation(line: 221, column: 37, scope: !39)
!55 = !DILocation(line: 221, column: 20, scope: !39)
!56 = !DILocation(line: 223, column: 9, scope: !49)
!57 = !DILocation(line: 223, column: 9, scope: !39)
!58 = !DILocation(line: 224, column: 1, scope: !39)
!59 = !DILocation(line: 223, column: 2, scope: !39)
!60 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !61, file: !61, line: 515, type: !41, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !62)
!61 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!62 = !{!63}
!63 = !DILocalVariable(name: "m", arg: 1, scope: !60, file: !61, line: 515, type: !43)
!64 = !DILocation(line: 515, column: 74, scope: !60)
!65 = !DILocation(line: 517, column: 27, scope: !66)
!66 = distinct !DILexicalBlock(scope: !60, file: !61, line: 517, column: 6)
!67 = !DILocation(line: 517, column: 6, scope: !66)
!68 = !DILocation(line: 517, column: 6, scope: !60)
!69 = !DILocation(line: 518, column: 12, scope: !70)
!70 = distinct !DILexicalBlock(scope: !71, file: !61, line: 518, column: 7)
!71 = distinct !DILexicalBlock(scope: !66, file: !61, line: 517, column: 31)
!72 = !DILocation(line: 518, column: 14, scope: !70)
!73 = !DILocation(line: 518, column: 7, scope: !71)
!74 = !DILocation(line: 519, column: 4, scope: !70)
!75 = !DILocation(line: 520, column: 28, scope: !71)
!76 = !DILocation(line: 520, column: 10, scope: !71)
!77 = !DILocation(line: 520, column: 3, scope: !71)
!78 = !DILocation(line: 522, column: 29, scope: !79)
!79 = distinct !DILexicalBlock(scope: !66, file: !61, line: 521, column: 9)
!80 = !DILocation(line: 522, column: 10, scope: !79)
!81 = !DILocation(line: 522, column: 3, scope: !79)
!82 = !DILocation(line: 524, column: 1, scope: !60)
!83 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !61, file: !61, line: 458, type: !41, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !84)
!84 = !{!85}
!85 = !DILocalVariable(name: "m", arg: 1, scope: !83, file: !61, line: 458, type: !43)
!86 = !DILocation(line: 458, column: 66, scope: !83)
!87 = !DILocation(line: 460, column: 10, scope: !83)
!88 = !DILocation(line: 460, column: 12, scope: !83)
!89 = !DILocation(line: 460, column: 34, scope: !83)
!90 = !DILocation(line: 460, column: 39, scope: !83)
!91 = !DILocation(line: 460, column: 2, scope: !83)
!92 = !DISubprogram(name: "__msecs_to_jiffies", scope: !61, file: !61, line: 451, type: !41, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
