; ModuleID = 'arch/x86/kernel/cpu/intel_pconfig.c'
source_filename = "arch/x86/kernel/cpu/intel_pconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall3.init..kmod_intel_pconfig__12_82_intel_pconfig_init\22, \22a\22\09\09"
module asm "__initcall__kmod_intel_pconfig__12_82_intel_pconfig_init3:\09\09\09"
module asm ".long\09__initstub__kmod_intel_pconfig__12_82_intel_pconfig_init3 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.cpuid_regs = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"arch/x86/kernel/cpu/intel_pconfig.c\00", align 1, !dbg !0
@targets_supported = internal global i64 0, section ".data..read_mostly", align 8, !dbg !7
@__UNIQUE_ID___addressable___initstub__kmod_intel_pconfig__12_82_intel_pconfig_init313 = internal global ptr @__initstub__kmod_intel_pconfig__12_82_intel_pconfig_init3, section ".discard.addressable", align 8, !dbg !28
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_intel_pconfig__12_82_intel_pconfig_init313], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pconfig_target_supported(i32 noundef %target) #0 align 16 !dbg !44 {
entry:
  %retval = alloca i32, align 4
  %target.addr = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %target, ptr %target.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !48, metadata !DIExpression()), !dbg !55
  br label %do.body, !dbg !56

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !57

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !59
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !49, metadata !DIExpression()), !dbg !59
  %0 = load i32, ptr %target.addr, align 4, !dbg !59
  %cmp = icmp uge i32 %0, 64, !dbg !59
  %lnot = xor i1 %cmp, true, !dbg !59
  %lnot1 = xor i1 %lnot, true, !dbg !59
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !59
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !59
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !60
  %tobool = icmp ne i32 %1, 0, !dbg !60
  %lnot2 = xor i1 %tobool, true, !dbg !60
  %lnot4 = xor i1 %lnot2, true, !dbg !60
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !60
  %conv = sext i32 %lnot.ext5 to i64, !dbg !60
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !60
  %tobool6 = icmp ne i64 %expval, 0, !dbg !60
  br i1 %tobool6, label %if.then, label %if.end, !dbg !59

if.then:                                          ; preds = %do.end
  br label %do.body7, !dbg !60

do.body7:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !61
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !52, metadata !DIExpression()), !dbg !61
  store i32 2307, ptr %__flags, align 4, !dbg !61
  br label %do.body8, !dbg !61

do.body8:                                         ; preds = %do.body7
  br label %do.cond, !dbg !62

do.cond:                                          ; preds = %do.body8
  br label %do.end9, !dbg !62

do.end9:                                          ; preds = %do.cond
  br label %do.body10, !dbg !61

do.body10:                                        ; preds = %do.end9
  %2 = load i32, ptr %__flags, align 4, !dbg !64
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 35, i32 %2, i64 12) #9, !dbg !64, !srcloc !66
  br label %do.cond11, !dbg !64

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !64

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !61

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !67

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !67

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !60
  br label %do.cond16, !dbg !61

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !61

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !61

if.end:                                           ; preds = %do.end17, %do.end
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !59
  %tobool18 = icmp ne i32 %3, 0, !dbg !59
  %lnot19 = xor i1 %tobool18, true, !dbg !59
  %lnot21 = xor i1 %lnot19, true, !dbg !59
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !59
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !59
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !59
  store i64 %expval24, ptr %tmp, align 8, !dbg !60
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !69
  %4 = load i64, ptr %tmp, align 8, !dbg !59
  %tobool25 = icmp ne i64 %4, 0, !dbg !69
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !70

if.then26:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !71
  br label %return, !dbg !71

if.end27:                                         ; preds = %if.end
  %5 = load i64, ptr @targets_supported, align 8, !dbg !72
  %6 = load i32, ptr %target.addr, align 4, !dbg !73
  %sh_prom = zext i32 %6 to i64, !dbg !74
  %shl = shl i64 1, %sh_prom, !dbg !74
  %and = and i64 %5, %shl, !dbg !75
  %conv28 = trunc i64 %and to i32, !dbg !72
  store i32 %conv28, ptr %retval, align 4, !dbg !76
  br label %return, !dbg !76

