; ModuleID = 'drivers/iommu/amd/quirks.c'
source_filename = "drivers/iommu/amd/quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.ivrs_quirk_entry = type { i8, i32 }

@ivrs_quirks = internal constant [5 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr @ivrs_ioapic_quirk_cb, ptr @.str, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Inspiron 7375\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr @ivrs_ioapic_quirks }, %struct.dmi_system_id { ptr @ivrs_ioapic_quirk_cb, ptr @.str.1, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Dell Inc.\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Latitude 5495\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @ivrs_ioapic_quirks, i64 24) }, %struct.dmi_system_id { ptr @ivrs_ioapic_quirk_cb, ptr @.str.2, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"Acer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"Aspire A315-41\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @ivrs_ioapic_quirks, i64 24) }, %struct.dmi_system_id { ptr @ivrs_ioapic_quirk_cb, ptr @.str.3, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"LENOVO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"81FB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr getelementptr (i8, ptr @ivrs_ioapic_quirks, i64 48) }, %struct.dmi_system_id zeroinitializer], section ".init.rodata", align 16, !dbg !0
@.str = private unnamed_addr constant [19 x i8] c"Dell Inspiron 7375\00", align 1, !dbg !13
@ivrs_ioapic_quirks = internal constant [4 x [3 x %struct.ivrs_quirk_entry]] [[3 x %struct.ivrs_quirk_entry] [%struct.ivrs_quirk_entry { i8 4, i32 160 }, %struct.ivrs_quirk_entry { i8 5, i32 2 }, %struct.ivrs_quirk_entry zeroinitializer], [3 x %struct.ivrs_quirk_entry] [%struct.ivrs_quirk_entry { i8 4, i32 160 }, %struct.ivrs_quirk_entry zeroinitializer, %struct.ivrs_quirk_entry zeroinitializer], [3 x %struct.ivrs_quirk_entry] [%struct.ivrs_quirk_entry { i8 32, i32 160 }, %struct.ivrs_quirk_entry zeroinitializer, %struct.ivrs_quirk_entry zeroinitializer], [3 x %struct.ivrs_quirk_entry] zeroinitializer], section ".init.rodata", align 16, !dbg !31
@.str.1 = private unnamed_addr constant [19 x i8] c"Dell Latitude 5495\00", align 1, !dbg !19
@.str.2 = private unnamed_addr constant [20 x i8] c"Acer Aspire A315-41\00", align 1, !dbg !21
@.str.3 = private unnamed_addr constant [26 x i8] c"Lenovo ideapad 330S-15ARR\00", align 1, !dbg !26

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @amd_iommu_apply_ivrs_quirks() #0 section ".init.text" align 16 !dbg !82 {
entry:
  %call = call i32 @dmi_check_system(ptr noundef @ivrs_quirks) #5, !dbg !85
  ret void, !dbg !86
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !87 dso_local i32 @dmi_check_system(ptr noundef) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ivrs_ioapic_quirk_cb(ptr noundef %d) #0 section ".init.text" align 16 !dbg !89 {
entry:
  %d.addr = alloca ptr, align 8
  %i = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !91, metadata !DIExpression()), !dbg !94
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #6, !dbg !95
  call void @llvm.dbg.declare(metadata ptr %i, metadata !92, metadata !DIExpression()), !dbg !96
  %0 = load ptr, ptr %d.addr, align 8, !dbg !97
  %driver_data = getelementptr inbounds %struct.dmi_system_id, ptr %0, i32 0, i32 3, !dbg !99
  %1 = load ptr, ptr %driver_data, align 8, !dbg !99
  store ptr %1, ptr %i, align 8, !dbg !100
  br label %for.cond, !dbg !101

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %i, align 8, !dbg !102
  %id = getelementptr inbounds %struct.ivrs_quirk_entry, ptr %2, i32 0, i32 0, !dbg !104
  %3 = load i8, ptr %id, align 4, !dbg !104
  %conv = zext i8 %3 to i32, !dbg !102
  %cmp = icmp ne i32 %conv, 0, !dbg !105
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !106

