; ModuleID = 'arch/x86/kernel/cpu/mce/threshold.c'
source_filename = "arch/x86/kernel/cpu/mce/threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.0 }
%union.anon.0 = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.irq_cpustat_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [60 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.3 }
%struct.atomic_t = type { i32 }
%union.anon.3 = type { i64 }
%struct.static_call_key = type { ptr, %union.anon.4 }
%union.anon.4 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.irqentry_state = type { %union.anon }
%union.anon = type { i8 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.1, i64, i64, %union.anon.2 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%struct.tracepoint_func = type { ptr, ptr, i32 }

@mce_threshold_vector = hidden global ptr @default_threshold_interrupt, align 8, !dbg !0
@.str = private unnamed_addr constant [52 x i8] c"\013mce: Unexpected threshold interrupt at vector %x\0A\00", align 1, !dbg !50
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !56
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1, !dbg !61
@irq_stat = external dso_local global %struct.irq_cpustat_t, section ".data..percpu..shared_aligned", align 64
@__tracepoint_threshold_apic_entry = external dso_local global %struct.tracepoint, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"arch/x86/include/asm/trace/irq_vectors.h\00", align 1, !dbg !66
@trace_threshold_apic_entry.__UNIQUE_ID___addressable___SCK__tp_func_threshold_apic_entry464 = internal global ptr @__SCK__tp_func_threshold_apic_entry, section ".discard.addressable", align 8, !dbg !72
@__SCK__tp_func_threshold_apic_entry = external dso_local global %struct.static_call_key, align 8
@trace_threshold_apic_entry.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace465 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !102
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__tracepoint_threshold_apic_exit = external dso_local global %struct.tracepoint, align 8
@trace_threshold_apic_exit.__UNIQUE_ID___addressable___SCK__tp_func_threshold_apic_exit472 = internal global ptr @__SCK__tp_func_threshold_apic_exit, section ".discard.addressable", align 8, !dbg !104
@__SCK__tp_func_threshold_apic_exit = external dso_local global %struct.static_call_key, align 8
@trace_threshold_apic_exit.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace473 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !130
@apic_eoi.__UNIQUE_ID___addressable___SCK__apic_call_eoi323 = internal global ptr @__SCK__apic_call_eoi, section ".discard.addressable", align 8, !dbg !132
@__SCK__apic_call_eoi = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [5 x ptr] [ptr @trace_threshold_apic_entry.__UNIQUE_ID___addressable___SCK__tp_func_threshold_apic_entry464, ptr @trace_threshold_apic_entry.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace465, ptr @trace_threshold_apic_exit.__UNIQUE_ID___addressable___SCK__tp_func_threshold_apic_exit472, ptr @trace_threshold_apic_exit.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace473, ptr @apic_eoi.__UNIQUE_ID___addressable___SCK__apic_call_eoi323], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @default_threshold_interrupt() #0 align 16 !dbg !149 {
entry:
  %tmp = alloca i32, align 4
  br label %do.body, !dbg !150

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !152

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef 249) #14, !dbg !150
  store i32 %call, ptr %tmp, align 4, !dbg !152
  %0 = load i32, ptr %tmp, align 4, !dbg !150
  ret void, !dbg !154
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysvec_threshold(ptr noundef %regs) #1 section ".noinstr.text" align 16 !dbg !155 {
entry:
  %regs.addr = alloca ptr, align 8
  %state = alloca %struct.irqentry_state, align 1
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !217, metadata !DIExpression()), !dbg !228
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #15, !dbg !228
  call void @llvm.dbg.declare(metadata ptr %state, metadata !218, metadata !DIExpression()), !dbg !228
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !228
  %call = call i8 @irqentry_enter(ptr noundef %0) #16, !dbg !228
  %coerce.dive = getelementptr inbounds %struct.irqentry_state, ptr %state, i32 0, i32 0, !dbg !228
  %coerce.dive1 = getelementptr inbounds %union.anon, ptr %coerce.dive, i32 0, i32 0, !dbg !228
  store i8 %call, ptr %coerce.dive1, align 1, !dbg !228
  call void @kvm_set_cpu_l1tf_flush_l1d() #16, !dbg !228
  br label %do.body, !dbg !228

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !229

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !229

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !228
  call void @instr_sysvec_threshold(ptr noundef %1) #16, !dbg !228
  br label %do.body2, !dbg !228

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !231

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !231

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !228
  %coerce.dive5 = getelementptr inbounds %struct.irqentry_state, ptr %state, i32 0, i32 0, !dbg !228
  %coerce.dive6 = getelementptr inbounds %union.anon, ptr %coerce.dive5, i32 0, i32 0, !dbg !228
  %3 = load i8, ptr %coerce.dive6, align 1, !dbg !228
  call void @irqentry_exit(ptr noundef %2, i8 %3) #16, !dbg !228
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #15, !dbg !228
  ret void, !dbg !228
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !233 dso_local i8 @irqentry_enter(ptr noundef) #4 section ".noinstr.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kvm_set_cpu_l1tf_flush_l1d() #5 align 16 !dbg !236 {
entry:
  ret void, !dbg !238
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instr_sysvec_threshold(ptr noundef %regs) #5 align 16 !dbg !239 {
entry:
  %regs.addr = alloca ptr, align 8
  %tmp = alloca i8, align 1
  %pscr_ret__ = alloca i8, align 1
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i8, align 1
  %tmp1 = alloca i8, align 1
  %tmp5 = alloca i8, align 1
  %__vpp_verify14 = alloca ptr, align 8
  %pto_val__ = alloca i8, align 1
  %tos = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  %pscr_ret__23 = alloca ptr, align 8
  %__vpp_verify25 = alloca ptr, align 8
  %pfo_val__28 = alloca i64, align 8
  %tmp29 = alloca ptr, align 8
  %tmp30 = alloca ptr, align 8
  %__vpp_verify34 = alloca ptr, align 8
  %pto_val__38 = alloca i8, align 1
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !241, metadata !DIExpression()), !dbg !274
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !275
  %call = call i32 @user_mode(ptr noundef %0) #16, !dbg !275
  %tobool = icmp ne i32 %call, 0, !dbg !275
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !275

lor.lhs.false:                                    ; preds = %entry
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #16, !dbg !276
  call void @llvm.lifetime.start.p0(i64 1, ptr %pscr_ret__) #15, !dbg !277
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !242, metadata !DIExpression()), !dbg !277
  br label %do.body, !dbg !277

do.body:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !278
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !248, metadata !DIExpression()), !dbg !278
  store ptr null, ptr %__vpp_verify, align 8, !dbg !278
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !278
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !277
  br label %do.cond, !dbg !278

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !278

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %pfo_val__) #15, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !250, metadata !DIExpression()), !dbg !279
  %2 = call i8 asm "movb %gs:$1, $0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 7)) #17, !dbg !279, !srcloc !280
  store i8 %2, ptr %pfo_val__, align 1, !dbg !279
  %3 = load i8, ptr %pfo_val__, align 1, !dbg !279
  %conv = zext i8 %3 to i64, !dbg !279
  %tobool2 = icmp ne i64 %conv, 0, !dbg !279
  %frombool = zext i1 %tobool2 to i8, !dbg !279
  store i8 %frombool, ptr %tmp1, align 1, !dbg !279
  call void @llvm.lifetime.end.p0(i64 1, ptr %pfo_val__) #15, !dbg !277
  %4 = load i8, ptr %tmp1, align 1, !dbg !279, !range !281, !noundef !282
  %tobool3 = trunc i8 %4 to i1, !dbg !279
  %frombool4 = zext i1 %tobool3 to i8, !dbg !277
  store i8 %frombool4, ptr %pscr_ret__, align 1, !dbg !277
  %5 = load i8, ptr %pscr_ret__, align 1, !dbg !277, !range !281, !noundef !282
  %tobool6 = trunc i8 %5 to i1, !dbg !277
  %frombool7 = zext i1 %tobool6 to i8, !dbg !277
  store i8 %frombool7, ptr %tmp5, align 1, !dbg !277
  call void @llvm.lifetime.end.p0(i64 1, ptr %pscr_ret__) #15, !dbg !276
  %6 = load i8, ptr %tmp5, align 1, !dbg !277, !range !281, !noundef !282
  %tobool8 = trunc i8 %6 to i1, !dbg !277
  %frombool9 = zext i1 %tobool8 to i8, !dbg !276
  store i8 %frombool9, ptr %tmp, align 1, !dbg !276
  %7 = load i8, ptr %tmp, align 1, !dbg !276, !range !281, !noundef !282
  %tobool10 = trunc i8 %7 to i1, !dbg !276
  br i1 %tobool10, label %if.then, label %if.else, !dbg !283

if.then:                                          ; preds = %do.end, %entry
  call void @irq_enter_rcu() #16, !dbg !284
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !284
  call void @__sysvec_threshold(ptr noundef %8) #16, !dbg !284
  call void @irq_exit_rcu() #16, !dbg !284
  br label %if.end, !dbg !284

if.else:                                          ; preds = %do.end
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #16, !dbg !286
  br label %do.body12, !dbg !286

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !287

do.body13:                                        ; preds = %do.body12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify14) #15, !dbg !288
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify14, metadata !252, metadata !DIExpression()), !dbg !288
  store ptr null, ptr %__vpp_verify14, align 8, !dbg !288
  %9 = load ptr, ptr %__vpp_verify14, align 8, !dbg !288
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify14) #15, !dbg !287
  br label %do.end16, !dbg !288

do.end16:                                         ; preds = %do.body13
  br label %do.body17, !dbg !287

do.body17:                                        ; preds = %do.end16
  call void @llvm.lifetime.start.p0(i64 1, ptr %pto_val__) #15, !dbg !289
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !257, metadata !DIExpression()), !dbg !289
  store i8 1, ptr %pto_val__, align 1, !dbg !289
  %10 = load i8, ptr %pto_val__, align 1, !dbg !289
  call void asm "movb $1, %gs:$0", "=*m,qi,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 7), i8 %10, ptr elementtype(i8) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 7)) #15, !dbg !289, !srcloc !290
  call void @llvm.lifetime.end.p0(i64 1, ptr %pto_val__) #15, !dbg !287
  br label %do.end19, !dbg !289

