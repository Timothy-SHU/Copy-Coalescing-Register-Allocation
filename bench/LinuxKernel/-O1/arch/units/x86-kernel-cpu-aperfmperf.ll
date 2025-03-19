; ModuleID = 'arch/x86/kernel/cpu/aperfmperf.c'
source_filename = "arch/x86/kernel/cpu/aperfmperf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_arch_set_max_freq_ratio: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad arch_set_max_freq_ratio ; .previous"
module asm ".section\09\22.initcallearly.init..kmod_aperfmperf__226_454_bp_init_aperfmperf\22, \22a\22\09\09"
module asm "__initcall__kmod_aperfmperf__226_454_bp_init_aperfmperfearly:\09\09\09"
module asm ".long\09__initstub__kmod_aperfmperf__226_454_bp_init_aperfmperfearly - .\09"
module asm ".previous\09\09\09\09\09"

%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%struct.atomic_t = type { i32 }
%union.anon = type { i64 }
%struct.aperfmperf = type { %struct.seqcount, i64, i64, i64, i64, i64 }
%struct.seqcount = type { i32 }
%struct.cpuinfo_x86 = type { %union.anon.0, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.1, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i64, [88 x i8] }
%struct.static_call_key = type { ptr, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcpu_hot = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4, [16 x i8] }
%struct.anon.4 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.x86_cpu_id = type { i16, i16, i16, i16, i16, i16, i64 }
%struct.anon = type { i8, i8, i8, i8 }

@arch_scale_freq_key = hidden global %struct.static_key_false zeroinitializer, align 8, !dbg !0
@arch_turbo_freq_ratio = internal global i64 1024, align 8, !dbg !104
@arch_max_freq_ratio = internal global i64 1024, align 8, !dbg !106
@__UNIQUE_ID___addressable_arch_set_max_freq_ratio224 = internal global ptr @arch_set_max_freq_ratio, section ".discard.addressable", align 8, !dbg !80
@arch_freq_scale = hidden global i64 1024, section ".data..percpu", align 8, !dbg !82
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@cpu_samples = internal global %struct.aperfmperf zeroinitializer, section ".data..percpu..shared_aligned", align 64, !dbg !137
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@arch_scale_freq_tick.__UNIQUE_ID___addressable___SCK__preempt_schedule225 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !84
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@cpu_khz = external dso_local global i32, align 4
@__UNIQUE_ID___addressable___initstub__kmod_aperfmperf__226_454_bp_init_aperfmperfearly227 = internal global ptr @__initstub__kmod_aperfmperf__226_454_bp_init_aperfmperfearly, section ".discard.addressable", align 8, !dbg !102
@.str = private unnamed_addr constant [33 x i8] c"arch/x86/kernel/cpu/aperfmperf.c\00", align 1, !dbg !108
@.str.1 = private unnamed_addr constant [81 x i8] c"\016Estimated ratio of average max frequency by base frequency (times 1024): %llu\0A\00", align 1, !dbg !113
@freq_invariance_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr null, ptr @init_counter_refs, ptr null }, align 8, !dbg !118
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [58 x i8] c"\014Scheduler frequency invariance went wobbly, disabling!\0A\00", align 1, !dbg !139
@disable_freq_invariance_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { ptr getelementptr (i8, ptr @disable_freq_invariance_work, i64 8), ptr getelementptr (i8, ptr @disable_freq_invariance_work, i64 8) }, ptr @disable_freq_invariance_workfn }, align 8, !dbg !144
@system_wq = external dso_local global ptr, align 8
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@has_glm_turbo_ratio_limits = internal constant [4 x %struct.x86_cpu_id] [%struct.x86_cpu_id { i16 0, i16 6, i16 92, i16 0, i16 124, i16 1, i64 0 }, %struct.x86_cpu_id { i16 0, i16 6, i16 95, i16 0, i16 124, i16 1, i64 0 }, %struct.x86_cpu_id { i16 0, i16 6, i16 122, i16 0, i16 124, i16 1, i64 0 }, %struct.x86_cpu_id zeroinitializer], section ".init.rodata", align 16, !dbg !165
@has_knl_turbo_ratio_limits = internal constant [3 x %struct.x86_cpu_id] [%struct.x86_cpu_id { i16 0, i16 6, i16 87, i16 0, i16 124, i16 1, i64 0 }, %struct.x86_cpu_id { i16 0, i16 6, i16 133, i16 0, i16 124, i16 1, i64 0 }, %struct.x86_cpu_id zeroinitializer], section ".init.rodata", align 16, !dbg !184
@has_skx_turbo_ratio_limits = internal constant [2 x %struct.x86_cpu_id] [%struct.x86_cpu_id { i16 0, i16 6, i16 85, i16 0, i16 124, i16 1, i64 0 }, %struct.x86_cpu_id zeroinitializer], section ".init.rodata", align 16, !dbg !189
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_arch_set_max_freq_ratio224, ptr @arch_scale_freq_tick.__UNIQUE_ID___addressable___SCK__preempt_schedule225, ptr @__UNIQUE_ID___addressable___initstub__kmod_aperfmperf__226_454_bp_init_aperfmperfearly227], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_set_max_freq_ratio(i1 noundef zeroext %turbo_disabled) #0 align 16 !dbg !232 {
entry:
  %turbo_disabled.addr = alloca i8, align 1
  %frombool = zext i1 %turbo_disabled to i8
  store i8 %frombool, ptr %turbo_disabled.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %turbo_disabled.addr, metadata !238, metadata !DIExpression()), !dbg !239
  %0 = load i8, ptr %turbo_disabled.addr, align 1, !dbg !240, !range !241, !noundef !242
  %tobool = trunc i8 %0 to i1, !dbg !240
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !240

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !240

cond.false:                                       ; preds = %entry
  %1 = load i64, ptr @arch_turbo_freq_ratio, align 8, !dbg !243
  br label %cond.end, !dbg !240

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1024, %cond.true ], [ %1, %cond.false ], !dbg !240
  store i64 %cond, ptr @arch_max_freq_ratio, align 8, !dbg !244
  ret void, !dbg !245
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @freq_invariance_set_perf_ratio(i64 noundef %ratio, i1 noundef zeroext %turbo_disabled) #0 align 16 !dbg !246 {
entry:
  %ratio.addr = alloca i64, align 8
  %turbo_disabled.addr = alloca i8, align 1
  store i64 %ratio, ptr %ratio.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ratio.addr, metadata !250, metadata !DIExpression()), !dbg !252
  %frombool = zext i1 %turbo_disabled to i8
  store i8 %frombool, ptr %turbo_disabled.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %turbo_disabled.addr, metadata !251, metadata !DIExpression()), !dbg !253
  %0 = load i64, ptr %ratio.addr, align 8, !dbg !254
  store i64 %0, ptr @arch_turbo_freq_ratio, align 8, !dbg !255
  %1 = load i8, ptr %turbo_disabled.addr, align 1, !dbg !256, !range !241, !noundef !242
  %tobool = trunc i8 %1 to i1, !dbg !256
  call void @arch_set_max_freq_ratio(i1 noundef zeroext %tobool) #13, !dbg !257
  call void @freq_invariance_enable() #13, !dbg !258
  ret void, !dbg !259
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @freq_invariance_enable() #0 align 16 !dbg !260 {
entry:
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp21 = alloca i64, align 8
  %tmp33 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #14, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !262, metadata !DIExpression()), !dbg !271
  %call = call zeroext i1 @arch_static_branch(ptr noundef @arch_scale_freq_key, i1 noundef zeroext false) #13, !dbg !272
  %frombool = zext i1 %call to i8, !dbg !272
  store i8 %frombool, ptr %branch, align 1, !dbg !272
  %0 = load i8, ptr %branch, align 1, !dbg !271, !range !241, !noundef !242
  %tobool = trunc i8 %0 to i1, !dbg !271
  %lnot = xor i1 %tobool, true, !dbg !271
  %lnot1 = xor i1 %lnot, true, !dbg !271
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !271
  %conv = sext i32 %lnot.ext to i64, !dbg !271
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !271
  store i64 %expval, ptr %tmp, align 8, !dbg !275
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #14, !dbg !276
  %1 = load i64, ptr %tmp, align 8, !dbg !271
  %tobool2 = icmp ne i64 %1, 0, !dbg !276
  br i1 %tobool2, label %if.then, label %if.end29, !dbg !277

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !278
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !265, metadata !DIExpression()), !dbg !278
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !278
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !279
  %tobool3 = icmp ne i32 %2, 0, !dbg !279
  %lnot4 = xor i1 %tobool3, true, !dbg !279
  %lnot6 = xor i1 %lnot4, true, !dbg !279
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !279
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !279
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 0), !dbg !279
  %tobool10 = icmp ne i64 %expval9, 0, !dbg !279
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !278

if.then11:                                        ; preds = %if.then
  br label %do.body, !dbg !279

do.body:                                          ; preds = %if.then11
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !280
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !268, metadata !DIExpression()), !dbg !280
  store i32 2307, ptr %__flags, align 4, !dbg !280
  br label %do.body12, !dbg !280

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !281

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !281

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !280

do.body13:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !283
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 307, i32 %3, i64 12) #14, !dbg !283, !srcloc !285
  br label %do.cond14, !dbg !283

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !283

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !280

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !286

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !286

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !279
  br label %do.cond19, !dbg !280

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !280

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !280

if.end:                                           ; preds = %do.end20, %if.then
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !278
  %tobool22 = icmp ne i32 %4, 0, !dbg !278
  %lnot23 = xor i1 %tobool22, true, !dbg !278
  %lnot25 = xor i1 %lnot23, true, !dbg !278
  %lnot.ext26 = zext i1 %lnot25 to i32, !dbg !278
  %conv27 = sext i32 %lnot.ext26 to i64, !dbg !278
  %expval28 = call i64 @llvm.expect.i64(i64 %conv27, i64 0), !dbg !278
  store i64 %expval28, ptr %tmp21, align 8, !dbg !279
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !288
  %5 = load i64, ptr %tmp21, align 8, !dbg !278
  br label %return, !dbg !289

if.end29:                                         ; preds = %entry
  call void @static_key_enable(ptr noundef @arch_scale_freq_key) #13, !dbg !290
  call void @register_freq_invariance_syscore_ops() #13, !dbg !291
  br label %do.body30, !dbg !292

do.body30:                                        ; preds = %if.end29
  br label %do.end32, !dbg !294

do.end32:                                         ; preds = %do.body30
  %6 = load i64, ptr @arch_max_freq_ratio, align 8, !dbg !292
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i64 noundef %6) #15, !dbg !292
  store i32 %call34, ptr %tmp33, align 4, !dbg !294
  %7 = load i32, ptr %tmp33, align 4, !dbg !292
  br label %return, !dbg !296

return:                                           ; preds = %do.end32, %if.end
  ret void, !dbg !296
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_scale_freq_tick() #0 align 16 !dbg !86 {
entry:
  %s = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %acnt = alloca i64, align 8
  %mcnt = alloca i64, align 8
  %aperf = alloca i64, align 8
  %mperf = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !297
  call void @llvm.dbg.declare(metadata ptr %s, metadata !90, metadata !DIExpression()), !dbg !298
  br label %do.body, !dbg !299

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !91, metadata !DIExpression()), !dbg !300
  store ptr null, ptr %__vpp_verify, align 8, !dbg !300
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !299
  br label %do.cond, !dbg !300

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !300

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #14, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !96, metadata !DIExpression()), !dbg !301
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @cpu_samples) #16, !dbg !301, !srcloc !302
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !301
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !301
  %3 = inttoptr i64 %2 to ptr, !dbg !301
  store ptr %3, ptr %tmp1, align 8, !dbg !301
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #14, !dbg !299
  %4 = load ptr, ptr %tmp1, align 8, !dbg !301
  store ptr %4, ptr %tmp, align 8, !dbg !300
  %5 = load ptr, ptr %tmp, align 8, !dbg !299
  store ptr %5, ptr %s, align 8, !dbg !298
  call void @llvm.lifetime.start.p0(i64 8, ptr %acnt) #14, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %acnt, metadata !98, metadata !DIExpression()), !dbg !304
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcnt) #14, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %mcnt, metadata !99, metadata !DIExpression()), !dbg !305
  call void @llvm.lifetime.start.p0(i64 8, ptr %aperf) #14, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %aperf, metadata !100, metadata !DIExpression()), !dbg !306
  call void @llvm.lifetime.start.p0(i64 8, ptr %mperf) #14, !dbg !303
  call void @llvm.dbg.declare(metadata ptr %mperf, metadata !101, metadata !DIExpression()), !dbg !307
  br i1 false, label %cond.true, label %cond.false, !dbg !308

cond.true:                                        ; preds = %do.end
  br i1 false, label %if.end, label %if.then, !dbg !309

cond.false:                                       ; preds = %do.end
  br i1 false, label %cond.true2, label %cond.false5, !dbg !308

cond.true2:                                       ; preds = %cond.false
  br i1 false, label %cond.true3, label %cond.false4, !dbg !309

cond.true3:                                       ; preds = %cond.true2
  br i1 true, label %if.end, label %if.then, !dbg !309

cond.false4:                                      ; preds = %cond.true2
  %call = call zeroext i1 @arch_test_bit(i64 noundef 124, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !309
  br i1 %call, label %if.end, label %if.then, !dbg !309

cond.false5:                                      ; preds = %cond.false
  %call6 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 124) #13, !dbg !309
  br i1 %call6, label %if.end, label %if.then, !dbg !308

if.then:                                          ; preds = %cond.false5, %cond.false4, %cond.true3, %cond.true
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !311

if.end:                                           ; preds = %cond.false5, %cond.false4, %cond.true3, %cond.true
  %call7 = call i64 @native_read_msr(i32 noundef 232) #13, !dbg !312
  store i64 %call7, ptr %aperf, align 8, !dbg !312
  %call8 = call i64 @native_read_msr(i32 noundef 231) #13, !dbg !313
  store i64 %call8, ptr %mperf, align 8, !dbg !313
  %6 = load i64, ptr %aperf, align 8, !dbg !314
  %7 = load ptr, ptr %s, align 8, !dbg !315
  %aperf9 = getelementptr inbounds %struct.aperfmperf, ptr %7, i32 0, i32 4, !dbg !316
  %8 = load i64, ptr %aperf9, align 8, !dbg !316
  %sub = sub i64 %6, %8, !dbg !317
  store i64 %sub, ptr %acnt, align 8, !dbg !318
  %9 = load i64, ptr %mperf, align 8, !dbg !319
  %10 = load ptr, ptr %s, align 8, !dbg !320
  %mperf10 = getelementptr inbounds %struct.aperfmperf, ptr %10, i32 0, i32 5, !dbg !321
  %11 = load i64, ptr %mperf10, align 8, !dbg !321
  %sub11 = sub i64 %9, %11, !dbg !322
  store i64 %sub11, ptr %mcnt, align 8, !dbg !323
  %12 = load i64, ptr %aperf, align 8, !dbg !324
  %13 = load ptr, ptr %s, align 8, !dbg !325
  %aperf12 = getelementptr inbounds %struct.aperfmperf, ptr %13, i32 0, i32 4, !dbg !326
  store i64 %12, ptr %aperf12, align 8, !dbg !327
  %14 = load i64, ptr %mperf, align 8, !dbg !328
  %15 = load ptr, ptr %s, align 8, !dbg !329
  %mperf13 = getelementptr inbounds %struct.aperfmperf, ptr %15, i32 0, i32 5, !dbg !330
  store i64 %14, ptr %mperf13, align 8, !dbg !331
  br label %do.body14, !dbg !332

do.body14:                                        ; preds = %if.end
  %16 = load ptr, ptr %s, align 8, !dbg !333
  %seq = getelementptr inbounds %struct.aperfmperf, ptr %16, i32 0, i32 0, !dbg !333
  %call15 = call zeroext i1 @__seqprop_preemptible(ptr noundef %seq) #13, !dbg !333
  br i1 %call15, label %if.then16, label %if.end20, !dbg !336

if.then16:                                        ; preds = %do.body14
  br label %do.body17, !dbg !333

do.body17:                                        ; preds = %if.then16
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !337
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !337, !srcloc !339
  br label %do.cond18, !dbg !337

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !337

do.end19:                                         ; preds = %do.cond18
  br label %if.end20, !dbg !337

if.end20:                                         ; preds = %do.end19, %do.body14
  %17 = load ptr, ptr %s, align 8, !dbg !336
  %seq21 = getelementptr inbounds %struct.aperfmperf, ptr %17, i32 0, i32 0, !dbg !336
  %call22 = call ptr @__seqprop_ptr(ptr noundef %seq21) #13, !dbg !336
  call void @do_raw_write_seqcount_begin(ptr noundef %call22) #13, !dbg !336
  br label %do.cond23, !dbg !336

do.cond23:                                        ; preds = %if.end20
  br label %do.end24, !dbg !336

do.end24:                                         ; preds = %do.cond23
  %18 = load volatile i64, ptr @jiffies, align 64, !dbg !340
  %19 = load ptr, ptr %s, align 8, !dbg !341
  %last_update = getelementptr inbounds %struct.aperfmperf, ptr %19, i32 0, i32 1, !dbg !342
  store i64 %18, ptr %last_update, align 8, !dbg !343
  %20 = load i64, ptr %acnt, align 8, !dbg !344
  %21 = load ptr, ptr %s, align 8, !dbg !345
  %acnt25 = getelementptr inbounds %struct.aperfmperf, ptr %21, i32 0, i32 2, !dbg !346
  store i64 %20, ptr %acnt25, align 8, !dbg !347
  %22 = load i64, ptr %mcnt, align 8, !dbg !348
  %23 = load ptr, ptr %s, align 8, !dbg !349
  %mcnt26 = getelementptr inbounds %struct.aperfmperf, ptr %23, i32 0, i32 3, !dbg !350
  store i64 %22, ptr %mcnt26, align 8, !dbg !351
  br label %do.body27, !dbg !352

do.body27:                                        ; preds = %do.end24
  %24 = load ptr, ptr %s, align 8, !dbg !353
  %seq28 = getelementptr inbounds %struct.aperfmperf, ptr %24, i32 0, i32 0, !dbg !353
  %call29 = call ptr @__seqprop_ptr(ptr noundef %seq28) #13, !dbg !353
  call void @do_raw_write_seqcount_end(ptr noundef %call29) #13, !dbg !353
  %25 = load ptr, ptr %s, align 8, !dbg !355
  %seq30 = getelementptr inbounds %struct.aperfmperf, ptr %25, i32 0, i32 0, !dbg !355
  %call31 = call zeroext i1 @__seqprop_preemptible(ptr noundef %seq30) #13, !dbg !355
  br i1 %call31, label %if.then32, label %if.end43, !dbg !353

if.then32:                                        ; preds = %do.body27
  br label %do.body33, !dbg !355

do.body33:                                        ; preds = %if.then32
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !357, !srcloc !359
  %call34 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !360
  %lnot = xor i1 %call34, true, !dbg !360
  %lnot35 = xor i1 %lnot, true, !dbg !360
  %lnot.ext = zext i1 %lnot35 to i32, !dbg !360
  %conv = sext i32 %lnot.ext to i64, !dbg !360
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !360
  %tobool = icmp ne i64 %expval, 0, !dbg !360
  br i1 %tobool, label %if.then36, label %if.end40, !dbg !357

if.then36:                                        ; preds = %do.body33
  br label %do.body37, !dbg !360

do.body37:                                        ; preds = %if.then36
  %26 = call i64 @llvm.read_register.i64(metadata !222), !dbg !362
  %27 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %26) #14, !dbg !362, !srcloc !364
  call void @llvm.write_register.i64(metadata !222, i64 %27), !dbg !362
  br label %do.cond38, !dbg !362

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !362

do.end39:                                         ; preds = %do.cond38
  br label %if.end40, !dbg !362

if.end40:                                         ; preds = %do.end39, %do.body33
  br label %do.cond41, !dbg !357

do.cond41:                                        ; preds = %if.end40
  br label %do.end42, !dbg !357

do.end42:                                         ; preds = %do.cond41
  br label %if.end43, !dbg !357

if.end43:                                         ; preds = %do.end42, %do.body27
  br label %do.cond44, !dbg !353

do.cond44:                                        ; preds = %if.end43
  br label %do.end45, !dbg !353

do.end45:                                         ; preds = %do.cond44
  %28 = load i64, ptr %acnt, align 8, !dbg !365
  %29 = load i64, ptr %mcnt, align 8, !dbg !366
  call void @scale_freq_tick(i64 noundef %28, i64 noundef %29) #13, !dbg !367
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !368
  br label %cleanup, !dbg !368

cleanup:                                          ; preds = %do.end45, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %mperf) #14, !dbg !368
  call void @llvm.lifetime.end.p0(i64 8, ptr %aperf) #14, !dbg !368
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcnt) #14, !dbg !368
  call void @llvm.lifetime.end.p0(i64 8, ptr %acnt) #14, !dbg !368
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !368
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !368

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !369 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !377, metadata !DIExpression()), !dbg !379
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !378, metadata !DIExpression()), !dbg !380
  %0 = load i64, ptr %nr.addr, align 8, !dbg !381
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !382
  br i1 %1, label %cond.true, label %cond.false, !dbg !382

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !383
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !384
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !385
  %conv = zext i1 %call to i32, !dbg !385
  br label %cond.end, !dbg !382

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !386
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !387
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !388
  %conv2 = zext i1 %call1 to i32, !dbg !388
  br label %cond.end, !dbg !382

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !382
  %tobool = icmp ne i32 %cond, 0, !dbg !382
  ret i1 %tobool, !dbg !389
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #3 align 16 !dbg !390 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !396, metadata !DIExpression()), !dbg !399
  %0 = load i16, ptr %bit.addr, align 2, !dbg !400
  %1 = load i16, ptr %bit.addr, align 2, !dbg !401
  %conv = zext i16 %1 to i32, !dbg !401
  %and = and i32 %conv, 7, !dbg !402
  %shl = shl i32 1, %and, !dbg !403
  %2 = load i16, ptr %bit.addr, align 2, !dbg !404
  %conv1 = zext i16 %2 to i32, !dbg !404
  %shr = ashr i32 %conv1, 3, !dbg !405
  %idxprom = sext i32 %shr to i64, !dbg !406
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !406
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #14
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !407, !srcloc !408

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !407

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !397), !dbg !409
  store i1 true, ptr %retval, align 1, !dbg !410
  br label %return, !dbg !410

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !398), !dbg !411
  store i1 false, ptr %retval, align 1, !dbg !412
  br label %return, !dbg !412

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !413
  ret i1 %3, !dbg !413
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #4 align 16 !dbg !414 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !419, metadata !DIExpression()), !dbg !421
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !422
  call void @llvm.dbg.declare(metadata ptr %val, metadata !420, metadata !DIExpression()), !dbg !423
  %0 = load i32, ptr %msr.addr, align 4, !dbg !424
  %call = call i64 @__rdmsr(i32 noundef %0) #13, !dbg !425
  store i64 %call, ptr %val, align 8, !dbg !426
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #13, !dbg !427
  br i1 %call1, label %if.then, label %if.end, !dbg !429

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !430
  %2 = load i64, ptr %val, align 8, !dbg !431
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #13, !dbg !432
  br label %if.end, !dbg !432

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !433
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !434
  ret i64 %3, !dbg !435
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__seqprop_preemptible(ptr noundef %s) #4 align 16 !dbg !436 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !442, metadata !DIExpression()), !dbg !443
  ret i1 false, !dbg !444
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #3 align 16 !dbg !445 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !450, metadata !DIExpression()), !dbg !458
  br label %do.body, !dbg !459

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #14, !dbg !460
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !451, metadata !DIExpression()), !dbg !460
  %0 = load i32, ptr %val.addr, align 4, !dbg !460
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !460
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !460

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !460
  %cmp = icmp eq i32 %2, 1, !dbg !460
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !460

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !460
  %cmp1 = icmp eq i32 %3, -1, !dbg !460
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !460

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !460
  br label %cond.end, !dbg !460

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !460

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !460
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !460
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !461
  %cmp2 = icmp eq i32 %5, 1, !dbg !461
  br i1 %cmp2, label %if.then, label %if.else, !dbg !460

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !462, !srcloc !464
  br label %if.end8, !dbg !461

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !465
  %cmp3 = icmp eq i32 %6, -1, !dbg !465
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !461

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !466, !srcloc !468
  br label %if.end, !dbg !465

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !465

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #14, !dbg !469
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !454, metadata !DIExpression()), !dbg !469
  %7 = load i32, ptr %val.addr, align 4, !dbg !469
  %conv = sext i32 %7 to i64, !dbg !469
  %and = and i64 %conv, 4294967295, !dbg !469
  %conv7 = trunc i64 %and to i32, !dbg !469
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !469
  %8 = load i32, ptr %pto_val__, align 4, !dbg !469
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !469, !srcloc !470
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #14, !dbg !465
  br label %do.cond, !dbg !469

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !469

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #14, !dbg !459
  br label %do.end10, !dbg !460

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !471
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_write_seqcount_begin(ptr noundef %s) #4 align 16 !dbg !472 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !477, metadata !DIExpression()), !dbg !478
  call void @kcsan_nestable_atomic_begin() #13, !dbg !479
  %0 = load ptr, ptr %s.addr, align 8, !dbg !480
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !481
  %1 = load i32, ptr %sequence, align 4, !dbg !482
  %inc = add i32 %1, 1, !dbg !482
  store i32 %inc, ptr %sequence, align 4, !dbg !482
  br label %do.body, !dbg !483

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !484

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !486

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !484, !srcloc !488
  br label %do.end2, !dbg !484

