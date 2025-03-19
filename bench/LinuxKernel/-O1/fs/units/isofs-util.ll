; ModuleID = 'fs/isofs/util.c'
source_filename = "fs/isofs/util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @iso_date(ptr noundef %p, i32 noundef %flag) #0 align 16 !dbg !11 {
entry:
  %p.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  %year = alloca i32, align 4
  %month = alloca i32, align 4
  %day = alloca i32, align 4
  %hour = alloca i32, align 4
  %minute = alloca i32, align 4
  %second = alloca i32, align 4
  %tz = alloca i32, align 4
  %crtime = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !22, metadata !DIExpression()), !dbg !32
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !23, metadata !DIExpression()), !dbg !33
  call void @llvm.lifetime.start.p0(i64 4, ptr %year) #4, !dbg !34
  call void @llvm.dbg.declare(metadata ptr %year, metadata !24, metadata !DIExpression()), !dbg !35
  call void @llvm.lifetime.start.p0(i64 4, ptr %month) #4, !dbg !34
  call void @llvm.dbg.declare(metadata ptr %month, metadata !25, metadata !DIExpression()), !dbg !36
  call void @llvm.lifetime.start.p0(i64 4, ptr %day) #4, !dbg !34
  call void @llvm.dbg.declare(metadata ptr %day, metadata !26, metadata !DIExpression()), !dbg !37
  call void @llvm.lifetime.start.p0(i64 4, ptr %hour) #4, !dbg !34
  call void @llvm.dbg.declare(metadata ptr %hour, metadata !27, metadata !DIExpression()), !dbg !38
  call void @llvm.lifetime.start.p0(i64 4, ptr %minute) #4, !dbg !34
  call void @llvm.dbg.declare(metadata ptr %minute, metadata !28, metadata !DIExpression()), !dbg !39
  call void @llvm.lifetime.start.p0(i64 4, ptr %second) #4, !dbg !34
  call void @llvm.dbg.declare(metadata ptr %second, metadata !29, metadata !DIExpression()), !dbg !40
  call void @llvm.lifetime.start.p0(i64 4, ptr %tz) #4, !dbg !34
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !30, metadata !DIExpression()), !dbg !41
  call void @llvm.lifetime.start.p0(i64 4, ptr %crtime) #4, !dbg !42
  call void @llvm.dbg.declare(metadata ptr %crtime, metadata !31, metadata !DIExpression()), !dbg !43
  %0 = load ptr, ptr %p.addr, align 8, !dbg !44
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !44
  %1 = load i8, ptr %arrayidx, align 1, !dbg !44
  %conv = zext i8 %1 to i32, !dbg !44
  store i32 %conv, ptr %year, align 4, !dbg !45
  %2 = load ptr, ptr %p.addr, align 8, !dbg !46
  %arrayidx1 = getelementptr i8, ptr %2, i64 1, !dbg !46
  %3 = load i8, ptr %arrayidx1, align 1, !dbg !46
  %conv2 = zext i8 %3 to i32, !dbg !46
  store i32 %conv2, ptr %month, align 4, !dbg !47
  %4 = load ptr, ptr %p.addr, align 8, !dbg !48
  %arrayidx3 = getelementptr i8, ptr %4, i64 2, !dbg !48
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !48
  %conv4 = zext i8 %5 to i32, !dbg !48
  store i32 %conv4, ptr %day, align 4, !dbg !49
  %6 = load ptr, ptr %p.addr, align 8, !dbg !50
  %arrayidx5 = getelementptr i8, ptr %6, i64 3, !dbg !50
  %7 = load i8, ptr %arrayidx5, align 1, !dbg !50
  %conv6 = zext i8 %7 to i32, !dbg !50
  store i32 %conv6, ptr %hour, align 4, !dbg !51
  %8 = load ptr, ptr %p.addr, align 8, !dbg !52
  %arrayidx7 = getelementptr i8, ptr %8, i64 4, !dbg !52
  %9 = load i8, ptr %arrayidx7, align 1, !dbg !52
  %conv8 = zext i8 %9 to i32, !dbg !52
  store i32 %conv8, ptr %minute, align 4, !dbg !53
  %10 = load ptr, ptr %p.addr, align 8, !dbg !54
  %arrayidx9 = getelementptr i8, ptr %10, i64 5, !dbg !54
  %11 = load i8, ptr %arrayidx9, align 1, !dbg !54
  %conv10 = zext i8 %11 to i32, !dbg !54
  store i32 %conv10, ptr %second, align 4, !dbg !55
  %12 = load i32, ptr %flag.addr, align 4, !dbg !56
  %cmp = icmp eq i32 %12, 0, !dbg !58
  br i1 %cmp, label %if.then, label %if.else, !dbg !59

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %p.addr, align 8, !dbg !60
  %arrayidx12 = getelementptr i8, ptr %13, i64 6, !dbg !60
  %14 = load i8, ptr %arrayidx12, align 1, !dbg !60
  %conv13 = zext i8 %14 to i32, !dbg !60
  store i32 %conv13, ptr %tz, align 4, !dbg !61
  br label %if.end, !dbg !62

