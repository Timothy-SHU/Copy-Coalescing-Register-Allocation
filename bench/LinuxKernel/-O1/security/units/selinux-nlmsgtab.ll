; ModuleID = 'security/selinux/nlmsgtab.c'
source_filename = "security/selinux/nlmsgtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlmsg_perm = type { i16, i32 }

@nlmsg_route_perms = internal constant [68 x %struct.nlmsg_perm] [%struct.nlmsg_perm { i16 16, i32 4194304 }, %struct.nlmsg_perm { i16 17, i32 4194304 }, %struct.nlmsg_perm { i16 18, i32 2097152 }, %struct.nlmsg_perm { i16 19, i32 4194304 }, %struct.nlmsg_perm { i16 20, i32 4194304 }, %struct.nlmsg_perm { i16 21, i32 4194304 }, %struct.nlmsg_perm { i16 22, i32 2097152 }, %struct.nlmsg_perm { i16 24, i32 4194304 }, %struct.nlmsg_perm { i16 25, i32 4194304 }, %struct.nlmsg_perm { i16 26, i32 2097152 }, %struct.nlmsg_perm { i16 28, i32 4194304 }, %struct.nlmsg_perm { i16 29, i32 4194304 }, %struct.nlmsg_perm { i16 30, i32 2097152 }, %struct.nlmsg_perm { i16 32, i32 4194304 }, %struct.nlmsg_perm { i16 33, i32 4194304 }, %struct.nlmsg_perm { i16 34, i32 2097152 }, %struct.nlmsg_perm { i16 36, i32 4194304 }, %struct.nlmsg_perm { i16 37, i32 4194304 }, %struct.nlmsg_perm { i16 38, i32 2097152 }, %struct.nlmsg_perm { i16 40, i32 4194304 }, %struct.nlmsg_perm { i16 41, i32 4194304 }, %struct.nlmsg_perm { i16 42, i32 2097152 }, %struct.nlmsg_perm { i16 44, i32 4194304 }, %struct.nlmsg_perm { i16 45, i32 4194304 }, %struct.nlmsg_perm { i16 46, i32 2097152 }, %struct.nlmsg_perm { i16 48, i32 4194304 }, %struct.nlmsg_perm { i16 49, i32 4194304 }, %struct.nlmsg_perm { i16 50, i32 2097152 }, %struct.nlmsg_perm { i16 52, i32 4194304 }, %struct.nlmsg_perm { i16 58, i32 2097152 }, %struct.nlmsg_perm { i16 62, i32 2097152 }, %struct.nlmsg_perm { i16 66, i32 2097152 }, %struct.nlmsg_perm { i16 67, i32 4194304 }, %struct.nlmsg_perm { i16 72, i32 4194304 }, %struct.nlmsg_perm { i16 73, i32 4194304 }, %struct.nlmsg_perm { i16 74, i32 2097152 }, %struct.nlmsg_perm { i16 78, i32 2097152 }, %struct.nlmsg_perm { i16 79, i32 4194304 }, %struct.nlmsg_perm { i16 80, i32 4194304 }, %struct.nlmsg_perm { i16 81, i32 4194304 }, %struct.nlmsg_perm { i16 82, i32 2097152 }, %struct.nlmsg_perm { i16 84, i32 4194304 }, %struct.nlmsg_perm { i16 85, i32 4194304 }, %struct.nlmsg_perm { i16 86, i32 2097152 }, %struct.nlmsg_perm { i16 88, i32 4194304 }, %struct.nlmsg_perm { i16 89, i32 2097152 }, %struct.nlmsg_perm { i16 90, i32 2097152 }, %struct.nlmsg_perm { i16 92, i32 2097152 }, %struct.nlmsg_perm { i16 94, i32 2097152 }, %struct.nlmsg_perm { i16 95, i32 4194304 }, %struct.nlmsg_perm { i16 96, i32 2097152 }, %struct.nlmsg_perm { i16 100, i32 4194304 }, %struct.nlmsg_perm { i16 101, i32 4194304 }, %struct.nlmsg_perm { i16 102, i32 2097152 }, %struct.nlmsg_perm { i16 104, i32 4194304 }, %struct.nlmsg_perm { i16 105, i32 4194304 }, %struct.nlmsg_perm { i16 106, i32 2097152 }, %struct.nlmsg_perm { i16 108, i32 4194304 }, %struct.nlmsg_perm { i16 109, i32 4194304 }, %struct.nlmsg_perm { i16 112, i32 4194304 }, %struct.nlmsg_perm { i16 113, i32 4194304 }, %struct.nlmsg_perm { i16 114, i32 2097152 }, %struct.nlmsg_perm { i16 116, i32 4194304 }, %struct.nlmsg_perm { i16 117, i32 4194304 }, %struct.nlmsg_perm { i16 118, i32 2097152 }, %struct.nlmsg_perm { i16 120, i32 4194304 }, %struct.nlmsg_perm { i16 121, i32 4194304 }, %struct.nlmsg_perm { i16 122, i32 2097152 }], align 16, !dbg !0
@nlmsg_tcpdiag_perms = internal constant [4 x %struct.nlmsg_perm] [%struct.nlmsg_perm { i16 18, i32 2097152 }, %struct.nlmsg_perm { i16 19, i32 2097152 }, %struct.nlmsg_perm { i16 20, i32 2097152 }, %struct.nlmsg_perm { i16 21, i32 4194304 }], align 16, !dbg !5
@nlmsg_xfrm_perms = internal constant [25 x %struct.nlmsg_perm] [%struct.nlmsg_perm { i16 16, i32 4194304 }, %struct.nlmsg_perm { i16 17, i32 4194304 }, %struct.nlmsg_perm { i16 18, i32 2097152 }, %struct.nlmsg_perm { i16 19, i32 4194304 }, %struct.nlmsg_perm { i16 20, i32 4194304 }, %struct.nlmsg_perm { i16 21, i32 2097152 }, %struct.nlmsg_perm { i16 22, i32 4194304 }, %struct.nlmsg_perm { i16 23, i32 4194304 }, %struct.nlmsg_perm { i16 24, i32 4194304 }, %struct.nlmsg_perm { i16 25, i32 4194304 }, %struct.nlmsg_perm { i16 26, i32 4194304 }, %struct.nlmsg_perm { i16 27, i32 4194304 }, %struct.nlmsg_perm { i16 28, i32 4194304 }, %struct.nlmsg_perm { i16 29, i32 4194304 }, %struct.nlmsg_perm { i16 30, i32 4194304 }, %struct.nlmsg_perm { i16 31, i32 2097152 }, %struct.nlmsg_perm { i16 32, i32 2097152 }, %struct.nlmsg_perm { i16 33, i32 4194304 }, %struct.nlmsg_perm { i16 34, i32 2097152 }, %struct.nlmsg_perm { i16 35, i32 2097152 }, %struct.nlmsg_perm { i16 36, i32 4194304 }, %struct.nlmsg_perm { i16 37, i32 2097152 }, %struct.nlmsg_perm { i16 38, i32 2097152 }, %struct.nlmsg_perm { i16 39, i32 4194304 }, %struct.nlmsg_perm { i16 40, i32 2097152 }], align 16, !dbg !23
@nlmsg_audit_perms = internal constant [16 x %struct.nlmsg_perm] [%struct.nlmsg_perm { i16 1000, i32 2097152 }, %struct.nlmsg_perm { i16 1001, i32 4194304 }, %struct.nlmsg_perm { i16 1002, i32 16777216 }, %struct.nlmsg_perm { i16 1003, i32 4194304 }, %struct.nlmsg_perm { i16 1004, i32 4194304 }, %struct.nlmsg_perm { i16 1013, i32 16777216 }, %struct.nlmsg_perm { i16 1011, i32 4194304 }, %struct.nlmsg_perm { i16 1012, i32 4194304 }, %struct.nlmsg_perm { i16 1005, i32 8388608 }, %struct.nlmsg_perm { i16 1010, i32 2097152 }, %struct.nlmsg_perm { i16 1014, i32 4194304 }, %struct.nlmsg_perm { i16 1015, i32 4194304 }, %struct.nlmsg_perm { i16 1016, i32 2097152 }, %struct.nlmsg_perm { i16 1017, i32 33554432 }, %struct.nlmsg_perm { i16 1019, i32 2097152 }, %struct.nlmsg_perm { i16 1018, i32 4194304 }], align 16, !dbg !28

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @selinux_nlmsg_lookup(i16 noundef zeroext %sclass, i16 noundef zeroext %nlmsg_type, ptr noundef %perm) #0 align 16 !dbg !45 {
entry:
  %sclass.addr = alloca i16, align 2
  %nlmsg_type.addr = alloca i16, align 2
  %perm.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store i16 %sclass, ptr %sclass.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %sclass.addr, metadata !51, metadata !DIExpression()), !dbg !55
  store i16 %nlmsg_type, ptr %nlmsg_type.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nlmsg_type.addr, metadata !52, metadata !DIExpression()), !dbg !56
  store ptr %perm, ptr %perm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %perm.addr, metadata !53, metadata !DIExpression()), !dbg !57
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #3, !dbg !58
  call void @llvm.dbg.declare(metadata ptr %err, metadata !54, metadata !DIExpression()), !dbg !59
  store i32 0, ptr %err, align 4, !dbg !59
  %0 = load i16, ptr %sclass.addr, align 2, !dbg !60
  %conv = zext i16 %0 to i32, !dbg !60
  switch i32 %conv, label %sw.default [
    i32 31, label %sw.bb
    i32 32, label %sw.bb1
    i32 34, label %sw.bb3
    i32 37, label %sw.bb8
  ], !dbg !61