do.end2:                                          ; preds = %do.end
  ret void, !dbg !489
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__seqprop_ptr(ptr noundef %s) #4 align 16 !dbg !490 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load ptr, ptr %s.addr, align 8, !dbg !496
  ret ptr %0, !dbg !497
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_write_seqcount_end(ptr noundef %s) #4 align 16 !dbg !498 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !500, metadata !DIExpression()), !dbg !501
  br label %do.body, !dbg !502

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !503

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !505

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !503, !srcloc !507
  br label %do.end2, !dbg !503

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %s.addr, align 8, !dbg !508
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !509
  %1 = load i32, ptr %sequence, align 4, !dbg !510
  %inc = add i32 %1, 1, !dbg !510
  store i32 %inc, ptr %sequence, align 4, !dbg !510
  call void @kcsan_nestable_atomic_end() #13, !dbg !511
  ret void, !dbg !512
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #3 align 16 !dbg !513 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #14, !dbg !519
  call void @llvm.dbg.declare(metadata ptr %c, metadata !517, metadata !DIExpression()), !dbg !519
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !519, !srcloc !520
  %1 = icmp ult i8 %0, 2, !dbg !519
  call void @llvm.assume(i1 %1), !dbg !519
  store i8 %0, ptr %c, align 1, !dbg !519
  %2 = load i8, ptr %c, align 1, !dbg !519, !range !241, !noundef !242
  %tobool = trunc i8 %2 to i1, !dbg !519
  %frombool = zext i1 %tobool to i8, !dbg !519
  store i8 %frombool, ptr %tmp, align 1, !dbg !519
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #14, !dbg !521
  %3 = load i8, ptr %tmp, align 1, !dbg !519, !range !241, !noundef !242
  %tobool1 = trunc i8 %3 to i1, !dbg !519
  ret i1 %tobool1, !dbg !522
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @scale_freq_tick(i64 noundef %acnt, i64 noundef %mcnt) #0 align 16 !dbg !523 {
entry:
  %acnt.addr = alloca i64, align 8
  %mcnt.addr = alloca i64, align 8
  %freq_scale = alloca i64, align 8
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %_a = alloca i64, align 8
  %_s = alloca i32, align 4
  %_d = alloca ptr, align 8
  %_a_full = alloca i64, align 8
  %_to_shift = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  %tmp55 = alloca i32, align 4
  store i64 %acnt, ptr %acnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %acnt.addr, metadata !527, metadata !DIExpression()), !dbg !546
  store i64 %mcnt, ptr %mcnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mcnt.addr, metadata !528, metadata !DIExpression()), !dbg !547
  call void @llvm.lifetime.start.p0(i64 8, ptr %freq_scale) #14, !dbg !548
  call void @llvm.dbg.declare(metadata ptr %freq_scale, metadata !529, metadata !DIExpression()), !dbg !549
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #14, !dbg !550
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !530, metadata !DIExpression()), !dbg !550
  %call = call zeroext i1 @arch_static_branch_jump(ptr noundef @arch_scale_freq_key, i1 noundef zeroext true) #13, !dbg !551
  %lnot = xor i1 %call, true, !dbg !551
  %frombool = zext i1 %lnot to i8, !dbg !551
  store i8 %frombool, ptr %branch, align 1, !dbg !551
  %0 = load i8, ptr %branch, align 1, !dbg !550, !range !241, !noundef !242
  %tobool = trunc i8 %0 to i1, !dbg !550
  %lnot1 = xor i1 %tobool, true, !dbg !550
  %lnot2 = xor i1 %lnot1, true, !dbg !550
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !550
  %conv = sext i32 %lnot.ext to i64, !dbg !550
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !550
  store i64 %expval, ptr %tmp, align 8, !dbg !554
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #14, !dbg !555
  %1 = load i64, ptr %tmp, align 8, !dbg !550
  %tobool3 = icmp ne i64 %1, 0, !dbg !555
  br i1 %tobool3, label %if.end, label %if.then, !dbg !556

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !557

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %_a) #14, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %_a, metadata !533, metadata !DIExpression()), !dbg !558
  %2 = load i64, ptr %acnt.addr, align 8, !dbg !558
  store i64 %2, ptr %_a, align 8, !dbg !558
  call void @llvm.lifetime.start.p0(i64 4, ptr %_s) #14, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %_s, metadata !536, metadata !DIExpression()), !dbg !558
  store i32 20, ptr %_s, align 4, !dbg !558
  call void @llvm.lifetime.start.p0(i64 8, ptr %_d) #14, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %_d, metadata !537, metadata !DIExpression()), !dbg !558
  store ptr %acnt.addr, ptr %_d, align 8, !dbg !558
  call void @llvm.lifetime.start.p0(i64 8, ptr %_a_full) #14, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %_a_full, metadata !538, metadata !DIExpression()), !dbg !558
  %3 = load i64, ptr %_a, align 8, !dbg !558
  store i64 %3, ptr %_a_full, align 8, !dbg !558
  call void @llvm.lifetime.start.p0(i64 4, ptr %_to_shift) #14, !dbg !558
  call void @llvm.dbg.declare(metadata ptr %_to_shift, metadata !539, metadata !DIExpression()), !dbg !558
  %4 = load i32, ptr %_s, align 4, !dbg !558
  %cmp = icmp sgt i32 %4, 0, !dbg !558
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !558

lor.lhs.false:                                    ; preds = %if.end
  %5 = load i32, ptr %_s, align 4, !dbg !558
  %cmp5 = icmp eq i32 %5, 0, !dbg !558
  br i1 %cmp5, label %land.lhs.true, label %cond.false, !dbg !558

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %6 = load i32, ptr %_s, align 4, !dbg !558
  %conv7 = sext i32 %6 to i64, !dbg !558
  %cmp8 = icmp ult i64 %conv7, 64, !dbg !558
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !558

cond.true:                                        ; preds = %land.lhs.true
  %7 = load i32, ptr %_s, align 4, !dbg !558
  br label %cond.end, !dbg !558

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  br label %cond.end, !dbg !558

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ 0, %cond.false ], !dbg !558
  store i32 %cond, ptr %_to_shift, align 4, !dbg !558
  %8 = load i64, ptr %_a_full, align 8, !dbg !558
  %9 = load i32, ptr %_to_shift, align 4, !dbg !558
  %sh_prom = zext i32 %9 to i64, !dbg !558
  %shl = shl i64 %8, %sh_prom, !dbg !558
  %10 = load ptr, ptr %_d, align 8, !dbg !558
  store i64 %shl, ptr %10, align 8, !dbg !558
  %11 = load i32, ptr %_to_shift, align 4, !dbg !558
  %12 = load i32, ptr %_s, align 4, !dbg !558
  %cmp11 = icmp ne i32 %11, %12, !dbg !558
  br i1 %cmp11, label %lor.end, label %lor.lhs.false13, !dbg !558

lor.lhs.false13:                                  ; preds = %cond.end
  %13 = load ptr, ptr %_d, align 8, !dbg !558
  %14 = load i64, ptr %13, align 8, !dbg !558
  %cmp14 = icmp ugt i64 %14, 0, !dbg !558
  br i1 %cmp14, label %lor.lhs.false19, label %lor.lhs.false16, !dbg !558

lor.lhs.false16:                                  ; preds = %lor.lhs.false13
  %15 = load ptr, ptr %_d, align 8, !dbg !558
  %16 = load i64, ptr %15, align 8, !dbg !558
  %cmp17 = icmp eq i64 %16, 0, !dbg !558
  br i1 %cmp17, label %lor.lhs.false19, label %lor.end, !dbg !558

lor.lhs.false19:                                  ; preds = %lor.lhs.false16, %lor.lhs.false13
  %17 = load i64, ptr %_a, align 8, !dbg !558
  %cmp20 = icmp ugt i64 %17, 0, !dbg !558
  br i1 %cmp20, label %lor.rhs, label %lor.lhs.false22, !dbg !558

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %18 = load i64, ptr %_a, align 8, !dbg !558
  %cmp23 = icmp eq i64 %18, 0, !dbg !558
  br i1 %cmp23, label %lor.rhs, label %lor.end, !dbg !558

lor.rhs:                                          ; preds = %lor.lhs.false22, %lor.lhs.false19
  %19 = load ptr, ptr %_d, align 8, !dbg !558
  %20 = load i64, ptr %19, align 8, !dbg !558
  %21 = load i32, ptr %_to_shift, align 4, !dbg !558
  %sh_prom25 = zext i32 %21 to i64, !dbg !558
  %shr = lshr i64 %20, %sh_prom25, !dbg !558
  %22 = load i64, ptr %_a, align 8, !dbg !558
  %cmp26 = icmp ne i64 %shr, %22, !dbg !558
  br label %lor.end, !dbg !558

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false22, %lor.lhs.false16, %cond.end
  %23 = phi i1 [ true, %lor.lhs.false22 ], [ true, %lor.lhs.false16 ], [ true, %cond.end ], [ %cmp26, %lor.rhs ]
  %lor.ext = zext i1 %23 to i32, !dbg !558
  store i32 %lor.ext, ptr %tmp10, align 4, !dbg !558
  call void @llvm.lifetime.end.p0(i64 4, ptr %_to_shift) #14, !dbg !559
  call void @llvm.lifetime.end.p0(i64 8, ptr %_a_full) #14, !dbg !559
  call void @llvm.lifetime.end.p0(i64 8, ptr %_d) #14, !dbg !559
  call void @llvm.lifetime.end.p0(i64 4, ptr %_s) #14, !dbg !559
  call void @llvm.lifetime.end.p0(i64 8, ptr %_a) #14, !dbg !559
  %24 = load i32, ptr %tmp10, align 4, !dbg !558
  %tobool28 = icmp ne i32 %24, 0, !dbg !559
  %call29 = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %tobool28) #13, !dbg !559
  br i1 %call29, label %if.then30, label %if.end31, !dbg !560

if.then30:                                        ; preds = %lor.end
  br label %error, !dbg !561

if.end31:                                         ; preds = %lor.end
  %25 = load i64, ptr %mcnt.addr, align 8, !dbg !562
  %26 = load i64, ptr @arch_max_freq_ratio, align 8, !dbg !562
  %27 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %25, i64 %26), !dbg !562
  %28 = extractvalue { i64, i1 } %27, 1, !dbg !562
  %29 = extractvalue { i64, i1 } %27, 0, !dbg !562
  store i64 %29, ptr %mcnt.addr, align 8, !dbg !562
  %call32 = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %28) #13, !dbg !562
  br i1 %call32, label %if.then36, label %lor.lhs.false34, !dbg !564

lor.lhs.false34:                                  ; preds = %if.end31
  %30 = load i64, ptr %mcnt.addr, align 8, !dbg !565
  %tobool35 = icmp ne i64 %30, 0, !dbg !565
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !566

if.then36:                                        ; preds = %lor.lhs.false34, %if.end31
  br label %error, !dbg !567

if.end37:                                         ; preds = %lor.lhs.false34
  %31 = load i64, ptr %acnt.addr, align 8, !dbg !568
  %32 = load i64, ptr %mcnt.addr, align 8, !dbg !569
  %call38 = call i64 @div64_u64(i64 noundef %31, i64 noundef %32) #13, !dbg !570
  store i64 %call38, ptr %freq_scale, align 8, !dbg !571
  %33 = load i64, ptr %freq_scale, align 8, !dbg !572
  %tobool39 = icmp ne i64 %33, 0, !dbg !572
  br i1 %tobool39, label %if.end41, label %if.then40, !dbg !574

if.then40:                                        ; preds = %if.end37
  br label %error, !dbg !575

if.end41:                                         ; preds = %if.end37
  %34 = load i64, ptr %freq_scale, align 8, !dbg !576
  %cmp42 = icmp ugt i64 %34, 1024, !dbg !578
  br i1 %cmp42, label %if.then44, label %if.end45, !dbg !579

if.then44:                                        ; preds = %if.end41
  store i64 1024, ptr %freq_scale, align 8, !dbg !580
  br label %if.end45, !dbg !581

if.end45:                                         ; preds = %if.then44, %if.end41
  br label %do.body, !dbg !582

do.body:                                          ; preds = %if.end45
  br label %do.body46, !dbg !583

do.body46:                                        ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !540, metadata !DIExpression()), !dbg !584
  store ptr null, ptr %__vpp_verify, align 8, !dbg !584
  %35 = load ptr, ptr %__vpp_verify, align 8, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !583
  br label %do.cond, !dbg !584

do.cond:                                          ; preds = %do.body46
  br label %do.end, !dbg !584

do.end:                                           ; preds = %do.cond
  br label %do.body47, !dbg !583

do.body47:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #14, !dbg !585
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !543, metadata !DIExpression()), !dbg !585
  %36 = load i64, ptr %freq_scale, align 8, !dbg !585
  store i64 %36, ptr %pto_val__, align 8, !dbg !585
  %37 = load i64, ptr %pto_val__, align 8, !dbg !585
  call void asm sideeffect "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @arch_freq_scale, i64 %37, ptr elementtype(i64) @arch_freq_scale) #14, !dbg !585, !srcloc !586
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #14, !dbg !583
  br label %do.cond48, !dbg !585

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !585

do.end49:                                         ; preds = %do.cond48
  br label %do.cond50, !dbg !583

do.cond50:                                        ; preds = %do.end49
  br label %do.end51, !dbg !583

do.end51:                                         ; preds = %do.cond50
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !587

error:                                            ; preds = %if.then40, %if.then36, %if.then30
  call void @llvm.dbg.label(metadata !545), !dbg !588
  br label %do.body52, !dbg !589

do.body52:                                        ; preds = %error
  br label %do.cond53, !dbg !591

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !591

do.end54:                                         ; preds = %do.cond53
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #15, !dbg !589
  store i32 %call56, ptr %tmp55, align 4, !dbg !591
  %38 = load i32, ptr %tmp55, align 4, !dbg !589
  %call57 = call zeroext i1 @schedule_work(ptr noundef @disable_freq_invariance_work) #13, !dbg !593
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !594
  br label %cleanup, !dbg !594

cleanup:                                          ; preds = %do.end54, %do.end51, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %freq_scale) #14, !dbg !594
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !594

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @arch_freq_get_on_cpu(i32 noundef %cpu) #0 align 16 !dbg !595 {
entry:
  %retval = alloca i32, align 4
  %cpu.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %seq = alloca i32, align 4
  %freq = alloca i32, align 4
  %last = alloca i64, align 8
  %acnt = alloca i64, align 8
  %mcnt = alloca i64, align 8
  %_seq = alloca i32, align 4
  %__seq = alloca i32, align 4
  %tmp10 = alloca i32, align 4
  %tmp23 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !599, metadata !DIExpression()), !dbg !617
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #14, !dbg !618
  call void @llvm.dbg.declare(metadata ptr %s, metadata !600, metadata !DIExpression()), !dbg !619
  br label %do.body, !dbg !620

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !621
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !601, metadata !DIExpression()), !dbg !621
  store ptr null, ptr %__vpp_verify, align 8, !dbg !621
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !621
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !620
  br label %do.cond, !dbg !621

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !621

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !622
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !604, metadata !DIExpression()), !dbg !622
  store i64 ptrtoint (ptr @cpu_samples to i64), ptr %__ptr, align 8, !dbg !622
  %1 = load i64, ptr %__ptr, align 8, !dbg !622
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !622
  %idxprom = sext i32 %2 to i64, !dbg !622
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !622
  %3 = load i64, ptr %arrayidx, align 8, !dbg !622
  %add = add i64 %1, %3, !dbg !622
  %4 = inttoptr i64 %add to ptr, !dbg !622
  store ptr %4, ptr %tmp1, align 8, !dbg !622
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !620
  %5 = load ptr, ptr %tmp1, align 8, !dbg !622
  store ptr %5, ptr %tmp, align 8, !dbg !621
  %6 = load ptr, ptr %tmp, align 8, !dbg !620
  store ptr %6, ptr %s, align 8, !dbg !619
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #14, !dbg !623
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !606, metadata !DIExpression()), !dbg !624
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #14, !dbg !623
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !607, metadata !DIExpression()), !dbg !625
  call void @llvm.lifetime.start.p0(i64 8, ptr %last) #14, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %last, metadata !608, metadata !DIExpression()), !dbg !627
  call void @llvm.lifetime.start.p0(i64 8, ptr %acnt) #14, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %acnt, metadata !609, metadata !DIExpression()), !dbg !629
  call void @llvm.lifetime.start.p0(i64 8, ptr %mcnt) #14, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %mcnt, metadata !610, metadata !DIExpression()), !dbg !630
  br i1 false, label %cond.true, label %cond.false, !dbg !631

cond.true:                                        ; preds = %do.end
  br i1 false, label %if.end, label %if.then, !dbg !632

cond.false:                                       ; preds = %do.end
  br i1 false, label %cond.true2, label %cond.false5, !dbg !631

cond.true2:                                       ; preds = %cond.false
  br i1 false, label %cond.true3, label %cond.false4, !dbg !632

cond.true3:                                       ; preds = %cond.true2
  br i1 true, label %if.end, label %if.then, !dbg !632

cond.false4:                                      ; preds = %cond.true2
  %call = call zeroext i1 @arch_test_bit(i64 noundef 124, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !632
  br i1 %call, label %if.end, label %if.then, !dbg !632

cond.false5:                                      ; preds = %cond.false
  %call6 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 124) #13, !dbg !632
  br i1 %call6, label %if.end, label %if.then, !dbg !631

if.then:                                          ; preds = %cond.false5, %cond.false4, %cond.true3, %cond.true
  br label %fallback, !dbg !634

if.end:                                           ; preds = %cond.false5, %cond.false4, %cond.true3, %cond.true
  br label %do.body7, !dbg !635

do.body7:                                         ; preds = %do.cond26, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %_seq) #14, !dbg !636
  call void @llvm.dbg.declare(metadata ptr %_seq, metadata !611, metadata !DIExpression()), !dbg !636
  call void @llvm.lifetime.start.p0(i64 4, ptr %__seq) #14, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %__seq, metadata !614, metadata !DIExpression()), !dbg !637
  br label %while.cond, !dbg !637

while.cond:                                       ; preds = %while.body, %do.body7
  %7 = load ptr, ptr %s, align 8, !dbg !637
  %seq8 = getelementptr inbounds %struct.aperfmperf, ptr %7, i32 0, i32 0, !dbg !637
  %call9 = call i32 @__seqprop_sequence(ptr noundef %seq8) #13, !dbg !637
  store i32 %call9, ptr %__seq, align 4, !dbg !637
  %and = and i32 %call9, 1, !dbg !637
  %tobool = icmp ne i32 %and, 0, !dbg !637
  br i1 %tobool, label %while.body, label %while.end, !dbg !637

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #13, !dbg !637
  br label %while.cond, !dbg !637, !llvm.loop !638

while.end:                                        ; preds = %while.cond
  call void @kcsan_atomic_next(i32 noundef 1000) #13, !dbg !637
  %8 = load i32, ptr %__seq, align 4, !dbg !637
  store i32 %8, ptr %tmp10, align 4, !dbg !637
  call void @llvm.lifetime.end.p0(i64 4, ptr %__seq) #14, !dbg !636
  %9 = load i32, ptr %tmp10, align 4, !dbg !637
  store i32 %9, ptr %_seq, align 4, !dbg !636
  br label %do.body11, !dbg !636

do.body11:                                        ; preds = %while.end
  br label %do.body12, !dbg !641

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !643

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !643

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !641

do.body15:                                        ; preds = %do.end14
  br label %do.body16, !dbg !645

do.body16:                                        ; preds = %do.body15
  br label %do.cond17, !dbg !647

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !647

do.end18:                                         ; preds = %do.cond17
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !645, !srcloc !649
  br label %do.cond19, !dbg !645

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !645

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !641

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !641

do.end22:                                         ; preds = %do.cond21
  %10 = load i32, ptr %_seq, align 4, !dbg !636
  store i32 %10, ptr %tmp23, align 4, !dbg !641
  call void @llvm.lifetime.end.p0(i64 4, ptr %_seq) #14, !dbg !650
  %11 = load i32, ptr %tmp23, align 4, !dbg !636
  store i32 %11, ptr %seq, align 4, !dbg !651
  %12 = load ptr, ptr %s, align 8, !dbg !652
  %last_update = getelementptr inbounds %struct.aperfmperf, ptr %12, i32 0, i32 1, !dbg !653
  %13 = load i64, ptr %last_update, align 8, !dbg !653
  store i64 %13, ptr %last, align 8, !dbg !654
  %14 = load ptr, ptr %s, align 8, !dbg !655
  %acnt24 = getelementptr inbounds %struct.aperfmperf, ptr %14, i32 0, i32 2, !dbg !656
  %15 = load i64, ptr %acnt24, align 8, !dbg !656
  store i64 %15, ptr %acnt, align 8, !dbg !657
  %16 = load ptr, ptr %s, align 8, !dbg !658
  %mcnt25 = getelementptr inbounds %struct.aperfmperf, ptr %16, i32 0, i32 3, !dbg !659
  %17 = load i64, ptr %mcnt25, align 8, !dbg !659
  store i64 %17, ptr %mcnt, align 8, !dbg !660
  br label %do.cond26, !dbg !661

do.cond26:                                        ; preds = %do.end22
  %18 = load ptr, ptr %s, align 8, !dbg !662
  %seq27 = getelementptr inbounds %struct.aperfmperf, ptr %18, i32 0, i32 0, !dbg !662
  %call28 = call ptr @__seqprop_ptr(ptr noundef %seq27) #13, !dbg !662
  %19 = load i32, ptr %seq, align 4, !dbg !662
  %call29 = call i32 @do_read_seqcount_retry(ptr noundef %call28, i32 noundef %19) #13, !dbg !662
  %tobool30 = icmp ne i32 %call29, 0, !dbg !661
  br i1 %tobool30, label %do.body7, label %do.end31, !dbg !661, !llvm.loop !663

do.end31:                                         ; preds = %do.cond26
  %20 = load i64, ptr %mcnt, align 8, !dbg !665
  %tobool32 = icmp ne i64 %20, 0, !dbg !665
  br i1 %tobool32, label %lor.lhs.false, label %if.then33, !dbg !667

lor.lhs.false:                                    ; preds = %do.end31
  %21 = load volatile i64, ptr @jiffies, align 64, !dbg !668
  %22 = load i64, ptr %last, align 8, !dbg !669
  %sub = sub i64 %21, %22, !dbg !670
  %cmp = icmp ugt i64 %sub, 20, !dbg !671
  br i1 %cmp, label %if.then33, label %if.end34, !dbg !672

if.then33:                                        ; preds = %lor.lhs.false, %do.end31
  br label %fallback, !dbg !673

if.end34:                                         ; preds = %lor.lhs.false
  %23 = load i32, ptr @cpu_khz, align 4, !dbg !674
  %conv = zext i32 %23 to i64, !dbg !674
  %24 = load i64, ptr %acnt, align 8, !dbg !675
  %mul = mul i64 %conv, %24, !dbg !676
  %25 = load i64, ptr %mcnt, align 8, !dbg !677
  %call35 = call i64 @div64_u64(i64 noundef %mul, i64 noundef %25) #13, !dbg !678
  %conv36 = trunc i64 %call35 to i32, !dbg !678
  store i32 %conv36, ptr %retval, align 4, !dbg !679
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !679

fallback:                                         ; preds = %if.then33, %if.then
  call void @llvm.dbg.label(metadata !616), !dbg !680
  %26 = load i32, ptr %cpu.addr, align 4, !dbg !681
  %call37 = call i32 @cpufreq_quick_get(i32 noundef %26) #13, !dbg !682
  store i32 %call37, ptr %freq, align 4, !dbg !683
  %27 = load i32, ptr %freq, align 4, !dbg !684
  %tobool38 = icmp ne i32 %27, 0, !dbg !684
  br i1 %tobool38, label %cond.true39, label %cond.false40, !dbg !684

cond.true39:                                      ; preds = %fallback
  %28 = load i32, ptr %freq, align 4, !dbg !685
  br label %cond.end, !dbg !684

cond.false40:                                     ; preds = %fallback
  %29 = load i32, ptr @cpu_khz, align 4, !dbg !686
  br label %cond.end, !dbg !684

cond.end:                                         ; preds = %cond.false40, %cond.true39
  %cond = phi i32 [ %28, %cond.true39 ], [ %29, %cond.false40 ], !dbg !684
  store i32 %cond, ptr %retval, align 4, !dbg !687
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !687

