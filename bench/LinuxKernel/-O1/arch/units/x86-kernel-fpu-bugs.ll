; ModuleID = 'arch/x86/kernel/fpu/bugs.c'
source_filename = "arch/x86/kernel/fpu/bugs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }

@x = internal global double 0x4150017EC0000000, section ".init.data", align 8, !dbg !0
@y = internal global double 0x4147FFFF80000000, section ".init.data", align 8, !dbg !27
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str = private unnamed_addr constant [26 x i8] c"\014Hmm, FPU with FDIV bug\0A\00", align 1, !dbg !22

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @fpu__init_check_bugs() #0 section ".init.text" align 16 !dbg !39 {
entry:
  %fdiv_bug = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %fdiv_bug) #8, !dbg !49
  call void @llvm.dbg.declare(metadata ptr %fdiv_bug, metadata !43, metadata !DIExpression()), !dbg !50
  call void @kernel_fpu_begin() #9, !dbg !51
  call void asm "fninit\0A\09fldl $1\0A\09fdivl $2\0A\09fmull $2\0A\09fldl $1\0A\09fsubp %st,%st(1)\0A\09fistpl $0\0A\09fwait\0A\09fninit", "=*m,*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %fdiv_bug, ptr elementtype(double) @x, ptr elementtype(double) @y) #8, !dbg !52, !srcloc !53
  call void @kernel_fpu_end() #9, !dbg !54
  %0 = load i32, ptr %fdiv_bug, align 4, !dbg !55
  %tobool = icmp ne i32 %0, 0, !dbg !55
  br i1 %tobool, label %if.then, label %if.end, !dbg !57

if.then:                                          ; preds = %entry
  call void @set_bit(i64 noundef 705, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #9, !dbg !58
  br label %do.body, !dbg !60

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !62

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !62

do.end:                                           ; preds = %do.cond
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str) #10, !dbg !60
  store i32 %call, ptr %tmp, align 4, !dbg !62
  %1 = load i32, ptr %tmp, align 4, !dbg !60
  br label %if.end, !dbg !64