sw.bb:                                            ; preds = %entry
  br label %do.body, !dbg !62

do.body:                                          ; preds = %sw.bb
  br label %do.cond, !dbg !64

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !64

do.end:                                           ; preds = %do.cond
  %1 = load i16, ptr %nlmsg_type.addr, align 2, !dbg !66
  %2 = load ptr, ptr %perm.addr, align 8, !dbg !67
  %call = call i32 @nlmsg_perm(i16 noundef zeroext %1, ptr noundef %2, ptr noundef @nlmsg_route_perms, i64 noundef 544) #4, !dbg !68
  store i32 %call, ptr %err, align 4, !dbg !69
  br label %sw.epilog, !dbg !70

sw.bb1:                                           ; preds = %entry
  %3 = load i16, ptr %nlmsg_type.addr, align 2, !dbg !71
  %4 = load ptr, ptr %perm.addr, align 8, !dbg !72
  %call2 = call i32 @nlmsg_perm(i16 noundef zeroext %3, ptr noundef %4, ptr noundef @nlmsg_tcpdiag_perms, i64 noundef 32) #4, !dbg !73
  store i32 %call2, ptr %err, align 4, !dbg !74
  br label %sw.epilog, !dbg !75

sw.bb3:                                           ; preds = %entry
  br label %do.body4, !dbg !76

