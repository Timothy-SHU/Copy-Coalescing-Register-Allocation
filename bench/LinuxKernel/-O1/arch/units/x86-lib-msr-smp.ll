; ModuleID = 'arch/x86/lib/msr-smp.c'
source_filename = "arch/x86/lib/msr-smp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rdmsr_on_cpu: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rdmsr_on_cpu ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rdmsrl_on_cpu: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rdmsrl_on_cpu ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_wrmsr_on_cpu: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad wrmsr_on_cpu ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_wrmsrl_on_cpu: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad wrmsrl_on_cpu ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rdmsr_on_cpus: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rdmsr_on_cpus ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_wrmsr_on_cpus: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad wrmsr_on_cpus ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rdmsr_safe_on_cpu: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rdmsr_safe_on_cpu ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_wrmsr_safe_on_cpu: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad wrmsr_safe_on_cpu ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_wrmsrl_safe_on_cpu: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad wrmsrl_safe_on_cpu ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rdmsrl_safe_on_cpu: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rdmsrl_safe_on_cpu ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rdmsr_safe_regs_on_cpu: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rdmsr_safe_regs_on_cpu ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_wrmsr_safe_regs_on_cpu: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad wrmsr_safe_regs_on_cpu ; .previous"

%struct.pcpu_hot = type { %union.anon.4 }
%union.anon.4 = type { %struct.anon.5, [16 x i8] }
%struct.anon.5 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.6 }
%struct.atomic_t = type { i32 }
%union.anon.6 = type { i64 }
%struct.static_call_key = type { ptr, %union.anon.7 }
%union.anon.7 = type { i64 }
%struct.lock_class_key = type {}
%struct.msr_info = type { i32, %struct.msr, ptr, i32 }
%struct.msr = type { %union.anon }
%union.anon = type { i64 }
%struct.anon = type { i32, i32 }
%struct.msr_info_completion = type { %struct.msr_info, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.3, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.3 = type { i32 }
%struct.msr_regs_info = type { ptr, i32 }
%struct.cpumask = type { [1 x i64] }

@__UNIQUE_ID___addressable_rdmsr_on_cpu61 = internal global ptr @rdmsr_on_cpu, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_rdmsrl_on_cpu62 = internal global ptr @rdmsrl_on_cpu, section ".discard.addressable", align 8, !dbg !38
@__UNIQUE_ID___addressable_wrmsr_on_cpu63 = internal global ptr @wrmsr_on_cpu, section ".discard.addressable", align 8, !dbg !40
@__UNIQUE_ID___addressable_wrmsrl_on_cpu64 = internal global ptr @wrmsrl_on_cpu, section ".discard.addressable", align 8, !dbg !42
@__UNIQUE_ID___addressable_rdmsr_on_cpus66 = internal global ptr @rdmsr_on_cpus, section ".discard.addressable", align 8, !dbg !44
@__UNIQUE_ID___addressable_wrmsr_on_cpus67 = internal global ptr @wrmsr_on_cpus, section ".discard.addressable", align 8, !dbg !46
@__UNIQUE_ID___addressable_rdmsr_safe_on_cpu68 = internal global ptr @rdmsr_safe_on_cpu, section ".discard.addressable", align 8, !dbg !48
@__UNIQUE_ID___addressable_wrmsr_safe_on_cpu69 = internal global ptr @wrmsr_safe_on_cpu, section ".discard.addressable", align 8, !dbg !50
@__UNIQUE_ID___addressable_wrmsrl_safe_on_cpu70 = internal global ptr @wrmsrl_safe_on_cpu, section ".discard.addressable", align 8, !dbg !52
@__UNIQUE_ID___addressable_rdmsrl_safe_on_cpu71 = internal global ptr @rdmsrl_safe_on_cpu, section ".discard.addressable", align 8, !dbg !54
@__UNIQUE_ID___addressable_rdmsr_safe_regs_on_cpu72 = internal global ptr @rdmsr_safe_regs_on_cpu, section ".discard.addressable", align 8, !dbg !56
@__UNIQUE_ID___addressable_wrmsr_safe_regs_on_cpu73 = internal global ptr @wrmsr_safe_regs_on_cpu, section ".discard.addressable", align 8, !dbg !58
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !60
@__rwmsr_on_cpus.__UNIQUE_ID___addressable___SCK__preempt_schedule65 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !66
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !107
@.str.1 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !167
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID___addressable_rdmsr_on_cpu61, ptr @__UNIQUE_ID___addressable_rdmsrl_on_cpu62, ptr @__UNIQUE_ID___addressable_wrmsr_on_cpu63, ptr @__UNIQUE_ID___addressable_wrmsrl_on_cpu64, ptr @__UNIQUE_ID___addressable_rdmsr_on_cpus66, ptr @__UNIQUE_ID___addressable_wrmsr_on_cpus67, ptr @__UNIQUE_ID___addressable_rdmsr_safe_on_cpu68, ptr @__UNIQUE_ID___addressable_wrmsr_safe_on_cpu69, ptr @__UNIQUE_ID___addressable_wrmsrl_safe_on_cpu70, ptr @__UNIQUE_ID___addressable_rdmsrl_safe_on_cpu71, ptr @__UNIQUE_ID___addressable_rdmsr_safe_regs_on_cpu72, ptr @__UNIQUE_ID___addressable_wrmsr_safe_regs_on_cpu73, ptr @__rwmsr_on_cpus.__UNIQUE_ID___addressable___SCK__preempt_schedule65], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rdmsr_on_cpu(i32 noundef %cpu, i32 noundef %msr_no, ptr noundef %l, ptr noundef %h) #0 align 16 !dbg !182 {
entry:
  %cpu.addr = alloca i32, align 4
  %msr_no.addr = alloca i32, align 4
  %l.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %rv = alloca %struct.msr_info, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !187, metadata !DIExpression()), !dbg !193
  store i32 %msr_no, ptr %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr_no.addr, metadata !188, metadata !DIExpression()), !dbg !194
  store ptr %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !189, metadata !DIExpression()), !dbg !195
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !190, metadata !DIExpression()), !dbg !196
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !197
  call void @llvm.dbg.declare(metadata ptr %err, metadata !191, metadata !DIExpression()), !dbg !198
  call void @llvm.lifetime.start.p0(i64 32, ptr %rv) #13, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !192, metadata !DIExpression()), !dbg !200
  call void @llvm.memset.p0.i64(ptr align 8 %rv, i8 0, i64 32, i1 false), !dbg !201
  %0 = load i32, ptr %msr_no.addr, align 4, !dbg !202
  %msr_no1 = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 0, !dbg !203
  store i32 %0, ptr %msr_no1, align 8, !dbg !204
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !205
  %call = call i32 @smp_call_function_single(i32 noundef %1, ptr noundef @__rdmsr_on_cpu, ptr noundef %rv, i32 noundef 1) #14, !dbg !206
  store i32 %call, ptr %err, align 4, !dbg !207
  %reg = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 1, !dbg !208
  %2 = getelementptr inbounds %struct.msr, ptr %reg, i32 0, i32 0, !dbg !209
  %l2 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 0, !dbg !209
  %3 = load i32, ptr %l2, align 8, !dbg !209
  %4 = load ptr, ptr %l.addr, align 8, !dbg !210
  store i32 %3, ptr %4, align 4, !dbg !211
  %reg3 = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 1, !dbg !212
  %5 = getelementptr inbounds %struct.msr, ptr %reg3, i32 0, i32 0, !dbg !213
  %h4 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1, !dbg !213
  %6 = load i32, ptr %h4, align 4, !dbg !213
  %7 = load ptr, ptr %h.addr, align 8, !dbg !214
  store i32 %6, ptr %7, align 4, !dbg !215
  %8 = load i32, ptr %err, align 4, !dbg !216
  call void @llvm.lifetime.end.p0(i64 32, ptr %rv) #13, !dbg !217
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !217
  ret i32 %8, !dbg !218
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !219 dso_local i32 @smp_call_function_single(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rdmsr_on_cpu(ptr noundef %info) #0 align 16 !dbg !224 {
entry:
  %info.addr = alloca ptr, align 8
  %rv = alloca ptr, align 8
  %reg = alloca ptr, align 8
  %this_cpu = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %__vpp_verify4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  %__val = alloca i64, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !226, metadata !DIExpression()), !dbg !245
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #13, !dbg !246
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !227, metadata !DIExpression()), !dbg !247
  %0 = load ptr, ptr %info.addr, align 8, !dbg !248
  store ptr %0, ptr %rv, align 8, !dbg !247
  call void @llvm.lifetime.start.p0(i64 8, ptr %reg) #13, !dbg !249
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !229, metadata !DIExpression()), !dbg !250
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_cpu) #13, !dbg !251
  call void @llvm.dbg.declare(metadata ptr %this_cpu, metadata !230, metadata !DIExpression()), !dbg !252
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !253
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !231, metadata !DIExpression()), !dbg !253
  br label %do.body, !dbg !253

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !254
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !233, metadata !DIExpression()), !dbg !254
  store ptr null, ptr %__vpp_verify, align 8, !dbg !254
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !254
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !253
  br label %do.cond, !dbg !254

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !254

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !255
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !235, metadata !DIExpression()), !dbg !255
  %2 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !255, !srcloc !256
  store i32 %2, ptr %pfo_val__, align 4, !dbg !255
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !255
  %conv = zext i32 %3 to i64, !dbg !255
  %conv1 = trunc i64 %conv to i32, !dbg !255
  store i32 %conv1, ptr %tmp, align 4, !dbg !255
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !253
  %4 = load i32, ptr %tmp, align 4, !dbg !255
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !253
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !253
  store i32 %5, ptr %tmp2, align 4, !dbg !253
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !257
  %6 = load i32, ptr %tmp2, align 4, !dbg !253
  store i32 %6, ptr %this_cpu, align 4, !dbg !252
  %7 = load ptr, ptr %rv, align 8, !dbg !258
  %msrs = getelementptr inbounds %struct.msr_info, ptr %7, i32 0, i32 2, !dbg !259
  %8 = load ptr, ptr %msrs, align 8, !dbg !259
  %tobool = icmp ne ptr %8, null, !dbg !258
  br i1 %tobool, label %if.then, label %if.else, !dbg !260

if.then:                                          ; preds = %do.end
  br label %do.body3, !dbg !261

do.body3:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #13, !dbg !262
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !237, metadata !DIExpression()), !dbg !262
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !262
  %9 = load ptr, ptr %__vpp_verify4, align 8, !dbg !262
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #13, !dbg !261
  br label %do.cond5, !dbg !262

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !262

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !263
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !241, metadata !DIExpression()), !dbg !263
  %10 = load ptr, ptr %rv, align 8, !dbg !263
  %msrs8 = getelementptr inbounds %struct.msr_info, ptr %10, i32 0, i32 2, !dbg !263
  %11 = load ptr, ptr %msrs8, align 8, !dbg !263
  %12 = ptrtoint ptr %11 to i64, !dbg !263
  store i64 %12, ptr %__ptr, align 8, !dbg !263
  %13 = load i64, ptr %__ptr, align 8, !dbg !263
  %14 = load i32, ptr %this_cpu, align 4, !dbg !263
  %idxprom = sext i32 %14 to i64, !dbg !263
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !263
  %15 = load i64, ptr %arrayidx, align 8, !dbg !263
  %add = add i64 %13, %15, !dbg !263
  %16 = inttoptr i64 %add to ptr, !dbg !263
  store ptr %16, ptr %tmp9, align 8, !dbg !263
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !261
  %17 = load ptr, ptr %tmp9, align 8, !dbg !263
  store ptr %17, ptr %tmp7, align 8, !dbg !262
  %18 = load ptr, ptr %tmp7, align 8, !dbg !261
  store ptr %18, ptr %reg, align 8, !dbg !264
  br label %if.end, !dbg !265

if.else:                                          ; preds = %do.end
  %19 = load ptr, ptr %rv, align 8, !dbg !266
  %reg10 = getelementptr inbounds %struct.msr_info, ptr %19, i32 0, i32 1, !dbg !267
  store ptr %reg10, ptr %reg, align 8, !dbg !268
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end6
  br label %do.body11, !dbg !269

do.body11:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #13, !dbg !270
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !243, metadata !DIExpression()), !dbg !270
  %20 = load ptr, ptr %rv, align 8, !dbg !270
  %msr_no = getelementptr inbounds %struct.msr_info, ptr %20, i32 0, i32 0, !dbg !270
  %21 = load i32, ptr %msr_no, align 8, !dbg !270
  %call = call i64 @native_read_msr(i32 noundef %21) #14, !dbg !270
  store i64 %call, ptr %__val, align 8, !dbg !270
  %22 = load i64, ptr %__val, align 8, !dbg !270
  %conv12 = trunc i64 %22 to i32, !dbg !270
  %23 = load ptr, ptr %reg, align 8, !dbg !270
  %24 = getelementptr inbounds %struct.msr, ptr %23, i32 0, i32 0, !dbg !270
  %l = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 0, !dbg !270
  store i32 %conv12, ptr %l, align 8, !dbg !270
  %25 = load i64, ptr %__val, align 8, !dbg !270
  %shr = lshr i64 %25, 32, !dbg !270
  %conv13 = trunc i64 %shr to i32, !dbg !270
  %26 = load ptr, ptr %reg, align 8, !dbg !270
  %27 = getelementptr inbounds %struct.msr, ptr %26, i32 0, i32 0, !dbg !270
  %h = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 1, !dbg !270
  store i32 %conv13, ptr %h, align 4, !dbg !270
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #13, !dbg !269
  br label %do.cond14, !dbg !270

do.cond14:                                        ; preds = %do.body11
  br label %do.end15, !dbg !270

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_cpu) #13, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %reg) #13, !dbg !271
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #13, !dbg !271
  ret void, !dbg !271
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rdmsrl_on_cpu(i32 noundef %cpu, i32 noundef %msr_no, ptr noundef %q) #0 align 16 !dbg !272 {
entry:
  %cpu.addr = alloca i32, align 4
  %msr_no.addr = alloca i32, align 4
  %q.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %rv = alloca %struct.msr_info, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !277, metadata !DIExpression()), !dbg !282
  store i32 %msr_no, ptr %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr_no.addr, metadata !278, metadata !DIExpression()), !dbg !283
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !279, metadata !DIExpression()), !dbg !284
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %err, metadata !280, metadata !DIExpression()), !dbg !286
  call void @llvm.lifetime.start.p0(i64 32, ptr %rv) #13, !dbg !287
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !281, metadata !DIExpression()), !dbg !288
  call void @llvm.memset.p0.i64(ptr align 8 %rv, i8 0, i64 32, i1 false), !dbg !289
  %0 = load i32, ptr %msr_no.addr, align 4, !dbg !290
  %msr_no1 = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 0, !dbg !291
  store i32 %0, ptr %msr_no1, align 8, !dbg !292
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !293
  %call = call i32 @smp_call_function_single(i32 noundef %1, ptr noundef @__rdmsr_on_cpu, ptr noundef %rv, i32 noundef 1) #14, !dbg !294
  store i32 %call, ptr %err, align 4, !dbg !295
  %reg = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 1, !dbg !296
  %2 = getelementptr inbounds %struct.msr, ptr %reg, i32 0, i32 0, !dbg !297
  %3 = load i64, ptr %2, align 8, !dbg !297
  %4 = load ptr, ptr %q.addr, align 8, !dbg !298
  store i64 %3, ptr %4, align 8, !dbg !299
  %5 = load i32, ptr %err, align 4, !dbg !300
  call void @llvm.lifetime.end.p0(i64 32, ptr %rv) #13, !dbg !301
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !301
  ret i32 %5, !dbg !302
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @wrmsr_on_cpu(i32 noundef %cpu, i32 noundef %msr_no, i32 noundef %l, i32 noundef %h) #0 align 16 !dbg !303 {
entry:
  %cpu.addr = alloca i32, align 4
  %msr_no.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %rv = alloca %struct.msr_info, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !307, metadata !DIExpression()), !dbg !313
  store i32 %msr_no, ptr %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr_no.addr, metadata !308, metadata !DIExpression()), !dbg !314
  store i32 %l, ptr %l.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !309, metadata !DIExpression()), !dbg !315
  store i32 %h, ptr %h.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !310, metadata !DIExpression()), !dbg !316
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !317
  call void @llvm.dbg.declare(metadata ptr %err, metadata !311, metadata !DIExpression()), !dbg !318
  call void @llvm.lifetime.start.p0(i64 32, ptr %rv) #13, !dbg !319
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !312, metadata !DIExpression()), !dbg !320
  call void @llvm.memset.p0.i64(ptr align 8 %rv, i8 0, i64 32, i1 false), !dbg !321
  %0 = load i32, ptr %msr_no.addr, align 4, !dbg !322
  %msr_no1 = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 0, !dbg !323
  store i32 %0, ptr %msr_no1, align 8, !dbg !324
  %1 = load i32, ptr %l.addr, align 4, !dbg !325
  %reg = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 1, !dbg !326
  %2 = getelementptr inbounds %struct.msr, ptr %reg, i32 0, i32 0, !dbg !327
  %l2 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 0, !dbg !327
  store i32 %1, ptr %l2, align 8, !dbg !328
  %3 = load i32, ptr %h.addr, align 4, !dbg !329
  %reg3 = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 1, !dbg !330
  %4 = getelementptr inbounds %struct.msr, ptr %reg3, i32 0, i32 0, !dbg !331
  %h4 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1, !dbg !331
  store i32 %3, ptr %h4, align 4, !dbg !332
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !333
  %call = call i32 @smp_call_function_single(i32 noundef %5, ptr noundef @__wrmsr_on_cpu, ptr noundef %rv, i32 noundef 1) #14, !dbg !334
  store i32 %call, ptr %err, align 4, !dbg !335
  %6 = load i32, ptr %err, align 4, !dbg !336
  call void @llvm.lifetime.end.p0(i64 32, ptr %rv) #13, !dbg !337
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !337
  ret i32 %6, !dbg !338
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr_on_cpu(ptr noundef %info) #0 align 16 !dbg !339 {
entry:
  %info.addr = alloca ptr, align 8
  %rv = alloca ptr, align 8
  %reg = alloca ptr, align 8
  %this_cpu = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %__vpp_verify4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !341, metadata !DIExpression()), !dbg !357
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #13, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !342, metadata !DIExpression()), !dbg !359
  %0 = load ptr, ptr %info.addr, align 8, !dbg !360
  store ptr %0, ptr %rv, align 8, !dbg !359
  call void @llvm.lifetime.start.p0(i64 8, ptr %reg) #13, !dbg !361
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !343, metadata !DIExpression()), !dbg !362
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_cpu) #13, !dbg !363
  call void @llvm.dbg.declare(metadata ptr %this_cpu, metadata !344, metadata !DIExpression()), !dbg !364
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !365
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !345, metadata !DIExpression()), !dbg !365
  br label %do.body, !dbg !365

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !347, metadata !DIExpression()), !dbg !366
  store ptr null, ptr %__vpp_verify, align 8, !dbg !366
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !366
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !365
  br label %do.cond, !dbg !366

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !366

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !367
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !349, metadata !DIExpression()), !dbg !367
  %2 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 2)) #13, !dbg !367, !srcloc !368
  store i32 %2, ptr %pfo_val__, align 4, !dbg !367
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !367
  %conv = zext i32 %3 to i64, !dbg !367
  %conv1 = trunc i64 %conv to i32, !dbg !367
  store i32 %conv1, ptr %tmp, align 4, !dbg !367
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !365
  %4 = load i32, ptr %tmp, align 4, !dbg !367
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !365
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !365
  store i32 %5, ptr %tmp2, align 4, !dbg !365
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !369
  %6 = load i32, ptr %tmp2, align 4, !dbg !365
  store i32 %6, ptr %this_cpu, align 4, !dbg !364
  %7 = load ptr, ptr %rv, align 8, !dbg !370
  %msrs = getelementptr inbounds %struct.msr_info, ptr %7, i32 0, i32 2, !dbg !371
  %8 = load ptr, ptr %msrs, align 8, !dbg !371
  %tobool = icmp ne ptr %8, null, !dbg !370
  br i1 %tobool, label %if.then, label %if.else, !dbg !372

