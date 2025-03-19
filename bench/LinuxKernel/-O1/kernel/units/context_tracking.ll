; ModuleID = 'kernel/context_tracking.c'
source_filename = "kernel/context_tracking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_context_tracking: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad context_tracking ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ct_idle_enter: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad ct_idle_enter ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ct_idle_exit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad ct_idle_exit ; .previous"

%struct.context_tracking = type { %struct.atomic_t, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i64 }
%struct.pcpu_hot = type { %union.anon.0 }
%union.anon.0 = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.1 }
%union.anon.1 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.tracepoint_func = type { ptr, ptr, i32 }

@context_tracking = hidden global %struct.context_tracking { %struct.atomic_t { i32 4 }, i64 1, i64 4611686018427387904 }, section ".data..percpu", align 8, !dbg !0
@__UNIQUE_ID___addressable_context_tracking480 = internal global ptr @context_tracking, section ".discard.addressable", align 8, !dbg !4127
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@.str = private unnamed_addr constant [26 x i8] c"kernel/context_tracking.c\00", align 1, !dbg !4129
@ct_nmi_exit.___tp_str = internal global ptr @.str.1, section "__tracepoint_str", align 8, !dbg !4137
@.str.1 = private unnamed_addr constant [4 x i8] c"--=\00", align 1, !dbg !4134
@ct_nmi_exit.___tp_str.2 = internal global ptr @.str.3, section "__tracepoint_str", align 8, !dbg !4162
@.str.3 = private unnamed_addr constant [9 x i8] c"Startirq\00", align 1, !dbg !4157
@ct_nmi_enter.___tp_str = internal global ptr @.str.4, section "__tracepoint_str", align 8, !dbg !4167
@.str.4 = private unnamed_addr constant [7 x i8] c"Endirq\00", align 1, !dbg !4164
@ct_nmi_enter.___tp_str.5 = internal global ptr @.str.6, section "__tracepoint_str", align 8, !dbg !4185
@.str.6 = private unnamed_addr constant [4 x i8] c"++=\00", align 1, !dbg !4183
@__UNIQUE_ID___addressable_ct_idle_enter488 = internal global ptr @ct_idle_enter, section ".discard.addressable", align 8, !dbg !4187
@__UNIQUE_ID___addressable_ct_idle_exit489 = internal global ptr @ct_idle_exit, section ".discard.addressable", align 8, !dbg !4189
@.str.7 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !4191
@__tracepoint_rcu_dyntick = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.8 = private unnamed_addr constant [27 x i8] c"include/trace/events/rcu.h\00", align 1, !dbg !4196
@trace_rcu_dyntick.__UNIQUE_ID___addressable___SCK__tp_func_rcu_dyntick394 = internal global ptr @__SCK__tp_func_rcu_dyntick, section ".discard.addressable", align 8, !dbg !4202
@__SCK__tp_func_rcu_dyntick = external dso_local global %struct.static_call_key, align 8
@trace_rcu_dyntick.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace395 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !4233
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@ct_kernel_exit.___tp_str = internal global ptr @.str.9, section "__tracepoint_str", align 8, !dbg !4237
@.str.9 = private unnamed_addr constant [6 x i8] c"Start\00", align 1, !dbg !4235
@ct_kernel_enter.___tp_str = internal global ptr @.str.10, section "__tracepoint_str", align 8, !dbg !4268
@.str.10 = private unnamed_addr constant [4 x i8] c"End\00", align 1, !dbg !4266
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID___addressable_context_tracking480, ptr @ct_nmi_exit.___tp_str, ptr @ct_nmi_exit.___tp_str.2, ptr @ct_nmi_enter.___tp_str, ptr @ct_nmi_enter.___tp_str.5, ptr @__UNIQUE_ID___addressable_ct_idle_enter488, ptr @__UNIQUE_ID___addressable_ct_idle_exit489, ptr @trace_rcu_dyntick.__UNIQUE_ID___addressable___SCK__tp_func_rcu_dyntick394, ptr @trace_rcu_dyntick.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace395, ptr @ct_kernel_exit.___tp_str, ptr @ct_kernel_enter.___tp_str], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ct_nmi_exit() #0 section ".noinstr.text" align 16 !dbg !4139 {
entry:
  %ct = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %__ret_warn_on31 = alloca i32, align 4
  %__flags47 = alloca i32, align 4
  %tmp60 = alloca i64, align 8
  %tmp72 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp91 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ct) #12, !dbg !4311
  call void @llvm.dbg.declare(metadata ptr %ct, metadata !4141, metadata !DIExpression()), !dbg !4312
  br label %do.body, !dbg !4313

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4314
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4142, metadata !DIExpression()), !dbg !4314
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4314
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4314
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4313
  br label %do.cond, !dbg !4314

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4314

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4315
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !4145, metadata !DIExpression()), !dbg !4315
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @context_tracking) #13, !dbg !4315, !srcloc !4316
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !4315
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !4315
  %3 = inttoptr i64 %2 to ptr, !dbg !4315
  store ptr %3, ptr %tmp1, align 8, !dbg !4315
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4313
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4315
  store ptr %4, ptr %tmp, align 8, !dbg !4314
  %5 = load ptr, ptr %tmp, align 8, !dbg !4313
  store ptr %5, ptr %ct, align 8, !dbg !4312
  br label %do.body2, !dbg !4317

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !4318

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4318

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4320
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4147, metadata !DIExpression()), !dbg !4320
  %call = call i64 @ct_dynticks_nmi_nesting() #14, !dbg !4320
  %cmp = icmp sle i64 %call, 0, !dbg !4320
  %lnot = xor i1 %cmp, true, !dbg !4320
  %lnot5 = xor i1 %lnot, true, !dbg !4320
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4320
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4320
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4321
  %tobool = icmp ne i32 %6, 0, !dbg !4321
  %lnot6 = xor i1 %tobool, true, !dbg !4321
  %lnot8 = xor i1 %lnot6, true, !dbg !4321
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !4321
  %conv = sext i32 %lnot.ext9 to i64, !dbg !4321
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4321
  %tobool10 = icmp ne i64 %expval, 0, !dbg !4321
  br i1 %tobool10, label %if.then, label %if.end, !dbg !4320

if.then:                                          ; preds = %do.end4
  br label %do.body11, !dbg !4321

do.body11:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !4322
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4149, metadata !DIExpression()), !dbg !4322
  store i32 2307, ptr %__flags, align 4, !dbg !4322
  br label %do.body12, !dbg !4322

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !4323

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4323

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !4322

do.body15:                                        ; preds = %do.end14
  %7 = load i32, ptr %__flags, align 4, !dbg !4325
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 214, i32 %7, i64 12) #12, !dbg !4325, !srcloc !4327
  br label %do.cond16, !dbg !4325

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4325

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !4322

do.body18:                                        ; preds = %do.end17
  br label %do.cond19, !dbg !4328

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !4328

do.end20:                                         ; preds = %do.cond19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !4321
  br label %do.cond21, !dbg !4322

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !4322

do.end22:                                         ; preds = %do.cond21
  br label %if.end, !dbg !4322

if.end:                                           ; preds = %do.end22, %do.end4
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !4320
  %tobool24 = icmp ne i32 %8, 0, !dbg !4320
  %lnot25 = xor i1 %tobool24, true, !dbg !4320
  %lnot27 = xor i1 %lnot25, true, !dbg !4320
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !4320
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !4320
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !4320
  store i64 %expval30, ptr %tmp23, align 8, !dbg !4321
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4330
  %9 = load i64, ptr %tmp23, align 8, !dbg !4320
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on31) #12, !dbg !4331
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on31, metadata !4152, metadata !DIExpression()), !dbg !4331
  %call32 = call zeroext i1 @rcu_dynticks_curr_cpu_in_eqs() #14, !dbg !4331
  %lnot33 = xor i1 %call32, true, !dbg !4331
  %lnot35 = xor i1 %lnot33, true, !dbg !4331
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !4331
  store i32 %lnot.ext36, ptr %__ret_warn_on31, align 4, !dbg !4331
  %10 = load i32, ptr %__ret_warn_on31, align 4, !dbg !4332
  %tobool37 = icmp ne i32 %10, 0, !dbg !4332
  %lnot38 = xor i1 %tobool37, true, !dbg !4332
  %lnot40 = xor i1 %lnot38, true, !dbg !4332
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !4332
  %conv42 = sext i32 %lnot.ext41 to i64, !dbg !4332
  %expval43 = call i64 @llvm.expect.i64(i64 %conv42, i64 0), !dbg !4332
  %tobool44 = icmp ne i64 %expval43, 0, !dbg !4332
  br i1 %tobool44, label %if.then45, label %if.end59, !dbg !4331

if.then45:                                        ; preds = %if.end
  br label %do.body46, !dbg !4332

do.body46:                                        ; preds = %if.then45
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags47) #12, !dbg !4333
  call void @llvm.dbg.declare(metadata ptr %__flags47, metadata !4154, metadata !DIExpression()), !dbg !4333
  store i32 2307, ptr %__flags47, align 4, !dbg !4333
  br label %do.body48, !dbg !4333

do.body48:                                        ; preds = %do.body46
  br label %do.cond49, !dbg !4334

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !4334

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !4333

do.body51:                                        ; preds = %do.end50
  %11 = load i32, ptr %__flags47, align 4, !dbg !4336
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 215, i32 %11, i64 12) #12, !dbg !4336, !srcloc !4338
  br label %do.cond52, !dbg !4336

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !4336

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !4333

do.body54:                                        ; preds = %do.end53
  br label %do.cond55, !dbg !4339

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !4339

do.end56:                                         ; preds = %do.cond55
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags47) #12, !dbg !4332
  br label %do.cond57, !dbg !4333

do.cond57:                                        ; preds = %do.end56
  br label %do.end58, !dbg !4333

do.end58:                                         ; preds = %do.cond57
  br label %if.end59, !dbg !4333

if.end59:                                         ; preds = %do.end58, %if.end
  %12 = load i32, ptr %__ret_warn_on31, align 4, !dbg !4331
  %tobool61 = icmp ne i32 %12, 0, !dbg !4331
  %lnot62 = xor i1 %tobool61, true, !dbg !4331
  %lnot64 = xor i1 %lnot62, true, !dbg !4331
  %lnot.ext65 = zext i1 %lnot64 to i32, !dbg !4331
  %conv66 = sext i32 %lnot.ext65 to i64, !dbg !4331
  %expval67 = call i64 @llvm.expect.i64(i64 %conv66, i64 0), !dbg !4331
  store i64 %expval67, ptr %tmp60, align 8, !dbg !4332
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on31) #12, !dbg !4341
  %13 = load i64, ptr %tmp60, align 8, !dbg !4331
  %call68 = call i64 @ct_dynticks_nmi_nesting() #14, !dbg !4342
  %cmp69 = icmp ne i64 %call68, 1, !dbg !4344
  br i1 %cmp69, label %if.then71, label %if.end90, !dbg !4345

if.then71:                                        ; preds = %if.end59
  %14 = load ptr, ptr @ct_nmi_exit.___tp_str, align 8, !dbg !4346
  store ptr %14, ptr %tmp72, align 8, !dbg !4346
  %15 = load ptr, ptr %tmp72, align 8, !dbg !4346
  %call73 = call i64 @ct_dynticks_nmi_nesting() #14, !dbg !4349
  %call74 = call i64 @ct_dynticks_nmi_nesting() #14, !dbg !4350
  %sub = sub i64 %call74, 2, !dbg !4351
  %call75 = call i32 @ct_dynticks() #14, !dbg !4352
  call void @trace_rcu_dyntick(ptr noundef %15, i64 noundef %call73, i64 noundef %sub, i32 noundef %call75) #14, !dbg !4353
  br label %do.body76, !dbg !4354

do.body76:                                        ; preds = %if.then71
  br label %do.body77, !dbg !4355

do.body77:                                        ; preds = %do.body76
  br label %do.cond78, !dbg !4357

do.cond78:                                        ; preds = %do.body77
  br label %do.end79, !dbg !4357

do.end79:                                         ; preds = %do.cond78
  br label %do.body80, !dbg !4355

do.body80:                                        ; preds = %do.end79
  %call81 = call i64 @ct_dynticks_nmi_nesting() #14, !dbg !4359
  %sub82 = sub i64 %call81, 2, !dbg !4359
  %16 = load ptr, ptr %ct, align 8, !dbg !4359
  %dynticks_nmi_nesting = getelementptr inbounds %struct.context_tracking, ptr %16, i32 0, i32 2, !dbg !4359
  store volatile i64 %sub82, ptr %dynticks_nmi_nesting, align 8, !dbg !4359
  br label %do.cond83, !dbg !4359

do.cond83:                                        ; preds = %do.body80
  br label %do.end84, !dbg !4359

do.end84:                                         ; preds = %do.cond83
  br label %do.cond85, !dbg !4355

do.cond85:                                        ; preds = %do.end84
  br label %do.end86, !dbg !4355

do.end86:                                         ; preds = %do.cond85
  br label %do.body87, !dbg !4361

do.body87:                                        ; preds = %do.end86
  br label %do.cond88, !dbg !4362

do.cond88:                                        ; preds = %do.body87
  br label %do.end89, !dbg !4362

do.end89:                                         ; preds = %do.cond88
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4364

if.end90:                                         ; preds = %if.end59
  %17 = load ptr, ptr @ct_nmi_exit.___tp_str.2, align 8, !dbg !4365
  store ptr %17, ptr %tmp91, align 8, !dbg !4365
  %18 = load ptr, ptr %tmp91, align 8, !dbg !4365
  %call92 = call i64 @ct_dynticks_nmi_nesting() #14, !dbg !4367
  %call93 = call i32 @ct_dynticks() #14, !dbg !4368
  call void @trace_rcu_dyntick(ptr noundef %18, i64 noundef %call92, i64 noundef 0, i32 noundef %call93) #14, !dbg !4369
  br label %do.body94, !dbg !4370

do.body94:                                        ; preds = %if.end90
  br label %do.body95, !dbg !4371

do.body95:                                        ; preds = %do.body94
  br label %do.cond96, !dbg !4373

do.cond96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !4373

do.end97:                                         ; preds = %do.cond96
  br label %do.body98, !dbg !4371

do.body98:                                        ; preds = %do.end97
  %19 = load ptr, ptr %ct, align 8, !dbg !4375
  %dynticks_nmi_nesting99 = getelementptr inbounds %struct.context_tracking, ptr %19, i32 0, i32 2, !dbg !4375
  store volatile i64 0, ptr %dynticks_nmi_nesting99, align 8, !dbg !4375
  br label %do.cond100, !dbg !4375

do.cond100:                                       ; preds = %do.body98
  br label %do.end101, !dbg !4375

do.end101:                                        ; preds = %do.cond100
  br label %do.cond102, !dbg !4371

do.cond102:                                       ; preds = %do.end101
  br label %do.end103, !dbg !4371

do.end103:                                        ; preds = %do.cond102
  %20 = load ptr, ptr %ct, align 8, !dbg !4377
  %state = getelementptr inbounds %struct.context_tracking, ptr %20, i32 0, i32 0, !dbg !4378
  call void @instrument_atomic_write(ptr noundef %state, i64 noundef 4) #14, !dbg !4379
  br label %do.body104, !dbg !4380

do.body104:                                       ; preds = %do.end103
  br label %do.cond105, !dbg !4381

do.cond105:                                       ; preds = %do.body104
  br label %do.end106, !dbg !4381

do.end106:                                        ; preds = %do.cond105
  call void @ct_kernel_exit_state(i32 noundef 4) #14, !dbg !4383
  %call107 = call i32 @preempt_count() #14, !dbg !4384
  %conv108 = sext i32 %call107 to i64, !dbg !4384
  %and = and i64 %conv108, 15728640, !dbg !4384
  %tobool109 = icmp ne i64 %and, 0, !dbg !4384
  br i1 %tobool109, label %if.end111, label %if.then110, !dbg !4386

if.then110:                                       ; preds = %do.end106
  call void @rcu_dynticks_task_enter() #14, !dbg !4387
  br label %if.end111, !dbg !4387

if.end111:                                        ; preds = %if.then110, %do.end106
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4388
  br label %cleanup, !dbg !4388

cleanup:                                          ; preds = %if.end111, %do.end89
  call void @llvm.lifetime.end.p0(i64 8, ptr %ct) #12, !dbg !4388
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4388

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ct_dynticks_nmi_nesting() #3 align 16 !dbg !4389 {
entry:
  %tmp = alloca i64, align 8
  %pscr_ret__ = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @__this_cpu_preempt_check(ptr noundef @.str.7) #14, !dbg !4400
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !4401
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4393, metadata !DIExpression()), !dbg !4401
  br label %do.body, !dbg !4401

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4402
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4396, metadata !DIExpression()), !dbg !4402
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4402
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4402
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4401
  br label %do.cond, !dbg !4402

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4402

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !4403
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4398, metadata !DIExpression()), !dbg !4403
  %1 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) getelementptr inbounds (%struct.context_tracking, ptr @context_tracking, i32 0, i32 2)) #13, !dbg !4403, !srcloc !4404
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4403
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4403
  store i64 %2, ptr %tmp1, align 8, !dbg !4403
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !4401
  %3 = load i64, ptr %tmp1, align 8, !dbg !4403
  store i64 %3, ptr %pscr_ret__, align 8, !dbg !4401
  %4 = load i64, ptr %pscr_ret__, align 8, !dbg !4401
  store i64 %4, ptr %tmp2, align 8, !dbg !4401
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !4400
  %5 = load i64, ptr %tmp2, align 8, !dbg !4401
  store i64 %5, ptr %tmp, align 8, !dbg !4400
  %6 = load i64, ptr %tmp, align 8, !dbg !4400
  ret i64 %6, !dbg !4405
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rcu_dynticks_curr_cpu_in_eqs() #3 align 16 !dbg !4406 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  br label %do.body, !dbg !4414

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4415
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4409, metadata !DIExpression()), !dbg !4415
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4415
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4415
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4414
  br label %do.end, !dbg !4415

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4416
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !4412, metadata !DIExpression()), !dbg !4416
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @context_tracking) #13, !dbg !4416, !srcloc !4417
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !4416
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !4416
  %3 = inttoptr i64 %2 to ptr, !dbg !4416
  store ptr %3, ptr %tmp1, align 8, !dbg !4416
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4414
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4416
  store ptr %4, ptr %tmp, align 8, !dbg !4415
  %5 = load ptr, ptr %tmp, align 8, !dbg !4414
  %call = call i32 @raw_atomic_read(ptr noundef %5) #14, !dbg !4418
  %and = and i32 %call, 4, !dbg !4419
  %tobool = icmp ne i32 %and, 0, !dbg !4420
  %lnot = xor i1 %tobool, true, !dbg !4420
  ret i1 %lnot, !dbg !4421
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_rcu_dyntick(ptr noundef %polarity, i64 noundef %oldnesting, i64 noundef %newnesting, i32 noundef %dynticks) #5 align 16 !dbg !4204 {
entry:
  %polarity.addr = alloca ptr, align 8
  %oldnesting.addr = alloca i64, align 8
  %newnesting.addr = alloca i64, align 8
  %dynticks.addr = alloca i32, align 4
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
  %__UNIQUE_ID_rcu392 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %polarity, ptr %polarity.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %polarity.addr, metadata !4208, metadata !DIExpression()), !dbg !4422
  store i64 %oldnesting, ptr %oldnesting.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldnesting.addr, metadata !4209, metadata !DIExpression()), !dbg !4422
  store i64 %newnesting, ptr %newnesting.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newnesting.addr, metadata !4210, metadata !DIExpression()), !dbg !4422
  store i32 %dynticks, ptr %dynticks.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dynticks.addr, metadata !4211, metadata !DIExpression()), !dbg !4422
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_dyntick, i32 0, i32 1)) #14, !dbg !4423
  br i1 %call, label %if.then, label %if.end68, !dbg !4422

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4423

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !4424
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !4212, metadata !DIExpression()), !dbg !4424
  store i32 0, ptr %__idx, align 4, !dbg !4424
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !4425
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4215, metadata !DIExpression()), !dbg !4425
  br label %do.body1, !dbg !4425

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4426
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4218, metadata !DIExpression()), !dbg !4426
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4426
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4426
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4425
  br label %do.cond, !dbg !4426

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4426

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !4427
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4220, metadata !DIExpression()), !dbg !4427
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !4427, !srcloc !4428
  store i32 %1, ptr %pfo_val__, align 4, !dbg !4427
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !4427
  %conv = zext i32 %2 to i64, !dbg !4427
  %conv2 = trunc i64 %conv to i32, !dbg !4427
  store i32 %conv2, ptr %tmp, align 4, !dbg !4427
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !4425
  %3 = load i32, ptr %tmp, align 4, !dbg !4427
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !4425
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !4425
  store i32 %4, ptr %tmp3, align 4, !dbg !4425
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !4429
  %5 = load i32, ptr %tmp3, align 4, !dbg !4425
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #14, !dbg !4429
  br i1 %call4, label %if.end, label %if.then5, !dbg !4424

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4429

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4430
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4222, metadata !DIExpression()), !dbg !4430
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !4430
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4431
  %tobool = icmp ne i32 %6, 0, !dbg !4431
  %lnot = xor i1 %tobool, true, !dbg !4431
  %lnot6 = xor i1 %lnot, true, !dbg !4431
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4431
  %conv7 = sext i32 %lnot.ext to i64, !dbg !4431
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !4431
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4431
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !4430

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !4431

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !4432
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4225, metadata !DIExpression()), !dbg !4432
  store i32 2307, ptr %__flags, align 4, !dbg !4432
  br label %do.body11, !dbg !4432

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !4433

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4433

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !4432

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !4435
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 503, i32 %7, i64 12) #12, !dbg !4435, !srcloc !4437
  br label %do.cond15, !dbg !4435

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !4435

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !4432

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !4438

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !4438

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !4431
  br label %do.cond20, !dbg !4432

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !4432

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !4432

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !4430
  %tobool24 = icmp ne i32 %8, 0, !dbg !4430
  %lnot25 = xor i1 %tobool24, true, !dbg !4430
  %lnot27 = xor i1 %lnot25, true, !dbg !4430
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !4430
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !4430
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !4430
  store i64 %expval30, ptr %tmp23, align 8, !dbg !4431
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4440
  %9 = load i64, ptr %tmp23, align 8, !dbg !4430
  %tobool31 = icmp ne i64 %9, 0, !dbg !4440
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !4424

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4440

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !4424

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !4441
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !4441, !srcloc !4443
  br label %do.cond35, !dbg !4441

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !4441

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !4424

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !4228, metadata !DIExpression()), !dbg !4444
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !4230, metadata !DIExpression()), !dbg !4444
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu392) #12, !dbg !4445
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu392, metadata !4231, metadata !DIExpression()), !dbg !4445
  br label %do.body38, !dbg !4446

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !4448

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !4448

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_rcu_dyntick, i32 0, i32 8), align 8, !dbg !4446
  store ptr %10, ptr %tmp41, align 8, !dbg !4448
  %11 = load ptr, ptr %tmp41, align 8, !dbg !4446
  store ptr %11, ptr %__UNIQUE_ID_rcu392, align 8, !dbg !4445
  %12 = load ptr, ptr %__UNIQUE_ID_rcu392, align 8, !dbg !4445
  store ptr %12, ptr %tmp42, align 8, !dbg !4445
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu392) #12, !dbg !4444
  %13 = load ptr, ptr %tmp42, align 8, !dbg !4445
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !4444
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !4450
  %tobool43 = icmp ne ptr %14, null, !dbg !4450
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !4444

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !4452
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !4452
  %16 = load ptr, ptr %data, align 8, !dbg !4452
  store ptr %16, ptr %__data, align 8, !dbg !4452
  store ptr @__SCT__tp_func_rcu_dyntick, ptr %tmp45, align 8, !dbg !4454
  %17 = load ptr, ptr %tmp45, align 8, !dbg !4454
  %18 = load ptr, ptr %__data, align 8, !dbg !4452
  %19 = load ptr, ptr %polarity.addr, align 8, !dbg !4452
  %20 = load i64, ptr %oldnesting.addr, align 8, !dbg !4452
  %21 = load i64, ptr %newnesting.addr, align 8, !dbg !4452
  %22 = load i32, ptr %dynticks.addr, align 4, !dbg !4452
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i64 noundef %20, i64 noundef %21, i32 noundef %22) #14, !dbg !4452
  br label %if.end47, !dbg !4452

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !4424
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !4424
  br label %do.cond48, !dbg !4444

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !4444

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !4424

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !4456, !srcloc !4458
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #14, !dbg !4459
  %lnot52 = xor i1 %call51, true, !dbg !4459
  %lnot54 = xor i1 %lnot52, true, !dbg !4459
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !4459
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !4459
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !4459
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !4459
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !4456

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !4459

do.body60:                                        ; preds = %if.then59
  %23 = call i64 @llvm.read_register.i64(metadata !4301), !dbg !4461
  %24 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %23) #12, !dbg !4461, !srcloc !4463
  call void @llvm.write_register.i64(metadata !4301, i64 %24), !dbg !4461
  br label %do.cond61, !dbg !4461

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !4461

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !4461

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !4456

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !4456

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4423
  br label %cleanup, !dbg !4423

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !4423
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !4424

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !4424

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !4422

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ct_dynticks() #3 align 16 !dbg !4464 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  br label %do.body, !dbg !4471

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4472
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4466, metadata !DIExpression()), !dbg !4472
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4472
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4472
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4471
  br label %do.end, !dbg !4472

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4473
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !4469, metadata !DIExpression()), !dbg !4473
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @context_tracking) #13, !dbg !4473, !srcloc !4474
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !4473
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !4473
  %3 = inttoptr i64 %2 to ptr, !dbg !4473
  store ptr %3, ptr %tmp1, align 8, !dbg !4473
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4471
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4473
  store ptr %4, ptr %tmp, align 8, !dbg !4472
  %5 = load ptr, ptr %tmp, align 8, !dbg !4471
  %call = call i32 @atomic_read(ptr noundef %5) #14, !dbg !4475
  %and = and i32 %call, -4, !dbg !4476
  ret i32 %and, !dbg !4477
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4478 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4486, metadata !DIExpression()), !dbg !4488
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4487, metadata !DIExpression()), !dbg !4489
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4490
  %1 = load i64, ptr %size.addr, align 8, !dbg !4491
  %conv = trunc i64 %1 to i32, !dbg !4491
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4492
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4493
  %3 = load i64, ptr %size.addr, align 8, !dbg !4493
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !4493
  ret void, !dbg !4494
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ct_kernel_exit_state(i32 noundef %offset) #0 section ".noinstr.text" align 16 !dbg !4495 {
entry:
  %offset.addr = alloca i32, align 4
  %seq = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4497, metadata !DIExpression()), !dbg !4504
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #12, !dbg !4505
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !4498, metadata !DIExpression()), !dbg !4506
  call void @rcu_dynticks_task_trace_enter() #14, !dbg !4507
  %0 = load i32, ptr %offset.addr, align 4, !dbg !4508
  %call = call i64 @ct_state_inc(i32 noundef %0) #14, !dbg !4509
  %conv = trunc i64 %call to i32, !dbg !4509
  store i32 %conv, ptr %seq, align 4, !dbg !4510
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4511
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4499, metadata !DIExpression()), !dbg !4511
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !4511
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4512
  %tobool = icmp ne i32 %1, 0, !dbg !4512
  %lnot = xor i1 %tobool, true, !dbg !4512
  %lnot1 = xor i1 %lnot, true, !dbg !4512
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4512
  %conv2 = sext i32 %lnot.ext to i64, !dbg !4512
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 0), !dbg !4512
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4512
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4511

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4512

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !4513
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4501, metadata !DIExpression()), !dbg !4513
  store i32 2307, ptr %__flags, align 4, !dbg !4513
  br label %do.body4, !dbg !4513

do.body4:                                         ; preds = %do.body
  br label %do.cond, !dbg !4514

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !4514

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !4513

do.body5:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !4516
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 93, i32 %2, i64 12) #12, !dbg !4516, !srcloc !4518
  br label %do.cond6, !dbg !4516

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4516

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !4513

do.body8:                                         ; preds = %do.end7
  br label %do.cond9, !dbg !4519

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4519

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !4512
  br label %do.cond11, !dbg !4513

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !4513

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !4513

if.end:                                           ; preds = %do.end12, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4511
  %tobool13 = icmp ne i32 %3, 0, !dbg !4511
  %lnot14 = xor i1 %tobool13, true, !dbg !4511
  %lnot16 = xor i1 %lnot14, true, !dbg !4511
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !4511
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !4511
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !4511
  store i64 %expval19, ptr %tmp, align 8, !dbg !4512
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4521
  %4 = load i64, ptr %tmp, align 8, !dbg !4511
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #12, !dbg !4522
  ret void, !dbg !4522
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @preempt_count() #3 align 16 !dbg !4523 {
entry:
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !4528
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4526, metadata !DIExpression()), !dbg !4528
  %0 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !4528, !srcloc !4529
  store i32 %0, ptr %pfo_val__, align 4, !dbg !4528
  %1 = load i32, ptr %pfo_val__, align 4, !dbg !4528
  %conv = zext i32 %1 to i64, !dbg !4528
  %conv1 = trunc i64 %conv to i32, !dbg !4528
  store i32 %conv1, ptr %tmp, align 4, !dbg !4528
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !4530
  %2 = load i32, ptr %tmp, align 4, !dbg !4528
  %and = and i32 %2, 2147483647, !dbg !4531
  ret i32 %and, !dbg !4532
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_dynticks_task_enter() #3 align 16 !dbg !4533 {
entry:
  ret void, !dbg !4534
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ct_nmi_enter() #0 section ".noinstr.text" align 16 !dbg !4169 {
entry:
  %incby = alloca i64, align 8
  %ct = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp20 = alloca i64, align 8
  %tmp55 = alloca ptr, align 8
  %tmp56 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %incby) #12, !dbg !4535
  call void @llvm.dbg.declare(metadata ptr %incby, metadata !4171, metadata !DIExpression()), !dbg !4536
  store i64 2, ptr %incby, align 8, !dbg !4536
  call void @llvm.lifetime.start.p0(i64 8, ptr %ct) #12, !dbg !4537
  call void @llvm.dbg.declare(metadata ptr %ct, metadata !4172, metadata !DIExpression()), !dbg !4538
  br label %do.body, !dbg !4539

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4540
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4173, metadata !DIExpression()), !dbg !4540
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4540
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4540
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4539
  br label %do.cond, !dbg !4540

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4540

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4541
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !4176, metadata !DIExpression()), !dbg !4541
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @context_tracking) #13, !dbg !4541, !srcloc !4542
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !4541
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !4541
  %3 = inttoptr i64 %2 to ptr, !dbg !4541
  store ptr %3, ptr %tmp1, align 8, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4539
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4541
  store ptr %4, ptr %tmp, align 8, !dbg !4540
  %5 = load ptr, ptr %tmp, align 8, !dbg !4539
  store ptr %5, ptr %ct, align 8, !dbg !4538
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4543
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4178, metadata !DIExpression()), !dbg !4543
  %call = call i64 @ct_dynticks_nmi_nesting() #14, !dbg !4543
  %cmp = icmp slt i64 %call, 0, !dbg !4543
  %lnot = xor i1 %cmp, true, !dbg !4543
  %lnot2 = xor i1 %lnot, true, !dbg !4543
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4543
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4543
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4544
  %tobool = icmp ne i32 %6, 0, !dbg !4544
  %lnot3 = xor i1 %tobool, true, !dbg !4544
  %lnot5 = xor i1 %lnot3, true, !dbg !4544
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4544
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4544
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4544
  %tobool7 = icmp ne i64 %expval, 0, !dbg !4544
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4543

if.then:                                          ; preds = %do.end
  br label %do.body8, !dbg !4544

do.body8:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !4545
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4180, metadata !DIExpression()), !dbg !4545
  store i32 2307, ptr %__flags, align 4, !dbg !4545
  br label %do.body9, !dbg !4545

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !4546

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4546

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !4545

do.body12:                                        ; preds = %do.end11
  %7 = load i32, ptr %__flags, align 4, !dbg !4548
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 264, i32 %7, i64 12) #12, !dbg !4548, !srcloc !4550
  br label %do.cond13, !dbg !4548

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4548

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !4545

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !4551

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4551

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !4544
  br label %do.cond18, !dbg !4545

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !4545

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !4545

if.end:                                           ; preds = %do.end19, %do.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !4543
  %tobool21 = icmp ne i32 %8, 0, !dbg !4543
  %lnot22 = xor i1 %tobool21, true, !dbg !4543
  %lnot24 = xor i1 %lnot22, true, !dbg !4543
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !4543
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !4543
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !4543
  store i64 %expval27, ptr %tmp20, align 8, !dbg !4544
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4553
  %9 = load i64, ptr %tmp20, align 8, !dbg !4543
  %call28 = call zeroext i1 @rcu_dynticks_curr_cpu_in_eqs() #14, !dbg !4554
  br i1 %call28, label %if.then29, label %if.else, !dbg !4556

if.then29:                                        ; preds = %if.end
  %call30 = call i32 @preempt_count() #14, !dbg !4557
  %conv31 = sext i32 %call30 to i64, !dbg !4557
  %and = and i64 %conv31, 15728640, !dbg !4557
  %tobool32 = icmp ne i64 %and, 0, !dbg !4557
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !4560

if.then33:                                        ; preds = %if.then29
  call void @rcu_dynticks_task_exit() #14, !dbg !4561
  br label %if.end34, !dbg !4561

if.end34:                                         ; preds = %if.then33, %if.then29
  call void @ct_kernel_enter_state(i32 noundef 4) #14, !dbg !4562
  br label %do.body35, !dbg !4563

do.body35:                                        ; preds = %if.end34
  br label %do.cond36, !dbg !4564

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !4564

do.end37:                                         ; preds = %do.cond36
  %10 = load ptr, ptr %ct, align 8, !dbg !4566
  %state = getelementptr inbounds %struct.context_tracking, ptr %10, i32 0, i32 0, !dbg !4567
  call void @instrument_atomic_read(ptr noundef %state, i64 noundef 4) #14, !dbg !4568
  %11 = load ptr, ptr %ct, align 8, !dbg !4569
  %state38 = getelementptr inbounds %struct.context_tracking, ptr %11, i32 0, i32 0, !dbg !4570
  call void @instrument_atomic_write(ptr noundef %state38, i64 noundef 4) #14, !dbg !4571
  store i64 1, ptr %incby, align 8, !dbg !4572
  br label %if.end52, !dbg !4573

if.else:                                          ; preds = %if.end
  %call39 = call i32 @preempt_count() #14, !dbg !4574
  %conv40 = sext i32 %call39 to i64, !dbg !4574
  %and41 = and i64 %conv40, 15728640, !dbg !4574
  %tobool42 = icmp ne i64 %and41, 0, !dbg !4574
  br i1 %tobool42, label %if.else47, label %if.then43, !dbg !4576

if.then43:                                        ; preds = %if.else
  br label %do.body44, !dbg !4577

do.body44:                                        ; preds = %if.then43
  br label %do.cond45, !dbg !4579

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !4579

do.end46:                                         ; preds = %do.cond45
  call void @rcu_irq_enter_check_tick() #14, !dbg !4581
  br label %if.end51, !dbg !4582

if.else47:                                        ; preds = %if.else
  br label %do.body48, !dbg !4583

do.body48:                                        ; preds = %if.else47
  br label %do.cond49, !dbg !4585

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !4585

do.end50:                                         ; preds = %do.cond49
  br label %if.end51

if.end51:                                         ; preds = %do.end50, %do.end46
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %do.end37
  %12 = load i64, ptr %incby, align 8, !dbg !4587
  %cmp53 = icmp eq i64 %12, 1, !dbg !4588
  br i1 %cmp53, label %cond.true, label %cond.false, !dbg !4587

cond.true:                                        ; preds = %if.end52
  %13 = load ptr, ptr @ct_nmi_enter.___tp_str, align 8, !dbg !4589
  store ptr %13, ptr %tmp55, align 8, !dbg !4589
  %14 = load ptr, ptr %tmp55, align 8, !dbg !4589
  br label %cond.end, !dbg !4587

cond.false:                                       ; preds = %if.end52
  %15 = load ptr, ptr @ct_nmi_enter.___tp_str.5, align 8, !dbg !4591
  store ptr %15, ptr %tmp56, align 8, !dbg !4591
  %16 = load ptr, ptr %tmp56, align 8, !dbg !4591
  br label %cond.end, !dbg !4587

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %14, %cond.true ], [ %16, %cond.false ], !dbg !4587
  %call57 = call i64 @ct_dynticks_nmi_nesting() #14, !dbg !4593
  %call58 = call i64 @ct_dynticks_nmi_nesting() #14, !dbg !4594
  %17 = load i64, ptr %incby, align 8, !dbg !4595
  %add = add i64 %call58, %17, !dbg !4596
  %call59 = call i32 @ct_dynticks() #14, !dbg !4597
  call void @trace_rcu_dyntick(ptr noundef %cond, i64 noundef %call57, i64 noundef %add, i32 noundef %call59) #14, !dbg !4598
  br label %do.body60, !dbg !4599

do.body60:                                        ; preds = %cond.end
  br label %do.cond61, !dbg !4600

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !4600

do.end62:                                         ; preds = %do.cond61
  br label %do.body63, !dbg !4602

do.body63:                                        ; preds = %do.end62
  br label %do.body64, !dbg !4603

do.body64:                                        ; preds = %do.body63
  br label %do.cond65, !dbg !4605

do.cond65:                                        ; preds = %do.body64
  br label %do.end66, !dbg !4605

do.end66:                                         ; preds = %do.cond65
  br label %do.body67, !dbg !4603

do.body67:                                        ; preds = %do.end66
  %call68 = call i64 @ct_dynticks_nmi_nesting() #14, !dbg !4607
  %18 = load i64, ptr %incby, align 8, !dbg !4607
  %add69 = add i64 %call68, %18, !dbg !4607
  %19 = load ptr, ptr %ct, align 8, !dbg !4607
  %dynticks_nmi_nesting = getelementptr inbounds %struct.context_tracking, ptr %19, i32 0, i32 2, !dbg !4607
  store volatile i64 %add69, ptr %dynticks_nmi_nesting, align 8, !dbg !4607
  br label %do.cond70, !dbg !4607

do.cond70:                                        ; preds = %do.body67
  br label %do.end71, !dbg !4607

do.end71:                                         ; preds = %do.cond70
  br label %do.cond72, !dbg !4603

do.cond72:                                        ; preds = %do.end71
  br label %do.end73, !dbg !4603

do.end73:                                         ; preds = %do.cond72
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !4609, !srcloc !4610
  call void @llvm.lifetime.end.p0(i64 8, ptr %ct) #12, !dbg !4611
  call void @llvm.lifetime.end.p0(i64 8, ptr %incby) #12, !dbg !4611
  ret void, !dbg !4611
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_dynticks_task_exit() #3 align 16 !dbg !4612 {
entry:
  ret void, !dbg !4613
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ct_kernel_enter_state(i32 noundef %offset) #0 section ".noinstr.text" align 16 !dbg !4614 {
entry:
  %offset.addr = alloca i32, align 4
  %seq = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4616, metadata !DIExpression()), !dbg !4623
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #12, !dbg !4624
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !4617, metadata !DIExpression()), !dbg !4625
  %0 = load i32, ptr %offset.addr, align 4, !dbg !4626
  %call = call i64 @ct_state_inc(i32 noundef %0) #14, !dbg !4627
  %conv = trunc i64 %call to i32, !dbg !4627
  store i32 %conv, ptr %seq, align 4, !dbg !4628
  call void @rcu_dynticks_task_trace_exit() #14, !dbg !4629
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4630
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4618, metadata !DIExpression()), !dbg !4630
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !4630
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !4631
  %tobool = icmp ne i32 %1, 0, !dbg !4631
  %lnot = xor i1 %tobool, true, !dbg !4631
  %lnot1 = xor i1 %lnot, true, !dbg !4631
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4631
  %conv2 = sext i32 %lnot.ext to i64, !dbg !4631
  %expval = call i64 @llvm.expect.i64(i64 %conv2, i64 0), !dbg !4631
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4631
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4630

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4631

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !4632
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4620, metadata !DIExpression()), !dbg !4632
  store i32 2307, ptr %__flags, align 4, !dbg !4632
  br label %do.body4, !dbg !4632

do.body4:                                         ; preds = %do.body
  br label %do.cond, !dbg !4633

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !4633

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !4632

do.body5:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !4635
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 113, i32 %2, i64 12) #12, !dbg !4635, !srcloc !4637
  br label %do.cond6, !dbg !4635

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4635

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !4632

do.body8:                                         ; preds = %do.end7
  br label %do.cond9, !dbg !4638

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4638

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !4631
  br label %do.cond11, !dbg !4632

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !4632

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !4632

if.end:                                           ; preds = %do.end12, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4630
  %tobool13 = icmp ne i32 %3, 0, !dbg !4630
  %lnot14 = xor i1 %tobool13, true, !dbg !4630
  %lnot16 = xor i1 %lnot14, true, !dbg !4630
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !4630
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !4630
  %expval19 = call i64 @llvm.expect.i64(i64 %conv18, i64 0), !dbg !4630
  store i64 %expval19, ptr %tmp, align 8, !dbg !4631
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4640
  %4 = load i64, ptr %tmp, align 8, !dbg !4630
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #12, !dbg !4641
  ret void, !dbg !4641
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4642 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4644, metadata !DIExpression()), !dbg !4646
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4645, metadata !DIExpression()), !dbg !4647
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4648
  %1 = load i64, ptr %size.addr, align 8, !dbg !4649
  %conv = trunc i64 %1 to i32, !dbg !4649
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !4650
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4651
  %3 = load i64, ptr %size.addr, align 8, !dbg !4651
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !4651
  ret void, !dbg !4652
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_irq_enter_check_tick() #3 align 16 !dbg !4653 {
entry:
  %call = call zeroext i1 @context_tracking_enabled() #14, !dbg !4655
  br i1 %call, label %if.then, label %if.end, !dbg !4657

if.then:                                          ; preds = %entry
  call void @__rcu_irq_enter_check_tick() #14, !dbg !4658
  br label %if.end, !dbg !4658

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4659
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ct_idle_enter() #0 section ".noinstr.text" align 16 !dbg !4660 {
entry:
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4667
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4662, metadata !DIExpression()), !dbg !4667
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !4667
  %0 = load i32, ptr %__ret_warn_on, align 4, !dbg !4668
  %tobool = icmp ne i32 %0, 0, !dbg !4668
  %lnot = xor i1 %tobool, true, !dbg !4668
  %lnot1 = xor i1 %lnot, true, !dbg !4668
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4668
  %conv = sext i32 %lnot.ext to i64, !dbg !4668
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4668
  %tobool2 = icmp ne i64 %expval, 0, !dbg !4668
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4667

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4668

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !4669
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4664, metadata !DIExpression()), !dbg !4669
  store i32 2307, ptr %__flags, align 4, !dbg !4669
  br label %do.body3, !dbg !4669

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !4670

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !4670

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !4669

do.body4:                                         ; preds = %do.end
  %1 = load i32, ptr %__flags, align 4, !dbg !4672
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 319, i32 %1, i64 12) #12, !dbg !4672, !srcloc !4674
  br label %do.cond5, !dbg !4672

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4672

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !4669

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !4675

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !4675

do.end9:                                          ; preds = %do.cond8
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !4668
  br label %do.cond10, !dbg !4669

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !4669

do.end11:                                         ; preds = %do.cond10
  br label %if.end, !dbg !4669

if.end:                                           ; preds = %do.end11, %entry
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !4667
  %tobool12 = icmp ne i32 %2, 0, !dbg !4667
  %lnot13 = xor i1 %tobool12, true, !dbg !4667
  %lnot15 = xor i1 %lnot13, true, !dbg !4667
  %lnot.ext16 = zext i1 %lnot15 to i32, !dbg !4667
  %conv17 = sext i32 %lnot.ext16 to i64, !dbg !4667
  %expval18 = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !4667
  store i64 %expval18, ptr %tmp, align 8, !dbg !4668
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4677
  %3 = load i64, ptr %tmp, align 8, !dbg !4667
  call void @ct_kernel_exit(i1 noundef zeroext false, i32 noundef 5) #14, !dbg !4678
  ret void, !dbg !4679
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ct_kernel_exit(i1 noundef zeroext %user, i32 noundef %offset) #0 section ".noinstr.text" align 16 !dbg !4239 {
entry:
  %user.addr = alloca i8, align 1
  %offset.addr = alloca i32, align 4
  %ct = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp20 = alloca i64, align 8
  %__ret_warn_on37 = alloca i32, align 4
  %__flags48 = alloca i32, align 4
  %tmp61 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp80 = alloca ptr, align 8
  %__ret_warn_on83 = alloca i32, align 4
  %__flags94 = alloca i32, align 4
  %tmp107 = alloca i64, align 8
  %frombool = zext i1 %user to i8
  store i8 %frombool, ptr %user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !4243, metadata !DIExpression()), !dbg !4680
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4244, metadata !DIExpression()), !dbg !4681
  call void @llvm.lifetime.start.p0(i64 8, ptr %ct) #12, !dbg !4682
  call void @llvm.dbg.declare(metadata ptr %ct, metadata !4245, metadata !DIExpression()), !dbg !4683
  br label %do.body, !dbg !4684

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4685
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4246, metadata !DIExpression()), !dbg !4685
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4685
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4685
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4684
  br label %do.cond, !dbg !4685

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4685

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4686
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !4249, metadata !DIExpression()), !dbg !4686
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @context_tracking) #13, !dbg !4686, !srcloc !4687
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !4686
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !4686
  %3 = inttoptr i64 %2 to ptr, !dbg !4686
  store ptr %3, ptr %tmp1, align 8, !dbg !4686
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4684
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4686
  store ptr %4, ptr %tmp, align 8, !dbg !4685
  %5 = load ptr, ptr %tmp, align 8, !dbg !4684
  store ptr %5, ptr %ct, align 8, !dbg !4683
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4688
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4251, metadata !DIExpression()), !dbg !4688
  %call = call i64 @ct_dynticks_nmi_nesting() #14, !dbg !4688
  %cmp = icmp ne i64 %call, 4611686018427387904, !dbg !4688
  %lnot = xor i1 %cmp, true, !dbg !4688
  %lnot2 = xor i1 %lnot, true, !dbg !4688
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4688
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4688
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4689
  %tobool = icmp ne i32 %6, 0, !dbg !4689
  %lnot3 = xor i1 %tobool, true, !dbg !4689
  %lnot5 = xor i1 %lnot3, true, !dbg !4689
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4689
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4689
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4689
  %tobool7 = icmp ne i64 %expval, 0, !dbg !4689
  br i1 %tobool7, label %if.then, label %if.end, !dbg !4688

if.then:                                          ; preds = %do.end
  br label %do.body8, !dbg !4689

do.body8:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !4690
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4253, metadata !DIExpression()), !dbg !4690
  store i32 2307, ptr %__flags, align 4, !dbg !4690
  br label %do.body9, !dbg !4690

do.body9:                                         ; preds = %do.body8
  br label %do.cond10, !dbg !4691

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !4691

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !4690

do.body12:                                        ; preds = %do.end11
  %7 = load i32, ptr %__flags, align 4, !dbg !4693
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 128, i32 %7, i64 12) #12, !dbg !4693, !srcloc !4695
  br label %do.cond13, !dbg !4693

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4693

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !4690

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !4696

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4696

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !4689
  br label %do.cond18, !dbg !4690

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !4690

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !4690

if.end:                                           ; preds = %do.end19, %do.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !4688
  %tobool21 = icmp ne i32 %8, 0, !dbg !4688
  %lnot22 = xor i1 %tobool21, true, !dbg !4688
  %lnot24 = xor i1 %lnot22, true, !dbg !4688
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !4688
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !4688
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !4688
  store i64 %expval27, ptr %tmp20, align 8, !dbg !4689
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4698
  %9 = load i64, ptr %tmp20, align 8, !dbg !4688
  br label %do.body28, !dbg !4699

do.body28:                                        ; preds = %if.end
  br label %do.body29, !dbg !4700

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !4702

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4702

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !4700

do.body32:                                        ; preds = %do.end31
  %10 = load ptr, ptr %ct, align 8, !dbg !4704
  %dynticks_nmi_nesting = getelementptr inbounds %struct.context_tracking, ptr %10, i32 0, i32 2, !dbg !4704
  store volatile i64 0, ptr %dynticks_nmi_nesting, align 8, !dbg !4704
  br label %do.cond33, !dbg !4704

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4704

do.end34:                                         ; preds = %do.cond33
  br label %do.cond35, !dbg !4700

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !4700

do.end36:                                         ; preds = %do.cond35
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on37) #12, !dbg !4706
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on37, metadata !4256, metadata !DIExpression()), !dbg !4706
  store i32 0, ptr %__ret_warn_on37, align 4, !dbg !4706
  %11 = load i32, ptr %__ret_warn_on37, align 4, !dbg !4707
  %tobool38 = icmp ne i32 %11, 0, !dbg !4707
  %lnot39 = xor i1 %tobool38, true, !dbg !4707
  %lnot41 = xor i1 %lnot39, true, !dbg !4707
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !4707
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !4707
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !4707
  %tobool45 = icmp ne i64 %expval44, 0, !dbg !4707
  br i1 %tobool45, label %if.then46, label %if.end60, !dbg !4706

if.then46:                                        ; preds = %do.end36
  br label %do.body47, !dbg !4707

do.body47:                                        ; preds = %if.then46
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags48) #12, !dbg !4708
  call void @llvm.dbg.declare(metadata ptr %__flags48, metadata !4258, metadata !DIExpression()), !dbg !4708
  store i32 2307, ptr %__flags48, align 4, !dbg !4708
  br label %do.body49, !dbg !4708

do.body49:                                        ; preds = %do.body47
  br label %do.cond50, !dbg !4709

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !4709

do.end51:                                         ; preds = %do.cond50
  br label %do.body52, !dbg !4708

do.body52:                                        ; preds = %do.end51
  %12 = load i32, ptr %__flags48, align 4, !dbg !4711
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 131, i32 %12, i64 12) #12, !dbg !4711, !srcloc !4713
  br label %do.cond53, !dbg !4711

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !4711

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !4708

do.body55:                                        ; preds = %do.end54
  br label %do.cond56, !dbg !4714

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !4714

do.end57:                                         ; preds = %do.cond56
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags48) #12, !dbg !4707
  br label %do.cond58, !dbg !4708

do.cond58:                                        ; preds = %do.end57
  br label %do.end59, !dbg !4708

do.end59:                                         ; preds = %do.cond58
  br label %if.end60, !dbg !4708

if.end60:                                         ; preds = %do.end59, %do.end36
  %13 = load i32, ptr %__ret_warn_on37, align 4, !dbg !4706
  %tobool62 = icmp ne i32 %13, 0, !dbg !4706
  %lnot63 = xor i1 %tobool62, true, !dbg !4706
  %lnot65 = xor i1 %lnot63, true, !dbg !4706
  %lnot.ext66 = zext i1 %lnot65 to i32, !dbg !4706
  %conv67 = sext i32 %lnot.ext66 to i64, !dbg !4706
  %expval68 = call i64 @llvm.expect.i64(i64 %conv67, i64 0), !dbg !4706
  store i64 %expval68, ptr %tmp61, align 8, !dbg !4707
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on37) #12, !dbg !4716
  %14 = load i64, ptr %tmp61, align 8, !dbg !4706
  %call69 = call i64 @ct_dynticks_nesting() #14, !dbg !4717
  %cmp70 = icmp ne i64 %call69, 1, !dbg !4719
  br i1 %cmp70, label %if.then72, label %if.end73, !dbg !4720

if.then72:                                        ; preds = %if.end60
  %15 = load ptr, ptr %ct, align 8, !dbg !4721
  %dynticks_nesting = getelementptr inbounds %struct.context_tracking, ptr %15, i32 0, i32 1, !dbg !4723
  %16 = load i64, ptr %dynticks_nesting, align 8, !dbg !4724
  %dec = add i64 %16, -1, !dbg !4724
  store i64 %dec, ptr %dynticks_nesting, align 8, !dbg !4724
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4725

if.end73:                                         ; preds = %if.end60
  br label %do.body74, !dbg !4726

do.body74:                                        ; preds = %if.end73
  br label %do.cond75, !dbg !4727

do.cond75:                                        ; preds = %do.body74
  br label %do.end76, !dbg !4727

do.end76:                                         ; preds = %do.cond75
  br label %do.body77, !dbg !4729

do.body77:                                        ; preds = %do.end76
  br label %do.cond78, !dbg !4730

do.cond78:                                        ; preds = %do.body77
  br label %do.end79, !dbg !4730

do.end79:                                         ; preds = %do.cond78
  %17 = load ptr, ptr @ct_kernel_exit.___tp_str, align 8, !dbg !4732
  store ptr %17, ptr %tmp80, align 8, !dbg !4732
  %18 = load ptr, ptr %tmp80, align 8, !dbg !4732
  %call81 = call i64 @ct_dynticks_nesting() #14, !dbg !4734
  %call82 = call i32 @ct_dynticks() #14, !dbg !4735
  call void @trace_rcu_dyntick(ptr noundef %18, i64 noundef %call81, i64 noundef 0, i32 noundef %call82) #14, !dbg !4736
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on83) #12, !dbg !4737
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on83, metadata !4261, metadata !DIExpression()), !dbg !4737
  store i32 0, ptr %__ret_warn_on83, align 4, !dbg !4737
  %19 = load i32, ptr %__ret_warn_on83, align 4, !dbg !4738
  %tobool84 = icmp ne i32 %19, 0, !dbg !4738
  %lnot85 = xor i1 %tobool84, true, !dbg !4738
  %lnot87 = xor i1 %lnot85, true, !dbg !4738
  %lnot.ext88 = zext i1 %lnot87 to i32, !dbg !4738
  %conv89 = sext i32 %lnot.ext88 to i64, !dbg !4738
  %expval90 = call i64 @llvm.expect.i64(i64 %conv89, i64 0), !dbg !4738
  %tobool91 = icmp ne i64 %expval90, 0, !dbg !4738
  br i1 %tobool91, label %if.then92, label %if.end106, !dbg !4737

if.then92:                                        ; preds = %do.end79
  br label %do.body93, !dbg !4738

do.body93:                                        ; preds = %if.then92
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags94) #12, !dbg !4739
  call void @llvm.dbg.declare(metadata ptr %__flags94, metadata !4263, metadata !DIExpression()), !dbg !4739
  store i32 2307, ptr %__flags94, align 4, !dbg !4739
  br label %do.body95, !dbg !4739

do.body95:                                        ; preds = %do.body93
  br label %do.cond96, !dbg !4740

do.cond96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !4740

do.end97:                                         ; preds = %do.cond96
  br label %do.body98, !dbg !4739

do.body98:                                        ; preds = %do.end97
  %20 = load i32, ptr %__flags94, align 4, !dbg !4742
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 141, i32 %20, i64 12) #12, !dbg !4742, !srcloc !4744
  br label %do.cond99, !dbg !4742

do.cond99:                                        ; preds = %do.body98
  br label %do.end100, !dbg !4742

do.end100:                                        ; preds = %do.cond99
  br label %do.body101, !dbg !4739

do.body101:                                       ; preds = %do.end100
  br label %do.cond102, !dbg !4745

do.cond102:                                       ; preds = %do.body101
  br label %do.end103, !dbg !4745

do.end103:                                        ; preds = %do.cond102
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags94) #12, !dbg !4738
  br label %do.cond104, !dbg !4739

do.cond104:                                       ; preds = %do.end103
  br label %do.end105, !dbg !4739

do.end105:                                        ; preds = %do.cond104
  br label %if.end106, !dbg !4739

if.end106:                                        ; preds = %do.end105, %do.end79
  %21 = load i32, ptr %__ret_warn_on83, align 4, !dbg !4737
  %tobool108 = icmp ne i32 %21, 0, !dbg !4737
  %lnot109 = xor i1 %tobool108, true, !dbg !4737
  %lnot111 = xor i1 %lnot109, true, !dbg !4737
  %lnot.ext112 = zext i1 %lnot111 to i32, !dbg !4737
  %conv113 = sext i32 %lnot.ext112 to i64, !dbg !4737
  %expval114 = call i64 @llvm.expect.i64(i64 %conv113, i64 0), !dbg !4737
  store i64 %expval114, ptr %tmp107, align 8, !dbg !4738
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on83) #12, !dbg !4747
  %22 = load i64, ptr %tmp107, align 8, !dbg !4737
  %call115 = call ptr @get_current() #14, !dbg !4748
  call void @rcu_preempt_deferred_qs(ptr noundef %call115) #14, !dbg !4749
  %23 = load ptr, ptr %ct, align 8, !dbg !4750
  %state = getelementptr inbounds %struct.context_tracking, ptr %23, i32 0, i32 0, !dbg !4751
  call void @instrument_atomic_write(ptr noundef %state, i64 noundef 4) #14, !dbg !4752
  br label %do.body116, !dbg !4753

do.body116:                                       ; preds = %if.end106
  br label %do.cond117, !dbg !4754

do.cond117:                                       ; preds = %do.body116
  br label %do.end118, !dbg !4754

do.end118:                                        ; preds = %do.cond117
  br label %do.body119, !dbg !4756

do.body119:                                       ; preds = %do.end118
  br label %do.body120, !dbg !4757

do.body120:                                       ; preds = %do.body119
  br label %do.cond121, !dbg !4759

do.cond121:                                       ; preds = %do.body120
  br label %do.end122, !dbg !4759

do.end122:                                        ; preds = %do.cond121
  br label %do.body123, !dbg !4757

do.body123:                                       ; preds = %do.end122
  %24 = load ptr, ptr %ct, align 8, !dbg !4761
  %dynticks_nesting124 = getelementptr inbounds %struct.context_tracking, ptr %24, i32 0, i32 1, !dbg !4761
  store volatile i64 0, ptr %dynticks_nesting124, align 8, !dbg !4761
  br label %do.cond125, !dbg !4761

do.cond125:                                       ; preds = %do.body123
  br label %do.end126, !dbg !4761

do.end126:                                        ; preds = %do.cond125
  br label %do.cond127, !dbg !4757

do.cond127:                                       ; preds = %do.end126
  br label %do.end128, !dbg !4757

do.end128:                                        ; preds = %do.cond127
  %25 = load i32, ptr %offset.addr, align 4, !dbg !4763
  call void @ct_kernel_exit_state(i32 noundef %25) #14, !dbg !4764
  call void @rcu_dynticks_task_enter() #14, !dbg !4765
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4766
  br label %cleanup, !dbg !4766

cleanup:                                          ; preds = %do.end128, %if.then72
  call void @llvm.lifetime.end.p0(i64 8, ptr %ct) #12, !dbg !4766
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4766

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ct_idle_exit() #0 section ".noinstr.text" align 16 !dbg !4767 {
entry:
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy3 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !4778
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4769, metadata !DIExpression()), !dbg !4779
  br label %do.body, !dbg !4780

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !4781
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4770, metadata !DIExpression()), !dbg !4781
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !4781
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4773, metadata !DIExpression()), !dbg !4781
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4781
  %conv = zext i1 %cmp to i32, !dbg !4781
  store i32 1, ptr %tmp, align 4, !dbg !4781
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !4782
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !4782
  %0 = load i32, ptr %tmp, align 4, !dbg !4781
  %call = call i64 @arch_local_irq_save() #14, !dbg !4782
  store i64 %call, ptr %flags, align 8, !dbg !4782
  br label %do.cond, !dbg !4782

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4782

do.end:                                           ; preds = %do.cond
  call void @ct_kernel_enter(i1 noundef zeroext false, i32 noundef 3) #14, !dbg !4783
  br label %do.body1, !dbg !4784

do.body1:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy3) #12, !dbg !4785
  call void @llvm.dbg.declare(metadata ptr %__dummy3, metadata !4774, metadata !DIExpression()), !dbg !4785
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #12, !dbg !4785
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !4777, metadata !DIExpression()), !dbg !4785
  %cmp5 = icmp eq ptr %__dummy3, %__dummy24, !dbg !4785
  %conv6 = zext i1 %cmp5 to i32, !dbg !4785
  store i32 1, ptr %tmp7, align 4, !dbg !4785
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #12, !dbg !4786
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy3) #12, !dbg !4786
  %1 = load i32, ptr %tmp7, align 4, !dbg !4785
  br label %do.body8, !dbg !4786

do.body8:                                         ; preds = %do.body1
  br label %do.cond9, !dbg !4787

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4787

do.end10:                                         ; preds = %do.cond9
  %2 = load i64, ptr %flags, align 8, !dbg !4786
  call void @arch_local_irq_restore(i64 noundef %2) #14, !dbg !4786
  br label %do.cond11, !dbg !4786

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !4786

do.end12:                                         ; preds = %do.cond11
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !4789
  ret void, !dbg !4789
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #3 align 16 !dbg !4790 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !4796
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4795, metadata !DIExpression()), !dbg !4797
  %call = call i64 @arch_local_save_flags() #14, !dbg !4798
  store i64 %call, ptr %flags, align 8, !dbg !4797
  call void @arch_local_irq_disable() #14, !dbg !4799
  %0 = load i64, ptr %flags, align 8, !dbg !4800
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !4801
  ret i64 %0, !dbg !4802
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ct_kernel_enter(i1 noundef zeroext %user, i32 noundef %offset) #0 section ".noinstr.text" align 16 !dbg !4270 {
entry:
  %user.addr = alloca i8, align 1
  %offset.addr = alloca i32, align 4
  %ct = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %oldval = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp16 = alloca i64, align 8
  %__ret_warn_on24 = alloca i32, align 4
  %__flags35 = alloca i32, align 4
  %tmp48 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp62 = alloca ptr, align 8
  %__ret_warn_on65 = alloca i32, align 4
  %__flags76 = alloca i32, align 4
  %tmp89 = alloca i64, align 8
  %__ret_warn_on107 = alloca i32, align 4
  %__flags124 = alloca i32, align 4
  %tmp137 = alloca i64, align 8
  %frombool = zext i1 %user to i8
  store i8 %frombool, ptr %user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %user.addr, metadata !4272, metadata !DIExpression()), !dbg !4803
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4273, metadata !DIExpression()), !dbg !4804
  call void @llvm.lifetime.start.p0(i64 8, ptr %ct) #12, !dbg !4805
  call void @llvm.dbg.declare(metadata ptr %ct, metadata !4274, metadata !DIExpression()), !dbg !4806
  br label %do.body, !dbg !4807

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4808
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4275, metadata !DIExpression()), !dbg !4808
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4808
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4808
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4807
  br label %do.cond, !dbg !4808

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4808

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4809
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !4278, metadata !DIExpression()), !dbg !4809
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @context_tracking) #13, !dbg !4809, !srcloc !4810
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !4809
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !4809
  %3 = inttoptr i64 %2 to ptr, !dbg !4809
  store ptr %3, ptr %tmp1, align 8, !dbg !4809
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !4807
  %4 = load ptr, ptr %tmp1, align 8, !dbg !4809
  store ptr %4, ptr %tmp, align 8, !dbg !4808
  %5 = load ptr, ptr %tmp, align 8, !dbg !4807
  store ptr %5, ptr %ct, align 8, !dbg !4806
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldval) #12, !dbg !4811
  call void @llvm.dbg.declare(metadata ptr %oldval, metadata !4280, metadata !DIExpression()), !dbg !4812
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4813
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4281, metadata !DIExpression()), !dbg !4813
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !4813
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4814
  %tobool = icmp ne i32 %6, 0, !dbg !4814
  %lnot = xor i1 %tobool, true, !dbg !4814
  %lnot2 = xor i1 %lnot, true, !dbg !4814
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4814
  %conv = sext i32 %lnot.ext to i64, !dbg !4814
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4814
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4814
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4813

if.then:                                          ; preds = %do.end
  br label %do.body4, !dbg !4814

do.body4:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !4815
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4283, metadata !DIExpression()), !dbg !4815
  store i32 2307, ptr %__flags, align 4, !dbg !4815
  br label %do.body5, !dbg !4815

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !4816

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4816

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !4815

do.body8:                                         ; preds = %do.end7
  %7 = load i32, ptr %__flags, align 4, !dbg !4818
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 168, i32 %7, i64 12) #12, !dbg !4818, !srcloc !4820
  br label %do.cond9, !dbg !4818

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !4818

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !4815

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !4821

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4821

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !4814
  br label %do.cond14, !dbg !4815

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !4815

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !4815

if.end:                                           ; preds = %do.end15, %do.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !4813
  %tobool17 = icmp ne i32 %8, 0, !dbg !4813
  %lnot18 = xor i1 %tobool17, true, !dbg !4813
  %lnot20 = xor i1 %lnot18, true, !dbg !4813
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !4813
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !4813
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !4813
  store i64 %expval23, ptr %tmp16, align 8, !dbg !4814
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4823
  %9 = load i64, ptr %tmp16, align 8, !dbg !4813
  %call = call i64 @ct_dynticks_nesting() #14, !dbg !4824
  store i64 %call, ptr %oldval, align 8, !dbg !4825
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on24) #12, !dbg !4826
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on24, metadata !4286, metadata !DIExpression()), !dbg !4826
  store i32 0, ptr %__ret_warn_on24, align 4, !dbg !4826
  %10 = load i32, ptr %__ret_warn_on24, align 4, !dbg !4827
  %tobool25 = icmp ne i32 %10, 0, !dbg !4827
  %lnot26 = xor i1 %tobool25, true, !dbg !4827
  %lnot28 = xor i1 %lnot26, true, !dbg !4827
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !4827
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !4827
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !4827
  %tobool32 = icmp ne i64 %expval31, 0, !dbg !4827
  br i1 %tobool32, label %if.then33, label %if.end47, !dbg !4826

if.then33:                                        ; preds = %if.end
  br label %do.body34, !dbg !4827

do.body34:                                        ; preds = %if.then33
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags35) #12, !dbg !4828
  call void @llvm.dbg.declare(metadata ptr %__flags35, metadata !4288, metadata !DIExpression()), !dbg !4828
  store i32 2307, ptr %__flags35, align 4, !dbg !4828
  br label %do.body36, !dbg !4828

do.body36:                                        ; preds = %do.body34
  br label %do.cond37, !dbg !4829

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !4829

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !4828

do.body39:                                        ; preds = %do.end38
  %11 = load i32, ptr %__flags35, align 4, !dbg !4831
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 170, i32 %11, i64 12) #12, !dbg !4831, !srcloc !4833
  br label %do.cond40, !dbg !4831

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !4831

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !4828

do.body42:                                        ; preds = %do.end41
  br label %do.cond43, !dbg !4834

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !4834

do.end44:                                         ; preds = %do.cond43
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags35) #12, !dbg !4827
  br label %do.cond45, !dbg !4828

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !4828

do.end46:                                         ; preds = %do.cond45
  br label %if.end47, !dbg !4828

if.end47:                                         ; preds = %do.end46, %if.end
  %12 = load i32, ptr %__ret_warn_on24, align 4, !dbg !4826
  %tobool49 = icmp ne i32 %12, 0, !dbg !4826
  %lnot50 = xor i1 %tobool49, true, !dbg !4826
  %lnot52 = xor i1 %lnot50, true, !dbg !4826
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !4826
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !4826
  %expval55 = call i64 @llvm.expect.i64(i64 %conv54, i64 0), !dbg !4826
  store i64 %expval55, ptr %tmp48, align 8, !dbg !4827
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on24) #12, !dbg !4836
  %13 = load i64, ptr %tmp48, align 8, !dbg !4826
  %14 = load i64, ptr %oldval, align 8, !dbg !4837
  %tobool56 = icmp ne i64 %14, 0, !dbg !4837
  br i1 %tobool56, label %if.then57, label %if.end58, !dbg !4839

if.then57:                                        ; preds = %if.end47
  %15 = load ptr, ptr %ct, align 8, !dbg !4840
  %dynticks_nesting = getelementptr inbounds %struct.context_tracking, ptr %15, i32 0, i32 1, !dbg !4842
  %16 = load i64, ptr %dynticks_nesting, align 8, !dbg !4843
  %inc = add i64 %16, 1, !dbg !4843
  store i64 %inc, ptr %dynticks_nesting, align 8, !dbg !4843
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4844

if.end58:                                         ; preds = %if.end47
  call void @rcu_dynticks_task_exit() #14, !dbg !4845
  %17 = load i32, ptr %offset.addr, align 4, !dbg !4846
  call void @ct_kernel_enter_state(i32 noundef %17) #14, !dbg !4847
  br label %do.body59, !dbg !4848

do.body59:                                        ; preds = %if.end58
  br label %do.cond60, !dbg !4849

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !4849

do.end61:                                         ; preds = %do.cond60
  %18 = load ptr, ptr %ct, align 8, !dbg !4851
  %state = getelementptr inbounds %struct.context_tracking, ptr %18, i32 0, i32 0, !dbg !4852
  call void @instrument_atomic_write(ptr noundef %state, i64 noundef 4) #14, !dbg !4853
  %19 = load ptr, ptr @ct_kernel_enter.___tp_str, align 8, !dbg !4854
  store ptr %19, ptr %tmp62, align 8, !dbg !4854
  %20 = load ptr, ptr %tmp62, align 8, !dbg !4854
  %call63 = call i64 @ct_dynticks_nesting() #14, !dbg !4856
  %call64 = call i32 @ct_dynticks() #14, !dbg !4857
  call void @trace_rcu_dyntick(ptr noundef %20, i64 noundef %call63, i64 noundef 1, i32 noundef %call64) #14, !dbg !4858
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on65) #12, !dbg !4859
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on65, metadata !4291, metadata !DIExpression()), !dbg !4859
  store i32 0, ptr %__ret_warn_on65, align 4, !dbg !4859
  %21 = load i32, ptr %__ret_warn_on65, align 4, !dbg !4860
  %tobool66 = icmp ne i32 %21, 0, !dbg !4860
  %lnot67 = xor i1 %tobool66, true, !dbg !4860
  %lnot69 = xor i1 %lnot67, true, !dbg !4860
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !4860
  %conv71 = sext i32 %lnot.ext70 to i64, !dbg !4860
  %expval72 = call i64 @llvm.expect.i64(i64 %conv71, i64 0), !dbg !4860
  %tobool73 = icmp ne i64 %expval72, 0, !dbg !4860
  br i1 %tobool73, label %if.then74, label %if.end88, !dbg !4859

if.then74:                                        ; preds = %do.end61
  br label %do.body75, !dbg !4860

do.body75:                                        ; preds = %if.then74
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags76) #12, !dbg !4861
  call void @llvm.dbg.declare(metadata ptr %__flags76, metadata !4293, metadata !DIExpression()), !dbg !4861
  store i32 2307, ptr %__flags76, align 4, !dbg !4861
  br label %do.body77, !dbg !4861

do.body77:                                        ; preds = %do.body75
  br label %do.cond78, !dbg !4862

do.cond78:                                        ; preds = %do.body77
  br label %do.end79, !dbg !4862

do.end79:                                         ; preds = %do.cond78
  br label %do.body80, !dbg !4861

do.body80:                                        ; preds = %do.end79
  %22 = load i32, ptr %__flags76, align 4, !dbg !4864
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 186, i32 %22, i64 12) #12, !dbg !4864, !srcloc !4866
  br label %do.cond81, !dbg !4864

do.cond81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !4864

do.end82:                                         ; preds = %do.cond81
  br label %do.body83, !dbg !4861

do.body83:                                        ; preds = %do.end82
  br label %do.cond84, !dbg !4867

do.cond84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !4867

do.end85:                                         ; preds = %do.cond84
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags76) #12, !dbg !4860
  br label %do.cond86, !dbg !4861

do.cond86:                                        ; preds = %do.end85
  br label %do.end87, !dbg !4861

do.end87:                                         ; preds = %do.cond86
  br label %if.end88, !dbg !4861

if.end88:                                         ; preds = %do.end87, %do.end61
  %23 = load i32, ptr %__ret_warn_on65, align 4, !dbg !4859
  %tobool90 = icmp ne i32 %23, 0, !dbg !4859
  %lnot91 = xor i1 %tobool90, true, !dbg !4859
  %lnot93 = xor i1 %lnot91, true, !dbg !4859
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !4859
  %conv95 = sext i32 %lnot.ext94 to i64, !dbg !4859
  %expval96 = call i64 @llvm.expect.i64(i64 %conv95, i64 0), !dbg !4859
  store i64 %expval96, ptr %tmp89, align 8, !dbg !4860
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on65) #12, !dbg !4869
  %24 = load i64, ptr %tmp89, align 8, !dbg !4859
  br label %do.body97, !dbg !4870

do.body97:                                        ; preds = %if.end88
  br label %do.body98, !dbg !4871

do.body98:                                        ; preds = %do.body97
  br label %do.cond99, !dbg !4873

do.cond99:                                        ; preds = %do.body98
  br label %do.end100, !dbg !4873

do.end100:                                        ; preds = %do.cond99
  br label %do.body101, !dbg !4871

do.body101:                                       ; preds = %do.end100
  %25 = load ptr, ptr %ct, align 8, !dbg !4875
  %dynticks_nesting102 = getelementptr inbounds %struct.context_tracking, ptr %25, i32 0, i32 1, !dbg !4875
  store volatile i64 1, ptr %dynticks_nesting102, align 8, !dbg !4875
  br label %do.cond103, !dbg !4875

do.cond103:                                       ; preds = %do.body101
  br label %do.end104, !dbg !4875

do.end104:                                        ; preds = %do.cond103
  br label %do.cond105, !dbg !4871

do.cond105:                                       ; preds = %do.end104
  br label %do.end106, !dbg !4871

do.end106:                                        ; preds = %do.cond105
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on107) #12, !dbg !4877
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on107, metadata !4296, metadata !DIExpression()), !dbg !4877
  %call108 = call i64 @ct_dynticks_nmi_nesting() #14, !dbg !4877
  %tobool109 = icmp ne i64 %call108, 0, !dbg !4877
  %lnot110 = xor i1 %tobool109, true, !dbg !4877
  %lnot112 = xor i1 %lnot110, true, !dbg !4877
  %lnot.ext113 = zext i1 %lnot112 to i32, !dbg !4877
  store i32 %lnot.ext113, ptr %__ret_warn_on107, align 4, !dbg !4877
  %26 = load i32, ptr %__ret_warn_on107, align 4, !dbg !4878
  %tobool114 = icmp ne i32 %26, 0, !dbg !4878
  %lnot115 = xor i1 %tobool114, true, !dbg !4878
  %lnot117 = xor i1 %lnot115, true, !dbg !4878
  %lnot.ext118 = zext i1 %lnot117 to i32, !dbg !4878
  %conv119 = sext i32 %lnot.ext118 to i64, !dbg !4878
  %expval120 = call i64 @llvm.expect.i64(i64 %conv119, i64 0), !dbg !4878
  %tobool121 = icmp ne i64 %expval120, 0, !dbg !4878
  br i1 %tobool121, label %if.then122, label %if.end136, !dbg !4877

if.then122:                                       ; preds = %do.end106
  br label %do.body123, !dbg !4878

do.body123:                                       ; preds = %if.then122
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags124) #12, !dbg !4879
  call void @llvm.dbg.declare(metadata ptr %__flags124, metadata !4298, metadata !DIExpression()), !dbg !4879
  store i32 2307, ptr %__flags124, align 4, !dbg !4879
  br label %do.body125, !dbg !4879

do.body125:                                       ; preds = %do.body123
  br label %do.cond126, !dbg !4880

do.cond126:                                       ; preds = %do.body125
  br label %do.end127, !dbg !4880

do.end127:                                        ; preds = %do.cond126
  br label %do.body128, !dbg !4879

do.body128:                                       ; preds = %do.end127
  %27 = load i32, ptr %__flags124, align 4, !dbg !4882
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 188, i32 %27, i64 12) #12, !dbg !4882, !srcloc !4884
  br label %do.cond129, !dbg !4882

do.cond129:                                       ; preds = %do.body128
  br label %do.end130, !dbg !4882

do.end130:                                        ; preds = %do.cond129
  br label %do.body131, !dbg !4879

do.body131:                                       ; preds = %do.end130
  br label %do.cond132, !dbg !4885

do.cond132:                                       ; preds = %do.body131
  br label %do.end133, !dbg !4885

do.end133:                                        ; preds = %do.cond132
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags124) #12, !dbg !4878
  br label %do.cond134, !dbg !4879

do.cond134:                                       ; preds = %do.end133
  br label %do.end135, !dbg !4879

do.end135:                                        ; preds = %do.cond134
  br label %if.end136, !dbg !4879

if.end136:                                        ; preds = %do.end135, %do.end106
  %28 = load i32, ptr %__ret_warn_on107, align 4, !dbg !4877
  %tobool138 = icmp ne i32 %28, 0, !dbg !4877
  %lnot139 = xor i1 %tobool138, true, !dbg !4877
  %lnot141 = xor i1 %lnot139, true, !dbg !4877
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !4877
  %conv143 = sext i32 %lnot.ext142 to i64, !dbg !4877
  %expval144 = call i64 @llvm.expect.i64(i64 %conv143, i64 0), !dbg !4877
  store i64 %expval144, ptr %tmp137, align 8, !dbg !4878
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on107) #12, !dbg !4887
  %29 = load i64, ptr %tmp137, align 8, !dbg !4877
  br label %do.body145, !dbg !4888

do.body145:                                       ; preds = %if.end136
  br label %do.body146, !dbg !4889

do.body146:                                       ; preds = %do.body145
  br label %do.cond147, !dbg !4891

do.cond147:                                       ; preds = %do.body146
  br label %do.end148, !dbg !4891

do.end148:                                        ; preds = %do.cond147
  br label %do.body149, !dbg !4889

do.body149:                                       ; preds = %do.end148
  %30 = load ptr, ptr %ct, align 8, !dbg !4893
  %dynticks_nmi_nesting = getelementptr inbounds %struct.context_tracking, ptr %30, i32 0, i32 2, !dbg !4893
  store volatile i64 4611686018427387904, ptr %dynticks_nmi_nesting, align 8, !dbg !4893
  br label %do.cond150, !dbg !4893

do.cond150:                                       ; preds = %do.body149
  br label %do.end151, !dbg !4893

do.end151:                                        ; preds = %do.cond150
  br label %do.cond152, !dbg !4889

do.cond152:                                       ; preds = %do.end151
  br label %do.end153, !dbg !4889

do.end153:                                        ; preds = %do.cond152
  br label %do.body154, !dbg !4895

do.body154:                                       ; preds = %do.end153
  br label %do.cond155, !dbg !4896

do.cond155:                                       ; preds = %do.body154
  br label %do.end156, !dbg !4896

do.end156:                                        ; preds = %do.cond155
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4898
  br label %cleanup, !dbg !4898

cleanup:                                          ; preds = %do.end156, %if.then57
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldval) #12, !dbg !4898
  call void @llvm.lifetime.end.p0(i64 8, ptr %ct) #12, !dbg !4898
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4898

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #3 align 16 !dbg !4899 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4903, metadata !DIExpression()), !dbg !4904
  %0 = load i64, ptr %flags.addr, align 8, !dbg !4905
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #14, !dbg !4907
  %tobool = icmp ne i32 %call, 0, !dbg !4907
  br i1 %tobool, label %if.end, label %if.then, !dbg !4908

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #14, !dbg !4909
  br label %if.end, !dbg !4909

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4910
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ct_irq_enter() #0 section ".noinstr.text" align 16 !dbg !4911 {
entry:
  br label %do.body, !dbg !4912

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4913

do.end:                                           ; preds = %do.body
  call void @ct_nmi_enter() #14, !dbg !4915
  ret void, !dbg !4916
}

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ct_irq_exit() #0 section ".noinstr.text" align 16 !dbg !4917 {
entry:
  br label %do.body, !dbg !4918

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4919

do.end:                                           ; preds = %do.body
  call void @ct_nmi_exit() #14, !dbg !4921
  ret void, !dbg !4922
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ct_irq_enter_irqson() #6 align 16 !dbg !4923 {
entry:
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !4936
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4925, metadata !DIExpression()), !dbg !4937
  br label %do.body, !dbg !4938

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4939

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !4940
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4926, metadata !DIExpression()), !dbg !4940
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !4940
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4930, metadata !DIExpression()), !dbg !4940
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4940
  %conv = zext i1 %cmp to i32, !dbg !4940
  store i32 1, ptr %tmp, align 4, !dbg !4940
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !4941
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !4941
  %0 = load i32, ptr %tmp, align 4, !dbg !4940
  %call = call i64 @arch_local_irq_save() #14, !dbg !4941
  store i64 %call, ptr %flags, align 8, !dbg !4941
  br label %do.cond, !dbg !4941

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4941

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !4939

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !4939

do.end3:                                          ; preds = %do.cond2
  call void @ct_irq_enter() #14, !dbg !4942
  br label %do.body4, !dbg !4943

do.body4:                                         ; preds = %do.end3
  br label %do.body5, !dbg !4944

do.body5:                                         ; preds = %do.body4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy6) #12, !dbg !4945
  call void @llvm.dbg.declare(metadata ptr %__dummy6, metadata !4931, metadata !DIExpression()), !dbg !4945
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy27) #12, !dbg !4945
  call void @llvm.dbg.declare(metadata ptr %__dummy27, metadata !4935, metadata !DIExpression()), !dbg !4945
  %cmp8 = icmp eq ptr %__dummy6, %__dummy27, !dbg !4945
  %conv9 = zext i1 %cmp8 to i32, !dbg !4945
  store i32 1, ptr %tmp10, align 4, !dbg !4945
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy27) #12, !dbg !4946
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy6) #12, !dbg !4946
  %1 = load i32, ptr %tmp10, align 4, !dbg !4945
  br label %do.body11, !dbg !4946

do.body11:                                        ; preds = %do.body5
  br label %do.cond12, !dbg !4947

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4947

do.end13:                                         ; preds = %do.cond12
  %2 = load i64, ptr %flags, align 8, !dbg !4946
  call void @arch_local_irq_restore(i64 noundef %2) #14, !dbg !4946
  br label %do.cond14, !dbg !4946

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !4946

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !4944

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4944

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !4949
  ret void, !dbg !4949
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ct_irq_exit_irqson() #6 align 16 !dbg !4950 {
entry:
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !4963
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4952, metadata !DIExpression()), !dbg !4964
  br label %do.body, !dbg !4965

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4966

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #12, !dbg !4967
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4953, metadata !DIExpression()), !dbg !4967
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #12, !dbg !4967
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4957, metadata !DIExpression()), !dbg !4967
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4967
  %conv = zext i1 %cmp to i32, !dbg !4967
  store i32 1, ptr %tmp, align 4, !dbg !4967
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #12, !dbg !4968
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #12, !dbg !4968
  %0 = load i32, ptr %tmp, align 4, !dbg !4967
  %call = call i64 @arch_local_irq_save() #14, !dbg !4968
  store i64 %call, ptr %flags, align 8, !dbg !4968
  br label %do.cond, !dbg !4968

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4968

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !4966

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !4966

do.end3:                                          ; preds = %do.cond2
  call void @ct_irq_exit() #14, !dbg !4969
  br label %do.body4, !dbg !4970

do.body4:                                         ; preds = %do.end3
  br label %do.body5, !dbg !4971

do.body5:                                         ; preds = %do.body4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy6) #12, !dbg !4972
  call void @llvm.dbg.declare(metadata ptr %__dummy6, metadata !4958, metadata !DIExpression()), !dbg !4972
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy27) #12, !dbg !4972
  call void @llvm.dbg.declare(metadata ptr %__dummy27, metadata !4962, metadata !DIExpression()), !dbg !4972
  %cmp8 = icmp eq ptr %__dummy6, %__dummy27, !dbg !4972
  %conv9 = zext i1 %cmp8 to i32, !dbg !4972
  store i32 1, ptr %tmp10, align 4, !dbg !4972
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy27) #12, !dbg !4973
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy6) #12, !dbg !4973
  %1 = load i32, ptr %tmp10, align 4, !dbg !4972
  br label %do.body11, !dbg !4973

do.body11:                                        ; preds = %do.body5
  br label %do.cond12, !dbg !4974

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !4974

do.end13:                                         ; preds = %do.cond12
  %2 = load i64, ptr %flags, align 8, !dbg !4973
  call void @arch_local_irq_restore(i64 noundef %2) #14, !dbg !4973
  br label %do.cond14, !dbg !4973

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !4973

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !4971

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4971

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !4976
  ret void, !dbg !4976
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #3 align 16 !dbg !4977 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4982, metadata !DIExpression()), !dbg !4983
  ret void, !dbg !4984
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !4985 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4992, metadata !DIExpression()), !dbg !4993
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4994
  %call = call i32 @arch_atomic_read(ptr noundef %0) #14, !dbg !4995
  ret i32 %call, !dbg !4996
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !4997 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5000, metadata !DIExpression()), !dbg !5001
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5002
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !5002
  %1 = load volatile i32, ptr %counter, align 4, !dbg !5002
  ret i32 %1, !dbg !5003
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #3 align 16 !dbg !5004 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5022
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #14, !dbg !5023
  ret i1 %call, !dbg !5024
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #5 align 16 !dbg !5025 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5029, metadata !DIExpression()), !dbg !5030
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5031
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #14, !dbg !5032
  ret i1 %call, !dbg !5033
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #3 align 16 !dbg !5034 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5036, metadata !DIExpression()), !dbg !5043
  br label %do.body, !dbg !5044

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !5045
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5037, metadata !DIExpression()), !dbg !5045
  %0 = load i32, ptr %val.addr, align 4, !dbg !5045
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5045
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5045

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !5045
  %cmp = icmp eq i32 %2, 1, !dbg !5045
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !5045

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !5045
  %cmp1 = icmp eq i32 %3, -1, !dbg !5045
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5045

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !5045
  br label %cond.end, !dbg !5045

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !5045

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !5045
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !5045
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !5046
  %cmp2 = icmp eq i32 %5, 1, !dbg !5046
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5045

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !5047, !srcloc !5049
  br label %if.end8, !dbg !5046

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !5050
  %cmp3 = icmp eq i32 %6, -1, !dbg !5050
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !5046

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !5051, !srcloc !5053
  br label %if.end, !dbg !5050

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !5050

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #12, !dbg !5054
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5039, metadata !DIExpression()), !dbg !5054
  %7 = load i32, ptr %val.addr, align 4, !dbg !5054
  %conv = sext i32 %7 to i64, !dbg !5054
  %and = and i64 %conv, 4294967295, !dbg !5054
  %conv7 = trunc i64 %and to i32, !dbg !5054
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !5054
  %8 = load i32, ptr %pto_val__, align 4, !dbg !5054
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !5054, !srcloc !5055
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #12, !dbg !5050
  br label %do.cond, !dbg !5054

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5054

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !5044
  br label %do.end10, !dbg !5045

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !5056
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_rcu_dyntick(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #3 align 16 !dbg !5057 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !5061
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5059, metadata !DIExpression()), !dbg !5061
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !5061, !srcloc !5062
  %1 = icmp ult i8 %0, 2, !dbg !5061
  call void @llvm.assume(i1 %1), !dbg !5061
  store i8 %0, ptr %c, align 1, !dbg !5061
  %2 = load i8, ptr %c, align 1, !dbg !5061, !range !5063, !noundef !523
  %tobool = trunc i8 %2 to i1, !dbg !5061
  %frombool = zext i1 %tobool to i8, !dbg !5061
  store i8 %frombool, ptr %tmp, align 1, !dbg !5061
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !5064
  %3 = load i8, ptr %tmp, align 1, !dbg !5061, !range !5063, !noundef !523
  %tobool1 = trunc i8 %3 to i1, !dbg !5061
  ret i1 %tobool1, !dbg !5065
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !5066 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5071, metadata !DIExpression()), !dbg !5074
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5072, metadata !DIExpression()), !dbg !5075
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5076
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5077, !range !5063, !noundef !523
  %tobool = trunc i8 %1 to i1, !dbg !5077
  %conv = zext i1 %tobool to i32, !dbg !5077
  %or = or i32 2, %conv, !dbg !5078
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !5079, !srcloc !5080

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5081
  br label %return, !dbg !5081

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5073), !dbg !5082
  store i1 true, ptr %retval, align 1, !dbg !5083
  br label %return, !dbg !5083

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5084
  ret i1 %2, !dbg !5084
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #3 align 16 !dbg !5085 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5089, metadata !DIExpression()), !dbg !5091
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !5090, metadata !DIExpression()), !dbg !5092
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5093
  %call = call i32 @cpumask_check(i32 noundef %0) #14, !dbg !5093
  %conv = zext i32 %call to i64, !dbg !5093
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !5093
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5093
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5093
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #14, !dbg !5093
  ret i1 %call1, !dbg !5094
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5095 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5103, metadata !DIExpression()), !dbg !5105
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5104, metadata !DIExpression()), !dbg !5106
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5107
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5108
  %div = udiv i64 %1, 64, !dbg !5108
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5109
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !5110
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5111
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5112
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !5113
  ret i1 %call, !dbg !5114
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #3 align 16 !dbg !5115 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5119, metadata !DIExpression()), !dbg !5120
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5121
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #14, !dbg !5122
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5123
  ret i32 %1, !dbg !5124
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5125 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5128, metadata !DIExpression()), !dbg !5130
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5129, metadata !DIExpression()), !dbg !5131
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5132
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5133
  br i1 %1, label %cond.true, label %cond.false, !dbg !5133

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5134
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5135
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !5136
  %conv = zext i1 %call to i32, !dbg !5136
  br label %cond.end, !dbg !5133

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5137
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5138
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !5139
  %conv2 = zext i1 %call1 to i32, !dbg !5139
  br label %cond.end, !dbg !5133

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5133
  %tobool = icmp ne i32 %cond, 0, !dbg !5133
  ret i1 %tobool, !dbg !5140
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5141 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5145, metadata !DIExpression()), !dbg !5147
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5146, metadata !DIExpression()), !dbg !5148
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5149
  %and = and i64 %0, 63, !dbg !5150
  %shl = shl i64 1, %and, !dbg !5151
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5152
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5153
  %shr = ashr i64 %2, 6, !dbg !5154
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5152
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5152
  %and1 = and i64 %shl, %3, !dbg !5155
  %cmp = icmp ne i64 %and1, 0, !dbg !5156
  ret i1 %cmp, !dbg !5157
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5158 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5160, metadata !DIExpression()), !dbg !5163
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5161, metadata !DIExpression()), !dbg !5164
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !5165
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5162, metadata !DIExpression()), !dbg !5166
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5167
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5168
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !5169, !srcloc !5170
  %3 = icmp ult i8 %2, 2, !dbg !5169
  call void @llvm.assume(i1 %3), !dbg !5169
  store i8 %2, ptr %oldbit, align 1, !dbg !5169
  %4 = load i8, ptr %oldbit, align 1, !dbg !5171, !range !5063, !noundef !523
  %tobool = trunc i8 %4 to i1, !dbg !5171
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !5172
  ret i1 %tobool, !dbg !5173
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #3 align 16 !dbg !5174 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5178, metadata !DIExpression()), !dbg !5180
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5179, metadata !DIExpression()), !dbg !5181
  ret void, !dbg !5182
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #3 align 16 !dbg !5183 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5186, metadata !DIExpression()), !dbg !5187
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5188
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #14, !dbg !5189
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5190
  %call = call i32 @raw_atomic_read(ptr noundef %1) #14, !dbg !5191
  ret i32 %call, !dbg !5192
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5193 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5198, metadata !DIExpression()), !dbg !5200
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5199, metadata !DIExpression()), !dbg !5201
  ret i1 true, !dbg !5202
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !5203 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5208, metadata !DIExpression()), !dbg !5211
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5209, metadata !DIExpression()), !dbg !5212
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5210, metadata !DIExpression()), !dbg !5213
  ret void, !dbg !5214
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_dynticks_task_trace_enter() #3 align 16 !dbg !5215 {
entry:
  ret void, !dbg !5216
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ct_state_inc(i32 noundef %incby) #3 align 16 !dbg !5217 {
entry:
  %incby.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %incby, ptr %incby.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %incby.addr, metadata !5221, metadata !DIExpression()), !dbg !5227
  %0 = load i32, ptr %incby.addr, align 4, !dbg !5228
  br label %do.body, !dbg !5229

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5230
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5222, metadata !DIExpression()), !dbg !5230
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5230
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !5230
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5229
  br label %do.end, !dbg !5230

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !5231
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !5225, metadata !DIExpression()), !dbg !5231
  %2 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @context_tracking) #13, !dbg !5231, !srcloc !5232
  store i64 %2, ptr %tcp_ptr__, align 8, !dbg !5231
  %3 = load i64, ptr %tcp_ptr__, align 8, !dbg !5231
  %4 = inttoptr i64 %3 to ptr, !dbg !5231
  store ptr %4, ptr %tmp1, align 8, !dbg !5231
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !5229
  %5 = load ptr, ptr %tmp1, align 8, !dbg !5231
  store ptr %5, ptr %tmp, align 8, !dbg !5230
  %6 = load ptr, ptr %tmp, align 8, !dbg !5229
  %call = call i32 @raw_atomic_add_return(i32 noundef %0, ptr noundef %6) #14, !dbg !5233
  %conv = sext i32 %call to i64, !dbg !5233
  ret i64 %conv, !dbg !5234
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !5235 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5239, metadata !DIExpression()), !dbg !5241
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5240, metadata !DIExpression()), !dbg !5242
  %0 = load i32, ptr %i.addr, align 4, !dbg !5243
  %1 = load ptr, ptr %v.addr, align 8, !dbg !5244
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #14, !dbg !5245
  ret i32 %call, !dbg !5246
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #3 align 16 !dbg !5247 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !5249, metadata !DIExpression()), !dbg !5253
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5250, metadata !DIExpression()), !dbg !5254
  %0 = load i32, ptr %i.addr, align 4, !dbg !5255
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #12, !dbg !5256
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5251, metadata !DIExpression()), !dbg !5256
  %1 = load i32, ptr %i.addr, align 4, !dbg !5256
  store i32 %1, ptr %__ret, align 4, !dbg !5256
  %2 = load i32, ptr %__ret, align 4, !dbg !5256
  %3 = load ptr, ptr %v.addr, align 8, !dbg !5256
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !5256
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #12, !dbg !5256, !srcloc !5257
  store i32 %4, ptr %__ret, align 4, !dbg !5256
  %5 = load i32, ptr %__ret, align 4, !dbg !5256
  store i32 %5, ptr %tmp, align 4, !dbg !5256
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #12, !dbg !5258
  %6 = load i32, ptr %tmp, align 4, !dbg !5256
  %add = add i32 %0, %6, !dbg !5259
  ret i32 %add, !dbg !5260
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_dynticks_task_trace_exit() #3 align 16 !dbg !5261 {
entry:
  ret void, !dbg !5262
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !5263 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5265, metadata !DIExpression()), !dbg !5267
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5266, metadata !DIExpression()), !dbg !5268
  ret i1 true, !dbg !5269
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @context_tracking_enabled() #3 align 16 !dbg !5270 {
entry:
  ret i1 false, !dbg !5271
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__rcu_irq_enter_check_tick() #5 align 16 !dbg !5272 {
entry:
  ret void, !dbg !5273
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ct_dynticks_nesting() #3 align 16 !dbg !5274 {
entry:
  %tmp = alloca i64, align 8
  %pscr_ret__ = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @__this_cpu_preempt_check(ptr noundef @.str.7) #14, !dbg !5283
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !5284
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5276, metadata !DIExpression()), !dbg !5284
  br label %do.body, !dbg !5284

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5285
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5279, metadata !DIExpression()), !dbg !5285
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5285
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5285
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5284
  br label %do.cond, !dbg !5285

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5285

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !5286
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5281, metadata !DIExpression()), !dbg !5286
  %1 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) getelementptr inbounds (%struct.context_tracking, ptr @context_tracking, i32 0, i32 1)) #13, !dbg !5286, !srcloc !5287
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5286
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5286
  store i64 %2, ptr %tmp1, align 8, !dbg !5286
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !5284
  %3 = load i64, ptr %tmp1, align 8, !dbg !5286
  store i64 %3, ptr %pscr_ret__, align 8, !dbg !5284
  %4 = load i64, ptr %pscr_ret__, align 8, !dbg !5284
  store i64 %4, ptr %tmp2, align 8, !dbg !5284
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !5283
  %5 = load i64, ptr %tmp2, align 8, !dbg !5284
  store i64 %5, ptr %tmp, align 8, !dbg !5283
  %6 = load i64, ptr %tmp, align 8, !dbg !5283
  ret i64 %6, !dbg !5288
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5289 dso_local void @rcu_preempt_deferred_qs(ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !5293 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !5304
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5298, metadata !DIExpression()), !dbg !5304
  br label %do.body, !dbg !5304

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5305
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5300, metadata !DIExpression()), !dbg !5305
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5305
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5305
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !5304
  br label %do.cond, !dbg !5305

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5305

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !5306
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5302, metadata !DIExpression()), !dbg !5306
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #15, !dbg !5306, !srcloc !5307
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5306
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5306
  %3 = inttoptr i64 %2 to ptr, !dbg !5306
  store ptr %3, ptr %tmp, align 8, !dbg !5306
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !5304
  %4 = load ptr, ptr %tmp, align 8, !dbg !5306
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5304
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5304
  store ptr %5, ptr %tmp1, align 8, !dbg !5304
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !5308
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5304
  ret ptr %6, !dbg !5309
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #3 align 16 !dbg !5310 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !5311
  ret i64 %call, !dbg !5312
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !5313 {
entry:
  call void @native_irq_disable() #14, !dbg !5314
  ret void, !dbg !5315
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #3 align 16 !dbg !5316 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #12, !dbg !5319
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5318, metadata !DIExpression()), !dbg !5320
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #12, !dbg !5321, !srcloc !5322
  %0 = load i64, ptr %flags, align 8, !dbg !5323
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #12, !dbg !5324
  ret i64 %0, !dbg !5325
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !5326 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5327, !srcloc !5328
  ret void, !dbg !5329
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #3 align 16 !dbg !5330 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5334, metadata !DIExpression()), !dbg !5335
  %0 = load i64, ptr %flags.addr, align 8, !dbg !5336
  %and = and i64 %0, 512, !dbg !5337
  %tobool = icmp ne i64 %and, 0, !dbg !5338
  %lnot = xor i1 %tobool, true, !dbg !5338
  %lnot.ext = zext i1 %lnot to i32, !dbg !5338
  ret i32 %lnot.ext, !dbg !5339
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !5340 {
entry:
  call void @native_irq_enable() #14, !dbg !5341
  ret void, !dbg !5342
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !5343 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !5344, !srcloc !5345
  ret void, !dbg !5346
}

attributes #0 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind memory(read) }
attributes #14 = { noredzone }
attributes #15 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4301}
!llvm.module.flags = !{!4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309}
!llvm.ident = !{!4310}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "context_tracking", scope: !2, file: !3, line: 29, type: !105, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.context_tracking.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/context_tracking\22 -D KBUILD_BASENAME=\22context_tracking\22 -D KBUILD_MODNAME=\22context_tracking\22 -D __KBUILD_MODNAME=kmod_context_tracking -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/context_tracking.ll kernel/context_tracking.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !102, globals: !4126, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/context_tracking.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16627fa56349bf4e297d0bd09de54e76")
!4 = !{!5, !15, !21, !26, !34, !41, !49, !65, !72, !78, !83, !89, !95}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ctx_state", file: !6, line: 12, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/context_tracking_state.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc08221f6a28a16bba05a935cbde34cf")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "CONTEXT_DISABLED", value: -1)
!10 = !DIEnumerator(name: "CONTEXT_KERNEL", value: 0)
!11 = !DIEnumerator(name: "CONTEXT_IDLE", value: 1)
!12 = !DIEnumerator(name: "CONTEXT_USER", value: 2)
!13 = !DIEnumerator(name: "CONTEXT_GUEST", value: 3)
!14 = !DIEnumerator(name: "CONTEXT_MAX", value: 4)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 10, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "false", value: 0)
!20 = !DIEnumerator(name: "true", value: 1)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !22, line: 65, baseType: !17, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!25 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !27, line: 9, baseType: !17, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!28 = !{!29, !30, !31, !32, !33}
!29 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!30 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!31 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!32 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!33 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !35, line: 312, baseType: !17, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!36 = !{!37, !38, !39, !40}
!37 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!38 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!39 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!40 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !42, line: 68, baseType: !17, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!43 = !{!44, !45, !46, !47, !48}
!44 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!45 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !50, line: 1325, baseType: !17, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!52 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!53 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!54 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!55 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!56 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!57 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!58 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!59 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!60 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!61 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!62 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!63 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!64 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !66, line: 15, baseType: !17, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!67 = !{!68, !69, !70, !71}
!68 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!69 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!70 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!71 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !73, line: 26, baseType: !17, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!76 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!77 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !79, line: 2052, baseType: !17, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!80 = !{!81, !82}
!81 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!82 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !84, line: 54, baseType: !17, size: 32, elements: !85)
!84 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "USRQUOTA", value: 0)
!87 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!88 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !90, line: 16, baseType: !17, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "TT_NONE", value: 0)
!93 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!94 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !96, line: 51, baseType: !17, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!97 = !{!98, !99, !100, !101}
!98 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!99 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!100 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!101 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!102 = !{!103, !104, !116, !118, !114, !119, !120, !121, !124, !7, !125, !128, !135, !144, !17, !145, !149, !150}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "context_tracking", file: !6, line: 27, size: 192, elements: !106)
!106 = !{!107, !113, !115}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !105, file: !6, line: 39, baseType: !108, size: 32)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !109, line: 174, baseType: !110)
!109 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 172, size: 32, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !110, file: !109, line: 173, baseType: !7, size: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "dynticks_nesting", scope: !105, file: !6, line: 42, baseType: !114, size: 64, offset: 64)
!114 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "dynticks_nmi_nesting", scope: !105, file: !6, line: 43, baseType: !114, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !114)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!119 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !130, line: 26, size: 192, elements: !131)
!130 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!131 = !{!132, !133, !134}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !129, file: !130, line: 27, baseType: !103, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !129, file: !130, line: 28, baseType: !103, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !129, file: !130, line: 29, baseType: !7, size: 32, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !138, line: 19, size: 64, elements: !139)
!138 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !137, file: !138, line: 19, baseType: !141, size: 64)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 64, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 1)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !146, line: 21, baseType: !147)
!146 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !148, line: 27, baseType: !17)
!148 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !152, line: 746, size: 58368, elements: !153)
!152 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!153 = !{!154, !162, !163, !164, !170, !171, !172, !173, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !265, !276, !403, !407, !410, !441, !442, !443, !444, !448, !450, !451, !452, !453, !454, !455, !466, !467, !470, !471, !472, !473, !474, !475, !476, !477, !484, !485, !492, !493, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3292, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3340, !3346, !3347, !3348, !3349, !3350, !3352, !3355, !3362, !3367, !3370, !3373, !3376, !3402, !3540, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3578, !3579, !3580, !3589, !3597, !3598, !3599, !3600, !3601, !3606, !3607, !3608, !3611, !3612, !3615, !3618, !3621, !3629, !3632, !3633, !3719, !3720, !3721, !3722, !3723, !3729, !3730, !3731, !3732, !3735, !3736, !3739, !3742, !3743, !3746, !3747, !3748, !3751, !3752, !3753, !3754, !3755, !3756, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3788, !3789, !3795, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3807, !3879, !3881, !3882, !3883, !3884, !3885, !3886, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3903, !3904, !3905}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !151, file: !152, line: 752, baseType: !155, size: 192)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !156, line: 56, size: 192, elements: !157)
!156 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!157 = !{!158, !159, !160, !161}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !155, file: !156, line: 57, baseType: !119, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !155, file: !156, line: 58, baseType: !119, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !155, file: !156, line: 59, baseType: !145, size: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !155, file: !156, line: 61, baseType: !145, size: 32, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !151, file: !152, line: 754, baseType: !17, size: 32, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !151, file: !152, line: 767, baseType: !103, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !151, file: !152, line: 768, baseType: !165, size: 32, offset: 320)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !166, line: 113, baseType: !167)
!166 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !166, line: 111, size: 32, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !167, file: !166, line: 112, baseType: !108, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !151, file: !152, line: 770, baseType: !17, size: 32, offset: 352)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !151, file: !152, line: 771, baseType: !17, size: 32, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !151, file: !152, line: 774, baseType: !7, size: 32, offset: 416)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !151, file: !152, line: 775, baseType: !174, size: 128, offset: 448)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !175, line: 58, size: 128, elements: !176)
!175 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!176 = !{!177, !183, !188, !192}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !174, file: !175, line: 59, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !179, line: 60, size: 64, elements: !180)
!179 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !178, file: !179, line: 61, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, scope: !174, file: !175, line: 60, baseType: !184, size: 32, offset: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !174, file: !175, line: 60, size: 32, elements: !185)
!185 = !{!186, !187}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !184, file: !175, line: 61, baseType: !17, size: 32)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !184, file: !175, line: 62, baseType: !108, size: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !174, file: !175, line: 65, baseType: !189, size: 16, offset: 96)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !146, line: 19, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !148, line: 24, baseType: !191)
!191 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !174, file: !175, line: 65, baseType: !189, size: 16, offset: 112)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !151, file: !152, line: 776, baseType: !17, size: 32, offset: 576)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !151, file: !152, line: 777, baseType: !119, size: 64, offset: 640)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !151, file: !152, line: 778, baseType: !150, size: 64, offset: 704)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !151, file: !152, line: 787, baseType: !7, size: 32, offset: 768)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !151, file: !152, line: 788, baseType: !7, size: 32, offset: 800)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !151, file: !152, line: 790, baseType: !7, size: 32, offset: 832)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !151, file: !152, line: 792, baseType: !7, size: 32, offset: 864)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !151, file: !152, line: 793, baseType: !7, size: 32, offset: 896)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !151, file: !152, line: 794, baseType: !7, size: 32, offset: 928)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !151, file: !152, line: 795, baseType: !17, size: 32, offset: 960)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !151, file: !152, line: 797, baseType: !204, size: 2048, offset: 1024)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !152, line: 551, size: 2048, elements: !205)
!205 = !{!206, !211, !219, !223, !224, !230, !231, !232, !233, !234, !235, !239, !240, !241, !242, !244, !247, !248, !249}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !204, file: !152, line: 553, baseType: !207, size: 128)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !152, line: 411, size: 128, elements: !208)
!208 = !{!209, !210}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !207, file: !152, line: 412, baseType: !119, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !207, file: !152, line: 413, baseType: !145, size: 32, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !204, file: !152, line: 554, baseType: !212, size: 192, align: 64, offset: 128)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !213, line: 5, size: 192, align: 64, elements: !214)
!213 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!214 = !{!215, !216, !218}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !212, file: !213, line: 6, baseType: !119, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !212, file: !213, line: 7, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !212, file: !213, line: 8, baseType: !217, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !204, file: !152, line: 555, baseType: !220, size: 64, offset: 320)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !146, line: 23, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !148, line: 31, baseType: !222)
!222 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !204, file: !152, line: 556, baseType: !220, size: 64, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !204, file: !152, line: 558, baseType: !225, size: 128, offset: 448)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !109, line: 190, size: 128, elements: !226)
!226 = !{!227, !229}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !225, file: !109, line: 191, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !225, file: !109, line: 191, baseType: !228, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !204, file: !152, line: 559, baseType: !17, size: 32, offset: 576)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !204, file: !152, line: 561, baseType: !220, size: 64, offset: 640)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !204, file: !152, line: 562, baseType: !220, size: 64, offset: 704)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !204, file: !152, line: 563, baseType: !220, size: 64, offset: 768)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !204, file: !152, line: 564, baseType: !220, size: 64, offset: 832)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !204, file: !152, line: 565, baseType: !236, size: 64, offset: 896)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !146, line: 22, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !148, line: 30, baseType: !238)
!238 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !204, file: !152, line: 566, baseType: !220, size: 64, offset: 960)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !204, file: !152, line: 568, baseType: !220, size: 64, offset: 1024)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !204, file: !152, line: 571, baseType: !7, size: 32, offset: 1088)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !204, file: !152, line: 572, baseType: !243, size: 64, offset: 1152)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !204, file: !152, line: 574, baseType: !245, size: 64, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !152, line: 49, flags: DIFlagFwdDecl)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !204, file: !152, line: 576, baseType: !245, size: 64, offset: 1280)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !204, file: !152, line: 578, baseType: !119, size: 64, offset: 1344)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !204, file: !152, line: 588, baseType: !250, size: 512, align: 512, offset: 1536)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !152, line: 497, size: 512, align: 512, elements: !251)
!251 = !{!252, !253, !254, !255, !256, !257, !258, !259, !260}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !250, file: !152, line: 498, baseType: !220, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !250, file: !152, line: 499, baseType: !220, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !250, file: !152, line: 500, baseType: !220, size: 64, offset: 128)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !250, file: !152, line: 501, baseType: !145, size: 32, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !250, file: !152, line: 502, baseType: !145, size: 32, offset: 224)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !250, file: !152, line: 503, baseType: !119, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !250, file: !152, line: 504, baseType: !119, size: 64, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !250, file: !152, line: 505, baseType: !119, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !250, file: !152, line: 506, baseType: !261, size: 64, align: 64, offset: 448)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !152, line: 445, size: 64, align: 64, elements: !262)
!262 = !{!263, !264}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !261, file: !152, line: 446, baseType: !17, size: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !261, file: !152, line: 447, baseType: !17, size: 32, offset: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !151, file: !152, line: 798, baseType: !266, size: 384, offset: 3072)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !152, line: 592, size: 384, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !266, file: !152, line: 593, baseType: !225, size: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !266, file: !152, line: 594, baseType: !119, size: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !266, file: !152, line: 595, baseType: !119, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !266, file: !152, line: 596, baseType: !17, size: 32, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !266, file: !152, line: 597, baseType: !191, size: 16, offset: 288)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !266, file: !152, line: 598, baseType: !191, size: 16, offset: 304)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !266, file: !152, line: 600, baseType: !275, size: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !151, file: !152, line: 799, baseType: !277, size: 1792, offset: 3456)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !152, line: 610, size: 1792, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !400, !401}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !277, file: !152, line: 611, baseType: !212, size: 192, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !277, file: !152, line: 618, baseType: !220, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !277, file: !152, line: 619, baseType: !220, size: 64, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !277, file: !152, line: 620, baseType: !220, size: 64, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !277, file: !152, line: 621, baseType: !220, size: 64, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !277, file: !152, line: 622, baseType: !220, size: 64, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !277, file: !152, line: 629, baseType: !236, size: 64, offset: 512)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !277, file: !152, line: 630, baseType: !220, size: 64, offset: 576)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !277, file: !152, line: 631, baseType: !17, size: 32, offset: 640)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !277, file: !152, line: 653, baseType: !17, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !277, file: !152, line: 654, baseType: !17, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !277, file: !152, line: 655, baseType: !17, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !277, file: !152, line: 656, baseType: !17, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !277, file: !152, line: 662, baseType: !293, size: 512, offset: 704)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !22, line: 118, size: 512, elements: !294)
!294 = !{!295, !303, !304, !309, !396, !397, !398, !399}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !293, file: !22, line: 119, baseType: !296, size: 256)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !297, line: 9, size: 256, elements: !298)
!297 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!298 = !{!299, !300}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !296, file: !297, line: 10, baseType: !212, size: 192, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !296, file: !297, line: 11, baseType: !301, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !302, line: 29, baseType: !236)
!302 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !293, file: !22, line: 120, baseType: !301, size: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !293, file: !22, line: 121, baseType: !305, size: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!21, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !293, file: !22, line: 122, baseType: !310, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !22, line: 159, size: 512, align: 512, elements: !312)
!312 = !{!313, !364, !365, !369, !379, !380, !391, !395}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !311, file: !22, line: 160, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !22, line: 215, size: 4608, align: 512, elements: !316)
!316 = !{!317, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !315, file: !22, line: 216, baseType: !318, size: 32)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !319, line: 23, baseType: !320)
!319 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !319, line: 14, size: 32, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !320, file: !319, line: 15, baseType: !323, size: 32)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !324, line: 44, baseType: !325)
!324 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !324, line: 14, size: 32, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !324, line: 15, baseType: !328, size: 32)
!328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !324, line: 15, size: 32, elements: !329)
!329 = !{!330, !331, !339}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !328, file: !324, line: 16, baseType: !108, size: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !324, line: 24, baseType: !332, size: 16)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !324, line: 24, size: 16, elements: !333)
!333 = !{!334, !338}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !332, file: !324, line: 25, baseType: !335, size: 8)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !146, line: 17, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !148, line: 21, baseType: !337)
!337 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !332, file: !324, line: 26, baseType: !335, size: 8, offset: 8)
!339 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !324, line: 28, baseType: !340, size: 32)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !324, line: 28, size: 32, elements: !341)
!341 = !{!342, !343}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !340, file: !324, line: 29, baseType: !189, size: 16)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !340, file: !324, line: 30, baseType: !189, size: 16, offset: 16)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !315, file: !22, line: 217, baseType: !17, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !315, file: !22, line: 218, baseType: !17, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !315, file: !22, line: 219, baseType: !17, size: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !315, file: !22, line: 220, baseType: !17, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !315, file: !22, line: 221, baseType: !17, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !315, file: !22, line: 222, baseType: !17, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !315, file: !22, line: 223, baseType: !17, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !315, file: !22, line: 224, baseType: !17, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !315, file: !22, line: 226, baseType: !17, size: 32, offset: 160)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !315, file: !22, line: 227, baseType: !191, size: 16, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !315, file: !22, line: 228, baseType: !191, size: 16, offset: 208)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !315, file: !22, line: 229, baseType: !17, size: 32, offset: 224)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !315, file: !22, line: 235, baseType: !301, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !315, file: !22, line: 236, baseType: !308, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !315, file: !22, line: 237, baseType: !301, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !315, file: !22, line: 238, baseType: !308, size: 64, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !315, file: !22, line: 239, baseType: !361, size: 4096, align: 512, offset: 512)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 4096, align: 512, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 8)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !311, file: !22, line: 161, baseType: !17, size: 32, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !311, file: !22, line: 162, baseType: !366, size: 32, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !109, line: 32, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !368, line: 96, baseType: !7)
!368 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!369 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !311, file: !22, line: 163, baseType: !370, size: 32, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !371, line: 274, baseType: !372)
!371 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !371, line: 274, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !372, file: !371, line: 274, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !371, line: 69, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !371, line: 64, size: 32, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !376, file: !371, line: 65, baseType: !17, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !311, file: !22, line: 164, baseType: !308, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !311, file: !22, line: 165, baseType: !381, size: 128, offset: 256)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !297, line: 14, size: 128, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !381, file: !297, line: 15, baseType: !384, size: 128)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !213, line: 26, size: 128, elements: !385)
!385 = !{!386, !390}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !384, file: !213, line: 27, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !213, line: 12, size: 64, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !387, file: !213, line: 13, baseType: !217, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !384, file: !213, line: 28, baseType: !217, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !311, file: !22, line: 166, baseType: !392, size: 64, offset: 384)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!301}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !311, file: !22, line: 167, baseType: !301, size: 64, offset: 448)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !293, file: !22, line: 123, baseType: !335, size: 8, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !293, file: !22, line: 124, baseType: !335, size: 8, offset: 456)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !293, file: !22, line: 125, baseType: !335, size: 8, offset: 464)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !293, file: !22, line: 126, baseType: !335, size: 8, offset: 472)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !277, file: !152, line: 671, baseType: !293, size: 512, offset: 1216)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !277, file: !152, line: 679, baseType: !402, size: 64, offset: 1728)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !151, file: !152, line: 800, baseType: !404, size: 64, offset: 5248)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !152, line: 800, flags: DIFlagFwdDecl)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !151, file: !152, line: 809, baseType: !408, size: 64, offset: 5312)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !152, line: 70, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !151, file: !152, line: 825, baseType: !411, size: 2048, align: 512, offset: 5632)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !152, line: 509, size: 2048, align: 512, elements: !412)
!412 = !{!413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !411, file: !152, line: 511, baseType: !220, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !411, file: !152, line: 512, baseType: !220, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !411, file: !152, line: 513, baseType: !220, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !411, file: !152, line: 514, baseType: !220, size: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !411, file: !152, line: 515, baseType: !220, size: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !411, file: !152, line: 516, baseType: !220, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !411, file: !152, line: 518, baseType: !220, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !411, file: !152, line: 519, baseType: !220, size: 64, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !411, file: !152, line: 520, baseType: !236, size: 64, offset: 512)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !411, file: !152, line: 522, baseType: !220, size: 64, offset: 576)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !411, file: !152, line: 523, baseType: !220, size: 64, offset: 640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !411, file: !152, line: 524, baseType: !236, size: 64, offset: 704)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !411, file: !152, line: 526, baseType: !236, size: 64, offset: 768)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !411, file: !152, line: 527, baseType: !220, size: 64, offset: 832)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !411, file: !152, line: 529, baseType: !220, size: 64, offset: 896)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !411, file: !152, line: 530, baseType: !220, size: 64, offset: 960)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !411, file: !152, line: 531, baseType: !220, size: 64, offset: 1024)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !411, file: !152, line: 532, baseType: !220, size: 64, offset: 1088)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !411, file: !152, line: 533, baseType: !220, size: 64, offset: 1152)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !411, file: !152, line: 535, baseType: !220, size: 64, offset: 1216)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !411, file: !152, line: 536, baseType: !220, size: 64, offset: 1280)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !411, file: !152, line: 537, baseType: !220, size: 64, offset: 1344)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !411, file: !152, line: 538, baseType: !220, size: 64, offset: 1408)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !411, file: !152, line: 539, baseType: !220, size: 64, offset: 1472)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !411, file: !152, line: 540, baseType: !220, size: 64, offset: 1536)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !411, file: !152, line: 541, baseType: !220, size: 64, offset: 1600)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !411, file: !152, line: 542, baseType: !220, size: 64, offset: 1664)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !411, file: !152, line: 543, baseType: !220, size: 64, offset: 1728)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !151, file: !152, line: 833, baseType: !17, size: 32, offset: 7680)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !151, file: !152, line: 836, baseType: !17, size: 32, offset: 7712)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !151, file: !152, line: 837, baseType: !7, size: 32, offset: 7744)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !151, file: !152, line: 838, baseType: !445, size: 64, offset: 7808)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !138, line: 19, baseType: !137)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !151, file: !152, line: 839, baseType: !449, size: 64, offset: 7872)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !151, file: !152, line: 840, baseType: !447, size: 64, offset: 7936)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !151, file: !152, line: 841, baseType: !103, size: 64, offset: 8000)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !151, file: !152, line: 843, baseType: !191, size: 16, offset: 8064)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !151, file: !152, line: 845, baseType: !191, size: 16, offset: 8080)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !151, file: !152, line: 848, baseType: !7, size: 32, offset: 8096)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !151, file: !152, line: 849, baseType: !456, size: 32, offset: 8128)
!456 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !152, line: 718, size: 32, elements: !457)
!457 = !{!458, !465}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !456, file: !152, line: 724, baseType: !459, size: 32)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !456, file: !152, line: 719, size: 32, elements: !460)
!460 = !{!461, !462, !463, !464}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !459, file: !152, line: 720, baseType: !335, size: 8)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !459, file: !152, line: 721, baseType: !335, size: 8, offset: 8)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !459, file: !152, line: 722, baseType: !335, size: 8, offset: 16)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !459, file: !152, line: 723, baseType: !335, size: 8, offset: 24)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !456, file: !152, line: 725, baseType: !145, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !151, file: !152, line: 850, baseType: !225, size: 128, offset: 8192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !151, file: !152, line: 851, baseType: !468, size: 64, offset: 8320)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !152, line: 60, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !151, file: !152, line: 855, baseType: !119, size: 64, offset: 8384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !151, file: !152, line: 856, baseType: !335, size: 8, offset: 8448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !151, file: !152, line: 857, baseType: !335, size: 8, offset: 8456)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !151, file: !152, line: 858, baseType: !7, size: 32, offset: 8480)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !151, file: !152, line: 859, baseType: !225, size: 128, offset: 8512)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !151, file: !152, line: 860, baseType: !7, size: 32, offset: 8640)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !151, file: !152, line: 861, baseType: !225, size: 128, offset: 8704)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !151, file: !152, line: 873, baseType: !478, size: 256, offset: 8832)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !152, line: 376, size: 256, elements: !479)
!479 = !{!480, !481, !482, !483}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !478, file: !152, line: 381, baseType: !119, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !478, file: !152, line: 384, baseType: !222, size: 64, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !478, file: !152, line: 389, baseType: !222, size: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !478, file: !152, line: 392, baseType: !222, size: 64, offset: 192)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !151, file: !152, line: 875, baseType: !225, size: 128, offset: 9088)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !151, file: !152, line: 877, baseType: !486, size: 320, offset: 9216)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !487, line: 86, size: 320, elements: !488)
!487 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!488 = !{!489, !490, !491}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !486, file: !487, line: 87, baseType: !7, size: 32)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !486, file: !487, line: 88, baseType: !225, size: 128, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !486, file: !487, line: 89, baseType: !225, size: 128, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !151, file: !152, line: 878, baseType: !212, size: 192, align: 64, offset: 9536)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !151, file: !152, line: 881, baseType: !494, size: 64, offset: 9728)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !50, line: 733, size: 10240, elements: !496)
!496 = !{!497, !3211}
!497 = !DIDerivedType(tag: DW_TAG_member, scope: !495, file: !50, line: 734, baseType: !498, size: 10240)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !495, file: !50, line: 734, size: 10240, elements: !499)
!499 = !{!500, !504, !526, !3090, !3091, !3092, !3093, !3094, !3095, !3102, !3103, !3104, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3143, !3145, !3148, !3191, !3192, !3193, !3196, !3197, !3198, !3201, !3202, !3203, !3209, !3210}
!500 = !DIDerivedType(tag: DW_TAG_member, scope: !498, file: !50, line: 739, baseType: !501, size: 512, align: 512)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !498, file: !50, line: 739, size: 512, align: 512, elements: !502)
!502 = !{!503}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !501, file: !50, line: 747, baseType: !108, size: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !498, file: !50, line: 750, baseType: !505, size: 128, offset: 512)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !506, line: 218, size: 128, elements: !507)
!506 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!507 = !{!508, !524, !525}
!508 = !DIDerivedType(tag: DW_TAG_member, scope: !505, file: !506, line: 219, baseType: !509, size: 32)
!509 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !505, file: !506, line: 219, size: 32, elements: !510)
!510 = !{!511, !520}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !509, file: !506, line: 220, baseType: !512, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !513, line: 29, baseType: !514)
!513 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !513, line: 17, size: 32, elements: !515)
!515 = !{!516}
!516 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !513, line: 18, baseType: !517, size: 32)
!517 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !514, file: !513, line: 18, size: 32, elements: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !517, file: !513, line: 19, baseType: !320, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !509, file: !506, line: 221, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !506, line: 197, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !506, line: 197, elements: !523)
!523 = !{}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !505, file: !506, line: 223, baseType: !17, size: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !505, file: !506, line: 224, baseType: !103, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !498, file: !50, line: 752, baseType: !527, size: 64, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!119, !530, !119, !119, !119, !119}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !79, line: 994, size: 1856, align: 64, elements: !532)
!532 = !{!533, !547, !548, !550, !557, !569, !572, !573, !697, !907, !916, !3080, !3081, !3082, !3083, !3084, !3085, !3087, !3088, !3089}
!533 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !79, line: 995, baseType: !534, size: 128)
!534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !531, file: !79, line: 995, size: 128, elements: !535)
!535 = !{!536, !537, !546}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !534, file: !79, line: 996, baseType: !178, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !534, file: !79, line: 997, baseType: !538, size: 128, align: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !109, line: 232, size: 128, align: 64, elements: !539)
!539 = !{!540, !542}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !538, file: !109, line: 233, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !538, file: !109, line: 234, baseType: !543, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !541}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !534, file: !79, line: 998, baseType: !17, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !531, file: !79, line: 1005, baseType: !512, size: 32, offset: 128)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !531, file: !79, line: 1006, baseType: !549, size: 32, offset: 160)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !109, line: 156, baseType: !17)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !531, file: !79, line: 1007, baseType: !551, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !552, line: 13, baseType: !553)
!552 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !109, line: 181, baseType: !554)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !109, line: 179, size: 64, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !554, file: !109, line: 180, baseType: !236, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !531, file: !79, line: 1008, baseType: !558, size: 256, offset: 256)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !559, line: 66, size: 256, elements: !560)
!559 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!560 = !{!561, !562, !563, !568}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !558, file: !559, line: 67, baseType: !551, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !558, file: !559, line: 68, baseType: !318, size: 32, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !558, file: !559, line: 70, baseType: !564, size: 32, offset: 96)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !565, line: 15, size: 32, elements: !566)
!565 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !564, file: !565, line: 20, baseType: !108, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !558, file: !559, line: 72, baseType: !225, size: 128, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !531, file: !79, line: 1009, baseType: !570, size: 64, offset: 512)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !109, line: 52, baseType: !571)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !368, line: 88, baseType: !238)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !531, file: !79, line: 1010, baseType: !17, size: 32, offset: 576)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !531, file: !79, line: 1011, baseType: !574, size: 256, offset: 640)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !79, line: 948, size: 256, elements: !575)
!575 = !{!576, !599, !687, !688, !695, !696}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !574, file: !79, line: 949, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !578, line: 34, baseType: !579)
!578 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !578, line: 25, size: 64, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !579, file: !578, line: 26, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !583, line: 27, baseType: !584)
!583 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !583, line: 13, size: 64, elements: !585)
!585 = !{!586, !598}
!586 = !DIDerivedType(tag: DW_TAG_member, scope: !584, file: !583, line: 14, baseType: !587, size: 32)
!587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !584, file: !583, line: 14, size: 32, elements: !588)
!588 = !{!589, !590}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !587, file: !583, line: 15, baseType: !108, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, scope: !587, file: !583, line: 16, baseType: !591, size: 32)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !587, file: !583, line: 16, size: 32, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !591, file: !583, line: 18, baseType: !335, size: 8)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !591, file: !583, line: 19, baseType: !595, size: 24, offset: 8)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 24, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 3)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !584, file: !583, line: 26, baseType: !323, size: 32, offset: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !574, file: !79, line: 950, baseType: !600, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !27, line: 59, size: 768, elements: !602)
!602 = !{!603, !604, !605, !606, !619, !620, !627, !628}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !601, file: !27, line: 61, baseType: !165, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !601, file: !27, line: 62, baseType: !17, size: 32, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !601, file: !27, line: 63, baseType: !512, size: 32, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !601, file: !27, line: 65, baseType: !607, size: 256, offset: 128)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 256, elements: !617)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !109, line: 194, size: 64, elements: !609)
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !608, file: !109, line: 195, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !109, line: 198, size: 128, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !612, file: !109, line: 199, baseType: !611, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !612, file: !109, line: 199, baseType: !616, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!617 = !{!618}
!618 = !DISubrange(count: 4)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !601, file: !27, line: 66, baseType: !608, size: 64, offset: 384)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !601, file: !27, line: 68, baseType: !621, size: 192, offset: 448)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !622, line: 41, baseType: !623)
!622 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !622, line: 37, size: 192, elements: !624)
!624 = !{!625, !626}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !623, file: !622, line: 38, baseType: !512, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !623, file: !622, line: 39, baseType: !225, size: 128, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !601, file: !27, line: 69, baseType: !538, size: 128, align: 64, offset: 640)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !601, file: !27, line: 70, baseType: !629, offset: 768)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !630, elements: !685)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !27, line: 54, size: 128, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !630, file: !27, line: 55, baseType: !7, size: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !630, file: !27, line: 56, baseType: !634, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !636, line: 26, size: 1152, elements: !637)
!636 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!637 = !{!638, !652, !653, !654, !655, !659, !660, !661, !664, !668, !672, !673, !684}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !635, file: !636, line: 27, baseType: !639, size: 192)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !640, line: 19, size: 192, elements: !641)
!640 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!641 = !{!642, !650, !651}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !639, file: !640, line: 20, baseType: !643, size: 128)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !644, line: 296, size: 128, elements: !645)
!644 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!645 = !{!646, !647, !649}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !643, file: !644, line: 297, baseType: !512, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !643, file: !644, line: 299, baseType: !648, size: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !109, line: 154, baseType: !17)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !643, file: !644, line: 300, baseType: !103, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !639, file: !640, line: 21, baseType: !17, size: 32, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !639, file: !640, line: 22, baseType: !17, size: 32, offset: 160)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !635, file: !636, line: 28, baseType: !538, size: 128, align: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !635, file: !636, line: 29, baseType: !17, size: 32, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !635, file: !636, line: 30, baseType: !150, size: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !635, file: !636, line: 31, baseType: !656, size: 64, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !658, line: 11, flags: DIFlagFwdDecl)
!658 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!659 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !635, file: !636, line: 32, baseType: !17, size: 32, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !635, file: !636, line: 33, baseType: !634, size: 64, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !635, file: !636, line: 35, baseType: !662, size: 64, offset: 640)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !636, line: 17, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !635, file: !636, line: 37, baseType: !665, size: 64, offset: 704)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !667, line: 18, flags: DIFlagFwdDecl)
!667 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !635, file: !636, line: 38, baseType: !669, size: 64, offset: 768)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !671, line: 16, flags: DIFlagFwdDecl)
!671 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !635, file: !636, line: 39, baseType: !7, size: 32, offset: 832)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !635, file: !636, line: 40, baseType: !674, size: 192, offset: 896)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !675, line: 9, size: 192, elements: !676)
!675 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!676 = !{!677, !678, !682, !683}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !674, file: !675, line: 10, baseType: !551, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !674, file: !675, line: 11, baseType: !679, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !681)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !675, line: 7, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !674, file: !675, line: 12, baseType: !17, size: 32, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !674, file: !675, line: 13, baseType: !165, size: 32, offset: 160)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !635, file: !636, line: 42, baseType: !7, size: 32, offset: 1088)
!685 = !{!686}
!686 = !DISubrange(count: -1)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !574, file: !79, line: 951, baseType: !26, size: 32, offset: 128)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !574, file: !79, line: 952, baseType: !689, size: 32, offset: 160)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !667, line: 23, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !667, line: 21, size: 32, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !690, file: !667, line: 22, baseType: !693, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !109, line: 37, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !368, line: 49, baseType: !17)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !574, file: !79, line: 952, baseType: !689, size: 32, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !574, file: !79, line: 953, baseType: !7, size: 32, offset: 224)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !531, file: !79, line: 1012, baseType: !698, size: 64, offset: 896)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !701, line: 110, size: 1472, elements: !702)
!701 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!702 = !{!703, !704, !705, !712, !713, !714, !715, !716, !717, !718, !719, !725, !726, !727, !728, !729, !730, !857, !858, !859, !860, !861, !892, !893, !894, !902}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !700, file: !701, line: 111, baseType: !551, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !700, file: !701, line: 112, baseType: !689, size: 32, offset: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !700, file: !701, line: 113, baseType: !706, size: 32, offset: 96)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !667, line: 28, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !667, line: 26, size: 32, elements: !708)
!708 = !{!709}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !707, file: !667, line: 27, baseType: !710, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !109, line: 38, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !368, line: 50, baseType: !17)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !700, file: !701, line: 114, baseType: !689, size: 32, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !700, file: !701, line: 115, baseType: !706, size: 32, offset: 160)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !700, file: !701, line: 116, baseType: !689, size: 32, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !700, file: !701, line: 117, baseType: !706, size: 32, offset: 224)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !700, file: !701, line: 118, baseType: !689, size: 32, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !700, file: !701, line: 119, baseType: !706, size: 32, offset: 288)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !700, file: !701, line: 120, baseType: !17, size: 32, offset: 320)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !700, file: !701, line: 121, baseType: !720, size: 64, offset: 384)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !721, line: 24, baseType: !722)
!721 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !721, line: 24, size: 64, elements: !723)
!723 = !{!724}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !722, file: !721, line: 24, baseType: !220, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !700, file: !701, line: 122, baseType: !720, size: 64, offset: 448)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !700, file: !701, line: 123, baseType: !720, size: 64, offset: 512)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !700, file: !701, line: 124, baseType: !720, size: 64, offset: 576)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !700, file: !701, line: 125, baseType: !720, size: 64, offset: 640)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !700, file: !701, line: 127, baseType: !337, size: 8, offset: 704)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !700, file: !701, line: 129, baseType: !731, size: 64, offset: 768)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !733, line: 195, size: 1728, elements: !734)
!733 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!734 = !{!735, !736, !741, !746, !755, !758, !759, !766, !767, !768, !769, !772, !773, !774, !776, !777, !821, !842}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !732, file: !733, line: 196, baseType: !165, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !732, file: !733, line: 197, baseType: !737, size: 32, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !733, line: 28, baseType: !738)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !109, line: 104, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !146, line: 20, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !148, line: 26, baseType: !7)
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !733, line: 198, baseType: !742, size: 192, offset: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !733, line: 198, size: 192, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !742, file: !733, line: 199, baseType: !225, size: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !742, file: !733, line: 200, baseType: !212, size: 192, align: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !732, file: !733, line: 205, baseType: !747, size: 320, offset: 256)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !748, line: 48, size: 320, elements: !749)
!748 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!749 = !{!750, !751, !752, !753, !754}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !747, file: !748, line: 49, baseType: !551, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !747, file: !748, line: 55, baseType: !551, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !747, file: !748, line: 57, baseType: !564, size: 32, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !747, file: !748, line: 59, baseType: !318, size: 32, offset: 160)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !747, file: !748, line: 60, baseType: !225, size: 128, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !732, file: !733, line: 206, baseType: !756, size: 64, offset: 576)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !733, line: 206, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !732, file: !733, line: 207, baseType: !103, size: 64, offset: 640)
!759 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !733, line: 208, baseType: !760, size: 64, offset: 704)
!760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !733, line: 208, size: 64, elements: !761)
!761 = !{!762, !765}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !760, file: !733, line: 209, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !764, line: 8, baseType: !237)
!764 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!765 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !760, file: !733, line: 210, baseType: !763, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !732, file: !733, line: 212, baseType: !763, size: 64, offset: 768)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !732, file: !733, line: 213, baseType: !689, size: 32, offset: 832)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !732, file: !733, line: 214, baseType: !706, size: 32, offset: 864)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !732, file: !733, line: 215, baseType: !770, size: 32, offset: 896)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !733, line: 31, baseType: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !109, line: 110, baseType: !145)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !732, file: !733, line: 216, baseType: !191, size: 16, offset: 928)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !732, file: !733, line: 217, baseType: !191, size: 16, offset: 944)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !732, file: !733, line: 221, baseType: !775, size: 16, offset: 960)
!775 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !733, line: 228, baseType: !119, size: 64, offset: 1024)
!777 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !733, line: 245, baseType: !778, size: 320, offset: 1088)
!778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !733, line: 245, size: 320, elements: !779)
!779 = !{!780, !812}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !778, file: !733, line: 246, baseType: !781, size: 320)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !733, line: 114, size: 320, elements: !782)
!782 = !{!783, !784, !797, !800, !809}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !781, file: !733, line: 116, baseType: !119, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, scope: !781, file: !733, line: 117, baseType: !785, size: 64, offset: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !781, file: !733, line: 117, size: 64, elements: !786)
!786 = !{!787, !796}
!787 = !DIDerivedType(tag: DW_TAG_member, scope: !785, file: !733, line: 118, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !785, file: !733, line: 118, size: 64, elements: !789)
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !788, file: !733, line: 120, baseType: !189, size: 16)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !788, file: !733, line: 121, baseType: !792, size: 48, offset: 16)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 48, elements: !794)
!793 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!794 = !{!795}
!795 = !DISubrange(count: 6)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !785, file: !733, line: 127, baseType: !119, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !733, line: 129, baseType: !798, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !733, line: 102, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !781, file: !733, line: 130, baseType: !801, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !733, line: 108, size: 192, elements: !803)
!803 = !{!804, !805, !806}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !802, file: !733, line: 109, baseType: !538, size: 128, align: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !802, file: !733, line: 110, baseType: !165, size: 32, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !802, file: !733, line: 111, baseType: !807, size: 8, offset: 160)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !109, line: 35, baseType: !808)
!808 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !781, file: !733, line: 131, baseType: !810, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!812 = !DIDerivedType(tag: DW_TAG_member, scope: !778, file: !733, line: 247, baseType: !813, size: 320)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !778, file: !733, line: 247, size: 320, elements: !814)
!814 = !{!815, !816, !817, !818, !819}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !813, file: !733, line: 248, baseType: !119, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !813, file: !733, line: 249, baseType: !119, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !813, file: !733, line: 250, baseType: !798, size: 64, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !813, file: !733, line: 251, baseType: !801, size: 64, offset: 192)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !813, file: !733, line: 252, baseType: !820, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !733, line: 260, baseType: !822, size: 256, offset: 1408)
!822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !733, line: 260, size: 256, elements: !823)
!823 = !{!824, !830}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !822, file: !733, line: 261, baseType: !825, size: 256)
!825 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !733, line: 134, size: 256, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !825, file: !733, line: 135, baseType: !103, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !825, file: !733, line: 136, baseType: !829, size: 256)
!829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 256, elements: !617)
!830 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !733, line: 262, baseType: !831, size: 256)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !822, file: !733, line: 262, size: 256, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !831, file: !733, line: 264, baseType: !225, size: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !831, file: !733, line: 265, baseType: !835, size: 128, offset: 128)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !836, line: 22, size: 128, elements: !837)
!836 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!837 = !{!838, !841}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !835, file: !836, line: 23, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !836, line: 23, flags: DIFlagFwdDecl)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !835, file: !836, line: 24, baseType: !119, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !732, file: !733, line: 280, baseType: !843, size: 64, offset: 1664)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !733, line: 176, size: 192, elements: !845)
!845 = !{!846, !855, !856}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !844, file: !733, line: 177, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !733, line: 171, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!7, !731, !851, !853, !731}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !799)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !844, file: !733, line: 178, baseType: !731, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !844, file: !733, line: 179, baseType: !798, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !700, file: !701, line: 130, baseType: !731, size: 64, offset: 832)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !700, file: !701, line: 131, baseType: !731, size: 64, offset: 896)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !700, file: !701, line: 132, baseType: !731, size: 64, offset: 960)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !700, file: !701, line: 135, baseType: !103, size: 64, offset: 1024)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !700, file: !701, line: 137, baseType: !862, size: 64, offset: 1088)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !864, line: 14, size: 1088, elements: !865)
!864 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!865 = !{!866, !867, !876, !877, !878, !879, !880, !881}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !863, file: !864, line: 15, baseType: !165, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !863, file: !864, line: 17, baseType: !868, size: 320, offset: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !869, line: 22, size: 320, elements: !870)
!869 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!870 = !{!871, !872, !873, !874}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !868, file: !869, line: 23, baseType: !318, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !868, file: !869, line: 24, baseType: !236, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !868, file: !869, line: 26, baseType: !225, size: 128, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !868, file: !869, line: 28, baseType: !875, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !863, file: !864, line: 19, baseType: !119, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !863, file: !864, line: 20, baseType: !551, size: 64, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !863, file: !864, line: 23, baseType: !612, size: 128, offset: 512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !863, file: !864, line: 24, baseType: !689, size: 32, offset: 640)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !863, file: !864, line: 29, baseType: !551, size: 64, offset: 704)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !863, file: !864, line: 36, baseType: !882, size: 320, offset: 768)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !883, line: 15, size: 320, elements: !884)
!883 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!884 = !{!885, !886, !887, !888, !889, !890, !891}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !882, file: !883, line: 16, baseType: !318, size: 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !882, file: !883, line: 18, baseType: !7, size: 32, offset: 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !882, file: !883, line: 19, baseType: !7, size: 32, offset: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !882, file: !883, line: 20, baseType: !7, size: 32, offset: 96)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !882, file: !883, line: 21, baseType: !7, size: 32, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !882, file: !883, line: 22, baseType: !119, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !882, file: !883, line: 23, baseType: !119, size: 64, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !700, file: !701, line: 138, baseType: !665, size: 64, offset: 1152)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !700, file: !701, line: 139, baseType: !669, size: 64, offset: 1216)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !700, file: !701, line: 140, baseType: !895, size: 64, offset: 1280)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !701, line: 25, size: 64, elements: !897)
!897 = !{!898, !899, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !896, file: !701, line: 26, baseType: !108, size: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !896, file: !701, line: 27, baseType: !7, size: 32, offset: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !896, file: !701, line: 28, baseType: !901, offset: 64)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, elements: !685)
!902 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !701, line: 142, baseType: !903, size: 128, offset: 1344)
!903 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !701, line: 142, size: 128, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !903, file: !701, line: 143, baseType: !7, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !903, file: !701, line: 144, baseType: !538, size: 128, align: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !531, file: !79, line: 1013, baseType: !908, size: 256, offset: 960)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !79, line: 970, size: 256, elements: !909)
!909 = !{!910, !911, !912, !913, !914, !915}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !908, file: !79, line: 971, baseType: !119, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !908, file: !79, line: 972, baseType: !17, size: 32, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !908, file: !79, line: 973, baseType: !17, size: 32, offset: 96)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !908, file: !79, line: 974, baseType: !17, size: 32, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !908, file: !79, line: 975, baseType: !17, size: 32, offset: 160)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !908, file: !79, line: 976, baseType: !570, size: 64, offset: 192)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !531, file: !79, line: 1014, baseType: !917, size: 128, offset: 1216)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !918, line: 8, size: 128, elements: !919)
!918 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!919 = !{!920, !3079}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !917, file: !918, line: 9, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !923, line: 70, size: 256, elements: !924)
!923 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!924 = !{!925, !3076, !3077, !3078}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !922, file: !923, line: 71, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !928, line: 82, size: 1536, elements: !929)
!928 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!929 = !{!930, !931, !936, !944, !945, !960, !3043, !3045, !3058, !3059, !3060, !3061, !3062, !3068, !3069, !3070}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !927, file: !928, line: 84, baseType: !17, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !927, file: !928, line: 85, baseType: !932, size: 32, offset: 32)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !371, line: 275, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !371, line: 275, size: 32, elements: !934)
!934 = !{!935}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !933, file: !371, line: 275, baseType: !375, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !927, file: !928, line: 86, baseType: !937, size: 128, offset: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !938, line: 38, size: 128, elements: !939)
!938 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!939 = !{!940, !942}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !937, file: !938, line: 39, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !937, file: !938, line: 39, baseType: !943, size: 64, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !927, file: !928, line: 87, baseType: !926, size: 64, offset: 192)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !927, file: !928, line: 88, baseType: !946, size: 128, offset: 256)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !928, line: 49, size: 128, elements: !947)
!947 = !{!948, !957}
!948 = !DIDerivedType(tag: DW_TAG_member, scope: !946, file: !928, line: 50, baseType: !949, size: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !946, file: !928, line: 50, size: 64, elements: !950)
!950 = !{!951, !956}
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !949, file: !928, line: 51, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !949, file: !928, line: 51, size: 64, elements: !953)
!953 = !{!954, !955}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !952, file: !928, line: 52, baseType: !145, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !952, file: !928, line: 52, baseType: !145, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !949, file: !928, line: 54, baseType: !220, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !946, file: !928, line: 56, baseType: !958, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !927, file: !928, line: 89, baseType: !961, size: 64, offset: 384)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !79, line: 641, size: 4800, elements: !963)
!963 = !{!964, !966, !967, !968, !969, !970, !971, !974, !975, !1165, !2857, !2858, !2859, !2860, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !3025, !3028, !3029, !3030, !3039, !3040, !3041, !3042}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !962, file: !79, line: 642, baseType: !965, size: 16)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !109, line: 24, baseType: !191)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !962, file: !79, line: 643, baseType: !191, size: 16, offset: 16)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !962, file: !79, line: 644, baseType: !689, size: 32, offset: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !962, file: !79, line: 645, baseType: !225, size: 128, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !962, file: !79, line: 646, baseType: !706, size: 32, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !962, file: !79, line: 647, baseType: !17, size: 32, offset: 224)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !962, file: !79, line: 650, baseType: !972, size: 64, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !79, line: 607, flags: DIFlagFwdDecl)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !962, file: !79, line: 651, baseType: !972, size: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !962, file: !79, line: 654, baseType: !976, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !978)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !79, line: 1966, size: 2048, align: 512, elements: !979)
!979 = !{!980, !984, !997, !1003, !1007, !1011, !1015, !1019, !1023, !1027, !1031, !1032, !1038, !1042, !1079, !1110, !1120, !1126, !1130, !1134, !1138, !1142, !1146, !1152, !1156}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !978, file: !79, line: 1967, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!926, !961, !926, !17}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !978, file: !79, line: 1968, baseType: !985, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!810, !926, !961, !988}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !990, line: 10, size: 128, elements: !991)
!990 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!991 = !{!992, !996}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !989, file: !990, line: 11, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{null, !103}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !989, file: !990, line: 12, baseType: !103, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !978, file: !79, line: 1969, baseType: !998, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{!7, !1001, !961, !7}
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !721, line: 42, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !978, file: !79, line: 1970, baseType: !1004, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!972, !961, !7, !807}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !978, file: !79, line: 1972, baseType: !1008, size: 64, offset: 256)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!7, !926, !820, !7}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !978, file: !79, line: 1974, baseType: !1012, size: 64, offset: 320)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!7, !1001, !961, !926, !965, !807}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !978, file: !79, line: 1976, baseType: !1016, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!7, !926, !961, !926}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !978, file: !79, line: 1977, baseType: !1020, size: 64, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!7, !961, !926}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !978, file: !79, line: 1978, baseType: !1024, size: 64, offset: 512)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!7, !1001, !961, !926, !810}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !978, file: !79, line: 1980, baseType: !1028, size: 64, offset: 576)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!7, !1001, !961, !926, !965}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !978, file: !79, line: 1982, baseType: !1020, size: 64, offset: 640)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !978, file: !79, line: 1983, baseType: !1033, size: 64, offset: 704)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!7, !1001, !961, !926, !965, !1036}
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !109, line: 21, baseType: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !109, line: 18, baseType: !145)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !978, file: !79, line: 1985, baseType: !1039, size: 64, offset: 768)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!7, !1001, !961, !926, !961, !926, !17}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !978, file: !79, line: 1987, baseType: !1043, size: 64, offset: 832)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!7, !1001, !926, !1046}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !79, line: 226, size: 640, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1061, !1070, !1071, !1076, !1077, !1078}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1047, file: !79, line: 227, baseType: !17, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1047, file: !79, line: 228, baseType: !965, size: 16, offset: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !79, line: 241, baseType: !1052, size: 32, offset: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !79, line: 241, size: 32, elements: !1053)
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1052, file: !79, line: 242, baseType: !689, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1052, file: !79, line: 243, baseType: !1056, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1057, line: 16, baseType: !1058)
!1057 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1057, line: 14, size: 32, elements: !1059)
!1059 = !{!1060}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1058, file: !1057, line: 15, baseType: !693, size: 32)
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1047, file: !79, line: 245, baseType: !1062, size: 32, offset: 96)
!1062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1047, file: !79, line: 245, size: 32, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1062, file: !79, line: 246, baseType: !706, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1062, file: !79, line: 247, baseType: !1066, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1057, line: 20, baseType: !1067)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1057, line: 18, size: 32, elements: !1068)
!1068 = !{!1069}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1067, file: !1057, line: 19, baseType: !710, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1047, file: !79, line: 249, baseType: !570, size: 64, offset: 128)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1047, file: !79, line: 250, baseType: !1072, size: 128, offset: 192)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !764, line: 13, size: 128, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1072, file: !764, line: 14, baseType: !763, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1072, file: !764, line: 15, baseType: !114, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1047, file: !79, line: 251, baseType: !1072, size: 128, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1047, file: !79, line: 252, baseType: !1072, size: 128, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1047, file: !79, line: 259, baseType: !530, size: 64, offset: 576)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !978, file: !79, line: 1988, baseType: !1080, size: 64, offset: 896)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!7, !1001, !1083, !1085, !145, !17}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !917)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1087, line: 22, size: 1280, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1086, file: !1087, line: 23, baseType: !145, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1086, file: !1087, line: 24, baseType: !965, size: 16, offset: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1086, file: !1087, line: 25, baseType: !17, size: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1086, file: !1087, line: 26, baseType: !771, size: 32, offset: 96)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1086, file: !1087, line: 27, baseType: !220, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1086, file: !1087, line: 28, baseType: !220, size: 64, offset: 192)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1086, file: !1087, line: 41, baseType: !220, size: 64, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1086, file: !1087, line: 42, baseType: !1036, size: 32, offset: 320)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1086, file: !1087, line: 43, baseType: !1036, size: 32, offset: 352)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1086, file: !1087, line: 44, baseType: !689, size: 32, offset: 384)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1086, file: !1087, line: 45, baseType: !706, size: 32, offset: 416)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1086, file: !1087, line: 46, baseType: !570, size: 64, offset: 448)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1086, file: !1087, line: 47, baseType: !1072, size: 128, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1086, file: !1087, line: 48, baseType: !1072, size: 128, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1086, file: !1087, line: 49, baseType: !1072, size: 128, offset: 768)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1086, file: !1087, line: 50, baseType: !1072, size: 128, offset: 896)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1086, file: !1087, line: 51, baseType: !220, size: 64, offset: 1024)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1086, file: !1087, line: 52, baseType: !220, size: 64, offset: 1088)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1086, file: !1087, line: 53, baseType: !145, size: 32, offset: 1152)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1086, file: !1087, line: 54, baseType: !145, size: 32, offset: 1184)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1086, file: !1087, line: 55, baseType: !220, size: 64, offset: 1216)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !978, file: !79, line: 1990, baseType: !1111, size: 64, offset: 960)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!1114, !926, !820, !1117}
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !109, line: 66, baseType: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !368, line: 73, baseType: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !368, line: 15, baseType: !114)
!1117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 61, baseType: !1118)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !368, line: 72, baseType: !1119)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !368, line: 16, baseType: !119)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !978, file: !79, line: 1991, baseType: !1121, size: 64, offset: 1024)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!7, !961, !1124, !220, !220}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !79, line: 55, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !978, file: !79, line: 1993, baseType: !1127, size: 64, offset: 1088)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!7, !961, !7}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !978, file: !79, line: 1994, baseType: !1131, size: 64, offset: 1152)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DISubroutineType(types: !1133)
!1133 = !{!7, !961, !926, !530, !17, !965}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !978, file: !79, line: 1997, baseType: !1135, size: 64, offset: 1216)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DISubroutineType(types: !1137)
!1137 = !{!7, !1001, !961, !530, !965}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !978, file: !79, line: 1999, baseType: !1139, size: 64, offset: 1280)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!972, !1001, !926, !7}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !978, file: !79, line: 2001, baseType: !1143, size: 64, offset: 1344)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!7, !1001, !926, !972, !7}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !978, file: !79, line: 2003, baseType: !1147, size: 64, offset: 1408)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!7, !1001, !926, !1150}
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !79, line: 76, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !978, file: !79, line: 2005, baseType: !1153, size: 64, offset: 1472)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{!7, !926, !1150}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !978, file: !79, line: 2006, baseType: !1157, size: 64, offset: 1536)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!1160, !961}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !79, line: 3192, size: 192, elements: !1162)
!1162 = !{!1163, !1164}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1161, file: !79, line: 3193, baseType: !643, size: 128)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1161, file: !79, line: 3194, baseType: !145, size: 32, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !962, file: !79, line: 655, baseType: !1166, size: 64, offset: 448)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !79, line: 1190, size: 10752, elements: !1168)
!1168 = !{!1169, !1170, !1171, !1172, !1173, !1174, !2370, !2502, !2542, !2625, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2642, !2646, !2647, !2650, !2653, !2656, !2659, !2660, !2661, !2702, !2728, !2729, !2730, !2731, !2732, !2733, !2736, !2740, !2749, !2750, !2751, !2752, !2811, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1167, file: !79, line: 1191, baseType: !225, size: 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1167, file: !79, line: 1192, baseType: !1036, size: 32, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1167, file: !79, line: 1193, baseType: !337, size: 8, offset: 160)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1167, file: !79, line: 1194, baseType: !119, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1167, file: !79, line: 1195, baseType: !570, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1167, file: !79, line: 1196, baseType: !1175, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !79, line: 2366, size: 576, elements: !1177)
!1177 = !{!1178, !1179, !1180, !1186, !1190, !1194, !1198, !2358, !2359, !2360, !2362, !2363, !2364, !2366, !2367, !2368, !2369}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1176, file: !79, line: 2367, baseType: !810, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1176, file: !79, line: 2368, baseType: !7, size: 32, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1176, file: !79, line: 2376, baseType: !1181, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!7, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !923, line: 21, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1176, file: !79, line: 2377, baseType: !1187, size: 64, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1189)
!1189 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !79, line: 75, flags: DIFlagFwdDecl)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1176, file: !79, line: 2378, baseType: !1191, size: 64, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!926, !1175, !7, !810, !103}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1176, file: !79, line: 2380, baseType: !1195, size: 64, offset: 320)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !1166}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1176, file: !79, line: 2381, baseType: !1199, size: 64, offset: 384)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !35, line: 402, size: 9216, align: 512, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1208, !1999, !2025, !2026, !2027, !2028, !2032, !2035, !2036, !2037, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2105, !2109, !2129, !2148, !2149, !2150, !2151, !2160, !2183, !2184, !2187, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2200, !2201, !2312, !2320, !2321, !2322, !2324, !2328, !2329, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2351, !2352, !2353, !2357}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1200, file: !35, line: 403, baseType: !34, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1200, file: !35, line: 406, baseType: !225, size: 128, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1200, file: !35, line: 409, baseType: !1205, size: 448, offset: 192)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 448, elements: !1206)
!1206 = !{!1207}
!1207 = !DISubrange(count: 56)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1200, file: !35, line: 417, baseType: !1209, size: 768, offset: 640)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !35, line: 45, size: 768, elements: !1210)
!1210 = !{!1211, !1992, !1993, !1994, !1997}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1209, file: !35, line: 46, baseType: !1212, size: 512)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1213, line: 64, size: 512, elements: !1214)
!1213 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1214 = !{!1215, !1216, !1217, !1219, !1263, !1871, !1982, !1987, !1988, !1989, !1990, !1991}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1212, file: !1213, line: 65, baseType: !810, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1212, file: !1213, line: 66, baseType: !225, size: 128, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1212, file: !1213, line: 67, baseType: !1218, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1212, file: !1213, line: 68, baseType: !1220, size: 64, offset: 256)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1213, line: 168, size: 768, elements: !1222)
!1222 = !{!1223, !1224, !1225, !1226}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1221, file: !1213, line: 169, baseType: !225, size: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1221, file: !1213, line: 170, baseType: !512, size: 32, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1221, file: !1213, line: 171, baseType: !1212, size: 512, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1221, file: !1213, line: 172, baseType: !1227, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1229)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1213, line: 133, size: 192, elements: !1230)
!1230 = !{!1231, !1238, !1243}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1229, file: !1213, line: 134, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DISubroutineType(types: !1235)
!1235 = !{!7, !1236}
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1212)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1229, file: !1213, line: 135, baseType: !1239, size: 64, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!810, !1236}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1229, file: !1213, line: 136, baseType: !1244, size: 64, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1245)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DISubroutineType(types: !1247)
!1247 = !{!7, !1236, !1248}
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1213, line: 125, size: 20736, elements: !1250)
!1250 = !{!1251, !1253, !1257, !1258, !1262}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1249, file: !1213, line: 126, baseType: !1252, size: 192)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 192, elements: !596)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1249, file: !1213, line: 127, baseType: !1254, size: 4096, offset: 192)
!1254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !820, size: 4096, elements: !1255)
!1255 = !{!1256}
!1256 = !DISubrange(count: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1249, file: !1213, line: 128, baseType: !7, size: 32, offset: 4288)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1249, file: !1213, line: 129, baseType: !1259, size: 16384, offset: 4320)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 16384, elements: !1260)
!1260 = !{!1261}
!1261 = !DISubrange(count: 2048)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1249, file: !1213, line: 130, baseType: !7, size: 32, offset: 20704)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1212, file: !1213, line: 69, baseType: !1264, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1266)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1213, line: 116, size: 384, elements: !1267)
!1267 = !{!1268, !1272, !1291, !1831, !1861, !1865}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1266, file: !1213, line: 117, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null, !1218}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1266, file: !1213, line: 118, baseType: !1273, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1275)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1276, line: 254, size: 128, elements: !1277)
!1276 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1277 = !{!1278, !1287}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1275, file: !1276, line: 255, baseType: !1279, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!1114, !1218, !1282, !820}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1276, line: 30, size: 128, elements: !1284)
!1284 = !{!1285, !1286}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1283, file: !1276, line: 31, baseType: !810, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1283, file: !1276, line: 32, baseType: !965, size: 16, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1275, file: !1276, line: 256, baseType: !1288, size: 64, offset: 64)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!1114, !1218, !1282, !810, !1117}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1266, file: !1213, line: 119, baseType: !1292, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1276, line: 84, size: 320, elements: !1296)
!1296 = !{!1297, !1298, !1302, !1827, !1829}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1295, file: !1276, line: 85, baseType: !810, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1295, file: !1276, line: 86, baseType: !1299, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!965, !1218, !1282, !7}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1295, file: !1276, line: 88, baseType: !1303, size: 64, offset: 128)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!965, !1218, !1306, !7}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1276, line: 175, size: 512, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1312, !1818, !1822, !1823}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1307, file: !1276, line: 176, baseType: !1283, size: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1307, file: !1276, line: 177, baseType: !1117, size: 64, offset: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1307, file: !1276, line: 178, baseType: !103, size: 64, offset: 192)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1307, file: !1276, line: 179, baseType: !1313, size: 64, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !79, line: 472, size: 1536, align: 64, elements: !1318)
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1810, !1811, !1812, !1815, !1816, !1817}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1317, file: !79, line: 473, baseType: !961, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1317, file: !79, line: 474, baseType: !643, size: 128, offset: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1317, file: !79, line: 475, baseType: !747, size: 320, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1317, file: !79, line: 476, baseType: !648, size: 32, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1317, file: !79, line: 477, baseType: !108, size: 32, offset: 544)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1317, file: !79, line: 482, baseType: !384, size: 128, offset: 576)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1317, file: !79, line: 483, baseType: !119, size: 64, offset: 704)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1317, file: !79, line: 484, baseType: !119, size: 64, offset: 768)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1317, file: !79, line: 485, baseType: !1328, size: 64, offset: 832)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !79, line: 404, size: 1280, elements: !1331)
!1331 = !{!1332, !1635, !1705, !1709, !1713, !1719, !1725, !1729, !1734, !1738, !1742, !1746, !1774, !1778, !1782, !1786, !1791, !1795, !1802, !1806}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1330, file: !79, line: 405, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!7, !1336, !1633}
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !50, line: 74, size: 512, align: 128, elements: !1338)
!1338 = !{!1339, !1340, !1627, !1632}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1337, file: !50, line: 75, baseType: !119, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !50, line: 83, baseType: !1341, size: 320, offset: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !50, line: 83, size: 320, elements: !1342)
!1342 = !{!1343, !1364, !1378, !1382, !1626}
!1343 = !DIDerivedType(tag: DW_TAG_member, scope: !1341, file: !50, line: 84, baseType: !1344, size: 320)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1341, file: !50, line: 84, size: 320, elements: !1345)
!1345 = !{!1346, !1357, !1358, !1363}
!1346 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !50, line: 90, baseType: !1347, size: 128)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !50, line: 90, size: 128, elements: !1348)
!1348 = !{!1349, !1350, !1355, !1356}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1347, file: !50, line: 91, baseType: !225, size: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, scope: !1347, file: !50, line: 94, baseType: !1351, size: 128)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1347, file: !50, line: 94, size: 128, elements: !1352)
!1352 = !{!1353, !1354}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1351, file: !50, line: 96, baseType: !103, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1351, file: !50, line: 98, baseType: !17, size: 32, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1347, file: !50, line: 102, baseType: !225, size: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1347, file: !50, line: 103, baseType: !225, size: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1344, file: !50, line: 106, baseType: !1316, size: 64, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, scope: !1344, file: !50, line: 107, baseType: !1359, size: 64, offset: 192)
!1359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1344, file: !50, line: 107, size: 64, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1359, file: !50, line: 108, baseType: !119, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1359, file: !50, line: 109, baseType: !119, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1344, file: !50, line: 117, baseType: !119, size: 64, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, scope: !1341, file: !50, line: 119, baseType: !1365, size: 320)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1341, file: !50, line: 119, size: 320, elements: !1366)
!1366 = !{!1367, !1368, !1371, !1372, !1373}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1365, file: !50, line: 124, baseType: !119, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1365, file: !50, line: 125, baseType: !1369, size: 64, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !50, line: 125, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1365, file: !50, line: 126, baseType: !119, size: 64, offset: 128)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1365, file: !50, line: 127, baseType: !119, size: 64, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1365, file: !50, line: 128, baseType: !1374, size: 64, offset: 256)
!1374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1365, file: !50, line: 128, size: 64, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1374, file: !50, line: 133, baseType: !119, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1374, file: !50, line: 138, baseType: !551, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, scope: !1341, file: !50, line: 141, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1341, file: !50, line: 141, size: 64, elements: !1380)
!1380 = !{!1381}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1379, file: !50, line: 142, baseType: !119, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, scope: !1341, file: !50, line: 144, baseType: !1383, size: 128)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1341, file: !50, line: 144, size: 128, elements: !1384)
!1384 = !{!1385, !1625}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1383, file: !50, line: 146, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !42, line: 126, size: 1216, elements: !1388)
!1388 = !{!1389, !1399, !1420, !1431, !1432, !1433, !1434, !1607, !1608, !1609}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1387, file: !42, line: 127, baseType: !1390, size: 384)
!1390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !42, line: 21, size: 384, elements: !1391)
!1391 = !{!1392, !1393, !1395, !1396, !1397, !1398}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1390, file: !42, line: 22, baseType: !119, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1390, file: !42, line: 23, baseType: !1394, size: 64, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1390, file: !42, line: 24, baseType: !1394, size: 64, offset: 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1390, file: !42, line: 25, baseType: !119, size: 64, offset: 192)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1390, file: !42, line: 26, baseType: !119, size: 64, offset: 256)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1390, file: !42, line: 27, baseType: !119, size: 64, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1387, file: !42, line: 128, baseType: !1400, size: 128, offset: 384)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1401, line: 105, size: 128, elements: !1402)
!1401 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1402 = !{!1403, !1404}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1400, file: !1401, line: 110, baseType: !119, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1400, file: !1401, line: 118, baseType: !1405, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1401, line: 95, size: 448, elements: !1407)
!1407 = !{!1408, !1409, !1415, !1416, !1417, !1418, !1419}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1406, file: !1401, line: 96, baseType: !551, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1406, file: !1401, line: 97, baseType: !1410, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1401, line: 60, baseType: !1412)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{null, !1414}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1406, file: !1401, line: 98, baseType: !1410, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1406, file: !1401, line: 99, baseType: !807, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1406, file: !1401, line: 100, baseType: !807, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1406, file: !1401, line: 101, baseType: !538, size: 128, align: 64, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1406, file: !1401, line: 102, baseType: !1414, size: 64, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1387, file: !42, line: 129, baseType: !1421, size: 256, offset: 512)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1422, line: 26, size: 256, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1421, file: !1422, line: 27, baseType: !17, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1421, file: !1422, line: 28, baseType: !1426, size: 192, offset: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1427, line: 43, size: 192, elements: !1428)
!1427 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1426, file: !1427, line: 44, baseType: !318, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1426, file: !1427, line: 45, baseType: !225, size: 128, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1387, file: !42, line: 130, baseType: !41, size: 32, offset: 768)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1387, file: !42, line: 131, baseType: !17, size: 32, offset: 800)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1387, file: !42, line: 132, baseType: !119, size: 64, offset: 832)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1387, file: !42, line: 133, baseType: !1435, size: 64, offset: 896)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1437)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !42, line: 77, size: 192, elements: !1438)
!1438 = !{!1439, !1443, !1603}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1437, file: !42, line: 83, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{null, !1336}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1437, file: !42, line: 89, baseType: !1444, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !50, line: 1184, baseType: !17)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1450, line: 512, size: 896, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1451 = !{!1452, !1570, !1571, !1578, !1585, !1595, !1596, !1597, !1599, !1601}
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !1450, line: 513, baseType: !1453, size: 320)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1449, file: !1450, line: 513, size: 320, elements: !1454)
!1454 = !{!1455, !1566, !1567, !1568, !1569}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1453, file: !1450, line: 514, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !50, line: 625, size: 1344, elements: !1458)
!1458 = !{!1459, !1468, !1469, !1477, !1484, !1485, !1490, !1491, !1496, !1497, !1500, !1559, !1560, !1561, !1562, !1563, !1564}
!1459 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !50, line: 628, baseType: !1460, size: 128)
!1460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !50, line: 628, size: 128, elements: !1461)
!1461 = !{!1462, !1467}
!1462 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !50, line: 629, baseType: !1463, size: 128)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1460, file: !50, line: 629, size: 128, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1463, file: !50, line: 631, baseType: !119, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1463, file: !50, line: 632, baseType: !119, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1460, file: !50, line: 635, baseType: !538, size: 128, align: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1457, file: !50, line: 639, baseType: !494, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1457, file: !50, line: 640, baseType: !1470, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1471, line: 297, baseType: !1472)
!1471 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1471, line: 297, size: 64, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1472, file: !1471, line: 297, baseType: !1475, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1476, line: 19, baseType: !119)
!1476 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1477 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !50, line: 646, baseType: !1478, size: 64, offset: 256)
!1478 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !50, line: 646, size: 64, elements: !1479)
!1479 = !{!1480, !1483}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1478, file: !50, line: 647, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !50, line: 542, baseType: !119)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1478, file: !50, line: 648, baseType: !1482, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1457, file: !50, line: 666, baseType: !7, size: 32, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1457, file: !50, line: 667, baseType: !1486, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !50, line: 579, size: 320, elements: !1488)
!1488 = !{!1489}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1487, file: !50, line: 580, baseType: !747, size: 320)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1457, file: !50, line: 670, baseType: !807, size: 8, offset: 448)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1457, file: !50, line: 681, baseType: !1492, size: 256, offset: 512)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1457, file: !50, line: 678, size: 256, elements: !1493)
!1493 = !{!1494, !1495}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1492, file: !50, line: 679, baseType: !212, size: 192, align: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1492, file: !50, line: 680, baseType: !119, size: 64, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1457, file: !50, line: 689, baseType: !225, size: 128, offset: 768)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1457, file: !50, line: 691, baseType: !1498, size: 64, offset: 896)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !50, line: 691, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1457, file: !50, line: 694, baseType: !1501, size: 64, offset: 960)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1503)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1450, line: 563, size: 1024, elements: !1504)
!1504 = !{!1505, !1509, !1510, !1514, !1518, !1522, !1523, !1527, !1531, !1535, !1536, !1537, !1541, !1545, !1551, !1555}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1503, file: !1450, line: 564, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{null, !1456}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1503, file: !1450, line: 569, baseType: !1506, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1503, file: !1450, line: 571, baseType: !1511, size: 64, offset: 128)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!7, !1456, !119}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1503, file: !1450, line: 572, baseType: !1515, size: 64, offset: 192)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!7, !1456}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1503, file: !1450, line: 578, baseType: !1519, size: 64, offset: 256)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!7, !1456, !119, !119, !119}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1503, file: !1450, line: 580, baseType: !1444, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1503, file: !1450, line: 581, baseType: !1524, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!1447, !1448, !17}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1503, file: !1450, line: 582, baseType: !1528, size: 64, offset: 448)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!1447, !1448, !119, !119}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1503, file: !1450, line: 584, baseType: !1532, size: 64, offset: 512)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!119, !1456}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1503, file: !1450, line: 588, baseType: !1444, size: 64, offset: 576)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1503, file: !1450, line: 591, baseType: !1444, size: 64, offset: 640)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1503, file: !1450, line: 597, baseType: !1538, size: 64, offset: 704)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!7, !1456, !119, !103, !7, !7}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1503, file: !1450, line: 603, baseType: !1542, size: 64, offset: 768)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!810, !1456}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1503, file: !1450, line: 613, baseType: !1546, size: 64, offset: 832)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!7, !1456, !1549}
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !152, line: 54, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1503, file: !1450, line: 625, baseType: !1552, size: 64, offset: 896)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!1549, !1456, !119}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1503, file: !1450, line: 633, baseType: !1556, size: 64, offset: 960)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!1336, !1456, !119}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1457, file: !50, line: 697, baseType: !119, size: 64, offset: 1024)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1457, file: !50, line: 699, baseType: !530, size: 64, offset: 1088)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1457, file: !50, line: 700, baseType: !103, size: 64, offset: 1152)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1457, file: !50, line: 711, baseType: !551, size: 64, offset: 1216)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1457, file: !50, line: 717, baseType: !1549, size: 64, offset: 1280)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1457, file: !50, line: 722, baseType: !1565, offset: 1344)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !50, line: 570, elements: !523)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1453, file: !1450, line: 515, baseType: !648, size: 32, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1453, file: !1450, line: 516, baseType: !119, size: 64, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1453, file: !1450, line: 517, baseType: !119, size: 64, offset: 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1453, file: !1450, line: 518, baseType: !119, size: 64, offset: 256)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1449, file: !1450, line: 520, baseType: !49, size: 32, offset: 320)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1449, file: !1450, line: 522, baseType: !1572, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1476, line: 22, baseType: !1574)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1476, line: 22, size: 64, elements: !1575)
!1575 = !{!1576}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1574, file: !1476, line: 22, baseType: !1577, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1476, line: 15, baseType: !119)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1449, file: !1450, line: 524, baseType: !1579, size: 64, offset: 448)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1471, line: 372, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1471, line: 372, size: 64, elements: !1582)
!1582 = !{!1583}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1581, file: !1471, line: 372, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1476, line: 16, baseType: !119)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !1450, line: 527, baseType: !1586, size: 64, offset: 512)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !1450, line: 527, size: 64, elements: !1587)
!1587 = !{!1588, !1594}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1586, file: !1450, line: 528, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1476, line: 21, baseType: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1476, line: 21, size: 64, elements: !1591)
!1591 = !{!1592}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1590, file: !1476, line: 21, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1476, line: 14, baseType: !119)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1586, file: !1450, line: 529, baseType: !1573, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1449, file: !1450, line: 534, baseType: !1336, size: 64, offset: 576)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1449, file: !1450, line: 535, baseType: !1336, size: 64, offset: 640)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1449, file: !1450, line: 541, baseType: !1598, size: 64, offset: 704)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1449, file: !1450, line: 545, baseType: !1600, size: 64, offset: 768)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1449, file: !1450, line: 549, baseType: !1602, size: 64, offset: 832)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1471, line: 520, baseType: !1336)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1437, file: !42, line: 100, baseType: !1604, size: 64, offset: 128)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!7, !1386, !119, !119, !7}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1387, file: !42, line: 134, baseType: !103, size: 64, offset: 960)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1387, file: !42, line: 135, baseType: !7, size: 32, offset: 1024)
!1609 = !DIDerivedType(tag: DW_TAG_member, scope: !1387, file: !42, line: 136, baseType: !1610, size: 128, offset: 1088)
!1610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1387, file: !42, line: 136, size: 128, elements: !1611)
!1611 = !{!1612, !1618}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1610, file: !42, line: 137, baseType: !1613, size: 128)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1614, line: 6, size: 128, elements: !1615)
!1614 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1613, file: !1614, line: 7, baseType: !220, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1613, file: !1614, line: 8, baseType: !220, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1610, file: !42, line: 138, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1610, file: !42, line: 138, elements: !1620)
!1620 = !{!1621, !1623}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1619, file: !42, line: 138, baseType: !1622)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1619, file: !42, line: 138, elements: !523)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1619, file: !42, line: 138, baseType: !1624)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1613, elements: !685)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1383, file: !50, line: 147, baseType: !103, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1341, file: !50, line: 161, baseType: !538, size: 128, align: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !50, line: 164, baseType: !1628, size: 32, offset: 384)
!1628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !50, line: 164, size: 32, elements: !1629)
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1628, file: !50, line: 169, baseType: !108, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1628, file: !50, line: 177, baseType: !17, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1337, file: !50, line: 181, baseType: !108, size: 32, offset: 416)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !79, line: 309, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1330, file: !79, line: 406, baseType: !1636, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!7, !530, !1639}
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !50, line: 293, size: 1536, elements: !1641)
!1641 = !{!1642, !1672, !1686}
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !50, line: 295, baseType: !1643, size: 512)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1640, file: !50, line: 295, size: 512, elements: !1644)
!1644 = !{!1645, !1671}
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1643, file: !50, line: 296, baseType: !1646, size: 448)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1643, file: !50, line: 296, size: 448, elements: !1647)
!1647 = !{!1648, !1649, !1658, !1659, !1660, !1669, !1670}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1646, file: !50, line: 298, baseType: !119, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !50, line: 299, baseType: !1650, size: 128, offset: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1646, file: !50, line: 299, size: 128, elements: !1651)
!1651 = !{!1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1650, file: !50, line: 300, baseType: !225, size: 128)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !50, line: 302, baseType: !1654, size: 128)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !50, line: 302, size: 128, elements: !1655)
!1655 = !{!1656, !1657}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1654, file: !50, line: 303, baseType: !103, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1654, file: !50, line: 305, baseType: !17, size: 32, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1646, file: !50, line: 310, baseType: !1316, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1646, file: !50, line: 311, baseType: !119, size: 64, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !50, line: 312, baseType: !1661, size: 64, offset: 320)
!1661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1646, file: !50, line: 312, size: 64, elements: !1662)
!1662 = !{!1663, !1664}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1661, file: !50, line: 313, baseType: !103, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1661, file: !50, line: 314, baseType: !1665, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !50, line: 257, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !50, line: 255, size: 64, elements: !1667)
!1667 = !{!1668}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1666, file: !50, line: 256, baseType: !119, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1646, file: !50, line: 316, baseType: !108, size: 32, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1646, file: !50, line: 317, baseType: !108, size: 32, offset: 416)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1643, file: !50, line: 323, baseType: !1337, size: 512, align: 128)
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !50, line: 325, baseType: !1673, size: 512, offset: 512)
!1673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1640, file: !50, line: 325, size: 512, elements: !1674)
!1674 = !{!1675, !1685}
!1675 = !DIDerivedType(tag: DW_TAG_member, scope: !1673, file: !50, line: 326, baseType: !1676, size: 320)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1673, file: !50, line: 326, size: 320, elements: !1677)
!1677 = !{!1678, !1679, !1680, !1681, !1682, !1683, !1684}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1676, file: !50, line: 327, baseType: !119, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1676, file: !50, line: 328, baseType: !119, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1676, file: !50, line: 329, baseType: !119, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1676, file: !50, line: 331, baseType: !108, size: 32, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1676, file: !50, line: 332, baseType: !108, size: 32, offset: 224)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1676, file: !50, line: 333, baseType: !108, size: 32, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1676, file: !50, line: 335, baseType: !17, size: 32, offset: 288)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1673, file: !50, line: 339, baseType: !1337, size: 512, align: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !50, line: 341, baseType: !1687, size: 512, offset: 1024)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1640, file: !50, line: 341, size: 512, elements: !1688)
!1688 = !{!1689, !1698, !1704}
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !50, line: 342, baseType: !1690, size: 384)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !50, line: 342, size: 384, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1695, !1696, !1697}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1690, file: !50, line: 343, baseType: !119, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1690, file: !50, line: 344, baseType: !119, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1690, file: !50, line: 346, baseType: !103, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1690, file: !50, line: 347, baseType: !103, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1690, file: !50, line: 348, baseType: !103, size: 64, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1690, file: !50, line: 349, baseType: !103, size: 64, offset: 320)
!1698 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !50, line: 352, baseType: !1699, size: 256)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !50, line: 352, size: 256, elements: !1700)
!1700 = !{!1701, !1702, !1703}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1699, file: !50, line: 353, baseType: !119, size: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1699, file: !50, line: 354, baseType: !119, size: 64, offset: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1699, file: !50, line: 356, baseType: !225, size: 128, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1687, file: !50, line: 359, baseType: !1337, size: 512, align: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1330, file: !79, line: 409, baseType: !1706, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!7, !1316, !1633}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1330, file: !79, line: 412, baseType: !1710, size: 64, offset: 192)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!807, !1316, !1639}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1330, file: !79, line: 414, baseType: !1714, size: 64, offset: 256)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{null, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !79, line: 310, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1330, file: !79, line: 416, baseType: !1720, size: 64, offset: 320)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!7, !530, !1316, !570, !17, !1723, !1724}
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1330, file: !79, line: 419, baseType: !1726, size: 64, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!7, !530, !1316, !570, !17, !17, !1336, !103}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1330, file: !79, line: 424, baseType: !1730, size: 64, offset: 448)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!1733, !1316, !1733}
!1733 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !109, line: 131, baseType: !220)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1330, file: !79, line: 425, baseType: !1735, size: 64, offset: 512)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1639, !1117, !1117}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1330, file: !79, line: 426, baseType: !1739, size: 64, offset: 576)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!807, !1639, !648}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1330, file: !79, line: 427, baseType: !1743, size: 64, offset: 640)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{null, !1639}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1330, file: !79, line: 428, baseType: !1747, size: 64, offset: 704)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!1114, !1750, !1772}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !79, line: 373, size: 384, elements: !1752)
!1752 = !{!1753, !1754, !1755, !1759, !1760, !1761, !1762}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1751, file: !79, line: 374, baseType: !530, size: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1751, file: !79, line: 375, baseType: !570, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1751, file: !79, line: 376, baseType: !1756, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !1750, !114}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1751, file: !79, line: 377, baseType: !103, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1751, file: !79, line: 378, baseType: !7, size: 32, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1751, file: !79, line: 379, baseType: !189, size: 16, offset: 288)
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1751, file: !79, line: 380, baseType: !1763, size: 64, offset: 320)
!1763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1751, file: !79, line: 380, size: 64, elements: !1764)
!1764 = !{!1765, !1768}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1763, file: !79, line: 386, baseType: !1766, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !79, line: 386, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1763, file: !79, line: 395, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!1114, !103}
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !79, line: 69, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1330, file: !79, line: 433, baseType: !1775, size: 64, offset: 768)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DISubroutineType(types: !1777)
!1777 = !{!7, !1316, !1639, !1639, !65}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1330, file: !79, line: 435, baseType: !1779, size: 64, offset: 832)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{!7, !1639}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1330, file: !79, line: 436, baseType: !1783, size: 64, offset: 896)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!807, !1639, !1117, !1117}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1330, file: !79, line: 438, baseType: !1787, size: 64, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !1639, !1790, !1790}
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1330, file: !79, line: 439, baseType: !1792, size: 64, offset: 1024)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!7, !1316, !1336}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1330, file: !79, line: 442, baseType: !1796, size: 64, offset: 1088)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!7, !1799, !530, !1801}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !79, line: 66, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1330, file: !79, line: 444, baseType: !1803, size: 64, offset: 1152)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{null, !530}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1330, file: !79, line: 445, baseType: !1807, size: 64, offset: 1216)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!7, !1750, !1772}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1317, file: !79, line: 486, baseType: !119, size: 64, offset: 896)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1317, file: !79, line: 487, baseType: !747, size: 320, offset: 960)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1317, file: !79, line: 488, baseType: !1813, size: 32, offset: 1280)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1814, line: 8, baseType: !145)
!1814 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1317, file: !79, line: 489, baseType: !512, size: 32, offset: 1312)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1317, file: !79, line: 490, baseType: !225, size: 128, offset: 1344)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1317, file: !79, line: 491, baseType: !103, size: 64, offset: 1472)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1307, file: !1276, line: 180, baseType: !1819, size: 64, offset: 320)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!1114, !530, !1218, !1306, !820, !570, !1117}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1307, file: !1276, line: 182, baseType: !1819, size: 64, offset: 384)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1307, file: !1276, line: 184, baseType: !1824, size: 64, offset: 448)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!7, !530, !1218, !1306, !1456}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1295, file: !1276, line: 90, baseType: !1828, size: 64, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1295, file: !1276, line: 91, baseType: !1830, size: 64, offset: 256)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1266, file: !1213, line: 120, baseType: !1832, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1835, !1236}
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1837)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !73, line: 39, size: 384, elements: !1838)
!1838 = !{!1839, !1840, !1844, !1848, !1856, !1860}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1837, file: !73, line: 40, baseType: !72, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1837, file: !73, line: 41, baseType: !1841, size: 64, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!807}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1837, file: !73, line: 42, baseType: !1845, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!103}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1837, file: !73, line: 43, baseType: !1849, size: 64, offset: 192)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!1852, !1854}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !73, line: 19, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1837, file: !73, line: 44, baseType: !1857, size: 64, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!1852}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1837, file: !73, line: 45, baseType: !993, size: 64, offset: 320)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1266, file: !1213, line: 121, baseType: !1862, size: 64, offset: 256)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!1852, !1236}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1266, file: !1213, line: 122, baseType: !1866, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !1236, !1869, !1870}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1212, file: !1213, line: 70, baseType: !1872, size: 64, offset: 384)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1874, line: 190, size: 1152, elements: !1875)
!1874 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1875 = !{!1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1974, !1975, !1976, !1977, !1978, !1981}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1873, file: !1874, line: 191, baseType: !108, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1873, file: !1874, line: 192, baseType: !108, size: 32, offset: 32)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1873, file: !1874, line: 202, baseType: !1872, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1873, file: !1874, line: 203, baseType: !810, size: 64, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1873, file: !1874, line: 205, baseType: !212, size: 192, align: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1873, file: !1874, line: 207, baseType: !1852, size: 64, offset: 384)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1873, file: !1874, line: 208, baseType: !17, size: 32, offset: 448)
!1883 = !DIDerivedType(tag: DW_TAG_member, scope: !1873, file: !1874, line: 209, baseType: !1884, size: 256, offset: 512)
!1884 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1873, file: !1874, line: 209, size: 256, elements: !1885)
!1885 = !{!1886, !1895, !1899}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1884, file: !1874, line: 210, baseType: !1887, size: 256)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1874, line: 153, size: 256, elements: !1888)
!1888 = !{!1889, !1890, !1891, !1894}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1887, file: !1874, line: 154, baseType: !119, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1887, file: !1874, line: 156, baseType: !387, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1887, file: !1874, line: 162, baseType: !1892, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1874, line: 162, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1887, file: !1874, line: 167, baseType: !119, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1884, file: !1874, line: 211, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1874, line: 170, size: 64, elements: !1897)
!1897 = !{!1898}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1896, file: !1874, line: 171, baseType: !1872, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1884, file: !1874, line: 212, baseType: !1900, size: 256)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1874, line: 174, size: 256, elements: !1901)
!1901 = !{!1902, !1969, !1972, !1973}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1900, file: !1874, line: 175, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1905)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1874, line: 271, size: 768, elements: !1906)
!1906 = !{!1907, !1929, !1933, !1937, !1942, !1946, !1950, !1954, !1955, !1956, !1957, !1965}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1905, file: !1874, line: 276, baseType: !1908, size: 64)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!7, !1911}
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1874, line: 251, size: 1216, elements: !1913)
!1913 = !{!1914, !1915, !1916, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1912, file: !1874, line: 253, baseType: !1872, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1912, file: !1874, line: 254, baseType: !530, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1912, file: !1874, line: 255, baseType: !1917, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !152, line: 66, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1912, file: !1874, line: 256, baseType: !103, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1912, file: !1874, line: 259, baseType: !558, size: 256, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1912, file: !1874, line: 260, baseType: !558, size: 256, offset: 512)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1912, file: !1874, line: 261, baseType: !7, size: 32, offset: 768)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1912, file: !1874, line: 262, baseType: !225, size: 128, offset: 832)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1912, file: !1874, line: 263, baseType: !820, size: 64, offset: 960)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1912, file: !1874, line: 265, baseType: !1117, size: 64, offset: 1024)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1912, file: !1874, line: 266, baseType: !807, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1912, file: !1874, line: 267, baseType: !807, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1912, file: !1874, line: 268, baseType: !1501, size: 64, offset: 1152)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1905, file: !1874, line: 277, baseType: !1930, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{null, !1911}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1905, file: !1874, line: 290, baseType: !1934, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!7, !1917, !103}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1905, file: !1874, line: 292, baseType: !1938, size: 64, offset: 192)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!103, !1917, !1941}
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1905, file: !1874, line: 293, baseType: !1943, size: 64, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!103, !1917, !103, !1941}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1905, file: !1874, line: 294, baseType: !1947, size: 64, offset: 320)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{null, !1917, !103}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1905, file: !1874, line: 296, baseType: !1951, size: 64, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!1114, !1911, !820, !1117, !570}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1905, file: !1874, line: 306, baseType: !1117, size: 64, offset: 448)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1905, file: !1874, line: 313, baseType: !807, size: 8, offset: 512)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1905, file: !1874, line: 314, baseType: !1951, size: 64, offset: 576)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1905, file: !1874, line: 317, baseType: !1958, size: 64, offset: 640)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!1961, !1911, !1963}
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1962, line: 59, baseType: !17)
!1962 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !79, line: 61, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1905, file: !1874, line: 320, baseType: !1966, size: 64, offset: 704)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!7, !1911, !1456}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1900, file: !1874, line: 176, baseType: !1970, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1874, line: 35, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1900, file: !1874, line: 177, baseType: !570, size: 64, offset: 128)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1900, file: !1874, line: 178, baseType: !1872, size: 64, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1873, file: !1874, line: 215, baseType: !103, size: 64, offset: 768)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1873, file: !1874, line: 221, baseType: !220, size: 64, offset: 832)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1873, file: !1874, line: 223, baseType: !191, size: 16, offset: 896)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1873, file: !1874, line: 224, baseType: !965, size: 16, offset: 912)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1873, file: !1874, line: 225, baseType: !1979, size: 64, offset: 960)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1874, line: 36, flags: DIFlagFwdDecl)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1873, file: !1874, line: 227, baseType: !538, size: 128, align: 64, offset: 1024)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1212, file: !1213, line: 71, baseType: !1983, size: 32, offset: 448)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1984, line: 19, size: 32, elements: !1985)
!1984 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1985 = !{!1986}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1983, file: !1984, line: 20, baseType: !165, size: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1212, file: !1213, line: 73, baseType: !17, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1212, file: !1213, line: 74, baseType: !17, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1212, file: !1213, line: 75, baseType: !17, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1212, file: !1213, line: 76, baseType: !17, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1212, file: !1213, line: 77, baseType: !17, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1209, file: !35, line: 47, baseType: !1199, size: 64, offset: 512)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1209, file: !35, line: 48, baseType: !1218, size: 64, offset: 576)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1209, file: !35, line: 49, baseType: !1995, size: 64, offset: 640)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !35, line: 49, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1209, file: !35, line: 50, baseType: !1998, size: 64, offset: 704)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1200, file: !35, line: 418, baseType: !2000, size: 64, offset: 1408)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !35, line: 53, size: 448, elements: !2002)
!2002 = !{!2003, !2004, !2009, !2013, !2017, !2021}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2001, file: !35, line: 54, baseType: !1283, size: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2001, file: !35, line: 55, baseType: !2005, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!1114, !2000, !2008, !820}
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2001, file: !35, line: 57, baseType: !2010, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!1114, !2000, !2008, !810, !1117}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2001, file: !35, line: 59, baseType: !2014, size: 64, offset: 256)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !1199, !810}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2001, file: !35, line: 60, baseType: !2018, size: 64, offset: 320)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!7, !1199}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2001, file: !35, line: 61, baseType: !2022, size: 64, offset: 384)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{null, !1199}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1200, file: !35, line: 419, baseType: !810, size: 64, offset: 1472)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1200, file: !35, line: 420, baseType: !810, size: 64, offset: 1536)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1200, file: !35, line: 421, baseType: !1218, size: 64, offset: 1600)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1200, file: !35, line: 424, baseType: !2029, size: 64, offset: 1664)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2031)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !35, line: 424, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1200, file: !35, line: 425, baseType: !2033, size: 64, offset: 1728)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1200, file: !35, line: 426, baseType: !17, size: 32, offset: 1792)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1200, file: !35, line: 435, baseType: !558, size: 256, offset: 1856)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1200, file: !35, line: 437, baseType: !2038, size: 64, offset: 2112)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2040, line: 69, size: 320, elements: !2041)
!2040 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2041 = !{!2042, !2043, !2044, !2061, !2063, !2067, !2068}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2039, file: !2040, line: 70, baseType: !810, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2039, file: !2040, line: 71, baseType: !1199, size: 64, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2039, file: !2040, line: 72, baseType: !2045, size: 64, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2047)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2040, line: 47, size: 256, elements: !2048)
!2048 = !{!2049, !2050, !2056, !2060}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2047, file: !2040, line: 49, baseType: !17, size: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2047, file: !2040, line: 51, baseType: !2051, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!7, !810, !2054}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2039)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2047, file: !2040, line: 53, baseType: !2057, size: 64, offset: 128)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!7, !820, !2054}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2047, file: !2040, line: 55, baseType: !993, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2039, file: !2040, line: 73, baseType: !2062, size: 16, offset: 192)
!2062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2039, file: !2040, line: 74, baseType: !2064, size: 8, offset: 208)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !146, line: 16, baseType: !2065)
!2065 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !148, line: 20, baseType: !2066)
!2066 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2039, file: !2040, line: 75, baseType: !335, size: 8, offset: 216)
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2039, file: !2040, line: 76, baseType: !2069, size: 64, offset: 256)
!2069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2039, file: !2040, line: 76, size: 64, elements: !2070)
!2070 = !{!2071, !2072, !2079}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2069, file: !2040, line: 77, baseType: !103, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2069, file: !2040, line: 78, baseType: !2073, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2075)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2040, line: 86, size: 128, elements: !2076)
!2076 = !{!2077, !2078}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2075, file: !2040, line: 87, baseType: !17, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2075, file: !2040, line: 88, baseType: !820, size: 64, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2069, file: !2040, line: 79, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2082)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2040, line: 92, size: 256, elements: !2083)
!2083 = !{!2084, !2085, !2086, !2088, !2089}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2082, file: !2040, line: 94, baseType: !17, size: 32)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2082, file: !2040, line: 95, baseType: !17, size: 32, offset: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2082, file: !2040, line: 96, baseType: !2087, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2082, file: !2040, line: 97, baseType: !2045, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2082, file: !2040, line: 98, baseType: !103, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1200, file: !35, line: 438, baseType: !17, size: 32, offset: 2176)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1200, file: !35, line: 441, baseType: !17, size: 32, offset: 2208)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1200, file: !35, line: 442, baseType: !2029, size: 64, offset: 2240)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1200, file: !35, line: 443, baseType: !2033, size: 64, offset: 2304)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1200, file: !35, line: 444, baseType: !807, size: 8, offset: 2368)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1200, file: !35, line: 451, baseType: !807, size: 8, offset: 2376)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1200, file: !35, line: 454, baseType: !17, size: 32, offset: 2400)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1200, file: !35, line: 455, baseType: !2098, size: 64, offset: 2432)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2100, line: 23, size: 96, elements: !2101)
!2100 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2101 = !{!2102, !2103, !2104}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2099, file: !2100, line: 24, baseType: !7, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2099, file: !2100, line: 24, baseType: !7, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2099, file: !2100, line: 24, baseType: !7, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1200, file: !35, line: 458, baseType: !2106, size: 64, offset: 2496)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!7}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1200, file: !35, line: 460, baseType: !2110, size: 4032, align: 512, offset: 2560)
!2110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2111, size: 4032, elements: !2127)
!2111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !35, line: 362, size: 576, elements: !2112)
!2112 = !{!2113, !2114, !2115}
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2111, file: !35, line: 363, baseType: !103, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2111, file: !35, line: 364, baseType: !17, size: 32, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2111, file: !35, line: 367, baseType: !2116, size: 448, offset: 128)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !35, line: 319, size: 448, elements: !2117)
!2117 = !{!2118, !2119}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2116, file: !35, line: 320, baseType: !1199, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2116, file: !35, line: 321, baseType: !2120, size: 384, offset: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2121, line: 40, size: 384, elements: !2122)
!2121 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2122 = !{!2123}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2120, file: !2121, line: 41, baseType: !2124, size: 384, align: 64)
!2124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 384, align: 64, elements: !2125)
!2125 = !{!2126}
!2126 = !DISubrange(count: 2)
!2127 = !{!2128}
!2128 = !DISubrange(count: 7)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1200, file: !35, line: 463, baseType: !2130, size: 192, offset: 6592)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2131, line: 8, size: 192, elements: !2132)
!2131 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2132 = !{!2133, !2134, !2135}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2130, file: !2131, line: 10, baseType: !17, size: 32)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2130, file: !2131, line: 11, baseType: !124, size: 64, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2130, file: !2131, line: 12, baseType: !2136, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2138, line: 59, size: 48, elements: !2139)
!2138 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2139 = !{!2140, !2143, !2144, !2145, !2146, !2147}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2137, file: !2138, line: 60, baseType: !2141, size: 16)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !146, line: 18, baseType: !2142)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !148, line: 23, baseType: !775)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2137, file: !2138, line: 61, baseType: !2141, size: 16, offset: 16)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2137, file: !2138, line: 63, baseType: !17, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2137, file: !2138, line: 64, baseType: !17, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2137, file: !2138, line: 65, baseType: !17, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2137, file: !2138, line: 66, baseType: !17, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1200, file: !35, line: 465, baseType: !119, size: 64, offset: 6784)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1200, file: !35, line: 469, baseType: !17, size: 32, offset: 6848)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1200, file: !35, line: 470, baseType: !225, size: 128, offset: 6912)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1200, file: !35, line: 471, baseType: !2152, size: 64, offset: 7040)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2154, line: 33, size: 96, elements: !2155)
!2154 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2155 = !{!2156, !2157, !2158, !2159}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2153, file: !2154, line: 37, baseType: !7, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2153, file: !2154, line: 43, baseType: !7, size: 32, offset: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2153, file: !2154, line: 45, baseType: !191, size: 16, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2153, file: !2154, line: 47, baseType: !191, size: 16, offset: 80)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1200, file: !35, line: 476, baseType: !2161, size: 64, offset: 7104)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !35, line: 378, size: 256, elements: !2163)
!2163 = !{!2164, !2180, !2181, !2182}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2162, file: !35, line: 379, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2167, line: 204, baseType: !2168)
!2167 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2167, line: 197, size: 192, elements: !2169)
!2169 = !{!2170, !2172, !2173, !2174, !2176, !2178}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2168, file: !2167, line: 198, baseType: !2171, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2167, line: 21, baseType: !147)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2168, file: !2167, line: 199, baseType: !337, size: 8, offset: 32)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2168, file: !2167, line: 200, baseType: !337, size: 8, offset: 40)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2168, file: !2167, line: 201, baseType: !2175, size: 16, offset: 48)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2167, line: 17, baseType: !190)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2168, file: !2167, line: 202, baseType: !2177, size: 64, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2167, line: 16, baseType: !221)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2168, file: !2167, line: 203, baseType: !2179, size: 64, offset: 128)
!2179 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2167, line: 22, baseType: !221)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2162, file: !35, line: 380, baseType: !17, size: 32, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2162, file: !35, line: 381, baseType: !820, size: 64, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2162, file: !35, line: 382, baseType: !820, size: 64, offset: 192)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1200, file: !35, line: 477, baseType: !2162, size: 256, offset: 7168)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1200, file: !35, line: 480, baseType: !2185, size: 64, offset: 7424)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !35, line: 480, flags: DIFlagFwdDecl)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1200, file: !35, line: 483, baseType: !2188, size: 64, offset: 7488)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !35, line: 483, flags: DIFlagFwdDecl)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1200, file: !35, line: 488, baseType: !820, size: 64, offset: 7552)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1200, file: !35, line: 492, baseType: !103, size: 64, offset: 7616)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1200, file: !35, line: 493, baseType: !17, size: 32, offset: 7680)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1200, file: !35, line: 495, baseType: !103, size: 64, offset: 7744)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1200, file: !35, line: 496, baseType: !17, size: 32, offset: 7808)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1200, file: !35, line: 499, baseType: !17, size: 32, offset: 7840)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1200, file: !35, line: 500, baseType: !2197, size: 64, offset: 7872)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !130, line: 45, baseType: !2199)
!2199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1200, file: !35, line: 503, baseType: !17, size: 32, offset: 7936)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1200, file: !35, line: 504, baseType: !2202, size: 64, offset: 8000)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2205, line: 96, size: 192, elements: !2206)
!2205 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2206 = !{!2207, !2208, !2273, !2276}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2204, file: !2205, line: 97, baseType: !17, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2204, file: !2205, line: 98, baseType: !2209, size: 64, offset: 64)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2205, line: 24, size: 3072, elements: !2211)
!2211 = !{!2212, !2214, !2215, !2216, !2217, !2231, !2232, !2233, !2234, !2246, !2258, !2259, !2270, !2271, !2272}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2210, file: !2205, line: 26, baseType: !2213, size: 128)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 128, elements: !2125)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2210, file: !2205, line: 27, baseType: !2213, size: 128, offset: 128)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2210, file: !2205, line: 28, baseType: !7, size: 32, offset: 256)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2210, file: !2205, line: 31, baseType: !512, size: 32, align: 512, offset: 512)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2210, file: !2205, line: 32, baseType: !2218, size: 960, offset: 576)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2219, line: 206, size: 960, elements: !2220)
!2219 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2220 = !{!2221, !2222, !2225, !2227, !2228, !2230}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2218, file: !2219, line: 207, baseType: !541, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2218, file: !2219, line: 208, baseType: !2223, size: 256, offset: 64)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2224, size: 256, elements: !617)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2218, file: !2219, line: 209, baseType: !2226, size: 256, offset: 320)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 256, elements: !617)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2218, file: !2219, line: 213, baseType: !114, size: 64, offset: 576)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2218, file: !2219, line: 215, baseType: !2229, size: 256, offset: 640)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, elements: !617)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2218, file: !2219, line: 216, baseType: !335, size: 8, offset: 896)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2210, file: !2205, line: 33, baseType: !119, size: 64, offset: 1536)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2210, file: !2205, line: 34, baseType: !119, size: 64, offset: 1600)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2210, file: !2205, line: 35, baseType: !807, size: 8, offset: 1664)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2210, file: !2205, line: 36, baseType: !2235, size: 320, offset: 1728)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2236, line: 11, size: 320, elements: !2237)
!2236 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2237 = !{!2238, !2239, !2240, !2245}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2235, file: !2236, line: 16, baseType: !612, size: 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2235, file: !2236, line: 17, baseType: !119, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2235, file: !2236, line: 18, baseType: !2241, size: 64, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !2244}
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2235, file: !2236, line: 19, baseType: !145, size: 32, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2210, file: !2205, line: 37, baseType: !2247, size: 256, offset: 2048)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2248, line: 98, size: 256, elements: !2249)
!2248 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2249 = !{!2250, !2251, !2252}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2247, file: !2248, line: 99, baseType: !551, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2247, file: !2248, line: 100, baseType: !225, size: 128, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2247, file: !2248, line: 101, baseType: !2253, size: 64, offset: 192)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2248, line: 21, baseType: !2254)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !2257}
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2210, file: !2205, line: 38, baseType: !538, size: 128, align: 64, offset: 2304)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2210, file: !2205, line: 39, baseType: !2260, size: 64, offset: 2432)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2205, line: 49, size: 768, elements: !2262)
!2262 = !{!2263, !2264, !2265, !2266, !2267, !2268, !2269}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2261, file: !2205, line: 50, baseType: !512, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2261, file: !2205, line: 51, baseType: !2226, size: 256, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2261, file: !2205, line: 53, baseType: !2226, size: 256, offset: 320)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2261, file: !2205, line: 54, baseType: !119, size: 64, offset: 576)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2261, file: !2205, line: 55, baseType: !2260, size: 64, offset: 640)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2261, file: !2205, line: 56, baseType: !7, size: 32, offset: 704)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2261, file: !2205, line: 57, baseType: !7, size: 32, offset: 736)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2210, file: !2205, line: 40, baseType: !119, size: 64, offset: 2496)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2210, file: !2205, line: 42, baseType: !7, size: 32, offset: 2560)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2210, file: !2205, line: 43, baseType: !2203, size: 64, offset: 2624)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2204, file: !2205, line: 99, baseType: !2274, offset: 128)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2275, line: 211, elements: !523)
!2275 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2204, file: !2205, line: 100, baseType: !2277, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2205, line: 63, size: 3008, elements: !2279)
!2279 = !{!2280, !2281, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2311}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2278, file: !2205, line: 64, baseType: !2260, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2278, file: !2205, line: 65, baseType: !2282, size: 192, offset: 64)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2260, size: 192, elements: !596)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2278, file: !2205, line: 67, baseType: !7, size: 32, offset: 256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2278, file: !2205, line: 68, baseType: !558, size: 256, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2278, file: !2205, line: 69, baseType: !512, size: 32, offset: 576)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2278, file: !2205, line: 70, baseType: !558, size: 256, offset: 640)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2278, file: !2205, line: 71, baseType: !119, size: 64, offset: 896)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2278, file: !2205, line: 72, baseType: !119, size: 64, offset: 960)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2278, file: !2205, line: 73, baseType: !119, size: 64, offset: 1024)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2278, file: !2205, line: 74, baseType: !119, size: 64, offset: 1088)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2278, file: !2205, line: 75, baseType: !119, size: 64, offset: 1152)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2278, file: !2205, line: 76, baseType: !119, size: 64, offset: 1216)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2278, file: !2205, line: 77, baseType: !119, size: 64, offset: 1280)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2278, file: !2205, line: 78, baseType: !119, size: 64, offset: 1344)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2278, file: !2205, line: 79, baseType: !807, size: 8, offset: 1408)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2278, file: !2205, line: 80, baseType: !119, size: 64, offset: 1472)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2278, file: !2205, line: 81, baseType: !558, size: 256, offset: 1536)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2278, file: !2205, line: 82, baseType: !1421, size: 256, offset: 1792)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2278, file: !2205, line: 84, baseType: !108, size: 32, offset: 2048)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2278, file: !2205, line: 87, baseType: !119, size: 64, offset: 2112)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2278, file: !2205, line: 88, baseType: !119, size: 64, offset: 2176)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2278, file: !2205, line: 89, baseType: !2303, size: 704, offset: 2240)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2248, line: 111, size: 704, elements: !2304)
!2304 = !{!2305, !2306, !2307, !2310}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2303, file: !2248, line: 112, baseType: !2247, size: 256)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2303, file: !2248, line: 113, baseType: !2235, size: 320, offset: 256)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2303, file: !2248, line: 116, baseType: !2308, size: 64, offset: 576)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2248, line: 18, flags: DIFlagFwdDecl)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2303, file: !2248, line: 117, baseType: !7, size: 32, offset: 640)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2278, file: !2205, line: 90, baseType: !2203, size: 64, offset: 2944)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1200, file: !35, line: 515, baseType: !2313, size: 64, offset: 8064)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2315, line: 117, size: 128, elements: !2316)
!2315 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2316 = !{!2317, !2318, !2319}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2314, file: !2315, line: 118, baseType: !739, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2314, file: !2315, line: 119, baseType: !739, size: 32, offset: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2314, file: !2315, line: 120, baseType: !114, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1200, file: !35, line: 516, baseType: !17, size: 32, offset: 8128)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1200, file: !35, line: 519, baseType: !17, size: 32, offset: 8160)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1200, file: !35, line: 520, baseType: !2323, size: 64, offset: 8192)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1200, file: !35, line: 523, baseType: !2325, size: 64, offset: 8256)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !35, line: 523, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1200, file: !35, line: 524, baseType: !17, size: 32, offset: 8320)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1200, file: !35, line: 525, baseType: !2330, size: 64, offset: 8384)
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2333, line: 28, size: 192, elements: !2334)
!2333 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2334 = !{!2335, !2336, !2337}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2332, file: !2333, line: 29, baseType: !810, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2332, file: !2333, line: 30, baseType: !810, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2332, file: !2333, line: 31, baseType: !119, size: 64, offset: 128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1200, file: !35, line: 526, baseType: !17, size: 32, offset: 8448)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1200, file: !35, line: 533, baseType: !103, size: 64, offset: 8512)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1200, file: !35, line: 534, baseType: !17, size: 32, offset: 8576)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1200, file: !35, line: 535, baseType: !144, size: 64, offset: 8640)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1200, file: !35, line: 536, baseType: !17, size: 32, offset: 8704)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1200, file: !35, line: 539, baseType: !7, size: 32, offset: 8736)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1200, file: !35, line: 540, baseType: !2345, size: 64, offset: 8768)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2347, line: 32, size: 64, elements: !2348)
!2347 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2348 = !{!2349, !2350}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2346, file: !2347, line: 33, baseType: !739, size: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2346, file: !2347, line: 34, baseType: !739, size: 32, offset: 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1200, file: !35, line: 563, baseType: !225, size: 128, offset: 8832)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1200, file: !35, line: 565, baseType: !225, size: 128, offset: 8960)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1200, file: !35, line: 568, baseType: !2354, size: 64, offset: 9088)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1200, file: !35, line: 570, baseType: !108, size: 32, offset: 9152)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1176, file: !79, line: 2382, baseType: !1175, size: 64, offset: 448)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1176, file: !79, line: 2383, baseType: !608, size: 64, offset: 512)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1176, file: !79, line: 2385, baseType: !2361, offset: 576)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2275, line: 206, elements: !523)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1176, file: !79, line: 2386, baseType: !2361, offset: 576)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1176, file: !79, line: 2387, baseType: !2361, offset: 576)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1176, file: !79, line: 2388, baseType: !2365, offset: 576)
!2365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2361, elements: !596)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1176, file: !79, line: 2390, baseType: !2361, offset: 576)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1176, file: !79, line: 2391, baseType: !2361, offset: 576)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1176, file: !79, line: 2392, baseType: !2361, offset: 576)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1176, file: !79, line: 2393, baseType: !2361, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1167, file: !79, line: 1197, baseType: !2371, size: 64, offset: 384)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2373)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !79, line: 2057, size: 1664, elements: !2374)
!2374 = !{!2375, !2379, !2383, !2384, !2388, !2392, !2396, !2397, !2398, !2402, !2406, !2410, !2411, !2412, !2418, !2422, !2423, !2427, !2428, !2429, !2430, !2434, !2438, !2485, !2500, !2501}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2373, file: !79, line: 2058, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!961, !1166}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2373, file: !79, line: 2059, baseType: !2380, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{null, !961}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2373, file: !79, line: 2060, baseType: !2380, size: 64, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2373, file: !79, line: 2062, baseType: !2385, size: 64, offset: 192)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !961, !7}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2373, file: !79, line: 2063, baseType: !2389, size: 64, offset: 256)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!7, !961, !1633}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2373, file: !79, line: 2064, baseType: !2393, size: 64, offset: 320)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!7, !961}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2373, file: !79, line: 2065, baseType: !2380, size: 64, offset: 384)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2373, file: !79, line: 2066, baseType: !1195, size: 64, offset: 448)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2373, file: !79, line: 2067, baseType: !2399, size: 64, offset: 512)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!7, !1166, !7}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2373, file: !79, line: 2068, baseType: !2403, size: 64, offset: 576)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!7, !1166, !78}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2373, file: !79, line: 2069, baseType: !2407, size: 64, offset: 640)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!7, !1166}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2373, file: !79, line: 2070, baseType: !2403, size: 64, offset: 704)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2373, file: !79, line: 2071, baseType: !2407, size: 64, offset: 768)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2373, file: !79, line: 2072, baseType: !2413, size: 64, offset: 832)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!7, !926, !2416}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !79, line: 62, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2373, file: !79, line: 2073, baseType: !2419, size: 64, offset: 896)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!7, !1166, !124, !820}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2373, file: !79, line: 2074, baseType: !1195, size: 64, offset: 960)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2373, file: !79, line: 2076, baseType: !2424, size: 64, offset: 1024)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!7, !1917, !926}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2373, file: !79, line: 2077, baseType: !2424, size: 64, offset: 1088)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2373, file: !79, line: 2078, baseType: !2424, size: 64, offset: 1152)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2373, file: !79, line: 2079, baseType: !2424, size: 64, offset: 1216)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2373, file: !79, line: 2081, baseType: !2431, size: 64, offset: 1280)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!1114, !1166, !7, !820, !1117, !570}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2373, file: !79, line: 2082, baseType: !2435, size: 64, offset: 1344)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!1114, !1166, !7, !810, !1117, !570}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2373, file: !79, line: 2083, baseType: !2439, size: 64, offset: 1408)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!2442, !961}
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !84, line: 296, size: 1664, elements: !2445)
!2445 = !{!2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2470, !2471, !2472}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2444, file: !84, line: 297, baseType: !612, size: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2444, file: !84, line: 298, baseType: !225, size: 128, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2444, file: !84, line: 299, baseType: !225, size: 128, offset: 256)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2444, file: !84, line: 300, baseType: !225, size: 128, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2444, file: !84, line: 301, baseType: !558, size: 256, offset: 512)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2444, file: !84, line: 302, baseType: !512, size: 32, offset: 768)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2444, file: !84, line: 303, baseType: !108, size: 32, offset: 800)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2444, file: !84, line: 304, baseType: !1166, size: 64, offset: 832)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2444, file: !84, line: 305, baseType: !2455, size: 64, offset: 896)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !84, line: 68, size: 64, elements: !2456)
!2456 = !{!2457, !2469}
!2457 = !DIDerivedType(tag: DW_TAG_member, scope: !2455, file: !84, line: 69, baseType: !2458, size: 32)
!2458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2455, file: !84, line: 69, size: 32, elements: !2459)
!2459 = !{!2460, !2461, !2462}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2458, file: !84, line: 70, baseType: !689, size: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2458, file: !84, line: 71, baseType: !706, size: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2458, file: !84, line: 72, baseType: !2463, size: 32)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2464, line: 24, baseType: !2465)
!2464 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2464, line: 22, size: 32, elements: !2466)
!2466 = !{!2467}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2465, file: !2464, line: 23, baseType: !2468, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2464, line: 20, baseType: !694)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2455, file: !84, line: 74, baseType: !83, size: 32, offset: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2444, file: !84, line: 306, baseType: !570, size: 64, offset: 960)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2444, file: !84, line: 307, baseType: !119, size: 64, offset: 1024)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2444, file: !84, line: 308, baseType: !2473, size: 576, offset: 1088)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !84, line: 205, size: 576, elements: !2474)
!2474 = !{!2475, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2484}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2473, file: !84, line: 206, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !84, line: 66, baseType: !238)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2473, file: !84, line: 207, baseType: !2476, size: 64, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2473, file: !84, line: 208, baseType: !2476, size: 64, offset: 128)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2473, file: !84, line: 209, baseType: !2476, size: 64, offset: 192)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2473, file: !84, line: 210, baseType: !2476, size: 64, offset: 256)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2473, file: !84, line: 211, baseType: !2476, size: 64, offset: 320)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2473, file: !84, line: 212, baseType: !2476, size: 64, offset: 384)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2473, file: !84, line: 213, baseType: !763, size: 64, offset: 448)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2473, file: !84, line: 214, baseType: !763, size: 64, offset: 512)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2373, file: !79, line: 2085, baseType: !2486, size: 64, offset: 1472)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!114, !1166, !2489}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2491, line: 15, size: 256, elements: !2492)
!2491 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2492 = !{!2493, !2494, !2495, !2496, !2497}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2490, file: !2491, line: 16, baseType: !648, size: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2490, file: !2491, line: 19, baseType: !7, size: 32, offset: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2490, file: !2491, line: 26, baseType: !119, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2490, file: !2491, line: 33, baseType: !119, size: 64, offset: 128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2490, file: !2491, line: 36, baseType: !2498, size: 64, offset: 192)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !50, line: 33, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2373, file: !79, line: 2087, baseType: !2486, size: 64, offset: 1536)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2373, file: !79, line: 2089, baseType: !1195, size: 64, offset: 1600)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1167, file: !79, line: 1198, baseType: !2503, size: 64, offset: 448)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2505)
!2505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !84, line: 324, size: 704, elements: !2506)
!2506 = !{!2507, !2511, !2515, !2519, !2520, !2521, !2522, !2523, !2528, !2533, !2537}
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2505, file: !84, line: 325, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!7, !2443}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2505, file: !84, line: 326, baseType: !2512, size: 64, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!2443, !1166, !7}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2505, file: !84, line: 327, baseType: !2516, size: 64, offset: 128)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{null, !2443}
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2505, file: !84, line: 328, baseType: !2508, size: 64, offset: 192)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2505, file: !84, line: 329, baseType: !2508, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2505, file: !84, line: 330, baseType: !2508, size: 64, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2505, file: !84, line: 331, baseType: !2399, size: 64, offset: 384)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2505, file: !84, line: 334, baseType: !2524, size: 64, offset: 448)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{!2527, !961}
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2505, file: !84, line: 335, baseType: !2529, size: 64, offset: 512)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!7, !961, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2505, file: !84, line: 337, baseType: !2534, size: 64, offset: 576)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!7, !961, !2527}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2505, file: !84, line: 339, baseType: !2538, size: 64, offset: 640)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!7, !1166, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1167, file: !79, line: 1199, baseType: !2543, size: 64, offset: 512)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2545)
!2545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !84, line: 430, size: 704, elements: !2546)
!2546 = !{!2547, !2551, !2552, !2556, !2557, !2558, !2573, !2596, !2600, !2601, !2624}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2545, file: !84, line: 431, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!7, !1166, !7, !7, !1083}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2545, file: !84, line: 432, baseType: !2399, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2545, file: !84, line: 433, baseType: !2553, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!7, !1166, !17}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2545, file: !84, line: 434, baseType: !2553, size: 64, offset: 192)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2545, file: !84, line: 435, baseType: !2399, size: 64, offset: 256)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2545, file: !84, line: 436, baseType: !2559, size: 64, offset: 320)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!7, !1166, !7, !2562}
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !84, line: 417, size: 256, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2563, file: !84, line: 418, baseType: !7, size: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2563, file: !84, line: 419, baseType: !17, size: 32, offset: 32)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2563, file: !84, line: 420, baseType: !17, size: 32, offset: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2563, file: !84, line: 422, baseType: !17, size: 32, offset: 96)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2563, file: !84, line: 423, baseType: !17, size: 32, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2563, file: !84, line: 424, baseType: !17, size: 32, offset: 160)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2563, file: !84, line: 425, baseType: !17, size: 32, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2563, file: !84, line: 426, baseType: !17, size: 32, offset: 224)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2545, file: !84, line: 437, baseType: !2574, size: 64, offset: 384)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!7, !1166, !2455, !2577}
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !84, line: 345, size: 960, elements: !2579)
!2579 = !{!2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2578, file: !84, line: 346, baseType: !7, size: 32)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2578, file: !84, line: 347, baseType: !220, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2578, file: !84, line: 348, baseType: !220, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2578, file: !84, line: 349, baseType: !220, size: 64, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2578, file: !84, line: 350, baseType: !220, size: 64, offset: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2578, file: !84, line: 351, baseType: !220, size: 64, offset: 320)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2578, file: !84, line: 352, baseType: !220, size: 64, offset: 384)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2578, file: !84, line: 353, baseType: !236, size: 64, offset: 448)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2578, file: !84, line: 355, baseType: !236, size: 64, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2578, file: !84, line: 356, baseType: !7, size: 32, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2578, file: !84, line: 357, baseType: !7, size: 32, offset: 608)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2578, file: !84, line: 358, baseType: !220, size: 64, offset: 640)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2578, file: !84, line: 359, baseType: !220, size: 64, offset: 704)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2578, file: !84, line: 360, baseType: !220, size: 64, offset: 768)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2578, file: !84, line: 361, baseType: !236, size: 64, offset: 832)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2578, file: !84, line: 362, baseType: !7, size: 32, offset: 896)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2545, file: !84, line: 438, baseType: !2597, size: 64, offset: 448)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!7, !1166, !2541, !2577}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2545, file: !84, line: 440, baseType: !2574, size: 64, offset: 512)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2545, file: !84, line: 441, baseType: !2602, size: 64, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!7, !1166, !2605}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !84, line: 411, size: 1408, elements: !2607)
!2607 = !{!2608, !2609}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2606, file: !84, line: 412, baseType: !17, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2606, file: !84, line: 413, baseType: !2610, size: 1344, offset: 64)
!2610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2611, size: 1344, elements: !596)
!2611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !84, line: 397, size: 448, elements: !2612)
!2612 = !{!2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2623}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2611, file: !84, line: 398, baseType: !17, size: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2611, file: !84, line: 399, baseType: !17, size: 32, offset: 32)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2611, file: !84, line: 401, baseType: !17, size: 32, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2611, file: !84, line: 402, baseType: !17, size: 32, offset: 96)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2611, file: !84, line: 403, baseType: !17, size: 32, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2611, file: !84, line: 404, baseType: !17, size: 32, offset: 160)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2611, file: !84, line: 405, baseType: !17, size: 32, offset: 192)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2611, file: !84, line: 406, baseType: !222, size: 64, offset: 256)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2611, file: !84, line: 407, baseType: !2622, size: 64, offset: 320)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !109, line: 132, baseType: !220)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2611, file: !84, line: 408, baseType: !2622, size: 64, offset: 384)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2545, file: !84, line: 442, baseType: !2553, size: 64, offset: 640)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1167, file: !79, line: 1200, baseType: !2626, size: 64, offset: 576)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2628)
!2628 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !79, line: 54, flags: DIFlagFwdDecl)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1167, file: !79, line: 1201, baseType: !119, size: 64, offset: 640)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1167, file: !79, line: 1202, baseType: !119, size: 64, offset: 704)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1167, file: !79, line: 1203, baseType: !119, size: 64, offset: 768)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1167, file: !79, line: 1204, baseType: !926, size: 64, offset: 832)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1167, file: !79, line: 1205, baseType: !747, size: 320, offset: 896)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1167, file: !79, line: 1206, baseType: !7, size: 32, offset: 1216)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1167, file: !79, line: 1207, baseType: !108, size: 32, offset: 1248)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1167, file: !79, line: 1209, baseType: !103, size: 64, offset: 1280)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1167, file: !79, line: 1211, baseType: !2638, size: 64, offset: 1344)
!2638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2641)
!2641 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !79, line: 1211, flags: DIFlagFwdDecl)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1167, file: !79, line: 1223, baseType: !2643, size: 64, offset: 1408)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !938, line: 34, size: 64, elements: !2644)
!2644 = !{!2645}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2643, file: !938, line: 35, baseType: !941, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1167, file: !79, line: 1224, baseType: !225, size: 128, offset: 1472)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1167, file: !79, line: 1225, baseType: !2648, size: 64, offset: 1600)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !79, line: 1225, flags: DIFlagFwdDecl)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1167, file: !79, line: 1226, baseType: !2651, size: 64, offset: 1664)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !79, line: 1226, flags: DIFlagFwdDecl)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1167, file: !79, line: 1227, baseType: !2654, size: 64, offset: 1728)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !79, line: 50, flags: DIFlagFwdDecl)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1167, file: !79, line: 1228, baseType: !2657, size: 64, offset: 1792)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !79, line: 1228, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1167, file: !79, line: 1229, baseType: !612, size: 128, offset: 1856)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1167, file: !79, line: 1230, baseType: !17, size: 32, offset: 1984)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1167, file: !79, line: 1231, baseType: !2662, size: 2496, offset: 2048)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !84, line: 521, size: 2496, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2668, !2700}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2662, file: !84, line: 522, baseType: !17, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2662, file: !84, line: 523, baseType: !747, size: 320, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2662, file: !84, line: 524, baseType: !2667, size: 192, offset: 384)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !961, size: 192, elements: !596)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2662, file: !84, line: 525, baseType: !2669, size: 1728, offset: 576)
!2669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2670, size: 1728, elements: !596)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !84, line: 222, size: 576, elements: !2671)
!2671 = !{!2672, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2670, file: !84, line: 223, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !84, line: 445, size: 256, elements: !2675)
!2675 = !{!2676, !2677, !2690, !2691}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2674, file: !84, line: 446, baseType: !7, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2674, file: !84, line: 447, baseType: !2678, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2680)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !84, line: 312, size: 512, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2680, file: !84, line: 313, baseType: !2399, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2680, file: !84, line: 314, baseType: !2399, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2680, file: !84, line: 315, baseType: !2399, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2680, file: !84, line: 316, baseType: !2399, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2680, file: !84, line: 317, baseType: !2508, size: 64, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2680, file: !84, line: 318, baseType: !2508, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2680, file: !84, line: 319, baseType: !2508, size: 64, offset: 384)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2680, file: !84, line: 320, baseType: !2538, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2674, file: !84, line: 448, baseType: !1199, size: 64, offset: 128)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2674, file: !84, line: 449, baseType: !2673, size: 64, offset: 192)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2670, file: !84, line: 224, baseType: !7, size: 32, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2670, file: !84, line: 226, baseType: !225, size: 128, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2670, file: !84, line: 227, baseType: !119, size: 64, offset: 256)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2670, file: !84, line: 228, baseType: !17, size: 32, offset: 320)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2670, file: !84, line: 229, baseType: !17, size: 32, offset: 352)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2670, file: !84, line: 230, baseType: !2476, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2670, file: !84, line: 231, baseType: !2476, size: 64, offset: 448)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2670, file: !84, line: 232, baseType: !103, size: 64, offset: 512)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2662, file: !84, line: 526, baseType: !2701, size: 192, offset: 2304)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2678, size: 192, elements: !596)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1167, file: !79, line: 1233, baseType: !2703, size: 2368, offset: 4544)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !79, line: 1184, size: 2368, elements: !2704)
!2704 = !{!2705, !2706, !2707}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2703, file: !79, line: 1185, baseType: !191, size: 16)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2703, file: !79, line: 1186, baseType: !191, size: 16, offset: 16)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2703, file: !79, line: 1187, baseType: !2708, size: 2304, offset: 64)
!2708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2709, size: 2304, elements: !596)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2710, line: 12, size: 768, elements: !2711)
!2710 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2711 = !{!2712, !2720, !2721, !2726, !2727}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2709, file: !2710, line: 13, baseType: !2713, size: 384)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2714, line: 17, size: 384, elements: !2715)
!2714 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2715 = !{!2716, !2717, !2718, !2719}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2713, file: !2714, line: 18, baseType: !7, size: 32)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2713, file: !2714, line: 19, baseType: !7, size: 32, offset: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2713, file: !2714, line: 20, baseType: !621, size: 192, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2713, file: !2714, line: 22, baseType: !538, size: 128, align: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2709, file: !2710, line: 14, baseType: !2087, size: 64, offset: 384)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2709, file: !2710, line: 15, baseType: !2722, size: 64, offset: 448)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2723, line: 16, size: 64, elements: !2724)
!2723 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2724 = !{!2725}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2722, file: !2723, line: 17, baseType: !150, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2709, file: !2710, line: 16, baseType: !621, size: 192, offset: 512)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2709, file: !2710, line: 17, baseType: !108, size: 32, offset: 704)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1167, file: !79, line: 1240, baseType: !103, size: 64, offset: 6912)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1167, file: !79, line: 1243, baseType: !145, size: 32, offset: 6976)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1167, file: !79, line: 1245, baseType: !763, size: 64, offset: 7040)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1167, file: !79, line: 1246, baseType: !763, size: 64, offset: 7104)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1167, file: !79, line: 1248, baseType: !147, size: 32, offset: 7168)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1167, file: !79, line: 1249, baseType: !2734, size: 64, offset: 7232)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !79, line: 634, flags: DIFlagFwdDecl)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1167, file: !79, line: 1252, baseType: !2737, size: 256, offset: 7296)
!2737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 256, elements: !2738)
!2738 = !{!2739}
!2739 = !DISubrange(count: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1167, file: !79, line: 1253, baseType: !2741, size: 128, offset: 7552)
!2741 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2742, line: 21, baseType: !2743)
!2742 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2742, line: 19, size: 128, elements: !2744)
!2744 = !{!2745}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2743, file: !2742, line: 20, baseType: !2746, size: 128)
!2746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !336, size: 128, elements: !2747)
!2747 = !{!2748}
!2748 = !DISubrange(count: 16)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1167, file: !79, line: 1255, baseType: !17, size: 32, offset: 7680)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1167, file: !79, line: 1261, baseType: !558, size: 256, offset: 7744)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1167, file: !79, line: 1267, baseType: !810, size: 64, offset: 8000)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1167, file: !79, line: 1269, baseType: !2753, size: 64, offset: 8064)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2755)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !928, line: 128, size: 1024, align: 512, elements: !2756)
!2756 = !{!2757, !2761, !2762, !2769, !2775, !2779, !2783, !2787, !2788, !2792, !2796, !2801, !2805}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2755, file: !928, line: 129, baseType: !2758, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = !DISubroutineType(types: !2760)
!2760 = !{!7, !926, !17}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2755, file: !928, line: 130, baseType: !2758, size: 64, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2755, file: !928, line: 131, baseType: !2763, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!7, !2766, !2768}
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !927)
!2768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2755, file: !928, line: 132, baseType: !2770, size: 64, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!7, !2766, !17, !810, !2773}
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2755, file: !928, line: 134, baseType: !2776, size: 64, offset: 256)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!7, !2766}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2755, file: !928, line: 135, baseType: !2780, size: 64, offset: 320)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!7, !926}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2755, file: !928, line: 136, baseType: !2784, size: 64, offset: 384)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{null, !926}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2755, file: !928, line: 137, baseType: !2784, size: 64, offset: 448)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2755, file: !928, line: 138, baseType: !2789, size: 64, offset: 512)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{null, !926, !961}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2755, file: !928, line: 139, baseType: !2793, size: 64, offset: 576)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!820, !926, !820, !7}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2755, file: !928, line: 140, baseType: !2797, size: 64, offset: 640)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!921, !2800}
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2755, file: !928, line: 141, baseType: !2802, size: 64, offset: 704)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!7, !1083, !807}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2755, file: !928, line: 142, baseType: !2806, size: 64, offset: 768)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!926, !926, !2809}
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1167, file: !79, line: 1271, baseType: !2812, size: 448, offset: 8128)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2491, line: 63, size: 448, elements: !2813)
!2813 = !{!2814, !2819, !2820, !2821, !2822, !2823, !2824}
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2812, file: !2491, line: 64, baseType: !2815, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2816, size: 64)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!119, !2818, !2489}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2812, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2812, file: !2491, line: 66, baseType: !2815, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2812, file: !2491, line: 69, baseType: !114, size: 64, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2812, file: !2491, line: 70, baseType: !7, size: 32, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2812, file: !2491, line: 71, baseType: !17, size: 32, offset: 224)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2812, file: !2491, line: 74, baseType: !225, size: 128, offset: 256)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2812, file: !2491, line: 85, baseType: !2825, size: 64, offset: 384)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1167, file: !79, line: 1274, baseType: !551, size: 64, offset: 8576)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1167, file: !79, line: 1280, baseType: !551, size: 64, offset: 8640)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1167, file: !79, line: 1283, baseType: !7, size: 32, offset: 8704)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1167, file: !79, line: 1286, baseType: !1813, size: 32, offset: 8736)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1167, file: !79, line: 1289, baseType: !2308, size: 64, offset: 8768)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1167, file: !79, line: 1290, baseType: !608, size: 64, offset: 8832)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1167, file: !79, line: 1297, baseType: !665, size: 64, offset: 8896)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1167, file: !79, line: 1304, baseType: !2834, size: 64, offset: 8960)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2835, line: 49, size: 64, elements: !2836)
!2835 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2836 = !{!2837}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2834, file: !2835, line: 50, baseType: !2838, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2835, line: 41, size: 512, align: 512, elements: !2840)
!2840 = !{!2841, !2842, !2847}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2839, file: !2835, line: 43, baseType: !512, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2839, file: !2835, line: 45, baseType: !2843, size: 192, offset: 64)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2835, line: 29, size: 192, elements: !2844)
!2844 = !{!2845, !2846}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2843, file: !2835, line: 30, baseType: !225, size: 128)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2843, file: !2835, line: 32, baseType: !114, size: 64, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2839, file: !2835, line: 46, baseType: !114, size: 64, offset: 256)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1167, file: !79, line: 1305, baseType: !2834, size: 64, offset: 9024)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1167, file: !79, line: 1306, baseType: !538, size: 128, align: 64, offset: 9088)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1167, file: !79, line: 1307, baseType: !2247, size: 256, offset: 9216)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1167, file: !79, line: 1309, baseType: !558, size: 256, offset: 9472)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1167, file: !79, line: 1314, baseType: !7, size: 32, offset: 9728)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1167, file: !79, line: 1317, baseType: !512, size: 32, align: 512, offset: 10240)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1167, file: !79, line: 1318, baseType: !225, size: 128, offset: 10304)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1167, file: !79, line: 1320, baseType: !512, size: 32, offset: 10432)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1167, file: !79, line: 1321, baseType: !225, size: 128, offset: 10496)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !962, file: !79, line: 656, baseType: !1316, size: 64, offset: 512)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !962, file: !79, line: 659, baseType: !103, size: 64, offset: 576)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !962, file: !79, line: 663, baseType: !119, size: 64, offset: 640)
!2860 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !79, line: 671, baseType: !2861, size: 32, offset: 704)
!2861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !962, file: !79, line: 671, size: 32, elements: !2862)
!2862 = !{!2863, !2865}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2861, file: !79, line: 672, baseType: !2864, size: 32)
!2864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2861, file: !79, line: 673, baseType: !17, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !962, file: !79, line: 675, baseType: !1036, size: 32, offset: 736)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !962, file: !79, line: 676, baseType: !570, size: 64, offset: 768)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !962, file: !79, line: 677, baseType: !1072, size: 128, offset: 832)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !962, file: !79, line: 678, baseType: !1072, size: 128, offset: 960)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !962, file: !79, line: 679, baseType: !1072, size: 128, offset: 1088)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !962, file: !79, line: 680, baseType: !512, size: 32, offset: 1216)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !962, file: !79, line: 681, baseType: !191, size: 16, offset: 1248)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !962, file: !79, line: 682, baseType: !335, size: 8, offset: 1264)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !962, file: !79, line: 683, baseType: !335, size: 8, offset: 1272)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !962, file: !79, line: 684, baseType: !2622, size: 64, offset: 1280)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !962, file: !79, line: 691, baseType: !119, size: 64, offset: 1344)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !962, file: !79, line: 692, baseType: !747, size: 320, offset: 1408)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !962, file: !79, line: 694, baseType: !119, size: 64, offset: 1728)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !962, file: !79, line: 695, baseType: !119, size: 64, offset: 1792)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !962, file: !79, line: 697, baseType: !612, size: 128, offset: 1856)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !962, file: !79, line: 698, baseType: !225, size: 128, offset: 1984)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !962, file: !79, line: 707, baseType: !225, size: 128, offset: 2112)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !962, file: !79, line: 708, baseType: !225, size: 128, offset: 2240)
!2884 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !79, line: 709, baseType: !2885, size: 128, offset: 2368)
!2885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !962, file: !79, line: 709, size: 128, elements: !2886)
!2886 = !{!2887, !2888}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2885, file: !79, line: 710, baseType: !608, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2885, file: !79, line: 711, baseType: !538, size: 128, align: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !962, file: !79, line: 713, baseType: !553, size: 64, offset: 2496)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !962, file: !79, line: 714, baseType: !553, size: 64, offset: 2560)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !962, file: !79, line: 715, baseType: !108, size: 32, offset: 2624)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !962, file: !79, line: 716, baseType: !108, size: 32, offset: 2656)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !962, file: !79, line: 717, baseType: !108, size: 32, offset: 2688)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !962, file: !79, line: 719, baseType: !108, size: 32, offset: 2720)
!2895 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !79, line: 721, baseType: !2896, size: 64, offset: 2752)
!2896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !962, file: !79, line: 721, size: 64, elements: !2897)
!2897 = !{!2898, !3024}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2896, file: !79, line: 722, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2901)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !79, line: 1914, size: 2112, elements: !2902)
!2902 = !{!2903, !2904, !2908, !2912, !2916, !2917, !2918, !2924, !2937, !2941, !2945, !2946, !2950, !2951, !2955, !2960, !2961, !2965, !2969, !2975, !2976, !2980, !2981, !2987, !2991, !2992, !2997, !3001, !3005, !3009, !3013, !3014, !3020}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2901, file: !79, line: 1915, baseType: !1199, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2901, file: !79, line: 1916, baseType: !2905, size: 64, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2906, size: 64)
!2906 = !DISubroutineType(types: !2907)
!2907 = !{!570, !530, !570, !7}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2901, file: !79, line: 1917, baseType: !2909, size: 64, offset: 128)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!1114, !530, !820, !1117, !1941}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2901, file: !79, line: 1918, baseType: !2913, size: 64, offset: 192)
!2913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2914, size: 64)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!1114, !530, !810, !1117, !1941}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2901, file: !79, line: 1919, baseType: !1747, size: 64, offset: 256)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2901, file: !79, line: 1920, baseType: !1747, size: 64, offset: 320)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2901, file: !79, line: 1921, baseType: !2919, size: 64, offset: 384)
!2919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2920, size: 64)
!2920 = !DISubroutineType(types: !2921)
!2921 = !{!7, !1750, !2922, !17}
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2923 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !79, line: 53, flags: DIFlagFwdDecl)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2901, file: !79, line: 1923, baseType: !2925, size: 64, offset: 448)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!7, !530, !2928}
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !79, line: 1858, size: 128, elements: !2930)
!2930 = !{!2931, !2936}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2929, file: !79, line: 1859, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !79, line: 1855, baseType: !2933)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!807, !2928, !810, !7, !570, !220, !17}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2929, file: !79, line: 1860, baseType: !570, size: 64, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2901, file: !79, line: 1924, baseType: !2938, size: 64, offset: 512)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DISubroutineType(types: !2940)
!2940 = !{!1961, !530, !1963}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2901, file: !79, line: 1925, baseType: !2942, size: 64, offset: 576)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!114, !530, !17, !119}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2901, file: !79, line: 1926, baseType: !2942, size: 64, offset: 640)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2901, file: !79, line: 1927, baseType: !2947, size: 64, offset: 704)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = !DISubroutineType(types: !2949)
!2949 = !{!7, !530, !1456}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2901, file: !79, line: 1928, baseType: !119, size: 64, offset: 768)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2901, file: !79, line: 1929, baseType: !2952, size: 64, offset: 832)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!7, !961, !530}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2901, file: !79, line: 1930, baseType: !2956, size: 64, offset: 896)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!7, !530, !2959}
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !79, line: 1061, baseType: !103)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2901, file: !79, line: 1931, baseType: !2952, size: 64, offset: 960)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2901, file: !79, line: 1932, baseType: !2962, size: 64, offset: 1024)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!7, !530, !570, !570, !7}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2901, file: !79, line: 1933, baseType: !2966, size: 64, offset: 1088)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!7, !7, !530, !7}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2901, file: !79, line: 1934, baseType: !2970, size: 64, offset: 1152)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!7, !530, !7, !2973}
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !79, line: 1063, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2901, file: !79, line: 1935, baseType: !527, size: 64, offset: 1216)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2901, file: !79, line: 1936, baseType: !2977, size: 64, offset: 1280)
!2977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2978, size: 64)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!7, !7}
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2901, file: !79, line: 1937, baseType: !2970, size: 64, offset: 1344)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2901, file: !79, line: 1938, baseType: !2982, size: 64, offset: 1408)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!1114, !2985, !530, !1941, !1117, !17}
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !152, line: 59, flags: DIFlagFwdDecl)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2901, file: !79, line: 1939, baseType: !2988, size: 64, offset: 1472)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!1114, !530, !1941, !2985, !1117, !17}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2901, file: !79, line: 1940, baseType: !1803, size: 64, offset: 1536)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2901, file: !79, line: 1941, baseType: !2993, size: 64, offset: 1600)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!7, !530, !7, !2996, !1724}
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2901, file: !79, line: 1942, baseType: !2998, size: 64, offset: 1664)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!114, !530, !7, !570, !570}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2901, file: !79, line: 1944, baseType: !3002, size: 64, offset: 1728)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{null, !1917, !530}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2901, file: !79, line: 1948, baseType: !3006, size: 64, offset: 1792)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!1114, !530, !570, !530, !570, !1117, !17}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2901, file: !79, line: 1950, baseType: !3010, size: 64, offset: 1856)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!570, !530, !570, !530, !570, !570, !17}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2901, file: !79, line: 1953, baseType: !2962, size: 64, offset: 1920)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2901, file: !79, line: 1954, baseType: !3015, size: 64, offset: 1984)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{!7, !3018, !17}
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !79, line: 1911, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2901, file: !79, line: 1955, baseType: !3021, size: 64, offset: 2048)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!7, !3018, !2922, !17}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2896, file: !79, line: 723, baseType: !2380, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !962, file: !79, line: 725, baseType: !3026, size: 64, offset: 2816)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !79, line: 725, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !962, file: !79, line: 726, baseType: !1317, size: 1536, align: 64, offset: 2880)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !962, file: !79, line: 727, baseType: !225, size: 128, offset: 4416)
!3030 = !DIDerivedType(tag: DW_TAG_member, scope: !962, file: !79, line: 728, baseType: !3031, size: 64, offset: 4544)
!3031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !962, file: !79, line: 728, size: 64, elements: !3032)
!3032 = !{!3033, !3034, !3037, !3038}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3031, file: !79, line: 729, baseType: !2985, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3031, file: !79, line: 730, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !79, line: 730, flags: DIFlagFwdDecl)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3031, file: !79, line: 731, baseType: !820, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3031, file: !79, line: 732, baseType: !17, size: 32)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !962, file: !79, line: 735, baseType: !147, size: 32, offset: 4608)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !962, file: !79, line: 738, baseType: !147, size: 32, offset: 4640)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !962, file: !79, line: 739, baseType: !2734, size: 64, offset: 4672)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !962, file: !79, line: 750, baseType: !103, size: 64, offset: 4736)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !927, file: !928, line: 91, baseType: !3044, size: 256, offset: 448)
!3044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 256, elements: !2738)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !927, file: !928, line: 94, baseType: !3046, size: 64, offset: 704)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3047, line: 25, size: 64, elements: !3048)
!3047 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3048 = !{!3049}
!3049 = !DIDerivedType(tag: DW_TAG_member, scope: !3046, file: !3047, line: 26, baseType: !3050, size: 64)
!3050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3046, file: !3047, line: 26, size: 64, elements: !3051)
!3051 = !{!3052, !3053}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3050, file: !3047, line: 28, baseType: !221, size: 64, align: 64)
!3053 = !DIDerivedType(tag: DW_TAG_member, scope: !3050, file: !3047, line: 30, baseType: !3054, size: 64)
!3054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3050, file: !3047, line: 30, size: 64, elements: !3055)
!3055 = !{!3056, !3057}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3054, file: !3047, line: 31, baseType: !512, size: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3054, file: !3047, line: 32, baseType: !7, size: 32, offset: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !927, file: !928, line: 95, baseType: !2753, size: 64, offset: 768)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !927, file: !928, line: 96, baseType: !1166, size: 64, offset: 832)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !927, file: !928, line: 97, baseType: !119, size: 64, offset: 896)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !927, file: !928, line: 98, baseType: !103, size: 64, offset: 960)
!3062 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !928, line: 100, baseType: !3063, size: 128, offset: 1024)
!3063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !928, line: 100, size: 128, elements: !3064)
!3064 = !{!3065, !3066}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3063, file: !928, line: 101, baseType: !225, size: 128)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3063, file: !928, line: 102, baseType: !3067, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !927, file: !928, line: 104, baseType: !225, size: 128, offset: 1152)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !927, file: !928, line: 105, baseType: !225, size: 128, offset: 1280)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !927, file: !928, line: 113, baseType: !3071, size: 128, offset: 1408)
!3071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !928, line: 109, size: 128, elements: !3072)
!3072 = !{!3073, !3074, !3075}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3071, file: !928, line: 110, baseType: !612, size: 128)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3071, file: !928, line: 111, baseType: !937, size: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3071, file: !928, line: 112, baseType: !538, size: 128, align: 64)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !922, file: !923, line: 72, baseType: !1166, size: 64, offset: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !922, file: !923, line: 73, baseType: !7, size: 32, offset: 128)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !922, file: !923, line: 74, baseType: !1001, size: 64, offset: 192)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !917, file: !918, line: 10, baseType: !926, size: 64, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !531, file: !79, line: 1015, baseType: !961, size: 64, offset: 1344)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !531, file: !79, line: 1016, baseType: !2899, size: 64, offset: 1408)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !531, file: !79, line: 1018, baseType: !220, size: 64, offset: 1472)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !531, file: !79, line: 1020, baseType: !103, size: 64, offset: 1536)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !531, file: !79, line: 1023, baseType: !103, size: 64, offset: 1600)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !531, file: !79, line: 1027, baseType: !3086, size: 64, offset: 1664)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !531, file: !79, line: 1029, baseType: !1316, size: 64, offset: 1728)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !531, file: !79, line: 1030, baseType: !1813, size: 32, offset: 1792)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !531, file: !79, line: 1031, baseType: !1813, size: 32, offset: 1824)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !498, file: !50, line: 756, baseType: !119, size: 64, offset: 704)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !498, file: !50, line: 757, baseType: !119, size: 64, offset: 768)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !498, file: !50, line: 760, baseType: !119, size: 64, offset: 832)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !498, file: !50, line: 761, baseType: !119, size: 64, offset: 896)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !498, file: !50, line: 763, baseType: !119, size: 64, offset: 960)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !498, file: !50, line: 764, baseType: !3096, size: 64, offset: 1024)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1471, line: 299, baseType: !3098)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1471, line: 299, size: 64, elements: !3099)
!3099 = !{!3100}
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3098, file: !1471, line: 299, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1476, line: 18, baseType: !119)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !498, file: !50, line: 773, baseType: !108, size: 32, offset: 1088)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !498, file: !50, line: 785, baseType: !108, size: 32, offset: 1120)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !498, file: !50, line: 795, baseType: !3105, size: 64, offset: 1152)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !50, line: 726, size: 128, elements: !3107)
!3107 = !{!3108, !3109}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3106, file: !50, line: 727, baseType: !220, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3106, file: !50, line: 728, baseType: !7, size: 32, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !498, file: !50, line: 801, baseType: !119, size: 64, offset: 1216)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !498, file: !50, line: 804, baseType: !551, size: 64, offset: 1280)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !498, file: !50, line: 806, baseType: !7, size: 32, offset: 1344)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !498, file: !50, line: 808, baseType: !512, size: 32, offset: 1376)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !498, file: !50, line: 823, baseType: !747, size: 320, offset: 1408)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !498, file: !50, line: 825, baseType: !225, size: 128, offset: 1728)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !498, file: !50, line: 845, baseType: !7, size: 32, offset: 1856)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !498, file: !50, line: 849, baseType: !119, size: 64, offset: 1920)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !498, file: !50, line: 850, baseType: !119, size: 64, offset: 1984)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !498, file: !50, line: 852, baseType: !119, size: 64, offset: 2048)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !498, file: !50, line: 853, baseType: !119, size: 64, offset: 2112)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !498, file: !50, line: 854, baseType: !553, size: 64, offset: 2176)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !498, file: !50, line: 855, baseType: !119, size: 64, offset: 2240)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !498, file: !50, line: 856, baseType: !119, size: 64, offset: 2304)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !498, file: !50, line: 857, baseType: !119, size: 64, offset: 2368)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !498, file: !50, line: 858, baseType: !119, size: 64, offset: 2432)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !498, file: !50, line: 865, baseType: !375, size: 32, offset: 2496)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !498, file: !50, line: 867, baseType: !512, size: 32, offset: 2528)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !498, file: !50, line: 869, baseType: !119, size: 64, offset: 2560)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !498, file: !50, line: 869, baseType: !119, size: 64, offset: 2624)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !498, file: !50, line: 869, baseType: !119, size: 64, offset: 2688)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !498, file: !50, line: 869, baseType: !119, size: 64, offset: 2752)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !498, file: !50, line: 870, baseType: !119, size: 64, offset: 2816)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !498, file: !50, line: 870, baseType: !119, size: 64, offset: 2880)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !498, file: !50, line: 870, baseType: !119, size: 64, offset: 2944)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !498, file: !50, line: 871, baseType: !119, size: 64, offset: 3008)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !498, file: !50, line: 871, baseType: !119, size: 64, offset: 3072)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !498, file: !50, line: 871, baseType: !119, size: 64, offset: 3136)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !498, file: !50, line: 871, baseType: !119, size: 64, offset: 3200)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !498, file: !50, line: 873, baseType: !3140, size: 3328, offset: 3264)
!3140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 3328, elements: !3141)
!3141 = !{!3142}
!3142 = !DISubrange(count: 52)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !498, file: !50, line: 875, baseType: !3144, size: 1280, offset: 6592)
!3144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !868, size: 1280, elements: !617)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !498, file: !50, line: 877, baseType: !3146, size: 64, offset: 7872)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !50, line: 877, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !498, file: !50, line: 880, baseType: !3149, size: 1088, offset: 7936)
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3150, line: 72, baseType: !3151)
!3150 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3150, line: 23, size: 1088, elements: !3152)
!3152 = !{!3153, !3154, !3155, !3156, !3157, !3160, !3161, !3162, !3163, !3188, !3189, !3190}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3151, file: !3150, line: 28, baseType: !220, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3151, file: !3150, line: 38, baseType: !553, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3151, file: !3150, line: 40, baseType: !119, size: 64, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3151, file: !3150, line: 43, baseType: !747, size: 320, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3151, file: !3150, line: 44, baseType: !3158, size: 64, offset: 512)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3150, line: 44, flags: DIFlagFwdDecl)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3151, file: !3150, line: 48, baseType: !119, size: 64, offset: 576)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3151, file: !3150, line: 59, baseType: !558, size: 256, offset: 640)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3151, file: !3150, line: 60, baseType: !103, size: 64, offset: 896)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3151, file: !3150, line: 61, baseType: !3164, size: 64, offset: 960)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3166)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3167, line: 13, size: 1216, elements: !3168)
!3167 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3168 = !{!3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3166, file: !3167, line: 14, baseType: !103, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3166, file: !3167, line: 15, baseType: !119, size: 64, offset: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3166, file: !3167, line: 17, baseType: !119, size: 64, offset: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3166, file: !3167, line: 17, baseType: !119, size: 64, offset: 192)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3166, file: !3167, line: 18, baseType: !119, size: 64, offset: 256)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3166, file: !3167, line: 18, baseType: !119, size: 64, offset: 320)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3166, file: !3167, line: 19, baseType: !1852, size: 64, offset: 384)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3166, file: !3167, line: 21, baseType: !114, size: 64, offset: 448)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3166, file: !3167, line: 23, baseType: !114, size: 64, offset: 512)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3166, file: !3167, line: 24, baseType: !114, size: 64, offset: 576)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3166, file: !3167, line: 25, baseType: !114, size: 64, offset: 640)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3166, file: !3167, line: 26, baseType: !114, size: 64, offset: 704)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3166, file: !3167, line: 27, baseType: !114, size: 64, offset: 768)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3166, file: !3167, line: 28, baseType: !114, size: 64, offset: 832)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3166, file: !3167, line: 29, baseType: !114, size: 64, offset: 896)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3166, file: !3167, line: 30, baseType: !114, size: 64, offset: 960)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3166, file: !3167, line: 31, baseType: !114, size: 64, offset: 1024)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3166, file: !3167, line: 32, baseType: !114, size: 64, offset: 1088)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3166, file: !3167, line: 33, baseType: !114, size: 64, offset: 1152)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3151, file: !3150, line: 63, baseType: !108, size: 32, offset: 1024)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3151, file: !3150, line: 69, baseType: !189, size: 16, offset: 1056)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3151, file: !3150, line: 70, baseType: !2141, size: 16, offset: 1072)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !498, file: !50, line: 882, baseType: !119, size: 64, offset: 9024)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !498, file: !50, line: 885, baseType: !512, size: 32, offset: 9088)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !498, file: !50, line: 886, baseType: !3194, size: 64, offset: 9152)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !50, line: 732, flags: DIFlagFwdDecl)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !498, file: !50, line: 901, baseType: !665, size: 64, offset: 9216)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !498, file: !50, line: 904, baseType: !530, size: 64, offset: 9280)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !498, file: !50, line: 906, baseType: !3199, size: 64, offset: 9344)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !50, line: 906, flags: DIFlagFwdDecl)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !498, file: !50, line: 930, baseType: !108, size: 32, offset: 9408)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !498, file: !50, line: 933, baseType: !108, size: 32, offset: 9440)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !498, file: !50, line: 935, baseType: !3204, size: 64, offset: 9472)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !96, line: 103, size: 64, elements: !3205)
!3205 = !{!3206}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3204, file: !96, line: 104, baseType: !3207, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !96, line: 101, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !498, file: !50, line: 940, baseType: !551, size: 64, offset: 9536)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !498, file: !50, line: 942, baseType: !2247, size: 256, offset: 9600)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !495, file: !50, line: 986, baseType: !3212, offset: 10240)
!3212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, elements: !685)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !151, file: !152, line: 882, baseType: !494, size: 64, offset: 9792)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !151, file: !152, line: 884, baseType: !7, size: 32, offset: 9856)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !151, file: !152, line: 885, baseType: !7, size: 32, offset: 9888)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !151, file: !152, line: 886, baseType: !7, size: 32, offset: 9920)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !151, file: !152, line: 888, baseType: !7, size: 32, offset: 9952)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !151, file: !152, line: 890, baseType: !119, size: 64, offset: 9984)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !151, file: !152, line: 893, baseType: !17, size: 32, offset: 10048)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !151, file: !152, line: 896, baseType: !17, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !151, file: !152, line: 897, baseType: !17, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !151, file: !152, line: 898, baseType: !17, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !151, file: !152, line: 899, baseType: !17, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !151, file: !152, line: 919, baseType: !17, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !151, file: !152, line: 922, baseType: !17, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !151, file: !152, line: 923, baseType: !17, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !151, file: !152, line: 925, baseType: !17, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !151, file: !152, line: 939, baseType: !17, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !151, file: !152, line: 941, baseType: !17, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !151, file: !152, line: 944, baseType: !17, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !151, file: !152, line: 956, baseType: !17, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !151, file: !152, line: 962, baseType: !17, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !151, file: !152, line: 966, baseType: !17, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !151, file: !152, line: 969, baseType: !119, size: 64, offset: 10176)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !151, file: !152, line: 971, baseType: !3236, size: 448, offset: 10240)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !90, line: 25, size: 448, elements: !3237)
!3237 = !{!3238, !3239, !3244}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3236, file: !90, line: 26, baseType: !119, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3236, file: !90, line: 27, baseType: !3240, size: 64, offset: 64)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!114, !3243}
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3244 = !DIDerivedType(tag: DW_TAG_member, scope: !3236, file: !90, line: 28, baseType: !3245, size: 320, offset: 128)
!3245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3236, file: !90, line: 28, size: 320, elements: !3246)
!3246 = !{!3247, !3257, !3282}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3245, file: !90, line: 37, baseType: !3248, size: 320)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !90, line: 30, size: 320, elements: !3249)
!3249 = !{!3250, !3252, !3253, !3254, !3255, !3256}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3248, file: !90, line: 31, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3248, file: !90, line: 32, baseType: !145, size: 32, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3248, file: !90, line: 33, baseType: !145, size: 32, offset: 96)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3248, file: !90, line: 34, baseType: !145, size: 32, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3248, file: !90, line: 35, baseType: !220, size: 64, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3248, file: !90, line: 36, baseType: !3251, size: 64, offset: 256)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3245, file: !90, line: 47, baseType: !3258, size: 192)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !90, line: 39, size: 192, elements: !3259)
!3259 = !{!3260, !3261, !3262, !3281}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3258, file: !90, line: 40, baseType: !366, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3258, file: !90, line: 41, baseType: !89, size: 32, offset: 32)
!3262 = !DIDerivedType(tag: DW_TAG_member, scope: !3258, file: !90, line: 42, baseType: !3263, size: 64, offset: 64)
!3263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3258, file: !90, line: 42, size: 64, elements: !3264)
!3264 = !{!3265, !3273}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3263, file: !90, line: 43, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3268, line: 7, size: 128, elements: !3269)
!3268 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3269 = !{!3270, !3272}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3267, file: !3268, line: 8, baseType: !3271, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !368, line: 93, baseType: !238)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3267, file: !3268, line: 9, baseType: !238, size: 64, offset: 64)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3263, file: !90, line: 44, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3276, line: 7, size: 64, elements: !3277)
!3276 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3277 = !{!3278, !3280}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3275, file: !3276, line: 8, baseType: !3279, size: 32)
!3279 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3276, line: 5, baseType: !739)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3275, file: !3276, line: 9, baseType: !739, size: 32, offset: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3258, file: !90, line: 46, baseType: !220, size: 64, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3245, file: !90, line: 55, baseType: !3283, size: 256)
!3283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3245, file: !90, line: 49, size: 256, elements: !3284)
!3284 = !{!3285, !3288, !3289, !3290, !3291}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3283, file: !90, line: 50, baseType: !3286, size: 64)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !90, line: 14, flags: DIFlagFwdDecl)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3283, file: !90, line: 51, baseType: !7, size: 32, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3283, file: !90, line: 52, baseType: !7, size: 32, offset: 96)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3283, file: !90, line: 53, baseType: !119, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3283, file: !90, line: 54, baseType: !119, size: 64, offset: 192)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !151, file: !152, line: 973, baseType: !3293, size: 32, offset: 10688)
!3293 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !109, line: 27, baseType: !3294)
!3294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !368, line: 28, baseType: !7)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !151, file: !152, line: 974, baseType: !3293, size: 32, offset: 10720)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !151, file: !152, line: 978, baseType: !119, size: 64, offset: 10752)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !151, file: !152, line: 987, baseType: !150, size: 64, offset: 10816)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !151, file: !152, line: 990, baseType: !150, size: 64, offset: 10880)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !151, file: !152, line: 995, baseType: !225, size: 128, offset: 10944)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !151, file: !152, line: 996, baseType: !225, size: 128, offset: 11072)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !151, file: !152, line: 997, baseType: !150, size: 64, offset: 11200)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !151, file: !152, line: 1005, baseType: !225, size: 128, offset: 11264)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !151, file: !152, line: 1006, baseType: !225, size: 128, offset: 11392)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !151, file: !152, line: 1009, baseType: !600, size: 64, offset: 11520)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !151, file: !152, line: 1010, baseType: !3306, size: 512, offset: 11584)
!3306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 512, elements: !617)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !151, file: !152, line: 1011, baseType: !225, size: 128, offset: 12096)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !151, file: !152, line: 1012, baseType: !225, size: 128, offset: 12224)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !151, file: !152, line: 1014, baseType: !1998, size: 64, offset: 12352)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !151, file: !152, line: 1017, baseType: !124, size: 64, offset: 12416)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !151, file: !152, line: 1020, baseType: !124, size: 64, offset: 12480)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !151, file: !152, line: 1023, baseType: !103, size: 64, offset: 12544)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !151, file: !152, line: 1025, baseType: !220, size: 64, offset: 12608)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !151, file: !152, line: 1026, baseType: !220, size: 64, offset: 12672)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !151, file: !152, line: 1031, baseType: !220, size: 64, offset: 12736)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !151, file: !152, line: 1032, baseType: !3317, size: 192, offset: 12800)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !152, line: 324, size: 192, elements: !3318)
!3318 = !{!3319, !3320, !3321}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3317, file: !152, line: 326, baseType: !220, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3317, file: !152, line: 327, baseType: !220, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3317, file: !152, line: 328, baseType: !318, size: 32, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !151, file: !152, line: 1041, baseType: !119, size: 64, offset: 12992)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !151, file: !152, line: 1042, baseType: !119, size: 64, offset: 13056)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !151, file: !152, line: 1045, baseType: !220, size: 64, offset: 13120)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !151, file: !152, line: 1048, baseType: !220, size: 64, offset: 13184)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !151, file: !152, line: 1051, baseType: !119, size: 64, offset: 13248)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !151, file: !152, line: 1052, baseType: !119, size: 64, offset: 13312)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !151, file: !152, line: 1055, baseType: !3329, size: 640, offset: 13376)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3330, line: 132, size: 640, elements: !3331)
!3330 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3331 = !{!3332, !3338, !3339}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3329, file: !3330, line: 133, baseType: !3333, size: 576)
!3333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3334, size: 576, elements: !596)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3330, line: 117, size: 192, elements: !3335)
!3335 = !{!3336, !3337}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3334, file: !3330, line: 118, baseType: !220, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3334, file: !3330, line: 119, baseType: !381, size: 128, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3329, file: !3330, line: 134, baseType: !17, size: 32, offset: 576)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3329, file: !3330, line: 135, baseType: !17, size: 32, offset: 608)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !151, file: !152, line: 1058, baseType: !3341, size: 448, offset: 14016)
!3341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3330, line: 144, size: 448, elements: !3342)
!3342 = !{!3343, !3344, !3345}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3341, file: !3330, line: 145, baseType: !538, size: 128, align: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3341, file: !3330, line: 146, baseType: !558, size: 256, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3341, file: !3330, line: 147, baseType: !17, size: 32, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !151, file: !152, line: 1064, baseType: !698, size: 64, offset: 14464)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !151, file: !152, line: 1067, baseType: !698, size: 64, offset: 14528)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !151, file: !152, line: 1070, baseType: !698, size: 64, offset: 14592)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !151, file: !152, line: 1074, baseType: !731, size: 64, offset: 14656)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !151, file: !152, line: 1084, baseType: !3351, size: 128, offset: 14720)
!3351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 128, elements: !2747)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !151, file: !152, line: 1086, baseType: !3353, size: 64, offset: 14848)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !152, line: 55, flags: DIFlagFwdDecl)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !151, file: !152, line: 1089, baseType: !3356, size: 64, offset: 14912)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3357, line: 12, size: 64, elements: !3358)
!3357 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3358 = !{!3359}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3356, file: !3357, line: 13, baseType: !3360, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3357, line: 8, flags: DIFlagFwdDecl)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !151, file: !152, line: 1090, baseType: !3363, size: 128, offset: 14976)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3364, line: 13, size: 128, elements: !3365)
!3364 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3365 = !{!3366}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3363, file: !3364, line: 14, baseType: !225, size: 128)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !151, file: !152, line: 1097, baseType: !3368, size: 64, offset: 15104)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !152, line: 50, flags: DIFlagFwdDecl)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !151, file: !152, line: 1100, baseType: !3371, size: 64, offset: 15168)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !152, line: 1100, flags: DIFlagFwdDecl)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !151, file: !152, line: 1103, baseType: !3374, size: 64, offset: 15232)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !152, line: 53, flags: DIFlagFwdDecl)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !151, file: !152, line: 1107, baseType: !3377, size: 64, offset: 15296)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3379, line: 31, size: 576, elements: !3380)
!3379 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3380 = !{!3381, !3382, !3385, !3388, !3391, !3392, !3395, !3398, !3399}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3378, file: !3379, line: 32, baseType: !165, size: 32)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3378, file: !3379, line: 33, baseType: !3383, size: 64, offset: 64)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3379, line: 9, flags: DIFlagFwdDecl)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3378, file: !3379, line: 34, baseType: !3386, size: 64, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3379, line: 10, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3378, file: !3379, line: 35, baseType: !3389, size: 64, offset: 192)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3379, line: 8, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3378, file: !3379, line: 36, baseType: !634, size: 64, offset: 256)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3378, file: !3379, line: 37, baseType: !3393, size: 64, offset: 320)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !733, line: 34, flags: DIFlagFwdDecl)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3378, file: !3379, line: 38, baseType: !3396, size: 64, offset: 384)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3379, line: 38, flags: DIFlagFwdDecl)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3378, file: !3379, line: 39, baseType: !3396, size: 64, offset: 448)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3378, file: !3379, line: 40, baseType: !3400, size: 64, offset: 512)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3379, line: 12, flags: DIFlagFwdDecl)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !151, file: !152, line: 1110, baseType: !3403, size: 64, offset: 15360)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3405, line: 93, size: 8768, elements: !3406)
!3405 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3406 = !{!3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3454, !3463, !3464, !3466, !3467, !3468, !3471, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3509, !3510, !3517, !3527, !3530, !3531, !3534, !3535, !3536, !3537, !3538, !3539}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3404, file: !3405, line: 94, baseType: !165, size: 32)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3404, file: !3405, line: 95, baseType: !108, size: 32, offset: 32)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3404, file: !3405, line: 96, baseType: !7, size: 32, offset: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3404, file: !3405, line: 97, baseType: !7, size: 32, offset: 96)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3404, file: !3405, line: 98, baseType: !225, size: 128, offset: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3404, file: !3405, line: 100, baseType: !621, size: 192, offset: 256)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3404, file: !3405, line: 103, baseType: !150, size: 64, offset: 448)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3404, file: !3405, line: 106, baseType: !3415, size: 192, offset: 512)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !671, line: 32, size: 192, elements: !3416)
!3416 = !{!3417, !3418}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3415, file: !671, line: 33, baseType: !225, size: 128)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3415, file: !671, line: 34, baseType: !3419, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3420, line: 25, baseType: !3421)
!3420 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3420, line: 23, size: 64, elements: !3422)
!3422 = !{!3423}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3421, file: !3420, line: 24, baseType: !141, size: 64)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3404, file: !3405, line: 109, baseType: !608, size: 64, offset: 704)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3404, file: !3405, line: 112, baseType: !7, size: 32, offset: 768)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3404, file: !3405, line: 114, baseType: !7, size: 32, offset: 800)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3404, file: !3405, line: 115, baseType: !150, size: 64, offset: 832)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3404, file: !3405, line: 118, baseType: !7, size: 32, offset: 896)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3404, file: !3405, line: 119, baseType: !17, size: 32, offset: 928)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3404, file: !3405, line: 121, baseType: !3431, size: 64, offset: 960)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3405, line: 80, size: 448, elements: !3433)
!3433 = !{!3434, !3435, !3441}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3432, file: !3405, line: 81, baseType: !108, size: 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3432, file: !3405, line: 82, baseType: !3436, size: 128, offset: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3405, line: 75, size: 128, elements: !3437)
!3437 = !{!3438, !3439}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3436, file: !3405, line: 76, baseType: !150, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3436, file: !3405, line: 77, baseType: !3440, size: 64, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3432, file: !3405, line: 83, baseType: !1421, size: 256, offset: 192)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3404, file: !3405, line: 132, baseType: !17, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3404, file: !3405, line: 133, baseType: !17, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3404, file: !3405, line: 138, baseType: !17, size: 32, offset: 1056)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3404, file: !3405, line: 139, baseType: !225, size: 128, offset: 1088)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3404, file: !3405, line: 142, baseType: !293, size: 512, offset: 1216)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3404, file: !3405, line: 143, baseType: !301, size: 64, offset: 1728)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3404, file: !3405, line: 150, baseType: !3449, size: 256, offset: 1792)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3450, size: 256, elements: !2125)
!3450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3405, line: 38, size: 128, elements: !3451)
!3451 = !{!3452, !3453}
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3450, file: !3405, line: 39, baseType: !220, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3450, file: !3405, line: 40, baseType: !220, size: 64, offset: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3404, file: !3405, line: 156, baseType: !3455, size: 192, offset: 2048)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3405, line: 66, size: 192, elements: !3456)
!3456 = !{!3457}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3455, file: !3405, line: 67, baseType: !3458, size: 192)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3405, line: 47, size: 192, elements: !3459)
!3459 = !{!3460, !3461, !3462}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3458, file: !3405, line: 48, baseType: !553, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3458, file: !3405, line: 49, baseType: !553, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3458, file: !3405, line: 50, baseType: !553, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3404, file: !3405, line: 160, baseType: !3329, size: 640, offset: 2240)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3404, file: !3405, line: 163, baseType: !3465, size: 256, offset: 2880)
!3465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !600, size: 256, elements: !617)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3404, file: !3405, line: 169, baseType: !600, size: 64, offset: 3136)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3404, file: !3405, line: 172, baseType: !7, size: 32, offset: 3200)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3404, file: !3405, line: 174, baseType: !3469, size: 64, offset: 3264)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3405, line: 174, flags: DIFlagFwdDecl)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3404, file: !3405, line: 185, baseType: !3472, size: 64, offset: 3328)
!3472 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !371, line: 860, baseType: !3473)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 853, size: 64, elements: !3474)
!3474 = !{!3475, !3476}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3473, file: !371, line: 858, baseType: !932, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3473, file: !371, line: 859, baseType: !512, size: 32, offset: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3404, file: !3405, line: 186, baseType: !220, size: 64, offset: 3392)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3404, file: !3405, line: 186, baseType: !220, size: 64, offset: 3456)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3404, file: !3405, line: 186, baseType: !220, size: 64, offset: 3520)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3404, file: !3405, line: 186, baseType: !220, size: 64, offset: 3584)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3404, file: !3405, line: 187, baseType: !220, size: 64, offset: 3648)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3404, file: !3405, line: 188, baseType: !220, size: 64, offset: 3712)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3404, file: !3405, line: 189, baseType: !3317, size: 192, offset: 3776)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3404, file: !3405, line: 190, baseType: !119, size: 64, offset: 3968)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3404, file: !3405, line: 190, baseType: !119, size: 64, offset: 4032)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3404, file: !3405, line: 190, baseType: !119, size: 64, offset: 4096)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3404, file: !3405, line: 190, baseType: !119, size: 64, offset: 4160)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3404, file: !3405, line: 191, baseType: !119, size: 64, offset: 4224)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3404, file: !3405, line: 191, baseType: !119, size: 64, offset: 4288)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3404, file: !3405, line: 191, baseType: !119, size: 64, offset: 4352)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3404, file: !3405, line: 191, baseType: !119, size: 64, offset: 4416)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3404, file: !3405, line: 192, baseType: !119, size: 64, offset: 4480)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3404, file: !3405, line: 192, baseType: !119, size: 64, offset: 4544)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3404, file: !3405, line: 192, baseType: !119, size: 64, offset: 4608)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3404, file: !3405, line: 192, baseType: !119, size: 64, offset: 4672)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3404, file: !3405, line: 193, baseType: !119, size: 64, offset: 4736)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3404, file: !3405, line: 193, baseType: !119, size: 64, offset: 4800)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3404, file: !3405, line: 194, baseType: !3499, size: 448, offset: 4864)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3500, line: 12, size: 448, elements: !3501)
!3500 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3501 = !{!3502, !3503, !3504, !3505, !3506, !3507, !3508}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3499, file: !3500, line: 15, baseType: !220, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3499, file: !3500, line: 17, baseType: !220, size: 64, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3499, file: !3500, line: 19, baseType: !220, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3499, file: !3500, line: 21, baseType: !220, size: 64, offset: 192)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3499, file: !3500, line: 29, baseType: !220, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3499, file: !3500, line: 35, baseType: !220, size: 64, offset: 320)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3499, file: !3500, line: 44, baseType: !220, size: 64, offset: 384)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3404, file: !3405, line: 202, baseType: !222, size: 64, offset: 5312)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3404, file: !3405, line: 213, baseType: !3511, size: 2048, offset: 5376)
!3511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3512, size: 2048, elements: !2747)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3513, line: 43, size: 128, elements: !3514)
!3513 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3514 = !{!3515, !3516}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3512, file: !3513, line: 44, baseType: !1119, size: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3512, file: !3513, line: 45, baseType: !1119, size: 64, offset: 64)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3404, file: !3405, line: 216, baseType: !3518, size: 448, offset: 7424)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3405, line: 30, size: 448, elements: !3519)
!3519 = !{!3520, !3521, !3522, !3523, !3524, !3525, !3526}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3518, file: !3405, line: 31, baseType: !7, size: 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3518, file: !3405, line: 32, baseType: !114, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3518, file: !3405, line: 33, baseType: !119, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3518, file: !3405, line: 34, baseType: !220, size: 64, offset: 192)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3518, file: !3405, line: 34, baseType: !220, size: 64, offset: 256)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3518, file: !3405, line: 35, baseType: !119, size: 64, offset: 320)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3518, file: !3405, line: 35, baseType: !119, size: 64, offset: 384)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3404, file: !3405, line: 219, baseType: !3528, size: 64, offset: 7872)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3405, line: 219, flags: DIFlagFwdDecl)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3404, file: !3405, line: 222, baseType: !17, size: 32, offset: 7936)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3404, file: !3405, line: 223, baseType: !3532, size: 64, offset: 8000)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3405, line: 223, flags: DIFlagFwdDecl)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3404, file: !3405, line: 230, baseType: !807, size: 8, offset: 8064)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3404, file: !3405, line: 231, baseType: !775, size: 16, offset: 8080)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3404, file: !3405, line: 232, baseType: !775, size: 16, offset: 8096)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3404, file: !3405, line: 234, baseType: !494, size: 64, offset: 8128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3404, file: !3405, line: 237, baseType: !558, size: 256, offset: 8192)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3404, file: !3405, line: 243, baseType: !747, size: 320, offset: 8448)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !151, file: !152, line: 1111, baseType: !3541, size: 64, offset: 15424)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3405, line: 20, size: 16640, elements: !3543)
!3543 = !{!3544, !3545, !3546, !3547}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3542, file: !3405, line: 21, baseType: !512, size: 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3542, file: !3405, line: 22, baseType: !165, size: 32, offset: 32)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3542, file: !3405, line: 23, baseType: !621, size: 192, offset: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3542, file: !3405, line: 24, baseType: !3548, size: 16384, offset: 256)
!3548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3549, size: 16384, elements: !1255)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !671, line: 51, size: 256, elements: !3550)
!3550 = !{!3551}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3549, file: !671, line: 52, baseType: !3552, size: 256)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !671, line: 37, size: 256, elements: !3553)
!3553 = !{!3554, !3561, !3562, !3566}
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3552, file: !671, line: 39, baseType: !3555, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3556, line: 83, baseType: !3557)
!3556 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3556, line: 82, baseType: !3559)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{null, !7}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3552, file: !671, line: 40, baseType: !119, size: 64, offset: 64)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3552, file: !671, line: 46, baseType: !3563, size: 64, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3556, line: 86, baseType: !3564)
!3564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3565, size: 64)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3556, line: 85, baseType: !2355)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3552, file: !671, line: 48, baseType: !3419, size: 64, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !151, file: !152, line: 1112, baseType: !3419, size: 64, offset: 15488)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !151, file: !152, line: 1113, baseType: !3419, size: 64, offset: 15552)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !151, file: !152, line: 1115, baseType: !3419, size: 64, offset: 15616)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !151, file: !152, line: 1116, baseType: !3415, size: 192, offset: 15680)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !151, file: !152, line: 1117, baseType: !119, size: 64, offset: 15872)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !151, file: !152, line: 1118, baseType: !1117, size: 64, offset: 15936)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !151, file: !152, line: 1119, baseType: !17, size: 32, offset: 16000)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !151, file: !152, line: 1121, baseType: !541, size: 64, offset: 16064)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !151, file: !152, line: 1125, baseType: !3576, size: 64, offset: 16128)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !152, line: 43, flags: DIFlagFwdDecl)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !151, file: !152, line: 1127, baseType: !689, size: 32, offset: 16192)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !151, file: !152, line: 1128, baseType: !17, size: 32, offset: 16224)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !151, file: !152, line: 1130, baseType: !3581, size: 128, offset: 16256)
!3581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3582, line: 37, size: 128, elements: !3583)
!3582 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3583 = !{!3584, !3585, !3586}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3581, file: !3582, line: 38, baseType: !7, size: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3581, file: !3582, line: 39, baseType: !108, size: 32, offset: 32)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3581, file: !3582, line: 40, baseType: !3587, size: 64, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3582, line: 24, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !151, file: !152, line: 1131, baseType: !3590, size: 256, offset: 16384)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3591, line: 12, size: 256, elements: !3592)
!3591 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3592 = !{!3593, !3594, !3595, !3596}
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3590, file: !3591, line: 13, baseType: !820, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3590, file: !3591, line: 14, baseType: !119, size: 64, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3590, file: !3591, line: 15, baseType: !119, size: 64, offset: 128)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3590, file: !3591, line: 16, baseType: !807, size: 8, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !151, file: !152, line: 1134, baseType: !220, size: 64, offset: 16640)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !151, file: !152, line: 1135, baseType: !220, size: 64, offset: 16704)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !151, file: !152, line: 1138, baseType: !512, size: 32, offset: 16768)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !151, file: !152, line: 1141, baseType: !318, size: 32, offset: 16800)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !151, file: !152, line: 1143, baseType: !3602, size: 64, offset: 16832)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !152, line: 735, size: 64, elements: !3603)
!3603 = !{!3604}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3602, file: !152, line: 736, baseType: !3605, size: 64)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !151, file: !152, line: 1147, baseType: !384, size: 128, offset: 16896)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !151, file: !152, line: 1149, baseType: !150, size: 64, offset: 17024)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !151, file: !152, line: 1151, baseType: !3609, size: 64, offset: 17088)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !152, line: 1151, flags: DIFlagFwdDecl)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !151, file: !152, line: 1188, baseType: !103, size: 64, offset: 17152)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !151, file: !152, line: 1191, baseType: !3613, size: 64, offset: 17216)
!3613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3614, size: 64)
!3614 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !152, line: 44, flags: DIFlagFwdDecl)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !151, file: !152, line: 1194, baseType: !3616, size: 64, offset: 17280)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !152, line: 45, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !151, file: !152, line: 1197, baseType: !3619, size: 64, offset: 17344)
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !152, line: 61, flags: DIFlagFwdDecl)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !151, file: !152, line: 1199, baseType: !3622, size: 64, offset: 17408)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3624, line: 99, size: 128, elements: !3625)
!3624 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3625 = !{!3626, !3627, !3628}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3623, file: !3624, line: 100, baseType: !551, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3623, file: !3624, line: 101, baseType: !108, size: 32, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3623, file: !3624, line: 103, baseType: !191, size: 16, offset: 96)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !151, file: !152, line: 1202, baseType: !3630, size: 64, offset: 17472)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !152, line: 48, flags: DIFlagFwdDecl)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !151, file: !152, line: 1205, baseType: !119, size: 64, offset: 17536)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !151, file: !152, line: 1206, baseType: !3634, size: 64, offset: 17600)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !671, line: 14, baseType: !3636)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !671, line: 12, size: 384, elements: !3637)
!3637 = !{!3638}
!3638 = !DIDerivedType(tag: DW_TAG_member, scope: !3636, file: !671, line: 13, baseType: !3639, size: 384)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3636, file: !671, line: 13, size: 384, elements: !3640)
!3640 = !{!3641, !3642, !3643, !3644}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3639, file: !671, line: 13, baseType: !7, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3639, file: !671, line: 13, baseType: !7, size: 32, offset: 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3639, file: !671, line: 13, baseType: !7, size: 32, offset: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3639, file: !671, line: 13, baseType: !3645, size: 256, offset: 128)
!3645 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3646, line: 37, size: 256, elements: !3647)
!3646 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3647 = !{!3648, !3653, !3666, !3672, !3681, !3708, !3713}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3645, file: !3646, line: 42, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3645, file: !3646, line: 39, size: 64, elements: !3650)
!3650 = !{!3651, !3652}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3649, file: !3646, line: 40, baseType: !3294, size: 32)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3649, file: !3646, line: 41, baseType: !694, size: 32, offset: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3645, file: !3646, line: 50, baseType: !3654, size: 192)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3645, file: !3646, line: 45, size: 192, elements: !3655)
!3655 = !{!3656, !3658, !3659, !3665}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3654, file: !3646, line: 46, baseType: !3657, size: 32)
!3657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !368, line: 95, baseType: !7)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3654, file: !3646, line: 47, baseType: !7, size: 32, offset: 32)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3654, file: !3646, line: 48, baseType: !3660, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3646, line: 11, baseType: !3661)
!3661 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3646, line: 8, size: 64, elements: !3662)
!3662 = !{!3663, !3664}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3661, file: !3646, line: 9, baseType: !7, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3661, file: !3646, line: 10, baseType: !103, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3654, file: !3646, line: 49, baseType: !7, size: 32, offset: 128)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3645, file: !3646, line: 57, baseType: !3667, size: 128)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3645, file: !3646, line: 53, size: 128, elements: !3668)
!3668 = !{!3669, !3670, !3671}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3667, file: !3646, line: 54, baseType: !3294, size: 32)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3667, file: !3646, line: 55, baseType: !694, size: 32, offset: 32)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3667, file: !3646, line: 56, baseType: !3660, size: 64, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3645, file: !3646, line: 66, baseType: !3673, size: 256)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3645, file: !3646, line: 60, size: 256, elements: !3674)
!3674 = !{!3675, !3676, !3677, !3678, !3680}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3673, file: !3646, line: 61, baseType: !3294, size: 32)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3673, file: !3646, line: 62, baseType: !694, size: 32, offset: 32)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3673, file: !3646, line: 63, baseType: !7, size: 32, offset: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3673, file: !3646, line: 64, baseType: !3679, size: 64, offset: 128)
!3679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !368, line: 94, baseType: !1116)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3673, file: !3646, line: 65, baseType: !3679, size: 64, offset: 192)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3645, file: !3646, line: 105, baseType: !3682, size: 256)
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3645, file: !3646, line: 69, size: 256, elements: !3683)
!3683 = !{!3684, !3685}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3682, file: !3646, line: 70, baseType: !103, size: 64)
!3685 = !DIDerivedType(tag: DW_TAG_member, scope: !3682, file: !3646, line: 79, baseType: !3686, size: 192, offset: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3682, file: !3646, line: 79, size: 192, elements: !3687)
!3687 = !{!3688, !3689, !3690, !3697, !3702}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3686, file: !3646, line: 81, baseType: !7, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3686, file: !3646, line: 86, baseType: !775, size: 16)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3686, file: !3646, line: 92, baseType: !3691, size: 192)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3686, file: !3646, line: 88, size: 192, elements: !3692)
!3692 = !{!3693, !3695, !3696}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3691, file: !3646, line: 89, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 64, elements: !362)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3691, file: !3646, line: 90, baseType: !103, size: 64, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3691, file: !3646, line: 91, baseType: !103, size: 64, offset: 128)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3686, file: !3646, line: 97, baseType: !3698, size: 96)
!3698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3686, file: !3646, line: 94, size: 96, elements: !3699)
!3699 = !{!3700, !3701}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3698, file: !3646, line: 95, baseType: !3694, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3698, file: !3646, line: 96, baseType: !147, size: 32, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3686, file: !3646, line: 103, baseType: !3703, size: 128)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3686, file: !3646, line: 99, size: 128, elements: !3704)
!3704 = !{!3705, !3706, !3707}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3703, file: !3646, line: 100, baseType: !119, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3703, file: !3646, line: 101, baseType: !147, size: 32, offset: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3703, file: !3646, line: 102, baseType: !147, size: 32, offset: 96)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3645, file: !3646, line: 111, baseType: !3709, size: 128)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3645, file: !3646, line: 108, size: 128, elements: !3710)
!3710 = !{!3711, !3712}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3709, file: !3646, line: 109, baseType: !114, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3709, file: !3646, line: 110, baseType: !7, size: 32, offset: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3645, file: !3646, line: 118, baseType: !3714, size: 128)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3645, file: !3646, line: 114, size: 128, elements: !3715)
!3715 = !{!3716, !3717, !3718}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3714, file: !3646, line: 115, baseType: !103, size: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3714, file: !3646, line: 116, baseType: !7, size: 32, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3714, file: !3646, line: 117, baseType: !17, size: 32, offset: 96)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !151, file: !152, line: 1208, baseType: !3499, size: 448, offset: 17664)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !151, file: !152, line: 1215, baseType: !220, size: 64, offset: 18112)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !151, file: !152, line: 1217, baseType: !220, size: 64, offset: 18176)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !151, file: !152, line: 1219, baseType: !220, size: 64, offset: 18240)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !151, file: !152, line: 1223, baseType: !3724, size: 64, offset: 18304)
!3724 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3725, line: 99, baseType: !3726)
!3725 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3725, line: 99, size: 64, elements: !3727)
!3727 = !{!3728}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3726, file: !3725, line: 99, baseType: !141, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !151, file: !152, line: 1225, baseType: !932, size: 32, offset: 18368)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !151, file: !152, line: 1226, baseType: !7, size: 32, offset: 18400)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !151, file: !152, line: 1227, baseType: !7, size: 32, offset: 18432)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !151, file: !152, line: 1231, baseType: !3733, size: 64, offset: 18496)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !152, line: 1231, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !151, file: !152, line: 1233, baseType: !225, size: 128, offset: 18560)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !151, file: !152, line: 1240, baseType: !3737, size: 64, offset: 18688)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !152, line: 62, flags: DIFlagFwdDecl)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !151, file: !152, line: 1242, baseType: !3740, size: 64, offset: 18752)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !152, line: 1242, flags: DIFlagFwdDecl)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !151, file: !152, line: 1244, baseType: !225, size: 128, offset: 18816)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !151, file: !152, line: 1245, baseType: !3744, size: 64, offset: 18944)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !152, line: 51, flags: DIFlagFwdDecl)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !151, file: !152, line: 1246, baseType: !558, size: 256, offset: 19008)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !151, file: !152, line: 1247, baseType: !17, size: 32, offset: 19264)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !151, file: !152, line: 1250, baseType: !3749, size: 64, offset: 19328)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !152, line: 57, flags: DIFlagFwdDecl)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !151, file: !152, line: 1251, baseType: !558, size: 256, offset: 19392)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !151, file: !152, line: 1252, baseType: !225, size: 128, offset: 19648)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !151, file: !152, line: 1259, baseType: !1549, size: 64, offset: 19776)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !151, file: !152, line: 1260, baseType: !775, size: 16, offset: 19840)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !151, file: !152, line: 1261, baseType: !775, size: 16, offset: 19856)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !151, file: !152, line: 1314, baseType: !3757, size: 64, offset: 19904)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3759, line: 62, size: 256, align: 256, elements: !3760)
!3759 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3760 = !{!3761, !3762, !3763, !3764, !3765, !3766, !3767}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3758, file: !3759, line: 75, baseType: !147, size: 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3758, file: !3759, line: 90, baseType: !147, size: 32, offset: 32)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3758, file: !3759, line: 112, baseType: !221, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3758, file: !3759, line: 132, baseType: !147, size: 32, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3758, file: !3759, line: 140, baseType: !147, size: 32, offset: 160)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3758, file: !3759, line: 149, baseType: !147, size: 32, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3758, file: !3759, line: 154, baseType: !3768, offset: 224)
!3768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, elements: !685)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !151, file: !152, line: 1315, baseType: !145, size: 32, offset: 19968)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !151, file: !152, line: 1316, baseType: !145, size: 32, offset: 20000)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !151, file: !152, line: 1321, baseType: !119, size: 64, offset: 20032)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !151, file: !152, line: 1325, baseType: !7, size: 32, offset: 20096)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !151, file: !152, line: 1326, baseType: !7, size: 32, offset: 20128)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !151, file: !152, line: 1327, baseType: !7, size: 32, offset: 20160)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !151, file: !152, line: 1328, baseType: !7, size: 32, offset: 20192)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !151, file: !152, line: 1329, baseType: !538, size: 128, align: 64, offset: 20224)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !151, file: !152, line: 1332, baseType: !3778, size: 128, offset: 20352)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3779, line: 51, size: 128, elements: !3780)
!3779 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3780 = !{!3781, !3786, !3787}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3778, file: !3779, line: 60, baseType: !3782, size: 64)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3783, line: 7, size: 64, elements: !3784)
!3783 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3784 = !{!3785}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3782, file: !3783, line: 12, baseType: !137, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3778, file: !3779, line: 63, baseType: !807, size: 8, offset: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3778, file: !3779, line: 70, baseType: !807, size: 8, offset: 72)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !151, file: !152, line: 1335, baseType: !2985, size: 64, offset: 20480)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !151, file: !152, line: 1337, baseType: !3790, size: 128, offset: 20544)
!3790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3779, line: 39, size: 128, elements: !3791)
!3791 = !{!3792, !3793, !3794}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3790, file: !3779, line: 40, baseType: !1336, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3790, file: !3779, line: 42, baseType: !147, size: 32, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3790, file: !3779, line: 43, baseType: !147, size: 32, offset: 96)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !151, file: !152, line: 1340, baseType: !3796, size: 64, offset: 20672)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !152, line: 69, flags: DIFlagFwdDecl)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !151, file: !152, line: 1351, baseType: !7, size: 32, offset: 20736)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !151, file: !152, line: 1352, baseType: !7, size: 32, offset: 20768)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !151, file: !152, line: 1354, baseType: !119, size: 64, offset: 20800)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !151, file: !152, line: 1364, baseType: !220, size: 64, offset: 20864)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !151, file: !152, line: 1365, baseType: !220, size: 64, offset: 20928)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !151, file: !152, line: 1412, baseType: !119, size: 64, offset: 20992)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !151, file: !152, line: 1453, baseType: !3805, size: 64, offset: 21056)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !152, line: 1453, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !151, file: !152, line: 1457, baseType: !3808, size: 64, offset: 21120)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !96, line: 61, size: 576, elements: !3810)
!3810 = !{!3811, !3812, !3831, !3834, !3835, !3868, !3878}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3809, file: !96, line: 62, baseType: !95, size: 32)
!3812 = !DIDerivedType(tag: DW_TAG_member, scope: !3809, file: !96, line: 64, baseType: !3813, size: 192, offset: 64)
!3813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3809, file: !96, line: 64, size: 192, elements: !3814)
!3814 = !{!3815, !3826}
!3815 = !DIDerivedType(tag: DW_TAG_member, scope: !3813, file: !96, line: 65, baseType: !3816, size: 192)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3813, file: !96, line: 65, size: 192, elements: !3817)
!3817 = !{!3818, !3825}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3816, file: !96, line: 66, baseType: !3819, size: 128)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3820, line: 50, size: 128, elements: !3821)
!3820 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3821 = !{!3822, !3823, !3824}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3819, file: !3820, line: 52, baseType: !119, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3819, file: !3820, line: 54, baseType: !17, size: 32, offset: 64)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3819, file: !3820, line: 55, baseType: !17, size: 32, offset: 96)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3816, file: !96, line: 67, baseType: !119, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, scope: !3813, file: !96, line: 70, baseType: !3827, size: 192)
!3827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3813, file: !96, line: 70, size: 192, elements: !3828)
!3828 = !{!3829, !3830}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3827, file: !96, line: 71, baseType: !538, size: 128, align: 64)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3827, file: !96, line: 72, baseType: !119, size: 64, offset: 128)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3809, file: !96, line: 76, baseType: !3832, size: 64, offset: 256)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !96, line: 76, flags: DIFlagFwdDecl)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3809, file: !96, line: 77, baseType: !119, size: 64, offset: 320)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3809, file: !96, line: 79, baseType: !3836, size: 64, offset: 384)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3820, line: 25, size: 256, elements: !3838)
!3838 = !{!3839, !3845, !3849}
!3839 = !DIDerivedType(tag: DW_TAG_member, scope: !3837, file: !3820, line: 26, baseType: !3840, size: 128)
!3840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3837, file: !3820, line: 26, size: 128, elements: !3841)
!3841 = !{!3842, !3844}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3840, file: !3820, line: 27, baseType: !3843, size: 128)
!3843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 128, elements: !2747)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3840, file: !3820, line: 28, baseType: !3843, size: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3837, file: !3820, line: 31, baseType: !3846, size: 64, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3848)
!3848 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3820, line: 23, flags: DIFlagFwdDecl)
!3849 = !DIDerivedType(tag: DW_TAG_member, scope: !3837, file: !3820, line: 33, baseType: !3850, size: 64, offset: 192)
!3850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3837, file: !3820, line: 33, size: 64, elements: !3851)
!3851 = !{!3852, !3858, !3863}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3850, file: !3820, line: 38, baseType: !3853, size: 64)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !3820, line: 34, size: 64, elements: !3854)
!3854 = !{!3855, !3856, !3857}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3853, file: !3820, line: 35, baseType: !739, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3853, file: !3820, line: 36, baseType: !335, size: 8, offset: 32)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3853, file: !3820, line: 37, baseType: !335, size: 8, offset: 40)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3850, file: !3820, line: 42, baseType: !3859, size: 16)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !3820, line: 39, size: 16, elements: !3860)
!3860 = !{!3861, !3862}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3859, file: !3820, line: 40, baseType: !335, size: 8)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3859, file: !3820, line: 41, baseType: !335, size: 8, offset: 8)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3850, file: !3820, line: 46, baseType: !3864, size: 16)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !3820, line: 43, size: 16, elements: !3865)
!3865 = !{!3866, !3867}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3864, file: !3820, line: 44, baseType: !335, size: 8)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3864, file: !3820, line: 45, baseType: !335, size: 8, offset: 8)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3809, file: !96, line: 81, baseType: !3869, size: 64, offset: 448)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !96, line: 85, size: 384, elements: !3871)
!3871 = !{!3872, !3873, !3874, !3875, !3876, !3877}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3870, file: !96, line: 86, baseType: !3832, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3870, file: !96, line: 87, baseType: !119, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3870, file: !96, line: 88, baseType: !119, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3870, file: !96, line: 89, baseType: !119, size: 64, offset: 192)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3870, file: !96, line: 90, baseType: !807, size: 8, offset: 256)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3870, file: !96, line: 92, baseType: !3869, size: 64, offset: 320)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3809, file: !96, line: 82, baseType: !17, size: 32, offset: 512)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !151, file: !152, line: 1463, baseType: !3880, offset: 21184)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !152, line: 739, elements: !523)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !151, file: !152, line: 1470, baseType: !538, size: 128, align: 64, offset: 21184)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !151, file: !152, line: 1471, baseType: !165, size: 32, offset: 21312)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !151, file: !152, line: 1472, baseType: !7, size: 32, offset: 21344)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !151, file: !152, line: 1474, baseType: !150, size: 64, offset: 21376)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !151, file: !152, line: 1475, baseType: !2235, size: 320, offset: 21440)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !151, file: !152, line: 1478, baseType: !3887, size: 64, offset: 21760)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !152, line: 1478, flags: DIFlagFwdDecl)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !151, file: !152, line: 1482, baseType: !165, size: 32, offset: 21824)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !151, file: !152, line: 1489, baseType: !103, size: 64, offset: 21888)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !151, file: !152, line: 1504, baseType: !103, size: 64, offset: 21952)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !151, file: !152, line: 1505, baseType: !221, size: 64, offset: 22016)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !151, file: !152, line: 1506, baseType: !220, size: 64, offset: 22080)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !151, file: !152, line: 1507, baseType: !221, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !151, file: !152, line: 1508, baseType: !221, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !151, file: !152, line: 1509, baseType: !221, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !151, file: !152, line: 1510, baseType: !538, size: 128, align: 64, offset: 22208)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !151, file: !152, line: 1511, baseType: !7, size: 32, offset: 22336)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !151, file: !152, line: 1515, baseType: !3900, size: 64, offset: 22400)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !179, line: 56, size: 64, elements: !3901)
!3901 = !{!3902}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3900, file: !179, line: 57, baseType: !182, size: 64)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !151, file: !152, line: 1518, baseType: !3900, size: 64, offset: 22464)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !151, file: !152, line: 1528, baseType: !538, size: 128, align: 64, offset: 22528)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !151, file: !152, line: 1552, baseType: !3906, size: 35328, offset: 23040)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3907, line: 430, size: 35328, elements: !3908)
!3907 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3908 = !{!3909, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3938, !3939, !3940, !3941, !3942, !3943, !3946, !3947, !3948, !3949}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3906, file: !3907, line: 432, baseType: !3910, size: 192)
!3910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3911, size: 192, elements: !596)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3912, line: 16, size: 64, elements: !3913)
!3912 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3913 = !{!3914, !3915, !3916, !3917, !3918, !3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3911, file: !3912, line: 17, baseType: !189, size: 16)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3911, file: !3912, line: 18, baseType: !189, size: 16, offset: 16)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3911, file: !3912, line: 19, baseType: !189, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3911, file: !3912, line: 19, baseType: !189, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3911, file: !3912, line: 19, baseType: !189, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3911, file: !3912, line: 19, baseType: !189, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3911, file: !3912, line: 19, baseType: !189, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3911, file: !3912, line: 20, baseType: !189, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3911, file: !3912, line: 20, baseType: !189, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3911, file: !3912, line: 20, baseType: !189, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3911, file: !3912, line: 20, baseType: !189, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3911, file: !3912, line: 20, baseType: !189, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3911, file: !3912, line: 20, baseType: !189, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3906, file: !3907, line: 436, baseType: !119, size: 64, offset: 192)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3906, file: !3907, line: 440, baseType: !191, size: 16, offset: 256)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3906, file: !3907, line: 441, baseType: !191, size: 16, offset: 272)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3906, file: !3907, line: 442, baseType: !191, size: 16, offset: 288)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3906, file: !3907, line: 443, baseType: !191, size: 16, offset: 304)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3906, file: !3907, line: 447, baseType: !119, size: 64, offset: 320)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3906, file: !3907, line: 448, baseType: !119, size: 64, offset: 384)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3906, file: !3907, line: 459, baseType: !3935, size: 256, offset: 448)
!3935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3936, size: 256, elements: !617)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3907, line: 428, flags: DIFlagFwdDecl)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3906, file: !3907, line: 461, baseType: !119, size: 64, offset: 704)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3906, file: !3907, line: 463, baseType: !119, size: 64, offset: 768)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3906, file: !3907, line: 465, baseType: !119, size: 64, offset: 832)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3906, file: !3907, line: 466, baseType: !119, size: 64, offset: 896)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3906, file: !3907, line: 467, baseType: !119, size: 64, offset: 960)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3906, file: !3907, line: 473, baseType: !3944, size: 64, offset: 1024)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3907, line: 10, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3906, file: !3907, line: 480, baseType: !119, size: 64, offset: 1088)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3906, file: !3907, line: 482, baseType: !17, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3906, file: !3907, line: 491, baseType: !145, size: 32, offset: 1184)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3906, file: !3907, line: 501, baseType: !3950, size: 33792, offset: 1536)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3951, line: 448, size: 33792, elements: !3952)
!3951 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3952 = !{!3953, !3954, !3955, !4117, !4118, !4124, !4125}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3950, file: !3951, line: 461, baseType: !17, size: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3950, file: !3951, line: 468, baseType: !119, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3950, file: !3951, line: 476, baseType: !3956, size: 64, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3951, line: 356, size: 33280, align: 512, elements: !3958)
!3958 = !{!3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3957, file: !3951, line: 358, baseType: !17, size: 32)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3957, file: !3951, line: 361, baseType: !17, size: 32, offset: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3957, file: !3951, line: 364, baseType: !220, size: 64, offset: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3957, file: !3951, line: 367, baseType: !220, size: 64, offset: 128)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3957, file: !3951, line: 370, baseType: !220, size: 64, offset: 192)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3957, file: !3951, line: 373, baseType: !17, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3957, file: !3951, line: 376, baseType: !17, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3957, file: !3951, line: 391, baseType: !17, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3957, file: !3951, line: 394, baseType: !17, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3957, file: !3951, line: 397, baseType: !3969, size: 32768, offset: 512)
!3969 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3951, line: 348, size: 32768, elements: !3970)
!3970 = !{!3971, !3986, !4023, !4100, !4113}
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3969, file: !3951, line: 349, baseType: !3972, size: 896)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3951, line: 12, size: 896, elements: !3973)
!3973 = !{!3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3985}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3972, file: !3951, line: 13, baseType: !145, size: 32)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3972, file: !3951, line: 14, baseType: !145, size: 32, offset: 32)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3972, file: !3951, line: 15, baseType: !145, size: 32, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3972, file: !3951, line: 16, baseType: !145, size: 32, offset: 96)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3972, file: !3951, line: 17, baseType: !145, size: 32, offset: 128)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3972, file: !3951, line: 18, baseType: !145, size: 32, offset: 160)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3972, file: !3951, line: 19, baseType: !145, size: 32, offset: 192)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3972, file: !3951, line: 22, baseType: !3982, size: 640, offset: 224)
!3982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 640, elements: !3983)
!3983 = !{!3984}
!3984 = !DISubrange(count: 20)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3972, file: !3951, line: 25, baseType: !145, size: 32, offset: 864)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3969, file: !3951, line: 350, baseType: !3987, size: 4096, align: 128)
!3987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3951, line: 34, size: 4096, align: 128, elements: !3988)
!3988 = !{!3989, !3990, !3991, !3992, !3993, !4008, !4009, !4010, !4012, !4014, !4018}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3987, file: !3951, line: 35, baseType: !189, size: 16)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3987, file: !3951, line: 36, baseType: !189, size: 16, offset: 16)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3987, file: !3951, line: 37, baseType: !189, size: 16, offset: 32)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3987, file: !3951, line: 38, baseType: !189, size: 16, offset: 48)
!3993 = !DIDerivedType(tag: DW_TAG_member, scope: !3987, file: !3951, line: 39, baseType: !3994, size: 128, offset: 64)
!3994 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3987, file: !3951, line: 39, size: 128, elements: !3995)
!3995 = !{!3996, !4001}
!3996 = !DIDerivedType(tag: DW_TAG_member, scope: !3994, file: !3951, line: 40, baseType: !3997, size: 128)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3994, file: !3951, line: 40, size: 128, elements: !3998)
!3998 = !{!3999, !4000}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3997, file: !3951, line: 41, baseType: !220, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3997, file: !3951, line: 42, baseType: !220, size: 64, offset: 64)
!4001 = !DIDerivedType(tag: DW_TAG_member, scope: !3994, file: !3951, line: 44, baseType: !4002, size: 128)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3994, file: !3951, line: 44, size: 128, elements: !4003)
!4003 = !{!4004, !4005, !4006, !4007}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4002, file: !3951, line: 45, baseType: !145, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4002, file: !3951, line: 46, baseType: !145, size: 32, offset: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4002, file: !3951, line: 47, baseType: !145, size: 32, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4002, file: !3951, line: 48, baseType: !145, size: 32, offset: 96)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3987, file: !3951, line: 51, baseType: !145, size: 32, offset: 192)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3987, file: !3951, line: 52, baseType: !145, size: 32, offset: 224)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3987, file: !3951, line: 55, baseType: !4011, size: 1024, offset: 256)
!4011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 1024, elements: !2738)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3987, file: !3951, line: 58, baseType: !4013, size: 2048, offset: 1280)
!4013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 2048, elements: !1255)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3987, file: !3951, line: 60, baseType: !4015, size: 384, offset: 3328)
!4015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !145, size: 384, elements: !4016)
!4016 = !{!4017}
!4017 = !DISubrange(count: 12)
!4018 = !DIDerivedType(tag: DW_TAG_member, scope: !3987, file: !3951, line: 62, baseType: !4019, size: 384, offset: 3712)
!4019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3987, file: !3951, line: 62, size: 384, elements: !4020)
!4020 = !{!4021, !4022}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4019, file: !3951, line: 63, baseType: !4015, size: 384)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4019, file: !3951, line: 64, baseType: !4015, size: 384)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3969, file: !3951, line: 351, baseType: !4024, size: 1088)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3951, line: 79, size: 1088, elements: !4025)
!4025 = !{!4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4040, !4099}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4024, file: !3951, line: 80, baseType: !145, size: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4024, file: !3951, line: 81, baseType: !145, size: 32, offset: 32)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4024, file: !3951, line: 82, baseType: !145, size: 32, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4024, file: !3951, line: 83, baseType: !145, size: 32, offset: 96)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4024, file: !3951, line: 84, baseType: !145, size: 32, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4024, file: !3951, line: 85, baseType: !145, size: 32, offset: 160)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4024, file: !3951, line: 86, baseType: !145, size: 32, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4024, file: !3951, line: 88, baseType: !3982, size: 640, offset: 224)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4024, file: !3951, line: 89, baseType: !335, size: 8, offset: 864)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4024, file: !3951, line: 90, baseType: !335, size: 8, offset: 872)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4024, file: !3951, line: 91, baseType: !335, size: 8, offset: 880)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4024, file: !3951, line: 92, baseType: !335, size: 8, offset: 888)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4024, file: !3951, line: 93, baseType: !335, size: 8, offset: 896)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4024, file: !3951, line: 94, baseType: !335, size: 8, offset: 904)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4024, file: !3951, line: 95, baseType: !4041, size: 64, offset: 960)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4043, line: 11, size: 128, elements: !4044)
!4043 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4044 = !{!4045, !4046}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4042, file: !4043, line: 12, baseType: !114, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4042, file: !4043, line: 13, baseType: !4047, size: 64, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4048, size: 64)
!4048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4049, line: 103, size: 1344, elements: !4050)
!4049 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4050 = !{!4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4079, !4080, !4081}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4048, file: !4049, line: 109, baseType: !119, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4048, file: !4049, line: 110, baseType: !119, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4048, file: !4049, line: 111, baseType: !119, size: 64, offset: 128)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4048, file: !4049, line: 112, baseType: !119, size: 64, offset: 192)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4048, file: !4049, line: 113, baseType: !119, size: 64, offset: 256)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4048, file: !4049, line: 114, baseType: !119, size: 64, offset: 320)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4048, file: !4049, line: 117, baseType: !119, size: 64, offset: 384)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4048, file: !4049, line: 118, baseType: !119, size: 64, offset: 448)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4048, file: !4049, line: 119, baseType: !119, size: 64, offset: 512)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4048, file: !4049, line: 120, baseType: !119, size: 64, offset: 576)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4048, file: !4049, line: 121, baseType: !119, size: 64, offset: 640)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4048, file: !4049, line: 122, baseType: !119, size: 64, offset: 704)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4048, file: !4049, line: 123, baseType: !119, size: 64, offset: 768)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4048, file: !4049, line: 124, baseType: !119, size: 64, offset: 832)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4048, file: !4049, line: 125, baseType: !119, size: 64, offset: 896)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4048, file: !4049, line: 139, baseType: !119, size: 64, offset: 960)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4048, file: !4049, line: 142, baseType: !119, size: 64, offset: 1024)
!4068 = !DIDerivedType(tag: DW_TAG_member, scope: !4048, file: !4049, line: 144, baseType: !4069, size: 64, offset: 1088)
!4069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4048, file: !4049, line: 144, size: 64, elements: !4070)
!4070 = !{!4071, !4072, !4073}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4069, file: !4049, line: 146, baseType: !189, size: 16)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4069, file: !4049, line: 148, baseType: !220, size: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4069, file: !4049, line: 150, baseType: !4074, size: 64)
!4074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4049, line: 59, size: 64, elements: !4075)
!4075 = !{!4076, !4077, !4078}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4074, file: !4049, line: 61, baseType: !220, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4074, file: !4049, line: 63, baseType: !220, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4074, file: !4049, line: 65, baseType: !220, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4048, file: !4049, line: 153, baseType: !119, size: 64, offset: 1152)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4048, file: !4049, line: 154, baseType: !119, size: 64, offset: 1216)
!4081 = !DIDerivedType(tag: DW_TAG_member, scope: !4048, file: !4049, line: 156, baseType: !4082, size: 64, offset: 1280)
!4082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4048, file: !4049, line: 156, size: 64, elements: !4083)
!4083 = !{!4084, !4085, !4086}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4082, file: !4049, line: 158, baseType: !189, size: 16)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4082, file: !4049, line: 160, baseType: !220, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4082, file: !4049, line: 162, baseType: !4087, size: 64)
!4087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4049, line: 69, size: 64, elements: !4088)
!4088 = !{!4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4087, file: !4049, line: 71, baseType: !220, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4087, file: !4049, line: 73, baseType: !220, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4087, file: !4049, line: 75, baseType: !220, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4087, file: !4049, line: 77, baseType: !220, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4087, file: !4049, line: 80, baseType: !220, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4087, file: !4049, line: 83, baseType: !220, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4087, file: !4049, line: 86, baseType: !220, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4087, file: !4049, line: 88, baseType: !220, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4087, file: !4049, line: 93, baseType: !220, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4087, file: !4049, line: 100, baseType: !220, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4024, file: !3951, line: 96, baseType: !145, size: 32, offset: 1024)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3969, file: !3951, line: 352, baseType: !4101, size: 4608, align: 512)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3951, line: 333, size: 4608, align: 512, elements: !4102)
!4102 = !{!4103, !4104, !4111}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4101, file: !3951, line: 334, baseType: !3987, size: 4096, align: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4101, file: !3951, line: 335, baseType: !4105, size: 512, offset: 4096)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3951, line: 312, size: 512, elements: !4106)
!4106 = !{!4107, !4108, !4109}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4105, file: !3951, line: 313, baseType: !220, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4105, file: !3951, line: 314, baseType: !220, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4105, file: !3951, line: 315, baseType: !4110, size: 384, offset: 128)
!4110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 384, elements: !794)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4101, file: !3951, line: 336, baseType: !4112, offset: 4608)
!4112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, elements: !685)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3969, file: !3951, line: 353, baseType: !4114, size: 32768)
!4114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 32768, elements: !4115)
!4115 = !{!4116}
!4116 = !DISubrange(count: 4096)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3950, file: !3951, line: 484, baseType: !3956, size: 64, offset: 192)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3950, file: !3951, line: 491, baseType: !4119, size: 128, offset: 256)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3951, line: 404, size: 128, elements: !4120)
!4120 = !{!4121, !4122, !4123}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4119, file: !3951, line: 424, baseType: !220, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4119, file: !3951, line: 432, baseType: !17, size: 32, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4119, file: !3951, line: 440, baseType: !17, size: 32, offset: 96)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3950, file: !3951, line: 498, baseType: !4119, size: 128, offset: 384)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3950, file: !3951, line: 508, baseType: !3957, size: 33280, align: 512, offset: 512)
!4126 = !{!0, !4127, !4129, !4134, !4137, !4157, !4162, !4164, !4167, !4183, !4185, !4187, !4189, !4191, !4196, !4202, !4233, !4235, !4237, !4266, !4268}
!4127 = !DIGlobalVariableExpression(var: !4128, expr: !DIExpression())
!4128 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_context_tracking480", scope: !2, file: !3, line: 36, type: !103, isLocal: true, isDefinition: true)
!4129 = !DIGlobalVariableExpression(var: !4130, expr: !DIExpression())
!4130 = distinct !DIGlobalVariable(scope: null, file: !3, line: 214, type: !4131, isLocal: true, isDefinition: true)
!4131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 208, elements: !4132)
!4132 = !{!4133}
!4133 = !DISubrange(count: 26)
!4134 = !DIGlobalVariableExpression(var: !4135, expr: !DIExpression())
!4135 = distinct !DIGlobalVariable(scope: null, file: !3, line: 222, type: !4136, isLocal: true, isDefinition: true)
!4136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 32, elements: !617)
!4137 = !DIGlobalVariableExpression(var: !4138, expr: !DIExpression())
!4138 = distinct !DIGlobalVariable(name: "___tp_str", scope: !4139, file: !3, line: 222, type: !810, isLocal: true, isDefinition: true)
!4139 = distinct !DISubprogram(name: "ct_nmi_exit", scope: !3, file: !3, line: 204, type: !2355, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4140)
!4140 = !{!4141, !4142, !4145, !4147, !4149, !4152, !4154}
!4141 = !DILocalVariable(name: "ct", scope: !4139, file: !3, line: 206, type: !104)
!4142 = !DILocalVariable(name: "__vpp_verify", scope: !4143, file: !3, line: 206, type: !1852)
!4143 = distinct !DILexicalBlock(scope: !4144, file: !3, line: 206, column: 32)
!4144 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 206, column: 32)
!4145 = !DILocalVariable(name: "tcp_ptr__", scope: !4146, file: !3, line: 206, type: !119)
!4146 = distinct !DILexicalBlock(scope: !4144, file: !3, line: 206, column: 32)
!4147 = !DILocalVariable(name: "__ret_warn_on", scope: !4148, file: !3, line: 214, type: !7)
!4148 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 214, column: 2)
!4149 = !DILocalVariable(name: "__flags", scope: !4150, file: !3, line: 214, type: !7)
!4150 = distinct !DILexicalBlock(scope: !4151, file: !3, line: 214, column: 2)
!4151 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 214, column: 2)
!4152 = !DILocalVariable(name: "__ret_warn_on", scope: !4153, file: !3, line: 215, type: !7)
!4153 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 215, column: 2)
!4154 = !DILocalVariable(name: "__flags", scope: !4155, file: !3, line: 215, type: !7)
!4155 = distinct !DILexicalBlock(scope: !4156, file: !3, line: 215, column: 2)
!4156 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 215, column: 2)
!4157 = !DIGlobalVariableExpression(var: !4158, expr: !DIExpression())
!4158 = distinct !DIGlobalVariable(scope: null, file: !3, line: 231, type: !4159, isLocal: true, isDefinition: true)
!4159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 72, elements: !4160)
!4160 = !{!4161}
!4161 = !DISubrange(count: 9)
!4162 = !DIGlobalVariableExpression(var: !4163, expr: !DIExpression())
!4163 = distinct !DIGlobalVariable(name: "___tp_str", scope: !4139, file: !3, line: 231, type: !810, isLocal: true, isDefinition: true)
!4164 = !DIGlobalVariableExpression(var: !4165, expr: !DIExpression())
!4165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !4166, isLocal: true, isDefinition: true)
!4166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 56, elements: !2127)
!4167 = !DIGlobalVariableExpression(var: !4168, expr: !DIExpression())
!4168 = distinct !DIGlobalVariable(name: "___tp_str", scope: !4169, file: !3, line: 297, type: !810, isLocal: true, isDefinition: true)
!4169 = distinct !DISubprogram(name: "ct_nmi_enter", scope: !3, file: !3, line: 258, type: !2355, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4170)
!4170 = !{!4171, !4172, !4173, !4176, !4178, !4180}
!4171 = !DILocalVariable(name: "incby", scope: !4169, file: !3, line: 260, type: !114)
!4172 = !DILocalVariable(name: "ct", scope: !4169, file: !3, line: 261, type: !104)
!4173 = !DILocalVariable(name: "__vpp_verify", scope: !4174, file: !3, line: 261, type: !1852)
!4174 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 261, column: 32)
!4175 = distinct !DILexicalBlock(scope: !4169, file: !3, line: 261, column: 32)
!4176 = !DILocalVariable(name: "tcp_ptr__", scope: !4177, file: !3, line: 261, type: !119)
!4177 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 261, column: 32)
!4178 = !DILocalVariable(name: "__ret_warn_on", scope: !4179, file: !3, line: 264, type: !7)
!4179 = distinct !DILexicalBlock(scope: !4169, file: !3, line: 264, column: 2)
!4180 = !DILocalVariable(name: "__flags", scope: !4181, file: !3, line: 264, type: !7)
!4181 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 264, column: 2)
!4182 = distinct !DILexicalBlock(scope: !4179, file: !3, line: 264, column: 2)
!4183 = !DIGlobalVariableExpression(var: !4184, expr: !DIExpression())
!4184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 297, type: !4136, isLocal: true, isDefinition: true)
!4185 = !DIGlobalVariableExpression(var: !4186, expr: !DIExpression())
!4186 = distinct !DIGlobalVariable(name: "___tp_str", scope: !4169, file: !3, line: 297, type: !810, isLocal: true, isDefinition: true)
!4187 = !DIGlobalVariableExpression(var: !4188, expr: !DIExpression())
!4188 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ct_idle_enter488", scope: !2, file: !3, line: 322, type: !103, isLocal: true, isDefinition: true)
!4189 = !DIGlobalVariableExpression(var: !4190, expr: !DIExpression())
!4190 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ct_idle_exit489", scope: !2, file: !3, line: 341, type: !103, isLocal: true, isDefinition: true)
!4191 = !DIGlobalVariableExpression(var: !4192, expr: !DIExpression())
!4192 = distinct !DIGlobalVariable(scope: null, file: !6, line: 92, type: !4193, isLocal: true, isDefinition: true)
!4193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 40, elements: !4194)
!4194 = !{!4195}
!4195 = !DISubrange(count: 5)
!4196 = !DIGlobalVariableExpression(var: !4197, expr: !DIExpression())
!4197 = distinct !DIGlobalVariable(scope: null, file: !4198, line: 480, type: !4199, isLocal: true, isDefinition: true)
!4198 = !DIFile(filename: "./include/trace/events/rcu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eb9ced76ec45de6a0269d78ff8211b")
!4199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 216, elements: !4200)
!4200 = !{!4201}
!4201 = !DISubrange(count: 27)
!4202 = !DIGlobalVariableExpression(var: !4203, expr: !DIExpression())
!4203 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_rcu_dyntick394", scope: !4204, file: !4198, line: 480, type: !103, isLocal: true, isDefinition: true)
!4204 = distinct !DISubprogram(name: "trace_rcu_dyntick", scope: !4198, file: !4198, line: 480, type: !4205, scopeLine: 480, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4207)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{null, !810, !114, !114, !7}
!4207 = !{!4208, !4209, !4210, !4211, !4212, !4215, !4218, !4220, !4222, !4225, !4228, !4230, !4231}
!4208 = !DILocalVariable(name: "polarity", arg: 1, scope: !4204, file: !4198, line: 480, type: !810)
!4209 = !DILocalVariable(name: "oldnesting", arg: 2, scope: !4204, file: !4198, line: 480, type: !114)
!4210 = !DILocalVariable(name: "newnesting", arg: 3, scope: !4204, file: !4198, line: 480, type: !114)
!4211 = !DILocalVariable(name: "dynticks", arg: 4, scope: !4204, file: !4198, line: 480, type: !7)
!4212 = !DILocalVariable(name: "__idx", scope: !4213, file: !4198, line: 480, type: !7)
!4213 = distinct !DILexicalBlock(scope: !4214, file: !4198, line: 480, column: 1)
!4214 = distinct !DILexicalBlock(scope: !4204, file: !4198, line: 480, column: 1)
!4215 = !DILocalVariable(name: "pscr_ret__", scope: !4216, file: !4198, line: 480, type: !7)
!4216 = distinct !DILexicalBlock(scope: !4217, file: !4198, line: 480, column: 1)
!4217 = distinct !DILexicalBlock(scope: !4213, file: !4198, line: 480, column: 1)
!4218 = !DILocalVariable(name: "__vpp_verify", scope: !4219, file: !4198, line: 480, type: !1852)
!4219 = distinct !DILexicalBlock(scope: !4216, file: !4198, line: 480, column: 1)
!4220 = !DILocalVariable(name: "pfo_val__", scope: !4221, file: !4198, line: 480, type: !145)
!4221 = distinct !DILexicalBlock(scope: !4216, file: !4198, line: 480, column: 1)
!4222 = !DILocalVariable(name: "__ret_warn_on", scope: !4223, file: !4198, line: 480, type: !7)
!4223 = distinct !DILexicalBlock(scope: !4224, file: !4198, line: 480, column: 1)
!4224 = distinct !DILexicalBlock(scope: !4213, file: !4198, line: 480, column: 1)
!4225 = !DILocalVariable(name: "__flags", scope: !4226, file: !4198, line: 480, type: !7)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !4198, line: 480, column: 1)
!4227 = distinct !DILexicalBlock(scope: !4223, file: !4198, line: 480, column: 1)
!4228 = !DILocalVariable(name: "it_func_ptr", scope: !4229, file: !4198, line: 480, type: !128)
!4229 = distinct !DILexicalBlock(scope: !4213, file: !4198, line: 480, column: 1)
!4230 = !DILocalVariable(name: "__data", scope: !4229, file: !4198, line: 480, type: !103)
!4231 = !DILocalVariable(name: "__UNIQUE_ID_rcu392", scope: !4232, file: !4198, line: 480, type: !128)
!4232 = distinct !DILexicalBlock(scope: !4229, file: !4198, line: 480, column: 1)
!4233 = !DIGlobalVariableExpression(var: !4234, expr: !DIExpression())
!4234 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace395", scope: !4204, file: !4198, line: 480, type: !103, isLocal: true, isDefinition: true)
!4235 = !DIGlobalVariableExpression(var: !4236, expr: !DIExpression())
!4236 = distinct !DIGlobalVariable(scope: null, file: !3, line: 140, type: !792, isLocal: true, isDefinition: true)
!4237 = !DIGlobalVariableExpression(var: !4238, expr: !DIExpression())
!4238 = distinct !DIGlobalVariable(name: "___tp_str", scope: !4239, file: !3, line: 140, type: !810, isLocal: true, isDefinition: true)
!4239 = distinct !DISubprogram(name: "ct_kernel_exit", scope: !3, file: !3, line: 124, type: !4240, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4242)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{null, !807, !7}
!4242 = !{!4243, !4244, !4245, !4246, !4249, !4251, !4253, !4256, !4258, !4261, !4263}
!4243 = !DILocalVariable(name: "user", arg: 1, scope: !4239, file: !3, line: 124, type: !807)
!4244 = !DILocalVariable(name: "offset", arg: 2, scope: !4239, file: !3, line: 124, type: !7)
!4245 = !DILocalVariable(name: "ct", scope: !4239, file: !3, line: 126, type: !104)
!4246 = !DILocalVariable(name: "__vpp_verify", scope: !4247, file: !3, line: 126, type: !1852)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 126, column: 32)
!4248 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 126, column: 32)
!4249 = !DILocalVariable(name: "tcp_ptr__", scope: !4250, file: !3, line: 126, type: !119)
!4250 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 126, column: 32)
!4251 = !DILocalVariable(name: "__ret_warn_on", scope: !4252, file: !3, line: 128, type: !7)
!4252 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 128, column: 2)
!4253 = !DILocalVariable(name: "__flags", scope: !4254, file: !3, line: 128, type: !7)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 128, column: 2)
!4255 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 128, column: 2)
!4256 = !DILocalVariable(name: "__ret_warn_on", scope: !4257, file: !3, line: 130, type: !7)
!4257 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 130, column: 2)
!4258 = !DILocalVariable(name: "__flags", scope: !4259, file: !3, line: 130, type: !7)
!4259 = distinct !DILexicalBlock(scope: !4260, file: !3, line: 130, column: 2)
!4260 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 130, column: 2)
!4261 = !DILocalVariable(name: "__ret_warn_on", scope: !4262, file: !3, line: 141, type: !7)
!4262 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 141, column: 2)
!4263 = !DILocalVariable(name: "__flags", scope: !4264, file: !3, line: 141, type: !7)
!4264 = distinct !DILexicalBlock(scope: !4265, file: !3, line: 141, column: 2)
!4265 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 141, column: 2)
!4266 = !DIGlobalVariableExpression(var: !4267, expr: !DIExpression())
!4267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 185, type: !4136, isLocal: true, isDefinition: true)
!4268 = !DIGlobalVariableExpression(var: !4269, expr: !DIExpression())
!4269 = distinct !DIGlobalVariable(name: "___tp_str", scope: !4270, file: !3, line: 185, type: !810, isLocal: true, isDefinition: true)
!4270 = distinct !DISubprogram(name: "ct_kernel_enter", scope: !3, file: !3, line: 163, type: !4240, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4271)
!4271 = !{!4272, !4273, !4274, !4275, !4278, !4280, !4281, !4283, !4286, !4288, !4291, !4293, !4296, !4298}
!4272 = !DILocalVariable(name: "user", arg: 1, scope: !4270, file: !3, line: 163, type: !807)
!4273 = !DILocalVariable(name: "offset", arg: 2, scope: !4270, file: !3, line: 163, type: !7)
!4274 = !DILocalVariable(name: "ct", scope: !4270, file: !3, line: 165, type: !104)
!4275 = !DILocalVariable(name: "__vpp_verify", scope: !4276, file: !3, line: 165, type: !1852)
!4276 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 165, column: 32)
!4277 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 165, column: 32)
!4278 = !DILocalVariable(name: "tcp_ptr__", scope: !4279, file: !3, line: 165, type: !119)
!4279 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 165, column: 32)
!4280 = !DILocalVariable(name: "oldval", scope: !4270, file: !3, line: 166, type: !114)
!4281 = !DILocalVariable(name: "__ret_warn_on", scope: !4282, file: !3, line: 168, type: !7)
!4282 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 168, column: 2)
!4283 = !DILocalVariable(name: "__flags", scope: !4284, file: !3, line: 168, type: !7)
!4284 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 168, column: 2)
!4285 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 168, column: 2)
!4286 = !DILocalVariable(name: "__ret_warn_on", scope: !4287, file: !3, line: 170, type: !7)
!4287 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 170, column: 2)
!4288 = !DILocalVariable(name: "__flags", scope: !4289, file: !3, line: 170, type: !7)
!4289 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 170, column: 2)
!4290 = distinct !DILexicalBlock(scope: !4287, file: !3, line: 170, column: 2)
!4291 = !DILocalVariable(name: "__ret_warn_on", scope: !4292, file: !3, line: 186, type: !7)
!4292 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 186, column: 2)
!4293 = !DILocalVariable(name: "__flags", scope: !4294, file: !3, line: 186, type: !7)
!4294 = distinct !DILexicalBlock(scope: !4295, file: !3, line: 186, column: 2)
!4295 = distinct !DILexicalBlock(scope: !4292, file: !3, line: 186, column: 2)
!4296 = !DILocalVariable(name: "__ret_warn_on", scope: !4297, file: !3, line: 188, type: !7)
!4297 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 188, column: 2)
!4298 = !DILocalVariable(name: "__flags", scope: !4299, file: !3, line: 188, type: !7)
!4299 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 188, column: 2)
!4300 = distinct !DILexicalBlock(scope: !4297, file: !3, line: 188, column: 2)
!4301 = !{!"rsp"}
!4302 = !{i32 7, !"Dwarf Version", i32 5}
!4303 = !{i32 2, !"Debug Info Version", i32 3}
!4304 = !{i32 1, !"wchar_size", i32 2}
!4305 = !{i32 8, !"cf-protection-branch", i32 1}
!4306 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4307 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4308 = !{i32 1, !"Code Model", i32 2}
!4309 = !{i32 1, !"override-stack-alignment", i32 8}
!4310 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4311 = !DILocation(line: 206, column: 2, scope: !4139)
!4312 = !DILocation(line: 206, column: 27, scope: !4139)
!4313 = !DILocation(line: 206, column: 32, scope: !4144)
!4314 = !DILocation(line: 206, column: 32, scope: !4143)
!4315 = !DILocation(line: 206, column: 32, scope: !4146)
!4316 = !{i64 2156013926}
!4317 = !DILocation(line: 208, column: 2, scope: !4139)
!4318 = !DILocation(line: 208, column: 2, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 208, column: 2)
!4320 = !DILocation(line: 214, column: 2, scope: !4148)
!4321 = !DILocation(line: 214, column: 2, scope: !4151)
!4322 = !DILocation(line: 214, column: 2, scope: !4150)
!4323 = !DILocation(line: 214, column: 2, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 214, column: 2)
!4325 = !DILocation(line: 214, column: 2, scope: !4326)
!4326 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 214, column: 2)
!4327 = !{i64 2156014792, i64 2156014821, i64 2156014867, i64 2156014925, i64 2156014979, i64 2156015033, i64 2156015088, i64 2156015119, i64 2156015427, i64 2156015433, i64 2156015480, i64 2156015503, i64 2156015529}
!4328 = !DILocation(line: 214, column: 2, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 214, column: 2)
!4330 = !DILocation(line: 214, column: 2, scope: !4139)
!4331 = !DILocation(line: 215, column: 2, scope: !4153)
!4332 = !DILocation(line: 215, column: 2, scope: !4156)
!4333 = !DILocation(line: 215, column: 2, scope: !4155)
!4334 = !DILocation(line: 215, column: 2, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 215, column: 2)
!4336 = !DILocation(line: 215, column: 2, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 215, column: 2)
!4338 = !{i64 2156016339, i64 2156016368, i64 2156016414, i64 2156016472, i64 2156016526, i64 2156016580, i64 2156016635, i64 2156016666, i64 2156016974, i64 2156016980, i64 2156017027, i64 2156017050, i64 2156017076}
!4339 = !DILocation(line: 215, column: 2, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4155, file: !3, line: 215, column: 2)
!4341 = !DILocation(line: 215, column: 2, scope: !4139)
!4342 = !DILocation(line: 221, column: 6, scope: !4343)
!4343 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 221, column: 6)
!4344 = !DILocation(line: 221, column: 32, scope: !4343)
!4345 = !DILocation(line: 221, column: 6, scope: !4139)
!4346 = !DILocation(line: 222, column: 21, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 222, column: 21)
!4348 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 221, column: 38)
!4349 = !DILocation(line: 222, column: 33, scope: !4348)
!4350 = !DILocation(line: 222, column: 60, scope: !4348)
!4351 = !DILocation(line: 222, column: 86, scope: !4348)
!4352 = !DILocation(line: 223, column: 7, scope: !4348)
!4353 = !DILocation(line: 222, column: 3, scope: !4348)
!4354 = !DILocation(line: 224, column: 3, scope: !4348)
!4355 = !DILocation(line: 224, column: 3, scope: !4356)
!4356 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 224, column: 3)
!4357 = !DILocation(line: 224, column: 3, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 224, column: 3)
!4359 = !DILocation(line: 224, column: 3, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 224, column: 3)
!4361 = !DILocation(line: 226, column: 3, scope: !4348)
!4362 = !DILocation(line: 226, column: 3, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4348, file: !3, line: 226, column: 3)
!4364 = !DILocation(line: 227, column: 3, scope: !4348)
!4365 = !DILocation(line: 231, column: 20, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 231, column: 20)
!4367 = !DILocation(line: 231, column: 37, scope: !4139)
!4368 = !DILocation(line: 231, column: 67, scope: !4139)
!4369 = !DILocation(line: 231, column: 2, scope: !4139)
!4370 = !DILocation(line: 232, column: 2, scope: !4139)
!4371 = !DILocation(line: 232, column: 2, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 232, column: 2)
!4373 = !DILocation(line: 232, column: 2, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 232, column: 2)
!4375 = !DILocation(line: 232, column: 2, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 232, column: 2)
!4377 = !DILocation(line: 235, column: 27, scope: !4139)
!4378 = !DILocation(line: 235, column: 31, scope: !4139)
!4379 = !DILocation(line: 235, column: 2, scope: !4139)
!4380 = !DILocation(line: 236, column: 2, scope: !4139)
!4381 = !DILocation(line: 236, column: 2, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 236, column: 2)
!4383 = !DILocation(line: 239, column: 2, scope: !4139)
!4384 = !DILocation(line: 242, column: 7, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4139, file: !3, line: 242, column: 6)
!4386 = !DILocation(line: 242, column: 6, scope: !4139)
!4387 = !DILocation(line: 243, column: 3, scope: !4385)
!4388 = !DILocation(line: 244, column: 1, scope: !4139)
!4389 = distinct !DISubprogram(name: "ct_dynticks_nmi_nesting", scope: !6, file: !6, line: 90, type: !4390, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4392)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!114}
!4392 = !{!4393, !4396, !4398}
!4393 = !DILocalVariable(name: "pscr_ret__", scope: !4394, file: !6, line: 92, type: !114)
!4394 = distinct !DILexicalBlock(scope: !4395, file: !6, line: 92, column: 9)
!4395 = distinct !DILexicalBlock(scope: !4389, file: !6, line: 92, column: 9)
!4396 = !DILocalVariable(name: "__vpp_verify", scope: !4397, file: !6, line: 92, type: !1852)
!4397 = distinct !DILexicalBlock(scope: !4394, file: !6, line: 92, column: 9)
!4398 = !DILocalVariable(name: "pfo_val__", scope: !4399, file: !6, line: 92, type: !220)
!4399 = distinct !DILexicalBlock(scope: !4394, file: !6, line: 92, column: 9)
!4400 = !DILocation(line: 92, column: 9, scope: !4395)
!4401 = !DILocation(line: 92, column: 9, scope: !4394)
!4402 = !DILocation(line: 92, column: 9, scope: !4397)
!4403 = !DILocation(line: 92, column: 9, scope: !4399)
!4404 = !{i64 2150832261}
!4405 = !DILocation(line: 92, column: 2, scope: !4389)
!4406 = distinct !DISubprogram(name: "rcu_dynticks_curr_cpu_in_eqs", scope: !4407, file: !4407, line: 120, type: !1842, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4408)
!4407 = !DIFile(filename: "./include/linux/context_tracking.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c1efe0468183524087d0fa1060971d6")
!4408 = !{!4409, !4412}
!4409 = !DILocalVariable(name: "__vpp_verify", scope: !4410, file: !4407, line: 122, type: !1852)
!4410 = distinct !DILexicalBlock(scope: !4411, file: !4407, line: 122, column: 27)
!4411 = distinct !DILexicalBlock(scope: !4406, file: !4407, line: 122, column: 27)
!4412 = !DILocalVariable(name: "tcp_ptr__", scope: !4413, file: !4407, line: 122, type: !119)
!4413 = distinct !DILexicalBlock(scope: !4411, file: !4407, line: 122, column: 27)
!4414 = !DILocation(line: 122, column: 27, scope: !4411)
!4415 = !DILocation(line: 122, column: 27, scope: !4410)
!4416 = !DILocation(line: 122, column: 27, scope: !4413)
!4417 = !{i64 2150839958}
!4418 = !DILocation(line: 122, column: 11, scope: !4406)
!4419 = !DILocation(line: 122, column: 66, scope: !4406)
!4420 = !DILocation(line: 122, column: 9, scope: !4406)
!4421 = !DILocation(line: 122, column: 2, scope: !4406)
!4422 = !DILocation(line: 480, column: 1, scope: !4204)
!4423 = !DILocation(line: 480, column: 1, scope: !4214)
!4424 = !DILocation(line: 480, column: 1, scope: !4213)
!4425 = !DILocation(line: 480, column: 1, scope: !4216)
!4426 = !DILocation(line: 480, column: 1, scope: !4219)
!4427 = !DILocation(line: 480, column: 1, scope: !4221)
!4428 = !{i64 2155446088}
!4429 = !DILocation(line: 480, column: 1, scope: !4217)
!4430 = !DILocation(line: 480, column: 1, scope: !4223)
!4431 = !DILocation(line: 480, column: 1, scope: !4227)
!4432 = !DILocation(line: 480, column: 1, scope: !4226)
!4433 = !DILocation(line: 480, column: 1, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4226, file: !4198, line: 480, column: 1)
!4435 = !DILocation(line: 480, column: 1, scope: !4436)
!4436 = distinct !DILexicalBlock(scope: !4226, file: !4198, line: 480, column: 1)
!4437 = !{i64 2155447347, i64 2155447376, i64 2155447422, i64 2155447480, i64 2155447534, i64 2155447588, i64 2155447643, i64 2155447674, i64 2155447982, i64 2155447988, i64 2155448035, i64 2155448058, i64 2155448084}
!4438 = !DILocation(line: 480, column: 1, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4226, file: !4198, line: 480, column: 1)
!4440 = !DILocation(line: 480, column: 1, scope: !4224)
!4441 = !DILocation(line: 480, column: 1, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4213, file: !4198, line: 480, column: 1)
!4443 = !{i64 2155448435}
!4444 = !DILocation(line: 480, column: 1, scope: !4229)
!4445 = !DILocation(line: 480, column: 1, scope: !4232)
!4446 = !DILocation(line: 480, column: 1, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4232, file: !4198, line: 480, column: 1)
!4448 = !DILocation(line: 480, column: 1, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4447, file: !4198, line: 480, column: 1)
!4450 = !DILocation(line: 480, column: 1, scope: !4451)
!4451 = distinct !DILexicalBlock(scope: !4229, file: !4198, line: 480, column: 1)
!4452 = !DILocation(line: 480, column: 1, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4451, file: !4198, line: 480, column: 1)
!4454 = !DILocation(line: 480, column: 1, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4453, file: !4198, line: 480, column: 1)
!4456 = !DILocation(line: 480, column: 1, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4213, file: !4198, line: 480, column: 1)
!4458 = !{i64 2155454677}
!4459 = !DILocation(line: 480, column: 1, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4457, file: !4198, line: 480, column: 1)
!4461 = !DILocation(line: 480, column: 1, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4460, file: !4198, line: 480, column: 1)
!4463 = !{i64 2155454836}
!4464 = distinct !DISubprogram(name: "ct_dynticks", scope: !6, file: !6, line: 59, type: !2107, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4465)
!4465 = !{!4466, !4469}
!4466 = !DILocalVariable(name: "__vpp_verify", scope: !4467, file: !6, line: 61, type: !1852)
!4467 = distinct !DILexicalBlock(scope: !4468, file: !6, line: 61, column: 21)
!4468 = distinct !DILexicalBlock(scope: !4464, file: !6, line: 61, column: 21)
!4469 = !DILocalVariable(name: "tcp_ptr__", scope: !4470, file: !6, line: 61, type: !119)
!4470 = distinct !DILexicalBlock(scope: !4468, file: !6, line: 61, column: 21)
!4471 = !DILocation(line: 61, column: 21, scope: !4468)
!4472 = !DILocation(line: 61, column: 21, scope: !4467)
!4473 = !DILocation(line: 61, column: 21, scope: !4470)
!4474 = !{i64 2150821218}
!4475 = !DILocation(line: 61, column: 9, scope: !4464)
!4476 = !DILocation(line: 61, column: 60, scope: !4464)
!4477 = !DILocation(line: 61, column: 2, scope: !4464)
!4478 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4479, file: !4479, line: 80, type: !4480, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4485)
!4479 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4480 = !DISubroutineType(types: !4481)
!4481 = !{null, !4482, !1117}
!4482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4483, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4484)
!4484 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4485 = !{!4486, !4487}
!4486 = !DILocalVariable(name: "v", arg: 1, scope: !4478, file: !4479, line: 80, type: !4482)
!4487 = !DILocalVariable(name: "size", arg: 2, scope: !4478, file: !4479, line: 80, type: !1117)
!4488 = !DILocation(line: 80, column: 74, scope: !4478)
!4489 = !DILocation(line: 80, column: 84, scope: !4478)
!4490 = !DILocation(line: 82, column: 20, scope: !4478)
!4491 = !DILocation(line: 82, column: 23, scope: !4478)
!4492 = !DILocation(line: 82, column: 2, scope: !4478)
!4493 = !DILocation(line: 83, column: 2, scope: !4478)
!4494 = !DILocation(line: 84, column: 1, scope: !4478)
!4495 = distinct !DISubprogram(name: "ct_kernel_exit_state", scope: !3, file: !3, line: 81, type: !3559, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4496)
!4496 = !{!4497, !4498, !4499, !4501}
!4497 = !DILocalVariable(name: "offset", arg: 1, scope: !4495, file: !3, line: 81, type: !7)
!4498 = !DILocalVariable(name: "seq", scope: !4495, file: !3, line: 83, type: !7)
!4499 = !DILocalVariable(name: "__ret_warn_on", scope: !4500, file: !3, line: 93, type: !7)
!4500 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 93, column: 2)
!4501 = !DILocalVariable(name: "__flags", scope: !4502, file: !3, line: 93, type: !7)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !3, line: 93, column: 2)
!4503 = distinct !DILexicalBlock(scope: !4500, file: !3, line: 93, column: 2)
!4504 = !DILocation(line: 81, column: 46, scope: !4495)
!4505 = !DILocation(line: 83, column: 2, scope: !4495)
!4506 = !DILocation(line: 83, column: 6, scope: !4495)
!4507 = !DILocation(line: 90, column: 2, scope: !4495)
!4508 = !DILocation(line: 91, column: 21, scope: !4495)
!4509 = !DILocation(line: 91, column: 8, scope: !4495)
!4510 = !DILocation(line: 91, column: 6, scope: !4495)
!4511 = !DILocation(line: 93, column: 2, scope: !4500)
!4512 = !DILocation(line: 93, column: 2, scope: !4503)
!4513 = !DILocation(line: 93, column: 2, scope: !4502)
!4514 = !DILocation(line: 93, column: 2, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 93, column: 2)
!4516 = !DILocation(line: 93, column: 2, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 93, column: 2)
!4518 = !{i64 2155982512, i64 2155982541, i64 2155982587, i64 2155982645, i64 2155982699, i64 2155982753, i64 2155982808, i64 2155982839, i64 2155983147, i64 2155983153, i64 2155983200, i64 2155983223, i64 2155983249}
!4519 = !DILocation(line: 93, column: 2, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4502, file: !3, line: 93, column: 2)
!4521 = !DILocation(line: 93, column: 2, scope: !4495)
!4522 = !DILocation(line: 94, column: 1, scope: !4495)
!4523 = distinct !DISubprogram(name: "preempt_count", scope: !4524, file: !4524, line: 25, type: !2107, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4525)
!4524 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!4525 = !{!4526}
!4526 = !DILocalVariable(name: "pfo_val__", scope: !4527, file: !4524, line: 27, type: !145)
!4527 = distinct !DILexicalBlock(scope: !4523, file: !4524, line: 27, column: 9)
!4528 = !DILocation(line: 27, column: 9, scope: !4527)
!4529 = !{i64 2149604187}
!4530 = !DILocation(line: 27, column: 9, scope: !4523)
!4531 = !DILocation(line: 27, column: 48, scope: !4523)
!4532 = !DILocation(line: 27, column: 2, scope: !4523)
!4533 = distinct !DISubprogram(name: "rcu_dynticks_task_enter", scope: !3, file: !3, line: 42, type: !2355, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4534 = !DILocation(line: 47, column: 1, scope: !4533)
!4535 = !DILocation(line: 260, column: 2, scope: !4169)
!4536 = !DILocation(line: 260, column: 7, scope: !4169)
!4537 = !DILocation(line: 261, column: 2, scope: !4169)
!4538 = !DILocation(line: 261, column: 27, scope: !4169)
!4539 = !DILocation(line: 261, column: 32, scope: !4175)
!4540 = !DILocation(line: 261, column: 32, scope: !4174)
!4541 = !DILocation(line: 261, column: 32, scope: !4177)
!4542 = !{i64 2156023606}
!4543 = !DILocation(line: 264, column: 2, scope: !4179)
!4544 = !DILocation(line: 264, column: 2, scope: !4182)
!4545 = !DILocation(line: 264, column: 2, scope: !4181)
!4546 = !DILocation(line: 264, column: 2, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 264, column: 2)
!4548 = !DILocation(line: 264, column: 2, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 264, column: 2)
!4550 = !{i64 2156024455, i64 2156024484, i64 2156024530, i64 2156024588, i64 2156024642, i64 2156024696, i64 2156024751, i64 2156024782, i64 2156025090, i64 2156025096, i64 2156025143, i64 2156025166, i64 2156025192}
!4551 = !DILocation(line: 264, column: 2, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4181, file: !3, line: 264, column: 2)
!4553 = !DILocation(line: 264, column: 2, scope: !4169)
!4554 = !DILocation(line: 274, column: 6, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4169, file: !3, line: 274, column: 6)
!4556 = !DILocation(line: 274, column: 6, scope: !4169)
!4557 = !DILocation(line: 276, column: 8, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 276, column: 7)
!4559 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 274, column: 38)
!4560 = !DILocation(line: 276, column: 7, scope: !4559)
!4561 = !DILocation(line: 277, column: 4, scope: !4558)
!4562 = !DILocation(line: 280, column: 3, scope: !4559)
!4563 = !DILocation(line: 283, column: 3, scope: !4559)
!4564 = !DILocation(line: 283, column: 3, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4559, file: !3, line: 283, column: 3)
!4566 = !DILocation(line: 285, column: 27, scope: !4559)
!4567 = !DILocation(line: 285, column: 31, scope: !4559)
!4568 = !DILocation(line: 285, column: 3, scope: !4559)
!4569 = !DILocation(line: 287, column: 28, scope: !4559)
!4570 = !DILocation(line: 287, column: 32, scope: !4559)
!4571 = !DILocation(line: 287, column: 3, scope: !4559)
!4572 = !DILocation(line: 289, column: 9, scope: !4559)
!4573 = !DILocation(line: 290, column: 2, scope: !4559)
!4574 = !DILocation(line: 290, column: 14, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 290, column: 13)
!4576 = !DILocation(line: 290, column: 13, scope: !4555)
!4577 = !DILocation(line: 291, column: 3, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 290, column: 24)
!4579 = !DILocation(line: 291, column: 3, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4578, file: !3, line: 291, column: 3)
!4581 = !DILocation(line: 292, column: 3, scope: !4578)
!4582 = !DILocation(line: 293, column: 2, scope: !4578)
!4583 = !DILocation(line: 294, column: 3, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 293, column: 10)
!4585 = !DILocation(line: 294, column: 3, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4584, file: !3, line: 294, column: 3)
!4587 = !DILocation(line: 297, column: 20, scope: !4169)
!4588 = !DILocation(line: 297, column: 26, scope: !4169)
!4589 = !DILocation(line: 297, column: 33, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4169, file: !3, line: 297, column: 33)
!4591 = !DILocation(line: 297, column: 49, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4169, file: !3, line: 297, column: 49)
!4593 = !DILocation(line: 298, column: 6, scope: !4169)
!4594 = !DILocation(line: 299, column: 6, scope: !4169)
!4595 = !DILocation(line: 299, column: 34, scope: !4169)
!4596 = !DILocation(line: 299, column: 32, scope: !4169)
!4597 = !DILocation(line: 299, column: 41, scope: !4169)
!4598 = !DILocation(line: 297, column: 2, scope: !4169)
!4599 = !DILocation(line: 300, column: 2, scope: !4169)
!4600 = !DILocation(line: 300, column: 2, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4169, file: !3, line: 300, column: 2)
!4602 = !DILocation(line: 301, column: 2, scope: !4169)
!4603 = !DILocation(line: 301, column: 2, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4169, file: !3, line: 301, column: 2)
!4605 = !DILocation(line: 301, column: 2, scope: !4606)
!4606 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 301, column: 2)
!4607 = !DILocation(line: 301, column: 2, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 301, column: 2)
!4609 = !DILocation(line: 303, column: 2, scope: !4169)
!4610 = !{i64 2156028900}
!4611 = !DILocation(line: 304, column: 1, scope: !4169)
!4612 = distinct !DISubprogram(name: "rcu_dynticks_task_exit", scope: !3, file: !3, line: 50, type: !2355, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4613 = !DILocation(line: 55, column: 1, scope: !4612)
!4614 = distinct !DISubprogram(name: "ct_kernel_enter_state", scope: !3, file: !3, line: 101, type: !3559, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4615)
!4615 = !{!4616, !4617, !4618, !4620}
!4616 = !DILocalVariable(name: "offset", arg: 1, scope: !4614, file: !3, line: 101, type: !7)
!4617 = !DILocalVariable(name: "seq", scope: !4614, file: !3, line: 103, type: !7)
!4618 = !DILocalVariable(name: "__ret_warn_on", scope: !4619, file: !3, line: 113, type: !7)
!4619 = distinct !DILexicalBlock(scope: !4614, file: !3, line: 113, column: 2)
!4620 = !DILocalVariable(name: "__flags", scope: !4621, file: !3, line: 113, type: !7)
!4621 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 113, column: 2)
!4622 = distinct !DILexicalBlock(scope: !4619, file: !3, line: 113, column: 2)
!4623 = !DILocation(line: 101, column: 47, scope: !4614)
!4624 = !DILocation(line: 103, column: 2, scope: !4614)
!4625 = !DILocation(line: 103, column: 6, scope: !4614)
!4626 = !DILocation(line: 110, column: 21, scope: !4614)
!4627 = !DILocation(line: 110, column: 8, scope: !4614)
!4628 = !DILocation(line: 110, column: 6, scope: !4614)
!4629 = !DILocation(line: 112, column: 2, scope: !4614)
!4630 = !DILocation(line: 113, column: 2, scope: !4619)
!4631 = !DILocation(line: 113, column: 2, scope: !4622)
!4632 = !DILocation(line: 113, column: 2, scope: !4621)
!4633 = !DILocation(line: 113, column: 2, scope: !4634)
!4634 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 113, column: 2)
!4635 = !DILocation(line: 113, column: 2, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 113, column: 2)
!4637 = !{i64 2155985202, i64 2155985231, i64 2155985277, i64 2155985335, i64 2155985389, i64 2155985443, i64 2155985498, i64 2155985529, i64 2155985837, i64 2155985843, i64 2155985890, i64 2155985913, i64 2155985939}
!4638 = !DILocation(line: 113, column: 2, scope: !4639)
!4639 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 113, column: 2)
!4640 = !DILocation(line: 113, column: 2, scope: !4614)
!4641 = !DILocation(line: 114, column: 1, scope: !4614)
!4642 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4479, file: !4479, line: 66, type: !4480, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4643)
!4643 = !{!4644, !4645}
!4644 = !DILocalVariable(name: "v", arg: 1, scope: !4642, file: !4479, line: 66, type: !4482)
!4645 = !DILocalVariable(name: "size", arg: 2, scope: !4642, file: !4479, line: 66, type: !1117)
!4646 = !DILocation(line: 66, column: 73, scope: !4642)
!4647 = !DILocation(line: 66, column: 83, scope: !4642)
!4648 = !DILocation(line: 68, column: 19, scope: !4642)
!4649 = !DILocation(line: 68, column: 22, scope: !4642)
!4650 = !DILocation(line: 68, column: 2, scope: !4642)
!4651 = !DILocation(line: 69, column: 2, scope: !4642)
!4652 = !DILocation(line: 70, column: 1, scope: !4642)
!4653 = distinct !DISubprogram(name: "rcu_irq_enter_check_tick", scope: !4654, file: !4654, line: 22, type: !2355, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4654 = !DIFile(filename: "./include/linux/hardirq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e28e97c9e9f6f4db7783a84a063e2e35")
!4655 = !DILocation(line: 24, column: 6, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4653, file: !4654, line: 24, column: 6)
!4657 = !DILocation(line: 24, column: 6, scope: !4653)
!4658 = !DILocation(line: 25, column: 3, scope: !4656)
!4659 = !DILocation(line: 26, column: 1, scope: !4653)
!4660 = distinct !DISubprogram(name: "ct_idle_enter", scope: !3, file: !3, line: 317, type: !2355, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4661)
!4661 = !{!4662, !4664}
!4662 = !DILocalVariable(name: "__ret_warn_on", scope: !4663, file: !3, line: 319, type: !7)
!4663 = distinct !DILexicalBlock(scope: !4660, file: !3, line: 319, column: 2)
!4664 = !DILocalVariable(name: "__flags", scope: !4665, file: !3, line: 319, type: !7)
!4665 = distinct !DILexicalBlock(scope: !4666, file: !3, line: 319, column: 2)
!4666 = distinct !DILexicalBlock(scope: !4663, file: !3, line: 319, column: 2)
!4667 = !DILocation(line: 319, column: 2, scope: !4663)
!4668 = !DILocation(line: 319, column: 2, scope: !4666)
!4669 = !DILocation(line: 319, column: 2, scope: !4665)
!4670 = !DILocation(line: 319, column: 2, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 319, column: 2)
!4672 = !DILocation(line: 319, column: 2, scope: !4673)
!4673 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 319, column: 2)
!4674 = !{i64 2156030640, i64 2156030669, i64 2156030715, i64 2156030773, i64 2156030827, i64 2156030881, i64 2156030936, i64 2156030967, i64 2156031275, i64 2156031281, i64 2156031328, i64 2156031351, i64 2156031377}
!4675 = !DILocation(line: 319, column: 2, scope: !4676)
!4676 = distinct !DILexicalBlock(scope: !4665, file: !3, line: 319, column: 2)
!4677 = !DILocation(line: 319, column: 2, scope: !4660)
!4678 = !DILocation(line: 320, column: 2, scope: !4660)
!4679 = !DILocation(line: 321, column: 1, scope: !4660)
!4680 = !DILocation(line: 124, column: 41, scope: !4239)
!4681 = !DILocation(line: 124, column: 51, scope: !4239)
!4682 = !DILocation(line: 126, column: 2, scope: !4239)
!4683 = !DILocation(line: 126, column: 27, scope: !4239)
!4684 = !DILocation(line: 126, column: 32, scope: !4248)
!4685 = !DILocation(line: 126, column: 32, scope: !4247)
!4686 = !DILocation(line: 126, column: 32, scope: !4250)
!4687 = !{i64 2155986880}
!4688 = !DILocation(line: 128, column: 2, scope: !4252)
!4689 = !DILocation(line: 128, column: 2, scope: !4255)
!4690 = !DILocation(line: 128, column: 2, scope: !4254)
!4691 = !DILocation(line: 128, column: 2, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 128, column: 2)
!4693 = !DILocation(line: 128, column: 2, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 128, column: 2)
!4695 = !{i64 2155987802, i64 2155987831, i64 2155987877, i64 2155987935, i64 2155987989, i64 2155988043, i64 2155988098, i64 2155988129, i64 2155988437, i64 2155988443, i64 2155988490, i64 2155988513, i64 2155988539}
!4696 = !DILocation(line: 128, column: 2, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4254, file: !3, line: 128, column: 2)
!4698 = !DILocation(line: 128, column: 2, scope: !4239)
!4699 = !DILocation(line: 129, column: 2, scope: !4239)
!4700 = !DILocation(line: 129, column: 2, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 129, column: 2)
!4702 = !DILocation(line: 129, column: 2, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 129, column: 2)
!4704 = !DILocation(line: 129, column: 2, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4701, file: !3, line: 129, column: 2)
!4706 = !DILocation(line: 130, column: 2, scope: !4257)
!4707 = !DILocation(line: 130, column: 2, scope: !4260)
!4708 = !DILocation(line: 130, column: 2, scope: !4259)
!4709 = !DILocation(line: 130, column: 2, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 130, column: 2)
!4711 = !DILocation(line: 130, column: 2, scope: !4712)
!4712 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 130, column: 2)
!4713 = !{i64 2155992558, i64 2155992587, i64 2155992633, i64 2155992691, i64 2155992745, i64 2155992799, i64 2155992854, i64 2155992885, i64 2155993193, i64 2155993199, i64 2155993246, i64 2155993269, i64 2155993295}
!4714 = !DILocation(line: 130, column: 2, scope: !4715)
!4715 = distinct !DILexicalBlock(scope: !4259, file: !3, line: 130, column: 2)
!4716 = !DILocation(line: 130, column: 2, scope: !4239)
!4717 = !DILocation(line: 132, column: 6, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 132, column: 6)
!4719 = !DILocation(line: 132, column: 28, scope: !4718)
!4720 = !DILocation(line: 132, column: 6, scope: !4239)
!4721 = !DILocation(line: 134, column: 3, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 132, column: 34)
!4723 = !DILocation(line: 134, column: 7, scope: !4722)
!4724 = !DILocation(line: 134, column: 23, scope: !4722)
!4725 = !DILocation(line: 135, column: 3, scope: !4722)
!4726 = !DILocation(line: 138, column: 2, scope: !4239)
!4727 = !DILocation(line: 138, column: 2, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 138, column: 2)
!4729 = !DILocation(line: 139, column: 2, scope: !4239)
!4730 = !DILocation(line: 139, column: 2, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 139, column: 2)
!4732 = !DILocation(line: 140, column: 20, scope: !4733)
!4733 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 140, column: 20)
!4734 = !DILocation(line: 140, column: 34, scope: !4239)
!4735 = !DILocation(line: 140, column: 60, scope: !4239)
!4736 = !DILocation(line: 140, column: 2, scope: !4239)
!4737 = !DILocation(line: 141, column: 2, scope: !4262)
!4738 = !DILocation(line: 141, column: 2, scope: !4265)
!4739 = !DILocation(line: 141, column: 2, scope: !4264)
!4740 = !DILocation(line: 141, column: 2, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 141, column: 2)
!4742 = !DILocation(line: 141, column: 2, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 141, column: 2)
!4744 = !{i64 2155995232, i64 2155995261, i64 2155995307, i64 2155995365, i64 2155995419, i64 2155995473, i64 2155995528, i64 2155995559, i64 2155995867, i64 2155995873, i64 2155995920, i64 2155995943, i64 2155995969}
!4745 = !DILocation(line: 141, column: 2, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4264, file: !3, line: 141, column: 2)
!4747 = !DILocation(line: 141, column: 2, scope: !4239)
!4748 = !DILocation(line: 142, column: 26, scope: !4239)
!4749 = !DILocation(line: 142, column: 2, scope: !4239)
!4750 = !DILocation(line: 145, column: 27, scope: !4239)
!4751 = !DILocation(line: 145, column: 31, scope: !4239)
!4752 = !DILocation(line: 145, column: 2, scope: !4239)
!4753 = !DILocation(line: 147, column: 2, scope: !4239)
!4754 = !DILocation(line: 147, column: 2, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 147, column: 2)
!4756 = !DILocation(line: 148, column: 2, scope: !4239)
!4757 = !DILocation(line: 148, column: 2, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4239, file: !3, line: 148, column: 2)
!4759 = !DILocation(line: 148, column: 2, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 148, column: 2)
!4761 = !DILocation(line: 148, column: 2, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4758, file: !3, line: 148, column: 2)
!4763 = !DILocation(line: 150, column: 23, scope: !4239)
!4764 = !DILocation(line: 150, column: 2, scope: !4239)
!4765 = !DILocation(line: 152, column: 2, scope: !4239)
!4766 = !DILocation(line: 153, column: 1, scope: !4239)
!4767 = distinct !DISubprogram(name: "ct_idle_exit", scope: !3, file: !3, line: 333, type: !2355, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4768)
!4768 = !{!4769, !4770, !4773, !4774, !4777}
!4769 = !DILocalVariable(name: "flags", scope: !4767, file: !3, line: 335, type: !119)
!4770 = !DILocalVariable(name: "__dummy", scope: !4771, file: !3, line: 337, type: !119)
!4771 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 337, column: 2)
!4772 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 337, column: 2)
!4773 = !DILocalVariable(name: "__dummy2", scope: !4771, file: !3, line: 337, type: !119)
!4774 = !DILocalVariable(name: "__dummy", scope: !4775, file: !3, line: 339, type: !119)
!4775 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 339, column: 2)
!4776 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 339, column: 2)
!4777 = !DILocalVariable(name: "__dummy2", scope: !4775, file: !3, line: 339, type: !119)
!4778 = !DILocation(line: 335, column: 2, scope: !4767)
!4779 = !DILocation(line: 335, column: 16, scope: !4767)
!4780 = !DILocation(line: 337, column: 2, scope: !4767)
!4781 = !DILocation(line: 337, column: 2, scope: !4771)
!4782 = !DILocation(line: 337, column: 2, scope: !4772)
!4783 = !DILocation(line: 338, column: 2, scope: !4767)
!4784 = !DILocation(line: 339, column: 2, scope: !4767)
!4785 = !DILocation(line: 339, column: 2, scope: !4775)
!4786 = !DILocation(line: 339, column: 2, scope: !4776)
!4787 = !DILocation(line: 339, column: 2, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4776, file: !3, line: 339, column: 2)
!4789 = !DILocation(line: 340, column: 1, scope: !4767)
!4790 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4791, file: !4791, line: 101, type: !4792, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4794)
!4791 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!4792 = !DISubroutineType(types: !4793)
!4793 = !{!119}
!4794 = !{!4795}
!4795 = !DILocalVariable(name: "flags", scope: !4790, file: !4791, line: 103, type: !119)
!4796 = !DILocation(line: 103, column: 2, scope: !4790)
!4797 = !DILocation(line: 103, column: 16, scope: !4790)
!4798 = !DILocation(line: 103, column: 24, scope: !4790)
!4799 = !DILocation(line: 104, column: 2, scope: !4790)
!4800 = !DILocation(line: 105, column: 9, scope: !4790)
!4801 = !DILocation(line: 106, column: 1, scope: !4790)
!4802 = !DILocation(line: 105, column: 2, scope: !4790)
!4803 = !DILocation(line: 163, column: 42, scope: !4270)
!4804 = !DILocation(line: 163, column: 52, scope: !4270)
!4805 = !DILocation(line: 165, column: 2, scope: !4270)
!4806 = !DILocation(line: 165, column: 27, scope: !4270)
!4807 = !DILocation(line: 165, column: 32, scope: !4277)
!4808 = !DILocation(line: 165, column: 32, scope: !4276)
!4809 = !DILocation(line: 165, column: 32, scope: !4279)
!4810 = !{i64 2155999228}
!4811 = !DILocation(line: 166, column: 2, scope: !4270)
!4812 = !DILocation(line: 166, column: 7, scope: !4270)
!4813 = !DILocation(line: 168, column: 2, scope: !4282)
!4814 = !DILocation(line: 168, column: 2, scope: !4285)
!4815 = !DILocation(line: 168, column: 2, scope: !4284)
!4816 = !DILocation(line: 168, column: 2, scope: !4817)
!4817 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 168, column: 2)
!4818 = !DILocation(line: 168, column: 2, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 168, column: 2)
!4820 = !{i64 2156000913, i64 2156000942, i64 2156000988, i64 2156001046, i64 2156001100, i64 2156001154, i64 2156001209, i64 2156001240, i64 2156001548, i64 2156001554, i64 2156001601, i64 2156001624, i64 2156001650}
!4821 = !DILocation(line: 168, column: 2, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4284, file: !3, line: 168, column: 2)
!4823 = !DILocation(line: 168, column: 2, scope: !4270)
!4824 = !DILocation(line: 169, column: 11, scope: !4270)
!4825 = !DILocation(line: 169, column: 9, scope: !4270)
!4826 = !DILocation(line: 170, column: 2, scope: !4287)
!4827 = !DILocation(line: 170, column: 2, scope: !4290)
!4828 = !DILocation(line: 170, column: 2, scope: !4289)
!4829 = !DILocation(line: 170, column: 2, scope: !4830)
!4830 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 170, column: 2)
!4831 = !DILocation(line: 170, column: 2, scope: !4832)
!4832 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 170, column: 2)
!4833 = !{i64 2156003258, i64 2156003287, i64 2156003333, i64 2156003391, i64 2156003445, i64 2156003499, i64 2156003554, i64 2156003585, i64 2156003893, i64 2156003899, i64 2156003946, i64 2156003969, i64 2156003995}
!4834 = !DILocation(line: 170, column: 2, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 170, column: 2)
!4836 = !DILocation(line: 170, column: 2, scope: !4270)
!4837 = !DILocation(line: 171, column: 6, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 171, column: 6)
!4839 = !DILocation(line: 171, column: 6, scope: !4270)
!4840 = !DILocation(line: 173, column: 3, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4838, file: !3, line: 171, column: 14)
!4842 = !DILocation(line: 173, column: 7, scope: !4841)
!4843 = !DILocation(line: 173, column: 23, scope: !4841)
!4844 = !DILocation(line: 174, column: 3, scope: !4841)
!4845 = !DILocation(line: 176, column: 2, scope: !4270)
!4846 = !DILocation(line: 178, column: 24, scope: !4270)
!4847 = !DILocation(line: 178, column: 2, scope: !4270)
!4848 = !DILocation(line: 180, column: 2, scope: !4270)
!4849 = !DILocation(line: 180, column: 2, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 180, column: 2)
!4851 = !DILocation(line: 183, column: 27, scope: !4270)
!4852 = !DILocation(line: 183, column: 31, scope: !4270)
!4853 = !DILocation(line: 183, column: 2, scope: !4270)
!4854 = !DILocation(line: 185, column: 20, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 185, column: 20)
!4856 = !DILocation(line: 185, column: 32, scope: !4270)
!4857 = !DILocation(line: 185, column: 58, scope: !4270)
!4858 = !DILocation(line: 185, column: 2, scope: !4270)
!4859 = !DILocation(line: 186, column: 2, scope: !4292)
!4860 = !DILocation(line: 186, column: 2, scope: !4295)
!4861 = !DILocation(line: 186, column: 2, scope: !4294)
!4862 = !DILocation(line: 186, column: 2, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 186, column: 2)
!4864 = !DILocation(line: 186, column: 2, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 186, column: 2)
!4866 = !{i64 2156005911, i64 2156005940, i64 2156005986, i64 2156006044, i64 2156006098, i64 2156006152, i64 2156006207, i64 2156006238, i64 2156006546, i64 2156006552, i64 2156006599, i64 2156006622, i64 2156006648}
!4867 = !DILocation(line: 186, column: 2, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4294, file: !3, line: 186, column: 2)
!4869 = !DILocation(line: 186, column: 2, scope: !4270)
!4870 = !DILocation(line: 187, column: 2, scope: !4270)
!4871 = !DILocation(line: 187, column: 2, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 187, column: 2)
!4873 = !DILocation(line: 187, column: 2, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 187, column: 2)
!4875 = !DILocation(line: 187, column: 2, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 187, column: 2)
!4877 = !DILocation(line: 188, column: 2, scope: !4297)
!4878 = !DILocation(line: 188, column: 2, scope: !4300)
!4879 = !DILocation(line: 188, column: 2, scope: !4299)
!4880 = !DILocation(line: 188, column: 2, scope: !4881)
!4881 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 188, column: 2)
!4882 = !DILocation(line: 188, column: 2, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 188, column: 2)
!4884 = !{i64 2156009741, i64 2156009770, i64 2156009816, i64 2156009874, i64 2156009928, i64 2156009982, i64 2156010037, i64 2156010068, i64 2156010376, i64 2156010382, i64 2156010429, i64 2156010452, i64 2156010478}
!4885 = !DILocation(line: 188, column: 2, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4299, file: !3, line: 188, column: 2)
!4887 = !DILocation(line: 188, column: 2, scope: !4270)
!4888 = !DILocation(line: 189, column: 2, scope: !4270)
!4889 = !DILocation(line: 189, column: 2, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 189, column: 2)
!4891 = !DILocation(line: 189, column: 2, scope: !4892)
!4892 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 189, column: 2)
!4893 = !DILocation(line: 189, column: 2, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 189, column: 2)
!4895 = !DILocation(line: 190, column: 2, scope: !4270)
!4896 = !DILocation(line: 190, column: 2, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4270, file: !3, line: 190, column: 2)
!4898 = !DILocation(line: 191, column: 1, scope: !4270)
!4899 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4791, file: !4791, line: 132, type: !4900, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4902)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{null, !119}
!4902 = !{!4903}
!4903 = !DILocalVariable(name: "flags", arg: 1, scope: !4899, file: !4791, line: 132, type: !119)
!4904 = !DILocation(line: 132, column: 66, scope: !4899)
!4905 = !DILocation(line: 134, column: 32, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4899, file: !4791, line: 134, column: 6)
!4907 = !DILocation(line: 134, column: 7, scope: !4906)
!4908 = !DILocation(line: 134, column: 6, scope: !4899)
!4909 = !DILocation(line: 135, column: 3, scope: !4906)
!4910 = !DILocation(line: 136, column: 1, scope: !4899)
!4911 = distinct !DISubprogram(name: "ct_irq_enter", scope: !3, file: !3, line: 365, type: !2355, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4912 = !DILocation(line: 367, column: 2, scope: !4911)
!4913 = !DILocation(line: 367, column: 2, scope: !4914)
!4914 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 367, column: 2)
!4915 = !DILocation(line: 368, column: 2, scope: !4911)
!4916 = !DILocation(line: 369, column: 1, scope: !4911)
!4917 = distinct !DISubprogram(name: "ct_irq_exit", scope: !3, file: !3, line: 390, type: !2355, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4918 = !DILocation(line: 392, column: 2, scope: !4917)
!4919 = !DILocation(line: 392, column: 2, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4917, file: !3, line: 392, column: 2)
!4921 = !DILocation(line: 393, column: 2, scope: !4917)
!4922 = !DILocation(line: 394, column: 1, scope: !4917)
!4923 = distinct !DISubprogram(name: "ct_irq_enter_irqson", scope: !3, file: !3, line: 402, type: !2355, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4924)
!4924 = !{!4925, !4926, !4930, !4931, !4935}
!4925 = !DILocalVariable(name: "flags", scope: !4923, file: !3, line: 404, type: !119)
!4926 = !DILocalVariable(name: "__dummy", scope: !4927, file: !3, line: 406, type: !119)
!4927 = distinct !DILexicalBlock(scope: !4928, file: !3, line: 406, column: 2)
!4928 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 406, column: 2)
!4929 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 406, column: 2)
!4930 = !DILocalVariable(name: "__dummy2", scope: !4927, file: !3, line: 406, type: !119)
!4931 = !DILocalVariable(name: "__dummy", scope: !4932, file: !3, line: 408, type: !119)
!4932 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 408, column: 2)
!4933 = distinct !DILexicalBlock(scope: !4934, file: !3, line: 408, column: 2)
!4934 = distinct !DILexicalBlock(scope: !4923, file: !3, line: 408, column: 2)
!4935 = !DILocalVariable(name: "__dummy2", scope: !4932, file: !3, line: 408, type: !119)
!4936 = !DILocation(line: 404, column: 2, scope: !4923)
!4937 = !DILocation(line: 404, column: 16, scope: !4923)
!4938 = !DILocation(line: 406, column: 2, scope: !4923)
!4939 = !DILocation(line: 406, column: 2, scope: !4929)
!4940 = !DILocation(line: 406, column: 2, scope: !4927)
!4941 = !DILocation(line: 406, column: 2, scope: !4928)
!4942 = !DILocation(line: 407, column: 2, scope: !4923)
!4943 = !DILocation(line: 408, column: 2, scope: !4923)
!4944 = !DILocation(line: 408, column: 2, scope: !4934)
!4945 = !DILocation(line: 408, column: 2, scope: !4932)
!4946 = !DILocation(line: 408, column: 2, scope: !4933)
!4947 = !DILocation(line: 408, column: 2, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4933, file: !3, line: 408, column: 2)
!4949 = !DILocation(line: 409, column: 1, scope: !4923)
!4950 = distinct !DISubprogram(name: "ct_irq_exit_irqson", scope: !3, file: !3, line: 417, type: !2355, scopeLine: 418, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4951)
!4951 = !{!4952, !4953, !4957, !4958, !4962}
!4952 = !DILocalVariable(name: "flags", scope: !4950, file: !3, line: 419, type: !119)
!4953 = !DILocalVariable(name: "__dummy", scope: !4954, file: !3, line: 421, type: !119)
!4954 = distinct !DILexicalBlock(scope: !4955, file: !3, line: 421, column: 2)
!4955 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 421, column: 2)
!4956 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 421, column: 2)
!4957 = !DILocalVariable(name: "__dummy2", scope: !4954, file: !3, line: 421, type: !119)
!4958 = !DILocalVariable(name: "__dummy", scope: !4959, file: !3, line: 423, type: !119)
!4959 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 423, column: 2)
!4960 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 423, column: 2)
!4961 = distinct !DILexicalBlock(scope: !4950, file: !3, line: 423, column: 2)
!4962 = !DILocalVariable(name: "__dummy2", scope: !4959, file: !3, line: 423, type: !119)
!4963 = !DILocation(line: 419, column: 2, scope: !4950)
!4964 = !DILocation(line: 419, column: 16, scope: !4950)
!4965 = !DILocation(line: 421, column: 2, scope: !4950)
!4966 = !DILocation(line: 421, column: 2, scope: !4956)
!4967 = !DILocation(line: 421, column: 2, scope: !4954)
!4968 = !DILocation(line: 421, column: 2, scope: !4955)
!4969 = !DILocation(line: 422, column: 2, scope: !4950)
!4970 = !DILocation(line: 423, column: 2, scope: !4950)
!4971 = !DILocation(line: 423, column: 2, scope: !4961)
!4972 = !DILocation(line: 423, column: 2, scope: !4959)
!4973 = !DILocation(line: 423, column: 2, scope: !4960)
!4974 = !DILocation(line: 423, column: 2, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4960, file: !3, line: 423, column: 2)
!4976 = !DILocation(line: 424, column: 1, scope: !4950)
!4977 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !4978, file: !4978, line: 313, type: !4979, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4981)
!4978 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!4979 = !DISubroutineType(types: !4980)
!4980 = !{null, !810}
!4981 = !{!4982}
!4982 = !DILocalVariable(name: "op", arg: 1, scope: !4977, file: !4978, line: 313, type: !810)
!4983 = !DILocation(line: 313, column: 66, scope: !4977)
!4984 = !DILocation(line: 313, column: 72, scope: !4977)
!4985 = distinct !DISubprogram(name: "raw_atomic_read", scope: !4986, file: !4986, line: 442, type: !4987, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4991)
!4986 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!4987 = !DISubroutineType(types: !4988)
!4988 = !{!7, !4989}
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!4991 = !{!4992}
!4992 = !DILocalVariable(name: "v", arg: 1, scope: !4985, file: !4986, line: 442, type: !4989)
!4993 = !DILocation(line: 442, column: 33, scope: !4985)
!4994 = !DILocation(line: 444, column: 26, scope: !4985)
!4995 = !DILocation(line: 444, column: 9, scope: !4985)
!4996 = !DILocation(line: 444, column: 2, scope: !4985)
!4997 = distinct !DISubprogram(name: "arch_atomic_read", scope: !4998, file: !4998, line: 17, type: !4987, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4999)
!4998 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!4999 = !{!5000}
!5000 = !DILocalVariable(name: "v", arg: 1, scope: !4997, file: !4998, line: 17, type: !4989)
!5001 = !DILocation(line: 17, column: 61, scope: !4997)
!5002 = !DILocation(line: 23, column: 9, scope: !4997)
!5003 = !DILocation(line: 23, column: 2, scope: !4997)
!5004 = distinct !DISubprogram(name: "static_key_false", scope: !2315, file: !2315, line: 205, type: !5005, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5019)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!807, !5007}
!5007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5008, size: 64)
!5008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2315, line: 85, size: 128, elements: !5009)
!5009 = !{!5010, !5011}
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5008, file: !2315, line: 86, baseType: !108, size: 32)
!5011 = !DIDerivedType(tag: DW_TAG_member, scope: !5008, file: !2315, line: 101, baseType: !5012, size: 64, offset: 64)
!5012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5008, file: !2315, line: 101, size: 64, elements: !5013)
!5013 = !{!5014, !5015, !5016}
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5012, file: !2315, line: 102, baseType: !119, size: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5012, file: !2315, line: 103, baseType: !2313, size: 64)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5012, file: !2315, line: 104, baseType: !5017, size: 64)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5018, size: 64)
!5018 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2315, line: 104, flags: DIFlagFwdDecl)
!5019 = !{!5020}
!5020 = !DILocalVariable(name: "key", arg: 1, scope: !5004, file: !2315, line: 205, type: !5007)
!5021 = !DILocation(line: 205, column: 65, scope: !5004)
!5022 = !DILocation(line: 207, column: 28, scope: !5004)
!5023 = !DILocation(line: 207, column: 9, scope: !5004)
!5024 = !DILocation(line: 207, column: 2, scope: !5004)
!5025 = distinct !DISubprogram(name: "cpu_online", scope: !138, file: !138, line: 1080, type: !5026, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5028)
!5026 = !DISubroutineType(types: !5027)
!5027 = !{!807, !17}
!5028 = !{!5029}
!5029 = !DILocalVariable(name: "cpu", arg: 1, scope: !5025, file: !138, line: 1080, type: !17)
!5030 = !DILocation(line: 1080, column: 44, scope: !5025)
!5031 = !DILocation(line: 1082, column: 26, scope: !5025)
!5032 = !DILocation(line: 1082, column: 9, scope: !5025)
!5033 = !DILocation(line: 1082, column: 2, scope: !5025)
!5034 = distinct !DISubprogram(name: "__preempt_count_add", scope: !4524, file: !4524, line: 78, type: !3559, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5035)
!5035 = !{!5036, !5037, !5039}
!5036 = !DILocalVariable(name: "val", arg: 1, scope: !5034, file: !4524, line: 78, type: !7)
!5037 = !DILocalVariable(name: "pao_ID__", scope: !5038, file: !4524, line: 80, type: !2199)
!5038 = distinct !DILexicalBlock(scope: !5034, file: !4524, line: 80, column: 2)
!5039 = !DILocalVariable(name: "pto_val__", scope: !5040, file: !4524, line: 80, type: !145)
!5040 = distinct !DILexicalBlock(scope: !5041, file: !4524, line: 80, column: 2)
!5041 = distinct !DILexicalBlock(scope: !5042, file: !4524, line: 80, column: 2)
!5042 = distinct !DILexicalBlock(scope: !5038, file: !4524, line: 80, column: 2)
!5043 = !DILocation(line: 78, column: 53, scope: !5034)
!5044 = !DILocation(line: 80, column: 2, scope: !5034)
!5045 = !DILocation(line: 80, column: 2, scope: !5038)
!5046 = !DILocation(line: 80, column: 2, scope: !5042)
!5047 = !DILocation(line: 80, column: 2, scope: !5048)
!5048 = distinct !DILexicalBlock(scope: !5042, file: !4524, line: 80, column: 2)
!5049 = !{i64 2149614152}
!5050 = !DILocation(line: 80, column: 2, scope: !5041)
!5051 = !DILocation(line: 80, column: 2, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5041, file: !4524, line: 80, column: 2)
!5053 = !{i64 2149614447}
!5054 = !DILocation(line: 80, column: 2, scope: !5040)
!5055 = !{i64 2149615152}
!5056 = !DILocation(line: 81, column: 1, scope: !5034)
!5057 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !4524, file: !4524, line: 93, type: !1842, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5058)
!5058 = !{!5059}
!5059 = !DILocalVariable(name: "c", scope: !5060, file: !4524, line: 95, type: !807)
!5060 = distinct !DILexicalBlock(scope: !5057, file: !4524, line: 95, column: 9)
!5061 = !DILocation(line: 95, column: 9, scope: !5060)
!5062 = !{i64 2149618508, i64 2149618601}
!5063 = !{i8 0, i8 2}
!5064 = !DILocation(line: 95, column: 9, scope: !5057)
!5065 = !DILocation(line: 95, column: 2, scope: !5057)
!5066 = distinct !DISubprogram(name: "arch_static_branch", scope: !5067, file: !5067, line: 25, type: !5068, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5070)
!5067 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5068 = !DISubroutineType(types: !5069)
!5069 = !{!807, !5007, !807}
!5070 = !{!5071, !5072, !5073}
!5071 = !DILocalVariable(name: "key", arg: 1, scope: !5066, file: !5067, line: 25, type: !5007)
!5072 = !DILocalVariable(name: "branch", arg: 2, scope: !5066, file: !5067, line: 25, type: !807)
!5073 = !DILabel(scope: !5066, name: "l_yes", file: !5067, line: 33)
!5074 = !DILocation(line: 25, column: 67, scope: !5066)
!5075 = !DILocation(line: 25, column: 77, scope: !5066)
!5076 = !DILocation(line: 30, column: 13, scope: !5066)
!5077 = !DILocation(line: 30, column: 28, scope: !5066)
!5078 = !DILocation(line: 30, column: 26, scope: !5066)
!5079 = !DILocation(line: 27, column: 2, scope: !5066)
!5080 = !{i64 1506249, i64 1506293, i64 2148990976, i64 2148990997, i64 2148991023, i64 2148991056, i64 2148991090, i64 2148991114}
!5081 = !DILocation(line: 32, column: 2, scope: !5066)
!5082 = !DILocation(line: 33, column: 1, scope: !5066)
!5083 = !DILocation(line: 34, column: 2, scope: !5066)
!5084 = !DILocation(line: 35, column: 1, scope: !5066)
!5085 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !138, file: !138, line: 502, type: !5086, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5088)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!807, !7, !135}
!5088 = !{!5089, !5090}
!5089 = !DILocalVariable(name: "cpu", arg: 1, scope: !5085, file: !138, line: 502, type: !7)
!5090 = !DILocalVariable(name: "cpumask", arg: 2, scope: !5085, file: !138, line: 502, type: !135)
!5091 = !DILocation(line: 502, column: 50, scope: !5085)
!5092 = !DILocation(line: 502, column: 77, scope: !5085)
!5093 = !DILocation(line: 504, column: 9, scope: !5085)
!5094 = !DILocation(line: 504, column: 2, scope: !5085)
!5095 = distinct !DISubprogram(name: "_test_bit", scope: !5096, file: !5096, line: 139, type: !5097, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5102)
!5096 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5097 = !DISubroutineType(types: !5098)
!5098 = !{!807, !119, !5099}
!5099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5100, size: 64)
!5100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5101)
!5101 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !119)
!5102 = !{!5103, !5104}
!5103 = !DILocalVariable(name: "nr", arg: 1, scope: !5095, file: !5096, line: 139, type: !119)
!5104 = !DILocalVariable(name: "addr", arg: 2, scope: !5095, file: !5096, line: 139, type: !5099)
!5105 = !DILocation(line: 139, column: 25, scope: !5095)
!5106 = !DILocation(line: 139, column: 59, scope: !5095)
!5107 = !DILocation(line: 141, column: 25, scope: !5095)
!5108 = !DILocation(line: 141, column: 32, scope: !5095)
!5109 = !DILocation(line: 141, column: 30, scope: !5095)
!5110 = !DILocation(line: 141, column: 2, scope: !5095)
!5111 = !DILocation(line: 142, column: 23, scope: !5095)
!5112 = !DILocation(line: 142, column: 27, scope: !5095)
!5113 = !DILocation(line: 142, column: 9, scope: !5095)
!5114 = !DILocation(line: 142, column: 2, scope: !5095)
!5115 = distinct !DISubprogram(name: "cpumask_check", scope: !138, file: !138, line: 148, type: !5116, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5118)
!5116 = !DISubroutineType(types: !5117)
!5117 = !{!17, !17}
!5118 = !{!5119}
!5119 = !DILocalVariable(name: "cpu", arg: 1, scope: !5115, file: !138, line: 148, type: !17)
!5120 = !DILocation(line: 148, column: 64, scope: !5115)
!5121 = !DILocation(line: 150, column: 20, scope: !5115)
!5122 = !DILocation(line: 150, column: 2, scope: !5115)
!5123 = !DILocation(line: 151, column: 9, scope: !5115)
!5124 = !DILocation(line: 151, column: 2, scope: !5115)
!5125 = distinct !DISubprogram(name: "arch_test_bit", scope: !5126, file: !5126, line: 237, type: !5097, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5127)
!5126 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5127 = !{!5128, !5129}
!5128 = !DILocalVariable(name: "nr", arg: 1, scope: !5125, file: !5126, line: 237, type: !119)
!5129 = !DILocalVariable(name: "addr", arg: 2, scope: !5125, file: !5126, line: 237, type: !5099)
!5130 = !DILocation(line: 237, column: 29, scope: !5125)
!5131 = !DILocation(line: 237, column: 63, scope: !5125)
!5132 = !DILocation(line: 239, column: 30, scope: !5125)
!5133 = !DILocation(line: 239, column: 9, scope: !5125)
!5134 = !DILocation(line: 239, column: 54, scope: !5125)
!5135 = !DILocation(line: 239, column: 58, scope: !5125)
!5136 = !DILocation(line: 239, column: 36, scope: !5125)
!5137 = !DILocation(line: 240, column: 26, scope: !5125)
!5138 = !DILocation(line: 240, column: 30, scope: !5125)
!5139 = !DILocation(line: 240, column: 8, scope: !5125)
!5140 = !DILocation(line: 239, column: 2, scope: !5125)
!5141 = distinct !DISubprogram(name: "constant_test_bit", scope: !5126, file: !5126, line: 204, type: !5142, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5144)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!807, !114, !5099}
!5144 = !{!5145, !5146}
!5145 = !DILocalVariable(name: "nr", arg: 1, scope: !5141, file: !5126, line: 204, type: !114)
!5146 = !DILocalVariable(name: "addr", arg: 2, scope: !5141, file: !5126, line: 204, type: !5099)
!5147 = !DILocation(line: 204, column: 52, scope: !5141)
!5148 = !DILocation(line: 204, column: 86, scope: !5141)
!5149 = !DILocation(line: 206, column: 19, scope: !5141)
!5150 = !DILocation(line: 206, column: 22, scope: !5141)
!5151 = !DILocation(line: 206, column: 15, scope: !5141)
!5152 = !DILocation(line: 207, column: 4, scope: !5141)
!5153 = !DILocation(line: 207, column: 9, scope: !5141)
!5154 = !DILocation(line: 207, column: 12, scope: !5141)
!5155 = !DILocation(line: 206, column: 44, scope: !5141)
!5156 = !DILocation(line: 207, column: 37, scope: !5141)
!5157 = !DILocation(line: 206, column: 2, scope: !5141)
!5158 = distinct !DISubprogram(name: "variable_test_bit", scope: !5126, file: !5126, line: 224, type: !5142, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5159)
!5159 = !{!5160, !5161, !5162}
!5160 = !DILocalVariable(name: "nr", arg: 1, scope: !5158, file: !5126, line: 224, type: !114)
!5161 = !DILocalVariable(name: "addr", arg: 2, scope: !5158, file: !5126, line: 224, type: !5099)
!5162 = !DILocalVariable(name: "oldbit", scope: !5158, file: !5126, line: 226, type: !807)
!5163 = !DILocation(line: 224, column: 52, scope: !5158)
!5164 = !DILocation(line: 224, column: 86, scope: !5158)
!5165 = !DILocation(line: 226, column: 2, scope: !5158)
!5166 = !DILocation(line: 226, column: 7, scope: !5158)
!5167 = !DILocation(line: 231, column: 33, scope: !5158)
!5168 = !DILocation(line: 231, column: 46, scope: !5158)
!5169 = !DILocation(line: 228, column: 2, scope: !5158)
!5170 = !{i64 2147925055, i64 2147925129}
!5171 = !DILocation(line: 233, column: 9, scope: !5158)
!5172 = !DILocation(line: 234, column: 1, scope: !5158)
!5173 = !DILocation(line: 233, column: 2, scope: !5158)
!5174 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !138, file: !138, line: 140, type: !5175, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5177)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{null, !17, !17}
!5177 = !{!5178, !5179}
!5178 = !DILocalVariable(name: "cpu", arg: 1, scope: !5174, file: !138, line: 140, type: !17)
!5179 = !DILocalVariable(name: "bits", arg: 2, scope: !5174, file: !138, line: 140, type: !17)
!5180 = !DILocation(line: 140, column: 60, scope: !5174)
!5181 = !DILocation(line: 140, column: 78, scope: !5174)
!5182 = !DILocation(line: 145, column: 1, scope: !5174)
!5183 = distinct !DISubprogram(name: "atomic_read", scope: !5184, file: !5184, line: 30, type: !4987, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5185)
!5184 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!5185 = !{!5186}
!5186 = !DILocalVariable(name: "v", arg: 1, scope: !5183, file: !5184, line: 30, type: !4989)
!5187 = !DILocation(line: 30, column: 29, scope: !5183)
!5188 = !DILocation(line: 32, column: 25, scope: !5183)
!5189 = !DILocation(line: 32, column: 2, scope: !5183)
!5190 = !DILocation(line: 33, column: 25, scope: !5183)
!5191 = !DILocation(line: 33, column: 9, scope: !5183)
!5192 = !DILocation(line: 33, column: 2, scope: !5183)
!5193 = distinct !DISubprogram(name: "kasan_check_write", scope: !5194, file: !5194, line: 44, type: !5195, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5197)
!5194 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5195 = !DISubroutineType(types: !5196)
!5196 = !{!807, !4482, !17}
!5197 = !{!5198, !5199}
!5198 = !DILocalVariable(name: "p", arg: 1, scope: !5193, file: !5194, line: 44, type: !4482)
!5199 = !DILocalVariable(name: "size", arg: 2, scope: !5193, file: !5194, line: 44, type: !17)
!5200 = !DILocation(line: 44, column: 59, scope: !5193)
!5201 = !DILocation(line: 44, column: 75, scope: !5193)
!5202 = !DILocation(line: 46, column: 2, scope: !5193)
!5203 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5204, file: !5204, line: 229, type: !5205, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5207)
!5204 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5205 = !DISubroutineType(types: !5206)
!5206 = !{null, !4482, !1117, !7}
!5207 = !{!5208, !5209, !5210}
!5208 = !DILocalVariable(name: "ptr", arg: 1, scope: !5203, file: !5204, line: 229, type: !4482)
!5209 = !DILocalVariable(name: "size", arg: 2, scope: !5203, file: !5204, line: 229, type: !1117)
!5210 = !DILocalVariable(name: "type", arg: 3, scope: !5203, file: !5204, line: 230, type: !7)
!5211 = !DILocation(line: 229, column: 60, scope: !5203)
!5212 = !DILocation(line: 229, column: 72, scope: !5203)
!5213 = !DILocation(line: 230, column: 15, scope: !5203)
!5214 = !DILocation(line: 230, column: 23, scope: !5203)
!5215 = distinct !DISubprogram(name: "rcu_dynticks_task_trace_enter", scope: !3, file: !3, line: 58, type: !2355, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5216 = !DILocation(line: 64, column: 1, scope: !5215)
!5217 = distinct !DISubprogram(name: "ct_state_inc", scope: !4407, file: !4407, line: 129, type: !5218, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5220)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!119, !7}
!5220 = !{!5221, !5222, !5225}
!5221 = !DILocalVariable(name: "incby", arg: 1, scope: !5217, file: !4407, line: 129, type: !7)
!5222 = !DILocalVariable(name: "__vpp_verify", scope: !5223, file: !4407, line: 131, type: !1852)
!5223 = distinct !DILexicalBlock(scope: !5224, file: !4407, line: 131, column: 38)
!5224 = distinct !DILexicalBlock(scope: !5217, file: !4407, line: 131, column: 38)
!5225 = !DILocalVariable(name: "tcp_ptr__", scope: !5226, file: !4407, line: 131, type: !119)
!5226 = distinct !DILexicalBlock(scope: !5224, file: !4407, line: 131, column: 38)
!5227 = !DILocation(line: 129, column: 55, scope: !5217)
!5228 = !DILocation(line: 131, column: 31, scope: !5217)
!5229 = !DILocation(line: 131, column: 38, scope: !5224)
!5230 = !DILocation(line: 131, column: 38, scope: !5223)
!5231 = !DILocation(line: 131, column: 38, scope: !5226)
!5232 = !{i64 2150840871}
!5233 = !DILocation(line: 131, column: 9, scope: !5217)
!5234 = !DILocation(line: 131, column: 2, scope: !5217)
!5235 = distinct !DISubprogram(name: "raw_atomic_add_return", scope: !4986, file: !4986, line: 548, type: !5236, scopeLine: 549, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5238)
!5236 = !DISubroutineType(types: !5237)
!5237 = !{!7, !7, !120}
!5238 = !{!5239, !5240}
!5239 = !DILocalVariable(name: "i", arg: 1, scope: !5235, file: !4986, line: 548, type: !7)
!5240 = !DILocalVariable(name: "v", arg: 2, scope: !5235, file: !4986, line: 548, type: !120)
!5241 = !DILocation(line: 548, column: 27, scope: !5235)
!5242 = !DILocation(line: 548, column: 40, scope: !5235)
!5243 = !DILocation(line: 551, column: 32, scope: !5235)
!5244 = !DILocation(line: 551, column: 35, scope: !5235)
!5245 = !DILocation(line: 551, column: 9, scope: !5235)
!5246 = !DILocation(line: 551, column: 2, scope: !5235)
!5247 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !4998, file: !4998, line: 83, type: !5236, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5248)
!5248 = !{!5249, !5250, !5251}
!5249 = !DILocalVariable(name: "i", arg: 1, scope: !5247, file: !4998, line: 83, type: !7)
!5250 = !DILocalVariable(name: "v", arg: 2, scope: !5247, file: !4998, line: 83, type: !120)
!5251 = !DILocalVariable(name: "__ret", scope: !5252, file: !4998, line: 85, type: !7)
!5252 = distinct !DILexicalBlock(scope: !5247, file: !4998, line: 85, column: 13)
!5253 = !DILocation(line: 83, column: 55, scope: !5247)
!5254 = !DILocation(line: 83, column: 68, scope: !5247)
!5255 = !DILocation(line: 85, column: 9, scope: !5247)
!5256 = !DILocation(line: 85, column: 13, scope: !5252)
!5257 = !{i64 2148432339, i64 2148432378, i64 2148432399, i64 2148432436, i64 2148432459, i64 2148432468}
!5258 = !DILocation(line: 85, column: 13, scope: !5247)
!5259 = !DILocation(line: 85, column: 11, scope: !5247)
!5260 = !DILocation(line: 85, column: 2, scope: !5247)
!5261 = distinct !DISubprogram(name: "rcu_dynticks_task_trace_exit", scope: !3, file: !3, line: 67, type: !2355, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5262 = !DILocation(line: 73, column: 1, scope: !5261)
!5263 = distinct !DISubprogram(name: "kasan_check_read", scope: !5194, file: !5194, line: 40, type: !5195, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5264)
!5264 = !{!5265, !5266}
!5265 = !DILocalVariable(name: "p", arg: 1, scope: !5263, file: !5194, line: 40, type: !4482)
!5266 = !DILocalVariable(name: "size", arg: 2, scope: !5263, file: !5194, line: 40, type: !17)
!5267 = !DILocation(line: 40, column: 58, scope: !5263)
!5268 = !DILocation(line: 40, column: 74, scope: !5263)
!5269 = !DILocation(line: 42, column: 2, scope: !5263)
!5270 = distinct !DISubprogram(name: "context_tracking_enabled", scope: !6, file: !6, line: 143, type: !1842, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5271 = !DILocation(line: 143, column: 62, scope: !5270)
!5272 = distinct !DISubprogram(name: "__rcu_irq_enter_check_tick", scope: !4654, file: !4654, line: 19, type: !2355, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5273 = !DILocation(line: 19, column: 55, scope: !5272)
!5274 = distinct !DISubprogram(name: "ct_dynticks_nesting", scope: !6, file: !6, line: 78, type: !4390, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5275)
!5275 = !{!5276, !5279, !5281}
!5276 = !DILocalVariable(name: "pscr_ret__", scope: !5277, file: !6, line: 80, type: !114)
!5277 = distinct !DILexicalBlock(scope: !5278, file: !6, line: 80, column: 9)
!5278 = distinct !DILexicalBlock(scope: !5274, file: !6, line: 80, column: 9)
!5279 = !DILocalVariable(name: "__vpp_verify", scope: !5280, file: !6, line: 80, type: !1852)
!5280 = distinct !DILexicalBlock(scope: !5277, file: !6, line: 80, column: 9)
!5281 = !DILocalVariable(name: "pfo_val__", scope: !5282, file: !6, line: 80, type: !220)
!5282 = distinct !DILexicalBlock(scope: !5277, file: !6, line: 80, column: 9)
!5283 = !DILocation(line: 80, column: 9, scope: !5278)
!5284 = !DILocation(line: 80, column: 9, scope: !5277)
!5285 = !DILocation(line: 80, column: 9, scope: !5280)
!5286 = !DILocation(line: 80, column: 9, scope: !5282)
!5287 = !{i64 2150827307}
!5288 = !DILocation(line: 80, column: 2, scope: !5274)
!5289 = !DISubprogram(name: "rcu_preempt_deferred_qs", scope: !5290, file: !5290, line: 98, type: !5291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5290 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!5291 = !DISubroutineType(types: !5292)
!5292 = !{null, !150}
!5293 = distinct !DISubprogram(name: "get_current", scope: !5294, file: !5294, line: 39, type: !5295, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5297)
!5294 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5295 = !DISubroutineType(types: !5296)
!5296 = !{!150}
!5297 = !{!5298, !5300, !5302}
!5298 = !DILocalVariable(name: "pscr_ret__", scope: !5299, file: !5294, line: 41, type: !150)
!5299 = distinct !DILexicalBlock(scope: !5293, file: !5294, line: 41, column: 9)
!5300 = !DILocalVariable(name: "__vpp_verify", scope: !5301, file: !5294, line: 41, type: !1852)
!5301 = distinct !DILexicalBlock(scope: !5299, file: !5294, line: 41, column: 9)
!5302 = !DILocalVariable(name: "pfo_val__", scope: !5303, file: !5294, line: 41, type: !220)
!5303 = distinct !DILexicalBlock(scope: !5299, file: !5294, line: 41, column: 9)
!5304 = !DILocation(line: 41, column: 9, scope: !5299)
!5305 = !DILocation(line: 41, column: 9, scope: !5301)
!5306 = !DILocation(line: 41, column: 9, scope: !5303)
!5307 = !{i64 2148217247}
!5308 = !DILocation(line: 41, column: 9, scope: !5293)
!5309 = !DILocation(line: 41, column: 2, scope: !5293)
!5310 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4791, file: !4791, line: 65, type: !4792, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5311 = !DILocation(line: 67, column: 9, scope: !5310)
!5312 = !DILocation(line: 67, column: 2, scope: !5310)
!5313 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4791, file: !4791, line: 70, type: !2355, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5314 = !DILocation(line: 72, column: 2, scope: !5313)
!5315 = !DILocation(line: 73, column: 1, scope: !5313)
!5316 = distinct !DISubprogram(name: "native_save_fl", scope: !4791, file: !4791, line: 17, type: !4792, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5317)
!5317 = !{!5318}
!5318 = !DILocalVariable(name: "flags", scope: !5316, file: !4791, line: 19, type: !119)
!5319 = !DILocation(line: 19, column: 2, scope: !5316)
!5320 = !DILocation(line: 19, column: 16, scope: !5316)
!5321 = !DILocation(line: 26, column: 2, scope: !5316)
!5322 = !{i64 1448802, i64 1448823}
!5323 = !DILocation(line: 32, column: 9, scope: !5316)
!5324 = !DILocation(line: 33, column: 1, scope: !5316)
!5325 = !DILocation(line: 32, column: 2, scope: !5316)
!5326 = distinct !DISubprogram(name: "native_irq_disable", scope: !4791, file: !4791, line: 35, type: !2355, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5327 = !DILocation(line: 37, column: 2, scope: !5326)
!5328 = !{i64 1449006}
!5329 = !DILocation(line: 38, column: 1, scope: !5326)
!5330 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !4791, file: !4791, line: 120, type: !5331, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5333)
!5331 = !DISubroutineType(types: !5332)
!5332 = !{!7, !119}
!5333 = !{!5334}
!5334 = !DILocalVariable(name: "flags", arg: 1, scope: !5330, file: !4791, line: 120, type: !119)
!5335 = !DILocation(line: 120, column: 67, scope: !5330)
!5336 = !DILocation(line: 122, column: 11, scope: !5330)
!5337 = !DILocation(line: 122, column: 17, scope: !5330)
!5338 = !DILocation(line: 122, column: 9, scope: !5330)
!5339 = !DILocation(line: 122, column: 2, scope: !5330)
!5340 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !4791, file: !4791, line: 75, type: !2355, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5341 = !DILocation(line: 77, column: 2, scope: !5340)
!5342 = !DILocation(line: 78, column: 1, scope: !5340)
!5343 = distinct !DISubprogram(name: "native_irq_enable", scope: !4791, file: !4791, line: 40, type: !2355, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5344 = !DILocation(line: 42, column: 2, scope: !5343)
!5345 = !{i64 1449098}
!5346 = !DILocation(line: 43, column: 1, scope: !5343)
