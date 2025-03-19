; ModuleID = 'kernel/printk/sysctl.c'
source_filename = "kernel/printk/sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"kernel\00", align 1, !dbg !0
@printk_sysctls = internal global [8 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.2, ptr @console_printk, i32 16, i16 420, i32 0, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.3, ptr getelementptr (i8, ptr @printk_ratelimit_state, i64 4), i32 4, i16 420, i32 0, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.4, ptr getelementptr (i8, ptr @printk_ratelimit_state, i64 8), i32 4, i16 420, i32 0, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.5, ptr @printk_delay_msec, i32 4, i16 420, i32 0, ptr @proc_dointvec_minmax, ptr null, ptr @sysctl_vals, ptr @ten_thousand }, %struct.ctl_table { ptr @.str.6, ptr @devkmsg_log_str, i32 10, i16 420, i32 0, ptr @devkmsg_sysctl_set_loglvl, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.7, ptr @dmesg_restrict, i32 4, i16 420, i32 0, ptr @proc_dointvec_minmax_sysadmin, ptr null, ptr @sysctl_vals, ptr getelementptr (i8, ptr @sysctl_vals, i64 4) }, %struct.ctl_table { ptr @.str.8, ptr @kptr_restrict, i32 4, i16 420, i32 0, ptr @proc_dointvec_minmax_sysadmin, ptr null, ptr @sysctl_vals, ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table zeroinitializer], align 16, !dbg !7
@.str.1 = private unnamed_addr constant [15 x i8] c"printk_sysctls\00", align 1, !dbg !109
@.str.2 = private unnamed_addr constant [7 x i8] c"printk\00", align 1, !dbg !114
@console_printk = external dso_local global [0 x i32], align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"printk_ratelimit\00", align 1, !dbg !116
@printk_ratelimit_state = external dso_local global %struct.ratelimit_state, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"printk_ratelimit_burst\00", align 1, !dbg !121
@.str.5 = private unnamed_addr constant [13 x i8] c"printk_delay\00", align 1, !dbg !126
@printk_delay_msec = external dso_local global i32, align 4
@sysctl_vals = external dso_local constant [0 x i32], align 4
@ten_thousand = internal constant i32 10000, align 4, !dbg !140
@.str.6 = private unnamed_addr constant [15 x i8] c"printk_devkmsg\00", align 1, !dbg !131
@devkmsg_log_str = external dso_local global [0 x i8], align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"dmesg_restrict\00", align 1, !dbg !133
@dmesg_restrict = external dso_local global i32, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"kptr_restrict\00", align 1, !dbg !135
@kptr_restrict = external dso_local global i32, align 4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @printk_sysctl_init() #0 section ".init.text" align 16 !dbg !155 {
entry:
  call void @__register_sysctl_init(ptr noundef @.str, ptr noundef @printk_sysctls, ptr noundef @.str.1, i64 noundef 8) #4, !dbg !158
  ret void, !dbg !159
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !160 dso_local void @__register_sysctl_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !163 dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @devkmsg_sysctl_set_loglvl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @proc_dointvec_minmax_sysadmin(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #2 align 16 !dbg !164 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %write.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  %ppos.addr = alloca ptr, align 8
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !166, metadata !DIExpression()), !dbg !171
  store i32 %write, ptr %write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !167, metadata !DIExpression()), !dbg !172
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !168, metadata !DIExpression()), !dbg !173
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lenp.addr, metadata !169, metadata !DIExpression()), !dbg !174
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !170, metadata !DIExpression()), !dbg !175
  %0 = load i32, ptr %write.addr, align 4, !dbg !176
  %tobool = icmp ne i32 %0, 0, !dbg !176
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !178

land.lhs.true:                                    ; preds = %entry
  %call = call zeroext i1 @capable(i32 noundef 21) #4, !dbg !179
  br i1 %call, label %if.end, label %if.then, !dbg !180

if.then:                                          ; preds = %land.lhs.true
  store i32 -1, ptr %retval, align 4, !dbg !181
  br label %return, !dbg !181

