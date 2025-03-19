; ModuleID = 'lib/crypto/mpi/generic_mpih-mul1.c'
source_filename = "lib/crypto/mpi/generic_mpih-mul1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @mpihelp_mul_1(ptr noundef %res_ptr, ptr noundef %s1_ptr, i32 noundef %s1_size, i64 noundef %s2_limb) #0 align 16 !dbg !17 {
entry:
  %res_ptr.addr = alloca ptr, align 8
  %s1_ptr.addr = alloca ptr, align 8
  %s1_size.addr = alloca i32, align 4
  %s2_limb.addr = alloca i64, align 8
  %cy_limb = alloca i64, align 8
  %j = alloca i32, align 4
  %prod_high = alloca i64, align 8
  %prod_low = alloca i64, align 8
  %__x0 = alloca i64, align 8
  %__x1 = alloca i64, align 8
  %__x2 = alloca i64, align 8
  %__x3 = alloca i64, align 8
  %__ul = alloca i32, align 4
  %__vl = alloca i32, align 4
  %__uh = alloca i32, align 4
  %__vh = alloca i32, align 4
  %__u = alloca i64, align 8
  %__v = alloca i64, align 8
  store ptr %res_ptr, ptr %res_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res_ptr.addr, metadata !25, metadata !DIExpression()), !dbg !47
  store ptr %s1_ptr, ptr %s1_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s1_ptr.addr, metadata !26, metadata !DIExpression()), !dbg !48
  store i32 %s1_size, ptr %s1_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %s1_size.addr, metadata !27, metadata !DIExpression()), !dbg !49
  store i64 %s2_limb, ptr %s2_limb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s2_limb.addr, metadata !28, metadata !DIExpression()), !dbg !50
  call void @llvm.lifetime.start.p0(i64 8, ptr %cy_limb) #3, !dbg !51
  call void @llvm.dbg.declare(metadata ptr %cy_limb, metadata !29, metadata !DIExpression()), !dbg !52
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3, !dbg !53
  call void @llvm.dbg.declare(metadata ptr %j, metadata !30, metadata !DIExpression()), !dbg !54
  call void @llvm.lifetime.start.p0(i64 8, ptr %prod_high) #3, !dbg !55
  call void @llvm.dbg.declare(metadata ptr %prod_high, metadata !31, metadata !DIExpression()), !dbg !56
  call void @llvm.lifetime.start.p0(i64 8, ptr %prod_low) #3, !dbg !55
  call void @llvm.dbg.declare(metadata ptr %prod_low, metadata !32, metadata !DIExpression()), !dbg !57
  %0 = load i32, ptr %s1_size.addr, align 4, !dbg !58
  %sub = sub i32 0, %0, !dbg !59
  store i32 %sub, ptr %j, align 4, !dbg !60
  %1 = load i32, ptr %j, align 4, !dbg !61
  %2 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !62
  %idx.ext = sext i32 %1 to i64, !dbg !62
  %idx.neg = sub i64 0, %idx.ext, !dbg !62
  %add.ptr = getelementptr i64, ptr %2, i64 %idx.neg, !dbg !62
  store ptr %add.ptr, ptr %s1_ptr.addr, align 8, !dbg !62
  %3 = load i32, ptr %j, align 4, !dbg !63
  %4 = load ptr, ptr %res_ptr.addr, align 8, !dbg !64
  %idx.ext1 = sext i32 %3 to i64, !dbg !64
  %idx.neg2 = sub i64 0, %idx.ext1, !dbg !64
  %add.ptr3 = getelementptr i64, ptr %4, i64 %idx.neg2, !dbg !64
  store ptr %add.ptr3, ptr %res_ptr.addr, align 8, !dbg !64
  store i64 0, ptr %cy_limb, align 8, !dbg !65
  br label %do.body, !dbg !66

do.body:                                          ; preds = %do.cond37, %entry
  br label %do.body4, !dbg !67

