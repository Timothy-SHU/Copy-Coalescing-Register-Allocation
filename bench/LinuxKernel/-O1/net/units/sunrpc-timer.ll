; ModuleID = 'net/sunrpc/timer.c'
source_filename = "net/sunrpc/timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rpc_init_rtt: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rpc_init_rtt ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rpc_update_rtt: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rpc_update_rtt ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rpc_calc_rto: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad rpc_calc_rto ; .previous"

%struct.rpc_rtt = type { i64, [5 x i64], [5 x i64], [5 x i32] }

@__UNIQUE_ID___addressable_rpc_init_rtt562 = internal global ptr @rpc_init_rtt, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_rpc_update_rtt563 = internal global ptr @rpc_update_rtt, section ".discard.addressable", align 8, !dbg !9
@__UNIQUE_ID___addressable_rpc_calc_rto564 = internal global ptr @rpc_calc_rto, section ".discard.addressable", align 8, !dbg !11
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_rpc_init_rtt562, ptr @__UNIQUE_ID___addressable_rpc_update_rtt563, ptr @__UNIQUE_ID___addressable_rpc_calc_rto564], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rpc_init_rtt(ptr noundef %rt, i64 noundef %timeo) #0 align 16 !dbg !22 {
entry:
  %rt.addr = alloca ptr, align 8
  %timeo.addr = alloca i64, align 8
  %init = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %rt, ptr %rt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rt.addr, metadata !40, metadata !DIExpression()), !dbg !45
  store i64 %timeo, ptr %timeo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %timeo.addr, metadata !41, metadata !DIExpression()), !dbg !46
  call void @llvm.lifetime.start.p0(i64 8, ptr %init) #3, !dbg !47
  call void @llvm.dbg.declare(metadata ptr %init, metadata !42, metadata !DIExpression()), !dbg !48
  store i64 0, ptr %init, align 8, !dbg !48
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3, !dbg !49
  call void @llvm.dbg.declare(metadata ptr %i, metadata !43, metadata !DIExpression()), !dbg !50
  %0 = load i64, ptr %timeo.addr, align 8, !dbg !51
  %1 = load ptr, ptr %rt.addr, align 8, !dbg !52
  %timeo1 = getelementptr inbounds %struct.rpc_rtt, ptr %1, i32 0, i32 0, !dbg !53
  store i64 %0, ptr %timeo1, align 8, !dbg !54
  %2 = load i64, ptr %timeo.addr, align 8, !dbg !55
  %cmp = icmp ugt i64 %2, 200, !dbg !57
  br i1 %cmp, label %if.then, label %if.end, !dbg !58

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %timeo.addr, align 8, !dbg !59
  %sub = sub i64 %3, 200, !dbg !60
  %shl = shl i64 %sub, 3, !dbg !61
  store i64 %shl, ptr %init, align 8, !dbg !62
  br label %if.end, !dbg !63

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4, !dbg !64
  br label %for.cond, !dbg !66

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !67
  %cmp2 = icmp ult i32 %4, 5, !dbg !69
  br i1 %cmp2, label %for.body, label %for.end, !dbg !70

