; ModuleID = 'lib/nmi_backtrace.c'
source_filename = "lib/nmi_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu_hot = type { %union.anon }
%union.anon = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.16 }
%union.anon.16 = type { ptr }
%struct.cpumask = type { [1 x i64] }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.17, i64, i64, %union.anon.18 }
%union.anon.17 = type { i64 }
%union.anon.18 = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !0
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@backtrace_flag = internal global i64 0, align 8, !dbg !7
@nmi_trigger_cpumask_backtrace.__UNIQUE_ID___addressable___SCK__preempt_schedule303 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4113
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@backtrace_mask = internal global [1 x i64] zeroinitializer, section ".data..read_mostly", align 8, !dbg !4161
@.str.1 = private unnamed_addr constant [42 x i8] c"\016Sending NMI from CPU %d to CPUs %*pbl:\0A\00", align 1, !dbg !4135
@nr_cpu_ids = external dso_local global i32, align 4
@nmi_trigger_cpumask_backtrace.__UNIQUE_ID___addressable___SCK__preempt_schedule304 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !4140
@__param_str_backtrace_idle = internal constant [29 x i8] c"nmi_backtrace.backtrace_idle\00", align 16, !dbg !4165
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@backtrace_idle = internal global i8 0, align 1, !dbg !4163
@__param_backtrace_idle = internal constant %struct.kernel_param { ptr @__param_str_backtrace_idle, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.16 { ptr @backtrace_idle } }, section "__param", align 8, !dbg !4142
@__UNIQUE_ID_backtrace_idletype305 = internal constant [43 x i8] c"nmi_backtrace.parmtype=backtrace_idle:bool\00", section ".modinfo", align 1, !dbg !4144
@.str.2 = private unnamed_addr constant [51 x i8] c"\014NMI backtrace for cpu %d skipped: idling at %pS\0A\00", align 1, !dbg !4149
@.str.3 = private unnamed_addr constant [28 x i8] c"\014NMI backtrace for cpu %d\0A\00", align 1, !dbg !4154
@_kbl_addr_nmi_cpu_backtrace = internal global i64 ptrtoint (ptr @nmi_cpu_backtrace to i64), section "_kprobe_blacklist", align 8, !dbg !4159
@llvm.compiler.used = appending global [5 x ptr] [ptr @nmi_trigger_cpumask_backtrace.__UNIQUE_ID___addressable___SCK__preempt_schedule303, ptr @nmi_trigger_cpumask_backtrace.__UNIQUE_ID___addressable___SCK__preempt_schedule304, ptr @__param_backtrace_idle, ptr @__UNIQUE_ID_backtrace_idletype305, ptr @_kbl_addr_nmi_cpu_backtrace], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @nmi_trigger_cpumask_backtrace(ptr noundef %mask, i32 noundef %exclude_cpu, ptr noundef %raise) #0 align 16 !dbg !4115 {
entry:
  %mask.addr = alloca ptr, align 8
  %exclude_cpu.addr = alloca i32, align 4
  %raise.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %this_cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp31 = alloca i32, align 4
  store ptr %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !4122, metadata !DIExpression()), !dbg !4180
  store i32 %exclude_cpu, ptr %exclude_cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %exclude_cpu.addr, metadata !4123, metadata !DIExpression()), !dbg !4181
  store ptr %raise, ptr %raise.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %raise.addr, metadata !4124, metadata !DIExpression()), !dbg !4182
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !4183
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4125, metadata !DIExpression()), !dbg !4184
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_cpu) #13, !dbg !4183
  call void @llvm.dbg.declare(metadata ptr %this_cpu, metadata !4126, metadata !DIExpression()), !dbg !4185
  br label %do.body, !dbg !4186

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #14, !dbg !4187
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !4187, !srcloc !4189
  br label %do.cond, !dbg !4187

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4187

do.end:                                           ; preds = %do.cond
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !4190
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !4191
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4127, metadata !DIExpression()), !dbg !4191
  br label %do.body2, !dbg !4191

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !4192
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4131, metadata !DIExpression()), !dbg !4192
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4192
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4192
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !4191
  br label %do.cond3, !dbg !4192

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4192

do.end4:                                          ; preds = %do.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !4193
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4133, metadata !DIExpression()), !dbg !4193
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !4193, !srcloc !4194
  store i32 %1, ptr %pfo_val__, align 4, !dbg !4193
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !4193
  %conv = zext i32 %2 to i64, !dbg !4193
  %conv6 = trunc i64 %conv to i32, !dbg !4193
  store i32 %conv6, ptr %tmp5, align 4, !dbg !4193
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !4191
  %3 = load i32, ptr %tmp5, align 4, !dbg !4193
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !4191
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !4191
  store i32 %4, ptr %tmp7, align 4, !dbg !4191
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !4190
  %5 = load i32, ptr %tmp7, align 4, !dbg !4191
  store i32 %5, ptr %tmp1, align 4, !dbg !4190
  %6 = load i32, ptr %tmp1, align 4, !dbg !4190
  store i32 %6, ptr %tmp, align 4, !dbg !4187
  %7 = load i32, ptr %tmp, align 4, !dbg !4186
  store i32 %7, ptr %this_cpu, align 4, !dbg !4185
  %call = call zeroext i1 @test_and_set_bit(i64 noundef 0, ptr noundef @backtrace_flag) #14, !dbg !4195
  br i1 %call, label %if.then, label %if.end18, !dbg !4197

if.then:                                          ; preds = %do.end4
  br label %do.body8, !dbg !4198

do.body8:                                         ; preds = %if.then
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !4200, !srcloc !4202
  %call9 = call zeroext i1 @__preempt_count_dec_and_test() #14, !dbg !4203
  %lnot = xor i1 %call9, true, !dbg !4203
  %lnot10 = xor i1 %lnot, true, !dbg !4203
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !4203
  %conv11 = sext i32 %lnot.ext to i64, !dbg !4203
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !4203
  %tobool = icmp ne i64 %expval, 0, !dbg !4203
  br i1 %tobool, label %if.then12, label %if.end, !dbg !4200

if.then12:                                        ; preds = %do.body8
  br label %do.body13, !dbg !4203

do.body13:                                        ; preds = %if.then12
  %8 = call i64 @llvm.read_register.i64(metadata !4170), !dbg !4205
  %9 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %8) #13, !dbg !4205, !srcloc !4207
  call void @llvm.write_register.i64(metadata !4170, i64 %9), !dbg !4205
  br label %do.cond14, !dbg !4205

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4205

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !4205

if.end:                                           ; preds = %do.end15, %do.body8
  br label %do.cond16, !dbg !4200

do.cond16:                                        ; preds = %if.end
  br label %do.end17, !dbg !4200

do.end17:                                         ; preds = %do.cond16
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4208

if.end18:                                         ; preds = %do.end4
  %10 = load ptr, ptr %mask.addr, align 8, !dbg !4209
  call void @cpumask_copy(ptr noundef @backtrace_mask, ptr noundef %10) #14, !dbg !4210
  %11 = load i32, ptr %exclude_cpu.addr, align 4, !dbg !4211
  %cmp = icmp ne i32 %11, -1, !dbg !4213
  br i1 %cmp, label %if.then20, label %if.end21, !dbg !4214

if.then20:                                        ; preds = %if.end18
  %12 = load i32, ptr %exclude_cpu.addr, align 4, !dbg !4215
  call void @cpumask_clear_cpu(i32 noundef %12, ptr noundef @backtrace_mask) #14, !dbg !4216
  br label %if.end21, !dbg !4216

if.end21:                                         ; preds = %if.then20, %if.end18
  %13 = load i32, ptr %this_cpu, align 4, !dbg !4217
  %call22 = call zeroext i1 @cpumask_test_cpu(i32 noundef %13, ptr noundef @backtrace_mask) #14, !dbg !4219
  br i1 %call22, label %if.then23, label %if.end25, !dbg !4220

if.then23:                                        ; preds = %if.end21
  %call24 = call zeroext i1 @nmi_cpu_backtrace(ptr noundef null) #14, !dbg !4221
  br label %if.end25, !dbg !4221

if.end25:                                         ; preds = %if.then23, %if.end21
  %call26 = call zeroext i1 @cpumask_empty(ptr noundef @backtrace_mask) #14, !dbg !4222
  br i1 %call26, label %if.end33, label %if.then27, !dbg !4224

if.then27:                                        ; preds = %if.end25
  br label %do.body28, !dbg !4225

do.body28:                                        ; preds = %if.then27
  br label %do.cond29, !dbg !4228

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !4228

do.end30:                                         ; preds = %do.cond29
  %14 = load i32, ptr %this_cpu, align 4, !dbg !4225
  %15 = load i32, ptr @nr_cpu_ids, align 4, !dbg !4225
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %14, i32 noundef %15, ptr noundef @backtrace_mask) #16, !dbg !4225
  store i32 %call32, ptr %tmp31, align 4, !dbg !4228
  %16 = load i32, ptr %tmp31, align 4, !dbg !4225
  call void @nmi_backtrace_stall_snap(ptr noundef @backtrace_mask) #14, !dbg !4230
  %17 = load ptr, ptr %raise.addr, align 8, !dbg !4231
  call void %17(ptr noundef @backtrace_mask) #14, !dbg !4231
  br label %if.end33, !dbg !4232

if.end33:                                         ; preds = %do.end30, %if.end25
  store i32 0, ptr %i, align 4, !dbg !4233
  br label %for.cond, !dbg !4235

for.cond:                                         ; preds = %for.inc, %if.end33
  %18 = load i32, ptr %i, align 4, !dbg !4236
  %cmp34 = icmp slt i32 %18, 10000, !dbg !4238
  br i1 %cmp34, label %for.body, label %for.end, !dbg !4239

for.body:                                         ; preds = %for.cond
  %call36 = call zeroext i1 @cpumask_empty(ptr noundef @backtrace_mask) #14, !dbg !4240
  br i1 %call36, label %if.then37, label %if.end38, !dbg !4243

if.then37:                                        ; preds = %for.body
  br label %for.end, !dbg !4244

if.end38:                                         ; preds = %for.body
  call void @__const_udelay(i64 noundef 4295000) #14, !dbg !4245
  call void @touch_softlockup_watchdog() #14, !dbg !4250
  br label %for.inc, !dbg !4251

for.inc:                                          ; preds = %if.end38
  %19 = load i32, ptr %i, align 4, !dbg !4252
  %inc = add i32 %19, 1, !dbg !4252
  store i32 %inc, ptr %i, align 4, !dbg !4252
  br label %for.cond, !dbg !4253, !llvm.loop !4254

for.end:                                          ; preds = %if.then37, %for.cond
  call void @nmi_backtrace_stall_check(ptr noundef @backtrace_mask) #14, !dbg !4258
  call void @printk_trigger_flush() #14, !dbg !4259
  call void @clear_bit_unlock(i64 noundef 0, ptr noundef @backtrace_flag) #14, !dbg !4260
  br label %do.body39, !dbg !4261

do.body39:                                        ; preds = %for.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !4262, !srcloc !4264
  %call40 = call zeroext i1 @__preempt_count_dec_and_test() #14, !dbg !4265
  %lnot41 = xor i1 %call40, true, !dbg !4265
  %lnot43 = xor i1 %lnot41, true, !dbg !4265
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !4265
  %conv45 = sext i32 %lnot.ext44 to i64, !dbg !4265
  %expval46 = call i64 @llvm.expect.i64(i64 %conv45, i64 0), !dbg !4265
  %tobool47 = icmp ne i64 %expval46, 0, !dbg !4265
  br i1 %tobool47, label %if.then48, label %if.end52, !dbg !4262

if.then48:                                        ; preds = %do.body39
  br label %do.body49, !dbg !4265

do.body49:                                        ; preds = %if.then48
  %20 = call i64 @llvm.read_register.i64(metadata !4170), !dbg !4267
  %21 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %20) #13, !dbg !4267, !srcloc !4269
  call void @llvm.write_register.i64(metadata !4170, i64 %21), !dbg !4267
  br label %do.cond50, !dbg !4267

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !4267

do.end51:                                         ; preds = %do.cond50
  br label %if.end52, !dbg !4267

if.end52:                                         ; preds = %do.end51, %do.body39
  br label %do.cond53, !dbg !4262

do.cond53:                                        ; preds = %if.end52
  br label %do.end54, !dbg !4262

do.end54:                                         ; preds = %do.cond53
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4270
  br label %cleanup, !dbg !4270

cleanup:                                          ; preds = %do.end54, %do.end17
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_cpu) #13, !dbg !4270
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !4270
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4270

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #3 align 16 !dbg !4271 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4274, metadata !DIExpression()), !dbg !4281
  br label %do.body, !dbg !4282

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #13, !dbg !4283
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !4275, metadata !DIExpression()), !dbg !4283
  %0 = load i32, ptr %val.addr, align 4, !dbg !4283
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4283
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4283

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !4283
  %cmp = icmp eq i32 %2, 1, !dbg !4283
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !4283

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !4283
  %cmp1 = icmp eq i32 %3, -1, !dbg !4283
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !4283

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !4283
  br label %cond.end, !dbg !4283

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !4283

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !4283
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !4283
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !4284
  %cmp2 = icmp eq i32 %5, 1, !dbg !4284
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4283

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !4285, !srcloc !4287
  br label %if.end8, !dbg !4284

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !4288
  %cmp3 = icmp eq i32 %6, -1, !dbg !4288
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !4284

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !4289, !srcloc !4291
  br label %if.end, !dbg !4288

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !4288

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #13, !dbg !4292
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !4277, metadata !DIExpression()), !dbg !4292
  %7 = load i32, ptr %val.addr, align 4, !dbg !4292
  %conv = sext i32 %7 to i64, !dbg !4292
  %and = and i64 %conv, 4294967295, !dbg !4292
  %conv7 = trunc i64 %and to i32, !dbg !4292
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !4292
  %8 = load i32, ptr %pto_val__, align 4, !dbg !4292
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !4292, !srcloc !4293
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #13, !dbg !4288
  br label %do.cond, !dbg !4292

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !4292

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #13, !dbg !4282
  br label %do.end10, !dbg !4283

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !4294
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #3 align 16 !dbg !4295 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !4300, metadata !DIExpression()), !dbg !4301
  ret void, !dbg !4302
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4303 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4310, metadata !DIExpression()), !dbg !4312
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4311, metadata !DIExpression()), !dbg !4313
  br label %do.body, !dbg !4314

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4315

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4317
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4318
  %div = sdiv i64 %1, 64, !dbg !4318
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4319
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !4320
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4321
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4322
  %call = call zeroext i1 @arch_test_and_set_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !4323
  ret i1 %call, !dbg !4324
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #3 align 16 !dbg !4325 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #13, !dbg !4329
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4327, metadata !DIExpression()), !dbg !4329
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !4329, !srcloc !4330
  %1 = icmp ult i8 %0, 2, !dbg !4329
  call void @llvm.assume(i1 %1), !dbg !4329
  store i8 %0, ptr %c, align 1, !dbg !4329
  %2 = load i8, ptr %c, align 1, !dbg !4329, !range !4331, !noundef !497
  %tobool = trunc i8 %2 to i1, !dbg !4329
  %frombool = zext i1 %tobool to i8, !dbg !4329
  store i8 %frombool, ptr %tmp, align 1, !dbg !4329
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #13, !dbg !4332
  %3 = load i8, ptr %tmp, align 1, !dbg !4329, !range !4331, !noundef !497
  %tobool1 = trunc i8 %3 to i1, !dbg !4329
  ret i1 %tobool1, !dbg !4333
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #5

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_copy(ptr noundef %dstp, ptr noundef %srcp) #7 align 16 !dbg !4334 {
entry:
  %dstp.addr = alloca ptr, align 8
  %srcp.addr = alloca ptr, align 8
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !4340, metadata !DIExpression()), !dbg !4342
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !4341, metadata !DIExpression()), !dbg !4343
  %0 = load ptr, ptr %dstp.addr, align 8, !dbg !4344
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !4344
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4344
  %1 = load ptr, ptr %srcp.addr, align 8, !dbg !4345
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4345
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !4345
  call void @bitmap_copy(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #14, !dbg !4346
  ret void, !dbg !4347
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpumask_clear_cpu(i32 noundef %cpu, ptr noundef %dstp) #3 align 16 !dbg !4348 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4352, metadata !DIExpression()), !dbg !4354
  store ptr %dstp, ptr %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dstp.addr, metadata !4353, metadata !DIExpression()), !dbg !4355
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4356
  %call = call i32 @cpumask_check(i32 noundef %0) #14, !dbg !4357
  %conv = zext i32 %call to i64, !dbg !4357
  %1 = load ptr, ptr %dstp.addr, align 8, !dbg !4358
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4358
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4358
  call void @clear_bit(i64 noundef %conv, ptr noundef %arraydecay) #14, !dbg !4359
  ret void, !dbg !4360
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #3 align 16 !dbg !4361 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4365, metadata !DIExpression()), !dbg !4367
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !4366, metadata !DIExpression()), !dbg !4368
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4369
  %call = call i32 @cpumask_check(i32 noundef %0) #14, !dbg !4369
  %conv = zext i32 %call to i64, !dbg !4369
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !4369
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !4369
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4369
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #14, !dbg !4369
  ret i1 %call1, !dbg !4370
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @nmi_cpu_backtrace(ptr noundef %regs) #0 align 16 !dbg !4371 {
entry:
  %retval = alloca i1, align 1
  %regs.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %__dummy17 = alloca i64, align 8
  %__dummy218 = alloca i64, align 8
  %tmp21 = alloca i32, align 4
  %tmp32 = alloca i8, align 1
  %tmp44 = alloca i32, align 4
  %tmp50 = alloca i32, align 4
  %__dummy60 = alloca i64, align 8
  %__dummy261 = alloca i64, align 8
  %tmp64 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4375, metadata !DIExpression()), !dbg !4406
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #13, !dbg !4407
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4376, metadata !DIExpression()), !dbg !4408
  call void @__this_cpu_preempt_check(ptr noundef @.str) #14, !dbg !4409
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #13, !dbg !4410
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4377, metadata !DIExpression()), !dbg !4410
  br label %do.body, !dbg !4410

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #13, !dbg !4411
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4380, metadata !DIExpression()), !dbg !4411
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4411
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4411
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #13, !dbg !4410
  br label %do.cond, !dbg !4411

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4411

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #13, !dbg !4412
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4382, metadata !DIExpression()), !dbg !4412
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2)) #15, !dbg !4412, !srcloc !4413
  store i32 %1, ptr %pfo_val__, align 4, !dbg !4412
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !4412
  %conv = zext i32 %2 to i64, !dbg !4412
  %conv2 = trunc i64 %conv to i32, !dbg !4412
  store i32 %conv2, ptr %tmp1, align 4, !dbg !4412
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #13, !dbg !4410
  %3 = load i32, ptr %tmp1, align 4, !dbg !4412
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !4410
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !4410
  store i32 %4, ptr %tmp3, align 4, !dbg !4410
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #13, !dbg !4409
  %5 = load i32, ptr %tmp3, align 4, !dbg !4410
  store i32 %5, ptr %tmp, align 4, !dbg !4409
  %6 = load i32, ptr %tmp, align 4, !dbg !4409
  store i32 %6, ptr %cpu, align 4, !dbg !4408
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !4414
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4384, metadata !DIExpression()), !dbg !4415
  %7 = load i32, ptr %cpu, align 4, !dbg !4416
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %7, ptr noundef @backtrace_mask) #14, !dbg !4417
  br i1 %call, label %if.then, label %if.end74, !dbg !4418

if.then:                                          ; preds = %do.end
  br label %for.cond, !dbg !4419

for.cond:                                         ; preds = %do.end28, %if.then
  br label %do.body4, !dbg !4420

do.body4:                                         ; preds = %for.cond
  br label %do.body5, !dbg !4421

do.body5:                                         ; preds = %do.body4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !4422
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4385, metadata !DIExpression()), !dbg !4422
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !4422
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4394, metadata !DIExpression()), !dbg !4422
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !4422
  %conv6 = zext i1 %cmp to i32, !dbg !4422
  store i32 1, ptr %tmp7, align 4, !dbg !4422
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !4423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !4423
  %8 = load i32, ptr %tmp7, align 4, !dbg !4422
  %call8 = call i64 @arch_local_irq_save() #14, !dbg !4423
  store i64 %call8, ptr %flags, align 8, !dbg !4423
  br label %do.cond9, !dbg !4423

do.cond9:                                         ; preds = %do.body5
  br label %do.end10, !dbg !4423

do.end10:                                         ; preds = %do.cond9
  br label %do.cond11, !dbg !4421

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !4421

do.end12:                                         ; preds = %do.cond11
  %call13 = call i32 @__printk_cpu_sync_try_get() #14, !dbg !4424
  %tobool = icmp ne i32 %call13, 0, !dbg !4424
  br i1 %tobool, label %if.then14, label %if.end, !dbg !4420

if.then14:                                        ; preds = %do.end12
  br label %for.end, !dbg !4424

if.end:                                           ; preds = %do.end12
  br label %do.body15, !dbg !4420

do.body15:                                        ; preds = %if.end
  br label %do.body16, !dbg !4426

do.body16:                                        ; preds = %do.body15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy17) #13, !dbg !4427
  call void @llvm.dbg.declare(metadata ptr %__dummy17, metadata !4395, metadata !DIExpression()), !dbg !4427
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy218) #13, !dbg !4427
  call void @llvm.dbg.declare(metadata ptr %__dummy218, metadata !4399, metadata !DIExpression()), !dbg !4427
  %cmp19 = icmp eq ptr %__dummy17, %__dummy218, !dbg !4427
  %conv20 = zext i1 %cmp19 to i32, !dbg !4427
  store i32 1, ptr %tmp21, align 4, !dbg !4427
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy218) #13, !dbg !4428
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy17) #13, !dbg !4428
  %9 = load i32, ptr %tmp21, align 4, !dbg !4427
  br label %do.body22, !dbg !4428

do.body22:                                        ; preds = %do.body16
  br label %do.cond23, !dbg !4429

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !4429

do.end24:                                         ; preds = %do.cond23
  %10 = load i64, ptr %flags, align 8, !dbg !4428
  call void @arch_local_irq_restore(i64 noundef %10) #14, !dbg !4428
  br label %do.cond25, !dbg !4428

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !4428

do.end26:                                         ; preds = %do.cond25
  br label %do.cond27, !dbg !4426

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !4426

do.end28:                                         ; preds = %do.cond27
  call void @__printk_cpu_sync_wait() #14, !dbg !4420
  br label %for.cond, !dbg !4431, !llvm.loop !4432

for.end:                                          ; preds = %if.then14
  br label %do.body29, !dbg !4434

do.body29:                                        ; preds = %for.end
  br label %do.cond30, !dbg !4437

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4437

do.end31:                                         ; preds = %do.cond30
  %11 = load volatile i8, ptr @backtrace_idle, align 1, !dbg !4434, !range !4331, !noundef !497
  %tobool33 = trunc i8 %11 to i1, !dbg !4434
  %frombool = zext i1 %tobool33 to i8, !dbg !4437
  store i8 %frombool, ptr %tmp32, align 1, !dbg !4437
  %12 = load i8, ptr %tmp32, align 1, !dbg !4434, !range !4331, !noundef !497
  %tobool34 = trunc i8 %12 to i1, !dbg !4434
  br i1 %tobool34, label %if.else, label %land.lhs.true, !dbg !4439

land.lhs.true:                                    ; preds = %do.end31
  %13 = load ptr, ptr %regs.addr, align 8, !dbg !4440
  %tobool35 = icmp ne ptr %13, null, !dbg !4440
  br i1 %tobool35, label %land.lhs.true36, label %if.else, !dbg !4441

land.lhs.true36:                                  ; preds = %land.lhs.true
  %14 = load ptr, ptr %regs.addr, align 8, !dbg !4442
  %call37 = call i64 @instruction_pointer(ptr noundef %14) #14, !dbg !4443
  %call38 = call zeroext i1 @cpu_in_idle(i64 noundef %call37) #14, !dbg !4444
  br i1 %call38, label %if.then40, label %if.else, !dbg !4445

if.then40:                                        ; preds = %land.lhs.true36
  br label %do.body41, !dbg !4446

do.body41:                                        ; preds = %if.then40
  br label %do.cond42, !dbg !4449

do.cond42:                                        ; preds = %do.body41
  br label %do.end43, !dbg !4449

do.end43:                                         ; preds = %do.cond42
  %15 = load i32, ptr %cpu, align 4, !dbg !4446
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !4446
  %call45 = call i64 @instruction_pointer(ptr noundef %16) #14, !dbg !4446
  %17 = inttoptr i64 %call45 to ptr, !dbg !4446
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %15, ptr noundef %17) #16, !dbg !4446
  store i32 %call46, ptr %tmp44, align 4, !dbg !4449
  %18 = load i32, ptr %tmp44, align 4, !dbg !4446
  br label %if.end56, !dbg !4451

if.else:                                          ; preds = %land.lhs.true36, %land.lhs.true, %do.end31
  br label %do.body47, !dbg !4452

do.body47:                                        ; preds = %if.else
  br label %do.cond48, !dbg !4455

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !4455

do.end49:                                         ; preds = %do.cond48
  %19 = load i32, ptr %cpu, align 4, !dbg !4452
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %19) #16, !dbg !4452
  store i32 %call51, ptr %tmp50, align 4, !dbg !4455
  %20 = load i32, ptr %tmp50, align 4, !dbg !4452
  %21 = load ptr, ptr %regs.addr, align 8, !dbg !4457
  %tobool52 = icmp ne ptr %21, null, !dbg !4457
  br i1 %tobool52, label %if.then53, label %if.else54, !dbg !4459

if.then53:                                        ; preds = %do.end49
  %22 = load ptr, ptr %regs.addr, align 8, !dbg !4460
  call void @show_regs(ptr noundef %22) #14, !dbg !4461
  br label %if.end55, !dbg !4461

if.else54:                                        ; preds = %do.end49
  call void @dump_stack() #16, !dbg !4462
  br label %if.end55

if.end55:                                         ; preds = %if.else54, %if.then53
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %do.end43
  br label %do.body57, !dbg !4463

do.body57:                                        ; preds = %if.end56
  call void @__printk_cpu_sync_put() #14, !dbg !4464
  br label %do.body58, !dbg !4464

do.body58:                                        ; preds = %do.body57
  br label %do.body59, !dbg !4465

do.body59:                                        ; preds = %do.body58
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy60) #13, !dbg !4466
  call void @llvm.dbg.declare(metadata ptr %__dummy60, metadata !4400, metadata !DIExpression()), !dbg !4466
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy261) #13, !dbg !4466
  call void @llvm.dbg.declare(metadata ptr %__dummy261, metadata !4405, metadata !DIExpression()), !dbg !4466
  %cmp62 = icmp eq ptr %__dummy60, %__dummy261, !dbg !4466
  %conv63 = zext i1 %cmp62 to i32, !dbg !4466
  store i32 1, ptr %tmp64, align 4, !dbg !4466
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy261) #13, !dbg !4467
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy60) #13, !dbg !4467
  %23 = load i32, ptr %tmp64, align 4, !dbg !4466
  br label %do.body65, !dbg !4467

do.body65:                                        ; preds = %do.body59
  br label %do.cond66, !dbg !4468

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !4468

do.end67:                                         ; preds = %do.cond66
  %24 = load i64, ptr %flags, align 8, !dbg !4467
  call void @arch_local_irq_restore(i64 noundef %24) #14, !dbg !4467
  br label %do.cond68, !dbg !4467

do.cond68:                                        ; preds = %do.end67
  br label %do.end69, !dbg !4467

do.end69:                                         ; preds = %do.cond68
  br label %do.cond70, !dbg !4465

do.cond70:                                        ; preds = %do.end69
  br label %do.end71, !dbg !4465

do.end71:                                         ; preds = %do.cond70
  br label %do.cond72, !dbg !4464

do.cond72:                                        ; preds = %do.end71
  br label %do.end73, !dbg !4464

do.end73:                                         ; preds = %do.cond72
  %25 = load i32, ptr %cpu, align 4, !dbg !4470
  call void @cpumask_clear_cpu(i32 noundef %25, ptr noundef @backtrace_mask) #14, !dbg !4471
  store i1 true, ptr %retval, align 1, !dbg !4472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4472

if.end74:                                         ; preds = %do.end
  store i1 false, ptr %retval, align 1, !dbg !4473
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4473

cleanup:                                          ; preds = %if.end74, %do.end73
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !4474
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #13, !dbg !4474
  %26 = load i1, ptr %retval, align 1, !dbg !4474
  ret i1 %26, !dbg !4474
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_empty(ptr noundef %srcp) #7 align 16 !dbg !4475 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !4479, metadata !DIExpression()), !dbg !4480
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !4481
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !4481
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4481
  %call = call zeroext i1 @bitmap_empty(ptr noundef %arraydecay, i32 noundef 64) #14, !dbg !4482
  ret i1 %call, !dbg !4483
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4484 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nmi_backtrace_stall_snap(ptr noundef %btp) #7 align 16 !dbg !4488 {
entry:
  %btp.addr = alloca ptr, align 8
  store ptr %btp, ptr %btp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %btp.addr, metadata !4493, metadata !DIExpression()), !dbg !4494
  ret void, !dbg !4495
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4496 dso_local void @__const_udelay(i64 noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @touch_softlockup_watchdog() #7 align 16 !dbg !4500 {
entry:
  ret void, !dbg !4501
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nmi_backtrace_stall_check(ptr noundef %btp) #7 align 16 !dbg !4502 {
entry:
  %btp.addr = alloca ptr, align 8
  store ptr %btp, ptr %btp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %btp.addr, metadata !4504, metadata !DIExpression()), !dbg !4505
  ret void, !dbg !4506
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4507 dso_local void @printk_trigger_flush() #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit_unlock(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !4508 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4513, metadata !DIExpression()), !dbg !4515
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4514, metadata !DIExpression()), !dbg !4516
  br label %do.body, !dbg !4517

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4518

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4520
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4521
  %div = sdiv i64 %1, 64, !dbg !4521
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4522
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !4523
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4524
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4525
  call void @arch_clear_bit_unlock(i64 noundef %2, ptr noundef %3) #14, !dbg !4526
  ret void, !dbg !4527
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #3 align 16 !dbg !4528 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !4534
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4533, metadata !DIExpression()), !dbg !4535
  %call = call i64 @arch_local_save_flags() #14, !dbg !4536
  store i64 %call, ptr %flags, align 8, !dbg !4535
  call void @arch_local_irq_disable() #14, !dbg !4537
  %0 = load i64, ptr %flags, align 8, !dbg !4538
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !4539
  ret i64 %0, !dbg !4540
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4541 dso_local i32 @__printk_cpu_sync_try_get() #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #3 align 16 !dbg !4542 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4544, metadata !DIExpression()), !dbg !4545
  %0 = load i64, ptr %flags.addr, align 8, !dbg !4546
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #14, !dbg !4548
  %tobool = icmp ne i32 %call, 0, !dbg !4548
  br i1 %tobool, label %if.end, label %if.then, !dbg !4549

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #14, !dbg !4550
  br label %if.end, !dbg !4550

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4551
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4552 dso_local void @__printk_cpu_sync_wait() #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4553 dso_local zeroext i1 @cpu_in_idle(i64 noundef) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @instruction_pointer(ptr noundef %regs) #7 align 16 !dbg !4557 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4561, metadata !DIExpression()), !dbg !4562
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4563
  %ip = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 16, !dbg !4564
  %1 = load i64, ptr %ip, align 8, !dbg !4564
  ret i64 %1, !dbg !4565
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4566 dso_local void @show_regs(ptr noundef) #9

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4570 dso_local void @dump_stack() #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4571 dso_local void @__printk_cpu_sync_put() #9

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4572 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4580, metadata !DIExpression()), !dbg !4582
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4581, metadata !DIExpression()), !dbg !4583
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4584
  %1 = load i64, ptr %size.addr, align 8, !dbg !4585
  %conv = trunc i64 %1 to i32, !dbg !4585
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4586
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4587
  %3 = load i64, ptr %size.addr, align 8, !dbg !4587
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #14, !dbg !4587
  ret void, !dbg !4588
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4589 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4592, metadata !DIExpression()), !dbg !4596
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4593, metadata !DIExpression()), !dbg !4597
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #13, !dbg !4598
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4594, metadata !DIExpression()), !dbg !4598
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4598
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4598
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #13, !dbg !4598, !srcloc !4599
  %3 = icmp ult i8 %2, 2, !dbg !4598
  call void @llvm.assume(i1 %3), !dbg !4598
  store i8 %2, ptr %c, align 1, !dbg !4598
  %4 = load i8, ptr %c, align 1, !dbg !4598, !range !4331, !noundef !497
  %tobool = trunc i8 %4 to i1, !dbg !4598
  %frombool = zext i1 %tobool to i8, !dbg !4598
  store i8 %frombool, ptr %tmp, align 1, !dbg !4598
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #13, !dbg !4600
  %5 = load i8, ptr %tmp, align 1, !dbg !4598, !range !4331, !noundef !497
  %tobool1 = trunc i8 %5 to i1, !dbg !4598
  ret i1 %tobool1, !dbg !4601
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !4602 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4607, metadata !DIExpression()), !dbg !4609
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4608, metadata !DIExpression()), !dbg !4610
  ret i1 true, !dbg !4611
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !4612 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4617, metadata !DIExpression()), !dbg !4620
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4618, metadata !DIExpression()), !dbg !4621
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4619, metadata !DIExpression()), !dbg !4622
  ret void, !dbg !4623
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bitmap_copy(ptr noundef %dst, ptr noundef %src, i32 noundef %nbits) #7 align 16 !dbg !4624 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %len = alloca i32, align 4
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !4630, metadata !DIExpression()), !dbg !4634
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4631, metadata !DIExpression()), !dbg !4635
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !4632, metadata !DIExpression()), !dbg !4636
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #13, !dbg !4637
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4633, metadata !DIExpression()), !dbg !4638
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !4639
  %add = add i32 %0, 63, !dbg !4639
  %and = and i32 %add, -64, !dbg !4639
  %div = udiv i32 %and, 8, !dbg !4639
  store i32 %div, ptr %len, align 4, !dbg !4638
  %1 = load i32, ptr %nbits.addr, align 4, !dbg !4640
  %2 = call i1 @llvm.is.constant.i32(i32 %1), !dbg !4640
  br i1 %2, label %land.lhs.true, label %if.else, !dbg !4640

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !4640
  %cmp = icmp ule i32 %3, 64, !dbg !4640
  br i1 %cmp, label %land.lhs.true1, label %if.else, !dbg !4640

land.lhs.true1:                                   ; preds = %land.lhs.true
  %4 = load i32, ptr %nbits.addr, align 4, !dbg !4640
  %cmp2 = icmp ugt i32 %4, 0, !dbg !4640
  br i1 %cmp2, label %if.then, label %if.else, !dbg !4642

if.then:                                          ; preds = %land.lhs.true1
  %5 = load ptr, ptr %src.addr, align 8, !dbg !4643
  %6 = load i64, ptr %5, align 8, !dbg !4644
  %7 = load ptr, ptr %dst.addr, align 8, !dbg !4645
  store i64 %6, ptr %7, align 8, !dbg !4646
  br label %if.end, !dbg !4647

