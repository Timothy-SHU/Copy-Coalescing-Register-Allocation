; ModuleID = 'lib/crypto/memneq.c'
source_filename = "lib/crypto/memneq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___crypto_memneq: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __crypto_memneq ; .previous"

%struct.anon = type { i64 }
%struct.anon.0 = type { i64 }
%struct.anon.1 = type { i64 }
%struct.anon.2 = type { i64 }
%struct.anon.3 = type { i64 }
%struct.anon.4 = type { i64 }

@__UNIQUE_ID___addressable___crypto_memneq197 = internal global ptr @__crypto_memneq, section ".discard.addressable", align 8, !dbg !0
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___crypto_memneq197], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__crypto_memneq(ptr noundef %a, ptr noundef %b, i64 noundef %size) #0 align 16 !dbg !87 {
entry:
  %retval = alloca i64, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !89, metadata !DIExpression()), !dbg !92
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !90, metadata !DIExpression()), !dbg !93
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !91, metadata !DIExpression()), !dbg !94
  %0 = load i64, ptr %size.addr, align 8, !dbg !95
  switch i64 %0, label %sw.default [
    i64 16, label %sw.bb
  ], !dbg !96

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %a.addr, align 8, !dbg !97
  %2 = load ptr, ptr %b.addr, align 8, !dbg !99
  %call = call i64 @__crypto_memneq_16(ptr noundef %1, ptr noundef %2) #4, !dbg !100
  store i64 %call, ptr %retval, align 8, !dbg !101
  br label %return, !dbg !101

sw.default:                                       ; preds = %entry
  %3 = load ptr, ptr %a.addr, align 8, !dbg !102
  %4 = load ptr, ptr %b.addr, align 8, !dbg !103
  %5 = load i64, ptr %size.addr, align 8, !dbg !104
  %call1 = call i64 @__crypto_memneq_generic(ptr noundef %3, ptr noundef %4, i64 noundef %5) #4, !dbg !105
  store i64 %call1, ptr %retval, align 8, !dbg !106
  br label %return, !dbg !106

