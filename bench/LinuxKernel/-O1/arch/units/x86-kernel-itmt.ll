; ModuleID = 'arch/x86/kernel/itmt.c'
source_filename = "arch/x86/kernel/itmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ctl_table = type { ptr, ptr, i32, i16, i32, ptr, ptr, ptr, ptr }

@itmt_update_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @itmt_update_mutex, i64 16), ptr getelementptr (i8, ptr @itmt_update_mutex, i64 16) } }, align 8, !dbg !0
@sched_itmt_capable = internal global i8 0, section ".data..read_mostly", align 1, !dbg !117
@.str = private unnamed_addr constant [7 x i8] c"kernel\00", align 1, !dbg !110
@itmt_kern_table = internal global [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.1, ptr @sysctl_sched_itmt_enabled, i32 4, i16 420, i32 0, ptr @sched_itmt_update_handler, ptr null, ptr @sysctl_vals, ptr getelementptr (i8, ptr @sysctl_vals, i64 4) }, %struct.ctl_table zeroinitializer], align 16, !dbg !240
@itmt_sysctl_header = internal global ptr null, align 8, !dbg !123
@sysctl_sched_itmt_enabled = hidden global i32 0, section ".data..read_mostly", align 4, !dbg !121
@x86_topology_update = external dso_local global i8, align 1
@sched_core_priority = hidden global i32 0, section ".data..percpu..read_mostly", align 4, !dbg !115
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str.1 = private unnamed_addr constant [19 x i8] c"sched_itmt_enabled\00", align 1, !dbg !235
@sysctl_vals = external dso_local constant [0 x i32], align 4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sched_set_itmt_support() #0 align 16 !dbg !273 {
entry:
  %retval = alloca i32, align 4
  call void @mutex_lock(ptr noundef @itmt_update_mutex) #4, !dbg !276
  %0 = load i8, ptr @sched_itmt_capable, align 1, !dbg !277, !range !279, !noundef !280
  %tobool = trunc i8 %0 to i1, !dbg !277
  br i1 %tobool, label %if.then, label %if.end, !dbg !281

if.then:                                          ; preds = %entry
  call void @mutex_unlock(ptr noundef @itmt_update_mutex) #4, !dbg !282
  store i32 0, ptr %retval, align 4, !dbg !284
  br label %return, !dbg !284

if.end:                                           ; preds = %entry
  %call = call ptr @register_sysctl_sz(ptr noundef @.str, ptr noundef @itmt_kern_table, i64 noundef 2) #4, !dbg !285
  store ptr %call, ptr @itmt_sysctl_header, align 8, !dbg !286
  %1 = load ptr, ptr @itmt_sysctl_header, align 8, !dbg !287
  %tobool1 = icmp ne ptr %1, null, !dbg !287
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !289

if.then2:                                         ; preds = %if.end
  call void @mutex_unlock(ptr noundef @itmt_update_mutex) #4, !dbg !290
  store i32 -12, ptr %retval, align 4, !dbg !292
  br label %return, !dbg !292