if.else:                                          ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %8 = load ptr, ptr %dst.addr, align 8, !dbg !4648
  %9 = load ptr, ptr %src.addr, align 8, !dbg !4649
  %10 = load i32, ptr %len, align 4, !dbg !4650
  %conv = zext i32 %10 to i64, !dbg !4650
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 %conv, i1 false), !dbg !4651
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #13, !dbg !4652
  ret void, !dbg !4652
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4653 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4655, metadata !DIExpression()), !dbg !4657
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4656, metadata !DIExpression()), !dbg !4658
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4659
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4660
  %div = sdiv i64 %1, 64, !dbg !4660
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4661
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !4662
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4663
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4664
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !4665
  ret void, !dbg !4666
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #3 align 16 !dbg !4667 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4671, metadata !DIExpression()), !dbg !4672
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4673
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #14, !dbg !4674
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !4675
  ret i32 %1, !dbg !4676
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4677 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4679, metadata !DIExpression()), !dbg !4681
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4680, metadata !DIExpression()), !dbg !4682
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4683
  %1 = load i64, ptr %size.addr, align 8, !dbg !4684
  %conv = trunc i64 %1 to i32, !dbg !4684
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #14, !dbg !4685
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4686
  %3 = load i64, ptr %size.addr, align 8, !dbg !4686
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #14, !dbg !4686
  ret void, !dbg !4687
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4688 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4690, metadata !DIExpression()), !dbg !4692
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4691, metadata !DIExpression()), !dbg !4693
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4694
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4696
  br i1 %1, label %if.then, label %if.else, !dbg !4697

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !4698
  %3 = load i64, ptr %nr.addr, align 8, !dbg !4698
  %shr = ashr i64 %3, 3, !dbg !4698
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !4698
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4700
  %and = and i64 %4, 7, !dbg !4700
  %sh_prom = trunc i64 %and to i32, !dbg !4700
  %shl = shl i32 1, %sh_prom, !dbg !4700
  %not = xor i32 %shl, -1, !dbg !4701
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #13, !dbg !4702, !srcloc !4703
  br label %if.end, !dbg !4704

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4705
  %6 = load i64, ptr %nr.addr, align 8, !dbg !4707
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #13, !dbg !4708, !srcloc !4709
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4710
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #3 align 16 !dbg !4711 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4715, metadata !DIExpression()), !dbg !4717
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !4716, metadata !DIExpression()), !dbg !4718
  ret void, !dbg !4719
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4720 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4727, metadata !DIExpression()), !dbg !4729
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4728, metadata !DIExpression()), !dbg !4730
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4731
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4732
  %div = udiv i64 %1, 64, !dbg !4732
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4733
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #14, !dbg !4734
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4735
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4736
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !4737
  ret i1 %call, !dbg !4738
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4739 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4741, metadata !DIExpression()), !dbg !4743
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4742, metadata !DIExpression()), !dbg !4744
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4745
  %1 = load i64, ptr %size.addr, align 8, !dbg !4746
  %conv = trunc i64 %1 to i32, !dbg !4746
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #14, !dbg !4747
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4748
  %3 = load i64, ptr %size.addr, align 8, !dbg !4748
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #14, !dbg !4748
  ret void, !dbg !4749
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4750 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4752, metadata !DIExpression()), !dbg !4754
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4753, metadata !DIExpression()), !dbg !4755
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4756
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4757
  br i1 %1, label %cond.true, label %cond.false, !dbg !4757

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4758
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4759
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !4760
  %conv = zext i1 %call to i32, !dbg !4760
  br label %cond.end, !dbg !4757

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4761
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4762
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !4763
  %conv2 = zext i1 %call1 to i32, !dbg !4763
  br label %cond.end, !dbg !4757

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4757
  %tobool = icmp ne i32 %cond, 0, !dbg !4757
  ret i1 %tobool, !dbg !4764
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !4765 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4767, metadata !DIExpression()), !dbg !4769
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4768, metadata !DIExpression()), !dbg !4770
  ret i1 true, !dbg !4771
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4772 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4776, metadata !DIExpression()), !dbg !4778
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4777, metadata !DIExpression()), !dbg !4779
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4780
  %and = and i64 %0, 63, !dbg !4781
  %shl = shl i64 1, %and, !dbg !4782
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4783
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4784
  %shr = ashr i64 %2, 6, !dbg !4785
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4783
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4783
  %and1 = and i64 %shl, %3, !dbg !4786
  %cmp = icmp ne i64 %and1, 0, !dbg !4787
  ret i1 %cmp, !dbg !4788
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4789 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4791, metadata !DIExpression()), !dbg !4794
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4792, metadata !DIExpression()), !dbg !4795
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #13, !dbg !4796
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4793, metadata !DIExpression()), !dbg !4797
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4798
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4799
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #13, !dbg !4800, !srcloc !4801
  %3 = icmp ult i8 %2, 2, !dbg !4800
  call void @llvm.assume(i1 %3), !dbg !4800
  store i8 %2, ptr %oldbit, align 1, !dbg !4800
  %4 = load i8, ptr %oldbit, align 1, !dbg !4802, !range !4331, !noundef !497
  %tobool = trunc i8 %4 to i1, !dbg !4802
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #13, !dbg !4803
  ret i1 %tobool, !dbg !4804
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_empty(ptr noundef %src, i32 noundef %nbits) #7 align 16 !dbg !4805 {
entry:
  %retval = alloca i1, align 1
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4809, metadata !DIExpression()), !dbg !4811
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !4810, metadata !DIExpression()), !dbg !4812
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !4813
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4813
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !4813

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !4813
  %cmp = icmp ule i32 %2, 64, !dbg !4813
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !4813

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !4813
  %cmp2 = icmp ugt i32 %3, 0, !dbg !4813
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4815

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !4816
  %5 = load i64, ptr %4, align 8, !dbg !4817
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !4818
  %sub = sub i32 0, %6, !dbg !4818
  %and = and i32 %sub, 63, !dbg !4818
  %sh_prom = zext i32 %and to i64, !dbg !4818
  %shr = lshr i64 -1, %sh_prom, !dbg !4818
  %and3 = and i64 %5, %shr, !dbg !4819
  %tobool = icmp ne i64 %and3, 0, !dbg !4820
  %lnot = xor i1 %tobool, true, !dbg !4820
  store i1 %lnot, ptr %retval, align 1, !dbg !4821
  br label %return, !dbg !4821

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !4822
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !4823
  %conv = zext i32 %8 to i64, !dbg !4823
  %call = call i64 @find_first_bit(ptr noundef %7, i64 noundef %conv) #14, !dbg !4824
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !4825
  %conv4 = zext i32 %9 to i64, !dbg !4825
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !4826
  store i1 %cmp5, ptr %retval, align 1, !dbg !4827
  br label %return, !dbg !4827