for.body:                                         ; preds = %for.cond
  %5 = load i64, ptr %init, align 8, !dbg !71
  %6 = load ptr, ptr %rt.addr, align 8, !dbg !73
  %srtt = getelementptr inbounds %struct.rpc_rtt, ptr %6, i32 0, i32 1, !dbg !74
  %7 = load i32, ptr %i, align 4, !dbg !75
  %idxprom = zext i32 %7 to i64, !dbg !73
  %arrayidx = getelementptr [5 x i64], ptr %srtt, i64 0, i64 %idxprom, !dbg !73
  store i64 %5, ptr %arrayidx, align 8, !dbg !76
  %8 = load ptr, ptr %rt.addr, align 8, !dbg !77
  %sdrtt = getelementptr inbounds %struct.rpc_rtt, ptr %8, i32 0, i32 2, !dbg !78
  %9 = load i32, ptr %i, align 4, !dbg !79
  %idxprom3 = zext i32 %9 to i64, !dbg !77
  %arrayidx4 = getelementptr [5 x i64], ptr %sdrtt, i64 0, i64 %idxprom3, !dbg !77
  store i64 200, ptr %arrayidx4, align 8, !dbg !80
  %10 = load ptr, ptr %rt.addr, align 8, !dbg !81
  %ntimeouts = getelementptr inbounds %struct.rpc_rtt, ptr %10, i32 0, i32 3, !dbg !82
  %11 = load i32, ptr %i, align 4, !dbg !83
  %idxprom5 = zext i32 %11 to i64, !dbg !81
  %arrayidx6 = getelementptr [5 x i32], ptr %ntimeouts, i64 0, i64 %idxprom5, !dbg !81
  store i32 0, ptr %arrayidx6, align 4, !dbg !84
  br label %for.inc, !dbg !85

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4, !dbg !86
  %inc = add i32 %12, 1, !dbg !86
  store i32 %inc, ptr %i, align 4, !dbg !86
  br label %for.cond, !dbg !87, !llvm.loop !88

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3, !dbg !92
  call void @llvm.lifetime.end.p0(i64 8, ptr %init) #3, !dbg !92
  ret void, !dbg !92
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rpc_update_rtt(ptr noundef %rt, i32 noundef %timer, i64 noundef %m) #0 align 16 !dbg !93 {
entry:
  %rt.addr = alloca ptr, align 8
  %timer.addr = alloca i32, align 4
  %m.addr = alloca i64, align 8
  %srtt = alloca ptr, align 8
  %sdrtt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rt, ptr %rt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rt.addr, metadata !97, metadata !DIExpression()), !dbg !102
  store i32 %timer, ptr %timer.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !98, metadata !DIExpression()), !dbg !103
  store i64 %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !99, metadata !DIExpression()), !dbg !104
  call void @llvm.lifetime.start.p0(i64 8, ptr %srtt) #3, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %srtt, metadata !100, metadata !DIExpression()), !dbg !106
  call void @llvm.lifetime.start.p0(i64 8, ptr %sdrtt) #3, !dbg !105
  call void @llvm.dbg.declare(metadata ptr %sdrtt, metadata !101, metadata !DIExpression()), !dbg !107
  %0 = load i32, ptr %timer.addr, align 4, !dbg !108
  %dec = add i32 %0, -1, !dbg !108
  store i32 %dec, ptr %timer.addr, align 4, !dbg !108
  %cmp = icmp eq i32 %0, 0, !dbg !110
  br i1 %cmp, label %if.then, label %if.end, !dbg !111

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !112

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %m.addr, align 8, !dbg !113
  %cmp1 = icmp slt i64 %1, 0, !dbg !115
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !116

if.then2:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !117

if.end3:                                          ; preds = %if.end
  %2 = load i64, ptr %m.addr, align 8, !dbg !118
  %cmp4 = icmp eq i64 %2, 0, !dbg !120
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !121

if.then5:                                         ; preds = %if.end3
  store i64 1, ptr %m.addr, align 8, !dbg !122
  br label %if.end6, !dbg !123