if.end:                                           ; preds = %do.end, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %fdiv_bug) #8, !dbg !65
  ret void, !dbg !65
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kernel_fpu_begin() #3 align 16 !dbg !66 {
entry:
  call void @kernel_fpu_begin_mask(i32 noundef 2) #9, !dbg !68
  ret void, !dbg !69
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !70 dso_local void @kernel_fpu_end() #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !71 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !78, metadata !DIExpression()), !dbg !80
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !79, metadata !DIExpression()), !dbg !81
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !82
  %1 = load i64, ptr %nr.addr, align 8, !dbg !83
  %div = sdiv i64 %1, 64, !dbg !83
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !84
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !85
  %2 = load i64, ptr %nr.addr, align 8, !dbg !86
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !87
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !88
  ret void, !dbg !89
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !90 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !96 dso_local void @kernel_fpu_begin_mask(i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !99 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !112, metadata !DIExpression()), !dbg !114
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !113, metadata !DIExpression()), !dbg !115
  %0 = load ptr, ptr %v.addr, align 8, !dbg !116
  %1 = load i64, ptr %size.addr, align 8, !dbg !117
  %conv = trunc i64 %1 to i32, !dbg !117
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #9, !dbg !118
  %2 = load ptr, ptr %v.addr, align 8, !dbg !119
  %3 = load i64, ptr %size.addr, align 8, !dbg !119
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #9, !dbg !119
  ret void, !dbg !120
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !121 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !124, metadata !DIExpression()), !dbg !126
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !125, metadata !DIExpression()), !dbg !127
  %0 = load i64, ptr %nr.addr, align 8, !dbg !128
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !130
  br i1 %1, label %if.then, label %if.else, !dbg !131

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !132
  %3 = load i64, ptr %nr.addr, align 8, !dbg !132
  %shr = ashr i64 %3, 3, !dbg !132
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !132
  %4 = load i64, ptr %nr.addr, align 8, !dbg !134
  %and = and i64 %4, 7, !dbg !134
  %sh_prom = trunc i64 %and to i32, !dbg !134
  %shl = shl i32 1, %sh_prom, !dbg !134
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #8, !dbg !135, !srcloc !136
  br label %if.end, !dbg !137

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !138
  %6 = load i64, ptr %nr.addr, align 8, !dbg !140
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #8, !dbg !141, !srcloc !142
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !143
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !144 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !151, metadata !DIExpression()), !dbg !153
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !152, metadata !DIExpression()), !dbg !154
  ret i1 true, !dbg !155
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !156 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !161, metadata !DIExpression()), !dbg !164
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !162, metadata !DIExpression()), !dbg !165
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !163, metadata !DIExpression()), !dbg !166
  ret void, !dbg !167
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 11, type: !29, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/fpu/.bugs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/fpu/bugs\22 -D KBUILD_BASENAME=\22bugs\22 -D KBUILD_MODNAME=\22bugs\22 -D __KBUILD_MODNAME=kmod_bugs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/fpu/bugs.ll arch/x86/kernel/fpu/bugs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !21, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/fpu/bugs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "46f1d1fd309929735b1e242558fc64bb")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !14, !17, !18}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!20 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!21 = !{!22, !0, !27}
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !3, line: 57, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !16, size: 208, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 26)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "y", scope: !2, file: !3, line: 12, type: !29, isLocal: true, isDefinition: true)
!29 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!30 = !{i32 7, !"Dwarf Version", i32 5}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 8, !"cf-protection-branch", i32 1}
!34 = !{i32 4, !"function_return_thunk_extern", i32 1}
!35 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!36 = !{i32 1, !"Code Model", i32 2}
!37 = !{i32 1, !"override-stack-alignment", i32 8}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = distinct !DISubprogram(name: "fpu__init_check_bugs", scope: !3, file: !3, line: 25, type: !40, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !42)
!40 = !DISubroutineType(types: !41)
!41 = !{null}
!42 = !{!43}
!43 = !DILocalVariable(name: "fdiv_bug", scope: !39, file: !3, line: 27, type: !44)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !45, line: 20, baseType: !46)
!45 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !47, line: 26, baseType: !48)
!47 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DILocation(line: 27, column: 2, scope: !39)
!50 = !DILocation(line: 27, column: 6, scope: !39)
!51 = !DILocation(line: 33, column: 2, scope: !39)
!52 = !DILocation(line: 41, column: 2, scope: !39)
!53 = !{i64 922, i64 931, i64 947, i64 964, i64 981, i64 997, i64 1024, i64 1042, i64 1056}
!54 = !DILocation(line: 53, column: 2, scope: !39)
!55 = !DILocation(line: 55, column: 6, scope: !56)
!56 = distinct !DILexicalBlock(scope: !39, file: !3, line: 55, column: 6)
!57 = !DILocation(line: 55, column: 6, scope: !39)
!58 = !DILocation(line: 56, column: 3, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !3, line: 55, column: 16)
!60 = !DILocation(line: 57, column: 3, scope: !61)
!61 = distinct !DILexicalBlock(scope: !59, file: !3, line: 57, column: 3)
!62 = !DILocation(line: 57, column: 3, scope: !63)
!63 = distinct !DILexicalBlock(scope: !61, file: !3, line: 57, column: 3)
!64 = !DILocation(line: 58, column: 2, scope: !59)
!65 = !DILocation(line: 59, column: 1, scope: !39)
!66 = distinct !DISubprogram(name: "kernel_fpu_begin", scope: !67, file: !67, line: 35, type: !40, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!67 = !DIFile(filename: "./arch/x86/include/asm/fpu/api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "69298eced5ce9b488888ff68abf966e3")
!68 = !DILocation(line: 42, column: 2, scope: !66)
!69 = !DILocation(line: 50, column: 1, scope: !66)
!70 = !DISubprogram(name: "kernel_fpu_end", scope: !67, file: !67, line: 30, type: !40, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!71 = distinct !DISubprogram(name: "set_bit", scope: !72, file: !72, line: 26, type: !73, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !77)
!72 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!73 = !DISubroutineType(types: !74)
!74 = !{null, !20, !75}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!77 = !{!78, !79}
!78 = !DILocalVariable(name: "nr", arg: 1, scope: !71, file: !72, line: 26, type: !20)
!79 = !DILocalVariable(name: "addr", arg: 2, scope: !71, file: !72, line: 26, type: !75)
!80 = !DILocation(line: 26, column: 42, scope: !71)
!81 = !DILocation(line: 26, column: 70, scope: !71)
!82 = !DILocation(line: 28, column: 26, scope: !71)
!83 = !DILocation(line: 28, column: 33, scope: !71)
!84 = !DILocation(line: 28, column: 31, scope: !71)
!85 = !DILocation(line: 28, column: 2, scope: !71)
!86 = !DILocation(line: 29, column: 15, scope: !71)
!87 = !DILocation(line: 29, column: 19, scope: !71)
!88 = !DILocation(line: 29, column: 2, scope: !71)
!89 = !DILocation(line: 30, column: 1, scope: !71)
!90 = !DISubprogram(name: "_printk", scope: !91, file: !91, line: 153, type: !92, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!91 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!92 = !DISubroutineType(types: !93)
!93 = !{!48, !94, null}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!96 = !DISubprogram(name: "kernel_fpu_begin_mask", scope: !67, file: !67, line: 29, type: !97, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !7}
!99 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !100, file: !100, line: 80, type: !101, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!100 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103, !106}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 61, baseType: !108)
!107 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !109, line: 72, baseType: !110)
!109 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !109, line: 16, baseType: !13)
!111 = !{!112, !113}
!112 = !DILocalVariable(name: "v", arg: 1, scope: !99, file: !100, line: 80, type: !103)
!113 = !DILocalVariable(name: "size", arg: 2, scope: !99, file: !100, line: 80, type: !106)
!114 = !DILocation(line: 80, column: 74, scope: !99)
!115 = !DILocation(line: 80, column: 84, scope: !99)
!116 = !DILocation(line: 82, column: 20, scope: !99)
!117 = !DILocation(line: 82, column: 23, scope: !99)
!118 = !DILocation(line: 82, column: 2, scope: !99)
!119 = !DILocation(line: 83, column: 2, scope: !99)
!120 = !DILocation(line: 84, column: 1, scope: !99)
!121 = distinct !DISubprogram(name: "arch_set_bit", scope: !122, file: !122, line: 52, type: !73, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !123)
!122 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!123 = !{!124, !125}
!124 = !DILocalVariable(name: "nr", arg: 1, scope: !121, file: !122, line: 52, type: !20)
!125 = !DILocalVariable(name: "addr", arg: 2, scope: !121, file: !122, line: 52, type: !75)
!126 = !DILocation(line: 52, column: 19, scope: !121)
!127 = !DILocation(line: 52, column: 47, scope: !121)
!128 = !DILocation(line: 54, column: 27, scope: !129)
!129 = distinct !DILexicalBlock(scope: !121, file: !122, line: 54, column: 6)
!130 = !DILocation(line: 54, column: 6, scope: !129)
!131 = !DILocation(line: 54, column: 6, scope: !121)
!132 = !DILocation(line: 56, column: 6, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !122, line: 54, column: 32)
!134 = !DILocation(line: 57, column: 12, scope: !133)
!135 = !DILocation(line: 55, column: 3, scope: !133)
!136 = !{i64 2147942531, i64 2147942570, i64 2147942591, i64 2147942628, i64 2147942651, i64 2147942521}
!137 = !DILocation(line: 59, column: 2, scope: !133)
!138 = !DILocation(line: 61, column: 8, scope: !139)
!139 = distinct !DILexicalBlock(scope: !129, file: !122, line: 59, column: 9)
!140 = !DILocation(line: 61, column: 32, scope: !139)
!141 = !DILocation(line: 60, column: 3, scope: !139)
!142 = !{i64 2147942816, i64 2147942855, i64 2147942876, i64 2147942913, i64 2147942936, i64 2147942806}
!143 = !DILocation(line: 63, column: 1, scope: !121)
!144 = distinct !DISubprogram(name: "kasan_check_write", scope: !145, file: !145, line: 44, type: !146, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !150)
!145 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !103, !7}
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !107, line: 35, baseType: !149)
!149 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!150 = !{!151, !152}
!151 = !DILocalVariable(name: "p", arg: 1, scope: !144, file: !145, line: 44, type: !103)
!152 = !DILocalVariable(name: "size", arg: 2, scope: !144, file: !145, line: 44, type: !7)
!153 = !DILocation(line: 44, column: 59, scope: !144)
!154 = !DILocation(line: 44, column: 75, scope: !144)
!155 = !DILocation(line: 46, column: 2, scope: !144)
!156 = distinct !DISubprogram(name: "kcsan_check_access", scope: !157, file: !157, line: 229, type: !158, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !160)
!157 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!158 = !DISubroutineType(types: !159)
!159 = !{null, !103, !106, !48}
!160 = !{!161, !162, !163}
!161 = !DILocalVariable(name: "ptr", arg: 1, scope: !156, file: !157, line: 229, type: !103)
!162 = !DILocalVariable(name: "size", arg: 2, scope: !156, file: !157, line: 229, type: !106)
!163 = !DILocalVariable(name: "type", arg: 3, scope: !156, file: !157, line: 230, type: !48)
!164 = !DILocation(line: 229, column: 60, scope: !156)
!165 = !DILocation(line: 229, column: 72, scope: !156)
!166 = !DILocation(line: 230, column: 15, scope: !156)
!167 = !DILocation(line: 230, column: 23, scope: !156)