cleanup:                                          ; preds = %cond.end, %if.end34
  call void @llvm.lifetime.end.p0(i64 8, ptr %mcnt) #14, !dbg !688
  call void @llvm.lifetime.end.p0(i64 8, ptr %acnt) #14, !dbg !688
  call void @llvm.lifetime.end.p0(i64 8, ptr %last) #14, !dbg !688
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #14, !dbg !688
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #14, !dbg !688
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #14, !dbg !688
  %30 = load i32, ptr %retval, align 4, !dbg !688
  ret i32 %30, !dbg !688
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__seqprop_sequence(ptr noundef %s) #4 align 16 !dbg !689 {
entry:
  %s.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !693, metadata !DIExpression()), !dbg !694
  br label %do.body, !dbg !695

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !697

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !695
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !695
  %1 = load volatile i32, ptr %sequence, align 4, !dbg !695
  store i32 %1, ptr %tmp, align 4, !dbg !697
  %2 = load i32, ptr %tmp, align 4, !dbg !695
  ret i32 %2, !dbg !699
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #3 align 16 !dbg !700 {
entry:
  call void @rep_nop() #13, !dbg !702
  ret void, !dbg !703
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_atomic_next(i32 noundef %n) #4 align 16 !dbg !704 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !707, metadata !DIExpression()), !dbg !708
  ret void, !dbg !709
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_read_seqcount_retry(ptr noundef %s, i32 noundef %start) #4 align 16 !dbg !710 {
entry:
  %s.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !714, metadata !DIExpression()), !dbg !716
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !715, metadata !DIExpression()), !dbg !717
  br label %do.body, !dbg !718

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !719

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !721

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !719

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !723

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !725

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !723, !srcloc !727
  br label %do.end5, !dbg !723

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !719

do.end6:                                          ; preds = %do.end5
  %0 = load ptr, ptr %s.addr, align 8, !dbg !728
  %1 = load i32, ptr %start.addr, align 4, !dbg !729
  %call = call i32 @do___read_seqcount_retry(ptr noundef %0, i32 noundef %1) #13, !dbg !730
  ret i32 %call, !dbg !731
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div64_u64(i64 noundef %dividend, i64 noundef %divisor) #4 align 16 !dbg !732 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i64, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !737, metadata !DIExpression()), !dbg !739
  store i64 %divisor, ptr %divisor.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !738, metadata !DIExpression()), !dbg !740
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !741
  %1 = load i64, ptr %divisor.addr, align 8, !dbg !742
  %div = udiv i64 %0, %1, !dbg !743
  ret i64 %div, !dbg !744
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !745 dso_local i32 @cpufreq_quick_get(i32 noundef) #8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_aperfmperf__226_454_bp_init_aperfmperfearly() #9 section ".init.text" align 16 !dbg !749 {
entry:
  %call = call i32 @bp_init_aperfmperf() #15, !dbg !750
  ret i32 %call, !dbg !750
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @bp_init_aperfmperf() #9 section ".init.text" align 16 !dbg !751 {
entry:
  %retval = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !752

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !753

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !752

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !753

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !753

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 124, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !753
  br i1 %call, label %if.end, label %if.then, !dbg !753

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 124) #13, !dbg !753
  br i1 %call5, label %if.end, label %if.then, !dbg !752

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !755
  br label %return, !dbg !755

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @init_counter_refs() #13, !dbg !756
  call void @bp_init_freq_invariance() #15, !dbg !757
  store i32 0, ptr %retval, align 4, !dbg !758
  br label %return, !dbg !758

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, ptr %retval, align 4, !dbg !759
  ret i32 %0, !dbg !759
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ap_init_aperfmperf() #0 align 16 !dbg !760 {
entry:
  br i1 false, label %cond.true, label %cond.false, !dbg !761

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end, !dbg !762

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !761

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !762

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then, label %if.end, !dbg !762

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 124, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !762
  br i1 %call, label %if.then, label %if.end, !dbg !762

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 124) #13, !dbg !762
  br i1 %call5, label %if.then, label %if.end, !dbg !761

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @init_counter_refs() #13, !dbg !764
  br label %if.end, !dbg !764

if.end:                                           ; preds = %if.then, %cond.false4, %cond.false3, %cond.true2, %cond.true
  ret void, !dbg !765
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_counter_refs() #0 align 16 !dbg !766 {
entry:
  %aperf = alloca i64, align 8
  %mperf = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  %__vpp_verify10 = alloca ptr, align 8
  %pto_val__14 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %aperf) #14, !dbg !780
  call void @llvm.dbg.declare(metadata ptr %aperf, metadata !768, metadata !DIExpression()), !dbg !781
  call void @llvm.lifetime.start.p0(i64 8, ptr %mperf) #14, !dbg !780
  call void @llvm.dbg.declare(metadata ptr %mperf, metadata !769, metadata !DIExpression()), !dbg !782
  %call = call i64 @native_read_msr(i32 noundef 232) #13, !dbg !783
  store i64 %call, ptr %aperf, align 8, !dbg !783
  %call1 = call i64 @native_read_msr(i32 noundef 231) #13, !dbg !784
  store i64 %call1, ptr %mperf, align 8, !dbg !784
  br label %do.body, !dbg !785

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !786

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !787
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !770, metadata !DIExpression()), !dbg !787
  store ptr null, ptr %__vpp_verify, align 8, !dbg !787
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !787
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !786
  br label %do.cond, !dbg !787

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !787

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !786

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #14, !dbg !788
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !773, metadata !DIExpression()), !dbg !788
  %1 = load i64, ptr %aperf, align 8, !dbg !788
  store i64 %1, ptr %pto_val__, align 8, !dbg !788
  %2 = load i64, ptr %pto_val__, align 8, !dbg !788
  call void asm sideeffect "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) getelementptr inbounds (%struct.aperfmperf, ptr @cpu_samples, i32 0, i32 4), i64 %2, ptr elementtype(i64) getelementptr inbounds (%struct.aperfmperf, ptr @cpu_samples, i32 0, i32 4)) #14, !dbg !788, !srcloc !789
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #14, !dbg !786
  br label %do.cond4, !dbg !788

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !788

do.end5:                                          ; preds = %do.cond4
  br label %do.cond6, !dbg !786

do.cond6:                                         ; preds = %do.end5
  br label %do.end7, !dbg !786

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !790

do.body8:                                         ; preds = %do.end7
  br label %do.body9, !dbg !791

do.body9:                                         ; preds = %do.body8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify10) #14, !dbg !792
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify10, metadata !775, metadata !DIExpression()), !dbg !792
  store ptr null, ptr %__vpp_verify10, align 8, !dbg !792
  %3 = load ptr, ptr %__vpp_verify10, align 8, !dbg !792
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify10) #14, !dbg !791
  br label %do.cond11, !dbg !792

do.cond11:                                        ; preds = %do.body9
  br label %do.end12, !dbg !792

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !791

do.body13:                                        ; preds = %do.end12
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__14) #14, !dbg !793
  call void @llvm.dbg.declare(metadata ptr %pto_val__14, metadata !778, metadata !DIExpression()), !dbg !793
  %4 = load i64, ptr %mperf, align 8, !dbg !793
  store i64 %4, ptr %pto_val__14, align 8, !dbg !793
  %5 = load i64, ptr %pto_val__14, align 8, !dbg !793
  call void asm sideeffect "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) getelementptr inbounds (%struct.aperfmperf, ptr @cpu_samples, i32 0, i32 5), i64 %5, ptr elementtype(i64) getelementptr inbounds (%struct.aperfmperf, ptr @cpu_samples, i32 0, i32 5)) #14, !dbg !793, !srcloc !794
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__14) #14, !dbg !791
  br label %do.cond15, !dbg !793

do.cond15:                                        ; preds = %do.body13
  br label %do.end16, !dbg !793

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !791

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !791

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 8, ptr %mperf) #14, !dbg !795
  call void @llvm.lifetime.end.p0(i64 8, ptr %aperf) #14, !dbg !795
  ret void, !dbg !795
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !796 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !802, metadata !DIExpression()), !dbg !805
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !803, metadata !DIExpression()), !dbg !806
  %0 = load ptr, ptr %key.addr, align 8, !dbg !807
  %1 = load i8, ptr %branch.addr, align 1, !dbg !808, !range !241, !noundef !242
  %tobool = trunc i8 %1 to i1, !dbg !808
  %conv = zext i1 %tobool to i32, !dbg !808
  %or = or i32 2, %conv, !dbg !809
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #14
          to label %asm.fallthrough [label %l_yes], !dbg !810, !srcloc !811

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !812
  br label %return, !dbg !812

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !804), !dbg !813
  store i1 true, ptr %retval, align 1, !dbg !814
  br label %return, !dbg !814

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !815
  ret i1 %2, !dbg !815
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !816 dso_local void @static_key_enable(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @register_freq_invariance_syscore_ops() #0 align 16 !dbg !819 {
entry:
  call void @register_syscore_ops(ptr noundef @freq_invariance_syscore_ops) #13, !dbg !820
  ret void, !dbg !821
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !822 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !826 dso_local void @register_syscore_ops(ptr noundef) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !830 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !834, metadata !DIExpression()), !dbg !836
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !835, metadata !DIExpression()), !dbg !837
  %0 = load i64, ptr %nr.addr, align 8, !dbg !838
  %and = and i64 %0, 63, !dbg !839
  %shl = shl i64 1, %and, !dbg !840
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !841
  %2 = load i64, ptr %nr.addr, align 8, !dbg !842
  %shr = ashr i64 %2, 6, !dbg !843
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !841
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !841
  %and1 = and i64 %shl, %3, !dbg !844
  %cmp = icmp ne i64 %and1, 0, !dbg !845
  ret i1 %cmp, !dbg !846
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !847 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !849, metadata !DIExpression()), !dbg !852
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !850, metadata !DIExpression()), !dbg !853
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !854
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !851, metadata !DIExpression()), !dbg !855
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !856
  %1 = load i64, ptr %nr.addr, align 8, !dbg !857
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !858, !srcloc !859
  %3 = icmp ult i8 %2, 2, !dbg !858
  call void @llvm.assume(i1 %3), !dbg !858
  store i8 %2, ptr %oldbit, align 1, !dbg !858
  %4 = load i8, ptr %oldbit, align 1, !dbg !860, !range !241, !noundef !242
  %tobool = trunc i8 %4 to i1, !dbg !860
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !861
  ret i1 %tobool, !dbg !862
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #3 align 16 !dbg !863 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !865, metadata !DIExpression()), !dbg !868
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #14, !dbg !869
  call void @llvm.dbg.declare(metadata ptr %low, metadata !866, metadata !DIExpression()), !dbg !869
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #14, !dbg !869
  call void @llvm.dbg.declare(metadata ptr %high, metadata !867, metadata !DIExpression()), !dbg !869
  %0 = load i32, ptr %msr.addr, align 4, !dbg !870
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #14, !dbg !871, !srcloc !872
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !871
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !871
  store i64 %asmresult, ptr %low, align 8, !dbg !871
  store i64 %asmresult1, ptr %high, align 8, !dbg !871
  %2 = load i64, ptr %low, align 8, !dbg !873
  %3 = load i64, ptr %high, align 8, !dbg !873
  %shl = shl i64 %3, 32, !dbg !873
  %or = or i64 %2, %shl, !dbg !873
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #14, !dbg !874
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #14, !dbg !874
  ret i64 %or, !dbg !875
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #3 align 16 !dbg !876 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !880, metadata !DIExpression()), !dbg !881
  %0 = load ptr, ptr %key.addr, align 8, !dbg !882
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !883
  ret i1 %call, !dbg !884
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !885 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_nestable_atomic_begin() #4 align 16 !dbg !888 {
entry:
  ret void, !dbg !889
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_nestable_atomic_end() #4 align 16 !dbg !890 {
entry:
  ret void, !dbg !891
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch_jump(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !892 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !898, metadata !DIExpression()), !dbg !901
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !899, metadata !DIExpression()), !dbg !902
  %0 = load ptr, ptr %key.addr, align 8, !dbg !903
  %1 = load i8, ptr %branch.addr, align 1, !dbg !904, !range !241, !noundef !242
  %tobool = trunc i8 %1 to i1, !dbg !904
  callbr void asm sideeffect "1:jmp ${2:l}\0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i1 %tobool) #14
          to label %asm.fallthrough [label %l_yes], !dbg !905, !srcloc !906

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !907
  br label %return, !dbg !907

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !900), !dbg !908
  store i1 true, ptr %retval, align 1, !dbg !909
  br label %return, !dbg !909

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !910
  ret i1 %2, !dbg !910
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !911 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !916, metadata !DIExpression()), !dbg !917
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !918, !range !241, !noundef !242
  %tobool = trunc i8 %0 to i1, !dbg !918
  %lnot = xor i1 %tobool, true, !dbg !918
  %lnot1 = xor i1 %lnot, true, !dbg !918
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !918
  %conv = sext i32 %lnot.ext to i64, !dbg !918
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !918
  %tobool2 = icmp ne i64 %expval, 0, !dbg !918
  ret i1 %tobool2, !dbg !919
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @schedule_work(ptr noundef %work) #4 align 16 !dbg !920 {
entry:
  %work.addr = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !924, metadata !DIExpression()), !dbg !925
  %0 = load ptr, ptr @system_wq, align 8, !dbg !926
  %1 = load ptr, ptr %work.addr, align 8, !dbg !927
  %call = call zeroext i1 @queue_work(ptr noundef %0, ptr noundef %1) #13, !dbg !928
  ret i1 %call, !dbg !929
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_work(ptr noundef %wq, ptr noundef %work) #4 align 16 !dbg !930 {
entry:
  %wq.addr = alloca ptr, align 8
  %work.addr = alloca ptr, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !936, metadata !DIExpression()), !dbg !938
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !937, metadata !DIExpression()), !dbg !939
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !940
  %1 = load ptr, ptr %work.addr, align 8, !dbg !941
  %call = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1) #13, !dbg !942
  ret i1 %call, !dbg !943
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !944 dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @disable_freq_invariance_workfn(ptr noundef %work) #0 align 16 !dbg !947 {
entry:
  %work.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp3 = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !949, metadata !DIExpression()), !dbg !958
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !959
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !950, metadata !DIExpression()), !dbg !960
  call void @static_key_disable(ptr noundef @arch_scale_freq_key) #13, !dbg !961
  store i32 0, ptr %cpu, align 4, !dbg !962
  br label %for.cond, !dbg !962

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %cpu, align 4, !dbg !963
  %conv = sext i32 %0 to i64, !dbg !963
  %call = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #13, !dbg !963
  %conv1 = trunc i64 %call to i32, !dbg !963
  store i32 %conv1, ptr %cpu, align 4, !dbg !963
  %1 = load i32, ptr %cpu, align 4, !dbg !963
  %cmp = icmp ult i32 %1, 64, !dbg !963
  br i1 %cmp, label %for.body, label %for.end, !dbg !962

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !964

do.body:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !965
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !951, metadata !DIExpression()), !dbg !965
  store ptr null, ptr %__vpp_verify, align 8, !dbg !965
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !965
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !964
  br label %do.cond, !dbg !965

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !965

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !966
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !956, metadata !DIExpression()), !dbg !966
  store i64 ptrtoint (ptr @arch_freq_scale to i64), ptr %__ptr, align 8, !dbg !966
  %3 = load i64, ptr %__ptr, align 8, !dbg !966
  %4 = load i32, ptr %cpu, align 4, !dbg !966
  %idxprom = sext i32 %4 to i64, !dbg !966
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !966
  %5 = load i64, ptr %arrayidx, align 8, !dbg !966
  %add = add i64 %3, %5, !dbg !966
  %6 = inttoptr i64 %add to ptr, !dbg !966
  store ptr %6, ptr %tmp3, align 8, !dbg !966
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !964
  %7 = load ptr, ptr %tmp3, align 8, !dbg !966
  store ptr %7, ptr %tmp, align 8, !dbg !965
  %8 = load ptr, ptr %tmp, align 8, !dbg !964
  store i64 1024, ptr %8, align 8, !dbg !967
  br label %for.inc, !dbg !968

for.inc:                                          ; preds = %do.end
  %9 = load i32, ptr %cpu, align 4, !dbg !963
  %inc = add i32 %9, 1, !dbg !963
  store i32 %inc, ptr %cpu, align 4, !dbg !963
  br label %for.cond, !dbg !963, !llvm.loop !969

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !971
  ret void, !dbg !971
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !972 dso_local void @static_key_disable(ptr noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #4 align 16 !dbg !973 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !980, metadata !DIExpression()), !dbg !986
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !981, metadata !DIExpression()), !dbg !987
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !982, metadata !DIExpression()), !dbg !988
  %0 = load i64, ptr %size.addr, align 8, !dbg !989
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !989
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !989

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !989
  %cmp = icmp ule i64 %2, 64, !dbg !989
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !989

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !989
  %cmp2 = icmp ugt i64 %3, 0, !dbg !989
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !990

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !991
  call void @llvm.dbg.declare(metadata ptr %val, metadata !983, metadata !DIExpression()), !dbg !992
  %4 = load i64, ptr %offset.addr, align 8, !dbg !993
  %5 = load i64, ptr %size.addr, align 8, !dbg !993
  %cmp3 = icmp uge i64 %4, %5, !dbg !993
  %lnot = xor i1 %cmp3, true, !dbg !993
  %lnot4 = xor i1 %lnot, true, !dbg !993
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !993
  %conv = sext i32 %lnot.ext to i64, !dbg !993
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !993
  %tobool = icmp ne i64 %expval, 0, !dbg !993
  br i1 %tobool, label %if.then5, label %if.end, !dbg !995

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !996
  store i64 %6, ptr %retval, align 8, !dbg !997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !997

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !998
  %8 = load i64, ptr %7, align 8, !dbg !999
  %9 = load i64, ptr %offset.addr, align 8, !dbg !1000
  %shl = shl i64 1, %9, !dbg !1000
  %sub = sub i64 -1, %shl, !dbg !1000
  %add = add i64 %sub, 1, !dbg !1000
  %10 = load i64, ptr %size.addr, align 8, !dbg !1000
  %sub6 = sub i64 %10, 1, !dbg !1000
  %sub7 = sub i64 63, %sub6, !dbg !1000
  %shr = lshr i64 -1, %sub7, !dbg !1000
  %and = and i64 %add, %shr, !dbg !1000
  %add8 = add i64 0, %and, !dbg !1000
  %and9 = and i64 %8, %add8, !dbg !1001
  store i64 %and9, ptr %val, align 8, !dbg !1002
  %11 = load i64, ptr %val, align 8, !dbg !1003
  %tobool10 = icmp ne i64 %11, 0, !dbg !1003
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !1003

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !1004
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !1004
  br i1 %13, label %cond.true11, label %cond.false, !dbg !1004

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !1004
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !1004
  %cast = trunc i64 %15 to i32, !dbg !1004
  %conv12 = sext i32 %cast to i64, !dbg !1004
  br label %cond.end, !dbg !1004

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !1004
  %call = call i64 @variable__ffs(i64 noundef %16) #13, !dbg !1004
  br label %cond.end, !dbg !1004

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !1004
  br label %cond.end14, !dbg !1003

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !1005
  br label %cond.end14, !dbg !1003

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !1003
  store i64 %cond15, ptr %retval, align 8, !dbg !1006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1006

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !1007
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !1008
  %19 = load i64, ptr %size.addr, align 8, !dbg !1009
  %20 = load i64, ptr %offset.addr, align 8, !dbg !1010
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #13, !dbg !1011
  store i64 %call17, ptr %retval, align 8, !dbg !1012
  br label %return, !dbg !1012

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !1013
  ret i64 %21, !dbg !1013
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #3 align 16 !dbg !1014 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1018, metadata !DIExpression()), !dbg !1019
  %0 = load i64, ptr %word.addr, align 8, !dbg !1020
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #16, !dbg !1021, !srcloc !1022
  store i64 %1, ptr %word.addr, align 8, !dbg !1021
  %2 = load i64, ptr %word.addr, align 8, !dbg !1023
  ret i64 %2, !dbg !1024
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1025 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #3 align 16 !dbg !1026 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !1027, !srcloc !1028
  ret void, !dbg !1029
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do___read_seqcount_retry(ptr noundef %s, i32 noundef %start) #4 align 16 !dbg !1030 {
entry:
  %s.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1032, metadata !DIExpression()), !dbg !1034
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1033, metadata !DIExpression()), !dbg !1035
  call void @kcsan_atomic_next(i32 noundef 0) #13, !dbg !1036
  br label %do.body, !dbg !1037

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1039

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !1037
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !1037
  %1 = load volatile i32, ptr %sequence, align 4, !dbg !1037
  store i32 %1, ptr %tmp, align 4, !dbg !1039
  %2 = load i32, ptr %tmp, align 4, !dbg !1037
  %3 = load i32, ptr %start.addr, align 4, !dbg !1041
  %cmp = icmp ne i32 %2, %3, !dbg !1041
  %lnot = xor i1 %cmp, true, !dbg !1041
  %lnot1 = xor i1 %lnot, true, !dbg !1041
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1041
  %conv = sext i32 %lnot.ext to i64, !dbg !1041
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1041
  %conv2 = trunc i64 %expval to i32, !dbg !1041
  ret i32 %conv2, !dbg !1042
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @bp_init_freq_invariance() #9 section ".init.text" align 16 !dbg !1043 {
entry:
  %0 = load i8, ptr getelementptr inbounds (%struct.anon, ptr @boot_cpu_data, i32 0, i32 2), align 2, !dbg !1044
  %conv = zext i8 %0 to i32, !dbg !1046
  %cmp = icmp ne i32 %conv, 0, !dbg !1047
  br i1 %cmp, label %if.then, label %if.end, !dbg !1048

if.then:                                          ; preds = %entry
  br label %if.end3, !dbg !1049

if.end:                                           ; preds = %entry
  %call = call zeroext i1 @intel_set_max_freq_ratio() #15, !dbg !1050
  br i1 %call, label %if.then2, label %if.end3, !dbg !1052

if.then2:                                         ; preds = %if.end
  call void @freq_invariance_enable() #13, !dbg !1053
  br label %if.end3, !dbg !1053

if.end3:                                          ; preds = %if.then, %if.then2, %if.end
  ret void, !dbg !1054
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @intel_set_max_freq_ratio() #9 section ".init.text" align 16 !dbg !1055 {
entry:
  %retval = alloca i1, align 1
  %base_freq = alloca i64, align 8
  %turbo_freq = alloca i64, align 8
  %turbo_ratio = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %base_freq) #14, !dbg !1061
  call void @llvm.dbg.declare(metadata ptr %base_freq, metadata !1057, metadata !DIExpression()), !dbg !1062
  call void @llvm.lifetime.start.p0(i64 8, ptr %turbo_freq) #14, !dbg !1061
  call void @llvm.dbg.declare(metadata ptr %turbo_freq, metadata !1058, metadata !DIExpression()), !dbg !1063
  call void @llvm.lifetime.start.p0(i64 8, ptr %turbo_ratio) #14, !dbg !1064
  call void @llvm.dbg.declare(metadata ptr %turbo_ratio, metadata !1059, metadata !DIExpression()), !dbg !1065
  %call = call zeroext i1 @slv_set_max_freq_ratio(ptr noundef %base_freq, ptr noundef %turbo_freq) #15, !dbg !1066
  br i1 %call, label %if.then, label %if.end, !dbg !1068

if.then:                                          ; preds = %entry
  br label %out, !dbg !1069

if.end:                                           ; preds = %entry
  %call1 = call ptr @x86_match_cpu(ptr noundef @has_glm_turbo_ratio_limits) #13, !dbg !1070
  %tobool = icmp ne ptr %call1, null, !dbg !1070
  br i1 %tobool, label %land.lhs.true, label %if.end4, !dbg !1072

land.lhs.true:                                    ; preds = %if.end
  %call2 = call zeroext i1 @skx_set_max_freq_ratio(ptr noundef %base_freq, ptr noundef %turbo_freq, i32 noundef 1) #15, !dbg !1073
  br i1 %call2, label %if.then3, label %if.end4, !dbg !1074

if.then3:                                         ; preds = %land.lhs.true
  br label %out, !dbg !1075

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %call5 = call ptr @x86_match_cpu(ptr noundef @has_knl_turbo_ratio_limits) #13, !dbg !1076
  %tobool6 = icmp ne ptr %call5, null, !dbg !1076
  br i1 %tobool6, label %land.lhs.true7, label %if.end10, !dbg !1078

land.lhs.true7:                                   ; preds = %if.end4
  %call8 = call zeroext i1 @knl_set_max_freq_ratio(ptr noundef %base_freq, ptr noundef %turbo_freq, i32 noundef 1) #15, !dbg !1079
  br i1 %call8, label %if.then9, label %if.end10, !dbg !1080

if.then9:                                         ; preds = %land.lhs.true7
  br label %out, !dbg !1081

if.end10:                                         ; preds = %land.lhs.true7, %if.end4
  %call11 = call ptr @x86_match_cpu(ptr noundef @has_skx_turbo_ratio_limits) #13, !dbg !1082
  %tobool12 = icmp ne ptr %call11, null, !dbg !1082
  br i1 %tobool12, label %land.lhs.true13, label %if.end16, !dbg !1084