if.end3:                                          ; preds = %if.end
  store i8 1, ptr @sched_itmt_capable, align 1, !dbg !293
  store i32 1, ptr @sysctl_sched_itmt_enabled, align 4, !dbg !294
  store i8 1, ptr @x86_topology_update, align 1, !dbg !295
  call void @rebuild_sched_domains() #4, !dbg !296
  call void @mutex_unlock(ptr noundef @itmt_update_mutex) #4, !dbg !297
  store i32 0, ptr %retval, align 4, !dbg !298
  br label %return, !dbg !298

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !299
  ret i32 %2, !dbg !299
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !300 dso_local void @mutex_lock(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !304 dso_local void @mutex_unlock(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !305 dso_local ptr @register_sysctl_sz(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !308 dso_local void @rebuild_sched_domains() #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sched_clear_itmt_support() #0 align 16 !dbg !312 {
entry:
  call void @mutex_lock(ptr noundef @itmt_update_mutex) #4, !dbg !313
  %0 = load i8, ptr @sched_itmt_capable, align 1, !dbg !314, !range !279, !noundef !280
  %tobool = trunc i8 %0 to i1, !dbg !314
  br i1 %tobool, label %if.end, label %if.then, !dbg !316

if.then:                                          ; preds = %entry
  call void @mutex_unlock(ptr noundef @itmt_update_mutex) #4, !dbg !317
  br label %return, !dbg !319

if.end:                                           ; preds = %entry
  store i8 0, ptr @sched_itmt_capable, align 1, !dbg !320
  %1 = load ptr, ptr @itmt_sysctl_header, align 8, !dbg !321
  %tobool1 = icmp ne ptr %1, null, !dbg !321
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !323

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr @itmt_sysctl_header, align 8, !dbg !324
  call void @unregister_sysctl_table(ptr noundef %2) #4, !dbg !326
  store ptr null, ptr @itmt_sysctl_header, align 8, !dbg !327
  br label %if.end3, !dbg !328

if.end3:                                          ; preds = %if.then2, %if.end
  %3 = load i32, ptr @sysctl_sched_itmt_enabled, align 4, !dbg !329
  %tobool4 = icmp ne i32 %3, 0, !dbg !329
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !331

if.then5:                                         ; preds = %if.end3
  store i32 0, ptr @sysctl_sched_itmt_enabled, align 4, !dbg !332
  store i8 1, ptr @x86_topology_update, align 1, !dbg !334
  call void @rebuild_sched_domains() #4, !dbg !335
  br label %if.end6, !dbg !336

if.end6:                                          ; preds = %if.then5, %if.end3
  call void @mutex_unlock(ptr noundef @itmt_update_mutex) #4, !dbg !337
  br label %return, !dbg !338

return:                                           ; preds = %if.end6, %if.then
  ret void, !dbg !338
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !339 dso_local void @unregister_sysctl_table(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_asym_cpu_priority(i32 noundef %cpu) #0 align 16 !dbg !342 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !346, metadata !DIExpression()), !dbg !354
  br label %do.body, !dbg !355

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #5, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !347, metadata !DIExpression()), !dbg !356
  store ptr null, ptr %__vpp_verify, align 8, !dbg !356
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #5, !dbg !355
  br label %do.end, !dbg !356

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #5, !dbg !357
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !352, metadata !DIExpression()), !dbg !357
  store i64 ptrtoint (ptr @sched_core_priority to i64), ptr %__ptr, align 8, !dbg !357
  %1 = load i64, ptr %__ptr, align 8, !dbg !357
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !357
  %idxprom = sext i32 %2 to i64, !dbg !357
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !357
  %3 = load i64, ptr %arrayidx, align 8, !dbg !357
  %add = add i64 %1, %3, !dbg !357
  %4 = inttoptr i64 %add to ptr, !dbg !357
  store ptr %4, ptr %tmp1, align 8, !dbg !357
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #5, !dbg !355
  %5 = load ptr, ptr %tmp1, align 8, !dbg !357
  store ptr %5, ptr %tmp, align 8, !dbg !356
  %6 = load ptr, ptr %tmp, align 8, !dbg !355
  %7 = load i32, ptr %6, align 4, !dbg !358
  ret i32 %7, !dbg !359
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sched_set_itmt_core_prio(i32 noundef %prio, i32 noundef %cpu) #0 align 16 !dbg !360 {
entry:
  %prio.addr = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %prio, ptr %prio.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prio.addr, metadata !364, metadata !DIExpression()), !dbg !371
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !365, metadata !DIExpression()), !dbg !372
  %0 = load i32, ptr %prio.addr, align 4, !dbg !373
  br label %do.body, !dbg !374

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #5, !dbg !375
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !366, metadata !DIExpression()), !dbg !375
  store ptr null, ptr %__vpp_verify, align 8, !dbg !375
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !375
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #5, !dbg !374
  br label %do.end, !dbg !375

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #5, !dbg !376
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !369, metadata !DIExpression()), !dbg !376
  store i64 ptrtoint (ptr @sched_core_priority to i64), ptr %__ptr, align 8, !dbg !376
  %2 = load i64, ptr %__ptr, align 8, !dbg !376
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !376
  %idxprom = sext i32 %3 to i64, !dbg !376
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !376
  %4 = load i64, ptr %arrayidx, align 8, !dbg !376
  %add = add i64 %2, %4, !dbg !376
  %5 = inttoptr i64 %add to ptr, !dbg !376
  store ptr %5, ptr %tmp1, align 8, !dbg !376
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #5, !dbg !374
  %6 = load ptr, ptr %tmp1, align 8, !dbg !376
  store ptr %6, ptr %tmp, align 8, !dbg !375
  %7 = load ptr, ptr %tmp, align 8, !dbg !374
  store i32 %0, ptr %7, align 4, !dbg !377
  ret void, !dbg !378
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sched_itmt_update_handler(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 16 !dbg !379 {
entry:
  %retval = alloca i32, align 4
  %table.addr = alloca ptr, align 8
  %write.addr = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %lenp.addr = alloca ptr, align 8
  %ppos.addr = alloca ptr, align 8
  %old_sysctl = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %table, ptr %table.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %table.addr, metadata !381, metadata !DIExpression()), !dbg !388
  store i32 %write, ptr %write.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %write.addr, metadata !382, metadata !DIExpression()), !dbg !389
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !383, metadata !DIExpression()), !dbg !390
  store ptr %lenp, ptr %lenp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lenp.addr, metadata !384, metadata !DIExpression()), !dbg !391
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !385, metadata !DIExpression()), !dbg !392
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_sysctl) #5, !dbg !393
  call void @llvm.dbg.declare(metadata ptr %old_sysctl, metadata !386, metadata !DIExpression()), !dbg !394
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #5, !dbg !395
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !387, metadata !DIExpression()), !dbg !396
  call void @mutex_lock(ptr noundef @itmt_update_mutex) #4, !dbg !397
  %0 = load i8, ptr @sched_itmt_capable, align 1, !dbg !398, !range !279, !noundef !280
  %tobool = trunc i8 %0 to i1, !dbg !398
  br i1 %tobool, label %if.end, label %if.then, !dbg !400