do.end19:                                         ; preds = %do.body17
  br label %do.end21, !dbg !287

do.end21:                                         ; preds = %do.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tos) #15, !dbg !291
  call void @llvm.dbg.declare(metadata ptr %tos, metadata !259, metadata !DIExpression()), !dbg !291
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #16, !dbg !292
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__23) #15, !dbg !293
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__23, metadata !261, metadata !DIExpression()), !dbg !293
  br label %do.body24, !dbg !293

do.body24:                                        ; preds = %do.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify25) #15, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify25, metadata !264, metadata !DIExpression()), !dbg !294
  store ptr null, ptr %__vpp_verify25, align 8, !dbg !294
  %11 = load ptr, ptr %__vpp_verify25, align 8, !dbg !294
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify25) #15, !dbg !293
  br label %do.cond26, !dbg !294

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !294

do.end27:                                         ; preds = %do.cond26
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__28) #15, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %pfo_val__28, metadata !266, metadata !DIExpression()), !dbg !295
  %12 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 5)) #17, !dbg !295, !srcloc !296
  store i64 %12, ptr %pfo_val__28, align 8, !dbg !295
  %13 = load i64, ptr %pfo_val__28, align 8, !dbg !295
  %14 = inttoptr i64 %13 to ptr, !dbg !295
  store ptr %14, ptr %tmp29, align 8, !dbg !295
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__28) #15, !dbg !293
  %15 = load ptr, ptr %tmp29, align 8, !dbg !295
  store ptr %15, ptr %pscr_ret__23, align 8, !dbg !293
  %16 = load ptr, ptr %pscr_ret__23, align 8, !dbg !293
  store ptr %16, ptr %tmp30, align 8, !dbg !293
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__23) #15, !dbg !292
  %17 = load ptr, ptr %tmp30, align 8, !dbg !293
  store ptr %17, ptr %tmp22, align 8, !dbg !292
  %18 = load ptr, ptr %tmp22, align 8, !dbg !292
  store ptr %18, ptr %tos, align 8, !dbg !291
  %19 = load ptr, ptr %tos, align 8, !dbg !291
  %20 = call i64 @llvm.read_register.i64(metadata !139), !dbg !291
  %21 = load ptr, ptr %tos, align 8, !dbg !291
  %22 = load ptr, ptr %regs.addr, align 8, !dbg !291
  %23 = call { ptr, i64 } asm sideeffect "movq\09%rsp, ($3)\09\09\09\09\0Amovq\09$3, %rsp\09\09\09\09\0Acall irq_enter_rcu\09\09\09\09\0Amovq\09$4, %rdi\09\09\09\09\0Acall ${2:c}\09\09\09\09\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09call irq_exit_rcu\09\09\09\09\0Apopq\09%rsp\09\09\09\09\09\0A", "={r11},={rsp},i,{r11},r,{r11},{rsp},~{cc},~{rax},~{rcx},~{rdx},~{rsi},~{rdi},~{r8},~{r9},~{r10},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr @__sysvec_threshold, ptr %21, ptr %22, ptr %19, i64 %20) #15, !dbg !291, !srcloc !297
  %asmresult = extractvalue { ptr, i64 } %23, 0, !dbg !291
  %asmresult31 = extractvalue { ptr, i64 } %23, 1, !dbg !291
  store ptr %asmresult, ptr %tos, align 8, !dbg !291
  call void @llvm.write_register.i64(metadata !139, i64 %asmresult31), !dbg !291
  call void @llvm.lifetime.end.p0(i64 8, ptr %tos) #15, !dbg !298
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #16, !dbg !299
  br label %do.body32, !dbg !299

do.body32:                                        ; preds = %do.end27
  br label %do.body33, !dbg !300

do.body33:                                        ; preds = %do.body32
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify34) #15, !dbg !301
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify34, metadata !268, metadata !DIExpression()), !dbg !301
  store ptr null, ptr %__vpp_verify34, align 8, !dbg !301
  %24 = load ptr, ptr %__vpp_verify34, align 8, !dbg !301
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify34) #15, !dbg !300
  br label %do.end36, !dbg !301

do.end36:                                         ; preds = %do.body33
  br label %do.body37, !dbg !300

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 1, ptr %pto_val__38) #15, !dbg !302
  call void @llvm.dbg.declare(metadata ptr %pto_val__38, metadata !272, metadata !DIExpression()), !dbg !302
  store i8 0, ptr %pto_val__38, align 1, !dbg !302
  %25 = load i8, ptr %pto_val__38, align 1, !dbg !302
  call void asm "movb $1, %gs:$0", "=*m,qi,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 7), i8 %25, ptr elementtype(i8) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 7)) #15, !dbg !302, !srcloc !303
  call void @llvm.lifetime.end.p0(i64 1, ptr %pto_val__38) #15, !dbg !300
  br label %do.end40, !dbg !302

do.end40:                                         ; preds = %do.body37
  br label %do.end42, !dbg !300

do.end42:                                         ; preds = %do.end40
  br label %if.end

if.end:                                           ; preds = %do.end42, %if.then
  ret void, !dbg !274
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !304 dso_local void @irqentry_exit(ptr noundef, i8) #4 section ".noinstr.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fred_sysvec_threshold(ptr noundef %regs) #0 align 16 !dbg !307 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !310
  call void @instr_sysvec_threshold(ptr noundef %0) #16, !dbg !310
  ret void, !dbg !310
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !311 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_mode(ptr noundef %regs) #5 align 16 !dbg !317 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !323
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !324
  %2 = load i16, ptr %1, align 8, !dbg !324
  %conv = zext i16 %2 to i32, !dbg !323
  %and = and i32 %conv, 3, !dbg !325
  %tobool = icmp ne i32 %and, 0, !dbg !326
  %lnot = xor i1 %tobool, true, !dbg !326
  %lnot1 = xor i1 %lnot, true, !dbg !327
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !327
  ret i32 %lnot.ext, !dbg !328
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #5 align 16 !dbg !329 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !334, metadata !DIExpression()), !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !337 dso_local void @irq_enter_rcu() #4

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__sysvec_threshold(ptr noundef %regs) #7 align 16 !dbg !339 {
entry:
  %regs.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !341, metadata !DIExpression()), !dbg !348
  call void @trace_threshold_apic_entry(i32 noundef 249) #16, !dbg !349
  br label %do.body, !dbg !350

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !351

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !352
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !342, metadata !DIExpression()), !dbg !352
  store ptr null, ptr %__vpp_verify, align 8, !dbg !352
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !352
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !351
  br label %do.end, !dbg !352

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !351

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #15, !dbg !353
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !345, metadata !DIExpression()), !dbg !353
  store i32 1, ptr %pao_ID__, align 4, !dbg !353
  call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.irq_cpustat_t, ptr @irq_stat, i32 0, i32 14), ptr elementtype(i32) getelementptr inbounds (%struct.irq_cpustat_t, ptr @irq_stat, i32 0, i32 14)) #15, !dbg !354, !srcloc !357
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #15, !dbg !351
  br label %do.end3, !dbg !353

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !351

do.end4:                                          ; preds = %do.end3
  %1 = load ptr, ptr @mce_threshold_vector, align 8, !dbg !358
  call void %1() #16, !dbg !358
  call void @trace_threshold_apic_exit(i32 noundef 249) #16, !dbg !359
  call void @apic_eoi() #16, !dbg !360
  ret void, !dbg !361
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !362 dso_local void @irq_exit_rcu() #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_threshold_apic_entry(i32 noundef %vector) #10 align 16 !dbg !74 {
entry:
  %vector.addr = alloca i32, align 4
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu462 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !78, metadata !DIExpression()), !dbg !363
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_threshold_apic_entry, i32 0, i32 1)) #16, !dbg !364
  br i1 %call, label %if.then, label %if.end68, !dbg !363

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !364

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #15, !dbg !365
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !79, metadata !DIExpression()), !dbg !365
  store i32 0, ptr %__idx, align 4, !dbg !365
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !82, metadata !DIExpression()), !dbg !366
  br label %do.body1, !dbg !366

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !367
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !85, metadata !DIExpression()), !dbg !367
  store ptr null, ptr %__vpp_verify, align 8, !dbg !367
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !367
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !366
  br label %do.cond, !dbg !367

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !367

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !368
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !89, metadata !DIExpression()), !dbg !368
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !368, !srcloc !369
  store i32 %1, ptr %pfo_val__, align 4, !dbg !368
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !368
  %conv = zext i32 %2 to i64, !dbg !368
  %conv2 = trunc i64 %conv to i32, !dbg !368
  store i32 %conv2, ptr %tmp, align 4, !dbg !368
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !366
  %3 = load i32, ptr %tmp, align 4, !dbg !368
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !366
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !366
  store i32 %4, ptr %tmp3, align 4, !dbg !366
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !370
  %5 = load i32, ptr %tmp3, align 4, !dbg !366
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #16, !dbg !370
  br i1 %call4, label %if.end, label %if.then5, !dbg !365

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !370

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !371
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !91, metadata !DIExpression()), !dbg !371
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !371
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !372
  %tobool = icmp ne i32 %6, 0, !dbg !372
  %lnot = xor i1 %tobool, true, !dbg !372
  %lnot6 = xor i1 %lnot, true, !dbg !372
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !372
  %conv7 = sext i32 %lnot.ext to i64, !dbg !372
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !372
  %tobool8 = icmp ne i64 %expval, 0, !dbg !372
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !371

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !372

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !373
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !94, metadata !DIExpression()), !dbg !373
  store i32 2307, ptr %__flags, align 4, !dbg !373
  br label %do.body11, !dbg !373

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !374

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !374

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !373

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !376
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 107, i32 %7, i64 12) #15, !dbg !376, !srcloc !378
  br label %do.cond15, !dbg !376

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !376

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !373

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !379

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !379

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !372
  br label %do.cond20, !dbg !373

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !373

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !373

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !371
  %tobool24 = icmp ne i32 %8, 0, !dbg !371
  %lnot25 = xor i1 %tobool24, true, !dbg !371
  %lnot27 = xor i1 %lnot25, true, !dbg !371
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !371
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !371
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !371
  store i64 %expval30, ptr %tmp23, align 8, !dbg !372
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !381
  %9 = load i64, ptr %tmp23, align 8, !dbg !371
  %tobool31 = icmp ne i64 %9, 0, !dbg !381
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !365

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !381

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !365

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #16, !dbg !382
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !382, !srcloc !384
  br label %do.cond35, !dbg !382

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !382

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !365

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #15, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !97, metadata !DIExpression()), !dbg !385
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #15, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !99, metadata !DIExpression()), !dbg !385
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu462) #15, !dbg !386
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu462, metadata !100, metadata !DIExpression()), !dbg !386
  br label %do.body38, !dbg !387

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !389

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !389

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_threshold_apic_entry, i32 0, i32 8), align 8, !dbg !387
  store ptr %10, ptr %tmp41, align 8, !dbg !389
  %11 = load ptr, ptr %tmp41, align 8, !dbg !387
  store ptr %11, ptr %__UNIQUE_ID_rcu462, align 8, !dbg !386
  %12 = load ptr, ptr %__UNIQUE_ID_rcu462, align 8, !dbg !386
  store ptr %12, ptr %tmp42, align 8, !dbg !386
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu462) #15, !dbg !385
  %13 = load ptr, ptr %tmp42, align 8, !dbg !386
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !385
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !391
  %tobool43 = icmp ne ptr %14, null, !dbg !391
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !385

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !393
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !393
  %16 = load ptr, ptr %data, align 8, !dbg !393
  store ptr %16, ptr %__data, align 8, !dbg !393
  store ptr @__SCT__tp_func_threshold_apic_entry, ptr %tmp45, align 8, !dbg !395
  %17 = load ptr, ptr %tmp45, align 8, !dbg !395
  %18 = load ptr, ptr %__data, align 8, !dbg !393
  %19 = load i32, ptr %vector.addr, align 4, !dbg !393
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19) #16, !dbg !393
  br label %if.end47, !dbg !393

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #15, !dbg !365
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #15, !dbg !365
  br label %do.cond48, !dbg !385

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !385

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !365

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !397, !srcloc !399
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #16, !dbg !400
  %lnot52 = xor i1 %call51, true, !dbg !400
  %lnot54 = xor i1 %lnot52, true, !dbg !400
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !400
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !400
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !400
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !400
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !397

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !400

