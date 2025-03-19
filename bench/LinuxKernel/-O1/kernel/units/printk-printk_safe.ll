; ModuleID = 'kernel/printk/printk_safe.c'
source_filename = "kernel/printk/printk_safe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_vprintk: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad vprintk ; .previous"

%struct.pcpu_hot = type { %union.anon }
%union.anon = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }

@printk_context = internal global i32 0, section ".data..percpu", align 4, !dbg !0
@__UNIQUE_ID___addressable_vprintk303 = internal global ptr @vprintk, section ".discard.addressable", align 8, !dbg !10
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_vprintk303], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__printk_safe_enter() #0 align 16 !dbg !21 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  br label %do.body, !dbg !33

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !34

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #5, !dbg !35
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !25, metadata !DIExpression()), !dbg !35
  store ptr null, ptr %__vpp_verify, align 8, !dbg !35
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !35
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #5, !dbg !34
  br label %do.end, !dbg !35

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !34

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #5, !dbg !36
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !30, metadata !DIExpression()), !dbg !36
  store i32 1, ptr %pao_ID__, align 4, !dbg !36
  call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @printk_context, ptr elementtype(i32) @printk_context) #5, !dbg !37, !srcloc !40
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #5, !dbg !34
  br label %do.end3, !dbg !36

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !34

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !41
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__printk_safe_exit() #0 align 16 !dbg !42 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  br label %do.body, !dbg !49

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !50

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #5, !dbg !51
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !44, metadata !DIExpression()), !dbg !51
  store ptr null, ptr %__vpp_verify, align 8, !dbg !51
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !51
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #5, !dbg !50
  br label %do.end, !dbg !51

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !50

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #5, !dbg !52
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !47, metadata !DIExpression()), !dbg !52
  store i32 -1, ptr %pao_ID__, align 4, !dbg !52
  call void asm sideeffect "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @printk_context, ptr elementtype(i32) @printk_context) #5, !dbg !53, !srcloc !57
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #5, !dbg !50
  br label %do.end3, !dbg !52

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !50

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !58
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @vprintk(ptr noundef %fmt, ptr noundef %args) #0 align 16 !dbg !59 {
entry:
  %retval = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !74, metadata !DIExpression()), !dbg !87
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !75, metadata !DIExpression()), !dbg !88
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #5, !dbg !89
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !76, metadata !DIExpression()), !dbg !89
  br label %do.body, !dbg !89

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #5, !dbg !90
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !79, metadata !DIExpression()), !dbg !90
  store ptr null, ptr %__vpp_verify, align 8, !dbg !90
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !90
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #5, !dbg !89
  br label %do.cond, !dbg !90

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !90

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #5, !dbg !91
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !81, metadata !DIExpression()), !dbg !91
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) @printk_context) #5, !dbg !91, !srcloc !92
  store i32 %1, ptr %pfo_val__, align 4, !dbg !91
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !91
  %conv = zext i32 %2 to i64, !dbg !91
  %conv1 = trunc i64 %conv to i32, !dbg !91
  store i32 %conv1, ptr %tmp, align 4, !dbg !91
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #5, !dbg !89
  %3 = load i32, ptr %tmp, align 4, !dbg !91
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !89
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !89
  store i32 %4, ptr %tmp2, align 4, !dbg !89
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #5, !dbg !93
  %5 = load i32, ptr %tmp2, align 4, !dbg !89
  %tobool = icmp ne i32 %5, 0, !dbg !93
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !94

lor.lhs.false:                                    ; preds = %do.end
  %call = call i32 @preempt_count() #6, !dbg !95
  %conv3 = sext i32 %call to i64, !dbg !95
  %and = and i64 %conv3, 15728640, !dbg !95
  %tobool4 = icmp ne i64 %and, 0, !dbg !95
  br i1 %tobool4, label %if.then, label %if.end, !dbg !96

