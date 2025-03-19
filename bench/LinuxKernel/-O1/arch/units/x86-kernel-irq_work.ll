; ModuleID = 'arch/x86/kernel/irq_work.c'
source_filename = "arch/x86/kernel/irq_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon.0 }
%union.anon.0 = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.irq_cpustat_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [60 x i8] }
%struct.static_call_key = type { ptr, %union.anon.3 }
%union.anon.3 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.4 }
%struct.atomic_t = type { i32 }
%union.anon.4 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.cpuinfo_x86 = type { %union.anon.5, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.7, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.5 = type { i32 }
%union.anon.7 = type { i64, [88 x i8] }
%struct.irqentry_state = type { %union.anon }
%union.anon = type { i8 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.1, i64, i64, %union.anon.2 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%struct.tracepoint_func = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !0
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1, !dbg !7
@irq_stat = external dso_local global %struct.irq_cpustat_t, section ".data..percpu..shared_aligned", align 64
@apic_eoi.__UNIQUE_ID___addressable___SCK__apic_call_eoi245 = internal global ptr @__SCK__apic_call_eoi, section ".discard.addressable", align 8, !dbg !12
@__SCK__apic_call_eoi = external dso_local global %struct.static_call_key, align 8
@__tracepoint_irq_work_entry = external dso_local global %struct.tracepoint, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"arch/x86/include/asm/trace/irq_vectors.h\00", align 1, !dbg !65
@trace_irq_work_entry.__UNIQUE_ID___addressable___SCK__tp_func_irq_work_entry393 = internal global ptr @__SCK__tp_func_irq_work_entry, section ".discard.addressable", align 8, !dbg !71
@__SCK__tp_func_irq_work_entry = external dso_local global %struct.static_call_key, align 8
@trace_irq_work_entry.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace394 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !101
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__tracepoint_irq_work_exit = external dso_local global %struct.tracepoint, align 8
@trace_irq_work_exit.__UNIQUE_ID___addressable___SCK__tp_func_irq_work_exit401 = internal global ptr @__SCK__tp_func_irq_work_exit, section ".discard.addressable", align 8, !dbg !103
@__SCK__tp_func_irq_work_exit = external dso_local global %struct.static_call_key, align 8
@trace_irq_work_exit.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace402 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !129
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@__apic_send_IPI_self.__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_self254 = internal global ptr @__SCK__apic_call_send_IPI_self, section ".discard.addressable", align 8, !dbg !131
@__SCK__apic_call_send_IPI_self = external dso_local global %struct.static_call_key, align 8
@apic_wait_icr_idle.__UNIQUE_ID___addressable___SCK__apic_call_wait_icr_idle255 = internal global ptr @__SCK__apic_call_wait_icr_idle, section ".discard.addressable", align 8, !dbg !136
@__SCK__apic_call_wait_icr_idle = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [7 x ptr] [ptr @apic_eoi.__UNIQUE_ID___addressable___SCK__apic_call_eoi245, ptr @trace_irq_work_entry.__UNIQUE_ID___addressable___SCK__tp_func_irq_work_entry393, ptr @trace_irq_work_entry.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace394, ptr @trace_irq_work_exit.__UNIQUE_ID___addressable___SCK__tp_func_irq_work_exit401, ptr @trace_irq_work_exit.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace402, ptr @__apic_send_IPI_self.__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_self254, ptr @apic_wait_icr_idle.__UNIQUE_ID___addressable___SCK__apic_call_wait_icr_idle255], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysvec_irq_work(ptr noundef %regs) #0 section ".noinstr.text" align 16 !dbg !149 {
entry:
  %regs.addr = alloca ptr, align 8
  %state = alloca %struct.irqentry_state, align 1
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !211, metadata !DIExpression()), !dbg !222
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #13, !dbg !222
  call void @llvm.dbg.declare(metadata ptr %state, metadata !212, metadata !DIExpression()), !dbg !222
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !222
  %call = call i8 @irqentry_enter(ptr noundef %0) #14, !dbg !222
  %coerce.dive = getelementptr inbounds %struct.irqentry_state, ptr %state, i32 0, i32 0, !dbg !222
  %coerce.dive1 = getelementptr inbounds %union.anon, ptr %coerce.dive, i32 0, i32 0, !dbg !222
  store i8 %call, ptr %coerce.dive1, align 1, !dbg !222
  call void @kvm_set_cpu_l1tf_flush_l1d() #14, !dbg !222
  br label %do.body, !dbg !222

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !223

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !223

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !222
  call void @instr_sysvec_irq_work(ptr noundef %1) #14, !dbg !222
  br label %do.body2, !dbg !222

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !225

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !225

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !222
  %coerce.dive5 = getelementptr inbounds %struct.irqentry_state, ptr %state, i32 0, i32 0, !dbg !222
  %coerce.dive6 = getelementptr inbounds %union.anon, ptr %coerce.dive5, i32 0, i32 0, !dbg !222
  %3 = load i8, ptr %coerce.dive6, align 1, !dbg !222
  call void @irqentry_exit(ptr noundef %2, i8 %3) #14, !dbg !222
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #13, !dbg !222
  ret void, !dbg !222
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !227 dso_local i8 @irqentry_enter(ptr noundef) #3 section ".noinstr.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kvm_set_cpu_l1tf_flush_l1d() #4 align 16 !dbg !230 {
entry:
  ret void, !dbg !232
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instr_sysvec_irq_work(ptr noundef %regs) #4 align 16 !dbg !233 {
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
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !235, metadata !DIExpression()), !dbg !268
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !269
  %call = call i32 @user_mode(ptr noundef %0) #14, !dbg !269
  %tobool = icmp ne i32 %call, 0, !dbg !269
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !269

lor.lhs.false:                                    ; preds = %entry
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !270
  call void @llvm.lifetime.start.p0(i64 1, ptr %pscr_ret__) #13, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !236, metadata !DIExpression()), !dbg !271
  br label %do.body, !dbg !271

do.body:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !272
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !242, metadata !DIExpression()), !dbg !272
  store ptr null, ptr %__vpp_verify, align 8, !dbg !272
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !272
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !271
  br label %do.cond, !dbg !272

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !272

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %pfo_val__) #13, !dbg !273
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !244, metadata !DIExpression()), !dbg !273
  %2 = call i8 asm "movb %gs:$1, $0", "=q,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 7)) #15, !dbg !273, !srcloc !274
  store i8 %2, ptr %pfo_val__, align 1, !dbg !273
  %3 = load i8, ptr %pfo_val__, align 1, !dbg !273
  %conv = zext i8 %3 to i64, !dbg !273
  %tobool2 = icmp ne i64 %conv, 0, !dbg !273
  %frombool = zext i1 %tobool2 to i8, !dbg !273
  store i8 %frombool, ptr %tmp1, align 1, !dbg !273
  call void @llvm.lifetime.end.p0(i64 1, ptr %pfo_val__) #13, !dbg !271
  %4 = load i8, ptr %tmp1, align 1, !dbg !273, !range !275, !noundef !276
  %tobool3 = trunc i8 %4 to i1, !dbg !273
  %frombool4 = zext i1 %tobool3 to i8, !dbg !271
  store i8 %frombool4, ptr %pscr_ret__, align 1, !dbg !271
  %5 = load i8, ptr %pscr_ret__, align 1, !dbg !271, !range !275, !noundef !276
  %tobool6 = trunc i8 %5 to i1, !dbg !271
  %frombool7 = zext i1 %tobool6 to i8, !dbg !271
  store i8 %frombool7, ptr %tmp5, align 1, !dbg !271
  call void @llvm.lifetime.end.p0(i64 1, ptr %pscr_ret__) #13, !dbg !270
  %6 = load i8, ptr %tmp5, align 1, !dbg !271, !range !275, !noundef !276
  %tobool8 = trunc i8 %6 to i1, !dbg !271
  %frombool9 = zext i1 %tobool8 to i8, !dbg !270
  store i8 %frombool9, ptr %tmp, align 1, !dbg !270
  %7 = load i8, ptr %tmp, align 1, !dbg !270, !range !275, !noundef !276
  %tobool10 = trunc i8 %7 to i1, !dbg !270
  br i1 %tobool10, label %if.then, label %if.else, !dbg !277

if.then:                                          ; preds = %do.end, %entry
  call void @irq_enter_rcu() #14, !dbg !278
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !278
  call void @__sysvec_irq_work(ptr noundef %8) #14, !dbg !278
  call void @irq_exit_rcu() #14, !dbg !278
  br label %if.end, !dbg !278

if.else:                                          ; preds = %do.end
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #14, !dbg !280
  br label %do.body12, !dbg !280

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !281

do.body13:                                        ; preds = %do.body12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify14) #13, !dbg !282
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify14, metadata !246, metadata !DIExpression()), !dbg !282
  store ptr null, ptr %__vpp_verify14, align 8, !dbg !282
  %9 = load ptr, ptr %__vpp_verify14, align 8, !dbg !282
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify14) #13, !dbg !281
  br label %do.end16, !dbg !282

do.end16:                                         ; preds = %do.body13
  br label %do.body17, !dbg !281

do.body17:                                        ; preds = %do.end16
  call void @llvm.lifetime.start.p0(i64 1, ptr %pto_val__) #13, !dbg !283
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !251, metadata !DIExpression()), !dbg !283
  store i8 1, ptr %pto_val__, align 1, !dbg !283
  %10 = load i8, ptr %pto_val__, align 1, !dbg !283
  call void asm "movb $1, %gs:$0", "=*m,qi,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 7), i8 %10, ptr elementtype(i8) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 7)) #13, !dbg !283, !srcloc !284
  call void @llvm.lifetime.end.p0(i64 1, ptr %pto_val__) #13, !dbg !281
  br label %do.end19, !dbg !283

do.end19:                                         ; preds = %do.body17
  br label %do.end21, !dbg !281

do.end21:                                         ; preds = %do.end19
  call void @llvm.lifetime.start.p0(i64 8, ptr %tos) #13, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %tos, metadata !253, metadata !DIExpression()), !dbg !285
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !286
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__23) #13, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__23, metadata !255, metadata !DIExpression()), !dbg !287
  br label %do.body24, !dbg !287

do.body24:                                        ; preds = %do.end21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify25) #13, !dbg !288
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify25, metadata !258, metadata !DIExpression()), !dbg !288
  store ptr null, ptr %__vpp_verify25, align 8, !dbg !288
  %11 = load ptr, ptr %__vpp_verify25, align 8, !dbg !288
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify25) #13, !dbg !287
  br label %do.cond26, !dbg !288

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !288