if.end6:                                          ; preds = %if.then5, %if.end3
  %3 = load ptr, ptr %rt.addr, align 8, !dbg !124
  %srtt7 = getelementptr inbounds %struct.rpc_rtt, ptr %3, i32 0, i32 1, !dbg !125
  %4 = load i32, ptr %timer.addr, align 4, !dbg !126
  %idxprom = zext i32 %4 to i64, !dbg !124
  %arrayidx = getelementptr [5 x i64], ptr %srtt7, i64 0, i64 %idxprom, !dbg !124
  store ptr %arrayidx, ptr %srtt, align 8, !dbg !127
  %5 = load ptr, ptr %srtt, align 8, !dbg !128
  %6 = load i64, ptr %5, align 8, !dbg !129
  %shr = ashr i64 %6, 3, !dbg !130
  %7 = load i64, ptr %m.addr, align 8, !dbg !131
  %sub = sub i64 %7, %shr, !dbg !131
  store i64 %sub, ptr %m.addr, align 8, !dbg !131
  %8 = load i64, ptr %m.addr, align 8, !dbg !132
  %9 = load ptr, ptr %srtt, align 8, !dbg !133
  %10 = load i64, ptr %9, align 8, !dbg !134
  %add = add i64 %10, %8, !dbg !134
  store i64 %add, ptr %9, align 8, !dbg !134
  %11 = load i64, ptr %m.addr, align 8, !dbg !135
  %cmp8 = icmp slt i64 %11, 0, !dbg !137
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !138

if.then9:                                         ; preds = %if.end6
  %12 = load i64, ptr %m.addr, align 8, !dbg !139
  %sub10 = sub i64 0, %12, !dbg !140
  store i64 %sub10, ptr %m.addr, align 8, !dbg !141
  br label %if.end11, !dbg !142

if.end11:                                         ; preds = %if.then9, %if.end6
  %13 = load ptr, ptr %rt.addr, align 8, !dbg !143
  %sdrtt12 = getelementptr inbounds %struct.rpc_rtt, ptr %13, i32 0, i32 2, !dbg !144
  %14 = load i32, ptr %timer.addr, align 4, !dbg !145
  %idxprom13 = zext i32 %14 to i64, !dbg !143
  %arrayidx14 = getelementptr [5 x i64], ptr %sdrtt12, i64 0, i64 %idxprom13, !dbg !143
  store ptr %arrayidx14, ptr %sdrtt, align 8, !dbg !146
  %15 = load ptr, ptr %sdrtt, align 8, !dbg !147
  %16 = load i64, ptr %15, align 8, !dbg !148
  %shr15 = ashr i64 %16, 2, !dbg !149
  %17 = load i64, ptr %m.addr, align 8, !dbg !150
  %sub16 = sub i64 %17, %shr15, !dbg !150
  store i64 %sub16, ptr %m.addr, align 8, !dbg !150
  %18 = load i64, ptr %m.addr, align 8, !dbg !151
  %19 = load ptr, ptr %sdrtt, align 8, !dbg !152
  %20 = load i64, ptr %19, align 8, !dbg !153
  %add17 = add i64 %20, %18, !dbg !153
  store i64 %add17, ptr %19, align 8, !dbg !153
  %21 = load ptr, ptr %sdrtt, align 8, !dbg !154
  %22 = load i64, ptr %21, align 8, !dbg !156
  %cmp18 = icmp slt i64 %22, 100, !dbg !157
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !158

if.then19:                                        ; preds = %if.end11
  %23 = load ptr, ptr %sdrtt, align 8, !dbg !159
  store i64 100, ptr %23, align 8, !dbg !160
  br label %if.end20, !dbg !161

if.end20:                                         ; preds = %if.then19, %if.end11
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !162
  br label %cleanup, !dbg !162

