; ModuleID = 'kernel/power/poweroff.c'
source_filename = "kernel/power/poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall4.init..kmod_poweroff__84_45_pm_sysrq_init\22, \22a\22\09\09"
module asm "__initcall__kmod_poweroff__84_45_pm_sysrq_init4:\09\09\09"
module asm ".long\09__initstub__kmod_poweroff__84_45_pm_sysrq_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.sysrq_key_op = type { ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i64] }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }

@__UNIQUE_ID___addressable___initstub__kmod_poweroff__84_45_pm_sysrq_init485 = internal global ptr @__initstub__kmod_poweroff__84_45_pm_sysrq_init4, section ".discard.addressable", align 8, !dbg !0
@sysrq_poweroff_op = internal constant %struct.sysrq_key_op { ptr @handle_poweroff, ptr @.str, ptr @.str.1, i32 128 }, align 8, !dbg !30
@.str = private unnamed_addr constant [12 x i8] c"poweroff(o)\00", align 1, !dbg !19
@.str.1 = private unnamed_addr constant [10 x i8] c"Power Off\00", align 1, !dbg !25
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@poweroff_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @poweroff_work, i64 8), ptr getelementptr (i8, ptr @poweroff_work, i64 8) }, ptr @do_poweroff }, align 8, !dbg !53
@system_wq = external dso_local global ptr, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_poweroff__84_45_pm_sysrq_init485], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_poweroff__84_45_pm_sysrq_init4() #0 section ".init.text" align 16 !dbg !90 {
entry:
  %call = call i32 @pm_sysrq_init() #8, !dbg !93
  ret i32 %call, !dbg !93
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pm_sysrq_init() #0 section ".init.text" align 16 !dbg !94 {
entry:
  %call = call i32 @register_sysrq_key(i8 noundef zeroext 111, ptr noundef @sysrq_poweroff_op) #9, !dbg !95
  ret i32 0, !dbg !96
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !97 dso_local i32 @register_sysrq_key(i8 noundef zeroext, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @handle_poweroff(i8 noundef zeroext %key) #2 align 16 !dbg !101 {
entry:
  %key.addr = alloca i8, align 1
  store i8 %key, ptr %key.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !103, metadata !DIExpression()), !dbg !104
  %call = call i32 @cpumask_first(ptr noundef @__cpu_online_mask) #9, !dbg !105
  %call1 = call zeroext i1 @schedule_work_on(i32 noundef %call, ptr noundef @poweroff_work) #9, !dbg !106
  ret void, !dbg !107
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work_on(i32 noundef %cpu, ptr noundef %work) #4 align 16 !dbg !108 {
entry:
  %cpu.addr = alloca i32, align 4
  %work.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !114, metadata !DIExpression()), !dbg !116
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !115, metadata !DIExpression()), !dbg !117
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !118
  %1 = load ptr, ptr @system_wq, align 8, !dbg !119
  %2 = load ptr, ptr %work.addr, align 8, !dbg !120
  %call = call zeroext i1 @queue_work_on(i32 noundef %0, ptr noundef %1, ptr noundef %2) #9, !dbg !121
  ret i1 %call, !dbg !122
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_first(ptr noundef %srcp) #4 align 16 !dbg !123 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !127, metadata !DIExpression()), !dbg !128
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !129
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !129
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !129
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #9, !dbg !130
  %conv = trunc i64 %call to i32, !dbg !130
  ret i32 %conv, !dbg !131
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !132 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #4 align 16 !dbg !137 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !144, metadata !DIExpression()), !dbg !149
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !145, metadata !DIExpression()), !dbg !150
  %0 = load i64, ptr %size.addr, align 8, !dbg !151
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !151
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !151

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !151
  %cmp = icmp ule i64 %2, 64, !dbg !151
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !151

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !151
  %cmp2 = icmp ugt i64 %3, 0, !dbg !151
  br i1 %cmp2, label %if.then, label %if.end, !dbg !152

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !153
  call void @llvm.dbg.declare(metadata ptr %val, metadata !146, metadata !DIExpression()), !dbg !154
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !155
  %5 = load i64, ptr %4, align 8, !dbg !156
  %6 = load i64, ptr %size.addr, align 8, !dbg !157
  %sub = sub i64 %6, 1, !dbg !157
  %sub3 = sub i64 63, %sub, !dbg !157
  %shr = lshr i64 -1, %sub3, !dbg !157
  %and = and i64 -1, %shr, !dbg !157
  %add = add i64 0, %and, !dbg !157
  %and4 = and i64 %5, %add, !dbg !158
  store i64 %and4, ptr %val, align 8, !dbg !154
  %7 = load i64, ptr %val, align 8, !dbg !159
  %tobool = icmp ne i64 %7, 0, !dbg !159
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !159

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !160
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !160
  br i1 %9, label %cond.true5, label %cond.false, !dbg !160

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !160
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !160
  %cast = trunc i64 %11 to i32, !dbg !160
  %conv = sext i32 %cast to i64, !dbg !160
  br label %cond.end, !dbg !160

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !160
  %call = call i64 @variable__ffs(i64 noundef %12) #9, !dbg !160
  br label %cond.end, !dbg !160

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !160
  br label %cond.end7, !dbg !159

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !161
  br label %cond.end7, !dbg !159

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !159
  store i64 %cond8, ptr %retval, align 8, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !163
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !164
  %15 = load i64, ptr %size.addr, align 8, !dbg !165
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #9, !dbg !166
  store i64 %call9, ptr %retval, align 8, !dbg !167
  br label %return, !dbg !167

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !168
  ret i64 %16, !dbg !168
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #7 align 16 !dbg !169 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !174, metadata !DIExpression()), !dbg !175
  %0 = load i64, ptr %word.addr, align 8, !dbg !176
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #11, !dbg !177, !srcloc !178
  store i64 %1, ptr %word.addr, align 8, !dbg !177
  %2 = load i64, ptr %word.addr, align 8, !dbg !179
  ret i64 %2, !dbg !180
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !181 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_poweroff(ptr noundef %dummy) #2 align 16 !dbg !182 {
entry:
  %dummy.addr = alloca ptr, align 8
  store ptr %dummy, ptr %dummy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dummy.addr, metadata !184, metadata !DIExpression()), !dbg !185
  call void @kernel_power_off() #9, !dbg !186
  ret void, !dbg !187
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !188 dso_local void @kernel_power_off() #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_poweroff__84_45_pm_sysrq_init485", scope: !2, file: !3, line: 45, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/power/.poweroff.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/power/poweroff\22 -D KBUILD_BASENAME=\22poweroff\22 -D KBUILD_MODNAME=\22poweroff\22 -D __KBUILD_MODNAME=kmod_poweroff -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/power/poweroff.ll kernel/power/poweroff.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !18, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/power/poweroff.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cbfccb8d6219d13152c7f0ebcd93df3b")
!4 = !{!5, !6, !16, !17, !13}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !9, line: 19, size: 64, elements: !10)
!9 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !8, file: !9, line: 19, baseType: !12, size: 64)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, elements: !14)
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = !{!15}
!15 = !DISubrange(count: 1)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{!0, !19, !25, !30, !53}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !3, line: 34, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 96, elements: !23)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !{!24}
!24 = !DISubrange(count: 12)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !3, line: 35, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 80, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 10)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "sysrq_poweroff_op", scope: !2, file: !3, line: 32, type: !32, isLocal: true, isDefinition: true)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysrq_key_op", file: !34, line: 32, size: 256, elements: !35)
!34 = !DIFile(filename: "./include/linux/sysrq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fdf31a1678caa747c8b57268924f6fb7")
!35 = !{!36, !46, !50, !51}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !33, file: !34, line: 33, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !42, line: 17, baseType: !43)
!42 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !44, line: 21, baseType: !45)
!44 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!45 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "help_msg", scope: !33, file: !34, line: 34, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "action_msg", scope: !33, file: !34, line: 35, baseType: !47, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "enable_mask", scope: !33, file: !34, line: 36, baseType: !52, size: 32, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "poweroff_work", scope: !2, file: !3, line: 24, type: !55, isLocal: true, isDefinition: true)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !56, line: 98, size: 256, elements: !57)
!56 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!57 = !{!58, !69, !75}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !55, file: !56, line: 99, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !60, line: 13, baseType: !61)
!60 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !62, line: 181, baseType: !63)
!62 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !62, line: 179, size: 64, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !63, file: !62, line: 180, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !42, line: 22, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !44, line: 30, baseType: !68)
!68 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !55, file: !56, line: 100, baseType: !70, size: 128, offset: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !62, line: 190, size: 128, elements: !71)
!71 = !{!72, !74}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !70, file: !62, line: 191, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !70, file: !62, line: 191, baseType: !73, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !55, file: !56, line: 101, baseType: !76, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !56, line: 21, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !80}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!81 = !{i32 7, !"Dwarf Version", i32 5}
!82 = !{i32 2, !"Debug Info Version", i32 3}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 8, !"cf-protection-branch", i32 1}
!85 = !{i32 4, !"function_return_thunk_extern", i32 1}
!86 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!87 = !{i32 1, !"Code Model", i32 2}
!88 = !{i32 1, !"override-stack-alignment", i32 8}
!89 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!90 = distinct !DISubprogram(name: "__initstub__kmod_poweroff__84_45_pm_sysrq_init4", scope: !3, file: !3, line: 45, type: !91, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!91 = !DISubroutineType(types: !92)
!92 = !{!17}
!93 = !DILocation(line: 45, column: 1, scope: !90)
!94 = distinct !DISubprogram(name: "pm_sysrq_init", scope: !3, file: !3, line: 39, type: !91, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!95 = !DILocation(line: 41, column: 2, scope: !94)
!96 = !DILocation(line: 42, column: 2, scope: !94)
!97 = !DISubprogram(name: "register_sysrq_key", scope: !34, file: !34, line: 48, type: !98, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!98 = !DISubroutineType(types: !99)
!99 = !{!17, !41, !100}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!101 = distinct !DISubprogram(name: "handle_poweroff", scope: !3, file: !3, line: 26, type: !39, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !102)
!102 = !{!103}
!103 = !DILocalVariable(name: "key", arg: 1, scope: !101, file: !3, line: 26, type: !41)
!104 = !DILocation(line: 26, column: 32, scope: !101)
!105 = !DILocation(line: 29, column: 19, scope: !101)
!106 = !DILocation(line: 29, column: 2, scope: !101)
!107 = !DILocation(line: 30, column: 1, scope: !101)
!108 = distinct !DISubprogram(name: "schedule_work_on", scope: !56, file: !56, line: 602, type: !109, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !113)
!109 = !DISubroutineType(types: !110)
!110 = !{!111, !17, !80}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !62, line: 35, baseType: !112)
!112 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!113 = !{!114, !115}
!114 = !DILocalVariable(name: "cpu", arg: 1, scope: !108, file: !56, line: 602, type: !17)
!115 = !DILocalVariable(name: "work", arg: 2, scope: !108, file: !56, line: 602, type: !80)
!116 = !DILocation(line: 602, column: 41, scope: !108)
!117 = !DILocation(line: 602, column: 66, scope: !108)
!118 = !DILocation(line: 604, column: 23, scope: !108)
!119 = !DILocation(line: 604, column: 28, scope: !108)
!120 = !DILocation(line: 604, column: 39, scope: !108)
!121 = !DILocation(line: 604, column: 9, scope: !108)
!122 = !DILocation(line: 604, column: 2, scope: !108)
!123 = distinct !DISubprogram(name: "cpumask_first", scope: !9, file: !9, line: 160, type: !124, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !126)
!124 = !DISubroutineType(types: !125)
!125 = !{!16, !6}
!126 = !{!127}
!127 = !DILocalVariable(name: "srcp", arg: 1, scope: !123, file: !9, line: 160, type: !6)
!128 = !DILocation(line: 160, column: 64, scope: !123)
!129 = !DILocation(line: 162, column: 24, scope: !123)
!130 = !DILocation(line: 162, column: 9, scope: !123)
!131 = !DILocation(line: 162, column: 2, scope: !123)
!132 = !DISubprogram(name: "queue_work_on", scope: !56, file: !56, line: 496, type: !133, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!133 = !DISubroutineType(types: !134)
!134 = !{!111, !17, !135, !80}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !56, line: 18, flags: DIFlagFwdDecl)
!137 = distinct !DISubprogram(name: "find_first_bit", scope: !138, file: !138, line: 200, type: !139, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !143)
!138 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!139 = !DISubroutineType(types: !140)
!140 = !{!13, !141, !13}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!143 = !{!144, !145, !146}
!144 = !DILocalVariable(name: "addr", arg: 1, scope: !137, file: !138, line: 200, type: !141)
!145 = !DILocalVariable(name: "size", arg: 2, scope: !137, file: !138, line: 200, type: !13)
!146 = !DILocalVariable(name: "val", scope: !147, file: !138, line: 203, type: !13)
!147 = distinct !DILexicalBlock(scope: !148, file: !138, line: 202, column: 31)
!148 = distinct !DILexicalBlock(scope: !137, file: !138, line: 202, column: 6)
!149 = !DILocation(line: 200, column: 51, scope: !137)
!150 = !DILocation(line: 200, column: 71, scope: !137)
!151 = !DILocation(line: 202, column: 6, scope: !148)
!152 = !DILocation(line: 202, column: 6, scope: !137)
!153 = !DILocation(line: 203, column: 3, scope: !147)
!154 = !DILocation(line: 203, column: 17, scope: !147)
!155 = !DILocation(line: 203, column: 24, scope: !147)
!156 = !DILocation(line: 203, column: 23, scope: !147)
!157 = !DILocation(line: 203, column: 31, scope: !147)
!158 = !DILocation(line: 203, column: 29, scope: !147)
!159 = !DILocation(line: 205, column: 10, scope: !147)
!160 = !DILocation(line: 205, column: 16, scope: !147)
!161 = !DILocation(line: 205, column: 29, scope: !147)
!162 = !DILocation(line: 205, column: 3, scope: !147)
!163 = !DILocation(line: 206, column: 2, scope: !148)
!164 = !DILocation(line: 208, column: 25, scope: !137)
!165 = !DILocation(line: 208, column: 31, scope: !137)
!166 = !DILocation(line: 208, column: 9, scope: !137)
!167 = !DILocation(line: 208, column: 2, scope: !137)
!168 = !DILocation(line: 209, column: 1, scope: !137)
!169 = distinct !DISubprogram(name: "variable__ffs", scope: !170, file: !170, line: 250, type: !171, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !173)
!170 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!171 = !DISubroutineType(types: !172)
!172 = !{!13, !13}
!173 = !{!174}
!174 = !DILocalVariable(name: "word", arg: 1, scope: !169, file: !170, line: 250, type: !13)
!175 = !DILocation(line: 250, column: 66, scope: !169)
!176 = !DILocation(line: 254, column: 11, scope: !169)
!177 = !DILocation(line: 252, column: 2, scope: !169)
!178 = !{i64 293998}
!179 = !DILocation(line: 255, column: 9, scope: !169)
!180 = !DILocation(line: 255, column: 2, scope: !169)
!181 = !DISubprogram(name: "_find_first_bit", scope: !138, file: !138, line: 21, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!182 = distinct !DISubprogram(name: "do_poweroff", scope: !3, file: !3, line: 19, type: !78, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !183)
!183 = !{!184}
!184 = !DILocalVariable(name: "dummy", arg: 1, scope: !182, file: !3, line: 19, type: !80)
!185 = !DILocation(line: 19, column: 45, scope: !182)
!186 = !DILocation(line: 21, column: 2, scope: !182)
!187 = !DILocation(line: 22, column: 1, scope: !182)
!188 = !DISubprogram(name: "kernel_power_off", scope: !189, file: !189, line: 170, type: !190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!189 = !DIFile(filename: "./include/linux/reboot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7764077571b3c42d5acdba437f8cc057")
!190 = !DISubroutineType(types: !191)
!191 = !{null}