do.end27:                                         ; preds = %do.cond26
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__28) #13, !dbg !289
  call void @llvm.dbg.declare(metadata ptr %pfo_val__28, metadata !260, metadata !DIExpression()), !dbg !289
  %12 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 5)) #15, !dbg !289, !srcloc !290
  store i64 %12, ptr %pfo_val__28, align 8, !dbg !289
  %13 = load i64, ptr %pfo_val__28, align 8, !dbg !289
  %14 = inttoptr i64 %13 to ptr, !dbg !289
  store ptr %14, ptr %tmp29, align 8, !dbg !289
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__28) #13, !dbg !287
  %15 = load ptr, ptr %tmp29, align 8, !dbg !289
  store ptr %15, ptr %pscr_ret__23, align 8, !dbg !287
  %16 = load ptr, ptr %pscr_ret__23, align 8, !dbg !287
  store ptr %16, ptr %tmp30, align 8, !dbg !287
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__23) #13, !dbg !286
  %17 = load ptr, ptr %tmp30, align 8, !dbg !287
  store ptr %17, ptr %tmp22, align 8, !dbg !286
  %18 = load ptr, ptr %tmp22, align 8, !dbg !286
  store ptr %18, ptr %tos, align 8, !dbg !285
  %19 = load ptr, ptr %tos, align 8, !dbg !285
  %20 = call i64 @llvm.read_register.i64(metadata !139), !dbg !285
  %21 = load ptr, ptr %tos, align 8, !dbg !285
  %22 = load ptr, ptr %regs.addr, align 8, !dbg !285
  %23 = call { ptr, i64 } asm sideeffect "movq\09%rsp, ($3)\09\09\09\09\0Amovq\09$3, %rsp\09\09\09\09\0Acall irq_enter_rcu\09\09\09\09\0Amovq\09$4, %rdi\09\09\09\09\0Acall ${2:c}\09\09\09\09\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09call irq_exit_rcu\09\09\09\09\0Apopq\09%rsp\09\09\09\09\09\0A", "={r11},={rsp},i,{r11},r,{r11},{rsp},~{cc},~{rax},~{rcx},~{rdx},~{rsi},~{rdi},~{r8},~{r9},~{r10},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr @__sysvec_irq_work, ptr %21, ptr %22, ptr %19, i64 %20) #13, !dbg !285, !srcloc !291
  %asmresult = extractvalue { ptr, i64 } %23, 0, !dbg !285
  %asmresult31 = extractvalue { ptr, i64 } %23, 1, !dbg !285
  store ptr %asmresult, ptr %tos, align 8, !dbg !285
  call void @llvm.write_register.i64(metadata !139, i64 %asmresult31), !dbg !285
  call void @llvm.lifetime.end.p0(i64 8, ptr %tos) #13, !dbg !292
  call void @__this_cpu_preempt_check(ptr noundef @.str.1) #14, !dbg !293
  br label %do.body32, !dbg !293

do.body32:                                        ; preds = %do.end27
  br label %do.body33, !dbg !294

do.body33:                                        ; preds = %do.body32
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify34) #13, !dbg !295
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify34, metadata !262, metadata !DIExpression()), !dbg !295
  store ptr null, ptr %__vpp_verify34, align 8, !dbg !295
  %24 = load ptr, ptr %__vpp_verify34, align 8, !dbg !295
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify34) #13, !dbg !294
  br label %do.end36, !dbg !295

do.end36:                                         ; preds = %do.body33
  br label %do.body37, !dbg !294

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 1, ptr %pto_val__38) #13, !dbg !296
  call void @llvm.dbg.declare(metadata ptr %pto_val__38, metadata !266, metadata !DIExpression()), !dbg !296
  store i8 0, ptr %pto_val__38, align 1, !dbg !296
  %25 = load i8, ptr %pto_val__38, align 1, !dbg !296
  call void asm "movb $1, %gs:$0", "=*m,qi,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 7), i8 %25, ptr elementtype(i8) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 7)) #13, !dbg !296, !srcloc !297
  call void @llvm.lifetime.end.p0(i64 1, ptr %pto_val__38) #13, !dbg !294
  br label %do.end40, !dbg !296

do.end40:                                         ; preds = %do.body37
  br label %do.end42, !dbg !294

do.end42:                                         ; preds = %do.end40
  br label %if.end

if.end:                                           ; preds = %do.end42, %if.then
  ret void, !dbg !268
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !298 dso_local void @irqentry_exit(ptr noundef, i8) #3 section ".noinstr.text"

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @fred_sysvec_irq_work(ptr noundef %regs) #5 align 16 !dbg !301 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !304
  call void @instr_sysvec_irq_work(ptr noundef %0) #14, !dbg !304
  ret void, !dbg !304
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_irq_work_raise() #5 align 16 !dbg !305 {
entry:
  %call = call zeroext i1 @arch_irq_work_has_interrupt() #14, !dbg !306
  br i1 %call, label %if.end, label %if.then, !dbg !308

if.then:                                          ; preds = %entry
  br label %return, !dbg !309

if.end:                                           ; preds = %entry
  call void @__apic_send_IPI_self(i32 noundef 246) #14, !dbg !310
  call void @apic_wait_icr_idle() #14, !dbg !311
  br label %return, !dbg !312

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !312
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_irq_work_has_interrupt() #6 align 16 !dbg !313 {
entry:
  %call = call zeroext i1 @arch_test_bit(i64 noundef 9, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #14, !dbg !317
  ret i1 %call, !dbg !318
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__apic_send_IPI_self(i32 noundef %vector) #4 align 16 !dbg !133 {
entry:
  %vector.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !135, metadata !DIExpression()), !dbg !319
  store ptr @__SCT__apic_call_send_IPI_self, ptr %tmp, align 8, !dbg !320
  %0 = load ptr, ptr %tmp, align 8, !dbg !320
  %1 = load i32, ptr %vector.addr, align 4, !dbg !322
  call void %0(i32 noundef %1) #14, !dbg !323
  ret void, !dbg !324
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @apic_wait_icr_idle() #4 align 16 !dbg !138 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__apic_call_wait_icr_idle, ptr %tmp, align 8, !dbg !325
  %0 = load ptr, ptr %tmp, align 8, !dbg !325
  call void %0() #14, !dbg !327
  ret void, !dbg !328
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_mode(ptr noundef %regs) #4 align 16 !dbg !329 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !335
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !336
  %2 = load i16, ptr %1, align 8, !dbg !336
  %conv = zext i16 %2 to i32, !dbg !335
  %and = and i32 %conv, 3, !dbg !337
  %tobool = icmp ne i32 %and, 0, !dbg !338
  %lnot = xor i1 %tobool, true, !dbg !338
  %lnot1 = xor i1 %lnot, true, !dbg !339
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !339
  ret i32 %lnot.ext, !dbg !340
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #4 align 16 !dbg !341 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !348, metadata !DIExpression()), !dbg !349
  ret void, !dbg !350
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !351 dso_local void @irq_enter_rcu() #3

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__sysvec_irq_work(ptr noundef %regs) #7 align 16 !dbg !353 {
entry:
  %regs.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pao_ID__ = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !355, metadata !DIExpression()), !dbg !362
  call void @apic_eoi() #14, !dbg !363
  call void @trace_irq_work_entry(i32 noundef 246) #14, !dbg !364
  br label %do.body, !dbg !365

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !366

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !367
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !356, metadata !DIExpression()), !dbg !367
  store ptr null, ptr %__vpp_verify, align 8, !dbg !367
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !367
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !366
  br label %do.end, !dbg !367

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !366

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #13, !dbg !368
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !359, metadata !DIExpression()), !dbg !368
  store i32 1, ptr %pao_ID__, align 4, !dbg !368
  call void asm sideeffect "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.irq_cpustat_t, ptr @irq_stat, i32 0, i32 9), ptr elementtype(i32) getelementptr inbounds (%struct.irq_cpustat_t, ptr @irq_stat, i32 0, i32 9)) #13, !dbg !369, !srcloc !372
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #13, !dbg !366
  br label %do.end3, !dbg !368

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !366