do.body4:                                         ; preds = %sw.bb3
  br label %do.cond5, !dbg !77

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !77

do.end6:                                          ; preds = %do.cond5
  %5 = load i16, ptr %nlmsg_type.addr, align 2, !dbg !79
  %6 = load ptr, ptr %perm.addr, align 8, !dbg !80
  %call7 = call i32 @nlmsg_perm(i16 noundef zeroext %5, ptr noundef %6, ptr noundef @nlmsg_xfrm_perms, i64 noundef 200) #4, !dbg !81
  store i32 %call7, ptr %err, align 4, !dbg !82
  br label %sw.epilog, !dbg !83

sw.bb8:                                           ; preds = %entry
  %7 = load i16, ptr %nlmsg_type.addr, align 2, !dbg !84
  %conv9 = zext i16 %7 to i32, !dbg !84
  %cmp = icmp sge i32 %conv9, 1100, !dbg !86
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !87

land.lhs.true:                                    ; preds = %sw.bb8
  %8 = load i16, ptr %nlmsg_type.addr, align 2, !dbg !88
  %conv11 = zext i16 %8 to i32, !dbg !88
  %cmp12 = icmp sle i32 %conv11, 1199, !dbg !89
  br i1 %cmp12, label %if.then, label %lor.lhs.false, !dbg !90