if.then:                                          ; preds = %lor.lhs.false, %do.end
  %6 = load ptr, ptr %fmt.addr, align 8, !dbg !97
  %7 = load ptr, ptr %args.addr, align 8, !dbg !98
  %call5 = call i32 @vprintk_deferred(ptr noundef %6, ptr noundef %7) #6, !dbg !99
  store i32 %call5, ptr %retval, align 4, !dbg !100
  br label %return, !dbg !100

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %fmt.addr, align 8, !dbg !101
  %9 = load ptr, ptr %args.addr, align 8, !dbg !102
  %call6 = call i32 @vprintk_default(ptr noundef %8, ptr noundef %9) #6, !dbg !103
  store i32 %call6, ptr %retval, align 4, !dbg !104
  br label %return, !dbg !104

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !105
  ret i32 %10, !dbg !105
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #3 align 16 !dbg !106 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #5, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !111, metadata !DIExpression()), !dbg !113
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #7, !dbg !113, !srcloc !114
  store i32 %0, ptr %pfo_val__, align 4, !dbg !113
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !113
  %conv = zext i32 %1 to i64, !dbg !113
  %conv1 = trunc i64 %conv to i32, !dbg !113
  store i32 %conv1, ptr %tmp, align 4, !dbg !113
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #5, !dbg !115
  %2 = load i32, ptr %tmp, align 4, !dbg !113
  %and = and i32 %2, 2147483647, !dbg !116
  ret i32 %and, !dbg !117
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !118 dso_local i32 @vprintk_deferred(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !120 dso_local i32 @vprintk_default(ptr noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "printk_context", scope: !2, file: !3, line: 15, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/printk/.printk_safe.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/printk/printk_safe\22 -D KBUILD_BASENAME=\22printk_safe\22 -D KBUILD_MODNAME=\22printk_safe\22 -D __KBUILD_MODNAME=kmod_printk_safe -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/printk/printk_safe.ll kernel/printk/printk_safe.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !9, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/printk/printk_safe.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3625d6664e86d7d1f4137658332dd247")
!4 = !{!5, !7, !6, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = !{!10, !0}
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_vprintk303", scope: !2, file: !3, line: 47, type: !7, isLocal: true, isDefinition: true)
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 8, !"cf-protection-branch", i32 1}
!16 = !{i32 4, !"function_return_thunk_extern", i32 1}
!17 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!18 = !{i32 1, !"Code Model", i32 2}
!19 = !{i32 1, !"override-stack-alignment", i32 8}
!20 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!21 = distinct !DISubprogram(name: "__printk_safe_enter", scope: !3, file: !3, line: 18, type: !22, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{null}
!24 = !{!25, !30}
!25 = !DILocalVariable(name: "__vpp_verify", scope: !26, file: !3, line: 20, type: !28)
!26 = distinct !DILexicalBlock(scope: !27, file: !3, line: 20, column: 2)
!27 = distinct !DILexicalBlock(scope: !21, file: !3, line: 20, column: 2)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!30 = !DILocalVariable(name: "pao_ID__", scope: !31, file: !3, line: 20, type: !32)
!31 = distinct !DILexicalBlock(scope: !27, file: !3, line: 20, column: 2)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!33 = !DILocation(line: 20, column: 2, scope: !21)
!34 = !DILocation(line: 20, column: 2, scope: !27)
!35 = !DILocation(line: 20, column: 2, scope: !26)
!36 = !DILocation(line: 20, column: 2, scope: !31)
!37 = !DILocation(line: 20, column: 2, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !3, line: 20, column: 2)
!39 = distinct !DILexicalBlock(scope: !31, file: !3, line: 20, column: 2)
!40 = !{i64 2154541623}
!41 = !DILocation(line: 21, column: 1, scope: !21)
!42 = distinct !DISubprogram(name: "__printk_safe_exit", scope: !3, file: !3, line: 24, type: !22, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !43)
!43 = !{!44, !47}
!44 = !DILocalVariable(name: "__vpp_verify", scope: !45, file: !3, line: 26, type: !28)
!45 = distinct !DILexicalBlock(scope: !46, file: !3, line: 26, column: 2)
!46 = distinct !DILexicalBlock(scope: !42, file: !3, line: 26, column: 2)
!47 = !DILocalVariable(name: "pao_ID__", scope: !48, file: !3, line: 26, type: !32)
!48 = distinct !DILexicalBlock(scope: !46, file: !3, line: 26, column: 2)
!49 = !DILocation(line: 26, column: 2, scope: !42)
!50 = !DILocation(line: 26, column: 2, scope: !46)
!51 = !DILocation(line: 26, column: 2, scope: !45)
!52 = !DILocation(line: 26, column: 2, scope: !48)
!53 = !DILocation(line: 26, column: 2, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 26, column: 2)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 26, column: 2)
!56 = distinct !DILexicalBlock(scope: !48, file: !3, line: 26, column: 2)
!57 = !{i64 2154551740}
!58 = !DILocation(line: 27, column: 1, scope: !42)
!59 = distinct !DISubprogram(name: "vprintk", scope: !3, file: !3, line: 29, type: !60, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !73)
!60 = !DISubroutineType(types: !61)
!61 = !{!6, !62, !65}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !67)
!67 = !{!68, !70, !71, !72}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !66, file: !3, line: 27, baseType: !69, size: 32)
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !66, file: !3, line: 27, baseType: !69, size: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !66, file: !3, line: 27, baseType: !7, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !66, file: !3, line: 27, baseType: !7, size: 64, offset: 128)
!73 = !{!74, !75, !76, !79, !81}
!74 = !DILocalVariable(name: "fmt", arg: 1, scope: !59, file: !3, line: 29, type: !62)
!75 = !DILocalVariable(name: "args", arg: 2, scope: !59, file: !3, line: 29, type: !65)
!76 = !DILocalVariable(name: "pscr_ret__", scope: !77, file: !3, line: 41, type: !6)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 41, column: 6)
!78 = distinct !DILexicalBlock(scope: !59, file: !3, line: 41, column: 6)
!79 = !DILocalVariable(name: "__vpp_verify", scope: !80, file: !3, line: 41, type: !28)
!80 = distinct !DILexicalBlock(scope: !77, file: !3, line: 41, column: 6)
!81 = !DILocalVariable(name: "pfo_val__", scope: !82, file: !3, line: 41, type: !83)
!82 = distinct !DILexicalBlock(scope: !77, file: !3, line: 41, column: 6)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !84, line: 21, baseType: !85)
!84 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !86, line: 27, baseType: !69)
!86 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!87 = !DILocation(line: 29, column: 36, scope: !59)
!88 = !DILocation(line: 29, column: 49, scope: !59)
!89 = !DILocation(line: 41, column: 6, scope: !77)
!90 = !DILocation(line: 41, column: 6, scope: !80)
!91 = !DILocation(line: 41, column: 6, scope: !82)
!92 = !{i64 2154557439}
!93 = !DILocation(line: 41, column: 6, scope: !78)
!94 = !DILocation(line: 41, column: 36, scope: !78)
!95 = !DILocation(line: 41, column: 39, scope: !78)
!96 = !DILocation(line: 41, column: 6, scope: !59)
!97 = !DILocation(line: 42, column: 27, scope: !78)
!98 = !DILocation(line: 42, column: 32, scope: !78)
!99 = !DILocation(line: 42, column: 10, scope: !78)
!100 = !DILocation(line: 42, column: 3, scope: !78)
!101 = !DILocation(line: 45, column: 25, scope: !59)
!102 = !DILocation(line: 45, column: 30, scope: !59)
!103 = !DILocation(line: 45, column: 9, scope: !59)
!104 = !DILocation(line: 45, column: 2, scope: !59)
!105 = !DILocation(line: 46, column: 1, scope: !59)
!106 = distinct !DISubprogram(name: "preempt_count", scope: !107, file: !107, line: 25, type: !108, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !110)
!107 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!108 = !DISubroutineType(types: !109)
!109 = !{!6}
!110 = !{!111}
!111 = !DILocalVariable(name: "pfo_val__", scope: !112, file: !107, line: 27, type: !83)
!112 = distinct !DILexicalBlock(scope: !106, file: !107, line: 27, column: 9)
!113 = !DILocation(line: 27, column: 9, scope: !112)
!114 = !{i64 2149423512}
!115 = !DILocation(line: 27, column: 9, scope: !106)
!116 = !DILocation(line: 27, column: 48, scope: !106)
!117 = !DILocation(line: 27, column: 2, scope: !106)
!118 = !DISubprogram(name: "vprintk_deferred", scope: !119, file: !119, line: 44, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!119 = !DIFile(filename: "kernel/printk/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5091ad5e0bb9654260bbfa01aad14fee")
!120 = !DISubprogram(name: "vprintk_default", scope: !119, file: !119, line: 43, type: !60, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