do.body4:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x0) #3, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %__x0, metadata !33, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x1) #3, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %__x1, metadata !36, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x2) #3, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %__x2, metadata !37, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x3) #3, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %__x3, metadata !38, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ul) #3, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %__ul, metadata !39, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 4, ptr %__vl) #3, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %__vl, metadata !42, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 4, ptr %__uh) #3, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %__uh, metadata !43, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 4, ptr %__vh) #3, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %__vh, metadata !44, metadata !DIExpression()), !dbg !68
  call void @llvm.lifetime.start.p0(i64 8, ptr %__u) #3, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %__u, metadata !45, metadata !DIExpression()), !dbg !68
  %5 = load ptr, ptr %s1_ptr.addr, align 8, !dbg !68
  %6 = load i32, ptr %j, align 4, !dbg !68
  %idxprom = sext i32 %6 to i64, !dbg !68
  %arrayidx = getelementptr i64, ptr %5, i64 %idxprom, !dbg !68
  %7 = load i64, ptr %arrayidx, align 8, !dbg !68
  store i64 %7, ptr %__u, align 8, !dbg !68
  call void @llvm.lifetime.start.p0(i64 8, ptr %__v) #3, !dbg !68
  call void @llvm.dbg.declare(metadata ptr %__v, metadata !46, metadata !DIExpression()), !dbg !68
  %8 = load i64, ptr %s2_limb.addr, align 8, !dbg !68
  store i64 %8, ptr %__v, align 8, !dbg !68
  %9 = load i64, ptr %__u, align 8, !dbg !68
  %and = and i64 %9, 4294967295, !dbg !68
  %conv = trunc i64 %and to i32, !dbg !68
  store i32 %conv, ptr %__ul, align 4, !dbg !68
  %10 = load i64, ptr %__u, align 8, !dbg !68
  %shr = lshr i64 %10, 32, !dbg !68
  %conv5 = trunc i64 %shr to i32, !dbg !68
  store i32 %conv5, ptr %__uh, align 4, !dbg !68
  %11 = load i64, ptr %__v, align 8, !dbg !68
  %and6 = and i64 %11, 4294967295, !dbg !68
  %conv7 = trunc i64 %and6 to i32, !dbg !68
  store i32 %conv7, ptr %__vl, align 4, !dbg !68
  %12 = load i64, ptr %__v, align 8, !dbg !68
  %shr8 = lshr i64 %12, 32, !dbg !68
  %conv9 = trunc i64 %shr8 to i32, !dbg !68
  store i32 %conv9, ptr %__vh, align 4, !dbg !68
  %13 = load i32, ptr %__ul, align 4, !dbg !68
  %conv10 = zext i32 %13 to i64, !dbg !68
  %14 = load i32, ptr %__vl, align 4, !dbg !68
  %conv11 = zext i32 %14 to i64, !dbg !68
  %mul = mul i64 %conv10, %conv11, !dbg !68
  store i64 %mul, ptr %__x0, align 8, !dbg !68
  %15 = load i32, ptr %__ul, align 4, !dbg !68
  %conv12 = zext i32 %15 to i64, !dbg !68
  %16 = load i32, ptr %__vh, align 4, !dbg !68
  %conv13 = zext i32 %16 to i64, !dbg !68
  %mul14 = mul i64 %conv12, %conv13, !dbg !68
  store i64 %mul14, ptr %__x1, align 8, !dbg !68
  %17 = load i32, ptr %__uh, align 4, !dbg !68
  %conv15 = zext i32 %17 to i64, !dbg !68
  %18 = load i32, ptr %__vl, align 4, !dbg !68
  %conv16 = zext i32 %18 to i64, !dbg !68
  %mul17 = mul i64 %conv15, %conv16, !dbg !68
  store i64 %mul17, ptr %__x2, align 8, !dbg !68
  %19 = load i32, ptr %__uh, align 4, !dbg !68
  %conv18 = zext i32 %19 to i64, !dbg !68
  %20 = load i32, ptr %__vh, align 4, !dbg !68
  %conv19 = zext i32 %20 to i64, !dbg !68
  %mul20 = mul i64 %conv18, %conv19, !dbg !68
  store i64 %mul20, ptr %__x3, align 8, !dbg !68
  %21 = load i64, ptr %__x0, align 8, !dbg !68
  %shr21 = lshr i64 %21, 32, !dbg !68
  %22 = load i64, ptr %__x1, align 8, !dbg !68
  %add = add i64 %22, %shr21, !dbg !68
  store i64 %add, ptr %__x1, align 8, !dbg !68
  %23 = load i64, ptr %__x2, align 8, !dbg !68
  %24 = load i64, ptr %__x1, align 8, !dbg !68
  %add22 = add i64 %24, %23, !dbg !68
  store i64 %add22, ptr %__x1, align 8, !dbg !68
  %25 = load i64, ptr %__x1, align 8, !dbg !69
  %26 = load i64, ptr %__x2, align 8, !dbg !69
  %cmp = icmp ult i64 %25, %26, !dbg !69
  br i1 %cmp, label %if.then, label %if.end, !dbg !68