lor.lhs.false:                                    ; preds = %land.lhs.true, %sw.bb8
  %9 = load i16, ptr %nlmsg_type.addr, align 2, !dbg !91
  %conv14 = zext i16 %9 to i32, !dbg !91
  %cmp15 = icmp sge i32 %conv14, 2100, !dbg !92
  br i1 %cmp15, label %land.lhs.true17, label %if.else, !dbg !93

land.lhs.true17:                                  ; preds = %lor.lhs.false
  %10 = load i16, ptr %nlmsg_type.addr, align 2, !dbg !94
  %conv18 = zext i16 %10 to i32, !dbg !94
  %cmp19 = icmp sle i32 %conv18, 2999, !dbg !95
  br i1 %cmp19, label %if.then, label %if.else, !dbg !96

if.then:                                          ; preds = %land.lhs.true17, %land.lhs.true
  %11 = load ptr, ptr %perm.addr, align 8, !dbg !97
  store i32 8388608, ptr %11, align 4, !dbg !99
  br label %if.end, !dbg !100

if.else:                                          ; preds = %land.lhs.true17, %lor.lhs.false
  %12 = load i16, ptr %nlmsg_type.addr, align 2, !dbg !101
  %13 = load ptr, ptr %perm.addr, align 8, !dbg !103
  %call21 = call i32 @nlmsg_perm(i16 noundef zeroext %12, ptr noundef %13, ptr noundef @nlmsg_audit_perms, i64 noundef 128) #4, !dbg !104
  store i32 %call21, ptr %err, align 4, !dbg !105
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog, !dbg !106

sw.default:                                       ; preds = %entry
  store i32 -2, ptr %err, align 4, !dbg !107
  br label %sw.epilog, !dbg !108

sw.epilog:                                        ; preds = %sw.default, %if.end, %do.end6, %sw.bb1, %do.end
  %14 = load i32, ptr %err, align 4, !dbg !109
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #3, !dbg !110
  ret i32 %14, !dbg !111
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nlmsg_perm(i16 noundef zeroext %nlmsg_type, ptr noundef %perm, ptr noundef %tab, i64 noundef %tabsize) #0 align 16 !dbg !112 {
entry:
  %nlmsg_type.addr = alloca i16, align 2
  %perm.addr = alloca ptr, align 8
  %tab.addr = alloca ptr, align 8
  %tabsize.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  store i16 %nlmsg_type, ptr %nlmsg_type.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %nlmsg_type.addr, metadata !123, metadata !DIExpression()), !dbg !129
  store ptr %perm, ptr %perm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %perm.addr, metadata !124, metadata !DIExpression()), !dbg !130
  store ptr %tab, ptr %tab.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tab.addr, metadata !125, metadata !DIExpression()), !dbg !131
  store i64 %tabsize, ptr %tabsize.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tabsize.addr, metadata !126, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3, !dbg !133
  call void @llvm.dbg.declare(metadata ptr %i, metadata !127, metadata !DIExpression()), !dbg !134
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #3, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %err, metadata !128, metadata !DIExpression()), !dbg !136
  store i32 -22, ptr %err, align 4, !dbg !136
  store i32 0, ptr %i, align 4, !dbg !137
  br label %for.cond, !dbg !139

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !140
  %conv = zext i32 %0 to i64, !dbg !140
  %1 = load i64, ptr %tabsize.addr, align 8, !dbg !142
  %div = udiv i64 %1, 8, !dbg !143
  %cmp = icmp ult i64 %conv, %div, !dbg !144
  br i1 %cmp, label %for.body, label %for.end, !dbg !145