return:                                           ; preds = %if.end27, %if.then26
  %7 = load i32, ptr %retval, align 4, !dbg !77
  ret i32 %7, !dbg !77
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_intel_pconfig__12_82_intel_pconfig_init3() #4 section ".init.text" align 16 !dbg !78 {
entry:
  %call = call i32 @intel_pconfig_init() #10, !dbg !81
  ret i32 %call, !dbg !81
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @intel_pconfig_init() #4 section ".init.text" align 16 !dbg !82 {
entry:
  %retval = alloca i32, align 4
  %subleaf = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %regs = alloca %struct.cpuid_regs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %subleaf) #9, !dbg !99
  call void @llvm.dbg.declare(metadata ptr %subleaf, metadata !84, metadata !DIExpression()), !dbg !100
  br i1 false, label %cond.true, label %cond.false, !dbg !101

cond.true:                                        ; preds = %entry
  br i1 true, label %if.end, label %if.then, !dbg !102

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 594, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #11, !dbg !102
  br i1 %call, label %if.end, label %if.then, !dbg !101

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !104

if.end:                                           ; preds = %cond.false, %cond.true
  store i32 0, ptr %subleaf, align 4, !dbg !105
  br label %for.cond, !dbg !106

for.cond:                                         ; preds = %for.inc, %if.end
  %0 = load i32, ptr %subleaf, align 4, !dbg !107
  %cmp = icmp slt i32 %0, 2147483647, !dbg !108
  br i1 %cmp, label %for.body, label %for.end, !dbg !109

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %regs) #9, !dbg !110
  call void @llvm.dbg.declare(metadata ptr %regs, metadata !85, metadata !DIExpression()), !dbg !111
  %1 = load i32, ptr %subleaf, align 4, !dbg !112
  %eax = getelementptr inbounds %struct.cpuid_regs, ptr %regs, i32 0, i32 0, !dbg !113
  %ebx = getelementptr inbounds %struct.cpuid_regs, ptr %regs, i32 0, i32 1, !dbg !114
  %ecx = getelementptr inbounds %struct.cpuid_regs, ptr %regs, i32 0, i32 2, !dbg !115
  %edx = getelementptr inbounds %struct.cpuid_regs, ptr %regs, i32 0, i32 3, !dbg !116
  call void @cpuid_count(i32 noundef 27, i32 noundef %1, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #11, !dbg !117
  %eax1 = getelementptr inbounds %struct.cpuid_regs, ptr %regs, i32 0, i32 0, !dbg !118
  %2 = load i32, ptr %eax1, align 4, !dbg !118
  %and = and i32 %2, 4095, !dbg !119
  switch i32 %and, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ], !dbg !120

sw.bb:                                            ; preds = %for.body
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !121

sw.bb2:                                           ; preds = %for.body
  %ebx3 = getelementptr inbounds %struct.cpuid_regs, ptr %regs, i32 0, i32 1, !dbg !123
  %3 = load i32, ptr %ebx3, align 4, !dbg !123
  %cmp4 = icmp ult i32 %3, 64, !dbg !125
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !126

if.then5:                                         ; preds = %sw.bb2
  %ebx6 = getelementptr inbounds %struct.cpuid_regs, ptr %regs, i32 0, i32 1, !dbg !127
  %4 = load i32, ptr %ebx6, align 4, !dbg !127
  %sh_prom = zext i32 %4 to i64, !dbg !128
  %shl = shl i64 1, %sh_prom, !dbg !128
  %5 = load i64, ptr @targets_supported, align 8, !dbg !129
  %or = or i64 %5, %shl, !dbg !129
  store i64 %or, ptr @targets_supported, align 8, !dbg !129
  br label %if.end7, !dbg !130

if.end7:                                          ; preds = %if.then5, %sw.bb2
  %ecx8 = getelementptr inbounds %struct.cpuid_regs, ptr %regs, i32 0, i32 2, !dbg !131
  %6 = load i32, ptr %ecx8, align 4, !dbg !131
  %cmp9 = icmp ult i32 %6, 64, !dbg !133
  br i1 %cmp9, label %if.then10, label %if.end15, !dbg !134

