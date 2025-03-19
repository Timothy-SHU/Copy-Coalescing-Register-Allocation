; ModuleID = 'lib/iomap_copy.c'
source_filename = "lib/iomap_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___iowrite32_copy: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __iowrite32_copy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___ioread32_copy: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __ioread32_copy ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___iowrite64_copy: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __iowrite64_copy ; .previous"

@__UNIQUE_ID___addressable___iowrite32_copy67 = internal global ptr @__iowrite32_copy, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable___ioread32_copy68 = internal global ptr @__ioread32_copy, section ".discard.addressable", align 8, !dbg !17
@__UNIQUE_ID___addressable___iowrite64_copy69 = internal global ptr @__iowrite64_copy, section ".discard.addressable", align 8, !dbg !19
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable___iowrite32_copy67, ptr @__UNIQUE_ID___addressable___ioread32_copy68, ptr @__UNIQUE_ID___addressable___iowrite64_copy69], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden void @__iowrite32_copy(ptr noundef %to, ptr noundef %from, i64 noundef %count) #0 align 16 !dbg !30 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %dst = alloca ptr, align 8
  %src = alloca ptr, align 8
  %end = alloca ptr, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !42, metadata !DIExpression()), !dbg !53
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !43, metadata !DIExpression()), !dbg !54
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !44, metadata !DIExpression()), !dbg !55
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #4, !dbg !56
  call void @llvm.dbg.declare(metadata ptr %dst, metadata !45, metadata !DIExpression()), !dbg !57
  %0 = load ptr, ptr %to.addr, align 8, !dbg !58
  store ptr %0, ptr %dst, align 8, !dbg !57
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #4, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %src, metadata !49, metadata !DIExpression()), !dbg !60
  %1 = load ptr, ptr %from.addr, align 8, !dbg !61
  store ptr %1, ptr %src, align 8, !dbg !60
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #4, !dbg !62
  call void @llvm.dbg.declare(metadata ptr %end, metadata !52, metadata !DIExpression()), !dbg !63
  %2 = load ptr, ptr %src, align 8, !dbg !64
  %3 = load i64, ptr %count.addr, align 8, !dbg !65
  %add.ptr = getelementptr i32, ptr %2, i64 %3, !dbg !66
  store ptr %add.ptr, ptr %end, align 8, !dbg !63
  br label %while.cond, !dbg !67

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %src, align 8, !dbg !68
  %5 = load ptr, ptr %end, align 8, !dbg !69
  %cmp = icmp ult ptr %4, %5, !dbg !70
  br i1 %cmp, label %while.body, label %while.end, !dbg !67

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %src, align 8, !dbg !71
  %incdec.ptr = getelementptr i32, ptr %6, i32 1, !dbg !71
  store ptr %incdec.ptr, ptr %src, align 8, !dbg !71
  %7 = load i32, ptr %6, align 4, !dbg !72
  %8 = load ptr, ptr %dst, align 8, !dbg !73
  %incdec.ptr1 = getelementptr i32, ptr %8, i32 1, !dbg !73
  store ptr %incdec.ptr1, ptr %dst, align 8, !dbg !73
  call void @__writel(i32 noundef %7, ptr noundef %8) #5, !dbg !74
  br label %while.cond, !dbg !67, !llvm.loop !75

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #4, !dbg !79
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #4, !dbg !79
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #4, !dbg !79
  ret void, !dbg !79
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__writel(i32 noundef %val, ptr noundef %addr) #3 align 16 !dbg !80 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !87, metadata !DIExpression()), !dbg !89
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !88, metadata !DIExpression()), !dbg !89
  %0 = load i32, ptr %val.addr, align 4, !dbg !89
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !89
  call void asm sideeffect "movl $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i32 %0, ptr elementtype(i32) %1) #4, !dbg !89, !srcloc !90
  ret void, !dbg !89
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__ioread32_copy(ptr noundef %to, ptr noundef %from, i64 noundef %count) #0 align 16 !dbg !91 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %dst = alloca ptr, align 8
  %src = alloca ptr, align 8
  %end = alloca ptr, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !93, metadata !DIExpression()), !dbg !99
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !94, metadata !DIExpression()), !dbg !100
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !95, metadata !DIExpression()), !dbg !101
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #4, !dbg !102
  call void @llvm.dbg.declare(metadata ptr %dst, metadata !96, metadata !DIExpression()), !dbg !103
  %0 = load ptr, ptr %to.addr, align 8, !dbg !104
  store ptr %0, ptr %dst, align 8, !dbg !103
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #4, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %src, metadata !97, metadata !DIExpression()), !dbg !106
  %1 = load ptr, ptr %from.addr, align 8, !dbg !107
  store ptr %1, ptr %src, align 8, !dbg !106
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #4, !dbg !108
  call void @llvm.dbg.declare(metadata ptr %end, metadata !98, metadata !DIExpression()), !dbg !109
  %2 = load ptr, ptr %src, align 8, !dbg !110
  %3 = load i64, ptr %count.addr, align 8, !dbg !111
  %add.ptr = getelementptr i32, ptr %2, i64 %3, !dbg !112
  store ptr %add.ptr, ptr %end, align 8, !dbg !109
  br label %while.cond, !dbg !113

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %src, align 8, !dbg !114
  %5 = load ptr, ptr %end, align 8, !dbg !115
  %cmp = icmp ult ptr %4, %5, !dbg !116
  br i1 %cmp, label %while.body, label %while.end, !dbg !113

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %src, align 8, !dbg !117
  %incdec.ptr = getelementptr i32, ptr %6, i32 1, !dbg !117
  store ptr %incdec.ptr, ptr %src, align 8, !dbg !117
  %call = call i32 @__readl(ptr noundef %6) #5, !dbg !118
  %7 = load ptr, ptr %dst, align 8, !dbg !119
  %incdec.ptr1 = getelementptr i32, ptr %7, i32 1, !dbg !119
  store ptr %incdec.ptr1, ptr %dst, align 8, !dbg !119
  store i32 %call, ptr %7, align 4, !dbg !120
  br label %while.cond, !dbg !113, !llvm.loop !121

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #4, !dbg !123
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #4, !dbg !123
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #4, !dbg !123
  ret void, !dbg !123
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__readl(ptr noundef %addr) #3 align 16 !dbg !124 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !130, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #4, !dbg !132
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !132
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #4, !dbg !132, !srcloc !133
  store i32 %1, ptr %ret, align 4, !dbg !132
  %2 = load i32, ptr %ret, align 4, !dbg !132
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #4, !dbg !132
  ret i32 %2, !dbg !132
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define weak hidden void @__iowrite64_copy(ptr noundef %to, ptr noundef %from, i64 noundef %count) #0 align 16 !dbg !134 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %dst = alloca ptr, align 8
  %src = alloca ptr, align 8
  %end = alloca ptr, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !136, metadata !DIExpression()), !dbg !145
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !137, metadata !DIExpression()), !dbg !146
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !138, metadata !DIExpression()), !dbg !147
  call void @llvm.lifetime.start.p0(i64 8, ptr %dst) #4, !dbg !148
  call void @llvm.dbg.declare(metadata ptr %dst, metadata !139, metadata !DIExpression()), !dbg !149
  %0 = load ptr, ptr %to.addr, align 8, !dbg !150
  store ptr %0, ptr %dst, align 8, !dbg !149
  call void @llvm.lifetime.start.p0(i64 8, ptr %src) #4, !dbg !151
  call void @llvm.dbg.declare(metadata ptr %src, metadata !141, metadata !DIExpression()), !dbg !152
  %1 = load ptr, ptr %from.addr, align 8, !dbg !153
  store ptr %1, ptr %src, align 8, !dbg !152
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #4, !dbg !154
  call void @llvm.dbg.declare(metadata ptr %end, metadata !144, metadata !DIExpression()), !dbg !155
  %2 = load ptr, ptr %src, align 8, !dbg !156
  %3 = load i64, ptr %count.addr, align 8, !dbg !157
  %add.ptr = getelementptr i64, ptr %2, i64 %3, !dbg !158
  store ptr %add.ptr, ptr %end, align 8, !dbg !155
  br label %while.cond, !dbg !159

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %src, align 8, !dbg !160
  %5 = load ptr, ptr %end, align 8, !dbg !161
  %cmp = icmp ult ptr %4, %5, !dbg !162
  br i1 %cmp, label %while.body, label %while.end, !dbg !159

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %src, align 8, !dbg !163
  %incdec.ptr = getelementptr i64, ptr %6, i32 1, !dbg !163
  store ptr %incdec.ptr, ptr %src, align 8, !dbg !163
  %7 = load i64, ptr %6, align 8, !dbg !164
  %8 = load ptr, ptr %dst, align 8, !dbg !165
  %incdec.ptr1 = getelementptr i64, ptr %8, i32 1, !dbg !165
  store ptr %incdec.ptr1, ptr %dst, align 8, !dbg !165
  call void @__writeq(i64 noundef %7, ptr noundef %8) #5, !dbg !166
  br label %while.cond, !dbg !159, !llvm.loop !167

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #4, !dbg !169
  call void @llvm.lifetime.end.p0(i64 8, ptr %src) #4, !dbg !169
  call void @llvm.lifetime.end.p0(i64 8, ptr %dst) #4, !dbg !169
  ret void, !dbg !169
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__writeq(i64 noundef %val, ptr noundef %addr) #3 align 16 !dbg !170 {
entry:
  %val.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !174, metadata !DIExpression()), !dbg !176
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = load i64, ptr %val.addr, align 8, !dbg !176
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !176
  call void asm sideeffect "movq $0,$1", "r,*m,~{dirflag},~{fpsr},~{flags}"(i64 %0, ptr elementtype(i64) %1) #4, !dbg !176, !srcloc !177
  ret void, !dbg !176
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___iowrite32_copy67", scope: !2, file: !3, line: 30, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.iomap_copy.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/iomap_copy\22 -D KBUILD_BASENAME=\22iomap_copy\22 -D KBUILD_MODNAME=\22iomap_copy\22 -D __KBUILD_MODNAME=kmod_iomap_copy -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/iomap_copy.ll lib/iomap_copy.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !16, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/iomap_copy.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6a24cac5d54096fe0894e074654da0e")
!4 = !{!5, !6, !9}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !8)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !12, line: 23, baseType: !13)
!12 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !14, line: 31, baseType: !15)
!14 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!15 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!16 = !{!0, !17, !19}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___ioread32_copy68", scope: !2, file: !3, line: 51, type: !5, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___iowrite64_copy69", scope: !2, file: !3, line: 79, type: !5, isLocal: true, isDefinition: true)
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 8, !"cf-protection-branch", i32 1}
!25 = !{i32 4, !"function_return_thunk_extern", i32 1}
!26 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!27 = !{i32 1, !"Code Model", i32 2}
!28 = !{i32 1, !"override-stack-alignment", i32 8}
!29 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!30 = distinct !DISubprogram(name: "__iowrite32_copy", scope: !3, file: !3, line: 19, type: !31, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !41)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !5, !33, !35}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 61, baseType: !37)
!36 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !38, line: 72, baseType: !39)
!38 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !38, line: 16, baseType: !40)
!40 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!41 = !{!42, !43, !44, !45, !49, !52}
!42 = !DILocalVariable(name: "to", arg: 1, scope: !30, file: !3, line: 19, type: !5)
!43 = !DILocalVariable(name: "from", arg: 2, scope: !30, file: !3, line: 20, type: !33)
!44 = !DILocalVariable(name: "count", arg: 3, scope: !30, file: !3, line: 21, type: !35)
!45 = !DILocalVariable(name: "dst", scope: !30, file: !3, line: 23, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !12, line: 21, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !14, line: 27, baseType: !8)
!49 = !DILocalVariable(name: "src", scope: !30, file: !3, line: 24, type: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!52 = !DILocalVariable(name: "end", scope: !30, file: !3, line: 25, type: !50)
!53 = !DILocation(line: 19, column: 59, scope: !30)
!54 = !DILocation(line: 20, column: 22, scope: !30)
!55 = !DILocation(line: 21, column: 17, scope: !30)
!56 = !DILocation(line: 23, column: 2, scope: !30)
!57 = !DILocation(line: 23, column: 15, scope: !30)
!58 = !DILocation(line: 23, column: 21, scope: !30)
!59 = !DILocation(line: 24, column: 2, scope: !30)
!60 = !DILocation(line: 24, column: 13, scope: !30)
!61 = !DILocation(line: 24, column: 19, scope: !30)
!62 = !DILocation(line: 25, column: 2, scope: !30)
!63 = !DILocation(line: 25, column: 13, scope: !30)
!64 = !DILocation(line: 25, column: 19, scope: !30)
!65 = !DILocation(line: 25, column: 25, scope: !30)
!66 = !DILocation(line: 25, column: 23, scope: !30)
!67 = !DILocation(line: 27, column: 2, scope: !30)
!68 = !DILocation(line: 27, column: 9, scope: !30)
!69 = !DILocation(line: 27, column: 15, scope: !30)
!70 = !DILocation(line: 27, column: 13, scope: !30)
!71 = !DILocation(line: 28, column: 20, scope: !30)
!72 = !DILocation(line: 28, column: 16, scope: !30)
!73 = !DILocation(line: 28, column: 27, scope: !30)
!74 = !DILocation(line: 28, column: 3, scope: !30)
!75 = distinct !{!75, !67, !76, !77, !78}
!76 = !DILocation(line: 28, column: 29, scope: !30)
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !DILocation(line: 29, column: 1, scope: !30)
!80 = distinct !DISubprogram(name: "__writel", scope: !81, file: !81, line: 70, type: !82, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !86)
!81 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!82 = !DISubroutineType(types: !83)
!83 = !{null, !8, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!86 = !{!87, !88}
!87 = !DILocalVariable(name: "val", arg: 1, scope: !80, file: !81, line: 70, type: !8)
!88 = !DILocalVariable(name: "addr", arg: 2, scope: !80, file: !81, line: 70, type: !84)
!89 = !DILocation(line: 70, column: 1, scope: !80)
!90 = !{i64 2148161847}
!91 = distinct !DISubprogram(name: "__ioread32_copy", scope: !3, file: !3, line: 42, type: !31, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !92)
!92 = !{!93, !94, !95, !96, !97, !98}
!93 = !DILocalVariable(name: "to", arg: 1, scope: !91, file: !3, line: 42, type: !5)
!94 = !DILocalVariable(name: "from", arg: 2, scope: !91, file: !3, line: 42, type: !33)
!95 = !DILocalVariable(name: "count", arg: 3, scope: !91, file: !3, line: 42, type: !35)
!96 = !DILocalVariable(name: "dst", scope: !91, file: !3, line: 44, type: !46)
!97 = !DILocalVariable(name: "src", scope: !91, file: !3, line: 45, type: !50)
!98 = !DILocalVariable(name: "end", scope: !91, file: !3, line: 46, type: !50)
!99 = !DILocation(line: 42, column: 28, scope: !91)
!100 = !DILocation(line: 42, column: 52, scope: !91)
!101 = !DILocation(line: 42, column: 65, scope: !91)
!102 = !DILocation(line: 44, column: 2, scope: !91)
!103 = !DILocation(line: 44, column: 7, scope: !91)
!104 = !DILocation(line: 44, column: 13, scope: !91)
!105 = !DILocation(line: 45, column: 2, scope: !91)
!106 = !DILocation(line: 45, column: 21, scope: !91)
!107 = !DILocation(line: 45, column: 27, scope: !91)
!108 = !DILocation(line: 46, column: 2, scope: !91)
!109 = !DILocation(line: 46, column: 21, scope: !91)
!110 = !DILocation(line: 46, column: 27, scope: !91)
!111 = !DILocation(line: 46, column: 33, scope: !91)
!112 = !DILocation(line: 46, column: 31, scope: !91)
!113 = !DILocation(line: 48, column: 2, scope: !91)
!114 = !DILocation(line: 48, column: 9, scope: !91)
!115 = !DILocation(line: 48, column: 15, scope: !91)
!116 = !DILocation(line: 48, column: 13, scope: !91)
!117 = !DILocation(line: 49, column: 27, scope: !91)
!118 = !DILocation(line: 49, column: 12, scope: !91)
!119 = !DILocation(line: 49, column: 7, scope: !91)
!120 = !DILocation(line: 49, column: 10, scope: !91)
!121 = distinct !{!121, !113, !122, !77, !78}
!122 = !DILocation(line: 49, column: 29, scope: !91)
!123 = !DILocation(line: 50, column: 1, scope: !91)
!124 = distinct !DISubprogram(name: "__readl", scope: !81, file: !81, line: 62, type: !125, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !129)
!125 = !DISubroutineType(types: !126)
!126 = !{!8, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!129 = !{!130, !131}
!130 = !DILocalVariable(name: "addr", arg: 1, scope: !124, file: !81, line: 62, type: !127)
!131 = !DILocalVariable(name: "ret", scope: !124, file: !81, line: 62, type: !8)
!132 = !DILocation(line: 62, column: 1, scope: !124)
!133 = !{i64 2148159544}
!134 = distinct !DISubprogram(name: "__iowrite64_copy", scope: !3, file: !3, line: 63, type: !31, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !135)
!135 = !{!136, !137, !138, !139, !141, !144}
!136 = !DILocalVariable(name: "to", arg: 1, scope: !134, file: !3, line: 63, type: !5)
!137 = !DILocalVariable(name: "from", arg: 2, scope: !134, file: !3, line: 64, type: !33)
!138 = !DILocalVariable(name: "count", arg: 3, scope: !134, file: !3, line: 65, type: !35)
!139 = !DILocalVariable(name: "dst", scope: !134, file: !3, line: 68, type: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!141 = !DILocalVariable(name: "src", scope: !134, file: !3, line: 69, type: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!144 = !DILocalVariable(name: "end", scope: !134, file: !3, line: 70, type: !142)
!145 = !DILocation(line: 63, column: 59, scope: !134)
!146 = !DILocation(line: 64, column: 22, scope: !134)
!147 = !DILocation(line: 65, column: 17, scope: !134)
!148 = !DILocation(line: 68, column: 2, scope: !134)
!149 = !DILocation(line: 68, column: 15, scope: !134)
!150 = !DILocation(line: 68, column: 21, scope: !134)
!151 = !DILocation(line: 69, column: 2, scope: !134)
!152 = !DILocation(line: 69, column: 13, scope: !134)
!153 = !DILocation(line: 69, column: 19, scope: !134)
!154 = !DILocation(line: 70, column: 2, scope: !134)
!155 = !DILocation(line: 70, column: 13, scope: !134)
!156 = !DILocation(line: 70, column: 19, scope: !134)
!157 = !DILocation(line: 70, column: 25, scope: !134)
!158 = !DILocation(line: 70, column: 23, scope: !134)
!159 = !DILocation(line: 72, column: 2, scope: !134)
!160 = !DILocation(line: 72, column: 9, scope: !134)
!161 = !DILocation(line: 72, column: 15, scope: !134)
!162 = !DILocation(line: 72, column: 13, scope: !134)
!163 = !DILocation(line: 73, column: 20, scope: !134)
!164 = !DILocation(line: 73, column: 16, scope: !134)
!165 = !DILocation(line: 73, column: 27, scope: !134)
!166 = !DILocation(line: 73, column: 3, scope: !134)
!167 = distinct !{!167, !159, !168, !77, !78}
!168 = !DILocation(line: 73, column: 29, scope: !134)
!169 = !DILocation(line: 77, column: 1, scope: !134)
!170 = distinct !DISubprogram(name: "__writeq", scope: !81, file: !81, line: 97, type: !171, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !173)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !11, !84}
!173 = !{!174, !175}
!174 = !DILocalVariable(name: "val", arg: 1, scope: !170, file: !81, line: 97, type: !11)
!175 = !DILocalVariable(name: "addr", arg: 2, scope: !170, file: !81, line: 97, type: !84)
!176 = !DILocation(line: 97, column: 1, scope: !170)
!177 = !{i64 2148163345}