do.body60:                                        ; preds = %if.then59
  %20 = call i64 @llvm.read_register.i64(metadata !139), !dbg !402
  %21 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %20) #15, !dbg !402, !srcloc !404
  call void @llvm.write_register.i64(metadata !139, i64 %21), !dbg !402
  br label %do.cond61, !dbg !402

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !402

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !402

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !397

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !397

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !364
  br label %cleanup, !dbg !364

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #15, !dbg !364
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !365

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !365

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !363

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_threshold_apic_exit(i32 noundef %vector) #10 align 16 !dbg !106 {
entry:
  %vector.addr = alloca i32, align 4
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu470 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !108, metadata !DIExpression()), !dbg !405
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_threshold_apic_exit, i32 0, i32 1)) #16, !dbg !406
  br i1 %call, label %if.then, label %if.end68, !dbg !405

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !406

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #15, !dbg !407
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !109, metadata !DIExpression()), !dbg !407
  store i32 0, ptr %__idx, align 4, !dbg !407
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #15, !dbg !408
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !112, metadata !DIExpression()), !dbg !408
  br label %do.body1, !dbg !408

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !409
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !115, metadata !DIExpression()), !dbg !409
  store ptr null, ptr %__vpp_verify, align 8, !dbg !409
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !409
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !408
  br label %do.cond, !dbg !409

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !409

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #15, !dbg !410
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !117, metadata !DIExpression()), !dbg !410
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !410, !srcloc !411
  store i32 %1, ptr %pfo_val__, align 4, !dbg !410
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !410
  %conv = zext i32 %2 to i64, !dbg !410
  %conv2 = trunc i64 %conv to i32, !dbg !410
  store i32 %conv2, ptr %tmp, align 4, !dbg !410
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #15, !dbg !408
  %3 = load i32, ptr %tmp, align 4, !dbg !410
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !408
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !408
  store i32 %4, ptr %tmp3, align 4, !dbg !408
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #15, !dbg !412
  %5 = load i32, ptr %tmp3, align 4, !dbg !408
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #16, !dbg !412
  br i1 %call4, label %if.end, label %if.then5, !dbg !407

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !412

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !413
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !119, metadata !DIExpression()), !dbg !413
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !413
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !414
  %tobool = icmp ne i32 %6, 0, !dbg !414
  %lnot = xor i1 %tobool, true, !dbg !414
  %lnot6 = xor i1 %lnot, true, !dbg !414
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !414
  %conv7 = sext i32 %lnot.ext to i64, !dbg !414
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !414
  %tobool8 = icmp ne i64 %expval, 0, !dbg !414
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !413

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !414

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !415
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !122, metadata !DIExpression()), !dbg !415
  store i32 2307, ptr %__flags, align 4, !dbg !415
  br label %do.body11, !dbg !415

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !416

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !416

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !415

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !418
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 107, i32 %7, i64 12) #15, !dbg !418, !srcloc !420
  br label %do.cond15, !dbg !418

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !418

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !415

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !421

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !421

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !414
  br label %do.cond20, !dbg !415

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !415

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !415

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !413
  %tobool24 = icmp ne i32 %8, 0, !dbg !413
  %lnot25 = xor i1 %tobool24, true, !dbg !413
  %lnot27 = xor i1 %lnot25, true, !dbg !413
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !413
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !413
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !413
  store i64 %expval30, ptr %tmp23, align 8, !dbg !414
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !423
  %9 = load i64, ptr %tmp23, align 8, !dbg !413
  %tobool31 = icmp ne i64 %9, 0, !dbg !423
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !407

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !423

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !407

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #16, !dbg !424
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !424, !srcloc !426
  br label %do.cond35, !dbg !424

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !424

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !407

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #15, !dbg !427
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !125, metadata !DIExpression()), !dbg !427
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #15, !dbg !427
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !127, metadata !DIExpression()), !dbg !427
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu470) #15, !dbg !428
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu470, metadata !128, metadata !DIExpression()), !dbg !428
  br label %do.body38, !dbg !429

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !431

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !431

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_threshold_apic_exit, i32 0, i32 8), align 8, !dbg !429
  store ptr %10, ptr %tmp41, align 8, !dbg !431
  %11 = load ptr, ptr %tmp41, align 8, !dbg !429
  store ptr %11, ptr %__UNIQUE_ID_rcu470, align 8, !dbg !428
  %12 = load ptr, ptr %__UNIQUE_ID_rcu470, align 8, !dbg !428
  store ptr %12, ptr %tmp42, align 8, !dbg !428
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu470) #15, !dbg !427
  %13 = load ptr, ptr %tmp42, align 8, !dbg !428
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !427
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !433
  %tobool43 = icmp ne ptr %14, null, !dbg !433
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !427

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !435
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !435
  %16 = load ptr, ptr %data, align 8, !dbg !435
  store ptr %16, ptr %__data, align 8, !dbg !435
  store ptr @__SCT__tp_func_threshold_apic_exit, ptr %tmp45, align 8, !dbg !437
  %17 = load ptr, ptr %tmp45, align 8, !dbg !437
  %18 = load ptr, ptr %__data, align 8, !dbg !435
  %19 = load i32, ptr %vector.addr, align 4, !dbg !435
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19) #16, !dbg !435
  br label %if.end47, !dbg !435

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #15, !dbg !407
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #15, !dbg !407
  br label %do.cond48, !dbg !427

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !427

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !407

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !439, !srcloc !441
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #16, !dbg !442
  %lnot52 = xor i1 %call51, true, !dbg !442
  %lnot54 = xor i1 %lnot52, true, !dbg !442
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !442
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !442
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !442
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !442
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !439

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !442