if.then10:                                        ; preds = %if.end7
  %ecx11 = getelementptr inbounds %struct.cpuid_regs, ptr %regs, i32 0, i32 2, !dbg !135
  %7 = load i32, ptr %ecx11, align 4, !dbg !135
  %sh_prom12 = zext i32 %7 to i64, !dbg !136
  %shl13 = shl i64 1, %sh_prom12, !dbg !136
  %8 = load i64, ptr @targets_supported, align 8, !dbg !137
  %or14 = or i64 %8, %shl13, !dbg !137
  store i64 %or14, ptr @targets_supported, align 8, !dbg !137
  br label %if.end15, !dbg !138

if.end15:                                         ; preds = %if.then10, %if.end7
  %edx16 = getelementptr inbounds %struct.cpuid_regs, ptr %regs, i32 0, i32 3, !dbg !139
  %9 = load i32, ptr %edx16, align 4, !dbg !139
  %cmp17 = icmp ult i32 %9, 64, !dbg !141
  br i1 %cmp17, label %if.then18, label %if.end23, !dbg !142

if.then18:                                        ; preds = %if.end15
  %edx19 = getelementptr inbounds %struct.cpuid_regs, ptr %regs, i32 0, i32 3, !dbg !143
  %10 = load i32, ptr %edx19, align 4, !dbg !143
  %sh_prom20 = zext i32 %10 to i64, !dbg !144
  %shl21 = shl i64 1, %sh_prom20, !dbg !144
  %11 = load i64, ptr @targets_supported, align 8, !dbg !145
  %or22 = or i64 %11, %shl21, !dbg !145
  store i64 %or22, ptr @targets_supported, align 8, !dbg !145
  br label %if.end23, !dbg !146

if.end23:                                         ; preds = %if.then18, %if.end15
  br label %sw.epilog, !dbg !147

sw.default:                                       ; preds = %for.body
  br label %sw.epilog, !dbg !148

sw.epilog:                                        ; preds = %sw.default, %if.end23
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !149
  br label %cleanup, !dbg !149