land.lhs.true13:                                  ; preds = %if.end10
  %call14 = call zeroext i1 @skx_set_max_freq_ratio(ptr noundef %base_freq, ptr noundef %turbo_freq, i32 noundef 4) #15, !dbg !1085
  br i1 %call14, label %if.then15, label %if.end16, !dbg !1086

if.then15:                                        ; preds = %land.lhs.true13
  br label %out, !dbg !1087

if.end16:                                         ; preds = %land.lhs.true13, %if.end10
  %call17 = call zeroext i1 @core_set_max_freq_ratio(ptr noundef %base_freq, ptr noundef %turbo_freq) #15, !dbg !1088
  br i1 %call17, label %if.then18, label %if.end19, !dbg !1090

if.then18:                                        ; preds = %if.end16
  br label %out, !dbg !1091

if.end19:                                         ; preds = %if.end16
  store i1 false, ptr %retval, align 1, !dbg !1092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1092

out:                                              ; preds = %if.then18, %if.then15, %if.then9, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !1060), !dbg !1093
  %0 = load i64, ptr %base_freq, align 8, !dbg !1094
  %tobool20 = icmp ne i64 %0, 0, !dbg !1094
  br i1 %tobool20, label %lor.lhs.false, label %if.then22, !dbg !1096

lor.lhs.false:                                    ; preds = %out
  %1 = load i64, ptr %turbo_freq, align 8, !dbg !1097
  %tobool21 = icmp ne i64 %1, 0, !dbg !1097
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !1098

if.then22:                                        ; preds = %lor.lhs.false, %out
  store i32 0, ptr %tmp, align 4, !dbg !1099
  %2 = load i32, ptr %tmp, align 4, !dbg !1103
  store i1 false, ptr %retval, align 1, !dbg !1104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1104

if.end23:                                         ; preds = %lor.lhs.false
  %3 = load i64, ptr %turbo_freq, align 8, !dbg !1105
  %mul = mul i64 %3, 1024, !dbg !1106
  %4 = load i64, ptr %base_freq, align 8, !dbg !1107
  %conv = trunc i64 %4 to i32, !dbg !1107
  %call24 = call i64 @div_u64(i64 noundef %mul, i32 noundef %conv) #13, !dbg !1108
  store i64 %call24, ptr %turbo_ratio, align 8, !dbg !1109
  %5 = load i64, ptr %turbo_ratio, align 8, !dbg !1110
  %tobool25 = icmp ne i64 %5, 0, !dbg !1110
  br i1 %tobool25, label %if.end28, label %if.then26, !dbg !1112

if.then26:                                        ; preds = %if.end23
  store i32 0, ptr %tmp27, align 4, !dbg !1113
  %6 = load i32, ptr %tmp27, align 4, !dbg !1117
  store i1 false, ptr %retval, align 1, !dbg !1118
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1118

if.end28:                                         ; preds = %if.end23
  %7 = load i64, ptr %turbo_ratio, align 8, !dbg !1119
  store i64 %7, ptr @arch_turbo_freq_ratio, align 8, !dbg !1120
  %call29 = call zeroext i1 @turbo_disabled() #15, !dbg !1121
  call void @arch_set_max_freq_ratio(i1 noundef zeroext %call29) #13, !dbg !1122
  store i1 true, ptr %retval, align 1, !dbg !1123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1123

cleanup:                                          ; preds = %if.end28, %if.then26, %if.then22, %if.end19
  call void @llvm.lifetime.end.p0(i64 8, ptr %turbo_ratio) #14, !dbg !1124
  call void @llvm.lifetime.end.p0(i64 8, ptr %turbo_freq) #14, !dbg !1124
  call void @llvm.lifetime.end.p0(i64 8, ptr %base_freq) #14, !dbg !1124
  %8 = load i1, ptr %retval, align 1, !dbg !1124
  ret i1 %8, !dbg !1124
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @slv_set_max_freq_ratio(ptr noundef %base_freq, ptr noundef %turbo_freq) #9 section ".init.text" align 16 !dbg !1125 {
entry:
  %retval = alloca i1, align 1
  %base_freq.addr = alloca ptr, align 8
  %turbo_freq.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %base_freq, ptr %base_freq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base_freq.addr, metadata !1129, metadata !DIExpression()), !dbg !1132
  store ptr %turbo_freq, ptr %turbo_freq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %turbo_freq.addr, metadata !1130, metadata !DIExpression()), !dbg !1133
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !1134
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1131, metadata !DIExpression()), !dbg !1135
  %0 = load ptr, ptr %base_freq.addr, align 8, !dbg !1136
  %call = call i32 @rdmsrl_safe(i32 noundef 1642, ptr noundef %0) #13, !dbg !1137
  store i32 %call, ptr %err, align 4, !dbg !1138
  %1 = load i32, ptr %err, align 4, !dbg !1139
  %tobool = icmp ne i32 %1, 0, !dbg !1139
  br i1 %tobool, label %if.then, label %if.end, !dbg !1141

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1142

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %turbo_freq.addr, align 8, !dbg !1143
  %call1 = call i32 @rdmsrl_safe(i32 noundef 1644, ptr noundef %2) #13, !dbg !1144
  store i32 %call1, ptr %err, align 4, !dbg !1145
  %3 = load i32, ptr %err, align 4, !dbg !1146
  %tobool2 = icmp ne i32 %3, 0, !dbg !1146
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1148

if.then3:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !1149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1149

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %base_freq.addr, align 8, !dbg !1150
  %5 = load i64, ptr %4, align 8, !dbg !1151
  %shr = lshr i64 %5, 16, !dbg !1152
  %and = and i64 %shr, 63, !dbg !1153
  %6 = load ptr, ptr %base_freq.addr, align 8, !dbg !1154
  store i64 %and, ptr %6, align 8, !dbg !1155
  %7 = load ptr, ptr %turbo_freq.addr, align 8, !dbg !1156
  %8 = load i64, ptr %7, align 8, !dbg !1157
  %and5 = and i64 %8, 63, !dbg !1158
  %9 = load ptr, ptr %turbo_freq.addr, align 8, !dbg !1159
  store i64 %and5, ptr %9, align 8, !dbg !1160
  store i1 true, ptr %retval, align 1, !dbg !1161
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1161

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !1162
  %10 = load i1, ptr %retval, align 1, !dbg !1162
  ret i1 %10, !dbg !1162
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1163 dso_local ptr @x86_match_cpu(ptr noundef) #8

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @skx_set_max_freq_ratio(ptr noundef %base_freq, ptr noundef %turbo_freq, i32 noundef %size) #9 section ".init.text" align 16 !dbg !1168 {
entry:
  %retval = alloca i1, align 1
  %base_freq.addr = alloca ptr, align 8
  %turbo_freq.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %ratios = alloca i64, align 8
  %counts = alloca i64, align 8
  %group_size = alloca i32, align 4
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %base_freq, ptr %base_freq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base_freq.addr, metadata !1172, metadata !DIExpression()), !dbg !1180
  store ptr %turbo_freq, ptr %turbo_freq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %turbo_freq.addr, metadata !1173, metadata !DIExpression()), !dbg !1181
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1174, metadata !DIExpression()), !dbg !1182
  call void @llvm.lifetime.start.p0(i64 8, ptr %ratios) #14, !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %ratios, metadata !1175, metadata !DIExpression()), !dbg !1184
  call void @llvm.lifetime.start.p0(i64 8, ptr %counts) #14, !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %counts, metadata !1176, metadata !DIExpression()), !dbg !1185
  call void @llvm.lifetime.start.p0(i64 4, ptr %group_size) #14, !dbg !1186
  call void @llvm.dbg.declare(metadata ptr %group_size, metadata !1177, metadata !DIExpression()), !dbg !1187
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !1188
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1178, metadata !DIExpression()), !dbg !1189
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !1188
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1179, metadata !DIExpression()), !dbg !1190
  %0 = load ptr, ptr %base_freq.addr, align 8, !dbg !1191
  %call = call i32 @rdmsrl_safe(i32 noundef 206, ptr noundef %0) #13, !dbg !1192
  store i32 %call, ptr %err, align 4, !dbg !1193
  %1 = load i32, ptr %err, align 4, !dbg !1194
  %tobool = icmp ne i32 %1, 0, !dbg !1194
  br i1 %tobool, label %if.then, label %if.end, !dbg !1196

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1197

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %base_freq.addr, align 8, !dbg !1198
  %3 = load i64, ptr %2, align 8, !dbg !1199
  %shr = lshr i64 %3, 8, !dbg !1200
  %and = and i64 %shr, 255, !dbg !1201
  %4 = load ptr, ptr %base_freq.addr, align 8, !dbg !1202
  store i64 %and, ptr %4, align 8, !dbg !1203
  %call1 = call i32 @rdmsrl_safe(i32 noundef 429, ptr noundef %ratios) #13, !dbg !1204
  store i32 %call1, ptr %err, align 4, !dbg !1205
  %5 = load i32, ptr %err, align 4, !dbg !1206
  %tobool2 = icmp ne i32 %5, 0, !dbg !1206
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1208

if.then3:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !1209
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1209

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @rdmsrl_safe(i32 noundef 430, ptr noundef %counts) #13, !dbg !1210
  store i32 %call5, ptr %err, align 4, !dbg !1211
  %6 = load i32, ptr %err, align 4, !dbg !1212
  %tobool6 = icmp ne i32 %6, 0, !dbg !1212
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !1214

if.then7:                                         ; preds = %if.end4
  store i1 false, ptr %retval, align 1, !dbg !1215
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1215

if.end8:                                          ; preds = %if.end4
  store i32 0, ptr %i, align 4, !dbg !1216
  br label %for.cond, !dbg !1218

for.cond:                                         ; preds = %for.inc, %if.end8
  %7 = load i32, ptr %i, align 4, !dbg !1219
  %cmp = icmp slt i32 %7, 64, !dbg !1221
  br i1 %cmp, label %for.body, label %for.end, !dbg !1222

for.body:                                         ; preds = %for.cond
  %8 = load i64, ptr %counts, align 8, !dbg !1223
  %9 = load i32, ptr %i, align 4, !dbg !1225
  %sh_prom = zext i32 %9 to i64, !dbg !1226
  %shr9 = lshr i64 %8, %sh_prom, !dbg !1226
  %and10 = and i64 %shr9, 255, !dbg !1227
  %conv = trunc i64 %and10 to i32, !dbg !1228
  store i32 %conv, ptr %group_size, align 4, !dbg !1229
  %10 = load i32, ptr %group_size, align 4, !dbg !1230
  %11 = load i32, ptr %size.addr, align 4, !dbg !1232
  %cmp11 = icmp uge i32 %10, %11, !dbg !1233
  br i1 %cmp11, label %if.then13, label %if.end17, !dbg !1234

if.then13:                                        ; preds = %for.body
  %12 = load i64, ptr %ratios, align 8, !dbg !1235
  %13 = load i32, ptr %i, align 4, !dbg !1237
  %sh_prom14 = zext i32 %13 to i64, !dbg !1238
  %shr15 = lshr i64 %12, %sh_prom14, !dbg !1238
  %and16 = and i64 %shr15, 255, !dbg !1239
  %14 = load ptr, ptr %turbo_freq.addr, align 8, !dbg !1240
  store i64 %and16, ptr %14, align 8, !dbg !1241
  store i1 true, ptr %retval, align 1, !dbg !1242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1242

if.end17:                                         ; preds = %for.body
  br label %for.inc, !dbg !1243

for.inc:                                          ; preds = %if.end17
  %15 = load i32, ptr %i, align 4, !dbg !1244
  %add = add i32 %15, 8, !dbg !1244
  store i32 %add, ptr %i, align 4, !dbg !1244
  br label %for.cond, !dbg !1245, !llvm.loop !1246

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !1248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1248

cleanup:                                          ; preds = %for.end, %if.then13, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !1249
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !1249
  call void @llvm.lifetime.end.p0(i64 4, ptr %group_size) #14, !dbg !1249
  call void @llvm.lifetime.end.p0(i64 8, ptr %counts) #14, !dbg !1249
  call void @llvm.lifetime.end.p0(i64 8, ptr %ratios) #14, !dbg !1249
  %16 = load i1, ptr %retval, align 1, !dbg !1249
  ret i1 %16, !dbg !1249
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @knl_set_max_freq_ratio(ptr noundef %base_freq, ptr noundef %turbo_freq, i32 noundef %num_delta_fratio) #9 section ".init.text" align 16 !dbg !1250 {
entry:
  %retval = alloca i1, align 1
  %base_freq.addr = alloca ptr, align 8
  %turbo_freq.addr = alloca ptr, align 8
  %num_delta_fratio.addr = alloca i32, align 4
  %fratio = alloca i32, align 4
  %delta_fratio = alloca i32, align 4
  %found = alloca i32, align 4
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  %msr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %base_freq, ptr %base_freq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base_freq.addr, metadata !1252, metadata !DIExpression()), !dbg !1261
  store ptr %turbo_freq, ptr %turbo_freq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %turbo_freq.addr, metadata !1253, metadata !DIExpression()), !dbg !1262
  store i32 %num_delta_fratio, ptr %num_delta_fratio.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_delta_fratio.addr, metadata !1254, metadata !DIExpression()), !dbg !1263
  call void @llvm.lifetime.start.p0(i64 4, ptr %fratio) #14, !dbg !1264
  call void @llvm.dbg.declare(metadata ptr %fratio, metadata !1255, metadata !DIExpression()), !dbg !1265
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta_fratio) #14, !dbg !1264
  call void @llvm.dbg.declare(metadata ptr %delta_fratio, metadata !1256, metadata !DIExpression()), !dbg !1266
  call void @llvm.lifetime.start.p0(i64 4, ptr %found) #14, !dbg !1264
  call void @llvm.dbg.declare(metadata ptr %found, metadata !1257, metadata !DIExpression()), !dbg !1267
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !1268
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1258, metadata !DIExpression()), !dbg !1269
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !1268
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1259, metadata !DIExpression()), !dbg !1270
  call void @llvm.lifetime.start.p0(i64 8, ptr %msr) #14, !dbg !1271
  call void @llvm.dbg.declare(metadata ptr %msr, metadata !1260, metadata !DIExpression()), !dbg !1272
  %0 = load ptr, ptr %base_freq.addr, align 8, !dbg !1273
  %call = call i32 @rdmsrl_safe(i32 noundef 206, ptr noundef %0) #13, !dbg !1274
  store i32 %call, ptr %err, align 4, !dbg !1275
  %1 = load i32, ptr %err, align 4, !dbg !1276
  %tobool = icmp ne i32 %1, 0, !dbg !1276
  br i1 %tobool, label %if.then, label %if.end, !dbg !1278

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1279
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1279

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %base_freq.addr, align 8, !dbg !1280
  %3 = load i64, ptr %2, align 8, !dbg !1281
  %shr = lshr i64 %3, 8, !dbg !1282
  %and = and i64 %shr, 255, !dbg !1283
  %4 = load ptr, ptr %base_freq.addr, align 8, !dbg !1284
  store i64 %and, ptr %4, align 8, !dbg !1285
  %call1 = call i32 @rdmsrl_safe(i32 noundef 429, ptr noundef %msr) #13, !dbg !1286
  store i32 %call1, ptr %err, align 4, !dbg !1287
  %5 = load i32, ptr %err, align 4, !dbg !1288
  %tobool2 = icmp ne i32 %5, 0, !dbg !1288
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1290

if.then3:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !1291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1291

if.end4:                                          ; preds = %if.end
  %6 = load i64, ptr %msr, align 8, !dbg !1292
  %shr5 = lshr i64 %6, 8, !dbg !1293
  %and6 = and i64 %shr5, 255, !dbg !1294
  %conv = trunc i64 %and6 to i32, !dbg !1295
  store i32 %conv, ptr %fratio, align 4, !dbg !1296
  store i32 16, ptr %i, align 4, !dbg !1297
  store i32 0, ptr %found, align 4, !dbg !1298
  br label %do.body, !dbg !1299

do.body:                                          ; preds = %do.cond, %if.end4
  %7 = load i32, ptr %found, align 4, !dbg !1300
  %8 = load i32, ptr %num_delta_fratio.addr, align 4, !dbg !1303
  %cmp = icmp sge i32 %7, %8, !dbg !1304
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !1305

if.then8:                                         ; preds = %do.body
  %9 = load i32, ptr %fratio, align 4, !dbg !1306
  %conv9 = sext i32 %9 to i64, !dbg !1306
  %10 = load ptr, ptr %turbo_freq.addr, align 8, !dbg !1308
  store i64 %conv9, ptr %10, align 8, !dbg !1309
  store i1 true, ptr %retval, align 1, !dbg !1310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1310

if.end10:                                         ; preds = %do.body
  %11 = load i64, ptr %msr, align 8, !dbg !1311
  %12 = load i32, ptr %i, align 4, !dbg !1312
  %add = add i32 %12, 5, !dbg !1313
  %sh_prom = zext i32 %add to i64, !dbg !1314
  %shr11 = lshr i64 %11, %sh_prom, !dbg !1314
  %and12 = and i64 %shr11, 7, !dbg !1315
  %conv13 = trunc i64 %and12 to i32, !dbg !1316
  store i32 %conv13, ptr %delta_fratio, align 4, !dbg !1317
  %13 = load i32, ptr %delta_fratio, align 4, !dbg !1318
  %tobool14 = icmp ne i32 %13, 0, !dbg !1318
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !1320

if.then15:                                        ; preds = %if.end10
  %14 = load i32, ptr %found, align 4, !dbg !1321
  %add16 = add i32 %14, 1, !dbg !1321
  store i32 %add16, ptr %found, align 4, !dbg !1321
  %15 = load i32, ptr %delta_fratio, align 4, !dbg !1323
  %16 = load i32, ptr %fratio, align 4, !dbg !1324
  %sub = sub i32 %16, %15, !dbg !1324
  store i32 %sub, ptr %fratio, align 4, !dbg !1324
  br label %if.end17, !dbg !1325

if.end17:                                         ; preds = %if.then15, %if.end10
  %17 = load i32, ptr %i, align 4, !dbg !1326
  %add18 = add i32 %17, 8, !dbg !1326
  store i32 %add18, ptr %i, align 4, !dbg !1326
  br label %do.cond, !dbg !1327

do.cond:                                          ; preds = %if.end17
  %18 = load i32, ptr %i, align 4, !dbg !1328
  %cmp19 = icmp slt i32 %18, 64, !dbg !1329
  br i1 %cmp19, label %do.body, label %do.end, !dbg !1327, !llvm.loop !1330

do.end:                                           ; preds = %do.cond
  store i1 true, ptr %retval, align 1, !dbg !1332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1332

cleanup:                                          ; preds = %do.end, %if.then8, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %msr) #14, !dbg !1333
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !1333
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !1333
  call void @llvm.lifetime.end.p0(i64 4, ptr %found) #14, !dbg !1333
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta_fratio) #14, !dbg !1333
  call void @llvm.lifetime.end.p0(i64 4, ptr %fratio) #14, !dbg !1333
  %19 = load i1, ptr %retval, align 1, !dbg !1333
  ret i1 %19, !dbg !1333
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @core_set_max_freq_ratio(ptr noundef %base_freq, ptr noundef %turbo_freq) #9 section ".init.text" align 16 !dbg !1334 {
entry:
  %retval = alloca i1, align 1
  %base_freq.addr = alloca ptr, align 8
  %turbo_freq.addr = alloca ptr, align 8
  %msr = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %base_freq, ptr %base_freq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base_freq.addr, metadata !1336, metadata !DIExpression()), !dbg !1340
  store ptr %turbo_freq, ptr %turbo_freq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %turbo_freq.addr, metadata !1337, metadata !DIExpression()), !dbg !1341
  call void @llvm.lifetime.start.p0(i64 8, ptr %msr) #14, !dbg !1342
  call void @llvm.dbg.declare(metadata ptr %msr, metadata !1338, metadata !DIExpression()), !dbg !1343
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !1344
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1339, metadata !DIExpression()), !dbg !1345
  %0 = load ptr, ptr %base_freq.addr, align 8, !dbg !1346
  %call = call i32 @rdmsrl_safe(i32 noundef 206, ptr noundef %0) #13, !dbg !1347
  store i32 %call, ptr %err, align 4, !dbg !1348
  %1 = load i32, ptr %err, align 4, !dbg !1349
  %tobool = icmp ne i32 %1, 0, !dbg !1349
  br i1 %tobool, label %if.then, label %if.end, !dbg !1351

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1352

if.end:                                           ; preds = %entry
  %call1 = call i32 @rdmsrl_safe(i32 noundef 429, ptr noundef %msr) #13, !dbg !1353
  store i32 %call1, ptr %err, align 4, !dbg !1354
  %2 = load i32, ptr %err, align 4, !dbg !1355
  %tobool2 = icmp ne i32 %2, 0, !dbg !1355
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1357

if.then3:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !1358
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1358

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %base_freq.addr, align 8, !dbg !1359
  %4 = load i64, ptr %3, align 8, !dbg !1360
  %shr = lshr i64 %4, 8, !dbg !1361
  %and = and i64 %shr, 255, !dbg !1362
  %5 = load ptr, ptr %base_freq.addr, align 8, !dbg !1363
  store i64 %and, ptr %5, align 8, !dbg !1364
  %6 = load i64, ptr %msr, align 8, !dbg !1365
  %shr5 = lshr i64 %6, 24, !dbg !1366
  %and6 = and i64 %shr5, 255, !dbg !1367
  %7 = load ptr, ptr %turbo_freq.addr, align 8, !dbg !1368
  store i64 %and6, ptr %7, align 8, !dbg !1369
  %8 = load ptr, ptr %turbo_freq.addr, align 8, !dbg !1370
  %9 = load i64, ptr %8, align 8, !dbg !1372
  %tobool7 = icmp ne i64 %9, 0, !dbg !1372
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !1373

if.then8:                                         ; preds = %if.end4
  %10 = load i64, ptr %msr, align 8, !dbg !1374
  %and9 = and i64 %10, 255, !dbg !1375
  %11 = load ptr, ptr %turbo_freq.addr, align 8, !dbg !1376
  store i64 %and9, ptr %11, align 8, !dbg !1377
  br label %if.end10, !dbg !1378

if.end10:                                         ; preds = %if.then8, %if.end4
  store i1 true, ptr %retval, align 1, !dbg !1379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1379