land.rhs:                                         ; preds = %for.cond
  %4 = load ptr, ptr %i, align 8, !dbg !107
  %devid = getelementptr inbounds %struct.ivrs_quirk_entry, ptr %4, i32 0, i32 1, !dbg !108
  %5 = load i32, ptr %devid, align 4, !dbg !108
  %cmp2 = icmp ne i32 %5, 0, !dbg !109
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ], !dbg !110
  br i1 %6, label %for.body, label %for.end, !dbg !111

for.body:                                         ; preds = %land.end
  %7 = load ptr, ptr %i, align 8, !dbg !112
  %id4 = getelementptr inbounds %struct.ivrs_quirk_entry, ptr %7, i32 0, i32 0, !dbg !113
  %8 = load i8, ptr %id4, align 4, !dbg !113
  %9 = load ptr, ptr %i, align 8, !dbg !114
  %devid5 = getelementptr inbounds %struct.ivrs_quirk_entry, ptr %9, i32 0, i32 1, !dbg !115
  %call = call i32 @add_special_device(i8 noundef zeroext 1, i8 noundef zeroext %8, ptr noundef %devid5, i1 noundef zeroext false) #7, !dbg !116
  br label %for.inc, !dbg !116

for.inc:                                          ; preds = %for.body
  %10 = load ptr, ptr %i, align 8, !dbg !117
  %incdec.ptr = getelementptr %struct.ivrs_quirk_entry, ptr %10, i32 1, !dbg !117
  store ptr %incdec.ptr, ptr %i, align 8, !dbg !117
  br label %for.cond, !dbg !118, !llvm.loop !119