cleanup:                                          ; preds = %if.end20, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sdrtt) #3, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %srtt) #3, !dbg !162
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !162

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @rpc_calc_rto(ptr noundef %rt, i32 noundef %timer) #0 align 16 !dbg !163 {
entry:
  %retval = alloca i64, align 8
  %rt.addr = alloca ptr, align 8
  %timer.addr = alloca i32, align 4
  %res = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rt, ptr %rt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rt.addr, metadata !167, metadata !DIExpression()), !dbg !170
  store i32 %timer, ptr %timer.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %timer.addr, metadata !168, metadata !DIExpression()), !dbg !171
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #3, !dbg !172
  call void @llvm.dbg.declare(metadata ptr %res, metadata !169, metadata !DIExpression()), !dbg !173
  %0 = load i32, ptr %timer.addr, align 4, !dbg !174
  %dec = add i32 %0, -1, !dbg !174
  store i32 %dec, ptr %timer.addr, align 4, !dbg !174
  %cmp = icmp eq i32 %0, 0, !dbg !176
  br i1 %cmp, label %if.then, label %if.end, !dbg !177

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %rt.addr, align 8, !dbg !178
  %timeo = getelementptr inbounds %struct.rpc_rtt, ptr %1, i32 0, i32 0, !dbg !179
  %2 = load i64, ptr %timeo, align 8, !dbg !179
  store i64 %2, ptr %retval, align 8, !dbg !180
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !180

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %rt.addr, align 8, !dbg !181
  %srtt = getelementptr inbounds %struct.rpc_rtt, ptr %3, i32 0, i32 1, !dbg !182
  %4 = load i32, ptr %timer.addr, align 4, !dbg !183
  %idxprom = zext i32 %4 to i64, !dbg !181
  %arrayidx = getelementptr [5 x i64], ptr %srtt, i64 0, i64 %idxprom, !dbg !181
  %5 = load i64, ptr %arrayidx, align 8, !dbg !181
  %add = add i64 %5, 7, !dbg !184
  %shr = lshr i64 %add, 3, !dbg !185
  %6 = load ptr, ptr %rt.addr, align 8, !dbg !186
  %sdrtt = getelementptr inbounds %struct.rpc_rtt, ptr %6, i32 0, i32 2, !dbg !187
  %7 = load i32, ptr %timer.addr, align 4, !dbg !188
  %idxprom1 = zext i32 %7 to i64, !dbg !186
  %arrayidx2 = getelementptr [5 x i64], ptr %sdrtt, i64 0, i64 %idxprom1, !dbg !186
  %8 = load i64, ptr %arrayidx2, align 8, !dbg !186
  %add3 = add i64 %shr, %8, !dbg !189
  store i64 %add3, ptr %res, align 8, !dbg !190
  %9 = load i64, ptr %res, align 8, !dbg !191
  %cmp4 = icmp ugt i64 %9, 60000, !dbg !193
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !194

if.then5:                                         ; preds = %if.end
  store i64 60000, ptr %res, align 8, !dbg !195
  br label %if.end6, !dbg !196