if.then:                                          ; preds = %entry
  call void @mutex_unlock(ptr noundef @itmt_update_mutex) #4, !dbg !401
  store i32 -22, ptr %retval, align 4, !dbg !403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !403

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @sysctl_sched_itmt_enabled, align 4, !dbg !404
  store i32 %1, ptr %old_sysctl, align 4, !dbg !405
  %2 = load ptr, ptr %table.addr, align 8, !dbg !406
  %3 = load i32, ptr %write.addr, align 4, !dbg !407
  %4 = load ptr, ptr %buffer.addr, align 8, !dbg !408
  %5 = load ptr, ptr %lenp.addr, align 8, !dbg !409
  %6 = load ptr, ptr %ppos.addr, align 8, !dbg !410
  %call = call i32 @proc_dointvec_minmax(ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #4, !dbg !411
  store i32 %call, ptr %ret, align 4, !dbg !412
  %7 = load i32, ptr %ret, align 4, !dbg !413
  %tobool1 = icmp ne i32 %7, 0, !dbg !413
  br i1 %tobool1, label %if.end5, label %land.lhs.true, !dbg !415

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, ptr %write.addr, align 4, !dbg !416
  %tobool2 = icmp ne i32 %8, 0, !dbg !416
  br i1 %tobool2, label %land.lhs.true3, label %if.end5, !dbg !417

land.lhs.true3:                                   ; preds = %land.lhs.true
  %9 = load i32, ptr %old_sysctl, align 4, !dbg !418
  %10 = load i32, ptr @sysctl_sched_itmt_enabled, align 4, !dbg !419
  %cmp = icmp ne i32 %9, %10, !dbg !420
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !421

if.then4:                                         ; preds = %land.lhs.true3
  store i8 1, ptr @x86_topology_update, align 1, !dbg !422
  call void @rebuild_sched_domains() #4, !dbg !424
  br label %if.end5, !dbg !425

if.end5:                                          ; preds = %if.then4, %land.lhs.true3, %land.lhs.true, %if.end
  call void @mutex_unlock(ptr noundef @itmt_update_mutex) #4, !dbg !426
  %11 = load i32, ptr %ret, align 4, !dbg !427
  store i32 %11, ptr %retval, align 4, !dbg !428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !428

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #5, !dbg !429
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_sysctl) #5, !dbg !429
  %12 = load i32, ptr %retval, align 4, !dbg !429
  ret i32 %12, !dbg !429
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !430 dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270, !271}
!llvm.ident = !{!272}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "itmt_update_mutex", scope: !2, file: !3, line: 26, type: !245, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.itmt.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/itmt\22 -D KBUILD_BASENAME=\22itmt\22 -D KBUILD_MODNAME=\22itmt\22 -D __KBUILD_MODNAME=kmod_itmt -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/itmt.ll arch/x86/kernel/itmt.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !107, globals: !109, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/itmt.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c5a367f3aba99be2b8f3738d34b3471e")
!4 = !{!5, !102}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !7, file: !6, line: 147, baseType: !98, size: 32, elements: !99)
!6 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !6, line: 135, size: 512, elements: !8)
!8 = !{!9, !13, !15, !17, !21, !22, !38, !96, !97}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !7, file: !6, line: 136, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !6, line: 137, baseType: !14, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !7, file: !6, line: 138, baseType: !16, size: 32, offset: 128)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !7, file: !6, line: 139, baseType: !18, size: 16, offset: 160)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !19, line: 24, baseType: !20)
!19 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!20 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !6, line: 150, baseType: !5, size: 32, offset: 192)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !7, file: !6, line: 151, baseType: !23, size: 64, offset: 256)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !6, line: 64, baseType: !25)
!25 = !DISubroutineType(types: !26)
!26 = !{!16, !27, !16, !14, !28, !34}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 61, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !31, line: 72, baseType: !32)
!31 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !31, line: 16, baseType: !33)
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !19, line: 52, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !31, line: 88, baseType: !37)
!37 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !7, file: !6, line: 152, baseType: !39, size: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !6, line: 117, size: 256, elements: !41)
!41 = !{!42, !47}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !40, file: !6, line: 118, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !19, line: 174, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 172, size: 32, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !44, file: !19, line: 173, baseType: !16, size: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !40, file: !6, line: 119, baseType: !48, size: 192, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !49, line: 41, baseType: !50)
!49 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !49, line: 37, size: 192, elements: !51)
!51 = !{!52, !90}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !50, file: !49, line: 38, baseType: !53, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !54, line: 29, baseType: !55)
!54 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !54, line: 17, size: 32, elements: !56)
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, scope: !55, file: !54, line: 18, baseType: !58, size: 32)
!58 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !55, file: !54, line: 18, size: 32, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !58, file: !54, line: 19, baseType: !61, size: 32)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !62, line: 14, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !61, file: !62, line: 15, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !66, line: 44, baseType: !67)
!66 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !66, line: 14, size: 32, elements: !68)
!68 = !{!69}
!69 = !DIDerivedType(tag: DW_TAG_member, scope: !67, file: !66, line: 15, baseType: !70, size: 32)
!70 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !67, file: !66, line: 15, size: 32, elements: !71)
!71 = !{!72, !73, !83}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !70, file: !66, line: 16, baseType: !43, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !66, line: 24, baseType: !74, size: 16)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 24, size: 16, elements: !75)
!75 = !{!76, !82}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !74, file: !66, line: 25, baseType: !77, size: 8)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !78, line: 17, baseType: !79)
!78 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !80, line: 21, baseType: !81)
!80 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !74, file: !66, line: 26, baseType: !77, size: 8, offset: 8)
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !70, file: !66, line: 28, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !70, file: !66, line: 28, size: 32, elements: !85)
!85 = !{!86, !89}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !84, file: !66, line: 29, baseType: !87, size: 16)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !78, line: 19, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !80, line: 24, baseType: !20)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !84, file: !66, line: 30, baseType: !87, size: 16, offset: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !50, file: !49, line: 39, baseType: !91, size: 128, offset: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !19, line: 190, size: 128, elements: !92)
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !19, line: 191, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !91, file: !19, line: 191, baseType: !94, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !7, file: !6, line: 153, baseType: !14, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !7, file: !6, line: 154, baseType: !14, size: 64, offset: 448)
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !{!100, !101}
!100 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!101 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !103, line: 10, baseType: !98, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!104 = !{!105, !106}
!105 = !DIEnumerator(name: "false", value: 0)
!106 = !DIEnumerator(name: "true", value: 1)
!107 = !{!16, !108, !14, !33}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!109 = !{!110, !115, !117, !121, !123, !0, !235, !240}
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 56, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 7)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "sched_core_priority", scope: !2, file: !3, line: 27, type: !16, isLocal: false, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "sched_itmt_capable", scope: !2, file: !3, line: 30, type: !119, isLocal: true, isDefinition: true)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !19, line: 35, baseType: !120)
!120 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "sysctl_sched_itmt_enabled", scope: !2, file: !3, line: 39, type: !98, isLocal: false, isDefinition: true)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "itmt_sysctl_header", scope: !2, file: !3, line: 80, type: !125, isLocal: true, isDefinition: true)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !6, line: 173, size: 640, elements: !127)
!127 = !{!128, !148, !161, !162, !216, !217, !219, !225}
!128 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !6, line: 174, baseType: !129, size: 192)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !6, line: 174, size: 192, elements: !130)
!130 = !{!131, !139}
!131 = !DIDerivedType(tag: DW_TAG_member, scope: !129, file: !6, line: 175, baseType: !132, size: 192)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !129, file: !6, line: 175, size: 192, elements: !133)
!133 = !{!134, !135, !136, !137, !138}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !132, file: !6, line: 176, baseType: !27, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !132, file: !6, line: 177, baseType: !16, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !132, file: !6, line: 178, baseType: !16, size: 32, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !132, file: !6, line: 179, baseType: !16, size: 32, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !132, file: !6, line: 180, baseType: !16, size: 32, offset: 160)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !129, file: !6, line: 182, baseType: !140, size: 128, align: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !19, line: 232, size: 128, align: 64, elements: !141)
!141 = !{!142, !144}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !19, line: 233, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !140, file: !19, line: 234, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !143}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !126, file: !6, line: 184, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !151, line: 26, size: 256, elements: !152)
!151 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!152 = !{!153, !154}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !150, file: !151, line: 27, baseType: !98, size: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !150, file: !151, line: 28, baseType: !155, size: 192, offset: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !156, line: 43, size: 192, elements: !157)
!156 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!157 = !{!158, !160}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !155, file: !156, line: 44, baseType: !159, size: 32)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !62, line: 23, baseType: !61)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !155, file: !156, line: 45, baseType: !91, size: 128, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !126, file: !6, line: 185, baseType: !27, size: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !126, file: !6, line: 186, baseType: !163, size: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !6, line: 204, size: 960, elements: !165)
!165 = !{!166, !189, !193, !212}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !164, file: !6, line: 205, baseType: !167, size: 768)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !6, line: 199, size: 768, elements: !168)
!168 = !{!169, !174}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !167, file: !6, line: 200, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!16, !173}
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !167, file: !6, line: 201, baseType: !175, size: 704, offset: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !6, line: 193, size: 704, elements: !176)
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !175, file: !6, line: 195, baseType: !126, size: 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !175, file: !6, line: 196, baseType: !179, size: 64, offset: 640)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !180, line: 12, size: 64, elements: !181)
!180 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !179, file: !180, line: 13, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !180, line: 5, size: 192, align: 64, elements: !185)
!185 = !{!186, !187, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !184, file: !180, line: 6, baseType: !33, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !184, file: !180, line: 7, baseType: !183, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !184, file: !180, line: 8, baseType: !183, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !164, file: !6, line: 206, baseType: !190, size: 64, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!173, !163}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !164, file: !6, line: 207, baseType: !194, size: 64, offset: 832)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !125, !197, !205}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !199, line: 23, baseType: !200)
!199 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 21, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !200, file: !199, line: 22, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !19, line: 37, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !31, line: 49, baseType: !98)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !199, line: 28, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 26, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !207, file: !199, line: 27, baseType: !210, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !19, line: 38, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !31, line: 50, baseType: !98)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !164, file: !6, line: 209, baseType: !213, size: 64, offset: 896)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!16, !125, !27}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !126, file: !6, line: 187, baseType: !173, size: 64, offset: 384)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !126, file: !6, line: 188, baseType: !218, size: 64, offset: 448)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !126, file: !6, line: 189, baseType: !220, size: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !6, line: 157, size: 256, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !221, file: !6, line: 158, baseType: !184, size: 192, align: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !221, file: !6, line: 159, baseType: !125, size: 64, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !126, file: !6, line: 190, baseType: !226, size: 64, offset: 576)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !19, line: 194, size: 64, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !226, file: !19, line: 195, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !19, line: 198, size: 128, elements: !231)
!231 = !{!232, !233}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !19, line: 199, baseType: !229, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !230, file: !19, line: 199, baseType: !234, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !237, isLocal: true, isDefinition: true)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 152, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 19)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "itmt_kern_table", scope: !2, file: !3, line: 67, type: !242, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1024, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 2)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !246, line: 66, size: 256, elements: !247)
!246 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!247 = !{!248, !257, !258, !263}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !245, file: !246, line: 67, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !250, line: 13, baseType: !251)
!250 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !19, line: 181, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !19, line: 179, size: 64, elements: !253)
!253 = !{!254}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !252, file: !19, line: 180, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !78, line: 22, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !80, line: 30, baseType: !37)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !245, file: !246, line: 68, baseType: !159, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !245, file: !246, line: 70, baseType: !259, size: 32, offset: 96)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !260, line: 15, size: 32, elements: !261)
!260 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !259, file: !260, line: 20, baseType: !43, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !245, file: !246, line: 72, baseType: !91, size: 128, offset: 128)
!264 = !{i32 7, !"Dwarf Version", i32 5}
!265 = !{i32 2, !"Debug Info Version", i32 3}
!266 = !{i32 1, !"wchar_size", i32 2}
!267 = !{i32 8, !"cf-protection-branch", i32 1}
!268 = !{i32 4, !"function_return_thunk_extern", i32 1}
!269 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!270 = !{i32 1, !"Code Model", i32 2}
!271 = !{i32 1, !"override-stack-alignment", i32 8}
!272 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!273 = distinct !DISubprogram(name: "sched_set_itmt_support", scope: !3, file: !3, line: 99, type: !274, scopeLine: 100, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!274 = !DISubroutineType(types: !275)
!275 = !{!16}
!276 = !DILocation(line: 101, column: 2, scope: !273)
!277 = !DILocation(line: 103, column: 6, scope: !278)
!278 = distinct !DILexicalBlock(scope: !273, file: !3, line: 103, column: 6)
!279 = !{i8 0, i8 2}
!280 = !{}
!281 = !DILocation(line: 103, column: 6, scope: !273)
!282 = !DILocation(line: 104, column: 3, scope: !283)
!283 = distinct !DILexicalBlock(scope: !278, file: !3, line: 103, column: 26)
!284 = !DILocation(line: 105, column: 3, scope: !283)
!285 = !DILocation(line: 108, column: 23, scope: !273)
!286 = !DILocation(line: 108, column: 21, scope: !273)
!287 = !DILocation(line: 109, column: 7, scope: !288)
!288 = distinct !DILexicalBlock(scope: !273, file: !3, line: 109, column: 6)
!289 = !DILocation(line: 109, column: 6, scope: !273)
!290 = !DILocation(line: 110, column: 3, scope: !291)
!291 = distinct !DILexicalBlock(scope: !288, file: !3, line: 109, column: 27)
!292 = !DILocation(line: 111, column: 3, scope: !291)
!293 = !DILocation(line: 114, column: 21, scope: !273)
!294 = !DILocation(line: 116, column: 28, scope: !273)
!295 = !DILocation(line: 118, column: 22, scope: !273)
!296 = !DILocation(line: 119, column: 2, scope: !273)
!297 = !DILocation(line: 121, column: 2, scope: !273)
!298 = !DILocation(line: 123, column: 2, scope: !273)
!299 = !DILocation(line: 124, column: 1, scope: !273)
!300 = !DISubprogram(name: "mutex_lock", scope: !246, file: !246, line: 227, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!304 = !DISubprogram(name: "mutex_unlock", scope: !246, file: !246, line: 246, type: !301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!305 = !DISubprogram(name: "register_sysctl_sz", scope: !6, file: !6, line: 232, type: !306, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!306 = !DISubroutineType(types: !307)
!307 = !{!125, !10, !27, !29}
!308 = !DISubprogram(name: "rebuild_sched_domains", scope: !309, file: !309, line: 130, type: !310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!309 = !DIFile(filename: "./include/linux/cpuset.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dbb14f8bf906df867604f1de876655d4")
!310 = !DISubroutineType(types: !311)
!311 = !{null}
!312 = distinct !DISubprogram(name: "sched_clear_itmt_support", scope: !3, file: !3, line: 136, type: !310, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!313 = !DILocation(line: 138, column: 2, scope: !312)
!314 = !DILocation(line: 140, column: 7, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !3, line: 140, column: 6)
!316 = !DILocation(line: 140, column: 6, scope: !312)
!317 = !DILocation(line: 141, column: 3, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !3, line: 140, column: 27)
!319 = !DILocation(line: 142, column: 3, scope: !318)
!320 = !DILocation(line: 144, column: 21, scope: !312)
!321 = !DILocation(line: 146, column: 6, scope: !322)
!322 = distinct !DILexicalBlock(scope: !312, file: !3, line: 146, column: 6)
!323 = !DILocation(line: 146, column: 6, scope: !312)
!324 = !DILocation(line: 147, column: 27, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !3, line: 146, column: 26)
!326 = !DILocation(line: 147, column: 3, scope: !325)
!327 = !DILocation(line: 148, column: 22, scope: !325)
!328 = !DILocation(line: 149, column: 2, scope: !325)
!329 = !DILocation(line: 151, column: 6, scope: !330)
!330 = distinct !DILexicalBlock(scope: !312, file: !3, line: 151, column: 6)
!331 = !DILocation(line: 151, column: 6, scope: !312)
!332 = !DILocation(line: 153, column: 29, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !3, line: 151, column: 33)
!334 = !DILocation(line: 154, column: 23, scope: !333)
!335 = !DILocation(line: 155, column: 3, scope: !333)
!336 = !DILocation(line: 156, column: 2, scope: !333)
!337 = !DILocation(line: 158, column: 2, scope: !312)
!338 = !DILocation(line: 159, column: 1, scope: !312)
!339 = !DISubprogram(name: "unregister_sysctl_table", scope: !6, file: !6, line: 234, type: !340, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !125}
!342 = distinct !DISubprogram(name: "arch_asym_cpu_priority", scope: !3, file: !3, line: 161, type: !343, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !345)
!343 = !DISubroutineType(types: !344)
!344 = !{!16, !16}
!345 = !{!346, !347, !352}
!346 = !DILocalVariable(name: "cpu", arg: 1, scope: !342, file: !3, line: 161, type: !16)
!347 = !DILocalVariable(name: "__vpp_verify", scope: !348, file: !3, line: 163, type: !350)
!348 = distinct !DILexicalBlock(scope: !349, file: !3, line: 163, column: 9)
!349 = distinct !DILexicalBlock(scope: !342, file: !3, line: 163, column: 9)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!352 = !DILocalVariable(name: "__ptr", scope: !353, file: !3, line: 163, type: !33)
!353 = distinct !DILexicalBlock(scope: !349, file: !3, line: 163, column: 9)
!354 = !DILocation(line: 161, column: 32, scope: !342)
!355 = !DILocation(line: 163, column: 9, scope: !349)
!356 = !DILocation(line: 163, column: 9, scope: !348)
!357 = !DILocation(line: 163, column: 9, scope: !353)
!358 = !DILocation(line: 163, column: 9, scope: !342)
!359 = !DILocation(line: 163, column: 2, scope: !342)
!360 = distinct !DISubprogram(name: "sched_set_itmt_core_prio", scope: !3, file: !3, line: 180, type: !361, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !363)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !16, !16}
!363 = !{!364, !365, !366, !369}
!364 = !DILocalVariable(name: "prio", arg: 1, scope: !360, file: !3, line: 180, type: !16)
!365 = !DILocalVariable(name: "cpu", arg: 2, scope: !360, file: !3, line: 180, type: !16)
!366 = !DILocalVariable(name: "__vpp_verify", scope: !367, file: !3, line: 182, type: !350)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 182, column: 2)
!368 = distinct !DILexicalBlock(scope: !360, file: !3, line: 182, column: 2)
!369 = !DILocalVariable(name: "__ptr", scope: !370, file: !3, line: 182, type: !33)
!370 = distinct !DILexicalBlock(scope: !368, file: !3, line: 182, column: 2)
!371 = !DILocation(line: 180, column: 35, scope: !360)
!372 = !DILocation(line: 180, column: 45, scope: !360)
!373 = !DILocation(line: 182, column: 38, scope: !360)
!374 = !DILocation(line: 182, column: 2, scope: !368)
!375 = !DILocation(line: 182, column: 2, scope: !367)
!376 = !DILocation(line: 182, column: 2, scope: !370)
!377 = !DILocation(line: 182, column: 36, scope: !360)
!378 = !DILocation(line: 183, column: 1, scope: !360)
!379 = distinct !DISubprogram(name: "sched_itmt_update_handler", scope: !3, file: !3, line: 41, type: !25, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !380)
!380 = !{!381, !382, !383, !384, !385, !386, !387}
!381 = !DILocalVariable(name: "table", arg: 1, scope: !379, file: !3, line: 41, type: !27)
!382 = !DILocalVariable(name: "write", arg: 2, scope: !379, file: !3, line: 41, type: !16)
!383 = !DILocalVariable(name: "buffer", arg: 3, scope: !379, file: !3, line: 42, type: !14)
!384 = !DILocalVariable(name: "lenp", arg: 4, scope: !379, file: !3, line: 42, type: !28)
!385 = !DILocalVariable(name: "ppos", arg: 5, scope: !379, file: !3, line: 42, type: !34)
!386 = !DILocalVariable(name: "old_sysctl", scope: !379, file: !3, line: 44, type: !98)
!387 = !DILocalVariable(name: "ret", scope: !379, file: !3, line: 45, type: !16)
!388 = !DILocation(line: 41, column: 56, scope: !379)
!389 = !DILocation(line: 41, column: 67, scope: !379)
!390 = !DILocation(line: 42, column: 16, scope: !379)
!391 = !DILocation(line: 42, column: 32, scope: !379)
!392 = !DILocation(line: 42, column: 46, scope: !379)
!393 = !DILocation(line: 44, column: 2, scope: !379)
!394 = !DILocation(line: 44, column: 15, scope: !379)
!395 = !DILocation(line: 45, column: 2, scope: !379)
!396 = !DILocation(line: 45, column: 6, scope: !379)
!397 = !DILocation(line: 47, column: 2, scope: !379)
!398 = !DILocation(line: 49, column: 7, scope: !399)
!399 = distinct !DILexicalBlock(scope: !379, file: !3, line: 49, column: 6)
!400 = !DILocation(line: 49, column: 6, scope: !379)
!401 = !DILocation(line: 50, column: 3, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !3, line: 49, column: 27)
!403 = !DILocation(line: 51, column: 3, scope: !402)
!404 = !DILocation(line: 54, column: 15, scope: !379)
!405 = !DILocation(line: 54, column: 13, scope: !379)
!406 = !DILocation(line: 55, column: 29, scope: !379)
!407 = !DILocation(line: 55, column: 36, scope: !379)
!408 = !DILocation(line: 55, column: 43, scope: !379)
!409 = !DILocation(line: 55, column: 51, scope: !379)
!410 = !DILocation(line: 55, column: 57, scope: !379)
!411 = !DILocation(line: 55, column: 8, scope: !379)
!412 = !DILocation(line: 55, column: 6, scope: !379)
!413 = !DILocation(line: 57, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !379, file: !3, line: 57, column: 6)
!415 = !DILocation(line: 57, column: 11, scope: !414)
!416 = !DILocation(line: 57, column: 14, scope: !414)
!417 = !DILocation(line: 57, column: 20, scope: !414)
!418 = !DILocation(line: 57, column: 23, scope: !414)
!419 = !DILocation(line: 57, column: 37, scope: !414)
!420 = !DILocation(line: 57, column: 34, scope: !414)
!421 = !DILocation(line: 57, column: 6, scope: !379)
!422 = !DILocation(line: 58, column: 23, scope: !423)
!423 = distinct !DILexicalBlock(scope: !414, file: !3, line: 57, column: 64)
!424 = !DILocation(line: 59, column: 3, scope: !423)
!425 = !DILocation(line: 60, column: 2, scope: !423)
!426 = !DILocation(line: 62, column: 2, scope: !379)
!427 = !DILocation(line: 64, column: 9, scope: !379)
!428 = !DILocation(line: 64, column: 2, scope: !379)
!429 = !DILocation(line: 65, column: 1, scope: !379)
!430 = !DISubprogram(name: "proc_dointvec_minmax", scope: !6, file: !6, line: 72, type: !25, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