if.else:                                          ; preds = %entry
  store i32 0, ptr %tz, align 4, !dbg !63
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load i32, ptr %year, align 4, !dbg !64
  %cmp14 = icmp slt i32 %15, 0, !dbg !66
  br i1 %cmp14, label %if.then16, label %if.else17, !dbg !67

if.then16:                                        ; preds = %if.end
  store i32 0, ptr %crtime, align 4, !dbg !68
  br label %if.end28, !dbg !70

if.else17:                                        ; preds = %if.end
  %16 = load i32, ptr %year, align 4, !dbg !71
  %add = add i32 %16, 1900, !dbg !73
  %17 = load i32, ptr %month, align 4, !dbg !74
  %18 = load i32, ptr %day, align 4, !dbg !75
  %19 = load i32, ptr %hour, align 4, !dbg !76
  %20 = load i32, ptr %minute, align 4, !dbg !77
  %21 = load i32, ptr %second, align 4, !dbg !78
  %call = call i64 @mktime64(i32 noundef %add, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21) #5, !dbg !79
  %conv18 = trunc i64 %call to i32, !dbg !79
  store i32 %conv18, ptr %crtime, align 4, !dbg !80
  %22 = load i32, ptr %tz, align 4, !dbg !81
  %and = and i32 %22, 128, !dbg !83
  %tobool = icmp ne i32 %and, 0, !dbg !83
  br i1 %tobool, label %if.then19, label %if.end20, !dbg !84

if.then19:                                        ; preds = %if.else17
  %23 = load i32, ptr %tz, align 4, !dbg !85
  %or = or i32 %23, -256, !dbg !85
  store i32 %or, ptr %tz, align 4, !dbg !85
  br label %if.end20, !dbg !86

if.end20:                                         ; preds = %if.then19, %if.else17
  %24 = load i32, ptr %tz, align 4, !dbg !87
  %cmp21 = icmp sle i32 -52, %24, !dbg !89
  br i1 %cmp21, label %land.lhs.true, label %if.end27, !dbg !90

land.lhs.true:                                    ; preds = %if.end20
  %25 = load i32, ptr %tz, align 4, !dbg !91
  %cmp23 = icmp sle i32 %25, 52, !dbg !92
  br i1 %cmp23, label %if.then25, label %if.end27, !dbg !93

if.then25:                                        ; preds = %land.lhs.true
  %26 = load i32, ptr %tz, align 4, !dbg !94
  %mul = mul i32 %26, 15, !dbg !95
  %mul26 = mul i32 %mul, 60, !dbg !96
  %27 = load i32, ptr %crtime, align 4, !dbg !97
  %sub = sub i32 %27, %mul26, !dbg !97
  store i32 %sub, ptr %crtime, align 4, !dbg !97
  br label %if.end27, !dbg !98