for.body:                                         ; preds = %for.cond
  %2 = load i16, ptr %nlmsg_type.addr, align 2, !dbg !146
  %conv2 = zext i16 %2 to i32, !dbg !146
  %3 = load ptr, ptr %tab.addr, align 8, !dbg !148
  %4 = load i32, ptr %i, align 4, !dbg !149
  %idxprom = zext i32 %4 to i64, !dbg !148
  %arrayidx = getelementptr %struct.nlmsg_perm, ptr %3, i64 %idxprom, !dbg !148
  %nlmsg_type3 = getelementptr inbounds %struct.nlmsg_perm, ptr %arrayidx, i32 0, i32 0, !dbg !150
  %5 = load i16, ptr %nlmsg_type3, align 4, !dbg !150
  %conv4 = zext i16 %5 to i32, !dbg !148
  %cmp5 = icmp eq i32 %conv2, %conv4, !dbg !151
  br i1 %cmp5, label %if.then, label %if.end, !dbg !152

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %tab.addr, align 8, !dbg !153
  %7 = load i32, ptr %i, align 4, !dbg !155
  %idxprom7 = zext i32 %7 to i64, !dbg !153
  %arrayidx8 = getelementptr %struct.nlmsg_perm, ptr %6, i64 %idxprom7, !dbg !153
  %perm9 = getelementptr inbounds %struct.nlmsg_perm, ptr %arrayidx8, i32 0, i32 1, !dbg !156
  %8 = load i32, ptr %perm9, align 4, !dbg !156
  %9 = load ptr, ptr %perm.addr, align 8, !dbg !157
  store i32 %8, ptr %9, align 4, !dbg !158
  store i32 0, ptr %err, align 4, !dbg !159
  br label %for.end, !dbg !160

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !150

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %i, align 4, !dbg !161
  %inc = add i32 %10, 1, !dbg !161
  store i32 %inc, ptr %i, align 4, !dbg !161
  br label %for.cond, !dbg !162, !llvm.loop !163