return:                                           ; preds = %sw.default, %sw.bb
  %6 = load i64, ptr %retval, align 8, !dbg !107
  ret i64 %6, !dbg !107
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__crypto_memneq_16(ptr noundef %a, ptr noundef %b) #2 align 16 !dbg !9 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %neq = alloca i64, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__pptr1 = alloca ptr, align 8
  %tmp2 = alloca i64, align 8
  %__pptr4 = alloca ptr, align 8
  %tmp5 = alloca i64, align 8
  %__pptr7 = alloca ptr, align 8
  %tmp9 = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !16, metadata !DIExpression()), !dbg !108
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !17, metadata !DIExpression()), !dbg !109
  call void @llvm.lifetime.start.p0(i64 8, ptr %neq) #5, !dbg !110
  call void @llvm.dbg.declare(metadata ptr %neq, metadata !18, metadata !DIExpression()), !dbg !111
  store i64 0, ptr %neq, align 8, !dbg !111
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #5, !dbg !112
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !19, metadata !DIExpression()), !dbg !112
  %0 = load ptr, ptr %a.addr, align 8, !dbg !112
  store ptr %0, ptr %__pptr, align 8, !dbg !112
  %1 = load ptr, ptr %__pptr, align 8, !dbg !112
  %x = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 0, !dbg !112
  %2 = load i64, ptr %x, align 1, !dbg !112
  store i64 %2, ptr %tmp, align 8, !dbg !112
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #5, !dbg !113
  %3 = load i64, ptr %tmp, align 8, !dbg !112
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr1) #5, !dbg !114
  call void @llvm.dbg.declare(metadata ptr %__pptr1, metadata !23, metadata !DIExpression()), !dbg !114
  %4 = load ptr, ptr %b.addr, align 8, !dbg !114
  store ptr %4, ptr %__pptr1, align 8, !dbg !114
  %5 = load ptr, ptr %__pptr1, align 8, !dbg !114
  %x3 = getelementptr inbounds %struct.anon.0, ptr %5, i32 0, i32 0, !dbg !114
  %6 = load i64, ptr %x3, align 1, !dbg !114
  store i64 %6, ptr %tmp2, align 8, !dbg !114
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr1) #5, !dbg !115
  %7 = load i64, ptr %tmp2, align 8, !dbg !114
  %xor = xor i64 %3, %7, !dbg !116
  %8 = load i64, ptr %neq, align 8, !dbg !117
  %or = or i64 %8, %xor, !dbg !117
  store i64 %or, ptr %neq, align 8, !dbg !117
  %9 = load i64, ptr %neq, align 8, !dbg !118
  %10 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %9) #6, !dbg !118, !srcloc !119
  store i64 %10, ptr %neq, align 8, !dbg !118
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr4) #5, !dbg !120
  call void @llvm.dbg.declare(metadata ptr %__pptr4, metadata !30, metadata !DIExpression()), !dbg !120
  %11 = load ptr, ptr %a.addr, align 8, !dbg !120
  %add.ptr = getelementptr i8, ptr %11, i64 8, !dbg !120
  store ptr %add.ptr, ptr %__pptr4, align 8, !dbg !120
  %12 = load ptr, ptr %__pptr4, align 8, !dbg !120
  %x6 = getelementptr inbounds %struct.anon.1, ptr %12, i32 0, i32 0, !dbg !120
  %13 = load i64, ptr %x6, align 1, !dbg !120
  store i64 %13, ptr %tmp5, align 8, !dbg !120
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr4) #5, !dbg !121
  %14 = load i64, ptr %tmp5, align 8, !dbg !120
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr7) #5, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %__pptr7, metadata !37, metadata !DIExpression()), !dbg !122
  %15 = load ptr, ptr %b.addr, align 8, !dbg !122
  %add.ptr8 = getelementptr i8, ptr %15, i64 8, !dbg !122
  store ptr %add.ptr8, ptr %__pptr7, align 8, !dbg !122
  %16 = load ptr, ptr %__pptr7, align 8, !dbg !122
  %x10 = getelementptr inbounds %struct.anon.2, ptr %16, i32 0, i32 0, !dbg !122
  %17 = load i64, ptr %x10, align 1, !dbg !122
  store i64 %17, ptr %tmp9, align 8, !dbg !122
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr7) #5, !dbg !123
  %18 = load i64, ptr %tmp9, align 8, !dbg !122
  %xor11 = xor i64 %14, %18, !dbg !124
  %19 = load i64, ptr %neq, align 8, !dbg !125
  %or12 = or i64 %19, %xor11, !dbg !125
  store i64 %or12, ptr %neq, align 8, !dbg !125
  %20 = load i64, ptr %neq, align 8, !dbg !126
  %21 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %20) #6, !dbg !126, !srcloc !127
  store i64 %21, ptr %neq, align 8, !dbg !126
  %22 = load i64, ptr %neq, align 8, !dbg !128
  call void @llvm.lifetime.end.p0(i64 8, ptr %neq) #5, !dbg !129
  ret i64 %22, !dbg !130
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__crypto_memneq_generic(ptr noundef %a, ptr noundef %b, i64 noundef %size) #2 align 16 !dbg !50 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %neq = alloca i64, align 8
  %__pptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__pptr1 = alloca ptr, align 8
  %tmp2 = alloca i64, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !59, metadata !DIExpression()), !dbg !131
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !60, metadata !DIExpression()), !dbg !132
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !61, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.start.p0(i64 8, ptr %neq) #5, !dbg !134
  call void @llvm.dbg.declare(metadata ptr %neq, metadata !62, metadata !DIExpression()), !dbg !135
  store i64 0, ptr %neq, align 8, !dbg !135
  br label %while.cond, !dbg !136

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, ptr %size.addr, align 8, !dbg !137
  %cmp = icmp uge i64 %0, 8, !dbg !138
  br i1 %cmp, label %while.body, label %while.end, !dbg !136

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr) #5, !dbg !139
  call void @llvm.dbg.declare(metadata ptr %__pptr, metadata !63, metadata !DIExpression()), !dbg !139
  %1 = load ptr, ptr %a.addr, align 8, !dbg !139
  store ptr %1, ptr %__pptr, align 8, !dbg !139
  %2 = load ptr, ptr %__pptr, align 8, !dbg !139
  %x = getelementptr inbounds %struct.anon.3, ptr %2, i32 0, i32 0, !dbg !139
  %3 = load i64, ptr %x, align 1, !dbg !139
  store i64 %3, ptr %tmp, align 8, !dbg !139
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr) #5, !dbg !140
  %4 = load i64, ptr %tmp, align 8, !dbg !139
  call void @llvm.lifetime.start.p0(i64 8, ptr %__pptr1) #5, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %__pptr1, metadata !66, metadata !DIExpression()), !dbg !141
  %5 = load ptr, ptr %b.addr, align 8, !dbg !141
  store ptr %5, ptr %__pptr1, align 8, !dbg !141
  %6 = load ptr, ptr %__pptr1, align 8, !dbg !141
  %x3 = getelementptr inbounds %struct.anon.4, ptr %6, i32 0, i32 0, !dbg !141
  %7 = load i64, ptr %x3, align 1, !dbg !141
  store i64 %7, ptr %tmp2, align 8, !dbg !141
  call void @llvm.lifetime.end.p0(i64 8, ptr %__pptr1) #5, !dbg !142
  %8 = load i64, ptr %tmp2, align 8, !dbg !141
  %xor = xor i64 %4, %8, !dbg !143
  %9 = load i64, ptr %neq, align 8, !dbg !144
  %or = or i64 %9, %xor, !dbg !144
  store i64 %or, ptr %neq, align 8, !dbg !144
  %10 = load i64, ptr %neq, align 8, !dbg !145
  %11 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %10) #6, !dbg !145, !srcloc !146
  store i64 %11, ptr %neq, align 8, !dbg !145
  %12 = load ptr, ptr %a.addr, align 8, !dbg !147
  %add.ptr = getelementptr i8, ptr %12, i64 8, !dbg !147
  store ptr %add.ptr, ptr %a.addr, align 8, !dbg !147
  %13 = load ptr, ptr %b.addr, align 8, !dbg !148
  %add.ptr4 = getelementptr i8, ptr %13, i64 8, !dbg !148
  store ptr %add.ptr4, ptr %b.addr, align 8, !dbg !148
  %14 = load i64, ptr %size.addr, align 8, !dbg !149
  %sub = sub i64 %14, 8, !dbg !149
  store i64 %sub, ptr %size.addr, align 8, !dbg !149
  br label %while.cond, !dbg !136, !llvm.loop !150