if.then:                                          ; preds = %do.end
  br label %do.body3, !dbg !373

do.body3:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #13, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !351, metadata !DIExpression()), !dbg !374
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !374
  %9 = load ptr, ptr %__vpp_verify4, align 8, !dbg !374
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #13, !dbg !373
  br label %do.cond5, !dbg !374

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !374

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !375
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !355, metadata !DIExpression()), !dbg !375
  %10 = load ptr, ptr %rv, align 8, !dbg !375
  %msrs8 = getelementptr inbounds %struct.msr_info, ptr %10, i32 0, i32 2, !dbg !375
  %11 = load ptr, ptr %msrs8, align 8, !dbg !375
  %12 = ptrtoint ptr %11 to i64, !dbg !375
  store i64 %12, ptr %__ptr, align 8, !dbg !375
  %13 = load i64, ptr %__ptr, align 8, !dbg !375
  %14 = load i32, ptr %this_cpu, align 4, !dbg !375
  %idxprom = sext i32 %14 to i64, !dbg !375
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !375
  %15 = load i64, ptr %arrayidx, align 8, !dbg !375
  %add = add i64 %13, %15, !dbg !375
  %16 = inttoptr i64 %add to ptr, !dbg !375
  store ptr %16, ptr %tmp9, align 8, !dbg !375
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !373
  %17 = load ptr, ptr %tmp9, align 8, !dbg !375
  store ptr %17, ptr %tmp7, align 8, !dbg !374
  %18 = load ptr, ptr %tmp7, align 8, !dbg !373
  store ptr %18, ptr %reg, align 8, !dbg !376
  br label %if.end, !dbg !377

if.else:                                          ; preds = %do.end
  %19 = load ptr, ptr %rv, align 8, !dbg !378
  %reg10 = getelementptr inbounds %struct.msr_info, ptr %19, i32 0, i32 1, !dbg !379
  store ptr %reg10, ptr %reg, align 8, !dbg !380
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end6
  %20 = load ptr, ptr %rv, align 8, !dbg !381
  %msr_no = getelementptr inbounds %struct.msr_info, ptr %20, i32 0, i32 0, !dbg !382
  %21 = load i32, ptr %msr_no, align 8, !dbg !382
  %22 = load ptr, ptr %reg, align 8, !dbg !383
  %23 = getelementptr inbounds %struct.msr, ptr %22, i32 0, i32 0, !dbg !384
  %l = getelementptr inbounds %struct.anon, ptr %23, i32 0, i32 0, !dbg !384
  %24 = load i32, ptr %l, align 8, !dbg !384
  %25 = load ptr, ptr %reg, align 8, !dbg !385
  %26 = getelementptr inbounds %struct.msr, ptr %25, i32 0, i32 0, !dbg !386
  %h = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 1, !dbg !386
  %27 = load i32, ptr %h, align 4, !dbg !386
  call void @wrmsr(i32 noundef %21, i32 noundef %24, i32 noundef %27) #14, !dbg !387
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_cpu) #13, !dbg !388
  call void @llvm.lifetime.end.p0(i64 8, ptr %reg) #13, !dbg !388
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #13, !dbg !388
  ret void, !dbg !388
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @wrmsrl_on_cpu(i32 noundef %cpu, i32 noundef %msr_no, i64 noundef %q) #0 align 16 !dbg !389 {
entry:
  %cpu.addr = alloca i32, align 4
  %msr_no.addr = alloca i32, align 4
  %q.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %rv = alloca %struct.msr_info, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !393, metadata !DIExpression()), !dbg !398
  store i32 %msr_no, ptr %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr_no.addr, metadata !394, metadata !DIExpression()), !dbg !399
  store i64 %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !395, metadata !DIExpression()), !dbg !400
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !401
  call void @llvm.dbg.declare(metadata ptr %err, metadata !396, metadata !DIExpression()), !dbg !402
  call void @llvm.lifetime.start.p0(i64 32, ptr %rv) #13, !dbg !403
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !397, metadata !DIExpression()), !dbg !404
  call void @llvm.memset.p0.i64(ptr align 8 %rv, i8 0, i64 32, i1 false), !dbg !405
  %0 = load i32, ptr %msr_no.addr, align 4, !dbg !406
  %msr_no1 = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 0, !dbg !407
  store i32 %0, ptr %msr_no1, align 8, !dbg !408
  %1 = load i64, ptr %q.addr, align 8, !dbg !409
  %reg = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 1, !dbg !410
  %2 = getelementptr inbounds %struct.msr, ptr %reg, i32 0, i32 0, !dbg !411
  store i64 %1, ptr %2, align 8, !dbg !412
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !413
  %call = call i32 @smp_call_function_single(i32 noundef %3, ptr noundef @__wrmsr_on_cpu, ptr noundef %rv, i32 noundef 1) #14, !dbg !414
  store i32 %call, ptr %err, align 4, !dbg !415
  %4 = load i32, ptr %err, align 4, !dbg !416
  call void @llvm.lifetime.end.p0(i64 32, ptr %rv) #13, !dbg !417
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !417
  ret i32 %4, !dbg !418
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rdmsr_on_cpus(ptr noundef %mask, i32 noundef %msr_no, ptr noundef %msrs) #0 align 16 !dbg !419 {
entry:
  %mask.addr = alloca ptr, align 8
  %msr_no.addr = alloca i32, align 4
  %msrs.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !423, metadata !DIExpression()), !dbg !426
  store i32 %msr_no, ptr %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr_no.addr, metadata !424, metadata !DIExpression()), !dbg !427
  store ptr %msrs, ptr %msrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msrs.addr, metadata !425, metadata !DIExpression()), !dbg !428
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !429
  %1 = load i32, ptr %msr_no.addr, align 4, !dbg !430
  %2 = load ptr, ptr %msrs.addr, align 8, !dbg !431
  call void @__rwmsr_on_cpus(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef @__rdmsr_on_cpu) #14, !dbg !432
  ret void, !dbg !433
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rwmsr_on_cpus(ptr noundef %mask, i32 noundef %msr_no, ptr noundef %msrs, ptr noundef %msr_func) #0 align 16 !dbg !68 {
entry:
  %mask.addr = alloca ptr, align 8
  %msr_no.addr = alloca i32, align 4
  %msrs.addr = alloca ptr, align 8
  %msr_func.addr = alloca ptr, align 8
  %rv = alloca %struct.msr_info, align 8
  %this_cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !84, metadata !DIExpression()), !dbg !434
  store i32 %msr_no, ptr %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr_no.addr, metadata !85, metadata !DIExpression()), !dbg !435
  store ptr %msrs, ptr %msrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msrs.addr, metadata !86, metadata !DIExpression()), !dbg !436
  store ptr %msr_func, ptr %msr_func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msr_func.addr, metadata !87, metadata !DIExpression()), !dbg !437
  call void @llvm.lifetime.start.p0(i64 32, ptr %rv) #13, !dbg !438
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !88, metadata !DIExpression()), !dbg !439
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_cpu) #13, !dbg !440
  call void @llvm.dbg.declare(metadata ptr %this_cpu, metadata !96, metadata !DIExpression()), !dbg !441
  call void @llvm.memset.p0.i64(ptr align 8 %rv, i8 0, i64 32, i1 false), !dbg !442
  %0 = load ptr, ptr %msrs.addr, align 8, !dbg !443
  %msrs1 = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 2, !dbg !444
  store ptr %0, ptr %msrs1, align 8, !dbg !445
  %1 = load i32, ptr %msr_no.addr, align 4, !dbg !446
  %msr_no2 = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 0, !dbg !447
  store i32 %1, ptr %msr_no2, align 8, !dbg !448
  br label %do.body, !dbg !449

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !450
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !450, !srcloc !452
  br label %do.cond, !dbg !450

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !450

do.end:                                           ; preds = %do.cond
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !453
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !454
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !97, metadata !DIExpression()), !dbg !454
  br label %do.body4, !dbg !454

do.body4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !101, metadata !DIExpression()), !dbg !455
  store ptr null, ptr %__vpp_verify, align 8, !dbg !455
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !455
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !454
  br label %do.cond5, !dbg !455

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !455

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !456
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !105, metadata !DIExpression()), !dbg !456
  %3 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !456, !srcloc !457
  store i32 %3, ptr %pfo_val__, align 4, !dbg !456
  %4 = load i32, ptr %pfo_val__, align 4, !dbg !456
  %conv = zext i32 %4 to i64, !dbg !456
  %conv8 = trunc i64 %conv to i32, !dbg !456
  store i32 %conv8, ptr %tmp7, align 4, !dbg !456
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !454
  %5 = load i32, ptr %tmp7, align 4, !dbg !456
  store i32 %5, ptr %pscr_ret__, align 4, !dbg !454
  %6 = load i32, ptr %pscr_ret__, align 4, !dbg !454
  store i32 %6, ptr %tmp9, align 4, !dbg !454
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !453
  %7 = load i32, ptr %tmp9, align 4, !dbg !454
  store i32 %7, ptr %tmp3, align 4, !dbg !453
  %8 = load i32, ptr %tmp3, align 4, !dbg !453
  store i32 %8, ptr %tmp, align 4, !dbg !450
  %9 = load i32, ptr %tmp, align 4, !dbg !449
  store i32 %9, ptr %this_cpu, align 4, !dbg !458
  %10 = load i32, ptr %this_cpu, align 4, !dbg !459
  %11 = load ptr, ptr %mask.addr, align 8, !dbg !461
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %10, ptr noundef %11) #14, !dbg !462
  br i1 %call, label %if.then, label %if.end, !dbg !463

if.then:                                          ; preds = %do.end6
  %12 = load ptr, ptr %msr_func.addr, align 8, !dbg !464
  call void %12(ptr noundef %rv) #14, !dbg !464
  br label %if.end, !dbg !464

if.end:                                           ; preds = %if.then, %do.end6
  %13 = load ptr, ptr %mask.addr, align 8, !dbg !465
  %14 = load ptr, ptr %msr_func.addr, align 8, !dbg !466
  call void @smp_call_function_many(ptr noundef %13, ptr noundef %14, ptr noundef %rv, i1 noundef zeroext true) #14, !dbg !467
  br label %do.body10, !dbg !468

do.body10:                                        ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !469, !srcloc !471
  %call11 = call zeroext i1 @__preempt_count_dec_and_test() #14, !dbg !472
  %lnot = xor i1 %call11, true, !dbg !472
  %lnot12 = xor i1 %lnot, true, !dbg !472
  %lnot.ext = zext i1 %lnot12 to i32, !dbg !472
  %conv13 = sext i32 %lnot.ext to i64, !dbg !472
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !472
  %tobool = icmp ne i64 %expval, 0, !dbg !472
  br i1 %tobool, label %if.then14, label %if.end18, !dbg !469

if.then14:                                        ; preds = %do.body10
  br label %do.body15, !dbg !472

do.body15:                                        ; preds = %if.then14
  %15 = call i64 @llvm.read_register.i64(metadata !172), !dbg !474
  %16 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %15) #13, !dbg !474, !srcloc !476
  call void @llvm.write_register.i64(metadata !172, i64 %16), !dbg !474
  br label %do.cond16, !dbg !474

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !474

do.end17:                                         ; preds = %do.cond16
  br label %if.end18, !dbg !474

if.end18:                                         ; preds = %do.end17, %do.body10
  br label %do.cond19, !dbg !469

do.cond19:                                        ; preds = %if.end18
  br label %do.end20, !dbg !469

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_cpu) #13, !dbg !477
  call void @llvm.lifetime.end.p0(i64 32, ptr %rv) #13, !dbg !477
  ret void, !dbg !477
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @wrmsr_on_cpus(ptr noundef %mask, i32 noundef %msr_no, ptr noundef %msrs) #0 align 16 !dbg !478 {
entry:
  %mask.addr = alloca ptr, align 8
  %msr_no.addr = alloca i32, align 4
  %msrs.addr = alloca ptr, align 8
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !480, metadata !DIExpression()), !dbg !483
  store i32 %msr_no, ptr %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr_no.addr, metadata !481, metadata !DIExpression()), !dbg !484
  store ptr %msrs, ptr %msrs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %msrs.addr, metadata !482, metadata !DIExpression()), !dbg !485
  %0 = load ptr, ptr %mask.addr, align 8, !dbg !486
  %1 = load i32, ptr %msr_no.addr, align 4, !dbg !487
  %2 = load ptr, ptr %msrs.addr, align 8, !dbg !488
  call void @__rwmsr_on_cpus(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef @__wrmsr_on_cpu) #14, !dbg !489
  ret void, !dbg !490
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rdmsr_safe_on_cpu(i32 noundef %cpu, i32 noundef %msr_no, ptr noundef %l, ptr noundef %h) #0 align 16 !dbg !491 {
entry:
  %cpu.addr = alloca i32, align 4
  %msr_no.addr = alloca i32, align 4
  %l.addr = alloca ptr, align 8
  %h.addr = alloca ptr, align 8
  %rv = alloca %struct.msr_info_completion, align 8
  %csd = alloca %struct.__call_single_data, align 32
  %err = alloca i32, align 4
  %.compoundliteral = alloca %struct.__call_single_data, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !493, metadata !DIExpression()), !dbg !526
  store i32 %msr_no, ptr %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr_no.addr, metadata !494, metadata !DIExpression()), !dbg !527
  store ptr %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !495, metadata !DIExpression()), !dbg !528
  store ptr %h, ptr %h.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !496, metadata !DIExpression()), !dbg !529
  call void @llvm.lifetime.start.p0(i64 64, ptr %rv) #13, !dbg !530
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !497, metadata !DIExpression()), !dbg !531
  call void @llvm.lifetime.start.p0(i64 32, ptr %csd) #13, !dbg !532
  call void @llvm.dbg.declare(metadata ptr %csd, metadata !502, metadata !DIExpression()), !dbg !533
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !534
  call void @llvm.dbg.declare(metadata ptr %err, metadata !525, metadata !DIExpression()), !dbg !535
  br label %do.body, !dbg !536

do.body:                                          ; preds = %entry
  %node = getelementptr inbounds %struct.__call_single_data, ptr %.compoundliteral, i32 0, i32 0, !dbg !537
  call void @llvm.memset.p0.i64(ptr align 8 %node, i8 0, i64 16, i1 false), !dbg !537
  %func = getelementptr inbounds %struct.__call_single_data, ptr %.compoundliteral, i32 0, i32 1, !dbg !537
  store ptr @__rdmsr_safe_on_cpu, ptr %func, align 8, !dbg !537
  %info = getelementptr inbounds %struct.__call_single_data, ptr %.compoundliteral, i32 0, i32 2, !dbg !537
  store ptr %rv, ptr %info, align 8, !dbg !537
  call void @llvm.memcpy.p0.p0.i64(ptr align 32 %csd, ptr align 8 %.compoundliteral, i64 32, i1 false), !dbg !537
  br label %do.cond, !dbg !537

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !537

do.end:                                           ; preds = %do.cond
  call void @llvm.memset.p0.i64(ptr align 8 %rv, i8 0, i64 64, i1 false), !dbg !539
  %done = getelementptr inbounds %struct.msr_info_completion, ptr %rv, i32 0, i32 1, !dbg !540
  call void @init_completion(ptr noundef %done) #14, !dbg !541
  %0 = load i32, ptr %msr_no.addr, align 4, !dbg !542
  %msr = getelementptr inbounds %struct.msr_info_completion, ptr %rv, i32 0, i32 0, !dbg !543
  %msr_no1 = getelementptr inbounds %struct.msr_info, ptr %msr, i32 0, i32 0, !dbg !544
  store i32 %0, ptr %msr_no1, align 8, !dbg !545
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !546
  %call = call i32 @smp_call_function_single_async(i32 noundef %1, ptr noundef %csd) #14, !dbg !547
  store i32 %call, ptr %err, align 4, !dbg !548
  %2 = load i32, ptr %err, align 4, !dbg !549
  %tobool = icmp ne i32 %2, 0, !dbg !549
  br i1 %tobool, label %if.end, label %if.then, !dbg !551

if.then:                                          ; preds = %do.end
  %done2 = getelementptr inbounds %struct.msr_info_completion, ptr %rv, i32 0, i32 1, !dbg !552
  call void @wait_for_completion(ptr noundef %done2) #14, !dbg !554
  %msr3 = getelementptr inbounds %struct.msr_info_completion, ptr %rv, i32 0, i32 0, !dbg !555
  %err4 = getelementptr inbounds %struct.msr_info, ptr %msr3, i32 0, i32 3, !dbg !556
  %3 = load i32, ptr %err4, align 8, !dbg !556
  store i32 %3, ptr %err, align 4, !dbg !557
  br label %if.end, !dbg !558

if.end:                                           ; preds = %if.then, %do.end
  %msr5 = getelementptr inbounds %struct.msr_info_completion, ptr %rv, i32 0, i32 0, !dbg !559
  %reg = getelementptr inbounds %struct.msr_info, ptr %msr5, i32 0, i32 1, !dbg !560
  %4 = getelementptr inbounds %struct.msr, ptr %reg, i32 0, i32 0, !dbg !561
  %l6 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 0, !dbg !561
  %5 = load i32, ptr %l6, align 8, !dbg !561
  %6 = load ptr, ptr %l.addr, align 8, !dbg !562
  store i32 %5, ptr %6, align 4, !dbg !563
  %msr7 = getelementptr inbounds %struct.msr_info_completion, ptr %rv, i32 0, i32 0, !dbg !564
  %reg8 = getelementptr inbounds %struct.msr_info, ptr %msr7, i32 0, i32 1, !dbg !565
  %7 = getelementptr inbounds %struct.msr, ptr %reg8, i32 0, i32 0, !dbg !566
  %h9 = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1, !dbg !566
  %8 = load i32, ptr %h9, align 4, !dbg !566
  %9 = load ptr, ptr %h.addr, align 8, !dbg !567
  store i32 %8, ptr %9, align 4, !dbg !568
  %10 = load i32, ptr %err, align 4, !dbg !569
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !570
  call void @llvm.lifetime.end.p0(i64 32, ptr %csd) #13, !dbg !570
  call void @llvm.lifetime.end.p0(i64 64, ptr %rv) #13, !dbg !570
  ret i32 %10, !dbg !571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rdmsr_safe_on_cpu(ptr noundef %info) #0 align 16 !dbg !572 {
