; ModuleID = 'arch/x86/kernel/rethook.c'
source_filename = "arch/x86/kernel/rethook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".text"
module asm ".global arch_rethook_trampoline"
module asm ".type arch_rethook_trampoline, @function"
module asm "arch_rethook_trampoline:"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09\09pushq $arch_rethook_trampoline"
module asm "987: "
module asm "\09.pushsection .discard.unwind_hints"
module asm "\09.long 987b - ."
module asm "\09.short 8"
module asm "\09.byte 5"
module asm "\09.byte 5"
module asm "\09.byte 0"
module asm "\09.balign 4 "
module asm "\09.popsection"
module asm "\09       pushq $(3*8)"
module asm "\09pushq %rsp"
module asm "\09pushfq"
module asm "\09subq $24, %rsp"
module asm "\09pushq %rdi"
module asm "\09pushq %rsi"
module asm "\09pushq %rdx"
module asm "\09pushq %rcx"
module asm "\09pushq %rax"
module asm "\09pushq %r8"
module asm "\09pushq %r9"
module asm "\09pushq %r10"
module asm "\09pushq %r11"
module asm "\09pushq %rbx"
module asm "\09pushq %rbp"
module asm "\09pushq %r12"
module asm "\09pushq %r13"
module asm "\09pushq %r14"
module asm "\09pushq %r15"
module asm "\09movq %rsp, %rdi"
module asm "\09call arch_rethook_trampoline_callback"
module asm "\09popq %r15"
module asm "\09popq %r14"
module asm "\09popq %r13"
module asm "\09popq %r12"
module asm "\09popq %rbp"
module asm "\09popq %rbx"
module asm "\09popq %r11"
module asm "\09popq %r10"
module asm "\09popq %r9"
module asm "\09popq %r8"
module asm "\09popq %rax"
module asm "\09popq %rcx"
module asm "\09popq %rdx"
module asm "\09popq %rsi"
module asm "\09popq %rdi"
module asm "\09addq $24, %rsp"
module asm "\09addq $16, %rsp"
module asm "\09popfq"
module asm "jmp __x86_return_thunk"
module asm "\09.size arch_rethook_trampoline, .-arch_rethook_trampoline"

%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon, i64, i64, %union.anon.0 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%struct.rethook_node = type { %union.anon.1, %struct.llist_node, ptr, i64, i64 }
%union.anon.1 = type { %struct.freelist_node }
%struct.freelist_node = type { %struct.atomic_t, ptr }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }

@_kbl_addr_arch_rethook_trampoline = internal global i64 ptrtoint (ptr @arch_rethook_trampoline to i64), section "_kprobe_blacklist", align 8, !dbg !0
@_kbl_addr_arch_rethook_trampoline_callback = internal global i64 ptrtoint (ptr @arch_rethook_trampoline_callback to i64), section "_kprobe_blacklist", align 8, !dbg !11
@_kbl_addr_arch_rethook_fixup_return = internal global i64 ptrtoint (ptr @arch_rethook_fixup_return to i64), section "_kprobe_blacklist", align 8, !dbg !13
@_kbl_addr_arch_rethook_prepare = internal global i64 ptrtoint (ptr @arch_rethook_prepare to i64), section "_kprobe_blacklist", align 8, !dbg !15
@llvm.compiler.used = appending global [5 x ptr] [ptr @_kbl_addr_arch_rethook_trampoline, ptr @arch_rethook_trampoline_callback, ptr @_kbl_addr_arch_rethook_trampoline_callback, ptr @_kbl_addr_arch_rethook_fixup_return, ptr @_kbl_addr_arch_rethook_prepare], section "llvm.metadata"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @arch_rethook_trampoline() #0

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_rethook_trampoline_callback(ptr noundef %regs) #1 align 16 !dbg !26 {
entry:
  %regs.addr = alloca ptr, align 8
  %frame_pointer = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !90, metadata !DIExpression()), !dbg !92
  call void @llvm.lifetime.start.p0(i64 8, ptr %frame_pointer) #4, !dbg !93
  call void @llvm.dbg.declare(metadata ptr %frame_pointer, metadata !91, metadata !DIExpression()), !dbg !94
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !95
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !96
  store i16 16, ptr %1, align 8, !dbg !97
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !98
  %ip = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 16, !dbg !99
  store i64 ptrtoint (ptr @arch_rethook_trampoline to i64), ptr %ip, align 8, !dbg !100
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !101
  %orig_ax = getelementptr inbounds %struct.pt_regs, ptr %3, i32 0, i32 15, !dbg !102
  store i64 -1, ptr %orig_ax, align 8, !dbg !103
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !104
  %sp = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 19, !dbg !105
  %5 = load i64, ptr %sp, align 8, !dbg !106
  %add = add i64 %5, 16, !dbg !106
  store i64 %add, ptr %sp, align 8, !dbg !106
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !107
  %add.ptr = getelementptr %struct.pt_regs, ptr %6, i64 1, !dbg !108
  store ptr %add.ptr, ptr %frame_pointer, align 8, !dbg !109
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !110
  %8 = load ptr, ptr %frame_pointer, align 8, !dbg !111
  %9 = ptrtoint ptr %8 to i64, !dbg !112
  %call = call i64 @rethook_trampoline_handler(ptr noundef %7, i64 noundef %9) #5, !dbg !113
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !114
  %flags = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 18, !dbg !115
  %11 = load i64, ptr %flags, align 8, !dbg !115
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !116
  %13 = getelementptr inbounds %struct.pt_regs, ptr %12, i32 0, i32 20, !dbg !117
  store i64 %11, ptr %13, align 8, !dbg !118
  call void @llvm.lifetime.end.p0(i64 8, ptr %frame_pointer) #4, !dbg !119
  ret void, !dbg !119
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !120 dso_local i64 @rethook_trampoline_handler(ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_rethook_fixup_return(ptr noundef %regs, i64 noundef %correct_ret_addr) #1 align 16 !dbg !124 {
entry:
  %regs.addr = alloca ptr, align 8
  %correct_ret_addr.addr = alloca i64, align 8
  %frame_pointer = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !128, metadata !DIExpression()), !dbg !131
  store i64 %correct_ret_addr, ptr %correct_ret_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %correct_ret_addr.addr, metadata !129, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 8, ptr %frame_pointer) #4, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %frame_pointer, metadata !130, metadata !DIExpression()), !dbg !134
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !135
  %add.ptr = getelementptr %struct.pt_regs, ptr %0, i64 1, !dbg !136
  store ptr %add.ptr, ptr %frame_pointer, align 8, !dbg !134
  %1 = load i64, ptr %correct_ret_addr.addr, align 8, !dbg !137
  %2 = load ptr, ptr %frame_pointer, align 8, !dbg !138
  store i64 %1, ptr %2, align 8, !dbg !139
  call void @llvm.lifetime.end.p0(i64 8, ptr %frame_pointer) #4, !dbg !140
  ret void, !dbg !140
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_rethook_prepare(ptr noundef %rh, ptr noundef %regs, i1 noundef zeroext %mcount) #1 align 16 !dbg !141 {
entry:
  %rh.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %mcount.addr = alloca i8, align 1
  %stack = alloca ptr, align 8
  store ptr %rh, ptr %rh.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rh.addr, metadata !203, metadata !DIExpression()), !dbg !207
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !204, metadata !DIExpression()), !dbg !208
  %frombool = zext i1 %mcount to i8
  store i8 %frombool, ptr %mcount.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %mcount.addr, metadata !205, metadata !DIExpression()), !dbg !209
  call void @llvm.lifetime.start.p0(i64 8, ptr %stack) #4, !dbg !210
  call void @llvm.dbg.declare(metadata ptr %stack, metadata !206, metadata !DIExpression()), !dbg !211
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !212
  %sp = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 19, !dbg !213
  %1 = load i64, ptr %sp, align 8, !dbg !213
  %2 = inttoptr i64 %1 to ptr, !dbg !214
  store ptr %2, ptr %stack, align 8, !dbg !211
  %3 = load ptr, ptr %stack, align 8, !dbg !215
  %arrayidx = getelementptr i64, ptr %3, i64 0, !dbg !215
  %4 = load i64, ptr %arrayidx, align 8, !dbg !215
  %5 = load ptr, ptr %rh.addr, align 8, !dbg !216
  %ret_addr = getelementptr inbounds %struct.rethook_node, ptr %5, i32 0, i32 3, !dbg !217
  store i64 %4, ptr %ret_addr, align 8, !dbg !218
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !219
  %sp1 = getelementptr inbounds %struct.pt_regs, ptr %6, i32 0, i32 19, !dbg !220
  %7 = load i64, ptr %sp1, align 8, !dbg !220
  %8 = load ptr, ptr %rh.addr, align 8, !dbg !221
  %frame = getelementptr inbounds %struct.rethook_node, ptr %8, i32 0, i32 4, !dbg !222
  store i64 %7, ptr %frame, align 8, !dbg !223
  %9 = load ptr, ptr %stack, align 8, !dbg !224
  %arrayidx2 = getelementptr i64, ptr %9, i64 0, !dbg !224
  store i64 ptrtoint (ptr @arch_rethook_trampoline to i64), ptr %arrayidx2, align 8, !dbg !225
  call void @llvm.lifetime.end.p0(i64 8, ptr %stack) #4, !dbg !226
  ret void, !dbg !226
}

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_kbl_addr_arch_rethook_trampoline", scope: !2, file: !3, line: 62, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.rethook.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/rethook\22 -D KBUILD_BASENAME=\22rethook\22 -D KBUILD_MODNAME=\22rethook\22 -D __KBUILD_MODNAME=kmod_rethook -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/rethook.ll arch/x86/kernel/rethook.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/rethook.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e77d912e72a0cb3d837b8fe197721891")
!4 = !{!5, !6, !8, !9}
!5 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !{!0, !11, !13, !15}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "_kbl_addr_arch_rethook_trampoline_callback", scope: !2, file: !3, line: 94, type: !5, isLocal: true, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "_kbl_addr_arch_rethook_fixup_return", scope: !2, file: !3, line: 115, type: !5, isLocal: true, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "_kbl_addr_arch_rethook_prepare", scope: !2, file: !3, line: 127, type: !5, isLocal: true, isDefinition: true)
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 8, !"cf-protection-branch", i32 1}
!21 = !{i32 4, !"function_return_thunk_extern", i32 1}
!22 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!23 = !{i32 1, !"Code Model", i32 2}
!24 = !{i32 1, !"override-stack-alignment", i32 8}
!25 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!26 = distinct !DISubprogram(name: "arch_rethook_trampoline_callback", scope: !3, file: !3, line: 67, type: !27, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !89)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !31, line: 103, size: 1344, elements: !32)
!31 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !69, !70, !71}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !30, file: !31, line: 109, baseType: !5, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !30, file: !31, line: 110, baseType: !5, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !30, file: !31, line: 111, baseType: !5, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !30, file: !31, line: 112, baseType: !5, size: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !30, file: !31, line: 113, baseType: !5, size: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !30, file: !31, line: 114, baseType: !5, size: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !30, file: !31, line: 117, baseType: !5, size: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !30, file: !31, line: 118, baseType: !5, size: 64, offset: 448)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !30, file: !31, line: 119, baseType: !5, size: 64, offset: 512)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !30, file: !31, line: 120, baseType: !5, size: 64, offset: 576)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !30, file: !31, line: 121, baseType: !5, size: 64, offset: 640)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !30, file: !31, line: 122, baseType: !5, size: 64, offset: 704)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !30, file: !31, line: 123, baseType: !5, size: 64, offset: 768)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !30, file: !31, line: 124, baseType: !5, size: 64, offset: 832)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !30, file: !31, line: 125, baseType: !5, size: 64, offset: 896)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !30, file: !31, line: 139, baseType: !5, size: 64, offset: 960)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !30, file: !31, line: 142, baseType: !5, size: 64, offset: 1024)
!50 = !DIDerivedType(tag: DW_TAG_member, scope: !30, file: !31, line: 144, baseType: !51, size: 64, offset: 1088)
!51 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !30, file: !31, line: 144, size: 64, elements: !52)
!52 = !{!53, !59, !63}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !51, file: !31, line: 146, baseType: !54, size: 16)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !55, line: 19, baseType: !56)
!55 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !57, line: 24, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!58 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !51, file: !31, line: 148, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !55, line: 23, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !57, line: 31, baseType: !62)
!62 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !51, file: !31, line: 150, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !31, line: 59, size: 64, elements: !65)
!65 = !{!66, !67, !68}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !64, file: !31, line: 61, baseType: !60, size: 16, flags: DIFlagBitField, extraData: i64 0)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !64, file: !31, line: 63, baseType: !60, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !64, file: !31, line: 65, baseType: !60, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !30, file: !31, line: 153, baseType: !5, size: 64, offset: 1152)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !30, file: !31, line: 154, baseType: !5, size: 64, offset: 1216)
!71 = !DIDerivedType(tag: DW_TAG_member, scope: !30, file: !31, line: 156, baseType: !72, size: 64, offset: 1280)
!72 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !30, file: !31, line: 156, size: 64, elements: !73)
!73 = !{!74, !75, !76}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !72, file: !31, line: 158, baseType: !54, size: 16)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !72, file: !31, line: 160, baseType: !60, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !72, file: !31, line: 162, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !31, line: 69, size: 64, elements: !78)
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !77, file: !31, line: 71, baseType: !60, size: 16, flags: DIFlagBitField, extraData: i64 0)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !77, file: !31, line: 73, baseType: !60, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !77, file: !31, line: 75, baseType: !60, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !77, file: !31, line: 77, baseType: !60, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !77, file: !31, line: 80, baseType: !60, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !31, line: 83, baseType: !60, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !77, file: !31, line: 86, baseType: !60, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !77, file: !31, line: 88, baseType: !60, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !77, file: !31, line: 93, baseType: !60, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !77, file: !31, line: 100, baseType: !60, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!89 = !{!90, !91}
!90 = !DILocalVariable(name: "regs", arg: 1, scope: !26, file: !3, line: 67, type: !29)
!91 = !DILocalVariable(name: "frame_pointer", scope: !26, file: !3, line: 69, type: !8)
!92 = !DILocation(line: 67, column: 72, scope: !26)
!93 = !DILocation(line: 69, column: 2, scope: !26)
!94 = !DILocation(line: 69, column: 17, scope: !26)
!95 = !DILocation(line: 72, column: 2, scope: !26)
!96 = !DILocation(line: 72, column: 8, scope: !26)
!97 = !DILocation(line: 72, column: 11, scope: !26)
!98 = !DILocation(line: 76, column: 2, scope: !26)
!99 = !DILocation(line: 76, column: 8, scope: !26)
!100 = !DILocation(line: 76, column: 11, scope: !26)
!101 = !DILocation(line: 77, column: 2, scope: !26)
!102 = !DILocation(line: 77, column: 8, scope: !26)
!103 = !DILocation(line: 77, column: 16, scope: !26)
!104 = !DILocation(line: 78, column: 2, scope: !26)
!105 = !DILocation(line: 78, column: 8, scope: !26)
!106 = !DILocation(line: 78, column: 11, scope: !26)
!107 = !DILocation(line: 79, column: 27, scope: !26)
!108 = !DILocation(line: 79, column: 32, scope: !26)
!109 = !DILocation(line: 79, column: 16, scope: !26)
!110 = !DILocation(line: 86, column: 29, scope: !26)
!111 = !DILocation(line: 86, column: 50, scope: !26)
!112 = !DILocation(line: 86, column: 35, scope: !26)
!113 = !DILocation(line: 86, column: 2, scope: !26)
!114 = !DILocation(line: 92, column: 32, scope: !26)
!115 = !DILocation(line: 92, column: 38, scope: !26)
!116 = !DILocation(line: 92, column: 21, scope: !26)
!117 = !DILocation(line: 92, column: 27, scope: !26)
!118 = !DILocation(line: 92, column: 30, scope: !26)
!119 = !DILocation(line: 93, column: 1, scope: !26)
!120 = !DISubprogram(name: "rethook_trampoline_handler", scope: !121, file: !121, line: 96, type: !122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!121 = !DIFile(filename: "./include/linux/rethook.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85ff586ed71ca39237544b8dc008a817")
!122 = !DISubroutineType(types: !123)
!123 = !{!5, !29, !5}
!124 = distinct !DISubprogram(name: "arch_rethook_fixup_return", scope: !3, file: !3, line: 107, type: !125, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !127)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !29, !5}
!127 = !{!128, !129, !130}
!128 = !DILocalVariable(name: "regs", arg: 1, scope: !124, file: !3, line: 107, type: !29)
!129 = !DILocalVariable(name: "correct_ret_addr", arg: 2, scope: !124, file: !3, line: 108, type: !5)
!130 = !DILocalVariable(name: "frame_pointer", scope: !124, file: !3, line: 110, type: !8)
!131 = !DILocation(line: 107, column: 48, scope: !124)
!132 = !DILocation(line: 108, column: 25, scope: !124)
!133 = !DILocation(line: 110, column: 2, scope: !124)
!134 = !DILocation(line: 110, column: 17, scope: !124)
!135 = !DILocation(line: 110, column: 42, scope: !124)
!136 = !DILocation(line: 110, column: 47, scope: !124)
!137 = !DILocation(line: 113, column: 19, scope: !124)
!138 = !DILocation(line: 113, column: 3, scope: !124)
!139 = !DILocation(line: 113, column: 17, scope: !124)
!140 = !DILocation(line: 114, column: 1, scope: !124)
!141 = distinct !DISubprogram(name: "arch_rethook_prepare", scope: !3, file: !3, line: 117, type: !142, scopeLine: 118, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !202)
!142 = !DISubroutineType(types: !143)
!143 = !{null, !144, !29, !200}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rethook_node", file: !121, line: 55, size: 384, elements: !146)
!146 = !{!147, !172, !178, !198, !199}
!147 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !121, line: 56, baseType: !148, size: 128)
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !145, file: !121, line: 56, size: 128, elements: !149)
!149 = !{!150, !163}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !148, file: !121, line: 57, baseType: !151, size: 128)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freelist_node", file: !152, line: 18, size: 128, elements: !153)
!152 = !DIFile(filename: "./include/linux/freelist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8a4e8a502ceb024e8cafd6126b6d04a")
!153 = !{!154, !161}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !151, file: !152, line: 19, baseType: !155, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !156, line: 174, baseType: !157)
!156 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !156, line: 172, size: 32, elements: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !157, file: !156, line: 173, baseType: !160, size: 32)
!160 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !151, file: !152, line: 20, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !148, file: !121, line: 58, baseType: !164, size: 128, align: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !156, line: 232, size: 128, align: 64, elements: !165)
!165 = !{!166, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !164, file: !156, line: 233, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !164, file: !156, line: 234, baseType: !169, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !167}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !145, file: !121, line: 60, baseType: !173, size: 64, offset: 128)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !174, line: 60, size: 64, elements: !175)
!174 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !174, line: 61, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "rethook", scope: !145, file: !121, line: 61, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rethook", file: !121, line: 30, size: 384, elements: !181)
!181 = !{!182, !183, !187, !191, !197}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !180, file: !121, line: 31, baseType: !9, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !180, file: !121, line: 37, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !144, !9, !5, !29}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !180, file: !121, line: 38, baseType: !188, size: 64, offset: 128)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freelist_head", file: !152, line: 23, size: 64, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !188, file: !152, line: 24, baseType: !162, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !180, file: !121, line: 39, baseType: !192, size: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !193, line: 113, baseType: !194)
!193 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !193, line: 111, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !194, file: !193, line: 112, baseType: !155, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !180, file: !121, line: 40, baseType: !164, size: 128, align: 64, offset: 256)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "ret_addr", scope: !145, file: !121, line: 62, baseType: !5, size: 64, offset: 256)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !145, file: !121, line: 63, baseType: !5, size: 64, offset: 320)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !156, line: 35, baseType: !201)
!201 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!202 = !{!203, !204, !205, !206}
!203 = !DILocalVariable(name: "rh", arg: 1, scope: !141, file: !3, line: 117, type: !144)
!204 = !DILocalVariable(name: "regs", arg: 2, scope: !141, file: !3, line: 117, type: !29)
!205 = !DILocalVariable(name: "mcount", arg: 3, scope: !141, file: !3, line: 117, type: !200)
!206 = !DILocalVariable(name: "stack", scope: !141, file: !3, line: 119, type: !8)
!207 = !DILocation(line: 117, column: 48, scope: !141)
!208 = !DILocation(line: 117, column: 68, scope: !141)
!209 = !DILocation(line: 117, column: 79, scope: !141)
!210 = !DILocation(line: 119, column: 2, scope: !141)
!211 = !DILocation(line: 119, column: 17, scope: !141)
!212 = !DILocation(line: 119, column: 42, scope: !141)
!213 = !DILocation(line: 119, column: 48, scope: !141)
!214 = !DILocation(line: 119, column: 25, scope: !141)
!215 = !DILocation(line: 121, column: 17, scope: !141)
!216 = !DILocation(line: 121, column: 2, scope: !141)
!217 = !DILocation(line: 121, column: 6, scope: !141)
!218 = !DILocation(line: 121, column: 15, scope: !141)
!219 = !DILocation(line: 122, column: 14, scope: !141)
!220 = !DILocation(line: 122, column: 20, scope: !141)
!221 = !DILocation(line: 122, column: 2, scope: !141)
!222 = !DILocation(line: 122, column: 6, scope: !141)
!223 = !DILocation(line: 122, column: 12, scope: !141)
!224 = !DILocation(line: 125, column: 2, scope: !141)
!225 = !DILocation(line: 125, column: 11, scope: !141)
!226 = !DILocation(line: 126, column: 1, scope: !141)