do.end4:                                          ; preds = %do.end3
  call void @irq_work_run() #14, !dbg !373
  call void @trace_irq_work_exit(i32 noundef 246) #14, !dbg !374
  ret void, !dbg !375
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !376 dso_local void @irq_exit_rcu() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @apic_eoi() #4 align 16 !dbg !14 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__apic_call_eoi, ptr %tmp, align 8, !dbg !377
  %0 = load ptr, ptr %tmp, align 8, !dbg !377
  call void %0() #14, !dbg !379
  ret void, !dbg !380
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_irq_work_entry(i32 noundef %vector) #6 align 16 !dbg !73 {
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
  %__UNIQUE_ID_rcu391 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !77, metadata !DIExpression()), !dbg !381
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_work_entry, i32 0, i32 1)) #14, !dbg !382
  br i1 %call, label %if.then, label %if.end68, !dbg !381

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !382

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #13, !dbg !383
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !78, metadata !DIExpression()), !dbg !383
  store i32 0, ptr %__idx, align 4, !dbg !383
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !384
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !81, metadata !DIExpression()), !dbg !384
  br label %do.body1, !dbg !384

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !385
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !84, metadata !DIExpression()), !dbg !385
  store ptr null, ptr %__vpp_verify, align 8, !dbg !385
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !385
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !384
  br label %do.cond, !dbg !385

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !385

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !386
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !88, metadata !DIExpression()), !dbg !386
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !386, !srcloc !387
  store i32 %1, ptr %pfo_val__, align 4, !dbg !386
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !386
  %conv = zext i32 %2 to i64, !dbg !386
  %conv2 = trunc i64 %conv to i32, !dbg !386
  store i32 %conv2, ptr %tmp, align 4, !dbg !386
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !384
  %3 = load i32, ptr %tmp, align 4, !dbg !386
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !384
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !384
  store i32 %4, ptr %tmp3, align 4, !dbg !384
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !388
  %5 = load i32, ptr %tmp3, align 4, !dbg !384
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #14, !dbg !388
  br i1 %call4, label %if.end, label %if.then5, !dbg !383

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !388

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !90, metadata !DIExpression()), !dbg !389
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !389
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !390
  %tobool = icmp ne i32 %6, 0, !dbg !390
  %lnot = xor i1 %tobool, true, !dbg !390
  %lnot6 = xor i1 %lnot, true, !dbg !390
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !390
  %conv7 = sext i32 %lnot.ext to i64, !dbg !390
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !390
  %tobool8 = icmp ne i64 %expval, 0, !dbg !390
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !389

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !390

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !93, metadata !DIExpression()), !dbg !391
  store i32 2307, ptr %__flags, align 4, !dbg !391
  br label %do.body11, !dbg !391

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !392

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !392

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !391

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !394
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 64, i32 %7, i64 12) #13, !dbg !394, !srcloc !396
  br label %do.cond15, !dbg !394

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !394

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !391

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !397

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !397

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !390
  br label %do.cond20, !dbg !391

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !391

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !391

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !389
  %tobool24 = icmp ne i32 %8, 0, !dbg !389
  %lnot25 = xor i1 %tobool24, true, !dbg !389
  %lnot27 = xor i1 %lnot25, true, !dbg !389
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !389
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !389
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !389
  store i64 %expval30, ptr %tmp23, align 8, !dbg !390
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !399
  %9 = load i64, ptr %tmp23, align 8, !dbg !389
  %tobool31 = icmp ne i64 %9, 0, !dbg !399
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !383

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !399

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !383

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !400
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !400, !srcloc !402
  br label %do.cond35, !dbg !400

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !400

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !383

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #13, !dbg !403
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !96, metadata !DIExpression()), !dbg !403
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #13, !dbg !403
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !98, metadata !DIExpression()), !dbg !403
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu391) #13, !dbg !404
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu391, metadata !99, metadata !DIExpression()), !dbg !404
  br label %do.body38, !dbg !405

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !407

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !407

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_work_entry, i32 0, i32 8), align 8, !dbg !405
  store ptr %10, ptr %tmp41, align 8, !dbg !407
  %11 = load ptr, ptr %tmp41, align 8, !dbg !405
  store ptr %11, ptr %__UNIQUE_ID_rcu391, align 8, !dbg !404
  %12 = load ptr, ptr %__UNIQUE_ID_rcu391, align 8, !dbg !404
  store ptr %12, ptr %tmp42, align 8, !dbg !404
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu391) #13, !dbg !403
  %13 = load ptr, ptr %tmp42, align 8, !dbg !404
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !403
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !409
  %tobool43 = icmp ne ptr %14, null, !dbg !409
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !403

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !411
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !411
  %16 = load ptr, ptr %data, align 8, !dbg !411
  store ptr %16, ptr %__data, align 8, !dbg !411
  store ptr @__SCT__tp_func_irq_work_entry, ptr %tmp45, align 8, !dbg !413
  %17 = load ptr, ptr %tmp45, align 8, !dbg !413
  %18 = load ptr, ptr %__data, align 8, !dbg !411
  %19 = load i32, ptr %vector.addr, align 4, !dbg !411
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19) #14, !dbg !411
  br label %if.end47, !dbg !411

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #13, !dbg !383
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #13, !dbg !383
  br label %do.cond48, !dbg !403

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !403

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !383

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !415, !srcloc !417
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #14, !dbg !418
  %lnot52 = xor i1 %call51, true, !dbg !418
  %lnot54 = xor i1 %lnot52, true, !dbg !418
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !418
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !418
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !418
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !418
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !415

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !418

do.body60:                                        ; preds = %if.then59
  %20 = call i64 @llvm.read_register.i64(metadata !139), !dbg !420
  %21 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %20) #13, !dbg !420, !srcloc !422
  call void @llvm.write_register.i64(metadata !139, i64 %21), !dbg !420
  br label %do.cond61, !dbg !420

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !420

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !420

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !415

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !415

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !382
  br label %cleanup, !dbg !382

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #13, !dbg !382
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !383

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !383

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !381

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !423 dso_local void @irq_work_run() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_irq_work_exit(i32 noundef %vector) #6 align 16 !dbg !105 {
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
  %__UNIQUE_ID_rcu399 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store i32 %vector, ptr %vector.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %vector.addr, metadata !107, metadata !DIExpression()), !dbg !425
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_work_exit, i32 0, i32 1)) #14, !dbg !426
  br i1 %call, label %if.then, label %if.end68, !dbg !425

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !426

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #13, !dbg !427
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !108, metadata !DIExpression()), !dbg !427
  store i32 0, ptr %__idx, align 4, !dbg !427
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !428
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !111, metadata !DIExpression()), !dbg !428
  br label %do.body1, !dbg !428

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !429
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !114, metadata !DIExpression()), !dbg !429
  store ptr null, ptr %__vpp_verify, align 8, !dbg !429
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !429
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !428
  br label %do.cond, !dbg !429

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !429

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !430
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !116, metadata !DIExpression()), !dbg !430
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !430, !srcloc !431
  store i32 %1, ptr %pfo_val__, align 4, !dbg !430
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !430
  %conv = zext i32 %2 to i64, !dbg !430
  %conv2 = trunc i64 %conv to i32, !dbg !430
  store i32 %conv2, ptr %tmp, align 4, !dbg !430
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !428
  %3 = load i32, ptr %tmp, align 4, !dbg !430
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !428
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !428
  store i32 %4, ptr %tmp3, align 4, !dbg !428
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !432
  %5 = load i32, ptr %tmp3, align 4, !dbg !428
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #14, !dbg !432
  br i1 %call4, label %if.end, label %if.then5, !dbg !427

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !432

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !433
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !118, metadata !DIExpression()), !dbg !433
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !433
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !434
  %tobool = icmp ne i32 %6, 0, !dbg !434
  %lnot = xor i1 %tobool, true, !dbg !434
  %lnot6 = xor i1 %lnot, true, !dbg !434
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !434
  %conv7 = sext i32 %lnot.ext to i64, !dbg !434
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !434
  %tobool8 = icmp ne i64 %expval, 0, !dbg !434
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !433

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !434

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !435
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !121, metadata !DIExpression()), !dbg !435
  store i32 2307, ptr %__flags, align 4, !dbg !435
  br label %do.body11, !dbg !435

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !436

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !436

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !435

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !438
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 64, i32 %7, i64 12) #13, !dbg !438, !srcloc !440
  br label %do.cond15, !dbg !438

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !438

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !435

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !441

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !441

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !434
  br label %do.cond20, !dbg !435

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !435

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !435

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !433
  %tobool24 = icmp ne i32 %8, 0, !dbg !433
  %lnot25 = xor i1 %tobool24, true, !dbg !433
  %lnot27 = xor i1 %lnot25, true, !dbg !433
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !433
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !433
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !433
  store i64 %expval30, ptr %tmp23, align 8, !dbg !434
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !443
  %9 = load i64, ptr %tmp23, align 8, !dbg !433
  %tobool31 = icmp ne i64 %9, 0, !dbg !443
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !427

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !443

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !427

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !444
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !444, !srcloc !446
  br label %do.cond35, !dbg !444

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !444

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !427

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #13, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !124, metadata !DIExpression()), !dbg !447
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #13, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !126, metadata !DIExpression()), !dbg !447
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu399) #13, !dbg !448
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu399, metadata !127, metadata !DIExpression()), !dbg !448
  br label %do.body38, !dbg !449

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !451

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !451

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_irq_work_exit, i32 0, i32 8), align 8, !dbg !449
  store ptr %10, ptr %tmp41, align 8, !dbg !451
  %11 = load ptr, ptr %tmp41, align 8, !dbg !449
  store ptr %11, ptr %__UNIQUE_ID_rcu399, align 8, !dbg !448
  %12 = load ptr, ptr %__UNIQUE_ID_rcu399, align 8, !dbg !448
  store ptr %12, ptr %tmp42, align 8, !dbg !448
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu399) #13, !dbg !447
  %13 = load ptr, ptr %tmp42, align 8, !dbg !448
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !447
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !453
  %tobool43 = icmp ne ptr %14, null, !dbg !453
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !447

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !455
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !455
  %16 = load ptr, ptr %data, align 8, !dbg !455
  store ptr %16, ptr %__data, align 8, !dbg !455
  store ptr @__SCT__tp_func_irq_work_exit, ptr %tmp45, align 8, !dbg !457
  %17 = load ptr, ptr %tmp45, align 8, !dbg !457
  %18 = load ptr, ptr %__data, align 8, !dbg !455
  %19 = load i32, ptr %vector.addr, align 4, !dbg !455
  %call46 = call i32 %17(ptr noundef %18, i32 noundef %19) #14, !dbg !455
  br label %if.end47, !dbg !455

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #13, !dbg !427
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #13, !dbg !427
  br label %do.cond48, !dbg !447

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !447

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !427

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !459, !srcloc !461
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #14, !dbg !462
  %lnot52 = xor i1 %call51, true, !dbg !462
  %lnot54 = xor i1 %lnot52, true, !dbg !462
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !462
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !462
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !462
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !462
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !459

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !462