for.end:                                          ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #6, !dbg !123
  ret i32 0, !dbg !124
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !125 dso_local i32 @add_special_device(i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i1 noundef zeroext) #4 section ".init.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone }
attributes #6 = { nounwind }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ivrs_quirks", scope: !2, file: !3, line: 57, type: !45, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/iommu/amd/.quirks.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/iommu/amd/quirks\22 -D KBUILD_BASENAME=\22quirks\22 -D KBUILD_MODNAME=\22quirks\22 -D __KBUILD_MODNAME=kmod_quirks -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/iommu/amd/quirks.ll drivers/iommu/amd/quirks.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !12, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/iommu/amd/quirks.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a50189f5d7511ef72c5feaaf9b53f7b2")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !8, line: 21, baseType: !9)
!8 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !10, line: 27, baseType: !11)
!10 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !{!13, !19, !21, !26, !0, !31}
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 152, elements: !17)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !{!18}
!18 = !DISubrange(count: 19)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !15, isLocal: true, isDefinition: true)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 160, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 20)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 208, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 26)
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "ivrs_ioapic_quirks", scope: !2, file: !3, line: 27, type: !33, isLocal: true, isDefinition: true)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 768, elements: !42)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ivrs_quirk_entry", file: !3, line: 16, size: 64, elements: !36)
!36 = !{!37, !41}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !35, file: !3, line: 17, baseType: !38, size: 8)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !8, line: 17, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !10, line: 21, baseType: !40)
!40 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "devid", scope: !35, file: !3, line: 18, baseType: !7, size: 32, offset: 32)
!42 = !{!43, !44}
!43 = !DISubrange(count: 4)
!44 = !DISubrange(count: 3)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 13760, elements: !71)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !48, line: 587, size: 2752, elements: !49)
!48 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!49 = !{!50, !56, !59, !70}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !47, file: !48, line: 588, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !55}
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !47, file: !48, line: 589, baseType: !57, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !47, file: !48, line: 590, baseType: !60, size: 2560, offset: 128)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2560, elements: !69)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !48, line: 581, size: 640, elements: !62)
!62 = !{!63, !64, !65}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !61, file: !48, line: 582, baseType: !40, size: 7, flags: DIFlagBitField, extraData: i64 0)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !61, file: !48, line: 583, baseType: !40, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !61, file: !48, line: 584, baseType: !66, size: 632, offset: 8)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 632, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 79)
!69 = !{!43}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !47, file: !48, line: 591, baseType: !5, size: 64, offset: 2688)
!71 = !{!72}
!72 = !DISubrange(count: 5)
!73 = !{i32 7, !"Dwarf Version", i32 5}
!74 = !{i32 2, !"Debug Info Version", i32 3}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 8, !"cf-protection-branch", i32 1}
!77 = !{i32 4, !"function_return_thunk_extern", i32 1}
!78 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!79 = !{i32 1, !"Code Model", i32 2}
!80 = !{i32 1, !"override-stack-alignment", i32 8}
!81 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!82 = distinct !DISubprogram(name: "amd_iommu_apply_ivrs_quirks", scope: !3, file: !3, line: 101, type: !83, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!83 = !DISubroutineType(types: !84)
!84 = !{null}
!85 = !DILocation(line: 103, column: 2, scope: !82)
!86 = !DILocation(line: 104, column: 1, scope: !82)
!87 = !DISubprogram(name: "dmi_check_system", scope: !88, file: !88, line: 100, type: !52, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!88 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!89 = distinct !DISubprogram(name: "ivrs_ioapic_quirk_cb", scope: !3, file: !3, line: 47, type: !52, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !90)
!90 = !{!91, !92}
!91 = !DILocalVariable(name: "d", arg: 1, scope: !89, file: !3, line: 47, type: !55)
!92 = !DILocalVariable(name: "i", scope: !89, file: !3, line: 49, type: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!94 = !DILocation(line: 47, column: 68, scope: !89)
!95 = !DILocation(line: 49, column: 2, scope: !89)
!96 = !DILocation(line: 49, column: 33, scope: !89)
!97 = !DILocation(line: 51, column: 11, scope: !98)
!98 = distinct !DILexicalBlock(scope: !89, file: !3, line: 51, column: 2)
!99 = !DILocation(line: 51, column: 14, scope: !98)
!100 = !DILocation(line: 51, column: 9, scope: !98)
!101 = !DILocation(line: 51, column: 7, scope: !98)
!102 = !DILocation(line: 51, column: 27, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !3, line: 51, column: 2)
!104 = !DILocation(line: 51, column: 30, scope: !103)
!105 = !DILocation(line: 51, column: 33, scope: !103)
!106 = !DILocation(line: 51, column: 38, scope: !103)
!107 = !DILocation(line: 51, column: 41, scope: !103)
!108 = !DILocation(line: 51, column: 44, scope: !103)
!109 = !DILocation(line: 51, column: 50, scope: !103)
!110 = !DILocation(line: 0, scope: !103)
!111 = !DILocation(line: 51, column: 2, scope: !98)
!112 = !DILocation(line: 52, column: 43, scope: !103)
!113 = !DILocation(line: 52, column: 46, scope: !103)
!114 = !DILocation(line: 52, column: 58, scope: !103)
!115 = !DILocation(line: 52, column: 61, scope: !103)
!116 = !DILocation(line: 52, column: 3, scope: !103)
!117 = !DILocation(line: 51, column: 57, scope: !103)
!118 = !DILocation(line: 51, column: 2, scope: !103)
!119 = distinct !{!119, !111, !120, !121, !122}
!120 = !DILocation(line: 52, column: 69, scope: !98)
!121 = !{!"llvm.loop.mustprogress"}
!122 = !{!"llvm.loop.unroll.disable"}
!123 = !DILocation(line: 55, column: 1, scope: !89)
!124 = !DILocation(line: 54, column: 2, scope: !89)
!125 = !DISubprogram(name: "add_special_device", scope: !126, file: !126, line: 137, type: !127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!126 = !DIFile(filename: "drivers/iommu/amd/amd_iommu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aede48238cd268ef1a1785d928ba502c")
!127 = !DISubroutineType(types: !128)
!128 = !{!54, !38, !38, !6, !129}
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !130, line: 35, baseType: !131)
!130 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!131 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