cleanup:                                          ; preds = %if.end10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !1380
  call void @llvm.lifetime.end.p0(i64 8, ptr %msr) #14, !dbg !1380
  %12 = load i1, ptr %retval, align 1, !dbg !1380
  ret i1 %12, !dbg !1380
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64(i64 noundef %dividend, i32 noundef %divisor) #4 align 16 !dbg !1381 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder = alloca i32, align 4
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !1385, metadata !DIExpression()), !dbg !1388
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !1386, metadata !DIExpression()), !dbg !1389
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #14, !dbg !1390
  call void @llvm.dbg.declare(metadata ptr %remainder, metadata !1387, metadata !DIExpression()), !dbg !1391
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !1392
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !1393
  %call = call i64 @div_u64_rem(i64 noundef %0, i32 noundef %1, ptr noundef %remainder) #13, !dbg !1394
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #14, !dbg !1395
  ret i64 %call, !dbg !1396
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal zeroext i1 @turbo_disabled() #9 section ".init.text" align 16 !dbg !1397 {
entry:
  %retval = alloca i1, align 1
  %misc_en = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %misc_en) #14, !dbg !1401
  call void @llvm.dbg.declare(metadata ptr %misc_en, metadata !1399, metadata !DIExpression()), !dbg !1402
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1400, metadata !DIExpression()), !dbg !1404
  %call = call i32 @rdmsrl_safe(i32 noundef 416, ptr noundef %misc_en) #13, !dbg !1405
  store i32 %call, ptr %err, align 4, !dbg !1406
  %0 = load i32, ptr %err, align 4, !dbg !1407
  %tobool = icmp ne i32 %0, 0, !dbg !1407
  br i1 %tobool, label %if.then, label %if.end, !dbg !1409

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1410

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %misc_en, align 8, !dbg !1411
  %and = and i64 %1, 274877906944, !dbg !1412
  %tobool1 = icmp ne i64 %and, 0, !dbg !1413
  store i1 %tobool1, ptr %retval, align 1, !dbg !1414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1414

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !1415
  call void @llvm.lifetime.end.p0(i64 8, ptr %misc_en) #14, !dbg !1415
  %2 = load i1, ptr %retval, align 1, !dbg !1415
  ret i1 %2, !dbg !1415
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rdmsrl_safe(i32 noundef %msr, ptr noundef %p) #4 align 16 !dbg !1416 {
entry:
  %msr.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1421, metadata !DIExpression()), !dbg !1424
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1422, metadata !DIExpression()), !dbg !1425
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !1426
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1423, metadata !DIExpression()), !dbg !1427
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1428
  %call = call i64 @native_read_msr_safe(i32 noundef %0, ptr noundef %err) #13, !dbg !1429
  %1 = load ptr, ptr %p.addr, align 8, !dbg !1430
  store i64 %call, ptr %1, align 8, !dbg !1431
  %2 = load i32, ptr %err, align 4, !dbg !1432
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !1433
  ret i32 %2, !dbg !1434
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr_safe(i32 noundef %msr, ptr noundef %err) #4 align 16 !dbg !1435 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1440, metadata !DIExpression()), !dbg !1444
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1441, metadata !DIExpression()), !dbg !1445
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #14, !dbg !1446
  call void @llvm.dbg.declare(metadata ptr %low, metadata !1442, metadata !DIExpression()), !dbg !1446
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #14, !dbg !1446
  call void @llvm.dbg.declare(metadata ptr %high, metadata !1443, metadata !DIExpression()), !dbg !1446
  %0 = load ptr, ptr %err.addr, align 8, !dbg !1447
  %1 = load i32, ptr %msr.addr, align 4, !dbg !1448
  %2 = call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %1) #14, !dbg !1449, !srcloc !1450
  %asmresult = extractvalue { i32, i64, i64 } %2, 0, !dbg !1449
  %asmresult1 = extractvalue { i32, i64, i64 } %2, 1, !dbg !1449
  %asmresult2 = extractvalue { i32, i64, i64 } %2, 2, !dbg !1449
  store i32 %asmresult, ptr %0, align 4, !dbg !1449
  store i64 %asmresult1, ptr %low, align 8, !dbg !1449
  store i64 %asmresult2, ptr %high, align 8, !dbg !1449
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #13, !dbg !1451
  br i1 %call, label %if.then, label %if.end, !dbg !1453

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !1454
  %4 = load i64, ptr %low, align 8, !dbg !1455
  %5 = load i64, ptr %high, align 8, !dbg !1455
  %shl = shl i64 %5, 32, !dbg !1455
  %or = or i64 %4, %shl, !dbg !1455
  %6 = load ptr, ptr %err.addr, align 8, !dbg !1456
  %7 = load i32, ptr %6, align 4, !dbg !1457
  call void @do_trace_read_msr(i32 noundef %3, i64 noundef %or, i32 noundef %7) #13, !dbg !1458
  br label %if.end, !dbg !1458

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %low, align 8, !dbg !1459
  %9 = load i64, ptr %high, align 8, !dbg !1459
  %shl3 = shl i64 %9, 32, !dbg !1459
  %or4 = or i64 %8, %shl3, !dbg !1459
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #14, !dbg !1460
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #14, !dbg !1460
  ret i64 %or4, !dbg !1461
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @div_u64_rem(i64 noundef %dividend, i32 noundef %divisor, ptr noundef %remainder) #4 align 16 !dbg !1462 {
entry:
  %dividend.addr = alloca i64, align 8
  %divisor.addr = alloca i32, align 4
  %remainder.addr = alloca ptr, align 8
  store i64 %dividend, ptr %dividend.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dividend.addr, metadata !1467, metadata !DIExpression()), !dbg !1470
  store i32 %divisor, ptr %divisor.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %divisor.addr, metadata !1468, metadata !DIExpression()), !dbg !1471
  store ptr %remainder, ptr %remainder.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %remainder.addr, metadata !1469, metadata !DIExpression()), !dbg !1472
  %0 = load i64, ptr %dividend.addr, align 8, !dbg !1473
  %1 = load i32, ptr %divisor.addr, align 4, !dbg !1474
  %conv = zext i32 %1 to i64, !dbg !1474
  %rem = urem i64 %0, %conv, !dbg !1475
  %conv1 = trunc i64 %rem to i32, !dbg !1473
  %2 = load ptr, ptr %remainder.addr, align 8, !dbg !1476
  store i32 %conv1, ptr %2, align 4, !dbg !1477
  %3 = load i64, ptr %dividend.addr, align 8, !dbg !1478
  %4 = load i32, ptr %divisor.addr, align 4, !dbg !1479
  %conv2 = zext i32 %4 to i64, !dbg !1479
  %div = udiv i64 %3, %conv2, !dbg !1480
  ret i64 %div, !dbg !1481
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #7 = { nocallback nounwind }
attributes #8 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noredzone }
attributes #14 = { nounwind }
attributes #15 = { cold noredzone }
attributes #16 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!222}
!llvm.module.flags = !{!223, !224, !225, !226, !227, !228, !229, !230}
!llvm.ident = !{!231}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "arch_scale_freq_key", scope: !2, file: !3, line: 85, type: !194, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.aperfmperf.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/aperfmperf\22 -D KBUILD_BASENAME=\22aperfmperf\22 -D KBUILD_MODNAME=\22aperfmperf\22 -D __KBUILD_MODNAME=kmod_aperfmperf -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/aperfmperf.ll arch/x86/kernel/cpu/aperfmperf.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !37, globals: !79, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/aperfmperf.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d93c6ab332448568e8470ec4c888a785")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 30, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36}
!14 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!15 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!16 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!17 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!18 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!19 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!20 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!21 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!22 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!23 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!24 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!25 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!26 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!27 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!28 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!29 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!30 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!31 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!32 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!33 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!34 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!35 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!36 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!37 = !{!38, !39, !59, !60, !49, !61, !64, !51, !66, !7, !75, !78}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aperfmperf", file: !3, line: 26, size: 384, elements: !41)
!41 = !{!42, !48, !50, !56, !57, !58}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !40, file: !3, line: 27, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !44, line: 69, baseType: !45)
!44 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !44, line: 64, size: 32, elements: !46)
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !45, file: !44, line: 65, baseType: !7, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "last_update", scope: !40, file: !3, line: 28, baseType: !49, size: 64, offset: 64)
!49 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "acnt", scope: !40, file: !3, line: 29, baseType: !51, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !52, line: 23, baseType: !53)
!52 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !54, line: 31, baseType: !55)
!54 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!55 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "mcnt", scope: !40, file: !3, line: 30, baseType: !51, size: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "aperf", scope: !40, file: !3, line: 31, baseType: !51, size: 64, offset: 256)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "mperf", scope: !40, file: !3, line: 32, baseType: !51, size: 64, offset: 320)
!59 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !52, line: 21, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !54, line: 27, baseType: !7)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !69, line: 19, size: 64, elements: !70)
!69 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!70 = !{!71}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !68, file: !69, line: 19, baseType: !72, size: 64)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 64, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!79 = !{!0, !80, !82, !84, !102, !104, !106, !108, !113, !118, !137, !139, !144, !165, !184, !189}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_arch_set_max_freq_ratio224", scope: !2, file: !3, line: 95, type: !38, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "arch_freq_scale", scope: !2, file: !3, line: 348, type: !49, isLocal: false, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule225", scope: !86, file: !3, line: 402, type: !38, isLocal: true, isDefinition: true)
!86 = distinct !DISubprogram(name: "arch_scale_freq_tick", scope: !3, file: !3, line: 382, type: !87, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !89)
!87 = !DISubroutineType(types: !88)
!88 = !{null}
!89 = !{!90, !91, !96, !98, !99, !100, !101}
!90 = !DILocalVariable(name: "s", scope: !86, file: !3, line: 384, type: !39)
!91 = !DILocalVariable(name: "__vpp_verify", scope: !92, file: !3, line: 384, type: !94)
!92 = distinct !DILexicalBlock(scope: !93, file: !3, line: 384, column: 25)
!93 = distinct !DILexicalBlock(scope: !86, file: !3, line: 384, column: 25)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!96 = !DILocalVariable(name: "tcp_ptr__", scope: !97, file: !3, line: 384, type: !49)
!97 = distinct !DILexicalBlock(scope: !93, file: !3, line: 384, column: 25)
!98 = !DILocalVariable(name: "acnt", scope: !86, file: !3, line: 385, type: !51)
!99 = !DILocalVariable(name: "mcnt", scope: !86, file: !3, line: 385, type: !51)
!100 = !DILocalVariable(name: "aperf", scope: !86, file: !3, line: 385, type: !51)
!101 = !DILocalVariable(name: "mperf", scope: !86, file: !3, line: 385, type: !51)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_aperfmperf__226_454_bp_init_aperfmperfearly227", scope: !2, file: !3, line: 454, type: !38, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "arch_turbo_freq_ratio", scope: !2, file: !3, line: 87, type: !51, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "arch_max_freq_ratio", scope: !2, file: !3, line: 88, type: !51, isLocal: true, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 307, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 264, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 33)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 312, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 648, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 81)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(name: "freq_invariance_syscore_ops", scope: !2, file: !3, line: 292, type: !120, isLocal: true, isDefinition: true)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscore_ops", file: !121, line: 13, size: 320, elements: !122)
!121 = !DIFile(filename: "./include/linux/syscore_ops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59d2685cd3ea081e18f1bbec40d890d")
!122 = !{!123, !130, !134, !136}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !120, file: !121, line: 14, baseType: !124, size: 128)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !125, line: 190, size: 128, elements: !126)
!125 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!126 = !{!127, !129}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !124, file: !125, line: 191, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !124, file: !125, line: 191, baseType: !128, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !120, file: !121, line: 15, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!59}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !120, file: !121, line: 16, baseType: !135, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !120, file: !121, line: 17, baseType: !135, size: 64, offset: 256)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "cpu_samples", scope: !2, file: !3, line: 35, type: !40, isLocal: true, isDefinition: true, align: 512)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !3, line: 374, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 464, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 58)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "disable_freq_invariance_work", scope: !2, file: !3, line: 345, type: !146, isLocal: true, isDefinition: true)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !12, line: 98, size: 256, elements: !147)
!147 = !{!148, !158, !159}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !146, file: !12, line: 99, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !150, line: 13, baseType: !151)
!150 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !125, line: 181, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 179, size: 64, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !152, file: !125, line: 180, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !52, line: 22, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !54, line: 30, baseType: !157)
!157 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !146, file: !12, line: 100, baseType: !124, size: 128, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !146, file: !12, line: 101, baseType: !160, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !12, line: 21, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !164}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "has_glm_turbo_ratio_limits", scope: !2, file: !3, line: 142, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 768, elements: !182)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "x86_cpu_id", file: !170, line: 687, size: 192, elements: !171)
!170 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!171 = !{!172, !175, !176, !177, !178, !179, !180}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !169, file: !170, line: 688, baseType: !173, size: 16)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !54, line: 24, baseType: !174)
!174 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !169, file: !170, line: 689, baseType: !173, size: 16, offset: 16)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !169, file: !170, line: 690, baseType: !173, size: 16, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "steppings", scope: !169, file: !170, line: 691, baseType: !173, size: 16, offset: 48)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "feature", scope: !169, file: !170, line: 692, baseType: !173, size: 16, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !169, file: !170, line: 694, baseType: !173, size: 16, offset: 80)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !169, file: !170, line: 695, baseType: !181, size: 64, offset: 128)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !170, line: 15, baseType: !49)
!182 = !{!183}
!183 = !DISubrange(count: 4)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "has_knl_turbo_ratio_limits", scope: !2, file: !3, line: 131, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 576, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 3)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(name: "has_skx_turbo_ratio_limits", scope: !2, file: !3, line: 137, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 384, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 2)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !195, line: 363, size: 128, elements: !196)
!195 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !194, file: !195, line: 364, baseType: !198, size: 128)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !195, line: 85, size: 128, elements: !199)
!199 = !{!200, !205}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !198, file: !195, line: 86, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !125, line: 174, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !125, line: 172, size: 32, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !202, file: !125, line: 173, baseType: !59, size: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, scope: !198, file: !195, line: 101, baseType: !206, size: 64, offset: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !195, line: 101, size: 64, elements: !207)
!207 = !{!208, !209, !219}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !206, file: !195, line: 102, baseType: !49, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !206, file: !195, line: 103, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !195, line: 117, size: 128, elements: !212)
!212 = !{!213, !216, !217}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !211, file: !195, line: 118, baseType: !214, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !52, line: 20, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !54, line: 26, baseType: !59)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !211, file: !195, line: 119, baseType: !214, size: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !211, file: !195, line: 120, baseType: !218, size: 64, offset: 64)
!218 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !206, file: !195, line: 104, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !195, line: 104, flags: DIFlagFwdDecl)
!222 = !{!"rsp"}
!223 = !{i32 7, !"Dwarf Version", i32 5}
!224 = !{i32 2, !"Debug Info Version", i32 3}
!225 = !{i32 1, !"wchar_size", i32 2}
!226 = !{i32 8, !"cf-protection-branch", i32 1}
!227 = !{i32 4, !"function_return_thunk_extern", i32 1}
!228 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!229 = !{i32 1, !"Code Model", i32 2}
!230 = !{i32 1, !"override-stack-alignment", i32 8}
!231 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!232 = distinct !DISubprogram(name: "arch_set_max_freq_ratio", scope: !3, file: !3, line: 90, type: !233, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !235}
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !125, line: 35, baseType: !236)
!236 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!237 = !{!238}
!238 = !DILocalVariable(name: "turbo_disabled", arg: 1, scope: !232, file: !3, line: 90, type: !235)
!239 = !DILocation(line: 90, column: 35, scope: !232)
!240 = !DILocation(line: 92, column: 24, scope: !232)
!241 = !{i8 0, i8 2}
!242 = !{}
!243 = !DILocation(line: 93, column: 6, scope: !232)
!244 = !DILocation(line: 92, column: 22, scope: !232)
!245 = !DILocation(line: 94, column: 1, scope: !232)
!246 = distinct !DISubprogram(name: "freq_invariance_set_perf_ratio", scope: !3, file: !3, line: 315, type: !247, scopeLine: 316, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !249)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !51, !235}
!249 = !{!250, !251}
!250 = !DILocalVariable(name: "ratio", arg: 1, scope: !246, file: !3, line: 315, type: !51)
!251 = !DILocalVariable(name: "turbo_disabled", arg: 2, scope: !246, file: !3, line: 315, type: !235)
!252 = !DILocation(line: 315, column: 41, scope: !246)
!253 = !DILocation(line: 315, column: 53, scope: !246)
!254 = !DILocation(line: 317, column: 26, scope: !246)
!255 = !DILocation(line: 317, column: 24, scope: !246)
!256 = !DILocation(line: 318, column: 26, scope: !246)
!257 = !DILocation(line: 318, column: 2, scope: !246)
!258 = !DILocation(line: 319, column: 2, scope: !246)
!259 = !DILocation(line: 320, column: 1, scope: !246)
!260 = distinct !DISubprogram(name: "freq_invariance_enable", scope: !3, file: !3, line: 304, type: !87, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !261)
!261 = !{!262, !265, !268}
!262 = !DILocalVariable(name: "branch", scope: !263, file: !3, line: 306, type: !235)
!263 = distinct !DILexicalBlock(scope: !264, file: !3, line: 306, column: 6)
!264 = distinct !DILexicalBlock(scope: !260, file: !3, line: 306, column: 6)
!265 = !DILocalVariable(name: "__ret_warn_on", scope: !266, file: !3, line: 307, type: !59)
!266 = distinct !DILexicalBlock(scope: !267, file: !3, line: 307, column: 3)
!267 = distinct !DILexicalBlock(scope: !264, file: !3, line: 306, column: 52)
!268 = !DILocalVariable(name: "__flags", scope: !269, file: !3, line: 307, type: !59)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 307, column: 3)
!270 = distinct !DILexicalBlock(scope: !266, file: !3, line: 307, column: 3)
!271 = !DILocation(line: 306, column: 6, scope: !263)
!272 = !DILocation(line: 306, column: 6, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !3, line: 306, column: 6)
!274 = distinct !DILexicalBlock(scope: !263, file: !3, line: 306, column: 6)
!275 = !DILocation(line: 306, column: 6, scope: !274)
!276 = !DILocation(line: 306, column: 6, scope: !264)
!277 = !DILocation(line: 306, column: 6, scope: !260)
!278 = !DILocation(line: 307, column: 3, scope: !266)
!279 = !DILocation(line: 307, column: 3, scope: !270)
!280 = !DILocation(line: 307, column: 3, scope: !269)
!281 = !DILocation(line: 307, column: 3, scope: !282)
!282 = distinct !DILexicalBlock(scope: !269, file: !3, line: 307, column: 3)
!283 = !DILocation(line: 307, column: 3, scope: !284)
!284 = distinct !DILexicalBlock(scope: !269, file: !3, line: 307, column: 3)
!285 = !{i64 2153202715, i64 2153202744, i64 2153202790, i64 2153202848, i64 2153202902, i64 2153202956, i64 2153203011, i64 2153203042, i64 2153203350, i64 2153203356, i64 2153203403, i64 2153203426, i64 2153203452}
!286 = !DILocation(line: 307, column: 3, scope: !287)
!287 = distinct !DILexicalBlock(scope: !269, file: !3, line: 307, column: 3)
!288 = !DILocation(line: 307, column: 3, scope: !267)
!289 = !DILocation(line: 308, column: 3, scope: !267)
!290 = !DILocation(line: 310, column: 2, scope: !260)
!291 = !DILocation(line: 311, column: 2, scope: !260)
!292 = !DILocation(line: 312, column: 2, scope: !293)
!293 = distinct !DILexicalBlock(scope: !260, file: !3, line: 312, column: 2)
!294 = !DILocation(line: 312, column: 2, scope: !295)
!295 = distinct !DILexicalBlock(scope: !293, file: !3, line: 312, column: 2)
!296 = !DILocation(line: 313, column: 1, scope: !260)
!297 = !DILocation(line: 384, column: 2, scope: !86)
!298 = !DILocation(line: 384, column: 21, scope: !86)
!299 = !DILocation(line: 384, column: 25, scope: !93)
!300 = !DILocation(line: 384, column: 25, scope: !92)
!301 = !DILocation(line: 384, column: 25, scope: !97)
!302 = !{i64 2153213778}
!303 = !DILocation(line: 385, column: 2, scope: !86)
!304 = !DILocation(line: 385, column: 6, scope: !86)
!305 = !DILocation(line: 385, column: 12, scope: !86)
!306 = !DILocation(line: 385, column: 18, scope: !86)
!307 = !DILocation(line: 385, column: 25, scope: !86)
!308 = !DILocation(line: 387, column: 6, scope: !86)
!309 = !DILocation(line: 387, column: 7, scope: !310)
!310 = distinct !DILexicalBlock(scope: !86, file: !3, line: 387, column: 6)
!311 = !DILocation(line: 388, column: 3, scope: !310)
!312 = !DILocation(line: 390, column: 2, scope: !86)
!313 = !DILocation(line: 391, column: 2, scope: !86)
!314 = !DILocation(line: 392, column: 9, scope: !86)
!315 = !DILocation(line: 392, column: 17, scope: !86)
!316 = !DILocation(line: 392, column: 20, scope: !86)
!317 = !DILocation(line: 392, column: 15, scope: !86)
!318 = !DILocation(line: 392, column: 7, scope: !86)
!319 = !DILocation(line: 393, column: 9, scope: !86)
!320 = !DILocation(line: 393, column: 17, scope: !86)
!321 = !DILocation(line: 393, column: 20, scope: !86)
!322 = !DILocation(line: 393, column: 15, scope: !86)
!323 = !DILocation(line: 393, column: 7, scope: !86)
!324 = !DILocation(line: 395, column: 13, scope: !86)
!325 = !DILocation(line: 395, column: 2, scope: !86)
!326 = !DILocation(line: 395, column: 5, scope: !86)
!327 = !DILocation(line: 395, column: 11, scope: !86)
!328 = !DILocation(line: 396, column: 13, scope: !86)
!329 = !DILocation(line: 396, column: 2, scope: !86)
!330 = !DILocation(line: 396, column: 5, scope: !86)
!331 = !DILocation(line: 396, column: 11, scope: !86)
!332 = !DILocation(line: 398, column: 2, scope: !86)
!333 = !DILocation(line: 398, column: 2, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !3, line: 398, column: 2)
!335 = distinct !DILexicalBlock(scope: !86, file: !3, line: 398, column: 2)
!336 = !DILocation(line: 398, column: 2, scope: !335)
!337 = !DILocation(line: 398, column: 2, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !3, line: 398, column: 2)
!339 = !{i64 2153235827}
!340 = !DILocation(line: 399, column: 19, scope: !86)
!341 = !DILocation(line: 399, column: 2, scope: !86)
!342 = !DILocation(line: 399, column: 5, scope: !86)
!343 = !DILocation(line: 399, column: 17, scope: !86)
!344 = !DILocation(line: 400, column: 12, scope: !86)
!345 = !DILocation(line: 400, column: 2, scope: !86)
!346 = !DILocation(line: 400, column: 5, scope: !86)
!347 = !DILocation(line: 400, column: 10, scope: !86)
!348 = !DILocation(line: 401, column: 12, scope: !86)
!349 = !DILocation(line: 401, column: 2, scope: !86)
!350 = !DILocation(line: 401, column: 5, scope: !86)
!351 = !DILocation(line: 401, column: 10, scope: !86)
!352 = !DILocation(line: 402, column: 2, scope: !86)
!353 = !DILocation(line: 402, column: 2, scope: !354)
!354 = distinct !DILexicalBlock(scope: !86, file: !3, line: 402, column: 2)
!355 = !DILocation(line: 402, column: 2, scope: !356)
!356 = distinct !DILexicalBlock(scope: !354, file: !3, line: 402, column: 2)
!357 = !DILocation(line: 402, column: 2, scope: !358)
!358 = distinct !DILexicalBlock(scope: !356, file: !3, line: 402, column: 2)
!359 = !{i64 2153239009}
!360 = !DILocation(line: 402, column: 2, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !3, line: 402, column: 2)
!362 = !DILocation(line: 402, column: 2, scope: !363)
!363 = distinct !DILexicalBlock(scope: !361, file: !3, line: 402, column: 2)
!364 = !{i64 2153239191}
!365 = !DILocation(line: 404, column: 18, scope: !86)
!366 = !DILocation(line: 404, column: 24, scope: !86)
!367 = !DILocation(line: 404, column: 2, scope: !86)
!368 = !DILocation(line: 405, column: 1, scope: !86)
!369 = distinct !DISubprogram(name: "arch_test_bit", scope: !370, file: !370, line: 237, type: !371, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !376)
!370 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!371 = !DISubroutineType(types: !372)
!372 = !{!235, !49, !373}
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !49)
!376 = !{!377, !378}
!377 = !DILocalVariable(name: "nr", arg: 1, scope: !369, file: !370, line: 237, type: !49)
!378 = !DILocalVariable(name: "addr", arg: 2, scope: !369, file: !370, line: 237, type: !373)
!379 = !DILocation(line: 237, column: 29, scope: !369)
!380 = !DILocation(line: 237, column: 63, scope: !369)
!381 = !DILocation(line: 239, column: 30, scope: !369)
!382 = !DILocation(line: 239, column: 9, scope: !369)
!383 = !DILocation(line: 239, column: 54, scope: !369)
!384 = !DILocation(line: 239, column: 58, scope: !369)
!385 = !DILocation(line: 239, column: 36, scope: !369)
!386 = !DILocation(line: 240, column: 26, scope: !369)
!387 = !DILocation(line: 240, column: 30, scope: !369)
!388 = !DILocation(line: 240, column: 8, scope: !369)
!389 = !DILocation(line: 239, column: 2, scope: !369)
!390 = distinct !DISubprogram(name: "_static_cpu_has", scope: !391, file: !391, line: 173, type: !392, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !395)
!391 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!392 = !DISubroutineType(types: !393)
!393 = !{!235, !394}
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !52, line: 19, baseType: !173)
!395 = !{!396, !397, !398}
!396 = !DILocalVariable(name: "bit", arg: 1, scope: !390, file: !391, line: 173, type: !394)
!397 = !DILabel(scope: !390, name: "t_yes", file: !391, line: 187)
!398 = !DILabel(scope: !390, name: "t_no", file: !391, line: 189)
!399 = !DILocation(line: 173, column: 49, scope: !390)
!400 = !DILocation(line: 183, column: 24, scope: !390)
!401 = !DILocation(line: 184, column: 30, scope: !390)
!402 = !DILocation(line: 184, column: 34, scope: !390)
!403 = !DILocation(line: 184, column: 26, scope: !390)
!404 = !DILocation(line: 185, column: 70, scope: !390)
!405 = !DILocation(line: 185, column: 74, scope: !390)
!406 = !DILocation(line: 185, column: 25, scope: !390)
!407 = !DILocation(line: 175, column: 2, scope: !390)
!408 = !{i64 2149561787, i64 2149561820, i64 2149561826, i64 2149561842, i64 2149561861, i64 2149561892, i64 2149562845, i64 2149561434, i64 2149562851, i64 2149562899, i64 2149562963, i64 2149563027, i64 2149563084, i64 2149563291, i64 2149563339, i64 2149563403, i64 2149563467, i64 2149563524, i64 2149561552, i64 2149561577, i64 2149563734, i64 2149563862, i64 2149563795, i64 2149563876, i64 2149563890, i64 2149564006, i64 2149563951, i64 2149564020, i64 2149561711, i64 1743044, i64 1743084, i64 1743093, i64 1743143, i64 1743164, i64 1743184}
!409 = !DILocation(line: 187, column: 1, scope: !390)
!410 = !DILocation(line: 188, column: 2, scope: !390)
!411 = !DILocation(line: 189, column: 1, scope: !390)
!412 = !DILocation(line: 190, column: 2, scope: !390)
!413 = !DILocation(line: 191, column: 1, scope: !390)
!414 = distinct !DISubprogram(name: "native_read_msr", scope: !415, file: !415, line: 114, type: !416, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !418)
!415 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!416 = !DISubroutineType(types: !417)
!417 = !{!55, !7}
!418 = !{!419, !420}
!419 = !DILocalVariable(name: "msr", arg: 1, scope: !414, file: !415, line: 114, type: !7)
!420 = !DILocalVariable(name: "val", scope: !414, file: !415, line: 116, type: !55)
!421 = !DILocation(line: 114, column: 63, scope: !414)
!422 = !DILocation(line: 116, column: 2, scope: !414)
!423 = !DILocation(line: 116, column: 21, scope: !414)
!424 = !DILocation(line: 118, column: 16, scope: !414)
!425 = !DILocation(line: 118, column: 8, scope: !414)
!426 = !DILocation(line: 118, column: 6, scope: !414)
!427 = !DILocation(line: 120, column: 6, scope: !428)
!428 = distinct !DILexicalBlock(scope: !414, file: !415, line: 120, column: 6)
!429 = !DILocation(line: 120, column: 6, scope: !414)
!430 = !DILocation(line: 121, column: 21, scope: !428)
!431 = !DILocation(line: 121, column: 26, scope: !428)
!432 = !DILocation(line: 121, column: 3, scope: !428)
!433 = !DILocation(line: 123, column: 9, scope: !414)
!434 = !DILocation(line: 124, column: 1, scope: !414)
!435 = !DILocation(line: 123, column: 2, scope: !414)
!436 = distinct !DISubprogram(name: "__seqprop_preemptible", scope: !44, file: !44, line: 262, type: !437, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !441)
!437 = !DISubroutineType(types: !438)
!438 = !{!235, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!441 = !{!442}
!442 = !DILocalVariable(name: "s", arg: 1, scope: !436, file: !44, line: 262, type: !439)
!443 = !DILocation(line: 262, column: 60, scope: !436)
!444 = !DILocation(line: 264, column: 2, scope: !436)
!445 = distinct !DISubprogram(name: "__preempt_count_add", scope: !446, file: !446, line: 78, type: !447, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !449)
!446 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!447 = !DISubroutineType(types: !448)
!448 = !{null, !59}
!449 = !{!450, !451, !454}
!450 = !DILocalVariable(name: "val", arg: 1, scope: !445, file: !446, line: 78, type: !59)
!451 = !DILocalVariable(name: "pao_ID__", scope: !452, file: !446, line: 80, type: !453)
!452 = distinct !DILexicalBlock(scope: !445, file: !446, line: 80, column: 2)
!453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!454 = !DILocalVariable(name: "pto_val__", scope: !455, file: !446, line: 80, type: !64)
!455 = distinct !DILexicalBlock(scope: !456, file: !446, line: 80, column: 2)
!456 = distinct !DILexicalBlock(scope: !457, file: !446, line: 80, column: 2)
!457 = distinct !DILexicalBlock(scope: !452, file: !446, line: 80, column: 2)
!458 = !DILocation(line: 78, column: 53, scope: !445)
!459 = !DILocation(line: 80, column: 2, scope: !445)
!460 = !DILocation(line: 80, column: 2, scope: !452)
!461 = !DILocation(line: 80, column: 2, scope: !457)
!462 = !DILocation(line: 80, column: 2, scope: !463)
!463 = distinct !DILexicalBlock(scope: !457, file: !446, line: 80, column: 2)
!464 = !{i64 2149582876}
!465 = !DILocation(line: 80, column: 2, scope: !456)
!466 = !DILocation(line: 80, column: 2, scope: !467)
!467 = distinct !DILexicalBlock(scope: !456, file: !446, line: 80, column: 2)
!468 = !{i64 2149583171}
!469 = !DILocation(line: 80, column: 2, scope: !455)
!470 = !{i64 2149583876}
!471 = !DILocation(line: 81, column: 1, scope: !445)
!472 = distinct !DISubprogram(name: "do_raw_write_seqcount_begin", scope: !44, file: !44, line: 466, type: !473, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !476)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!476 = !{!477}
!477 = !DILocalVariable(name: "s", arg: 1, scope: !472, file: !44, line: 466, type: !475)
!478 = !DILocation(line: 466, column: 60, scope: !472)
!479 = !DILocation(line: 468, column: 2, scope: !472)
!480 = !DILocation(line: 469, column: 2, scope: !472)
!481 = !DILocation(line: 469, column: 5, scope: !472)
!482 = !DILocation(line: 469, column: 13, scope: !472)
!483 = !DILocation(line: 470, column: 2, scope: !472)
!484 = !DILocation(line: 470, column: 2, scope: !485)
!485 = distinct !DILexicalBlock(scope: !472, file: !44, line: 470, column: 2)
!486 = !DILocation(line: 470, column: 2, scope: !487)
!487 = distinct !DILexicalBlock(scope: !485, file: !44, line: 470, column: 2)
!488 = !{i64 2150746665}
!489 = !DILocation(line: 471, column: 1, scope: !472)
!490 = distinct !DISubprogram(name: "__seqprop_ptr", scope: !44, file: !44, line: 252, type: !491, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{!475, !475}
!493 = !{!494}
!494 = !DILocalVariable(name: "s", arg: 1, scope: !490, file: !44, line: 252, type: !475)
!495 = !DILocation(line: 252, column: 53, scope: !490)
!496 = !DILocation(line: 254, column: 9, scope: !490)
!497 = !DILocation(line: 254, column: 2, scope: !490)
!498 = distinct !DISubprogram(name: "do_raw_write_seqcount_end", scope: !44, file: !44, line: 487, type: !473, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !499)
!499 = !{!500}
!500 = !DILocalVariable(name: "s", arg: 1, scope: !498, file: !44, line: 487, type: !475)
!501 = !DILocation(line: 487, column: 58, scope: !498)
!502 = !DILocation(line: 489, column: 2, scope: !498)
!503 = !DILocation(line: 489, column: 2, scope: !504)
!504 = distinct !DILexicalBlock(scope: !498, file: !44, line: 489, column: 2)
!505 = !DILocation(line: 489, column: 2, scope: !506)
!506 = distinct !DILexicalBlock(scope: !504, file: !44, line: 489, column: 2)
!507 = !{i64 2150746938}
!508 = !DILocation(line: 490, column: 2, scope: !498)
!509 = !DILocation(line: 490, column: 5, scope: !498)
!510 = !DILocation(line: 490, column: 13, scope: !498)
!511 = !DILocation(line: 491, column: 2, scope: !498)
!512 = !DILocation(line: 492, column: 1, scope: !498)
!513 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !446, file: !446, line: 93, type: !514, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !516)
!514 = !DISubroutineType(types: !515)
!515 = !{!235}
!516 = !{!517}
!517 = !DILocalVariable(name: "c", scope: !518, file: !446, line: 95, type: !235)
!518 = distinct !DILexicalBlock(scope: !513, file: !446, line: 95, column: 9)
!519 = !DILocation(line: 95, column: 9, scope: !518)
!520 = !{i64 2149587232, i64 2149587325}
!521 = !DILocation(line: 95, column: 9, scope: !513)
!522 = !DILocation(line: 95, column: 2, scope: !513)
!523 = distinct !DISubprogram(name: "scale_freq_tick", scope: !3, file: !3, line: 350, type: !524, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !526)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !51, !51}
!526 = !{!527, !528, !529, !530, !533, !536, !537, !538, !539, !540, !543, !545}
!527 = !DILocalVariable(name: "acnt", arg: 1, scope: !523, file: !3, line: 350, type: !51)
!528 = !DILocalVariable(name: "mcnt", arg: 2, scope: !523, file: !3, line: 350, type: !51)
!529 = !DILocalVariable(name: "freq_scale", scope: !523, file: !3, line: 352, type: !51)
!530 = !DILocalVariable(name: "branch", scope: !531, file: !3, line: 354, type: !235)
!531 = distinct !DILexicalBlock(scope: !532, file: !3, line: 354, column: 7)
!532 = distinct !DILexicalBlock(scope: !523, file: !3, line: 354, column: 6)
!533 = !DILocalVariable(name: "_a", scope: !534, file: !3, line: 357, type: !51)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 357, column: 6)
!535 = distinct !DILexicalBlock(scope: !523, file: !3, line: 357, column: 6)
!536 = !DILocalVariable(name: "_s", scope: !534, file: !3, line: 357, type: !59)
!537 = !DILocalVariable(name: "_d", scope: !534, file: !3, line: 357, type: !78)
!538 = !DILocalVariable(name: "_a_full", scope: !534, file: !3, line: 357, type: !51)
!539 = !DILocalVariable(name: "_to_shift", scope: !534, file: !3, line: 357, type: !7)
!540 = !DILocalVariable(name: "__vpp_verify", scope: !541, file: !3, line: 370, type: !94)
!541 = distinct !DILexicalBlock(scope: !542, file: !3, line: 370, column: 2)
!542 = distinct !DILexicalBlock(scope: !523, file: !3, line: 370, column: 2)
!543 = !DILocalVariable(name: "pto_val__", scope: !544, file: !3, line: 370, type: !51)
!544 = distinct !DILexicalBlock(scope: !542, file: !3, line: 370, column: 2)
!545 = !DILabel(scope: !523, name: "error", file: !3, line: 373)
!546 = !DILocation(line: 350, column: 33, scope: !523)
!547 = !DILocation(line: 350, column: 43, scope: !523)
!548 = !DILocation(line: 352, column: 2, scope: !523)
!549 = !DILocation(line: 352, column: 6, scope: !523)
!550 = !DILocation(line: 354, column: 7, scope: !531)
!551 = !DILocation(line: 354, column: 7, scope: !552)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 354, column: 7)
!553 = distinct !DILexicalBlock(scope: !531, file: !3, line: 354, column: 7)
!554 = !DILocation(line: 354, column: 7, scope: !553)
!555 = !DILocation(line: 354, column: 7, scope: !532)
!556 = !DILocation(line: 354, column: 6, scope: !523)
!557 = !DILocation(line: 355, column: 3, scope: !532)
!558 = !DILocation(line: 357, column: 6, scope: !534)
!559 = !DILocation(line: 357, column: 6, scope: !535)
!560 = !DILocation(line: 357, column: 6, scope: !523)
!561 = !DILocation(line: 358, column: 3, scope: !535)
!562 = !DILocation(line: 360, column: 6, scope: !563)
!563 = distinct !DILexicalBlock(scope: !523, file: !3, line: 360, column: 6)
!564 = !DILocation(line: 360, column: 59, scope: !563)
!565 = !DILocation(line: 360, column: 63, scope: !563)
!566 = !DILocation(line: 360, column: 6, scope: !523)
!567 = !DILocation(line: 361, column: 3, scope: !563)
!568 = !DILocation(line: 363, column: 25, scope: !523)
!569 = !DILocation(line: 363, column: 31, scope: !523)
!570 = !DILocation(line: 363, column: 15, scope: !523)
!571 = !DILocation(line: 363, column: 13, scope: !523)
!572 = !DILocation(line: 364, column: 7, scope: !573)
!573 = distinct !DILexicalBlock(scope: !523, file: !3, line: 364, column: 6)
!574 = !DILocation(line: 364, column: 6, scope: !523)
!575 = !DILocation(line: 365, column: 3, scope: !573)
!576 = !DILocation(line: 367, column: 6, scope: !577)
!577 = distinct !DILexicalBlock(scope: !523, file: !3, line: 367, column: 6)
!578 = !DILocation(line: 367, column: 17, scope: !577)
!579 = !DILocation(line: 367, column: 6, scope: !523)
!580 = !DILocation(line: 368, column: 14, scope: !577)
!581 = !DILocation(line: 368, column: 3, scope: !577)
!582 = !DILocation(line: 370, column: 2, scope: !523)
!583 = !DILocation(line: 370, column: 2, scope: !542)
!584 = !DILocation(line: 370, column: 2, scope: !541)
!585 = !DILocation(line: 370, column: 2, scope: !544)
!586 = !{i64 2153212663}
!587 = !DILocation(line: 371, column: 2, scope: !523)
!588 = !DILocation(line: 373, column: 1, scope: !523)
!589 = !DILocation(line: 374, column: 2, scope: !590)
!590 = distinct !DILexicalBlock(scope: !523, file: !3, line: 374, column: 2)
!591 = !DILocation(line: 374, column: 2, scope: !592)
!592 = distinct !DILexicalBlock(scope: !590, file: !3, line: 374, column: 2)
!593 = !DILocation(line: 375, column: 2, scope: !523)
!594 = !DILocation(line: 376, column: 1, scope: !523)
!595 = distinct !DISubprogram(name: "arch_freq_get_on_cpu", scope: !3, file: !3, line: 414, type: !596, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!7, !59}
!598 = !{!599, !600, !601, !604, !606, !607, !608, !609, !610, !611, !614, !616}
!599 = !DILocalVariable(name: "cpu", arg: 1, scope: !595, file: !3, line: 414, type: !59)
!600 = !DILocalVariable(name: "s", scope: !595, file: !3, line: 416, type: !39)
!601 = !DILocalVariable(name: "__vpp_verify", scope: !602, file: !3, line: 416, type: !94)
!602 = distinct !DILexicalBlock(scope: !603, file: !3, line: 416, column: 25)
!603 = distinct !DILexicalBlock(scope: !595, file: !3, line: 416, column: 25)
!604 = !DILocalVariable(name: "__ptr", scope: !605, file: !3, line: 416, type: !49)
!605 = distinct !DILexicalBlock(scope: !603, file: !3, line: 416, column: 25)
!606 = !DILocalVariable(name: "seq", scope: !595, file: !3, line: 417, type: !7)
!607 = !DILocalVariable(name: "freq", scope: !595, file: !3, line: 417, type: !7)
!608 = !DILocalVariable(name: "last", scope: !595, file: !3, line: 418, type: !49)
!609 = !DILocalVariable(name: "acnt", scope: !595, file: !3, line: 419, type: !51)
!610 = !DILocalVariable(name: "mcnt", scope: !595, file: !3, line: 419, type: !51)
!611 = !DILocalVariable(name: "_seq", scope: !612, file: !3, line: 425, type: !7)
!612 = distinct !DILexicalBlock(scope: !613, file: !3, line: 425, column: 9)
!613 = distinct !DILexicalBlock(scope: !595, file: !3, line: 424, column: 5)
!614 = !DILocalVariable(name: "__seq", scope: !615, file: !3, line: 425, type: !7)
!615 = distinct !DILexicalBlock(scope: !612, file: !3, line: 425, column: 9)
!616 = !DILabel(scope: !595, name: "fallback", file: !3, line: 440)
!617 = !DILocation(line: 414, column: 39, scope: !595)
!618 = !DILocation(line: 416, column: 2, scope: !595)
!619 = !DILocation(line: 416, column: 21, scope: !595)
!620 = !DILocation(line: 416, column: 25, scope: !603)
!621 = !DILocation(line: 416, column: 25, scope: !602)
!622 = !DILocation(line: 416, column: 25, scope: !605)
!623 = !DILocation(line: 417, column: 2, scope: !595)
!624 = !DILocation(line: 417, column: 15, scope: !595)
!625 = !DILocation(line: 417, column: 20, scope: !595)
!626 = !DILocation(line: 418, column: 2, scope: !595)
!627 = !DILocation(line: 418, column: 16, scope: !595)
!628 = !DILocation(line: 419, column: 2, scope: !595)
!629 = !DILocation(line: 419, column: 6, scope: !595)
!630 = !DILocation(line: 419, column: 12, scope: !595)
!631 = !DILocation(line: 421, column: 6, scope: !595)
!632 = !DILocation(line: 421, column: 7, scope: !633)
!633 = distinct !DILexicalBlock(scope: !595, file: !3, line: 421, column: 6)
!634 = !DILocation(line: 422, column: 3, scope: !633)
!635 = !DILocation(line: 424, column: 2, scope: !595)
!636 = !DILocation(line: 425, column: 9, scope: !612)
!637 = !DILocation(line: 425, column: 9, scope: !615)
!638 = distinct !{!638, !637, !637, !639, !640}
!639 = !{!"llvm.loop.mustprogress"}
!640 = !{!"llvm.loop.unroll.disable"}
!641 = !DILocation(line: 425, column: 9, scope: !642)
!642 = distinct !DILexicalBlock(scope: !612, file: !3, line: 425, column: 9)
!643 = !DILocation(line: 425, column: 9, scope: !644)
!644 = distinct !DILexicalBlock(scope: !642, file: !3, line: 425, column: 9)
!645 = !DILocation(line: 425, column: 9, scope: !646)
!646 = distinct !DILexicalBlock(scope: !642, file: !3, line: 425, column: 9)
!647 = !DILocation(line: 425, column: 9, scope: !648)
!648 = distinct !DILexicalBlock(scope: !646, file: !3, line: 425, column: 9)
!649 = !{i64 2153263341}
!650 = !DILocation(line: 425, column: 9, scope: !613)
!651 = !DILocation(line: 425, column: 7, scope: !613)
!652 = !DILocation(line: 426, column: 10, scope: !613)
!653 = !DILocation(line: 426, column: 13, scope: !613)
!654 = !DILocation(line: 426, column: 8, scope: !613)
!655 = !DILocation(line: 427, column: 10, scope: !613)
!656 = !DILocation(line: 427, column: 13, scope: !613)
!657 = !DILocation(line: 427, column: 8, scope: !613)
!658 = !DILocation(line: 428, column: 10, scope: !613)
!659 = !DILocation(line: 428, column: 13, scope: !613)
!660 = !DILocation(line: 428, column: 8, scope: !613)
!661 = !DILocation(line: 429, column: 2, scope: !613)
!662 = !DILocation(line: 429, column: 11, scope: !595)
!663 = distinct !{!663, !635, !664, !639, !640}
!664 = !DILocation(line: 429, column: 44, scope: !595)
!665 = !DILocation(line: 435, column: 7, scope: !666)
!666 = distinct !DILexicalBlock(scope: !595, file: !3, line: 435, column: 6)
!667 = !DILocation(line: 435, column: 12, scope: !666)
!668 = !DILocation(line: 435, column: 16, scope: !666)
!669 = !DILocation(line: 435, column: 26, scope: !666)
!670 = !DILocation(line: 435, column: 24, scope: !666)
!671 = !DILocation(line: 435, column: 32, scope: !666)
!672 = !DILocation(line: 435, column: 6, scope: !595)
!673 = !DILocation(line: 436, column: 3, scope: !666)
!674 = !DILocation(line: 438, column: 20, scope: !595)
!675 = !DILocation(line: 438, column: 30, scope: !595)
!676 = !DILocation(line: 438, column: 28, scope: !595)
!677 = !DILocation(line: 438, column: 37, scope: !595)
!678 = !DILocation(line: 438, column: 9, scope: !595)
!679 = !DILocation(line: 438, column: 2, scope: !595)
!680 = !DILocation(line: 440, column: 1, scope: !595)
!681 = !DILocation(line: 441, column: 27, scope: !595)
!682 = !DILocation(line: 441, column: 9, scope: !595)
!683 = !DILocation(line: 441, column: 7, scope: !595)
!684 = !DILocation(line: 442, column: 9, scope: !595)
!685 = !DILocation(line: 442, column: 16, scope: !595)
!686 = !DILocation(line: 442, column: 23, scope: !595)
!687 = !DILocation(line: 442, column: 2, scope: !595)
!688 = !DILocation(line: 443, column: 1, scope: !595)
!689 = distinct !DISubprogram(name: "__seqprop_sequence", scope: !44, file: !44, line: 257, type: !690, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{!7, !439}
!692 = !{!693}
!693 = !DILocalVariable(name: "s", arg: 1, scope: !689, file: !44, line: 257, type: !439)
!694 = !DILocation(line: 257, column: 61, scope: !689)
!695 = !DILocation(line: 259, column: 9, scope: !696)
!696 = distinct !DILexicalBlock(scope: !689, file: !44, line: 259, column: 9)
!697 = !DILocation(line: 259, column: 9, scope: !698)
!698 = distinct !DILexicalBlock(scope: !696, file: !44, line: 259, column: 9)
!699 = !DILocation(line: 259, column: 2, scope: !689)
!700 = distinct !DISubprogram(name: "cpu_relax", scope: !701, file: !701, line: 16, type: !87, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!701 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!702 = !DILocation(line: 18, column: 2, scope: !700)
!703 = !DILocation(line: 19, column: 1, scope: !700)
!704 = distinct !DISubprogram(name: "kcsan_atomic_next", scope: !705, file: !705, line: 203, type: !447, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !706)
!705 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!706 = !{!707}
!707 = !DILocalVariable(name: "n", arg: 1, scope: !704, file: !705, line: 203, type: !59)
!708 = !DILocation(line: 203, column: 42, scope: !704)
!709 = !DILocation(line: 203, column: 48, scope: !704)
!710 = distinct !DISubprogram(name: "do_read_seqcount_retry", scope: !44, file: !44, line: 446, type: !711, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !713)
!711 = !DISubroutineType(types: !712)
!712 = !{!59, !439, !7}
!713 = !{!714, !715}
!714 = !DILocalVariable(name: "s", arg: 1, scope: !710, file: !44, line: 446, type: !439)
!715 = !DILocalVariable(name: "start", arg: 2, scope: !710, file: !44, line: 446, type: !7)
!716 = !DILocation(line: 446, column: 60, scope: !710)
!717 = !DILocation(line: 446, column: 72, scope: !710)
!718 = !DILocation(line: 448, column: 2, scope: !710)
!719 = !DILocation(line: 448, column: 2, scope: !720)
!720 = distinct !DILexicalBlock(scope: !710, file: !44, line: 448, column: 2)
!721 = !DILocation(line: 448, column: 2, scope: !722)
!722 = distinct !DILexicalBlock(scope: !720, file: !44, line: 448, column: 2)
!723 = !DILocation(line: 448, column: 2, scope: !724)
!724 = distinct !DILexicalBlock(scope: !720, file: !44, line: 448, column: 2)
!725 = !DILocation(line: 448, column: 2, scope: !726)
!726 = distinct !DILexicalBlock(scope: !724, file: !44, line: 448, column: 2)
!727 = !{i64 2150746392}
!728 = !DILocation(line: 449, column: 34, scope: !710)
!729 = !DILocation(line: 449, column: 37, scope: !710)
!730 = !DILocation(line: 449, column: 9, scope: !710)
!731 = !DILocation(line: 449, column: 2, scope: !710)
!732 = distinct !DISubprogram(name: "div64_u64", scope: !733, file: !733, line: 67, type: !734, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !736)
!733 = !DIFile(filename: "./include/linux/math64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8ed26cb78f71dd5066a07a0684eae84")
!734 = !DISubroutineType(types: !735)
!735 = !{!51, !51, !51}
!736 = !{!737, !738}
!737 = !DILocalVariable(name: "dividend", arg: 1, scope: !732, file: !733, line: 67, type: !51)
!738 = !DILocalVariable(name: "divisor", arg: 2, scope: !732, file: !733, line: 67, type: !51)
!739 = !DILocation(line: 67, column: 33, scope: !732)
!740 = !DILocation(line: 67, column: 47, scope: !732)
!741 = !DILocation(line: 69, column: 9, scope: !732)
!742 = !DILocation(line: 69, column: 20, scope: !732)
!743 = !DILocation(line: 69, column: 18, scope: !732)
!744 = !DILocation(line: 69, column: 2, scope: !732)
!745 = !DISubprogram(name: "cpufreq_quick_get", scope: !746, file: !746, line: 225, type: !747, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!746 = !DIFile(filename: "./include/linux/cpufreq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad5b2d8eef98749599a01da4cdfaed5a")
!747 = !DISubroutineType(types: !748)
!748 = !{!7, !7}
!749 = distinct !DISubprogram(name: "__initstub__kmod_aperfmperf__226_454_bp_init_aperfmperfearly", scope: !3, file: !3, line: 454, type: !132, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!750 = !DILocation(line: 454, column: 1, scope: !749)
!751 = distinct !DISubprogram(name: "bp_init_aperfmperf", scope: !3, file: !3, line: 445, type: !132, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!752 = !DILocation(line: 447, column: 6, scope: !751)
!753 = !DILocation(line: 447, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !751, file: !3, line: 447, column: 6)
!755 = !DILocation(line: 448, column: 3, scope: !754)
!756 = !DILocation(line: 450, column: 2, scope: !751)
!757 = !DILocation(line: 451, column: 2, scope: !751)
!758 = !DILocation(line: 452, column: 2, scope: !751)
!759 = !DILocation(line: 453, column: 1, scope: !751)
!760 = distinct !DISubprogram(name: "ap_init_aperfmperf", scope: !3, file: !3, line: 456, type: !87, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!761 = !DILocation(line: 458, column: 6, scope: !760)
!762 = !DILocation(line: 458, column: 6, scope: !763)
!763 = distinct !DILexicalBlock(scope: !760, file: !3, line: 458, column: 6)
!764 = !DILocation(line: 459, column: 3, scope: !763)
!765 = !DILocation(line: 460, column: 1, scope: !760)
!766 = distinct !DISubprogram(name: "init_counter_refs", scope: !3, file: !3, line: 39, type: !87, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !767)
!767 = !{!768, !769, !770, !773, !775, !778}
!768 = !DILocalVariable(name: "aperf", scope: !766, file: !3, line: 41, type: !51)
!769 = !DILocalVariable(name: "mperf", scope: !766, file: !3, line: 41, type: !51)
!770 = !DILocalVariable(name: "__vpp_verify", scope: !771, file: !3, line: 46, type: !94)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 46, column: 2)
!772 = distinct !DILexicalBlock(scope: !766, file: !3, line: 46, column: 2)
!773 = !DILocalVariable(name: "pto_val__", scope: !774, file: !3, line: 46, type: !51)
!774 = distinct !DILexicalBlock(scope: !772, file: !3, line: 46, column: 2)
!775 = !DILocalVariable(name: "__vpp_verify", scope: !776, file: !3, line: 47, type: !94)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 47, column: 2)
!777 = distinct !DILexicalBlock(scope: !766, file: !3, line: 47, column: 2)
!778 = !DILocalVariable(name: "pto_val__", scope: !779, file: !3, line: 47, type: !51)
!779 = distinct !DILexicalBlock(scope: !777, file: !3, line: 47, column: 2)
!780 = !DILocation(line: 41, column: 2, scope: !766)
!781 = !DILocation(line: 41, column: 6, scope: !766)
!782 = !DILocation(line: 41, column: 13, scope: !766)
!783 = !DILocation(line: 43, column: 2, scope: !766)
!784 = !DILocation(line: 44, column: 2, scope: !766)
!785 = !DILocation(line: 46, column: 2, scope: !766)
!786 = !DILocation(line: 46, column: 2, scope: !772)
!787 = !DILocation(line: 46, column: 2, scope: !771)
!788 = !DILocation(line: 46, column: 2, scope: !774)
!789 = !{i64 2153188739}
!790 = !DILocation(line: 47, column: 2, scope: !766)
!791 = !DILocation(line: 47, column: 2, scope: !777)
!792 = !DILocation(line: 47, column: 2, scope: !776)
!793 = !DILocation(line: 47, column: 2, scope: !779)
!794 = !{i64 2153192879}
!795 = !DILocation(line: 48, column: 1, scope: !766)
!796 = distinct !DISubprogram(name: "arch_static_branch", scope: !797, file: !797, line: 25, type: !798, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !801)
!797 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!798 = !DISubroutineType(types: !799)
!799 = !{!235, !800, !235}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!801 = !{!802, !803, !804}
!802 = !DILocalVariable(name: "key", arg: 1, scope: !796, file: !797, line: 25, type: !800)
!803 = !DILocalVariable(name: "branch", arg: 2, scope: !796, file: !797, line: 25, type: !235)
!804 = !DILabel(scope: !796, name: "l_yes", file: !797, line: 33)
!805 = !DILocation(line: 25, column: 67, scope: !796)
!806 = !DILocation(line: 25, column: 77, scope: !796)
!807 = !DILocation(line: 30, column: 13, scope: !796)
!808 = !DILocation(line: 30, column: 28, scope: !796)
!809 = !DILocation(line: 30, column: 26, scope: !796)
!810 = !DILocation(line: 27, column: 2, scope: !796)
!811 = !{i64 1023073, i64 1023117, i64 2148507800, i64 2148507821, i64 2148507847, i64 2148507880, i64 2148507914, i64 2148507938}
!812 = !DILocation(line: 32, column: 2, scope: !796)
!813 = !DILocation(line: 33, column: 1, scope: !796)
!814 = !DILocation(line: 34, column: 2, scope: !796)
!815 = !DILocation(line: 35, column: 1, scope: !796)
!816 = !DISubprogram(name: "static_key_enable", scope: !195, file: !195, line: 233, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !800}
!819 = distinct !DISubprogram(name: "register_freq_invariance_syscore_ops", scope: !3, file: !3, line: 296, type: !87, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!820 = !DILocation(line: 298, column: 2, scope: !819)
!821 = !DILocation(line: 299, column: 1, scope: !819)
!822 = !DISubprogram(name: "_printk", scope: !823, file: !823, line: 153, type: !824, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!823 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!824 = !DISubroutineType(types: !825)
!825 = !{!59, !61, null}
!826 = !DISubprogram(name: "register_syscore_ops", scope: !121, file: !121, line: 20, type: !827, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!827 = !DISubroutineType(types: !828)
!828 = !{null, !829}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!830 = distinct !DISubprogram(name: "constant_test_bit", scope: !370, file: !370, line: 204, type: !831, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!235, !218, !373}
!833 = !{!834, !835}
!834 = !DILocalVariable(name: "nr", arg: 1, scope: !830, file: !370, line: 204, type: !218)
!835 = !DILocalVariable(name: "addr", arg: 2, scope: !830, file: !370, line: 204, type: !373)
!836 = !DILocation(line: 204, column: 52, scope: !830)
!837 = !DILocation(line: 204, column: 86, scope: !830)
!838 = !DILocation(line: 206, column: 19, scope: !830)
!839 = !DILocation(line: 206, column: 22, scope: !830)
!840 = !DILocation(line: 206, column: 15, scope: !830)
!841 = !DILocation(line: 207, column: 4, scope: !830)
!842 = !DILocation(line: 207, column: 9, scope: !830)
!843 = !DILocation(line: 207, column: 12, scope: !830)
!844 = !DILocation(line: 206, column: 44, scope: !830)
!845 = !DILocation(line: 207, column: 37, scope: !830)
!846 = !DILocation(line: 206, column: 2, scope: !830)
!847 = distinct !DISubprogram(name: "variable_test_bit", scope: !370, file: !370, line: 224, type: !831, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !848)
!848 = !{!849, !850, !851}
!849 = !DILocalVariable(name: "nr", arg: 1, scope: !847, file: !370, line: 224, type: !218)
!850 = !DILocalVariable(name: "addr", arg: 2, scope: !847, file: !370, line: 224, type: !373)
!851 = !DILocalVariable(name: "oldbit", scope: !847, file: !370, line: 226, type: !235)
!852 = !DILocation(line: 224, column: 52, scope: !847)
!853 = !DILocation(line: 224, column: 86, scope: !847)
!854 = !DILocation(line: 226, column: 2, scope: !847)
!855 = !DILocation(line: 226, column: 7, scope: !847)
!856 = !DILocation(line: 231, column: 33, scope: !847)
!857 = !DILocation(line: 231, column: 46, scope: !847)
!858 = !DILocation(line: 228, column: 2, scope: !847)
!859 = !{i64 2147892806, i64 2147892880}
!860 = !DILocation(line: 233, column: 9, scope: !847)
!861 = !DILocation(line: 234, column: 1, scope: !847)
!862 = !DILocation(line: 233, column: 2, scope: !847)
!863 = distinct !DISubprogram(name: "__rdmsr", scope: !415, file: !415, line: 80, type: !416, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !864)
!864 = !{!865, !866, !867}
!865 = !DILocalVariable(name: "msr", arg: 1, scope: !863, file: !415, line: 80, type: !7)
!866 = !DILocalVariable(name: "low", scope: !863, file: !415, line: 82, type: !49)
!867 = !DILocalVariable(name: "high", scope: !863, file: !415, line: 82, type: !49)
!868 = !DILocation(line: 80, column: 64, scope: !863)
!869 = !DILocation(line: 82, column: 2, scope: !863)
!870 = !DILocation(line: 87, column: 45, scope: !863)
!871 = !DILocation(line: 84, column: 2, scope: !863)
!872 = !{i64 1966865, i64 1966886, i64 2149468351, i64 2149468395, i64 2149468418, i64 2149468451, i64 2149468482, i64 2149468521}
!873 = !DILocation(line: 89, column: 9, scope: !863)
!874 = !DILocation(line: 90, column: 1, scope: !863)
!875 = !DILocation(line: 89, column: 2, scope: !863)
!876 = distinct !DISubprogram(name: "static_key_false", scope: !195, file: !195, line: 205, type: !877, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !879)
!877 = !DISubroutineType(types: !878)
!878 = !{!235, !800}
!879 = !{!880}
!880 = !DILocalVariable(name: "key", arg: 1, scope: !876, file: !195, line: 205, type: !800)
!881 = !DILocation(line: 205, column: 65, scope: !876)
!882 = !DILocation(line: 207, column: 28, scope: !876)
!883 = !DILocation(line: 207, column: 9, scope: !876)
!884 = !DILocation(line: 207, column: 2, scope: !876)
!885 = !DISubprogram(name: "do_trace_read_msr", scope: !415, file: !415, line: 65, type: !886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!886 = !DISubroutineType(types: !887)
!887 = !{null, !7, !51, !59}
!888 = distinct !DISubprogram(name: "kcsan_nestable_atomic_begin", scope: !705, file: !705, line: 199, type: !87, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!889 = !DILocation(line: 199, column: 56, scope: !888)
!890 = distinct !DISubprogram(name: "kcsan_nestable_atomic_end", scope: !705, file: !705, line: 200, type: !87, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!891 = !DILocation(line: 200, column: 54, scope: !890)
!892 = distinct !DISubprogram(name: "arch_static_branch_jump", scope: !797, file: !797, line: 53, type: !893, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !897)
!893 = !DISubroutineType(types: !894)
!894 = !{!235, !895, !896}
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!897 = !{!898, !899, !900}
!898 = !DILocalVariable(name: "key", arg: 1, scope: !892, file: !797, line: 53, type: !895)
!899 = !DILocalVariable(name: "branch", arg: 2, scope: !892, file: !797, line: 53, type: !896)
!900 = !DILabel(scope: !892, name: "l_yes", file: !797, line: 61)
!901 = !DILocation(line: 53, column: 79, scope: !892)
!902 = !DILocation(line: 53, column: 95, scope: !892)
!903 = !DILocation(line: 58, column: 13, scope: !892)
!904 = !DILocation(line: 58, column: 24, scope: !892)
!905 = !DILocation(line: 55, column: 2, scope: !892)
!906 = !{i64 1023683, i64 1023706, i64 2148508453, i64 2148508474, i64 2148508500, i64 2148508533, i64 2148508567, i64 2148508591}
!907 = !DILocation(line: 60, column: 2, scope: !892)
!908 = !DILocation(line: 61, column: 1, scope: !892)
!909 = !DILocation(line: 62, column: 2, scope: !892)
!910 = !DILocation(line: 63, column: 1, scope: !892)
!911 = distinct !DISubprogram(name: "__must_check_overflow", scope: !912, file: !912, line: 51, type: !913, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !915)
!912 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!913 = !DISubroutineType(types: !914)
!914 = !{!235, !235}
!915 = !{!916}
!916 = !DILocalVariable(name: "overflow", arg: 1, scope: !911, file: !912, line: 51, type: !235)
!917 = !DILocation(line: 51, column: 60, scope: !911)
!918 = !DILocation(line: 53, column: 9, scope: !911)
!919 = !DILocation(line: 53, column: 2, scope: !911)
!920 = distinct !DISubprogram(name: "schedule_work", scope: !12, file: !12, line: 621, type: !921, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !923)
!921 = !DISubroutineType(types: !922)
!922 = !{!235, !164}
!923 = !{!924}
!924 = !DILocalVariable(name: "work", arg: 1, scope: !920, file: !12, line: 621, type: !164)
!925 = !DILocation(line: 621, column: 54, scope: !920)
!926 = !DILocation(line: 623, column: 20, scope: !920)
!927 = !DILocation(line: 623, column: 31, scope: !920)
!928 = !DILocation(line: 623, column: 9, scope: !920)
!929 = !DILocation(line: 623, column: 2, scope: !920)
!930 = distinct !DISubprogram(name: "queue_work", scope: !12, file: !12, line: 559, type: !931, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !935)
!931 = !DISubroutineType(types: !932)
!932 = !{!235, !933, !164}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !12, line: 18, flags: DIFlagFwdDecl)
!935 = !{!936, !937}
!936 = !DILocalVariable(name: "wq", arg: 1, scope: !930, file: !12, line: 559, type: !933)
!937 = !DILocalVariable(name: "work", arg: 2, scope: !930, file: !12, line: 560, type: !164)
!938 = !DILocation(line: 559, column: 56, scope: !930)
!939 = !DILocation(line: 560, column: 30, scope: !930)
!940 = !DILocation(line: 562, column: 41, scope: !930)
!941 = !DILocation(line: 562, column: 45, scope: !930)
!942 = !DILocation(line: 562, column: 9, scope: !930)
!943 = !DILocation(line: 562, column: 2, scope: !930)
!944 = !DISubprogram(name: "queue_work_on", scope: !12, file: !12, line: 496, type: !945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!945 = !DISubroutineType(types: !946)
!946 = !{!235, !59, !933, !164}
!947 = distinct !DISubprogram(name: "disable_freq_invariance_workfn", scope: !3, file: !3, line: 331, type: !162, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !948)
!948 = !{!949, !950, !951, !956}
!949 = !DILocalVariable(name: "work", arg: 1, scope: !947, file: !3, line: 331, type: !164)
!950 = !DILocalVariable(name: "cpu", scope: !947, file: !3, line: 333, type: !59)
!951 = !DILocalVariable(name: "__vpp_verify", scope: !952, file: !3, line: 342, type: !94)
!952 = distinct !DILexicalBlock(scope: !953, file: !3, line: 342, column: 3)
!953 = distinct !DILexicalBlock(scope: !954, file: !3, line: 342, column: 3)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 341, column: 2)
!955 = distinct !DILexicalBlock(scope: !947, file: !3, line: 341, column: 2)
!956 = !DILocalVariable(name: "__ptr", scope: !957, file: !3, line: 342, type: !49)
!957 = distinct !DILexicalBlock(scope: !953, file: !3, line: 342, column: 3)
!958 = !DILocation(line: 331, column: 64, scope: !947)
!959 = !DILocation(line: 333, column: 2, scope: !947)
!960 = !DILocation(line: 333, column: 6, scope: !947)
!961 = !DILocation(line: 335, column: 2, scope: !947)
!962 = !DILocation(line: 341, column: 2, scope: !955)
!963 = !DILocation(line: 341, column: 2, scope: !954)
!964 = !DILocation(line: 342, column: 3, scope: !953)
!965 = !DILocation(line: 342, column: 3, scope: !952)
!966 = !DILocation(line: 342, column: 3, scope: !957)
!967 = !DILocation(line: 342, column: 33, scope: !954)
!968 = !DILocation(line: 342, column: 3, scope: !954)
!969 = distinct !{!969, !962, !970, !639, !640}
!970 = !DILocation(line: 342, column: 35, scope: !955)
!971 = !DILocation(line: 343, column: 1, scope: !947)
!972 = !DISubprogram(name: "static_key_disable", scope: !195, file: !195, line: 234, type: !817, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!973 = distinct !DISubprogram(name: "find_next_bit", scope: !974, file: !974, line: 54, type: !975, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !979)
!974 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!975 = !DISubroutineType(types: !976)
!976 = !{!49, !977, !49, !49}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!979 = !{!980, !981, !982, !983}
!980 = !DILocalVariable(name: "addr", arg: 1, scope: !973, file: !974, line: 54, type: !977)
!981 = !DILocalVariable(name: "size", arg: 2, scope: !973, file: !974, line: 54, type: !49)
!982 = !DILocalVariable(name: "offset", arg: 3, scope: !973, file: !974, line: 55, type: !49)
!983 = !DILocalVariable(name: "val", scope: !984, file: !974, line: 58, type: !49)
!984 = distinct !DILexicalBlock(scope: !985, file: !974, line: 57, column: 31)
!985 = distinct !DILexicalBlock(scope: !973, file: !974, line: 57, column: 6)
!986 = !DILocation(line: 54, column: 50, scope: !973)
!987 = !DILocation(line: 54, column: 70, scope: !973)
!988 = !DILocation(line: 55, column: 22, scope: !973)
!989 = !DILocation(line: 57, column: 6, scope: !985)
!990 = !DILocation(line: 57, column: 6, scope: !973)
!991 = !DILocation(line: 58, column: 3, scope: !984)
!992 = !DILocation(line: 58, column: 17, scope: !984)
!993 = !DILocation(line: 60, column: 7, scope: !994)
!994 = distinct !DILexicalBlock(scope: !984, file: !974, line: 60, column: 7)
!995 = !DILocation(line: 60, column: 7, scope: !984)
!996 = !DILocation(line: 61, column: 11, scope: !994)
!997 = !DILocation(line: 61, column: 4, scope: !994)
!998 = !DILocation(line: 63, column: 10, scope: !984)
!999 = !DILocation(line: 63, column: 9, scope: !984)
!1000 = !DILocation(line: 63, column: 17, scope: !984)
!1001 = !DILocation(line: 63, column: 15, scope: !984)
!1002 = !DILocation(line: 63, column: 7, scope: !984)
!1003 = !DILocation(line: 64, column: 10, scope: !984)
!1004 = !DILocation(line: 64, column: 16, scope: !984)
!1005 = !DILocation(line: 64, column: 29, scope: !984)
!1006 = !DILocation(line: 64, column: 3, scope: !984)
!1007 = !DILocation(line: 65, column: 2, scope: !985)
!1008 = !DILocation(line: 67, column: 24, scope: !973)
!1009 = !DILocation(line: 67, column: 30, scope: !973)
!1010 = !DILocation(line: 67, column: 36, scope: !973)
!1011 = !DILocation(line: 67, column: 9, scope: !973)
!1012 = !DILocation(line: 67, column: 2, scope: !973)
!1013 = !DILocation(line: 68, column: 1, scope: !973)
!1014 = distinct !DISubprogram(name: "variable__ffs", scope: !370, file: !370, line: 250, type: !1015, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1017)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!49, !49}
!1017 = !{!1018}
!1018 = !DILocalVariable(name: "word", arg: 1, scope: !1014, file: !370, line: 250, type: !49)
!1019 = !DILocation(line: 250, column: 66, scope: !1014)
!1020 = !DILocation(line: 254, column: 11, scope: !1014)
!1021 = !DILocation(line: 252, column: 2, scope: !1014)
!1022 = !{i64 387881}
!1023 = !DILocation(line: 255, column: 9, scope: !1014)
!1024 = !DILocation(line: 255, column: 2, scope: !1014)
!1025 = !DISubprogram(name: "_find_next_bit", scope: !974, file: !974, line: 11, type: !975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1026 = distinct !DISubprogram(name: "rep_nop", scope: !701, file: !701, line: 11, type: !87, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1027 = !DILocation(line: 13, column: 2, scope: !1026)
!1028 = !{i64 2051662}
!1029 = !DILocation(line: 14, column: 1, scope: !1026)
!1030 = distinct !DISubprogram(name: "do___read_seqcount_retry", scope: !44, file: !44, line: 426, type: !711, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1031)
!1031 = !{!1032, !1033}
!1032 = !DILocalVariable(name: "s", arg: 1, scope: !1030, file: !44, line: 426, type: !439)
!1033 = !DILocalVariable(name: "start", arg: 2, scope: !1030, file: !44, line: 426, type: !7)
!1034 = !DILocation(line: 426, column: 62, scope: !1030)
!1035 = !DILocation(line: 426, column: 74, scope: !1030)
!1036 = !DILocation(line: 428, column: 2, scope: !1030)
!1037 = !DILocation(line: 429, column: 9, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1030, file: !44, line: 429, column: 9)
!1039 = !DILocation(line: 429, column: 9, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1038, file: !44, line: 429, column: 9)
!1041 = !DILocation(line: 429, column: 9, scope: !1030)
!1042 = !DILocation(line: 429, column: 2, scope: !1030)
!1043 = distinct !DISubprogram(name: "bp_init_freq_invariance", scope: !3, file: !3, line: 322, type: !87, scopeLine: 323, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1044 = !DILocation(line: 324, column: 20, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 324, column: 6)
!1046 = !DILocation(line: 324, column: 6, scope: !1045)
!1047 = !DILocation(line: 324, column: 31, scope: !1045)
!1048 = !DILocation(line: 324, column: 6, scope: !1043)
!1049 = !DILocation(line: 325, column: 3, scope: !1045)
!1050 = !DILocation(line: 327, column: 6, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 327, column: 6)
!1052 = !DILocation(line: 327, column: 6, scope: !1043)
!1053 = !DILocation(line: 328, column: 3, scope: !1051)
!1054 = !DILocation(line: 329, column: 1, scope: !1043)
!1055 = distinct !DISubprogram(name: "intel_set_max_freq_ratio", scope: !3, file: !3, line: 242, type: !514, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1056)
!1056 = !{!1057, !1058, !1059, !1060}
!1057 = !DILocalVariable(name: "base_freq", scope: !1055, file: !3, line: 244, type: !51)
!1058 = !DILocalVariable(name: "turbo_freq", scope: !1055, file: !3, line: 244, type: !51)
!1059 = !DILocalVariable(name: "turbo_ratio", scope: !1055, file: !3, line: 245, type: !51)
!1060 = !DILabel(scope: !1055, name: "out", file: !3, line: 267)
!1061 = !DILocation(line: 244, column: 2, scope: !1055)
!1062 = !DILocation(line: 244, column: 6, scope: !1055)
!1063 = !DILocation(line: 244, column: 17, scope: !1055)
!1064 = !DILocation(line: 245, column: 2, scope: !1055)
!1065 = !DILocation(line: 245, column: 6, scope: !1055)
!1066 = !DILocation(line: 247, column: 6, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 247, column: 6)
!1068 = !DILocation(line: 247, column: 6, scope: !1055)
!1069 = !DILocation(line: 248, column: 3, scope: !1067)
!1070 = !DILocation(line: 250, column: 6, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 250, column: 6)
!1072 = !DILocation(line: 250, column: 48, scope: !1071)
!1073 = !DILocation(line: 251, column: 6, scope: !1071)
!1074 = !DILocation(line: 250, column: 6, scope: !1055)
!1075 = !DILocation(line: 252, column: 3, scope: !1071)
!1076 = !DILocation(line: 254, column: 6, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 254, column: 6)
!1078 = !DILocation(line: 254, column: 48, scope: !1077)
!1079 = !DILocation(line: 255, column: 6, scope: !1077)
!1080 = !DILocation(line: 254, column: 6, scope: !1055)
!1081 = !DILocation(line: 256, column: 3, scope: !1077)
!1082 = !DILocation(line: 258, column: 6, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 258, column: 6)
!1084 = !DILocation(line: 258, column: 48, scope: !1083)
!1085 = !DILocation(line: 259, column: 6, scope: !1083)
!1086 = !DILocation(line: 258, column: 6, scope: !1055)
!1087 = !DILocation(line: 260, column: 3, scope: !1083)
!1088 = !DILocation(line: 262, column: 6, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 262, column: 6)
!1090 = !DILocation(line: 262, column: 6, scope: !1055)
!1091 = !DILocation(line: 263, column: 3, scope: !1089)
!1092 = !DILocation(line: 265, column: 2, scope: !1055)
!1093 = !DILocation(line: 267, column: 1, scope: !1055)
!1094 = !DILocation(line: 274, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 274, column: 6)
!1096 = !DILocation(line: 274, column: 17, scope: !1095)
!1097 = !DILocation(line: 274, column: 21, scope: !1095)
!1098 = !DILocation(line: 274, column: 6, scope: !1055)
!1099 = !DILocation(line: 275, column: 3, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !3, line: 275, column: 3)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 275, column: 3)
!1102 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 274, column: 33)
!1103 = !DILocation(line: 275, column: 3, scope: !1101)
!1104 = !DILocation(line: 276, column: 3, scope: !1102)
!1105 = !DILocation(line: 279, column: 24, scope: !1055)
!1106 = !DILocation(line: 279, column: 35, scope: !1055)
!1107 = !DILocation(line: 279, column: 59, scope: !1055)
!1108 = !DILocation(line: 279, column: 16, scope: !1055)
!1109 = !DILocation(line: 279, column: 14, scope: !1055)
!1110 = !DILocation(line: 280, column: 7, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 280, column: 6)
!1112 = !DILocation(line: 280, column: 6, scope: !1055)
!1113 = !DILocation(line: 281, column: 3, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 281, column: 3)
!1115 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 281, column: 3)
!1116 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 280, column: 20)
!1117 = !DILocation(line: 281, column: 3, scope: !1115)
!1118 = !DILocation(line: 282, column: 3, scope: !1116)
!1119 = !DILocation(line: 285, column: 26, scope: !1055)
!1120 = !DILocation(line: 285, column: 24, scope: !1055)
!1121 = !DILocation(line: 286, column: 26, scope: !1055)
!1122 = !DILocation(line: 286, column: 2, scope: !1055)
!1123 = !DILocation(line: 288, column: 2, scope: !1055)
!1124 = !DILocation(line: 289, column: 1, scope: !1055)
!1125 = distinct !DISubprogram(name: "slv_set_max_freq_ratio", scope: !3, file: !3, line: 109, type: !1126, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1128)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!235, !78, !78}
!1128 = !{!1129, !1130, !1131}
!1129 = !DILocalVariable(name: "base_freq", arg: 1, scope: !1125, file: !3, line: 109, type: !78)
!1130 = !DILocalVariable(name: "turbo_freq", arg: 2, scope: !1125, file: !3, line: 109, type: !78)
!1131 = !DILocalVariable(name: "err", scope: !1125, file: !3, line: 111, type: !59)
!1132 = !DILocation(line: 109, column: 48, scope: !1125)
!1133 = !DILocation(line: 109, column: 64, scope: !1125)
!1134 = !DILocation(line: 111, column: 2, scope: !1125)
!1135 = !DILocation(line: 111, column: 6, scope: !1125)
!1136 = !DILocation(line: 113, column: 42, scope: !1125)
!1137 = !DILocation(line: 113, column: 8, scope: !1125)
!1138 = !DILocation(line: 113, column: 6, scope: !1125)
!1139 = !DILocation(line: 114, column: 6, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 114, column: 6)
!1141 = !DILocation(line: 114, column: 6, scope: !1125)
!1142 = !DILocation(line: 115, column: 3, scope: !1140)
!1143 = !DILocation(line: 117, column: 48, scope: !1125)
!1144 = !DILocation(line: 117, column: 8, scope: !1125)
!1145 = !DILocation(line: 117, column: 6, scope: !1125)
!1146 = !DILocation(line: 118, column: 6, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 118, column: 6)
!1148 = !DILocation(line: 118, column: 6, scope: !1125)
!1149 = !DILocation(line: 119, column: 3, scope: !1147)
!1150 = !DILocation(line: 121, column: 17, scope: !1125)
!1151 = !DILocation(line: 121, column: 16, scope: !1125)
!1152 = !DILocation(line: 121, column: 27, scope: !1125)
!1153 = !DILocation(line: 121, column: 34, scope: !1125)
!1154 = !DILocation(line: 121, column: 3, scope: !1125)
!1155 = !DILocation(line: 121, column: 13, scope: !1125)
!1156 = !DILocation(line: 122, column: 17, scope: !1125)
!1157 = !DILocation(line: 122, column: 16, scope: !1125)
!1158 = !DILocation(line: 122, column: 28, scope: !1125)
!1159 = !DILocation(line: 122, column: 3, scope: !1125)
!1160 = !DILocation(line: 122, column: 14, scope: !1125)
!1161 = !DILocation(line: 124, column: 2, scope: !1125)
!1162 = !DILocation(line: 125, column: 1, scope: !1125)
!1163 = !DISubprogram(name: "x86_match_cpu", scope: !1164, file: !1164, line: 291, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1164 = !DIFile(filename: "./arch/x86/include/asm/cpu_device_id.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e1a78964618b7c8a5d697bb345982db")
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!1167, !1167}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!1168 = distinct !DISubprogram(name: "skx_set_max_freq_ratio", scope: !3, file: !3, line: 188, type: !1169, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1171)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!235, !78, !78, !59}
!1171 = !{!1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179}
!1172 = !DILocalVariable(name: "base_freq", arg: 1, scope: !1168, file: !3, line: 188, type: !78)
!1173 = !DILocalVariable(name: "turbo_freq", arg: 2, scope: !1168, file: !3, line: 188, type: !78)
!1174 = !DILocalVariable(name: "size", arg: 3, scope: !1168, file: !3, line: 188, type: !59)
!1175 = !DILocalVariable(name: "ratios", scope: !1168, file: !3, line: 190, type: !51)
!1176 = !DILocalVariable(name: "counts", scope: !1168, file: !3, line: 190, type: !51)
!1177 = !DILocalVariable(name: "group_size", scope: !1168, file: !3, line: 191, type: !64)
!1178 = !DILocalVariable(name: "err", scope: !1168, file: !3, line: 192, type: !59)
!1179 = !DILocalVariable(name: "i", scope: !1168, file: !3, line: 192, type: !59)
!1180 = !DILocation(line: 188, column: 48, scope: !1168)
!1181 = !DILocation(line: 188, column: 64, scope: !1168)
!1182 = !DILocation(line: 188, column: 80, scope: !1168)
!1183 = !DILocation(line: 190, column: 2, scope: !1168)
!1184 = !DILocation(line: 190, column: 6, scope: !1168)
!1185 = !DILocation(line: 190, column: 14, scope: !1168)
!1186 = !DILocation(line: 191, column: 2, scope: !1168)
!1187 = !DILocation(line: 191, column: 6, scope: !1168)
!1188 = !DILocation(line: 192, column: 2, scope: !1168)
!1189 = !DILocation(line: 192, column: 6, scope: !1168)
!1190 = !DILocation(line: 192, column: 11, scope: !1168)
!1191 = !DILocation(line: 194, column: 39, scope: !1168)
!1192 = !DILocation(line: 194, column: 8, scope: !1168)
!1193 = !DILocation(line: 194, column: 6, scope: !1168)
!1194 = !DILocation(line: 195, column: 6, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 195, column: 6)
!1196 = !DILocation(line: 195, column: 6, scope: !1168)
!1197 = !DILocation(line: 196, column: 3, scope: !1195)
!1198 = !DILocation(line: 198, column: 17, scope: !1168)
!1199 = !DILocation(line: 198, column: 16, scope: !1168)
!1200 = !DILocation(line: 198, column: 27, scope: !1168)
!1201 = !DILocation(line: 198, column: 33, scope: !1168)
!1202 = !DILocation(line: 198, column: 3, scope: !1168)
!1203 = !DILocation(line: 198, column: 13, scope: !1168)
!1204 = !DILocation(line: 200, column: 8, scope: !1168)
!1205 = !DILocation(line: 200, column: 6, scope: !1168)
!1206 = !DILocation(line: 201, column: 6, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 201, column: 6)
!1208 = !DILocation(line: 201, column: 6, scope: !1168)
!1209 = !DILocation(line: 202, column: 3, scope: !1207)
!1210 = !DILocation(line: 204, column: 8, scope: !1168)
!1211 = !DILocation(line: 204, column: 6, scope: !1168)
!1212 = !DILocation(line: 205, column: 6, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 205, column: 6)
!1214 = !DILocation(line: 205, column: 6, scope: !1168)
!1215 = !DILocation(line: 206, column: 3, scope: !1213)
!1216 = !DILocation(line: 208, column: 9, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 208, column: 2)
!1218 = !DILocation(line: 208, column: 7, scope: !1217)
!1219 = !DILocation(line: 208, column: 14, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 208, column: 2)
!1221 = !DILocation(line: 208, column: 16, scope: !1220)
!1222 = !DILocation(line: 208, column: 2, scope: !1217)
!1223 = !DILocation(line: 209, column: 17, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 208, column: 30)
!1225 = !DILocation(line: 209, column: 27, scope: !1224)
!1226 = !DILocation(line: 209, column: 24, scope: !1224)
!1227 = !DILocation(line: 209, column: 30, scope: !1224)
!1228 = !DILocation(line: 209, column: 16, scope: !1224)
!1229 = !DILocation(line: 209, column: 14, scope: !1224)
!1230 = !DILocation(line: 210, column: 7, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 210, column: 7)
!1232 = !DILocation(line: 210, column: 21, scope: !1231)
!1233 = !DILocation(line: 210, column: 18, scope: !1231)
!1234 = !DILocation(line: 210, column: 7, scope: !1224)
!1235 = !DILocation(line: 211, column: 19, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1231, file: !3, line: 210, column: 27)
!1237 = !DILocation(line: 211, column: 29, scope: !1236)
!1238 = !DILocation(line: 211, column: 26, scope: !1236)
!1239 = !DILocation(line: 211, column: 32, scope: !1236)
!1240 = !DILocation(line: 211, column: 5, scope: !1236)
!1241 = !DILocation(line: 211, column: 16, scope: !1236)
!1242 = !DILocation(line: 212, column: 4, scope: !1236)
!1243 = !DILocation(line: 214, column: 2, scope: !1224)
!1244 = !DILocation(line: 208, column: 24, scope: !1220)
!1245 = !DILocation(line: 208, column: 2, scope: !1220)
!1246 = distinct !{!1246, !1222, !1247, !639, !640}
!1247 = !DILocation(line: 214, column: 2, scope: !1217)
!1248 = !DILocation(line: 216, column: 2, scope: !1168)
!1249 = !DILocation(line: 217, column: 1, scope: !1168)
!1250 = distinct !DISubprogram(name: "knl_set_max_freq_ratio", scope: !3, file: !3, line: 149, type: !1169, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1251)
!1251 = !{!1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260}
!1252 = !DILocalVariable(name: "base_freq", arg: 1, scope: !1250, file: !3, line: 149, type: !78)
!1253 = !DILocalVariable(name: "turbo_freq", arg: 2, scope: !1250, file: !3, line: 149, type: !78)
!1254 = !DILocalVariable(name: "num_delta_fratio", arg: 3, scope: !1250, file: !3, line: 150, type: !59)
!1255 = !DILocalVariable(name: "fratio", scope: !1250, file: !3, line: 152, type: !59)
!1256 = !DILocalVariable(name: "delta_fratio", scope: !1250, file: !3, line: 152, type: !59)
!1257 = !DILocalVariable(name: "found", scope: !1250, file: !3, line: 152, type: !59)
!1258 = !DILocalVariable(name: "err", scope: !1250, file: !3, line: 153, type: !59)
!1259 = !DILocalVariable(name: "i", scope: !1250, file: !3, line: 153, type: !59)
!1260 = !DILocalVariable(name: "msr", scope: !1250, file: !3, line: 154, type: !51)
!1261 = !DILocation(line: 149, column: 48, scope: !1250)
!1262 = !DILocation(line: 149, column: 64, scope: !1250)
!1263 = !DILocation(line: 150, column: 12, scope: !1250)
!1264 = !DILocation(line: 152, column: 2, scope: !1250)
!1265 = !DILocation(line: 152, column: 6, scope: !1250)
!1266 = !DILocation(line: 152, column: 14, scope: !1250)
!1267 = !DILocation(line: 152, column: 28, scope: !1250)
!1268 = !DILocation(line: 153, column: 2, scope: !1250)
!1269 = !DILocation(line: 153, column: 6, scope: !1250)
!1270 = !DILocation(line: 153, column: 11, scope: !1250)
!1271 = !DILocation(line: 154, column: 2, scope: !1250)
!1272 = !DILocation(line: 154, column: 6, scope: !1250)
!1273 = !DILocation(line: 156, column: 39, scope: !1250)
!1274 = !DILocation(line: 156, column: 8, scope: !1250)
!1275 = !DILocation(line: 156, column: 6, scope: !1250)
!1276 = !DILocation(line: 157, column: 6, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 157, column: 6)
!1278 = !DILocation(line: 157, column: 6, scope: !1250)
!1279 = !DILocation(line: 158, column: 3, scope: !1277)
!1280 = !DILocation(line: 160, column: 17, scope: !1250)
!1281 = !DILocation(line: 160, column: 16, scope: !1250)
!1282 = !DILocation(line: 160, column: 27, scope: !1250)
!1283 = !DILocation(line: 160, column: 33, scope: !1250)
!1284 = !DILocation(line: 160, column: 3, scope: !1250)
!1285 = !DILocation(line: 160, column: 13, scope: !1250)
!1286 = !DILocation(line: 162, column: 8, scope: !1250)
!1287 = !DILocation(line: 162, column: 6, scope: !1250)
!1288 = !DILocation(line: 163, column: 6, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 163, column: 6)
!1290 = !DILocation(line: 163, column: 6, scope: !1250)
!1291 = !DILocation(line: 164, column: 3, scope: !1289)
!1292 = !DILocation(line: 166, column: 12, scope: !1250)
!1293 = !DILocation(line: 166, column: 16, scope: !1250)
!1294 = !DILocation(line: 166, column: 22, scope: !1250)
!1295 = !DILocation(line: 166, column: 11, scope: !1250)
!1296 = !DILocation(line: 166, column: 9, scope: !1250)
!1297 = !DILocation(line: 167, column: 4, scope: !1250)
!1298 = !DILocation(line: 168, column: 8, scope: !1250)
!1299 = !DILocation(line: 169, column: 2, scope: !1250)
!1300 = !DILocation(line: 170, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 170, column: 7)
!1302 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 169, column: 5)
!1303 = !DILocation(line: 170, column: 16, scope: !1301)
!1304 = !DILocation(line: 170, column: 13, scope: !1301)
!1305 = !DILocation(line: 170, column: 7, scope: !1302)
!1306 = !DILocation(line: 171, column: 18, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 170, column: 34)
!1308 = !DILocation(line: 171, column: 5, scope: !1307)
!1309 = !DILocation(line: 171, column: 16, scope: !1307)
!1310 = !DILocation(line: 172, column: 4, scope: !1307)
!1311 = !DILocation(line: 175, column: 19, scope: !1302)
!1312 = !DILocation(line: 175, column: 27, scope: !1302)
!1313 = !DILocation(line: 175, column: 29, scope: !1302)
!1314 = !DILocation(line: 175, column: 23, scope: !1302)
!1315 = !DILocation(line: 175, column: 35, scope: !1302)
!1316 = !DILocation(line: 175, column: 18, scope: !1302)
!1317 = !DILocation(line: 175, column: 16, scope: !1302)
!1318 = !DILocation(line: 177, column: 7, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1302, file: !3, line: 177, column: 7)
!1320 = !DILocation(line: 177, column: 7, scope: !1302)
!1321 = !DILocation(line: 178, column: 10, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 177, column: 21)
!1323 = !DILocation(line: 179, column: 14, scope: !1322)
!1324 = !DILocation(line: 179, column: 11, scope: !1322)
!1325 = !DILocation(line: 180, column: 3, scope: !1322)
!1326 = !DILocation(line: 182, column: 5, scope: !1302)
!1327 = !DILocation(line: 183, column: 2, scope: !1302)
!1328 = !DILocation(line: 183, column: 11, scope: !1250)
!1329 = !DILocation(line: 183, column: 13, scope: !1250)
!1330 = distinct !{!1330, !1299, !1331, !639, !640}
!1331 = !DILocation(line: 183, column: 17, scope: !1250)
!1332 = !DILocation(line: 185, column: 2, scope: !1250)
!1333 = !DILocation(line: 186, column: 1, scope: !1250)
!1334 = distinct !DISubprogram(name: "core_set_max_freq_ratio", scope: !3, file: !3, line: 219, type: !1126, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1335)
!1335 = !{!1336, !1337, !1338, !1339}
!1336 = !DILocalVariable(name: "base_freq", arg: 1, scope: !1334, file: !3, line: 219, type: !78)
!1337 = !DILocalVariable(name: "turbo_freq", arg: 2, scope: !1334, file: !3, line: 219, type: !78)
!1338 = !DILocalVariable(name: "msr", scope: !1334, file: !3, line: 221, type: !51)
!1339 = !DILocalVariable(name: "err", scope: !1334, file: !3, line: 222, type: !59)
!1340 = !DILocation(line: 219, column: 49, scope: !1334)
!1341 = !DILocation(line: 219, column: 65, scope: !1334)
!1342 = !DILocation(line: 221, column: 2, scope: !1334)
!1343 = !DILocation(line: 221, column: 6, scope: !1334)
!1344 = !DILocation(line: 222, column: 2, scope: !1334)
!1345 = !DILocation(line: 222, column: 6, scope: !1334)
!1346 = !DILocation(line: 224, column: 39, scope: !1334)
!1347 = !DILocation(line: 224, column: 8, scope: !1334)
!1348 = !DILocation(line: 224, column: 6, scope: !1334)
!1349 = !DILocation(line: 225, column: 6, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 225, column: 6)
!1351 = !DILocation(line: 225, column: 6, scope: !1334)
!1352 = !DILocation(line: 226, column: 3, scope: !1350)
!1353 = !DILocation(line: 228, column: 8, scope: !1334)
!1354 = !DILocation(line: 228, column: 6, scope: !1334)
!1355 = !DILocation(line: 229, column: 6, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 229, column: 6)
!1357 = !DILocation(line: 229, column: 6, scope: !1334)
!1358 = !DILocation(line: 230, column: 3, scope: !1356)
!1359 = !DILocation(line: 232, column: 17, scope: !1334)
!1360 = !DILocation(line: 232, column: 16, scope: !1334)
!1361 = !DILocation(line: 232, column: 27, scope: !1334)
!1362 = !DILocation(line: 232, column: 33, scope: !1334)
!1363 = !DILocation(line: 232, column: 3, scope: !1334)
!1364 = !DILocation(line: 232, column: 13, scope: !1334)
!1365 = !DILocation(line: 233, column: 17, scope: !1334)
!1366 = !DILocation(line: 233, column: 21, scope: !1334)
!1367 = !DILocation(line: 233, column: 28, scope: !1334)
!1368 = !DILocation(line: 233, column: 3, scope: !1334)
!1369 = !DILocation(line: 233, column: 14, scope: !1334)
!1370 = !DILocation(line: 236, column: 8, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1334, file: !3, line: 236, column: 6)
!1372 = !DILocation(line: 236, column: 7, scope: !1371)
!1373 = !DILocation(line: 236, column: 6, scope: !1334)
!1374 = !DILocation(line: 237, column: 17, scope: !1371)
!1375 = !DILocation(line: 237, column: 21, scope: !1371)
!1376 = !DILocation(line: 237, column: 4, scope: !1371)
!1377 = !DILocation(line: 237, column: 15, scope: !1371)
!1378 = !DILocation(line: 237, column: 3, scope: !1371)
!1379 = !DILocation(line: 239, column: 2, scope: !1334)
!1380 = !DILocation(line: 240, column: 1, scope: !1334)
!1381 = distinct !DISubprogram(name: "div_u64", scope: !733, file: !733, line: 127, type: !1382, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1384)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!51, !51, !64}
!1384 = !{!1385, !1386, !1387}
!1385 = !DILocalVariable(name: "dividend", arg: 1, scope: !1381, file: !733, line: 127, type: !51)
!1386 = !DILocalVariable(name: "divisor", arg: 2, scope: !1381, file: !733, line: 127, type: !64)
!1387 = !DILocalVariable(name: "remainder", scope: !1381, file: !733, line: 129, type: !64)
!1388 = !DILocation(line: 127, column: 31, scope: !1381)
!1389 = !DILocation(line: 127, column: 45, scope: !1381)
!1390 = !DILocation(line: 129, column: 2, scope: !1381)
!1391 = !DILocation(line: 129, column: 6, scope: !1381)
!1392 = !DILocation(line: 130, column: 21, scope: !1381)
!1393 = !DILocation(line: 130, column: 31, scope: !1381)
!1394 = !DILocation(line: 130, column: 9, scope: !1381)
!1395 = !DILocation(line: 131, column: 1, scope: !1381)
!1396 = !DILocation(line: 130, column: 2, scope: !1381)
!1397 = distinct !DISubprogram(name: "turbo_disabled", scope: !3, file: !3, line: 97, type: !514, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1398)
!1398 = !{!1399, !1400}
!1399 = !DILocalVariable(name: "misc_en", scope: !1397, file: !3, line: 99, type: !51)
!1400 = !DILocalVariable(name: "err", scope: !1397, file: !3, line: 100, type: !59)
!1401 = !DILocation(line: 99, column: 2, scope: !1397)
!1402 = !DILocation(line: 99, column: 6, scope: !1397)
!1403 = !DILocation(line: 100, column: 2, scope: !1397)
!1404 = !DILocation(line: 100, column: 6, scope: !1397)
!1405 = !DILocation(line: 102, column: 8, scope: !1397)
!1406 = !DILocation(line: 102, column: 6, scope: !1397)
!1407 = !DILocation(line: 103, column: 6, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 103, column: 6)
!1409 = !DILocation(line: 103, column: 6, scope: !1397)
!1410 = !DILocation(line: 104, column: 3, scope: !1408)
!1411 = !DILocation(line: 106, column: 10, scope: !1397)
!1412 = !DILocation(line: 106, column: 18, scope: !1397)
!1413 = !DILocation(line: 106, column: 9, scope: !1397)
!1414 = !DILocation(line: 106, column: 2, scope: !1397)
!1415 = !DILocation(line: 107, column: 1, scope: !1397)
!1416 = distinct !DISubprogram(name: "rdmsrl_safe", scope: !415, file: !415, line: 281, type: !1417, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1420)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!59, !7, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!1420 = !{!1421, !1422, !1423}
!1421 = !DILocalVariable(name: "msr", arg: 1, scope: !1416, file: !415, line: 281, type: !7)
!1422 = !DILocalVariable(name: "p", arg: 2, scope: !1416, file: !415, line: 281, type: !1419)
!1423 = !DILocalVariable(name: "err", scope: !1416, file: !415, line: 283, type: !59)
!1424 = !DILocation(line: 281, column: 44, scope: !1416)
!1425 = !DILocation(line: 281, column: 69, scope: !1416)
!1426 = !DILocation(line: 283, column: 2, scope: !1416)
!1427 = !DILocation(line: 283, column: 6, scope: !1416)
!1428 = !DILocation(line: 285, column: 28, scope: !1416)
!1429 = !DILocation(line: 285, column: 7, scope: !1416)
!1430 = !DILocation(line: 285, column: 3, scope: !1416)
!1431 = !DILocation(line: 285, column: 5, scope: !1416)
!1432 = !DILocation(line: 286, column: 9, scope: !1416)
!1433 = !DILocation(line: 287, column: 1, scope: !1416)
!1434 = !DILocation(line: 286, column: 2, scope: !1416)
!1435 = distinct !DISubprogram(name: "native_read_msr_safe", scope: !415, file: !415, line: 126, type: !1436, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1439)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!55, !7, !1438}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!1439 = !{!1440, !1441, !1442, !1443}
!1440 = !DILocalVariable(name: "msr", arg: 1, scope: !1435, file: !415, line: 126, type: !7)
!1441 = !DILocalVariable(name: "err", arg: 2, scope: !1435, file: !415, line: 127, type: !1438)
!1442 = !DILocalVariable(name: "low", scope: !1435, file: !415, line: 129, type: !49)
!1443 = !DILocalVariable(name: "high", scope: !1435, file: !415, line: 129, type: !49)
!1444 = !DILocation(line: 126, column: 68, scope: !1435)
!1445 = !DILocation(line: 127, column: 18, scope: !1435)
!1446 = !DILocation(line: 129, column: 2, scope: !1435)
!1447 = !DILocation(line: 134, column: 23, scope: !1435)
!1448 = !DILocation(line: 135, column: 15, scope: !1435)
!1449 = !DILocation(line: 131, column: 2, scope: !1435)
!1450 = !{i64 1967953, i64 1967994, i64 1967998, i64 2149469560, i64 2149469585, i64 2149469620, i64 2149469837, i64 2149469890, i64 2149469921, i64 2149469952, i64 2149470030, i64 2149470064, i64 2149470102, i64 2149470145, i64 2149470168, i64 2149470206, i64 2149470228, i64 2149470259, i64 2149470344, i64 2149470378, i64 2149470416, i64 2149470459, i64 2149470482, i64 2149470520, i64 2149470542, i64 2149470576, i64 2149470638, i64 2149470661, i64 2149469686, i64 2149470735, i64 2149469797}
!1451 = !DILocation(line: 136, column: 6, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1435, file: !415, line: 136, column: 6)
!1453 = !DILocation(line: 136, column: 6, scope: !1435)
!1454 = !DILocation(line: 137, column: 21, scope: !1452)
!1455 = !DILocation(line: 137, column: 26, scope: !1452)
!1456 = !DILocation(line: 137, column: 56, scope: !1452)
!1457 = !DILocation(line: 137, column: 55, scope: !1452)
!1458 = !DILocation(line: 137, column: 3, scope: !1452)
!1459 = !DILocation(line: 138, column: 9, scope: !1435)
!1460 = !DILocation(line: 139, column: 1, scope: !1435)
!1461 = !DILocation(line: 138, column: 2, scope: !1435)
!1462 = distinct !DISubprogram(name: "div_u64_rem", scope: !733, file: !733, line: 26, type: !1463, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1466)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!51, !51, !64, !1465}
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!1466 = !{!1467, !1468, !1469}
!1467 = !DILocalVariable(name: "dividend", arg: 1, scope: !1462, file: !733, line: 26, type: !51)
!1468 = !DILocalVariable(name: "divisor", arg: 2, scope: !1462, file: !733, line: 26, type: !64)
!1469 = !DILocalVariable(name: "remainder", arg: 3, scope: !1462, file: !733, line: 26, type: !1465)
!1470 = !DILocation(line: 26, column: 35, scope: !1462)
!1471 = !DILocation(line: 26, column: 49, scope: !1462)
!1472 = !DILocation(line: 26, column: 63, scope: !1462)
!1473 = !DILocation(line: 28, column: 15, scope: !1462)
!1474 = !DILocation(line: 28, column: 26, scope: !1462)
!1475 = !DILocation(line: 28, column: 24, scope: !1462)
!1476 = !DILocation(line: 28, column: 3, scope: !1462)
!1477 = !DILocation(line: 28, column: 13, scope: !1462)
!1478 = !DILocation(line: 29, column: 9, scope: !1462)
!1479 = !DILocation(line: 29, column: 20, scope: !1462)
!1480 = !DILocation(line: 29, column: 18, scope: !1462)
!1481 = !DILocation(line: 29, column: 2, scope: !1462)