entry:
  %info.addr = alloca ptr, align 8
  %rv = alloca ptr, align 8
  %__err = alloca i32, align 4
  %__val = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !574, metadata !DIExpression()), !dbg !580
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #13, !dbg !581
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !575, metadata !DIExpression()), !dbg !582
  %0 = load ptr, ptr %info.addr, align 8, !dbg !583
  store ptr %0, ptr %rv, align 8, !dbg !582
  call void @llvm.lifetime.start.p0(i64 4, ptr %__err) #13, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %__err, metadata !577, metadata !DIExpression()), !dbg !584
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #13, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !579, metadata !DIExpression()), !dbg !584
  %1 = load ptr, ptr %rv, align 8, !dbg !584
  %msr = getelementptr inbounds %struct.msr_info_completion, ptr %1, i32 0, i32 0, !dbg !584
  %msr_no = getelementptr inbounds %struct.msr_info, ptr %msr, i32 0, i32 0, !dbg !584
  %2 = load i32, ptr %msr_no, align 8, !dbg !584
  %call = call i64 @native_read_msr_safe(i32 noundef %2, ptr noundef %__err) #14, !dbg !584
  store i64 %call, ptr %__val, align 8, !dbg !584
  %3 = load i64, ptr %__val, align 8, !dbg !584
  %conv = trunc i64 %3 to i32, !dbg !584
  %4 = load ptr, ptr %rv, align 8, !dbg !584
  %msr1 = getelementptr inbounds %struct.msr_info_completion, ptr %4, i32 0, i32 0, !dbg !584
  %reg = getelementptr inbounds %struct.msr_info, ptr %msr1, i32 0, i32 1, !dbg !584
  %5 = getelementptr inbounds %struct.msr, ptr %reg, i32 0, i32 0, !dbg !584
  %l = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 0, !dbg !584
  store i32 %conv, ptr %l, align 8, !dbg !584
  %6 = load i64, ptr %__val, align 8, !dbg !584
  %shr = lshr i64 %6, 32, !dbg !584
  %conv2 = trunc i64 %shr to i32, !dbg !584
  %7 = load ptr, ptr %rv, align 8, !dbg !584
  %msr3 = getelementptr inbounds %struct.msr_info_completion, ptr %7, i32 0, i32 0, !dbg !584
  %reg4 = getelementptr inbounds %struct.msr_info, ptr %msr3, i32 0, i32 1, !dbg !584
  %8 = getelementptr inbounds %struct.msr, ptr %reg4, i32 0, i32 0, !dbg !584
  %h = getelementptr inbounds %struct.anon, ptr %8, i32 0, i32 1, !dbg !584
  store i32 %conv2, ptr %h, align 4, !dbg !584
  %9 = load i32, ptr %__err, align 4, !dbg !584
  store i32 %9, ptr %tmp, align 4, !dbg !584
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #13, !dbg !585
  call void @llvm.lifetime.end.p0(i64 4, ptr %__err) #13, !dbg !585
  %10 = load i32, ptr %tmp, align 4, !dbg !584
  %11 = load ptr, ptr %rv, align 8, !dbg !586
  %msr5 = getelementptr inbounds %struct.msr_info_completion, ptr %11, i32 0, i32 0, !dbg !587
  %err = getelementptr inbounds %struct.msr_info, ptr %msr5, i32 0, i32 3, !dbg !588
  store i32 %10, ptr %err, align 8, !dbg !589
  %12 = load ptr, ptr %rv, align 8, !dbg !590
  %done = getelementptr inbounds %struct.msr_info_completion, ptr %12, i32 0, i32 1, !dbg !591
  call void @complete(ptr noundef %done) #14, !dbg !592
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #13, !dbg !593
  ret void, !dbg !593
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #6 align 16 !dbg !109 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !163, metadata !DIExpression()), !dbg !594
  %0 = load ptr, ptr %x.addr, align 8, !dbg !595
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !596
  store i32 0, ptr %done, align 8, !dbg !597
  br label %do.body, !dbg !598

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !599
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !599
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str.1, ptr noundef @init_completion.__key) #14, !dbg !599
  br label %do.end, !dbg !599

do.end:                                           ; preds = %do.body
  ret void, !dbg !601
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !602 dso_local i32 @smp_call_function_single_async(i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !606 dso_local void @wait_for_completion(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @wrmsr_safe_on_cpu(i32 noundef %cpu, i32 noundef %msr_no, i32 noundef %l, i32 noundef %h) #0 align 16 !dbg !607 {
entry:
  %cpu.addr = alloca i32, align 4
  %msr_no.addr = alloca i32, align 4
  %l.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %rv = alloca %struct.msr_info, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !609, metadata !DIExpression()), !dbg !615
  store i32 %msr_no, ptr %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr_no.addr, metadata !610, metadata !DIExpression()), !dbg !616
  store i32 %l, ptr %l.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !611, metadata !DIExpression()), !dbg !617
  store i32 %h, ptr %h.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %h.addr, metadata !612, metadata !DIExpression()), !dbg !618
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !619
  call void @llvm.dbg.declare(metadata ptr %err, metadata !613, metadata !DIExpression()), !dbg !620
  call void @llvm.lifetime.start.p0(i64 32, ptr %rv) #13, !dbg !621
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !614, metadata !DIExpression()), !dbg !622
  call void @llvm.memset.p0.i64(ptr align 8 %rv, i8 0, i64 32, i1 false), !dbg !623
  %0 = load i32, ptr %msr_no.addr, align 4, !dbg !624
  %msr_no1 = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 0, !dbg !625
  store i32 %0, ptr %msr_no1, align 8, !dbg !626
  %1 = load i32, ptr %l.addr, align 4, !dbg !627
  %reg = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 1, !dbg !628
  %2 = getelementptr inbounds %struct.msr, ptr %reg, i32 0, i32 0, !dbg !629
  %l2 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 0, !dbg !629
  store i32 %1, ptr %l2, align 8, !dbg !630
  %3 = load i32, ptr %h.addr, align 4, !dbg !631
  %reg3 = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 1, !dbg !632
  %4 = getelementptr inbounds %struct.msr, ptr %reg3, i32 0, i32 0, !dbg !633
  %h4 = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1, !dbg !633
  store i32 %3, ptr %h4, align 4, !dbg !634
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !635
  %call = call i32 @smp_call_function_single(i32 noundef %5, ptr noundef @__wrmsr_safe_on_cpu, ptr noundef %rv, i32 noundef 1) #14, !dbg !636
  store i32 %call, ptr %err, align 4, !dbg !637
  %6 = load i32, ptr %err, align 4, !dbg !638
  %tobool = icmp ne i32 %6, 0, !dbg !638
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !638

cond.true:                                        ; preds = %entry
  %7 = load i32, ptr %err, align 4, !dbg !639
  br label %cond.end, !dbg !638

cond.false:                                       ; preds = %entry
  %err5 = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 3, !dbg !640
  %8 = load i32, ptr %err5, align 8, !dbg !640
  br label %cond.end, !dbg !638

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !638
  call void @llvm.lifetime.end.p0(i64 32, ptr %rv) #13, !dbg !641
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !641
  ret i32 %cond, !dbg !642
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr_safe_on_cpu(ptr noundef %info) #0 align 16 !dbg !643 {
entry:
  %info.addr = alloca ptr, align 8
  %rv = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !645, metadata !DIExpression()), !dbg !647
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #13, !dbg !648
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !646, metadata !DIExpression()), !dbg !649
  %0 = load ptr, ptr %info.addr, align 8, !dbg !650
  store ptr %0, ptr %rv, align 8, !dbg !649
  %1 = load ptr, ptr %rv, align 8, !dbg !651
  %msr_no = getelementptr inbounds %struct.msr_info, ptr %1, i32 0, i32 0, !dbg !652
  %2 = load i32, ptr %msr_no, align 8, !dbg !652
  %3 = load ptr, ptr %rv, align 8, !dbg !653
  %reg = getelementptr inbounds %struct.msr_info, ptr %3, i32 0, i32 1, !dbg !654
  %4 = getelementptr inbounds %struct.msr, ptr %reg, i32 0, i32 0, !dbg !655
  %l = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 0, !dbg !655
  %5 = load i32, ptr %l, align 8, !dbg !655
  %6 = load ptr, ptr %rv, align 8, !dbg !656
  %reg1 = getelementptr inbounds %struct.msr_info, ptr %6, i32 0, i32 1, !dbg !657
  %7 = getelementptr inbounds %struct.msr, ptr %reg1, i32 0, i32 0, !dbg !658
  %h = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1, !dbg !658
  %8 = load i32, ptr %h, align 4, !dbg !658
  %call = call i32 @wrmsr_safe(i32 noundef %2, i32 noundef %5, i32 noundef %8) #14, !dbg !659
  %9 = load ptr, ptr %rv, align 8, !dbg !660
  %err = getelementptr inbounds %struct.msr_info, ptr %9, i32 0, i32 3, !dbg !661
  store i32 %call, ptr %err, align 8, !dbg !662
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #13, !dbg !663
  ret void, !dbg !663
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @wrmsrl_safe_on_cpu(i32 noundef %cpu, i32 noundef %msr_no, i64 noundef %q) #0 align 16 !dbg !664 {
entry:
  %cpu.addr = alloca i32, align 4
  %msr_no.addr = alloca i32, align 4
  %q.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %rv = alloca %struct.msr_info, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !666, metadata !DIExpression()), !dbg !671
  store i32 %msr_no, ptr %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr_no.addr, metadata !667, metadata !DIExpression()), !dbg !672
  store i64 %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !668, metadata !DIExpression()), !dbg !673
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !674
  call void @llvm.dbg.declare(metadata ptr %err, metadata !669, metadata !DIExpression()), !dbg !675
  call void @llvm.lifetime.start.p0(i64 32, ptr %rv) #13, !dbg !676
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !670, metadata !DIExpression()), !dbg !677
  call void @llvm.memset.p0.i64(ptr align 8 %rv, i8 0, i64 32, i1 false), !dbg !678
  %0 = load i32, ptr %msr_no.addr, align 4, !dbg !679
  %msr_no1 = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 0, !dbg !680
  store i32 %0, ptr %msr_no1, align 8, !dbg !681
  %1 = load i64, ptr %q.addr, align 8, !dbg !682
  %reg = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 1, !dbg !683
  %2 = getelementptr inbounds %struct.msr, ptr %reg, i32 0, i32 0, !dbg !684
  store i64 %1, ptr %2, align 8, !dbg !685
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !686
  %call = call i32 @smp_call_function_single(i32 noundef %3, ptr noundef @__wrmsr_safe_on_cpu, ptr noundef %rv, i32 noundef 1) #14, !dbg !687
  store i32 %call, ptr %err, align 4, !dbg !688
  %4 = load i32, ptr %err, align 4, !dbg !689
  %tobool = icmp ne i32 %4, 0, !dbg !689
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !689

cond.true:                                        ; preds = %entry
  %5 = load i32, ptr %err, align 4, !dbg !690
  br label %cond.end, !dbg !689

cond.false:                                       ; preds = %entry
  %err2 = getelementptr inbounds %struct.msr_info, ptr %rv, i32 0, i32 3, !dbg !691
  %6 = load i32, ptr %err2, align 8, !dbg !691
  br label %cond.end, !dbg !689

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %6, %cond.false ], !dbg !689
  call void @llvm.lifetime.end.p0(i64 32, ptr %rv) #13, !dbg !692
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !692
  ret i32 %cond, !dbg !693
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rdmsrl_safe_on_cpu(i32 noundef %cpu, i32 noundef %msr_no, ptr noundef %q) #0 align 16 !dbg !694 {
entry:
  %cpu.addr = alloca i32, align 4
  %msr_no.addr = alloca i32, align 4
  %q.addr = alloca ptr, align 8
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !696, metadata !DIExpression()), !dbg !702
  store i32 %msr_no, ptr %msr_no.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr_no.addr, metadata !697, metadata !DIExpression()), !dbg !703
  store ptr %q, ptr %q.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %q.addr, metadata !698, metadata !DIExpression()), !dbg !704
  call void @llvm.lifetime.start.p0(i64 4, ptr %low) #13, !dbg !705
  call void @llvm.dbg.declare(metadata ptr %low, metadata !699, metadata !DIExpression()), !dbg !706
  call void @llvm.lifetime.start.p0(i64 4, ptr %high) #13, !dbg !705
  call void @llvm.dbg.declare(metadata ptr %high, metadata !700, metadata !DIExpression()), !dbg !707
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !708
  call void @llvm.dbg.declare(metadata ptr %err, metadata !701, metadata !DIExpression()), !dbg !709
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !710
  %1 = load i32, ptr %msr_no.addr, align 4, !dbg !711
  %call = call i32 @rdmsr_safe_on_cpu(i32 noundef %0, i32 noundef %1, ptr noundef %low, ptr noundef %high) #14, !dbg !712
  store i32 %call, ptr %err, align 4, !dbg !713
  %2 = load i32, ptr %high, align 4, !dbg !714
  %conv = zext i32 %2 to i64, !dbg !715
  %shl = shl i64 %conv, 32, !dbg !716
  %3 = load i32, ptr %low, align 4, !dbg !717
  %conv1 = zext i32 %3 to i64, !dbg !717
  %or = or i64 %shl, %conv1, !dbg !718
  %4 = load ptr, ptr %q.addr, align 8, !dbg !719
  store i64 %or, ptr %4, align 8, !dbg !720
  %5 = load i32, ptr %err, align 4, !dbg !721
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !722
  call void @llvm.lifetime.end.p0(i64 4, ptr %high) #13, !dbg !722
  call void @llvm.lifetime.end.p0(i64 4, ptr %low) #13, !dbg !722
  ret i32 %5, !dbg !723
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rdmsr_safe_regs_on_cpu(i32 noundef %cpu, ptr noundef %regs) #0 align 16 !dbg !724 {
entry:
  %cpu.addr = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %rv = alloca %struct.msr_regs_info, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !728, metadata !DIExpression()), !dbg !736
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !729, metadata !DIExpression()), !dbg !737
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !738
  call void @llvm.dbg.declare(metadata ptr %err, metadata !730, metadata !DIExpression()), !dbg !739
  call void @llvm.lifetime.start.p0(i64 16, ptr %rv) #13, !dbg !740
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !731, metadata !DIExpression()), !dbg !741
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !742
  %regs1 = getelementptr inbounds %struct.msr_regs_info, ptr %rv, i32 0, i32 0, !dbg !743
  store ptr %0, ptr %regs1, align 8, !dbg !744
  %err2 = getelementptr inbounds %struct.msr_regs_info, ptr %rv, i32 0, i32 1, !dbg !745
  store i32 -5, ptr %err2, align 8, !dbg !746
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !747
  %call = call i32 @smp_call_function_single(i32 noundef %1, ptr noundef @__rdmsr_safe_regs_on_cpu, ptr noundef %rv, i32 noundef 1) #14, !dbg !748
  store i32 %call, ptr %err, align 4, !dbg !749
  %2 = load i32, ptr %err, align 4, !dbg !750
  %tobool = icmp ne i32 %2, 0, !dbg !750
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !750

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %err, align 4, !dbg !751
  br label %cond.end, !dbg !750

cond.false:                                       ; preds = %entry
  %err3 = getelementptr inbounds %struct.msr_regs_info, ptr %rv, i32 0, i32 1, !dbg !752
  %4 = load i32, ptr %err3, align 8, !dbg !752
  br label %cond.end, !dbg !750

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !750
  call void @llvm.lifetime.end.p0(i64 16, ptr %rv) #13, !dbg !753
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !753
  ret i32 %cond, !dbg !754
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rdmsr_safe_regs_on_cpu(ptr noundef %info) #0 align 16 !dbg !755 {
entry:
  %info.addr = alloca ptr, align 8
  %rv = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !757, metadata !DIExpression()), !dbg !760
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #13, !dbg !761
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !758, metadata !DIExpression()), !dbg !762
  %0 = load ptr, ptr %info.addr, align 8, !dbg !763
  store ptr %0, ptr %rv, align 8, !dbg !762
  %1 = load ptr, ptr %rv, align 8, !dbg !764
  %regs = getelementptr inbounds %struct.msr_regs_info, ptr %1, i32 0, i32 0, !dbg !765
  %2 = load ptr, ptr %regs, align 8, !dbg !765
  %call = call i32 @rdmsr_safe_regs(ptr noundef %2) #14, !dbg !766
  %3 = load ptr, ptr %rv, align 8, !dbg !767
  %err = getelementptr inbounds %struct.msr_regs_info, ptr %3, i32 0, i32 1, !dbg !768
  store i32 %call, ptr %err, align 8, !dbg !769
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #13, !dbg !770
  ret void, !dbg !770
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @wrmsr_safe_regs_on_cpu(i32 noundef %cpu, ptr noundef %regs) #0 align 16 !dbg !771 {
entry:
  %cpu.addr = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %rv = alloca %struct.msr_regs_info, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !773, metadata !DIExpression()), !dbg !777
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !774, metadata !DIExpression()), !dbg !778
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !779
  call void @llvm.dbg.declare(metadata ptr %err, metadata !775, metadata !DIExpression()), !dbg !780
  call void @llvm.lifetime.start.p0(i64 16, ptr %rv) #13, !dbg !781
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !776, metadata !DIExpression()), !dbg !782
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !783
  %regs1 = getelementptr inbounds %struct.msr_regs_info, ptr %rv, i32 0, i32 0, !dbg !784
  store ptr %0, ptr %regs1, align 8, !dbg !785
  %err2 = getelementptr inbounds %struct.msr_regs_info, ptr %rv, i32 0, i32 1, !dbg !786
  store i32 -5, ptr %err2, align 8, !dbg !787
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !788
  %call = call i32 @smp_call_function_single(i32 noundef %1, ptr noundef @__wrmsr_safe_regs_on_cpu, ptr noundef %rv, i32 noundef 1) #14, !dbg !789
  store i32 %call, ptr %err, align 4, !dbg !790
  %2 = load i32, ptr %err, align 4, !dbg !791
  %tobool = icmp ne i32 %2, 0, !dbg !791
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !791

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %err, align 4, !dbg !792
  br label %cond.end, !dbg !791