do.body60:                                        ; preds = %if.then59
  %20 = call i64 @llvm.read_register.i64(metadata !139), !dbg !464
  %21 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %20) #13, !dbg !464, !srcloc !466
  call void @llvm.write_register.i64(metadata !139, i64 %21), !dbg !464
  br label %do.cond61, !dbg !464

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !464

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !464

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !459

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !459

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !426
  br label %cleanup, !dbg !426

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #13, !dbg !426
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !427

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !427

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !425

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_eoi() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #4 align 16 !dbg !467 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load ptr, ptr %key.addr, align 8, !dbg !499
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #14, !dbg !500
  ret i1 %call, !dbg !501
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #6 align 16 !dbg !502 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !508
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #14, !dbg !509
  ret i1 %call, !dbg !510
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #4 align 16 !dbg !511 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !514, metadata !DIExpression()), !dbg !521
  br label %do.body, !dbg !522

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #13, !dbg !523
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !515, metadata !DIExpression()), !dbg !523
  %0 = load i32, ptr %val.addr, align 4, !dbg !523
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !523
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !523

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !523
  %cmp = icmp eq i32 %2, 1, !dbg !523
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !523

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !523
  %cmp1 = icmp eq i32 %3, -1, !dbg !523
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !523

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !523
  br label %cond.end, !dbg !523

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !523

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !523
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !523
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !524
  %cmp2 = icmp eq i32 %5, 1, !dbg !524
  br i1 %cmp2, label %if.then, label %if.else, !dbg !523

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !525, !srcloc !527
  br label %if.end8, !dbg !524

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !528
  %cmp3 = icmp eq i32 %6, -1, !dbg !528
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !524

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !529, !srcloc !531
  br label %if.end, !dbg !528

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !528

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #13, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !517, metadata !DIExpression()), !dbg !532
  %7 = load i32, ptr %val.addr, align 4, !dbg !532
  %conv = sext i32 %7 to i64, !dbg !532
  %and = and i64 %conv, 4294967295, !dbg !532
  %conv7 = trunc i64 %and to i32, !dbg !532
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !532
  %8 = load i32, ptr %pto_val__, align 4, !dbg !532
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !532, !srcloc !533
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #13, !dbg !528
  br label %do.cond, !dbg !532

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !532

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #13, !dbg !522
  br label %do.end10, !dbg !523

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !534
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_irq_work_entry(ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #4 align 16 !dbg !535 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #13, !dbg !539
  call void @llvm.dbg.declare(metadata ptr %c, metadata !537, metadata !DIExpression()), !dbg !539
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !539, !srcloc !540
  %1 = icmp ult i8 %0, 2, !dbg !539
  call void @llvm.assume(i1 %1), !dbg !539
  store i8 %0, ptr %c, align 1, !dbg !539
  %2 = load i8, ptr %c, align 1, !dbg !539, !range !275, !noundef !276
  %tobool = trunc i8 %2 to i1, !dbg !539
  %frombool = zext i1 %tobool to i8, !dbg !539
  store i8 %frombool, ptr %tmp, align 1, !dbg !539
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #13, !dbg !541
  %3 = load i8, ptr %tmp, align 1, !dbg !539, !range !275, !noundef !276
  %tobool1 = trunc i8 %3 to i1, !dbg !539
  ret i1 %tobool1, !dbg !542
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !543 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !548, metadata !DIExpression()), !dbg !551
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !549, metadata !DIExpression()), !dbg !552
  %0 = load ptr, ptr %key.addr, align 8, !dbg !553
  %1 = load i8, ptr %branch.addr, align 1, !dbg !554, !range !275, !noundef !276
  %tobool = trunc i8 %1 to i1, !dbg !554
  %conv = zext i1 %tobool to i32, !dbg !554
  %or = or i32 2, %conv, !dbg !555
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #13
          to label %asm.fallthrough [label %l_yes], !dbg !556, !srcloc !557

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !558
  br label %return, !dbg !558

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !550), !dbg !559
  store i1 true, ptr %retval, align 1, !dbg !560
  br label %return, !dbg !560

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !561
  ret i1 %2, !dbg !561
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #4 align 16 !dbg !562 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !566, metadata !DIExpression()), !dbg !568
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !567, metadata !DIExpression()), !dbg !569
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !570
  %call = call i32 @cpumask_check(i32 noundef %0) #14, !dbg !570
  %conv = zext i32 %call to i64, !dbg !570
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !570
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !570
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !570
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #14, !dbg !570
  ret i1 %call1, !dbg !571
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !572 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !580, metadata !DIExpression()), !dbg !582
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !581, metadata !DIExpression()), !dbg !583
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !584
  %1 = load i64, ptr %nr.addr, align 8, !dbg !585
  %div = udiv i64 %1, 64, !dbg !585
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !586
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !587
  %2 = load i64, ptr %nr.addr, align 8, !dbg !588
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !589
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !590
  ret i1 %call, !dbg !591
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #4 align 16 !dbg !592 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !596, metadata !DIExpression()), !dbg !597
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !598
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #14, !dbg !599
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !600
  ret i32 %1, !dbg !601
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !602 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !614, metadata !DIExpression()), !dbg !616
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !615, metadata !DIExpression()), !dbg !617
  %0 = load ptr, ptr %v.addr, align 8, !dbg !618
  %1 = load i64, ptr %size.addr, align 8, !dbg !619
  %conv = trunc i64 %1 to i32, !dbg !619
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !620
  %2 = load ptr, ptr %v.addr, align 8, !dbg !621
  %3 = load i64, ptr %size.addr, align 8, !dbg !621
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !621
  ret void, !dbg !622
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !623 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !626, metadata !DIExpression()), !dbg !628
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !627, metadata !DIExpression()), !dbg !629
  %0 = load i64, ptr %nr.addr, align 8, !dbg !630
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !631
  br i1 %1, label %cond.true, label %cond.false, !dbg !631

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !632
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !633
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !634
  %conv = zext i1 %call to i32, !dbg !634
  br label %cond.end, !dbg !631

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !635
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !636
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !637
  %conv2 = zext i1 %call1 to i32, !dbg !637
  br label %cond.end, !dbg !631

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !631
  %tobool = icmp ne i32 %cond, 0, !dbg !631
  ret i1 %tobool, !dbg !638
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !639 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !644, metadata !DIExpression()), !dbg !646
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !645, metadata !DIExpression()), !dbg !647
  ret i1 true, !dbg !648
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !649 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !654, metadata !DIExpression()), !dbg !657
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !655, metadata !DIExpression()), !dbg !658
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !656, metadata !DIExpression()), !dbg !659
  ret void, !dbg !660
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !661 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !665, metadata !DIExpression()), !dbg !667
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !666, metadata !DIExpression()), !dbg !668
  %0 = load i64, ptr %nr.addr, align 8, !dbg !669
  %and = and i64 %0, 63, !dbg !670
  %shl = shl i64 1, %and, !dbg !671
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !672
  %2 = load i64, ptr %nr.addr, align 8, !dbg !673
  %shr = ashr i64 %2, 6, !dbg !674
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !672
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !672
  %and1 = and i64 %shl, %3, !dbg !675
  %cmp = icmp ne i64 %and1, 0, !dbg !676
  ret i1 %cmp, !dbg !677
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !678 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !680, metadata !DIExpression()), !dbg !683
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !681, metadata !DIExpression()), !dbg !684
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !685
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !682, metadata !DIExpression()), !dbg !686
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !687
  %1 = load i64, ptr %nr.addr, align 8, !dbg !688
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !689, !srcloc !690
  %3 = icmp ult i8 %2, 2, !dbg !689
  call void @llvm.assume(i1 %3), !dbg !689
  store i8 %2, ptr %oldbit, align 1, !dbg !689
  %4 = load i8, ptr %oldbit, align 1, !dbg !691, !range !275, !noundef !276
  %tobool = trunc i8 %4 to i1, !dbg !691
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !692
  ret i1 %tobool, !dbg !693
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #4 align 16 !dbg !694 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !698, metadata !DIExpression()), !dbg !700
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !699, metadata !DIExpression()), !dbg !701
  ret void, !dbg !702
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_irq_work_exit(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_send_IPI_self(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_wait_icr_idle() #3

attributes #0 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { nounwind memory(read) }

!llvm.dbg.cu = !{!18}
!llvm.named.register.rsp = !{!139}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/irq_work.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3540b4c3d6f6a52d4862eab7a479aff6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 17, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 6)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_eoi245", scope: !14, file: !15, line: 409, type: !31, isLocal: true, isDefinition: true)
!14 = distinct !DISubprogram(name: "apic_eoi", scope: !15, file: !15, line: 407, type: !16, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!15 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.irq_work.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/irq_work\22 -D KBUILD_BASENAME=\22irq_work\22 -D KBUILD_MODNAME=\22irq_work\22 -D __KBUILD_MODNAME=kmod_irq_work -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/irq_work.ll arch/x86/kernel/irq_work.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !26, globals: !64, splitDebugInlining: false, nameTableKind: None)
!19 = !{!20}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 10, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "false", value: 0)
!25 = !DIEnumerator(name: "true", value: 1)
!26 = !{!27, !31, !28, !32, !33, !38, !39, !40, !41, !42, !45, !52, !61, !22, !62}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !29, line: 35, baseType: !30)
!29 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!30 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !34, line: 17, baseType: !35)
!34 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !36, line: 21, baseType: !37)
!36 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !47, line: 26, size: 192, elements: !48)
!47 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!48 = !{!49, !50, !51}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !46, file: !47, line: 27, baseType: !31, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !46, file: !47, line: 28, baseType: !31, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !46, file: !47, line: 29, baseType: !40, size: 32, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !55, line: 19, size: 64, elements: !56)
!55 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!56 = !{!57}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !54, file: !55, line: 19, baseType: !58, size: 64)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 64, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 1)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !34, line: 21, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !36, line: 27, baseType: !22)
!64 = !{!0, !7, !12, !65, !71, !101, !103, !129, !131, !136}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !67, line: 64, type: !68, isLocal: true, isDefinition: true)
!67 = !DIFile(filename: "./arch/x86/include/asm/trace/irq_vectors.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "248ebb97ecf2aa313dd3226fad5ad4a6")
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 41)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_irq_work_entry393", scope: !73, file: !67, line: 64, type: !31, isLocal: true, isDefinition: true)
!73 = distinct !DISubprogram(name: "trace_irq_work_entry", scope: !67, file: !67, line: 64, type: !74, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{null, !40}
!76 = !{!77, !78, !81, !84, !88, !90, !93, !96, !98, !99}
!77 = !DILocalVariable(name: "vector", arg: 1, scope: !73, file: !67, line: 64, type: !40)
!78 = !DILocalVariable(name: "__idx", scope: !79, file: !67, line: 64, type: !40)
!79 = distinct !DILexicalBlock(scope: !80, file: !67, line: 64, column: 1)
!80 = distinct !DILexicalBlock(scope: !73, file: !67, line: 64, column: 1)
!81 = !DILocalVariable(name: "pscr_ret__", scope: !82, file: !67, line: 64, type: !40)
!82 = distinct !DILexicalBlock(scope: !83, file: !67, line: 64, column: 1)
!83 = distinct !DILexicalBlock(scope: !79, file: !67, line: 64, column: 1)
!84 = !DILocalVariable(name: "__vpp_verify", scope: !85, file: !67, line: 64, type: !86)
!85 = distinct !DILexicalBlock(scope: !82, file: !67, line: 64, column: 1)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!88 = !DILocalVariable(name: "pfo_val__", scope: !89, file: !67, line: 64, type: !62)
!89 = distinct !DILexicalBlock(scope: !82, file: !67, line: 64, column: 1)
!90 = !DILocalVariable(name: "__ret_warn_on", scope: !91, file: !67, line: 64, type: !40)
!91 = distinct !DILexicalBlock(scope: !92, file: !67, line: 64, column: 1)
!92 = distinct !DILexicalBlock(scope: !79, file: !67, line: 64, column: 1)
!93 = !DILocalVariable(name: "__flags", scope: !94, file: !67, line: 64, type: !40)
!94 = distinct !DILexicalBlock(scope: !95, file: !67, line: 64, column: 1)
!95 = distinct !DILexicalBlock(scope: !91, file: !67, line: 64, column: 1)
!96 = !DILocalVariable(name: "it_func_ptr", scope: !97, file: !67, line: 64, type: !45)
!97 = distinct !DILexicalBlock(scope: !79, file: !67, line: 64, column: 1)
!98 = !DILocalVariable(name: "__data", scope: !97, file: !67, line: 64, type: !31)
!99 = !DILocalVariable(name: "__UNIQUE_ID_rcu391", scope: !100, file: !67, line: 64, type: !45)
!100 = distinct !DILexicalBlock(scope: !97, file: !67, line: 64, column: 1)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace394", scope: !73, file: !67, line: 64, type: !31, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_irq_work_exit401", scope: !105, file: !67, line: 64, type: !31, isLocal: true, isDefinition: true)
!105 = distinct !DISubprogram(name: "trace_irq_work_exit", scope: !67, file: !67, line: 64, type: !74, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !106)
!106 = !{!107, !108, !111, !114, !116, !118, !121, !124, !126, !127}
!107 = !DILocalVariable(name: "vector", arg: 1, scope: !105, file: !67, line: 64, type: !40)
!108 = !DILocalVariable(name: "__idx", scope: !109, file: !67, line: 64, type: !40)
!109 = distinct !DILexicalBlock(scope: !110, file: !67, line: 64, column: 1)
!110 = distinct !DILexicalBlock(scope: !105, file: !67, line: 64, column: 1)
!111 = !DILocalVariable(name: "pscr_ret__", scope: !112, file: !67, line: 64, type: !40)
!112 = distinct !DILexicalBlock(scope: !113, file: !67, line: 64, column: 1)
!113 = distinct !DILexicalBlock(scope: !109, file: !67, line: 64, column: 1)
!114 = !DILocalVariable(name: "__vpp_verify", scope: !115, file: !67, line: 64, type: !86)
!115 = distinct !DILexicalBlock(scope: !112, file: !67, line: 64, column: 1)
!116 = !DILocalVariable(name: "pfo_val__", scope: !117, file: !67, line: 64, type: !62)
!117 = distinct !DILexicalBlock(scope: !112, file: !67, line: 64, column: 1)
!118 = !DILocalVariable(name: "__ret_warn_on", scope: !119, file: !67, line: 64, type: !40)
!119 = distinct !DILexicalBlock(scope: !120, file: !67, line: 64, column: 1)
!120 = distinct !DILexicalBlock(scope: !109, file: !67, line: 64, column: 1)
!121 = !DILocalVariable(name: "__flags", scope: !122, file: !67, line: 64, type: !40)
!122 = distinct !DILexicalBlock(scope: !123, file: !67, line: 64, column: 1)
!123 = distinct !DILexicalBlock(scope: !119, file: !67, line: 64, column: 1)
!124 = !DILocalVariable(name: "it_func_ptr", scope: !125, file: !67, line: 64, type: !45)
!125 = distinct !DILexicalBlock(scope: !109, file: !67, line: 64, column: 1)
!126 = !DILocalVariable(name: "__data", scope: !125, file: !67, line: 64, type: !31)
!127 = !DILocalVariable(name: "__UNIQUE_ID_rcu399", scope: !128, file: !67, line: 64, type: !45)
!128 = distinct !DILexicalBlock(scope: !125, file: !67, line: 64, column: 1)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace402", scope: !105, file: !67, line: 64, type: !31, isLocal: true, isDefinition: true)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_send_IPI_self254", scope: !133, file: !15, line: 454, type: !31, isLocal: true, isDefinition: true)
!133 = distinct !DISubprogram(name: "__apic_send_IPI_self", scope: !15, file: !15, line: 452, type: !74, scopeLine: 453, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !134)
!134 = !{!135}
!135 = !DILocalVariable(name: "vector", arg: 1, scope: !133, file: !15, line: 452, type: !40)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_wait_icr_idle255", scope: !138, file: !15, line: 459, type: !31, isLocal: true, isDefinition: true)
!138 = distinct !DISubprogram(name: "apic_wait_icr_idle", scope: !15, file: !15, line: 457, type: !16, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18)
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
!149 = distinct !DISubprogram(name: "sysvec_irq_work", scope: !2, file: !2, line: 17, type: !150, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !210)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !154, line: 103, size: 1344, elements: !155)
!154 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !190, !191, !192}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !153, file: !154, line: 109, baseType: !32, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !153, file: !154, line: 110, baseType: !32, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !153, file: !154, line: 111, baseType: !32, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !153, file: !154, line: 112, baseType: !32, size: 64, offset: 192)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !153, file: !154, line: 113, baseType: !32, size: 64, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !153, file: !154, line: 114, baseType: !32, size: 64, offset: 320)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !153, file: !154, line: 117, baseType: !32, size: 64, offset: 384)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !153, file: !154, line: 118, baseType: !32, size: 64, offset: 448)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !153, file: !154, line: 119, baseType: !32, size: 64, offset: 512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !153, file: !154, line: 120, baseType: !32, size: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !153, file: !154, line: 121, baseType: !32, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !153, file: !154, line: 122, baseType: !32, size: 64, offset: 704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !153, file: !154, line: 123, baseType: !32, size: 64, offset: 768)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !153, file: !154, line: 124, baseType: !32, size: 64, offset: 832)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !153, file: !154, line: 125, baseType: !32, size: 64, offset: 896)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !153, file: !154, line: 139, baseType: !32, size: 64, offset: 960)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !153, file: !154, line: 142, baseType: !32, size: 64, offset: 1024)
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !154, line: 144, baseType: !174, size: 64, offset: 1088)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !154, line: 144, size: 64, elements: !175)
!175 = !{!176, !180, !184}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !174, file: !154, line: 146, baseType: !177, size: 16)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !34, line: 19, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !36, line: 24, baseType: !179)
!179 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !174, file: !154, line: 148, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !34, line: 23, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !36, line: 31, baseType: !183)
!183 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !174, file: !154, line: 150, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !154, line: 59, size: 64, elements: !186)
!186 = !{!187, !188, !189}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !185, file: !154, line: 61, baseType: !181, size: 16, flags: DIFlagBitField, extraData: i64 0)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !185, file: !154, line: 63, baseType: !181, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !185, file: !154, line: 65, baseType: !181, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !153, file: !154, line: 153, baseType: !32, size: 64, offset: 1152)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !153, file: !154, line: 154, baseType: !32, size: 64, offset: 1216)
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !154, line: 156, baseType: !193, size: 64, offset: 1280)
!193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !154, line: 156, size: 64, elements: !194)
!194 = !{!195, !196, !197}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !193, file: !154, line: 158, baseType: !177, size: 16)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !193, file: !154, line: 160, baseType: !181, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !193, file: !154, line: 162, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !154, line: 69, size: 64, elements: !199)
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !198, file: !154, line: 71, baseType: !181, size: 16, flags: DIFlagBitField, extraData: i64 0)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !198, file: !154, line: 73, baseType: !181, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !198, file: !154, line: 75, baseType: !181, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !198, file: !154, line: 77, baseType: !181, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !198, file: !154, line: 80, baseType: !181, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !198, file: !154, line: 83, baseType: !181, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !198, file: !154, line: 86, baseType: !181, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !198, file: !154, line: 88, baseType: !181, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !198, file: !154, line: 93, baseType: !181, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !198, file: !154, line: 100, baseType: !181, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!210 = !{!211, !212}
!211 = !DILocalVariable(name: "regs", arg: 1, scope: !149, file: !2, line: 17, type: !152)
!212 = !DILocalVariable(name: "state", scope: !149, file: !2, line: 17, type: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqentry_state_t", file: !214, line: 376, baseType: !215)
!214 = !DIFile(filename: "./include/linux/entry-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b93fdf1f121944f6dbdd60dbacd9cec")
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqentry_state", file: !214, line: 371, size: 8, elements: !216)
!216 = !{!217}
!217 = !DIDerivedType(tag: DW_TAG_member, scope: !215, file: !214, line: 372, baseType: !218, size: 8)
!218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !215, file: !214, line: 372, size: 8, elements: !219)
!219 = !{!220, !221}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "exit_rcu", scope: !218, file: !214, line: 373, baseType: !28, size: 8)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep", scope: !218, file: !214, line: 374, baseType: !28, size: 8)
!222 = !DILocation(line: 17, column: 1, scope: !149)
!223 = !DILocation(line: 17, column: 1, scope: !224)
!224 = distinct !DILexicalBlock(scope: !149, file: !2, line: 17, column: 1)
!225 = !DILocation(line: 17, column: 1, scope: !226)
!226 = distinct !DILexicalBlock(scope: !149, file: !2, line: 17, column: 1)
!227 = !DISubprogram(name: "irqentry_enter", scope: !214, file: !214, line: 410, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!228 = !DISubroutineType(types: !229)
!229 = !{!213, !152}
!230 = distinct !DISubprogram(name: "kvm_set_cpu_l1tf_flush_l1d", scope: !231, file: !231, line: 85, type: !16, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!231 = !DIFile(filename: "./arch/x86/include/asm/hardirq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a5f78851d05626cb30000e7593c12009")
!232 = !DILocation(line: 85, column: 64, scope: !230)
!233 = distinct !DISubprogram(name: "instr_sysvec_irq_work", scope: !2, file: !2, line: 17, type: !150, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !234)
!234 = !{!235, !236, !242, !244, !246, !251, !253, !255, !258, !260, !262, !266}
!235 = !DILocalVariable(name: "regs", arg: 1, scope: !233, file: !2, line: 17, type: !152)
!236 = !DILocalVariable(name: "pscr_ret__", scope: !237, file: !2, line: 17, type: !28)
!237 = distinct !DILexicalBlock(scope: !238, file: !2, line: 17, column: 1)
!238 = distinct !DILexicalBlock(scope: !239, file: !2, line: 17, column: 1)
!239 = distinct !DILexicalBlock(scope: !240, file: !2, line: 17, column: 1)
!240 = distinct !DILexicalBlock(scope: !241, file: !2, line: 17, column: 1)
!241 = distinct !DILexicalBlock(scope: !233, file: !2, line: 17, column: 1)
!242 = !DILocalVariable(name: "__vpp_verify", scope: !243, file: !2, line: 17, type: !86)
!243 = distinct !DILexicalBlock(scope: !237, file: !2, line: 17, column: 1)
!244 = !DILocalVariable(name: "pfo_val__", scope: !245, file: !2, line: 17, type: !33)
!245 = distinct !DILexicalBlock(scope: !237, file: !2, line: 17, column: 1)
!246 = !DILocalVariable(name: "__vpp_verify", scope: !247, file: !2, line: 17, type: !86)
!247 = distinct !DILexicalBlock(scope: !248, file: !2, line: 17, column: 1)
!248 = distinct !DILexicalBlock(scope: !249, file: !2, line: 17, column: 1)
!249 = distinct !DILexicalBlock(scope: !250, file: !2, line: 17, column: 1)
!250 = distinct !DILexicalBlock(scope: !239, file: !2, line: 17, column: 1)
!251 = !DILocalVariable(name: "pto_val__", scope: !252, file: !2, line: 17, type: !33)
!252 = distinct !DILexicalBlock(scope: !248, file: !2, line: 17, column: 1)
!253 = !DILocalVariable(name: "tos", scope: !254, file: !2, line: 17, type: !31)
!254 = distinct !DILexicalBlock(scope: !250, file: !2, line: 17, column: 1)
!255 = !DILocalVariable(name: "pscr_ret__", scope: !256, file: !2, line: 17, type: !31)
!256 = distinct !DILexicalBlock(scope: !257, file: !2, line: 17, column: 1)
!257 = distinct !DILexicalBlock(scope: !254, file: !2, line: 17, column: 1)
!258 = !DILocalVariable(name: "__vpp_verify", scope: !259, file: !2, line: 17, type: !86)
!259 = distinct !DILexicalBlock(scope: !256, file: !2, line: 17, column: 1)
!260 = !DILocalVariable(name: "pfo_val__", scope: !261, file: !2, line: 17, type: !181)
!261 = distinct !DILexicalBlock(scope: !256, file: !2, line: 17, column: 1)
!262 = !DILocalVariable(name: "__vpp_verify", scope: !263, file: !2, line: 17, type: !86)
!263 = distinct !DILexicalBlock(scope: !264, file: !2, line: 17, column: 1)
!264 = distinct !DILexicalBlock(scope: !265, file: !2, line: 17, column: 1)
!265 = distinct !DILexicalBlock(scope: !250, file: !2, line: 17, column: 1)
!266 = !DILocalVariable(name: "pto_val__", scope: !267, file: !2, line: 17, type: !33)
!267 = distinct !DILexicalBlock(scope: !264, file: !2, line: 17, column: 1)
!268 = !DILocation(line: 17, column: 1, scope: !233)
!269 = !DILocation(line: 17, column: 1, scope: !239)
!270 = !DILocation(line: 17, column: 1, scope: !238)
!271 = !DILocation(line: 17, column: 1, scope: !237)
!272 = !DILocation(line: 17, column: 1, scope: !243)
!273 = !DILocation(line: 17, column: 1, scope: !245)
!274 = !{i64 2157468407}
!275 = !{i8 0, i8 2}
!276 = !{}
!277 = !DILocation(line: 17, column: 1, scope: !240)
!278 = !DILocation(line: 17, column: 1, scope: !279)
!279 = distinct !DILexicalBlock(scope: !239, file: !2, line: 17, column: 1)
!280 = !DILocation(line: 17, column: 1, scope: !249)
!281 = !DILocation(line: 17, column: 1, scope: !248)
!282 = !DILocation(line: 17, column: 1, scope: !247)
!283 = !DILocation(line: 17, column: 1, scope: !252)
!284 = !{i64 2157472145}
!285 = !DILocation(line: 17, column: 1, scope: !254)
!286 = !DILocation(line: 17, column: 1, scope: !257)
!287 = !DILocation(line: 17, column: 1, scope: !256)
!288 = !DILocation(line: 17, column: 1, scope: !259)
!289 = !DILocation(line: 17, column: 1, scope: !261)
!290 = !{i64 2157480390}
!291 = !{i64 2157475320, i64 2157475354, i64 2157480717, i64 2157480744, i64 2157480772, i64 2157480796, i64 2157480802, i64 2157480849, i64 2157480872, i64 2157480898, i64 2157475425}
!292 = !DILocation(line: 17, column: 1, scope: !250)
!293 = !DILocation(line: 17, column: 1, scope: !265)
!294 = !DILocation(line: 17, column: 1, scope: !264)
!295 = !DILocation(line: 17, column: 1, scope: !263)
!296 = !DILocation(line: 17, column: 1, scope: !267)
!297 = !{i64 2157482712}
!298 = !DISubprogram(name: "irqentry_exit", scope: !214, file: !214, line: 447, type: !299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !152, !213}
!301 = distinct !DISubprogram(name: "fred_sysvec_irq_work", scope: !2, file: !2, line: 17, type: !150, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !302)
!302 = !{!303}
!303 = !DILocalVariable(name: "regs", arg: 1, scope: !301, file: !2, line: 17, type: !152)
!304 = !DILocation(line: 17, column: 1, scope: !301)
!305 = distinct !DISubprogram(name: "arch_irq_work_raise", scope: !2, file: !2, line: 26, type: !16, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!306 = !DILocation(line: 28, column: 7, scope: !307)
!307 = distinct !DILexicalBlock(scope: !305, file: !2, line: 28, column: 6)
!308 = !DILocation(line: 28, column: 6, scope: !305)
!309 = !DILocation(line: 29, column: 3, scope: !307)
!310 = !DILocation(line: 31, column: 2, scope: !305)
!311 = !DILocation(line: 32, column: 2, scope: !305)
!312 = !DILocation(line: 33, column: 1, scope: !305)
!313 = distinct !DISubprogram(name: "arch_irq_work_has_interrupt", scope: !314, file: !314, line: 8, type: !315, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18)
!314 = !DIFile(filename: "./arch/x86/include/asm/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "afd41a5ce996d0cc8fe9d8b71de1d506")
!315 = !DISubroutineType(types: !316)
!316 = !{!28}
!317 = !DILocation(line: 10, column: 9, scope: !313)
!318 = !DILocation(line: 10, column: 2, scope: !313)
!319 = !DILocation(line: 452, column: 54, scope: !133)
!320 = !DILocation(line: 454, column: 2, scope: !321)
!321 = distinct !DILexicalBlock(scope: !133, file: !15, line: 454, column: 2)
!322 = !DILocation(line: 454, column: 43, scope: !133)
!323 = !DILocation(line: 454, column: 2, scope: !133)
!324 = !DILocation(line: 455, column: 1, scope: !133)
!325 = !DILocation(line: 459, column: 2, scope: !326)
!326 = distinct !DILexicalBlock(scope: !138, file: !15, line: 459, column: 2)
!327 = !DILocation(line: 459, column: 2, scope: !138)
!328 = !DILocation(line: 460, column: 1, scope: !138)
!329 = distinct !DISubprogram(name: "user_mode", scope: !154, file: !154, line: 209, type: !330, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !332)
!330 = !DISubroutineType(types: !331)
!331 = !{!40, !152}
!332 = !{!333}
!333 = !DILocalVariable(name: "regs", arg: 1, scope: !329, file: !154, line: 209, type: !152)
!334 = !DILocation(line: 209, column: 54, scope: !329)
!335 = !DILocation(line: 214, column: 12, scope: !329)
!336 = !DILocation(line: 214, column: 18, scope: !329)
!337 = !DILocation(line: 214, column: 21, scope: !329)
!338 = !DILocation(line: 214, column: 10, scope: !329)
!339 = !DILocation(line: 214, column: 9, scope: !329)
!340 = !DILocation(line: 214, column: 2, scope: !329)
!341 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !342, file: !342, line: 313, type: !343, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !347)
!342 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!343 = !DISubroutineType(types: !344)
!344 = !{null, !345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!347 = !{!348}
!348 = !DILocalVariable(name: "op", arg: 1, scope: !341, file: !342, line: 313, type: !345)
!349 = !DILocation(line: 313, column: 66, scope: !341)
!350 = !DILocation(line: 313, column: 72, scope: !341)
!351 = !DISubprogram(name: "irq_enter_rcu", scope: !352, file: !352, line: 59, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DIFile(filename: "./include/linux/hardirq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e28e97c9e9f6f4db7783a84a063e2e35")
!353 = distinct !DISubprogram(name: "__sysvec_irq_work", scope: !2, file: !2, line: 17, type: !150, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !354)
!354 = !{!355, !356, !359}
!355 = !DILocalVariable(name: "regs", arg: 1, scope: !353, file: !2, line: 17, type: !152)
!356 = !DILocalVariable(name: "__vpp_verify", scope: !357, file: !2, line: 21, type: !86)
!357 = distinct !DILexicalBlock(scope: !358, file: !2, line: 21, column: 2)
!358 = distinct !DILexicalBlock(scope: !353, file: !2, line: 21, column: 2)
!359 = !DILocalVariable(name: "pao_ID__", scope: !360, file: !2, line: 21, type: !361)
!360 = distinct !DILexicalBlock(scope: !358, file: !2, line: 21, column: 2)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!362 = !DILocation(line: 17, column: 1, scope: !353)
!363 = !DILocation(line: 19, column: 2, scope: !353)
!364 = !DILocation(line: 20, column: 2, scope: !353)
!365 = !DILocation(line: 21, column: 2, scope: !353)
!366 = !DILocation(line: 21, column: 2, scope: !358)
!367 = !DILocation(line: 21, column: 2, scope: !357)
!368 = !DILocation(line: 21, column: 2, scope: !360)
!369 = !DILocation(line: 21, column: 2, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !2, line: 21, column: 2)
!371 = distinct !DILexicalBlock(scope: !360, file: !2, line: 21, column: 2)
!372 = !{i64 2157492030}
!373 = !DILocation(line: 22, column: 2, scope: !353)
!374 = !DILocation(line: 23, column: 2, scope: !353)
!375 = !DILocation(line: 24, column: 1, scope: !353)
!376 = !DISubprogram(name: "irq_exit_rcu", scope: !352, file: !352, line: 88, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!377 = !DILocation(line: 409, column: 2, scope: !378)
!378 = distinct !DILexicalBlock(scope: !14, file: !15, line: 409, column: 2)
!379 = !DILocation(line: 409, column: 2, scope: !14)
!380 = !DILocation(line: 410, column: 1, scope: !14)
!381 = !DILocation(line: 64, column: 1, scope: !73)
!382 = !DILocation(line: 64, column: 1, scope: !80)
!383 = !DILocation(line: 64, column: 1, scope: !79)
!384 = !DILocation(line: 64, column: 1, scope: !82)
!385 = !DILocation(line: 64, column: 1, scope: !85)
!386 = !DILocation(line: 64, column: 1, scope: !89)
!387 = !{i64 2156200467}
!388 = !DILocation(line: 64, column: 1, scope: !83)
!389 = !DILocation(line: 64, column: 1, scope: !91)
!390 = !DILocation(line: 64, column: 1, scope: !95)
!391 = !DILocation(line: 64, column: 1, scope: !94)
!392 = !DILocation(line: 64, column: 1, scope: !393)
!393 = distinct !DILexicalBlock(scope: !94, file: !67, line: 64, column: 1)
!394 = !DILocation(line: 64, column: 1, scope: !395)
!395 = distinct !DILexicalBlock(scope: !94, file: !67, line: 64, column: 1)
!396 = !{i64 2156201657, i64 2156201686, i64 2156201732, i64 2156201790, i64 2156201844, i64 2156201898, i64 2156201953, i64 2156201984, i64 2156202292, i64 2156202298, i64 2156202345, i64 2156202368, i64 2156202394}
!397 = !DILocation(line: 64, column: 1, scope: !398)
!398 = distinct !DILexicalBlock(scope: !94, file: !67, line: 64, column: 1)
!399 = !DILocation(line: 64, column: 1, scope: !92)
!400 = !DILocation(line: 64, column: 1, scope: !401)
!401 = distinct !DILexicalBlock(scope: !79, file: !67, line: 64, column: 1)
!402 = !{i64 2156202758}
!403 = !DILocation(line: 64, column: 1, scope: !97)
!404 = !DILocation(line: 64, column: 1, scope: !100)
!405 = !DILocation(line: 64, column: 1, scope: !406)
!406 = distinct !DILexicalBlock(scope: !100, file: !67, line: 64, column: 1)
!407 = !DILocation(line: 64, column: 1, scope: !408)
!408 = distinct !DILexicalBlock(scope: !406, file: !67, line: 64, column: 1)
!409 = !DILocation(line: 64, column: 1, scope: !410)
!410 = distinct !DILexicalBlock(scope: !97, file: !67, line: 64, column: 1)
!411 = !DILocation(line: 64, column: 1, scope: !412)
!412 = distinct !DILexicalBlock(scope: !410, file: !67, line: 64, column: 1)
!413 = !DILocation(line: 64, column: 1, scope: !414)
!414 = distinct !DILexicalBlock(scope: !412, file: !67, line: 64, column: 1)
!415 = !DILocation(line: 64, column: 1, scope: !416)
!416 = distinct !DILexicalBlock(scope: !79, file: !67, line: 64, column: 1)
!417 = !{i64 2156209111}
!418 = !DILocation(line: 64, column: 1, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !67, line: 64, column: 1)
!420 = !DILocation(line: 64, column: 1, scope: !421)
!421 = distinct !DILexicalBlock(scope: !419, file: !67, line: 64, column: 1)
!422 = !{i64 2156209270}
!423 = !DISubprogram(name: "irq_work_run", scope: !424, file: !424, line: 66, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!424 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!425 = !DILocation(line: 64, column: 1, scope: !105)
!426 = !DILocation(line: 64, column: 1, scope: !110)
!427 = !DILocation(line: 64, column: 1, scope: !109)
!428 = !DILocation(line: 64, column: 1, scope: !112)
!429 = !DILocation(line: 64, column: 1, scope: !115)
!430 = !DILocation(line: 64, column: 1, scope: !117)
!431 = !{i64 2156245474}
!432 = !DILocation(line: 64, column: 1, scope: !113)
!433 = !DILocation(line: 64, column: 1, scope: !119)
!434 = !DILocation(line: 64, column: 1, scope: !123)
!435 = !DILocation(line: 64, column: 1, scope: !122)
!436 = !DILocation(line: 64, column: 1, scope: !437)
!437 = distinct !DILexicalBlock(scope: !122, file: !67, line: 64, column: 1)
!438 = !DILocation(line: 64, column: 1, scope: !439)
!439 = distinct !DILexicalBlock(scope: !122, file: !67, line: 64, column: 1)
!440 = !{i64 2156246663, i64 2156246692, i64 2156246738, i64 2156246796, i64 2156246850, i64 2156246904, i64 2156246959, i64 2156246990, i64 2156247298, i64 2156247304, i64 2156247351, i64 2156247374, i64 2156247400}
!441 = !DILocation(line: 64, column: 1, scope: !442)
!442 = distinct !DILexicalBlock(scope: !122, file: !67, line: 64, column: 1)
!443 = !DILocation(line: 64, column: 1, scope: !120)
!444 = !DILocation(line: 64, column: 1, scope: !445)
!445 = distinct !DILexicalBlock(scope: !109, file: !67, line: 64, column: 1)
!446 = !{i64 2156247764}
!447 = !DILocation(line: 64, column: 1, scope: !125)
!448 = !DILocation(line: 64, column: 1, scope: !128)
!449 = !DILocation(line: 64, column: 1, scope: !450)
!450 = distinct !DILexicalBlock(scope: !128, file: !67, line: 64, column: 1)
!451 = !DILocation(line: 64, column: 1, scope: !452)
!452 = distinct !DILexicalBlock(scope: !450, file: !67, line: 64, column: 1)
!453 = !DILocation(line: 64, column: 1, scope: !454)
!454 = distinct !DILexicalBlock(scope: !125, file: !67, line: 64, column: 1)
!455 = !DILocation(line: 64, column: 1, scope: !456)
!456 = distinct !DILexicalBlock(scope: !454, file: !67, line: 64, column: 1)
!457 = !DILocation(line: 64, column: 1, scope: !458)
!458 = distinct !DILexicalBlock(scope: !456, file: !67, line: 64, column: 1)
!459 = !DILocation(line: 64, column: 1, scope: !460)
!460 = distinct !DILexicalBlock(scope: !109, file: !67, line: 64, column: 1)
!461 = !{i64 2156258117}
!462 = !DILocation(line: 64, column: 1, scope: !463)
!463 = distinct !DILexicalBlock(scope: !460, file: !67, line: 64, column: 1)
!464 = !DILocation(line: 64, column: 1, scope: !465)
!465 = distinct !DILexicalBlock(scope: !463, file: !67, line: 64, column: 1)
!466 = !{i64 2156258276}
!467 = distinct !DISubprogram(name: "static_key_false", scope: !468, file: !468, line: 205, type: !469, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !496)
!468 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!469 = !DISubroutineType(types: !470)
!470 = !{!28, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !468, line: 85, size: 128, elements: !473)
!473 = !{!474, !479}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !472, file: !468, line: 86, baseType: !475, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !29, line: 174, baseType: !476)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !29, line: 172, size: 32, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !476, file: !29, line: 173, baseType: !40, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !468, line: 101, baseType: !480, size: 64, offset: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !468, line: 101, size: 64, elements: !481)
!481 = !{!482, !483, !493}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !480, file: !468, line: 102, baseType: !32, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !480, file: !468, line: 103, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !468, line: 117, size: 128, elements: !486)
!486 = !{!487, !490, !491}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !485, file: !468, line: 118, baseType: !488, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !34, line: 20, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !36, line: 26, baseType: !40)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !485, file: !468, line: 119, baseType: !488, size: 32, offset: 32)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !485, file: !468, line: 120, baseType: !492, size: 64, offset: 64)
!492 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !480, file: !468, line: 104, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !468, line: 104, flags: DIFlagFwdDecl)
!496 = !{!497}
!497 = !DILocalVariable(name: "key", arg: 1, scope: !467, file: !468, line: 205, type: !471)
!498 = !DILocation(line: 205, column: 65, scope: !467)
!499 = !DILocation(line: 207, column: 28, scope: !467)
!500 = !DILocation(line: 207, column: 9, scope: !467)
!501 = !DILocation(line: 207, column: 2, scope: !467)
!502 = distinct !DISubprogram(name: "cpu_online", scope: !55, file: !55, line: 1080, type: !503, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{!28, !22}
!505 = !{!506}
!506 = !DILocalVariable(name: "cpu", arg: 1, scope: !502, file: !55, line: 1080, type: !22)
!507 = !DILocation(line: 1080, column: 44, scope: !502)
!508 = !DILocation(line: 1082, column: 26, scope: !502)
!509 = !DILocation(line: 1082, column: 9, scope: !502)
!510 = !DILocation(line: 1082, column: 2, scope: !502)
!511 = distinct !DISubprogram(name: "__preempt_count_add", scope: !512, file: !512, line: 78, type: !74, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !513)
!512 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!513 = !{!514, !515, !517}
!514 = !DILocalVariable(name: "val", arg: 1, scope: !511, file: !512, line: 78, type: !40)
!515 = !DILocalVariable(name: "pao_ID__", scope: !516, file: !512, line: 80, type: !361)
!516 = distinct !DILexicalBlock(scope: !511, file: !512, line: 80, column: 2)
!517 = !DILocalVariable(name: "pto_val__", scope: !518, file: !512, line: 80, type: !62)
!518 = distinct !DILexicalBlock(scope: !519, file: !512, line: 80, column: 2)
!519 = distinct !DILexicalBlock(scope: !520, file: !512, line: 80, column: 2)
!520 = distinct !DILexicalBlock(scope: !516, file: !512, line: 80, column: 2)
!521 = !DILocation(line: 78, column: 53, scope: !511)
!522 = !DILocation(line: 80, column: 2, scope: !511)
!523 = !DILocation(line: 80, column: 2, scope: !516)
!524 = !DILocation(line: 80, column: 2, scope: !520)
!525 = !DILocation(line: 80, column: 2, scope: !526)
!526 = distinct !DILexicalBlock(scope: !520, file: !512, line: 80, column: 2)
!527 = !{i64 2149494619}
!528 = !DILocation(line: 80, column: 2, scope: !519)
!529 = !DILocation(line: 80, column: 2, scope: !530)
!530 = distinct !DILexicalBlock(scope: !519, file: !512, line: 80, column: 2)
!531 = !{i64 2149494914}
!532 = !DILocation(line: 80, column: 2, scope: !518)
!533 = !{i64 2149495619}
!534 = !DILocation(line: 81, column: 1, scope: !511)
!535 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !512, file: !512, line: 93, type: !315, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !536)
!536 = !{!537}
!537 = !DILocalVariable(name: "c", scope: !538, file: !512, line: 95, type: !28)
!538 = distinct !DILexicalBlock(scope: !535, file: !512, line: 95, column: 9)
!539 = !DILocation(line: 95, column: 9, scope: !538)
!540 = !{i64 2149498975, i64 2149499068}
!541 = !DILocation(line: 95, column: 9, scope: !535)
!542 = !DILocation(line: 95, column: 2, scope: !535)
!543 = distinct !DISubprogram(name: "arch_static_branch", scope: !544, file: !544, line: 25, type: !545, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !547)
!544 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!545 = !DISubroutineType(types: !546)
!546 = !{!28, !471, !28}
!547 = !{!548, !549, !550}
!548 = !DILocalVariable(name: "key", arg: 1, scope: !543, file: !544, line: 25, type: !471)
!549 = !DILocalVariable(name: "branch", arg: 2, scope: !543, file: !544, line: 25, type: !28)
!550 = !DILabel(scope: !543, name: "l_yes", file: !544, line: 33)
!551 = !DILocation(line: 25, column: 67, scope: !543)
!552 = !DILocation(line: 25, column: 77, scope: !543)
!553 = !DILocation(line: 30, column: 13, scope: !543)
!554 = !DILocation(line: 30, column: 28, scope: !543)
!555 = !DILocation(line: 30, column: 26, scope: !543)
!556 = !DILocation(line: 27, column: 2, scope: !543)
!557 = !{i64 1218882, i64 1218926, i64 2148703609, i64 2148703630, i64 2148703656, i64 2148703689, i64 2148703723, i64 2148703747}
!558 = !DILocation(line: 32, column: 2, scope: !543)
!559 = !DILocation(line: 33, column: 1, scope: !543)
!560 = !DILocation(line: 34, column: 2, scope: !543)
!561 = !DILocation(line: 35, column: 1, scope: !543)
!562 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !55, file: !55, line: 502, type: !563, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{!28, !40, !52}
!565 = !{!566, !567}
!566 = !DILocalVariable(name: "cpu", arg: 1, scope: !562, file: !55, line: 502, type: !40)
!567 = !DILocalVariable(name: "cpumask", arg: 2, scope: !562, file: !55, line: 502, type: !52)
!568 = !DILocation(line: 502, column: 50, scope: !562)
!569 = !DILocation(line: 502, column: 77, scope: !562)
!570 = !DILocation(line: 504, column: 9, scope: !562)
!571 = !DILocation(line: 504, column: 2, scope: !562)
!572 = distinct !DISubprogram(name: "_test_bit", scope: !573, file: !573, line: 139, type: !574, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !579)
!573 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!574 = !DISubroutineType(types: !575)
!575 = !{!28, !32, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!579 = !{!580, !581}
!580 = !DILocalVariable(name: "nr", arg: 1, scope: !572, file: !573, line: 139, type: !32)
!581 = !DILocalVariable(name: "addr", arg: 2, scope: !572, file: !573, line: 139, type: !576)
!582 = !DILocation(line: 139, column: 25, scope: !572)
!583 = !DILocation(line: 139, column: 59, scope: !572)
!584 = !DILocation(line: 141, column: 25, scope: !572)
!585 = !DILocation(line: 141, column: 32, scope: !572)
!586 = !DILocation(line: 141, column: 30, scope: !572)
!587 = !DILocation(line: 141, column: 2, scope: !572)
!588 = !DILocation(line: 142, column: 23, scope: !572)
!589 = !DILocation(line: 142, column: 27, scope: !572)
!590 = !DILocation(line: 142, column: 9, scope: !572)
!591 = !DILocation(line: 142, column: 2, scope: !572)
!592 = distinct !DISubprogram(name: "cpumask_check", scope: !55, file: !55, line: 148, type: !593, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !595)
!593 = !DISubroutineType(types: !594)
!594 = !{!22, !22}
!595 = !{!596}
!596 = !DILocalVariable(name: "cpu", arg: 1, scope: !592, file: !55, line: 148, type: !22)
!597 = !DILocation(line: 148, column: 64, scope: !592)
!598 = !DILocation(line: 150, column: 20, scope: !592)
!599 = !DILocation(line: 150, column: 2, scope: !592)
!600 = !DILocation(line: 151, column: 9, scope: !592)
!601 = !DILocation(line: 151, column: 2, scope: !592)
!602 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !603, file: !603, line: 66, type: !604, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !613)
!603 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!604 = !DISubroutineType(types: !605)
!605 = !{null, !606, !609}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 61, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !611, line: 72, baseType: !612)
!611 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !611, line: 16, baseType: !32)
!613 = !{!614, !615}
!614 = !DILocalVariable(name: "v", arg: 1, scope: !602, file: !603, line: 66, type: !606)
!615 = !DILocalVariable(name: "size", arg: 2, scope: !602, file: !603, line: 66, type: !609)
!616 = !DILocation(line: 66, column: 73, scope: !602)
!617 = !DILocation(line: 66, column: 83, scope: !602)
!618 = !DILocation(line: 68, column: 19, scope: !602)
!619 = !DILocation(line: 68, column: 22, scope: !602)
!620 = !DILocation(line: 68, column: 2, scope: !602)
!621 = !DILocation(line: 69, column: 2, scope: !602)
!622 = !DILocation(line: 70, column: 1, scope: !602)
!623 = distinct !DISubprogram(name: "arch_test_bit", scope: !624, file: !624, line: 237, type: !574, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !625)
!624 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!625 = !{!626, !627}
!626 = !DILocalVariable(name: "nr", arg: 1, scope: !623, file: !624, line: 237, type: !32)
!627 = !DILocalVariable(name: "addr", arg: 2, scope: !623, file: !624, line: 237, type: !576)
!628 = !DILocation(line: 237, column: 29, scope: !623)
!629 = !DILocation(line: 237, column: 63, scope: !623)
!630 = !DILocation(line: 239, column: 30, scope: !623)
!631 = !DILocation(line: 239, column: 9, scope: !623)
!632 = !DILocation(line: 239, column: 54, scope: !623)
!633 = !DILocation(line: 239, column: 58, scope: !623)
!634 = !DILocation(line: 239, column: 36, scope: !623)
!635 = !DILocation(line: 240, column: 26, scope: !623)
!636 = !DILocation(line: 240, column: 30, scope: !623)
!637 = !DILocation(line: 240, column: 8, scope: !623)
!638 = !DILocation(line: 239, column: 2, scope: !623)
!639 = distinct !DISubprogram(name: "kasan_check_read", scope: !640, file: !640, line: 40, type: !641, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !643)
!640 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!641 = !DISubroutineType(types: !642)
!642 = !{!28, !606, !22}
!643 = !{!644, !645}
!644 = !DILocalVariable(name: "p", arg: 1, scope: !639, file: !640, line: 40, type: !606)
!645 = !DILocalVariable(name: "size", arg: 2, scope: !639, file: !640, line: 40, type: !22)
!646 = !DILocation(line: 40, column: 58, scope: !639)
!647 = !DILocation(line: 40, column: 74, scope: !639)
!648 = !DILocation(line: 42, column: 2, scope: !639)
!649 = distinct !DISubprogram(name: "kcsan_check_access", scope: !650, file: !650, line: 229, type: !651, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !653)
!650 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!651 = !DISubroutineType(types: !652)
!652 = !{null, !606, !609, !40}
!653 = !{!654, !655, !656}
!654 = !DILocalVariable(name: "ptr", arg: 1, scope: !649, file: !650, line: 229, type: !606)
!655 = !DILocalVariable(name: "size", arg: 2, scope: !649, file: !650, line: 229, type: !609)
!656 = !DILocalVariable(name: "type", arg: 3, scope: !649, file: !650, line: 230, type: !40)
!657 = !DILocation(line: 229, column: 60, scope: !649)
!658 = !DILocation(line: 229, column: 72, scope: !649)
!659 = !DILocation(line: 230, column: 15, scope: !649)
!660 = !DILocation(line: 230, column: 23, scope: !649)
!661 = distinct !DISubprogram(name: "constant_test_bit", scope: !624, file: !624, line: 204, type: !662, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !664)
!662 = !DISubroutineType(types: !663)
!663 = !{!28, !492, !576}
!664 = !{!665, !666}
!665 = !DILocalVariable(name: "nr", arg: 1, scope: !661, file: !624, line: 204, type: !492)
!666 = !DILocalVariable(name: "addr", arg: 2, scope: !661, file: !624, line: 204, type: !576)
!667 = !DILocation(line: 204, column: 52, scope: !661)
!668 = !DILocation(line: 204, column: 86, scope: !661)
!669 = !DILocation(line: 206, column: 19, scope: !661)
!670 = !DILocation(line: 206, column: 22, scope: !661)
!671 = !DILocation(line: 206, column: 15, scope: !661)
!672 = !DILocation(line: 207, column: 4, scope: !661)
!673 = !DILocation(line: 207, column: 9, scope: !661)
!674 = !DILocation(line: 207, column: 12, scope: !661)
!675 = !DILocation(line: 206, column: 44, scope: !661)
!676 = !DILocation(line: 207, column: 37, scope: !661)
!677 = !DILocation(line: 206, column: 2, scope: !661)
!678 = distinct !DISubprogram(name: "variable_test_bit", scope: !624, file: !624, line: 224, type: !662, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !679)
!679 = !{!680, !681, !682}
!680 = !DILocalVariable(name: "nr", arg: 1, scope: !678, file: !624, line: 224, type: !492)
!681 = !DILocalVariable(name: "addr", arg: 2, scope: !678, file: !624, line: 224, type: !576)
!682 = !DILocalVariable(name: "oldbit", scope: !678, file: !624, line: 226, type: !28)
!683 = !DILocation(line: 224, column: 52, scope: !678)
!684 = !DILocation(line: 224, column: 86, scope: !678)
!685 = !DILocation(line: 226, column: 2, scope: !678)
!686 = !DILocation(line: 226, column: 7, scope: !678)
!687 = !DILocation(line: 231, column: 33, scope: !678)
!688 = !DILocation(line: 231, column: 46, scope: !678)
!689 = !DILocation(line: 228, column: 2, scope: !678)
!690 = !{i64 2147798633, i64 2147798707}
!691 = !DILocation(line: 233, column: 9, scope: !678)
!692 = !DILocation(line: 234, column: 1, scope: !678)
!693 = !DILocation(line: 233, column: 2, scope: !678)
!694 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !55, file: !55, line: 140, type: !695, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !18, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !22, !22}
!697 = !{!698, !699}
!698 = !DILocalVariable(name: "cpu", arg: 1, scope: !694, file: !55, line: 140, type: !22)
!699 = !DILocalVariable(name: "bits", arg: 2, scope: !694, file: !55, line: 140, type: !22)
!700 = !DILocation(line: 140, column: 60, scope: !694)
!701 = !DILocation(line: 140, column: 78, scope: !694)
!702 = !DILocation(line: 145, column: 1, scope: !694)