if.end6:                                          ; preds = %if.then5, %if.end
  %10 = load i64, ptr %res, align 8, !dbg !197
  store i64 %10, ptr %retval, align 8, !dbg !198
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !198

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #3, !dbg !199
  %11 = load i64, ptr %retval, align 8, !dbg !199
  ret i64 %11, !dbg !199
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rpc_init_rtt562", scope: !2, file: !3, line: 50, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/sunrpc/.timer.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/sunrpc/sunrpc\22 -D KBUILD_BASENAME=\22timer\22 -D KBUILD_MODNAME=\22sunrpc\22 -D __KBUILD_MODNAME=kmod_sunrpc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/sunrpc/timer.ll net/sunrpc/timer.c", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "net/sunrpc/timer.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b6b2b26f4e42b4d825f039a403b865d9")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!8 = !{!0, !9, !11}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rpc_update_rtt563", scope: !2, file: !3, line: 90, type: !5, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rpc_calc_rto564", scope: !2, file: !3, line: 123, type: !5, isLocal: true, isDefinition: true)
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 8, !"cf-protection-branch", i32 1}
!17 = !{i32 4, !"function_return_thunk_extern", i32 1}
!18 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!19 = !{i32 1, !"Code Model", i32 2}
!20 = !{i32 1, !"override-stack-alignment", i32 8}
!21 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!22 = distinct !DISubprogram(name: "rpc_init_rtt", scope: !3, file: !3, line: 35, type: !23, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25, !30}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rpc_rtt", file: !27, line: 15, size: 896, elements: !28)
!27 = !DIFile(filename: "./include/linux/sunrpc/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0a820103b685beb20d7d76b3337a021")
!28 = !{!29, !31, !35, !36}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "timeo", scope: !26, file: !27, line: 16, baseType: !30, size: 64)
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "srtt", scope: !26, file: !27, line: 17, baseType: !32, size: 320, offset: 64)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 320, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 5)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sdrtt", scope: !26, file: !27, line: 18, baseType: !32, size: 320, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ntimeouts", scope: !26, file: !27, line: 19, baseType: !37, size: 160, offset: 704)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 160, elements: !33)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{!40, !41, !42, !43}
!40 = !DILocalVariable(name: "rt", arg: 1, scope: !22, file: !3, line: 35, type: !25)
!41 = !DILocalVariable(name: "timeo", arg: 2, scope: !22, file: !3, line: 35, type: !30)
!42 = !DILocalVariable(name: "init", scope: !22, file: !3, line: 37, type: !30)
!43 = !DILocalVariable(name: "i", scope: !22, file: !3, line: 38, type: !44)
!44 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!45 = !DILocation(line: 35, column: 35, scope: !22)
!46 = !DILocation(line: 35, column: 53, scope: !22)
!47 = !DILocation(line: 37, column: 2, scope: !22)
!48 = !DILocation(line: 37, column: 16, scope: !22)
!49 = !DILocation(line: 38, column: 2, scope: !22)
!50 = !DILocation(line: 38, column: 15, scope: !22)
!51 = !DILocation(line: 40, column: 14, scope: !22)
!52 = !DILocation(line: 40, column: 2, scope: !22)
!53 = !DILocation(line: 40, column: 6, scope: !22)
!54 = !DILocation(line: 40, column: 12, scope: !22)
!55 = !DILocation(line: 42, column: 6, scope: !56)
!56 = distinct !DILexicalBlock(scope: !22, file: !3, line: 42, column: 6)
!57 = !DILocation(line: 42, column: 12, scope: !56)
!58 = !DILocation(line: 42, column: 6, scope: !22)
!59 = !DILocation(line: 43, column: 11, scope: !56)
!60 = !DILocation(line: 43, column: 17, scope: !56)
!61 = !DILocation(line: 43, column: 33, scope: !56)
!62 = !DILocation(line: 43, column: 8, scope: !56)
!63 = !DILocation(line: 43, column: 3, scope: !56)
!64 = !DILocation(line: 44, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !22, file: !3, line: 44, column: 2)
!66 = !DILocation(line: 44, column: 7, scope: !65)
!67 = !DILocation(line: 44, column: 14, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !3, line: 44, column: 2)
!69 = !DILocation(line: 44, column: 16, scope: !68)
!70 = !DILocation(line: 44, column: 2, scope: !65)
!71 = !DILocation(line: 45, column: 17, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !3, line: 44, column: 26)
!73 = !DILocation(line: 45, column: 3, scope: !72)
!74 = !DILocation(line: 45, column: 7, scope: !72)
!75 = !DILocation(line: 45, column: 12, scope: !72)
!76 = !DILocation(line: 45, column: 15, scope: !72)
!77 = !DILocation(line: 46, column: 3, scope: !72)
!78 = !DILocation(line: 46, column: 7, scope: !72)
!79 = !DILocation(line: 46, column: 13, scope: !72)
!80 = !DILocation(line: 46, column: 16, scope: !72)
!81 = !DILocation(line: 47, column: 3, scope: !72)
!82 = !DILocation(line: 47, column: 7, scope: !72)
!83 = !DILocation(line: 47, column: 17, scope: !72)
!84 = !DILocation(line: 47, column: 20, scope: !72)
!85 = !DILocation(line: 48, column: 2, scope: !72)
!86 = !DILocation(line: 44, column: 22, scope: !68)
!87 = !DILocation(line: 44, column: 2, scope: !68)
!88 = distinct !{!88, !70, !89, !90, !91}
!89 = !DILocation(line: 48, column: 2, scope: !65)
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = !DILocation(line: 49, column: 1, scope: !22)
!93 = distinct !DISubprogram(name: "rpc_update_rtt", scope: !3, file: !3, line: 61, type: !94, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !25, !44, !7}
!96 = !{!97, !98, !99, !100, !101}
!97 = !DILocalVariable(name: "rt", arg: 1, scope: !93, file: !3, line: 61, type: !25)
!98 = !DILocalVariable(name: "timer", arg: 2, scope: !93, file: !3, line: 61, type: !44)
!99 = !DILocalVariable(name: "m", arg: 3, scope: !93, file: !3, line: 61, type: !7)
!100 = !DILocalVariable(name: "srtt", scope: !93, file: !3, line: 63, type: !6)
!101 = !DILocalVariable(name: "sdrtt", scope: !93, file: !3, line: 63, type: !6)
!102 = !DILocation(line: 61, column: 37, scope: !93)
!103 = !DILocation(line: 61, column: 54, scope: !93)
!104 = !DILocation(line: 61, column: 66, scope: !93)
!105 = !DILocation(line: 63, column: 2, scope: !93)
!106 = !DILocation(line: 63, column: 8, scope: !93)
!107 = !DILocation(line: 63, column: 15, scope: !93)
!108 = !DILocation(line: 65, column: 11, scope: !109)
!109 = distinct !DILexicalBlock(scope: !93, file: !3, line: 65, column: 6)
!110 = !DILocation(line: 65, column: 14, scope: !109)
!111 = !DILocation(line: 65, column: 6, scope: !93)
!112 = !DILocation(line: 66, column: 3, scope: !109)
!113 = !DILocation(line: 69, column: 6, scope: !114)
!114 = distinct !DILexicalBlock(scope: !93, file: !3, line: 69, column: 6)
!115 = !DILocation(line: 69, column: 8, scope: !114)
!116 = !DILocation(line: 69, column: 6, scope: !93)
!117 = !DILocation(line: 70, column: 3, scope: !114)
!118 = !DILocation(line: 72, column: 6, scope: !119)
!119 = distinct !DILexicalBlock(scope: !93, file: !3, line: 72, column: 6)
!120 = !DILocation(line: 72, column: 8, scope: !119)
!121 = !DILocation(line: 72, column: 6, scope: !93)
!122 = !DILocation(line: 73, column: 5, scope: !119)
!123 = !DILocation(line: 73, column: 3, scope: !119)
!124 = !DILocation(line: 75, column: 18, scope: !93)
!125 = !DILocation(line: 75, column: 22, scope: !93)
!126 = !DILocation(line: 75, column: 27, scope: !93)
!127 = !DILocation(line: 75, column: 7, scope: !93)
!128 = !DILocation(line: 76, column: 8, scope: !93)
!129 = !DILocation(line: 76, column: 7, scope: !93)
!130 = !DILocation(line: 76, column: 13, scope: !93)
!131 = !DILocation(line: 76, column: 4, scope: !93)
!132 = !DILocation(line: 77, column: 11, scope: !93)
!133 = !DILocation(line: 77, column: 3, scope: !93)
!134 = !DILocation(line: 77, column: 8, scope: !93)
!135 = !DILocation(line: 79, column: 6, scope: !136)
!136 = distinct !DILexicalBlock(scope: !93, file: !3, line: 79, column: 6)
!137 = !DILocation(line: 79, column: 8, scope: !136)
!138 = !DILocation(line: 79, column: 6, scope: !93)
!139 = !DILocation(line: 80, column: 8, scope: !136)
!140 = !DILocation(line: 80, column: 7, scope: !136)
!141 = !DILocation(line: 80, column: 5, scope: !136)
!142 = !DILocation(line: 80, column: 3, scope: !136)
!143 = !DILocation(line: 82, column: 19, scope: !93)
!144 = !DILocation(line: 82, column: 23, scope: !93)
!145 = !DILocation(line: 82, column: 29, scope: !93)
!146 = !DILocation(line: 82, column: 8, scope: !93)
!147 = !DILocation(line: 83, column: 8, scope: !93)
!148 = !DILocation(line: 83, column: 7, scope: !93)
!149 = !DILocation(line: 83, column: 14, scope: !93)
!150 = !DILocation(line: 83, column: 4, scope: !93)
!151 = !DILocation(line: 84, column: 12, scope: !93)
!152 = !DILocation(line: 84, column: 3, scope: !93)
!153 = !DILocation(line: 84, column: 9, scope: !93)
!154 = !DILocation(line: 87, column: 7, scope: !155)
!155 = distinct !DILexicalBlock(scope: !93, file: !3, line: 87, column: 6)
!156 = !DILocation(line: 87, column: 6, scope: !155)
!157 = !DILocation(line: 87, column: 13, scope: !155)
!158 = !DILocation(line: 87, column: 6, scope: !93)
!159 = !DILocation(line: 88, column: 4, scope: !155)
!160 = !DILocation(line: 88, column: 10, scope: !155)
!161 = !DILocation(line: 88, column: 3, scope: !155)
!162 = !DILocation(line: 89, column: 1, scope: !93)
!163 = distinct !DISubprogram(name: "rpc_calc_rto", scope: !3, file: !3, line: 110, type: !164, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !166)
!164 = !DISubroutineType(types: !165)
!165 = !{!30, !25, !44}
!166 = !{!167, !168, !169}
!167 = !DILocalVariable(name: "rt", arg: 1, scope: !163, file: !3, line: 110, type: !25)
!168 = !DILocalVariable(name: "timer", arg: 2, scope: !163, file: !3, line: 110, type: !44)
!169 = !DILocalVariable(name: "res", scope: !163, file: !3, line: 112, type: !30)
!170 = !DILocation(line: 110, column: 44, scope: !163)
!171 = !DILocation(line: 110, column: 61, scope: !163)
!172 = !DILocation(line: 112, column: 2, scope: !163)
!173 = !DILocation(line: 112, column: 16, scope: !163)
!174 = !DILocation(line: 114, column: 11, scope: !175)
!175 = distinct !DILexicalBlock(scope: !163, file: !3, line: 114, column: 6)
!176 = !DILocation(line: 114, column: 14, scope: !175)
!177 = !DILocation(line: 114, column: 6, scope: !163)
!178 = !DILocation(line: 115, column: 10, scope: !175)
!179 = !DILocation(line: 115, column: 14, scope: !175)
!180 = !DILocation(line: 115, column: 3, scope: !175)
!181 = !DILocation(line: 117, column: 10, scope: !163)
!182 = !DILocation(line: 117, column: 14, scope: !163)
!183 = !DILocation(line: 117, column: 19, scope: !163)
!184 = !DILocation(line: 117, column: 26, scope: !163)
!185 = !DILocation(line: 117, column: 31, scope: !163)
!186 = !DILocation(line: 117, column: 39, scope: !163)
!187 = !DILocation(line: 117, column: 43, scope: !163)
!188 = !DILocation(line: 117, column: 49, scope: !163)
!189 = !DILocation(line: 117, column: 37, scope: !163)
!190 = !DILocation(line: 117, column: 6, scope: !163)
!191 = !DILocation(line: 118, column: 6, scope: !192)
!192 = distinct !DILexicalBlock(scope: !163, file: !3, line: 118, column: 6)
!193 = !DILocation(line: 118, column: 10, scope: !192)
!194 = !DILocation(line: 118, column: 6, scope: !163)
!195 = !DILocation(line: 119, column: 7, scope: !192)
!196 = !DILocation(line: 119, column: 3, scope: !192)
!197 = !DILocation(line: 121, column: 9, scope: !163)
!198 = !DILocation(line: 121, column: 2, scope: !163)
!199 = !DILocation(line: 122, column: 1, scope: !163)
