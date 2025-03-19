; ModuleID = 'arch/x86/kernel/apic/probe_64.c'
source_filename = "arch/x86/kernel/apic/probe_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__apicdrivers = external dso_local global [0 x ptr], align 8
@__apicdrivers_end = external dso_local global [0 x ptr], align 8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @x86_64_probe_apic() #0 section ".init.text" align 16 !dbg !22 {
entry:
  %drv = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #5, !dbg !150
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !26, metadata !DIExpression()), !dbg !151
  call void @enable_IR_x2apic() #6, !dbg !152
  store ptr @__apicdrivers, ptr %drv, align 8, !dbg !153
  br label %for.cond, !dbg !155

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %drv, align 8, !dbg !156
  %cmp = icmp ult ptr %0, @__apicdrivers_end, !dbg !158
  br i1 %cmp, label %for.body, label %for.end, !dbg !159

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %drv, align 8, !dbg !160
  %2 = load ptr, ptr %1, align 8, !dbg !163
  %probe = getelementptr inbounds %struct.apic, ptr %2, i32 0, i32 18, !dbg !164
  %3 = load ptr, ptr %probe, align 8, !dbg !164
  %tobool = icmp ne ptr %3, null, !dbg !165
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !166

land.lhs.true:                                    ; preds = %for.body
  %4 = load ptr, ptr %drv, align 8, !dbg !167
  %5 = load ptr, ptr %4, align 8, !dbg !168
  %probe1 = getelementptr inbounds %struct.apic, ptr %5, i32 0, i32 18, !dbg !169
  %6 = load ptr, ptr %probe1, align 8, !dbg !169
  %call = call i32 %6() #6, !dbg !170
  %tobool2 = icmp ne i32 %call, 0, !dbg !170
  br i1 %tobool2, label %if.then, label %if.end, !dbg !171

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %drv, align 8, !dbg !172
  %8 = load ptr, ptr %7, align 8, !dbg !174
  call void @apic_install_driver(ptr noundef %8) #7, !dbg !175
  br label %for.end, !dbg !176

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !177

for.inc:                                          ; preds = %if.end
  %9 = load ptr, ptr %drv, align 8, !dbg !178
  %incdec.ptr = getelementptr ptr, ptr %9, i32 1, !dbg !178
  store ptr %incdec.ptr, ptr %drv, align 8, !dbg !178
  br label %for.cond, !dbg !179, !llvm.loop !180

for.end:                                          ; preds = %if.then, %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #5, !dbg !184
  ret void, !dbg !184
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !185 dso_local void @enable_IR_x2apic() #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !186 dso_local void @apic_install_driver(ptr noundef) #4 section ".init.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @default_acpi_madt_oem_check(ptr noundef %oem_id, ptr noundef %oem_table_id) #0 section ".init.text" align 16 !dbg !189 {
entry:
  %retval = alloca i32, align 4
  %oem_id.addr = alloca ptr, align 8
  %oem_table_id.addr = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %oem_id, ptr %oem_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oem_id.addr, metadata !191, metadata !DIExpression()), !dbg !194
  store ptr %oem_table_id, ptr %oem_table_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oem_table_id.addr, metadata !192, metadata !DIExpression()), !dbg !195
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #5, !dbg !196
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !193, metadata !DIExpression()), !dbg !197
  store ptr @__apicdrivers, ptr %drv, align 8, !dbg !198
  br label %for.cond, !dbg !200

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %drv, align 8, !dbg !201
  %cmp = icmp ult ptr %0, @__apicdrivers_end, !dbg !203
  br i1 %cmp, label %for.body, label %for.end, !dbg !204

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %drv, align 8, !dbg !205
  %2 = load ptr, ptr %1, align 8, !dbg !208
  %acpi_madt_oem_check = getelementptr inbounds %struct.apic, ptr %2, i32 0, i32 19, !dbg !209
  %3 = load ptr, ptr %acpi_madt_oem_check, align 8, !dbg !209
  %4 = load ptr, ptr %oem_id.addr, align 8, !dbg !210
  %5 = load ptr, ptr %oem_table_id.addr, align 8, !dbg !211
  %call = call i32 %3(ptr noundef %4, ptr noundef %5) #6, !dbg !212
  %tobool = icmp ne i32 %call, 0, !dbg !212
  br i1 %tobool, label %if.then, label %if.end, !dbg !213

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %drv, align 8, !dbg !214
  %7 = load ptr, ptr %6, align 8, !dbg !216
  call void @apic_install_driver(ptr noundef %7) #7, !dbg !217
  store i32 1, ptr %retval, align 4, !dbg !218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !218

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !219