if.then:                                          ; preds = %do.body4
  %27 = load i64, ptr %__x3, align 8, !dbg !69
  %add24 = add i64 %27, 4294967296, !dbg !69
  store i64 %add24, ptr %__x3, align 8, !dbg !69
  br label %if.end, !dbg !69

if.end:                                           ; preds = %if.then, %do.body4
  %28 = load i64, ptr %__x3, align 8, !dbg !68
  %29 = load i64, ptr %__x1, align 8, !dbg !68
  %shr25 = lshr i64 %29, 32, !dbg !68
  %add26 = add i64 %28, %shr25, !dbg !68
  store i64 %add26, ptr %prod_high, align 8, !dbg !68
  %30 = load i64, ptr %__x1, align 8, !dbg !68
  %and27 = and i64 %30, 4294967295, !dbg !68
  %shl = shl i64 %and27, 32, !dbg !68
  %31 = load i64, ptr %__x0, align 8, !dbg !68
  %and28 = and i64 %31, 4294967295, !dbg !68
  %add29 = add i64 %shl, %and28, !dbg !68
  store i64 %add29, ptr %prod_low, align 8, !dbg !68
  call void @llvm.lifetime.end.p0(i64 8, ptr %__v) #3, !dbg !67
  call void @llvm.lifetime.end.p0(i64 8, ptr %__u) #3, !dbg !67
  call void @llvm.lifetime.end.p0(i64 4, ptr %__vh) #3, !dbg !67
  call void @llvm.lifetime.end.p0(i64 4, ptr %__uh) #3, !dbg !67
  call void @llvm.lifetime.end.p0(i64 4, ptr %__vl) #3, !dbg !67
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ul) #3, !dbg !67
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x3) #3, !dbg !67
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x2) #3, !dbg !67
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x1) #3, !dbg !67
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x0) #3, !dbg !67
  br label %do.cond, !dbg !68

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !68

do.end:                                           ; preds = %do.cond
  %32 = load i64, ptr %cy_limb, align 8, !dbg !71
  %33 = load i64, ptr %prod_low, align 8, !dbg !72
  %add30 = add i64 %33, %32, !dbg !72
  store i64 %add30, ptr %prod_low, align 8, !dbg !72
  %34 = load i64, ptr %prod_low, align 8, !dbg !73
  %35 = load i64, ptr %cy_limb, align 8, !dbg !74
  %cmp31 = icmp ult i64 %34, %35, !dbg !75
  %36 = zext i1 %cmp31 to i64, !dbg !73
  %cond = select i1 %cmp31, i32 1, i32 0, !dbg !73
  %conv33 = sext i32 %cond to i64, !dbg !76
  %37 = load i64, ptr %prod_high, align 8, !dbg !77
  %add34 = add i64 %conv33, %37, !dbg !78
  store i64 %add34, ptr %cy_limb, align 8, !dbg !79
  %38 = load i64, ptr %prod_low, align 8, !dbg !80
  %39 = load ptr, ptr %res_ptr.addr, align 8, !dbg !81
  %40 = load i32, ptr %j, align 4, !dbg !82
  %idxprom35 = sext i32 %40 to i64, !dbg !81
  %arrayidx36 = getelementptr i64, ptr %39, i64 %idxprom35, !dbg !81
  store i64 %38, ptr %arrayidx36, align 8, !dbg !83
  br label %do.cond37, !dbg !84