for.end:                                          ; preds = %if.then, %for.cond
  %11 = load i32, ptr %err, align 4, !dbg !167
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #3, !dbg !168
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3, !dbg !168
  ret i32 %11, !dbg !169
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nlmsg_route_perms", scope: !2, file: !3, line: 28, type: !33, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/selinux/.nlmsgtab.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -I ./security/selinux -I ./security/selinux/include -D KBUILD_MODFILE=\22security/selinux/selinux\22 -D KBUILD_BASENAME=\22nlmsgtab\22 -D KBUILD_MODNAME=\22selinux\22 -D __KBUILD_MODNAME=kmod_selinux -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/selinux/nlmsgtab.ll security/selinux/nlmsgtab.c", runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "security/selinux/nlmsgtab.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c07c2719b4b6b915375cd479f870754f")
!4 = !{!0, !5, !23, !28}
!5 = !DIGlobalVariableExpression(var: !6, expr: !DIExpression())
!6 = distinct !DIGlobalVariable(name: "nlmsg_tcpdiag_perms", scope: !2, file: !3, line: 99, type: !7, isLocal: true, isDefinition: true)
!7 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !21)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlmsg_perm", file: !3, line: 23, size: 64, elements: !10)
!10 = !{!11, !17}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "nlmsg_type", scope: !9, file: !3, line: 24, baseType: !12, size: 16)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !13, line: 19, baseType: !14)
!13 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !15, line: 24, baseType: !16)
!15 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!16 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !9, file: !3, line: 25, baseType: !18, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !13, line: 21, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !15, line: 27, baseType: !20)
!20 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!21 = !{!22}
!22 = !DISubrange(count: 4)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "nlmsg_xfrm_perms", scope: !2, file: !3, line: 106, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1600, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 25)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "nlmsg_audit_perms", scope: !2, file: !3, line: 134, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 1024, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 16)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 4352, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 68)
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 8, !"cf-protection-branch", i32 1}
!40 = !{i32 4, !"function_return_thunk_extern", i32 1}
!41 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!42 = !{i32 1, !"Code Model", i32 2}
!43 = !{i32 1, !"override-stack-alignment", i32 8}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = distinct !DISubprogram(name: "selinux_nlmsg_lookup", scope: !3, file: !3, line: 169, type: !46, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !50)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !12, !12, !49}
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!50 = !{!51, !52, !53, !54}
!51 = !DILocalVariable(name: "sclass", arg: 1, scope: !45, file: !3, line: 169, type: !12)
!52 = !DILocalVariable(name: "nlmsg_type", arg: 2, scope: !45, file: !3, line: 169, type: !12)
!53 = !DILocalVariable(name: "perm", arg: 3, scope: !45, file: !3, line: 169, type: !49)
!54 = !DILocalVariable(name: "err", scope: !45, file: !3, line: 171, type: !48)
!55 = !DILocation(line: 169, column: 30, scope: !45)
!56 = !DILocation(line: 169, column: 42, scope: !45)
!57 = !DILocation(line: 169, column: 59, scope: !45)
!58 = !DILocation(line: 171, column: 2, scope: !45)
!59 = !DILocation(line: 171, column: 6, scope: !45)
!60 = !DILocation(line: 173, column: 10, scope: !45)
!61 = !DILocation(line: 173, column: 2, scope: !45)
!62 = !DILocation(line: 180, column: 3, scope: !63)
!63 = distinct !DILexicalBlock(scope: !45, file: !3, line: 173, column: 18)
!64 = !DILocation(line: 180, column: 3, scope: !65)
!65 = distinct !DILexicalBlock(scope: !63, file: !3, line: 180, column: 3)
!66 = !DILocation(line: 181, column: 20, scope: !63)
!67 = !DILocation(line: 181, column: 32, scope: !63)
!68 = !DILocation(line: 181, column: 9, scope: !63)
!69 = !DILocation(line: 181, column: 7, scope: !63)
!70 = !DILocation(line: 183, column: 3, scope: !63)
!71 = !DILocation(line: 186, column: 20, scope: !63)
!72 = !DILocation(line: 186, column: 32, scope: !63)
!73 = !DILocation(line: 186, column: 9, scope: !63)
!74 = !DILocation(line: 186, column: 7, scope: !63)
!75 = !DILocation(line: 188, column: 3, scope: !63)
!76 = !DILocation(line: 195, column: 3, scope: !63)
!77 = !DILocation(line: 195, column: 3, scope: !78)
!78 = distinct !DILexicalBlock(scope: !63, file: !3, line: 195, column: 3)
!79 = !DILocation(line: 196, column: 20, scope: !63)
!80 = !DILocation(line: 196, column: 32, scope: !63)
!81 = !DILocation(line: 196, column: 9, scope: !63)
!82 = !DILocation(line: 196, column: 7, scope: !63)
!83 = !DILocation(line: 198, column: 3, scope: !63)
!84 = !DILocation(line: 201, column: 8, scope: !85)
!85 = distinct !DILexicalBlock(scope: !63, file: !3, line: 201, column: 7)
!86 = !DILocation(line: 201, column: 19, scope: !85)
!87 = !DILocation(line: 201, column: 43, scope: !85)
!88 = !DILocation(line: 202, column: 8, scope: !85)
!89 = !DILocation(line: 202, column: 19, scope: !85)
!90 = !DILocation(line: 202, column: 43, scope: !85)
!91 = !DILocation(line: 203, column: 8, scope: !85)
!92 = !DILocation(line: 203, column: 19, scope: !85)
!93 = !DILocation(line: 203, column: 44, scope: !85)
!94 = !DILocation(line: 204, column: 8, scope: !85)
!95 = !DILocation(line: 204, column: 19, scope: !85)
!96 = !DILocation(line: 201, column: 7, scope: !63)
!97 = !DILocation(line: 205, column: 5, scope: !98)
!98 = distinct !DILexicalBlock(scope: !85, file: !3, line: 204, column: 45)
!99 = !DILocation(line: 205, column: 10, scope: !98)
!100 = !DILocation(line: 206, column: 3, scope: !98)
!101 = !DILocation(line: 207, column: 21, scope: !102)
!102 = distinct !DILexicalBlock(scope: !85, file: !3, line: 206, column: 10)
!103 = !DILocation(line: 207, column: 33, scope: !102)
!104 = !DILocation(line: 207, column: 10, scope: !102)
!105 = !DILocation(line: 207, column: 8, scope: !102)
!106 = !DILocation(line: 210, column: 3, scope: !63)
!107 = !DILocation(line: 214, column: 7, scope: !63)
!108 = !DILocation(line: 215, column: 3, scope: !63)
!109 = !DILocation(line: 218, column: 9, scope: !45)
!110 = !DILocation(line: 219, column: 1, scope: !45)
!111 = !DILocation(line: 218, column: 2, scope: !45)
!112 = distinct !DISubprogram(name: "nlmsg_perm", scope: !3, file: !3, line: 154, type: !113, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !122)
!113 = !DISubroutineType(types: !114)
!114 = !{!48, !12, !49, !115, !116}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 61, baseType: !118)
!117 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !119, line: 72, baseType: !120)
!119 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !119, line: 16, baseType: !121)
!121 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!122 = !{!123, !124, !125, !126, !127, !128}
!123 = !DILocalVariable(name: "nlmsg_type", arg: 1, scope: !112, file: !3, line: 154, type: !12)
!124 = !DILocalVariable(name: "perm", arg: 2, scope: !112, file: !3, line: 154, type: !49)
!125 = !DILocalVariable(name: "tab", arg: 3, scope: !112, file: !3, line: 154, type: !115)
!126 = !DILocalVariable(name: "tabsize", arg: 4, scope: !112, file: !3, line: 154, type: !116)
!127 = !DILocalVariable(name: "i", scope: !112, file: !3, line: 156, type: !20)
!128 = !DILocalVariable(name: "err", scope: !112, file: !3, line: 157, type: !48)
!129 = !DILocation(line: 154, column: 27, scope: !112)
!130 = !DILocation(line: 154, column: 44, scope: !112)
!131 = !DILocation(line: 154, column: 75, scope: !112)
!132 = !DILocation(line: 154, column: 87, scope: !112)
!133 = !DILocation(line: 156, column: 2, scope: !112)
!134 = !DILocation(line: 156, column: 15, scope: !112)
!135 = !DILocation(line: 157, column: 2, scope: !112)
!136 = !DILocation(line: 157, column: 6, scope: !112)
!137 = !DILocation(line: 159, column: 9, scope: !138)
!138 = distinct !DILexicalBlock(scope: !112, file: !3, line: 159, column: 2)
!139 = !DILocation(line: 159, column: 7, scope: !138)
!140 = !DILocation(line: 159, column: 14, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !3, line: 159, column: 2)
!142 = !DILocation(line: 159, column: 18, scope: !141)
!143 = !DILocation(line: 159, column: 25, scope: !141)
!144 = !DILocation(line: 159, column: 16, scope: !141)
!145 = !DILocation(line: 159, column: 2, scope: !138)
!146 = !DILocation(line: 160, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !141, file: !3, line: 160, column: 7)
!148 = !DILocation(line: 160, column: 21, scope: !147)
!149 = !DILocation(line: 160, column: 25, scope: !147)
!150 = !DILocation(line: 160, column: 28, scope: !147)
!151 = !DILocation(line: 160, column: 18, scope: !147)
!152 = !DILocation(line: 160, column: 7, scope: !141)
!153 = !DILocation(line: 161, column: 12, scope: !154)
!154 = distinct !DILexicalBlock(scope: !147, file: !3, line: 160, column: 40)
!155 = !DILocation(line: 161, column: 16, scope: !154)
!156 = !DILocation(line: 161, column: 19, scope: !154)
!157 = !DILocation(line: 161, column: 5, scope: !154)
!158 = !DILocation(line: 161, column: 10, scope: !154)
!159 = !DILocation(line: 162, column: 8, scope: !154)
!160 = !DILocation(line: 163, column: 4, scope: !154)
!161 = !DILocation(line: 159, column: 54, scope: !141)
!162 = !DILocation(line: 159, column: 2, scope: !141)
!163 = distinct !{!163, !145, !164, !165, !166}
!164 = !DILocation(line: 164, column: 3, scope: !138)
!165 = !{!"llvm.loop.mustprogress"}
!166 = !{!"llvm.loop.unroll.disable"}
!167 = !DILocation(line: 166, column: 9, scope: !112)
!168 = !DILocation(line: 167, column: 1, scope: !112)
!169 = !DILocation(line: 166, column: 2, scope: !112)
