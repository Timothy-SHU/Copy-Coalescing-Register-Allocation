; ModuleID = 'drivers/acpi/acpica/utascii.c'
source_filename = "drivers/acpi/acpica/utascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_ctype = external dso_local constant [0 x i8], align 1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_valid_nameseg(ptr noundef %name) #0 align 16 !dbg !15 {
entry:
  %retval = alloca i8, align 1
  %name.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !24, metadata !DIExpression()), !dbg !29
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3, !dbg !30
  call void @llvm.dbg.declare(metadata ptr %i, metadata !25, metadata !DIExpression()), !dbg !31
  store i32 0, ptr %i, align 4, !dbg !32
  br label %for.cond, !dbg !34

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !35
  %cmp = icmp ult i32 %0, 4, !dbg !37
  br i1 %cmp, label %for.body, label %for.end, !dbg !38

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %name.addr, align 8, !dbg !39
  %2 = load i32, ptr %i, align 4, !dbg !42
  %idxprom = zext i32 %2 to i64, !dbg !39
  %arrayidx = getelementptr i8, ptr %1, i64 %idxprom, !dbg !39
  %3 = load i8, ptr %arrayidx, align 1, !dbg !39
  %4 = load i32, ptr %i, align 4, !dbg !43
  %call = call zeroext i8 @acpi_ut_valid_name_char(i8 noundef zeroext %3, i32 noundef %4) #4, !dbg !44
  %tobool = icmp ne i8 %call, 0, !dbg !44
  br i1 %tobool, label %if.end, label %if.then, !dbg !45

if.then:                                          ; preds = %for.body
  store i8 0, ptr %retval, align 1, !dbg !46
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !46

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !48

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !49
  %inc = add i32 %5, 1, !dbg !49
  store i32 %inc, ptr %i, align 4, !dbg !49
  br label %for.cond, !dbg !50, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  store i8 1, ptr %retval, align 1, !dbg !55
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !55

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3, !dbg !56
  %6 = load i8, ptr %retval, align 1, !dbg !56
  ret i8 %6, !dbg !56
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @acpi_ut_valid_name_char(i8 noundef zeroext %character, i32 noundef %position) #0 align 16 !dbg !57 {
entry:
  %retval = alloca i8, align 1
  %character.addr = alloca i8, align 1
  %position.addr = alloca i32, align 4
  store i8 %character, ptr %character.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %character.addr, metadata !61, metadata !DIExpression()), !dbg !63
  store i32 %position, ptr %position.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %position.addr, metadata !62, metadata !DIExpression()), !dbg !64
  %0 = load i8, ptr %character.addr, align 1, !dbg !65
  %conv = zext i8 %0 to i32, !dbg !65
  %cmp = icmp sge i32 %conv, 65, !dbg !67
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !68

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %character.addr, align 1, !dbg !69
  %conv2 = zext i8 %1 to i32, !dbg !69
  %cmp3 = icmp sle i32 %conv2, 90, !dbg !70
  br i1 %cmp3, label %if.end23, label %lor.lhs.false, !dbg !71

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i8, ptr %character.addr, align 1, !dbg !72
  %conv5 = zext i8 %2 to i32, !dbg !72
  %cmp6 = icmp sge i32 %conv5, 48, !dbg !73
  br i1 %cmp6, label %land.lhs.true8, label %lor.lhs.false12, !dbg !74

land.lhs.true8:                                   ; preds = %lor.lhs.false
  %3 = load i8, ptr %character.addr, align 1, !dbg !75
  %conv9 = zext i8 %3 to i32, !dbg !75
  %cmp10 = icmp sle i32 %conv9, 57, !dbg !76
  br i1 %cmp10, label %if.end23, label %lor.lhs.false12, !dbg !77

lor.lhs.false12:                                  ; preds = %land.lhs.true8, %lor.lhs.false
  %4 = load i8, ptr %character.addr, align 1, !dbg !78
  %conv13 = zext i8 %4 to i32, !dbg !78
  %cmp14 = icmp eq i32 %conv13, 95, !dbg !79
  br i1 %cmp14, label %if.end23, label %if.then, !dbg !80

if.then:                                          ; preds = %lor.lhs.false12
  %5 = load i8, ptr %character.addr, align 1, !dbg !81
  %conv16 = zext i8 %5 to i32, !dbg !81
  %cmp17 = icmp eq i32 %conv16, 33, !dbg !84
  br i1 %cmp17, label %land.lhs.true19, label %if.end, !dbg !85