cond.false:                                       ; preds = %entry
  %err3 = getelementptr inbounds %struct.msr_regs_info, ptr %rv, i32 0, i32 1, !dbg !793
  %4 = load i32, ptr %err3, align 8, !dbg !793
  br label %cond.end, !dbg !791

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !791
  call void @llvm.lifetime.end.p0(i64 16, ptr %rv) #13, !dbg !794
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !794
  ret i32 %cond, !dbg !795
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr_safe_regs_on_cpu(ptr noundef %info) #0 align 16 !dbg !796 {
entry:
  %info.addr = alloca ptr, align 8
  %rv = alloca ptr, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !798, metadata !DIExpression()), !dbg !800
  call void @llvm.lifetime.start.p0(i64 8, ptr %rv) #13, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !799, metadata !DIExpression()), !dbg !802
  %0 = load ptr, ptr %info.addr, align 8, !dbg !803
  store ptr %0, ptr %rv, align 8, !dbg !802
  %1 = load ptr, ptr %rv, align 8, !dbg !804
  %regs = getelementptr inbounds %struct.msr_regs_info, ptr %1, i32 0, i32 0, !dbg !805
  %2 = load ptr, ptr %regs, align 8, !dbg !805
  %call = call i32 @wrmsr_safe_regs(ptr noundef %2) #14, !dbg !806
  %3 = load ptr, ptr %rv, align 8, !dbg !807
  %err = getelementptr inbounds %struct.msr_regs_info, ptr %3, i32 0, i32 1, !dbg !808
  store i32 %call, ptr %err, align 8, !dbg !809
  call void @llvm.lifetime.end.p0(i64 8, ptr %rv) #13, !dbg !810
  ret void, !dbg !810
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #6 align 16 !dbg !811 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !815, metadata !DIExpression()), !dbg !817
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #13, !dbg !818
  call void @llvm.dbg.declare(metadata ptr %val, metadata !816, metadata !DIExpression()), !dbg !819
  %0 = load i32, ptr %msr.addr, align 4, !dbg !820
  %call = call i64 @__rdmsr(i32 noundef %0) #14, !dbg !821
  store i64 %call, ptr %val, align 8, !dbg !822
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #14, !dbg !823
  br i1 %call1, label %if.then, label %if.end, !dbg !825

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !826
  %2 = load i64, ptr %val, align 8, !dbg !827
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #14, !dbg !828
  br label %if.end, !dbg !828

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !829
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #13, !dbg !830
  ret i64 %3, !dbg !831
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #7 align 16 !dbg !832 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !834, metadata !DIExpression()), !dbg !837
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #13, !dbg !838
  call void @llvm.dbg.declare(metadata ptr %low, metadata !835, metadata !DIExpression()), !dbg !838
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #13, !dbg !838
  call void @llvm.dbg.declare(metadata ptr %high, metadata !836, metadata !DIExpression()), !dbg !838
  %0 = load i32, ptr %msr.addr, align 4, !dbg !839
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #13, !dbg !840, !srcloc !841
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !840
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !840
  store i64 %asmresult, ptr %low, align 8, !dbg !840
  store i64 %asmresult1, ptr %high, align 8, !dbg !840
  %2 = load i64, ptr %low, align 8, !dbg !842
  %3 = load i64, ptr %high, align 8, !dbg !842
  %shl = shl i64 %3, 32, !dbg !842
  %or = or i64 %2, %shl, !dbg !842
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #13, !dbg !843
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #13, !dbg !843
  ret i64 %or, !dbg !844
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #7 align 16 !dbg !845 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !873, metadata !DIExpression()), !dbg !874
  %0 = load ptr, ptr %key.addr, align 8, !dbg !875
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #14, !dbg !876
  ret i1 %call, !dbg !877
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !878 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #7 align 16 !dbg !881 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !886, metadata !DIExpression()), !dbg !889
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !887, metadata !DIExpression()), !dbg !890
  %0 = load ptr, ptr %key.addr, align 8, !dbg !891
  %1 = load i8, ptr %branch.addr, align 1, !dbg !892, !range !893, !noundef !166
  %tobool = trunc i8 %1 to i1, !dbg !892
  %conv = zext i1 %tobool to i32, !dbg !892
  %or = or i32 2, %conv, !dbg !894
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #13
          to label %asm.fallthrough [label %l_yes], !dbg !895, !srcloc !896

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !897
  br label %return, !dbg !897

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !888), !dbg !898
  store i1 true, ptr %retval, align 1, !dbg !899
  br label %return, !dbg !899

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !900
  ret i1 %2, !dbg !900
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !901 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !905, metadata !DIExpression()), !dbg !908
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !906, metadata !DIExpression()), !dbg !909
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !907, metadata !DIExpression()), !dbg !910
  %0 = load i32, ptr %msr.addr, align 4, !dbg !911
  %1 = load i32, ptr %low.addr, align 4, !dbg !912
  %2 = load i32, ptr %high.addr, align 4, !dbg !913
  call void @native_write_msr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #14, !dbg !914
  ret void, !dbg !915
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !916 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !918, metadata !DIExpression()), !dbg !921
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !919, metadata !DIExpression()), !dbg !922
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !920, metadata !DIExpression()), !dbg !923
  %0 = load i32, ptr %msr.addr, align 4, !dbg !924
  %1 = load i32, ptr %low.addr, align 4, !dbg !925
  %2 = load i32, ptr %high.addr, align 4, !dbg !926
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #14, !dbg !927
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #14, !dbg !928
  br i1 %call, label %if.then, label %if.end, !dbg !930

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !931
  %4 = load i32, ptr %high.addr, align 4, !dbg !932
  %conv = zext i32 %4 to i64, !dbg !933
  %shl = shl i64 %conv, 32, !dbg !934
  %5 = load i32, ptr %low.addr, align 4, !dbg !935
  %conv1 = zext i32 %5 to i64, !dbg !935
  %or = or i64 %shl, %conv1, !dbg !936
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #14, !dbg !937
  br label %if.end, !dbg !937

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !938
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #7 align 16 !dbg !939 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !941, metadata !DIExpression()), !dbg !944
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !942, metadata !DIExpression()), !dbg !945
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !943, metadata !DIExpression()), !dbg !946
  %0 = load i32, ptr %msr.addr, align 4, !dbg !947
  %1 = load i32, ptr %low.addr, align 4, !dbg !948
  %2 = load i32, ptr %high.addr, align 4, !dbg !949
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #13, !dbg !950, !srcloc !951
  ret void, !dbg !952
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !953 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #7 align 16 !dbg !954 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !959, metadata !DIExpression()), !dbg !967
  br label %do.body, !dbg !968

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #13, !dbg !969
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !960, metadata !DIExpression()), !dbg !969
  %0 = load i32, ptr %val.addr, align 4, !dbg !969
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !969
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !969

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !969
  %cmp = icmp eq i32 %2, 1, !dbg !969
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !969

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !969
  %cmp1 = icmp eq i32 %3, -1, !dbg !969
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !969

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !969
  br label %cond.end, !dbg !969

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !969

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !969
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !969
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !970
  %cmp2 = icmp eq i32 %5, 1, !dbg !970
  br i1 %cmp2, label %if.then, label %if.else, !dbg !969

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !971, !srcloc !973
  br label %if.end8, !dbg !970

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !974
  %cmp3 = icmp eq i32 %6, -1, !dbg !974
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !970

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !975, !srcloc !977
  br label %if.end, !dbg !974

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !974

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #13, !dbg !978
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !963, metadata !DIExpression()), !dbg !978
  %7 = load i32, ptr %val.addr, align 4, !dbg !978
  %conv = sext i32 %7 to i64, !dbg !978
  %and = and i64 %conv, 4294967295, !dbg !978
  %conv7 = trunc i64 %and to i32, !dbg !978
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !978
  %8 = load i32, ptr %pto_val__, align 4, !dbg !978
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !978, !srcloc !979
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #13, !dbg !974
  br label %do.cond, !dbg !978

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !978

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #13, !dbg !968
  br label %do.end10, !dbg !969

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !980
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #7 align 16 !dbg !981 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !988, metadata !DIExpression()), !dbg !989
  ret void, !dbg !990
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #7 align 16 !dbg !991 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !995, metadata !DIExpression()), !dbg !997
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !996, metadata !DIExpression()), !dbg !998
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !999
  %call = call i32 @cpumask_check(i32 noundef %0) #14, !dbg !999
  %conv = zext i32 %call to i64, !dbg !999
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !999
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !999
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !999
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #14, !dbg !999
  ret i1 %call1, !dbg !1000
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1001 dso_local void @smp_call_function_many(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #7 align 16 !dbg !1004 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #13, !dbg !1010
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1008, metadata !DIExpression()), !dbg !1010
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.5, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !1010, !srcloc !1011
  %1 = icmp ult i8 %0, 2, !dbg !1010
  call void @llvm.assume(i1 %1), !dbg !1010
  store i8 %0, ptr %c, align 1, !dbg !1010
  %2 = load i8, ptr %c, align 1, !dbg !1010, !range !893, !noundef !166
  %tobool = trunc i8 %2 to i1, !dbg !1010
  %frombool = zext i1 %tobool to i8, !dbg !1010
  store i8 %frombool, ptr %tmp, align 1, !dbg !1010
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #13, !dbg !1012
  %3 = load i8, ptr %tmp, align 1, !dbg !1010, !range !893, !noundef !166
  %tobool1 = trunc i8 %3 to i1, !dbg !1010
  ret i1 %tobool1, !dbg !1013
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #9

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #10

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !1014 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1022, metadata !DIExpression()), !dbg !1024
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1023, metadata !DIExpression()), !dbg !1025
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1026
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1027
  %div = udiv i64 %1, 64, !dbg !1027
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1028
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !1029
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1030
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1031
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !1032
  ret i1 %call, !dbg !1033
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #7 align 16 !dbg !1034 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1038, metadata !DIExpression()), !dbg !1039
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !1040
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #14, !dbg !1041
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !1042
  ret i32 %1, !dbg !1043
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !1044 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1056, metadata !DIExpression()), !dbg !1058
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1057, metadata !DIExpression()), !dbg !1059
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1060
  %1 = load i64, ptr %size.addr, align 8, !dbg !1061
  %conv = trunc i64 %1 to i32, !dbg !1061
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !1062
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1063
  %3 = load i64, ptr %size.addr, align 8, !dbg !1063
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !1063
  ret void, !dbg !1064
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !1065 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1068, metadata !DIExpression()), !dbg !1070
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1069, metadata !DIExpression()), !dbg !1071
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1072
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1073
  br i1 %1, label %cond.true, label %cond.false, !dbg !1073

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1074
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1075
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !1076
  %conv = zext i1 %call to i32, !dbg !1076
  br label %cond.end, !dbg !1073

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !1077
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !1078
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !1079
  %conv2 = zext i1 %call1 to i32, !dbg !1079
  br label %cond.end, !dbg !1073

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !1073
  %tobool = icmp ne i32 %cond, 0, !dbg !1073
  ret i1 %tobool, !dbg !1080
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !1081 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1086, metadata !DIExpression()), !dbg !1088
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1087, metadata !DIExpression()), !dbg !1089
  ret i1 true, !dbg !1090
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !1091 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1096, metadata !DIExpression()), !dbg !1099
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1097, metadata !DIExpression()), !dbg !1100
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1098, metadata !DIExpression()), !dbg !1101
  ret void, !dbg !1102
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !1103 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1107, metadata !DIExpression()), !dbg !1109
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1108, metadata !DIExpression()), !dbg !1110
  %0 = load i64, ptr %nr.addr, align 8, !dbg !1111
  %and = and i64 %0, 63, !dbg !1112
  %shl = shl i64 1, %and, !dbg !1113
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !1114
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1115
  %shr = ashr i64 %2, 6, !dbg !1116
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !1114
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !1114
  %and1 = and i64 %shl, %3, !dbg !1117
  %cmp = icmp ne i64 %and1, 0, !dbg !1118
  ret i1 %cmp, !dbg !1119
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !1120 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1122, metadata !DIExpression()), !dbg !1125
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1123, metadata !DIExpression()), !dbg !1126
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !1127
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !1124, metadata !DIExpression()), !dbg !1128
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1129
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1130
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !1131, !srcloc !1132
  %3 = icmp ult i8 %2, 2, !dbg !1131
  call void @llvm.assume(i1 %3), !dbg !1131
  store i8 %2, ptr %oldbit, align 1, !dbg !1131
  %4 = load i8, ptr %oldbit, align 1, !dbg !1133, !range !893, !noundef !166
  %tobool = trunc i8 %4 to i1, !dbg !1133
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !1134
  ret i1 %tobool, !dbg !1135
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #7 align 16 !dbg !1136 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !1140, metadata !DIExpression()), !dbg !1142
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !1141, metadata !DIExpression()), !dbg !1143
  ret void, !dbg !1144
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr_safe(i32 noundef %msr, ptr noundef %err) #6 align 16 !dbg !1145 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1149, metadata !DIExpression()), !dbg !1153
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !1150, metadata !DIExpression()), !dbg !1154
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #13, !dbg !1155
  call void @llvm.dbg.declare(metadata ptr %low, metadata !1151, metadata !DIExpression()), !dbg !1155
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #13, !dbg !1155
  call void @llvm.dbg.declare(metadata ptr %high, metadata !1152, metadata !DIExpression()), !dbg !1155
  %0 = load ptr, ptr %err.addr, align 8, !dbg !1156
  %1 = load i32, ptr %msr.addr, align 4, !dbg !1157
  %2 = call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %1) #13, !dbg !1158, !srcloc !1159
  %asmresult = extractvalue { i32, i64, i64 } %2, 0, !dbg !1158
  %asmresult1 = extractvalue { i32, i64, i64 } %2, 1, !dbg !1158
  %asmresult2 = extractvalue { i32, i64, i64 } %2, 2, !dbg !1158
  store i32 %asmresult, ptr %0, align 4, !dbg !1158
  store i64 %asmresult1, ptr %low, align 8, !dbg !1158
  store i64 %asmresult2, ptr %high, align 8, !dbg !1158
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #14, !dbg !1160
  br i1 %call, label %if.then, label %if.end, !dbg !1162

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !1163
  %4 = load i64, ptr %low, align 8, !dbg !1164
  %5 = load i64, ptr %high, align 8, !dbg !1164
  %shl = shl i64 %5, 32, !dbg !1164
  %or = or i64 %4, %shl, !dbg !1164
  %6 = load ptr, ptr %err.addr, align 8, !dbg !1165
  %7 = load i32, ptr %6, align 4, !dbg !1166
  call void @do_trace_read_msr(i32 noundef %3, i64 noundef %or, i32 noundef %7) #14, !dbg !1167
  br label %if.end, !dbg !1167

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %low, align 8, !dbg !1168
  %9 = load i64, ptr %high, align 8, !dbg !1168
  %shl3 = shl i64 %9, 32, !dbg !1168
  %or4 = or i64 %8, %shl3, !dbg !1168
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #13, !dbg !1169
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #13, !dbg !1169
  ret i64 %or4, !dbg !1170
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1171 dso_local void @complete(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1172 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @wrmsr_safe(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !1177 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1181, metadata !DIExpression()), !dbg !1184
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !1182, metadata !DIExpression()), !dbg !1185
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !1183, metadata !DIExpression()), !dbg !1186
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1187
  %1 = load i32, ptr %low.addr, align 4, !dbg !1188
  %2 = load i32, ptr %high.addr, align 4, !dbg !1189
  %call = call i32 @native_write_msr_safe(i32 noundef %0, i32 noundef %1, i32 noundef %2) #14, !dbg !1190
  ret i32 %call, !dbg !1191
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @native_write_msr_safe(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !1192 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !1194, metadata !DIExpression()), !dbg !1198
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !1195, metadata !DIExpression()), !dbg !1199
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !1196, metadata !DIExpression()), !dbg !1200
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1197, metadata !DIExpression()), !dbg !1202
  %0 = load i32, ptr %msr.addr, align 4, !dbg !1203
  %1 = load i32, ptr %low.addr, align 4, !dbg !1204
  %2 = load i32, ptr %high.addr, align 4, !dbg !1205
  %3 = call i32 asm sideeffect "1: wrmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=10 \0A.purgem extable_type_reg\0A .popsection\0A", "={ax},{cx},0,{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #13, !dbg !1206, !srcloc !1207
  store i32 %3, ptr %err, align 4, !dbg !1206
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #14, !dbg !1208
  br i1 %call, label %if.then, label %if.end, !dbg !1210

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %msr.addr, align 4, !dbg !1211
  %5 = load i32, ptr %high.addr, align 4, !dbg !1212
  %conv = zext i32 %5 to i64, !dbg !1213
  %shl = shl i64 %conv, 32, !dbg !1214
  %6 = load i32, ptr %low.addr, align 4, !dbg !1215
  %conv1 = zext i32 %6 to i64, !dbg !1215
  %or = or i64 %shl, %conv1, !dbg !1216
  %7 = load i32, ptr %err, align 4, !dbg !1217
  call void @do_trace_write_msr(i32 noundef %4, i64 noundef %or, i32 noundef %7) #14, !dbg !1218
  br label %if.end, !dbg !1218

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %err, align 4, !dbg !1219
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !1220
  ret i32 %8, !dbg !1221
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1222 dso_local i32 @rdmsr_safe_regs(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1225 dso_local i32 @wrmsr_safe_regs(ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #10 = { nocallback nounwind }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!172}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rdmsr_on_cpu61", scope: !2, file: !3, line: 50, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.msr-smp.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/msr-smp\22 -D KBUILD_BASENAME=\22msr_smp\22 -D KBUILD_MODNAME=\22msr_smp\22 -D __KBUILD_MODNAME=kmod_msr_smp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/msr-smp.ll arch/x86/lib/msr-smp.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/lib/msr-smp.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "30bbc286bd1ff585bc08370e2e0b7ae3")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !18, !19, !20, !21, !32, !36, !7}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !14, line: 23, baseType: !15)
!14 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !16, line: 31, baseType: !17)
!16 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!17 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msr", file: !23, line: 5, size: 64, elements: !24)
!23 = !DIFile(filename: "./arch/x86/include/asm/shared/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97cdbff086ff569e0d38e30ef42693a4")
!24 = !{!25}
!25 = !DIDerivedType(tag: DW_TAG_member, scope: !22, file: !23, line: 6, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !22, file: !23, line: 6, size: 64, elements: !27)
!27 = !{!28, !35}
!28 = !DIDerivedType(tag: DW_TAG_member, scope: !26, file: !23, line: 7, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !26, file: !23, line: 7, size: 64, elements: !30)
!30 = !{!31, !34}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !29, file: !23, line: 8, baseType: !32, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !14, line: 21, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !16, line: 27, baseType: !7)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "h", scope: !29, file: !23, line: 9, baseType: !32, size: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !26, file: !23, line: 11, baseType: !13, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!37 = !{!0, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !66, !107, !167}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rdmsrl_on_cpu62", scope: !2, file: !3, line: 65, type: !12, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_wrmsr_on_cpu63", scope: !2, file: !3, line: 81, type: !12, isLocal: true, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_wrmsrl_on_cpu64", scope: !2, file: !3, line: 97, type: !12, isLocal: true, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rdmsr_on_cpus66", scope: !2, file: !3, line: 131, type: !12, isLocal: true, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_wrmsr_on_cpus67", scope: !2, file: !3, line: 145, type: !12, isLocal: true, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rdmsr_safe_on_cpu68", scope: !2, file: !3, line: 191, type: !12, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_wrmsr_safe_on_cpu69", scope: !2, file: !3, line: 207, type: !12, isLocal: true, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_wrmsrl_safe_on_cpu70", scope: !2, file: !3, line: 223, type: !12, isLocal: true, isDefinition: true)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rdmsrl_safe_on_cpu71", scope: !2, file: !3, line: 235, type: !12, isLocal: true, isDefinition: true)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rdmsr_safe_regs_on_cpu72", scope: !2, file: !3, line: 266, type: !12, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_wrmsr_safe_regs_on_cpu73", scope: !2, file: !3, line: 279, type: !12, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 40, elements: !64)
!63 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!65}
!65 = !DISubrange(count: 5)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule65", scope: !68, file: !3, line: 117, type: !12, isLocal: true, isDefinition: true)
!68 = distinct !DISubprogram(name: "__rwmsr_on_cpus", scope: !3, file: !3, line: 99, type: !69, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !83)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !32, !21, !80}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !74, line: 19, size: 64, elements: !75)
!74 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !73, file: !74, line: 19, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 64, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !12}
!83 = !{!84, !85, !86, !87, !88, !96, !97, !101, !105}
!84 = !DILocalVariable(name: "mask", arg: 1, scope: !68, file: !3, line: 99, type: !71)
!85 = !DILocalVariable(name: "msr_no", arg: 2, scope: !68, file: !3, line: 99, type: !32)
!86 = !DILocalVariable(name: "msrs", arg: 3, scope: !68, file: !3, line: 100, type: !21)
!87 = !DILocalVariable(name: "msr_func", arg: 4, scope: !68, file: !3, line: 101, type: !80)
!88 = !DILocalVariable(name: "rv", scope: !68, file: !3, line: 103, type: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msr_info", file: !90, line: 15, size: 256, elements: !91)
!90 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!91 = !{!92, !93, !94, !95}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "msr_no", scope: !89, file: !90, line: 16, baseType: !32, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !89, file: !90, line: 17, baseType: !22, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "msrs", scope: !89, file: !90, line: 18, baseType: !21, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !89, file: !90, line: 19, baseType: !19, size: 32, offset: 192)
!96 = !DILocalVariable(name: "this_cpu", scope: !68, file: !3, line: 104, type: !19)
!97 = !DILocalVariable(name: "pscr_ret__", scope: !98, file: !3, line: 111, type: !19)
!98 = distinct !DILexicalBlock(scope: !99, file: !3, line: 111, column: 13)
!99 = distinct !DILexicalBlock(scope: !100, file: !3, line: 111, column: 13)
!100 = distinct !DILexicalBlock(scope: !68, file: !3, line: 111, column: 13)
!101 = !DILocalVariable(name: "__vpp_verify", scope: !102, file: !3, line: 111, type: !103)
!102 = distinct !DILexicalBlock(scope: !98, file: !3, line: 111, column: 13)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!105 = !DILocalVariable(name: "pfo_val__", scope: !106, file: !3, line: 111, type: !32)
!106 = distinct !DILexicalBlock(scope: !98, file: !3, line: 111, column: 13)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "__key", scope: !109, file: !110, line: 87, type: !164, isLocal: true, isDefinition: true)
!109 = distinct !DISubprogram(name: "init_completion", scope: !110, file: !110, line: 84, type: !111, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !162)
!110 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!111 = !DISubroutineType(types: !112)
!112 = !{null, !113}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !110, line: 26, size: 256, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !114, file: !110, line: 27, baseType: !7, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !114, file: !110, line: 28, baseType: !118, size: 192, offset: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !119, line: 43, size: 192, elements: !120)
!119 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!120 = !{!121, !156}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !118, file: !119, line: 44, baseType: !122, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !123, line: 23, baseType: !124)
!123 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !123, line: 14, size: 32, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !124, file: !123, line: 15, baseType: !127, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !128, line: 44, baseType: !129)
!128 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !128, line: 14, size: 32, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, scope: !129, file: !128, line: 15, baseType: !132, size: 32)
!132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !129, file: !128, line: 15, size: 32, elements: !133)
!133 = !{!134, !140, !148}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !132, file: !128, line: 16, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !136, line: 174, baseType: !137)
!136 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 172, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !137, file: !136, line: 173, baseType: !19, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, scope: !132, file: !128, line: 24, baseType: !141, size: 16)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !128, line: 24, size: 16, elements: !142)
!142 = !{!143, !147}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !141, file: !128, line: 25, baseType: !144, size: 8)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !14, line: 17, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !16, line: 21, baseType: !146)
!146 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !141, file: !128, line: 26, baseType: !144, size: 8, offset: 8)
!148 = !DIDerivedType(tag: DW_TAG_member, scope: !132, file: !128, line: 28, baseType: !149, size: 32)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !132, file: !128, line: 28, size: 32, elements: !150)
!150 = !{!151, !155}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !149, file: !128, line: 29, baseType: !152, size: 16)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !14, line: 19, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !16, line: 24, baseType: !154)
!154 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !149, file: !128, line: 30, baseType: !152, size: 16, offset: 16)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !118, file: !119, line: 45, baseType: !157, size: 128, offset: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !136, line: 190, size: 128, elements: !158)
!158 = !{!159, !161}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !136, line: 191, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !157, file: !136, line: 191, baseType: !160, size: 64, offset: 64)
!162 = !{!163}
!163 = !DILocalVariable(name: "x", arg: 1, scope: !109, file: !110, line: 84, type: !113)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !165, line: 206, elements: !166)
!165 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!166 = !{}
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !110, line: 87, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 72, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 9)
!172 = !{!"rsp"}
!173 = !{i32 7, !"Dwarf Version", i32 5}
!174 = !{i32 2, !"Debug Info Version", i32 3}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 8, !"cf-protection-branch", i32 1}
!177 = !{i32 4, !"function_return_thunk_extern", i32 1}
!178 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!179 = !{i32 1, !"Code Model", i32 2}
!180 = !{i32 1, !"override-stack-alignment", i32 8}
!181 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!182 = distinct !DISubprogram(name: "rdmsr_on_cpu", scope: !3, file: !3, line: 36, type: !183, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!183 = !DISubroutineType(types: !184)
!184 = !{!19, !7, !32, !185, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!186 = !{!187, !188, !189, !190, !191, !192}
!187 = !DILocalVariable(name: "cpu", arg: 1, scope: !182, file: !3, line: 36, type: !7)
!188 = !DILocalVariable(name: "msr_no", arg: 2, scope: !182, file: !3, line: 36, type: !32)
!189 = !DILocalVariable(name: "l", arg: 3, scope: !182, file: !3, line: 36, type: !185)
!190 = !DILocalVariable(name: "h", arg: 4, scope: !182, file: !3, line: 36, type: !185)
!191 = !DILocalVariable(name: "err", scope: !182, file: !3, line: 38, type: !19)
!192 = !DILocalVariable(name: "rv", scope: !182, file: !3, line: 39, type: !89)
!193 = !DILocation(line: 36, column: 31, scope: !182)
!194 = !DILocation(line: 36, column: 40, scope: !182)
!195 = !DILocation(line: 36, column: 53, scope: !182)
!196 = !DILocation(line: 36, column: 61, scope: !182)
!197 = !DILocation(line: 38, column: 2, scope: !182)
!198 = !DILocation(line: 38, column: 6, scope: !182)
!199 = !DILocation(line: 39, column: 2, scope: !182)
!200 = !DILocation(line: 39, column: 18, scope: !182)
!201 = !DILocation(line: 41, column: 2, scope: !182)
!202 = !DILocation(line: 43, column: 14, scope: !182)
!203 = !DILocation(line: 43, column: 5, scope: !182)
!204 = !DILocation(line: 43, column: 12, scope: !182)
!205 = !DILocation(line: 44, column: 33, scope: !182)
!206 = !DILocation(line: 44, column: 8, scope: !182)
!207 = !DILocation(line: 44, column: 6, scope: !182)
!208 = !DILocation(line: 45, column: 10, scope: !182)
!209 = !DILocation(line: 45, column: 14, scope: !182)
!210 = !DILocation(line: 45, column: 3, scope: !182)
!211 = !DILocation(line: 45, column: 5, scope: !182)
!212 = !DILocation(line: 46, column: 10, scope: !182)
!213 = !DILocation(line: 46, column: 14, scope: !182)
!214 = !DILocation(line: 46, column: 3, scope: !182)
!215 = !DILocation(line: 46, column: 5, scope: !182)
!216 = !DILocation(line: 48, column: 9, scope: !182)
!217 = !DILocation(line: 49, column: 1, scope: !182)
!218 = !DILocation(line: 48, column: 2, scope: !182)
!219 = !DISubprogram(name: "smp_call_function_single", scope: !220, file: !220, line: 50, type: !221, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!220 = !DIFile(filename: "./include/linux/smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5e44047123e6e4f39e255273d47d7376")
!221 = !DISubroutineType(types: !222)
!222 = !{!19, !19, !223, !12, !19}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "smp_call_func_t", file: !220, line: 17, baseType: !80)
!224 = distinct !DISubprogram(name: "__rdmsr_on_cpu", scope: !3, file: !3, line: 8, type: !81, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !225)
!225 = !{!226, !227, !229, !230, !231, !233, !235, !237, !241, !243}
!226 = !DILocalVariable(name: "info", arg: 1, scope: !224, file: !3, line: 8, type: !12)
!227 = !DILocalVariable(name: "rv", scope: !224, file: !3, line: 10, type: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!229 = !DILocalVariable(name: "reg", scope: !224, file: !3, line: 11, type: !21)
!230 = !DILocalVariable(name: "this_cpu", scope: !224, file: !3, line: 12, type: !19)
!231 = !DILocalVariable(name: "pscr_ret__", scope: !232, file: !3, line: 12, type: !19)
!232 = distinct !DILexicalBlock(scope: !224, file: !3, line: 12, column: 17)
!233 = !DILocalVariable(name: "__vpp_verify", scope: !234, file: !3, line: 12, type: !103)
!234 = distinct !DILexicalBlock(scope: !232, file: !3, line: 12, column: 17)
!235 = !DILocalVariable(name: "pfo_val__", scope: !236, file: !3, line: 12, type: !32)
!236 = distinct !DILexicalBlock(scope: !232, file: !3, line: 12, column: 17)
!237 = !DILocalVariable(name: "__vpp_verify", scope: !238, file: !3, line: 15, type: !103)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 15, column: 9)
!239 = distinct !DILexicalBlock(scope: !240, file: !3, line: 15, column: 9)
!240 = distinct !DILexicalBlock(scope: !224, file: !3, line: 14, column: 6)
!241 = !DILocalVariable(name: "__ptr", scope: !242, file: !3, line: 15, type: !20)
!242 = distinct !DILexicalBlock(scope: !239, file: !3, line: 15, column: 9)
!243 = !DILocalVariable(name: "__val", scope: !244, file: !3, line: 19, type: !13)
!244 = distinct !DILexicalBlock(scope: !224, file: !3, line: 19, column: 2)
!245 = !DILocation(line: 8, column: 34, scope: !224)
!246 = !DILocation(line: 10, column: 2, scope: !224)
!247 = !DILocation(line: 10, column: 19, scope: !224)
!248 = !DILocation(line: 10, column: 24, scope: !224)
!249 = !DILocation(line: 11, column: 2, scope: !224)
!250 = !DILocation(line: 11, column: 14, scope: !224)
!251 = !DILocation(line: 12, column: 2, scope: !224)
!252 = !DILocation(line: 12, column: 6, scope: !224)
!253 = !DILocation(line: 12, column: 17, scope: !232)
!254 = !DILocation(line: 12, column: 17, scope: !234)
!255 = !DILocation(line: 12, column: 17, scope: !236)
!256 = !{i64 2149798753}
!257 = !DILocation(line: 12, column: 17, scope: !224)
!258 = !DILocation(line: 14, column: 6, scope: !240)
!259 = !DILocation(line: 14, column: 10, scope: !240)
!260 = !DILocation(line: 14, column: 6, scope: !224)
!261 = !DILocation(line: 15, column: 9, scope: !239)
!262 = !DILocation(line: 15, column: 9, scope: !238)
!263 = !DILocation(line: 15, column: 9, scope: !242)
!264 = !DILocation(line: 15, column: 7, scope: !240)
!265 = !DILocation(line: 15, column: 3, scope: !240)
!266 = !DILocation(line: 17, column: 10, scope: !240)
!267 = !DILocation(line: 17, column: 14, scope: !240)
!268 = !DILocation(line: 17, column: 7, scope: !240)
!269 = !DILocation(line: 19, column: 2, scope: !224)
!270 = !DILocation(line: 19, column: 2, scope: !244)
!271 = !DILocation(line: 20, column: 1, scope: !224)
!272 = distinct !DISubprogram(name: "rdmsrl_on_cpu", scope: !3, file: !3, line: 52, type: !273, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !276)
!273 = !DISubroutineType(types: !274)
!274 = !{!19, !7, !32, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!276 = !{!277, !278, !279, !280, !281}
!277 = !DILocalVariable(name: "cpu", arg: 1, scope: !272, file: !3, line: 52, type: !7)
!278 = !DILocalVariable(name: "msr_no", arg: 2, scope: !272, file: !3, line: 52, type: !32)
!279 = !DILocalVariable(name: "q", arg: 3, scope: !272, file: !3, line: 52, type: !275)
!280 = !DILocalVariable(name: "err", scope: !272, file: !3, line: 54, type: !19)
!281 = !DILocalVariable(name: "rv", scope: !272, file: !3, line: 55, type: !89)
!282 = !DILocation(line: 52, column: 32, scope: !272)
!283 = !DILocation(line: 52, column: 41, scope: !272)
!284 = !DILocation(line: 52, column: 54, scope: !272)
!285 = !DILocation(line: 54, column: 2, scope: !272)
!286 = !DILocation(line: 54, column: 6, scope: !272)
!287 = !DILocation(line: 55, column: 2, scope: !272)
!288 = !DILocation(line: 55, column: 18, scope: !272)
!289 = !DILocation(line: 57, column: 2, scope: !272)
!290 = !DILocation(line: 59, column: 14, scope: !272)
!291 = !DILocation(line: 59, column: 5, scope: !272)
!292 = !DILocation(line: 59, column: 12, scope: !272)
!293 = !DILocation(line: 60, column: 33, scope: !272)
!294 = !DILocation(line: 60, column: 8, scope: !272)
!295 = !DILocation(line: 60, column: 6, scope: !272)
!296 = !DILocation(line: 61, column: 10, scope: !272)
!297 = !DILocation(line: 61, column: 14, scope: !272)
!298 = !DILocation(line: 61, column: 3, scope: !272)
!299 = !DILocation(line: 61, column: 5, scope: !272)
!300 = !DILocation(line: 63, column: 9, scope: !272)
!301 = !DILocation(line: 64, column: 1, scope: !272)
!302 = !DILocation(line: 63, column: 2, scope: !272)
!303 = distinct !DISubprogram(name: "wrmsr_on_cpu", scope: !3, file: !3, line: 67, type: !304, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !306)
!304 = !DISubroutineType(types: !305)
!305 = !{!19, !7, !32, !32, !32}
!306 = !{!307, !308, !309, !310, !311, !312}
!307 = !DILocalVariable(name: "cpu", arg: 1, scope: !303, file: !3, line: 67, type: !7)
!308 = !DILocalVariable(name: "msr_no", arg: 2, scope: !303, file: !3, line: 67, type: !32)
!309 = !DILocalVariable(name: "l", arg: 3, scope: !303, file: !3, line: 67, type: !32)
!310 = !DILocalVariable(name: "h", arg: 4, scope: !303, file: !3, line: 67, type: !32)
!311 = !DILocalVariable(name: "err", scope: !303, file: !3, line: 69, type: !19)
!312 = !DILocalVariable(name: "rv", scope: !303, file: !3, line: 70, type: !89)
!313 = !DILocation(line: 67, column: 31, scope: !303)
!314 = !DILocation(line: 67, column: 40, scope: !303)
!315 = !DILocation(line: 67, column: 52, scope: !303)
!316 = !DILocation(line: 67, column: 59, scope: !303)
!317 = !DILocation(line: 69, column: 2, scope: !303)
!318 = !DILocation(line: 69, column: 6, scope: !303)
!319 = !DILocation(line: 70, column: 2, scope: !303)
!320 = !DILocation(line: 70, column: 18, scope: !303)
!321 = !DILocation(line: 72, column: 2, scope: !303)
!322 = !DILocation(line: 74, column: 14, scope: !303)
!323 = !DILocation(line: 74, column: 5, scope: !303)
!324 = !DILocation(line: 74, column: 12, scope: !303)
!325 = !DILocation(line: 75, column: 13, scope: !303)
!326 = !DILocation(line: 75, column: 5, scope: !303)
!327 = !DILocation(line: 75, column: 9, scope: !303)
!328 = !DILocation(line: 75, column: 11, scope: !303)
!329 = !DILocation(line: 76, column: 13, scope: !303)
!330 = !DILocation(line: 76, column: 5, scope: !303)
!331 = !DILocation(line: 76, column: 9, scope: !303)
!332 = !DILocation(line: 76, column: 11, scope: !303)
!333 = !DILocation(line: 77, column: 33, scope: !303)
!334 = !DILocation(line: 77, column: 8, scope: !303)
!335 = !DILocation(line: 77, column: 6, scope: !303)
!336 = !DILocation(line: 79, column: 9, scope: !303)
!337 = !DILocation(line: 80, column: 1, scope: !303)
!338 = !DILocation(line: 79, column: 2, scope: !303)
!339 = distinct !DISubprogram(name: "__wrmsr_on_cpu", scope: !3, file: !3, line: 22, type: !81, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !340)
!340 = !{!341, !342, !343, !344, !345, !347, !349, !351, !355}
!341 = !DILocalVariable(name: "info", arg: 1, scope: !339, file: !3, line: 22, type: !12)
!342 = !DILocalVariable(name: "rv", scope: !339, file: !3, line: 24, type: !228)
!343 = !DILocalVariable(name: "reg", scope: !339, file: !3, line: 25, type: !21)
!344 = !DILocalVariable(name: "this_cpu", scope: !339, file: !3, line: 26, type: !19)
!345 = !DILocalVariable(name: "pscr_ret__", scope: !346, file: !3, line: 26, type: !19)
!346 = distinct !DILexicalBlock(scope: !339, file: !3, line: 26, column: 17)
!347 = !DILocalVariable(name: "__vpp_verify", scope: !348, file: !3, line: 26, type: !103)
!348 = distinct !DILexicalBlock(scope: !346, file: !3, line: 26, column: 17)
!349 = !DILocalVariable(name: "pfo_val__", scope: !350, file: !3, line: 26, type: !32)
!350 = distinct !DILexicalBlock(scope: !346, file: !3, line: 26, column: 17)
!351 = !DILocalVariable(name: "__vpp_verify", scope: !352, file: !3, line: 29, type: !103)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 29, column: 9)
!353 = distinct !DILexicalBlock(scope: !354, file: !3, line: 29, column: 9)
!354 = distinct !DILexicalBlock(scope: !339, file: !3, line: 28, column: 6)
!355 = !DILocalVariable(name: "__ptr", scope: !356, file: !3, line: 29, type: !20)
!356 = distinct !DILexicalBlock(scope: !353, file: !3, line: 29, column: 9)
!357 = !DILocation(line: 22, column: 34, scope: !339)
!358 = !DILocation(line: 24, column: 2, scope: !339)
!359 = !DILocation(line: 24, column: 19, scope: !339)
!360 = !DILocation(line: 24, column: 24, scope: !339)
!361 = !DILocation(line: 25, column: 2, scope: !339)
!362 = !DILocation(line: 25, column: 14, scope: !339)
!363 = !DILocation(line: 26, column: 2, scope: !339)
!364 = !DILocation(line: 26, column: 6, scope: !339)
!365 = !DILocation(line: 26, column: 17, scope: !346)
!366 = !DILocation(line: 26, column: 17, scope: !348)
!367 = !DILocation(line: 26, column: 17, scope: !350)
!368 = !{i64 2149803013}
!369 = !DILocation(line: 26, column: 17, scope: !339)
!370 = !DILocation(line: 28, column: 6, scope: !354)
!371 = !DILocation(line: 28, column: 10, scope: !354)
!372 = !DILocation(line: 28, column: 6, scope: !339)
!373 = !DILocation(line: 29, column: 9, scope: !353)
!374 = !DILocation(line: 29, column: 9, scope: !352)
!375 = !DILocation(line: 29, column: 9, scope: !356)
!376 = !DILocation(line: 29, column: 7, scope: !354)
!377 = !DILocation(line: 29, column: 3, scope: !354)
!378 = !DILocation(line: 31, column: 10, scope: !354)
!379 = !DILocation(line: 31, column: 14, scope: !354)
!380 = !DILocation(line: 31, column: 7, scope: !354)
!381 = !DILocation(line: 33, column: 8, scope: !339)
!382 = !DILocation(line: 33, column: 12, scope: !339)
!383 = !DILocation(line: 33, column: 20, scope: !339)
!384 = !DILocation(line: 33, column: 25, scope: !339)
!385 = !DILocation(line: 33, column: 28, scope: !339)
!386 = !DILocation(line: 33, column: 33, scope: !339)
!387 = !DILocation(line: 33, column: 2, scope: !339)
!388 = !DILocation(line: 34, column: 1, scope: !339)
!389 = distinct !DISubprogram(name: "wrmsrl_on_cpu", scope: !3, file: !3, line: 83, type: !390, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !392)
!390 = !DISubroutineType(types: !391)
!391 = !{!19, !7, !32, !13}
!392 = !{!393, !394, !395, !396, !397}
!393 = !DILocalVariable(name: "cpu", arg: 1, scope: !389, file: !3, line: 83, type: !7)
!394 = !DILocalVariable(name: "msr_no", arg: 2, scope: !389, file: !3, line: 83, type: !32)
!395 = !DILocalVariable(name: "q", arg: 3, scope: !389, file: !3, line: 83, type: !13)
!396 = !DILocalVariable(name: "err", scope: !389, file: !3, line: 85, type: !19)
!397 = !DILocalVariable(name: "rv", scope: !389, file: !3, line: 86, type: !89)
!398 = !DILocation(line: 83, column: 32, scope: !389)
!399 = !DILocation(line: 83, column: 41, scope: !389)
!400 = !DILocation(line: 83, column: 53, scope: !389)
!401 = !DILocation(line: 85, column: 2, scope: !389)
!402 = !DILocation(line: 85, column: 6, scope: !389)
!403 = !DILocation(line: 86, column: 2, scope: !389)
!404 = !DILocation(line: 86, column: 18, scope: !389)
!405 = !DILocation(line: 88, column: 2, scope: !389)
!406 = !DILocation(line: 90, column: 14, scope: !389)
!407 = !DILocation(line: 90, column: 5, scope: !389)
!408 = !DILocation(line: 90, column: 12, scope: !389)
!409 = !DILocation(line: 91, column: 13, scope: !389)
!410 = !DILocation(line: 91, column: 5, scope: !389)
!411 = !DILocation(line: 91, column: 9, scope: !389)
!412 = !DILocation(line: 91, column: 11, scope: !389)
!413 = !DILocation(line: 93, column: 33, scope: !389)
!414 = !DILocation(line: 93, column: 8, scope: !389)
!415 = !DILocation(line: 93, column: 6, scope: !389)
!416 = !DILocation(line: 95, column: 9, scope: !389)
!417 = !DILocation(line: 96, column: 1, scope: !389)
!418 = !DILocation(line: 95, column: 2, scope: !389)
!419 = distinct !DISubprogram(name: "rdmsr_on_cpus", scope: !3, file: !3, line: 127, type: !420, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !71, !32, !21}
!422 = !{!423, !424, !425}
!423 = !DILocalVariable(name: "mask", arg: 1, scope: !419, file: !3, line: 127, type: !71)
!424 = !DILocalVariable(name: "msr_no", arg: 2, scope: !419, file: !3, line: 127, type: !32)
!425 = !DILocalVariable(name: "msrs", arg: 3, scope: !419, file: !3, line: 127, type: !21)
!426 = !DILocation(line: 127, column: 42, scope: !419)
!427 = !DILocation(line: 127, column: 52, scope: !419)
!428 = !DILocation(line: 127, column: 72, scope: !419)
!429 = !DILocation(line: 129, column: 18, scope: !419)
!430 = !DILocation(line: 129, column: 24, scope: !419)
!431 = !DILocation(line: 129, column: 32, scope: !419)
!432 = !DILocation(line: 129, column: 2, scope: !419)
!433 = !DILocation(line: 130, column: 1, scope: !419)
!434 = !DILocation(line: 99, column: 51, scope: !68)
!435 = !DILocation(line: 99, column: 61, scope: !68)
!436 = !DILocation(line: 100, column: 20, scope: !68)
!437 = !DILocation(line: 101, column: 15, scope: !68)
!438 = !DILocation(line: 103, column: 2, scope: !68)
!439 = !DILocation(line: 103, column: 18, scope: !68)
!440 = !DILocation(line: 104, column: 2, scope: !68)
!441 = !DILocation(line: 104, column: 6, scope: !68)
!442 = !DILocation(line: 106, column: 2, scope: !68)
!443 = !DILocation(line: 108, column: 14, scope: !68)
!444 = !DILocation(line: 108, column: 5, scope: !68)
!445 = !DILocation(line: 108, column: 12, scope: !68)
!446 = !DILocation(line: 109, column: 14, scope: !68)
!447 = !DILocation(line: 109, column: 5, scope: !68)
!448 = !DILocation(line: 109, column: 12, scope: !68)
!449 = !DILocation(line: 111, column: 13, scope: !100)
!450 = !DILocation(line: 111, column: 13, scope: !451)
!451 = distinct !DILexicalBlock(scope: !100, file: !3, line: 111, column: 13)
!452 = !{i64 2149815368}
!453 = !DILocation(line: 111, column: 13, scope: !99)
!454 = !DILocation(line: 111, column: 13, scope: !98)
!455 = !DILocation(line: 111, column: 13, scope: !102)
!456 = !DILocation(line: 111, column: 13, scope: !106)
!457 = !{i64 2149818006}
!458 = !DILocation(line: 111, column: 11, scope: !68)
!459 = !DILocation(line: 113, column: 23, scope: !460)
!460 = distinct !DILexicalBlock(scope: !68, file: !3, line: 113, column: 6)
!461 = !DILocation(line: 113, column: 33, scope: !460)
!462 = !DILocation(line: 113, column: 6, scope: !460)
!463 = !DILocation(line: 113, column: 6, scope: !68)
!464 = !DILocation(line: 114, column: 3, scope: !460)
!465 = !DILocation(line: 116, column: 25, scope: !68)
!466 = !DILocation(line: 116, column: 31, scope: !68)
!467 = !DILocation(line: 116, column: 2, scope: !68)
!468 = !DILocation(line: 117, column: 2, scope: !68)
!469 = !DILocation(line: 117, column: 2, scope: !470)
!470 = distinct !DILexicalBlock(scope: !68, file: !3, line: 117, column: 2)
!471 = !{i64 2149818923}
!472 = !DILocation(line: 117, column: 2, scope: !473)
!473 = distinct !DILexicalBlock(scope: !470, file: !3, line: 117, column: 2)
!474 = !DILocation(line: 117, column: 2, scope: !475)
!475 = distinct !DILexicalBlock(scope: !473, file: !3, line: 117, column: 2)
!476 = !{i64 2149819105}
!477 = !DILocation(line: 118, column: 1, scope: !68)
!478 = distinct !DISubprogram(name: "wrmsr_on_cpus", scope: !3, file: !3, line: 141, type: !420, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !479)
!479 = !{!480, !481, !482}
!480 = !DILocalVariable(name: "mask", arg: 1, scope: !478, file: !3, line: 141, type: !71)
!481 = !DILocalVariable(name: "msr_no", arg: 2, scope: !478, file: !3, line: 141, type: !32)
!482 = !DILocalVariable(name: "msrs", arg: 3, scope: !478, file: !3, line: 141, type: !21)
!483 = !DILocation(line: 141, column: 42, scope: !478)
!484 = !DILocation(line: 141, column: 52, scope: !478)
!485 = !DILocation(line: 141, column: 72, scope: !478)
!486 = !DILocation(line: 143, column: 18, scope: !478)
!487 = !DILocation(line: 143, column: 24, scope: !478)
!488 = !DILocation(line: 143, column: 32, scope: !478)
!489 = !DILocation(line: 143, column: 2, scope: !478)
!490 = !DILocation(line: 144, column: 1, scope: !478)
!491 = distinct !DISubprogram(name: "rdmsr_safe_on_cpu", scope: !3, file: !3, line: 169, type: !183, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !492)
!492 = !{!493, !494, !495, !496, !497, !502, !525}
!493 = !DILocalVariable(name: "cpu", arg: 1, scope: !491, file: !3, line: 169, type: !7)
!494 = !DILocalVariable(name: "msr_no", arg: 2, scope: !491, file: !3, line: 169, type: !32)
!495 = !DILocalVariable(name: "l", arg: 3, scope: !491, file: !3, line: 169, type: !185)
!496 = !DILocalVariable(name: "h", arg: 4, scope: !491, file: !3, line: 169, type: !185)
!497 = !DILocalVariable(name: "rv", scope: !491, file: !3, line: 171, type: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msr_info_completion", file: !3, line: 147, size: 512, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "msr", scope: !498, file: !3, line: 148, baseType: !89, size: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !498, file: !3, line: 149, baseType: !114, size: 256, offset: 256)
!502 = !DILocalVariable(name: "csd", scope: !491, file: !3, line: 172, type: !503)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "call_single_data_t", file: !220, line: 33, baseType: !504, align: 256)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_data", file: !220, line: 23, size: 256, elements: !505)
!505 = !{!506, !523, !524}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !504, file: !220, line: 24, baseType: !507, size: 128)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !508, line: 58, size: 128, elements: !509)
!508 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!509 = !{!510, !516, !521, !522}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !507, file: !508, line: 59, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !512, line: 60, size: 64, elements: !513)
!512 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !511, file: !512, line: 61, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !507, file: !508, line: 60, baseType: !517, size: 32, offset: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !507, file: !508, line: 60, size: 32, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !517, file: !508, line: 61, baseType: !7, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !517, file: !508, line: 62, baseType: !135, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !507, file: !508, line: 65, baseType: !152, size: 16, offset: 96)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !507, file: !508, line: 65, baseType: !152, size: 16, offset: 112)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !504, file: !220, line: 25, baseType: !223, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !504, file: !220, line: 26, baseType: !12, size: 64, offset: 192)
!525 = !DILocalVariable(name: "err", scope: !491, file: !3, line: 173, type: !19)
!526 = !DILocation(line: 169, column: 36, scope: !491)
!527 = !DILocation(line: 169, column: 45, scope: !491)
!528 = !DILocation(line: 169, column: 58, scope: !491)
!529 = !DILocation(line: 169, column: 66, scope: !491)
!530 = !DILocation(line: 171, column: 2, scope: !491)
!531 = !DILocation(line: 171, column: 29, scope: !491)
!532 = !DILocation(line: 172, column: 2, scope: !491)
!533 = !DILocation(line: 172, column: 21, scope: !491)
!534 = !DILocation(line: 173, column: 2, scope: !491)
!535 = !DILocation(line: 173, column: 6, scope: !491)
!536 = !DILocation(line: 175, column: 2, scope: !491)
!537 = !DILocation(line: 175, column: 2, scope: !538)
!538 = distinct !DILexicalBlock(scope: !491, file: !3, line: 175, column: 2)
!539 = !DILocation(line: 177, column: 2, scope: !491)
!540 = !DILocation(line: 178, column: 22, scope: !491)
!541 = !DILocation(line: 178, column: 2, scope: !491)
!542 = !DILocation(line: 179, column: 18, scope: !491)
!543 = !DILocation(line: 179, column: 5, scope: !491)
!544 = !DILocation(line: 179, column: 9, scope: !491)
!545 = !DILocation(line: 179, column: 16, scope: !491)
!546 = !DILocation(line: 181, column: 39, scope: !491)
!547 = !DILocation(line: 181, column: 8, scope: !491)
!548 = !DILocation(line: 181, column: 6, scope: !491)
!549 = !DILocation(line: 182, column: 7, scope: !550)
!550 = distinct !DILexicalBlock(scope: !491, file: !3, line: 182, column: 6)
!551 = !DILocation(line: 182, column: 6, scope: !491)
!552 = !DILocation(line: 183, column: 27, scope: !553)
!553 = distinct !DILexicalBlock(scope: !550, file: !3, line: 182, column: 12)
!554 = !DILocation(line: 183, column: 3, scope: !553)
!555 = !DILocation(line: 184, column: 12, scope: !553)
!556 = !DILocation(line: 184, column: 16, scope: !553)
!557 = !DILocation(line: 184, column: 7, scope: !553)
!558 = !DILocation(line: 185, column: 2, scope: !553)
!559 = !DILocation(line: 186, column: 10, scope: !491)
!560 = !DILocation(line: 186, column: 14, scope: !491)
!561 = !DILocation(line: 186, column: 18, scope: !491)
!562 = !DILocation(line: 186, column: 3, scope: !491)
!563 = !DILocation(line: 186, column: 5, scope: !491)
!564 = !DILocation(line: 187, column: 10, scope: !491)
!565 = !DILocation(line: 187, column: 14, scope: !491)
!566 = !DILocation(line: 187, column: 18, scope: !491)
!567 = !DILocation(line: 187, column: 3, scope: !491)
!568 = !DILocation(line: 187, column: 5, scope: !491)
!569 = !DILocation(line: 189, column: 9, scope: !491)
!570 = !DILocation(line: 190, column: 1, scope: !491)
!571 = !DILocation(line: 189, column: 2, scope: !491)
!572 = distinct !DISubprogram(name: "__rdmsr_safe_on_cpu", scope: !3, file: !3, line: 154, type: !81, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !573)
!573 = !{!574, !575, !577, !579}
!574 = !DILocalVariable(name: "info", arg: 1, scope: !572, file: !3, line: 154, type: !12)
!575 = !DILocalVariable(name: "rv", scope: !572, file: !3, line: 156, type: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!577 = !DILocalVariable(name: "__err", scope: !578, file: !3, line: 158, type: !19)
!578 = distinct !DILexicalBlock(scope: !572, file: !3, line: 158, column: 16)
!579 = !DILocalVariable(name: "__val", scope: !578, file: !3, line: 158, type: !13)
!580 = !DILocation(line: 154, column: 39, scope: !572)
!581 = !DILocation(line: 156, column: 2, scope: !572)
!582 = !DILocation(line: 156, column: 30, scope: !572)
!583 = !DILocation(line: 156, column: 35, scope: !572)
!584 = !DILocation(line: 158, column: 16, scope: !578)
!585 = !DILocation(line: 158, column: 16, scope: !572)
!586 = !DILocation(line: 158, column: 2, scope: !572)
!587 = !DILocation(line: 158, column: 6, scope: !572)
!588 = !DILocation(line: 158, column: 10, scope: !572)
!589 = !DILocation(line: 158, column: 14, scope: !572)
!590 = !DILocation(line: 159, column: 12, scope: !572)
!591 = !DILocation(line: 159, column: 16, scope: !572)
!592 = !DILocation(line: 159, column: 2, scope: !572)
!593 = !DILocation(line: 160, column: 1, scope: !572)
!594 = !DILocation(line: 84, column: 55, scope: !109)
!595 = !DILocation(line: 86, column: 2, scope: !109)
!596 = !DILocation(line: 86, column: 5, scope: !109)
!597 = !DILocation(line: 86, column: 10, scope: !109)
!598 = !DILocation(line: 87, column: 2, scope: !109)
!599 = !DILocation(line: 87, column: 2, scope: !600)
!600 = distinct !DILexicalBlock(scope: !109, file: !110, line: 87, column: 2)
!601 = !DILocation(line: 88, column: 1, scope: !109)
!602 = !DISubprogram(name: "smp_call_function_single_async", scope: !220, file: !220, line: 56, type: !603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!603 = !DISubroutineType(types: !604)
!604 = !{!19, !19, !605}
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!606 = !DISubprogram(name: "wait_for_completion", scope: !110, file: !110, line: 102, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!607 = distinct !DISubprogram(name: "wrmsr_safe_on_cpu", scope: !3, file: !3, line: 193, type: !304, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !608)
!608 = !{!609, !610, !611, !612, !613, !614}
!609 = !DILocalVariable(name: "cpu", arg: 1, scope: !607, file: !3, line: 193, type: !7)
!610 = !DILocalVariable(name: "msr_no", arg: 2, scope: !607, file: !3, line: 193, type: !32)
!611 = !DILocalVariable(name: "l", arg: 3, scope: !607, file: !3, line: 193, type: !32)
!612 = !DILocalVariable(name: "h", arg: 4, scope: !607, file: !3, line: 193, type: !32)
!613 = !DILocalVariable(name: "err", scope: !607, file: !3, line: 195, type: !19)
!614 = !DILocalVariable(name: "rv", scope: !607, file: !3, line: 196, type: !89)
!615 = !DILocation(line: 193, column: 36, scope: !607)
!616 = !DILocation(line: 193, column: 45, scope: !607)
!617 = !DILocation(line: 193, column: 57, scope: !607)
!618 = !DILocation(line: 193, column: 64, scope: !607)
!619 = !DILocation(line: 195, column: 2, scope: !607)
!620 = !DILocation(line: 195, column: 6, scope: !607)
!621 = !DILocation(line: 196, column: 2, scope: !607)
!622 = !DILocation(line: 196, column: 18, scope: !607)
!623 = !DILocation(line: 198, column: 2, scope: !607)
!624 = !DILocation(line: 200, column: 14, scope: !607)
!625 = !DILocation(line: 200, column: 5, scope: !607)
!626 = !DILocation(line: 200, column: 12, scope: !607)
!627 = !DILocation(line: 201, column: 13, scope: !607)
!628 = !DILocation(line: 201, column: 5, scope: !607)
!629 = !DILocation(line: 201, column: 9, scope: !607)
!630 = !DILocation(line: 201, column: 11, scope: !607)
!631 = !DILocation(line: 202, column: 13, scope: !607)
!632 = !DILocation(line: 202, column: 5, scope: !607)
!633 = !DILocation(line: 202, column: 9, scope: !607)
!634 = !DILocation(line: 202, column: 11, scope: !607)
!635 = !DILocation(line: 203, column: 33, scope: !607)
!636 = !DILocation(line: 203, column: 8, scope: !607)
!637 = !DILocation(line: 203, column: 6, scope: !607)
!638 = !DILocation(line: 205, column: 9, scope: !607)
!639 = !DILocation(line: 205, column: 15, scope: !607)
!640 = !DILocation(line: 205, column: 24, scope: !607)
!641 = !DILocation(line: 206, column: 1, scope: !607)
!642 = !DILocation(line: 205, column: 2, scope: !607)
!643 = distinct !DISubprogram(name: "__wrmsr_safe_on_cpu", scope: !3, file: !3, line: 162, type: !81, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !644)
!644 = !{!645, !646}
!645 = !DILocalVariable(name: "info", arg: 1, scope: !643, file: !3, line: 162, type: !12)
!646 = !DILocalVariable(name: "rv", scope: !643, file: !3, line: 164, type: !228)
!647 = !DILocation(line: 162, column: 39, scope: !643)
!648 = !DILocation(line: 164, column: 2, scope: !643)
!649 = !DILocation(line: 164, column: 19, scope: !643)
!650 = !DILocation(line: 164, column: 24, scope: !643)
!651 = !DILocation(line: 166, column: 23, scope: !643)
!652 = !DILocation(line: 166, column: 27, scope: !643)
!653 = !DILocation(line: 166, column: 35, scope: !643)
!654 = !DILocation(line: 166, column: 39, scope: !643)
!655 = !DILocation(line: 166, column: 43, scope: !643)
!656 = !DILocation(line: 166, column: 46, scope: !643)
!657 = !DILocation(line: 166, column: 50, scope: !643)
!658 = !DILocation(line: 166, column: 54, scope: !643)
!659 = !DILocation(line: 166, column: 12, scope: !643)
!660 = !DILocation(line: 166, column: 2, scope: !643)
!661 = !DILocation(line: 166, column: 6, scope: !643)
!662 = !DILocation(line: 166, column: 10, scope: !643)
!663 = !DILocation(line: 167, column: 1, scope: !643)
!664 = distinct !DISubprogram(name: "wrmsrl_safe_on_cpu", scope: !3, file: !3, line: 209, type: !390, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !665)
!665 = !{!666, !667, !668, !669, !670}
!666 = !DILocalVariable(name: "cpu", arg: 1, scope: !664, file: !3, line: 209, type: !7)
!667 = !DILocalVariable(name: "msr_no", arg: 2, scope: !664, file: !3, line: 209, type: !32)
!668 = !DILocalVariable(name: "q", arg: 3, scope: !664, file: !3, line: 209, type: !13)
!669 = !DILocalVariable(name: "err", scope: !664, file: !3, line: 211, type: !19)
!670 = !DILocalVariable(name: "rv", scope: !664, file: !3, line: 212, type: !89)
!671 = !DILocation(line: 209, column: 37, scope: !664)
!672 = !DILocation(line: 209, column: 46, scope: !664)
!673 = !DILocation(line: 209, column: 58, scope: !664)
!674 = !DILocation(line: 211, column: 2, scope: !664)
!675 = !DILocation(line: 211, column: 6, scope: !664)
!676 = !DILocation(line: 212, column: 2, scope: !664)
!677 = !DILocation(line: 212, column: 18, scope: !664)
!678 = !DILocation(line: 214, column: 2, scope: !664)
!679 = !DILocation(line: 216, column: 14, scope: !664)
!680 = !DILocation(line: 216, column: 5, scope: !664)
!681 = !DILocation(line: 216, column: 12, scope: !664)
!682 = !DILocation(line: 217, column: 13, scope: !664)
!683 = !DILocation(line: 217, column: 5, scope: !664)
!684 = !DILocation(line: 217, column: 9, scope: !664)
!685 = !DILocation(line: 217, column: 11, scope: !664)
!686 = !DILocation(line: 219, column: 33, scope: !664)
!687 = !DILocation(line: 219, column: 8, scope: !664)
!688 = !DILocation(line: 219, column: 6, scope: !664)
!689 = !DILocation(line: 221, column: 9, scope: !664)
!690 = !DILocation(line: 221, column: 15, scope: !664)
!691 = !DILocation(line: 221, column: 24, scope: !664)
!692 = !DILocation(line: 222, column: 1, scope: !664)
!693 = !DILocation(line: 221, column: 2, scope: !664)
!694 = distinct !DISubprogram(name: "rdmsrl_safe_on_cpu", scope: !3, file: !3, line: 225, type: !273, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !695)
!695 = !{!696, !697, !698, !699, !700, !701}
!696 = !DILocalVariable(name: "cpu", arg: 1, scope: !694, file: !3, line: 225, type: !7)
!697 = !DILocalVariable(name: "msr_no", arg: 2, scope: !694, file: !3, line: 225, type: !32)
!698 = !DILocalVariable(name: "q", arg: 3, scope: !694, file: !3, line: 225, type: !275)
!699 = !DILocalVariable(name: "low", scope: !694, file: !3, line: 227, type: !32)
!700 = !DILocalVariable(name: "high", scope: !694, file: !3, line: 227, type: !32)
!701 = !DILocalVariable(name: "err", scope: !694, file: !3, line: 228, type: !19)
!702 = !DILocation(line: 225, column: 37, scope: !694)
!703 = !DILocation(line: 225, column: 46, scope: !694)
!704 = !DILocation(line: 225, column: 59, scope: !694)
!705 = !DILocation(line: 227, column: 2, scope: !694)
!706 = !DILocation(line: 227, column: 6, scope: !694)
!707 = !DILocation(line: 227, column: 11, scope: !694)
!708 = !DILocation(line: 228, column: 2, scope: !694)
!709 = !DILocation(line: 228, column: 6, scope: !694)
!710 = !DILocation(line: 230, column: 26, scope: !694)
!711 = !DILocation(line: 230, column: 31, scope: !694)
!712 = !DILocation(line: 230, column: 8, scope: !694)
!713 = !DILocation(line: 230, column: 6, scope: !694)
!714 = !DILocation(line: 231, column: 12, scope: !694)
!715 = !DILocation(line: 231, column: 7, scope: !694)
!716 = !DILocation(line: 231, column: 17, scope: !694)
!717 = !DILocation(line: 231, column: 25, scope: !694)
!718 = !DILocation(line: 231, column: 23, scope: !694)
!719 = !DILocation(line: 231, column: 3, scope: !694)
!720 = !DILocation(line: 231, column: 5, scope: !694)
!721 = !DILocation(line: 233, column: 9, scope: !694)
!722 = !DILocation(line: 234, column: 1, scope: !694)
!723 = !DILocation(line: 233, column: 2, scope: !694)
!724 = distinct !DISubprogram(name: "rdmsr_safe_regs_on_cpu", scope: !3, file: !3, line: 255, type: !725, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{!19, !7, !185}
!727 = !{!728, !729, !730, !731}
!728 = !DILocalVariable(name: "cpu", arg: 1, scope: !724, file: !3, line: 255, type: !7)
!729 = !DILocalVariable(name: "regs", arg: 2, scope: !724, file: !3, line: 255, type: !185)
!730 = !DILocalVariable(name: "err", scope: !724, file: !3, line: 257, type: !19)
!731 = !DILocalVariable(name: "rv", scope: !724, file: !3, line: 258, type: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msr_regs_info", file: !90, line: 22, size: 128, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !732, file: !90, line: 23, baseType: !185, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !732, file: !90, line: 24, baseType: !19, size: 32, offset: 64)
!736 = !DILocation(line: 255, column: 41, scope: !724)
!737 = !DILocation(line: 255, column: 50, scope: !724)
!738 = !DILocation(line: 257, column: 2, scope: !724)
!739 = !DILocation(line: 257, column: 6, scope: !724)
!740 = !DILocation(line: 258, column: 2, scope: !724)
!741 = !DILocation(line: 258, column: 23, scope: !724)
!742 = !DILocation(line: 260, column: 14, scope: !724)
!743 = !DILocation(line: 260, column: 5, scope: !724)
!744 = !DILocation(line: 260, column: 12, scope: !724)
!745 = !DILocation(line: 261, column: 5, scope: !724)
!746 = !DILocation(line: 261, column: 12, scope: !724)
!747 = !DILocation(line: 262, column: 33, scope: !724)
!748 = !DILocation(line: 262, column: 8, scope: !724)
!749 = !DILocation(line: 262, column: 6, scope: !724)
!750 = !DILocation(line: 264, column: 9, scope: !724)
!751 = !DILocation(line: 264, column: 15, scope: !724)
!752 = !DILocation(line: 264, column: 24, scope: !724)
!753 = !DILocation(line: 265, column: 1, scope: !724)
!754 = !DILocation(line: 264, column: 2, scope: !724)
!755 = distinct !DISubprogram(name: "__rdmsr_safe_regs_on_cpu", scope: !3, file: !3, line: 241, type: !81, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !756)
!756 = !{!757, !758}
!757 = !DILocalVariable(name: "info", arg: 1, scope: !755, file: !3, line: 241, type: !12)
!758 = !DILocalVariable(name: "rv", scope: !755, file: !3, line: 243, type: !759)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!760 = !DILocation(line: 241, column: 44, scope: !755)
!761 = !DILocation(line: 243, column: 2, scope: !755)
!762 = !DILocation(line: 243, column: 24, scope: !755)
!763 = !DILocation(line: 243, column: 29, scope: !755)
!764 = !DILocation(line: 245, column: 28, scope: !755)
!765 = !DILocation(line: 245, column: 32, scope: !755)
!766 = !DILocation(line: 245, column: 12, scope: !755)
!767 = !DILocation(line: 245, column: 2, scope: !755)
!768 = !DILocation(line: 245, column: 6, scope: !755)
!769 = !DILocation(line: 245, column: 10, scope: !755)
!770 = !DILocation(line: 246, column: 1, scope: !755)
!771 = distinct !DISubprogram(name: "wrmsr_safe_regs_on_cpu", scope: !3, file: !3, line: 268, type: !725, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !772)
!772 = !{!773, !774, !775, !776}
!773 = !DILocalVariable(name: "cpu", arg: 1, scope: !771, file: !3, line: 268, type: !7)
!774 = !DILocalVariable(name: "regs", arg: 2, scope: !771, file: !3, line: 268, type: !185)
!775 = !DILocalVariable(name: "err", scope: !771, file: !3, line: 270, type: !19)
!776 = !DILocalVariable(name: "rv", scope: !771, file: !3, line: 271, type: !732)
!777 = !DILocation(line: 268, column: 41, scope: !771)
!778 = !DILocation(line: 268, column: 50, scope: !771)
!779 = !DILocation(line: 270, column: 2, scope: !771)
!780 = !DILocation(line: 270, column: 6, scope: !771)
!781 = !DILocation(line: 271, column: 2, scope: !771)
!782 = !DILocation(line: 271, column: 23, scope: !771)
!783 = !DILocation(line: 273, column: 12, scope: !771)
!784 = !DILocation(line: 273, column: 5, scope: !771)
!785 = !DILocation(line: 273, column: 10, scope: !771)
!786 = !DILocation(line: 274, column: 5, scope: !771)
!787 = !DILocation(line: 274, column: 10, scope: !771)
!788 = !DILocation(line: 275, column: 33, scope: !771)
!789 = !DILocation(line: 275, column: 8, scope: !771)
!790 = !DILocation(line: 275, column: 6, scope: !771)
!791 = !DILocation(line: 277, column: 9, scope: !771)
!792 = !DILocation(line: 277, column: 15, scope: !771)
!793 = !DILocation(line: 277, column: 24, scope: !771)
!794 = !DILocation(line: 278, column: 1, scope: !771)
!795 = !DILocation(line: 277, column: 2, scope: !771)
!796 = distinct !DISubprogram(name: "__wrmsr_safe_regs_on_cpu", scope: !3, file: !3, line: 248, type: !81, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !797)
!797 = !{!798, !799}
!798 = !DILocalVariable(name: "info", arg: 1, scope: !796, file: !3, line: 248, type: !12)
!799 = !DILocalVariable(name: "rv", scope: !796, file: !3, line: 250, type: !759)
!800 = !DILocation(line: 248, column: 44, scope: !796)
!801 = !DILocation(line: 250, column: 2, scope: !796)
!802 = !DILocation(line: 250, column: 24, scope: !796)
!803 = !DILocation(line: 250, column: 29, scope: !796)
!804 = !DILocation(line: 252, column: 28, scope: !796)
!805 = !DILocation(line: 252, column: 32, scope: !796)
!806 = !DILocation(line: 252, column: 12, scope: !796)
!807 = !DILocation(line: 252, column: 2, scope: !796)
!808 = !DILocation(line: 252, column: 6, scope: !796)
!809 = !DILocation(line: 252, column: 10, scope: !796)
!810 = !DILocation(line: 253, column: 1, scope: !796)
!811 = distinct !DISubprogram(name: "native_read_msr", scope: !90, file: !90, line: 114, type: !812, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !814)
!812 = !DISubroutineType(types: !813)
!813 = !{!17, !7}
!814 = !{!815, !816}
!815 = !DILocalVariable(name: "msr", arg: 1, scope: !811, file: !90, line: 114, type: !7)
!816 = !DILocalVariable(name: "val", scope: !811, file: !90, line: 116, type: !17)
!817 = !DILocation(line: 114, column: 63, scope: !811)
!818 = !DILocation(line: 116, column: 2, scope: !811)
!819 = !DILocation(line: 116, column: 21, scope: !811)
!820 = !DILocation(line: 118, column: 16, scope: !811)
!821 = !DILocation(line: 118, column: 8, scope: !811)
!822 = !DILocation(line: 118, column: 6, scope: !811)
!823 = !DILocation(line: 120, column: 6, scope: !824)
!824 = distinct !DILexicalBlock(scope: !811, file: !90, line: 120, column: 6)
!825 = !DILocation(line: 120, column: 6, scope: !811)
!826 = !DILocation(line: 121, column: 21, scope: !824)
!827 = !DILocation(line: 121, column: 26, scope: !824)
!828 = !DILocation(line: 121, column: 3, scope: !824)
!829 = !DILocation(line: 123, column: 9, scope: !811)
!830 = !DILocation(line: 124, column: 1, scope: !811)
!831 = !DILocation(line: 123, column: 2, scope: !811)
!832 = distinct !DISubprogram(name: "__rdmsr", scope: !90, file: !90, line: 80, type: !812, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !833)
!833 = !{!834, !835, !836}
!834 = !DILocalVariable(name: "msr", arg: 1, scope: !832, file: !90, line: 80, type: !7)
!835 = !DILocalVariable(name: "low", scope: !832, file: !90, line: 82, type: !20)
!836 = !DILocalVariable(name: "high", scope: !832, file: !90, line: 82, type: !20)
!837 = !DILocation(line: 80, column: 64, scope: !832)
!838 = !DILocation(line: 82, column: 2, scope: !832)
!839 = !DILocation(line: 87, column: 45, scope: !832)
!840 = !DILocation(line: 84, column: 2, scope: !832)
!841 = !{i64 1118245, i64 1118266, i64 2149316018, i64 2149316062, i64 2149316085, i64 2149316118, i64 2149316149, i64 2149316188}
!842 = !DILocation(line: 89, column: 9, scope: !832)
!843 = !DILocation(line: 90, column: 1, scope: !832)
!844 = !DILocation(line: 89, column: 2, scope: !832)
!845 = distinct !DISubprogram(name: "static_key_false", scope: !846, file: !846, line: 205, type: !847, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !872)
!846 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!847 = !DISubroutineType(types: !848)
!848 = !{!849, !851}
!849 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !136, line: 35, baseType: !850)
!850 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !846, line: 85, size: 128, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !852, file: !846, line: 86, baseType: !135, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !846, line: 101, baseType: !856, size: 64, offset: 64)
!856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !846, line: 101, size: 64, elements: !857)
!857 = !{!858, !859, !869}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !856, file: !846, line: 102, baseType: !20, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !856, file: !846, line: 103, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !846, line: 117, size: 128, elements: !862)
!862 = !{!863, !866, !867}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !861, file: !846, line: 118, baseType: !864, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !14, line: 20, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !16, line: 26, baseType: !19)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !861, file: !846, line: 119, baseType: !864, size: 32, offset: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !861, file: !846, line: 120, baseType: !868, size: 64, offset: 64)
!868 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !856, file: !846, line: 104, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !846, line: 104, flags: DIFlagFwdDecl)
!872 = !{!873}
!873 = !DILocalVariable(name: "key", arg: 1, scope: !845, file: !846, line: 205, type: !851)
!874 = !DILocation(line: 205, column: 65, scope: !845)
!875 = !DILocation(line: 207, column: 28, scope: !845)
!876 = !DILocation(line: 207, column: 9, scope: !845)
!877 = !DILocation(line: 207, column: 2, scope: !845)
!878 = !DISubprogram(name: "do_trace_read_msr", scope: !90, file: !90, line: 65, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !7, !13, !19}
!881 = distinct !DISubprogram(name: "arch_static_branch", scope: !882, file: !882, line: 25, type: !883, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !885)
!882 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!883 = !DISubroutineType(types: !884)
!884 = !{!849, !851, !849}
!885 = !{!886, !887, !888}
!886 = !DILocalVariable(name: "key", arg: 1, scope: !881, file: !882, line: 25, type: !851)
!887 = !DILocalVariable(name: "branch", arg: 2, scope: !881, file: !882, line: 25, type: !849)
!888 = !DILabel(scope: !881, name: "l_yes", file: !882, line: 33)
!889 = !DILocation(line: 25, column: 67, scope: !881)
!890 = !DILocation(line: 25, column: 77, scope: !881)
!891 = !DILocation(line: 30, column: 13, scope: !881)
!892 = !DILocation(line: 30, column: 28, scope: !881)
!893 = !{i8 0, i8 2}
!894 = !DILocation(line: 30, column: 26, scope: !881)
!895 = !DILocation(line: 27, column: 2, scope: !881)
!896 = !{i64 1022609, i64 1022653, i64 2148507336, i64 2148507357, i64 2148507383, i64 2148507416, i64 2148507450, i64 2148507474}
!897 = !DILocation(line: 32, column: 2, scope: !881)
!898 = !DILocation(line: 33, column: 1, scope: !881)
!899 = !DILocation(line: 34, column: 2, scope: !881)
!900 = !DILocation(line: 35, column: 1, scope: !881)
!901 = distinct !DISubprogram(name: "wrmsr", scope: !90, file: !90, line: 252, type: !902, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !904)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !7, !32, !32}
!904 = !{!905, !906, !907}
!905 = !DILocalVariable(name: "msr", arg: 1, scope: !901, file: !90, line: 252, type: !7)
!906 = !DILocalVariable(name: "low", arg: 2, scope: !901, file: !90, line: 252, type: !32)
!907 = !DILocalVariable(name: "high", arg: 3, scope: !901, file: !90, line: 252, type: !32)
!908 = !DILocation(line: 252, column: 39, scope: !901)
!909 = !DILocation(line: 252, column: 48, scope: !901)
!910 = !DILocation(line: 252, column: 57, scope: !901)
!911 = !DILocation(line: 254, column: 19, scope: !901)
!912 = !DILocation(line: 254, column: 24, scope: !901)
!913 = !DILocation(line: 254, column: 29, scope: !901)
!914 = !DILocation(line: 254, column: 2, scope: !901)
!915 = !DILocation(line: 255, column: 1, scope: !901)
!916 = distinct !DISubprogram(name: "native_write_msr", scope: !90, file: !90, line: 143, type: !902, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !917)
!917 = !{!918, !919, !920}
!918 = !DILocalVariable(name: "msr", arg: 1, scope: !916, file: !90, line: 143, type: !7)
!919 = !DILocalVariable(name: "low", arg: 2, scope: !916, file: !90, line: 143, type: !32)
!920 = !DILocalVariable(name: "high", arg: 3, scope: !916, file: !90, line: 143, type: !32)
!921 = !DILocation(line: 143, column: 31, scope: !916)
!922 = !DILocation(line: 143, column: 40, scope: !916)
!923 = !DILocation(line: 143, column: 49, scope: !916)
!924 = !DILocation(line: 145, column: 10, scope: !916)
!925 = !DILocation(line: 145, column: 15, scope: !916)
!926 = !DILocation(line: 145, column: 20, scope: !916)
!927 = !DILocation(line: 145, column: 2, scope: !916)
!928 = !DILocation(line: 147, column: 6, scope: !929)
!929 = distinct !DILexicalBlock(scope: !916, file: !90, line: 147, column: 6)
!930 = !DILocation(line: 147, column: 6, scope: !916)
!931 = !DILocation(line: 148, column: 22, scope: !929)
!932 = !DILocation(line: 148, column: 33, scope: !929)
!933 = !DILocation(line: 148, column: 28, scope: !929)
!934 = !DILocation(line: 148, column: 38, scope: !929)
!935 = !DILocation(line: 148, column: 46, scope: !929)
!936 = !DILocation(line: 148, column: 44, scope: !929)
!937 = !DILocation(line: 148, column: 3, scope: !929)
!938 = !DILocation(line: 149, column: 1, scope: !916)
!939 = distinct !DISubprogram(name: "__wrmsr", scope: !90, file: !90, line: 92, type: !902, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !940)
!940 = !{!941, !942, !943}
!941 = !DILocalVariable(name: "msr", arg: 1, scope: !939, file: !90, line: 92, type: !7)
!942 = !DILocalVariable(name: "low", arg: 2, scope: !939, file: !90, line: 92, type: !32)
!943 = !DILocalVariable(name: "high", arg: 3, scope: !939, file: !90, line: 92, type: !32)
!944 = !DILocation(line: 92, column: 50, scope: !939)
!945 = !DILocation(line: 92, column: 59, scope: !939)
!946 = !DILocation(line: 92, column: 68, scope: !939)
!947 = !DILocation(line: 97, column: 17, scope: !939)
!948 = !DILocation(line: 97, column: 27, scope: !939)
!949 = !DILocation(line: 97, column: 38, scope: !939)
!950 = !DILocation(line: 94, column: 2, scope: !939)
!951 = !{i64 1118501, i64 1118522, i64 2149316517, i64 2149316561, i64 2149316584, i64 2149316617, i64 2149316648, i64 2149316687}
!952 = !DILocation(line: 98, column: 1, scope: !939)
!953 = !DISubprogram(name: "do_trace_write_msr", scope: !90, file: !90, line: 64, type: !879, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!954 = distinct !DISubprogram(name: "__preempt_count_add", scope: !955, file: !955, line: 78, type: !956, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !958)
!955 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!956 = !DISubroutineType(types: !957)
!957 = !{null, !19}
!958 = !{!959, !960, !963}
!959 = !DILocalVariable(name: "val", arg: 1, scope: !954, file: !955, line: 78, type: !19)
!960 = !DILocalVariable(name: "pao_ID__", scope: !961, file: !955, line: 80, type: !962)
!961 = distinct !DILexicalBlock(scope: !954, file: !955, line: 80, column: 2)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!963 = !DILocalVariable(name: "pto_val__", scope: !964, file: !955, line: 80, type: !32)
!964 = distinct !DILexicalBlock(scope: !965, file: !955, line: 80, column: 2)
!965 = distinct !DILexicalBlock(scope: !966, file: !955, line: 80, column: 2)
!966 = distinct !DILexicalBlock(scope: !961, file: !955, line: 80, column: 2)
!967 = !DILocation(line: 78, column: 53, scope: !954)
!968 = !DILocation(line: 80, column: 2, scope: !954)
!969 = !DILocation(line: 80, column: 2, scope: !961)
!970 = !DILocation(line: 80, column: 2, scope: !966)
!971 = !DILocation(line: 80, column: 2, scope: !972)
!972 = distinct !DILexicalBlock(scope: !966, file: !955, line: 80, column: 2)
!973 = !{i64 2149430543}
!974 = !DILocation(line: 80, column: 2, scope: !965)
!975 = !DILocation(line: 80, column: 2, scope: !976)
!976 = distinct !DILexicalBlock(scope: !965, file: !955, line: 80, column: 2)
!977 = !{i64 2149430838}
!978 = !DILocation(line: 80, column: 2, scope: !964)
!979 = !{i64 2149431543}
!980 = !DILocation(line: 81, column: 1, scope: !954)
!981 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !982, file: !982, line: 313, type: !983, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !987)
!982 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!983 = !DISubroutineType(types: !984)
!984 = !{null, !985}
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!987 = !{!988}
!988 = !DILocalVariable(name: "op", arg: 1, scope: !981, file: !982, line: 313, type: !985)
!989 = !DILocation(line: 313, column: 66, scope: !981)
!990 = !DILocation(line: 313, column: 72, scope: !981)
!991 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !74, file: !74, line: 502, type: !992, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !994)
!992 = !DISubroutineType(types: !993)
!993 = !{!849, !19, !71}
!994 = !{!995, !996}
!995 = !DILocalVariable(name: "cpu", arg: 1, scope: !991, file: !74, line: 502, type: !19)
!996 = !DILocalVariable(name: "cpumask", arg: 2, scope: !991, file: !74, line: 502, type: !71)
!997 = !DILocation(line: 502, column: 50, scope: !991)
!998 = !DILocation(line: 502, column: 77, scope: !991)
!999 = !DILocation(line: 504, column: 9, scope: !991)
!1000 = !DILocation(line: 504, column: 2, scope: !991)
!1001 = !DISubprogram(name: "smp_call_function_many", scope: !220, file: !220, line: 157, type: !1002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !71, !223, !12, !849}
!1004 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !955, file: !955, line: 93, type: !1005, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1007)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!849}
!1007 = !{!1008}
!1008 = !DILocalVariable(name: "c", scope: !1009, file: !955, line: 95, type: !849)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !955, line: 95, column: 9)
!1010 = !DILocation(line: 95, column: 9, scope: !1009)
!1011 = !{i64 2149434899, i64 2149434992}
!1012 = !DILocation(line: 95, column: 9, scope: !1004)
!1013 = !DILocation(line: 95, column: 2, scope: !1004)
!1014 = distinct !DISubprogram(name: "_test_bit", scope: !1015, file: !1015, line: 139, type: !1016, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1021)
!1015 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1016 = !DISubroutineType(types: !1017)
!1017 = !{!849, !20, !1018}
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !20)
!1021 = !{!1022, !1023}
!1022 = !DILocalVariable(name: "nr", arg: 1, scope: !1014, file: !1015, line: 139, type: !20)
!1023 = !DILocalVariable(name: "addr", arg: 2, scope: !1014, file: !1015, line: 139, type: !1018)
!1024 = !DILocation(line: 139, column: 25, scope: !1014)
!1025 = !DILocation(line: 139, column: 59, scope: !1014)
!1026 = !DILocation(line: 141, column: 25, scope: !1014)
!1027 = !DILocation(line: 141, column: 32, scope: !1014)
!1028 = !DILocation(line: 141, column: 30, scope: !1014)
!1029 = !DILocation(line: 141, column: 2, scope: !1014)
!1030 = !DILocation(line: 142, column: 23, scope: !1014)
!1031 = !DILocation(line: 142, column: 27, scope: !1014)
!1032 = !DILocation(line: 142, column: 9, scope: !1014)
!1033 = !DILocation(line: 142, column: 2, scope: !1014)
!1034 = distinct !DISubprogram(name: "cpumask_check", scope: !74, file: !74, line: 148, type: !1035, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1037)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!7, !7}
!1037 = !{!1038}
!1038 = !DILocalVariable(name: "cpu", arg: 1, scope: !1034, file: !74, line: 148, type: !7)
!1039 = !DILocation(line: 148, column: 64, scope: !1034)
!1040 = !DILocation(line: 150, column: 20, scope: !1034)
!1041 = !DILocation(line: 150, column: 2, scope: !1034)
!1042 = !DILocation(line: 151, column: 9, scope: !1034)
!1043 = !DILocation(line: 151, column: 2, scope: !1034)
!1044 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1045, file: !1045, line: 66, type: !1046, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1055)
!1045 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1046 = !DISubroutineType(types: !1047)
!1047 = !{null, !1048, !1051}
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1050)
!1050 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !136, line: 61, baseType: !1052)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1053, line: 72, baseType: !1054)
!1053 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1053, line: 16, baseType: !20)
!1055 = !{!1056, !1057}
!1056 = !DILocalVariable(name: "v", arg: 1, scope: !1044, file: !1045, line: 66, type: !1048)
!1057 = !DILocalVariable(name: "size", arg: 2, scope: !1044, file: !1045, line: 66, type: !1051)
!1058 = !DILocation(line: 66, column: 73, scope: !1044)
!1059 = !DILocation(line: 66, column: 83, scope: !1044)
!1060 = !DILocation(line: 68, column: 19, scope: !1044)
!1061 = !DILocation(line: 68, column: 22, scope: !1044)
!1062 = !DILocation(line: 68, column: 2, scope: !1044)
!1063 = !DILocation(line: 69, column: 2, scope: !1044)
!1064 = !DILocation(line: 70, column: 1, scope: !1044)
!1065 = distinct !DISubprogram(name: "arch_test_bit", scope: !1066, file: !1066, line: 237, type: !1016, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1067)
!1066 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!1067 = !{!1068, !1069}
!1068 = !DILocalVariable(name: "nr", arg: 1, scope: !1065, file: !1066, line: 237, type: !20)
!1069 = !DILocalVariable(name: "addr", arg: 2, scope: !1065, file: !1066, line: 237, type: !1018)
!1070 = !DILocation(line: 237, column: 29, scope: !1065)
!1071 = !DILocation(line: 237, column: 63, scope: !1065)
!1072 = !DILocation(line: 239, column: 30, scope: !1065)
!1073 = !DILocation(line: 239, column: 9, scope: !1065)
!1074 = !DILocation(line: 239, column: 54, scope: !1065)
!1075 = !DILocation(line: 239, column: 58, scope: !1065)
!1076 = !DILocation(line: 239, column: 36, scope: !1065)
!1077 = !DILocation(line: 240, column: 26, scope: !1065)
!1078 = !DILocation(line: 240, column: 30, scope: !1065)
!1079 = !DILocation(line: 240, column: 8, scope: !1065)
!1080 = !DILocation(line: 239, column: 2, scope: !1065)
!1081 = distinct !DISubprogram(name: "kasan_check_read", scope: !1082, file: !1082, line: 40, type: !1083, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1085)
!1082 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!849, !1048, !7}
!1085 = !{!1086, !1087}
!1086 = !DILocalVariable(name: "p", arg: 1, scope: !1081, file: !1082, line: 40, type: !1048)
!1087 = !DILocalVariable(name: "size", arg: 2, scope: !1081, file: !1082, line: 40, type: !7)
!1088 = !DILocation(line: 40, column: 58, scope: !1081)
!1089 = !DILocation(line: 40, column: 74, scope: !1081)
!1090 = !DILocation(line: 42, column: 2, scope: !1081)
!1091 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1092, file: !1092, line: 229, type: !1093, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1095)
!1092 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1093 = !DISubroutineType(types: !1094)
!1094 = !{null, !1048, !1051, !19}
!1095 = !{!1096, !1097, !1098}
!1096 = !DILocalVariable(name: "ptr", arg: 1, scope: !1091, file: !1092, line: 229, type: !1048)
!1097 = !DILocalVariable(name: "size", arg: 2, scope: !1091, file: !1092, line: 229, type: !1051)
!1098 = !DILocalVariable(name: "type", arg: 3, scope: !1091, file: !1092, line: 230, type: !19)
!1099 = !DILocation(line: 229, column: 60, scope: !1091)
!1100 = !DILocation(line: 229, column: 72, scope: !1091)
!1101 = !DILocation(line: 230, column: 15, scope: !1091)
!1102 = !DILocation(line: 230, column: 23, scope: !1091)
!1103 = distinct !DISubprogram(name: "constant_test_bit", scope: !1066, file: !1066, line: 204, type: !1104, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{!849, !868, !1018}
!1106 = !{!1107, !1108}
!1107 = !DILocalVariable(name: "nr", arg: 1, scope: !1103, file: !1066, line: 204, type: !868)
!1108 = !DILocalVariable(name: "addr", arg: 2, scope: !1103, file: !1066, line: 204, type: !1018)
!1109 = !DILocation(line: 204, column: 52, scope: !1103)
!1110 = !DILocation(line: 204, column: 86, scope: !1103)
!1111 = !DILocation(line: 206, column: 19, scope: !1103)
!1112 = !DILocation(line: 206, column: 22, scope: !1103)
!1113 = !DILocation(line: 206, column: 15, scope: !1103)
!1114 = !DILocation(line: 207, column: 4, scope: !1103)
!1115 = !DILocation(line: 207, column: 9, scope: !1103)
!1116 = !DILocation(line: 207, column: 12, scope: !1103)
!1117 = !DILocation(line: 206, column: 44, scope: !1103)
!1118 = !DILocation(line: 207, column: 37, scope: !1103)
!1119 = !DILocation(line: 206, column: 2, scope: !1103)
!1120 = distinct !DISubprogram(name: "variable_test_bit", scope: !1066, file: !1066, line: 224, type: !1104, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1121)
!1121 = !{!1122, !1123, !1124}
!1122 = !DILocalVariable(name: "nr", arg: 1, scope: !1120, file: !1066, line: 224, type: !868)
!1123 = !DILocalVariable(name: "addr", arg: 2, scope: !1120, file: !1066, line: 224, type: !1018)
!1124 = !DILocalVariable(name: "oldbit", scope: !1120, file: !1066, line: 226, type: !849)
!1125 = !DILocation(line: 224, column: 52, scope: !1120)
!1126 = !DILocation(line: 224, column: 86, scope: !1120)
!1127 = !DILocation(line: 226, column: 2, scope: !1120)
!1128 = !DILocation(line: 226, column: 7, scope: !1120)
!1129 = !DILocation(line: 231, column: 33, scope: !1120)
!1130 = !DILocation(line: 231, column: 46, scope: !1120)
!1131 = !DILocation(line: 228, column: 2, scope: !1120)
!1132 = !{i64 2147946147, i64 2147946221}
!1133 = !DILocation(line: 233, column: 9, scope: !1120)
!1134 = !DILocation(line: 234, column: 1, scope: !1120)
!1135 = !DILocation(line: 233, column: 2, scope: !1120)
!1136 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !74, file: !74, line: 140, type: !1137, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1139)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{null, !7, !7}
!1139 = !{!1140, !1141}
!1140 = !DILocalVariable(name: "cpu", arg: 1, scope: !1136, file: !74, line: 140, type: !7)
!1141 = !DILocalVariable(name: "bits", arg: 2, scope: !1136, file: !74, line: 140, type: !7)
!1142 = !DILocation(line: 140, column: 60, scope: !1136)
!1143 = !DILocation(line: 140, column: 78, scope: !1136)
!1144 = !DILocation(line: 145, column: 1, scope: !1136)
!1145 = distinct !DISubprogram(name: "native_read_msr_safe", scope: !90, file: !90, line: 126, type: !1146, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1148)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!17, !7, !18}
!1148 = !{!1149, !1150, !1151, !1152}
!1149 = !DILocalVariable(name: "msr", arg: 1, scope: !1145, file: !90, line: 126, type: !7)
!1150 = !DILocalVariable(name: "err", arg: 2, scope: !1145, file: !90, line: 127, type: !18)
!1151 = !DILocalVariable(name: "low", scope: !1145, file: !90, line: 129, type: !20)
!1152 = !DILocalVariable(name: "high", scope: !1145, file: !90, line: 129, type: !20)
!1153 = !DILocation(line: 126, column: 68, scope: !1145)
!1154 = !DILocation(line: 127, column: 18, scope: !1145)
!1155 = !DILocation(line: 129, column: 2, scope: !1145)
!1156 = !DILocation(line: 134, column: 23, scope: !1145)
!1157 = !DILocation(line: 135, column: 15, scope: !1145)
!1158 = !DILocation(line: 131, column: 2, scope: !1145)
!1159 = !{i64 1119333, i64 1119374, i64 1119378, i64 2149317227, i64 2149317252, i64 2149317287, i64 2149317504, i64 2149317557, i64 2149317588, i64 2149317619, i64 2149317697, i64 2149317731, i64 2149317769, i64 2149317812, i64 2149317835, i64 2149317873, i64 2149317895, i64 2149317926, i64 2149318011, i64 2149318045, i64 2149318083, i64 2149318126, i64 2149318149, i64 2149318187, i64 2149318209, i64 2149318243, i64 2149318305, i64 2149318328, i64 2149317353, i64 2149318402, i64 2149317464}
!1160 = !DILocation(line: 136, column: 6, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1145, file: !90, line: 136, column: 6)
!1162 = !DILocation(line: 136, column: 6, scope: !1145)
!1163 = !DILocation(line: 137, column: 21, scope: !1161)
!1164 = !DILocation(line: 137, column: 26, scope: !1161)
!1165 = !DILocation(line: 137, column: 56, scope: !1161)
!1166 = !DILocation(line: 137, column: 55, scope: !1161)
!1167 = !DILocation(line: 137, column: 3, scope: !1161)
!1168 = !DILocation(line: 138, column: 9, scope: !1145)
!1169 = !DILocation(line: 139, column: 1, scope: !1145)
!1170 = !DILocation(line: 138, column: 2, scope: !1145)
!1171 = !DISubprogram(name: "complete", scope: !110, file: !110, line: 118, type: !111, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1172 = !DISubprogram(name: "__init_swait_queue_head", scope: !119, file: !119, line: 69, type: !1173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !1175, !985, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!1177 = distinct !DISubprogram(name: "wrmsr_safe", scope: !90, file: !90, line: 266, type: !1178, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1180)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!19, !7, !32, !32}
!1180 = !{!1181, !1182, !1183}
!1181 = !DILocalVariable(name: "msr", arg: 1, scope: !1177, file: !90, line: 266, type: !7)
!1182 = !DILocalVariable(name: "low", arg: 2, scope: !1177, file: !90, line: 266, type: !32)
!1183 = !DILocalVariable(name: "high", arg: 3, scope: !1177, file: !90, line: 266, type: !32)
!1184 = !DILocation(line: 266, column: 43, scope: !1177)
!1185 = !DILocation(line: 266, column: 52, scope: !1177)
!1186 = !DILocation(line: 266, column: 61, scope: !1177)
!1187 = !DILocation(line: 268, column: 31, scope: !1177)
!1188 = !DILocation(line: 268, column: 36, scope: !1177)
!1189 = !DILocation(line: 268, column: 41, scope: !1177)
!1190 = !DILocation(line: 268, column: 9, scope: !1177)
!1191 = !DILocation(line: 268, column: 2, scope: !1177)
!1192 = distinct !DISubprogram(name: "native_write_msr_safe", scope: !90, file: !90, line: 153, type: !1178, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1193)
!1193 = !{!1194, !1195, !1196, !1197}
!1194 = !DILocalVariable(name: "msr", arg: 1, scope: !1192, file: !90, line: 153, type: !7)
!1195 = !DILocalVariable(name: "low", arg: 2, scope: !1192, file: !90, line: 153, type: !32)
!1196 = !DILocalVariable(name: "high", arg: 3, scope: !1192, file: !90, line: 153, type: !32)
!1197 = !DILocalVariable(name: "err", scope: !1192, file: !90, line: 155, type: !19)
!1198 = !DILocation(line: 153, column: 36, scope: !1192)
!1199 = !DILocation(line: 153, column: 45, scope: !1192)
!1200 = !DILocation(line: 153, column: 54, scope: !1192)
!1201 = !DILocation(line: 155, column: 2, scope: !1192)
!1202 = !DILocation(line: 155, column: 6, scope: !1192)
!1203 = !DILocation(line: 161, column: 15, scope: !1192)
!1204 = !DILocation(line: 161, column: 26, scope: !1192)
!1205 = !DILocation(line: 161, column: 37, scope: !1192)
!1206 = !DILocation(line: 157, column: 2, scope: !1192)
!1207 = !{i64 1120084, i64 1120125, i64 1120129, i64 2149319134, i64 2149319159, i64 2149319194, i64 2149319411, i64 2149319464, i64 2149319495, i64 2149319526, i64 2149319604, i64 2149319638, i64 2149319676, i64 2149319719, i64 2149319742, i64 2149319780, i64 2149319802, i64 2149319833, i64 2149319918, i64 2149319952, i64 2149319990, i64 2149320033, i64 2149320056, i64 2149320094, i64 2149320116, i64 2149320150, i64 2149320212, i64 2149320235, i64 2149319260, i64 2149320309, i64 2149319371}
!1208 = !DILocation(line: 163, column: 6, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1192, file: !90, line: 163, column: 6)
!1210 = !DILocation(line: 163, column: 6, scope: !1192)
!1211 = !DILocation(line: 164, column: 22, scope: !1209)
!1212 = !DILocation(line: 164, column: 33, scope: !1209)
!1213 = !DILocation(line: 164, column: 28, scope: !1209)
!1214 = !DILocation(line: 164, column: 38, scope: !1209)
!1215 = !DILocation(line: 164, column: 46, scope: !1209)
!1216 = !DILocation(line: 164, column: 44, scope: !1209)
!1217 = !DILocation(line: 164, column: 52, scope: !1209)
!1218 = !DILocation(line: 164, column: 3, scope: !1209)
!1219 = !DILocation(line: 165, column: 9, scope: !1192)
!1220 = !DILocation(line: 166, column: 1, scope: !1192)
!1221 = !DILocation(line: 165, column: 2, scope: !1192)
!1222 = !DISubprogram(name: "rdmsr_safe_regs", scope: !90, file: !90, line: 168, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!19, !185}
!1225 = !DISubprogram(name: "wrmsr_safe_regs", scope: !90, file: !90, line: 169, type: !1223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