if.end:                                           ; preds = %land.lhs.true, %entry
  %1 = load ptr, ptr %table.addr, align 8, !dbg !182
  %2 = load i32, ptr %write.addr, align 4, !dbg !183
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !184
  %4 = load ptr, ptr %lenp.addr, align 8, !dbg !185
  %5 = load ptr, ptr %ppos.addr, align 8, !dbg !186
  %call1 = call i32 @proc_dointvec_minmax(ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #4, !dbg !187
  store i32 %call1, ptr %retval, align 4, !dbg !188
  br label %return, !dbg !188

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !189
  ret i32 %6, !dbg !189
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !190 dso_local zeroext i1 @capable(i32 noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/printk/sysctl.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e95e5376463a5c80679df2edb440f25f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 7)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "printk_sysctls", scope: !9, file: !2, line: 23, type: !143, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/printk/.sysctl.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/printk/printk_support\22 -D KBUILD_BASENAME=\22sysctl\22 -D KBUILD_MODNAME=\22printk_support\22 -D __KBUILD_MODNAME=kmod_printk_support -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/printk/sysctl.ll kernel/printk/sysctl.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !107, globals: !108, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !13, file: !12, line: 147, baseType: !103, size: 32, elements: !104)
!12 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !12, line: 135, size: 512, elements: !14)
!14 = !{!15, !18, !20, !22, !26, !27, !43, !101, !102}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !13, file: !12, line: 136, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !13, file: !12, line: 137, baseType: !19, size: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !13, file: !12, line: 138, baseType: !21, size: 32, offset: 128)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !13, file: !12, line: 139, baseType: !23, size: 16, offset: 160)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !24, line: 24, baseType: !25)
!24 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!25 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 150, baseType: !11, size: 32, offset: 192)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !13, file: !12, line: 151, baseType: !28, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !12, line: 64, baseType: !30)
!30 = !DISubroutineType(types: !31)
!31 = !{!21, !32, !21, !19, !33, !39}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !24, line: 61, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !36, line: 72, baseType: !37)
!36 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !36, line: 16, baseType: !38)
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !24, line: 52, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !36, line: 88, baseType: !42)
!42 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !13, file: !12, line: 152, baseType: !44, size: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !12, line: 117, size: 256, elements: !46)
!46 = !{!47, !52}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !45, file: !12, line: 118, baseType: !48, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !24, line: 174, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !24, line: 172, size: 32, elements: !50)
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !49, file: !24, line: 173, baseType: !21, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !45, file: !12, line: 119, baseType: !53, size: 192, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !54, line: 41, baseType: !55)
!54 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !54, line: 37, size: 192, elements: !56)
!56 = !{!57, !95}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !55, file: !54, line: 38, baseType: !58, size: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !59, line: 29, baseType: !60)
!59 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !59, line: 17, size: 32, elements: !61)
!61 = !{!62}
!62 = !DIDerivedType(tag: DW_TAG_member, scope: !60, file: !59, line: 18, baseType: !63, size: 32)
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !59, line: 18, size: 32, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !63, file: !59, line: 19, baseType: !66, size: 32)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !67, line: 14, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !66, file: !67, line: 15, baseType: !70, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !71, line: 44, baseType: !72)
!71 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !71, line: 14, size: 32, elements: !73)
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, scope: !72, file: !71, line: 15, baseType: !75, size: 32)
!75 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !72, file: !71, line: 15, size: 32, elements: !76)
!76 = !{!77, !78, !88}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !75, file: !71, line: 16, baseType: !48, size: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !75, file: !71, line: 24, baseType: !79, size: 16)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !75, file: !71, line: 24, size: 16, elements: !80)
!80 = !{!81, !87}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !79, file: !71, line: 25, baseType: !82, size: 8)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !83, line: 17, baseType: !84)
!83 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !85, line: 21, baseType: !86)
!85 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!86 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !79, file: !71, line: 26, baseType: !82, size: 8, offset: 8)
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !75, file: !71, line: 28, baseType: !89, size: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !75, file: !71, line: 28, size: 32, elements: !90)
!90 = !{!91, !94}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !89, file: !71, line: 29, baseType: !92, size: 16)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !83, line: 19, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !85, line: 24, baseType: !25)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !89, file: !71, line: 30, baseType: !92, size: 16, offset: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !55, file: !54, line: 39, baseType: !96, size: 128, offset: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !24, line: 190, size: 128, elements: !97)
!97 = !{!98, !100}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !96, file: !24, line: 191, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !96, file: !24, line: 191, baseType: !99, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !13, file: !12, line: 153, baseType: !19, size: 64, offset: 384)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !13, file: !12, line: 154, baseType: !19, size: 64, offset: 448)
!103 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!106 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!107 = !{!21, !19}
!108 = !{!0, !109, !114, !116, !121, !126, !131, !133, !135, !7, !140}
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 15)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !2, line: 25, type: !3, isLocal: true, isDefinition: true)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 32, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 17)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 39, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 23)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 46, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 13)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !111, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !111, isLocal: true, isDefinition: true)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 14)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "ten_thousand", scope: !9, file: !2, line: 12, type: !142, isLocal: true, isDefinition: true)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 4096, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 8)
!146 = !{i32 7, !"Dwarf Version", i32 5}
!147 = !{i32 2, !"Debug Info Version", i32 3}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 8, !"cf-protection-branch", i32 1}
!150 = !{i32 4, !"function_return_thunk_extern", i32 1}
!151 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!152 = !{i32 1, !"Code Model", i32 2}
!153 = !{i32 1, !"override-stack-alignment", i32 8}
!154 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!155 = distinct !DISubprogram(name: "printk_sysctl_init", scope: !2, file: !2, line: 82, type: !156, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!156 = !DISubroutineType(types: !157)
!157 = !{null}
!158 = !DILocation(line: 84, column: 2, scope: !155)
!159 = !DILocation(line: 85, column: 1, scope: !155)
!160 = !DISubprogram(name: "__register_sysctl_init", scope: !12, file: !12, line: 237, type: !161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!161 = !DISubroutineType(types: !162)
!162 = !{null, !16, !32, !16, !34}
!163 = !DISubprogram(name: "proc_dointvec_minmax", scope: !12, file: !12, line: 72, type: !30, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!164 = distinct !DISubprogram(name: "proc_dointvec_minmax_sysadmin", scope: !2, file: !2, line: 14, type: !30, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !165)
!165 = !{!166, !167, !168, !169, !170}
!166 = !DILocalVariable(name: "table", arg: 1, scope: !164, file: !2, line: 14, type: !32)
!167 = !DILocalVariable(name: "write", arg: 2, scope: !164, file: !2, line: 14, type: !21)
!168 = !DILocalVariable(name: "buffer", arg: 3, scope: !164, file: !2, line: 15, type: !19)
!169 = !DILocalVariable(name: "lenp", arg: 4, scope: !164, file: !2, line: 15, type: !33)
!170 = !DILocalVariable(name: "ppos", arg: 5, scope: !164, file: !2, line: 15, type: !39)
!171 = !DILocation(line: 14, column: 60, scope: !164)
!172 = !DILocation(line: 14, column: 71, scope: !164)
!173 = !DILocation(line: 15, column: 11, scope: !164)
!174 = !DILocation(line: 15, column: 27, scope: !164)
!175 = !DILocation(line: 15, column: 41, scope: !164)
!176 = !DILocation(line: 17, column: 6, scope: !177)
!177 = distinct !DILexicalBlock(scope: !164, file: !2, line: 17, column: 6)
!178 = !DILocation(line: 17, column: 12, scope: !177)
!179 = !DILocation(line: 17, column: 16, scope: !177)
!180 = !DILocation(line: 17, column: 6, scope: !164)
!181 = !DILocation(line: 18, column: 3, scope: !177)
!182 = !DILocation(line: 20, column: 30, scope: !164)
!183 = !DILocation(line: 20, column: 37, scope: !164)
!184 = !DILocation(line: 20, column: 44, scope: !164)
!185 = !DILocation(line: 20, column: 52, scope: !164)
!186 = !DILocation(line: 20, column: 58, scope: !164)
!187 = !DILocation(line: 20, column: 9, scope: !164)
!188 = !DILocation(line: 20, column: 2, scope: !164)
!189 = !DILocation(line: 21, column: 1, scope: !164)
!190 = !DISubprogram(name: "capable", scope: !191, file: !191, line: 148, type: !192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!191 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !21}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !24, line: 35, baseType: !195)
!195 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