land.lhs.true19:                                  ; preds = %if.then
  %6 = load i32, ptr %position.addr, align 4, !dbg !86
  %cmp20 = icmp eq i32 %6, 3, !dbg !87
  br i1 %cmp20, label %if.then22, label %if.end, !dbg !88

if.then22:                                        ; preds = %land.lhs.true19
  store i8 1, ptr %retval, align 1, !dbg !89
  br label %return, !dbg !89

if.end:                                           ; preds = %land.lhs.true19, %if.then
  store i8 0, ptr %retval, align 1, !dbg !91
  br label %return, !dbg !91

if.end23:                                         ; preds = %lor.lhs.false12, %land.lhs.true8, %land.lhs.true
  store i8 1, ptr %retval, align 1, !dbg !92
  br label %return, !dbg !92

return:                                           ; preds = %if.end23, %if.end, %if.then22
  %7 = load i8, ptr %retval, align 1, !dbg !93
  ret i8 %7, !dbg !93
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_ut_check_and_repair_ascii(ptr noundef %name, ptr noundef %repaired_name, i32 noundef %count) #0 align 16 !dbg !94 {
entry:
  %name.addr = alloca ptr, align 8
  %repaired_name.addr = alloca ptr, align 8
  %count.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !99, metadata !DIExpression()), !dbg !103
  store ptr %repaired_name, ptr %repaired_name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %repaired_name.addr, metadata !100, metadata !DIExpression()), !dbg !104
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !101, metadata !DIExpression()), !dbg !105
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3, !dbg !106
  call void @llvm.dbg.declare(metadata ptr %i, metadata !102, metadata !DIExpression()), !dbg !107
  store i32 0, ptr %i, align 4, !dbg !108
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !111
  %1 = load i32, ptr %count.addr, align 4, !dbg !113
  %cmp = icmp ult i32 %0, %1, !dbg !114
  br i1 %cmp, label %for.body, label %for.end, !dbg !115

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %name.addr, align 8, !dbg !116
  %3 = load i32, ptr %i, align 4, !dbg !118
  %idxprom = zext i32 %3 to i64, !dbg !116
  %arrayidx = getelementptr i8, ptr %2, i64 %idxprom, !dbg !116
  %4 = load i8, ptr %arrayidx, align 1, !dbg !116
  %5 = load ptr, ptr %repaired_name.addr, align 8, !dbg !119
  %6 = load i32, ptr %i, align 4, !dbg !120
  %idxprom1 = zext i32 %6 to i64, !dbg !119
  %arrayidx2 = getelementptr i8, ptr %5, i64 %idxprom1, !dbg !119
  store i8 %4, ptr %arrayidx2, align 1, !dbg !121
  %7 = load ptr, ptr %name.addr, align 8, !dbg !122
  %8 = load i32, ptr %i, align 4, !dbg !124
  %idxprom3 = zext i32 %8 to i64, !dbg !122
  %arrayidx4 = getelementptr i8, ptr %7, i64 %idxprom3, !dbg !122
  %9 = load i8, ptr %arrayidx4, align 1, !dbg !122
  %tobool = icmp ne i8 %9, 0, !dbg !122
  br i1 %tobool, label %if.end, label %if.then, !dbg !125

if.then:                                          ; preds = %for.body
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !126

if.end:                                           ; preds = %for.body
  %10 = load ptr, ptr %name.addr, align 8, !dbg !128
  %11 = load i32, ptr %i, align 4, !dbg !128
  %idxprom5 = zext i32 %11 to i64, !dbg !128
  %arrayidx6 = getelementptr i8, ptr %10, i64 %idxprom5, !dbg !128
  %12 = load i8, ptr %arrayidx6, align 1, !dbg !128
  %conv = zext i8 %12 to i32, !dbg !128
  %idxprom7 = sext i32 %conv to i64, !dbg !128
  %arrayidx8 = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom7, !dbg !128
  %13 = load i8, ptr %arrayidx8, align 1, !dbg !128
  %conv9 = zext i8 %13 to i32, !dbg !128
  %and = and i32 %conv9, 151, !dbg !128
  %cmp10 = icmp ne i32 %and, 0, !dbg !128
  br i1 %cmp10, label %if.end15, label %if.then12, !dbg !130

if.then12:                                        ; preds = %if.end
  %14 = load ptr, ptr %repaired_name.addr, align 8, !dbg !131
  %15 = load i32, ptr %i, align 4, !dbg !133
  %idxprom13 = zext i32 %15 to i64, !dbg !131
  %arrayidx14 = getelementptr i8, ptr %14, i64 %idxprom13, !dbg !131
  store i8 32, ptr %arrayidx14, align 1, !dbg !134
  br label %if.end15, !dbg !135