do.cond37:                                        ; preds = %do.end
  %41 = load i32, ptr %j, align 4, !dbg !85
  %inc = add i32 %41, 1, !dbg !85
  store i32 %inc, ptr %j, align 4, !dbg !85
  %tobool = icmp ne i32 %inc, 0, !dbg !84
  br i1 %tobool, label %do.body, label %do.end38, !dbg !84, !llvm.loop !86

do.end38:                                         ; preds = %do.cond37
  %42 = load i64, ptr %cy_limb, align 8, !dbg !90
  call void @llvm.lifetime.end.p0(i64 8, ptr %prod_low) #3, !dbg !91
  call void @llvm.lifetime.end.p0(i64 8, ptr %prod_high) #3, !dbg !91
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3, !dbg !91
  call void @llvm.lifetime.end.p0(i64 8, ptr %cy_limb) #3, !dbg !91
  ret i64 %42, !dbg !92
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/mpi/.generic_mpih-mul1.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/mpi/mpi\22 -D KBUILD_BASENAME=\22generic_mpih_mul1\22 -D KBUILD_MODNAME=\22mpi\22 -D __KBUILD_MODNAME=kmod_mpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/mpi/generic_mpih-mul1.ll lib/crypto/mpi/generic_mpih-mul1.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "lib/crypto/mpi/generic_mpih-mul1.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d50f2a3a55589bfeffd8067663329bca")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_typedef, name: "UWtype", file: !4, line: 214, baseType: !5)
!4 = !DIFile(filename: "lib/crypto/mpi/mpi-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cffaba334cfde932ee1944172d38d6ce")
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_limb_t", file: !6, line: 26, baseType: !7)
!6 = !DIFile(filename: "./include/linux/mpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f53a9dcdb88f3765db7508988600471")
!7 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 8, !"cf-protection-branch", i32 1}
!12 = !{i32 4, !"function_return_thunk_extern", i32 1}
!13 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!14 = !{i32 1, !"Code Model", i32 2}
!15 = !{i32 1, !"override-stack-alignment", i32 8}
!16 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!17 = distinct !DISubprogram(name: "mpihelp_mul_1", scope: !1, file: !1, line: 20, type: !18, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!18 = !DISubroutineType(types: !19)
!19 = !{!5, !20, !20, !22, !5}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_ptr_t", file: !4, line: 52, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "mpi_size_t", file: !4, line: 53, baseType: !23)
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !33, !36, !37, !38, !39, !42, !43, !44, !45, !46}
!25 = !DILocalVariable(name: "res_ptr", arg: 1, scope: !17, file: !1, line: 20, type: !20)
!26 = !DILocalVariable(name: "s1_ptr", arg: 2, scope: !17, file: !1, line: 20, type: !20)
!27 = !DILocalVariable(name: "s1_size", arg: 3, scope: !17, file: !1, line: 20, type: !22)
!28 = !DILocalVariable(name: "s2_limb", arg: 4, scope: !17, file: !1, line: 21, type: !5)
!29 = !DILocalVariable(name: "cy_limb", scope: !17, file: !1, line: 23, type: !5)
!30 = !DILocalVariable(name: "j", scope: !17, file: !1, line: 24, type: !22)
!31 = !DILocalVariable(name: "prod_high", scope: !17, file: !1, line: 25, type: !5)
!32 = !DILocalVariable(name: "prod_low", scope: !17, file: !1, line: 25, type: !5)
!33 = !DILocalVariable(name: "__x0", scope: !34, file: !1, line: 37, type: !3)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 37, column: 3)
!35 = distinct !DILexicalBlock(scope: !17, file: !1, line: 36, column: 5)
!36 = !DILocalVariable(name: "__x1", scope: !34, file: !1, line: 37, type: !3)
!37 = !DILocalVariable(name: "__x2", scope: !34, file: !1, line: 37, type: !3)
!38 = !DILocalVariable(name: "__x3", scope: !34, file: !1, line: 37, type: !3)
!39 = !DILocalVariable(name: "__ul", scope: !34, file: !1, line: 37, type: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "UHWtype", file: !4, line: 215, baseType: !41)
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !DILocalVariable(name: "__vl", scope: !34, file: !1, line: 37, type: !40)
!43 = !DILocalVariable(name: "__uh", scope: !34, file: !1, line: 37, type: !40)
!44 = !DILocalVariable(name: "__vh", scope: !34, file: !1, line: 37, type: !40)
!45 = !DILocalVariable(name: "__u", scope: !34, file: !1, line: 37, type: !3)
!46 = !DILocalVariable(name: "__v", scope: !34, file: !1, line: 37, type: !3)
!47 = !DILocation(line: 20, column: 25, scope: !17)
!48 = !DILocation(line: 20, column: 44, scope: !17)
!49 = !DILocation(line: 20, column: 63, scope: !17)
!50 = !DILocation(line: 21, column: 19, scope: !17)
!51 = !DILocation(line: 23, column: 2, scope: !17)
!52 = !DILocation(line: 23, column: 13, scope: !17)
!53 = !DILocation(line: 24, column: 2, scope: !17)
!54 = !DILocation(line: 24, column: 13, scope: !17)
!55 = !DILocation(line: 25, column: 2, scope: !17)
!56 = !DILocation(line: 25, column: 13, scope: !17)
!57 = !DILocation(line: 25, column: 24, scope: !17)
!58 = !DILocation(line: 29, column: 7, scope: !17)
!59 = !DILocation(line: 29, column: 6, scope: !17)
!60 = !DILocation(line: 29, column: 4, scope: !17)
!61 = !DILocation(line: 32, column: 12, scope: !17)
!62 = !DILocation(line: 32, column: 9, scope: !17)
!63 = !DILocation(line: 33, column: 13, scope: !17)
!64 = !DILocation(line: 33, column: 10, scope: !17)
!65 = !DILocation(line: 35, column: 10, scope: !17)
!66 = !DILocation(line: 36, column: 2, scope: !17)
!67 = !DILocation(line: 37, column: 3, scope: !35)
!68 = !DILocation(line: 37, column: 3, scope: !34)
!69 = !DILocation(line: 37, column: 3, scope: !70)
!70 = distinct !DILexicalBlock(scope: !34, file: !1, line: 37, column: 3)
!71 = !DILocation(line: 38, column: 15, scope: !35)
!72 = !DILocation(line: 38, column: 12, scope: !35)
!73 = !DILocation(line: 39, column: 14, scope: !35)
!74 = !DILocation(line: 39, column: 25, scope: !35)
!75 = !DILocation(line: 39, column: 23, scope: !35)
!76 = !DILocation(line: 39, column: 13, scope: !35)
!77 = !DILocation(line: 39, column: 44, scope: !35)
!78 = !DILocation(line: 39, column: 42, scope: !35)
!79 = !DILocation(line: 39, column: 11, scope: !35)
!80 = !DILocation(line: 40, column: 16, scope: !35)
!81 = !DILocation(line: 40, column: 3, scope: !35)
!82 = !DILocation(line: 40, column: 11, scope: !35)
!83 = !DILocation(line: 40, column: 14, scope: !35)
!84 = !DILocation(line: 41, column: 2, scope: !35)
!85 = !DILocation(line: 41, column: 11, scope: !17)
!86 = distinct !{!86, !66, !87, !88, !89}
!87 = !DILocation(line: 41, column: 14, scope: !17)
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = !DILocation(line: 43, column: 9, scope: !17)
!91 = !DILocation(line: 44, column: 1, scope: !17)
!92 = !DILocation(line: 43, column: 2, scope: !17)