if.end27:                                         ; preds = %if.then25, %land.lhs.true, %if.end20
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then16
  %28 = load i32, ptr %crtime, align 4, !dbg !99
  call void @llvm.lifetime.end.p0(i64 4, ptr %crtime) #4, !dbg !100
  call void @llvm.lifetime.end.p0(i64 4, ptr %tz) #4, !dbg !100
  call void @llvm.lifetime.end.p0(i64 4, ptr %second) #4, !dbg !100
  call void @llvm.lifetime.end.p0(i64 4, ptr %minute) #4, !dbg !100
  call void @llvm.lifetime.end.p0(i64 4, ptr %hour) #4, !dbg !100
  call void @llvm.lifetime.end.p0(i64 4, ptr %day) #4, !dbg !100
  call void @llvm.lifetime.end.p0(i64 4, ptr %month) #4, !dbg !100
  call void @llvm.lifetime.end.p0(i64 4, ptr %year) #4, !dbg !100
  ret i32 %28, !dbg !101
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !102 dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/isofs/.util.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/isofs/isofs\22 -D KBUILD_BASENAME=\22util\22 -D KBUILD_MODNAME=\22isofs\22 -D __KBUILD_MODNAME=kmod_isofs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/isofs/util.ll fs/isofs/util.c", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "fs/isofs/util.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "88537766faa9152729b9639324715f1a")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"function_return_thunk_extern", i32 1}
!7 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!8 = !{i32 1, !"Code Model", i32 2}
!9 = !{i32 1, !"override-stack-alignment", i32 8}
!10 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!11 = distinct !DISubprogram(name: "iso_date", scope: !1, file: !1, line: 19, type: !12, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !14}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !17, line: 17, baseType: !18)
!17 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !19, line: 21, baseType: !20)
!19 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!20 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!22 = !DILocalVariable(name: "p", arg: 1, scope: !11, file: !1, line: 19, type: !15)
!23 = !DILocalVariable(name: "flag", arg: 2, scope: !11, file: !1, line: 19, type: !14)
!24 = !DILocalVariable(name: "year", scope: !11, file: !1, line: 21, type: !14)
!25 = !DILocalVariable(name: "month", scope: !11, file: !1, line: 21, type: !14)
!26 = !DILocalVariable(name: "day", scope: !11, file: !1, line: 21, type: !14)
!27 = !DILocalVariable(name: "hour", scope: !11, file: !1, line: 21, type: !14)
!28 = !DILocalVariable(name: "minute", scope: !11, file: !1, line: 21, type: !14)
!29 = !DILocalVariable(name: "second", scope: !11, file: !1, line: 21, type: !14)
!30 = !DILocalVariable(name: "tz", scope: !11, file: !1, line: 21, type: !14)
!31 = !DILocalVariable(name: "crtime", scope: !11, file: !1, line: 22, type: !14)
!32 = !DILocation(line: 19, column: 18, scope: !11)
!33 = !DILocation(line: 19, column: 25, scope: !11)
!34 = !DILocation(line: 21, column: 2, scope: !11)
!35 = !DILocation(line: 21, column: 6, scope: !11)
!36 = !DILocation(line: 21, column: 12, scope: !11)
!37 = !DILocation(line: 21, column: 19, scope: !11)
!38 = !DILocation(line: 21, column: 24, scope: !11)
!39 = !DILocation(line: 21, column: 30, scope: !11)
!40 = !DILocation(line: 21, column: 38, scope: !11)
!41 = !DILocation(line: 21, column: 46, scope: !11)
!42 = !DILocation(line: 22, column: 2, scope: !11)
!43 = !DILocation(line: 22, column: 6, scope: !11)
!44 = !DILocation(line: 24, column: 9, scope: !11)
!45 = !DILocation(line: 24, column: 7, scope: !11)
!46 = !DILocation(line: 25, column: 10, scope: !11)
!47 = !DILocation(line: 25, column: 8, scope: !11)
!48 = !DILocation(line: 26, column: 8, scope: !11)
!49 = !DILocation(line: 26, column: 6, scope: !11)
!50 = !DILocation(line: 27, column: 9, scope: !11)
!51 = !DILocation(line: 27, column: 7, scope: !11)
!52 = !DILocation(line: 28, column: 11, scope: !11)
!53 = !DILocation(line: 28, column: 9, scope: !11)
!54 = !DILocation(line: 29, column: 11, scope: !11)
!55 = !DILocation(line: 29, column: 9, scope: !11)
!56 = !DILocation(line: 30, column: 6, scope: !57)
!57 = distinct !DILexicalBlock(scope: !11, file: !1, line: 30, column: 6)
!58 = !DILocation(line: 30, column: 11, scope: !57)
!59 = !DILocation(line: 30, column: 6, scope: !11)
!60 = !DILocation(line: 30, column: 22, scope: !57)
!61 = !DILocation(line: 30, column: 20, scope: !57)
!62 = !DILocation(line: 30, column: 17, scope: !57)
!63 = !DILocation(line: 31, column: 10, scope: !57)
!64 = !DILocation(line: 33, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !11, file: !1, line: 33, column: 6)
!66 = !DILocation(line: 33, column: 11, scope: !65)
!67 = !DILocation(line: 33, column: 6, scope: !11)
!68 = !DILocation(line: 34, column: 10, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 33, column: 16)
!70 = !DILocation(line: 35, column: 2, scope: !69)
!71 = !DILocation(line: 36, column: 21, scope: !72)
!72 = distinct !DILexicalBlock(scope: !65, file: !1, line: 35, column: 9)
!73 = !DILocation(line: 36, column: 25, scope: !72)
!74 = !DILocation(line: 36, column: 32, scope: !72)
!75 = !DILocation(line: 36, column: 39, scope: !72)
!76 = !DILocation(line: 36, column: 44, scope: !72)
!77 = !DILocation(line: 36, column: 50, scope: !72)
!78 = !DILocation(line: 36, column: 58, scope: !72)
!79 = !DILocation(line: 36, column: 12, scope: !72)
!80 = !DILocation(line: 36, column: 10, scope: !72)
!81 = !DILocation(line: 39, column: 7, scope: !82)
!82 = distinct !DILexicalBlock(scope: !72, file: !1, line: 39, column: 7)
!83 = !DILocation(line: 39, column: 10, scope: !82)
!84 = !DILocation(line: 39, column: 7, scope: !72)
!85 = !DILocation(line: 40, column: 7, scope: !82)
!86 = !DILocation(line: 40, column: 4, scope: !82)
!87 = !DILocation(line: 67, column: 14, scope: !88)
!88 = distinct !DILexicalBlock(scope: !72, file: !1, line: 67, column: 7)
!89 = !DILocation(line: 67, column: 11, scope: !88)
!90 = !DILocation(line: 67, column: 17, scope: !88)
!91 = !DILocation(line: 67, column: 20, scope: !88)
!92 = !DILocation(line: 67, column: 23, scope: !88)
!93 = !DILocation(line: 67, column: 7, scope: !72)
!94 = !DILocation(line: 68, column: 14, scope: !88)
!95 = !DILocation(line: 68, column: 17, scope: !88)
!96 = !DILocation(line: 68, column: 22, scope: !88)
!97 = !DILocation(line: 68, column: 11, scope: !88)
!98 = !DILocation(line: 68, column: 4, scope: !88)
!99 = !DILocation(line: 70, column: 9, scope: !11)
!100 = !DILocation(line: 71, column: 1, scope: !11)
!101 = !DILocation(line: 70, column: 2, scope: !11)
!102 = !DISubprogram(name: "mktime64", scope: !103, file: !103, line: 20, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!103 = !DIFile(filename: "./include/linux/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f33592c8760b58e8aacec1e4121b19fc")
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !110, !110, !110, !110, !110, !110}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !107, line: 8, baseType: !108)
!107 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !19, line: 30, baseType: !109)
!109 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