if.end15:                                         ; preds = %if.then12, %if.end
  br label %for.inc, !dbg !136

for.inc:                                          ; preds = %if.end15
  %16 = load i32, ptr %i, align 4, !dbg !137
  %inc = add i32 %16, 1, !dbg !137
  store i32 %inc, ptr %i, align 4, !dbg !137
  br label %for.cond, !dbg !138, !llvm.loop !139

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !141
  br label %cleanup, !dbg !141

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3, !dbg !141
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !141

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/acpica/.utascii.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D _LINUX -D BUILDING_ACPICA -D KBUILD_MODFILE=\22drivers/acpi/acpica/acpi\22 -D KBUILD_BASENAME=\22utascii\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpica/utascii.ll drivers/acpi/acpica/utascii.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/acpi/acpica/utascii.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "262791b3da5ecfe77bab1ae50bc79768")
!2 = !{!3, !4, !5}
!3 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 8, !"cf-protection-branch", i32 1}
!10 = !{i32 4, !"function_return_thunk_extern", i32 1}
!11 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!12 = !{i32 1, !"Code Model", i32 2}
!13 = !{i32 1, !"override-stack-alignment", i32 8}
!14 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!15 = distinct !DISubprogram(name: "acpi_ut_valid_nameseg", scope: !1, file: !1, line: 27, type: !16, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !22}
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !5)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3, size: 64)
!23 = !{!24, !25}
!24 = !DILocalVariable(name: "name", arg: 1, scope: !15, file: !1, line: 27, type: !22)
!25 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 29, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !28)
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 27, column: 32, scope: !15)
!30 = !DILocation(line: 29, column: 2, scope: !15)
!31 = !DILocation(line: 29, column: 6, scope: !15)
!32 = !DILocation(line: 33, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !15, file: !1, line: 33, column: 2)
!34 = !DILocation(line: 33, column: 7, scope: !33)
!35 = !DILocation(line: 33, column: 14, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !1, line: 33, column: 2)
!37 = !DILocation(line: 33, column: 16, scope: !36)
!38 = !DILocation(line: 33, column: 2, scope: !33)
!39 = !DILocation(line: 34, column: 32, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 34, column: 7)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 33, column: 42)
!42 = !DILocation(line: 34, column: 37, scope: !40)
!43 = !DILocation(line: 34, column: 41, scope: !40)
!44 = !DILocation(line: 34, column: 8, scope: !40)
!45 = !DILocation(line: 34, column: 7, scope: !41)
!46 = !DILocation(line: 35, column: 4, scope: !47)
!47 = distinct !DILexicalBlock(scope: !40, file: !1, line: 34, column: 45)
!48 = !DILocation(line: 37, column: 2, scope: !41)
!49 = !DILocation(line: 33, column: 38, scope: !36)
!50 = !DILocation(line: 33, column: 2, scope: !36)
!51 = distinct !{!51, !38, !52, !53, !54}
!52 = !DILocation(line: 37, column: 2, scope: !33)
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !DILocation(line: 39, column: 2, scope: !15)
!56 = !DILocation(line: 40, column: 1, scope: !15)
!57 = distinct !DISubprogram(name: "acpi_ut_valid_name_char", scope: !1, file: !1, line: 60, type: !58, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !60)
!58 = !DISubroutineType(types: !59)
!59 = !{!18, !3, !26}
!60 = !{!61, !62}
!61 = !DILocalVariable(name: "character", arg: 1, scope: !57, file: !1, line: 60, type: !3)
!62 = !DILocalVariable(name: "position", arg: 2, scope: !57, file: !1, line: 60, type: !26)
!63 = !DILocation(line: 60, column: 33, scope: !57)
!64 = !DILocation(line: 60, column: 48, scope: !57)
!65 = !DILocation(line: 63, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !57, file: !1, line: 63, column: 6)
!67 = !DILocation(line: 63, column: 19, scope: !66)
!68 = !DILocation(line: 63, column: 26, scope: !66)
!69 = !DILocation(line: 63, column: 29, scope: !66)
!70 = !DILocation(line: 63, column: 39, scope: !66)
!71 = !DILocation(line: 63, column: 47, scope: !66)
!72 = !DILocation(line: 64, column: 9, scope: !66)
!73 = !DILocation(line: 64, column: 19, scope: !66)
!74 = !DILocation(line: 64, column: 26, scope: !66)
!75 = !DILocation(line: 64, column: 29, scope: !66)
!76 = !DILocation(line: 64, column: 39, scope: !66)
!77 = !DILocation(line: 64, column: 47, scope: !66)
!78 = !DILocation(line: 64, column: 51, scope: !66)
!79 = !DILocation(line: 64, column: 61, scope: !66)
!80 = !DILocation(line: 63, column: 6, scope: !57)
!81 = !DILocation(line: 68, column: 7, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 68, column: 7)
!83 = distinct !DILexicalBlock(scope: !66, file: !1, line: 64, column: 71)
!84 = !DILocation(line: 68, column: 17, scope: !82)
!85 = !DILocation(line: 68, column: 24, scope: !82)
!86 = !DILocation(line: 68, column: 27, scope: !82)
!87 = !DILocation(line: 68, column: 36, scope: !82)
!88 = !DILocation(line: 68, column: 7, scope: !83)
!89 = !DILocation(line: 69, column: 4, scope: !90)
!90 = distinct !DILexicalBlock(scope: !82, file: !1, line: 68, column: 42)
!91 = !DILocation(line: 72, column: 3, scope: !83)
!92 = !DILocation(line: 75, column: 2, scope: !57)
!93 = !DILocation(line: 76, column: 1, scope: !57)
!94 = distinct !DISubprogram(name: "acpi_ut_check_and_repair_ascii", scope: !1, file: !1, line: 92, type: !95, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !98)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !97, !22, !26}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!98 = !{!99, !100, !101, !102}
!99 = !DILocalVariable(name: "name", arg: 1, scope: !94, file: !1, line: 92, type: !97)
!100 = !DILocalVariable(name: "repaired_name", arg: 2, scope: !94, file: !1, line: 92, type: !22)
!101 = !DILocalVariable(name: "count", arg: 3, scope: !94, file: !1, line: 92, type: !26)
!102 = !DILocalVariable(name: "i", scope: !94, file: !1, line: 94, type: !26)
!103 = !DILocation(line: 92, column: 41, scope: !94)
!104 = !DILocation(line: 92, column: 53, scope: !94)
!105 = !DILocation(line: 92, column: 72, scope: !94)
!106 = !DILocation(line: 94, column: 2, scope: !94)
!107 = !DILocation(line: 94, column: 6, scope: !94)
!108 = !DILocation(line: 96, column: 9, scope: !109)
!109 = distinct !DILexicalBlock(scope: !94, file: !1, line: 96, column: 2)
!110 = !DILocation(line: 96, column: 7, scope: !109)
!111 = !DILocation(line: 96, column: 14, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 96, column: 2)
!113 = !DILocation(line: 96, column: 18, scope: !112)
!114 = !DILocation(line: 96, column: 16, scope: !112)
!115 = !DILocation(line: 96, column: 2, scope: !109)
!116 = !DILocation(line: 97, column: 28, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 96, column: 30)
!118 = !DILocation(line: 97, column: 33, scope: !117)
!119 = !DILocation(line: 97, column: 3, scope: !117)
!120 = !DILocation(line: 97, column: 17, scope: !117)
!121 = !DILocation(line: 97, column: 20, scope: !117)
!122 = !DILocation(line: 99, column: 8, scope: !123)
!123 = distinct !DILexicalBlock(scope: !117, file: !1, line: 99, column: 7)
!124 = !DILocation(line: 99, column: 13, scope: !123)
!125 = !DILocation(line: 99, column: 7, scope: !117)
!126 = !DILocation(line: 100, column: 4, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 99, column: 17)
!128 = !DILocation(line: 102, column: 8, scope: !129)
!129 = distinct !DILexicalBlock(scope: !117, file: !1, line: 102, column: 7)
!130 = !DILocation(line: 102, column: 7, scope: !117)
!131 = !DILocation(line: 103, column: 4, scope: !132)
!132 = distinct !DILexicalBlock(scope: !129, file: !1, line: 102, column: 26)
!133 = !DILocation(line: 103, column: 18, scope: !132)
!134 = !DILocation(line: 103, column: 21, scope: !132)
!135 = !DILocation(line: 104, column: 3, scope: !132)
!136 = !DILocation(line: 105, column: 2, scope: !117)
!137 = !DILocation(line: 96, column: 26, scope: !112)
!138 = !DILocation(line: 96, column: 2, scope: !112)
!139 = distinct !{!139, !115, !140, !53, !54}
!140 = !DILocation(line: 105, column: 2, scope: !109)
!141 = !DILocation(line: 106, column: 1, scope: !94)