for.inc:                                          ; preds = %if.end
  %8 = load ptr, ptr %drv, align 8, !dbg !220
  %incdec.ptr = getelementptr ptr, ptr %8, i32 1, !dbg !220
  store ptr %incdec.ptr, ptr %drv, align 8, !dbg !220
  br label %for.cond, !dbg !221, !llvm.loop !222

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !224
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !224

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #5, !dbg !225
  %9 = load i32, ptr %retval, align 4, !dbg !225
  ret i32 %9, !dbg !225
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/apic/.probe_64.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/apic/probe_64\22 -D KBUILD_BASENAME=\22probe_64\22 -D KBUILD_MODNAME=\22probe_64\22 -D __KBUILD_MODNAME=kmod_probe_64 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/apic/probe_64.ll arch/x86/kernel/apic/probe_64.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/kernel/apic/probe_64.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "141e2fb3d022a85b0f2ecb0fbd52c605")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "apic_delivery_modes", file: !4, line: 433, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./arch/x86/include/asm/apicdef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdaaaf45bbaf966a6fbb9825227d537")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12}
!7 = !DIEnumerator(name: "APIC_DELIVERY_MODE_FIXED", value: 0)
!8 = !DIEnumerator(name: "APIC_DELIVERY_MODE_LOWESTPRIO", value: 1)
!9 = !DIEnumerator(name: "APIC_DELIVERY_MODE_SMI", value: 2)
!10 = !DIEnumerator(name: "APIC_DELIVERY_MODE_NMI", value: 4)
!11 = !DIEnumerator(name: "APIC_DELIVERY_MODE_INIT", value: 5)
!12 = !DIEnumerator(name: "APIC_DELIVERY_MODE_EXTINT", value: 7)
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 8, !"cf-protection-branch", i32 1}
!17 = !{i32 4, !"function_return_thunk_extern", i32 1}
!18 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!19 = !{i32 1, !"Code Model", i32 2}
!20 = !{i32 1, !"override-stack-alignment", i32 8}
!21 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!22 = distinct !DISubprogram(name: "x86_64_probe_apic", scope: !1, file: !1, line: 17, type: !23, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{null}
!25 = !{!26}
!26 = !DILocalVariable(name: "drv", scope: !22, file: !1, line: 19, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apic", file: !30, line: 258, size: 1920, elements: !31)
!30 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!31 = !{!32, !34, !35, !43, !47, !48, !52, !57, !71, !72, !76, !77, !78, !79, !80, !81, !82, !83, !87, !94, !95, !96, !100, !106, !113, !126, !127, !131, !135, !139, !143, !144, !148, !149}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !29, file: !30, line: 260, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "native_eoi", scope: !29, file: !30, line: 261, baseType: !33, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !29, file: !30, line: 262, baseType: !36, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !39}
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !40, line: 21, baseType: !41)
!40 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !42, line: 27, baseType: !5)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!43 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !29, file: !30, line: 263, baseType: !44, size: 64, offset: 192)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!39, !39}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "wait_icr_idle", scope: !29, file: !30, line: 266, baseType: !33, size: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "safe_wait_icr_idle", scope: !29, file: !30, line: 267, baseType: !49, size: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!39}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI", scope: !29, file: !30, line: 269, baseType: !53, size: 64, offset: 384)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56, !56}
!56 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_mask", scope: !29, file: !30, line: 270, baseType: !58, size: 64, offset: 448)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61, !56}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !64, line: 19, size: 64, elements: !65)
!64 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!65 = !{!66}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !63, file: !64, line: 19, baseType: !67, size: 64)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 64, elements: !69)
!68 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!69 = !{!70}
!70 = !DISubrange(count: 1)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_mask_allbutself", scope: !29, file: !30, line: 271, baseType: !58, size: 64, offset: 512)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_allbutself", scope: !29, file: !30, line: 272, baseType: !73, size: 64, offset: 576)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !56}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_all", scope: !29, file: !30, line: 273, baseType: !73, size: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_self", scope: !29, file: !30, line: 274, baseType: !73, size: 64, offset: 704)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_mode", scope: !29, file: !30, line: 276, baseType: !3, size: 32, offset: 768)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "disable_esr", scope: !29, file: !30, line: 278, baseType: !39, size: 1, offset: 800, flags: DIFlagBitField, extraData: i64 800)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "dest_mode_logical", scope: !29, file: !30, line: 279, baseType: !39, size: 1, offset: 801, flags: DIFlagBitField, extraData: i64 800)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "x2apic_set_max_apicid", scope: !29, file: !30, line: 280, baseType: !39, size: 1, offset: 802, flags: DIFlagBitField, extraData: i64 800)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nmi_to_offline_cpu", scope: !29, file: !30, line: 281, baseType: !39, size: 1, offset: 803, flags: DIFlagBitField, extraData: i64 800)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "calc_dest_apicid", scope: !29, file: !30, line: 283, baseType: !84, size: 64, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{!39, !5}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "icr_read", scope: !29, file: !30, line: 286, baseType: !88, size: 64, offset: 896)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !40, line: 23, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !42, line: 31, baseType: !93)
!93 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "icr_write", scope: !29, file: !30, line: 287, baseType: !36, size: 64, offset: 960)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "max_apic_id", scope: !29, file: !30, line: 290, baseType: !39, size: 32, offset: 1024)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !29, file: !30, line: 293, baseType: !97, size: 64, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DISubroutineType(types: !99)
!99 = !{!56}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_madt_oem_check", scope: !29, file: !30, line: 294, baseType: !101, size: 64, offset: 1152)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{!56, !104, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "apic_id_registered", scope: !29, file: !30, line: 295, baseType: !107, size: 64, offset: 1216)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !111, line: 35, baseType: !112)
!111 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!112 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "check_apicid_used", scope: !29, file: !30, line: 297, baseType: !114, size: 64, offset: 1280)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!110, !117, !56}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "physid_mask_t", file: !119, line: 84, baseType: !120)
!119 = !DIFile(filename: "./arch/x86/include/asm/mpspec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6c121953d7eb2fe88838a269afe2127b")
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "physid_mask", file: !119, line: 80, size: 32768, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !120, file: !119, line: 81, baseType: !123, size: 32768)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 32768, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 512)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "init_apic_ldr", scope: !29, file: !30, line: 298, baseType: !33, size: 64, offset: 1344)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "ioapic_phys_id_map", scope: !29, file: !30, line: 299, baseType: !128, size: 64, offset: 1408)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !117, !117}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_present_to_apicid", scope: !29, file: !30, line: 300, baseType: !132, size: 64, offset: 1472)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!56, !56}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "phys_pkg_id", scope: !29, file: !30, line: 301, baseType: !136, size: 64, offset: 1536)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!56, !56, !56}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "get_apic_id", scope: !29, file: !30, line: 303, baseType: !140, size: 64, offset: 1600)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!39, !68}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "set_apic_id", scope: !29, file: !30, line: 304, baseType: !84, size: 64, offset: 1664)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_secondary_cpu", scope: !29, file: !30, line: 307, baseType: !145, size: 64, offset: 1728)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!56, !56, !68}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_secondary_cpu_64", scope: !29, file: !30, line: 309, baseType: !145, size: 64, offset: 1792)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !29, file: !30, line: 311, baseType: !104, size: 64, offset: 1856)
!150 = !DILocation(line: 19, column: 2, scope: !22)
!151 = !DILocation(line: 19, column: 16, scope: !22)
!152 = !DILocation(line: 21, column: 2, scope: !22)
!153 = !DILocation(line: 23, column: 11, scope: !154)
!154 = distinct !DILexicalBlock(scope: !22, file: !1, line: 23, column: 2)
!155 = !DILocation(line: 23, column: 7, scope: !154)
!156 = !DILocation(line: 23, column: 28, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !1, line: 23, column: 2)
!158 = !DILocation(line: 23, column: 32, scope: !157)
!159 = !DILocation(line: 23, column: 2, scope: !154)
!160 = !DILocation(line: 24, column: 9, scope: !161)
!161 = distinct !DILexicalBlock(scope: !162, file: !1, line: 24, column: 7)
!162 = distinct !DILexicalBlock(scope: !157, file: !1, line: 23, column: 60)
!163 = !DILocation(line: 24, column: 8, scope: !161)
!164 = !DILocation(line: 24, column: 15, scope: !161)
!165 = !DILocation(line: 24, column: 7, scope: !161)
!166 = !DILocation(line: 24, column: 21, scope: !161)
!167 = !DILocation(line: 24, column: 26, scope: !161)
!168 = !DILocation(line: 24, column: 25, scope: !161)
!169 = !DILocation(line: 24, column: 32, scope: !161)
!170 = !DILocation(line: 24, column: 24, scope: !161)
!171 = !DILocation(line: 24, column: 7, scope: !162)
!172 = !DILocation(line: 25, column: 25, scope: !173)
!173 = distinct !DILexicalBlock(scope: !161, file: !1, line: 24, column: 41)
!174 = !DILocation(line: 25, column: 24, scope: !173)
!175 = !DILocation(line: 25, column: 4, scope: !173)
!176 = !DILocation(line: 26, column: 4, scope: !173)
!177 = !DILocation(line: 28, column: 2, scope: !162)
!178 = !DILocation(line: 23, column: 56, scope: !157)
!179 = !DILocation(line: 23, column: 2, scope: !157)
!180 = distinct !{!180, !159, !181, !182, !183}
!181 = !DILocation(line: 28, column: 2, scope: !154)
!182 = !{!"llvm.loop.mustprogress"}
!183 = !{!"llvm.loop.unroll.disable"}
!184 = !DILocation(line: 29, column: 1, scope: !22)
!185 = !DISubprogram(name: "enable_IR_x2apic", scope: !30, file: !30, line: 120, type: !23, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!186 = !DISubprogram(name: "apic_install_driver", scope: !30, file: !30, line: 369, type: !187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !28}
!189 = distinct !DISubprogram(name: "default_acpi_madt_oem_check", scope: !1, file: !1, line: 31, type: !102, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !190)
!190 = !{!191, !192, !193}
!191 = !DILocalVariable(name: "oem_id", arg: 1, scope: !189, file: !1, line: 31, type: !104)
!192 = !DILocalVariable(name: "oem_table_id", arg: 2, scope: !189, file: !1, line: 31, type: !104)
!193 = !DILocalVariable(name: "drv", scope: !189, file: !1, line: 33, type: !27)
!194 = !DILocation(line: 31, column: 46, scope: !189)
!195 = !DILocation(line: 31, column: 60, scope: !189)
!196 = !DILocation(line: 33, column: 2, scope: !189)
!197 = !DILocation(line: 33, column: 16, scope: !189)
!198 = !DILocation(line: 35, column: 11, scope: !199)
!199 = distinct !DILexicalBlock(scope: !189, file: !1, line: 35, column: 2)
!200 = !DILocation(line: 35, column: 7, scope: !199)
!201 = !DILocation(line: 35, column: 28, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !1, line: 35, column: 2)
!203 = !DILocation(line: 35, column: 32, scope: !202)
!204 = !DILocation(line: 35, column: 2, scope: !199)
!205 = !DILocation(line: 36, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 36, column: 7)
!207 = distinct !DILexicalBlock(scope: !202, file: !1, line: 35, column: 60)
!208 = !DILocation(line: 36, column: 8, scope: !206)
!209 = !DILocation(line: 36, column: 15, scope: !206)
!210 = !DILocation(line: 36, column: 35, scope: !206)
!211 = !DILocation(line: 36, column: 43, scope: !206)
!212 = !DILocation(line: 36, column: 7, scope: !206)
!213 = !DILocation(line: 36, column: 7, scope: !207)
!214 = !DILocation(line: 37, column: 25, scope: !215)
!215 = distinct !DILexicalBlock(scope: !206, file: !1, line: 36, column: 58)
!216 = !DILocation(line: 37, column: 24, scope: !215)
!217 = !DILocation(line: 37, column: 4, scope: !215)
!218 = !DILocation(line: 38, column: 4, scope: !215)
!219 = !DILocation(line: 40, column: 2, scope: !207)
!220 = !DILocation(line: 35, column: 56, scope: !202)
!221 = !DILocation(line: 35, column: 2, scope: !202)
!222 = distinct !{!222, !204, !223, !182, !183}
!223 = !DILocation(line: 40, column: 2, scope: !199)
!224 = !DILocation(line: 41, column: 2, scope: !189)
!225 = !DILocation(line: 42, column: 1, scope: !189)