while.end:                                        ; preds = %while.cond
  br label %while.cond5, !dbg !154

while.cond5:                                      ; preds = %while.body7, %while.end
  %15 = load i64, ptr %size.addr, align 8, !dbg !155
  %cmp6 = icmp ugt i64 %15, 0, !dbg !156
  br i1 %cmp6, label %while.body7, label %while.end15, !dbg !154

while.body7:                                      ; preds = %while.cond5
  %16 = load ptr, ptr %a.addr, align 8, !dbg !157
  %17 = load i8, ptr %16, align 1, !dbg !159
  %conv = zext i8 %17 to i32, !dbg !159
  %18 = load ptr, ptr %b.addr, align 8, !dbg !160
  %19 = load i8, ptr %18, align 1, !dbg !161
  %conv8 = zext i8 %19 to i32, !dbg !161
  %xor9 = xor i32 %conv, %conv8, !dbg !162
  %conv10 = sext i32 %xor9 to i64, !dbg !159
  %20 = load i64, ptr %neq, align 8, !dbg !163
  %or11 = or i64 %20, %conv10, !dbg !163
  store i64 %or11, ptr %neq, align 8, !dbg !163
  %21 = load i64, ptr %neq, align 8, !dbg !164
  %22 = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %21) #6, !dbg !164, !srcloc !165
  store i64 %22, ptr %neq, align 8, !dbg !164
  %23 = load ptr, ptr %a.addr, align 8, !dbg !166
  %add.ptr12 = getelementptr i8, ptr %23, i64 1, !dbg !166
  store ptr %add.ptr12, ptr %a.addr, align 8, !dbg !166
  %24 = load ptr, ptr %b.addr, align 8, !dbg !167
  %add.ptr13 = getelementptr i8, ptr %24, i64 1, !dbg !167
  store ptr %add.ptr13, ptr %b.addr, align 8, !dbg !167
  %25 = load i64, ptr %size.addr, align 8, !dbg !168
  %sub14 = sub i64 %25, 1, !dbg !168
  store i64 %sub14, ptr %size.addr, align 8, !dbg !168
  br label %while.cond5, !dbg !154, !llvm.loop !169