return:                                           ; preds = %if.end, %if.then
  %10 = load i1, ptr %retval, align 1, !dbg !4828
  ret i1 %10, !dbg !4828
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #7 align 16 !dbg !4829 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4834, metadata !DIExpression()), !dbg !4839
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4835, metadata !DIExpression()), !dbg !4840
  %0 = load i64, ptr %size.addr, align 8, !dbg !4841
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4841
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !4841

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4841
  %cmp = icmp ule i64 %2, 64, !dbg !4841
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !4841

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !4841
  %cmp2 = icmp ugt i64 %3, 0, !dbg !4841
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4842

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #13, !dbg !4843
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4836, metadata !DIExpression()), !dbg !4844
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !4845
  %5 = load i64, ptr %4, align 8, !dbg !4846
  %6 = load i64, ptr %size.addr, align 8, !dbg !4847
  %sub = sub i64 %6, 1, !dbg !4847
  %sub3 = sub i64 63, %sub, !dbg !4847
  %shr = lshr i64 -1, %sub3, !dbg !4847
  %and = and i64 -1, %shr, !dbg !4847
  %add = add i64 0, %and, !dbg !4847
  %and4 = and i64 %5, %add, !dbg !4848
  store i64 %and4, ptr %val, align 8, !dbg !4844
  %7 = load i64, ptr %val, align 8, !dbg !4849
  %tobool = icmp ne i64 %7, 0, !dbg !4849
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !4849

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !4850
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !4850
  br i1 %9, label %cond.true5, label %cond.false, !dbg !4850

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !4850
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !4850
  %cast = trunc i64 %11 to i32, !dbg !4850
  %conv = sext i32 %cast to i64, !dbg !4850
  br label %cond.end, !dbg !4850

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !4850
  %call = call i64 @variable__ffs(i64 noundef %12) #14, !dbg !4850
  br label %cond.end, !dbg !4850

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !4850
  br label %cond.end7, !dbg !4849

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !4851
  br label %cond.end7, !dbg !4849

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !4849
  store i64 %cond8, ptr %retval, align 8, !dbg !4852
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #13, !dbg !4853
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !4854
  %15 = load i64, ptr %size.addr, align 8, !dbg !4855
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #14, !dbg !4856
  store i64 %call9, ptr %retval, align 8, !dbg !4857
  br label %return, !dbg !4857

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !4858
  ret i64 %16, !dbg !4858
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #3 align 16 !dbg !4859 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !4863, metadata !DIExpression()), !dbg !4864
  %0 = load i64, ptr %word.addr, align 8, !dbg !4865
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #15, !dbg !4866, !srcloc !4867
  store i64 %1, ptr %word.addr, align 8, !dbg !4866
  %2 = load i64, ptr %word.addr, align 8, !dbg !4868
  ret i64 %2, !dbg !4869
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4870 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit_unlock(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4871 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4873, metadata !DIExpression()), !dbg !4875
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4874, metadata !DIExpression()), !dbg !4876
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !4877, !srcloc !4878
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4879
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4880
  call void @arch_clear_bit(i64 noundef %0, ptr noundef %1) #14, !dbg !4881
  ret void, !dbg !4882
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #3 align 16 !dbg !4883 {
entry:
  %call = call i64 @native_save_fl() #14, !dbg !4884
  ret i64 %call, !dbg !4885
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !4886 {
entry:
  call void @native_irq_disable() #14, !dbg !4887
  ret void, !dbg !4888
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #3 align 16 !dbg !4889 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !4892
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !4891, metadata !DIExpression()), !dbg !4893
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !4894, !srcloc !4895
  %0 = load i64, ptr %flags, align 8, !dbg !4896
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !4897
  ret i64 %0, !dbg !4898
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !4899 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !4900, !srcloc !4901
  ret void, !dbg !4902
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #3 align 16 !dbg !4903 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4907, metadata !DIExpression()), !dbg !4908
  %0 = load i64, ptr %flags.addr, align 8, !dbg !4909
  %and = and i64 %0, 512, !dbg !4910
  %tobool = icmp ne i64 %and, 0, !dbg !4911
  %lnot = xor i1 %tobool, true, !dbg !4911
  %lnot.ext = zext i1 %lnot to i32, !dbg !4911
  ret i32 %lnot.ext, !dbg !4912
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !4913 {
entry:
  call void @native_irq_enable() #14, !dbg !4914
  ret void, !dbg !4915
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !4916 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !4917, !srcloc !4918
  ret void, !dbg !4919
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #6 = { nocallback nounwind }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { nounwind memory(read) }
attributes #16 = { cold noredzone }

!llvm.dbg.cu = !{!9}
!llvm.named.register.rsp = !{!4170}
!llvm.module.flags = !{!4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178}
!llvm.ident = !{!4179}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 40, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "lib/nmi_backtrace.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72e80e0edb6ad5e1fadc5e1b7eee601a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "backtrace_flag", scope: !9, file: !2, line: 28, type: !102, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.nmi_backtrace.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/nmi_backtrace\22 -D KBUILD_BASENAME=\22nmi_backtrace\22 -D KBUILD_MODNAME=\22nmi_backtrace\22 -D __KBUILD_MODNAME=kmod_nmi_backtrace -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/nmi_backtrace.ll lib/nmi_backtrace.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !98, globals: !4112, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !30, !35, !43, !59, !67, !73, !80, !87, !93}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !20, line: 2052, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!23 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !25, line: 54, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!26 = !{!27, !28, !29}
!27 = !DIEnumerator(name: "USRQUOTA", value: 0)
!28 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!29 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !31, line: 65, baseType: !13, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!32 = !{!33, !34}
!33 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!34 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !36, line: 9, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!39 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!40 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!41 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!42 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !44, line: 1325, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!46 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!47 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!48 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!49 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!50 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!51 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!52 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!53 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!54 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!55 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!56 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!57 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!58 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !60, line: 68, baseType: !13, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!61 = !{!62, !63, !64, !65, !66}
!62 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!63 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!64 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!65 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!66 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !68, line: 16, baseType: !13, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "TT_NONE", value: 0)
!71 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!72 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !74, line: 51, baseType: !13, size: 32, elements: !75)
!74 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!75 = !{!76, !77, !78, !79}
!76 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!77 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!78 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!79 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !81, line: 15, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!84 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!85 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!86 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !88, line: 26, baseType: !13, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!92 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 10, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "false", value: 0)
!97 = !DIEnumerator(name: "true", value: 1)
!98 = !{!99, !101, !100, !102, !103, !111, !4105, !363, !13, !4108, !4110, !4090}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !105, line: 19, size: 64, elements: !106)
!105 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !104, file: !105, line: 19, baseType: !108, size: 64)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 1)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !113)
!113 = !{!114, !115, !122, !126, !3781, !3807, !3808, !3809, !3810, !3814, !3817, !3818, !3819, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3886, !3890, !3908, !3925, !3926, !3927, !3928, !3937, !3960, !3961, !3964, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3978, !3979, !4065, !4073, !4074, !4075, !4077, !4081, !4082, !4086, !4087, !4088, !4089, !4091, !4092, !4093, !4100, !4101, !4102, !4104}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !112, file: !12, line: 403, baseType: !11, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !112, file: !12, line: 406, baseType: !116, size: 128, offset: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !117, line: 190, size: 128, elements: !118)
!117 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !117, line: 191, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !116, file: !117, line: 191, baseType: !120, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !12, line: 409, baseType: !123, size: 448, offset: 192)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 56)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !112, file: !12, line: 417, baseType: !127, size: 768, offset: 640)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !128)
!128 = !{!129, !3775, !3776, !3777, !3780}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !127, file: !12, line: 46, baseType: !130, size: 512)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !131, line: 64, size: 512, elements: !132)
!131 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!132 = !{!133, !136, !137, !139, !228, !3661, !3765, !3770, !3771, !3772, !3773, !3774}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !131, line: 65, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !130, file: !131, line: 66, baseType: !116, size: 128, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !130, file: !131, line: 67, baseType: !138, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !130, file: !131, line: 68, baseType: !140, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !131, line: 168, size: 768, elements: !142)
!142 = !{!143, !144, !187, !188}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !141, file: !131, line: 169, baseType: !116, size: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !141, file: !131, line: 170, baseType: !145, size: 32, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !146, line: 29, baseType: !147)
!146 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !146, line: 17, size: 32, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !146, line: 18, baseType: !150, size: 32)
!150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !146, line: 18, size: 32, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !150, file: !146, line: 19, baseType: !153, size: 32)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !154, line: 14, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !153, file: !154, line: 15, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !158, line: 44, baseType: !159)
!158 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !158, line: 14, size: 32, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !158, line: 15, baseType: !162, size: 32)
!162 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !159, file: !158, line: 15, size: 32, elements: !163)
!163 = !{!164, !169, !179}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !162, file: !158, line: 16, baseType: !165, size: 32)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !117, line: 174, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 172, size: 32, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !166, file: !117, line: 173, baseType: !100, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, scope: !162, file: !158, line: 24, baseType: !170, size: 16)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !162, file: !158, line: 24, size: 16, elements: !171)
!171 = !{!172, !178}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !170, file: !158, line: 25, baseType: !173, size: 8)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !174, line: 17, baseType: !175)
!174 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !176, line: 21, baseType: !177)
!176 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!177 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !170, file: !158, line: 26, baseType: !173, size: 8, offset: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, scope: !162, file: !158, line: 28, baseType: !180, size: 32)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !162, file: !158, line: 28, size: 32, elements: !181)
!181 = !{!182, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !180, file: !158, line: 29, baseType: !183, size: 16)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !174, line: 19, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !176, line: 24, baseType: !185)
!185 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !180, file: !158, line: 30, baseType: !183, size: 16, offset: 16)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !141, file: !131, line: 171, baseType: !130, size: 512, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !141, file: !131, line: 172, baseType: !189, size: 64, offset: 704)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !131, line: 133, size: 192, elements: !192)
!192 = !{!193, !200, !205}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !191, file: !131, line: 134, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!100, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !131, line: 135, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!134, !198}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !191, file: !131, line: 136, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!100, !198, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !131, line: 125, size: 20736, elements: !212)
!212 = !{!213, !218, !222, !223, !227}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !211, file: !131, line: 126, baseType: !214, size: 192)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 192, elements: !216)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!216 = !{!217}
!217 = !DISubrange(count: 3)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !211, file: !131, line: 127, baseType: !219, size: 4096, offset: 192)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 4096, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !211, file: !131, line: 128, baseType: !100, size: 32, offset: 4288)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !211, file: !131, line: 129, baseType: !224, size: 16384, offset: 4320)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 2048)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !211, file: !131, line: 130, baseType: !100, size: 32, offset: 20704)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !130, file: !131, line: 69, baseType: !229, size: 64, offset: 320)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !131, line: 116, size: 384, elements: !232)
!232 = !{!233, !237, !265, !3623, !3651, !3655}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !231, file: !131, line: 117, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !138}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !231, file: !131, line: 118, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !241, line: 254, size: 128, elements: !242)
!241 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!242 = !{!243, !258}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !240, file: !241, line: 255, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!247, !138, !252, !215}
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !117, line: 66, baseType: !248)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !249, line: 73, baseType: !250)
!249 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !249, line: 15, baseType: !251)
!251 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !241, line: 30, size: 128, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !241, line: 31, baseType: !134, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !253, file: !241, line: 32, baseType: !257, size: 16, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !117, line: 24, baseType: !185)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !240, file: !241, line: 256, baseType: !259, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!247, !138, !252, !134, !262}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 61, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !249, line: 72, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !249, line: 16, baseType: !102)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !231, file: !131, line: 119, baseType: !266, size: 64, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !241, line: 84, size: 320, elements: !270)
!270 = !{!271, !272, !276, !3619, !3621}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !241, line: 85, baseType: !134, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !269, file: !241, line: 86, baseType: !273, size: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!257, !138, !252, !100}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !269, file: !241, line: 88, baseType: !277, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!257, !138, !280, !100}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !241, line: 175, size: 512, elements: !282)
!282 = !{!283, !284, !285, !286, !3610, !3614, !3615}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !281, file: !241, line: 176, baseType: !253, size: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !281, file: !241, line: 177, baseType: !262, size: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !281, file: !241, line: 178, baseType: !101, size: 64, offset: 192)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !281, file: !241, line: 179, baseType: !287, size: 64, offset: 256)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !292)
!292 = !{!293, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3604, !3605, !3606, !3607, !3608, !3609}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !291, file: !20, line: 473, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !296)
!296 = !{!297, !298, !299, !307, !308, !315, !316, !319, !320, !3383, !3384, !3385, !3386, !3387, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3427, !3430, !3431, !3432, !3441, !3442, !3443, !3444}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !295, file: !20, line: 642, baseType: !257, size: 16)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !295, file: !20, line: 643, baseType: !185, size: 16, offset: 16)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !295, file: !20, line: 644, baseType: !300, size: 32, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !301, line: 23, baseType: !302)
!301 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 21, size: 32, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !302, file: !301, line: 22, baseType: !305, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !117, line: 37, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !249, line: 49, baseType: !13)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !295, file: !20, line: 645, baseType: !116, size: 128, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !295, file: !20, line: 646, baseType: !309, size: 32, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !301, line: 28, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 26, size: 32, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !310, file: !301, line: 27, baseType: !313, size: 32)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !117, line: 38, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !249, line: 50, baseType: !13)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !295, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !295, file: !20, line: 650, baseType: !317, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !295, file: !20, line: 651, baseType: !317, size: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !295, file: !20, line: 654, baseType: !321, size: 64, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !324)
!324 = !{!325, !3214, !3227, !3231, !3235, !3239, !3243, !3247, !3251, !3255, !3259, !3260, !3264, !3268, !3305, !3334, !3338, !3344, !3348, !3352, !3356, !3360, !3364, !3370, !3374}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !323, file: !20, line: 1967, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!329, !294, !329, !13}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !331, line: 82, size: 1536, elements: !332)
!331 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!332 = !{!333, !334, !344, !352, !353, !373, !374, !378, !391, !3197, !3198, !3199, !3200, !3206, !3207, !3208}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !330, file: !331, line: 84, baseType: !13, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !330, file: !331, line: 85, baseType: !335, size: 32, offset: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !336, line: 275, baseType: !337)
!336 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !336, line: 275, size: 32, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !337, file: !336, line: 275, baseType: !340, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !336, line: 69, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !336, line: 64, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !341, file: !336, line: 65, baseType: !13, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !330, file: !331, line: 86, baseType: !345, size: 128, offset: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !346, line: 38, size: 128, elements: !347)
!346 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!347 = !{!348, !350}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !345, file: !346, line: 39, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !345, file: !346, line: 39, baseType: !351, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !330, file: !331, line: 87, baseType: !329, size: 64, offset: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !330, file: !331, line: 88, baseType: !354, size: 128, offset: 256)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !331, line: 49, size: 128, elements: !355)
!355 = !{!356, !370}
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !354, file: !331, line: 50, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !354, file: !331, line: 50, size: 64, elements: !358)
!358 = !{!359, !366}
!359 = !DIDerivedType(tag: DW_TAG_member, scope: !357, file: !331, line: 51, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !357, file: !331, line: 51, size: 64, elements: !361)
!361 = !{!362, !365}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !360, file: !331, line: 52, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !174, line: 21, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !176, line: 27, baseType: !13)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !360, file: !331, line: 52, baseType: !363, size: 32, offset: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !357, file: !331, line: 54, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !174, line: 23, baseType: !368)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !176, line: 31, baseType: !369)
!369 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !354, file: !331, line: 56, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !330, file: !331, line: 89, baseType: !294, size: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !330, file: !331, line: 91, baseType: !375, size: 256, offset: 448)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 256, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !330, file: !331, line: 94, baseType: !379, size: 64, offset: 704)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !380, line: 25, size: 64, elements: !381)
!380 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !380, line: 26, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !379, file: !380, line: 26, size: 64, elements: !384)
!384 = !{!385, !386}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !383, file: !380, line: 28, baseType: !368, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !380, line: 30, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !380, line: 30, size: 64, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !387, file: !380, line: 31, baseType: !145, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !387, file: !380, line: 32, baseType: !100, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !330, file: !331, line: 95, baseType: !392, size: 64, offset: 768)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !331, line: 128, size: 1024, align: 512, elements: !395)
!395 = !{!396, !400, !401, !408, !414, !418, !422, !426, !427, !431, !435, !3187, !3191}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !394, file: !331, line: 129, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!100, !329, !13}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !394, file: !331, line: 130, baseType: !397, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !394, file: !331, line: 131, baseType: !402, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!100, !405, !407}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !394, file: !331, line: 132, baseType: !409, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!100, !405, !13, !134, !412}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !394, file: !331, line: 134, baseType: !415, size: 64, offset: 256)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!100, !405}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !394, file: !331, line: 135, baseType: !419, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!100, !329}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !394, file: !331, line: 136, baseType: !423, size: 64, offset: 384)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !329}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !394, file: !331, line: 137, baseType: !423, size: 64, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !394, file: !331, line: 138, baseType: !428, size: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !329, !294}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !394, file: !331, line: 139, baseType: !432, size: 64, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!215, !329, !215, !100}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !394, file: !331, line: 140, baseType: !436, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!439, !3186}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !441, line: 70, size: 256, elements: !442)
!441 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!442 = !{!443, !444, !3182, !3183}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !440, file: !441, line: 71, baseType: !329, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !440, file: !441, line: 72, baseType: !445, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !447)
!447 = !{!448, !449, !452, !453, !454, !458, !506, !666, !706, !796, !800, !801, !802, !803, !804, !813, !814, !815, !816, !821, !825, !826, !829, !832, !835, !838, !839, !840, !881, !3113, !3114, !3115, !3116, !3117, !3118, !3121, !3123, !3130, !3131, !3132, !3133, !3134, !3149, !3150, !3151, !3152, !3153, !3156, !3157, !3158, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !446, file: !20, line: 1191, baseType: !116, size: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !446, file: !20, line: 1192, baseType: !450, size: 32, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !117, line: 21, baseType: !451)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !117, line: 18, baseType: !363)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !446, file: !20, line: 1193, baseType: !177, size: 8, offset: 160)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !446, file: !20, line: 1194, baseType: !102, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !446, file: !20, line: 1195, baseType: !455, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !117, line: 52, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !249, line: 88, baseType: !457)
!457 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !446, file: !20, line: 1196, baseType: !459, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !461)
!461 = !{!462, !463, !464, !470, !474, !478, !482, !483, !484, !494, !498, !499, !500, !502, !503, !504, !505}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !460, file: !20, line: 2367, baseType: !134, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !460, file: !20, line: 2368, baseType: !100, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !460, file: !20, line: 2376, baseType: !465, size: 64, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!100, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !441, line: 21, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !460, file: !20, line: 2377, baseType: !471, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !460, file: !20, line: 2378, baseType: !475, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!329, !459, !100, !134, !101}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !460, file: !20, line: 2380, baseType: !479, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !445}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !460, file: !20, line: 2381, baseType: !111, size: 64, offset: 384)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !20, line: 2382, baseType: !459, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !460, file: !20, line: 2383, baseType: !485, size: 64, offset: 512)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !117, line: 194, size: 64, elements: !486)
!486 = !{!487}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !485, file: !117, line: 195, baseType: !488, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !117, line: 198, size: 128, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !489, file: !117, line: 199, baseType: !488, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !489, file: !117, line: 199, baseType: !493, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !460, file: !20, line: 2385, baseType: !495, offset: 576)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !496, line: 206, elements: !497)
!496 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!497 = !{}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !460, file: !20, line: 2386, baseType: !495, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !460, file: !20, line: 2387, baseType: !495, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !460, file: !20, line: 2388, baseType: !501, offset: 576)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, elements: !216)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !460, file: !20, line: 2390, baseType: !495, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !460, file: !20, line: 2391, baseType: !495, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !460, file: !20, line: 2392, baseType: !495, offset: 576)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !460, file: !20, line: 2393, baseType: !495, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !446, file: !20, line: 1197, baseType: !507, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !510)
!510 = !{!511, !515, !519, !520, !524, !530, !534, !535, !536, !540, !544, !548, !549, !550, !556, !560, !561, !568, !569, !570, !571, !575, !579, !648, !664, !665}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !509, file: !20, line: 2058, baseType: !512, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!294, !445}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !509, file: !20, line: 2059, baseType: !516, size: 64, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !294}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !509, file: !20, line: 2060, baseType: !516, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !509, file: !20, line: 2062, baseType: !521, size: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !294, !100}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !509, file: !20, line: 2063, baseType: !525, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!100, !294, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !509, file: !20, line: 2064, baseType: !531, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!100, !294}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !509, file: !20, line: 2065, baseType: !516, size: 64, offset: 384)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !509, file: !20, line: 2066, baseType: !479, size: 64, offset: 448)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !509, file: !20, line: 2067, baseType: !537, size: 64, offset: 512)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!100, !445, !100}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !509, file: !20, line: 2068, baseType: !541, size: 64, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!100, !445, !19}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !509, file: !20, line: 2069, baseType: !545, size: 64, offset: 640)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!100, !445}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !509, file: !20, line: 2070, baseType: !541, size: 64, offset: 704)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !509, file: !20, line: 2071, baseType: !545, size: 64, offset: 768)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !509, file: !20, line: 2072, baseType: !551, size: 64, offset: 832)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!100, !329, !554}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !509, file: !20, line: 2073, baseType: !557, size: 64, offset: 896)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!100, !445, !99, !215}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !509, file: !20, line: 2074, baseType: !479, size: 64, offset: 960)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !509, file: !20, line: 2076, baseType: !562, size: 64, offset: 1024)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!100, !565, !329}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !567, line: 66, flags: DIFlagFwdDecl)
!567 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!568 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !509, file: !20, line: 2077, baseType: !562, size: 64, offset: 1088)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !509, file: !20, line: 2078, baseType: !562, size: 64, offset: 1152)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !509, file: !20, line: 2079, baseType: !562, size: 64, offset: 1216)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !509, file: !20, line: 2081, baseType: !572, size: 64, offset: 1280)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!247, !445, !100, !215, !262, !455}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !509, file: !20, line: 2082, baseType: !576, size: 64, offset: 1344)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!247, !445, !100, !134, !262, !455}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !509, file: !20, line: 2083, baseType: !580, size: 64, offset: 1408)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!583, !294}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 296, size: 1664, elements: !586)
!586 = !{!587, !588, !589, !590, !591, !612, !613, !614, !615, !631, !632, !633}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !585, file: !25, line: 297, baseType: !489, size: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !585, file: !25, line: 298, baseType: !116, size: 128, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !585, file: !25, line: 299, baseType: !116, size: 128, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !585, file: !25, line: 300, baseType: !116, size: 128, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !585, file: !25, line: 301, baseType: !592, size: 256, offset: 512)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !593, line: 66, size: 256, elements: !594)
!593 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!594 = !{!595, !604, !606, !611}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !592, file: !593, line: 67, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !597, line: 13, baseType: !598)
!597 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !117, line: 181, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 179, size: 64, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !599, file: !117, line: 180, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !174, line: 22, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !176, line: 30, baseType: !457)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !592, file: !593, line: 68, baseType: !605, size: 32, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !154, line: 23, baseType: !153)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !592, file: !593, line: 70, baseType: !607, size: 32, offset: 96)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !608, line: 15, size: 32, elements: !609)
!608 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !607, file: !608, line: 20, baseType: !165, size: 32)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !592, file: !593, line: 72, baseType: !116, size: 128, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !585, file: !25, line: 302, baseType: !145, size: 32, offset: 768)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !585, file: !25, line: 303, baseType: !165, size: 32, offset: 800)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !585, file: !25, line: 304, baseType: !445, size: 64, offset: 832)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !585, file: !25, line: 305, baseType: !616, size: 64, offset: 896)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !617)
!617 = !{!618, !630}
!618 = !DIDerivedType(tag: DW_TAG_member, scope: !616, file: !25, line: 69, baseType: !619, size: 32)
!619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !25, line: 69, size: 32, elements: !620)
!620 = !{!621, !622, !623}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !619, file: !25, line: 70, baseType: !300, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !619, file: !25, line: 71, baseType: !309, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !619, file: !25, line: 72, baseType: !624, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !625, line: 24, baseType: !626)
!625 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !625, line: 22, size: 32, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !626, file: !625, line: 23, baseType: !629, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !625, line: 20, baseType: !306)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !616, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !585, file: !25, line: 306, baseType: !455, size: 64, offset: 960)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !585, file: !25, line: 307, baseType: !102, size: 64, offset: 1024)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !585, file: !25, line: 308, baseType: !634, size: 576, offset: 1088)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !635)
!635 = !{!636, !638, !639, !640, !641, !642, !643, !644, !647}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !634, file: !25, line: 206, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !457)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !634, file: !25, line: 207, baseType: !637, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !634, file: !25, line: 208, baseType: !637, size: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !634, file: !25, line: 209, baseType: !637, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !634, file: !25, line: 210, baseType: !637, size: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !634, file: !25, line: 211, baseType: !637, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !634, file: !25, line: 212, baseType: !637, size: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !634, file: !25, line: 213, baseType: !645, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !646, line: 8, baseType: !603)
!646 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!647 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !634, file: !25, line: 214, baseType: !645, size: 64, offset: 512)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !509, file: !20, line: 2085, baseType: !649, size: 64, offset: 1472)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!251, !445, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !654, line: 15, size: 256, elements: !655)
!654 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!655 = !{!656, !658, !659, !660, !661}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !653, file: !654, line: 16, baseType: !657, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !117, line: 154, baseType: !13)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !653, file: !654, line: 19, baseType: !100, size: 32, offset: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !653, file: !654, line: 26, baseType: !102, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !653, file: !654, line: 33, baseType: !102, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !653, file: !654, line: 36, baseType: !662, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !44, line: 33, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !509, file: !20, line: 2087, baseType: !649, size: 64, offset: 1536)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !509, file: !20, line: 2089, baseType: !479, size: 64, offset: 1600)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !446, file: !20, line: 1198, baseType: !667, size: 64, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 324, size: 704, elements: !670)
!670 = !{!671, !675, !679, !683, !684, !685, !686, !687, !692, !697, !701}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !669, file: !25, line: 325, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!100, !584}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !669, file: !25, line: 326, baseType: !676, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!584, !445, !100}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !669, file: !25, line: 327, baseType: !680, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{null, !584}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !669, file: !25, line: 328, baseType: !672, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !669, file: !25, line: 329, baseType: !672, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !669, file: !25, line: 330, baseType: !672, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !669, file: !25, line: 331, baseType: !537, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !669, file: !25, line: 334, baseType: !688, size: 64, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!691, !294}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !669, file: !25, line: 335, baseType: !693, size: 64, offset: 512)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DISubroutineType(types: !695)
!695 = !{!100, !294, !696}
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !669, file: !25, line: 337, baseType: !698, size: 64, offset: 576)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!100, !294, !691}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !669, file: !25, line: 339, baseType: !702, size: 64, offset: 640)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DISubroutineType(types: !704)
!704 = !{!100, !445, !705}
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !446, file: !20, line: 1199, baseType: !707, size: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 430, size: 704, elements: !710)
!710 = !{!711, !722, !723, !727, !728, !729, !744, !767, !771, !772, !795}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !709, file: !25, line: 431, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!100, !445, !100, !100, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !718, line: 8, size: 128, elements: !719)
!718 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !717, file: !718, line: 9, baseType: !439, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !717, file: !718, line: 10, baseType: !329, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !709, file: !25, line: 432, baseType: !537, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !709, file: !25, line: 433, baseType: !724, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!100, !445, !13}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !709, file: !25, line: 434, baseType: !724, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !709, file: !25, line: 435, baseType: !537, size: 64, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !709, file: !25, line: 436, baseType: !730, size: 64, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!100, !445, !100, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 417, size: 256, elements: !735)
!735 = !{!736, !737, !738, !739, !740, !741, !742, !743}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !734, file: !25, line: 418, baseType: !100, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !734, file: !25, line: 419, baseType: !13, size: 32, offset: 32)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !734, file: !25, line: 420, baseType: !13, size: 32, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !734, file: !25, line: 422, baseType: !13, size: 32, offset: 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !734, file: !25, line: 423, baseType: !13, size: 32, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !734, file: !25, line: 424, baseType: !13, size: 32, offset: 160)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !734, file: !25, line: 425, baseType: !13, size: 32, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !734, file: !25, line: 426, baseType: !13, size: 32, offset: 224)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !709, file: !25, line: 437, baseType: !745, size: 64, offset: 384)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!100, !445, !616, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 345, size: 960, elements: !750)
!750 = !{!751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !749, file: !25, line: 346, baseType: !100, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !749, file: !25, line: 347, baseType: !367, size: 64, offset: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !749, file: !25, line: 348, baseType: !367, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !749, file: !25, line: 349, baseType: !367, size: 64, offset: 192)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !749, file: !25, line: 350, baseType: !367, size: 64, offset: 256)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !749, file: !25, line: 351, baseType: !367, size: 64, offset: 320)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !749, file: !25, line: 352, baseType: !367, size: 64, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !749, file: !25, line: 353, baseType: !602, size: 64, offset: 448)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !749, file: !25, line: 355, baseType: !602, size: 64, offset: 512)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !749, file: !25, line: 356, baseType: !100, size: 32, offset: 576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !749, file: !25, line: 357, baseType: !100, size: 32, offset: 608)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !749, file: !25, line: 358, baseType: !367, size: 64, offset: 640)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !749, file: !25, line: 359, baseType: !367, size: 64, offset: 704)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !749, file: !25, line: 360, baseType: !367, size: 64, offset: 768)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !749, file: !25, line: 361, baseType: !602, size: 64, offset: 832)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !749, file: !25, line: 362, baseType: !100, size: 32, offset: 896)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !709, file: !25, line: 438, baseType: !768, size: 64, offset: 448)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!100, !445, !705, !748}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !709, file: !25, line: 440, baseType: !745, size: 64, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !709, file: !25, line: 441, baseType: !773, size: 64, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!100, !445, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 411, size: 1408, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !777, file: !25, line: 412, baseType: !13, size: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !777, file: !25, line: 413, baseType: !781, size: 1344, offset: 64)
!781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !782, size: 1344, elements: !216)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 397, size: 448, elements: !783)
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792, !794}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !25, line: 398, baseType: !13, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !782, file: !25, line: 399, baseType: !13, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !782, file: !25, line: 401, baseType: !13, size: 32, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !782, file: !25, line: 402, baseType: !13, size: 32, offset: 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !782, file: !25, line: 403, baseType: !13, size: 32, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !782, file: !25, line: 404, baseType: !13, size: 32, offset: 160)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !782, file: !25, line: 405, baseType: !13, size: 32, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !782, file: !25, line: 406, baseType: !369, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !782, file: !25, line: 407, baseType: !793, size: 64, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !117, line: 132, baseType: !367)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !782, file: !25, line: 408, baseType: !793, size: 64, offset: 384)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !709, file: !25, line: 442, baseType: !724, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !446, file: !20, line: 1200, baseType: !797, size: 64, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !799)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !446, file: !20, line: 1201, baseType: !102, size: 64, offset: 640)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !446, file: !20, line: 1202, baseType: !102, size: 64, offset: 704)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !446, file: !20, line: 1203, baseType: !102, size: 64, offset: 768)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !446, file: !20, line: 1204, baseType: !329, size: 64, offset: 832)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !446, file: !20, line: 1205, baseType: !805, size: 320, offset: 896)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !806, line: 48, size: 320, elements: !807)
!806 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!807 = !{!808, !809, !810, !811, !812}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !805, file: !806, line: 49, baseType: !596, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !805, file: !806, line: 55, baseType: !596, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !805, file: !806, line: 57, baseType: !607, size: 32, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !805, file: !806, line: 59, baseType: !605, size: 32, offset: 160)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !805, file: !806, line: 60, baseType: !116, size: 128, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !446, file: !20, line: 1206, baseType: !100, size: 32, offset: 1216)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !446, file: !20, line: 1207, baseType: !165, size: 32, offset: 1248)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !446, file: !20, line: 1209, baseType: !101, size: 64, offset: 1280)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !446, file: !20, line: 1211, baseType: !817, size: 64, offset: 1344)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !820)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !446, file: !20, line: 1223, baseType: !822, size: 64, offset: 1408)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !346, line: 34, size: 64, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !822, file: !346, line: 35, baseType: !349, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !446, file: !20, line: 1224, baseType: !116, size: 128, offset: 1472)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !446, file: !20, line: 1225, baseType: !827, size: 64, offset: 1600)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !20, line: 1225, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !446, file: !20, line: 1226, baseType: !830, size: 64, offset: 1664)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !20, line: 1226, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !446, file: !20, line: 1227, baseType: !833, size: 64, offset: 1728)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !446, file: !20, line: 1228, baseType: !836, size: 64, offset: 1792)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !446, file: !20, line: 1229, baseType: !489, size: 128, offset: 1856)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !446, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !446, file: !20, line: 1231, baseType: !841, size: 2496, offset: 2048)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 521, size: 2496, elements: !842)
!842 = !{!843, !844, !845, !847, !879}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !841, file: !25, line: 522, baseType: !13, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !841, file: !25, line: 523, baseType: !805, size: 320, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !841, file: !25, line: 524, baseType: !846, size: 192, offset: 384)
!846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 192, elements: !216)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !841, file: !25, line: 525, baseType: !848, size: 1728, offset: 576)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 1728, elements: !216)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !850)
!850 = !{!851, !871, !872, !873, !874, !875, !876, !877, !878}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !849, file: !25, line: 223, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 445, size: 256, elements: !854)
!854 = !{!855, !856, !869, !870}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !853, file: !25, line: 446, baseType: !100, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !853, file: !25, line: 447, baseType: !857, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !859)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 312, size: 512, elements: !860)
!860 = !{!861, !862, !863, !864, !865, !866, !867, !868}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !859, file: !25, line: 313, baseType: !537, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !859, file: !25, line: 314, baseType: !537, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !859, file: !25, line: 315, baseType: !537, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !859, file: !25, line: 316, baseType: !537, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !859, file: !25, line: 317, baseType: !672, size: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !859, file: !25, line: 318, baseType: !672, size: 64, offset: 320)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !859, file: !25, line: 319, baseType: !672, size: 64, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !859, file: !25, line: 320, baseType: !702, size: 64, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !853, file: !25, line: 448, baseType: !111, size: 64, offset: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !853, file: !25, line: 449, baseType: !852, size: 64, offset: 192)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !849, file: !25, line: 224, baseType: !100, size: 32, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !849, file: !25, line: 226, baseType: !116, size: 128, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !849, file: !25, line: 227, baseType: !102, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !849, file: !25, line: 228, baseType: !13, size: 32, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !849, file: !25, line: 229, baseType: !13, size: 32, offset: 352)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !849, file: !25, line: 230, baseType: !637, size: 64, offset: 384)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !849, file: !25, line: 231, baseType: !637, size: 64, offset: 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !849, file: !25, line: 232, baseType: !101, size: 64, offset: 512)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !841, file: !25, line: 526, baseType: !880, size: 192, offset: 2304)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !857, size: 192, elements: !216)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !446, file: !20, line: 1233, baseType: !882, size: 2368, offset: 4544)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !883)
!883 = !{!884, !885, !886}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !882, file: !20, line: 1185, baseType: !185, size: 16)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !882, file: !20, line: 1186, baseType: !185, size: 16, offset: 16)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !882, file: !20, line: 1187, baseType: !887, size: 2304, offset: 64)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, size: 2304, elements: !216)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !889, line: 12, size: 768, elements: !890)
!889 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!890 = !{!891, !913, !915, !3111, !3112}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !888, file: !889, line: 13, baseType: !892, size: 384)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !893, line: 17, size: 384, elements: !894)
!893 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!894 = !{!895, !896, !897, !904}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !892, file: !893, line: 18, baseType: !100, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !892, file: !893, line: 19, baseType: !100, size: 32, offset: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !892, file: !893, line: 20, baseType: !898, size: 192, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !899, line: 41, baseType: !900)
!899 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !899, line: 37, size: 192, elements: !901)
!901 = !{!902, !903}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !900, file: !899, line: 38, baseType: !145, size: 32)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !900, file: !899, line: 39, baseType: !116, size: 128, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !892, file: !893, line: 22, baseType: !905, size: 128, align: 64, offset: 256)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !117, line: 232, size: 128, align: 64, elements: !906)
!906 = !{!907, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !905, file: !117, line: 233, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !905, file: !117, line: 234, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{null, !908}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !888, file: !889, line: 14, baseType: !914, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !888, file: !889, line: 15, baseType: !916, size: 64, offset: 448)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !917, line: 16, size: 64, elements: !918)
!917 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !916, file: !917, line: 17, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !567, line: 746, size: 58368, elements: !922)
!922 = !{!923, !931, !932, !933, !939, !940, !941, !942, !959, !960, !961, !962, !963, !964, !965, !966, !967, !968, !969, !1020, !1031, !1126, !1130, !1133, !1164, !1165, !1166, !1167, !1171, !1173, !1174, !1175, !1176, !1177, !1178, !1189, !1190, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1207, !1208, !1215, !1216, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2246, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2261, !2262, !2263, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2295, !2301, !2302, !2303, !2304, !2305, !2309, !2312, !2319, !2324, !2327, !2330, !2333, !2359, !2499, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2539, !2540, !2541, !2550, !2558, !2559, !2560, !2561, !2562, !2567, !2568, !2569, !2572, !2573, !2576, !2579, !2582, !2590, !2593, !2594, !2680, !2681, !2682, !2683, !2684, !2690, !2691, !2692, !2693, !2696, !2697, !2700, !2703, !2704, !2707, !2708, !2709, !2712, !2713, !2714, !2715, !2716, !2717, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2749, !2750, !2756, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2768, !2840, !2842, !2843, !2844, !2845, !2846, !2858, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2888, !2889, !2890}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !921, file: !567, line: 752, baseType: !924, size: 192)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !925, line: 56, size: 192, elements: !926)
!925 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!926 = !{!927, !928, !929, !930}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !924, file: !925, line: 57, baseType: !102, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !924, file: !925, line: 58, baseType: !102, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !924, file: !925, line: 59, baseType: !363, size: 32, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !924, file: !925, line: 61, baseType: !363, size: 32, offset: 160)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !921, file: !567, line: 754, baseType: !13, size: 32, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !921, file: !567, line: 767, baseType: !101, size: 64, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !921, file: !567, line: 768, baseType: !934, size: 32, offset: 320)
!934 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !935, line: 113, baseType: !936)
!935 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !935, line: 111, size: 32, elements: !937)
!937 = !{!938}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !936, file: !935, line: 112, baseType: !165, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !921, file: !567, line: 770, baseType: !13, size: 32, offset: 352)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !921, file: !567, line: 771, baseType: !13, size: 32, offset: 384)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !921, file: !567, line: 774, baseType: !100, size: 32, offset: 416)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !921, file: !567, line: 775, baseType: !943, size: 128, offset: 448)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !944, line: 58, size: 128, elements: !945)
!944 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!945 = !{!946, !952, !957, !958}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !943, file: !944, line: 59, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !948, line: 60, size: 64, elements: !949)
!948 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!949 = !{!950}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !947, file: !948, line: 61, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, scope: !943, file: !944, line: 60, baseType: !953, size: 32, offset: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !943, file: !944, line: 60, size: 32, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !953, file: !944, line: 61, baseType: !13, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !953, file: !944, line: 62, baseType: !165, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !943, file: !944, line: 65, baseType: !183, size: 16, offset: 96)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !943, file: !944, line: 65, baseType: !183, size: 16, offset: 112)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !921, file: !567, line: 776, baseType: !13, size: 32, offset: 576)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !921, file: !567, line: 777, baseType: !102, size: 64, offset: 640)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !921, file: !567, line: 778, baseType: !920, size: 64, offset: 704)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !921, file: !567, line: 787, baseType: !100, size: 32, offset: 768)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !921, file: !567, line: 788, baseType: !100, size: 32, offset: 800)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !921, file: !567, line: 790, baseType: !100, size: 32, offset: 832)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !921, file: !567, line: 792, baseType: !100, size: 32, offset: 864)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !921, file: !567, line: 793, baseType: !100, size: 32, offset: 896)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !921, file: !567, line: 794, baseType: !100, size: 32, offset: 928)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !921, file: !567, line: 795, baseType: !13, size: 32, offset: 960)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !921, file: !567, line: 797, baseType: !970, size: 2048, offset: 1024)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !567, line: 551, size: 2048, elements: !971)
!971 = !{!972, !977, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !999, !1002, !1003, !1004}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !970, file: !567, line: 553, baseType: !973, size: 128)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !567, line: 411, size: 128, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !973, file: !567, line: 412, baseType: !102, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !973, file: !567, line: 413, baseType: !363, size: 32, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !970, file: !567, line: 554, baseType: !978, size: 192, align: 64, offset: 128)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !979, line: 5, size: 192, align: 64, elements: !980)
!979 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!980 = !{!981, !982, !984}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !978, file: !979, line: 6, baseType: !102, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !978, file: !979, line: 7, baseType: !983, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !978, file: !979, line: 8, baseType: !983, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !970, file: !567, line: 555, baseType: !367, size: 64, offset: 320)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !970, file: !567, line: 556, baseType: !367, size: 64, offset: 384)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !970, file: !567, line: 558, baseType: !116, size: 128, offset: 448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !970, file: !567, line: 559, baseType: !13, size: 32, offset: 576)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !970, file: !567, line: 561, baseType: !367, size: 64, offset: 640)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !970, file: !567, line: 562, baseType: !367, size: 64, offset: 704)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !970, file: !567, line: 563, baseType: !367, size: 64, offset: 768)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !970, file: !567, line: 564, baseType: !367, size: 64, offset: 832)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !970, file: !567, line: 565, baseType: !602, size: 64, offset: 896)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !970, file: !567, line: 566, baseType: !367, size: 64, offset: 960)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !970, file: !567, line: 568, baseType: !367, size: 64, offset: 1024)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !970, file: !567, line: 571, baseType: !100, size: 32, offset: 1088)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !970, file: !567, line: 572, baseType: !998, size: 64, offset: 1152)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !970, file: !567, line: 574, baseType: !1000, size: 64, offset: 1216)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !567, line: 49, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !970, file: !567, line: 576, baseType: !1000, size: 64, offset: 1280)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !970, file: !567, line: 578, baseType: !102, size: 64, offset: 1344)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !970, file: !567, line: 588, baseType: !1005, size: 512, align: 512, offset: 1536)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !567, line: 497, size: 512, align: 512, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1005, file: !567, line: 498, baseType: !367, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1005, file: !567, line: 499, baseType: !367, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1005, file: !567, line: 500, baseType: !367, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1005, file: !567, line: 501, baseType: !363, size: 32, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1005, file: !567, line: 502, baseType: !363, size: 32, offset: 224)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1005, file: !567, line: 503, baseType: !102, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1005, file: !567, line: 504, baseType: !102, size: 64, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1005, file: !567, line: 505, baseType: !102, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1005, file: !567, line: 506, baseType: !1016, size: 64, align: 64, offset: 448)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !567, line: 445, size: 64, align: 64, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1016, file: !567, line: 446, baseType: !13, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1016, file: !567, line: 447, baseType: !13, size: 32, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !921, file: !567, line: 798, baseType: !1021, size: 384, offset: 3072)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !567, line: 592, size: 384, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1027, !1028, !1029}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1021, file: !567, line: 593, baseType: !116, size: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1021, file: !567, line: 594, baseType: !102, size: 64, offset: 128)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1021, file: !567, line: 595, baseType: !102, size: 64, offset: 192)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1021, file: !567, line: 596, baseType: !13, size: 32, offset: 256)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1021, file: !567, line: 597, baseType: !185, size: 16, offset: 288)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1021, file: !567, line: 598, baseType: !185, size: 16, offset: 304)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1021, file: !567, line: 600, baseType: !1030, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !921, file: !567, line: 799, baseType: !1032, size: 1792, offset: 3456)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !567, line: 610, size: 1792, elements: !1033)
!1033 = !{!1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1123, !1124}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1032, file: !567, line: 611, baseType: !978, size: 192, align: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1032, file: !567, line: 618, baseType: !367, size: 64, offset: 192)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1032, file: !567, line: 619, baseType: !367, size: 64, offset: 256)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1032, file: !567, line: 620, baseType: !367, size: 64, offset: 320)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1032, file: !567, line: 621, baseType: !367, size: 64, offset: 384)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1032, file: !567, line: 622, baseType: !367, size: 64, offset: 448)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1032, file: !567, line: 629, baseType: !602, size: 64, offset: 512)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1032, file: !567, line: 630, baseType: !367, size: 64, offset: 576)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1032, file: !567, line: 631, baseType: !13, size: 32, offset: 640)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1032, file: !567, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1032, file: !567, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1032, file: !567, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1032, file: !567, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1032, file: !567, line: 662, baseType: !1048, size: 512, offset: 704)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !31, line: 118, size: 512, elements: !1049)
!1049 = !{!1050, !1058, !1059, !1064, !1119, !1120, !1121, !1122}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1048, file: !31, line: 119, baseType: !1051, size: 256)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1052, line: 9, size: 256, elements: !1053)
!1052 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1053 = !{!1054, !1055}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1051, file: !1052, line: 10, baseType: !978, size: 192, align: 64)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1051, file: !1052, line: 11, baseType: !1056, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1057, line: 29, baseType: !602)
!1057 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1048, file: !31, line: 120, baseType: !1056, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1048, file: !31, line: 121, baseType: !1060, size: 64, offset: 320)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!30, !1063}
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1048, file: !31, line: 122, baseType: !1065, size: 64, offset: 384)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !31, line: 159, size: 512, align: 512, elements: !1067)
!1067 = !{!1068, !1093, !1094, !1097, !1102, !1103, !1114, !1118}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1066, file: !31, line: 160, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !31, line: 215, size: 4608, align: 512, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1070, file: !31, line: 216, baseType: !605, size: 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1070, file: !31, line: 217, baseType: !13, size: 32, offset: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1070, file: !31, line: 218, baseType: !13, size: 32, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1070, file: !31, line: 219, baseType: !13, size: 32, offset: 96)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1070, file: !31, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1070, file: !31, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1070, file: !31, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1070, file: !31, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1070, file: !31, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1070, file: !31, line: 226, baseType: !13, size: 32, offset: 160)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1070, file: !31, line: 227, baseType: !185, size: 16, offset: 192)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1070, file: !31, line: 228, baseType: !185, size: 16, offset: 208)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1070, file: !31, line: 229, baseType: !13, size: 32, offset: 224)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1070, file: !31, line: 235, baseType: !1056, size: 64, offset: 256)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1070, file: !31, line: 236, baseType: !1063, size: 64, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1070, file: !31, line: 237, baseType: !1056, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1070, file: !31, line: 238, baseType: !1063, size: 64, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1070, file: !31, line: 239, baseType: !1090, size: 4096, align: 512, offset: 512)
!1090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1066, size: 4096, align: 512, elements: !1091)
!1091 = !{!1092}
!1092 = !DISubrange(count: 8)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1066, file: !31, line: 161, baseType: !13, size: 32, offset: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1066, file: !31, line: 162, baseType: !1095, size: 32, offset: 96)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !117, line: 32, baseType: !1096)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !249, line: 96, baseType: !100)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1066, file: !31, line: 163, baseType: !1098, size: 32, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !336, line: 274, baseType: !1099)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !336, line: 274, size: 32, elements: !1100)
!1100 = !{!1101}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1099, file: !336, line: 274, baseType: !340, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1066, file: !31, line: 164, baseType: !1063, size: 64, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1066, file: !31, line: 165, baseType: !1104, size: 128, offset: 256)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1052, line: 14, size: 128, elements: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1104, file: !1052, line: 15, baseType: !1107, size: 128)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !979, line: 26, size: 128, elements: !1108)
!1108 = !{!1109, !1113}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1107, file: !979, line: 27, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !979, line: 12, size: 64, elements: !1111)
!1111 = !{!1112}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1110, file: !979, line: 13, baseType: !983, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1107, file: !979, line: 28, baseType: !983, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1066, file: !31, line: 166, baseType: !1115, size: 64, offset: 384)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!1056}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1066, file: !31, line: 167, baseType: !1056, size: 64, offset: 448)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1048, file: !31, line: 123, baseType: !173, size: 8, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1048, file: !31, line: 124, baseType: !173, size: 8, offset: 456)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1048, file: !31, line: 125, baseType: !173, size: 8, offset: 464)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1048, file: !31, line: 126, baseType: !173, size: 8, offset: 472)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1032, file: !567, line: 671, baseType: !1048, size: 512, offset: 1216)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1032, file: !567, line: 679, baseType: !1125, size: 64, offset: 1728)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !921, file: !567, line: 800, baseType: !1127, size: 64, offset: 5248)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1129)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !567, line: 800, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !921, file: !567, line: 809, baseType: !1131, size: 64, offset: 5312)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !567, line: 70, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !921, file: !567, line: 825, baseType: !1134, size: 2048, align: 512, offset: 5632)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !567, line: 509, size: 2048, align: 512, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1134, file: !567, line: 511, baseType: !367, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1134, file: !567, line: 512, baseType: !367, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1134, file: !567, line: 513, baseType: !367, size: 64, offset: 128)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1134, file: !567, line: 514, baseType: !367, size: 64, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1134, file: !567, line: 515, baseType: !367, size: 64, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1134, file: !567, line: 516, baseType: !367, size: 64, offset: 320)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1134, file: !567, line: 518, baseType: !367, size: 64, offset: 384)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1134, file: !567, line: 519, baseType: !367, size: 64, offset: 448)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1134, file: !567, line: 520, baseType: !602, size: 64, offset: 512)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1134, file: !567, line: 522, baseType: !367, size: 64, offset: 576)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1134, file: !567, line: 523, baseType: !367, size: 64, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1134, file: !567, line: 524, baseType: !602, size: 64, offset: 704)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1134, file: !567, line: 526, baseType: !602, size: 64, offset: 768)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1134, file: !567, line: 527, baseType: !367, size: 64, offset: 832)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1134, file: !567, line: 529, baseType: !367, size: 64, offset: 896)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1134, file: !567, line: 530, baseType: !367, size: 64, offset: 960)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1134, file: !567, line: 531, baseType: !367, size: 64, offset: 1024)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1134, file: !567, line: 532, baseType: !367, size: 64, offset: 1088)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1134, file: !567, line: 533, baseType: !367, size: 64, offset: 1152)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1134, file: !567, line: 535, baseType: !367, size: 64, offset: 1216)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1134, file: !567, line: 536, baseType: !367, size: 64, offset: 1280)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1134, file: !567, line: 537, baseType: !367, size: 64, offset: 1344)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1134, file: !567, line: 538, baseType: !367, size: 64, offset: 1408)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1134, file: !567, line: 539, baseType: !367, size: 64, offset: 1472)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1134, file: !567, line: 540, baseType: !367, size: 64, offset: 1536)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1134, file: !567, line: 541, baseType: !367, size: 64, offset: 1600)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1134, file: !567, line: 542, baseType: !367, size: 64, offset: 1664)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1134, file: !567, line: 543, baseType: !367, size: 64, offset: 1728)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !921, file: !567, line: 833, baseType: !13, size: 32, offset: 7680)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !921, file: !567, line: 836, baseType: !13, size: 32, offset: 7712)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !921, file: !567, line: 837, baseType: !100, size: 32, offset: 7744)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !921, file: !567, line: 838, baseType: !1168, size: 64, offset: 7808)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1170)
!1170 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !105, line: 19, baseType: !104)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !921, file: !567, line: 839, baseType: !1172, size: 64, offset: 7872)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !921, file: !567, line: 840, baseType: !1170, size: 64, offset: 7936)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !921, file: !567, line: 841, baseType: !101, size: 64, offset: 8000)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !921, file: !567, line: 843, baseType: !185, size: 16, offset: 8064)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !921, file: !567, line: 845, baseType: !185, size: 16, offset: 8080)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !921, file: !567, line: 848, baseType: !100, size: 32, offset: 8096)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !921, file: !567, line: 849, baseType: !1179, size: 32, offset: 8128)
!1179 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !567, line: 718, size: 32, elements: !1180)
!1180 = !{!1181, !1188}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1179, file: !567, line: 724, baseType: !1182, size: 32)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1179, file: !567, line: 719, size: 32, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1182, file: !567, line: 720, baseType: !173, size: 8)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1182, file: !567, line: 721, baseType: !173, size: 8, offset: 8)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1182, file: !567, line: 722, baseType: !173, size: 8, offset: 16)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1182, file: !567, line: 723, baseType: !173, size: 8, offset: 24)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1179, file: !567, line: 725, baseType: !363, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !921, file: !567, line: 850, baseType: !116, size: 128, offset: 8192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !921, file: !567, line: 851, baseType: !1191, size: 64, offset: 8320)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !567, line: 60, flags: DIFlagFwdDecl)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !921, file: !567, line: 855, baseType: !102, size: 64, offset: 8384)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !921, file: !567, line: 856, baseType: !173, size: 8, offset: 8448)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !921, file: !567, line: 857, baseType: !173, size: 8, offset: 8456)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !921, file: !567, line: 858, baseType: !100, size: 32, offset: 8480)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !921, file: !567, line: 859, baseType: !116, size: 128, offset: 8512)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !921, file: !567, line: 860, baseType: !100, size: 32, offset: 8640)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !921, file: !567, line: 861, baseType: !116, size: 128, offset: 8704)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !921, file: !567, line: 873, baseType: !1201, size: 256, offset: 8832)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !567, line: 376, size: 256, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1201, file: !567, line: 381, baseType: !102, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1201, file: !567, line: 384, baseType: !369, size: 64, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1201, file: !567, line: 389, baseType: !369, size: 64, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1201, file: !567, line: 392, baseType: !369, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !921, file: !567, line: 875, baseType: !116, size: 128, offset: 9088)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !921, file: !567, line: 877, baseType: !1209, size: 320, offset: 9216)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1210, line: 86, size: 320, elements: !1211)
!1210 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1211 = !{!1212, !1213, !1214}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1209, file: !1210, line: 87, baseType: !100, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1209, file: !1210, line: 88, baseType: !116, size: 128, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1209, file: !1210, line: 89, baseType: !116, size: 128, offset: 192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !921, file: !567, line: 878, baseType: !978, size: 192, align: 64, offset: 9536)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !921, file: !567, line: 881, baseType: !1217, size: 64, offset: 9728)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !44, line: 733, size: 10240, elements: !1219)
!1219 = !{!1220, !2165}
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !44, line: 734, baseType: !1221, size: 10240)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !44, line: 734, size: 10240, elements: !1222)
!1222 = !{!1223, !1227, !1240, !2029, !2030, !2031, !2032, !2033, !2034, !2041, !2042, !2043, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2082, !2084, !2087, !2134, !2135, !2136, !2139, !2140, !2141, !2144, !2145, !2146, !2152, !2153}
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !44, line: 739, baseType: !1224, size: 512, align: 512)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !44, line: 739, size: 512, align: 512, elements: !1225)
!1225 = !{!1226}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1224, file: !44, line: 747, baseType: !165, size: 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1221, file: !44, line: 750, baseType: !1228, size: 128, offset: 512)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1229, line: 218, size: 128, elements: !1230)
!1229 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1230 = !{!1231, !1238, !1239}
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1228, file: !1229, line: 219, baseType: !1232, size: 32)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1228, file: !1229, line: 219, size: 32, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1232, file: !1229, line: 220, baseType: !145, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1232, file: !1229, line: 221, baseType: !1236)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1229, line: 197, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1229, line: 197, elements: !497)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1228, file: !1229, line: 223, baseType: !13, size: 32, offset: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1228, file: !1229, line: 224, baseType: !101, size: 64, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1221, file: !44, line: 752, baseType: !1241, size: 64, offset: 640)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!102, !1244, !102, !102, !102, !102}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !1246)
!1246 = !{!1247, !1253, !1254, !1256, !1257, !1258, !1259, !1260, !1359, !1549, !1558, !1559, !1560, !2019, !2020, !2021, !2022, !2024, !2025, !2028}
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1245, file: !20, line: 995, baseType: !1248, size: 128)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1245, file: !20, line: 995, size: 128, elements: !1249)
!1249 = !{!1250, !1251, !1252}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1248, file: !20, line: 996, baseType: !947, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1248, file: !20, line: 997, baseType: !905, size: 128, align: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1248, file: !20, line: 998, baseType: !13, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1245, file: !20, line: 1005, baseType: !145, size: 32, offset: 128)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1245, file: !20, line: 1006, baseType: !1255, size: 32, offset: 160)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !117, line: 156, baseType: !13)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1245, file: !20, line: 1007, baseType: !596, size: 64, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1245, file: !20, line: 1008, baseType: !592, size: 256, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1245, file: !20, line: 1009, baseType: !455, size: 64, offset: 512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1245, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1245, file: !20, line: 1011, baseType: !1261, size: 256, offset: 640)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !1262)
!1262 = !{!1263, !1284, !1355, !1356, !1357, !1358}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1261, file: !20, line: 949, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1265, line: 34, baseType: !1266)
!1265 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1265, line: 25, size: 64, elements: !1267)
!1267 = !{!1268}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1266, file: !1265, line: 26, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1270, line: 27, baseType: !1271)
!1270 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1270, line: 13, size: 64, elements: !1272)
!1272 = !{!1273, !1283}
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1271, file: !1270, line: 14, baseType: !1274, size: 32)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1271, file: !1270, line: 14, size: 32, elements: !1275)
!1275 = !{!1276, !1277}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1274, file: !1270, line: 15, baseType: !165, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !1270, line: 16, baseType: !1278, size: 32)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !1270, line: 16, size: 32, elements: !1279)
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1278, file: !1270, line: 18, baseType: !173, size: 8)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1278, file: !1270, line: 19, baseType: !1282, size: 24, offset: 8)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 24, elements: !216)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1271, file: !1270, line: 26, baseType: !157, size: 32, offset: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1261, file: !20, line: 950, baseType: !1285, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !36, line: 59, size: 768, elements: !1287)
!1287 = !{!1288, !1289, !1290, !1291, !1295, !1296, !1297, !1298}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1286, file: !36, line: 61, baseType: !934, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1286, file: !36, line: 62, baseType: !13, size: 32, offset: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1286, file: !36, line: 63, baseType: !145, size: 32, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1286, file: !36, line: 65, baseType: !1292, size: 256, offset: 128)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 256, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 4)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1286, file: !36, line: 66, baseType: !485, size: 64, offset: 384)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1286, file: !36, line: 68, baseType: !898, size: 192, offset: 448)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1286, file: !36, line: 69, baseType: !905, size: 128, align: 64, offset: 640)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1286, file: !36, line: 70, baseType: !1299, offset: 768)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1300, elements: !1353)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !36, line: 54, size: 128, elements: !1301)
!1301 = !{!1302, !1303}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1300, file: !36, line: 55, baseType: !100, size: 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1300, file: !36, line: 56, baseType: !1304, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1306, line: 26, size: 1152, elements: !1307)
!1306 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1307 = !{!1308, !1321, !1322, !1323, !1324, !1328, !1329, !1330, !1333, !1336, !1340, !1341, !1352}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1305, file: !1306, line: 27, baseType: !1309, size: 192)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1310, line: 19, size: 192, elements: !1311)
!1310 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1311 = !{!1312, !1319, !1320}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1309, file: !1310, line: 20, baseType: !1313, size: 128)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1314, line: 296, size: 128, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1315 = !{!1316, !1317, !1318}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1313, file: !1314, line: 297, baseType: !145, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1313, file: !1314, line: 299, baseType: !657, size: 32, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1313, file: !1314, line: 300, baseType: !101, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1309, file: !1310, line: 21, baseType: !13, size: 32, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1309, file: !1310, line: 22, baseType: !13, size: 32, offset: 160)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1305, file: !1306, line: 28, baseType: !905, size: 128, align: 64, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1305, file: !1306, line: 29, baseType: !13, size: 32, offset: 320)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1305, file: !1306, line: 30, baseType: !920, size: 64, offset: 384)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1305, file: !1306, line: 31, baseType: !1325, size: 64, offset: 448)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1327, line: 11, flags: DIFlagFwdDecl)
!1327 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1305, file: !1306, line: 32, baseType: !13, size: 32, offset: 512)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1305, file: !1306, line: 33, baseType: !1304, size: 64, offset: 576)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1305, file: !1306, line: 35, baseType: !1331, size: 64, offset: 640)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1306, line: 17, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1305, file: !1306, line: 37, baseType: !1334, size: 64, offset: 704)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !301, line: 18, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1305, file: !1306, line: 38, baseType: !1337, size: 64, offset: 768)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1339, line: 16, flags: DIFlagFwdDecl)
!1339 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1305, file: !1306, line: 39, baseType: !100, size: 32, offset: 832)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1305, file: !1306, line: 40, baseType: !1342, size: 192, offset: 896)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1343, line: 9, size: 192, elements: !1344)
!1343 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1344 = !{!1345, !1346, !1350, !1351}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1342, file: !1343, line: 10, baseType: !596, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1342, file: !1343, line: 11, baseType: !1347, size: 64, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1349)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1343, line: 7, flags: DIFlagFwdDecl)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1342, file: !1343, line: 12, baseType: !13, size: 32, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1342, file: !1343, line: 13, baseType: !934, size: 32, offset: 160)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1305, file: !1306, line: 42, baseType: !100, size: 32, offset: 1088)
!1353 = !{!1354}
!1354 = !DISubrange(count: -1)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1261, file: !20, line: 951, baseType: !35, size: 32, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1261, file: !20, line: 952, baseType: !300, size: 32, offset: 160)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1261, file: !20, line: 952, baseType: !300, size: 32, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1261, file: !20, line: 953, baseType: !100, size: 32, offset: 224)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1245, file: !20, line: 1012, baseType: !1360, size: 64, offset: 896)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1363, line: 110, size: 1472, elements: !1364)
!1363 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1364 = !{!1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1381, !1382, !1383, !1384, !1385, !1386, !1499, !1500, !1501, !1502, !1503, !1534, !1535, !1536, !1544}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1362, file: !1363, line: 111, baseType: !596, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1362, file: !1363, line: 112, baseType: !300, size: 32, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1362, file: !1363, line: 113, baseType: !309, size: 32, offset: 96)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1362, file: !1363, line: 114, baseType: !300, size: 32, offset: 128)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1362, file: !1363, line: 115, baseType: !309, size: 32, offset: 160)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1362, file: !1363, line: 116, baseType: !300, size: 32, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1362, file: !1363, line: 117, baseType: !309, size: 32, offset: 224)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1362, file: !1363, line: 118, baseType: !300, size: 32, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1362, file: !1363, line: 119, baseType: !309, size: 32, offset: 288)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1362, file: !1363, line: 120, baseType: !13, size: 32, offset: 320)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1362, file: !1363, line: 121, baseType: !1376, size: 64, offset: 384)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1377, line: 24, baseType: !1378)
!1377 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1377, line: 24, size: 64, elements: !1379)
!1379 = !{!1380}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1378, file: !1377, line: 24, baseType: !367, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1362, file: !1363, line: 122, baseType: !1376, size: 64, offset: 448)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1362, file: !1363, line: 123, baseType: !1376, size: 64, offset: 512)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1362, file: !1363, line: 124, baseType: !1376, size: 64, offset: 576)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1362, file: !1363, line: 125, baseType: !1376, size: 64, offset: 640)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1362, file: !1363, line: 127, baseType: !177, size: 8, offset: 704)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1362, file: !1363, line: 129, baseType: !1387, size: 64, offset: 768)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1389, line: 195, size: 1728, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1390 = !{!1391, !1392, !1397, !1402, !1403, !1406, !1407, !1412, !1413, !1414, !1415, !1418, !1419, !1420, !1422, !1423, !1463, !1484}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1388, file: !1389, line: 196, baseType: !934, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1388, file: !1389, line: 197, baseType: !1393, size: 32, offset: 32)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1389, line: 28, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !117, line: 104, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !174, line: 20, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !176, line: 26, baseType: !100)
!1397 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !1389, line: 198, baseType: !1398, size: 192, offset: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !1389, line: 198, size: 192, elements: !1399)
!1399 = !{!1400, !1401}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1398, file: !1389, line: 199, baseType: !116, size: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1398, file: !1389, line: 200, baseType: !978, size: 192, align: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1388, file: !1389, line: 205, baseType: !805, size: 320, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1388, file: !1389, line: 206, baseType: !1404, size: 64, offset: 576)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1389, line: 206, flags: DIFlagFwdDecl)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1388, file: !1389, line: 207, baseType: !101, size: 64, offset: 640)
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !1389, line: 208, baseType: !1408, size: 64, offset: 704)
!1408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !1389, line: 208, size: 64, elements: !1409)
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1408, file: !1389, line: 209, baseType: !645, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1408, file: !1389, line: 210, baseType: !645, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1388, file: !1389, line: 212, baseType: !645, size: 64, offset: 768)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1388, file: !1389, line: 213, baseType: !300, size: 32, offset: 832)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1388, file: !1389, line: 214, baseType: !309, size: 32, offset: 864)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1388, file: !1389, line: 215, baseType: !1416, size: 32, offset: 896)
!1416 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1389, line: 31, baseType: !1417)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !117, line: 110, baseType: !363)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1388, file: !1389, line: 216, baseType: !185, size: 16, offset: 928)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1388, file: !1389, line: 217, baseType: !185, size: 16, offset: 944)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1388, file: !1389, line: 221, baseType: !1421, size: 16, offset: 960)
!1421 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1388, file: !1389, line: 228, baseType: !102, size: 64, offset: 1024)
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !1389, line: 245, baseType: !1424, size: 320, offset: 1088)
!1424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !1389, line: 245, size: 320, elements: !1425)
!1425 = !{!1426, !1455}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1424, file: !1389, line: 246, baseType: !1427, size: 320)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1389, line: 114, size: 320, elements: !1428)
!1428 = !{!1429, !1430, !1442, !1445, !1454}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1427, file: !1389, line: 116, baseType: !102, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, scope: !1427, file: !1389, line: 117, baseType: !1431, size: 64, offset: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1427, file: !1389, line: 117, size: 64, elements: !1432)
!1432 = !{!1433, !1441}
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1431, file: !1389, line: 118, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1431, file: !1389, line: 118, size: 64, elements: !1435)
!1435 = !{!1436, !1437}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1434, file: !1389, line: 120, baseType: !183, size: 16)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1434, file: !1389, line: 121, baseType: !1438, size: 48, offset: 16)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1439)
!1439 = !{!1440}
!1440 = !DISubrange(count: 6)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1431, file: !1389, line: 127, baseType: !102, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1427, file: !1389, line: 129, baseType: !1443, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1389, line: 102, flags: DIFlagFwdDecl)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1427, file: !1389, line: 130, baseType: !1446, size: 64, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1389, line: 108, size: 192, elements: !1448)
!1448 = !{!1449, !1450, !1451}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1447, file: !1389, line: 109, baseType: !905, size: 128, align: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1447, file: !1389, line: 110, baseType: !934, size: 32, offset: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1447, file: !1389, line: 111, baseType: !1452, size: 8, offset: 160)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !117, line: 35, baseType: !1453)
!1453 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1427, file: !1389, line: 131, baseType: !134, size: 64, offset: 256)
!1455 = !DIDerivedType(tag: DW_TAG_member, scope: !1424, file: !1389, line: 247, baseType: !1456, size: 320)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1424, file: !1389, line: 247, size: 320, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461, !1462}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1456, file: !1389, line: 248, baseType: !102, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1456, file: !1389, line: 249, baseType: !102, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1456, file: !1389, line: 250, baseType: !1443, size: 64, offset: 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1456, file: !1389, line: 251, baseType: !1446, size: 64, offset: 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1456, file: !1389, line: 252, baseType: !215, size: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !1389, line: 260, baseType: !1464, size: 256, offset: 1408)
!1464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !1389, line: 260, size: 256, elements: !1465)
!1465 = !{!1466, !1472}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1464, file: !1389, line: 261, baseType: !1467, size: 256)
!1467 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1389, line: 134, size: 256, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1467, file: !1389, line: 135, baseType: !101, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1467, file: !1389, line: 136, baseType: !1471, size: 256)
!1471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 256, elements: !1293)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !1389, line: 262, baseType: !1473, size: 256)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1464, file: !1389, line: 262, size: 256, elements: !1474)
!1474 = !{!1475, !1476}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1473, file: !1389, line: 264, baseType: !116, size: 128)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1473, file: !1389, line: 265, baseType: !1477, size: 128, offset: 128)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1478, line: 22, size: 128, elements: !1479)
!1478 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1479 = !{!1480, !1483}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1477, file: !1478, line: 23, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1478, line: 23, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1477, file: !1478, line: 24, baseType: !102, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1388, file: !1389, line: 280, baseType: !1485, size: 64, offset: 1664)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1389, line: 176, size: 192, elements: !1487)
!1487 = !{!1488, !1497, !1498}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1486, file: !1389, line: 177, baseType: !1489, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1389, line: 171, baseType: !1490)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{!100, !1387, !1493, !1495, !1387}
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1444)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1467)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1486, file: !1389, line: 178, baseType: !1387, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1486, file: !1389, line: 179, baseType: !1443, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1362, file: !1363, line: 130, baseType: !1387, size: 64, offset: 832)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1362, file: !1363, line: 131, baseType: !1387, size: 64, offset: 896)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1362, file: !1363, line: 132, baseType: !1387, size: 64, offset: 960)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1362, file: !1363, line: 135, baseType: !101, size: 64, offset: 1024)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1362, file: !1363, line: 137, baseType: !1504, size: 64, offset: 1088)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1506, line: 14, size: 1088, elements: !1507)
!1506 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1507 = !{!1508, !1509, !1518, !1519, !1520, !1521, !1522, !1523}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1505, file: !1506, line: 15, baseType: !934, size: 32)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1505, file: !1506, line: 17, baseType: !1510, size: 320, offset: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1511, line: 22, size: 320, elements: !1512)
!1511 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1512 = !{!1513, !1514, !1515, !1516}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1510, file: !1511, line: 23, baseType: !605, size: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1510, file: !1511, line: 24, baseType: !602, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1510, file: !1511, line: 26, baseType: !116, size: 128, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1510, file: !1511, line: 28, baseType: !1517, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1505, file: !1506, line: 19, baseType: !102, size: 64, offset: 384)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1505, file: !1506, line: 20, baseType: !596, size: 64, offset: 448)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1505, file: !1506, line: 23, baseType: !489, size: 128, offset: 512)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1505, file: !1506, line: 24, baseType: !300, size: 32, offset: 640)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1505, file: !1506, line: 29, baseType: !596, size: 64, offset: 704)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1505, file: !1506, line: 36, baseType: !1524, size: 320, offset: 768)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1525, line: 15, size: 320, elements: !1526)
!1525 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1532, !1533}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1524, file: !1525, line: 16, baseType: !605, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1524, file: !1525, line: 18, baseType: !100, size: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1524, file: !1525, line: 19, baseType: !100, size: 32, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1524, file: !1525, line: 20, baseType: !100, size: 32, offset: 96)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1524, file: !1525, line: 21, baseType: !100, size: 32, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1524, file: !1525, line: 22, baseType: !102, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1524, file: !1525, line: 23, baseType: !102, size: 64, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1362, file: !1363, line: 138, baseType: !1334, size: 64, offset: 1152)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1362, file: !1363, line: 139, baseType: !1337, size: 64, offset: 1216)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1362, file: !1363, line: 140, baseType: !1537, size: 64, offset: 1280)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1363, line: 25, size: 64, elements: !1539)
!1539 = !{!1540, !1541, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1538, file: !1363, line: 26, baseType: !165, size: 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1538, file: !1363, line: 27, baseType: !100, size: 32, offset: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1538, file: !1363, line: 28, baseType: !1543, offset: 64)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, elements: !1353)
!1544 = !DIDerivedType(tag: DW_TAG_member, scope: !1362, file: !1363, line: 142, baseType: !1545, size: 128, offset: 1344)
!1545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1362, file: !1363, line: 142, size: 128, elements: !1546)
!1546 = !{!1547, !1548}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1545, file: !1363, line: 143, baseType: !100, size: 32)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1545, file: !1363, line: 144, baseType: !905, size: 128, align: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1245, file: !20, line: 1013, baseType: !1550, size: 256, offset: 960)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !1551)
!1551 = !{!1552, !1553, !1554, !1555, !1556, !1557}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1550, file: !20, line: 971, baseType: !102, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1550, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1550, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1550, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1550, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1550, file: !20, line: 976, baseType: !455, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1245, file: !20, line: 1014, baseType: !717, size: 128, offset: 1216)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1245, file: !20, line: 1015, baseType: !294, size: 64, offset: 1344)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1245, file: !20, line: 1016, baseType: !1561, size: 64, offset: 1408)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !1564)
!1564 = !{!1565, !1566, !1570, !1575, !1579, !1607, !1608, !1614, !1627, !1635, !1639, !1640, !1941, !1942, !1946, !1951, !1952, !1956, !1960, !1966, !1967, !1971, !1972, !1978, !1982, !1986, !1992, !1996, !2000, !2004, !2008, !2009, !2015}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1563, file: !20, line: 1915, baseType: !111, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1563, file: !20, line: 1916, baseType: !1567, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!455, !1244, !455, !100}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1563, file: !20, line: 1917, baseType: !1571, size: 64, offset: 128)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!247, !1244, !215, !262, !1574}
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1563, file: !20, line: 1918, baseType: !1576, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!247, !1244, !134, !262, !1574}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1563, file: !20, line: 1919, baseType: !1580, size: 64, offset: 256)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!247, !1583, !1605}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !1585)
!1585 = !{!1586, !1587, !1588, !1592, !1593, !1594, !1595}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1584, file: !20, line: 374, baseType: !1244, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1584, file: !20, line: 375, baseType: !455, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1584, file: !20, line: 376, baseType: !1589, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !1583, !251}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1584, file: !20, line: 377, baseType: !101, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1584, file: !20, line: 378, baseType: !100, size: 32, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1584, file: !20, line: 379, baseType: !183, size: 16, offset: 288)
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1584, file: !20, line: 380, baseType: !1596, size: 64, offset: 320)
!1596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1584, file: !20, line: 380, size: 64, elements: !1597)
!1597 = !{!1598, !1601}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1596, file: !20, line: 386, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1596, file: !20, line: 395, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!247, !101}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !20, line: 69, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1563, file: !20, line: 1920, baseType: !1580, size: 64, offset: 320)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1563, file: !20, line: 1921, baseType: !1609, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!100, !1583, !1612, !13}
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !20, line: 53, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1563, file: !20, line: 1923, baseType: !1615, size: 64, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{!100, !1244, !1618}
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !1620)
!1620 = !{!1621, !1626}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1619, file: !20, line: 1859, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !1623)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!1452, !1618, !134, !100, !455, !367, !13}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1619, file: !20, line: 1860, baseType: !455, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1563, file: !20, line: 1924, baseType: !1628, size: 64, offset: 512)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!1631, !1244, !1633}
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1632, line: 59, baseType: !13)
!1632 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !20, line: 61, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1563, file: !20, line: 1925, baseType: !1636, size: 64, offset: 576)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!251, !1244, !13, !102}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1563, file: !20, line: 1926, baseType: !1636, size: 64, offset: 640)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1563, file: !20, line: 1927, baseType: !1641, size: 64, offset: 704)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{!100, !1244, !1644}
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !44, line: 625, size: 1344, elements: !1646)
!1646 = !{!1647, !1656, !1657, !1665, !1672, !1673, !1678, !1679, !1684, !1685, !1688, !1934, !1935, !1936, !1937, !1938, !1939}
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !44, line: 628, baseType: !1648, size: 128)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1645, file: !44, line: 628, size: 128, elements: !1649)
!1649 = !{!1650, !1655}
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !44, line: 629, baseType: !1651, size: 128)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !44, line: 629, size: 128, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1651, file: !44, line: 631, baseType: !102, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1651, file: !44, line: 632, baseType: !102, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1648, file: !44, line: 635, baseType: !905, size: 128, align: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1645, file: !44, line: 639, baseType: !1217, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1645, file: !44, line: 640, baseType: !1658, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1659, line: 297, baseType: !1660)
!1659 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1659, line: 297, size: 64, elements: !1661)
!1661 = !{!1662}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1660, file: !1659, line: 297, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1664, line: 19, baseType: !102)
!1664 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1665 = !DIDerivedType(tag: DW_TAG_member, scope: !1645, file: !44, line: 646, baseType: !1666, size: 64, offset: 256)
!1666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1645, file: !44, line: 646, size: 64, elements: !1667)
!1667 = !{!1668, !1671}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1666, file: !44, line: 647, baseType: !1669, size: 64)
!1669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1670)
!1670 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !44, line: 542, baseType: !102)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1666, file: !44, line: 648, baseType: !1670, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1645, file: !44, line: 666, baseType: !100, size: 32, offset: 320)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1645, file: !44, line: 667, baseType: !1674, size: 64, offset: 384)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !44, line: 579, size: 320, elements: !1676)
!1676 = !{!1677}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1675, file: !44, line: 580, baseType: !805, size: 320)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1645, file: !44, line: 670, baseType: !1452, size: 8, offset: 448)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1645, file: !44, line: 681, baseType: !1680, size: 256, offset: 512)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1645, file: !44, line: 678, size: 256, elements: !1681)
!1681 = !{!1682, !1683}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1680, file: !44, line: 679, baseType: !978, size: 192, align: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1680, file: !44, line: 680, baseType: !102, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1645, file: !44, line: 689, baseType: !116, size: 128, offset: 768)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1645, file: !44, line: 691, baseType: !1686, size: 64, offset: 896)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !44, line: 691, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1645, file: !44, line: 694, baseType: !1689, size: 64, offset: 960)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1691)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1692, line: 563, size: 1024, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1693 = !{!1694, !1698, !1699, !1703, !1707, !1711, !1898, !1902, !1906, !1910, !1911, !1912, !1916, !1920, !1926, !1930}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1691, file: !1692, line: 564, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !1644}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1691, file: !1692, line: 569, baseType: !1695, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1691, file: !1692, line: 571, baseType: !1700, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!100, !1644, !102}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1691, file: !1692, line: 572, baseType: !1704, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!100, !1644}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1691, file: !1692, line: 578, baseType: !1708, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!100, !1644, !102, !102, !102}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1691, file: !1692, line: 580, baseType: !1712, size: 64, offset: 320)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !44, line: 1184, baseType: !13)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1692, line: 512, size: 896, elements: !1718)
!1718 = !{!1719, !1727, !1728, !1735, !1742, !1752, !1891, !1892, !1894, !1896}
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !1692, line: 513, baseType: !1720, size: 320)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !1692, line: 513, size: 320, elements: !1721)
!1721 = !{!1722, !1723, !1724, !1725, !1726}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1720, file: !1692, line: 514, baseType: !1644, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1720, file: !1692, line: 515, baseType: !657, size: 32, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1720, file: !1692, line: 516, baseType: !102, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1720, file: !1692, line: 517, baseType: !102, size: 64, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1720, file: !1692, line: 518, baseType: !102, size: 64, offset: 256)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1717, file: !1692, line: 520, baseType: !43, size: 32, offset: 320)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1717, file: !1692, line: 522, baseType: !1729, size: 64, offset: 384)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1664, line: 22, baseType: !1731)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1664, line: 22, size: 64, elements: !1732)
!1732 = !{!1733}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1731, file: !1664, line: 22, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1664, line: 15, baseType: !102)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1717, file: !1692, line: 524, baseType: !1736, size: 64, offset: 448)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1659, line: 372, baseType: !1738)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1659, line: 372, size: 64, elements: !1739)
!1739 = !{!1740}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1738, file: !1659, line: 372, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1664, line: 16, baseType: !102)
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !1692, line: 527, baseType: !1743, size: 64, offset: 512)
!1743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1717, file: !1692, line: 527, size: 64, elements: !1744)
!1744 = !{!1745, !1751}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1743, file: !1692, line: 528, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1664, line: 21, baseType: !1747)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1664, line: 21, size: 64, elements: !1748)
!1748 = !{!1749}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1747, file: !1664, line: 21, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1664, line: 14, baseType: !102)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1743, file: !1692, line: 529, baseType: !1730, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1717, file: !1692, line: 534, baseType: !1753, size: 64, offset: 576)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !44, line: 74, size: 512, align: 128, elements: !1755)
!1755 = !{!1756, !1757, !1885, !1890}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1754, file: !44, line: 75, baseType: !102, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !44, line: 83, baseType: !1758, size: 320, offset: 64)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1754, file: !44, line: 83, size: 320, elements: !1759)
!1759 = !{!1760, !1781, !1795, !1799, !1884}
!1760 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !44, line: 84, baseType: !1761, size: 320)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1758, file: !44, line: 84, size: 320, elements: !1762)
!1762 = !{!1763, !1774, !1775, !1780}
!1763 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !44, line: 90, baseType: !1764, size: 128)
!1764 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1761, file: !44, line: 90, size: 128, elements: !1765)
!1765 = !{!1766, !1767, !1772, !1773}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1764, file: !44, line: 91, baseType: !116, size: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, scope: !1764, file: !44, line: 94, baseType: !1768, size: 128)
!1768 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1764, file: !44, line: 94, size: 128, elements: !1769)
!1769 = !{!1770, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1768, file: !44, line: 96, baseType: !101, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1768, file: !44, line: 98, baseType: !13, size: 32, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1764, file: !44, line: 102, baseType: !116, size: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1764, file: !44, line: 103, baseType: !116, size: 128)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1761, file: !44, line: 106, baseType: !290, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, scope: !1761, file: !44, line: 107, baseType: !1776, size: 64, offset: 192)
!1776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1761, file: !44, line: 107, size: 64, elements: !1777)
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1776, file: !44, line: 108, baseType: !102, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1776, file: !44, line: 109, baseType: !102, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1761, file: !44, line: 117, baseType: !102, size: 64, offset: 256)
!1781 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !44, line: 119, baseType: !1782, size: 320)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1758, file: !44, line: 119, size: 320, elements: !1783)
!1783 = !{!1784, !1785, !1788, !1789, !1790}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1782, file: !44, line: 124, baseType: !102, size: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1782, file: !44, line: 125, baseType: !1786, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !44, line: 125, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1782, file: !44, line: 126, baseType: !102, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1782, file: !44, line: 127, baseType: !102, size: 64, offset: 192)
!1790 = !DIDerivedType(tag: DW_TAG_member, scope: !1782, file: !44, line: 128, baseType: !1791, size: 64, offset: 256)
!1791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1782, file: !44, line: 128, size: 64, elements: !1792)
!1792 = !{!1793, !1794}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1791, file: !44, line: 133, baseType: !102, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1791, file: !44, line: 138, baseType: !596, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !44, line: 141, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1758, file: !44, line: 141, size: 64, elements: !1797)
!1797 = !{!1798}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1796, file: !44, line: 142, baseType: !102, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !44, line: 144, baseType: !1800, size: 128)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1758, file: !44, line: 144, size: 128, elements: !1801)
!1801 = !{!1802, !1883}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1800, file: !44, line: 146, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !60, line: 126, size: 1216, elements: !1805)
!1805 = !{!1806, !1816, !1837, !1848, !1849, !1850, !1851, !1865, !1866, !1867}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1804, file: !60, line: 127, baseType: !1807, size: 384)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !60, line: 21, size: 384, elements: !1808)
!1808 = !{!1809, !1810, !1812, !1813, !1814, !1815}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1807, file: !60, line: 22, baseType: !102, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1807, file: !60, line: 23, baseType: !1811, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1807, file: !60, line: 24, baseType: !1811, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1807, file: !60, line: 25, baseType: !102, size: 64, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1807, file: !60, line: 26, baseType: !102, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1807, file: !60, line: 27, baseType: !102, size: 64, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1804, file: !60, line: 128, baseType: !1817, size: 128, offset: 384)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1818, line: 105, size: 128, elements: !1819)
!1818 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1819 = !{!1820, !1821}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1817, file: !1818, line: 110, baseType: !102, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1817, file: !1818, line: 118, baseType: !1822, size: 64, offset: 64)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1818, line: 95, size: 448, elements: !1824)
!1824 = !{!1825, !1826, !1832, !1833, !1834, !1835, !1836}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1823, file: !1818, line: 96, baseType: !596, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1823, file: !1818, line: 97, baseType: !1827, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1818, line: 60, baseType: !1829)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !1831}
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1823, file: !1818, line: 98, baseType: !1827, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1823, file: !1818, line: 99, baseType: !1452, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1823, file: !1818, line: 100, baseType: !1452, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1823, file: !1818, line: 101, baseType: !905, size: 128, align: 64, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1823, file: !1818, line: 102, baseType: !1831, size: 64, offset: 384)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1804, file: !60, line: 129, baseType: !1838, size: 256, offset: 512)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1839, line: 26, size: 256, elements: !1840)
!1839 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1840 = !{!1841, !1842}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1838, file: !1839, line: 27, baseType: !13, size: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1838, file: !1839, line: 28, baseType: !1843, size: 192, offset: 64)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1844, line: 43, size: 192, elements: !1845)
!1844 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1843, file: !1844, line: 44, baseType: !605, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1843, file: !1844, line: 45, baseType: !116, size: 128, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1804, file: !60, line: 130, baseType: !59, size: 32, offset: 768)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1804, file: !60, line: 131, baseType: !13, size: 32, offset: 800)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1804, file: !60, line: 132, baseType: !102, size: 64, offset: 832)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1804, file: !60, line: 133, baseType: !1852, size: 64, offset: 896)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1854)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !60, line: 77, size: 192, elements: !1855)
!1855 = !{!1856, !1860, !1861}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1854, file: !60, line: 83, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{null, !1753}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1854, file: !60, line: 89, baseType: !1712, size: 64, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1854, file: !60, line: 100, baseType: !1862, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!100, !1803, !102, !102, !100}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1804, file: !60, line: 134, baseType: !101, size: 64, offset: 960)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1804, file: !60, line: 135, baseType: !100, size: 32, offset: 1024)
!1867 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !60, line: 136, baseType: !1868, size: 128, offset: 1088)
!1868 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1804, file: !60, line: 136, size: 128, elements: !1869)
!1869 = !{!1870, !1876}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1868, file: !60, line: 137, baseType: !1871, size: 128)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1872, line: 6, size: 128, elements: !1873)
!1872 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1873 = !{!1874, !1875}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1871, file: !1872, line: 7, baseType: !367, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1871, file: !1872, line: 8, baseType: !367, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, scope: !1868, file: !60, line: 138, baseType: !1877)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1868, file: !60, line: 138, elements: !1878)
!1878 = !{!1879, !1881}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1877, file: !60, line: 138, baseType: !1880)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1877, file: !60, line: 138, elements: !497)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1877, file: !60, line: 138, baseType: !1882)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1871, elements: !1353)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1800, file: !44, line: 147, baseType: !101, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1758, file: !44, line: 161, baseType: !905, size: 128, align: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, scope: !1754, file: !44, line: 164, baseType: !1886, size: 32, offset: 384)
!1886 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1754, file: !44, line: 164, size: 32, elements: !1887)
!1887 = !{!1888, !1889}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1886, file: !44, line: 169, baseType: !165, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1886, file: !44, line: 177, baseType: !13, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1754, file: !44, line: 181, baseType: !165, size: 32, offset: 416)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1717, file: !1692, line: 535, baseType: !1753, size: 64, offset: 640)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1717, file: !1692, line: 541, baseType: !1893, size: 64, offset: 704)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1717, file: !1692, line: 545, baseType: !1895, size: 64, offset: 768)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1717, file: !1692, line: 549, baseType: !1897, size: 64, offset: 832)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1659, line: 520, baseType: !1753)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1691, file: !1692, line: 581, baseType: !1899, size: 64, offset: 384)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!1715, !1716, !13}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1691, file: !1692, line: 582, baseType: !1903, size: 64, offset: 448)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DISubroutineType(types: !1905)
!1905 = !{!1715, !1716, !102, !102}
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1691, file: !1692, line: 584, baseType: !1907, size: 64, offset: 512)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!102, !1644}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1691, file: !1692, line: 588, baseType: !1712, size: 64, offset: 576)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1691, file: !1692, line: 591, baseType: !1712, size: 64, offset: 640)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1691, file: !1692, line: 597, baseType: !1913, size: 64, offset: 704)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!100, !1644, !102, !101, !100, !100}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1691, file: !1692, line: 603, baseType: !1917, size: 64, offset: 768)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!134, !1644}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1691, file: !1692, line: 613, baseType: !1921, size: 64, offset: 832)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!100, !1644, !1924}
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !567, line: 54, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1691, file: !1692, line: 625, baseType: !1927, size: 64, offset: 896)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!1924, !1644, !102}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1691, file: !1692, line: 633, baseType: !1931, size: 64, offset: 960)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!1753, !1644, !102}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1645, file: !44, line: 697, baseType: !102, size: 64, offset: 1024)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1645, file: !44, line: 699, baseType: !1244, size: 64, offset: 1088)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1645, file: !44, line: 700, baseType: !101, size: 64, offset: 1152)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1645, file: !44, line: 711, baseType: !596, size: 64, offset: 1216)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1645, file: !44, line: 717, baseType: !1924, size: 64, offset: 1280)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1645, file: !44, line: 722, baseType: !1940, offset: 1344)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !44, line: 570, elements: !497)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1563, file: !20, line: 1928, baseType: !102, size: 64, offset: 768)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1563, file: !20, line: 1929, baseType: !1943, size: 64, offset: 832)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!100, !294, !1244}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1563, file: !20, line: 1930, baseType: !1947, size: 64, offset: 896)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!100, !1244, !1950}
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !101)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1563, file: !20, line: 1931, baseType: !1943, size: 64, offset: 960)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1563, file: !20, line: 1932, baseType: !1953, size: 64, offset: 1024)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!100, !1244, !455, !455, !100}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1563, file: !20, line: 1933, baseType: !1957, size: 64, offset: 1088)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!100, !100, !1244, !100}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1563, file: !20, line: 1934, baseType: !1961, size: 64, offset: 1152)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!100, !1244, !100, !1964}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1563, file: !20, line: 1935, baseType: !1241, size: 64, offset: 1216)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1563, file: !20, line: 1936, baseType: !1968, size: 64, offset: 1280)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!100, !100}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1563, file: !20, line: 1937, baseType: !1961, size: 64, offset: 1344)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1563, file: !20, line: 1938, baseType: !1973, size: 64, offset: 1408)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!247, !1976, !1244, !1574, !262, !13}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !567, line: 59, flags: DIFlagFwdDecl)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1563, file: !20, line: 1939, baseType: !1979, size: 64, offset: 1472)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!247, !1244, !1574, !1976, !262, !13}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1563, file: !20, line: 1940, baseType: !1983, size: 64, offset: 1536)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !1244}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1563, file: !20, line: 1941, baseType: !1987, size: 64, offset: 1600)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!100, !1244, !100, !1990, !1991}
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1563, file: !20, line: 1942, baseType: !1993, size: 64, offset: 1664)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = !DISubroutineType(types: !1995)
!1995 = !{!251, !1244, !100, !455, !455}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1563, file: !20, line: 1944, baseType: !1997, size: 64, offset: 1728)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{null, !565, !1244}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1563, file: !20, line: 1948, baseType: !2001, size: 64, offset: 1792)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DISubroutineType(types: !2003)
!2003 = !{!247, !1244, !455, !1244, !455, !262, !13}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1563, file: !20, line: 1950, baseType: !2005, size: 64, offset: 1856)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!455, !1244, !455, !1244, !455, !455, !13}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1563, file: !20, line: 1953, baseType: !1953, size: 64, offset: 1920)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1563, file: !20, line: 1954, baseType: !2010, size: 64, offset: 1984)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!100, !2013, !13}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1563, file: !20, line: 1955, baseType: !2016, size: 64, offset: 2048)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!100, !2013, !1612, !13}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1245, file: !20, line: 1018, baseType: !367, size: 64, offset: 1472)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1245, file: !20, line: 1020, baseType: !101, size: 64, offset: 1536)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1245, file: !20, line: 1023, baseType: !101, size: 64, offset: 1600)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1245, file: !20, line: 1027, baseType: !2023, size: 64, offset: 1664)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1245, file: !20, line: 1029, baseType: !290, size: 64, offset: 1728)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1245, file: !20, line: 1030, baseType: !2026, size: 32, offset: 1792)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2027, line: 8, baseType: !363)
!2027 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1245, file: !20, line: 1031, baseType: !2026, size: 32, offset: 1824)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1221, file: !44, line: 756, baseType: !102, size: 64, offset: 704)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1221, file: !44, line: 757, baseType: !102, size: 64, offset: 768)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1221, file: !44, line: 760, baseType: !102, size: 64, offset: 832)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1221, file: !44, line: 761, baseType: !102, size: 64, offset: 896)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1221, file: !44, line: 763, baseType: !102, size: 64, offset: 960)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1221, file: !44, line: 764, baseType: !2035, size: 64, offset: 1024)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1659, line: 299, baseType: !2037)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1659, line: 299, size: 64, elements: !2038)
!2038 = !{!2039}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2037, file: !1659, line: 299, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1664, line: 18, baseType: !102)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1221, file: !44, line: 773, baseType: !165, size: 32, offset: 1088)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1221, file: !44, line: 785, baseType: !165, size: 32, offset: 1120)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1221, file: !44, line: 795, baseType: !2044, size: 64, offset: 1152)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !44, line: 726, size: 128, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2045, file: !44, line: 727, baseType: !367, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2045, file: !44, line: 728, baseType: !100, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1221, file: !44, line: 801, baseType: !102, size: 64, offset: 1216)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1221, file: !44, line: 804, baseType: !596, size: 64, offset: 1280)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1221, file: !44, line: 806, baseType: !100, size: 32, offset: 1344)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1221, file: !44, line: 808, baseType: !145, size: 32, offset: 1376)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1221, file: !44, line: 823, baseType: !805, size: 320, offset: 1408)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1221, file: !44, line: 825, baseType: !116, size: 128, offset: 1728)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1221, file: !44, line: 845, baseType: !100, size: 32, offset: 1856)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1221, file: !44, line: 849, baseType: !102, size: 64, offset: 1920)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1221, file: !44, line: 850, baseType: !102, size: 64, offset: 1984)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1221, file: !44, line: 852, baseType: !102, size: 64, offset: 2048)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1221, file: !44, line: 853, baseType: !102, size: 64, offset: 2112)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1221, file: !44, line: 854, baseType: !598, size: 64, offset: 2176)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1221, file: !44, line: 855, baseType: !102, size: 64, offset: 2240)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1221, file: !44, line: 856, baseType: !102, size: 64, offset: 2304)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1221, file: !44, line: 857, baseType: !102, size: 64, offset: 2368)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1221, file: !44, line: 858, baseType: !102, size: 64, offset: 2432)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1221, file: !44, line: 865, baseType: !340, size: 32, offset: 2496)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1221, file: !44, line: 867, baseType: !145, size: 32, offset: 2528)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1221, file: !44, line: 869, baseType: !102, size: 64, offset: 2560)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1221, file: !44, line: 869, baseType: !102, size: 64, offset: 2624)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1221, file: !44, line: 869, baseType: !102, size: 64, offset: 2688)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1221, file: !44, line: 869, baseType: !102, size: 64, offset: 2752)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1221, file: !44, line: 870, baseType: !102, size: 64, offset: 2816)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1221, file: !44, line: 870, baseType: !102, size: 64, offset: 2880)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1221, file: !44, line: 870, baseType: !102, size: 64, offset: 2944)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1221, file: !44, line: 871, baseType: !102, size: 64, offset: 3008)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1221, file: !44, line: 871, baseType: !102, size: 64, offset: 3072)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1221, file: !44, line: 871, baseType: !102, size: 64, offset: 3136)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1221, file: !44, line: 871, baseType: !102, size: 64, offset: 3200)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1221, file: !44, line: 873, baseType: !2079, size: 3328, offset: 3264)
!2079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 3328, elements: !2080)
!2080 = !{!2081}
!2081 = !DISubrange(count: 52)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1221, file: !44, line: 875, baseType: !2083, size: 1280, offset: 6592)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1510, size: 1280, elements: !1293)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1221, file: !44, line: 877, baseType: !2085, size: 64, offset: 7872)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !44, line: 877, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1221, file: !44, line: 880, baseType: !2088, size: 1088, offset: 7936)
!2088 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2089, line: 72, baseType: !2090)
!2089 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2089, line: 23, size: 1088, elements: !2091)
!2091 = !{!2092, !2093, !2094, !2095, !2096, !2099, !2100, !2101, !2102, !2129, !2130, !2131}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2090, file: !2089, line: 28, baseType: !367, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2090, file: !2089, line: 38, baseType: !598, size: 64, offset: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2090, file: !2089, line: 40, baseType: !102, size: 64, offset: 128)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2090, file: !2089, line: 43, baseType: !805, size: 320, offset: 192)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2090, file: !2089, line: 44, baseType: !2097, size: 64, offset: 512)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2089, line: 44, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2090, file: !2089, line: 48, baseType: !102, size: 64, offset: 576)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2090, file: !2089, line: 59, baseType: !592, size: 256, offset: 640)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2090, file: !2089, line: 60, baseType: !101, size: 64, offset: 896)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2090, file: !2089, line: 61, baseType: !2103, size: 64, offset: 960)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2105)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2106, line: 13, size: 1216, elements: !2107)
!2106 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2107 = !{!2108, !2109, !2110, !2111, !2112, !2113, !2114, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2105, file: !2106, line: 14, baseType: !101, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2105, file: !2106, line: 15, baseType: !102, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2105, file: !2106, line: 17, baseType: !102, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2105, file: !2106, line: 17, baseType: !102, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2105, file: !2106, line: 18, baseType: !102, size: 64, offset: 256)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2105, file: !2106, line: 18, baseType: !102, size: 64, offset: 320)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2105, file: !2106, line: 19, baseType: !2115, size: 64, offset: 384)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2105, file: !2106, line: 21, baseType: !251, size: 64, offset: 448)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2105, file: !2106, line: 23, baseType: !251, size: 64, offset: 512)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2105, file: !2106, line: 24, baseType: !251, size: 64, offset: 576)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2105, file: !2106, line: 25, baseType: !251, size: 64, offset: 640)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2105, file: !2106, line: 26, baseType: !251, size: 64, offset: 704)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2105, file: !2106, line: 27, baseType: !251, size: 64, offset: 768)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2105, file: !2106, line: 28, baseType: !251, size: 64, offset: 832)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2105, file: !2106, line: 29, baseType: !251, size: 64, offset: 896)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2105, file: !2106, line: 30, baseType: !251, size: 64, offset: 960)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2105, file: !2106, line: 31, baseType: !251, size: 64, offset: 1024)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2105, file: !2106, line: 32, baseType: !251, size: 64, offset: 1088)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2105, file: !2106, line: 33, baseType: !251, size: 64, offset: 1152)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2090, file: !2089, line: 63, baseType: !165, size: 32, offset: 1024)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2090, file: !2089, line: 69, baseType: !183, size: 16, offset: 1056)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2090, file: !2089, line: 70, baseType: !2132, size: 16, offset: 1072)
!2132 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !174, line: 18, baseType: !2133)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !176, line: 23, baseType: !1421)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1221, file: !44, line: 882, baseType: !102, size: 64, offset: 9024)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1221, file: !44, line: 885, baseType: !145, size: 32, offset: 9088)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1221, file: !44, line: 886, baseType: !2137, size: 64, offset: 9152)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !44, line: 732, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1221, file: !44, line: 901, baseType: !1334, size: 64, offset: 9216)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1221, file: !44, line: 904, baseType: !1244, size: 64, offset: 9280)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1221, file: !44, line: 906, baseType: !2142, size: 64, offset: 9344)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !44, line: 906, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1221, file: !44, line: 930, baseType: !165, size: 32, offset: 9408)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1221, file: !44, line: 933, baseType: !165, size: 32, offset: 9440)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1221, file: !44, line: 935, baseType: !2147, size: 64, offset: 9472)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !74, line: 103, size: 64, elements: !2148)
!2148 = !{!2149}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2147, file: !74, line: 104, baseType: !2150, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !74, line: 101, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1221, file: !44, line: 940, baseType: !596, size: 64, offset: 9536)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1221, file: !44, line: 942, baseType: !2154, size: 256, offset: 9600)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2155, line: 98, size: 256, elements: !2156)
!2155 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2156 = !{!2157, !2158, !2159}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2154, file: !2155, line: 99, baseType: !596, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2154, file: !2155, line: 100, baseType: !116, size: 128, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2154, file: !2155, line: 101, baseType: !2160, size: 64, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2155, line: 21, baseType: !2161)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{null, !2164}
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1218, file: !44, line: 986, baseType: !2166, offset: 10240)
!2166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, elements: !1353)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !921, file: !567, line: 882, baseType: !1217, size: 64, offset: 9792)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !921, file: !567, line: 884, baseType: !100, size: 32, offset: 9856)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !921, file: !567, line: 885, baseType: !100, size: 32, offset: 9888)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !921, file: !567, line: 886, baseType: !100, size: 32, offset: 9920)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !921, file: !567, line: 888, baseType: !100, size: 32, offset: 9952)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !921, file: !567, line: 890, baseType: !102, size: 64, offset: 9984)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !921, file: !567, line: 893, baseType: !13, size: 32, offset: 10048)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !921, file: !567, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !921, file: !567, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !921, file: !567, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !921, file: !567, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !921, file: !567, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !921, file: !567, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !921, file: !567, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !921, file: !567, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !921, file: !567, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !921, file: !567, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !921, file: !567, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !921, file: !567, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !921, file: !567, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !921, file: !567, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !921, file: !567, line: 969, baseType: !102, size: 64, offset: 10176)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !921, file: !567, line: 971, baseType: !2190, size: 448, offset: 10240)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !68, line: 25, size: 448, elements: !2191)
!2191 = !{!2192, !2193, !2198}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2190, file: !68, line: 26, baseType: !102, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2190, file: !68, line: 27, baseType: !2194, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!251, !2197}
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !68, line: 28, baseType: !2199, size: 320, offset: 128)
!2199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2190, file: !68, line: 28, size: 320, elements: !2200)
!2200 = !{!2201, !2211, !2236}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2199, file: !68, line: 37, baseType: !2202, size: 320)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !68, line: 30, size: 320, elements: !2203)
!2203 = !{!2204, !2206, !2207, !2208, !2209, !2210}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2202, file: !68, line: 31, baseType: !2205, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2202, file: !68, line: 32, baseType: !363, size: 32, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2202, file: !68, line: 33, baseType: !363, size: 32, offset: 96)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2202, file: !68, line: 34, baseType: !363, size: 32, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2202, file: !68, line: 35, baseType: !367, size: 64, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2202, file: !68, line: 36, baseType: !2205, size: 64, offset: 256)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2199, file: !68, line: 47, baseType: !2212, size: 192)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !68, line: 39, size: 192, elements: !2213)
!2213 = !{!2214, !2215, !2216, !2235}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2212, file: !68, line: 40, baseType: !1095, size: 32)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2212, file: !68, line: 41, baseType: !67, size: 32, offset: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !68, line: 42, baseType: !2217, size: 64, offset: 64)
!2217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2212, file: !68, line: 42, size: 64, elements: !2218)
!2218 = !{!2219, !2227}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2217, file: !68, line: 43, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2222, line: 7, size: 128, elements: !2223)
!2222 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2223 = !{!2224, !2226}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2221, file: !2222, line: 8, baseType: !2225, size: 64)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !249, line: 93, baseType: !457)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2221, file: !2222, line: 9, baseType: !457, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2217, file: !68, line: 44, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2230, line: 7, size: 64, elements: !2231)
!2230 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2231 = !{!2232, !2234}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2229, file: !2230, line: 8, baseType: !2233, size: 32)
!2233 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2230, line: 5, baseType: !1395)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2229, file: !2230, line: 9, baseType: !1395, size: 32, offset: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2212, file: !68, line: 46, baseType: !367, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2199, file: !68, line: 55, baseType: !2237, size: 256)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2199, file: !68, line: 49, size: 256, elements: !2238)
!2238 = !{!2239, !2242, !2243, !2244, !2245}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2237, file: !68, line: 50, baseType: !2240, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !68, line: 14, flags: DIFlagFwdDecl)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2237, file: !68, line: 51, baseType: !100, size: 32, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2237, file: !68, line: 52, baseType: !100, size: 32, offset: 96)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2237, file: !68, line: 53, baseType: !102, size: 64, offset: 128)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2237, file: !68, line: 54, baseType: !102, size: 64, offset: 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !921, file: !567, line: 973, baseType: !2247, size: 32, offset: 10688)
!2247 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !117, line: 27, baseType: !2248)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !249, line: 28, baseType: !100)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !921, file: !567, line: 974, baseType: !2247, size: 32, offset: 10720)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !921, file: !567, line: 978, baseType: !102, size: 64, offset: 10752)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !921, file: !567, line: 987, baseType: !920, size: 64, offset: 10816)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !921, file: !567, line: 990, baseType: !920, size: 64, offset: 10880)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !921, file: !567, line: 995, baseType: !116, size: 128, offset: 10944)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !921, file: !567, line: 996, baseType: !116, size: 128, offset: 11072)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !921, file: !567, line: 997, baseType: !920, size: 64, offset: 11200)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !921, file: !567, line: 1005, baseType: !116, size: 128, offset: 11264)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !921, file: !567, line: 1006, baseType: !116, size: 128, offset: 11392)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !921, file: !567, line: 1009, baseType: !1285, size: 64, offset: 11520)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !921, file: !567, line: 1010, baseType: !2260, size: 512, offset: 11584)
!2260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 512, elements: !1293)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !921, file: !567, line: 1011, baseType: !116, size: 128, offset: 12096)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !921, file: !567, line: 1012, baseType: !116, size: 128, offset: 12224)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !921, file: !567, line: 1014, baseType: !2264, size: 64, offset: 12352)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !921, file: !567, line: 1017, baseType: !99, size: 64, offset: 12416)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !921, file: !567, line: 1020, baseType: !99, size: 64, offset: 12480)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !921, file: !567, line: 1023, baseType: !101, size: 64, offset: 12544)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !921, file: !567, line: 1025, baseType: !367, size: 64, offset: 12608)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !921, file: !567, line: 1026, baseType: !367, size: 64, offset: 12672)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !921, file: !567, line: 1031, baseType: !367, size: 64, offset: 12736)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !921, file: !567, line: 1032, baseType: !2272, size: 192, offset: 12800)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !567, line: 324, size: 192, elements: !2273)
!2273 = !{!2274, !2275, !2276}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2272, file: !567, line: 326, baseType: !367, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2272, file: !567, line: 327, baseType: !367, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2272, file: !567, line: 328, baseType: !605, size: 32, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !921, file: !567, line: 1041, baseType: !102, size: 64, offset: 12992)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !921, file: !567, line: 1042, baseType: !102, size: 64, offset: 13056)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !921, file: !567, line: 1045, baseType: !367, size: 64, offset: 13120)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !921, file: !567, line: 1048, baseType: !367, size: 64, offset: 13184)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !921, file: !567, line: 1051, baseType: !102, size: 64, offset: 13248)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !921, file: !567, line: 1052, baseType: !102, size: 64, offset: 13312)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !921, file: !567, line: 1055, baseType: !2284, size: 640, offset: 13376)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2285, line: 132, size: 640, elements: !2286)
!2285 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2286 = !{!2287, !2293, !2294}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2284, file: !2285, line: 133, baseType: !2288, size: 576)
!2288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2289, size: 576, elements: !216)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2285, line: 117, size: 192, elements: !2290)
!2290 = !{!2291, !2292}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2289, file: !2285, line: 118, baseType: !367, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2289, file: !2285, line: 119, baseType: !1104, size: 128, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2284, file: !2285, line: 134, baseType: !13, size: 32, offset: 576)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2284, file: !2285, line: 135, baseType: !13, size: 32, offset: 608)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !921, file: !567, line: 1058, baseType: !2296, size: 448, offset: 14016)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2285, line: 144, size: 448, elements: !2297)
!2297 = !{!2298, !2299, !2300}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2296, file: !2285, line: 145, baseType: !905, size: 128, align: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2296, file: !2285, line: 146, baseType: !592, size: 256, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2296, file: !2285, line: 147, baseType: !13, size: 32, offset: 384)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !921, file: !567, line: 1064, baseType: !1360, size: 64, offset: 14464)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !921, file: !567, line: 1067, baseType: !1360, size: 64, offset: 14528)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !921, file: !567, line: 1070, baseType: !1360, size: 64, offset: 14592)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !921, file: !567, line: 1074, baseType: !1387, size: 64, offset: 14656)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !921, file: !567, line: 1084, baseType: !2306, size: 128, offset: 14720)
!2306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2307)
!2307 = !{!2308}
!2308 = !DISubrange(count: 16)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !921, file: !567, line: 1086, baseType: !2310, size: 64, offset: 14848)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !567, line: 55, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !921, file: !567, line: 1089, baseType: !2313, size: 64, offset: 14912)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2314, line: 12, size: 64, elements: !2315)
!2314 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2315 = !{!2316}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2313, file: !2314, line: 13, baseType: !2317, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2314, line: 8, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !921, file: !567, line: 1090, baseType: !2320, size: 128, offset: 14976)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2321, line: 13, size: 128, elements: !2322)
!2321 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2322 = !{!2323}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2320, file: !2321, line: 14, baseType: !116, size: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !921, file: !567, line: 1097, baseType: !2325, size: 64, offset: 15104)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !567, line: 50, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !921, file: !567, line: 1100, baseType: !2328, size: 64, offset: 15168)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !567, line: 1100, flags: DIFlagFwdDecl)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !921, file: !567, line: 1103, baseType: !2331, size: 64, offset: 15232)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !567, line: 53, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !921, file: !567, line: 1107, baseType: !2334, size: 64, offset: 15296)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2336, line: 31, size: 576, elements: !2337)
!2336 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2337 = !{!2338, !2339, !2342, !2345, !2348, !2349, !2352, !2355, !2356}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2335, file: !2336, line: 32, baseType: !934, size: 32)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2335, file: !2336, line: 33, baseType: !2340, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2336, line: 9, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2335, file: !2336, line: 34, baseType: !2343, size: 64, offset: 128)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2336, line: 10, flags: DIFlagFwdDecl)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2335, file: !2336, line: 35, baseType: !2346, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2336, line: 8, flags: DIFlagFwdDecl)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2335, file: !2336, line: 36, baseType: !1304, size: 64, offset: 256)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2335, file: !2336, line: 37, baseType: !2350, size: 64, offset: 320)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1389, line: 34, flags: DIFlagFwdDecl)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2335, file: !2336, line: 38, baseType: !2353, size: 64, offset: 384)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2336, line: 38, flags: DIFlagFwdDecl)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2335, file: !2336, line: 39, baseType: !2353, size: 64, offset: 448)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2335, file: !2336, line: 40, baseType: !2357, size: 64, offset: 512)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2336, line: 12, flags: DIFlagFwdDecl)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !921, file: !567, line: 1110, baseType: !2360, size: 64, offset: 15360)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2362, line: 93, size: 8768, elements: !2363)
!2362 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2363 = !{!2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2413, !2422, !2423, !2425, !2426, !2427, !2430, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2468, !2469, !2476, !2486, !2489, !2490, !2493, !2494, !2495, !2496, !2497, !2498}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2361, file: !2362, line: 94, baseType: !934, size: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2361, file: !2362, line: 95, baseType: !165, size: 32, offset: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2361, file: !2362, line: 96, baseType: !100, size: 32, offset: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2361, file: !2362, line: 97, baseType: !100, size: 32, offset: 96)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2361, file: !2362, line: 98, baseType: !116, size: 128, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2361, file: !2362, line: 100, baseType: !898, size: 192, offset: 256)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2361, file: !2362, line: 103, baseType: !920, size: 64, offset: 448)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2361, file: !2362, line: 106, baseType: !2372, size: 192, offset: 512)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1339, line: 32, size: 192, elements: !2373)
!2373 = !{!2374, !2375}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2372, file: !1339, line: 33, baseType: !116, size: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2372, file: !1339, line: 34, baseType: !2376, size: 64, offset: 128)
!2376 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2377, line: 25, baseType: !2378)
!2377 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2377, line: 23, size: 64, elements: !2379)
!2379 = !{!2380}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2378, file: !2377, line: 24, baseType: !108, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2361, file: !2362, line: 109, baseType: !485, size: 64, offset: 704)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2361, file: !2362, line: 112, baseType: !100, size: 32, offset: 768)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2361, file: !2362, line: 114, baseType: !100, size: 32, offset: 800)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2361, file: !2362, line: 115, baseType: !920, size: 64, offset: 832)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2361, file: !2362, line: 118, baseType: !100, size: 32, offset: 896)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2361, file: !2362, line: 119, baseType: !13, size: 32, offset: 928)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2361, file: !2362, line: 121, baseType: !2388, size: 64, offset: 960)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2362, line: 80, size: 448, elements: !2390)
!2390 = !{!2391, !2392, !2398}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2389, file: !2362, line: 81, baseType: !165, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2389, file: !2362, line: 82, baseType: !2393, size: 128, offset: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2362, line: 75, size: 128, elements: !2394)
!2394 = !{!2395, !2396}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2393, file: !2362, line: 76, baseType: !920, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2393, file: !2362, line: 77, baseType: !2397, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2389, file: !2362, line: 83, baseType: !1838, size: 256, offset: 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2361, file: !2362, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2361, file: !2362, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2361, file: !2362, line: 138, baseType: !13, size: 32, offset: 1056)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2361, file: !2362, line: 139, baseType: !116, size: 128, offset: 1088)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2361, file: !2362, line: 142, baseType: !1048, size: 512, offset: 1216)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2361, file: !2362, line: 143, baseType: !1056, size: 64, offset: 1728)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2361, file: !2362, line: 150, baseType: !2406, size: 256, offset: 1792)
!2406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2407, size: 256, elements: !2411)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2362, line: 38, size: 128, elements: !2408)
!2408 = !{!2409, !2410}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2407, file: !2362, line: 39, baseType: !367, size: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2407, file: !2362, line: 40, baseType: !367, size: 64, offset: 64)
!2411 = !{!2412}
!2412 = !DISubrange(count: 2)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2361, file: !2362, line: 156, baseType: !2414, size: 192, offset: 2048)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2362, line: 66, size: 192, elements: !2415)
!2415 = !{!2416}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2414, file: !2362, line: 67, baseType: !2417, size: 192)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2362, line: 47, size: 192, elements: !2418)
!2418 = !{!2419, !2420, !2421}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2417, file: !2362, line: 48, baseType: !598, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2417, file: !2362, line: 49, baseType: !598, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2417, file: !2362, line: 50, baseType: !598, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2361, file: !2362, line: 160, baseType: !2284, size: 640, offset: 2240)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2361, file: !2362, line: 163, baseType: !2424, size: 256, offset: 2880)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1285, size: 256, elements: !1293)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2361, file: !2362, line: 169, baseType: !1285, size: 64, offset: 3136)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2361, file: !2362, line: 172, baseType: !100, size: 32, offset: 3200)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2361, file: !2362, line: 174, baseType: !2428, size: 64, offset: 3264)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2362, line: 174, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2361, file: !2362, line: 185, baseType: !2431, size: 64, offset: 3328)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !336, line: 860, baseType: !2432)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !336, line: 853, size: 64, elements: !2433)
!2433 = !{!2434, !2435}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2432, file: !336, line: 858, baseType: !335, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2432, file: !336, line: 859, baseType: !145, size: 32, offset: 32)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2361, file: !2362, line: 186, baseType: !367, size: 64, offset: 3392)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2361, file: !2362, line: 186, baseType: !367, size: 64, offset: 3456)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2361, file: !2362, line: 186, baseType: !367, size: 64, offset: 3520)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2361, file: !2362, line: 186, baseType: !367, size: 64, offset: 3584)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2361, file: !2362, line: 187, baseType: !367, size: 64, offset: 3648)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2361, file: !2362, line: 188, baseType: !367, size: 64, offset: 3712)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2361, file: !2362, line: 189, baseType: !2272, size: 192, offset: 3776)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2361, file: !2362, line: 190, baseType: !102, size: 64, offset: 3968)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2361, file: !2362, line: 190, baseType: !102, size: 64, offset: 4032)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2361, file: !2362, line: 190, baseType: !102, size: 64, offset: 4096)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2361, file: !2362, line: 190, baseType: !102, size: 64, offset: 4160)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2361, file: !2362, line: 191, baseType: !102, size: 64, offset: 4224)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2361, file: !2362, line: 191, baseType: !102, size: 64, offset: 4288)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2361, file: !2362, line: 191, baseType: !102, size: 64, offset: 4352)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2361, file: !2362, line: 191, baseType: !102, size: 64, offset: 4416)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2361, file: !2362, line: 192, baseType: !102, size: 64, offset: 4480)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2361, file: !2362, line: 192, baseType: !102, size: 64, offset: 4544)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2361, file: !2362, line: 192, baseType: !102, size: 64, offset: 4608)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2361, file: !2362, line: 192, baseType: !102, size: 64, offset: 4672)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2361, file: !2362, line: 193, baseType: !102, size: 64, offset: 4736)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2361, file: !2362, line: 193, baseType: !102, size: 64, offset: 4800)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2361, file: !2362, line: 194, baseType: !2458, size: 448, offset: 4864)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2459, line: 12, size: 448, elements: !2460)
!2459 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2460 = !{!2461, !2462, !2463, !2464, !2465, !2466, !2467}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2458, file: !2459, line: 15, baseType: !367, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2458, file: !2459, line: 17, baseType: !367, size: 64, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2458, file: !2459, line: 19, baseType: !367, size: 64, offset: 128)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2458, file: !2459, line: 21, baseType: !367, size: 64, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2458, file: !2459, line: 29, baseType: !367, size: 64, offset: 256)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2458, file: !2459, line: 35, baseType: !367, size: 64, offset: 320)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2458, file: !2459, line: 44, baseType: !367, size: 64, offset: 384)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2361, file: !2362, line: 202, baseType: !369, size: 64, offset: 5312)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2361, file: !2362, line: 213, baseType: !2470, size: 2048, offset: 5376)
!2470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2471, size: 2048, elements: !2307)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2472, line: 43, size: 128, elements: !2473)
!2472 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2473 = !{!2474, !2475}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2471, file: !2472, line: 44, baseType: !264, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2471, file: !2472, line: 45, baseType: !264, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2361, file: !2362, line: 216, baseType: !2477, size: 448, offset: 7424)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2362, line: 30, size: 448, elements: !2478)
!2478 = !{!2479, !2480, !2481, !2482, !2483, !2484, !2485}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2477, file: !2362, line: 31, baseType: !100, size: 32)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2477, file: !2362, line: 32, baseType: !251, size: 64, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2477, file: !2362, line: 33, baseType: !102, size: 64, offset: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2477, file: !2362, line: 34, baseType: !367, size: 64, offset: 192)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2477, file: !2362, line: 34, baseType: !367, size: 64, offset: 256)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2477, file: !2362, line: 35, baseType: !102, size: 64, offset: 320)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2477, file: !2362, line: 35, baseType: !102, size: 64, offset: 384)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2361, file: !2362, line: 219, baseType: !2487, size: 64, offset: 7872)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2362, line: 219, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2361, file: !2362, line: 222, baseType: !13, size: 32, offset: 7936)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2361, file: !2362, line: 223, baseType: !2491, size: 64, offset: 8000)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2362, line: 223, flags: DIFlagFwdDecl)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2361, file: !2362, line: 230, baseType: !1452, size: 8, offset: 8064)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2361, file: !2362, line: 231, baseType: !1421, size: 16, offset: 8080)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2361, file: !2362, line: 232, baseType: !1421, size: 16, offset: 8096)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2361, file: !2362, line: 234, baseType: !1217, size: 64, offset: 8128)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2361, file: !2362, line: 237, baseType: !592, size: 256, offset: 8192)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2361, file: !2362, line: 243, baseType: !805, size: 320, offset: 8448)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !921, file: !567, line: 1111, baseType: !2500, size: 64, offset: 15424)
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2362, line: 20, size: 16640, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2501, file: !2362, line: 21, baseType: !145, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2501, file: !2362, line: 22, baseType: !934, size: 32, offset: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2501, file: !2362, line: 23, baseType: !898, size: 192, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2501, file: !2362, line: 24, baseType: !2507, size: 16384, offset: 256)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2508, size: 16384, elements: !220)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1339, line: 51, size: 256, elements: !2509)
!2509 = !{!2510}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2508, file: !1339, line: 52, baseType: !2511, size: 256)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1339, line: 37, size: 256, elements: !2512)
!2512 = !{!2513, !2520, !2521, !2527}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2511, file: !1339, line: 39, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2515, line: 83, baseType: !2516)
!2515 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2515, line: 82, baseType: !2518)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{null, !100}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2511, file: !1339, line: 40, baseType: !102, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2511, file: !1339, line: 46, baseType: !2522, size: 64, offset: 128)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2515, line: 86, baseType: !2523)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2515, line: 85, baseType: !2525)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{null}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2511, file: !1339, line: 48, baseType: !2376, size: 64, offset: 192)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !921, file: !567, line: 1112, baseType: !2376, size: 64, offset: 15488)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !921, file: !567, line: 1113, baseType: !2376, size: 64, offset: 15552)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !921, file: !567, line: 1115, baseType: !2376, size: 64, offset: 15616)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !921, file: !567, line: 1116, baseType: !2372, size: 192, offset: 15680)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !921, file: !567, line: 1117, baseType: !102, size: 64, offset: 15872)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !921, file: !567, line: 1118, baseType: !262, size: 64, offset: 15936)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !921, file: !567, line: 1119, baseType: !13, size: 32, offset: 16000)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !921, file: !567, line: 1121, baseType: !908, size: 64, offset: 16064)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !921, file: !567, line: 1125, baseType: !2537, size: 64, offset: 16128)
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2538, size: 64)
!2538 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !567, line: 43, flags: DIFlagFwdDecl)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !921, file: !567, line: 1127, baseType: !300, size: 32, offset: 16192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !921, file: !567, line: 1128, baseType: !13, size: 32, offset: 16224)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !921, file: !567, line: 1130, baseType: !2542, size: 128, offset: 16256)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2543, line: 37, size: 128, elements: !2544)
!2543 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2544 = !{!2545, !2546, !2547}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2542, file: !2543, line: 38, baseType: !100, size: 32)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2542, file: !2543, line: 39, baseType: !165, size: 32, offset: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2542, file: !2543, line: 40, baseType: !2548, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2543, line: 24, flags: DIFlagFwdDecl)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !921, file: !567, line: 1131, baseType: !2551, size: 256, offset: 16384)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2552, line: 12, size: 256, elements: !2553)
!2552 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2553 = !{!2554, !2555, !2556, !2557}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2551, file: !2552, line: 13, baseType: !215, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2551, file: !2552, line: 14, baseType: !102, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2551, file: !2552, line: 15, baseType: !102, size: 64, offset: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2551, file: !2552, line: 16, baseType: !1452, size: 8, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !921, file: !567, line: 1134, baseType: !367, size: 64, offset: 16640)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !921, file: !567, line: 1135, baseType: !367, size: 64, offset: 16704)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !921, file: !567, line: 1138, baseType: !145, size: 32, offset: 16768)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !921, file: !567, line: 1141, baseType: !605, size: 32, offset: 16800)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !921, file: !567, line: 1143, baseType: !2563, size: 64, offset: 16832)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !567, line: 735, size: 64, elements: !2564)
!2564 = !{!2565}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2563, file: !567, line: 736, baseType: !2566, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !921, file: !567, line: 1147, baseType: !1107, size: 128, offset: 16896)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !921, file: !567, line: 1149, baseType: !920, size: 64, offset: 17024)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !921, file: !567, line: 1151, baseType: !2570, size: 64, offset: 17088)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !567, line: 1151, flags: DIFlagFwdDecl)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !921, file: !567, line: 1188, baseType: !101, size: 64, offset: 17152)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !921, file: !567, line: 1191, baseType: !2574, size: 64, offset: 17216)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !567, line: 44, flags: DIFlagFwdDecl)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !921, file: !567, line: 1194, baseType: !2577, size: 64, offset: 17280)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !567, line: 45, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !921, file: !567, line: 1197, baseType: !2580, size: 64, offset: 17344)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !567, line: 61, flags: DIFlagFwdDecl)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !921, file: !567, line: 1199, baseType: !2583, size: 64, offset: 17408)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2585, line: 99, size: 128, elements: !2586)
!2585 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2586 = !{!2587, !2588, !2589}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2584, file: !2585, line: 100, baseType: !596, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2584, file: !2585, line: 101, baseType: !165, size: 32, offset: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2584, file: !2585, line: 103, baseType: !185, size: 16, offset: 96)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !921, file: !567, line: 1202, baseType: !2591, size: 64, offset: 17472)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !567, line: 48, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !921, file: !567, line: 1205, baseType: !102, size: 64, offset: 17536)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !921, file: !567, line: 1206, baseType: !2595, size: 64, offset: 17600)
!2595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2596, size: 64)
!2596 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1339, line: 14, baseType: !2597)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1339, line: 12, size: 384, elements: !2598)
!2598 = !{!2599}
!2599 = !DIDerivedType(tag: DW_TAG_member, scope: !2597, file: !1339, line: 13, baseType: !2600, size: 384)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2597, file: !1339, line: 13, size: 384, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2605}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2600, file: !1339, line: 13, baseType: !100, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2600, file: !1339, line: 13, baseType: !100, size: 32, offset: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2600, file: !1339, line: 13, baseType: !100, size: 32, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2600, file: !1339, line: 13, baseType: !2606, size: 256, offset: 128)
!2606 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2607, line: 37, size: 256, elements: !2608)
!2607 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2608 = !{!2609, !2614, !2627, !2633, !2642, !2669, !2674}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2606, file: !2607, line: 42, baseType: !2610, size: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2606, file: !2607, line: 39, size: 64, elements: !2611)
!2611 = !{!2612, !2613}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2610, file: !2607, line: 40, baseType: !2248, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2610, file: !2607, line: 41, baseType: !306, size: 32, offset: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2606, file: !2607, line: 50, baseType: !2615, size: 192)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2606, file: !2607, line: 45, size: 192, elements: !2616)
!2616 = !{!2617, !2619, !2620, !2626}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2615, file: !2607, line: 46, baseType: !2618, size: 32)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !249, line: 95, baseType: !100)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2615, file: !2607, line: 47, baseType: !100, size: 32, offset: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2615, file: !2607, line: 48, baseType: !2621, size: 64, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2607, line: 11, baseType: !2622)
!2622 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2607, line: 8, size: 64, elements: !2623)
!2623 = !{!2624, !2625}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2622, file: !2607, line: 9, baseType: !100, size: 32)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2622, file: !2607, line: 10, baseType: !101, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2615, file: !2607, line: 49, baseType: !100, size: 32, offset: 128)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2606, file: !2607, line: 57, baseType: !2628, size: 128)
!2628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2606, file: !2607, line: 53, size: 128, elements: !2629)
!2629 = !{!2630, !2631, !2632}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2628, file: !2607, line: 54, baseType: !2248, size: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2628, file: !2607, line: 55, baseType: !306, size: 32, offset: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2628, file: !2607, line: 56, baseType: !2621, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2606, file: !2607, line: 66, baseType: !2634, size: 256)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2606, file: !2607, line: 60, size: 256, elements: !2635)
!2635 = !{!2636, !2637, !2638, !2639, !2641}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2634, file: !2607, line: 61, baseType: !2248, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2634, file: !2607, line: 62, baseType: !306, size: 32, offset: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2634, file: !2607, line: 63, baseType: !100, size: 32, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2634, file: !2607, line: 64, baseType: !2640, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !249, line: 94, baseType: !250)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2634, file: !2607, line: 65, baseType: !2640, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2606, file: !2607, line: 105, baseType: !2643, size: 256)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2606, file: !2607, line: 69, size: 256, elements: !2644)
!2644 = !{!2645, !2646}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2643, file: !2607, line: 70, baseType: !101, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, scope: !2643, file: !2607, line: 79, baseType: !2647, size: 192, offset: 64)
!2647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2643, file: !2607, line: 79, size: 192, elements: !2648)
!2648 = !{!2649, !2650, !2651, !2658, !2663}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2647, file: !2607, line: 81, baseType: !100, size: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2647, file: !2607, line: 86, baseType: !1421, size: 16)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2647, file: !2607, line: 92, baseType: !2652, size: 192)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2647, file: !2607, line: 88, size: 192, elements: !2653)
!2653 = !{!2654, !2656, !2657}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2652, file: !2607, line: 89, baseType: !2655, size: 64)
!2655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1091)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2652, file: !2607, line: 90, baseType: !101, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2652, file: !2607, line: 91, baseType: !101, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2647, file: !2607, line: 97, baseType: !2659, size: 96)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2647, file: !2607, line: 94, size: 96, elements: !2660)
!2660 = !{!2661, !2662}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2659, file: !2607, line: 95, baseType: !2655, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2659, file: !2607, line: 96, baseType: !364, size: 32, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2647, file: !2607, line: 103, baseType: !2664, size: 128)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2647, file: !2607, line: 99, size: 128, elements: !2665)
!2665 = !{!2666, !2667, !2668}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2664, file: !2607, line: 100, baseType: !102, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2664, file: !2607, line: 101, baseType: !364, size: 32, offset: 64)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2664, file: !2607, line: 102, baseType: !364, size: 32, offset: 96)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2606, file: !2607, line: 111, baseType: !2670, size: 128)
!2670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2606, file: !2607, line: 108, size: 128, elements: !2671)
!2671 = !{!2672, !2673}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2670, file: !2607, line: 109, baseType: !251, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2670, file: !2607, line: 110, baseType: !100, size: 32, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2606, file: !2607, line: 118, baseType: !2675, size: 128)
!2675 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2606, file: !2607, line: 114, size: 128, elements: !2676)
!2676 = !{!2677, !2678, !2679}
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2675, file: !2607, line: 115, baseType: !101, size: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2675, file: !2607, line: 116, baseType: !100, size: 32, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2675, file: !2607, line: 117, baseType: !13, size: 32, offset: 96)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !921, file: !567, line: 1208, baseType: !2458, size: 448, offset: 17664)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !921, file: !567, line: 1215, baseType: !367, size: 64, offset: 18112)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !921, file: !567, line: 1217, baseType: !367, size: 64, offset: 18176)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !921, file: !567, line: 1219, baseType: !367, size: 64, offset: 18240)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !921, file: !567, line: 1223, baseType: !2685, size: 64, offset: 18304)
!2685 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2686, line: 99, baseType: !2687)
!2686 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2686, line: 99, size: 64, elements: !2688)
!2688 = !{!2689}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2687, file: !2686, line: 99, baseType: !108, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !921, file: !567, line: 1225, baseType: !335, size: 32, offset: 18368)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !921, file: !567, line: 1226, baseType: !100, size: 32, offset: 18400)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !921, file: !567, line: 1227, baseType: !100, size: 32, offset: 18432)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !921, file: !567, line: 1231, baseType: !2694, size: 64, offset: 18496)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !567, line: 1231, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !921, file: !567, line: 1233, baseType: !116, size: 128, offset: 18560)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !921, file: !567, line: 1240, baseType: !2698, size: 64, offset: 18688)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !567, line: 62, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !921, file: !567, line: 1242, baseType: !2701, size: 64, offset: 18752)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !567, line: 1242, flags: DIFlagFwdDecl)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !921, file: !567, line: 1244, baseType: !116, size: 128, offset: 18816)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !921, file: !567, line: 1245, baseType: !2705, size: 64, offset: 18944)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !567, line: 51, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !921, file: !567, line: 1246, baseType: !592, size: 256, offset: 19008)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !921, file: !567, line: 1247, baseType: !13, size: 32, offset: 19264)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !921, file: !567, line: 1250, baseType: !2710, size: 64, offset: 19328)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !567, line: 57, flags: DIFlagFwdDecl)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !921, file: !567, line: 1251, baseType: !592, size: 256, offset: 19392)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !921, file: !567, line: 1252, baseType: !116, size: 128, offset: 19648)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !921, file: !567, line: 1259, baseType: !1924, size: 64, offset: 19776)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !921, file: !567, line: 1260, baseType: !1421, size: 16, offset: 19840)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !921, file: !567, line: 1261, baseType: !1421, size: 16, offset: 19856)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !921, file: !567, line: 1314, baseType: !2718, size: 64, offset: 19904)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2720, line: 62, size: 256, align: 256, elements: !2721)
!2720 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2721 = !{!2722, !2723, !2724, !2725, !2726, !2727, !2728}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2719, file: !2720, line: 75, baseType: !364, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2719, file: !2720, line: 90, baseType: !364, size: 32, offset: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2719, file: !2720, line: 112, baseType: !368, size: 64, offset: 64)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2719, file: !2720, line: 132, baseType: !364, size: 32, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2719, file: !2720, line: 140, baseType: !364, size: 32, offset: 160)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2719, file: !2720, line: 149, baseType: !364, size: 32, offset: 192)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2719, file: !2720, line: 154, baseType: !2729, offset: 224)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1353)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !921, file: !567, line: 1315, baseType: !363, size: 32, offset: 19968)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !921, file: !567, line: 1316, baseType: !363, size: 32, offset: 20000)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !921, file: !567, line: 1321, baseType: !102, size: 64, offset: 20032)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !921, file: !567, line: 1325, baseType: !100, size: 32, offset: 20096)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !921, file: !567, line: 1326, baseType: !100, size: 32, offset: 20128)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !921, file: !567, line: 1327, baseType: !100, size: 32, offset: 20160)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !921, file: !567, line: 1328, baseType: !100, size: 32, offset: 20192)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !921, file: !567, line: 1329, baseType: !905, size: 128, align: 64, offset: 20224)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !921, file: !567, line: 1332, baseType: !2739, size: 128, offset: 20352)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2740, line: 51, size: 128, elements: !2741)
!2740 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2741 = !{!2742, !2747, !2748}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2739, file: !2740, line: 60, baseType: !2743, size: 64)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2744, line: 7, size: 64, elements: !2745)
!2744 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2745 = !{!2746}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2743, file: !2744, line: 12, baseType: !104, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2739, file: !2740, line: 63, baseType: !1452, size: 8, offset: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2739, file: !2740, line: 70, baseType: !1452, size: 8, offset: 72)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !921, file: !567, line: 1335, baseType: !1976, size: 64, offset: 20480)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !921, file: !567, line: 1337, baseType: !2751, size: 128, offset: 20544)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2740, line: 39, size: 128, elements: !2752)
!2752 = !{!2753, !2754, !2755}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2751, file: !2740, line: 40, baseType: !1753, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2751, file: !2740, line: 42, baseType: !364, size: 32, offset: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2751, file: !2740, line: 43, baseType: !364, size: 32, offset: 96)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !921, file: !567, line: 1340, baseType: !2757, size: 64, offset: 20672)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !567, line: 69, flags: DIFlagFwdDecl)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !921, file: !567, line: 1351, baseType: !100, size: 32, offset: 20736)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !921, file: !567, line: 1352, baseType: !100, size: 32, offset: 20768)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !921, file: !567, line: 1354, baseType: !102, size: 64, offset: 20800)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !921, file: !567, line: 1364, baseType: !367, size: 64, offset: 20864)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !921, file: !567, line: 1365, baseType: !367, size: 64, offset: 20928)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !921, file: !567, line: 1412, baseType: !102, size: 64, offset: 20992)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !921, file: !567, line: 1453, baseType: !2766, size: 64, offset: 21056)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !567, line: 1453, flags: DIFlagFwdDecl)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !921, file: !567, line: 1457, baseType: !2769, size: 64, offset: 21120)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !74, line: 61, size: 576, elements: !2771)
!2771 = !{!2772, !2773, !2792, !2795, !2796, !2829, !2839}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2770, file: !74, line: 62, baseType: !73, size: 32)
!2773 = !DIDerivedType(tag: DW_TAG_member, scope: !2770, file: !74, line: 64, baseType: !2774, size: 192, offset: 64)
!2774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2770, file: !74, line: 64, size: 192, elements: !2775)
!2775 = !{!2776, !2787}
!2776 = !DIDerivedType(tag: DW_TAG_member, scope: !2774, file: !74, line: 65, baseType: !2777, size: 192)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2774, file: !74, line: 65, size: 192, elements: !2778)
!2778 = !{!2779, !2786}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2777, file: !74, line: 66, baseType: !2780, size: 128)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2781, line: 50, size: 128, elements: !2782)
!2781 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2782 = !{!2783, !2784, !2785}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2780, file: !2781, line: 52, baseType: !102, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2780, file: !2781, line: 54, baseType: !13, size: 32, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2780, file: !2781, line: 55, baseType: !13, size: 32, offset: 96)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2777, file: !74, line: 67, baseType: !102, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, scope: !2774, file: !74, line: 70, baseType: !2788, size: 192)
!2788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2774, file: !74, line: 70, size: 192, elements: !2789)
!2789 = !{!2790, !2791}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2788, file: !74, line: 71, baseType: !905, size: 128, align: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2788, file: !74, line: 72, baseType: !102, size: 64, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2770, file: !74, line: 76, baseType: !2793, size: 64, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !74, line: 76, flags: DIFlagFwdDecl)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2770, file: !74, line: 77, baseType: !102, size: 64, offset: 320)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2770, file: !74, line: 79, baseType: !2797, size: 64, offset: 384)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2781, line: 25, size: 256, elements: !2799)
!2799 = !{!2800, !2806, !2810}
!2800 = !DIDerivedType(tag: DW_TAG_member, scope: !2798, file: !2781, line: 26, baseType: !2801, size: 128)
!2801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2798, file: !2781, line: 26, size: 128, elements: !2802)
!2802 = !{!2803, !2805}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2801, file: !2781, line: 27, baseType: !2804, size: 128)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 128, elements: !2307)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2801, file: !2781, line: 28, baseType: !2804, size: 128)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2798, file: !2781, line: 31, baseType: !2807, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2809)
!2809 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2781, line: 23, flags: DIFlagFwdDecl)
!2810 = !DIDerivedType(tag: DW_TAG_member, scope: !2798, file: !2781, line: 33, baseType: !2811, size: 64, offset: 192)
!2811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2798, file: !2781, line: 33, size: 64, elements: !2812)
!2812 = !{!2813, !2819, !2824}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2811, file: !2781, line: 38, baseType: !2814, size: 64)
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2811, file: !2781, line: 34, size: 64, elements: !2815)
!2815 = !{!2816, !2817, !2818}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2814, file: !2781, line: 35, baseType: !1395, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2814, file: !2781, line: 36, baseType: !173, size: 8, offset: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2814, file: !2781, line: 37, baseType: !173, size: 8, offset: 40)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2811, file: !2781, line: 42, baseType: !2820, size: 16)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2811, file: !2781, line: 39, size: 16, elements: !2821)
!2821 = !{!2822, !2823}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2820, file: !2781, line: 40, baseType: !173, size: 8)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2820, file: !2781, line: 41, baseType: !173, size: 8, offset: 8)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2811, file: !2781, line: 46, baseType: !2825, size: 16)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2811, file: !2781, line: 43, size: 16, elements: !2826)
!2826 = !{!2827, !2828}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2825, file: !2781, line: 44, baseType: !173, size: 8)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2825, file: !2781, line: 45, baseType: !173, size: 8, offset: 8)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2770, file: !74, line: 81, baseType: !2830, size: 64, offset: 448)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !74, line: 85, size: 384, elements: !2832)
!2832 = !{!2833, !2834, !2835, !2836, !2837, !2838}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2831, file: !74, line: 86, baseType: !2793, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2831, file: !74, line: 87, baseType: !102, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2831, file: !74, line: 88, baseType: !102, size: 64, offset: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2831, file: !74, line: 89, baseType: !102, size: 64, offset: 192)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2831, file: !74, line: 90, baseType: !1452, size: 8, offset: 256)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2831, file: !74, line: 92, baseType: !2830, size: 64, offset: 320)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2770, file: !74, line: 82, baseType: !13, size: 32, offset: 512)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !921, file: !567, line: 1463, baseType: !2841, offset: 21184)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !567, line: 739, elements: !497)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !921, file: !567, line: 1470, baseType: !905, size: 128, align: 64, offset: 21184)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !921, file: !567, line: 1471, baseType: !934, size: 32, offset: 21312)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !921, file: !567, line: 1472, baseType: !100, size: 32, offset: 21344)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !921, file: !567, line: 1474, baseType: !920, size: 64, offset: 21376)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !921, file: !567, line: 1475, baseType: !2847, size: 320, offset: 21440)
!2847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2848, line: 11, size: 320, elements: !2849)
!2848 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2849 = !{!2850, !2851, !2852, !2857}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2847, file: !2848, line: 16, baseType: !489, size: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2847, file: !2848, line: 17, baseType: !102, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2847, file: !2848, line: 18, baseType: !2853, size: 64, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{null, !2856}
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2847, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2847, file: !2848, line: 19, baseType: !363, size: 32, offset: 256)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !921, file: !567, line: 1478, baseType: !2859, size: 64, offset: 21760)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2861, line: 49, size: 512, elements: !2862)
!2861 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!2862 = !{!2863, !2864, !2865, !2866, !2867, !2869, !2870, !2871, !2873}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2860, file: !2861, line: 50, baseType: !2859, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2860, file: !2861, line: 51, baseType: !101, size: 64, offset: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2860, file: !2861, line: 52, baseType: !102, size: 64, offset: 128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2860, file: !2861, line: 53, baseType: !102, size: 64, offset: 192)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2860, file: !2861, line: 54, baseType: !2868, size: 64, offset: 256)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2860, file: !2861, line: 56, baseType: !13, size: 32, offset: 320)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2860, file: !2861, line: 58, baseType: !13, size: 32, offset: 352)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2860, file: !2861, line: 59, baseType: !2872, size: 64, offset: 384)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !117, line: 159, baseType: !367)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2860, file: !2861, line: 60, baseType: !2115, size: 64, offset: 448)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !921, file: !567, line: 1482, baseType: !934, size: 32, offset: 21824)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !921, file: !567, line: 1489, baseType: !101, size: 64, offset: 21888)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !921, file: !567, line: 1504, baseType: !101, size: 64, offset: 21952)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !921, file: !567, line: 1505, baseType: !368, size: 64, offset: 22016)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !921, file: !567, line: 1506, baseType: !367, size: 64, offset: 22080)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !921, file: !567, line: 1507, baseType: !368, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !921, file: !567, line: 1508, baseType: !368, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !921, file: !567, line: 1509, baseType: !368, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !921, file: !567, line: 1510, baseType: !905, size: 128, align: 64, offset: 22208)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !921, file: !567, line: 1511, baseType: !100, size: 32, offset: 22336)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !921, file: !567, line: 1515, baseType: !2885, size: 64, offset: 22400)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !948, line: 56, size: 64, elements: !2886)
!2886 = !{!2887}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2885, file: !948, line: 57, baseType: !951, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !921, file: !567, line: 1518, baseType: !2885, size: 64, offset: 22464)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !921, file: !567, line: 1528, baseType: !905, size: 128, align: 64, offset: 22528)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !921, file: !567, line: 1552, baseType: !2891, size: 35328, offset: 23040)
!2891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2892, line: 430, size: 35328, elements: !2893)
!2892 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2893 = !{!2894, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2923, !2924, !2925, !2926, !2927, !2928, !2931, !2932, !2933, !2934}
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2891, file: !2892, line: 432, baseType: !2895, size: 192)
!2895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2896, size: 192, elements: !216)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2897, line: 16, size: 64, elements: !2898)
!2897 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2898 = !{!2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2896, file: !2897, line: 17, baseType: !183, size: 16)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2896, file: !2897, line: 18, baseType: !183, size: 16, offset: 16)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2896, file: !2897, line: 19, baseType: !183, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2896, file: !2897, line: 19, baseType: !183, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2896, file: !2897, line: 19, baseType: !183, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2896, file: !2897, line: 19, baseType: !183, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2896, file: !2897, line: 19, baseType: !183, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2896, file: !2897, line: 20, baseType: !183, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2896, file: !2897, line: 20, baseType: !183, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2896, file: !2897, line: 20, baseType: !183, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2896, file: !2897, line: 20, baseType: !183, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2896, file: !2897, line: 20, baseType: !183, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2896, file: !2897, line: 20, baseType: !183, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2891, file: !2892, line: 436, baseType: !102, size: 64, offset: 192)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2891, file: !2892, line: 440, baseType: !185, size: 16, offset: 256)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2891, file: !2892, line: 441, baseType: !185, size: 16, offset: 272)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2891, file: !2892, line: 442, baseType: !185, size: 16, offset: 288)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2891, file: !2892, line: 443, baseType: !185, size: 16, offset: 304)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2891, file: !2892, line: 447, baseType: !102, size: 64, offset: 320)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2891, file: !2892, line: 448, baseType: !102, size: 64, offset: 384)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2891, file: !2892, line: 459, baseType: !2920, size: 256, offset: 448)
!2920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2921, size: 256, elements: !1293)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2892, line: 428, flags: DIFlagFwdDecl)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2891, file: !2892, line: 461, baseType: !102, size: 64, offset: 704)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2891, file: !2892, line: 463, baseType: !102, size: 64, offset: 768)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2891, file: !2892, line: 465, baseType: !102, size: 64, offset: 832)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2891, file: !2892, line: 466, baseType: !102, size: 64, offset: 896)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2891, file: !2892, line: 467, baseType: !102, size: 64, offset: 960)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2891, file: !2892, line: 473, baseType: !2929, size: 64, offset: 1024)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2892, line: 10, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2891, file: !2892, line: 480, baseType: !102, size: 64, offset: 1088)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2891, file: !2892, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2891, file: !2892, line: 491, baseType: !363, size: 32, offset: 1184)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2891, file: !2892, line: 501, baseType: !2935, size: 33792, offset: 1536)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2936, line: 448, size: 33792, elements: !2937)
!2936 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2937 = !{!2938, !2939, !2940, !3102, !3103, !3109, !3110}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2935, file: !2936, line: 461, baseType: !13, size: 32)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2935, file: !2936, line: 468, baseType: !102, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2935, file: !2936, line: 476, baseType: !2941, size: 64, offset: 128)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2936, line: 356, size: 33280, align: 512, elements: !2943)
!2943 = !{!2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2942, file: !2936, line: 358, baseType: !13, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2942, file: !2936, line: 361, baseType: !13, size: 32, offset: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2942, file: !2936, line: 364, baseType: !367, size: 64, offset: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2942, file: !2936, line: 367, baseType: !367, size: 64, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2942, file: !2936, line: 370, baseType: !367, size: 64, offset: 192)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2942, file: !2936, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2942, file: !2936, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2942, file: !2936, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2942, file: !2936, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2942, file: !2936, line: 397, baseType: !2954, size: 32768, offset: 512)
!2954 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2936, line: 348, size: 32768, elements: !2955)
!2955 = !{!2956, !2971, !3008, !3085, !3098}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2954, file: !2936, line: 349, baseType: !2957, size: 896)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2936, line: 12, size: 896, elements: !2958)
!2958 = !{!2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2970}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2957, file: !2936, line: 13, baseType: !363, size: 32)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2957, file: !2936, line: 14, baseType: !363, size: 32, offset: 32)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2957, file: !2936, line: 15, baseType: !363, size: 32, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2957, file: !2936, line: 16, baseType: !363, size: 32, offset: 96)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2957, file: !2936, line: 17, baseType: !363, size: 32, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2957, file: !2936, line: 18, baseType: !363, size: 32, offset: 160)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2957, file: !2936, line: 19, baseType: !363, size: 32, offset: 192)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2957, file: !2936, line: 22, baseType: !2967, size: 640, offset: 224)
!2967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 640, elements: !2968)
!2968 = !{!2969}
!2969 = !DISubrange(count: 20)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2957, file: !2936, line: 25, baseType: !363, size: 32, offset: 864)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2954, file: !2936, line: 350, baseType: !2972, size: 4096, align: 128)
!2972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2936, line: 34, size: 4096, align: 128, elements: !2973)
!2973 = !{!2974, !2975, !2976, !2977, !2978, !2993, !2994, !2995, !2997, !2999, !3003}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2972, file: !2936, line: 35, baseType: !183, size: 16)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2972, file: !2936, line: 36, baseType: !183, size: 16, offset: 16)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2972, file: !2936, line: 37, baseType: !183, size: 16, offset: 32)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2972, file: !2936, line: 38, baseType: !183, size: 16, offset: 48)
!2978 = !DIDerivedType(tag: DW_TAG_member, scope: !2972, file: !2936, line: 39, baseType: !2979, size: 128, offset: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2972, file: !2936, line: 39, size: 128, elements: !2980)
!2980 = !{!2981, !2986}
!2981 = !DIDerivedType(tag: DW_TAG_member, scope: !2979, file: !2936, line: 40, baseType: !2982, size: 128)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2979, file: !2936, line: 40, size: 128, elements: !2983)
!2983 = !{!2984, !2985}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2982, file: !2936, line: 41, baseType: !367, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2982, file: !2936, line: 42, baseType: !367, size: 64, offset: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, scope: !2979, file: !2936, line: 44, baseType: !2987, size: 128)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2979, file: !2936, line: 44, size: 128, elements: !2988)
!2988 = !{!2989, !2990, !2991, !2992}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2987, file: !2936, line: 45, baseType: !363, size: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2987, file: !2936, line: 46, baseType: !363, size: 32, offset: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2987, file: !2936, line: 47, baseType: !363, size: 32, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2987, file: !2936, line: 48, baseType: !363, size: 32, offset: 96)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2972, file: !2936, line: 51, baseType: !363, size: 32, offset: 192)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2972, file: !2936, line: 52, baseType: !363, size: 32, offset: 224)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2972, file: !2936, line: 55, baseType: !2996, size: 1024, offset: 256)
!2996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 1024, elements: !376)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2972, file: !2936, line: 58, baseType: !2998, size: 2048, offset: 1280)
!2998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 2048, elements: !220)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2972, file: !2936, line: 60, baseType: !3000, size: 384, offset: 3328)
!3000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !363, size: 384, elements: !3001)
!3001 = !{!3002}
!3002 = !DISubrange(count: 12)
!3003 = !DIDerivedType(tag: DW_TAG_member, scope: !2972, file: !2936, line: 62, baseType: !3004, size: 384, offset: 3712)
!3004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2972, file: !2936, line: 62, size: 384, elements: !3005)
!3005 = !{!3006, !3007}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3004, file: !2936, line: 63, baseType: !3000, size: 384)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3004, file: !2936, line: 64, baseType: !3000, size: 384)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2954, file: !2936, line: 351, baseType: !3009, size: 1088)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2936, line: 79, size: 1088, elements: !3010)
!3010 = !{!3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3084}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3009, file: !2936, line: 80, baseType: !363, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3009, file: !2936, line: 81, baseType: !363, size: 32, offset: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3009, file: !2936, line: 82, baseType: !363, size: 32, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3009, file: !2936, line: 83, baseType: !363, size: 32, offset: 96)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3009, file: !2936, line: 84, baseType: !363, size: 32, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3009, file: !2936, line: 85, baseType: !363, size: 32, offset: 160)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3009, file: !2936, line: 86, baseType: !363, size: 32, offset: 192)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3009, file: !2936, line: 88, baseType: !2967, size: 640, offset: 224)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3009, file: !2936, line: 89, baseType: !173, size: 8, offset: 864)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3009, file: !2936, line: 90, baseType: !173, size: 8, offset: 872)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3009, file: !2936, line: 91, baseType: !173, size: 8, offset: 880)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3009, file: !2936, line: 92, baseType: !173, size: 8, offset: 888)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3009, file: !2936, line: 93, baseType: !173, size: 8, offset: 896)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3009, file: !2936, line: 94, baseType: !173, size: 8, offset: 904)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3009, file: !2936, line: 95, baseType: !3026, size: 64, offset: 960)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3028, line: 11, size: 128, elements: !3029)
!3028 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3029 = !{!3030, !3031}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3027, file: !3028, line: 12, baseType: !251, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3027, file: !3028, line: 13, baseType: !3032, size: 64, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3034, line: 103, size: 1344, elements: !3035)
!3034 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3035 = !{!3036, !3037, !3038, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3064, !3065, !3066}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3033, file: !3034, line: 109, baseType: !102, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3033, file: !3034, line: 110, baseType: !102, size: 64, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3033, file: !3034, line: 111, baseType: !102, size: 64, offset: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3033, file: !3034, line: 112, baseType: !102, size: 64, offset: 192)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3033, file: !3034, line: 113, baseType: !102, size: 64, offset: 256)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3033, file: !3034, line: 114, baseType: !102, size: 64, offset: 320)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3033, file: !3034, line: 117, baseType: !102, size: 64, offset: 384)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3033, file: !3034, line: 118, baseType: !102, size: 64, offset: 448)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3033, file: !3034, line: 119, baseType: !102, size: 64, offset: 512)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3033, file: !3034, line: 120, baseType: !102, size: 64, offset: 576)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3033, file: !3034, line: 121, baseType: !102, size: 64, offset: 640)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3033, file: !3034, line: 122, baseType: !102, size: 64, offset: 704)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3033, file: !3034, line: 123, baseType: !102, size: 64, offset: 768)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3033, file: !3034, line: 124, baseType: !102, size: 64, offset: 832)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3033, file: !3034, line: 125, baseType: !102, size: 64, offset: 896)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3033, file: !3034, line: 139, baseType: !102, size: 64, offset: 960)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3033, file: !3034, line: 142, baseType: !102, size: 64, offset: 1024)
!3053 = !DIDerivedType(tag: DW_TAG_member, scope: !3033, file: !3034, line: 144, baseType: !3054, size: 64, offset: 1088)
!3054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3033, file: !3034, line: 144, size: 64, elements: !3055)
!3055 = !{!3056, !3057, !3058}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3054, file: !3034, line: 146, baseType: !183, size: 16)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3054, file: !3034, line: 148, baseType: !367, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3054, file: !3034, line: 150, baseType: !3059, size: 64)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3034, line: 59, size: 64, elements: !3060)
!3060 = !{!3061, !3062, !3063}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3059, file: !3034, line: 61, baseType: !367, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3059, file: !3034, line: 63, baseType: !367, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3059, file: !3034, line: 65, baseType: !367, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3033, file: !3034, line: 153, baseType: !102, size: 64, offset: 1152)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3033, file: !3034, line: 154, baseType: !102, size: 64, offset: 1216)
!3066 = !DIDerivedType(tag: DW_TAG_member, scope: !3033, file: !3034, line: 156, baseType: !3067, size: 64, offset: 1280)
!3067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3033, file: !3034, line: 156, size: 64, elements: !3068)
!3068 = !{!3069, !3070, !3071}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3067, file: !3034, line: 158, baseType: !183, size: 16)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3067, file: !3034, line: 160, baseType: !367, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3067, file: !3034, line: 162, baseType: !3072, size: 64)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3034, line: 69, size: 64, elements: !3073)
!3073 = !{!3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3072, file: !3034, line: 71, baseType: !367, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3072, file: !3034, line: 73, baseType: !367, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3072, file: !3034, line: 75, baseType: !367, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3072, file: !3034, line: 77, baseType: !367, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3072, file: !3034, line: 80, baseType: !367, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3072, file: !3034, line: 83, baseType: !367, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3072, file: !3034, line: 86, baseType: !367, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3072, file: !3034, line: 88, baseType: !367, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3072, file: !3034, line: 93, baseType: !367, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3072, file: !3034, line: 100, baseType: !367, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3009, file: !2936, line: 96, baseType: !363, size: 32, offset: 1024)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2954, file: !2936, line: 352, baseType: !3086, size: 4608, align: 512)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2936, line: 333, size: 4608, align: 512, elements: !3087)
!3087 = !{!3088, !3089, !3096}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3086, file: !2936, line: 334, baseType: !2972, size: 4096, align: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3086, file: !2936, line: 335, baseType: !3090, size: 512, offset: 4096)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2936, line: 312, size: 512, elements: !3091)
!3091 = !{!3092, !3093, !3094}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3090, file: !2936, line: 313, baseType: !367, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3090, file: !2936, line: 314, baseType: !367, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3090, file: !2936, line: 315, baseType: !3095, size: 384, offset: 128)
!3095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 384, elements: !1439)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3086, file: !2936, line: 336, baseType: !3097, offset: 4608)
!3097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, elements: !1353)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2954, file: !2936, line: 353, baseType: !3099, size: 32768)
!3099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 32768, elements: !3100)
!3100 = !{!3101}
!3101 = !DISubrange(count: 4096)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2935, file: !2936, line: 484, baseType: !2941, size: 64, offset: 192)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2935, file: !2936, line: 491, baseType: !3104, size: 128, offset: 256)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2936, line: 404, size: 128, elements: !3105)
!3105 = !{!3106, !3107, !3108}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3104, file: !2936, line: 424, baseType: !367, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3104, file: !2936, line: 432, baseType: !13, size: 32, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3104, file: !2936, line: 440, baseType: !13, size: 32, offset: 96)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2935, file: !2936, line: 498, baseType: !3104, size: 128, offset: 384)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2935, file: !2936, line: 508, baseType: !2942, size: 33280, align: 512, offset: 512)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !888, file: !889, line: 16, baseType: !898, size: 192, offset: 512)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !888, file: !889, line: 17, baseType: !165, size: 32, offset: 704)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !446, file: !20, line: 1240, baseType: !101, size: 64, offset: 6912)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !446, file: !20, line: 1243, baseType: !363, size: 32, offset: 6976)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !446, file: !20, line: 1245, baseType: !645, size: 64, offset: 7040)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !446, file: !20, line: 1246, baseType: !645, size: 64, offset: 7104)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !446, file: !20, line: 1248, baseType: !364, size: 32, offset: 7168)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !446, file: !20, line: 1249, baseType: !3119, size: 64, offset: 7232)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !446, file: !20, line: 1252, baseType: !3122, size: 256, offset: 7296)
!3122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !376)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !446, file: !20, line: 1253, baseType: !3124, size: 128, offset: 7552)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3125, line: 21, baseType: !3126)
!3125 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3125, line: 19, size: 128, elements: !3127)
!3127 = !{!3128}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3126, file: !3125, line: 20, baseType: !3129, size: 128)
!3129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !175, size: 128, elements: !2307)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !446, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !446, file: !20, line: 1261, baseType: !592, size: 256, offset: 7744)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !446, file: !20, line: 1267, baseType: !134, size: 64, offset: 8000)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !446, file: !20, line: 1269, baseType: !392, size: 64, offset: 8064)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !446, file: !20, line: 1271, baseType: !3135, size: 448, offset: 8128)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !654, line: 63, size: 448, elements: !3136)
!3136 = !{!3137, !3142, !3143, !3144, !3145, !3146, !3147}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3135, file: !654, line: 64, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!102, !3141, !652}
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3135, file: !654, line: 66, baseType: !3138, size: 64, offset: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3135, file: !654, line: 69, baseType: !251, size: 64, offset: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3135, file: !654, line: 70, baseType: !100, size: 32, offset: 192)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3135, file: !654, line: 71, baseType: !13, size: 32, offset: 224)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3135, file: !654, line: 74, baseType: !116, size: 128, offset: 256)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3135, file: !654, line: 85, baseType: !3148, size: 64, offset: 384)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !446, file: !20, line: 1274, baseType: !596, size: 64, offset: 8576)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !446, file: !20, line: 1280, baseType: !596, size: 64, offset: 8640)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !446, file: !20, line: 1283, baseType: !100, size: 32, offset: 8704)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !446, file: !20, line: 1286, baseType: !2026, size: 32, offset: 8736)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !446, file: !20, line: 1289, baseType: !3154, size: 64, offset: 8768)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2155, line: 18, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !446, file: !20, line: 1290, baseType: !485, size: 64, offset: 8832)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !446, file: !20, line: 1297, baseType: !1334, size: 64, offset: 8896)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !446, file: !20, line: 1304, baseType: !3159, size: 64, offset: 8960)
!3159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3160, line: 49, size: 64, elements: !3161)
!3160 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3161 = !{!3162}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3159, file: !3160, line: 50, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3160, line: 41, size: 512, align: 512, elements: !3165)
!3165 = !{!3166, !3167, !3172}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3164, file: !3160, line: 43, baseType: !145, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3164, file: !3160, line: 45, baseType: !3168, size: 192, offset: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3160, line: 29, size: 192, elements: !3169)
!3169 = !{!3170, !3171}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3168, file: !3160, line: 30, baseType: !116, size: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3168, file: !3160, line: 32, baseType: !251, size: 64, offset: 128)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3164, file: !3160, line: 46, baseType: !251, size: 64, offset: 256)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !446, file: !20, line: 1305, baseType: !3159, size: 64, offset: 9024)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !446, file: !20, line: 1306, baseType: !905, size: 128, align: 64, offset: 9088)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !446, file: !20, line: 1307, baseType: !2154, size: 256, offset: 9216)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !446, file: !20, line: 1309, baseType: !592, size: 256, offset: 9472)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !446, file: !20, line: 1314, baseType: !100, size: 32, offset: 9728)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !446, file: !20, line: 1317, baseType: !145, size: 32, align: 512, offset: 10240)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !446, file: !20, line: 1318, baseType: !116, size: 128, offset: 10304)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !446, file: !20, line: 1320, baseType: !145, size: 32, offset: 10432)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !446, file: !20, line: 1321, baseType: !116, size: 128, offset: 10496)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !440, file: !441, line: 73, baseType: !100, size: 32, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !440, file: !441, line: 74, baseType: !3184, size: 64, offset: 192)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1377, line: 42, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !394, file: !331, line: 141, baseType: !3188, size: 64, offset: 704)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!100, !715, !1452}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !394, file: !331, line: 142, baseType: !3192, size: 64, offset: 768)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!329, !329, !3195}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !330, file: !331, line: 96, baseType: !445, size: 64, offset: 832)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !330, file: !331, line: 97, baseType: !102, size: 64, offset: 896)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !330, file: !331, line: 98, baseType: !101, size: 64, offset: 960)
!3200 = !DIDerivedType(tag: DW_TAG_member, scope: !330, file: !331, line: 100, baseType: !3201, size: 128, offset: 1024)
!3201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !331, line: 100, size: 128, elements: !3202)
!3202 = !{!3203, !3204}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3201, file: !331, line: 101, baseType: !116, size: 128)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3201, file: !331, line: 102, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !330, file: !331, line: 104, baseType: !116, size: 128, offset: 1152)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !330, file: !331, line: 105, baseType: !116, size: 128, offset: 1280)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !330, file: !331, line: 113, baseType: !3209, size: 128, offset: 1408)
!3209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !330, file: !331, line: 109, size: 128, elements: !3210)
!3210 = !{!3211, !3212, !3213}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3209, file: !331, line: 110, baseType: !489, size: 128)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3209, file: !331, line: 111, baseType: !345, size: 128)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3209, file: !331, line: 112, baseType: !905, size: 128, align: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !323, file: !20, line: 1968, baseType: !3215, size: 64, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!134, !329, !294, !3218}
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3220, line: 10, size: 128, elements: !3221)
!3220 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3221 = !{!3222, !3226}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3219, file: !3220, line: 11, baseType: !3223, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{null, !101}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3219, file: !3220, line: 12, baseType: !101, size: 64, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !323, file: !20, line: 1969, baseType: !3228, size: 64, offset: 128)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!100, !3184, !294, !100}
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !323, file: !20, line: 1970, baseType: !3232, size: 64, offset: 192)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!317, !294, !100, !1452}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !323, file: !20, line: 1972, baseType: !3236, size: 64, offset: 256)
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{!100, !329, !215, !100}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !323, file: !20, line: 1974, baseType: !3240, size: 64, offset: 320)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!100, !3184, !294, !329, !257, !1452}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !323, file: !20, line: 1976, baseType: !3244, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!100, !329, !294, !329}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !323, file: !20, line: 1977, baseType: !3248, size: 64, offset: 448)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{!100, !294, !329}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !323, file: !20, line: 1978, baseType: !3252, size: 64, offset: 512)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!100, !3184, !294, !329, !134}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !323, file: !20, line: 1980, baseType: !3256, size: 64, offset: 576)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!100, !3184, !294, !329, !257}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !323, file: !20, line: 1982, baseType: !3248, size: 64, offset: 640)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !323, file: !20, line: 1983, baseType: !3261, size: 64, offset: 704)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!100, !3184, !294, !329, !257, !450}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !323, file: !20, line: 1985, baseType: !3265, size: 64, offset: 768)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!100, !3184, !294, !329, !294, !329, !13}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !323, file: !20, line: 1987, baseType: !3269, size: 64, offset: 832)
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = !DISubroutineType(types: !3271)
!3271 = !{!100, !3184, !329, !3272}
!3272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3273, size: 64)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !3274)
!3274 = !{!3275, !3276, !3277, !3287, !3296, !3297, !3302, !3303, !3304}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3273, file: !20, line: 227, baseType: !13, size: 32)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3273, file: !20, line: 228, baseType: !257, size: 16, offset: 32)
!3277 = !DIDerivedType(tag: DW_TAG_member, scope: !3273, file: !20, line: 241, baseType: !3278, size: 32, offset: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3273, file: !20, line: 241, size: 32, elements: !3279)
!3279 = !{!3280, !3281}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3278, file: !20, line: 242, baseType: !300, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3278, file: !20, line: 243, baseType: !3282, size: 32)
!3282 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3283, line: 16, baseType: !3284)
!3283 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3283, line: 14, size: 32, elements: !3285)
!3285 = !{!3286}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3284, file: !3283, line: 15, baseType: !305, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, scope: !3273, file: !20, line: 245, baseType: !3288, size: 32, offset: 96)
!3288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3273, file: !20, line: 245, size: 32, elements: !3289)
!3289 = !{!3290, !3291}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3288, file: !20, line: 246, baseType: !309, size: 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3288, file: !20, line: 247, baseType: !3292, size: 32)
!3292 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3283, line: 20, baseType: !3293)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3283, line: 18, size: 32, elements: !3294)
!3294 = !{!3295}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3293, file: !3283, line: 19, baseType: !313, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3273, file: !20, line: 249, baseType: !455, size: 64, offset: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3273, file: !20, line: 250, baseType: !3298, size: 128, offset: 192)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !646, line: 13, size: 128, elements: !3299)
!3299 = !{!3300, !3301}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3298, file: !646, line: 14, baseType: !645, size: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3298, file: !646, line: 15, baseType: !251, size: 64, offset: 64)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3273, file: !20, line: 251, baseType: !3298, size: 128, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3273, file: !20, line: 252, baseType: !3298, size: 128, offset: 448)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3273, file: !20, line: 259, baseType: !1244, size: 64, offset: 576)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !323, file: !20, line: 1988, baseType: !3306, size: 64, offset: 896)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!100, !3184, !715, !3309, !363, !13}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3311, line: 22, size: 1280, elements: !3312)
!3311 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3312 = !{!3313, !3314, !3315, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3310, file: !3311, line: 23, baseType: !363, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3310, file: !3311, line: 24, baseType: !257, size: 16, offset: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3310, file: !3311, line: 25, baseType: !13, size: 32, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3310, file: !3311, line: 26, baseType: !1417, size: 32, offset: 96)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3310, file: !3311, line: 27, baseType: !367, size: 64, offset: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3310, file: !3311, line: 28, baseType: !367, size: 64, offset: 192)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3310, file: !3311, line: 41, baseType: !367, size: 64, offset: 256)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3310, file: !3311, line: 42, baseType: !450, size: 32, offset: 320)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3310, file: !3311, line: 43, baseType: !450, size: 32, offset: 352)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3310, file: !3311, line: 44, baseType: !300, size: 32, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3310, file: !3311, line: 45, baseType: !309, size: 32, offset: 416)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3310, file: !3311, line: 46, baseType: !455, size: 64, offset: 448)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3310, file: !3311, line: 47, baseType: !3298, size: 128, offset: 512)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3310, file: !3311, line: 48, baseType: !3298, size: 128, offset: 640)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3310, file: !3311, line: 49, baseType: !3298, size: 128, offset: 768)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3310, file: !3311, line: 50, baseType: !3298, size: 128, offset: 896)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3310, file: !3311, line: 51, baseType: !367, size: 64, offset: 1024)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3310, file: !3311, line: 52, baseType: !367, size: 64, offset: 1088)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3310, file: !3311, line: 53, baseType: !363, size: 32, offset: 1152)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3310, file: !3311, line: 54, baseType: !363, size: 32, offset: 1184)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3310, file: !3311, line: 55, baseType: !367, size: 64, offset: 1216)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !323, file: !20, line: 1990, baseType: !3335, size: 64, offset: 960)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DISubroutineType(types: !3337)
!3337 = !{!247, !329, !215, !262}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !323, file: !20, line: 1991, baseType: !3339, size: 64, offset: 1024)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!100, !294, !3342, !367, !367}
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !323, file: !20, line: 1993, baseType: !3345, size: 64, offset: 1088)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!100, !294, !100}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !323, file: !20, line: 1994, baseType: !3349, size: 64, offset: 1152)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!100, !294, !329, !1244, !13, !257}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !323, file: !20, line: 1997, baseType: !3353, size: 64, offset: 1216)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!100, !3184, !294, !1244, !257}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !323, file: !20, line: 1999, baseType: !3357, size: 64, offset: 1280)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!317, !3184, !329, !100}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !323, file: !20, line: 2001, baseType: !3361, size: 64, offset: 1344)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!100, !3184, !329, !317, !100}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !323, file: !20, line: 2003, baseType: !3365, size: 64, offset: 1408)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!100, !3184, !329, !3368}
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !323, file: !20, line: 2005, baseType: !3371, size: 64, offset: 1472)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!100, !329, !3368}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !323, file: !20, line: 2006, baseType: !3375, size: 64, offset: 1536)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!3378, !294}
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !3380)
!3380 = !{!3381, !3382}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3379, file: !20, line: 3193, baseType: !1313, size: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3379, file: !20, line: 3194, baseType: !363, size: 32, offset: 128)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !295, file: !20, line: 655, baseType: !445, size: 64, offset: 448)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !295, file: !20, line: 656, baseType: !290, size: 64, offset: 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !295, file: !20, line: 659, baseType: !101, size: 64, offset: 576)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !295, file: !20, line: 663, baseType: !102, size: 64, offset: 640)
!3387 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !20, line: 671, baseType: !3388, size: 32, offset: 704)
!3388 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !20, line: 671, size: 32, elements: !3389)
!3389 = !{!3390, !3392}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3388, file: !20, line: 672, baseType: !3391, size: 32)
!3391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3388, file: !20, line: 673, baseType: !13, size: 32)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !295, file: !20, line: 675, baseType: !450, size: 32, offset: 736)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !295, file: !20, line: 676, baseType: !455, size: 64, offset: 768)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !295, file: !20, line: 677, baseType: !3298, size: 128, offset: 832)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !295, file: !20, line: 678, baseType: !3298, size: 128, offset: 960)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !295, file: !20, line: 679, baseType: !3298, size: 128, offset: 1088)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !295, file: !20, line: 680, baseType: !145, size: 32, offset: 1216)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !295, file: !20, line: 681, baseType: !185, size: 16, offset: 1248)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !295, file: !20, line: 682, baseType: !173, size: 8, offset: 1264)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !295, file: !20, line: 683, baseType: !173, size: 8, offset: 1272)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !295, file: !20, line: 684, baseType: !793, size: 64, offset: 1280)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !295, file: !20, line: 691, baseType: !102, size: 64, offset: 1344)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !295, file: !20, line: 692, baseType: !805, size: 320, offset: 1408)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !295, file: !20, line: 694, baseType: !102, size: 64, offset: 1728)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !295, file: !20, line: 695, baseType: !102, size: 64, offset: 1792)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !295, file: !20, line: 697, baseType: !489, size: 128, offset: 1856)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !295, file: !20, line: 698, baseType: !116, size: 128, offset: 1984)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !295, file: !20, line: 707, baseType: !116, size: 128, offset: 2112)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !295, file: !20, line: 708, baseType: !116, size: 128, offset: 2240)
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !20, line: 709, baseType: !3412, size: 128, offset: 2368)
!3412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !20, line: 709, size: 128, elements: !3413)
!3413 = !{!3414, !3415}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3412, file: !20, line: 710, baseType: !485, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3412, file: !20, line: 711, baseType: !905, size: 128, align: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !295, file: !20, line: 713, baseType: !598, size: 64, offset: 2496)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !295, file: !20, line: 714, baseType: !598, size: 64, offset: 2560)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !295, file: !20, line: 715, baseType: !165, size: 32, offset: 2624)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !295, file: !20, line: 716, baseType: !165, size: 32, offset: 2656)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !295, file: !20, line: 717, baseType: !165, size: 32, offset: 2688)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !295, file: !20, line: 719, baseType: !165, size: 32, offset: 2720)
!3422 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !20, line: 721, baseType: !3423, size: 64, offset: 2752)
!3423 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !20, line: 721, size: 64, elements: !3424)
!3424 = !{!3425, !3426}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3423, file: !20, line: 722, baseType: !1561, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3423, file: !20, line: 723, baseType: !516, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !295, file: !20, line: 725, baseType: !3428, size: 64, offset: 2816)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !295, file: !20, line: 726, baseType: !291, size: 1536, align: 64, offset: 2880)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !295, file: !20, line: 727, baseType: !116, size: 128, offset: 4416)
!3432 = !DIDerivedType(tag: DW_TAG_member, scope: !295, file: !20, line: 728, baseType: !3433, size: 64, offset: 4544)
!3433 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !295, file: !20, line: 728, size: 64, elements: !3434)
!3434 = !{!3435, !3436, !3439, !3440}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3433, file: !20, line: 729, baseType: !1976, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3433, file: !20, line: 730, baseType: !3437, size: 64)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3433, file: !20, line: 731, baseType: !215, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3433, file: !20, line: 732, baseType: !13, size: 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !295, file: !20, line: 735, baseType: !364, size: 32, offset: 4608)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !295, file: !20, line: 738, baseType: !364, size: 32, offset: 4640)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !295, file: !20, line: 739, baseType: !3119, size: 64, offset: 4672)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !295, file: !20, line: 750, baseType: !101, size: 64, offset: 4736)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !291, file: !20, line: 474, baseType: !1313, size: 128, offset: 64)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !291, file: !20, line: 475, baseType: !805, size: 320, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !291, file: !20, line: 476, baseType: !657, size: 32, offset: 512)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !291, file: !20, line: 477, baseType: !165, size: 32, offset: 544)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !291, file: !20, line: 482, baseType: !1107, size: 128, offset: 576)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !291, file: !20, line: 483, baseType: !102, size: 64, offset: 704)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !291, file: !20, line: 484, baseType: !102, size: 64, offset: 768)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !291, file: !20, line: 485, baseType: !3453, size: 64, offset: 832)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3455)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !3456)
!3456 = !{!3457, !3461, !3531, !3535, !3539, !3545, !3549, !3553, !3558, !3562, !3566, !3570, !3571, !3575, !3579, !3583, !3588, !3592, !3599, !3600}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3455, file: !20, line: 405, baseType: !3458, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!100, !1753, !528}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3455, file: !20, line: 406, baseType: !3462, size: 64, offset: 64)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{!100, !1244, !3465}
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !44, line: 293, size: 1536, elements: !3467)
!3467 = !{!3468, !3498, !3512}
!3468 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !44, line: 295, baseType: !3469, size: 512)
!3469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3466, file: !44, line: 295, size: 512, elements: !3470)
!3470 = !{!3471, !3497}
!3471 = !DIDerivedType(tag: DW_TAG_member, scope: !3469, file: !44, line: 296, baseType: !3472, size: 448)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3469, file: !44, line: 296, size: 448, elements: !3473)
!3473 = !{!3474, !3475, !3484, !3485, !3486, !3495, !3496}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3472, file: !44, line: 298, baseType: !102, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, scope: !3472, file: !44, line: 299, baseType: !3476, size: 128, offset: 64)
!3476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3472, file: !44, line: 299, size: 128, elements: !3477)
!3477 = !{!3478, !3479}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3476, file: !44, line: 300, baseType: !116, size: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, scope: !3476, file: !44, line: 302, baseType: !3480, size: 128)
!3480 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3476, file: !44, line: 302, size: 128, elements: !3481)
!3481 = !{!3482, !3483}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3480, file: !44, line: 303, baseType: !101, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3480, file: !44, line: 305, baseType: !13, size: 32, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3472, file: !44, line: 310, baseType: !290, size: 64, offset: 192)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3472, file: !44, line: 311, baseType: !102, size: 64, offset: 256)
!3486 = !DIDerivedType(tag: DW_TAG_member, scope: !3472, file: !44, line: 312, baseType: !3487, size: 64, offset: 320)
!3487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3472, file: !44, line: 312, size: 64, elements: !3488)
!3488 = !{!3489, !3490}
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3487, file: !44, line: 313, baseType: !101, size: 64)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3487, file: !44, line: 314, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !44, line: 257, baseType: !3492)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 255, size: 64, elements: !3493)
!3493 = !{!3494}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3492, file: !44, line: 256, baseType: !102, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3472, file: !44, line: 316, baseType: !165, size: 32, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3472, file: !44, line: 317, baseType: !165, size: 32, offset: 416)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3469, file: !44, line: 323, baseType: !1754, size: 512, align: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !44, line: 325, baseType: !3499, size: 512, offset: 512)
!3499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3466, file: !44, line: 325, size: 512, elements: !3500)
!3500 = !{!3501, !3511}
!3501 = !DIDerivedType(tag: DW_TAG_member, scope: !3499, file: !44, line: 326, baseType: !3502, size: 320)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3499, file: !44, line: 326, size: 320, elements: !3503)
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3502, file: !44, line: 327, baseType: !102, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3502, file: !44, line: 328, baseType: !102, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3502, file: !44, line: 329, baseType: !102, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3502, file: !44, line: 331, baseType: !165, size: 32, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3502, file: !44, line: 332, baseType: !165, size: 32, offset: 224)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3502, file: !44, line: 333, baseType: !165, size: 32, offset: 256)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3502, file: !44, line: 335, baseType: !13, size: 32, offset: 288)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3499, file: !44, line: 339, baseType: !1754, size: 512, align: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, scope: !3466, file: !44, line: 341, baseType: !3513, size: 512, offset: 1024)
!3513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3466, file: !44, line: 341, size: 512, elements: !3514)
!3514 = !{!3515, !3524, !3530}
!3515 = !DIDerivedType(tag: DW_TAG_member, scope: !3513, file: !44, line: 342, baseType: !3516, size: 384)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3513, file: !44, line: 342, size: 384, elements: !3517)
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3523}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3516, file: !44, line: 343, baseType: !102, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3516, file: !44, line: 344, baseType: !102, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3516, file: !44, line: 346, baseType: !101, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3516, file: !44, line: 347, baseType: !101, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3516, file: !44, line: 348, baseType: !101, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3516, file: !44, line: 349, baseType: !101, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, scope: !3513, file: !44, line: 352, baseType: !3525, size: 256)
!3525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3513, file: !44, line: 352, size: 256, elements: !3526)
!3526 = !{!3527, !3528, !3529}
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3525, file: !44, line: 353, baseType: !102, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3525, file: !44, line: 354, baseType: !102, size: 64, offset: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3525, file: !44, line: 356, baseType: !116, size: 128, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3513, file: !44, line: 359, baseType: !1754, size: 512, align: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3455, file: !20, line: 409, baseType: !3532, size: 64, offset: 128)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!100, !290, !528}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3455, file: !20, line: 412, baseType: !3536, size: 64, offset: 192)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!1452, !290, !3465}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3455, file: !20, line: 414, baseType: !3540, size: 64, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{null, !3543}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3455, file: !20, line: 416, baseType: !3546, size: 64, offset: 320)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!100, !1244, !290, !455, !13, !2868, !1991}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3455, file: !20, line: 419, baseType: !3550, size: 64, offset: 384)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!100, !1244, !290, !455, !13, !13, !1753, !101}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3455, file: !20, line: 424, baseType: !3554, size: 64, offset: 448)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!3557, !290, !3557}
!3557 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !117, line: 131, baseType: !367)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3455, file: !20, line: 425, baseType: !3559, size: 64, offset: 512)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{null, !3465, !262, !262}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3455, file: !20, line: 426, baseType: !3563, size: 64, offset: 576)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!1452, !3465, !657}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3455, file: !20, line: 427, baseType: !3567, size: 64, offset: 640)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{null, !3465}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3455, file: !20, line: 428, baseType: !1580, size: 64, offset: 704)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3455, file: !20, line: 433, baseType: !3572, size: 64, offset: 768)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!100, !290, !3465, !3465, !80}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3455, file: !20, line: 435, baseType: !3576, size: 64, offset: 832)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!100, !3465}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3455, file: !20, line: 436, baseType: !3580, size: 64, offset: 896)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!1452, !3465, !262, !262}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3455, file: !20, line: 438, baseType: !3584, size: 64, offset: 960)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{null, !3465, !3587, !3587}
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3455, file: !20, line: 439, baseType: !3589, size: 64, offset: 1024)
!3589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3590, size: 64)
!3590 = !DISubroutineType(types: !3591)
!3591 = !{!100, !290, !1753}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3455, file: !20, line: 442, baseType: !3593, size: 64, offset: 1088)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!100, !3596, !1244, !3598}
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3455, file: !20, line: 444, baseType: !1983, size: 64, offset: 1152)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3455, file: !20, line: 445, baseType: !3601, size: 64, offset: 1216)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!100, !1583, !1605}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !291, file: !20, line: 486, baseType: !102, size: 64, offset: 896)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !291, file: !20, line: 487, baseType: !805, size: 320, offset: 960)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !291, file: !20, line: 488, baseType: !2026, size: 32, offset: 1280)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !291, file: !20, line: 489, baseType: !145, size: 32, offset: 1312)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !291, file: !20, line: 490, baseType: !116, size: 128, offset: 1344)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !291, file: !20, line: 491, baseType: !101, size: 64, offset: 1472)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !281, file: !241, line: 180, baseType: !3611, size: 64, offset: 320)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{!247, !1244, !138, !280, !215, !455, !262}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !281, file: !241, line: 182, baseType: !3611, size: 64, offset: 384)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !281, file: !241, line: 184, baseType: !3616, size: 64, offset: 448)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!100, !1244, !138, !280, !1644}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !269, file: !241, line: 90, baseType: !3620, size: 64, offset: 192)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !269, file: !241, line: 91, baseType: !3622, size: 64, offset: 256)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !231, file: !131, line: 120, baseType: !3624, size: 64, offset: 192)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!3627, !198}
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3629)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !3630)
!3630 = !{!3631, !3632, !3636, !3640, !3646, !3650}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3629, file: !88, line: 40, baseType: !87, size: 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3629, file: !88, line: 41, baseType: !3633, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!1452}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3629, file: !88, line: 42, baseType: !3637, size: 64, offset: 128)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!101}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3629, file: !88, line: 43, baseType: !3641, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!2115, !3644}
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3629, file: !88, line: 44, baseType: !3647, size: 64, offset: 256)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{!2115}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3629, file: !88, line: 45, baseType: !3223, size: 64, offset: 320)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !231, file: !131, line: 121, baseType: !3652, size: 64, offset: 256)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{!2115, !198}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !231, file: !131, line: 122, baseType: !3656, size: 64, offset: 320)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{null, !198, !3659, !3660}
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !130, file: !131, line: 70, baseType: !3662, size: 64, offset: 384)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3664, line: 190, size: 1152, elements: !3665)
!3664 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3665 = !{!3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3757, !3758, !3759, !3760, !3761, !3764}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3663, file: !3664, line: 191, baseType: !165, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3663, file: !3664, line: 192, baseType: !165, size: 32, offset: 32)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3663, file: !3664, line: 202, baseType: !3662, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3663, file: !3664, line: 203, baseType: !134, size: 64, offset: 128)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3663, file: !3664, line: 205, baseType: !978, size: 192, align: 64, offset: 192)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3663, file: !3664, line: 207, baseType: !2115, size: 64, offset: 384)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3663, file: !3664, line: 208, baseType: !13, size: 32, offset: 448)
!3673 = !DIDerivedType(tag: DW_TAG_member, scope: !3663, file: !3664, line: 209, baseType: !3674, size: 256, offset: 512)
!3674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3663, file: !3664, line: 209, size: 256, elements: !3675)
!3675 = !{!3676, !3685, !3689}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3674, file: !3664, line: 210, baseType: !3677, size: 256)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3664, line: 153, size: 256, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3684}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3677, file: !3664, line: 154, baseType: !102, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3677, file: !3664, line: 156, baseType: !1110, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3677, file: !3664, line: 162, baseType: !3682, size: 64, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3664, line: 162, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3677, file: !3664, line: 167, baseType: !102, size: 64, offset: 192)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3674, file: !3664, line: 211, baseType: !3686, size: 64)
!3686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3664, line: 170, size: 64, elements: !3687)
!3687 = !{!3688}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3686, file: !3664, line: 171, baseType: !3662, size: 64)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3674, file: !3664, line: 212, baseType: !3690, size: 256)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3664, line: 174, size: 256, elements: !3691)
!3691 = !{!3692, !3752, !3755, !3756}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3690, file: !3664, line: 175, baseType: !3693, size: 64)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3695)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3664, line: 271, size: 768, elements: !3696)
!3696 = !{!3697, !3717, !3721, !3725, !3729, !3733, !3737, !3741, !3742, !3743, !3744, !3748}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3695, file: !3664, line: 276, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!100, !3701}
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3664, line: 251, size: 1216, elements: !3703)
!3703 = !{!3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3702, file: !3664, line: 253, baseType: !3662, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3702, file: !3664, line: 254, baseType: !1244, size: 64, offset: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3702, file: !3664, line: 255, baseType: !565, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3702, file: !3664, line: 256, baseType: !101, size: 64, offset: 192)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3702, file: !3664, line: 259, baseType: !592, size: 256, offset: 256)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3702, file: !3664, line: 260, baseType: !592, size: 256, offset: 512)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3702, file: !3664, line: 261, baseType: !100, size: 32, offset: 768)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3702, file: !3664, line: 262, baseType: !116, size: 128, offset: 832)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3702, file: !3664, line: 263, baseType: !215, size: 64, offset: 960)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3702, file: !3664, line: 265, baseType: !262, size: 64, offset: 1024)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3702, file: !3664, line: 266, baseType: !1452, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3702, file: !3664, line: 267, baseType: !1452, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3702, file: !3664, line: 268, baseType: !1689, size: 64, offset: 1152)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3695, file: !3664, line: 277, baseType: !3718, size: 64, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DISubroutineType(types: !3720)
!3720 = !{null, !3701}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3695, file: !3664, line: 290, baseType: !3722, size: 64, offset: 128)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!100, !565, !101}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3695, file: !3664, line: 292, baseType: !3726, size: 64, offset: 192)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!101, !565, !1574}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3695, file: !3664, line: 293, baseType: !3730, size: 64, offset: 256)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!101, !565, !101, !1574}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3695, file: !3664, line: 294, baseType: !3734, size: 64, offset: 320)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{null, !565, !101}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3695, file: !3664, line: 296, baseType: !3738, size: 64, offset: 384)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{!247, !3701, !215, !262, !455}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3695, file: !3664, line: 306, baseType: !262, size: 64, offset: 448)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3695, file: !3664, line: 313, baseType: !1452, size: 8, offset: 512)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3695, file: !3664, line: 314, baseType: !3738, size: 64, offset: 576)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3695, file: !3664, line: 317, baseType: !3745, size: 64, offset: 640)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{!1631, !3701, !1633}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3695, file: !3664, line: 320, baseType: !3749, size: 64, offset: 704)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DISubroutineType(types: !3751)
!3751 = !{!100, !3701, !1644}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3690, file: !3664, line: 176, baseType: !3753, size: 64, offset: 64)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3664, line: 35, flags: DIFlagFwdDecl)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3690, file: !3664, line: 177, baseType: !455, size: 64, offset: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3690, file: !3664, line: 178, baseType: !3662, size: 64, offset: 192)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3663, file: !3664, line: 215, baseType: !101, size: 64, offset: 768)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3663, file: !3664, line: 221, baseType: !367, size: 64, offset: 832)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3663, file: !3664, line: 223, baseType: !185, size: 16, offset: 896)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3663, file: !3664, line: 224, baseType: !257, size: 16, offset: 912)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3663, file: !3664, line: 225, baseType: !3762, size: 64, offset: 960)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3664, line: 36, flags: DIFlagFwdDecl)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3663, file: !3664, line: 227, baseType: !905, size: 128, align: 64, offset: 1024)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !130, file: !131, line: 71, baseType: !3766, size: 32, offset: 448)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3767, line: 19, size: 32, elements: !3768)
!3767 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3768 = !{!3769}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3766, file: !3767, line: 20, baseType: !934, size: 32)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !130, file: !131, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !130, file: !131, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !130, file: !131, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !130, file: !131, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !130, file: !131, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !127, file: !12, line: 47, baseType: !111, size: 64, offset: 512)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !127, file: !12, line: 48, baseType: !138, size: 64, offset: 576)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !127, file: !12, line: 49, baseType: !3778, size: 64, offset: 640)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !127, file: !12, line: 50, baseType: !2264, size: 64, offset: 704)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !112, file: !12, line: 418, baseType: !3782, size: 64, offset: 1408)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !3784)
!3784 = !{!3785, !3786, !3791, !3795, !3799, !3803}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3783, file: !12, line: 54, baseType: !253, size: 128)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3783, file: !12, line: 55, baseType: !3787, size: 64, offset: 128)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!247, !3782, !3790, !215}
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3783, file: !12, line: 57, baseType: !3792, size: 64, offset: 192)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!247, !3782, !3790, !134, !262}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3783, file: !12, line: 59, baseType: !3796, size: 64, offset: 256)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{null, !111, !134}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3783, file: !12, line: 60, baseType: !3800, size: 64, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!100, !111}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3783, file: !12, line: 61, baseType: !3804, size: 64, offset: 384)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{null, !111}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !112, file: !12, line: 419, baseType: !134, size: 64, offset: 1472)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !112, file: !12, line: 420, baseType: !134, size: 64, offset: 1536)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !112, file: !12, line: 421, baseType: !138, size: 64, offset: 1600)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !112, file: !12, line: 424, baseType: !3811, size: 64, offset: 1664)
!3811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3813)
!3813 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !112, file: !12, line: 425, baseType: !3815, size: 64, offset: 1728)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1395)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !112, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !112, file: !12, line: 435, baseType: !592, size: 256, offset: 1856)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !112, file: !12, line: 437, baseType: !3820, size: 64, offset: 2112)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3822, line: 69, size: 320, elements: !3823)
!3822 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3823 = !{!3824, !3825, !3826, !3843, !3845, !3849, !3850}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3821, file: !3822, line: 70, baseType: !134, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3821, file: !3822, line: 71, baseType: !111, size: 64, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3821, file: !3822, line: 72, baseType: !3827, size: 64, offset: 128)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3829)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3822, line: 47, size: 256, elements: !3830)
!3830 = !{!3831, !3832, !3838, !3842}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3829, file: !3822, line: 49, baseType: !13, size: 32)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3829, file: !3822, line: 51, baseType: !3833, size: 64, offset: 64)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!100, !134, !3836}
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3821)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3829, file: !3822, line: 53, baseType: !3839, size: 64, offset: 128)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!100, !215, !3836}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3829, file: !3822, line: 55, baseType: !3223, size: 64, offset: 192)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3821, file: !3822, line: 73, baseType: !3844, size: 16, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3821, file: !3822, line: 74, baseType: !3846, size: 8, offset: 208)
!3846 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !174, line: 16, baseType: !3847)
!3847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !176, line: 20, baseType: !3848)
!3848 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3821, file: !3822, line: 75, baseType: !173, size: 8, offset: 216)
!3850 = !DIDerivedType(tag: DW_TAG_member, scope: !3821, file: !3822, line: 76, baseType: !3851, size: 64, offset: 256)
!3851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3821, file: !3822, line: 76, size: 64, elements: !3852)
!3852 = !{!3853, !3854, !3861}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3851, file: !3822, line: 77, baseType: !101, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3851, file: !3822, line: 78, baseType: !3855, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3857)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3822, line: 86, size: 128, elements: !3858)
!3858 = !{!3859, !3860}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3857, file: !3822, line: 87, baseType: !13, size: 32)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3857, file: !3822, line: 88, baseType: !215, size: 64, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3851, file: !3822, line: 79, baseType: !3862, size: 64)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3864)
!3864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3822, line: 92, size: 256, elements: !3865)
!3865 = !{!3866, !3867, !3868, !3869, !3870}
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3864, file: !3822, line: 94, baseType: !13, size: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3864, file: !3822, line: 95, baseType: !13, size: 32, offset: 32)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3864, file: !3822, line: 96, baseType: !914, size: 64, offset: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3864, file: !3822, line: 97, baseType: !3827, size: 64, offset: 128)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3864, file: !3822, line: 98, baseType: !101, size: 64, offset: 192)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !112, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !112, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !112, file: !12, line: 442, baseType: !3811, size: 64, offset: 2240)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !112, file: !12, line: 443, baseType: !3815, size: 64, offset: 2304)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !112, file: !12, line: 444, baseType: !1452, size: 8, offset: 2368)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !112, file: !12, line: 451, baseType: !1452, size: 8, offset: 2376)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !112, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !112, file: !12, line: 455, baseType: !3879, size: 64, offset: 2432)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3881, line: 23, size: 96, elements: !3882)
!3881 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3882 = !{!3883, !3884, !3885}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3880, file: !3881, line: 24, baseType: !100, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3880, file: !3881, line: 24, baseType: !100, size: 32, offset: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3880, file: !3881, line: 24, baseType: !100, size: 32, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !112, file: !12, line: 458, baseType: !3887, size: 64, offset: 2496)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!100}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !112, file: !12, line: 460, baseType: !3891, size: 4032, align: 512, offset: 2560)
!3891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3892, size: 4032, elements: !3906)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !3893)
!3893 = !{!3894, !3895, !3896}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3892, file: !12, line: 363, baseType: !101, size: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3892, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3892, file: !12, line: 367, baseType: !3897, size: 448, offset: 128)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !3898)
!3898 = !{!3899, !3900}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3897, file: !12, line: 320, baseType: !111, size: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3897, file: !12, line: 321, baseType: !3901, size: 384, offset: 64)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3902, line: 40, size: 384, elements: !3903)
!3902 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3903 = !{!3904}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3901, file: !3902, line: 41, baseType: !3905, size: 384, align: 64)
!3905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !978, size: 384, align: 64, elements: !2411)
!3906 = !{!3907}
!3907 = !DISubrange(count: 7)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !112, file: !12, line: 463, baseType: !3909, size: 192, offset: 6592)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3910, line: 8, size: 192, elements: !3911)
!3910 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3911 = !{!3912, !3913, !3914}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3909, file: !3910, line: 10, baseType: !13, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3909, file: !3910, line: 11, baseType: !99, size: 64, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3909, file: !3910, line: 12, baseType: !3915, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3917, line: 59, size: 48, elements: !3918)
!3917 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3918 = !{!3919, !3920, !3921, !3922, !3923, !3924}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3916, file: !3917, line: 60, baseType: !2132, size: 16)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3916, file: !3917, line: 61, baseType: !2132, size: 16, offset: 16)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3916, file: !3917, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3916, file: !3917, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3916, file: !3917, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3916, file: !3917, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !112, file: !12, line: 465, baseType: !102, size: 64, offset: 6784)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !112, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !112, file: !12, line: 470, baseType: !116, size: 128, offset: 6912)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !112, file: !12, line: 471, baseType: !3929, size: 64, offset: 7040)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3931, line: 33, size: 96, elements: !3932)
!3931 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3932 = !{!3933, !3934, !3935, !3936}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3930, file: !3931, line: 37, baseType: !100, size: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3930, file: !3931, line: 43, baseType: !100, size: 32, offset: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3930, file: !3931, line: 45, baseType: !185, size: 16, offset: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3930, file: !3931, line: 47, baseType: !185, size: 16, offset: 80)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !112, file: !12, line: 476, baseType: !3938, size: 64, offset: 7104)
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !3940)
!3940 = !{!3941, !3957, !3958, !3959}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3939, file: !12, line: 379, baseType: !3942, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3943, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3944, line: 204, baseType: !3945)
!3944 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3944, line: 197, size: 192, elements: !3946)
!3946 = !{!3947, !3949, !3950, !3951, !3953, !3955}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3945, file: !3944, line: 198, baseType: !3948, size: 32)
!3948 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3944, line: 21, baseType: !364)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3945, file: !3944, line: 199, baseType: !177, size: 8, offset: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3945, file: !3944, line: 200, baseType: !177, size: 8, offset: 40)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3945, file: !3944, line: 201, baseType: !3952, size: 16, offset: 48)
!3952 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3944, line: 17, baseType: !184)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3945, file: !3944, line: 202, baseType: !3954, size: 64, offset: 64)
!3954 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3944, line: 16, baseType: !368)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3945, file: !3944, line: 203, baseType: !3956, size: 64, offset: 128)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3944, line: 22, baseType: !368)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3939, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3939, file: !12, line: 381, baseType: !215, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3939, file: !12, line: 382, baseType: !215, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !112, file: !12, line: 477, baseType: !3939, size: 256, offset: 7168)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !112, file: !12, line: 480, baseType: !3962, size: 64, offset: 7424)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !112, file: !12, line: 483, baseType: !3965, size: 64, offset: 7488)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !112, file: !12, line: 488, baseType: !215, size: 64, offset: 7552)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !112, file: !12, line: 492, baseType: !101, size: 64, offset: 7616)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !112, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !112, file: !12, line: 495, baseType: !101, size: 64, offset: 7744)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !112, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !112, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !112, file: !12, line: 500, baseType: !3974, size: 64, offset: 7872)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3976, line: 45, baseType: !3977)
!3976 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !112, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !112, file: !12, line: 504, baseType: !3980, size: 64, offset: 8000)
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3983, line: 96, size: 192, elements: !3984)
!3983 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3984 = !{!3985, !3986, !4029, !4031}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3982, file: !3983, line: 97, baseType: !13, size: 32)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3982, file: !3983, line: 98, baseType: !3987, size: 64, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3983, line: 24, size: 3072, elements: !3989)
!3989 = !{!3990, !3992, !3993, !3994, !3995, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4026, !4027, !4028}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3988, file: !3983, line: 26, baseType: !3991, size: 128)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 128, elements: !2411)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3988, file: !3983, line: 27, baseType: !3991, size: 128, offset: 128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3988, file: !3983, line: 28, baseType: !100, size: 32, offset: 256)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3988, file: !3983, line: 31, baseType: !145, size: 32, align: 512, offset: 512)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3988, file: !3983, line: 32, baseType: !3996, size: 960, offset: 576)
!3996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3997, line: 206, size: 960, elements: !3998)
!3997 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3998 = !{!3999, !4000, !4003, !4005, !4006, !4008}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3996, file: !3997, line: 207, baseType: !908, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3996, file: !3997, line: 208, baseType: !4001, size: 256, offset: 64)
!4001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4002, size: 256, elements: !1293)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3996, file: !3997, line: 209, baseType: !4004, size: 256, offset: 320)
!4004 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 256, elements: !1293)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3996, file: !3997, line: 213, baseType: !251, size: 64, offset: 576)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3996, file: !3997, line: 215, baseType: !4007, size: 256, offset: 640)
!4007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 256, elements: !1293)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3996, file: !3997, line: 216, baseType: !173, size: 8, offset: 896)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3988, file: !3983, line: 33, baseType: !102, size: 64, offset: 1536)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3988, file: !3983, line: 34, baseType: !102, size: 64, offset: 1600)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3988, file: !3983, line: 35, baseType: !1452, size: 8, offset: 1664)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3988, file: !3983, line: 36, baseType: !2847, size: 320, offset: 1728)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3988, file: !3983, line: 37, baseType: !2154, size: 256, offset: 2048)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3988, file: !3983, line: 38, baseType: !905, size: 128, align: 64, offset: 2304)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3988, file: !3983, line: 39, baseType: !4016, size: 64, offset: 2432)
!4016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4017, size: 64)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3983, line: 49, size: 768, elements: !4018)
!4018 = !{!4019, !4020, !4021, !4022, !4023, !4024, !4025}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4017, file: !3983, line: 50, baseType: !145, size: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !4017, file: !3983, line: 51, baseType: !4004, size: 256, offset: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !4017, file: !3983, line: 53, baseType: !4004, size: 256, offset: 320)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4017, file: !3983, line: 54, baseType: !102, size: 64, offset: 576)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !4017, file: !3983, line: 55, baseType: !4016, size: 64, offset: 640)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !4017, file: !3983, line: 56, baseType: !100, size: 32, offset: 704)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !4017, file: !3983, line: 57, baseType: !100, size: 32, offset: 736)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3988, file: !3983, line: 40, baseType: !102, size: 64, offset: 2496)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3988, file: !3983, line: 42, baseType: !100, size: 32, offset: 2560)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3988, file: !3983, line: 43, baseType: !3981, size: 64, offset: 2624)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3982, file: !3983, line: 99, baseType: !4030, offset: 128)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !496, line: 211, elements: !497)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3982, file: !3983, line: 100, baseType: !4032, size: 64, offset: 128)
!4032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4033, size: 64)
!4033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3983, line: 63, size: 3008, elements: !4034)
!4034 = !{!4035, !4036, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4064}
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4033, file: !3983, line: 64, baseType: !4016, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4033, file: !3983, line: 65, baseType: !4037, size: 192, offset: 64)
!4037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4016, size: 192, elements: !216)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !4033, file: !3983, line: 67, baseType: !100, size: 32, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !4033, file: !3983, line: 68, baseType: !592, size: 256, offset: 320)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4033, file: !3983, line: 69, baseType: !145, size: 32, offset: 576)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !4033, file: !3983, line: 70, baseType: !592, size: 256, offset: 640)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !4033, file: !3983, line: 71, baseType: !102, size: 64, offset: 896)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !4033, file: !3983, line: 72, baseType: !102, size: 64, offset: 960)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !4033, file: !3983, line: 73, baseType: !102, size: 64, offset: 1024)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !4033, file: !3983, line: 74, baseType: !102, size: 64, offset: 1088)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !4033, file: !3983, line: 75, baseType: !102, size: 64, offset: 1152)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !4033, file: !3983, line: 76, baseType: !102, size: 64, offset: 1216)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !4033, file: !3983, line: 77, baseType: !102, size: 64, offset: 1280)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !4033, file: !3983, line: 78, baseType: !102, size: 64, offset: 1344)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !4033, file: !3983, line: 79, baseType: !1452, size: 8, offset: 1408)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !4033, file: !3983, line: 80, baseType: !102, size: 64, offset: 1472)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !4033, file: !3983, line: 81, baseType: !592, size: 256, offset: 1536)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !4033, file: !3983, line: 82, baseType: !1838, size: 256, offset: 1792)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !4033, file: !3983, line: 84, baseType: !165, size: 32, offset: 2048)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !4033, file: !3983, line: 87, baseType: !102, size: 64, offset: 2112)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !4033, file: !3983, line: 88, baseType: !102, size: 64, offset: 2176)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4033, file: !3983, line: 89, baseType: !4058, size: 704, offset: 2240)
!4058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2155, line: 111, size: 704, elements: !4059)
!4059 = !{!4060, !4061, !4062, !4063}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4058, file: !2155, line: 112, baseType: !2154, size: 256)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4058, file: !2155, line: 113, baseType: !2847, size: 320, offset: 256)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4058, file: !2155, line: 116, baseType: !3154, size: 64, offset: 576)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4058, file: !2155, line: 117, baseType: !100, size: 32, offset: 640)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !4033, file: !3983, line: 90, baseType: !3981, size: 64, offset: 2944)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !112, file: !12, line: 515, baseType: !4066, size: 64, offset: 8064)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4067, size: 64)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4068, line: 117, size: 128, elements: !4069)
!4068 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4069 = !{!4070, !4071, !4072}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4067, file: !4068, line: 118, baseType: !1395, size: 32)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4067, file: !4068, line: 119, baseType: !1395, size: 32, offset: 32)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4067, file: !4068, line: 120, baseType: !251, size: 64, offset: 64)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !112, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !112, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !112, file: !12, line: 520, baseType: !4076, size: 64, offset: 8192)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !112, file: !12, line: 523, baseType: !4078, size: 64, offset: 8256)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !112, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !112, file: !12, line: 525, baseType: !4083, size: 64, offset: 8384)
!4083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4084, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !112, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !112, file: !12, line: 533, baseType: !101, size: 64, offset: 8512)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !112, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !112, file: !12, line: 535, baseType: !4090, size: 64, offset: 8640)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !112, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !112, file: !12, line: 539, baseType: !100, size: 32, offset: 8736)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !112, file: !12, line: 540, baseType: !4094, size: 64, offset: 8768)
!4094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4095, size: 64)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4096, line: 32, size: 64, elements: !4097)
!4096 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4097 = !{!4098, !4099}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4095, file: !4096, line: 33, baseType: !1395, size: 32)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4095, file: !4096, line: 34, baseType: !1395, size: 32, offset: 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !112, file: !12, line: 563, baseType: !116, size: 128, offset: 8832)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !112, file: !12, line: 565, baseType: !116, size: 128, offset: 8960)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !112, file: !12, line: 568, baseType: !4103, size: 64, offset: 9088)
!4103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !112, file: !12, line: 570, baseType: !165, size: 32, offset: 9152)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4107)
!4107 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !1452)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!4110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4111, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !251)
!4112 = !{!0, !4113, !4135, !4140, !4142, !4144, !4149, !4154, !4159, !4161, !7, !4163, !4165}
!4113 = !DIGlobalVariableExpression(var: !4114, expr: !DIExpression())
!4114 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule303", scope: !4115, file: !2, line: 47, type: !101, isLocal: true, isDefinition: true)
!4115 = distinct !DISubprogram(name: "nmi_trigger_cpumask_backtrace", scope: !2, file: !2, line: 36, type: !4116, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4121)
!4116 = !DISubroutineType(types: !4117)
!4117 = !{null, !1168, !100, !4118}
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{null, !1172}
!4121 = !{!4122, !4123, !4124, !4125, !4126, !4127, !4131, !4133}
!4122 = !DILocalVariable(name: "mask", arg: 1, scope: !4115, file: !2, line: 36, type: !1168)
!4123 = !DILocalVariable(name: "exclude_cpu", arg: 2, scope: !4115, file: !2, line: 37, type: !100)
!4124 = !DILocalVariable(name: "raise", arg: 3, scope: !4115, file: !2, line: 38, type: !4118)
!4125 = !DILocalVariable(name: "i", scope: !4115, file: !2, line: 40, type: !100)
!4126 = !DILocalVariable(name: "this_cpu", scope: !4115, file: !2, line: 40, type: !100)
!4127 = !DILocalVariable(name: "pscr_ret__", scope: !4128, file: !2, line: 40, type: !100)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !2, line: 40, column: 20)
!4129 = distinct !DILexicalBlock(scope: !4130, file: !2, line: 40, column: 20)
!4130 = distinct !DILexicalBlock(scope: !4115, file: !2, line: 40, column: 20)
!4131 = !DILocalVariable(name: "__vpp_verify", scope: !4132, file: !2, line: 40, type: !2115)
!4132 = distinct !DILexicalBlock(scope: !4128, file: !2, line: 40, column: 20)
!4133 = !DILocalVariable(name: "pfo_val__", scope: !4134, file: !2, line: 40, type: !363)
!4134 = distinct !DILexicalBlock(scope: !4128, file: !2, line: 40, column: 20)
!4135 = !DIGlobalVariableExpression(var: !4136, expr: !DIExpression())
!4136 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !4137, isLocal: true, isDefinition: true)
!4137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !4138)
!4138 = !{!4139}
!4139 = !DISubrange(count: 42)
!4140 = !DIGlobalVariableExpression(var: !4141, expr: !DIExpression())
!4141 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule304", scope: !4115, file: !2, line: 87, type: !101, isLocal: true, isDefinition: true)
!4142 = !DIGlobalVariableExpression(var: !4143, expr: !DIExpression())
!4143 = distinct !DIGlobalVariable(name: "__param_backtrace_idle", scope: !9, file: !2, line: 92, type: !3837, isLocal: true, isDefinition: true, align: 64)
!4144 = !DIGlobalVariableExpression(var: !4145, expr: !DIExpression())
!4145 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_backtrace_idletype305", scope: !9, file: !2, line: 92, type: !4146, isLocal: true, isDefinition: true, align: 8)
!4146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 344, elements: !4147)
!4147 = !{!4148}
!4148 = !DISubrange(count: 43)
!4149 = !DIGlobalVariableExpression(var: !4150, expr: !DIExpression())
!4150 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !4151, isLocal: true, isDefinition: true)
!4151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !4152)
!4152 = !{!4153}
!4153 = !DISubrange(count: 51)
!4154 = !DIGlobalVariableExpression(var: !4155, expr: !DIExpression())
!4155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !4156, isLocal: true, isDefinition: true)
!4156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !4157)
!4157 = !{!4158}
!4158 = !DISubrange(count: 28)
!4159 = !DIGlobalVariableExpression(var: !4160, expr: !DIExpression())
!4160 = distinct !DIGlobalVariable(name: "_kbl_addr_nmi_cpu_backtrace", scope: !9, file: !2, line: 122, type: !102, isLocal: true, isDefinition: true)
!4161 = !DIGlobalVariableExpression(var: !4162, expr: !DIExpression())
!4162 = distinct !DIGlobalVariable(name: "backtrace_mask", scope: !9, file: !2, line: 25, type: !108, isLocal: true, isDefinition: true)
!4163 = !DIGlobalVariableExpression(var: !4164, expr: !DIExpression())
!4164 = distinct !DIGlobalVariable(name: "backtrace_idle", scope: !9, file: !2, line: 91, type: !1452, isLocal: true, isDefinition: true)
!4165 = !DIGlobalVariableExpression(var: !4166, expr: !DIExpression())
!4166 = distinct !DIGlobalVariable(name: "__param_str_backtrace_idle", scope: !9, file: !2, line: 92, type: !4167, isLocal: true, isDefinition: true)
!4167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 232, elements: !4168)
!4168 = !{!4169}
!4169 = !DISubrange(count: 29)
!4170 = !{!"rsp"}
!4171 = !{i32 7, !"Dwarf Version", i32 5}
!4172 = !{i32 2, !"Debug Info Version", i32 3}
!4173 = !{i32 1, !"wchar_size", i32 2}
!4174 = !{i32 8, !"cf-protection-branch", i32 1}
!4175 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4176 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4177 = !{i32 1, !"Code Model", i32 2}
!4178 = !{i32 1, !"override-stack-alignment", i32 8}
!4179 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4180 = !DILocation(line: 36, column: 53, scope: !4115)
!4181 = !DILocation(line: 37, column: 12, scope: !4115)
!4182 = !DILocation(line: 38, column: 15, scope: !4115)
!4183 = !DILocation(line: 40, column: 2, scope: !4115)
!4184 = !DILocation(line: 40, column: 6, scope: !4115)
!4185 = !DILocation(line: 40, column: 9, scope: !4115)
!4186 = !DILocation(line: 40, column: 20, scope: !4130)
!4187 = !DILocation(line: 40, column: 20, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4130, file: !2, line: 40, column: 20)
!4189 = !{i64 2154927881}
!4190 = !DILocation(line: 40, column: 20, scope: !4129)
!4191 = !DILocation(line: 40, column: 20, scope: !4128)
!4192 = !DILocation(line: 40, column: 20, scope: !4132)
!4193 = !DILocation(line: 40, column: 20, scope: !4134)
!4194 = !{i64 2154930519}
!4195 = !DILocation(line: 42, column: 6, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4115, file: !2, line: 42, column: 6)
!4197 = !DILocation(line: 42, column: 6, scope: !4115)
!4198 = !DILocation(line: 47, column: 3, scope: !4199)
!4199 = distinct !DILexicalBlock(scope: !4196, file: !2, line: 42, column: 44)
!4200 = !DILocation(line: 47, column: 3, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4199, file: !2, line: 47, column: 3)
!4202 = !{i64 2154931436}
!4203 = !DILocation(line: 47, column: 3, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4201, file: !2, line: 47, column: 3)
!4205 = !DILocation(line: 47, column: 3, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4204, file: !2, line: 47, column: 3)
!4207 = !{i64 2154931618}
!4208 = !DILocation(line: 48, column: 3, scope: !4199)
!4209 = !DILocation(line: 51, column: 43, scope: !4115)
!4210 = !DILocation(line: 51, column: 2, scope: !4115)
!4211 = !DILocation(line: 52, column: 6, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4115, file: !2, line: 52, column: 6)
!4213 = !DILocation(line: 52, column: 18, scope: !4212)
!4214 = !DILocation(line: 52, column: 6, scope: !4115)
!4215 = !DILocation(line: 53, column: 21, scope: !4212)
!4216 = !DILocation(line: 53, column: 3, scope: !4212)
!4217 = !DILocation(line: 61, column: 23, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4115, file: !2, line: 61, column: 6)
!4219 = !DILocation(line: 61, column: 6, scope: !4218)
!4220 = !DILocation(line: 61, column: 6, scope: !4115)
!4221 = !DILocation(line: 62, column: 3, scope: !4218)
!4222 = !DILocation(line: 64, column: 7, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4115, file: !2, line: 64, column: 6)
!4224 = !DILocation(line: 64, column: 6, scope: !4115)
!4225 = !DILocation(line: 65, column: 3, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !2, line: 65, column: 3)
!4227 = distinct !DILexicalBlock(scope: !4223, file: !2, line: 64, column: 50)
!4228 = !DILocation(line: 65, column: 3, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4226, file: !2, line: 65, column: 3)
!4230 = !DILocation(line: 67, column: 3, scope: !4227)
!4231 = !DILocation(line: 68, column: 3, scope: !4227)
!4232 = !DILocation(line: 69, column: 2, scope: !4227)
!4233 = !DILocation(line: 72, column: 9, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4115, file: !2, line: 72, column: 2)
!4235 = !DILocation(line: 72, column: 7, scope: !4234)
!4236 = !DILocation(line: 72, column: 14, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4234, file: !2, line: 72, column: 2)
!4238 = !DILocation(line: 72, column: 16, scope: !4237)
!4239 = !DILocation(line: 72, column: 2, scope: !4234)
!4240 = !DILocation(line: 73, column: 7, scope: !4241)
!4241 = distinct !DILexicalBlock(scope: !4242, file: !2, line: 73, column: 7)
!4242 = distinct !DILexicalBlock(scope: !4237, file: !2, line: 72, column: 34)
!4243 = !DILocation(line: 73, column: 7, scope: !4242)
!4244 = !DILocation(line: 74, column: 4, scope: !4241)
!4245 = !DILocation(line: 75, column: 3, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4247, file: !2, line: 75, column: 3)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !2, line: 75, column: 3)
!4248 = distinct !DILexicalBlock(scope: !4249, file: !2, line: 75, column: 3)
!4249 = distinct !DILexicalBlock(scope: !4242, file: !2, line: 75, column: 3)
!4250 = !DILocation(line: 76, column: 3, scope: !4242)
!4251 = !DILocation(line: 77, column: 2, scope: !4242)
!4252 = !DILocation(line: 72, column: 30, scope: !4237)
!4253 = !DILocation(line: 72, column: 2, scope: !4237)
!4254 = distinct !{!4254, !4239, !4255, !4256, !4257}
!4255 = !DILocation(line: 77, column: 2, scope: !4234)
!4256 = !{!"llvm.loop.mustprogress"}
!4257 = !{!"llvm.loop.unroll.disable"}
!4258 = !DILocation(line: 78, column: 2, scope: !4115)
!4259 = !DILocation(line: 84, column: 2, scope: !4115)
!4260 = !DILocation(line: 86, column: 2, scope: !4115)
!4261 = !DILocation(line: 87, column: 2, scope: !4115)
!4262 = !DILocation(line: 87, column: 2, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4115, file: !2, line: 87, column: 2)
!4264 = !{i64 2154935762}
!4265 = !DILocation(line: 87, column: 2, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4263, file: !2, line: 87, column: 2)
!4267 = !DILocation(line: 87, column: 2, scope: !4268)
!4268 = distinct !DILexicalBlock(scope: !4266, file: !2, line: 87, column: 2)
!4269 = !{i64 2154935944}
!4270 = !DILocation(line: 88, column: 1, scope: !4115)
!4271 = distinct !DISubprogram(name: "__preempt_count_add", scope: !4272, file: !4272, line: 78, type: !2518, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4273)
!4272 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!4273 = !{!4274, !4275, !4277}
!4274 = !DILocalVariable(name: "val", arg: 1, scope: !4271, file: !4272, line: 78, type: !100)
!4275 = !DILocalVariable(name: "pao_ID__", scope: !4276, file: !4272, line: 80, type: !3977)
!4276 = distinct !DILexicalBlock(scope: !4271, file: !4272, line: 80, column: 2)
!4277 = !DILocalVariable(name: "pto_val__", scope: !4278, file: !4272, line: 80, type: !363)
!4278 = distinct !DILexicalBlock(scope: !4279, file: !4272, line: 80, column: 2)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !4272, line: 80, column: 2)
!4280 = distinct !DILexicalBlock(scope: !4276, file: !4272, line: 80, column: 2)
!4281 = !DILocation(line: 78, column: 53, scope: !4271)
!4282 = !DILocation(line: 80, column: 2, scope: !4271)
!4283 = !DILocation(line: 80, column: 2, scope: !4276)
!4284 = !DILocation(line: 80, column: 2, scope: !4280)
!4285 = !DILocation(line: 80, column: 2, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4280, file: !4272, line: 80, column: 2)
!4287 = !{i64 2149592122}
!4288 = !DILocation(line: 80, column: 2, scope: !4279)
!4289 = !DILocation(line: 80, column: 2, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4279, file: !4272, line: 80, column: 2)
!4291 = !{i64 2149592417}
!4292 = !DILocation(line: 80, column: 2, scope: !4278)
!4293 = !{i64 2149593122}
!4294 = !DILocation(line: 81, column: 1, scope: !4271)
!4295 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !4296, file: !4296, line: 313, type: !4297, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4299)
!4296 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!4297 = !DISubroutineType(types: !4298)
!4298 = !{null, !134}
!4299 = !{!4300}
!4300 = !DILocalVariable(name: "op", arg: 1, scope: !4295, file: !4296, line: 313, type: !134)
!4301 = !DILocation(line: 313, column: 66, scope: !4295)
!4302 = !DILocation(line: 313, column: 72, scope: !4295)
!4303 = distinct !DISubprogram(name: "test_and_set_bit", scope: !4304, file: !4304, line: 68, type: !4305, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4309)
!4304 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!1452, !251, !4307}
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !102)
!4309 = !{!4310, !4311}
!4310 = !DILocalVariable(name: "nr", arg: 1, scope: !4303, file: !4304, line: 68, type: !251)
!4311 = !DILocalVariable(name: "addr", arg: 2, scope: !4303, file: !4304, line: 68, type: !4307)
!4312 = !DILocation(line: 68, column: 51, scope: !4303)
!4313 = !DILocation(line: 68, column: 79, scope: !4303)
!4314 = !DILocation(line: 70, column: 2, scope: !4303)
!4315 = !DILocation(line: 70, column: 2, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4303, file: !4304, line: 70, column: 2)
!4317 = !DILocation(line: 71, column: 31, scope: !4303)
!4318 = !DILocation(line: 71, column: 38, scope: !4303)
!4319 = !DILocation(line: 71, column: 36, scope: !4303)
!4320 = !DILocation(line: 71, column: 2, scope: !4303)
!4321 = !DILocation(line: 72, column: 31, scope: !4303)
!4322 = !DILocation(line: 72, column: 35, scope: !4303)
!4323 = !DILocation(line: 72, column: 9, scope: !4303)
!4324 = !DILocation(line: 72, column: 2, scope: !4303)
!4325 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !4272, file: !4272, line: 93, type: !3634, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4326)
!4326 = !{!4327}
!4327 = !DILocalVariable(name: "c", scope: !4328, file: !4272, line: 95, type: !1452)
!4328 = distinct !DILexicalBlock(scope: !4325, file: !4272, line: 95, column: 9)
!4329 = !DILocation(line: 95, column: 9, scope: !4328)
!4330 = !{i64 2149596478, i64 2149596571}
!4331 = !{i8 0, i8 2}
!4332 = !DILocation(line: 95, column: 9, scope: !4325)
!4333 = !DILocation(line: 95, column: 2, scope: !4325)
!4334 = distinct !DISubprogram(name: "cpumask_copy", scope: !105, file: !105, line: 737, type: !4335, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4339)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{null, !103, !4337}
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!4339 = !{!4340, !4341}
!4340 = !DILocalVariable(name: "dstp", arg: 1, scope: !4334, file: !105, line: 737, type: !103)
!4341 = !DILocalVariable(name: "srcp", arg: 2, scope: !4334, file: !105, line: 738, type: !4337)
!4342 = !DILocation(line: 737, column: 49, scope: !4334)
!4343 = !DILocation(line: 738, column: 27, scope: !4334)
!4344 = !DILocation(line: 740, column: 14, scope: !4334)
!4345 = !DILocation(line: 740, column: 34, scope: !4334)
!4346 = !DILocation(line: 740, column: 2, scope: !4334)
!4347 = !DILocation(line: 741, column: 1, scope: !4334)
!4348 = distinct !DISubprogram(name: "cpumask_clear_cpu", scope: !105, file: !105, line: 485, type: !4349, scopeLine: 486, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4351)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{null, !100, !103}
!4351 = !{!4352, !4353}
!4352 = !DILocalVariable(name: "cpu", arg: 1, scope: !4348, file: !105, line: 485, type: !100)
!4353 = !DILocalVariable(name: "dstp", arg: 2, scope: !4348, file: !105, line: 485, type: !103)
!4354 = !DILocation(line: 485, column: 51, scope: !4348)
!4355 = !DILocation(line: 485, column: 72, scope: !4348)
!4356 = !DILocation(line: 487, column: 26, scope: !4348)
!4357 = !DILocation(line: 487, column: 12, scope: !4348)
!4358 = !DILocation(line: 487, column: 32, scope: !4348)
!4359 = !DILocation(line: 487, column: 2, scope: !4348)
!4360 = !DILocation(line: 488, column: 1, scope: !4348)
!4361 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !105, file: !105, line: 502, type: !4362, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4364)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!1452, !100, !4337}
!4364 = !{!4365, !4366}
!4365 = !DILocalVariable(name: "cpu", arg: 1, scope: !4361, file: !105, line: 502, type: !100)
!4366 = !DILocalVariable(name: "cpumask", arg: 2, scope: !4361, file: !105, line: 502, type: !4337)
!4367 = !DILocation(line: 502, column: 50, scope: !4361)
!4368 = !DILocation(line: 502, column: 77, scope: !4361)
!4369 = !DILocation(line: 504, column: 9, scope: !4361)
!4370 = !DILocation(line: 504, column: 2, scope: !4361)
!4371 = distinct !DISubprogram(name: "nmi_cpu_backtrace", scope: !2, file: !2, line: 94, type: !4372, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4374)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!1452, !3032}
!4374 = !{!4375, !4376, !4377, !4380, !4382, !4384, !4385, !4394, !4395, !4399, !4400, !4405}
!4375 = !DILocalVariable(name: "regs", arg: 1, scope: !4371, file: !2, line: 94, type: !3032)
!4376 = !DILocalVariable(name: "cpu", scope: !4371, file: !2, line: 96, type: !100)
!4377 = !DILocalVariable(name: "pscr_ret__", scope: !4378, file: !2, line: 96, type: !100)
!4378 = distinct !DILexicalBlock(scope: !4379, file: !2, line: 96, column: 12)
!4379 = distinct !DILexicalBlock(scope: !4371, file: !2, line: 96, column: 12)
!4380 = !DILocalVariable(name: "__vpp_verify", scope: !4381, file: !2, line: 96, type: !2115)
!4381 = distinct !DILexicalBlock(scope: !4378, file: !2, line: 96, column: 12)
!4382 = !DILocalVariable(name: "pfo_val__", scope: !4383, file: !2, line: 96, type: !363)
!4383 = distinct !DILexicalBlock(scope: !4378, file: !2, line: 96, column: 12)
!4384 = !DILocalVariable(name: "flags", scope: !4371, file: !2, line: 97, type: !102)
!4385 = !DILocalVariable(name: "__dummy", scope: !4386, file: !2, line: 104, type: !102)
!4386 = distinct !DILexicalBlock(scope: !4387, file: !2, line: 104, column: 3)
!4387 = distinct !DILexicalBlock(scope: !4388, file: !2, line: 104, column: 3)
!4388 = distinct !DILexicalBlock(scope: !4389, file: !2, line: 104, column: 3)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !2, line: 104, column: 3)
!4390 = distinct !DILexicalBlock(scope: !4391, file: !2, line: 104, column: 3)
!4391 = distinct !DILexicalBlock(scope: !4392, file: !2, line: 104, column: 3)
!4392 = distinct !DILexicalBlock(scope: !4393, file: !2, line: 99, column: 57)
!4393 = distinct !DILexicalBlock(scope: !4371, file: !2, line: 99, column: 6)
!4394 = !DILocalVariable(name: "__dummy2", scope: !4386, file: !2, line: 104, type: !102)
!4395 = !DILocalVariable(name: "__dummy", scope: !4396, file: !2, line: 104, type: !102)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !2, line: 104, column: 3)
!4397 = distinct !DILexicalBlock(scope: !4398, file: !2, line: 104, column: 3)
!4398 = distinct !DILexicalBlock(scope: !4389, file: !2, line: 104, column: 3)
!4399 = !DILocalVariable(name: "__dummy2", scope: !4396, file: !2, line: 104, type: !102)
!4400 = !DILocalVariable(name: "__dummy", scope: !4401, file: !2, line: 115, type: !102)
!4401 = distinct !DILexicalBlock(scope: !4402, file: !2, line: 115, column: 3)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !2, line: 115, column: 3)
!4403 = distinct !DILexicalBlock(scope: !4404, file: !2, line: 115, column: 3)
!4404 = distinct !DILexicalBlock(scope: !4392, file: !2, line: 115, column: 3)
!4405 = !DILocalVariable(name: "__dummy2", scope: !4401, file: !2, line: 115, type: !102)
!4406 = !DILocation(line: 94, column: 40, scope: !4371)
!4407 = !DILocation(line: 96, column: 2, scope: !4371)
!4408 = !DILocation(line: 96, column: 6, scope: !4371)
!4409 = !DILocation(line: 96, column: 12, scope: !4379)
!4410 = !DILocation(line: 96, column: 12, scope: !4378)
!4411 = !DILocation(line: 96, column: 12, scope: !4381)
!4412 = !DILocation(line: 96, column: 12, scope: !4383)
!4413 = !{i64 2154943561}
!4414 = !DILocation(line: 97, column: 2, scope: !4371)
!4415 = !DILocation(line: 97, column: 16, scope: !4371)
!4416 = !DILocation(line: 99, column: 23, scope: !4393)
!4417 = !DILocation(line: 99, column: 6, scope: !4393)
!4418 = !DILocation(line: 99, column: 6, scope: !4371)
!4419 = !DILocation(line: 104, column: 3, scope: !4392)
!4420 = !DILocation(line: 104, column: 3, scope: !4389)
!4421 = !DILocation(line: 104, column: 3, scope: !4388)
!4422 = !DILocation(line: 104, column: 3, scope: !4386)
!4423 = !DILocation(line: 104, column: 3, scope: !4387)
!4424 = !DILocation(line: 104, column: 3, scope: !4425)
!4425 = distinct !DILexicalBlock(scope: !4389, file: !2, line: 104, column: 3)
!4426 = !DILocation(line: 104, column: 3, scope: !4398)
!4427 = !DILocation(line: 104, column: 3, scope: !4396)
!4428 = !DILocation(line: 104, column: 3, scope: !4397)
!4429 = !DILocation(line: 104, column: 3, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4397, file: !2, line: 104, column: 3)
!4431 = !DILocation(line: 104, column: 3, scope: !4390)
!4432 = distinct !{!4432, !4433, !4433, !4257}
!4433 = !DILocation(line: 104, column: 3, scope: !4391)
!4434 = !DILocation(line: 105, column: 8, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4436, file: !2, line: 105, column: 8)
!4436 = distinct !DILexicalBlock(scope: !4392, file: !2, line: 105, column: 7)
!4437 = !DILocation(line: 105, column: 8, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4435, file: !2, line: 105, column: 8)
!4439 = !DILocation(line: 105, column: 34, scope: !4436)
!4440 = !DILocation(line: 105, column: 37, scope: !4436)
!4441 = !DILocation(line: 105, column: 42, scope: !4436)
!4442 = !DILocation(line: 105, column: 77, scope: !4436)
!4443 = !DILocation(line: 105, column: 57, scope: !4436)
!4444 = !DILocation(line: 105, column: 45, scope: !4436)
!4445 = !DILocation(line: 105, column: 7, scope: !4392)
!4446 = !DILocation(line: 106, column: 4, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !2, line: 106, column: 4)
!4448 = distinct !DILexicalBlock(scope: !4436, file: !2, line: 105, column: 85)
!4449 = !DILocation(line: 106, column: 4, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4447, file: !2, line: 106, column: 4)
!4451 = !DILocation(line: 108, column: 3, scope: !4448)
!4452 = !DILocation(line: 109, column: 4, scope: !4453)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !2, line: 109, column: 4)
!4454 = distinct !DILexicalBlock(scope: !4436, file: !2, line: 108, column: 10)
!4455 = !DILocation(line: 109, column: 4, scope: !4456)
!4456 = distinct !DILexicalBlock(scope: !4453, file: !2, line: 109, column: 4)
!4457 = !DILocation(line: 110, column: 8, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4454, file: !2, line: 110, column: 8)
!4459 = !DILocation(line: 110, column: 8, scope: !4454)
!4460 = !DILocation(line: 111, column: 15, scope: !4458)
!4461 = !DILocation(line: 111, column: 5, scope: !4458)
!4462 = !DILocation(line: 113, column: 5, scope: !4458)
!4463 = !DILocation(line: 115, column: 3, scope: !4392)
!4464 = !DILocation(line: 115, column: 3, scope: !4404)
!4465 = !DILocation(line: 115, column: 3, scope: !4403)
!4466 = !DILocation(line: 115, column: 3, scope: !4401)
!4467 = !DILocation(line: 115, column: 3, scope: !4402)
!4468 = !DILocation(line: 115, column: 3, scope: !4469)
!4469 = distinct !DILexicalBlock(scope: !4402, file: !2, line: 115, column: 3)
!4470 = !DILocation(line: 116, column: 21, scope: !4392)
!4471 = !DILocation(line: 116, column: 3, scope: !4392)
!4472 = !DILocation(line: 117, column: 3, scope: !4392)
!4473 = !DILocation(line: 120, column: 2, scope: !4371)
!4474 = !DILocation(line: 121, column: 1, scope: !4371)
!4475 = distinct !DISubprogram(name: "cpumask_empty", scope: !105, file: !105, line: 672, type: !4476, scopeLine: 673, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4478)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!1452, !4337}
!4478 = !{!4479}
!4479 = !DILocalVariable(name: "srcp", arg: 1, scope: !4475, file: !105, line: 672, type: !4337)
!4480 = !DILocation(line: 672, column: 56, scope: !4475)
!4481 = !DILocation(line: 674, column: 22, scope: !4475)
!4482 = !DILocation(line: 674, column: 9, scope: !4475)
!4483 = !DILocation(line: 674, column: 2, scope: !4475)
!4484 = !DISubprogram(name: "_printk", scope: !4485, file: !4485, line: 153, type: !4486, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4485 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!100, !134, null}
!4488 = distinct !DISubprogram(name: "nmi_backtrace_stall_snap", scope: !4489, file: !4489, line: 234, type: !4490, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4492)
!4489 = !DIFile(filename: "./include/linux/nmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5da5752bbe70ab061cfd0891798ac7e8")
!4490 = !DISubroutineType(types: !4491)
!4491 = !{null, !4337}
!4492 = !{!4493}
!4493 = !DILocalVariable(name: "btp", arg: 1, scope: !4488, file: !4489, line: 234, type: !4337)
!4494 = !DILocation(line: 234, column: 67, scope: !4488)
!4495 = !DILocation(line: 234, column: 73, scope: !4488)
!4496 = !DISubprogram(name: "__const_udelay", scope: !4497, file: !4497, line: 11, type: !4498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4497 = !DIFile(filename: "./include/asm-generic/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1c92e2816e551f3271ce81452cff2dae")
!4498 = !DISubroutineType(types: !4499)
!4499 = !{null, !102}
!4500 = distinct !DISubprogram(name: "touch_softlockup_watchdog", scope: !4489, file: !4489, line: 54, type: !2525, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4501 = !DILocation(line: 54, column: 54, scope: !4500)
!4502 = distinct !DISubprogram(name: "nmi_backtrace_stall_check", scope: !4489, file: !4489, line: 235, type: !4490, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4503)
!4503 = !{!4504}
!4504 = !DILocalVariable(name: "btp", arg: 1, scope: !4502, file: !4489, line: 235, type: !4337)
!4505 = !DILocation(line: 235, column: 68, scope: !4502)
!4506 = !DILocation(line: 235, column: 74, scope: !4502)
!4507 = !DISubprogram(name: "printk_trigger_flush", scope: !4485, file: !4485, line: 194, type: !2525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4508 = distinct !DISubprogram(name: "clear_bit_unlock", scope: !4509, file: !4509, line: 23, type: !4510, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4512)
!4509 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3803e7a2bd2f2f2af55c89b50b84591")
!4510 = !DISubroutineType(types: !4511)
!4511 = !{null, !251, !4307}
!4512 = !{!4513, !4514}
!4513 = !DILocalVariable(name: "nr", arg: 1, scope: !4508, file: !4509, line: 23, type: !251)
!4514 = !DILocalVariable(name: "addr", arg: 2, scope: !4508, file: !4509, line: 23, type: !4307)
!4515 = !DILocation(line: 23, column: 42, scope: !4508)
!4516 = !DILocation(line: 23, column: 70, scope: !4508)
!4517 = !DILocation(line: 25, column: 2, scope: !4508)
!4518 = !DILocation(line: 25, column: 2, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4508, file: !4509, line: 25, column: 2)
!4520 = !DILocation(line: 26, column: 26, scope: !4508)
!4521 = !DILocation(line: 26, column: 33, scope: !4508)
!4522 = !DILocation(line: 26, column: 31, scope: !4508)
!4523 = !DILocation(line: 26, column: 2, scope: !4508)
!4524 = !DILocation(line: 27, column: 24, scope: !4508)
!4525 = !DILocation(line: 27, column: 28, scope: !4508)
!4526 = !DILocation(line: 27, column: 2, scope: !4508)
!4527 = !DILocation(line: 28, column: 1, scope: !4508)
!4528 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !4529, file: !4529, line: 101, type: !4530, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4532)
!4529 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!102}
!4532 = !{!4533}
!4533 = !DILocalVariable(name: "flags", scope: !4528, file: !4529, line: 103, type: !102)
!4534 = !DILocation(line: 103, column: 2, scope: !4528)
!4535 = !DILocation(line: 103, column: 16, scope: !4528)
!4536 = !DILocation(line: 103, column: 24, scope: !4528)
!4537 = !DILocation(line: 104, column: 2, scope: !4528)
!4538 = !DILocation(line: 105, column: 9, scope: !4528)
!4539 = !DILocation(line: 106, column: 1, scope: !4528)
!4540 = !DILocation(line: 105, column: 2, scope: !4528)
!4541 = !DISubprogram(name: "__printk_cpu_sync_try_get", scope: !4485, file: !4485, line: 277, type: !3888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4542 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !4529, file: !4529, line: 132, type: !4498, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4543)
!4543 = !{!4544}
!4544 = !DILocalVariable(name: "flags", arg: 1, scope: !4542, file: !4529, line: 132, type: !102)
!4545 = !DILocation(line: 132, column: 66, scope: !4542)
!4546 = !DILocation(line: 134, column: 32, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4542, file: !4529, line: 134, column: 6)
!4548 = !DILocation(line: 134, column: 7, scope: !4547)
!4549 = !DILocation(line: 134, column: 6, scope: !4542)
!4550 = !DILocation(line: 135, column: 3, scope: !4547)
!4551 = !DILocation(line: 136, column: 1, scope: !4542)
!4552 = !DISubprogram(name: "__printk_cpu_sync_wait", scope: !4485, file: !4485, line: 278, type: !2525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4553 = !DISubprogram(name: "cpu_in_idle", scope: !4554, file: !4554, line: 190, type: !4555, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4554 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!4555 = !DISubroutineType(types: !4556)
!4556 = !{!1452, !102}
!4557 = distinct !DISubprogram(name: "instruction_pointer", scope: !3034, file: !3034, line: 285, type: !4558, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4560)
!4558 = !DISubroutineType(types: !4559)
!4559 = !{!102, !3032}
!4560 = !{!4561}
!4561 = !DILocalVariable(name: "regs", arg: 1, scope: !4557, file: !3034, line: 285, type: !3032)
!4562 = !DILocation(line: 285, column: 65, scope: !4557)
!4563 = !DILocation(line: 287, column: 9, scope: !4557)
!4564 = !DILocation(line: 287, column: 15, scope: !4557)
!4565 = !DILocation(line: 287, column: 2, scope: !4557)
!4566 = !DISubprogram(name: "show_regs", scope: !4567, file: !4567, line: 26, type: !4568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4567 = !DIFile(filename: "./include/linux/sched/debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "162ea9be471e54e9534d809de8723629")
!4568 = !DISubroutineType(types: !4569)
!4569 = !{null, !3032}
!4570 = !DISubprogram(name: "dump_stack", scope: !4485, file: !4485, line: 193, type: !2525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4571 = !DISubprogram(name: "__printk_cpu_sync_put", scope: !4485, file: !4485, line: 279, type: !2525, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4572 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4573, file: !4573, line: 94, type: !4574, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4579)
!4573 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4574 = !DISubroutineType(types: !4575)
!4575 = !{null, !4576, !262}
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4578)
!4578 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4579 = !{!4580, !4581}
!4580 = !DILocalVariable(name: "v", arg: 1, scope: !4572, file: !4573, line: 94, type: !4576)
!4581 = !DILocalVariable(name: "size", arg: 2, scope: !4572, file: !4573, line: 94, type: !262)
!4582 = !DILocation(line: 94, column: 79, scope: !4572)
!4583 = !DILocation(line: 94, column: 89, scope: !4572)
!4584 = !DILocation(line: 96, column: 20, scope: !4572)
!4585 = !DILocation(line: 96, column: 23, scope: !4572)
!4586 = !DILocation(line: 96, column: 2, scope: !4572)
!4587 = !DILocation(line: 97, column: 2, scope: !4572)
!4588 = !DILocation(line: 98, column: 1, scope: !4572)
!4589 = distinct !DISubprogram(name: "arch_test_and_set_bit", scope: !4590, file: !4590, line: 136, type: !4305, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4591)
!4590 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4591 = !{!4592, !4593, !4594}
!4592 = !DILocalVariable(name: "nr", arg: 1, scope: !4589, file: !4590, line: 136, type: !251)
!4593 = !DILocalVariable(name: "addr", arg: 2, scope: !4589, file: !4590, line: 136, type: !4307)
!4594 = !DILocalVariable(name: "c", scope: !4595, file: !4590, line: 138, type: !1452)
!4595 = distinct !DILexicalBlock(scope: !4589, file: !4590, line: 138, column: 9)
!4596 = !DILocation(line: 136, column: 28, scope: !4589)
!4597 = !DILocation(line: 136, column: 56, scope: !4589)
!4598 = !DILocation(line: 138, column: 9, scope: !4595)
!4599 = !{i64 2147830561, i64 2147830600, i64 2147830621, i64 2147830658, i64 2147830681, i64 2147830690, i64 2147830793}
!4600 = !DILocation(line: 138, column: 9, scope: !4589)
!4601 = !DILocation(line: 138, column: 2, scope: !4589)
!4602 = distinct !DISubprogram(name: "kasan_check_write", scope: !4603, file: !4603, line: 44, type: !4604, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4606)
!4603 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!1452, !4576, !13}
!4606 = !{!4607, !4608}
!4607 = !DILocalVariable(name: "p", arg: 1, scope: !4602, file: !4603, line: 44, type: !4576)
!4608 = !DILocalVariable(name: "size", arg: 2, scope: !4602, file: !4603, line: 44, type: !13)
!4609 = !DILocation(line: 44, column: 59, scope: !4602)
!4610 = !DILocation(line: 44, column: 75, scope: !4602)
!4611 = !DILocation(line: 46, column: 2, scope: !4602)
!4612 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4613, file: !4613, line: 229, type: !4614, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4616)
!4613 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4614 = !DISubroutineType(types: !4615)
!4615 = !{null, !4576, !262, !100}
!4616 = !{!4617, !4618, !4619}
!4617 = !DILocalVariable(name: "ptr", arg: 1, scope: !4612, file: !4613, line: 229, type: !4576)
!4618 = !DILocalVariable(name: "size", arg: 2, scope: !4612, file: !4613, line: 229, type: !262)
!4619 = !DILocalVariable(name: "type", arg: 3, scope: !4612, file: !4613, line: 230, type: !100)
!4620 = !DILocation(line: 229, column: 60, scope: !4612)
!4621 = !DILocation(line: 229, column: 72, scope: !4612)
!4622 = !DILocation(line: 230, column: 15, scope: !4612)
!4623 = !DILocation(line: 230, column: 23, scope: !4612)
!4624 = distinct !DISubprogram(name: "bitmap_copy", scope: !4625, file: !4625, line: 266, type: !4626, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4629)
!4625 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!4626 = !DISubroutineType(types: !4627)
!4627 = !{null, !4090, !4628, !13}
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!4629 = !{!4630, !4631, !4632, !4633}
!4630 = !DILocalVariable(name: "dst", arg: 1, scope: !4624, file: !4625, line: 266, type: !4090)
!4631 = !DILocalVariable(name: "src", arg: 2, scope: !4624, file: !4625, line: 266, type: !4628)
!4632 = !DILocalVariable(name: "nbits", arg: 3, scope: !4624, file: !4625, line: 267, type: !13)
!4633 = !DILocalVariable(name: "len", scope: !4624, file: !4625, line: 269, type: !13)
!4634 = !DILocation(line: 266, column: 47, scope: !4624)
!4635 = !DILocation(line: 266, column: 73, scope: !4624)
!4636 = !DILocation(line: 267, column: 17, scope: !4624)
!4637 = !DILocation(line: 269, column: 2, scope: !4624)
!4638 = !DILocation(line: 269, column: 15, scope: !4624)
!4639 = !DILocation(line: 269, column: 21, scope: !4624)
!4640 = !DILocation(line: 271, column: 6, scope: !4641)
!4641 = distinct !DILexicalBlock(scope: !4624, file: !4625, line: 271, column: 6)
!4642 = !DILocation(line: 271, column: 6, scope: !4624)
!4643 = !DILocation(line: 272, column: 11, scope: !4641)
!4644 = !DILocation(line: 272, column: 10, scope: !4641)
!4645 = !DILocation(line: 272, column: 4, scope: !4641)
!4646 = !DILocation(line: 272, column: 8, scope: !4641)
!4647 = !DILocation(line: 272, column: 3, scope: !4641)
!4648 = !DILocation(line: 274, column: 10, scope: !4641)
!4649 = !DILocation(line: 274, column: 15, scope: !4641)
!4650 = !DILocation(line: 274, column: 20, scope: !4641)
!4651 = !DILocation(line: 274, column: 3, scope: !4641)
!4652 = !DILocation(line: 275, column: 1, scope: !4624)
!4653 = distinct !DISubprogram(name: "clear_bit", scope: !4304, file: !4304, line: 39, type: !4510, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4654)
!4654 = !{!4655, !4656}
!4655 = !DILocalVariable(name: "nr", arg: 1, scope: !4653, file: !4304, line: 39, type: !251)
!4656 = !DILocalVariable(name: "addr", arg: 2, scope: !4653, file: !4304, line: 39, type: !4307)
!4657 = !DILocation(line: 39, column: 44, scope: !4653)
!4658 = !DILocation(line: 39, column: 72, scope: !4653)
!4659 = !DILocation(line: 41, column: 26, scope: !4653)
!4660 = !DILocation(line: 41, column: 33, scope: !4653)
!4661 = !DILocation(line: 41, column: 31, scope: !4653)
!4662 = !DILocation(line: 41, column: 2, scope: !4653)
!4663 = !DILocation(line: 42, column: 17, scope: !4653)
!4664 = !DILocation(line: 42, column: 21, scope: !4653)
!4665 = !DILocation(line: 42, column: 2, scope: !4653)
!4666 = !DILocation(line: 43, column: 1, scope: !4653)
!4667 = distinct !DISubprogram(name: "cpumask_check", scope: !105, file: !105, line: 148, type: !4668, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4670)
!4668 = !DISubroutineType(types: !4669)
!4669 = !{!13, !13}
!4670 = !{!4671}
!4671 = !DILocalVariable(name: "cpu", arg: 1, scope: !4667, file: !105, line: 148, type: !13)
!4672 = !DILocation(line: 148, column: 64, scope: !4667)
!4673 = !DILocation(line: 150, column: 20, scope: !4667)
!4674 = !DILocation(line: 150, column: 2, scope: !4667)
!4675 = !DILocation(line: 151, column: 9, scope: !4667)
!4676 = !DILocation(line: 151, column: 2, scope: !4667)
!4677 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4573, file: !4573, line: 80, type: !4574, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4678)
!4678 = !{!4679, !4680}
!4679 = !DILocalVariable(name: "v", arg: 1, scope: !4677, file: !4573, line: 80, type: !4576)
!4680 = !DILocalVariable(name: "size", arg: 2, scope: !4677, file: !4573, line: 80, type: !262)
!4681 = !DILocation(line: 80, column: 74, scope: !4677)
!4682 = !DILocation(line: 80, column: 84, scope: !4677)
!4683 = !DILocation(line: 82, column: 20, scope: !4677)
!4684 = !DILocation(line: 82, column: 23, scope: !4677)
!4685 = !DILocation(line: 82, column: 2, scope: !4677)
!4686 = !DILocation(line: 83, column: 2, scope: !4677)
!4687 = !DILocation(line: 84, column: 1, scope: !4677)
!4688 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4590, file: !4590, line: 72, type: !4510, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4689)
!4689 = !{!4690, !4691}
!4690 = !DILocalVariable(name: "nr", arg: 1, scope: !4688, file: !4590, line: 72, type: !251)
!4691 = !DILocalVariable(name: "addr", arg: 2, scope: !4688, file: !4590, line: 72, type: !4307)
!4692 = !DILocation(line: 72, column: 21, scope: !4688)
!4693 = !DILocation(line: 72, column: 49, scope: !4688)
!4694 = !DILocation(line: 74, column: 27, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4688, file: !4590, line: 74, column: 6)
!4696 = !DILocation(line: 74, column: 6, scope: !4695)
!4697 = !DILocation(line: 74, column: 6, scope: !4688)
!4698 = !DILocation(line: 76, column: 6, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4695, file: !4590, line: 74, column: 32)
!4700 = !DILocation(line: 77, column: 13, scope: !4699)
!4701 = !DILocation(line: 77, column: 12, scope: !4699)
!4702 = !DILocation(line: 75, column: 3, scope: !4699)
!4703 = !{i64 2147825398, i64 2147825437, i64 2147825458, i64 2147825495, i64 2147825518, i64 2147825388}
!4704 = !DILocation(line: 78, column: 2, scope: !4699)
!4705 = !DILocation(line: 80, column: 8, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4695, file: !4590, line: 78, column: 9)
!4707 = !DILocation(line: 80, column: 32, scope: !4706)
!4708 = !DILocation(line: 79, column: 3, scope: !4706)
!4709 = !{i64 2147825683, i64 2147825722, i64 2147825743, i64 2147825780, i64 2147825803, i64 2147825673}
!4710 = !DILocation(line: 82, column: 1, scope: !4688)
!4711 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !105, file: !105, line: 140, type: !4712, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4714)
!4712 = !DISubroutineType(types: !4713)
!4713 = !{null, !13, !13}
!4714 = !{!4715, !4716}
!4715 = !DILocalVariable(name: "cpu", arg: 1, scope: !4711, file: !105, line: 140, type: !13)
!4716 = !DILocalVariable(name: "bits", arg: 2, scope: !4711, file: !105, line: 140, type: !13)
!4717 = !DILocation(line: 140, column: 60, scope: !4711)
!4718 = !DILocation(line: 140, column: 78, scope: !4711)
!4719 = !DILocation(line: 145, column: 1, scope: !4711)
!4720 = distinct !DISubprogram(name: "_test_bit", scope: !4721, file: !4721, line: 139, type: !4722, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4726)
!4721 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4722 = !DISubroutineType(types: !4723)
!4723 = !{!1452, !102, !4724}
!4724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4725, size: 64)
!4725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4308)
!4726 = !{!4727, !4728}
!4727 = !DILocalVariable(name: "nr", arg: 1, scope: !4720, file: !4721, line: 139, type: !102)
!4728 = !DILocalVariable(name: "addr", arg: 2, scope: !4720, file: !4721, line: 139, type: !4724)
!4729 = !DILocation(line: 139, column: 25, scope: !4720)
!4730 = !DILocation(line: 139, column: 59, scope: !4720)
!4731 = !DILocation(line: 141, column: 25, scope: !4720)
!4732 = !DILocation(line: 141, column: 32, scope: !4720)
!4733 = !DILocation(line: 141, column: 30, scope: !4720)
!4734 = !DILocation(line: 141, column: 2, scope: !4720)
!4735 = !DILocation(line: 142, column: 23, scope: !4720)
!4736 = !DILocation(line: 142, column: 27, scope: !4720)
!4737 = !DILocation(line: 142, column: 9, scope: !4720)
!4738 = !DILocation(line: 142, column: 2, scope: !4720)
!4739 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4573, file: !4573, line: 66, type: !4574, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4740)
!4740 = !{!4741, !4742}
!4741 = !DILocalVariable(name: "v", arg: 1, scope: !4739, file: !4573, line: 66, type: !4576)
!4742 = !DILocalVariable(name: "size", arg: 2, scope: !4739, file: !4573, line: 66, type: !262)
!4743 = !DILocation(line: 66, column: 73, scope: !4739)
!4744 = !DILocation(line: 66, column: 83, scope: !4739)
!4745 = !DILocation(line: 68, column: 19, scope: !4739)
!4746 = !DILocation(line: 68, column: 22, scope: !4739)
!4747 = !DILocation(line: 68, column: 2, scope: !4739)
!4748 = !DILocation(line: 69, column: 2, scope: !4739)
!4749 = !DILocation(line: 70, column: 1, scope: !4739)
!4750 = distinct !DISubprogram(name: "arch_test_bit", scope: !4590, file: !4590, line: 237, type: !4722, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4751)
!4751 = !{!4752, !4753}
!4752 = !DILocalVariable(name: "nr", arg: 1, scope: !4750, file: !4590, line: 237, type: !102)
!4753 = !DILocalVariable(name: "addr", arg: 2, scope: !4750, file: !4590, line: 237, type: !4724)
!4754 = !DILocation(line: 237, column: 29, scope: !4750)
!4755 = !DILocation(line: 237, column: 63, scope: !4750)
!4756 = !DILocation(line: 239, column: 30, scope: !4750)
!4757 = !DILocation(line: 239, column: 9, scope: !4750)
!4758 = !DILocation(line: 239, column: 54, scope: !4750)
!4759 = !DILocation(line: 239, column: 58, scope: !4750)
!4760 = !DILocation(line: 239, column: 36, scope: !4750)
!4761 = !DILocation(line: 240, column: 26, scope: !4750)
!4762 = !DILocation(line: 240, column: 30, scope: !4750)
!4763 = !DILocation(line: 240, column: 8, scope: !4750)
!4764 = !DILocation(line: 239, column: 2, scope: !4750)
!4765 = distinct !DISubprogram(name: "kasan_check_read", scope: !4603, file: !4603, line: 40, type: !4604, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4766)
!4766 = !{!4767, !4768}
!4767 = !DILocalVariable(name: "p", arg: 1, scope: !4765, file: !4603, line: 40, type: !4576)
!4768 = !DILocalVariable(name: "size", arg: 2, scope: !4765, file: !4603, line: 40, type: !13)
!4769 = !DILocation(line: 40, column: 58, scope: !4765)
!4770 = !DILocation(line: 40, column: 74, scope: !4765)
!4771 = !DILocation(line: 42, column: 2, scope: !4765)
!4772 = distinct !DISubprogram(name: "constant_test_bit", scope: !4590, file: !4590, line: 204, type: !4773, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4775)
!4773 = !DISubroutineType(types: !4774)
!4774 = !{!1452, !251, !4724}
!4775 = !{!4776, !4777}
!4776 = !DILocalVariable(name: "nr", arg: 1, scope: !4772, file: !4590, line: 204, type: !251)
!4777 = !DILocalVariable(name: "addr", arg: 2, scope: !4772, file: !4590, line: 204, type: !4724)
!4778 = !DILocation(line: 204, column: 52, scope: !4772)
!4779 = !DILocation(line: 204, column: 86, scope: !4772)
!4780 = !DILocation(line: 206, column: 19, scope: !4772)
!4781 = !DILocation(line: 206, column: 22, scope: !4772)
!4782 = !DILocation(line: 206, column: 15, scope: !4772)
!4783 = !DILocation(line: 207, column: 4, scope: !4772)
!4784 = !DILocation(line: 207, column: 9, scope: !4772)
!4785 = !DILocation(line: 207, column: 12, scope: !4772)
!4786 = !DILocation(line: 206, column: 44, scope: !4772)
!4787 = !DILocation(line: 207, column: 37, scope: !4772)
!4788 = !DILocation(line: 206, column: 2, scope: !4772)
!4789 = distinct !DISubprogram(name: "variable_test_bit", scope: !4590, file: !4590, line: 224, type: !4773, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4790)
!4790 = !{!4791, !4792, !4793}
!4791 = !DILocalVariable(name: "nr", arg: 1, scope: !4789, file: !4590, line: 224, type: !251)
!4792 = !DILocalVariable(name: "addr", arg: 2, scope: !4789, file: !4590, line: 224, type: !4724)
!4793 = !DILocalVariable(name: "oldbit", scope: !4789, file: !4590, line: 226, type: !1452)
!4794 = !DILocation(line: 224, column: 52, scope: !4789)
!4795 = !DILocation(line: 224, column: 86, scope: !4789)
!4796 = !DILocation(line: 226, column: 2, scope: !4789)
!4797 = !DILocation(line: 226, column: 7, scope: !4789)
!4798 = !DILocation(line: 231, column: 33, scope: !4789)
!4799 = !DILocation(line: 231, column: 46, scope: !4789)
!4800 = !DILocation(line: 228, column: 2, scope: !4789)
!4801 = !{i64 2147837722, i64 2147837796}
!4802 = !DILocation(line: 233, column: 9, scope: !4789)
!4803 = !DILocation(line: 234, column: 1, scope: !4789)
!4804 = !DILocation(line: 233, column: 2, scope: !4789)
!4805 = distinct !DISubprogram(name: "bitmap_empty", scope: !4625, file: !4625, line: 436, type: !4806, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4808)
!4806 = !DISubroutineType(types: !4807)
!4807 = !{!1452, !4628, !13}
!4808 = !{!4809, !4810}
!4809 = !DILocalVariable(name: "src", arg: 1, scope: !4805, file: !4625, line: 436, type: !4628)
!4810 = !DILocalVariable(name: "nbits", arg: 2, scope: !4805, file: !4625, line: 436, type: !13)
!4811 = !DILocation(line: 436, column: 54, scope: !4805)
!4812 = !DILocation(line: 436, column: 68, scope: !4805)
!4813 = !DILocation(line: 438, column: 6, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4805, file: !4625, line: 438, column: 6)
!4815 = !DILocation(line: 438, column: 6, scope: !4805)
!4816 = !DILocation(line: 439, column: 14, scope: !4814)
!4817 = !DILocation(line: 439, column: 13, scope: !4814)
!4818 = !DILocation(line: 439, column: 20, scope: !4814)
!4819 = !DILocation(line: 439, column: 18, scope: !4814)
!4820 = !DILocation(line: 439, column: 10, scope: !4814)
!4821 = !DILocation(line: 439, column: 3, scope: !4814)
!4822 = !DILocation(line: 441, column: 24, scope: !4805)
!4823 = !DILocation(line: 441, column: 29, scope: !4805)
!4824 = !DILocation(line: 441, column: 9, scope: !4805)
!4825 = !DILocation(line: 441, column: 39, scope: !4805)
!4826 = !DILocation(line: 441, column: 36, scope: !4805)
!4827 = !DILocation(line: 441, column: 2, scope: !4805)
!4828 = !DILocation(line: 442, column: 1, scope: !4805)
!4829 = distinct !DISubprogram(name: "find_first_bit", scope: !4830, file: !4830, line: 200, type: !4831, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4833)
!4830 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!102, !4628, !102}
!4833 = !{!4834, !4835, !4836}
!4834 = !DILocalVariable(name: "addr", arg: 1, scope: !4829, file: !4830, line: 200, type: !4628)
!4835 = !DILocalVariable(name: "size", arg: 2, scope: !4829, file: !4830, line: 200, type: !102)
!4836 = !DILocalVariable(name: "val", scope: !4837, file: !4830, line: 203, type: !102)
!4837 = distinct !DILexicalBlock(scope: !4838, file: !4830, line: 202, column: 31)
!4838 = distinct !DILexicalBlock(scope: !4829, file: !4830, line: 202, column: 6)
!4839 = !DILocation(line: 200, column: 51, scope: !4829)
!4840 = !DILocation(line: 200, column: 71, scope: !4829)
!4841 = !DILocation(line: 202, column: 6, scope: !4838)
!4842 = !DILocation(line: 202, column: 6, scope: !4829)
!4843 = !DILocation(line: 203, column: 3, scope: !4837)
!4844 = !DILocation(line: 203, column: 17, scope: !4837)
!4845 = !DILocation(line: 203, column: 24, scope: !4837)
!4846 = !DILocation(line: 203, column: 23, scope: !4837)
!4847 = !DILocation(line: 203, column: 31, scope: !4837)
!4848 = !DILocation(line: 203, column: 29, scope: !4837)
!4849 = !DILocation(line: 205, column: 10, scope: !4837)
!4850 = !DILocation(line: 205, column: 16, scope: !4837)
!4851 = !DILocation(line: 205, column: 29, scope: !4837)
!4852 = !DILocation(line: 205, column: 3, scope: !4837)
!4853 = !DILocation(line: 206, column: 2, scope: !4838)
!4854 = !DILocation(line: 208, column: 25, scope: !4829)
!4855 = !DILocation(line: 208, column: 31, scope: !4829)
!4856 = !DILocation(line: 208, column: 9, scope: !4829)
!4857 = !DILocation(line: 208, column: 2, scope: !4829)
!4858 = !DILocation(line: 209, column: 1, scope: !4829)
!4859 = distinct !DISubprogram(name: "variable__ffs", scope: !4590, file: !4590, line: 250, type: !4860, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4862)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!102, !102}
!4862 = !{!4863}
!4863 = !DILocalVariable(name: "word", arg: 1, scope: !4859, file: !4590, line: 250, type: !102)
!4864 = !DILocation(line: 250, column: 66, scope: !4859)
!4865 = !DILocation(line: 254, column: 11, scope: !4859)
!4866 = !DILocation(line: 252, column: 2, scope: !4859)
!4867 = !{i64 332797}
!4868 = !DILocation(line: 255, column: 9, scope: !4859)
!4869 = !DILocation(line: 255, column: 2, scope: !4859)
!4870 = !DISubprogram(name: "_find_first_bit", scope: !4830, file: !4830, line: 21, type: !4831, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4871 = distinct !DISubprogram(name: "arch_clear_bit_unlock", scope: !4590, file: !4590, line: 85, type: !4510, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4872)
!4872 = !{!4873, !4874}
!4873 = !DILocalVariable(name: "nr", arg: 1, scope: !4871, file: !4590, line: 85, type: !251)
!4874 = !DILocalVariable(name: "addr", arg: 2, scope: !4871, file: !4590, line: 85, type: !4307)
!4875 = !DILocation(line: 85, column: 28, scope: !4871)
!4876 = !DILocation(line: 85, column: 56, scope: !4871)
!4877 = !DILocation(line: 87, column: 2, scope: !4871)
!4878 = !{i64 2147826245}
!4879 = !DILocation(line: 88, column: 17, scope: !4871)
!4880 = !DILocation(line: 88, column: 21, scope: !4871)
!4881 = !DILocation(line: 88, column: 2, scope: !4871)
!4882 = !DILocation(line: 89, column: 1, scope: !4871)
!4883 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4529, file: !4529, line: 65, type: !4530, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4884 = !DILocation(line: 67, column: 9, scope: !4883)
!4885 = !DILocation(line: 67, column: 2, scope: !4883)
!4886 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4529, file: !4529, line: 70, type: !2525, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4887 = !DILocation(line: 72, column: 2, scope: !4886)
!4888 = !DILocation(line: 73, column: 1, scope: !4886)
!4889 = distinct !DISubprogram(name: "native_save_fl", scope: !4529, file: !4529, line: 17, type: !4530, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4890)
!4890 = !{!4891}
!4891 = !DILocalVariable(name: "flags", scope: !4889, file: !4529, line: 19, type: !102)
!4892 = !DILocation(line: 19, column: 2, scope: !4889)
!4893 = !DILocation(line: 19, column: 16, scope: !4889)
!4894 = !DILocation(line: 26, column: 2, scope: !4889)
!4895 = !{i64 1657750, i64 1657771}
!4896 = !DILocation(line: 32, column: 9, scope: !4889)
!4897 = !DILocation(line: 33, column: 1, scope: !4889)
!4898 = !DILocation(line: 32, column: 2, scope: !4889)
!4899 = distinct !DISubprogram(name: "native_irq_disable", scope: !4529, file: !4529, line: 35, type: !2525, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4900 = !DILocation(line: 37, column: 2, scope: !4899)
!4901 = !{i64 1657954}
!4902 = !DILocation(line: 38, column: 1, scope: !4899)
!4903 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !4529, file: !4529, line: 120, type: !4904, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !4906)
!4904 = !DISubroutineType(types: !4905)
!4905 = !{!100, !102}
!4906 = !{!4907}
!4907 = !DILocalVariable(name: "flags", arg: 1, scope: !4903, file: !4529, line: 120, type: !102)
!4908 = !DILocation(line: 120, column: 67, scope: !4903)
!4909 = !DILocation(line: 122, column: 11, scope: !4903)
!4910 = !DILocation(line: 122, column: 17, scope: !4903)
!4911 = !DILocation(line: 122, column: 9, scope: !4903)
!4912 = !DILocation(line: 122, column: 2, scope: !4903)
!4913 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !4529, file: !4529, line: 75, type: !2525, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4914 = !DILocation(line: 77, column: 2, scope: !4913)
!4915 = !DILocation(line: 78, column: 1, scope: !4913)
!4916 = distinct !DISubprogram(name: "native_irq_enable", scope: !4529, file: !4529, line: 40, type: !2525, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9)
!4917 = !DILocation(line: 42, column: 2, scope: !4916)
!4918 = !{i64 1658046}
!4919 = !DILocation(line: 43, column: 1, scope: !4916)