do.body60:                                        ; preds = %if.then59
  %20 = call i64 @llvm.read_register.i64(metadata !139), !dbg !444
  %21 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %20) #15, !dbg !444, !srcloc !446
  call void @llvm.write_register.i64(metadata !139, i64 %21), !dbg !444
  br label %do.cond61, !dbg !444

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !444

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !444

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !439

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !439

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !406
  br label %cleanup, !dbg !406

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #15, !dbg !406
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !407

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !407

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !405

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @apic_eoi() #5 align 16 !dbg !134 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__apic_call_eoi, ptr %tmp, align 8, !dbg !447
  %0 = load ptr, ptr %tmp, align 8, !dbg !447
  call void %0() #16, !dbg !449
  ret void, !dbg !450
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #5 align 16 !dbg !451 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !481, metadata !DIExpression()), !dbg !482
  %0 = load ptr, ptr %key.addr, align 8, !dbg !483
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #16, !dbg !484
  ret i1 %call, !dbg !485
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #10 align 16 !dbg !486 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !490, metadata !DIExpression()), !dbg !491
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !492
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #16, !dbg !493
  ret i1 %call, !dbg !494
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #5 align 16 !dbg !495 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !498, metadata !DIExpression()), !dbg !505
  br label %do.body, !dbg !506

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #15, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !499, metadata !DIExpression()), !dbg !507
  %0 = load i32, ptr %val.addr, align 4, !dbg !507
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !507
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !507

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !507
  %cmp = icmp eq i32 %2, 1, !dbg !507
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !507

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !507
  %cmp1 = icmp eq i32 %3, -1, !dbg !507
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !507

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !507
  br label %cond.end, !dbg !507

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !507

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !507
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !507
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !508
  %cmp2 = icmp eq i32 %5, 1, !dbg !508
  br i1 %cmp2, label %if.then, label %if.else, !dbg !507

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !509, !srcloc !511
  br label %if.end8, !dbg !508

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !512
  %cmp3 = icmp eq i32 %6, -1, !dbg !512
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !508

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !513, !srcloc !515
  br label %if.end, !dbg !512

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !512

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #15, !dbg !516
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !501, metadata !DIExpression()), !dbg !516
  %7 = load i32, ptr %val.addr, align 4, !dbg !516
  %conv = sext i32 %7 to i64, !dbg !516
  %and = and i64 %conv, 4294967295, !dbg !516
  %conv7 = trunc i64 %and to i32, !dbg !516
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !516
  %8 = load i32, ptr %pto_val__, align 4, !dbg !516
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !516, !srcloc !517
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #15, !dbg !512
  br label %do.cond, !dbg !516

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !516

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #15, !dbg !506
  br label %do.end10, !dbg !507

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !518
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_threshold_apic_entry(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #5 align 16 !dbg !519 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #15, !dbg !525
  call void @llvm.dbg.declare(metadata ptr %c, metadata !523, metadata !DIExpression()), !dbg !525
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #15, !dbg !525, !srcloc !526
  %1 = icmp ult i8 %0, 2, !dbg !525
  call void @llvm.assume(i1 %1), !dbg !525
  store i8 %0, ptr %c, align 1, !dbg !525
  %2 = load i8, ptr %c, align 1, !dbg !525, !range !281, !noundef !282
  %tobool = trunc i8 %2 to i1, !dbg !525
  %frombool = zext i1 %tobool to i8, !dbg !525
  store i8 %frombool, ptr %tmp, align 1, !dbg !525
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #15, !dbg !527
  %3 = load i8, ptr %tmp, align 1, !dbg !525, !range !281, !noundef !282
  %tobool1 = trunc i8 %3 to i1, !dbg !525
  ret i1 %tobool1, !dbg !528
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #5 align 16 !dbg !529 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !534, metadata !DIExpression()), !dbg !537
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !535, metadata !DIExpression()), !dbg !538
  %0 = load ptr, ptr %key.addr, align 8, !dbg !539
  %1 = load i8, ptr %branch.addr, align 1, !dbg !540, !range !281, !noundef !282
  %tobool = trunc i8 %1 to i1, !dbg !540
  %conv = zext i1 %tobool to i32, !dbg !540
  %or = or i32 2, %conv, !dbg !541
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #15
          to label %asm.fallthrough [label %l_yes], !dbg !542, !srcloc !543

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !544
  br label %return, !dbg !544

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !536), !dbg !545
  store i1 true, ptr %retval, align 1, !dbg !546
  br label %return, !dbg !546

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !547
  ret i1 %2, !dbg !547
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #5 align 16 !dbg !548 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !552, metadata !DIExpression()), !dbg !554
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !553, metadata !DIExpression()), !dbg !555
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !556
  %call = call i32 @cpumask_check(i32 noundef %0) #16, !dbg !556
  %conv = zext i32 %call to i64, !dbg !556
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !556
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !556
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !556
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #16, !dbg !556
  ret i1 %call1, !dbg !557
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !558 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !566, metadata !DIExpression()), !dbg !568
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !567, metadata !DIExpression()), !dbg !569
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !570
  %1 = load i64, ptr %nr.addr, align 8, !dbg !571
  %div = udiv i64 %1, 64, !dbg !571
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !572
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #16, !dbg !573
  %2 = load i64, ptr %nr.addr, align 8, !dbg !574
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !575
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !576
  ret i1 %call, !dbg !577
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #5 align 16 !dbg !578 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !582, metadata !DIExpression()), !dbg !583
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !584
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #16, !dbg !585
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !586
  ret i32 %1, !dbg !587
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !588 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !600, metadata !DIExpression()), !dbg !602
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !601, metadata !DIExpression()), !dbg !603
  %0 = load ptr, ptr %v.addr, align 8, !dbg !604
  %1 = load i64, ptr %size.addr, align 8, !dbg !605
  %conv = trunc i64 %1 to i32, !dbg !605
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #16, !dbg !606
  %2 = load ptr, ptr %v.addr, align 8, !dbg !607
  %3 = load i64, ptr %size.addr, align 8, !dbg !607
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #16, !dbg !607
  ret void, !dbg !608
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !609 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !612, metadata !DIExpression()), !dbg !614
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !613, metadata !DIExpression()), !dbg !615
  %0 = load i64, ptr %nr.addr, align 8, !dbg !616
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !617
  br i1 %1, label %cond.true, label %cond.false, !dbg !617

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !618
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !619
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #16, !dbg !620
  %conv = zext i1 %call to i32, !dbg !620
  br label %cond.end, !dbg !617

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !621
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !622
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #16, !dbg !623
  %conv2 = zext i1 %call1 to i32, !dbg !623
  br label %cond.end, !dbg !617

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !617
  %tobool = icmp ne i32 %cond, 0, !dbg !617
  ret i1 %tobool, !dbg !624
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #10 align 16 !dbg !625 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !630, metadata !DIExpression()), !dbg !632
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !631, metadata !DIExpression()), !dbg !633
  ret i1 true, !dbg !634
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #10 align 16 !dbg !635 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !640, metadata !DIExpression()), !dbg !643
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !641, metadata !DIExpression()), !dbg !644
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !642, metadata !DIExpression()), !dbg !645
  ret void, !dbg !646
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !647 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !651, metadata !DIExpression()), !dbg !653
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !652, metadata !DIExpression()), !dbg !654
  %0 = load i64, ptr %nr.addr, align 8, !dbg !655
  %and = and i64 %0, 63, !dbg !656
  %shl = shl i64 1, %and, !dbg !657
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !658
  %2 = load i64, ptr %nr.addr, align 8, !dbg !659
  %shr = ashr i64 %2, 6, !dbg !660
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !658
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !658
  %and1 = and i64 %shl, %3, !dbg !661
  %cmp = icmp ne i64 %and1, 0, !dbg !662
  ret i1 %cmp, !dbg !663
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !664 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !666, metadata !DIExpression()), !dbg !669
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !667, metadata !DIExpression()), !dbg !670
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !671
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !668, metadata !DIExpression()), !dbg !672
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !673
  %1 = load i64, ptr %nr.addr, align 8, !dbg !674
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !675, !srcloc !676
  %3 = icmp ult i8 %2, 2, !dbg !675
  call void @llvm.assume(i1 %3), !dbg !675
  store i8 %2, ptr %oldbit, align 1, !dbg !675
  %4 = load i8, ptr %oldbit, align 1, !dbg !677, !range !281, !noundef !282
  %tobool = trunc i8 %4 to i1, !dbg !677
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !678
  ret i1 %tobool, !dbg !679
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #5 align 16 !dbg !680 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !684, metadata !DIExpression()), !dbg !686
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !685, metadata !DIExpression()), !dbg !687
  ret void, !dbg !688
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #12

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_threshold_apic_exit(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_eoi() #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold noredzone }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!139}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "mce_threshold_vector", scope: !2, file: !3, line: 22, type: !138, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/mce/.threshold.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/mce/threshold\22 -D KBUILD_BASENAME=\22threshold\22 -D KBUILD_MODNAME=\22threshold\22 -D __KBUILD_MODNAME=kmod_threshold -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/mce/threshold.ll arch/x86/kernel/cpu/mce/threshold.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !49, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/mce/threshold.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "56de409e9e1bcb321930be847a88cf09")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !16, !13, !17, !18, !23, !24, !25, !26, !27, !30, !37, !46, !7, !47}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !14, line: 35, baseType: !15)
!14 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!15 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !19, line: 17, baseType: !20)
!19 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !21, line: 21, baseType: !22)
!21 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!22 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !32, line: 26, size: 192, elements: !33)
!32 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!33 = !{!34, !35, !36}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !31, file: !32, line: 27, baseType: !16, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !31, file: !32, line: 28, baseType: !16, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !31, file: !32, line: 29, baseType: !25, size: 32, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !40, line: 19, size: 64, elements: !41)
!40 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !39, file: !40, line: 19, baseType: !43, size: 64)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 1)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !19, line: 21, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !21, line: 27, baseType: !7)
!49 = !{!0, !50, !56, !61, !66, !72, !102, !104, !130, !132}
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !3, line: 18, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 416, elements: !54)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!54 = !{!55}
!55 = !DISubrange(count: 52)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !3, line: 24, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 40, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 5)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !3, line: 24, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 48, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 6)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !68, line: 107, type: !69, isLocal: true, isDefinition: true)
!68 = !DIFile(filename: "./arch/x86/include/asm/trace/irq_vectors.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "248ebb97ecf2aa313dd3226fad5ad4a6")
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 328, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 41)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_threshold_apic_entry464", scope: !74, file: !68, line: 107, type: !16, isLocal: true, isDefinition: true)
!74 = distinct !DISubprogram(name: "trace_threshold_apic_entry", scope: !68, file: !68, line: 107, type: !75, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !77)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !25}
!77 = !{!78, !79, !82, !85, !89, !91, !94, !97, !99, !100}
!78 = !DILocalVariable(name: "vector", arg: 1, scope: !74, file: !68, line: 107, type: !25)
!79 = !DILocalVariable(name: "__idx", scope: !80, file: !68, line: 107, type: !25)
!80 = distinct !DILexicalBlock(scope: !81, file: !68, line: 107, column: 1)
!81 = distinct !DILexicalBlock(scope: !74, file: !68, line: 107, column: 1)
!82 = !DILocalVariable(name: "pscr_ret__", scope: !83, file: !68, line: 107, type: !25)
!83 = distinct !DILexicalBlock(scope: !84, file: !68, line: 107, column: 1)
!84 = distinct !DILexicalBlock(scope: !80, file: !68, line: 107, column: 1)
!85 = !DILocalVariable(name: "__vpp_verify", scope: !86, file: !68, line: 107, type: !87)
!86 = distinct !DILexicalBlock(scope: !83, file: !68, line: 107, column: 1)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!89 = !DILocalVariable(name: "pfo_val__", scope: !90, file: !68, line: 107, type: !47)
!90 = distinct !DILexicalBlock(scope: !83, file: !68, line: 107, column: 1)
!91 = !DILocalVariable(name: "__ret_warn_on", scope: !92, file: !68, line: 107, type: !25)
!92 = distinct !DILexicalBlock(scope: !93, file: !68, line: 107, column: 1)
!93 = distinct !DILexicalBlock(scope: !80, file: !68, line: 107, column: 1)
!94 = !DILocalVariable(name: "__flags", scope: !95, file: !68, line: 107, type: !25)
!95 = distinct !DILexicalBlock(scope: !96, file: !68, line: 107, column: 1)
!96 = distinct !DILexicalBlock(scope: !92, file: !68, line: 107, column: 1)
!97 = !DILocalVariable(name: "it_func_ptr", scope: !98, file: !68, line: 107, type: !30)
!98 = distinct !DILexicalBlock(scope: !80, file: !68, line: 107, column: 1)
!99 = !DILocalVariable(name: "__data", scope: !98, file: !68, line: 107, type: !16)
!100 = !DILocalVariable(name: "__UNIQUE_ID_rcu462", scope: !101, file: !68, line: 107, type: !30)
!101 = distinct !DILexicalBlock(scope: !98, file: !68, line: 107, column: 1)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace465", scope: !74, file: !68, line: 107, type: !16, isLocal: true, isDefinition: true)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_threshold_apic_exit472", scope: !106, file: !68, line: 107, type: !16, isLocal: true, isDefinition: true)
!106 = distinct !DISubprogram(name: "trace_threshold_apic_exit", scope: !68, file: !68, line: 107, type: !75, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !107)
!107 = !{!108, !109, !112, !115, !117, !119, !122, !125, !127, !128}
!108 = !DILocalVariable(name: "vector", arg: 1, scope: !106, file: !68, line: 107, type: !25)
!109 = !DILocalVariable(name: "__idx", scope: !110, file: !68, line: 107, type: !25)
!110 = distinct !DILexicalBlock(scope: !111, file: !68, line: 107, column: 1)
!111 = distinct !DILexicalBlock(scope: !106, file: !68, line: 107, column: 1)
!112 = !DILocalVariable(name: "pscr_ret__", scope: !113, file: !68, line: 107, type: !25)
!113 = distinct !DILexicalBlock(scope: !114, file: !68, line: 107, column: 1)
!114 = distinct !DILexicalBlock(scope: !110, file: !68, line: 107, column: 1)
!115 = !DILocalVariable(name: "__vpp_verify", scope: !116, file: !68, line: 107, type: !87)
!116 = distinct !DILexicalBlock(scope: !113, file: !68, line: 107, column: 1)
!117 = !DILocalVariable(name: "pfo_val__", scope: !118, file: !68, line: 107, type: !47)
!118 = distinct !DILexicalBlock(scope: !113, file: !68, line: 107, column: 1)
!119 = !DILocalVariable(name: "__ret_warn_on", scope: !120, file: !68, line: 107, type: !25)
!120 = distinct !DILexicalBlock(scope: !121, file: !68, line: 107, column: 1)
!121 = distinct !DILexicalBlock(scope: !110, file: !68, line: 107, column: 1)
!122 = !DILocalVariable(name: "__flags", scope: !123, file: !68, line: 107, type: !25)
!123 = distinct !DILexicalBlock(scope: !124, file: !68, line: 107, column: 1)
!124 = distinct !DILexicalBlock(scope: !120, file: !68, line: 107, column: 1)
!125 = !DILocalVariable(name: "it_func_ptr", scope: !126, file: !68, line: 107, type: !30)
!126 = distinct !DILexicalBlock(scope: !110, file: !68, line: 107, column: 1)
!127 = !DILocalVariable(name: "__data", scope: !126, file: !68, line: 107, type: !16)
!128 = !DILocalVariable(name: "__UNIQUE_ID_rcu470", scope: !129, file: !68, line: 107, type: !30)
!129 = distinct !DILexicalBlock(scope: !126, file: !68, line: 107, column: 1)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace473", scope: !106, file: !68, line: 107, type: !16, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_eoi323", scope: !134, file: !135, line: 409, type: !16, isLocal: true, isDefinition: true)
!134 = distinct !DISubprogram(name: "apic_eoi", scope: !135, file: !135, line: 407, type: !136, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!135 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!136 = !DISubroutineType(types: !137)
!137 = !{null}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!139 = !{!"rsp"}
!140 = !{i32 7, !"Dwarf Version", i32 5}
!141 = !{i32 2, !"Debug Info Version", i32 3}
!142 = !{i32 1, !"wchar_size", i32 2}
!143 = !{i32 8, !"cf-protection-branch", i32 1}
!144 = !{i32 4, !"function_return_thunk_extern", i32 1}
!145 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!146 = !{i32 1, !"Code Model", i32 2}
!147 = !{i32 1, !"override-stack-alignment", i32 8}
!148 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!149 = distinct !DISubprogram(name: "default_threshold_interrupt", scope: !3, file: !3, line: 16, type: !136, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!150 = !DILocation(line: 18, column: 2, scope: !151)
!151 = distinct !DILexicalBlock(scope: !149, file: !3, line: 18, column: 2)
!152 = !DILocation(line: 18, column: 2, scope: !153)
!153 = distinct !DILexicalBlock(scope: !151, file: !3, line: 18, column: 2)
!154 = !DILocation(line: 20, column: 1, scope: !149)
!155 = distinct !DISubprogram(name: "sysvec_threshold", scope: !3, file: !3, line: 24, type: !156, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !216)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !158}
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !160, line: 103, size: 1344, elements: !161)
!160 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!161 = !{!162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !196, !197, !198}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !159, file: !160, line: 109, baseType: !17, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !159, file: !160, line: 110, baseType: !17, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !159, file: !160, line: 111, baseType: !17, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !159, file: !160, line: 112, baseType: !17, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !159, file: !160, line: 113, baseType: !17, size: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !159, file: !160, line: 114, baseType: !17, size: 64, offset: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !159, file: !160, line: 117, baseType: !17, size: 64, offset: 384)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !159, file: !160, line: 118, baseType: !17, size: 64, offset: 448)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !159, file: !160, line: 119, baseType: !17, size: 64, offset: 512)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !159, file: !160, line: 120, baseType: !17, size: 64, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !159, file: !160, line: 121, baseType: !17, size: 64, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !159, file: !160, line: 122, baseType: !17, size: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !159, file: !160, line: 123, baseType: !17, size: 64, offset: 768)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !159, file: !160, line: 124, baseType: !17, size: 64, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !159, file: !160, line: 125, baseType: !17, size: 64, offset: 896)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !159, file: !160, line: 139, baseType: !17, size: 64, offset: 960)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !159, file: !160, line: 142, baseType: !17, size: 64, offset: 1024)
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !160, line: 144, baseType: !180, size: 64, offset: 1088)
!180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !159, file: !160, line: 144, size: 64, elements: !181)
!181 = !{!182, !186, !190}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !180, file: !160, line: 146, baseType: !183, size: 16)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !19, line: 19, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !21, line: 24, baseType: !185)
!185 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !180, file: !160, line: 148, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !19, line: 23, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !21, line: 31, baseType: !189)
!189 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !180, file: !160, line: 150, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !160, line: 59, size: 64, elements: !192)
!192 = !{!193, !194, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !191, file: !160, line: 61, baseType: !187, size: 16, flags: DIFlagBitField, extraData: i64 0)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !191, file: !160, line: 63, baseType: !187, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !191, file: !160, line: 65, baseType: !187, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !159, file: !160, line: 153, baseType: !17, size: 64, offset: 1152)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !159, file: !160, line: 154, baseType: !17, size: 64, offset: 1216)
!198 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !160, line: 156, baseType: !199, size: 64, offset: 1280)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !159, file: !160, line: 156, size: 64, elements: !200)
!200 = !{!201, !202, !203}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !199, file: !160, line: 158, baseType: !183, size: 16)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !199, file: !160, line: 160, baseType: !187, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !199, file: !160, line: 162, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !160, line: 69, size: 64, elements: !205)
!205 = !{!206, !207, !208, !209, !210, !211, !212, !213, !214, !215}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !204, file: !160, line: 71, baseType: !187, size: 16, flags: DIFlagBitField, extraData: i64 0)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !204, file: !160, line: 73, baseType: !187, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !204, file: !160, line: 75, baseType: !187, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !204, file: !160, line: 77, baseType: !187, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !204, file: !160, line: 80, baseType: !187, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !204, file: !160, line: 83, baseType: !187, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !204, file: !160, line: 86, baseType: !187, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !204, file: !160, line: 88, baseType: !187, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !204, file: !160, line: 93, baseType: !187, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !204, file: !160, line: 100, baseType: !187, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!216 = !{!217, !218}
!217 = !DILocalVariable(name: "regs", arg: 1, scope: !155, file: !3, line: 24, type: !158)
!218 = !DILocalVariable(name: "state", scope: !155, file: !3, line: 24, type: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqentry_state_t", file: !220, line: 376, baseType: !221)
!220 = !DIFile(filename: "./include/linux/entry-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b93fdf1f121944f6dbdd60dbacd9cec")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqentry_state", file: !220, line: 371, size: 8, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, scope: !221, file: !220, line: 372, baseType: !224, size: 8)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !220, line: 372, size: 8, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "exit_rcu", scope: !224, file: !220, line: 373, baseType: !13, size: 8)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep", scope: !224, file: !220, line: 374, baseType: !13, size: 8)
!228 = !DILocation(line: 24, column: 1, scope: !155)
!229 = !DILocation(line: 24, column: 1, scope: !230)
!230 = distinct !DILexicalBlock(scope: !155, file: !3, line: 24, column: 1)
!231 = !DILocation(line: 24, column: 1, scope: !232)
!232 = distinct !DILexicalBlock(scope: !155, file: !3, line: 24, column: 1)
!233 = !DISubprogram(name: "irqentry_enter", scope: !220, file: !220, line: 410, type: !234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!234 = !DISubroutineType(types: !235)
!235 = !{!219, !158}
!236 = distinct !DISubprogram(name: "kvm_set_cpu_l1tf_flush_l1d", scope: !237, file: !237, line: 85, type: !136, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!237 = !DIFile(filename: "./arch/x86/include/asm/hardirq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a5f78851d05626cb30000e7593c12009")
!238 = !DILocation(line: 85, column: 64, scope: !236)
!239 = distinct !DISubprogram(name: "instr_sysvec_threshold", scope: !3, file: !3, line: 24, type: !156, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !240)
!240 = !{!241, !242, !248, !250, !252, !257, !259, !261, !264, !266, !268, !272}
!241 = !DILocalVariable(name: "regs", arg: 1, scope: !239, file: !3, line: 24, type: !158)
!242 = !DILocalVariable(name: "pscr_ret__", scope: !243, file: !3, line: 24, type: !13)
!243 = distinct !DILexicalBlock(scope: !244, file: !3, line: 24, column: 1)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 24, column: 1)
!245 = distinct !DILexicalBlock(scope: !246, file: !3, line: 24, column: 1)
!246 = distinct !DILexicalBlock(scope: !247, file: !3, line: 24, column: 1)
!247 = distinct !DILexicalBlock(scope: !239, file: !3, line: 24, column: 1)
!248 = !DILocalVariable(name: "__vpp_verify", scope: !249, file: !3, line: 24, type: !87)
!249 = distinct !DILexicalBlock(scope: !243, file: !3, line: 24, column: 1)
!250 = !DILocalVariable(name: "pfo_val__", scope: !251, file: !3, line: 24, type: !18)
!251 = distinct !DILexicalBlock(scope: !243, file: !3, line: 24, column: 1)
!252 = !DILocalVariable(name: "__vpp_verify", scope: !253, file: !3, line: 24, type: !87)
!253 = distinct !DILexicalBlock(scope: !254, file: !3, line: 24, column: 1)
!254 = distinct !DILexicalBlock(scope: !255, file: !3, line: 24, column: 1)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 24, column: 1)
!256 = distinct !DILexicalBlock(scope: !245, file: !3, line: 24, column: 1)
!257 = !DILocalVariable(name: "pto_val__", scope: !258, file: !3, line: 24, type: !18)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 24, column: 1)
!259 = !DILocalVariable(name: "tos", scope: !260, file: !3, line: 24, type: !16)
!260 = distinct !DILexicalBlock(scope: !256, file: !3, line: 24, column: 1)
!261 = !DILocalVariable(name: "pscr_ret__", scope: !262, file: !3, line: 24, type: !16)
!262 = distinct !DILexicalBlock(scope: !263, file: !3, line: 24, column: 1)
!263 = distinct !DILexicalBlock(scope: !260, file: !3, line: 24, column: 1)
!264 = !DILocalVariable(name: "__vpp_verify", scope: !265, file: !3, line: 24, type: !87)
!265 = distinct !DILexicalBlock(scope: !262, file: !3, line: 24, column: 1)
!266 = !DILocalVariable(name: "pfo_val__", scope: !267, file: !3, line: 24, type: !187)
!267 = distinct !DILexicalBlock(scope: !262, file: !3, line: 24, column: 1)
!268 = !DILocalVariable(name: "__vpp_verify", scope: !269, file: !3, line: 24, type: !87)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 24, column: 1)
!270 = distinct !DILexicalBlock(scope: !271, file: !3, line: 24, column: 1)
!271 = distinct !DILexicalBlock(scope: !256, file: !3, line: 24, column: 1)
!272 = !DILocalVariable(name: "pto_val__", scope: !273, file: !3, line: 24, type: !18)
!273 = distinct !DILexicalBlock(scope: !270, file: !3, line: 24, column: 1)
!274 = !DILocation(line: 24, column: 1, scope: !239)
!275 = !DILocation(line: 24, column: 1, scope: !245)
!276 = !DILocation(line: 24, column: 1, scope: !244)
!277 = !DILocation(line: 24, column: 1, scope: !243)
!278 = !DILocation(line: 24, column: 1, scope: !249)
!279 = !DILocation(line: 24, column: 1, scope: !251)
!280 = !{i64 2157642726}
!281 = !{i8 0, i8 2}
!282 = !{}
!283 = !DILocation(line: 24, column: 1, scope: !246)
!284 = !DILocation(line: 24, column: 1, scope: !285)
!285 = distinct !DILexicalBlock(scope: !245, file: !3, line: 24, column: 1)
!286 = !DILocation(line: 24, column: 1, scope: !255)
!287 = !DILocation(line: 24, column: 1, scope: !254)
!288 = !DILocation(line: 24, column: 1, scope: !253)
!289 = !DILocation(line: 24, column: 1, scope: !258)
!290 = !{i64 2157646464}
!291 = !DILocation(line: 24, column: 1, scope: !260)
!292 = !DILocation(line: 24, column: 1, scope: !263)
!293 = !DILocation(line: 24, column: 1, scope: !262)
!294 = !DILocation(line: 24, column: 1, scope: !265)
!295 = !DILocation(line: 24, column: 1, scope: !267)
!296 = !{i64 2157654710}
!297 = !{i64 2157649640, i64 2157649674, i64 2157655037, i64 2157655064, i64 2157655092, i64 2157655116, i64 2157655122, i64 2157655169, i64 2157655192, i64 2157655218, i64 2157649745}
!298 = !DILocation(line: 24, column: 1, scope: !256)
!299 = !DILocation(line: 24, column: 1, scope: !271)
!300 = !DILocation(line: 24, column: 1, scope: !270)
!301 = !DILocation(line: 24, column: 1, scope: !269)
!302 = !DILocation(line: 24, column: 1, scope: !273)
!303 = !{i64 2157657033}
!304 = !DISubprogram(name: "irqentry_exit", scope: !220, file: !220, line: 447, type: !305, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !158, !219}
!307 = distinct !DISubprogram(name: "fred_sysvec_threshold", scope: !3, file: !3, line: 24, type: !156, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !308)
!308 = !{!309}
!309 = !DILocalVariable(name: "regs", arg: 1, scope: !307, file: !3, line: 24, type: !158)
!310 = !DILocation(line: 24, column: 1, scope: !307)
!311 = !DISubprogram(name: "_printk", scope: !312, file: !312, line: 153, type: !313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!312 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!313 = !DISubroutineType(types: !314)
!314 = !{!25, !315, null}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!317 = distinct !DISubprogram(name: "user_mode", scope: !160, file: !160, line: 209, type: !318, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{!25, !158}
!320 = !{!321}
!321 = !DILocalVariable(name: "regs", arg: 1, scope: !317, file: !160, line: 209, type: !158)
!322 = !DILocation(line: 209, column: 54, scope: !317)
!323 = !DILocation(line: 214, column: 12, scope: !317)
!324 = !DILocation(line: 214, column: 18, scope: !317)
!325 = !DILocation(line: 214, column: 21, scope: !317)
!326 = !DILocation(line: 214, column: 10, scope: !317)
!327 = !DILocation(line: 214, column: 9, scope: !317)
!328 = !DILocation(line: 214, column: 2, scope: !317)
!329 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !330, file: !330, line: 313, type: !331, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!330 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!331 = !DISubroutineType(types: !332)
!332 = !{null, !315}
!333 = !{!334}
!334 = !DILocalVariable(name: "op", arg: 1, scope: !329, file: !330, line: 313, type: !315)
!335 = !DILocation(line: 313, column: 66, scope: !329)
!336 = !DILocation(line: 313, column: 72, scope: !329)
!337 = !DISubprogram(name: "irq_enter_rcu", scope: !338, file: !338, line: 59, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!338 = !DIFile(filename: "./include/linux/hardirq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e28e97c9e9f6f4db7783a84a063e2e35")
!339 = distinct !DISubprogram(name: "__sysvec_threshold", scope: !3, file: !3, line: 24, type: !156, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !340)
!340 = !{!341, !342, !345}
!341 = !DILocalVariable(name: "regs", arg: 1, scope: !339, file: !3, line: 24, type: !158)
!342 = !DILocalVariable(name: "__vpp_verify", scope: !343, file: !3, line: 27, type: !87)
!343 = distinct !DILexicalBlock(scope: !344, file: !3, line: 27, column: 2)
!344 = distinct !DILexicalBlock(scope: !339, file: !3, line: 27, column: 2)
!345 = !DILocalVariable(name: "pao_ID__", scope: !346, file: !3, line: 27, type: !347)
!346 = distinct !DILexicalBlock(scope: !344, file: !3, line: 27, column: 2)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!348 = !DILocation(line: 24, column: 1, scope: !339)
!349 = !DILocation(line: 26, column: 2, scope: !339)
!350 = !DILocation(line: 27, column: 2, scope: !339)
!351 = !DILocation(line: 27, column: 2, scope: !344)
!352 = !DILocation(line: 27, column: 2, scope: !343)
!353 = !DILocation(line: 27, column: 2, scope: !346)
!354 = !DILocation(line: 27, column: 2, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 27, column: 2)
!356 = distinct !DILexicalBlock(scope: !346, file: !3, line: 27, column: 2)
!357 = !{i64 2157670450}
!358 = !DILocation(line: 28, column: 2, scope: !339)
!359 = !DILocation(line: 29, column: 2, scope: !339)
!360 = !DILocation(line: 30, column: 2, scope: !339)
!361 = !DILocation(line: 31, column: 1, scope: !339)
!362 = !DISubprogram(name: "irq_exit_rcu", scope: !338, file: !338, line: 88, type: !136, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!363 = !DILocation(line: 107, column: 1, scope: !74)
!364 = !DILocation(line: 107, column: 1, scope: !81)
!365 = !DILocation(line: 107, column: 1, scope: !80)
!366 = !DILocation(line: 107, column: 1, scope: !83)
!367 = !DILocation(line: 107, column: 1, scope: !86)
!368 = !DILocation(line: 107, column: 1, scope: !90)
!369 = !{i64 2156732218}
!370 = !DILocation(line: 107, column: 1, scope: !84)
!371 = !DILocation(line: 107, column: 1, scope: !92)
!372 = !DILocation(line: 107, column: 1, scope: !96)
!373 = !DILocation(line: 107, column: 1, scope: !95)
!374 = !DILocation(line: 107, column: 1, scope: !375)
!375 = distinct !DILexicalBlock(scope: !95, file: !68, line: 107, column: 1)
!376 = !DILocation(line: 107, column: 1, scope: !377)
!377 = distinct !DILexicalBlock(scope: !95, file: !68, line: 107, column: 1)
!378 = !{i64 2156733414, i64 2156733443, i64 2156733489, i64 2156733547, i64 2156733601, i64 2156733655, i64 2156733710, i64 2156733741, i64 2156734049, i64 2156734055, i64 2156734102, i64 2156734125, i64 2156734151}
!379 = !DILocation(line: 107, column: 1, scope: !380)
!380 = distinct !DILexicalBlock(scope: !95, file: !68, line: 107, column: 1)
!381 = !DILocation(line: 107, column: 1, scope: !93)
!382 = !DILocation(line: 107, column: 1, scope: !383)
!383 = distinct !DILexicalBlock(scope: !80, file: !68, line: 107, column: 1)
!384 = !{i64 2156734516}
!385 = !DILocation(line: 107, column: 1, scope: !98)
!386 = !DILocation(line: 107, column: 1, scope: !101)
!387 = !DILocation(line: 107, column: 1, scope: !388)
!388 = distinct !DILexicalBlock(scope: !101, file: !68, line: 107, column: 1)
!389 = !DILocation(line: 107, column: 1, scope: !390)
!390 = distinct !DILexicalBlock(scope: !388, file: !68, line: 107, column: 1)
!391 = !DILocation(line: 107, column: 1, scope: !392)
!392 = distinct !DILexicalBlock(scope: !98, file: !68, line: 107, column: 1)
!393 = !DILocation(line: 107, column: 1, scope: !394)
!394 = distinct !DILexicalBlock(scope: !392, file: !68, line: 107, column: 1)
!395 = !DILocation(line: 107, column: 1, scope: !396)
!396 = distinct !DILexicalBlock(scope: !394, file: !68, line: 107, column: 1)
!397 = !DILocation(line: 107, column: 1, scope: !398)
!398 = distinct !DILexicalBlock(scope: !80, file: !68, line: 107, column: 1)
!399 = !{i64 2156741235}
!400 = !DILocation(line: 107, column: 1, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !68, line: 107, column: 1)
!402 = !DILocation(line: 107, column: 1, scope: !403)
!403 = distinct !DILexicalBlock(scope: !401, file: !68, line: 107, column: 1)
!404 = !{i64 2156741394}
!405 = !DILocation(line: 107, column: 1, scope: !106)
!406 = !DILocation(line: 107, column: 1, scope: !111)
!407 = !DILocation(line: 107, column: 1, scope: !110)
!408 = !DILocation(line: 107, column: 1, scope: !113)
!409 = !DILocation(line: 107, column: 1, scope: !116)
!410 = !DILocation(line: 107, column: 1, scope: !118)
!411 = !{i64 2156782339}
!412 = !DILocation(line: 107, column: 1, scope: !114)
!413 = !DILocation(line: 107, column: 1, scope: !120)
!414 = !DILocation(line: 107, column: 1, scope: !124)
!415 = !DILocation(line: 107, column: 1, scope: !123)
!416 = !DILocation(line: 107, column: 1, scope: !417)
!417 = distinct !DILexicalBlock(scope: !123, file: !68, line: 107, column: 1)
!418 = !DILocation(line: 107, column: 1, scope: !419)
!419 = distinct !DILexicalBlock(scope: !123, file: !68, line: 107, column: 1)
!420 = !{i64 2156783534, i64 2156783563, i64 2156783609, i64 2156783667, i64 2156783721, i64 2156783775, i64 2156783830, i64 2156783861, i64 2156784169, i64 2156784175, i64 2156784222, i64 2156784245, i64 2156784271}
!421 = !DILocation(line: 107, column: 1, scope: !422)
!422 = distinct !DILexicalBlock(scope: !123, file: !68, line: 107, column: 1)
!423 = !DILocation(line: 107, column: 1, scope: !121)
!424 = !DILocation(line: 107, column: 1, scope: !425)
!425 = distinct !DILexicalBlock(scope: !110, file: !68, line: 107, column: 1)
!426 = !{i64 2156784636}
!427 = !DILocation(line: 107, column: 1, scope: !126)
!428 = !DILocation(line: 107, column: 1, scope: !129)
!429 = !DILocation(line: 107, column: 1, scope: !430)
!430 = distinct !DILexicalBlock(scope: !129, file: !68, line: 107, column: 1)
!431 = !DILocation(line: 107, column: 1, scope: !432)
!432 = distinct !DILexicalBlock(scope: !430, file: !68, line: 107, column: 1)
!433 = !DILocation(line: 107, column: 1, scope: !434)
!434 = distinct !DILexicalBlock(scope: !126, file: !68, line: 107, column: 1)
!435 = !DILocation(line: 107, column: 1, scope: !436)
!436 = distinct !DILexicalBlock(scope: !434, file: !68, line: 107, column: 1)
!437 = !DILocation(line: 107, column: 1, scope: !438)
!438 = distinct !DILexicalBlock(scope: !436, file: !68, line: 107, column: 1)
!439 = !DILocation(line: 107, column: 1, scope: !440)
!440 = distinct !DILexicalBlock(scope: !110, file: !68, line: 107, column: 1)
!441 = !{i64 2156791294}
!442 = !DILocation(line: 107, column: 1, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !68, line: 107, column: 1)
!444 = !DILocation(line: 107, column: 1, scope: !445)
!445 = distinct !DILexicalBlock(scope: !443, file: !68, line: 107, column: 1)
!446 = !{i64 2156791453}
!447 = !DILocation(line: 409, column: 2, scope: !448)
!448 = distinct !DILexicalBlock(scope: !134, file: !135, line: 409, column: 2)
!449 = !DILocation(line: 409, column: 2, scope: !134)
!450 = !DILocation(line: 410, column: 1, scope: !134)
!451 = distinct !DISubprogram(name: "static_key_false", scope: !452, file: !452, line: 205, type: !453, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !480)
!452 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!453 = !DISubroutineType(types: !454)
!454 = !{!13, !455}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !452, line: 85, size: 128, elements: !457)
!457 = !{!458, !463}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !456, file: !452, line: 86, baseType: !459, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !14, line: 174, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 172, size: 32, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !460, file: !14, line: 173, baseType: !25, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, scope: !456, file: !452, line: 101, baseType: !464, size: 64, offset: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !456, file: !452, line: 101, size: 64, elements: !465)
!465 = !{!466, !467, !477}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !464, file: !452, line: 102, baseType: !17, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !464, file: !452, line: 103, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !452, line: 117, size: 128, elements: !470)
!470 = !{!471, !474, !475}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !469, file: !452, line: 118, baseType: !472, size: 32)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !19, line: 20, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !21, line: 26, baseType: !25)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !469, file: !452, line: 119, baseType: !472, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !469, file: !452, line: 120, baseType: !476, size: 64, offset: 64)
!476 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !464, file: !452, line: 104, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !452, line: 104, flags: DIFlagFwdDecl)
!480 = !{!481}
!481 = !DILocalVariable(name: "key", arg: 1, scope: !451, file: !452, line: 205, type: !455)
!482 = !DILocation(line: 205, column: 65, scope: !451)
!483 = !DILocation(line: 207, column: 28, scope: !451)
!484 = !DILocation(line: 207, column: 9, scope: !451)
!485 = !DILocation(line: 207, column: 2, scope: !451)
!486 = distinct !DISubprogram(name: "cpu_online", scope: !40, file: !40, line: 1080, type: !487, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !489)
!487 = !DISubroutineType(types: !488)
!488 = !{!13, !7}
!489 = !{!490}
!490 = !DILocalVariable(name: "cpu", arg: 1, scope: !486, file: !40, line: 1080, type: !7)
!491 = !DILocation(line: 1080, column: 44, scope: !486)
!492 = !DILocation(line: 1082, column: 26, scope: !486)
!493 = !DILocation(line: 1082, column: 9, scope: !486)
!494 = !DILocation(line: 1082, column: 2, scope: !486)
!495 = distinct !DISubprogram(name: "__preempt_count_add", scope: !496, file: !496, line: 78, type: !75, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !497)
!496 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!497 = !{!498, !499, !501}
!498 = !DILocalVariable(name: "val", arg: 1, scope: !495, file: !496, line: 78, type: !25)
!499 = !DILocalVariable(name: "pao_ID__", scope: !500, file: !496, line: 80, type: !347)
!500 = distinct !DILexicalBlock(scope: !495, file: !496, line: 80, column: 2)
!501 = !DILocalVariable(name: "pto_val__", scope: !502, file: !496, line: 80, type: !47)
!502 = distinct !DILexicalBlock(scope: !503, file: !496, line: 80, column: 2)
!503 = distinct !DILexicalBlock(scope: !504, file: !496, line: 80, column: 2)
!504 = distinct !DILexicalBlock(scope: !500, file: !496, line: 80, column: 2)
!505 = !DILocation(line: 78, column: 53, scope: !495)
!506 = !DILocation(line: 80, column: 2, scope: !495)
!507 = !DILocation(line: 80, column: 2, scope: !500)
!508 = !DILocation(line: 80, column: 2, scope: !504)
!509 = !DILocation(line: 80, column: 2, scope: !510)
!510 = distinct !DILexicalBlock(scope: !504, file: !496, line: 80, column: 2)
!511 = !{i64 2149476284}
!512 = !DILocation(line: 80, column: 2, scope: !503)
!513 = !DILocation(line: 80, column: 2, scope: !514)
!514 = distinct !DILexicalBlock(scope: !503, file: !496, line: 80, column: 2)
!515 = !{i64 2149476579}
!516 = !DILocation(line: 80, column: 2, scope: !502)
!517 = !{i64 2149477284}
!518 = !DILocation(line: 81, column: 1, scope: !495)
!519 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !496, file: !496, line: 93, type: !520, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !522)
!520 = !DISubroutineType(types: !521)
!521 = !{!13}
!522 = !{!523}
!523 = !DILocalVariable(name: "c", scope: !524, file: !496, line: 95, type: !13)
!524 = distinct !DILexicalBlock(scope: !519, file: !496, line: 95, column: 9)
!525 = !DILocation(line: 95, column: 9, scope: !524)
!526 = !{i64 2149480640, i64 2149480733}
!527 = !DILocation(line: 95, column: 9, scope: !519)
!528 = !DILocation(line: 95, column: 2, scope: !519)
!529 = distinct !DISubprogram(name: "arch_static_branch", scope: !530, file: !530, line: 25, type: !531, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !533)
!530 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!531 = !DISubroutineType(types: !532)
!532 = !{!13, !455, !13}
!533 = !{!534, !535, !536}
!534 = !DILocalVariable(name: "key", arg: 1, scope: !529, file: !530, line: 25, type: !455)
!535 = !DILocalVariable(name: "branch", arg: 2, scope: !529, file: !530, line: 25, type: !13)
!536 = !DILabel(scope: !529, name: "l_yes", file: !530, line: 33)
!537 = !DILocation(line: 25, column: 67, scope: !529)
!538 = !DILocation(line: 25, column: 77, scope: !529)
!539 = !DILocation(line: 30, column: 13, scope: !529)
!540 = !DILocation(line: 30, column: 28, scope: !529)
!541 = !DILocation(line: 30, column: 26, scope: !529)
!542 = !DILocation(line: 27, column: 2, scope: !529)
!543 = !{i64 749415, i64 749459, i64 2148234142, i64 2148234163, i64 2148234189, i64 2148234222, i64 2148234256, i64 2148234280}
!544 = !DILocation(line: 32, column: 2, scope: !529)
!545 = !DILocation(line: 33, column: 1, scope: !529)
!546 = !DILocation(line: 34, column: 2, scope: !529)
!547 = !DILocation(line: 35, column: 1, scope: !529)
!548 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !40, file: !40, line: 502, type: !549, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !551)
!549 = !DISubroutineType(types: !550)
!550 = !{!13, !25, !37}
!551 = !{!552, !553}
!552 = !DILocalVariable(name: "cpu", arg: 1, scope: !548, file: !40, line: 502, type: !25)
!553 = !DILocalVariable(name: "cpumask", arg: 2, scope: !548, file: !40, line: 502, type: !37)
!554 = !DILocation(line: 502, column: 50, scope: !548)
!555 = !DILocation(line: 502, column: 77, scope: !548)
!556 = !DILocation(line: 504, column: 9, scope: !548)
!557 = !DILocation(line: 504, column: 2, scope: !548)
!558 = distinct !DISubprogram(name: "_test_bit", scope: !559, file: !559, line: 139, type: !560, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !565)
!559 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!560 = !DISubroutineType(types: !561)
!561 = !{!13, !17, !562}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!565 = !{!566, !567}
!566 = !DILocalVariable(name: "nr", arg: 1, scope: !558, file: !559, line: 139, type: !17)
!567 = !DILocalVariable(name: "addr", arg: 2, scope: !558, file: !559, line: 139, type: !562)
!568 = !DILocation(line: 139, column: 25, scope: !558)
!569 = !DILocation(line: 139, column: 59, scope: !558)
!570 = !DILocation(line: 141, column: 25, scope: !558)
!571 = !DILocation(line: 141, column: 32, scope: !558)
!572 = !DILocation(line: 141, column: 30, scope: !558)
!573 = !DILocation(line: 141, column: 2, scope: !558)
!574 = !DILocation(line: 142, column: 23, scope: !558)
!575 = !DILocation(line: 142, column: 27, scope: !558)
!576 = !DILocation(line: 142, column: 9, scope: !558)
!577 = !DILocation(line: 142, column: 2, scope: !558)
!578 = distinct !DISubprogram(name: "cpumask_check", scope: !40, file: !40, line: 148, type: !579, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !581)
!579 = !DISubroutineType(types: !580)
!580 = !{!7, !7}
!581 = !{!582}
!582 = !DILocalVariable(name: "cpu", arg: 1, scope: !578, file: !40, line: 148, type: !7)
!583 = !DILocation(line: 148, column: 64, scope: !578)
!584 = !DILocation(line: 150, column: 20, scope: !578)
!585 = !DILocation(line: 150, column: 2, scope: !578)
!586 = !DILocation(line: 151, column: 9, scope: !578)
!587 = !DILocation(line: 151, column: 2, scope: !578)
!588 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !589, file: !589, line: 66, type: !590, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !599)
!589 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!590 = !DISubroutineType(types: !591)
!591 = !{null, !592, !595}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 61, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !597, line: 72, baseType: !598)
!597 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !597, line: 16, baseType: !17)
!599 = !{!600, !601}
!600 = !DILocalVariable(name: "v", arg: 1, scope: !588, file: !589, line: 66, type: !592)
!601 = !DILocalVariable(name: "size", arg: 2, scope: !588, file: !589, line: 66, type: !595)
!602 = !DILocation(line: 66, column: 73, scope: !588)
!603 = !DILocation(line: 66, column: 83, scope: !588)
!604 = !DILocation(line: 68, column: 19, scope: !588)
!605 = !DILocation(line: 68, column: 22, scope: !588)
!606 = !DILocation(line: 68, column: 2, scope: !588)
!607 = !DILocation(line: 69, column: 2, scope: !588)
!608 = !DILocation(line: 70, column: 1, scope: !588)
!609 = distinct !DISubprogram(name: "arch_test_bit", scope: !610, file: !610, line: 237, type: !560, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !611)
!610 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!611 = !{!612, !613}
!612 = !DILocalVariable(name: "nr", arg: 1, scope: !609, file: !610, line: 237, type: !17)
!613 = !DILocalVariable(name: "addr", arg: 2, scope: !609, file: !610, line: 237, type: !562)
!614 = !DILocation(line: 237, column: 29, scope: !609)
!615 = !DILocation(line: 237, column: 63, scope: !609)
!616 = !DILocation(line: 239, column: 30, scope: !609)
!617 = !DILocation(line: 239, column: 9, scope: !609)
!618 = !DILocation(line: 239, column: 54, scope: !609)
!619 = !DILocation(line: 239, column: 58, scope: !609)
!620 = !DILocation(line: 239, column: 36, scope: !609)
!621 = !DILocation(line: 240, column: 26, scope: !609)
!622 = !DILocation(line: 240, column: 30, scope: !609)
!623 = !DILocation(line: 240, column: 8, scope: !609)
!624 = !DILocation(line: 239, column: 2, scope: !609)
!625 = distinct !DISubprogram(name: "kasan_check_read", scope: !626, file: !626, line: 40, type: !627, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !629)
!626 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!627 = !DISubroutineType(types: !628)
!628 = !{!13, !592, !7}
!629 = !{!630, !631}
!630 = !DILocalVariable(name: "p", arg: 1, scope: !625, file: !626, line: 40, type: !592)
!631 = !DILocalVariable(name: "size", arg: 2, scope: !625, file: !626, line: 40, type: !7)
!632 = !DILocation(line: 40, column: 58, scope: !625)
!633 = !DILocation(line: 40, column: 74, scope: !625)
!634 = !DILocation(line: 42, column: 2, scope: !625)
!635 = distinct !DISubprogram(name: "kcsan_check_access", scope: !636, file: !636, line: 229, type: !637, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !639)
!636 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!637 = !DISubroutineType(types: !638)
!638 = !{null, !592, !595, !25}
!639 = !{!640, !641, !642}
!640 = !DILocalVariable(name: "ptr", arg: 1, scope: !635, file: !636, line: 229, type: !592)
!641 = !DILocalVariable(name: "size", arg: 2, scope: !635, file: !636, line: 229, type: !595)
!642 = !DILocalVariable(name: "type", arg: 3, scope: !635, file: !636, line: 230, type: !25)
!643 = !DILocation(line: 229, column: 60, scope: !635)
!644 = !DILocation(line: 229, column: 72, scope: !635)
!645 = !DILocation(line: 230, column: 15, scope: !635)
!646 = !DILocation(line: 230, column: 23, scope: !635)
!647 = distinct !DISubprogram(name: "constant_test_bit", scope: !610, file: !610, line: 204, type: !648, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{!13, !476, !562}
!650 = !{!651, !652}
!651 = !DILocalVariable(name: "nr", arg: 1, scope: !647, file: !610, line: 204, type: !476)
!652 = !DILocalVariable(name: "addr", arg: 2, scope: !647, file: !610, line: 204, type: !562)
!653 = !DILocation(line: 204, column: 52, scope: !647)
!654 = !DILocation(line: 204, column: 86, scope: !647)
!655 = !DILocation(line: 206, column: 19, scope: !647)
!656 = !DILocation(line: 206, column: 22, scope: !647)
!657 = !DILocation(line: 206, column: 15, scope: !647)
!658 = !DILocation(line: 207, column: 4, scope: !647)
!659 = !DILocation(line: 207, column: 9, scope: !647)
!660 = !DILocation(line: 207, column: 12, scope: !647)
!661 = !DILocation(line: 206, column: 44, scope: !647)
!662 = !DILocation(line: 207, column: 37, scope: !647)
!663 = !DILocation(line: 206, column: 2, scope: !647)
!664 = distinct !DISubprogram(name: "variable_test_bit", scope: !610, file: !610, line: 224, type: !648, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !665)
!665 = !{!666, !667, !668}
!666 = !DILocalVariable(name: "nr", arg: 1, scope: !664, file: !610, line: 224, type: !476)
!667 = !DILocalVariable(name: "addr", arg: 2, scope: !664, file: !610, line: 224, type: !562)
!668 = !DILocalVariable(name: "oldbit", scope: !664, file: !610, line: 226, type: !13)
!669 = !DILocation(line: 224, column: 52, scope: !664)
!670 = !DILocation(line: 224, column: 86, scope: !664)
!671 = !DILocation(line: 226, column: 2, scope: !664)
!672 = !DILocation(line: 226, column: 7, scope: !664)
!673 = !DILocation(line: 231, column: 33, scope: !664)
!674 = !DILocation(line: 231, column: 46, scope: !664)
!675 = !DILocation(line: 228, column: 2, scope: !664)
!676 = !{i64 2147824344, i64 2147824418}
!677 = !DILocation(line: 233, column: 9, scope: !664)
!678 = !DILocation(line: 234, column: 1, scope: !664)
!679 = !DILocation(line: 233, column: 2, scope: !664)
!680 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !40, file: !40, line: 140, type: !681, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !683)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !7, !7}
!683 = !{!684, !685}
!684 = !DILocalVariable(name: "cpu", arg: 1, scope: !680, file: !40, line: 140, type: !7)
!685 = !DILocalVariable(name: "bits", arg: 2, scope: !680, file: !40, line: 140, type: !7)
!686 = !DILocation(line: 140, column: 60, scope: !680)
!687 = !DILocation(line: 140, column: 78, scope: !680)
!688 = !DILocation(line: 145, column: 1, scope: !680)