while.end15:                                      ; preds = %while.cond5
  %26 = load i64, ptr %neq, align 8, !dbg !171
  call void @llvm.lifetime.end.p0(i64 8, ptr %neq) #5, !dbg !172
  ret i64 %26, !dbg !173
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone }
attributes #5 = { nounwind }
attributes #6 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___crypto_memneq197", scope: !2, file: !3, line: 173, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/crypto/.memneq.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/crypto/libcryptoutils\22 -D KBUILD_BASENAME=\22memneq\22 -D KBUILD_MODNAME=\22libcryptoutils\22 -D __KBUILD_MODNAME=kmod_libcryptoutils -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/crypto/memneq.ll lib/crypto/memneq.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !77, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "lib/crypto/memneq.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "66ad21a6a6f36bad78d015f02d232cb6")
!4 = !{!5, !6, !46, !25, !32, !39, !47, !68, !75}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !3, line: 99, size: 64, elements: !44)
!9 = distinct !DISubprogram(name: "__crypto_memneq_16", scope: !3, file: !3, line: 93, type: !10, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !15)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !13, !13}
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!15 = !{!16, !17, !18, !19, !23, !30, !37}
!16 = !DILocalVariable(name: "a", arg: 1, scope: !9, file: !3, line: 93, type: !13)
!17 = !DILocalVariable(name: "b", arg: 2, scope: !9, file: !3, line: 93, type: !13)
!18 = !DILocalVariable(name: "neq", scope: !9, file: !3, line: 95, type: !12)
!19 = !DILocalVariable(name: "__pptr", scope: !20, file: !3, line: 99, type: !6)
!20 = distinct !DILexicalBlock(scope: !21, file: !3, line: 99, column: 10)
!21 = distinct !DILexicalBlock(scope: !22, file: !3, line: 98, column: 34)
!22 = distinct !DILexicalBlock(scope: !9, file: !3, line: 98, column: 6)
!23 = !DILocalVariable(name: "__pptr", scope: !24, file: !3, line: 100, type: !25)
!24 = distinct !DILexicalBlock(scope: !21, file: !3, line: 100, column: 10)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !3, line: 100, size: 64, elements: !28)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !27, file: !3, line: 100, baseType: !12, size: 64)
!30 = !DILocalVariable(name: "__pptr", scope: !31, file: !3, line: 102, type: !32)
!31 = distinct !DILexicalBlock(scope: !21, file: !3, line: 102, column: 10)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !3, line: 102, size: 64, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !34, file: !3, line: 102, baseType: !12, size: 64)
!37 = !DILocalVariable(name: "__pptr", scope: !38, file: !3, line: 103, type: !39)
!38 = distinct !DILexicalBlock(scope: !21, file: !3, line: 103, column: 10)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !9, file: !3, line: 103, size: 64, elements: !42)
!42 = !{!43}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !41, file: !3, line: 103, baseType: !12, size: 64)
!44 = !{!45}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !8, file: !3, line: 99, baseType: !12, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !3, line: 74, size: 64, elements: !73)
!50 = distinct !DISubprogram(name: "__crypto_memneq_generic", scope: !3, file: !3, line: 68, type: !51, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !58)
!51 = !DISubroutineType(types: !52)
!52 = !{!12, !13, !13, !53}
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !54, line: 61, baseType: !55)
!54 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !56, line: 72, baseType: !57)
!56 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !56, line: 16, baseType: !12)
!58 = !{!59, !60, !61, !62, !63, !66}
!59 = !DILocalVariable(name: "a", arg: 1, scope: !50, file: !3, line: 68, type: !13)
!60 = !DILocalVariable(name: "b", arg: 2, scope: !50, file: !3, line: 68, type: !13)
!61 = !DILocalVariable(name: "size", arg: 3, scope: !50, file: !3, line: 68, type: !53)
!62 = !DILocalVariable(name: "neq", scope: !50, file: !3, line: 70, type: !12)
!63 = !DILocalVariable(name: "__pptr", scope: !64, file: !3, line: 74, type: !47)
!64 = distinct !DILexicalBlock(scope: !65, file: !3, line: 74, column: 10)
!65 = distinct !DILexicalBlock(scope: !50, file: !3, line: 73, column: 40)
!66 = !DILocalVariable(name: "__pptr", scope: !67, file: !3, line: 75, type: !68)
!67 = distinct !DILexicalBlock(scope: !65, file: !3, line: 75, column: 10)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !50, file: !3, line: 75, size: 64, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !70, file: !3, line: 75, baseType: !12, size: 64)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !49, file: !3, line: 74, baseType: !12, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!77 = !{!0}
!78 = !{i32 7, !"Dwarf Version", i32 5}
!79 = !{i32 2, !"Debug Info Version", i32 3}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 8, !"cf-protection-branch", i32 1}
!82 = !{i32 4, !"function_return_thunk_extern", i32 1}
!83 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!84 = !{i32 1, !"Code Model", i32 2}
!85 = !{i32 1, !"override-stack-alignment", i32 8}
!86 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!87 = distinct !DISubprogram(name: "__crypto_memneq", scope: !3, file: !3, line: 163, type: !51, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!88 = !{!89, !90, !91}
!89 = !DILocalVariable(name: "a", arg: 1, scope: !87, file: !3, line: 163, type: !13)
!90 = !DILocalVariable(name: "b", arg: 2, scope: !87, file: !3, line: 163, type: !13)
!91 = !DILocalVariable(name: "size", arg: 3, scope: !87, file: !3, line: 164, type: !53)
!92 = !DILocation(line: 163, column: 52, scope: !87)
!93 = !DILocation(line: 163, column: 67, scope: !87)
!94 = !DILocation(line: 164, column: 19, scope: !87)
!95 = !DILocation(line: 166, column: 10, scope: !87)
!96 = !DILocation(line: 166, column: 2, scope: !87)
!97 = !DILocation(line: 168, column: 29, scope: !98)
!98 = distinct !DILexicalBlock(scope: !87, file: !3, line: 166, column: 16)
!99 = !DILocation(line: 168, column: 32, scope: !98)
!100 = !DILocation(line: 168, column: 10, scope: !98)
!101 = !DILocation(line: 168, column: 3, scope: !98)
!102 = !DILocation(line: 170, column: 34, scope: !98)
!103 = !DILocation(line: 170, column: 37, scope: !98)
!104 = !DILocation(line: 170, column: 40, scope: !98)
!105 = !DILocation(line: 170, column: 10, scope: !98)
!106 = !DILocation(line: 170, column: 3, scope: !98)
!107 = !DILocation(line: 172, column: 1, scope: !87)
!108 = !DILocation(line: 93, column: 60, scope: !9)
!109 = !DILocation(line: 93, column: 75, scope: !9)
!110 = !DILocation(line: 95, column: 2, scope: !9)
!111 = !DILocation(line: 95, column: 16, scope: !9)
!112 = !DILocation(line: 99, column: 10, scope: !20)
!113 = !DILocation(line: 99, column: 10, scope: !21)
!114 = !DILocation(line: 100, column: 10, scope: !24)
!115 = !DILocation(line: 100, column: 10, scope: !21)
!116 = !DILocation(line: 99, column: 44, scope: !21)
!117 = !DILocation(line: 99, column: 7, scope: !21)
!118 = !DILocation(line: 101, column: 3, scope: !21)
!119 = !{i64 2152434826}
!120 = !DILocation(line: 102, column: 10, scope: !31)
!121 = !DILocation(line: 102, column: 10, scope: !21)
!122 = !DILocation(line: 103, column: 10, scope: !38)
!123 = !DILocation(line: 103, column: 10, scope: !21)
!124 = !DILocation(line: 102, column: 50, scope: !21)
!125 = !DILocation(line: 102, column: 7, scope: !21)
!126 = !DILocation(line: 104, column: 3, scope: !21)
!127 = !{i64 2152435452}
!128 = !DILocation(line: 155, column: 9, scope: !9)
!129 = !DILocation(line: 156, column: 1, scope: !9)
!130 = !DILocation(line: 155, column: 2, scope: !9)
!131 = !DILocation(line: 68, column: 37, scope: !50)
!132 = !DILocation(line: 68, column: 52, scope: !50)
!133 = !DILocation(line: 68, column: 62, scope: !50)
!134 = !DILocation(line: 70, column: 2, scope: !50)
!135 = !DILocation(line: 70, column: 16, scope: !50)
!136 = !DILocation(line: 73, column: 2, scope: !50)
!137 = !DILocation(line: 73, column: 9, scope: !50)
!138 = !DILocation(line: 73, column: 14, scope: !50)
!139 = !DILocation(line: 74, column: 10, scope: !64)
!140 = !DILocation(line: 74, column: 10, scope: !65)
!141 = !DILocation(line: 75, column: 10, scope: !67)
!142 = !DILocation(line: 75, column: 10, scope: !65)
!143 = !DILocation(line: 74, column: 44, scope: !65)
!144 = !DILocation(line: 74, column: 7, scope: !65)
!145 = !DILocation(line: 76, column: 3, scope: !65)
!146 = !{i64 2152434037}
!147 = !DILocation(line: 77, column: 5, scope: !65)
!148 = !DILocation(line: 78, column: 5, scope: !65)
!149 = !DILocation(line: 79, column: 8, scope: !65)
!150 = distinct !{!150, !136, !151, !152, !153}
!151 = !DILocation(line: 80, column: 2, scope: !50)
!152 = !{!"llvm.loop.mustprogress"}
!153 = !{!"llvm.loop.unroll.disable"}
!154 = !DILocation(line: 82, column: 2, scope: !50)
!155 = !DILocation(line: 82, column: 9, scope: !50)
!156 = !DILocation(line: 82, column: 14, scope: !50)
!157 = !DILocation(line: 83, column: 28, scope: !158)
!158 = distinct !DILexicalBlock(scope: !50, file: !3, line: 82, column: 19)
!159 = !DILocation(line: 83, column: 10, scope: !158)
!160 = !DILocation(line: 83, column: 50, scope: !158)
!161 = !DILocation(line: 83, column: 32, scope: !158)
!162 = !DILocation(line: 83, column: 30, scope: !158)
!163 = !DILocation(line: 83, column: 7, scope: !158)
!164 = !DILocation(line: 84, column: 3, scope: !158)
!165 = !{i64 2152434083}
!166 = !DILocation(line: 85, column: 5, scope: !158)
!167 = !DILocation(line: 86, column: 5, scope: !158)
!168 = !DILocation(line: 87, column: 8, scope: !158)
!169 = distinct !{!169, !154, !170, !152, !153}
!170 = !DILocation(line: 88, column: 2, scope: !50)
!171 = !DILocation(line: 89, column: 9, scope: !50)
!172 = !DILocation(line: 90, column: 1, scope: !50)
!173 = !DILocation(line: 89, column: 2, scope: !50)