cleanup:                                          ; preds = %sw.bb, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 16, ptr %regs) #9, !dbg !149
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup24 [
    i32 0, label %cleanup.cont
    i32 6, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !150

for.inc:                                          ; preds = %cleanup.cont
  %12 = load i32, ptr %subleaf, align 4, !dbg !151
  %inc = add i32 %12, 1, !dbg !151
  store i32 %inc, ptr %subleaf, align 4, !dbg !151
  br label %for.cond, !dbg !152, !llvm.loop !153

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !154

out:                                              ; preds = %for.end, %cleanup
  call void @llvm.dbg.label(metadata !98), !dbg !157
  store i32 0, ptr %retval, align 4, !dbg !158
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !158

cleanup24:                                        ; preds = %out, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %subleaf) #9, !dbg !159
  %13 = load i32, ptr %retval, align 4, !dbg !159
  ret i32 %13, !dbg !159
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !160 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !171, metadata !DIExpression()), !dbg !173
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !172, metadata !DIExpression()), !dbg !174
  %0 = load i64, ptr %nr.addr, align 8, !dbg !175
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !176
  br i1 %1, label %cond.true, label %cond.false, !dbg !176

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !177
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !178
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #11, !dbg !179
  %conv = zext i1 %call to i32, !dbg !179
  br label %cond.end, !dbg !176

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !180
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !181
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #11, !dbg !182
  %conv2 = zext i1 %call1 to i32, !dbg !182
  br label %cond.end, !dbg !176

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !176
  %tobool = icmp ne i32 %cond, 0, !dbg !176
  ret i1 %tobool, !dbg !183
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid_count(i32 noundef %op, i32 noundef %count, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #6 align 16 !dbg !184 {
entry:
  %op.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !189, metadata !DIExpression()), !dbg !195
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !190, metadata !DIExpression()), !dbg !196
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !191, metadata !DIExpression()), !dbg !197
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !192, metadata !DIExpression()), !dbg !198
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !193, metadata !DIExpression()), !dbg !199
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !194, metadata !DIExpression()), !dbg !200
  %0 = load i32, ptr %op.addr, align 4, !dbg !201
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !202
  store i32 %0, ptr %1, align 4, !dbg !203
  %2 = load i32, ptr %count.addr, align 4, !dbg !204
  %3 = load ptr, ptr %ecx.addr, align 8, !dbg !205
  store i32 %2, ptr %3, align 4, !dbg !206
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !207
  %5 = load ptr, ptr %ebx.addr, align 8, !dbg !208
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !209
  %7 = load ptr, ptr %edx.addr, align 8, !dbg !210
  call void @native_cpuid(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #11, !dbg !211
  ret void, !dbg !212
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !213 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !218, metadata !DIExpression()), !dbg !220
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !219, metadata !DIExpression()), !dbg !221
  %0 = load i64, ptr %nr.addr, align 8, !dbg !222
  %and = and i64 %0, 63, !dbg !223
  %shl = shl i64 1, %and, !dbg !224
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !225
  %2 = load i64, ptr %nr.addr, align 8, !dbg !226
  %shr = ashr i64 %2, 6, !dbg !227
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !225
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !225
  %and1 = and i64 %shl, %3, !dbg !228
  %cmp = icmp ne i64 %and1, 0, !dbg !229
  ret i1 %cmp, !dbg !230
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !231 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !233, metadata !DIExpression()), !dbg !236
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !234, metadata !DIExpression()), !dbg !237
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #9, !dbg !238
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !235, metadata !DIExpression()), !dbg !239
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !240
  %1 = load i64, ptr %nr.addr, align 8, !dbg !241
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #9, !dbg !242, !srcloc !243
  %3 = icmp ult i8 %2, 2, !dbg !242
  call void @llvm.assume(i1 %3), !dbg !242
  store i8 %2, ptr %oldbit, align 1, !dbg !242
  %4 = load i8, ptr %oldbit, align 1, !dbg !244, !range !245, !noundef !246
  %tobool = trunc i8 %4 to i1, !dbg !244
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #9, !dbg !247
  ret i1 %tobool, !dbg !248
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #6 align 16 !dbg !249 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !253, metadata !DIExpression()), !dbg !257
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !254, metadata !DIExpression()), !dbg !258
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !255, metadata !DIExpression()), !dbg !259
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !256, metadata !DIExpression()), !dbg !260
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !261
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !262
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !263
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !264
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !265
  %5 = load i32, ptr %4, align 4, !dbg !266
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !267
  %7 = load i32, ptr %6, align 4, !dbg !268
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #9, !dbg !269, !srcloc !270
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !269
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !269
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !269
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !269
  store i32 %asmresult, ptr %0, align 4, !dbg !269
  store i32 %asmresult1, ptr %1, align 4, !dbg !269
  store i32 %asmresult2, ptr %2, align 4, !dbg !269
  store i32 %asmresult3, ptr %3, align 4, !dbg !269
  ret void, !dbg !271
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 35, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/cpu/intel_pconfig.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7c9700c96cb48c1a1e49255d3105d59f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 36)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "targets_supported", scope: !9, file: !2, line: 25, type: !30, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.intel_pconfig.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/intel_pconfig\22 -D KBUILD_BASENAME=\22intel_pconfig\22 -D KBUILD_MODNAME=\22intel_pconfig\22 -D __KBUILD_MODNAME=kmod_intel_pconfig -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/intel_pconfig.ll arch/x86/kernel/cpu/intel_pconfig.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !22, globals: !27, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !18}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pconfig_target", file: !12, line: 7, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./arch/x86/include/asm/intel_pconfig.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16f188b2eaf3f42f0cdcfe33f760095c")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "INVALID_TARGET", value: 0)
!16 = !DIEnumerator(name: "MKTME_TARGET", value: 1)
!17 = !DIEnumerator(name: "PCONFIG_TARGET_NR", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 19, baseType: !13, size: 32, elements: !19)
!19 = !{!20, !21}
!20 = !DIEnumerator(name: "PCONFIG_CPUID_SUBLEAF_INVALID", value: 0)
!21 = !DIEnumerator(name: "PCONFIG_CPUID_SUBLEAF_TARGETID", value: 1)
!22 = !{!23, !24, !25}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!27 = !{!0, !28, !7}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_intel_pconfig__12_82_intel_pconfig_init313", scope: !9, file: !2, line: 82, type: !23, isLocal: true, isDefinition: true)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !31, line: 23, baseType: !32)
!31 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !33, line: 31, baseType: !34)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!34 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!35 = !{i32 7, !"Dwarf Version", i32 5}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 8, !"cf-protection-branch", i32 1}
!39 = !{i32 4, !"function_return_thunk_extern", i32 1}
!40 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!41 = !{i32 1, !"Code Model", i32 2}
!42 = !{i32 1, !"override-stack-alignment", i32 8}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = distinct !DISubprogram(name: "pconfig_target_supported", scope: !2, file: !2, line: 27, type: !45, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !47)
!45 = !DISubroutineType(types: !46)
!46 = !{!24, !11}
!47 = !{!48, !49, !52}
!48 = !DILocalVariable(name: "target", arg: 1, scope: !44, file: !2, line: 27, type: !11)
!49 = !DILocalVariable(name: "__ret_warn_on", scope: !50, file: !2, line: 35, type: !24)
!50 = distinct !DILexicalBlock(scope: !51, file: !2, line: 35, column: 6)
!51 = distinct !DILexicalBlock(scope: !44, file: !2, line: 35, column: 6)
!52 = !DILocalVariable(name: "__flags", scope: !53, file: !2, line: 35, type: !24)
!53 = distinct !DILexicalBlock(scope: !54, file: !2, line: 35, column: 6)
!54 = distinct !DILexicalBlock(scope: !50, file: !2, line: 35, column: 6)
!55 = !DILocation(line: 27, column: 50, scope: !44)
!56 = !DILocation(line: 33, column: 2, scope: !44)
!57 = !DILocation(line: 33, column: 2, scope: !58)
!58 = distinct !DILexicalBlock(scope: !44, file: !2, line: 33, column: 2)
!59 = !DILocation(line: 35, column: 6, scope: !50)
!60 = !DILocation(line: 35, column: 6, scope: !54)
!61 = !DILocation(line: 35, column: 6, scope: !53)
!62 = !DILocation(line: 35, column: 6, scope: !63)
!63 = distinct !DILexicalBlock(scope: !53, file: !2, line: 35, column: 6)
!64 = !DILocation(line: 35, column: 6, scope: !65)
!65 = distinct !DILexicalBlock(scope: !53, file: !2, line: 35, column: 6)
!66 = !{i64 2149267766, i64 2149267795, i64 2149267841, i64 2149267899, i64 2149267953, i64 2149268007, i64 2149268062, i64 2149268093, i64 2149268401, i64 2149268407, i64 2149268454, i64 2149268477, i64 2149268503}
!67 = !DILocation(line: 35, column: 6, scope: !68)
!68 = distinct !DILexicalBlock(scope: !53, file: !2, line: 35, column: 6)
!69 = !DILocation(line: 35, column: 6, scope: !51)
!70 = !DILocation(line: 35, column: 6, scope: !44)
!71 = !DILocation(line: 36, column: 3, scope: !51)
!72 = !DILocation(line: 37, column: 9, scope: !44)
!73 = !DILocation(line: 37, column: 38, scope: !44)
!74 = !DILocation(line: 37, column: 35, scope: !44)
!75 = !DILocation(line: 37, column: 27, scope: !44)
!76 = !DILocation(line: 37, column: 2, scope: !44)
!77 = !DILocation(line: 38, column: 1, scope: !44)
!78 = distinct !DISubprogram(name: "__initstub__kmod_intel_pconfig__12_82_intel_pconfig_init3", scope: !2, file: !2, line: 82, type: !79, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!79 = !DISubroutineType(types: !80)
!80 = !{!24}
!81 = !DILocation(line: 82, column: 1, scope: !78)
!82 = distinct !DISubprogram(name: "intel_pconfig_init", scope: !2, file: !2, line: 40, type: !79, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !83)
!83 = !{!84, !85, !98}
!84 = !DILocalVariable(name: "subleaf", scope: !82, file: !2, line: 42, type: !24)
!85 = !DILocalVariable(name: "regs", scope: !86, file: !2, line: 56, type: !89)
!86 = distinct !DILexicalBlock(scope: !87, file: !2, line: 55, column: 50)
!87 = distinct !DILexicalBlock(scope: !88, file: !2, line: 55, column: 2)
!88 = distinct !DILexicalBlock(scope: !82, file: !2, line: 55, column: 2)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuid_regs", file: !90, line: 11, size: 128, elements: !91)
!90 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!91 = !{!92, !95, !96, !97}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "eax", scope: !89, file: !90, line: 12, baseType: !93, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !31, line: 21, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !13)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "ebx", scope: !89, file: !90, line: 12, baseType: !93, size: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ecx", scope: !89, file: !90, line: 12, baseType: !93, size: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "edx", scope: !89, file: !90, line: 12, baseType: !93, size: 32, offset: 96)
!98 = !DILabel(scope: !82, name: "out", file: !2, line: 79)
!99 = !DILocation(line: 42, column: 2, scope: !82)
!100 = !DILocation(line: 42, column: 6, scope: !82)
!101 = !DILocation(line: 44, column: 6, scope: !82)
!102 = !DILocation(line: 44, column: 7, scope: !103)
!103 = distinct !DILexicalBlock(scope: !82, file: !2, line: 44, column: 6)
!104 = !DILocation(line: 45, column: 3, scope: !103)
!105 = !DILocation(line: 55, column: 15, scope: !88)
!106 = !DILocation(line: 55, column: 7, scope: !88)
!107 = !DILocation(line: 55, column: 20, scope: !87)
!108 = !DILocation(line: 55, column: 28, scope: !87)
!109 = !DILocation(line: 55, column: 2, scope: !88)
!110 = !DILocation(line: 56, column: 3, scope: !86)
!111 = !DILocation(line: 56, column: 21, scope: !86)
!112 = !DILocation(line: 58, column: 30, scope: !86)
!113 = !DILocation(line: 59, column: 11, scope: !86)
!114 = !DILocation(line: 59, column: 22, scope: !86)
!115 = !DILocation(line: 59, column: 33, scope: !86)
!116 = !DILocation(line: 59, column: 44, scope: !86)
!117 = !DILocation(line: 58, column: 3, scope: !86)
!118 = !DILocation(line: 61, column: 16, scope: !86)
!119 = !DILocation(line: 61, column: 20, scope: !86)
!120 = !DILocation(line: 61, column: 3, scope: !86)
!121 = !DILocation(line: 64, column: 4, scope: !122)
!122 = distinct !DILexicalBlock(scope: !86, file: !2, line: 61, column: 50)
!123 = !DILocation(line: 67, column: 13, scope: !124)
!124 = distinct !DILexicalBlock(scope: !122, file: !2, line: 67, column: 8)
!125 = !DILocation(line: 67, column: 17, scope: !124)
!126 = !DILocation(line: 67, column: 8, scope: !122)
!127 = !DILocation(line: 68, column: 40, scope: !124)
!128 = !DILocation(line: 68, column: 32, scope: !124)
!129 = !DILocation(line: 68, column: 23, scope: !124)
!130 = !DILocation(line: 68, column: 5, scope: !124)
!131 = !DILocation(line: 69, column: 13, scope: !132)
!132 = distinct !DILexicalBlock(scope: !122, file: !2, line: 69, column: 8)
!133 = !DILocation(line: 69, column: 17, scope: !132)
!134 = !DILocation(line: 69, column: 8, scope: !122)
!135 = !DILocation(line: 70, column: 40, scope: !132)
!136 = !DILocation(line: 70, column: 32, scope: !132)
!137 = !DILocation(line: 70, column: 23, scope: !132)
!138 = !DILocation(line: 70, column: 5, scope: !132)
!139 = !DILocation(line: 71, column: 13, scope: !140)
!140 = distinct !DILexicalBlock(scope: !122, file: !2, line: 71, column: 8)
!141 = !DILocation(line: 71, column: 17, scope: !140)
!142 = !DILocation(line: 71, column: 8, scope: !122)
!143 = !DILocation(line: 72, column: 40, scope: !140)
!144 = !DILocation(line: 72, column: 32, scope: !140)
!145 = !DILocation(line: 72, column: 23, scope: !140)
!146 = !DILocation(line: 72, column: 5, scope: !140)
!147 = !DILocation(line: 73, column: 4, scope: !122)
!148 = !DILocation(line: 76, column: 4, scope: !122)
!149 = !DILocation(line: 78, column: 2, scope: !87)
!150 = !DILocation(line: 78, column: 2, scope: !86)
!151 = !DILocation(line: 55, column: 46, scope: !87)
!152 = !DILocation(line: 55, column: 2, scope: !87)
!153 = distinct !{!153, !109, !154, !155, !156}
!154 = !DILocation(line: 78, column: 2, scope: !88)
!155 = !{!"llvm.loop.mustprogress"}
!156 = !{!"llvm.loop.unroll.disable"}
!157 = !DILocation(line: 79, column: 1, scope: !82)
!158 = !DILocation(line: 80, column: 2, scope: !82)
!159 = !DILocation(line: 81, column: 1, scope: !82)
!160 = distinct !DISubprogram(name: "arch_test_bit", scope: !161, file: !161, line: 237, type: !162, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !170)
!161 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !26, !167}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !165, line: 35, baseType: !166)
!165 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!166 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !26)
!170 = !{!171, !172}
!171 = !DILocalVariable(name: "nr", arg: 1, scope: !160, file: !161, line: 237, type: !26)
!172 = !DILocalVariable(name: "addr", arg: 2, scope: !160, file: !161, line: 237, type: !167)
!173 = !DILocation(line: 237, column: 29, scope: !160)
!174 = !DILocation(line: 237, column: 63, scope: !160)
!175 = !DILocation(line: 239, column: 30, scope: !160)
!176 = !DILocation(line: 239, column: 9, scope: !160)
!177 = !DILocation(line: 239, column: 54, scope: !160)
!178 = !DILocation(line: 239, column: 58, scope: !160)
!179 = !DILocation(line: 239, column: 36, scope: !160)
!180 = !DILocation(line: 240, column: 26, scope: !160)
!181 = !DILocation(line: 240, column: 30, scope: !160)
!182 = !DILocation(line: 240, column: 8, scope: !160)
!183 = !DILocation(line: 239, column: 2, scope: !160)
!184 = distinct !DISubprogram(name: "cpuid_count", scope: !90, file: !90, line: 82, type: !185, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !188)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !13, !24, !187, !187, !187, !187}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!188 = !{!189, !190, !191, !192, !193, !194}
!189 = !DILocalVariable(name: "op", arg: 1, scope: !184, file: !90, line: 82, type: !13)
!190 = !DILocalVariable(name: "count", arg: 2, scope: !184, file: !90, line: 82, type: !24)
!191 = !DILocalVariable(name: "eax", arg: 3, scope: !184, file: !90, line: 83, type: !187)
!192 = !DILocalVariable(name: "ebx", arg: 4, scope: !184, file: !90, line: 83, type: !187)
!193 = !DILocalVariable(name: "ecx", arg: 5, scope: !184, file: !90, line: 84, type: !187)
!194 = !DILocalVariable(name: "edx", arg: 6, scope: !184, file: !90, line: 84, type: !187)
!195 = !DILocation(line: 82, column: 45, scope: !184)
!196 = !DILocation(line: 82, column: 53, scope: !184)
!197 = !DILocation(line: 83, column: 25, scope: !184)
!198 = !DILocation(line: 83, column: 44, scope: !184)
!199 = !DILocation(line: 84, column: 25, scope: !184)
!200 = !DILocation(line: 84, column: 44, scope: !184)
!201 = !DILocation(line: 86, column: 9, scope: !184)
!202 = !DILocation(line: 86, column: 3, scope: !184)
!203 = !DILocation(line: 86, column: 7, scope: !184)
!204 = !DILocation(line: 87, column: 9, scope: !184)
!205 = !DILocation(line: 87, column: 3, scope: !184)
!206 = !DILocation(line: 87, column: 7, scope: !184)
!207 = !DILocation(line: 88, column: 10, scope: !184)
!208 = !DILocation(line: 88, column: 15, scope: !184)
!209 = !DILocation(line: 88, column: 20, scope: !184)
!210 = !DILocation(line: 88, column: 25, scope: !184)
!211 = !DILocation(line: 88, column: 2, scope: !184)
!212 = !DILocation(line: 89, column: 1, scope: !184)
!213 = distinct !DISubprogram(name: "constant_test_bit", scope: !161, file: !161, line: 204, type: !214, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !217)
!214 = !DISubroutineType(types: !215)
!215 = !{!164, !216, !167}
!216 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!217 = !{!218, !219}
!218 = !DILocalVariable(name: "nr", arg: 1, scope: !213, file: !161, line: 204, type: !216)
!219 = !DILocalVariable(name: "addr", arg: 2, scope: !213, file: !161, line: 204, type: !167)
!220 = !DILocation(line: 204, column: 52, scope: !213)
!221 = !DILocation(line: 204, column: 86, scope: !213)
!222 = !DILocation(line: 206, column: 19, scope: !213)
!223 = !DILocation(line: 206, column: 22, scope: !213)
!224 = !DILocation(line: 206, column: 15, scope: !213)
!225 = !DILocation(line: 207, column: 4, scope: !213)
!226 = !DILocation(line: 207, column: 9, scope: !213)
!227 = !DILocation(line: 207, column: 12, scope: !213)
!228 = !DILocation(line: 206, column: 44, scope: !213)
!229 = !DILocation(line: 207, column: 37, scope: !213)
!230 = !DILocation(line: 206, column: 2, scope: !213)
!231 = distinct !DISubprogram(name: "variable_test_bit", scope: !161, file: !161, line: 224, type: !214, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !232)
!232 = !{!233, !234, !235}
!233 = !DILocalVariable(name: "nr", arg: 1, scope: !231, file: !161, line: 224, type: !216)
!234 = !DILocalVariable(name: "addr", arg: 2, scope: !231, file: !161, line: 224, type: !167)
!235 = !DILocalVariable(name: "oldbit", scope: !231, file: !161, line: 226, type: !164)
!236 = !DILocation(line: 224, column: 52, scope: !231)
!237 = !DILocation(line: 224, column: 86, scope: !231)
!238 = !DILocation(line: 226, column: 2, scope: !231)
!239 = !DILocation(line: 226, column: 7, scope: !231)
!240 = !DILocation(line: 231, column: 33, scope: !231)
!241 = !DILocation(line: 231, column: 46, scope: !231)
!242 = !DILocation(line: 228, column: 2, scope: !231)
!243 = !{i64 2148135619, i64 2148135693}
!244 = !DILocation(line: 233, column: 9, scope: !231)
!245 = !{i8 0, i8 2}
!246 = !{}
!247 = !DILocation(line: 234, column: 1, scope: !231)
!248 = !DILocation(line: 233, column: 2, scope: !231)
!249 = distinct !DISubprogram(name: "native_cpuid", scope: !90, file: !90, line: 30, type: !250, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !252)
!250 = !DISubroutineType(types: !251)
!251 = !{null, !187, !187, !187, !187}
!252 = !{!253, !254, !255, !256}
!253 = !DILocalVariable(name: "eax", arg: 1, scope: !249, file: !90, line: 30, type: !187)
!254 = !DILocalVariable(name: "ebx", arg: 2, scope: !249, file: !90, line: 30, type: !187)
!255 = !DILocalVariable(name: "ecx", arg: 3, scope: !249, file: !90, line: 31, type: !187)
!256 = !DILocalVariable(name: "edx", arg: 4, scope: !249, file: !90, line: 31, type: !187)
!257 = !DILocation(line: 30, column: 47, scope: !249)
!258 = !DILocation(line: 30, column: 66, scope: !249)
!259 = !DILocation(line: 31, column: 19, scope: !249)
!260 = !DILocation(line: 31, column: 38, scope: !249)
!261 = !DILocation(line: 35, column: 15, scope: !249)
!262 = !DILocation(line: 36, column: 15, scope: !249)
!263 = !DILocation(line: 37, column: 15, scope: !249)
!264 = !DILocation(line: 38, column: 15, scope: !249)
!265 = !DILocation(line: 39, column: 14, scope: !249)
!266 = !DILocation(line: 39, column: 13, scope: !249)
!267 = !DILocation(line: 39, column: 26, scope: !249)
!268 = !DILocation(line: 39, column: 25, scope: !249)
!269 = !DILocation(line: 34, column: 2, scope: !249)
!270 = !{i64 895053}
!271 = !DILocation(line: 41, column: 1, scope: !249)
