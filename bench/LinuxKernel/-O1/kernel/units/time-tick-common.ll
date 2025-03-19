; ModuleID = 'kernel/time/tick-common.c'
source_filename = "kernel/time/tick-common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_tick_broadcast_oneshot_control: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad tick_broadcast_oneshot_control ; .previous"

%struct.tick_device = type { ptr, i32 }
%struct.pcpu_hot = type { %union.anon.19 }
%union.anon.19 = type { %struct.anon.20, [16 x i8] }
%struct.anon.20 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.cpumask = type { [1 x i64] }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.static_call_key = type { ptr, %union.anon.21 }
%union.anon.21 = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.24 }
%union.anon.24 = type { i64 }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [48 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.22, i64, i64, %union.anon.23 }
%union.anon.22 = type { i64 }
%union.anon.23 = type { i64 }

@tick_do_timer_cpu = hidden global i32 -2, section ".data..read_mostly", align 4, !dbg !0
@tick_cpu_device = hidden global %struct.tick_device zeroinitializer, section ".data..percpu", align 8, !dbg !6150
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !6114
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@jiffies_seq = external dso_local global %struct.seqcount_raw_spinlock, align 4
@tick_next_period = hidden global i64 0, align 8, !dbg !6152
@this_cpu_off = external dso_local global i64, section ".data..percpu..read_mostly", align 8
@__UNIQUE_ID___addressable_tick_broadcast_oneshot_control528 = internal global ptr @tick_broadcast_oneshot_control, section ".discard.addressable", align 8, !dbg !6117
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@tick_freeze_lock = internal global %struct.raw_spinlock zeroinitializer, align 4, !dbg !6161
@tick_freeze_depth = internal global i32 0, align 4, !dbg !6154
@tick_freeze.___tp_str = internal global ptr @.str.1, section "__tracepoint_str", align 8, !dbg !6124
@.str.1 = private unnamed_addr constant [19 x i8] c"timekeeping_freeze\00", align 1, !dbg !6119
@system_state = external dso_local global i32, align 4
@tick_unfreeze.___tp_str = internal global ptr @.str.1, section "__tracepoint_str", align 8, !dbg !6137
@jiffies_lock = external dso_local global %struct.raw_spinlock, align 4
@tick_periodic.__UNIQUE_ID___addressable___SCK__preempt_schedule527 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !6156
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@__irq_regs = external dso_local global ptr, section ".data..percpu", align 8
@cpu_bit_bitmap = external dso_local constant [65 x [1 x i64]], align 16
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@__tracepoint_suspend_resume = external dso_local global %struct.tracepoint, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"include/trace/events/power.h\00", align 1, !dbg !6163
@trace_suspend_resume.__UNIQUE_ID___addressable___SCK__tp_func_suspend_resume398 = internal global ptr @__SCK__tp_func_suspend_resume, section ".discard.addressable", align 8, !dbg !6169
@__SCK__tp_func_suspend_resume = external dso_local global %struct.static_call_key, align 8
@trace_suspend_resume.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace399 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !6199
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_tick_broadcast_oneshot_control528, ptr @tick_freeze.___tp_str, ptr @tick_unfreeze.___tp_str, ptr @tick_periodic.__UNIQUE_ID___addressable___SCK__preempt_schedule527, ptr @trace_suspend_resume.__UNIQUE_ID___addressable___SCK__tp_func_suspend_resume398, ptr @trace_suspend_resume.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace399], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @tick_get_device(i32 noundef %cpu) #0 align 16 !dbg !6211 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6215, metadata !DIExpression()), !dbg !6221
  br label %do.body, !dbg !6222

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6223
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6216, metadata !DIExpression()), !dbg !6223
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6223
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6223
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6222
  br label %do.end, !dbg !6223

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !6224
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6219, metadata !DIExpression()), !dbg !6224
  store i64 ptrtoint (ptr @tick_cpu_device to i64), ptr %__ptr, align 8, !dbg !6224
  %1 = load i64, ptr %__ptr, align 8, !dbg !6224
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !6224
  %idxprom = sext i32 %2 to i64, !dbg !6224
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6224
  %3 = load i64, ptr %arrayidx, align 8, !dbg !6224
  %add = add i64 %1, %3, !dbg !6224
  %4 = inttoptr i64 %add to ptr, !dbg !6224
  store ptr %4, ptr %tmp1, align 8, !dbg !6224
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !6222
  %5 = load ptr, ptr %tmp1, align 8, !dbg !6224
  store ptr %5, ptr %tmp, align 8, !dbg !6223
  %6 = load ptr, ptr %tmp, align 8, !dbg !6222
  ret ptr %6, !dbg !6225
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tick_is_oneshot_available() #0 align 16 !dbg !6226 {
entry:
  %retval = alloca i32, align 4
  %dev = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #12, !dbg !6236
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6228, metadata !DIExpression()), !dbg !6237
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !6238
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !6239
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6229, metadata !DIExpression()), !dbg !6239
  br label %do.body, !dbg !6239

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6240
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6232, metadata !DIExpression()), !dbg !6240
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6240
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6240
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6239
  br label %do.cond, !dbg !6240

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6240

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !6241
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6234, metadata !DIExpression()), !dbg !6241
  %1 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @tick_cpu_device) #14, !dbg !6241, !srcloc !6242
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6241
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6241
  %3 = inttoptr i64 %2 to ptr, !dbg !6241
  store ptr %3, ptr %tmp1, align 8, !dbg !6241
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !6239
  %4 = load ptr, ptr %tmp1, align 8, !dbg !6241
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6239
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6239
  store ptr %5, ptr %tmp2, align 8, !dbg !6239
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !6238
  %6 = load ptr, ptr %tmp2, align 8, !dbg !6239
  store ptr %6, ptr %tmp, align 8, !dbg !6238
  %7 = load ptr, ptr %tmp, align 8, !dbg !6238
  store ptr %7, ptr %dev, align 8, !dbg !6237
  %8 = load ptr, ptr %dev, align 8, !dbg !6243
  %tobool = icmp ne ptr %8, null, !dbg !6243
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6245

lor.lhs.false:                                    ; preds = %do.end
  %9 = load ptr, ptr %dev, align 8, !dbg !6246
  %features = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 9, !dbg !6247
  %10 = load i32, ptr %features, align 4, !dbg !6247
  %and = and i32 %10, 2, !dbg !6248
  %tobool3 = icmp ne i32 %and, 0, !dbg !6248
  br i1 %tobool3, label %if.end, label %if.then, !dbg !6249

if.then:                                          ; preds = %lor.lhs.false, %do.end
  store i32 0, ptr %retval, align 4, !dbg !6250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6250

if.end:                                           ; preds = %lor.lhs.false
  %11 = load ptr, ptr %dev, align 8, !dbg !6251
  %features4 = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 9, !dbg !6253
  %12 = load i32, ptr %features4, align 4, !dbg !6253
  %and5 = and i32 %12, 8, !dbg !6254
  %tobool6 = icmp ne i32 %and5, 0, !dbg !6254
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !6255

if.then7:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6256
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6256

if.end8:                                          ; preds = %if.end
  %call = call zeroext i1 @tick_broadcast_oneshot_available() #13, !dbg !6257
  %conv = zext i1 %call to i32, !dbg !6257
  store i32 %conv, ptr %retval, align 4, !dbg !6258
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6258

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #12, !dbg !6259
  %13 = load i32, ptr %retval, align 4, !dbg !6259
  ret i32 %13, !dbg !6259
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #3 align 16 !dbg !6260 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !6265, metadata !DIExpression()), !dbg !6266
  ret void, !dbg !6267
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6268 dso_local zeroext i1 @tick_broadcast_oneshot_available() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_handle_periodic(ptr noundef %dev) #0 align 16 !dbg !6270 {
entry:
  %dev.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %next = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6272, metadata !DIExpression()), !dbg !6282
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #12, !dbg !6283
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !6273, metadata !DIExpression()), !dbg !6284
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !6285
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6286
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6274, metadata !DIExpression()), !dbg !6286
  br label %do.body, !dbg !6286

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6287
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6277, metadata !DIExpression()), !dbg !6287
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6287
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6287
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6286
  br label %do.cond, !dbg !6287

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6287

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !6288
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6279, metadata !DIExpression()), !dbg !6288
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !6288, !srcloc !6289
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6288
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6288
  %conv = zext i32 %2 to i64, !dbg !6288
  %conv2 = trunc i64 %conv to i32, !dbg !6288
  store i32 %conv2, ptr %tmp1, align 4, !dbg !6288
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !6286
  %3 = load i32, ptr %tmp1, align 4, !dbg !6288
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6286
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6286
  store i32 %4, ptr %tmp3, align 4, !dbg !6286
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6285
  %5 = load i32, ptr %tmp3, align 4, !dbg !6286
  store i32 %5, ptr %tmp, align 4, !dbg !6285
  %6 = load i32, ptr %tmp, align 4, !dbg !6285
  store i32 %6, ptr %cpu, align 4, !dbg !6284
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #12, !dbg !6290
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6281, metadata !DIExpression()), !dbg !6291
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !6292
  %next_event = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 3, !dbg !6293
  %8 = load i64, ptr %next_event, align 8, !dbg !6293
  store i64 %8, ptr %next, align 8, !dbg !6291
  %9 = load i32, ptr %cpu, align 4, !dbg !6294
  call void @tick_periodic(i32 noundef %9) #13, !dbg !6295
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !6296
  %event_handler = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 0, !dbg !6298
  %11 = load ptr, ptr %event_handler, align 64, !dbg !6298
  %cmp = icmp ne ptr %11, @tick_handle_periodic, !dbg !6299
  br i1 %cmp, label %if.then, label %if.end, !dbg !6300

if.then:                                          ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6301

if.end:                                           ; preds = %do.end
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !6302
  %call = call zeroext i1 @clockevent_state_oneshot(ptr noundef %12) #13, !dbg !6304
  br i1 %call, label %if.end6, label %if.then5, !dbg !6305

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6306

if.end6:                                          ; preds = %if.end
  br label %for.cond, !dbg !6307

for.cond:                                         ; preds = %if.end13, %if.end6
  %13 = load i64, ptr %next, align 8, !dbg !6308
  %add = add i64 %13, 1000000, !dbg !6308
  store i64 %add, ptr %next, align 8, !dbg !6312
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !6313
  %15 = load i64, ptr %next, align 8, !dbg !6315
  %call7 = call i32 @clockevents_program_event(ptr noundef %14, i64 noundef %15, i1 noundef zeroext false) #13, !dbg !6316
  %tobool = icmp ne i32 %call7, 0, !dbg !6316
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !6317

if.then8:                                         ; preds = %for.cond
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6318

if.end9:                                          ; preds = %for.cond
  %call10 = call i32 @timekeeping_valid_for_hres() #13, !dbg !6319
  %tobool11 = icmp ne i32 %call10, 0, !dbg !6319
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6321

if.then12:                                        ; preds = %if.end9
  %16 = load i32, ptr %cpu, align 4, !dbg !6322
  call void @tick_periodic(i32 noundef %16) #13, !dbg !6323
  br label %if.end13, !dbg !6323

if.end13:                                         ; preds = %if.then12, %if.end9
  br label %for.cond, !dbg !6324, !llvm.loop !6325

cleanup:                                          ; preds = %if.then8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #12, !dbg !6329
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #12, !dbg !6329
  ret void, !dbg !6329
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_periodic(i32 noundef %cpu) #0 align 16 !dbg !6158 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6160, metadata !DIExpression()), !dbg !6330
  %0 = load i32, ptr @tick_do_timer_cpu, align 4, !dbg !6331
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !6333
  %cmp = icmp eq i32 %0, %1, !dbg !6334
  br i1 %cmp, label %if.then, label %if.end19, !dbg !6335

if.then:                                          ; preds = %entry
  call void @_raw_spin_lock(ptr noundef @jiffies_lock) #13, !dbg !6336
  br label %do.body, !dbg !6338

do.body:                                          ; preds = %if.then
  call void @__seqprop_raw_spinlock_assert(ptr noundef @jiffies_seq) #13, !dbg !6339
  %call = call zeroext i1 @__seqprop_raw_spinlock_preemptible(ptr noundef @jiffies_seq) #13, !dbg !6341
  br i1 %call, label %if.then1, label %if.end, !dbg !6339

if.then1:                                         ; preds = %do.body
  br label %do.body2, !dbg !6341

do.body2:                                         ; preds = %if.then1
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !6343
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6343, !srcloc !6345
  br label %do.end, !dbg !6343

do.end:                                           ; preds = %do.body2
  br label %if.end, !dbg !6343

if.end:                                           ; preds = %do.end, %do.body
  %call3 = call ptr @__seqprop_raw_spinlock_ptr(ptr noundef @jiffies_seq) #13, !dbg !6339
  call void @do_write_seqcount_begin(ptr noundef %call3) #13, !dbg !6339
  br label %do.end4, !dbg !6339

do.end4:                                          ; preds = %if.end
  %2 = load i64, ptr @tick_next_period, align 8, !dbg !6346
  %add = add i64 %2, 1000000, !dbg !6346
  store i64 %add, ptr @tick_next_period, align 8, !dbg !6347
  call void @do_timer(i64 noundef 1) #13, !dbg !6348
  br label %do.body5, !dbg !6349

do.body5:                                         ; preds = %do.end4
  %call6 = call ptr @__seqprop_raw_spinlock_ptr(ptr noundef @jiffies_seq) #13, !dbg !6350
  call void @do_write_seqcount_end(ptr noundef %call6) #13, !dbg !6350
  %call7 = call zeroext i1 @__seqprop_raw_spinlock_preemptible(ptr noundef @jiffies_seq) #13, !dbg !6352
  br i1 %call7, label %if.then8, label %if.end17, !dbg !6350

if.then8:                                         ; preds = %do.body5
  br label %do.body9, !dbg !6352

do.body9:                                         ; preds = %if.then8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6354, !srcloc !6356
  %call10 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !6357
  %lnot = xor i1 %call10, true, !dbg !6357
  %lnot11 = xor i1 %lnot, true, !dbg !6357
  %lnot.ext = zext i1 %lnot11 to i32, !dbg !6357
  %conv = sext i32 %lnot.ext to i64, !dbg !6357
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6357
  %tobool = icmp ne i64 %expval, 0, !dbg !6357
  br i1 %tobool, label %if.then12, label %if.end15, !dbg !6354

if.then12:                                        ; preds = %do.body9
  br label %do.body13, !dbg !6357

do.body13:                                        ; preds = %if.then12
  %3 = call i64 @llvm.read_register.i64(metadata !6201), !dbg !6359
  %4 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %3) #12, !dbg !6359, !srcloc !6361
  call void @llvm.write_register.i64(metadata !6201, i64 %4), !dbg !6359
  br label %do.end14, !dbg !6359

do.end14:                                         ; preds = %do.body13
  br label %if.end15, !dbg !6359

if.end15:                                         ; preds = %do.end14, %do.body9
  br label %do.end16, !dbg !6354

do.end16:                                         ; preds = %if.end15
  br label %if.end17, !dbg !6354

if.end17:                                         ; preds = %do.end16, %do.body5
  br label %do.end18, !dbg !6350

do.end18:                                         ; preds = %if.end17
  call void @_raw_spin_unlock(ptr noundef @jiffies_lock) #13, !dbg !6362
  call void @update_wall_time() #13, !dbg !6363
  br label %if.end19, !dbg !6364

if.end19:                                         ; preds = %do.end18, %entry
  %call20 = call ptr @get_irq_regs() #13, !dbg !6365
  %call21 = call i32 @user_mode(ptr noundef %call20) #13, !dbg !6366
  call void @update_process_times(i32 noundef %call21) #13, !dbg !6367
  call void @profile_tick(i32 noundef 1) #13, !dbg !6368
  ret void, !dbg !6369
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @clockevent_state_oneshot(ptr noundef %dev) #5 align 16 !dbg !6370 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6374, metadata !DIExpression()), !dbg !6375
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6376
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 8, !dbg !6377
  %1 = load i32, ptr %state_use_accessors, align 8, !dbg !6377
  %cmp = icmp eq i32 %1, 3, !dbg !6378
  ret i1 %cmp, !dbg !6379
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6380 dso_local i32 @clockevents_program_event(ptr noundef, i64 noundef, i1 noundef zeroext) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6383 dso_local i32 @timekeeping_valid_for_hres() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_setup_periodic(ptr noundef %dev, i32 noundef %broadcast) #0 align 16 !dbg !6385 {
entry:
  %dev.addr = alloca ptr, align 8
  %broadcast.addr = alloca i32, align 4
  %seq = alloca i32, align 4
  %next = alloca i64, align 8
  %tmp = alloca i32, align 4
  %_seq = alloca i32, align 4
  %__seq = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6389, metadata !DIExpression()), !dbg !6401
  store i32 %broadcast, ptr %broadcast.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %broadcast.addr, metadata !6390, metadata !DIExpression()), !dbg !6402
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6403
  %1 = load i32, ptr %broadcast.addr, align 4, !dbg !6404
  call void @tick_set_periodic_handler(ptr noundef %0, i32 noundef %1) #13, !dbg !6405
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6406
  %call = call i32 @tick_device_is_functional(ptr noundef %2) #13, !dbg !6408
  %tobool = icmp ne i32 %call, 0, !dbg !6408
  br i1 %tobool, label %if.end, label %if.then, !dbg !6409

if.then:                                          ; preds = %entry
  br label %if.end29, !dbg !6410

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !6411
  %features = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 9, !dbg !6412
  %4 = load i32, ptr %features, align 4, !dbg !6412
  %and = and i32 %4, 1, !dbg !6413
  %tobool1 = icmp ne i32 %and, 0, !dbg !6413
  br i1 %tobool1, label %land.lhs.true, label %if.else, !dbg !6414

land.lhs.true:                                    ; preds = %if.end
  %call2 = call i32 @tick_broadcast_oneshot_active() #13, !dbg !6415
  %tobool3 = icmp ne i32 %call2, 0, !dbg !6415
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !6416

if.then4:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !6417
  call void @clockevents_switch_state(ptr noundef %5, i32 noundef 2) #13, !dbg !6419
  br label %if.end29, !dbg !6420

if.else:                                          ; preds = %land.lhs.true, %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #12, !dbg !6421
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !6391, metadata !DIExpression()), !dbg !6422
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #12, !dbg !6423
  call void @llvm.dbg.declare(metadata ptr %next, metadata !6394, metadata !DIExpression()), !dbg !6424
  br label %do.body, !dbg !6425

do.body:                                          ; preds = %do.cond20, %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %_seq) #12, !dbg !6426
  call void @llvm.dbg.declare(metadata ptr %_seq, metadata !6395, metadata !DIExpression()), !dbg !6426
  call void @llvm.lifetime.start.p0(i64 4, ptr %__seq) #12, !dbg !6427
  call void @llvm.dbg.declare(metadata ptr %__seq, metadata !6399, metadata !DIExpression()), !dbg !6427
  br label %while.cond, !dbg !6427

while.cond:                                       ; preds = %while.body, %do.body
  %call5 = call i32 @__seqprop_raw_spinlock_sequence(ptr noundef @jiffies_seq) #13, !dbg !6427
  store i32 %call5, ptr %__seq, align 4, !dbg !6427
  %and6 = and i32 %call5, 1, !dbg !6427
  %tobool7 = icmp ne i32 %and6, 0, !dbg !6427
  br i1 %tobool7, label %while.body, label %while.end, !dbg !6427

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #13, !dbg !6427
  br label %while.cond, !dbg !6427, !llvm.loop !6428

while.end:                                        ; preds = %while.cond
  call void @kcsan_atomic_next(i32 noundef 1000) #13, !dbg !6427
  %6 = load i32, ptr %__seq, align 4, !dbg !6427
  store i32 %6, ptr %tmp8, align 4, !dbg !6427
  call void @llvm.lifetime.end.p0(i64 4, ptr %__seq) #12, !dbg !6426
  %7 = load i32, ptr %tmp8, align 4, !dbg !6427
  store i32 %7, ptr %_seq, align 4, !dbg !6426
  br label %do.body9, !dbg !6426

do.body9:                                         ; preds = %while.end
  br label %do.body10, !dbg !6430

do.body10:                                        ; preds = %do.body9
  br label %do.cond, !dbg !6432

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !6432

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !6430

do.body11:                                        ; preds = %do.end
  br label %do.body12, !dbg !6434

do.body12:                                        ; preds = %do.body11
  br label %do.cond13, !dbg !6436

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6436

do.end14:                                         ; preds = %do.cond13
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6434, !srcloc !6438
  br label %do.cond15, !dbg !6434

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !6434

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !6430

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !6430

do.end18:                                         ; preds = %do.cond17
  %8 = load i32, ptr %_seq, align 4, !dbg !6426
  store i32 %8, ptr %tmp19, align 4, !dbg !6430
  call void @llvm.lifetime.end.p0(i64 4, ptr %_seq) #12, !dbg !6439
  %9 = load i32, ptr %tmp19, align 4, !dbg !6426
  store i32 %9, ptr %tmp, align 4, !dbg !6440
  %10 = load i32, ptr %tmp, align 4, !dbg !6439
  store i32 %10, ptr %seq, align 4, !dbg !6441
  %11 = load i64, ptr @tick_next_period, align 8, !dbg !6442
  store i64 %11, ptr %next, align 8, !dbg !6443
  br label %do.cond20, !dbg !6444

do.cond20:                                        ; preds = %do.end18
  %call21 = call ptr @__seqprop_raw_spinlock_ptr(ptr noundef @jiffies_seq) #13, !dbg !6445
  %12 = load i32, ptr %seq, align 4, !dbg !6445
  %call22 = call i32 @do_read_seqcount_retry(ptr noundef %call21, i32 noundef %12) #13, !dbg !6445
  %tobool23 = icmp ne i32 %call22, 0, !dbg !6444
  br i1 %tobool23, label %do.body, label %do.end24, !dbg !6444, !llvm.loop !6446

do.end24:                                         ; preds = %do.cond20
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !6448
  call void @clockevents_switch_state(ptr noundef %13, i32 noundef 3) #13, !dbg !6449
  br label %for.cond, !dbg !6450

for.cond:                                         ; preds = %if.end28, %do.end24
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !6451
  %15 = load i64, ptr %next, align 8, !dbg !6456
  %call25 = call i32 @clockevents_program_event(ptr noundef %14, i64 noundef %15, i1 noundef zeroext false) #13, !dbg !6457
  %tobool26 = icmp ne i32 %call25, 0, !dbg !6457
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !6458

if.then27:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #12, !dbg !6459
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #12, !dbg !6459
  br label %if.end29

if.end28:                                         ; preds = %for.cond
  %16 = load i64, ptr %next, align 8, !dbg !6460
  %add = add i64 %16, 1000000, !dbg !6460
  store i64 %add, ptr %next, align 8, !dbg !6461
  br label %for.cond, !dbg !6462, !llvm.loop !6463

if.end29:                                         ; preds = %if.then, %if.then27, %if.then4
  ret void, !dbg !6466
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6467 dso_local void @tick_set_periodic_handler(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tick_device_is_functional(ptr noundef %dev) #5 align 16 !dbg !6468 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6470, metadata !DIExpression()), !dbg !6471
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6472
  %features = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9, !dbg !6473
  %1 = load i32, ptr %features, align 4, !dbg !6473
  %and = and i32 %1, 16, !dbg !6474
  %tobool = icmp ne i32 %and, 0, !dbg !6475
  %lnot = xor i1 %tobool, true, !dbg !6475
  %lnot.ext = zext i1 %lnot to i32, !dbg !6475
  ret i32 %lnot.ext, !dbg !6476
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6477 dso_local i32 @tick_broadcast_oneshot_active() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6478 dso_local void @clockevents_switch_state(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__seqprop_raw_spinlock_sequence(ptr noundef %s) #3 align 16 !dbg !6481 {
entry:
  %s.addr = alloca ptr, align 8
  %seq = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6487, metadata !DIExpression()), !dbg !6489
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #12, !dbg !6489
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !6488, metadata !DIExpression()), !dbg !6489
  br label %do.body, !dbg !6490

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !6492

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6492

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6490
  %seqcount = getelementptr inbounds %struct.seqcount_raw_spinlock, ptr %0, i32 0, i32 0, !dbg !6490
  %sequence = getelementptr inbounds %struct.seqcount, ptr %seqcount, i32 0, i32 0, !dbg !6490
  %1 = load volatile i32, ptr %sequence, align 4, !dbg !6490
  store i32 %1, ptr %tmp, align 4, !dbg !6492
  %2 = load i32, ptr %tmp, align 4, !dbg !6490
  store i32 %2, ptr %seq, align 4, !dbg !6489
  %3 = load i32, ptr %seq, align 4, !dbg !6494
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #12, !dbg !6489
  ret i32 %3, !dbg !6494
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #3 align 16 !dbg !6496 {
entry:
  call void @rep_nop() #13, !dbg !6498
  ret void, !dbg !6499
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_atomic_next(i32 noundef %n) #5 align 16 !dbg !6500 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6503, metadata !DIExpression()), !dbg !6504
  ret void, !dbg !6505
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_read_seqcount_retry(ptr noundef %s, i32 noundef %start) #5 align 16 !dbg !6506 {
entry:
  %s.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6512, metadata !DIExpression()), !dbg !6514
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6513, metadata !DIExpression()), !dbg !6515
  br label %do.body, !dbg !6516

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6517

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6519

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6517

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !6521

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !6523

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !6521, !srcloc !6525
  br label %do.end5, !dbg !6521

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !6517

do.end6:                                          ; preds = %do.end5
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6526
  %1 = load i32, ptr %start.addr, align 4, !dbg !6527
  %call = call i32 @do___read_seqcount_retry(ptr noundef %0, i32 noundef %1) #13, !dbg !6528
  ret i32 %call, !dbg !6529
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__seqprop_raw_spinlock_ptr(ptr noundef %s) #3 align 16 !dbg !6530 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !6536, metadata !DIExpression()), !dbg !6537
  %0 = load ptr, ptr %s.addr, align 8, !dbg !6537
  %seqcount = getelementptr inbounds %struct.seqcount_raw_spinlock, ptr %0, i32 0, i32 0, !dbg !6537
  ret ptr %seqcount, !dbg !6537
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_install_replacement(ptr noundef %newdev) #0 align 16 !dbg !6538 {
entry:
  %newdev.addr = alloca ptr, align 8
  %td = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify4 = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  store ptr %newdev, ptr %newdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newdev.addr, metadata !6540, metadata !DIExpression()), !dbg !6555
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #12, !dbg !6556
  call void @llvm.dbg.declare(metadata ptr %td, metadata !6541, metadata !DIExpression()), !dbg !6557
  br label %do.body, !dbg !6558

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6559
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6542, metadata !DIExpression()), !dbg !6559
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6559
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6559
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6558
  br label %do.cond, !dbg !6559

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6559

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6560
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6545, metadata !DIExpression()), !dbg !6560
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tick_cpu_device) #14, !dbg !6560, !srcloc !6561
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !6560
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !6560
  %3 = inttoptr i64 %2 to ptr, !dbg !6560
  store ptr %3, ptr %tmp1, align 8, !dbg !6560
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6558
  %4 = load ptr, ptr %tmp1, align 8, !dbg !6560
  store ptr %4, ptr %tmp, align 8, !dbg !6559
  %5 = load ptr, ptr %tmp, align 8, !dbg !6558
  store ptr %5, ptr %td, align 8, !dbg !6557
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #12, !dbg !6562
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !6547, metadata !DIExpression()), !dbg !6563
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !6564
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6565
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6548, metadata !DIExpression()), !dbg !6565
  br label %do.body3, !dbg !6565

do.body3:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify4) #12, !dbg !6566
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify4, metadata !6551, metadata !DIExpression()), !dbg !6566
  store ptr null, ptr %__vpp_verify4, align 8, !dbg !6566
  %6 = load ptr, ptr %__vpp_verify4, align 8, !dbg !6566
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify4) #12, !dbg !6565
  br label %do.cond5, !dbg !6566

do.cond5:                                         ; preds = %do.body3
  br label %do.end6, !dbg !6566

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !6567
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6553, metadata !DIExpression()), !dbg !6567
  %7 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !6567, !srcloc !6568
  store i32 %7, ptr %pfo_val__, align 4, !dbg !6567
  %8 = load i32, ptr %pfo_val__, align 4, !dbg !6567
  %conv = zext i32 %8 to i64, !dbg !6567
  %conv8 = trunc i64 %conv to i32, !dbg !6567
  store i32 %conv8, ptr %tmp7, align 4, !dbg !6567
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !6565
  %9 = load i32, ptr %tmp7, align 4, !dbg !6567
  store i32 %9, ptr %pscr_ret__, align 4, !dbg !6565
  %10 = load i32, ptr %pscr_ret__, align 4, !dbg !6565
  store i32 %10, ptr %tmp9, align 4, !dbg !6565
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6564
  %11 = load i32, ptr %tmp9, align 4, !dbg !6565
  store i32 %11, ptr %tmp2, align 4, !dbg !6564
  %12 = load i32, ptr %tmp2, align 4, !dbg !6564
  store i32 %12, ptr %cpu, align 4, !dbg !6563
  %13 = load ptr, ptr %td, align 8, !dbg !6569
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %13, i32 0, i32 0, !dbg !6570
  %14 = load ptr, ptr %evtdev, align 8, !dbg !6570
  %15 = load ptr, ptr %newdev.addr, align 8, !dbg !6571
  call void @clockevents_exchange_device(ptr noundef %14, ptr noundef %15) #13, !dbg !6572
  %16 = load ptr, ptr %td, align 8, !dbg !6573
  %17 = load ptr, ptr %newdev.addr, align 8, !dbg !6574
  %18 = load i32, ptr %cpu, align 4, !dbg !6575
  %19 = load i32, ptr %cpu, align 4, !dbg !6576
  %call = call ptr @get_cpu_mask(i32 noundef %19) #13, !dbg !6576
  call void @tick_setup_device(ptr noundef %16, ptr noundef %17, i32 noundef %18, ptr noundef %call) #13, !dbg !6577
  %20 = load ptr, ptr %newdev.addr, align 8, !dbg !6578
  %features = getelementptr inbounds %struct.clock_event_device, ptr %20, i32 0, i32 9, !dbg !6580
  %21 = load i32, ptr %features, align 4, !dbg !6580
  %and = and i32 %21, 2, !dbg !6581
  %tobool = icmp ne i32 %and, 0, !dbg !6581
  br i1 %tobool, label %if.then, label %if.end, !dbg !6582

if.then:                                          ; preds = %do.end6
  call void @tick_oneshot_notify() #13, !dbg !6583
  br label %if.end, !dbg !6583

if.end:                                           ; preds = %if.then, %do.end6
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #12, !dbg !6584
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #12, !dbg !6584
  ret void, !dbg !6584
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6585 dso_local void @clockevents_exchange_device(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_setup_device(ptr noundef %td, ptr noundef %newdev, i32 noundef %cpu, ptr noundef %cpumask) #0 align 16 !dbg !6588 {
entry:
  %td.addr = alloca ptr, align 8
  %newdev.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  %handler = alloca ptr, align 8
  %next_event = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %td, ptr %td.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %td.addr, metadata !6592, metadata !DIExpression()), !dbg !6598
  store ptr %newdev, ptr %newdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newdev.addr, metadata !6593, metadata !DIExpression()), !dbg !6599
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6594, metadata !DIExpression()), !dbg !6600
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !6595, metadata !DIExpression()), !dbg !6601
  call void @llvm.lifetime.start.p0(i64 8, ptr %handler) #12, !dbg !6602
  call void @llvm.dbg.declare(metadata ptr %handler, metadata !6596, metadata !DIExpression()), !dbg !6603
  store ptr null, ptr %handler, align 8, !dbg !6603
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_event) #12, !dbg !6604
  call void @llvm.dbg.declare(metadata ptr %next_event, metadata !6597, metadata !DIExpression()), !dbg !6605
  store i64 0, ptr %next_event, align 8, !dbg !6605
  %0 = load ptr, ptr %td.addr, align 8, !dbg !6606
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %0, i32 0, i32 0, !dbg !6608
  %1 = load ptr, ptr %evtdev, align 8, !dbg !6608
  %tobool = icmp ne ptr %1, null, !dbg !6606
  br i1 %tobool, label %if.else, label %if.then, !dbg !6609

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @tick_do_timer_cpu, align 4, !dbg !6610
  %cmp = icmp eq i32 %2, -2, !dbg !6613
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6614

if.then1:                                         ; preds = %if.then
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !6615
  store i32 %3, ptr @tick_do_timer_cpu, align 4, !dbg !6617
  %call = call i64 @ktime_get() #13, !dbg !6618
  store i64 %call, ptr @tick_next_period, align 8, !dbg !6619
  br label %if.end, !dbg !6620

if.end:                                           ; preds = %if.then1, %if.then
  %4 = load ptr, ptr %td.addr, align 8, !dbg !6621
  %mode = getelementptr inbounds %struct.tick_device, ptr %4, i32 0, i32 1, !dbg !6622
  store i32 0, ptr %mode, align 8, !dbg !6623
  br label %if.end7, !dbg !6624

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %td.addr, align 8, !dbg !6625
  %evtdev2 = getelementptr inbounds %struct.tick_device, ptr %5, i32 0, i32 0, !dbg !6627
  %6 = load ptr, ptr %evtdev2, align 8, !dbg !6627
  %event_handler = getelementptr inbounds %struct.clock_event_device, ptr %6, i32 0, i32 0, !dbg !6628
  %7 = load ptr, ptr %event_handler, align 64, !dbg !6628
  store ptr %7, ptr %handler, align 8, !dbg !6629
  %8 = load ptr, ptr %td.addr, align 8, !dbg !6630
  %evtdev3 = getelementptr inbounds %struct.tick_device, ptr %8, i32 0, i32 0, !dbg !6631
  %9 = load ptr, ptr %evtdev3, align 8, !dbg !6631
  %next_event4 = getelementptr inbounds %struct.clock_event_device, ptr %9, i32 0, i32 3, !dbg !6632
  %10 = load i64, ptr %next_event4, align 8, !dbg !6632
  store i64 %10, ptr %next_event, align 8, !dbg !6633
  %11 = load ptr, ptr %td.addr, align 8, !dbg !6634
  %evtdev5 = getelementptr inbounds %struct.tick_device, ptr %11, i32 0, i32 0, !dbg !6635
  %12 = load ptr, ptr %evtdev5, align 8, !dbg !6635
  %event_handler6 = getelementptr inbounds %struct.clock_event_device, ptr %12, i32 0, i32 0, !dbg !6636
  store ptr @clockevents_handle_noop, ptr %event_handler6, align 64, !dbg !6637
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end
  %13 = load ptr, ptr %newdev.addr, align 8, !dbg !6638
  %14 = load ptr, ptr %td.addr, align 8, !dbg !6639
  %evtdev8 = getelementptr inbounds %struct.tick_device, ptr %14, i32 0, i32 0, !dbg !6640
  store ptr %13, ptr %evtdev8, align 8, !dbg !6641
  %15 = load ptr, ptr %newdev.addr, align 8, !dbg !6642
  %cpumask9 = getelementptr inbounds %struct.clock_event_device, ptr %15, i32 0, i32 25, !dbg !6644
  %16 = load ptr, ptr %cpumask9, align 16, !dbg !6644
  %17 = load ptr, ptr %cpumask.addr, align 8, !dbg !6645
  %call10 = call zeroext i1 @cpumask_equal(ptr noundef %16, ptr noundef %17) #13, !dbg !6646
  br i1 %call10, label %if.end13, label %if.then11, !dbg !6647

if.then11:                                        ; preds = %if.end7
  %18 = load ptr, ptr %newdev.addr, align 8, !dbg !6648
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %18, i32 0, i32 23, !dbg !6649
  %19 = load i32, ptr %irq, align 4, !dbg !6649
  %20 = load ptr, ptr %cpumask.addr, align 8, !dbg !6650
  %call12 = call i32 @irq_set_affinity(i32 noundef %19, ptr noundef %20) #13, !dbg !6651
  br label %if.end13, !dbg !6651

if.end13:                                         ; preds = %if.then11, %if.end7
  %21 = load ptr, ptr %newdev.addr, align 8, !dbg !6652
  %22 = load i32, ptr %cpu.addr, align 4, !dbg !6654
  %call14 = call i32 @tick_device_uses_broadcast(ptr noundef %21, i32 noundef %22) #13, !dbg !6655
  %tobool15 = icmp ne i32 %call14, 0, !dbg !6655
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6656

if.then16:                                        ; preds = %if.end13
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6657

if.end17:                                         ; preds = %if.end13
  %23 = load ptr, ptr %td.addr, align 8, !dbg !6658
  %mode18 = getelementptr inbounds %struct.tick_device, ptr %23, i32 0, i32 1, !dbg !6660
  %24 = load i32, ptr %mode18, align 8, !dbg !6660
  %cmp19 = icmp eq i32 %24, 0, !dbg !6661
  br i1 %cmp19, label %if.then20, label %if.else21, !dbg !6662

if.then20:                                        ; preds = %if.end17
  %25 = load ptr, ptr %newdev.addr, align 8, !dbg !6663
  call void @tick_setup_periodic(ptr noundef %25, i32 noundef 0) #13, !dbg !6664
  br label %if.end22, !dbg !6664

if.else21:                                        ; preds = %if.end17
  %26 = load ptr, ptr %newdev.addr, align 8, !dbg !6665
  %27 = load ptr, ptr %handler, align 8, !dbg !6666
  %28 = load i64, ptr %next_event, align 8, !dbg !6667
  call void @tick_setup_oneshot(ptr noundef %26, ptr noundef %27, i64 noundef %28) #13, !dbg !6668
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then20
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6669
  br label %cleanup, !dbg !6669

cleanup:                                          ; preds = %if.end22, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_event) #12, !dbg !6669
  call void @llvm.lifetime.end.p0(i64 8, ptr %handler) #12, !dbg !6669
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6669

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_cpu_mask(i32 noundef %cpu) #5 align 16 !dbg !6670 {
entry:
  %cpu.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6674, metadata !DIExpression()), !dbg !6677
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #12, !dbg !6678
  call void @llvm.dbg.declare(metadata ptr %p, metadata !6675, metadata !DIExpression()), !dbg !6679
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6680
  %rem = urem i32 %0, 64, !dbg !6681
  %add = add i32 1, %rem, !dbg !6682
  %idxprom = zext i32 %add to i64, !dbg !6683
  %arrayidx = getelementptr [65 x [1 x i64]], ptr @cpu_bit_bitmap, i64 0, i64 %idxprom, !dbg !6683
  %arraydecay = getelementptr inbounds [1 x i64], ptr %arrayidx, i64 0, i64 0, !dbg !6683
  store ptr %arraydecay, ptr %p, align 8, !dbg !6679
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !6684
  %div = udiv i32 %1, 64, !dbg !6685
  %2 = load ptr, ptr %p, align 8, !dbg !6686
  %idx.ext = zext i32 %div to i64, !dbg !6686
  %idx.neg = sub i64 0, %idx.ext, !dbg !6686
  %add.ptr = getelementptr i64, ptr %2, i64 %idx.neg, !dbg !6686
  store ptr %add.ptr, ptr %p, align 8, !dbg !6686
  %3 = load ptr, ptr %p, align 8, !dbg !6687
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #12, !dbg !6688
  ret ptr %3, !dbg !6689
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6690 dso_local void @tick_oneshot_notify() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @tick_check_replacement(ptr noundef %curdev, ptr noundef %newdev) #0 align 16 !dbg !6691 {
entry:
  %retval = alloca i1, align 1
  %curdev.addr = alloca ptr, align 8
  %newdev.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store ptr %curdev, ptr %curdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %curdev.addr, metadata !6695, metadata !DIExpression()), !dbg !6705
  store ptr %newdev, ptr %newdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newdev.addr, metadata !6696, metadata !DIExpression()), !dbg !6706
  %0 = load ptr, ptr %curdev.addr, align 8, !dbg !6707
  %1 = load ptr, ptr %newdev.addr, align 8, !dbg !6708
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !6709
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6710
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6697, metadata !DIExpression()), !dbg !6710
  br label %do.body, !dbg !6710

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6711
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6701, metadata !DIExpression()), !dbg !6711
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6711
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !6711
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6710
  br label %do.cond, !dbg !6711

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6711

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !6712
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6703, metadata !DIExpression()), !dbg !6712
  %3 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !6712, !srcloc !6713
  store i32 %3, ptr %pfo_val__, align 4, !dbg !6712
  %4 = load i32, ptr %pfo_val__, align 4, !dbg !6712
  %conv = zext i32 %4 to i64, !dbg !6712
  %conv2 = trunc i64 %conv to i32, !dbg !6712
  store i32 %conv2, ptr %tmp1, align 4, !dbg !6712
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !6710
  %5 = load i32, ptr %tmp1, align 4, !dbg !6712
  store i32 %5, ptr %pscr_ret__, align 4, !dbg !6710
  %6 = load i32, ptr %pscr_ret__, align 4, !dbg !6710
  store i32 %6, ptr %tmp3, align 4, !dbg !6710
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6709
  %7 = load i32, ptr %tmp3, align 4, !dbg !6710
  store i32 %7, ptr %tmp, align 4, !dbg !6709
  %8 = load i32, ptr %tmp, align 4, !dbg !6709
  %call = call zeroext i1 @tick_check_percpu(ptr noundef %0, ptr noundef %1, i32 noundef %8) #13, !dbg !6714
  br i1 %call, label %if.end, label %if.then, !dbg !6715

if.then:                                          ; preds = %do.end
  store i1 false, ptr %retval, align 1, !dbg !6716
  br label %return, !dbg !6716

if.end:                                           ; preds = %do.end
  %9 = load ptr, ptr %curdev.addr, align 8, !dbg !6717
  %10 = load ptr, ptr %newdev.addr, align 8, !dbg !6718
  %call4 = call zeroext i1 @tick_check_preferred(ptr noundef %9, ptr noundef %10) #13, !dbg !6719
  store i1 %call4, ptr %retval, align 1, !dbg !6720
  br label %return, !dbg !6720

return:                                           ; preds = %if.end, %if.then
  %11 = load i1, ptr %retval, align 1, !dbg !6721
  ret i1 %11, !dbg !6721
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tick_check_percpu(ptr noundef %curdev, ptr noundef %newdev, i32 noundef %cpu) #0 align 16 !dbg !6722 {
entry:
  %retval = alloca i1, align 1
  %curdev.addr = alloca ptr, align 8
  %newdev.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  store ptr %curdev, ptr %curdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %curdev.addr, metadata !6726, metadata !DIExpression()), !dbg !6729
  store ptr %newdev, ptr %newdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newdev.addr, metadata !6727, metadata !DIExpression()), !dbg !6730
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6728, metadata !DIExpression()), !dbg !6731
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !6732
  %1 = load ptr, ptr %newdev.addr, align 8, !dbg !6734
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 25, !dbg !6735
  %2 = load ptr, ptr %cpumask, align 16, !dbg !6735
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef %2) #13, !dbg !6736
  br i1 %call, label %if.end, label %if.then, !dbg !6737

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6738
  br label %return, !dbg !6738

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %newdev.addr, align 8, !dbg !6739
  %cpumask1 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 25, !dbg !6741
  %4 = load ptr, ptr %cpumask1, align 16, !dbg !6741
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !6742
  %call2 = call ptr @get_cpu_mask(i32 noundef %5) #13, !dbg !6742
  %call3 = call zeroext i1 @cpumask_equal(ptr noundef %4, ptr noundef %call2) #13, !dbg !6743
  br i1 %call3, label %if.then4, label %if.end5, !dbg !6744

if.then4:                                         ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !6745
  br label %return, !dbg !6745

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %newdev.addr, align 8, !dbg !6746
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %6, i32 0, i32 23, !dbg !6748
  %7 = load i32, ptr %irq, align 4, !dbg !6748
  %cmp = icmp sge i32 %7, 0, !dbg !6749
  br i1 %cmp, label %land.lhs.true, label %if.end9, !dbg !6750

land.lhs.true:                                    ; preds = %if.end5
  %8 = load ptr, ptr %newdev.addr, align 8, !dbg !6751
  %irq6 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 23, !dbg !6752
  %9 = load i32, ptr %irq6, align 4, !dbg !6752
  %call7 = call i32 @irq_can_set_affinity(i32 noundef %9) #13, !dbg !6753
  %tobool = icmp ne i32 %call7, 0, !dbg !6753
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !6754

if.then8:                                         ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !6755
  br label %return, !dbg !6755

if.end9:                                          ; preds = %land.lhs.true, %if.end5
  %10 = load ptr, ptr %curdev.addr, align 8, !dbg !6756
  %tobool10 = icmp ne ptr %10, null, !dbg !6756
  br i1 %tobool10, label %land.lhs.true11, label %if.end16, !dbg !6758

land.lhs.true11:                                  ; preds = %if.end9
  %11 = load ptr, ptr %curdev.addr, align 8, !dbg !6759
  %cpumask12 = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 25, !dbg !6760
  %12 = load ptr, ptr %cpumask12, align 16, !dbg !6760
  %13 = load i32, ptr %cpu.addr, align 4, !dbg !6761
  %call13 = call ptr @get_cpu_mask(i32 noundef %13) #13, !dbg !6761
  %call14 = call zeroext i1 @cpumask_equal(ptr noundef %12, ptr noundef %call13) #13, !dbg !6762
  br i1 %call14, label %if.then15, label %if.end16, !dbg !6763

if.then15:                                        ; preds = %land.lhs.true11
  store i1 false, ptr %retval, align 1, !dbg !6764
  br label %return, !dbg !6764

if.end16:                                         ; preds = %land.lhs.true11, %if.end9
  store i1 true, ptr %retval, align 1, !dbg !6765
  br label %return, !dbg !6765

return:                                           ; preds = %if.end16, %if.then15, %if.then8, %if.then4, %if.then
  %14 = load i1, ptr %retval, align 1, !dbg !6766
  ret i1 %14, !dbg !6766
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @tick_check_preferred(ptr noundef %curdev, ptr noundef %newdev) #0 align 16 !dbg !6767 {
entry:
  %retval = alloca i1, align 1
  %curdev.addr = alloca ptr, align 8
  %newdev.addr = alloca ptr, align 8
  store ptr %curdev, ptr %curdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %curdev.addr, metadata !6769, metadata !DIExpression()), !dbg !6771
  store ptr %newdev, ptr %newdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newdev.addr, metadata !6770, metadata !DIExpression()), !dbg !6772
  %0 = load ptr, ptr %newdev.addr, align 8, !dbg !6773
  %features = getelementptr inbounds %struct.clock_event_device, ptr %0, i32 0, i32 9, !dbg !6775
  %1 = load i32, ptr %features, align 4, !dbg !6775
  %and = and i32 %1, 2, !dbg !6776
  %tobool = icmp ne i32 %and, 0, !dbg !6776
  br i1 %tobool, label %if.end9, label %if.then, !dbg !6777

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %curdev.addr, align 8, !dbg !6778
  %tobool1 = icmp ne ptr %2, null, !dbg !6778
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !6781

land.lhs.true:                                    ; preds = %if.then
  %3 = load ptr, ptr %curdev.addr, align 8, !dbg !6782
  %features2 = getelementptr inbounds %struct.clock_event_device, ptr %3, i32 0, i32 9, !dbg !6783
  %4 = load i32, ptr %features2, align 4, !dbg !6783
  %and3 = and i32 %4, 2, !dbg !6784
  %tobool4 = icmp ne i32 %and3, 0, !dbg !6784
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !6785

if.then5:                                         ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !6786
  br label %return, !dbg !6786

if.end:                                           ; preds = %land.lhs.true, %if.then
  %call = call i32 @tick_oneshot_mode_active() #13, !dbg !6787
  %tobool6 = icmp ne i32 %call, 0, !dbg !6787
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6789

if.then7:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6790
  br label %return, !dbg !6790

if.end8:                                          ; preds = %if.end
  br label %if.end9, !dbg !6791

if.end9:                                          ; preds = %if.end8, %entry
  %5 = load ptr, ptr %curdev.addr, align 8, !dbg !6792
  %tobool10 = icmp ne ptr %5, null, !dbg !6792
  br i1 %tobool10, label %lor.lhs.false, label %lor.end, !dbg !6793

lor.lhs.false:                                    ; preds = %if.end9
  %6 = load ptr, ptr %newdev.addr, align 8, !dbg !6794
  %rating = getelementptr inbounds %struct.clock_event_device, ptr %6, i32 0, i32 22, !dbg !6795
  %7 = load i32, ptr %rating, align 32, !dbg !6795
  %8 = load ptr, ptr %curdev.addr, align 8, !dbg !6796
  %rating11 = getelementptr inbounds %struct.clock_event_device, ptr %8, i32 0, i32 22, !dbg !6797
  %9 = load i32, ptr %rating11, align 32, !dbg !6797
  %cmp = icmp sgt i32 %7, %9, !dbg !6798
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !6799

lor.rhs:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %curdev.addr, align 8, !dbg !6800
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %10, i32 0, i32 25, !dbg !6801
  %11 = load ptr, ptr %cpumask, align 16, !dbg !6801
  %12 = load ptr, ptr %newdev.addr, align 8, !dbg !6802
  %cpumask12 = getelementptr inbounds %struct.clock_event_device, ptr %12, i32 0, i32 25, !dbg !6803
  %13 = load ptr, ptr %cpumask12, align 16, !dbg !6803
  %call13 = call zeroext i1 @cpumask_equal(ptr noundef %11, ptr noundef %13) #13, !dbg !6804
  %lnot = xor i1 %call13, true, !dbg !6805
  br label %lor.end, !dbg !6799

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %if.end9
  %14 = phi i1 [ true, %lor.lhs.false ], [ true, %if.end9 ], [ %lnot, %lor.rhs ]
  store i1 %14, ptr %retval, align 1, !dbg !6806
  br label %return, !dbg !6806

return:                                           ; preds = %lor.end, %if.then7, %if.then5
  %15 = load i1, ptr %retval, align 1, !dbg !6807
  ret i1 %15, !dbg !6807
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_check_new_device(ptr noundef %newdev) #0 align 16 !dbg !6808 {
entry:
  %newdev.addr = alloca ptr, align 8
  %curdev = alloca ptr, align 8
  %td = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__vpp_verify5 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp9 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %newdev, ptr %newdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %newdev.addr, metadata !6810, metadata !DIExpression()), !dbg !6827
  call void @llvm.lifetime.start.p0(i64 8, ptr %curdev) #12, !dbg !6828
  call void @llvm.dbg.declare(metadata ptr %curdev, metadata !6811, metadata !DIExpression()), !dbg !6829
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #12, !dbg !6830
  call void @llvm.dbg.declare(metadata ptr %td, metadata !6812, metadata !DIExpression()), !dbg !6831
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #12, !dbg !6832
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !6813, metadata !DIExpression()), !dbg !6833
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !6834
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6835
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6814, metadata !DIExpression()), !dbg !6835
  br label %do.body, !dbg !6835

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6836
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6817, metadata !DIExpression()), !dbg !6836
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6836
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6836
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6835
  br label %do.cond, !dbg !6836

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6836

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !6837
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6819, metadata !DIExpression()), !dbg !6837
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !6837, !srcloc !6838
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6837
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6837
  %conv = zext i32 %2 to i64, !dbg !6837
  %conv2 = trunc i64 %conv to i32, !dbg !6837
  store i32 %conv2, ptr %tmp1, align 4, !dbg !6837
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !6835
  %3 = load i32, ptr %tmp1, align 4, !dbg !6837
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6835
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6835
  store i32 %4, ptr %tmp3, align 4, !dbg !6835
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6834
  %5 = load i32, ptr %tmp3, align 4, !dbg !6835
  store i32 %5, ptr %tmp, align 4, !dbg !6834
  %6 = load i32, ptr %tmp, align 4, !dbg !6834
  store i32 %6, ptr %cpu, align 4, !dbg !6839
  br label %do.body4, !dbg !6840

do.body4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify5) #12, !dbg !6841
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify5, metadata !6821, metadata !DIExpression()), !dbg !6841
  store ptr null, ptr %__vpp_verify5, align 8, !dbg !6841
  %7 = load ptr, ptr %__vpp_verify5, align 8, !dbg !6841
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify5) #12, !dbg !6840
  br label %do.cond6, !dbg !6841

do.cond6:                                         ; preds = %do.body4
  br label %do.end7, !dbg !6841

do.end7:                                          ; preds = %do.cond6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !6842
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6824, metadata !DIExpression()), !dbg !6842
  store i64 ptrtoint (ptr @tick_cpu_device to i64), ptr %__ptr, align 8, !dbg !6842
  %8 = load i64, ptr %__ptr, align 8, !dbg !6842
  %9 = load i32, ptr %cpu, align 4, !dbg !6842
  %idxprom = sext i32 %9 to i64, !dbg !6842
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6842
  %10 = load i64, ptr %arrayidx, align 8, !dbg !6842
  %add = add i64 %8, %10, !dbg !6842
  %11 = inttoptr i64 %add to ptr, !dbg !6842
  store ptr %11, ptr %tmp9, align 8, !dbg !6842
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !6840
  %12 = load ptr, ptr %tmp9, align 8, !dbg !6842
  store ptr %12, ptr %tmp8, align 8, !dbg !6841
  %13 = load ptr, ptr %tmp8, align 8, !dbg !6840
  store ptr %13, ptr %td, align 8, !dbg !6843
  %14 = load ptr, ptr %td, align 8, !dbg !6844
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %14, i32 0, i32 0, !dbg !6845
  %15 = load ptr, ptr %evtdev, align 8, !dbg !6845
  store ptr %15, ptr %curdev, align 8, !dbg !6846
  %16 = load ptr, ptr %curdev, align 8, !dbg !6847
  %17 = load ptr, ptr %newdev.addr, align 8, !dbg !6849
  %call = call zeroext i1 @tick_check_replacement(ptr noundef %16, ptr noundef %17) #13, !dbg !6850
  br i1 %call, label %if.end, label %if.then, !dbg !6851

if.then:                                          ; preds = %do.end7
  br label %out_bc, !dbg !6852

if.end:                                           ; preds = %do.end7
  %18 = load ptr, ptr %newdev.addr, align 8, !dbg !6853
  %owner = getelementptr inbounds %struct.clock_event_device, ptr %18, i32 0, i32 27, !dbg !6855
  %19 = load ptr, ptr %owner, align 8, !dbg !6855
  %call10 = call zeroext i1 @try_module_get(ptr noundef %19) #13, !dbg !6856
  br i1 %call10, label %if.end12, label %if.then11, !dbg !6857

if.then11:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6858

if.end12:                                         ; preds = %if.end
  %20 = load ptr, ptr %curdev, align 8, !dbg !6859
  %call13 = call i32 @tick_is_broadcast_device(ptr noundef %20) #13, !dbg !6861
  %tobool = icmp ne i32 %call13, 0, !dbg !6861
  br i1 %tobool, label %if.then14, label %if.end15, !dbg !6862

if.then14:                                        ; preds = %if.end12
  %21 = load ptr, ptr %curdev, align 8, !dbg !6863
  call void @clockevents_shutdown(ptr noundef %21) #13, !dbg !6865
  store ptr null, ptr %curdev, align 8, !dbg !6866
  br label %if.end15, !dbg !6867

if.end15:                                         ; preds = %if.then14, %if.end12
  %22 = load ptr, ptr %curdev, align 8, !dbg !6868
  %23 = load ptr, ptr %newdev.addr, align 8, !dbg !6869
  call void @clockevents_exchange_device(ptr noundef %22, ptr noundef %23) #13, !dbg !6870
  %24 = load ptr, ptr %td, align 8, !dbg !6871
  %25 = load ptr, ptr %newdev.addr, align 8, !dbg !6872
  %26 = load i32, ptr %cpu, align 4, !dbg !6873
  %27 = load i32, ptr %cpu, align 4, !dbg !6874
  %call16 = call ptr @get_cpu_mask(i32 noundef %27) #13, !dbg !6874
  call void @tick_setup_device(ptr noundef %24, ptr noundef %25, i32 noundef %26, ptr noundef %call16) #13, !dbg !6875
  %28 = load ptr, ptr %newdev.addr, align 8, !dbg !6876
  %features = getelementptr inbounds %struct.clock_event_device, ptr %28, i32 0, i32 9, !dbg !6878
  %29 = load i32, ptr %features, align 4, !dbg !6878
  %and = and i32 %29, 2, !dbg !6879
  %tobool17 = icmp ne i32 %and, 0, !dbg !6879
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6880

if.then18:                                        ; preds = %if.end15
  call void @tick_oneshot_notify() #13, !dbg !6881
  br label %if.end19, !dbg !6881

if.end19:                                         ; preds = %if.then18, %if.end15
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6882

out_bc:                                           ; preds = %if.then
  call void @llvm.dbg.label(metadata !6826), !dbg !6883
  %30 = load ptr, ptr %newdev.addr, align 8, !dbg !6884
  %31 = load i32, ptr %cpu, align 4, !dbg !6885
  call void @tick_install_broadcast_device(ptr noundef %30, i32 noundef %31) #13, !dbg !6886
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6887
  br label %cleanup, !dbg !6887

cleanup:                                          ; preds = %out_bc, %if.end19, %if.then11
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #12, !dbg !6887
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #12, !dbg !6887
  call void @llvm.lifetime.end.p0(i64 8, ptr %curdev) #12, !dbg !6887
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !6887

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6888 dso_local zeroext i1 @try_module_get(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6891 dso_local i32 @tick_is_broadcast_device(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6892 dso_local void @clockevents_shutdown(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6893 dso_local void @tick_install_broadcast_device(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @tick_broadcast_oneshot_control(i32 noundef %state) #0 align 16 !dbg !6894 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6898, metadata !DIExpression()), !dbg !6905
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #12, !dbg !6906
  call void @llvm.dbg.declare(metadata ptr %td, metadata !6899, metadata !DIExpression()), !dbg !6907
  br label %do.body, !dbg !6908

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6909
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6900, metadata !DIExpression()), !dbg !6909
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6909
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6909
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6908
  br label %do.cond, !dbg !6909

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6909

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6910
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !6903, metadata !DIExpression()), !dbg !6910
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tick_cpu_device) #14, !dbg !6910, !srcloc !6911
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !6910
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !6910
  %3 = inttoptr i64 %2 to ptr, !dbg !6910
  store ptr %3, ptr %tmp1, align 8, !dbg !6910
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !6908
  %4 = load ptr, ptr %tmp1, align 8, !dbg !6910
  store ptr %4, ptr %tmp, align 8, !dbg !6909
  %5 = load ptr, ptr %tmp, align 8, !dbg !6908
  store ptr %5, ptr %td, align 8, !dbg !6907
  %6 = load ptr, ptr %td, align 8, !dbg !6912
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %6, i32 0, i32 0, !dbg !6914
  %7 = load ptr, ptr %evtdev, align 8, !dbg !6914
  %features = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 9, !dbg !6915
  %8 = load i32, ptr %features, align 4, !dbg !6915
  %and = and i32 %8, 8, !dbg !6916
  %tobool = icmp ne i32 %and, 0, !dbg !6916
  br i1 %tobool, label %if.end, label %if.then, !dbg !6917

if.then:                                          ; preds = %do.end
  store i32 0, ptr %retval, align 4, !dbg !6918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6918

if.end:                                           ; preds = %do.end
  %9 = load i32, ptr %state.addr, align 4, !dbg !6919
  %call = call i32 @__tick_broadcast_oneshot_control(i32 noundef %9) #13, !dbg !6920
  store i32 %call, ptr %retval, align 4, !dbg !6921
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6921

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #12, !dbg !6922
  %10 = load i32, ptr %retval, align 4, !dbg !6922
  ret i32 %10, !dbg !6922
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6923 dso_local i32 @__tick_broadcast_oneshot_control(i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_handover_do_timer() #0 align 16 !dbg !6924 {
entry:
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %0 = load i32, ptr @tick_do_timer_cpu, align 4, !dbg !6934
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !6935
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6936
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6926, metadata !DIExpression()), !dbg !6936
  br label %do.body, !dbg !6936

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6937
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6930, metadata !DIExpression()), !dbg !6937
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6937
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !6937
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6936
  br label %do.cond, !dbg !6937

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6937

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !6938
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6932, metadata !DIExpression()), !dbg !6938
  %2 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !6938, !srcloc !6939
  store i32 %2, ptr %pfo_val__, align 4, !dbg !6938
  %3 = load i32, ptr %pfo_val__, align 4, !dbg !6938
  %conv = zext i32 %3 to i64, !dbg !6938
  %conv2 = trunc i64 %conv to i32, !dbg !6938
  store i32 %conv2, ptr %tmp1, align 4, !dbg !6938
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !6936
  %4 = load i32, ptr %tmp1, align 4, !dbg !6938
  store i32 %4, ptr %pscr_ret__, align 4, !dbg !6936
  %5 = load i32, ptr %pscr_ret__, align 4, !dbg !6936
  store i32 %5, ptr %tmp3, align 4, !dbg !6936
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !6935
  %6 = load i32, ptr %tmp3, align 4, !dbg !6936
  store i32 %6, ptr %tmp, align 4, !dbg !6935
  %7 = load i32, ptr %tmp, align 4, !dbg !6935
  %cmp = icmp eq i32 %0, %7, !dbg !6940
  br i1 %cmp, label %if.then, label %if.end, !dbg !6941

if.then:                                          ; preds = %do.end
  %call = call i32 @cpumask_first(ptr noundef @__cpu_online_mask) #13, !dbg !6942
  store i32 %call, ptr @tick_do_timer_cpu, align 4, !dbg !6943
  br label %if.end, !dbg !6944

if.end:                                           ; preds = %if.then, %do.end
  ret void, !dbg !6945
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_first(ptr noundef %srcp) #5 align 16 !dbg !6946 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !6950, metadata !DIExpression()), !dbg !6951
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !6952
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !6952
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !6952
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #13, !dbg !6953
  %conv = trunc i64 %call to i32, !dbg !6953
  ret i32 %conv, !dbg !6954
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_shutdown(i32 noundef %cpu) #0 align 16 !dbg !6955 {
entry:
  %cpu.addr = alloca i32, align 4
  %td = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !6959, metadata !DIExpression()), !dbg !6967
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #12, !dbg !6968
  call void @llvm.dbg.declare(metadata ptr %td, metadata !6960, metadata !DIExpression()), !dbg !6969
  br label %do.body, !dbg !6970

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6971
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6961, metadata !DIExpression()), !dbg !6971
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6971
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6971
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !6970
  br label %do.cond, !dbg !6971

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6971

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #12, !dbg !6972
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !6964, metadata !DIExpression()), !dbg !6972
  store i64 ptrtoint (ptr @tick_cpu_device to i64), ptr %__ptr, align 8, !dbg !6972
  %1 = load i64, ptr %__ptr, align 8, !dbg !6972
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !6972
  %idxprom = zext i32 %2 to i64, !dbg !6972
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !6972
  %3 = load i64, ptr %arrayidx, align 8, !dbg !6972
  %add = add i64 %1, %3, !dbg !6972
  %4 = inttoptr i64 %add to ptr, !dbg !6972
  store ptr %4, ptr %tmp1, align 8, !dbg !6972
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #12, !dbg !6970
  %5 = load ptr, ptr %tmp1, align 8, !dbg !6972
  store ptr %5, ptr %tmp, align 8, !dbg !6971
  %6 = load ptr, ptr %tmp, align 8, !dbg !6970
  store ptr %6, ptr %td, align 8, !dbg !6969
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #12, !dbg !6973
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6966, metadata !DIExpression()), !dbg !6974
  %7 = load ptr, ptr %td, align 8, !dbg !6975
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %7, i32 0, i32 0, !dbg !6976
  %8 = load ptr, ptr %evtdev, align 8, !dbg !6976
  store ptr %8, ptr %dev, align 8, !dbg !6974
  %9 = load ptr, ptr %td, align 8, !dbg !6977
  %mode = getelementptr inbounds %struct.tick_device, ptr %9, i32 0, i32 1, !dbg !6978
  store i32 0, ptr %mode, align 8, !dbg !6979
  %10 = load ptr, ptr %dev, align 8, !dbg !6980
  %tobool = icmp ne ptr %10, null, !dbg !6980
  br i1 %tobool, label %if.then, label %if.end, !dbg !6982

if.then:                                          ; preds = %do.end
  %11 = load ptr, ptr %dev, align 8, !dbg !6983
  call void @clockevent_set_state(ptr noundef %11, i32 noundef 0) #13, !dbg !6985
  %12 = load ptr, ptr %dev, align 8, !dbg !6986
  call void @clockevents_exchange_device(ptr noundef %12, ptr noundef null) #13, !dbg !6987
  %13 = load ptr, ptr %dev, align 8, !dbg !6988
  %event_handler = getelementptr inbounds %struct.clock_event_device, ptr %13, i32 0, i32 0, !dbg !6989
  store ptr @clockevents_handle_noop, ptr %event_handler, align 64, !dbg !6990
  %14 = load ptr, ptr %td, align 8, !dbg !6991
  %evtdev2 = getelementptr inbounds %struct.tick_device, ptr %14, i32 0, i32 0, !dbg !6992
  store ptr null, ptr %evtdev2, align 8, !dbg !6993
  br label %if.end, !dbg !6994

if.end:                                           ; preds = %if.then, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #12, !dbg !6995
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #12, !dbg !6995
  ret void, !dbg !6995
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clockevent_set_state(ptr noundef %dev, i32 noundef %state) #5 align 16 !dbg !6996 {
entry:
  %dev.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6998, metadata !DIExpression()), !dbg !7000
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6999, metadata !DIExpression()), !dbg !7001
  %0 = load i32, ptr %state.addr, align 4, !dbg !7002
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !7003
  %state_use_accessors = getelementptr inbounds %struct.clock_event_device, ptr %1, i32 0, i32 8, !dbg !7004
  store i32 %0, ptr %state_use_accessors, align 8, !dbg !7005
  ret void, !dbg !7006
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @clockevents_handle_noop(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_suspend_local() #0 align 16 !dbg !7007 {
entry:
  %td = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #12, !dbg !7015
  call void @llvm.dbg.declare(metadata ptr %td, metadata !7009, metadata !DIExpression()), !dbg !7016
  br label %do.body, !dbg !7017

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7018
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7010, metadata !DIExpression()), !dbg !7018
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7018
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7018
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7017
  br label %do.cond, !dbg !7018

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7018

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !7019
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !7013, metadata !DIExpression()), !dbg !7019
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tick_cpu_device) #14, !dbg !7019, !srcloc !7020
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !7019
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !7019
  %3 = inttoptr i64 %2 to ptr, !dbg !7019
  store ptr %3, ptr %tmp1, align 8, !dbg !7019
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !7017
  %4 = load ptr, ptr %tmp1, align 8, !dbg !7019
  store ptr %4, ptr %tmp, align 8, !dbg !7018
  %5 = load ptr, ptr %tmp, align 8, !dbg !7017
  store ptr %5, ptr %td, align 8, !dbg !7016
  %6 = load ptr, ptr %td, align 8, !dbg !7021
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %6, i32 0, i32 0, !dbg !7022
  %7 = load ptr, ptr %evtdev, align 8, !dbg !7022
  call void @clockevents_shutdown(ptr noundef %7) #13, !dbg !7023
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #12, !dbg !7024
  ret void, !dbg !7024
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_resume_local() #0 align 16 !dbg !7025 {
entry:
  %td = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tcp_ptr__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %broadcast = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr %td) #12, !dbg !7034
  call void @llvm.dbg.declare(metadata ptr %td, metadata !7027, metadata !DIExpression()), !dbg !7035
  br label %do.body, !dbg !7036

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7037
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7028, metadata !DIExpression()), !dbg !7037
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7037
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7037
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7036
  br label %do.cond, !dbg !7037

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7037

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !7038
  call void @llvm.dbg.declare(metadata ptr %tcp_ptr__, metadata !7031, metadata !DIExpression()), !dbg !7038
  %1 = call i64 asm "add %gs:$1, $0", "=r,*m,0,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @this_cpu_off, ptr @tick_cpu_device) #14, !dbg !7038, !srcloc !7039
  store i64 %1, ptr %tcp_ptr__, align 8, !dbg !7038
  %2 = load i64, ptr %tcp_ptr__, align 8, !dbg !7038
  %3 = inttoptr i64 %2 to ptr, !dbg !7038
  store ptr %3, ptr %tmp1, align 8, !dbg !7038
  call void @llvm.lifetime.end.p0(i64 8, ptr %tcp_ptr__) #12, !dbg !7036
  %4 = load ptr, ptr %tmp1, align 8, !dbg !7038
  store ptr %4, ptr %tmp, align 8, !dbg !7037
  %5 = load ptr, ptr %tmp, align 8, !dbg !7036
  store ptr %5, ptr %td, align 8, !dbg !7035
  call void @llvm.lifetime.start.p0(i64 1, ptr %broadcast) #12, !dbg !7040
  call void @llvm.dbg.declare(metadata ptr %broadcast, metadata !7033, metadata !DIExpression()), !dbg !7041
  %call = call zeroext i1 @tick_resume_check_broadcast() #13, !dbg !7042
  %frombool = zext i1 %call to i8, !dbg !7041
  store i8 %frombool, ptr %broadcast, align 1, !dbg !7041
  %6 = load ptr, ptr %td, align 8, !dbg !7043
  %evtdev = getelementptr inbounds %struct.tick_device, ptr %6, i32 0, i32 0, !dbg !7044
  %7 = load ptr, ptr %evtdev, align 8, !dbg !7044
  %call2 = call i32 @clockevents_tick_resume(ptr noundef %7) #13, !dbg !7045
  %8 = load i8, ptr %broadcast, align 1, !dbg !7046, !range !7048, !noundef !712
  %tobool = trunc i8 %8 to i1, !dbg !7046
  br i1 %tobool, label %if.end5, label %if.then, !dbg !7049

if.then:                                          ; preds = %do.end
  %9 = load ptr, ptr %td, align 8, !dbg !7050
  %mode = getelementptr inbounds %struct.tick_device, ptr %9, i32 0, i32 1, !dbg !7053
  %10 = load i32, ptr %mode, align 8, !dbg !7053
  %cmp = icmp eq i32 %10, 0, !dbg !7054
  br i1 %cmp, label %if.then3, label %if.else, !dbg !7055

if.then3:                                         ; preds = %if.then
  %11 = load ptr, ptr %td, align 8, !dbg !7056
  %evtdev4 = getelementptr inbounds %struct.tick_device, ptr %11, i32 0, i32 0, !dbg !7057
  %12 = load ptr, ptr %evtdev4, align 8, !dbg !7057
  call void @tick_setup_periodic(ptr noundef %12, i32 noundef 0) #13, !dbg !7058
  br label %if.end, !dbg !7058

if.else:                                          ; preds = %if.then
  call void @tick_resume_oneshot() #13, !dbg !7059
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end5, !dbg !7060

if.end5:                                          ; preds = %if.end, %do.end
  call void @hrtimers_resume_local() #13, !dbg !7061
  call void @llvm.lifetime.end.p0(i64 1, ptr %broadcast) #12, !dbg !7062
  call void @llvm.lifetime.end.p0(i64 8, ptr %td) #12, !dbg !7062
  ret void, !dbg !7062
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7063 dso_local zeroext i1 @tick_resume_check_broadcast() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7064 dso_local i32 @clockevents_tick_resume(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7065 dso_local void @tick_resume_oneshot() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7066 dso_local void @hrtimers_resume_local() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_suspend() #0 align 16 !dbg !7067 {
entry:
  call void @tick_suspend_local() #13, !dbg !7068
  call void @tick_suspend_broadcast() #13, !dbg !7069
  ret void, !dbg !7070
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7071 dso_local void @tick_suspend_broadcast() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_resume() #0 align 16 !dbg !7072 {
entry:
  call void @tick_resume_broadcast() #13, !dbg !7073
  call void @tick_resume_local() #13, !dbg !7074
  ret void, !dbg !7075
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7076 dso_local void @tick_resume_broadcast() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_freeze() #0 align 16 !dbg !6126 {
entry:
  %tmp = alloca ptr, align 8
  %tmp1 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  call void @_raw_spin_lock(ptr noundef @tick_freeze_lock) #13, !dbg !7077
  %0 = load i32, ptr @tick_freeze_depth, align 4, !dbg !7078
  %inc = add i32 %0, 1, !dbg !7078
  store i32 %inc, ptr @tick_freeze_depth, align 4, !dbg !7078
  %1 = load i32, ptr @tick_freeze_depth, align 4, !dbg !7079
  %call = call i32 @num_online_cpus() #13, !dbg !7080
  %cmp = icmp eq i32 %1, %call, !dbg !7081
  br i1 %cmp, label %if.then, label %if.else, !dbg !7082

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @tick_freeze.___tp_str, align 8, !dbg !7083
  store ptr %2, ptr %tmp, align 8, !dbg !7083
  %3 = load ptr, ptr %tmp, align 8, !dbg !7083
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !7085
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !7086
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6128, metadata !DIExpression()), !dbg !7086
  br label %do.body, !dbg !7086

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7087
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6133, metadata !DIExpression()), !dbg !7087
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7087
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !7087
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7086
  br label %do.cond, !dbg !7087

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7087

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !7088
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6135, metadata !DIExpression()), !dbg !7088
  %5 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !7088, !srcloc !7089
  store i32 %5, ptr %pfo_val__, align 4, !dbg !7088
  %6 = load i32, ptr %pfo_val__, align 4, !dbg !7088
  %conv = zext i32 %6 to i64, !dbg !7088
  %conv3 = trunc i64 %conv to i32, !dbg !7088
  store i32 %conv3, ptr %tmp2, align 4, !dbg !7088
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !7086
  %7 = load i32, ptr %tmp2, align 4, !dbg !7088
  store i32 %7, ptr %pscr_ret__, align 4, !dbg !7086
  %8 = load i32, ptr %pscr_ret__, align 4, !dbg !7086
  store i32 %8, ptr %tmp4, align 4, !dbg !7086
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !7085
  %9 = load i32, ptr %tmp4, align 4, !dbg !7086
  store i32 %9, ptr %tmp1, align 4, !dbg !7085
  %10 = load i32, ptr %tmp1, align 4, !dbg !7085
  call void @trace_suspend_resume(ptr noundef %3, i32 noundef %10, i1 noundef zeroext true) #13, !dbg !7090
  store i32 7, ptr @system_state, align 4, !dbg !7091
  %call5 = call i32 @sched_clock_suspend() #13, !dbg !7092
  %call6 = call i32 @timekeeping_suspend() #13, !dbg !7093
  br label %if.end, !dbg !7094

if.else:                                          ; preds = %entry
  call void @tick_suspend_local() #13, !dbg !7095
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  call void @_raw_spin_unlock(ptr noundef @tick_freeze_lock) #13, !dbg !7097
  ret void, !dbg !7098
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7099 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @num_online_cpus() #3 align 16 !dbg !7104 {
entry:
  %call = call i32 @raw_atomic_read(ptr noundef @__num_online_cpus) #13, !dbg !7107
  ret i32 %call, !dbg !7108
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_suspend_resume(ptr noundef %action, i32 noundef %val, i1 noundef zeroext %start) #5 align 16 !dbg !6171 {
entry:
  %action.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  %start.addr = alloca i8, align 1
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
  %__UNIQUE_ID_rcu396 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !6175, metadata !DIExpression()), !dbg !7109
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6176, metadata !DIExpression()), !dbg !7109
  %frombool = zext i1 %start to i8
  store i8 %frombool, ptr %start.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !6177, metadata !DIExpression()), !dbg !7109
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 1)) #13, !dbg !7110
  br i1 %call, label %if.then, label %if.end69, !dbg !7109

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !7110

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #12, !dbg !7111
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !6178, metadata !DIExpression()), !dbg !7111
  store i32 0, ptr %__idx, align 4, !dbg !7111
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !7112
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6181, metadata !DIExpression()), !dbg !7112
  br label %do.body1, !dbg !7112

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7113
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6184, metadata !DIExpression()), !dbg !7113
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7113
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7113
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7112
  br label %do.cond, !dbg !7113

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !7113

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !7114
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6186, metadata !DIExpression()), !dbg !7114
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !7114, !srcloc !7115
  store i32 %1, ptr %pfo_val__, align 4, !dbg !7114
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !7114
  %conv = zext i32 %2 to i64, !dbg !7114
  %conv2 = trunc i64 %conv to i32, !dbg !7114
  store i32 %conv2, ptr %tmp, align 4, !dbg !7114
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !7112
  %3 = load i32, ptr %tmp, align 4, !dbg !7114
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !7112
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !7112
  store i32 %4, ptr %tmp3, align 4, !dbg !7112
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !7116
  %5 = load i32, ptr %tmp3, align 4, !dbg !7112
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #13, !dbg !7116
  br i1 %call4, label %if.end, label %if.then5, !dbg !7111

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7116

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !7117
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6188, metadata !DIExpression()), !dbg !7117
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !7117
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !7118
  %tobool = icmp ne i32 %6, 0, !dbg !7118
  %lnot = xor i1 %tobool, true, !dbg !7118
  %lnot6 = xor i1 %lnot, true, !dbg !7118
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !7118
  %conv7 = sext i32 %lnot.ext to i64, !dbg !7118
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !7118
  %tobool8 = icmp ne i64 %expval, 0, !dbg !7118
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !7117

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !7118

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !7119
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6191, metadata !DIExpression()), !dbg !7119
  store i32 2307, ptr %__flags, align 4, !dbg !7119
  br label %do.body11, !dbg !7119

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !7120

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !7120

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !7119

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !7122
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 268, i32 %7, i64 12) #12, !dbg !7122, !srcloc !7124
  br label %do.cond15, !dbg !7122

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !7122

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !7119

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !7125

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !7125

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !7118
  br label %do.cond20, !dbg !7119

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !7119

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !7119

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !7117
  %tobool24 = icmp ne i32 %8, 0, !dbg !7117
  %lnot25 = xor i1 %tobool24, true, !dbg !7117
  %lnot27 = xor i1 %lnot25, true, !dbg !7117
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !7117
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !7117
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !7117
  store i64 %expval30, ptr %tmp23, align 8, !dbg !7118
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !7127
  %9 = load i64, ptr %tmp23, align 8, !dbg !7117
  %tobool31 = icmp ne i64 %9, 0, !dbg !7127
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !7111

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7127

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !7111

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #13, !dbg !7128
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !7128, !srcloc !7130
  br label %do.cond35, !dbg !7128

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !7128

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !7111

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #12, !dbg !7131
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !6194, metadata !DIExpression()), !dbg !7131
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #12, !dbg !7131
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !6196, metadata !DIExpression()), !dbg !7131
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu396) #12, !dbg !7132
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu396, metadata !6197, metadata !DIExpression()), !dbg !7132
  br label %do.body38, !dbg !7133

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !7135

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !7135

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_suspend_resume, i32 0, i32 8), align 8, !dbg !7133
  store ptr %10, ptr %tmp41, align 8, !dbg !7135
  %11 = load ptr, ptr %tmp41, align 8, !dbg !7133
  store ptr %11, ptr %__UNIQUE_ID_rcu396, align 8, !dbg !7132
  %12 = load ptr, ptr %__UNIQUE_ID_rcu396, align 8, !dbg !7132
  store ptr %12, ptr %tmp42, align 8, !dbg !7132
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu396) #12, !dbg !7131
  %13 = load ptr, ptr %tmp42, align 8, !dbg !7132
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !7131
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !7137
  %tobool43 = icmp ne ptr %14, null, !dbg !7137
  br i1 %tobool43, label %if.then44, label %if.end48, !dbg !7131

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !7139
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !7139
  %16 = load ptr, ptr %data, align 8, !dbg !7139
  store ptr %16, ptr %__data, align 8, !dbg !7139
  store ptr @__SCT__tp_func_suspend_resume, ptr %tmp45, align 8, !dbg !7141
  %17 = load ptr, ptr %tmp45, align 8, !dbg !7141
  %18 = load ptr, ptr %__data, align 8, !dbg !7139
  %19 = load ptr, ptr %action.addr, align 8, !dbg !7139
  %20 = load i32, ptr %val.addr, align 4, !dbg !7139
  %21 = load i8, ptr %start.addr, align 1, !dbg !7139, !range !7048, !noundef !712
  %tobool46 = trunc i8 %21 to i1, !dbg !7139
  %call47 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20, i1 noundef zeroext %tobool46) #13, !dbg !7139
  br label %if.end48, !dbg !7139

if.end48:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #12, !dbg !7111
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #12, !dbg !7111
  br label %do.cond49, !dbg !7131

do.cond49:                                        ; preds = %if.end48
  br label %do.end50, !dbg !7131

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !7111

do.body51:                                        ; preds = %do.end50
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !7143, !srcloc !7145
  %call52 = call zeroext i1 @__preempt_count_dec_and_test() #13, !dbg !7146
  %lnot53 = xor i1 %call52, true, !dbg !7146
  %lnot55 = xor i1 %lnot53, true, !dbg !7146
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !7146
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !7146
  %expval58 = call i64 @llvm.expect.i64(i64 %conv57, i64 0), !dbg !7146
  %tobool59 = icmp ne i64 %expval58, 0, !dbg !7146
  br i1 %tobool59, label %if.then60, label %if.end64, !dbg !7143

if.then60:                                        ; preds = %do.body51
  br label %do.body61, !dbg !7146

do.body61:                                        ; preds = %if.then60
  %22 = call i64 @llvm.read_register.i64(metadata !6201), !dbg !7148
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #12, !dbg !7148, !srcloc !7150
  call void @llvm.write_register.i64(metadata !6201, i64 %23), !dbg !7148
  br label %do.cond62, !dbg !7148

do.cond62:                                        ; preds = %do.body61
  br label %do.end63, !dbg !7148

do.end63:                                         ; preds = %do.cond62
  br label %if.end64, !dbg !7148

if.end64:                                         ; preds = %do.end63, %do.body51
  br label %do.cond65, !dbg !7143

do.cond65:                                        ; preds = %if.end64
  br label %do.end66, !dbg !7143

do.end66:                                         ; preds = %do.cond65
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7110
  br label %cleanup, !dbg !7110

cleanup:                                          ; preds = %do.end66, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #12, !dbg !7110
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end69
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end68, !dbg !7111

do.end68:                                         ; preds = %cleanup.cont
  br label %if.end69, !dbg !7111

if.end69:                                         ; preds = %cleanup, %do.end68, %entry
  ret void, !dbg !7109

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sched_clock_suspend() #5 align 16 !dbg !7151 {
entry:
  ret i32 0, !dbg !7152
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7153 dso_local i32 @timekeeping_suspend() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7154 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @tick_unfreeze() #0 align 16 !dbg !6139 {
entry:
  %tmp = alloca ptr, align 8
  %tmp1 = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  call void @_raw_spin_lock(ptr noundef @tick_freeze_lock) #13, !dbg !7155
  %0 = load i32, ptr @tick_freeze_depth, align 4, !dbg !7156
  %call = call i32 @num_online_cpus() #13, !dbg !7157
  %cmp = icmp eq i32 %0, %call, !dbg !7158
  br i1 %cmp, label %if.then, label %if.else, !dbg !7159

if.then:                                          ; preds = %entry
  call void @timekeeping_resume() #13, !dbg !7160
  call void @sched_clock_resume() #13, !dbg !7161
  store i32 3, ptr @system_state, align 4, !dbg !7162
  %1 = load ptr, ptr @tick_unfreeze.___tp_str, align 8, !dbg !7163
  store ptr %1, ptr %tmp, align 8, !dbg !7163
  %2 = load ptr, ptr %tmp, align 8, !dbg !7163
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !7165
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #12, !dbg !7166
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6141, metadata !DIExpression()), !dbg !7166
  br label %do.body, !dbg !7166

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7167
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6146, metadata !DIExpression()), !dbg !7167
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7167
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !7167
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7166
  br label %do.cond, !dbg !7167

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7167

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #12, !dbg !7168
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6148, metadata !DIExpression()), !dbg !7168
  %4 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !7168, !srcloc !7169
  store i32 %4, ptr %pfo_val__, align 4, !dbg !7168
  %5 = load i32, ptr %pfo_val__, align 4, !dbg !7168
  %conv = zext i32 %5 to i64, !dbg !7168
  %conv3 = trunc i64 %conv to i32, !dbg !7168
  store i32 %conv3, ptr %tmp2, align 4, !dbg !7168
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #12, !dbg !7166
  %6 = load i32, ptr %tmp2, align 4, !dbg !7168
  store i32 %6, ptr %pscr_ret__, align 4, !dbg !7166
  %7 = load i32, ptr %pscr_ret__, align 4, !dbg !7166
  store i32 %7, ptr %tmp4, align 4, !dbg !7166
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #12, !dbg !7165
  %8 = load i32, ptr %tmp4, align 4, !dbg !7166
  store i32 %8, ptr %tmp1, align 4, !dbg !7165
  %9 = load i32, ptr %tmp1, align 4, !dbg !7165
  call void @trace_suspend_resume(ptr noundef %2, i32 noundef %9, i1 noundef zeroext false) #13, !dbg !7170
  br label %if.end, !dbg !7171

if.else:                                          ; preds = %entry
  call void @touch_softlockup_watchdog() #13, !dbg !7172
  call void @tick_resume_local() #13, !dbg !7174
  br label %if.end

if.end:                                           ; preds = %if.else, %do.end
  %10 = load i32, ptr @tick_freeze_depth, align 4, !dbg !7175
  %dec = add i32 %10, -1, !dbg !7175
  store i32 %dec, ptr @tick_freeze_depth, align 4, !dbg !7175
  call void @_raw_spin_unlock(ptr noundef @tick_freeze_lock) #13, !dbg !7176
  ret void, !dbg !7177
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7178 dso_local void @timekeeping_resume() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sched_clock_resume() #5 align 16 !dbg !7179 {
entry:
  ret void, !dbg !7180
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @touch_softlockup_watchdog() #5 align 16 !dbg !7181 {
entry:
  ret void, !dbg !7183
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @tick_init() #6 section ".init.text" align 16 !dbg !7184 {
entry:
  call void @tick_broadcast_init() #13, !dbg !7185
  call void @tick_nohz_init() #13, !dbg !7186
  ret void, !dbg !7187
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7188 dso_local void @tick_broadcast_init() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tick_nohz_init() #5 align 16 !dbg !7189 {
entry:
  ret void, !dbg !7190
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__seqprop_raw_spinlock_assert(ptr noundef %s) #3 align 16 !dbg !7191 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7195, metadata !DIExpression()), !dbg !7196
  ret void, !dbg !7196
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__seqprop_raw_spinlock_preemptible(ptr noundef %s) #3 align 16 !dbg !7197 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7201, metadata !DIExpression()), !dbg !7202
  ret i1 false, !dbg !7203
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #3 align 16 !dbg !7205 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !7208, metadata !DIExpression()), !dbg !7215
  br label %do.body, !dbg !7216

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #12, !dbg !7217
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !7209, metadata !DIExpression()), !dbg !7217
  %0 = load i32, ptr %val.addr, align 4, !dbg !7217
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !7217
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !7217

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !7217
  %cmp = icmp eq i32 %2, 1, !dbg !7217
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !7217

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !7217
  %cmp1 = icmp eq i32 %3, -1, !dbg !7217
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !7217

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !7217
  br label %cond.end, !dbg !7217

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !7217

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !7217
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !7217
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !7218
  %cmp2 = icmp eq i32 %5, 1, !dbg !7218
  br i1 %cmp2, label %if.then, label %if.else, !dbg !7217

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !7219, !srcloc !7221
  br label %if.end8, !dbg !7218

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !7222
  %cmp3 = icmp eq i32 %6, -1, !dbg !7222
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !7218

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !7223, !srcloc !7225
  br label %if.end, !dbg !7222

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !7222

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #12, !dbg !7226
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !7211, metadata !DIExpression()), !dbg !7226
  %7 = load i32, ptr %val.addr, align 4, !dbg !7226
  %conv = sext i32 %7 to i64, !dbg !7226
  %and = and i64 %conv, 4294967295, !dbg !7226
  %conv7 = trunc i64 %and to i32, !dbg !7226
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !7226
  %8 = load i32, ptr %pto_val__, align 4, !dbg !7226
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !7226, !srcloc !7227
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #12, !dbg !7222
  br label %do.cond, !dbg !7226

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !7226

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #12, !dbg !7216
  br label %do.end10, !dbg !7217

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !7228
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_begin(ptr noundef %s) #5 align 16 !dbg !7229 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7233, metadata !DIExpression()), !dbg !7234
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7235
  call void @do_write_seqcount_begin_nested(ptr noundef %0, i32 noundef 0) #13, !dbg !7236
  ret void, !dbg !7237
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7238 dso_local void @do_timer(i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_end(ptr noundef %s) #5 align 16 !dbg !7241 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7243, metadata !DIExpression()), !dbg !7244
  br label %do.body, !dbg !7245

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7246

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7248
  call void @do_raw_write_seqcount_end(ptr noundef %0) #13, !dbg !7249
  ret void, !dbg !7250
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #3 align 16 !dbg !7251 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #12, !dbg !7255
  call void @llvm.dbg.declare(metadata ptr %c, metadata !7253, metadata !DIExpression()), !dbg !7255
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.20, ptr @pcpu_hot, i32 0, i32 1)) #12, !dbg !7255, !srcloc !7256
  %1 = icmp ult i8 %0, 2, !dbg !7255
  call void @llvm.assume(i1 %1), !dbg !7255
  store i8 %0, ptr %c, align 1, !dbg !7255
  %2 = load i8, ptr %c, align 1, !dbg !7255, !range !7048, !noundef !712
  %tobool = trunc i8 %2 to i1, !dbg !7255
  %frombool = zext i1 %tobool to i8, !dbg !7255
  store i8 %frombool, ptr %tmp, align 1, !dbg !7255
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #12, !dbg !7257
  %3 = load i8, ptr %tmp, align 1, !dbg !7255, !range !7048, !noundef !712
  %tobool1 = trunc i8 %3 to i1, !dbg !7255
  ret i1 %tobool1, !dbg !7258
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7259 dso_local void @update_wall_time() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7260 dso_local void @update_process_times(i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_mode(ptr noundef %regs) #3 align 16 !dbg !7261 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !7265, metadata !DIExpression()), !dbg !7266
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !7267
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !7268
  %2 = load i16, ptr %1, align 8, !dbg !7268
  %conv = zext i16 %2 to i32, !dbg !7267
  %and = and i32 %conv, 3, !dbg !7269
  %tobool = icmp ne i32 %and, 0, !dbg !7270
  %lnot = xor i1 %tobool, true, !dbg !7270
  %lnot1 = xor i1 %lnot, true, !dbg !7271
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7271
  ret i32 %lnot.ext, !dbg !7272
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_irq_regs() #5 align 16 !dbg !7273 {
entry:
  %tmp = alloca ptr, align 8
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  call void @__this_cpu_preempt_check(ptr noundef @.str) #13, !dbg !7285
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !7286
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !7278, metadata !DIExpression()), !dbg !7286
  br label %do.body, !dbg !7286

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7287
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !7281, metadata !DIExpression()), !dbg !7287
  store ptr null, ptr %__vpp_verify, align 8, !dbg !7287
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !7287
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !7286
  br label %do.cond, !dbg !7287

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !7287

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !7288
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !7283, metadata !DIExpression()), !dbg !7288
  %1 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @__irq_regs) #14, !dbg !7288, !srcloc !7289
  store i64 %1, ptr %pfo_val__, align 8, !dbg !7288
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !7288
  %3 = inttoptr i64 %2 to ptr, !dbg !7288
  store ptr %3, ptr %tmp1, align 8, !dbg !7288
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !7286
  %4 = load ptr, ptr %tmp1, align 8, !dbg !7288
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !7286
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !7286
  store ptr %5, ptr %tmp2, align 8, !dbg !7286
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !7285
  %6 = load ptr, ptr %tmp2, align 8, !dbg !7286
  store ptr %6, ptr %tmp, align 8, !dbg !7285
  %7 = load ptr, ptr %tmp, align 8, !dbg !7285
  ret ptr %7, !dbg !7290
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7291 dso_local void @profile_tick(i32 noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_begin_nested(ptr noundef %s, i32 noundef %subclass) #5 align 16 !dbg !7293 {
entry:
  %s.addr = alloca ptr, align 8
  %subclass.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7297, metadata !DIExpression()), !dbg !7299
  store i32 %subclass, ptr %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subclass.addr, metadata !7298, metadata !DIExpression()), !dbg !7300
  br label %do.body, !dbg !7301

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7302

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7304
  call void @do_raw_write_seqcount_begin(ptr noundef %0) #13, !dbg !7305
  ret void, !dbg !7306
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_write_seqcount_begin(ptr noundef %s) #5 align 16 !dbg !7307 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7309, metadata !DIExpression()), !dbg !7310
  call void @kcsan_nestable_atomic_begin() #13, !dbg !7311
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7312
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !7313
  %1 = load i32, ptr %sequence, align 4, !dbg !7314
  %inc = add i32 %1, 1, !dbg !7314
  store i32 %inc, ptr %sequence, align 4, !dbg !7314
  br label %do.body, !dbg !7315

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !7316

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !7318

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !7316, !srcloc !7320
  br label %do.end2, !dbg !7316

do.end2:                                          ; preds = %do.end
  ret void, !dbg !7321
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_nestable_atomic_begin() #5 align 16 !dbg !7322 {
entry:
  ret void, !dbg !7323
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_write_seqcount_end(ptr noundef %s) #5 align 16 !dbg !7324 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7326, metadata !DIExpression()), !dbg !7327
  br label %do.body, !dbg !7328

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !7329

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !7331

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !7329, !srcloc !7333
  br label %do.end2, !dbg !7329

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7334
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !7335
  %1 = load i32, ptr %sequence, align 4, !dbg !7336
  %inc = add i32 %1, 1, !dbg !7336
  store i32 %inc, ptr %sequence, align 4, !dbg !7336
  call void @kcsan_nestable_atomic_end() #13, !dbg !7337
  ret void, !dbg !7338
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_nestable_atomic_end() #5 align 16 !dbg !7339 {
entry:
  ret void, !dbg !7340
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #3 align 16 !dbg !7341 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #12, !dbg !7342, !srcloc !7343
  ret void, !dbg !7344
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do___read_seqcount_retry(ptr noundef %s, i32 noundef %start) #5 align 16 !dbg !7345 {
entry:
  %s.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !7347, metadata !DIExpression()), !dbg !7349
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !7348, metadata !DIExpression()), !dbg !7350
  call void @kcsan_atomic_next(i32 noundef 0) #13, !dbg !7351
  br label %do.body, !dbg !7352

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7354

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !7352
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !7352
  %1 = load volatile i32, ptr %sequence, align 4, !dbg !7352
  store i32 %1, ptr %tmp, align 4, !dbg !7354
  %2 = load i32, ptr %tmp, align 4, !dbg !7352
  %3 = load i32, ptr %start.addr, align 4, !dbg !7356
  %cmp = icmp ne i32 %2, %3, !dbg !7356
  %lnot = xor i1 %cmp, true, !dbg !7356
  %lnot1 = xor i1 %lnot, true, !dbg !7356
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !7356
  %conv = sext i32 %lnot.ext to i64, !dbg !7356
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7356
  %conv2 = trunc i64 %expval to i32, !dbg !7356
  ret i32 %conv2, !dbg !7357
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7358 dso_local i64 @ktime_get() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_equal(ptr noundef %src1p, ptr noundef %src2p) #5 align 16 !dbg !7360 {
entry:
  %src1p.addr = alloca ptr, align 8
  %src2p.addr = alloca ptr, align 8
  store ptr %src1p, ptr %src1p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1p.addr, metadata !7364, metadata !DIExpression()), !dbg !7366
  store ptr %src2p, ptr %src2p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2p.addr, metadata !7365, metadata !DIExpression()), !dbg !7367
  %0 = load ptr, ptr %src1p.addr, align 8, !dbg !7368
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !7368
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !7368
  %1 = load ptr, ptr %src2p.addr, align 8, !dbg !7369
  %bits1 = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !7369
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %bits1, i64 0, i64 0, !dbg !7369
  %call = call zeroext i1 @bitmap_equal(ptr noundef %arraydecay, ptr noundef %arraydecay2, i32 noundef 64) #13, !dbg !7370
  ret i1 %call, !dbg !7371
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7372 dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7376 dso_local i32 @tick_device_uses_broadcast(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7379 dso_local void @tick_setup_oneshot(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @bitmap_equal(ptr noundef %src1, ptr noundef %src2, i32 noundef %nbits) #5 align 16 !dbg !7382 {
entry:
  %retval = alloca i1, align 1
  %src1.addr = alloca ptr, align 8
  %src2.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src1, ptr %src1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src1.addr, metadata !7387, metadata !DIExpression()), !dbg !7390
  store ptr %src2, ptr %src2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src2.addr, metadata !7388, metadata !DIExpression()), !dbg !7391
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !7389, metadata !DIExpression()), !dbg !7392
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !7393
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !7393
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !7393

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !7393
  %cmp = icmp ule i32 %2, 64, !dbg !7393
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !7393

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !7393
  %cmp2 = icmp ugt i32 %3, 0, !dbg !7393
  br i1 %cmp2, label %if.then, label %if.end, !dbg !7395

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src1.addr, align 8, !dbg !7396
  %5 = load i64, ptr %4, align 8, !dbg !7397
  %6 = load ptr, ptr %src2.addr, align 8, !dbg !7398
  %7 = load i64, ptr %6, align 8, !dbg !7399
  %xor = xor i64 %5, %7, !dbg !7400
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !7401
  %sub = sub i32 0, %8, !dbg !7401
  %and = and i32 %sub, 63, !dbg !7401
  %sh_prom = zext i32 %and to i64, !dbg !7401
  %shr = lshr i64 -1, %sh_prom, !dbg !7401
  %and3 = and i64 %xor, %shr, !dbg !7402
  %tobool = icmp ne i64 %and3, 0, !dbg !7403
  %lnot = xor i1 %tobool, true, !dbg !7403
  store i1 %lnot, ptr %retval, align 1, !dbg !7404
  br label %return, !dbg !7404

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %9 = load i32, ptr %nbits.addr, align 4, !dbg !7405
  %and4 = and i32 %9, 7, !dbg !7407
  %10 = call i1 @llvm.is.constant.i32(i32 %and4), !dbg !7408
  br i1 %10, label %land.lhs.true5, label %if.end11, !dbg !7409

land.lhs.true5:                                   ; preds = %if.end
  %11 = load i32, ptr %nbits.addr, align 4, !dbg !7410
  %and6 = and i32 %11, 7, !dbg !7410
  %cmp7 = icmp eq i32 %and6, 0, !dbg !7410
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !7411

if.then8:                                         ; preds = %land.lhs.true5
  %12 = load ptr, ptr %src1.addr, align 8, !dbg !7412
  %13 = load ptr, ptr %src2.addr, align 8, !dbg !7413
  %14 = load i32, ptr %nbits.addr, align 4, !dbg !7414
  %div = udiv i32 %14, 8, !dbg !7415
  %conv = zext i32 %div to i64, !dbg !7414
  %call = call i32 @memcmp(ptr noundef %12, ptr noundef %13, i64 noundef %conv) #13, !dbg !7416
  %tobool9 = icmp ne i32 %call, 0, !dbg !7417
  %lnot10 = xor i1 %tobool9, true, !dbg !7417
  store i1 %lnot10, ptr %retval, align 1, !dbg !7418
  br label %return, !dbg !7418

if.end11:                                         ; preds = %land.lhs.true5, %if.end
  %15 = load ptr, ptr %src1.addr, align 8, !dbg !7419
  %16 = load ptr, ptr %src2.addr, align 8, !dbg !7420
  %17 = load i32, ptr %nbits.addr, align 4, !dbg !7421
  %call12 = call zeroext i1 @__bitmap_equal(ptr noundef %15, ptr noundef %16, i32 noundef %17) #13, !dbg !7422
  store i1 %call12, ptr %retval, align 1, !dbg !7423
  br label %return, !dbg !7423

return:                                           ; preds = %if.end11, %if.then8, %if.then
  %18 = load i1, ptr %retval, align 1, !dbg !7424
  ret i1 %18, !dbg !7424
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7425 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7429 dso_local zeroext i1 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #3 align 16 !dbg !7430 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7434, metadata !DIExpression()), !dbg !7436
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !7435, metadata !DIExpression()), !dbg !7437
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !7438
  %call = call i32 @cpumask_check(i32 noundef %0) #13, !dbg !7438
  %conv = zext i32 %call to i64, !dbg !7438
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !7438
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !7438
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !7438
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #13, !dbg !7438
  ret i1 %call1, !dbg !7439
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7440 dso_local i32 @irq_can_set_affinity(i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7443 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7451, metadata !DIExpression()), !dbg !7453
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7452, metadata !DIExpression()), !dbg !7454
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7455
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7456
  %div = udiv i64 %1, 64, !dbg !7456
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !7457
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #13, !dbg !7458
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7459
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7460
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !7461
  ret i1 %call, !dbg !7462
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #3 align 16 !dbg !7463 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7467, metadata !DIExpression()), !dbg !7468
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !7469
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #13, !dbg !7470
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !7471
  ret i32 %1, !dbg !7472
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !7473 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7481, metadata !DIExpression()), !dbg !7483
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7482, metadata !DIExpression()), !dbg !7484
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7485
  %1 = load i64, ptr %size.addr, align 8, !dbg !7486
  %conv = trunc i64 %1 to i32, !dbg !7486
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #13, !dbg !7487
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7488
  %3 = load i64, ptr %size.addr, align 8, !dbg !7488
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #13, !dbg !7488
  ret void, !dbg !7489
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7490 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7493, metadata !DIExpression()), !dbg !7495
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7494, metadata !DIExpression()), !dbg !7496
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7497
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7498
  br i1 %1, label %cond.true, label %cond.false, !dbg !7498

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7499
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !7500
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !7501
  %conv = zext i1 %call to i32, !dbg !7501
  br label %cond.end, !dbg !7498

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !7502
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !7503
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !7504
  %conv2 = zext i1 %call1 to i32, !dbg !7504
  br label %cond.end, !dbg !7498

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !7498
  %tobool = icmp ne i32 %cond, 0, !dbg !7498
  ret i1 %tobool, !dbg !7505
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !7506 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7511, metadata !DIExpression()), !dbg !7513
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7512, metadata !DIExpression()), !dbg !7514
  ret i1 true, !dbg !7515
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !7516 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7520, metadata !DIExpression()), !dbg !7523
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7521, metadata !DIExpression()), !dbg !7524
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7522, metadata !DIExpression()), !dbg !7525
  ret void, !dbg !7526
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7527 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7531, metadata !DIExpression()), !dbg !7533
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7532, metadata !DIExpression()), !dbg !7534
  %0 = load i64, ptr %nr.addr, align 8, !dbg !7535
  %and = and i64 %0, 63, !dbg !7536
  %shl = shl i64 1, %and, !dbg !7537
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !7538
  %2 = load i64, ptr %nr.addr, align 8, !dbg !7539
  %shr = ashr i64 %2, 6, !dbg !7540
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !7538
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !7538
  %and1 = and i64 %shl, %3, !dbg !7541
  %cmp = icmp ne i64 %and1, 0, !dbg !7542
  ret i1 %cmp, !dbg !7543
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !7544 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !7546, metadata !DIExpression()), !dbg !7549
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7547, metadata !DIExpression()), !dbg !7550
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !7551
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !7548, metadata !DIExpression()), !dbg !7552
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !7553
  %1 = load i64, ptr %nr.addr, align 8, !dbg !7554
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !7555, !srcloc !7556
  %3 = icmp ult i8 %2, 2, !dbg !7555
  call void @llvm.assume(i1 %3), !dbg !7555
  store i8 %2, ptr %oldbit, align 1, !dbg !7555
  %4 = load i8, ptr %oldbit, align 1, !dbg !7557, !range !7048, !noundef !712
  %tobool = trunc i8 %4 to i1, !dbg !7557
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !7558
  ret i1 %tobool, !dbg !7559
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #3 align 16 !dbg !7560 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7564, metadata !DIExpression()), !dbg !7566
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !7565, metadata !DIExpression()), !dbg !7567
  ret void, !dbg !7568
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7569 dso_local i32 @tick_oneshot_mode_active() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #5 align 16 !dbg !7570 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !7575, metadata !DIExpression()), !dbg !7580
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7576, metadata !DIExpression()), !dbg !7581
  %0 = load i64, ptr %size.addr, align 8, !dbg !7582
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !7582
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !7582

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !7582
  %cmp = icmp ule i64 %2, 64, !dbg !7582
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !7582

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !7582
  %cmp2 = icmp ugt i64 %3, 0, !dbg !7582
  br i1 %cmp2, label %if.then, label %if.end, !dbg !7583

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #12, !dbg !7584
  call void @llvm.dbg.declare(metadata ptr %val, metadata !7577, metadata !DIExpression()), !dbg !7585
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !7586
  %5 = load i64, ptr %4, align 8, !dbg !7587
  %6 = load i64, ptr %size.addr, align 8, !dbg !7588
  %sub = sub i64 %6, 1, !dbg !7588
  %sub3 = sub i64 63, %sub, !dbg !7588
  %shr = lshr i64 -1, %sub3, !dbg !7588
  %and = and i64 -1, %shr, !dbg !7588
  %add = add i64 0, %and, !dbg !7588
  %and4 = and i64 %5, %add, !dbg !7589
  store i64 %and4, ptr %val, align 8, !dbg !7585
  %7 = load i64, ptr %val, align 8, !dbg !7590
  %tobool = icmp ne i64 %7, 0, !dbg !7590
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !7590

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !7591
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !7591
  br i1 %9, label %cond.true5, label %cond.false, !dbg !7591

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !7591
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !7591
  %cast = trunc i64 %11 to i32, !dbg !7591
  %conv = sext i32 %cast to i64, !dbg !7591
  br label %cond.end, !dbg !7591

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !7591
  %call = call i64 @variable__ffs(i64 noundef %12) #13, !dbg !7591
  br label %cond.end, !dbg !7591

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !7591
  br label %cond.end7, !dbg !7590

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !7592
  br label %cond.end7, !dbg !7590

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !7590
  store i64 %cond8, ptr %retval, align 8, !dbg !7593
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #12, !dbg !7594
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !7595
  %15 = load i64, ptr %size.addr, align 8, !dbg !7596
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #13, !dbg !7597
  store i64 %call9, ptr %retval, align 8, !dbg !7598
  br label %return, !dbg !7598

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !7599
  ret i64 %16, !dbg !7599
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #3 align 16 !dbg !7600 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !7604, metadata !DIExpression()), !dbg !7605
  %0 = load i64, ptr %word.addr, align 8, !dbg !7606
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #14, !dbg !7607, !srcloc !7608
  store i64 %1, ptr %word.addr, align 8, !dbg !7607
  %2 = load i64, ptr %word.addr, align 8, !dbg !7609
  ret i64 %2, !dbg !7610
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7611 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #3 align 16 !dbg !7612 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7619, metadata !DIExpression()), !dbg !7620
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7621
  %call = call i32 @arch_atomic_read(ptr noundef %0) #13, !dbg !7622
  ret i32 %call, !dbg !7623
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #3 align 16 !dbg !7624 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7627, metadata !DIExpression()), !dbg !7628
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7629
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !7629
  %1 = load volatile i32, ptr %counter, align 4, !dbg !7629
  ret i32 %1, !dbg !7630
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #3 align 16 !dbg !7631 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7636, metadata !DIExpression()), !dbg !7637
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7638
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !7639
  ret i1 %call, !dbg !7640
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #5 align 16 !dbg !7641 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !7645, metadata !DIExpression()), !dbg !7646
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !7647
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #13, !dbg !7648
  ret i1 %call, !dbg !7649
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_suspend_resume(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !7650 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !7655, metadata !DIExpression()), !dbg !7658
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !7656, metadata !DIExpression()), !dbg !7659
  %0 = load ptr, ptr %key.addr, align 8, !dbg !7660
  %1 = load i8, ptr %branch.addr, align 1, !dbg !7661, !range !7048, !noundef !712
  %tobool = trunc i8 %1 to i1, !dbg !7661
  %conv = zext i1 %tobool to i32, !dbg !7661
  %or = or i32 2, %conv, !dbg !7662
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #12
          to label %asm.fallthrough [label %l_yes], !dbg !7663, !srcloc !7664

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !7665
  br label %return, !dbg !7665

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !7657), !dbg !7666
  store i1 true, ptr %retval, align 1, !dbg !7667
  br label %return, !dbg !7667

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !7668
  ret i1 %2, !dbg !7668
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #9 = { nocallback nounwind }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!6201}
!llvm.module.flags = !{!6202, !6203, !6204, !6205, !6206, !6207, !6208, !6209}
!llvm.ident = !{!6210}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tick_do_timer_cpu", scope: !2, file: !3, line: 50, type: !42, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/time/.tick-common.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/time/tick-common\22 -D KBUILD_BASENAME=\22tick_common\22 -D KBUILD_MODNAME=\22tick_common\22 -D __KBUILD_MODNAME=kmod_tick_common -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/time/tick-common.ll kernel/time/tick-common.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !319, globals: !6113, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/time/tick-common.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b23bbbcb337f2064e89e5b19757c2350")
!4 = !{!5, !14, !21, !26, !31, !127, !133, !149, !157, !164, !170, !177, !185, !192, !198, !205, !209, !215, !221, !230, !235, !240, !246, !255, !266, !272, !280, !286, !293, !298, !303, !308}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clock_event_state", file: !6, line: 35, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/clockchips.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "86f5f8ec61303214145eac8153b8fae6")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "CLOCK_EVT_STATE_DETACHED", value: 0)
!10 = !DIEnumerator(name: "CLOCK_EVT_STATE_SHUTDOWN", value: 1)
!11 = !DIEnumerator(name: "CLOCK_EVT_STATE_PERIODIC", value: 2)
!12 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT", value: 3)
!13 = !DIEnumerator(name: "CLOCK_EVT_STATE_ONESHOT_STOPPED", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !22, line: 2052, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!23 = !{!24, !25}
!24 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!25 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !27, line: 65, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!28 = !{!29, !30}
!29 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!30 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !33, file: !32, line: 147, baseType: !7, size: 32, elements: !124)
!32 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !32, line: 135, size: 512, elements: !34)
!34 = !{!35, !39, !41, !43, !47, !48, !64, !122, !123}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !33, file: !32, line: 136, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !32, line: 137, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !33, file: !32, line: 138, baseType: !42, size: 32, offset: 128)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !33, file: !32, line: 139, baseType: !44, size: 16, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !45, line: 24, baseType: !46)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !32, line: 150, baseType: !31, size: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !33, file: !32, line: 151, baseType: !49, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !32, line: 64, baseType: !51)
!51 = !DISubroutineType(types: !52)
!52 = !{!42, !53, !42, !40, !54, !60}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 61, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !57, line: 72, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !57, line: 16, baseType: !59)
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !45, line: 52, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !57, line: 88, baseType: !63)
!63 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !33, file: !32, line: 152, baseType: !65, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !32, line: 117, size: 256, elements: !67)
!67 = !{!68, !73}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !66, file: !32, line: 118, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !45, line: 174, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 172, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !70, file: !45, line: 173, baseType: !42, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !66, file: !32, line: 119, baseType: !74, size: 192, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !75, line: 41, baseType: !76)
!75 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !75, line: 37, size: 192, elements: !77)
!77 = !{!78, !116}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !76, file: !75, line: 38, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !80, line: 29, baseType: !81)
!80 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !80, line: 17, size: 32, elements: !82)
!82 = !{!83}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !81, file: !80, line: 18, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !81, file: !80, line: 18, size: 32, elements: !85)
!85 = !{!86}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !84, file: !80, line: 19, baseType: !87, size: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !88, line: 14, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !87, file: !88, line: 15, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !92, line: 44, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !92, line: 14, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !92, line: 15, baseType: !96, size: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !92, line: 15, size: 32, elements: !97)
!97 = !{!98, !99, !109}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !92, line: 16, baseType: !69, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 24, baseType: !100, size: 16)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 24, size: 16, elements: !101)
!101 = !{!102, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !100, file: !92, line: 25, baseType: !103, size: 8)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !104, line: 17, baseType: !105)
!104 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !106, line: 21, baseType: !107)
!106 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!107 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !100, file: !92, line: 26, baseType: !103, size: 8, offset: 8)
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 28, baseType: !110, size: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 28, size: 32, elements: !111)
!111 = !{!112, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !110, file: !92, line: 29, baseType: !113, size: 16)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !104, line: 19, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !106, line: 24, baseType: !46)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !110, file: !92, line: 30, baseType: !113, size: 16, offset: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !76, file: !75, line: 39, baseType: !117, size: 128, offset: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !45, line: 190, size: 128, elements: !118)
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !45, line: 191, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !117, file: !45, line: 191, baseType: !120, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !33, file: !32, line: 153, baseType: !40, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !33, file: !32, line: 154, baseType: !40, size: 64, offset: 448)
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!126 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !128, line: 16, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!129 = !{!130, !131, !132}
!130 = !DIEnumerator(name: "TT_NONE", value: 0)
!131 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!132 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !134, line: 1325, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!136 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!137 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!138 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!139 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!140 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!141 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!142 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!143 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!144 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!145 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!146 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!147 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!148 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !150, line: 68, baseType: !7, size: 32, elements: !151)
!150 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!151 = !{!152, !153, !154, !155, !156}
!152 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!153 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!154 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!155 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!156 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !158, line: 51, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!159 = !{!160, !161, !162, !163}
!160 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!161 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!162 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!163 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !165, line: 45, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!168 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!169 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !171, line: 487, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!172 = !{!173, !174, !175, !176}
!173 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!174 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!175 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!176 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !178, line: 620, baseType: !7, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!179 = !{!180, !181, !182, !183, !184}
!180 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!181 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!182 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!183 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!184 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!185 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !178, line: 597, baseType: !42, size: 32, elements: !186)
!186 = !{!187, !188, !189, !190, !191}
!187 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!188 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!189 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!190 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!191 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !193, line: 41, baseType: !7, size: 32, elements: !194)
!193 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!194 = !{!195, !196, !197}
!195 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!196 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!197 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!198 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !193, line: 99, baseType: !7, size: 32, elements: !199)
!199 = !{!200, !201, !202, !203, !204}
!200 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!201 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!202 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!203 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!204 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !193, line: 80, baseType: !7, size: 32, elements: !206)
!206 = !{!207, !208}
!207 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!208 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !210, line: 30, baseType: !7, size: 32, elements: !211)
!210 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!211 = !{!212, !213, !214}
!212 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!213 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!214 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !216, line: 26, baseType: !7, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!217 = !{!218, !219, !220}
!218 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!219 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!220 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !171, line: 547, baseType: !7, size: 32, elements: !222)
!222 = !{!223, !224, !225, !226, !227, !228, !229}
!223 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!224 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!225 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!226 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!227 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!228 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!229 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !171, line: 564, baseType: !7, size: 32, elements: !231)
!231 = !{!232, !233, !234}
!232 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!233 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!234 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !171, line: 577, baseType: !7, size: 32, elements: !236)
!236 = !{!237, !238, !239}
!237 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!238 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!239 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !171, line: 503, baseType: !7, size: 32, elements: !241)
!241 = !{!242, !243, !244, !245}
!242 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!243 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!244 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!245 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "perf_event_state", file: !247, line: 593, baseType: !42, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ce692f6af4d2c300194824e4904b29b")
!248 = !{!249, !250, !251, !252, !253, !254}
!249 = !DIEnumerator(name: "PERF_EVENT_STATE_DEAD", value: -4)
!250 = !DIEnumerator(name: "PERF_EVENT_STATE_EXIT", value: -3)
!251 = !DIEnumerator(name: "PERF_EVENT_STATE_ERROR", value: -2)
!252 = !DIEnumerator(name: "PERF_EVENT_STATE_OFF", value: -1)
!253 = !DIEnumerator(name: "PERF_EVENT_STATE_INACTIVE", value: 0)
!254 = !DIEnumerator(name: "PERF_EVENT_STATE_ACTIVE", value: 1)
!255 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "trace_reg", file: !256, line: 253, baseType: !7, size: 32, elements: !257)
!256 = !DIFile(filename: "./include/linux/trace_events.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85bf8311371fd36a6792d4cca4559454")
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265}
!258 = !DIEnumerator(name: "TRACE_REG_REGISTER", value: 0)
!259 = !DIEnumerator(name: "TRACE_REG_UNREGISTER", value: 1)
!260 = !DIEnumerator(name: "TRACE_REG_PERF_REGISTER", value: 2)
!261 = !DIEnumerator(name: "TRACE_REG_PERF_UNREGISTER", value: 3)
!262 = !DIEnumerator(name: "TRACE_REG_PERF_OPEN", value: 4)
!263 = !DIEnumerator(name: "TRACE_REG_PERF_CLOSE", value: 5)
!264 = !DIEnumerator(name: "TRACE_REG_PERF_ADD", value: 6)
!265 = !DIEnumerator(name: "TRACE_REG_PERF_DEL", value: 7)
!266 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "print_line_t", file: !256, line: 158, baseType: !7, size: 32, elements: !267)
!267 = !{!268, !269, !270, !271}
!268 = !DIEnumerator(name: "TRACE_TYPE_PARTIAL_LINE", value: 0)
!269 = !DIEnumerator(name: "TRACE_TYPE_HANDLED", value: 1)
!270 = !DIEnumerator(name: "TRACE_TYPE_UNHANDLED", value: 2)
!271 = !DIEnumerator(name: "TRACE_TYPE_NO_CONSUME", value: 3)
!272 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !273, line: 9, baseType: !7, size: 32, elements: !274)
!273 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!274 = !{!275, !276, !277, !278, !279}
!275 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!276 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!277 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!278 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!279 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!280 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !281, line: 54, baseType: !7, size: 32, elements: !282)
!281 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!282 = !{!283, !284, !285}
!283 = !DIEnumerator(name: "USRQUOTA", value: 0)
!284 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!285 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!286 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !287, line: 15, baseType: !7, size: 32, elements: !288)
!287 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!288 = !{!289, !290, !291, !292}
!289 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!290 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!291 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!292 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tick_device_mode", file: !294, line: 7, baseType: !7, size: 32, elements: !295)
!294 = !DIFile(filename: "kernel/time/tick-sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0af3376d02c13b090a2952893b05c615")
!295 = !{!296, !297}
!296 = !DIEnumerator(name: "TICKDEV_MODE_PERIODIC", value: 0)
!297 = !DIEnumerator(name: "TICKDEV_MODE_ONESHOT", value: 1)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 10, baseType: !7, size: 32, elements: !300)
!299 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!300 = !{!301, !302}
!301 = !DIEnumerator(name: "false", value: 0)
!302 = !DIEnumerator(name: "true", value: 1)
!303 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tick_broadcast_state", file: !304, line: 61, baseType: !7, size: 32, elements: !305)
!304 = !DIFile(filename: "./include/linux/tick.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3e1e58d669c75211497f9e6bb3ab6476")
!305 = !{!306, !307}
!306 = !DIEnumerator(name: "TICK_BROADCAST_EXIT", value: 0)
!307 = !DIEnumerator(name: "TICK_BROADCAST_ENTER", value: 1)
!308 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "system_states", file: !309, line: 228, baseType: !7, size: 32, elements: !310)
!309 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!310 = !{!311, !312, !313, !314, !315, !316, !317, !318}
!311 = !DIEnumerator(name: "SYSTEM_BOOTING", value: 0)
!312 = !DIEnumerator(name: "SYSTEM_SCHEDULING", value: 1)
!313 = !DIEnumerator(name: "SYSTEM_FREEING_INITMEM", value: 2)
!314 = !DIEnumerator(name: "SYSTEM_RUNNING", value: 3)
!315 = !DIEnumerator(name: "SYSTEM_HALT", value: 4)
!316 = !DIEnumerator(name: "SYSTEM_POWER_OFF", value: 5)
!317 = !DIEnumerator(name: "SYSTEM_RESTART", value: 6)
!318 = !DIEnumerator(name: "SYSTEM_SUSPEND", value: 7)
!319 = !{!320, !40, !59, !6101, !324, !775, !42, !368, !350, !6102, !4342, !6103, !7, !6106, !6092, !6107, !6110, !4512}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tick_device", file: !294, line: 12, size: 128, elements: !322)
!322 = !{!323, !6100}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "evtdev", scope: !321, file: !294, line: 13, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clock_event_device", file: !6, line: 100, size: 2048, align: 512, elements: !326)
!326 = !{!327, !331, !335, !343, !344, !348, !349, !352, !353, !354, !355, !356, !360, !361, !362, !363, !364, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "event_handler", scope: !325, file: !6, line: 101, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !324}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_event", scope: !325, file: !6, line: 102, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!42, !59, !324}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "set_next_ktime", scope: !325, file: !6, line: 103, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!42, !339, !324}
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !340, line: 29, baseType: !341)
!340 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !104, line: 22, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !106, line: 30, baseType: !63)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "next_event", scope: !325, file: !6, line: 104, baseType: !339, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ns", scope: !325, file: !6, line: 105, baseType: !345, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !104, line: 23, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !106, line: 31, baseType: !347)
!347 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ns", scope: !325, file: !6, line: 106, baseType: !345, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !325, file: !6, line: 107, baseType: !350, size: 32, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !104, line: 21, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !106, line: 27, baseType: !7)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !325, file: !6, line: 108, baseType: !350, size: 32, offset: 416)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !325, file: !6, line: 109, baseType: !5, size: 32, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !325, file: !6, line: 110, baseType: !7, size: 32, offset: 480)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !325, file: !6, line: 111, baseType: !59, size: 64, offset: 512)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_periodic", scope: !325, file: !6, line: 113, baseType: !357, size: 64, offset: 576)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!42, !324}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot", scope: !325, file: !6, line: 114, baseType: !357, size: 64, offset: 640)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_oneshot_stopped", scope: !325, file: !6, line: 115, baseType: !357, size: 64, offset: 704)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "set_state_shutdown", scope: !325, file: !6, line: 116, baseType: !357, size: 64, offset: 768)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tick_resume", scope: !325, file: !6, line: 117, baseType: !357, size: 64, offset: 832)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "broadcast", scope: !325, file: !6, line: 119, baseType: !365, size: 64, offset: 896)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !371, line: 19, size: 64, elements: !372)
!371 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !370, file: !371, line: 19, baseType: !374, size: 64)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 1)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !325, file: !6, line: 120, baseType: !328, size: 64, offset: 960)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !325, file: !6, line: 121, baseType: !328, size: 64, offset: 1024)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "min_delta_ticks", scope: !325, file: !6, line: 122, baseType: !59, size: 64, offset: 1088)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "max_delta_ticks", scope: !325, file: !6, line: 123, baseType: !59, size: 64, offset: 1152)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !6, line: 125, baseType: !36, size: 64, offset: 1216)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !325, file: !6, line: 126, baseType: !42, size: 32, offset: 1280)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !325, file: !6, line: 127, baseType: !42, size: 32, offset: 1312)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "bound_on", scope: !325, file: !6, line: 128, baseType: !42, size: 32, offset: 1344)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !325, file: !6, line: 129, baseType: !368, size: 64, offset: 1408)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !325, file: !6, line: 130, baseType: !117, size: 128, offset: 1472)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !325, file: !6, line: 131, baseType: !388, size: 64, offset: 1600)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !390)
!390 = !{!391, !392, !393, !397, !5794, !5820, !5821, !5822, !5823, !5827, !5830, !5831, !5832, !5884, !5885, !5886, !5887, !5888, !5889, !5890, !5891, !5899, !5900, !5918, !5935, !5936, !5937, !5938, !5947, !5970, !5971, !5974, !5977, !5978, !5979, !5980, !5981, !5982, !5983, !5986, !5987, !6072, !6073, !6074, !6075, !6076, !6078, !6079, !6088, !6089, !6090, !6091, !6093, !6094, !6095, !6096, !6097, !6098, !6099}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !389, file: !15, line: 403, baseType: !14, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !389, file: !15, line: 406, baseType: !117, size: 128, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !389, file: !15, line: 409, baseType: !394, size: 448, offset: 192)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 448, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 56)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !389, file: !15, line: 417, baseType: !398, size: 768, offset: 640)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !399)
!399 = !{!400, !5788, !5789, !5790, !5793}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !398, file: !15, line: 46, baseType: !401, size: 512)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !402, line: 64, size: 512, elements: !403)
!402 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!403 = !{!404, !405, !406, !408, !455, !5777, !5778, !5783, !5784, !5785, !5786, !5787}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !401, file: !402, line: 65, baseType: !36, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !401, file: !402, line: 66, baseType: !117, size: 128, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !401, file: !402, line: 67, baseType: !407, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !401, file: !402, line: 68, baseType: !409, size: 64, offset: 256)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !402, line: 168, size: 768, elements: !411)
!411 = !{!412, !413, !414, !415}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !410, file: !402, line: 169, baseType: !117, size: 128)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !410, file: !402, line: 170, baseType: !79, size: 32, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !410, file: !402, line: 171, baseType: !401, size: 512, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !410, file: !402, line: 172, baseType: !416, size: 64, offset: 704)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !402, line: 133, size: 192, elements: !419)
!419 = !{!420, !427, !432}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !418, file: !402, line: 134, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!42, !425}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !418, file: !402, line: 135, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!36, !425}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !418, file: !402, line: 136, baseType: !433, size: 64, offset: 128)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!42, !425, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !402, line: 125, size: 20736, elements: !439)
!439 = !{!440, !445, !449, !450, !454}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !438, file: !402, line: 126, baseType: !441, size: 192)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 192, elements: !443)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!443 = !{!444}
!444 = !DISubrange(count: 3)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !438, file: !402, line: 127, baseType: !446, size: 4096, offset: 192)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 4096, elements: !447)
!447 = !{!448}
!448 = !DISubrange(count: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !438, file: !402, line: 128, baseType: !42, size: 32, offset: 4288)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !438, file: !402, line: 129, baseType: !451, size: 16384, offset: 4320)
!451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16384, elements: !452)
!452 = !{!453}
!453 = !DISubrange(count: 2048)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !438, file: !402, line: 130, baseType: !42, size: 32, offset: 20704)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !401, file: !402, line: 69, baseType: !456, size: 64, offset: 320)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !402, line: 116, size: 384, elements: !459)
!459 = !{!460, !464, !487, !5765, !5769, !5773}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !458, file: !402, line: 117, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !407}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !458, file: !402, line: 118, baseType: !465, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !468, line: 254, size: 128, elements: !469)
!468 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!469 = !{!470, !483}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !467, file: !468, line: 255, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!474, !407, !478, !442}
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !45, line: 66, baseType: !475)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !57, line: 73, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !57, line: 15, baseType: !477)
!477 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !468, line: 30, size: 128, elements: !480)
!480 = !{!481, !482}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !479, file: !468, line: 31, baseType: !36, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !479, file: !468, line: 32, baseType: !44, size: 16, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !467, file: !468, line: 256, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!474, !407, !478, !36, !55}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !458, file: !402, line: 119, baseType: !488, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !468, line: 84, size: 320, elements: !492)
!492 = !{!493, !494, !498, !5761, !5763}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !491, file: !468, line: 85, baseType: !36, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !491, file: !468, line: 86, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!44, !407, !478, !42}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !491, file: !468, line: 88, baseType: !499, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!44, !407, !502, !42}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !468, line: 175, size: 512, elements: !504)
!504 = !{!505, !506, !507, !508, !5752, !5756, !5757}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !503, file: !468, line: 176, baseType: !479, size: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !503, file: !468, line: 177, baseType: !55, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !503, file: !468, line: 178, baseType: !40, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !503, file: !468, line: 179, baseType: !509, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !22, line: 472, size: 1536, align: 64, elements: !514)
!514 = !{!515, !5587, !5588, !5589, !5590, !5591, !5592, !5593, !5594, !5746, !5747, !5748, !5749, !5750, !5751}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !513, file: !22, line: 473, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !22, line: 641, size: 4800, elements: !518)
!518 = !{!519, !520, !521, !529, !530, !537, !538, !541, !542, !5526, !5527, !5528, !5529, !5530, !5535, !5536, !5537, !5538, !5539, !5540, !5541, !5542, !5543, !5544, !5545, !5546, !5547, !5548, !5549, !5550, !5551, !5552, !5553, !5558, !5559, !5560, !5561, !5562, !5563, !5564, !5569, !5572, !5573, !5574, !5583, !5584, !5585, !5586}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !517, file: !22, line: 642, baseType: !44, size: 16)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !517, file: !22, line: 643, baseType: !46, size: 16, offset: 16)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !517, file: !22, line: 644, baseType: !522, size: 32, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !523, line: 23, baseType: !524)
!523 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !523, line: 21, size: 32, elements: !525)
!525 = !{!526}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !524, file: !523, line: 22, baseType: !527, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !45, line: 37, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !57, line: 49, baseType: !7)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !517, file: !22, line: 645, baseType: !117, size: 128, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !517, file: !22, line: 646, baseType: !531, size: 32, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !523, line: 28, baseType: !532)
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !523, line: 26, size: 32, elements: !533)
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !532, file: !523, line: 27, baseType: !535, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !45, line: 38, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !57, line: 50, baseType: !7)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !517, file: !22, line: 647, baseType: !7, size: 32, offset: 224)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !517, file: !22, line: 650, baseType: !539, size: 64, offset: 256)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !22, line: 607, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !517, file: !22, line: 651, baseType: !539, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !517, file: !22, line: 654, baseType: !543, size: 64, offset: 384)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !22, line: 1966, size: 2048, align: 512, elements: !546)
!546 = !{!547, !5360, !5370, !5374, !5378, !5382, !5386, !5390, !5394, !5398, !5402, !5403, !5407, !5411, !5448, !5477, !5481, !5487, !5491, !5495, !5499, !5503, !5507, !5513, !5517}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !545, file: !22, line: 1967, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!551, !516, !551, !7}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !553, line: 82, size: 1536, elements: !554)
!553 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!554 = !{!555, !556, !566, !574, !575, !590, !591, !595, !608, !5344, !5345, !5346, !5347, !5352, !5353, !5354}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !552, file: !553, line: 84, baseType: !7, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !552, file: !553, line: 85, baseType: !557, size: 32, offset: 32)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !558, line: 275, baseType: !559)
!558 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !558, line: 275, size: 32, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !559, file: !558, line: 275, baseType: !562, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !558, line: 69, baseType: !563)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !558, line: 64, size: 32, elements: !564)
!564 = !{!565}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !563, file: !558, line: 65, baseType: !7, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !552, file: !553, line: 86, baseType: !567, size: 128, offset: 64)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !568, line: 38, size: 128, elements: !569)
!568 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!569 = !{!570, !572}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !567, file: !568, line: 39, baseType: !571, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !567, file: !568, line: 39, baseType: !573, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !552, file: !553, line: 87, baseType: !551, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !552, file: !553, line: 88, baseType: !576, size: 128, offset: 256)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !553, line: 49, size: 128, elements: !577)
!577 = !{!578, !587}
!578 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !553, line: 50, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !553, line: 50, size: 64, elements: !580)
!580 = !{!581, !586}
!581 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !553, line: 51, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !579, file: !553, line: 51, size: 64, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !582, file: !553, line: 52, baseType: !350, size: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !582, file: !553, line: 52, baseType: !350, size: 32, offset: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !579, file: !553, line: 54, baseType: !345, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !576, file: !553, line: 56, baseType: !588, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !552, file: !553, line: 89, baseType: !516, size: 64, offset: 384)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !552, file: !553, line: 91, baseType: !592, size: 256, offset: 448)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !552, file: !553, line: 94, baseType: !596, size: 64, offset: 704)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !597, line: 25, size: 64, elements: !598)
!597 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, scope: !596, file: !597, line: 26, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !596, file: !597, line: 26, size: 64, elements: !601)
!601 = !{!602, !603}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !600, file: !597, line: 28, baseType: !346, size: 64, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, scope: !600, file: !597, line: 30, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !600, file: !597, line: 30, size: 64, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !604, file: !597, line: 31, baseType: !79, size: 32)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !604, file: !597, line: 32, baseType: !42, size: 32, offset: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !552, file: !553, line: 95, baseType: !609, size: 64, offset: 768)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !553, line: 128, size: 1024, align: 512, elements: !612)
!612 = !{!613, !617, !618, !625, !631, !635, !639, !643, !644, !648, !652, !5334, !5338}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !611, file: !553, line: 129, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!42, !551, !7}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !611, file: !553, line: 130, baseType: !614, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !611, file: !553, line: 131, baseType: !619, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!42, !622, !624}
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !552)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !611, file: !553, line: 132, baseType: !626, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!42, !622, !7, !36, !629}
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !611, file: !553, line: 134, baseType: !632, size: 64, offset: 256)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{!42, !622}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !611, file: !553, line: 135, baseType: !636, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!42, !551}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !611, file: !553, line: 136, baseType: !640, size: 64, offset: 384)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !551}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !611, file: !553, line: 137, baseType: !640, size: 64, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !611, file: !553, line: 138, baseType: !645, size: 64, offset: 512)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !551, !516}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !611, file: !553, line: 139, baseType: !649, size: 64, offset: 576)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!442, !551, !442, !42}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !611, file: !553, line: 140, baseType: !653, size: 64, offset: 640)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!656, !5333}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !658, line: 70, size: 256, elements: !659)
!658 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!659 = !{!660, !661, !5329, !5330}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !657, file: !658, line: 71, baseType: !551, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !657, file: !658, line: 72, baseType: !662, size: 64, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !22, line: 1190, size: 10752, elements: !664)
!664 = !{!665, !666, !669, !670, !671, !672, !721, !5039, !5079, !5164, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5181, !5185, !5186, !5189, !5192, !5195, !5198, !5199, !5200, !5241, !5264, !5265, !5266, !5267, !5268, !5269, !5272, !5273, !5279, !5280, !5281, !5282, !5283, !5298, !5299, !5300, !5301, !5302, !5303, !5304, !5305, !5320, !5321, !5322, !5323, !5324, !5325, !5326, !5327, !5328}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !663, file: !22, line: 1191, baseType: !117, size: 128)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !663, file: !22, line: 1192, baseType: !667, size: 32, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !45, line: 21, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !45, line: 18, baseType: !350)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !663, file: !22, line: 1193, baseType: !107, size: 8, offset: 160)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !663, file: !22, line: 1194, baseType: !59, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !663, file: !22, line: 1195, baseType: !61, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !663, file: !22, line: 1196, baseType: !673, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !22, line: 2366, size: 576, elements: !675)
!675 = !{!676, !677, !678, !685, !689, !693, !697, !698, !699, !709, !713, !714, !715, !717, !718, !719, !720}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !674, file: !22, line: 2367, baseType: !36, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !674, file: !22, line: 2368, baseType: !42, size: 32, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !674, file: !22, line: 2376, baseType: !679, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!42, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !684, line: 32, flags: DIFlagFwdDecl)
!684 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!685 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !674, file: !22, line: 2377, baseType: !686, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !688)
!688 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !22, line: 75, flags: DIFlagFwdDecl)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !674, file: !22, line: 2378, baseType: !690, size: 64, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!551, !673, !42, !36, !40}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !674, file: !22, line: 2380, baseType: !694, size: 64, offset: 320)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !662}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !674, file: !22, line: 2381, baseType: !388, size: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !674, file: !22, line: 2382, baseType: !673, size: 64, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !674, file: !22, line: 2383, baseType: !700, size: 64, offset: 512)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !45, line: 194, size: 64, elements: !701)
!701 = !{!702}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !700, file: !45, line: 195, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !45, line: 198, size: 128, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !45, line: 199, baseType: !703, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !704, file: !45, line: 199, baseType: !708, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !674, file: !22, line: 2385, baseType: !710, offset: 576)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !711, line: 206, elements: !712)
!711 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!712 = !{}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !674, file: !22, line: 2386, baseType: !710, offset: 576)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !674, file: !22, line: 2387, baseType: !710, offset: 576)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !674, file: !22, line: 2388, baseType: !716, offset: 576)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, elements: !443)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !674, file: !22, line: 2390, baseType: !710, offset: 576)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !674, file: !22, line: 2391, baseType: !710, offset: 576)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !674, file: !22, line: 2392, baseType: !710, offset: 576)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !674, file: !22, line: 2393, baseType: !710, offset: 576)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !663, file: !22, line: 1197, baseType: !722, size: 64, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !22, line: 2057, size: 1664, elements: !725)
!725 = !{!726, !730, !734, !735, !739, !745, !749, !750, !751, !755, !759, !763, !764, !765, !771, !776, !777, !4964, !4965, !4966, !4967, !4971, !4975, !5022, !5037, !5038}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !724, file: !22, line: 2058, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!516, !662}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !724, file: !22, line: 2059, baseType: !731, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !516}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !724, file: !22, line: 2060, baseType: !731, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !724, file: !22, line: 2062, baseType: !736, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !516, !42}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !724, file: !22, line: 2063, baseType: !740, size: 64, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!42, !516, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !22, line: 309, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !724, file: !22, line: 2064, baseType: !746, size: 64, offset: 320)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!42, !516}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !724, file: !22, line: 2065, baseType: !731, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !724, file: !22, line: 2066, baseType: !694, size: 64, offset: 448)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !724, file: !22, line: 2067, baseType: !752, size: 64, offset: 512)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!42, !662, !42}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !724, file: !22, line: 2068, baseType: !756, size: 64, offset: 576)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!42, !662, !21}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !724, file: !22, line: 2069, baseType: !760, size: 64, offset: 640)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!42, !662}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !724, file: !22, line: 2070, baseType: !756, size: 64, offset: 704)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !724, file: !22, line: 2071, baseType: !760, size: 64, offset: 768)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !724, file: !22, line: 2072, baseType: !766, size: 64, offset: 832)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!42, !551, !769}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !22, line: 62, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !724, file: !22, line: 2073, baseType: !772, size: 64, offset: 896)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!42, !662, !775, !442}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !724, file: !22, line: 2074, baseType: !694, size: 64, offset: 960)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !724, file: !22, line: 2076, baseType: !778, size: 64, offset: 1024)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!42, !781, !551}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !783, line: 17, size: 960, elements: !784)
!783 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!784 = !{!785, !786, !787, !788, !789, !790, !791, !792, !811, !832, !833, !4963}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !782, file: !783, line: 18, baseType: !442, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !782, file: !783, line: 19, baseType: !55, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !782, file: !783, line: 20, baseType: !55, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !782, file: !783, line: 21, baseType: !55, size: 64, offset: 192)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !782, file: !783, line: 22, baseType: !55, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !782, file: !783, line: 23, baseType: !61, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !782, file: !783, line: 24, baseType: !61, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !782, file: !783, line: 25, baseType: !793, size: 256, offset: 448)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !794, line: 66, size: 256, elements: !795)
!794 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!795 = !{!796, !803, !805, !810}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !793, file: !794, line: 67, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !798, line: 13, baseType: !799)
!798 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !45, line: 181, baseType: !800)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 179, size: 64, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !800, file: !45, line: 180, baseType: !341, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !793, file: !794, line: 68, baseType: !804, size: 32, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !88, line: 23, baseType: !87)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !793, file: !794, line: 70, baseType: !806, size: 32, offset: 96)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !807, line: 15, size: 32, elements: !808)
!807 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !806, file: !807, line: 20, baseType: !69, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !793, file: !794, line: 72, baseType: !117, size: 128, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !782, file: !783, line: 26, baseType: !812, size: 64, offset: 704)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !814)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !783, line: 32, size: 256, elements: !815)
!815 = !{!816, !820, !824, !828}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !814, file: !783, line: 33, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!40, !781, !60}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !814, file: !783, line: 34, baseType: !821, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !781, !40}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !814, file: !783, line: 35, baseType: !825, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!40, !781, !40, !60}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !814, file: !783, line: 36, baseType: !829, size: 64, offset: 192)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!42, !781, !40}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !782, file: !783, line: 27, baseType: !42, size: 32, offset: 768)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !782, file: !783, line: 28, baseType: !834, size: 64, offset: 832)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !22, line: 994, size: 1856, align: 64, elements: !837)
!837 = !{!838, !857, !858, !860, !861, !862, !863, !864, !4783, !4784, !4793, !4799, !4800, !4954, !4955, !4956, !4957, !4958, !4959, !4962}
!838 = !DIDerivedType(tag: DW_TAG_member, scope: !836, file: !22, line: 995, baseType: !839, size: 128)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !836, file: !22, line: 995, size: 128, elements: !840)
!840 = !{!841, !847, !856}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !839, file: !22, line: 996, baseType: !842, size: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !843, line: 60, size: 64, elements: !844)
!843 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!844 = !{!845}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !842, file: !843, line: 61, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !839, file: !22, line: 997, baseType: !848, size: 128, align: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !45, line: 232, size: 128, align: 64, elements: !849)
!849 = !{!850, !852}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !848, file: !45, line: 233, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !848, file: !45, line: 234, baseType: !853, size: 64, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !851}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !839, file: !22, line: 998, baseType: !7, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !836, file: !22, line: 1005, baseType: !79, size: 32, offset: 128)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !836, file: !22, line: 1006, baseType: !859, size: 32, offset: 160)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !45, line: 156, baseType: !7)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !836, file: !22, line: 1007, baseType: !797, size: 64, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !836, file: !22, line: 1008, baseType: !793, size: 256, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !836, file: !22, line: 1009, baseType: !61, size: 64, offset: 512)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !836, file: !22, line: 1010, baseType: !7, size: 32, offset: 576)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !836, file: !22, line: 1011, baseType: !865, size: 256, offset: 640)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !22, line: 948, size: 256, elements: !866)
!866 = !{!867, !888, !4779, !4780, !4781, !4782}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !865, file: !22, line: 949, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !869, line: 34, baseType: !870)
!869 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !869, line: 25, size: 64, elements: !871)
!871 = !{!872}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !870, file: !869, line: 26, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !874, line: 27, baseType: !875)
!874 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !874, line: 13, size: 64, elements: !876)
!876 = !{!877, !887}
!877 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !874, line: 14, baseType: !878, size: 32)
!878 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !875, file: !874, line: 14, size: 32, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !878, file: !874, line: 15, baseType: !69, size: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !874, line: 16, baseType: !882, size: 32)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !874, line: 16, size: 32, elements: !883)
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !882, file: !874, line: 18, baseType: !103, size: 8)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !882, file: !874, line: 19, baseType: !886, size: 24, offset: 8)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 24, elements: !443)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !875, file: !874, line: 26, baseType: !91, size: 32, offset: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !865, file: !22, line: 950, baseType: !889, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !273, line: 59, size: 768, elements: !891)
!891 = !{!892, !898, !899, !900, !904, !905, !906, !907}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !890, file: !273, line: 61, baseType: !893, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !894, line: 113, baseType: !895)
!894 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !894, line: 111, size: 32, elements: !896)
!896 = !{!897}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !895, file: !894, line: 112, baseType: !69, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !890, file: !273, line: 62, baseType: !7, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !890, file: !273, line: 63, baseType: !79, size: 32, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !890, file: !273, line: 65, baseType: !901, size: 256, offset: 128)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, size: 256, elements: !902)
!902 = !{!903}
!903 = !DISubrange(count: 4)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !890, file: !273, line: 66, baseType: !700, size: 64, offset: 384)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !890, file: !273, line: 68, baseType: !74, size: 192, offset: 448)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !890, file: !273, line: 69, baseType: !848, size: 128, align: 64, offset: 640)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !890, file: !273, line: 70, baseType: !908, offset: 768)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !909, elements: !1656)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !273, line: 54, size: 128, elements: !910)
!910 = !{!911, !912}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !909, file: !273, line: 55, baseType: !42, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !909, file: !273, line: 56, baseType: !913, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !915, line: 26, size: 1152, elements: !916)
!915 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!916 = !{!917, !931, !932, !933, !4768, !4769, !4770, !4771, !4774, !4775, !4776, !4777, !4778}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !914, file: !915, line: 27, baseType: !918, size: 192)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !919, line: 19, size: 192, elements: !920)
!919 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!920 = !{!921, !929, !930}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !918, file: !919, line: 20, baseType: !922, size: 128)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !923, line: 296, size: 128, elements: !924)
!923 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!924 = !{!925, !926, !928}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !922, file: !923, line: 297, baseType: !79, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !922, file: !923, line: 299, baseType: !927, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !45, line: 154, baseType: !7)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !922, file: !923, line: 300, baseType: !40, size: 64, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !918, file: !919, line: 21, baseType: !7, size: 32, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !918, file: !919, line: 22, baseType: !7, size: 32, offset: 160)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !914, file: !915, line: 28, baseType: !848, size: 128, align: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !914, file: !915, line: 29, baseType: !7, size: 32, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !914, file: !915, line: 30, baseType: !934, size: 64, offset: 384)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !936, line: 746, size: 58368, elements: !937)
!936 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!937 = !{!938, !946, !947, !948, !949, !950, !951, !952, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !1025, !1036, !1129, !1133, !1136, !1167, !1168, !1169, !1170, !1174, !1176, !1177, !1178, !1179, !1180, !1181, !1192, !1193, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1210, !1211, !1218, !1219, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1742, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1790, !1796, !1866, !1867, !1868, !1869, !1873, !1876, !1883, !1888, !1891, !1894, !1897, !2588, !2789, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2827, !2828, !2829, !2838, !2846, !2847, !2848, !2849, !2850, !2855, !2856, !2857, !2860, !2861, !2864, !2867, !2870, !2878, !2881, !2882, !2968, !2969, !2970, !2971, !2972, !2978, !2979, !2980, !2981, !2982, !2983, !2986, !2989, !2990, !2993, !2994, !2995, !3033, !3034, !3035, !3036, !3037, !3038, !3051, !3052, !3053, !3054, !3055, !3056, !3057, !3058, !3059, !3070, !3073, !3079, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3091, !3163, !3165, !3166, !3167, !3168, !3169, !3170, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3200, !3201, !3202}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !935, file: !936, line: 752, baseType: !939, size: 192)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !940, line: 56, size: 192, elements: !941)
!940 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!941 = !{!942, !943, !944, !945}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !939, file: !940, line: 57, baseType: !59, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !939, file: !940, line: 58, baseType: !59, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !939, file: !940, line: 59, baseType: !350, size: 32, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !939, file: !940, line: 61, baseType: !350, size: 32, offset: 160)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !935, file: !936, line: 754, baseType: !7, size: 32, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !935, file: !936, line: 767, baseType: !40, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !935, file: !936, line: 768, baseType: !893, size: 32, offset: 320)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !935, file: !936, line: 770, baseType: !7, size: 32, offset: 352)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !935, file: !936, line: 771, baseType: !7, size: 32, offset: 384)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !935, file: !936, line: 774, baseType: !42, size: 32, offset: 416)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !935, file: !936, line: 775, baseType: !953, size: 128, offset: 448)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !954, line: 58, size: 128, elements: !955)
!954 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!955 = !{!956, !957, !962, !963}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !953, file: !954, line: 59, baseType: !842, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !954, line: 60, baseType: !958, size: 32, offset: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !953, file: !954, line: 60, size: 32, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !958, file: !954, line: 61, baseType: !7, size: 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !958, file: !954, line: 62, baseType: !69, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !953, file: !954, line: 65, baseType: !113, size: 16, offset: 96)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !953, file: !954, line: 65, baseType: !113, size: 16, offset: 112)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !935, file: !936, line: 776, baseType: !7, size: 32, offset: 576)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !935, file: !936, line: 777, baseType: !59, size: 64, offset: 640)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !935, file: !936, line: 778, baseType: !934, size: 64, offset: 704)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !935, file: !936, line: 787, baseType: !42, size: 32, offset: 768)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !935, file: !936, line: 788, baseType: !42, size: 32, offset: 800)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !935, file: !936, line: 790, baseType: !42, size: 32, offset: 832)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !935, file: !936, line: 792, baseType: !42, size: 32, offset: 864)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !935, file: !936, line: 793, baseType: !42, size: 32, offset: 896)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !935, file: !936, line: 794, baseType: !42, size: 32, offset: 928)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !935, file: !936, line: 795, baseType: !7, size: 32, offset: 960)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !935, file: !936, line: 797, baseType: !975, size: 2048, offset: 1024)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !936, line: 551, size: 2048, elements: !976)
!976 = !{!977, !982, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1004, !1007, !1008, !1009}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !975, file: !936, line: 553, baseType: !978, size: 128)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !936, line: 411, size: 128, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !978, file: !936, line: 412, baseType: !59, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !978, file: !936, line: 413, baseType: !350, size: 32, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !975, file: !936, line: 554, baseType: !983, size: 192, align: 64, offset: 128)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !984, line: 5, size: 192, align: 64, elements: !985)
!984 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!985 = !{!986, !987, !989}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !983, file: !984, line: 6, baseType: !59, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !983, file: !984, line: 7, baseType: !988, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !983, file: !984, line: 8, baseType: !988, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !975, file: !936, line: 555, baseType: !345, size: 64, offset: 320)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !975, file: !936, line: 556, baseType: !345, size: 64, offset: 384)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !975, file: !936, line: 558, baseType: !117, size: 128, offset: 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !975, file: !936, line: 559, baseType: !7, size: 32, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !975, file: !936, line: 561, baseType: !345, size: 64, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !975, file: !936, line: 562, baseType: !345, size: 64, offset: 704)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !975, file: !936, line: 563, baseType: !345, size: 64, offset: 768)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !975, file: !936, line: 564, baseType: !345, size: 64, offset: 832)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !975, file: !936, line: 565, baseType: !341, size: 64, offset: 896)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !975, file: !936, line: 566, baseType: !345, size: 64, offset: 960)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !975, file: !936, line: 568, baseType: !345, size: 64, offset: 1024)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !975, file: !936, line: 571, baseType: !42, size: 32, offset: 1088)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !975, file: !936, line: 572, baseType: !1003, size: 64, offset: 1152)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !975, file: !936, line: 574, baseType: !1005, size: 64, offset: 1216)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !936, line: 49, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !975, file: !936, line: 576, baseType: !1005, size: 64, offset: 1280)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !975, file: !936, line: 578, baseType: !59, size: 64, offset: 1344)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !975, file: !936, line: 588, baseType: !1010, size: 512, align: 512, offset: 1536)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !936, line: 497, size: 512, align: 512, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1010, file: !936, line: 498, baseType: !345, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1010, file: !936, line: 499, baseType: !345, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1010, file: !936, line: 500, baseType: !345, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1010, file: !936, line: 501, baseType: !350, size: 32, offset: 192)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1010, file: !936, line: 502, baseType: !350, size: 32, offset: 224)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1010, file: !936, line: 503, baseType: !59, size: 64, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1010, file: !936, line: 504, baseType: !59, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1010, file: !936, line: 505, baseType: !59, size: 64, offset: 384)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1010, file: !936, line: 506, baseType: !1021, size: 64, align: 64, offset: 448)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !936, line: 445, size: 64, align: 64, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1021, file: !936, line: 446, baseType: !7, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1021, file: !936, line: 447, baseType: !7, size: 32, offset: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !935, file: !936, line: 798, baseType: !1026, size: 384, offset: 3072)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !936, line: 592, size: 384, elements: !1027)
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1034}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1026, file: !936, line: 593, baseType: !117, size: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1026, file: !936, line: 594, baseType: !59, size: 64, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1026, file: !936, line: 595, baseType: !59, size: 64, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1026, file: !936, line: 596, baseType: !7, size: 32, offset: 256)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1026, file: !936, line: 597, baseType: !46, size: 16, offset: 288)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1026, file: !936, line: 598, baseType: !46, size: 16, offset: 304)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1026, file: !936, line: 600, baseType: !1035, size: 64, offset: 320)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !935, file: !936, line: 799, baseType: !1037, size: 1792, offset: 3456)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !936, line: 610, size: 1792, elements: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1126, !1127}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1037, file: !936, line: 611, baseType: !983, size: 192, align: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1037, file: !936, line: 618, baseType: !345, size: 64, offset: 192)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1037, file: !936, line: 619, baseType: !345, size: 64, offset: 256)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1037, file: !936, line: 620, baseType: !345, size: 64, offset: 320)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1037, file: !936, line: 621, baseType: !345, size: 64, offset: 384)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1037, file: !936, line: 622, baseType: !345, size: 64, offset: 448)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1037, file: !936, line: 629, baseType: !341, size: 64, offset: 512)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1037, file: !936, line: 630, baseType: !345, size: 64, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1037, file: !936, line: 631, baseType: !7, size: 32, offset: 640)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1037, file: !936, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1037, file: !936, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1037, file: !936, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1037, file: !936, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1037, file: !936, line: 662, baseType: !1053, size: 512, offset: 704)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !27, line: 118, size: 512, elements: !1054)
!1054 = !{!1055, !1061, !1062, !1067, !1122, !1123, !1124, !1125}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1053, file: !27, line: 119, baseType: !1056, size: 256)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1057, line: 9, size: 256, elements: !1058)
!1057 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1058 = !{!1059, !1060}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1056, file: !1057, line: 10, baseType: !983, size: 192, align: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1056, file: !1057, line: 11, baseType: !339, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1053, file: !27, line: 120, baseType: !339, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1053, file: !27, line: 121, baseType: !1063, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!26, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1053, file: !27, line: 122, baseType: !1068, size: 64, offset: 384)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !27, line: 159, size: 512, align: 512, elements: !1070)
!1070 = !{!1071, !1096, !1097, !1100, !1105, !1106, !1117, !1121}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1069, file: !27, line: 160, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !27, line: 215, size: 4608, align: 512, elements: !1074)
!1074 = !{!1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1073, file: !27, line: 216, baseType: !804, size: 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1073, file: !27, line: 217, baseType: !7, size: 32, offset: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1073, file: !27, line: 218, baseType: !7, size: 32, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1073, file: !27, line: 219, baseType: !7, size: 32, offset: 96)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1073, file: !27, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1073, file: !27, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1073, file: !27, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1073, file: !27, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1073, file: !27, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1073, file: !27, line: 226, baseType: !7, size: 32, offset: 160)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1073, file: !27, line: 227, baseType: !46, size: 16, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1073, file: !27, line: 228, baseType: !46, size: 16, offset: 208)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1073, file: !27, line: 229, baseType: !7, size: 32, offset: 224)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1073, file: !27, line: 235, baseType: !339, size: 64, offset: 256)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1073, file: !27, line: 236, baseType: !1066, size: 64, offset: 320)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1073, file: !27, line: 237, baseType: !339, size: 64, offset: 384)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1073, file: !27, line: 238, baseType: !1066, size: 64, offset: 448)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1073, file: !27, line: 239, baseType: !1093, size: 4096, align: 512, offset: 512)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1069, size: 4096, align: 512, elements: !1094)
!1094 = !{!1095}
!1095 = !DISubrange(count: 8)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1069, file: !27, line: 161, baseType: !7, size: 32, offset: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1069, file: !27, line: 162, baseType: !1098, size: 32, offset: 96)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !45, line: 32, baseType: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !57, line: 96, baseType: !42)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1069, file: !27, line: 163, baseType: !1101, size: 32, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !558, line: 274, baseType: !1102)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !558, line: 274, size: 32, elements: !1103)
!1103 = !{!1104}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1102, file: !558, line: 274, baseType: !562, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1069, file: !27, line: 164, baseType: !1066, size: 64, offset: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1069, file: !27, line: 165, baseType: !1107, size: 128, offset: 256)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1057, line: 14, size: 128, elements: !1108)
!1108 = !{!1109}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1107, file: !1057, line: 15, baseType: !1110, size: 128)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !984, line: 26, size: 128, elements: !1111)
!1111 = !{!1112, !1116}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1110, file: !984, line: 27, baseType: !1113, size: 64)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !984, line: 12, size: 64, elements: !1114)
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1113, file: !984, line: 13, baseType: !988, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1110, file: !984, line: 28, baseType: !988, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1069, file: !27, line: 166, baseType: !1118, size: 64, offset: 384)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!339}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1069, file: !27, line: 167, baseType: !339, size: 64, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1053, file: !27, line: 123, baseType: !103, size: 8, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1053, file: !27, line: 124, baseType: !103, size: 8, offset: 456)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1053, file: !27, line: 125, baseType: !103, size: 8, offset: 464)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1053, file: !27, line: 126, baseType: !103, size: 8, offset: 472)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1037, file: !936, line: 671, baseType: !1053, size: 512, offset: 1216)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1037, file: !936, line: 679, baseType: !1128, size: 64, offset: 1728)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !935, file: !936, line: 800, baseType: !1130, size: 64, offset: 5248)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1132)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !936, line: 800, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !935, file: !936, line: 809, baseType: !1134, size: 64, offset: 5312)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !936, line: 70, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !935, file: !936, line: 825, baseType: !1137, size: 2048, align: 512, offset: 5632)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !936, line: 509, size: 2048, align: 512, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1137, file: !936, line: 511, baseType: !345, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1137, file: !936, line: 512, baseType: !345, size: 64, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1137, file: !936, line: 513, baseType: !345, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1137, file: !936, line: 514, baseType: !345, size: 64, offset: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1137, file: !936, line: 515, baseType: !345, size: 64, offset: 256)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1137, file: !936, line: 516, baseType: !345, size: 64, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1137, file: !936, line: 518, baseType: !345, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1137, file: !936, line: 519, baseType: !345, size: 64, offset: 448)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1137, file: !936, line: 520, baseType: !341, size: 64, offset: 512)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1137, file: !936, line: 522, baseType: !345, size: 64, offset: 576)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1137, file: !936, line: 523, baseType: !345, size: 64, offset: 640)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1137, file: !936, line: 524, baseType: !341, size: 64, offset: 704)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1137, file: !936, line: 526, baseType: !341, size: 64, offset: 768)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1137, file: !936, line: 527, baseType: !345, size: 64, offset: 832)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1137, file: !936, line: 529, baseType: !345, size: 64, offset: 896)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1137, file: !936, line: 530, baseType: !345, size: 64, offset: 960)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1137, file: !936, line: 531, baseType: !345, size: 64, offset: 1024)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1137, file: !936, line: 532, baseType: !345, size: 64, offset: 1088)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1137, file: !936, line: 533, baseType: !345, size: 64, offset: 1152)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1137, file: !936, line: 535, baseType: !345, size: 64, offset: 1216)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1137, file: !936, line: 536, baseType: !345, size: 64, offset: 1280)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1137, file: !936, line: 537, baseType: !345, size: 64, offset: 1344)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1137, file: !936, line: 538, baseType: !345, size: 64, offset: 1408)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1137, file: !936, line: 539, baseType: !345, size: 64, offset: 1472)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1137, file: !936, line: 540, baseType: !345, size: 64, offset: 1536)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1137, file: !936, line: 541, baseType: !345, size: 64, offset: 1600)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1137, file: !936, line: 542, baseType: !345, size: 64, offset: 1664)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1137, file: !936, line: 543, baseType: !345, size: 64, offset: 1728)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !935, file: !936, line: 833, baseType: !7, size: 32, offset: 7680)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !935, file: !936, line: 836, baseType: !7, size: 32, offset: 7712)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !935, file: !936, line: 837, baseType: !42, size: 32, offset: 7744)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !935, file: !936, line: 838, baseType: !1171, size: 64, offset: 7808)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1173)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !371, line: 19, baseType: !370)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !935, file: !936, line: 839, baseType: !1175, size: 64, offset: 7872)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !935, file: !936, line: 840, baseType: !1173, size: 64, offset: 7936)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !935, file: !936, line: 841, baseType: !40, size: 64, offset: 8000)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !935, file: !936, line: 843, baseType: !46, size: 16, offset: 8064)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !935, file: !936, line: 845, baseType: !46, size: 16, offset: 8080)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !935, file: !936, line: 848, baseType: !42, size: 32, offset: 8096)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !935, file: !936, line: 849, baseType: !1182, size: 32, offset: 8128)
!1182 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !936, line: 718, size: 32, elements: !1183)
!1183 = !{!1184, !1191}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1182, file: !936, line: 724, baseType: !1185, size: 32)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1182, file: !936, line: 719, size: 32, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1190}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1185, file: !936, line: 720, baseType: !103, size: 8)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1185, file: !936, line: 721, baseType: !103, size: 8, offset: 8)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1185, file: !936, line: 722, baseType: !103, size: 8, offset: 16)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1185, file: !936, line: 723, baseType: !103, size: 8, offset: 24)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1182, file: !936, line: 725, baseType: !350, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !935, file: !936, line: 850, baseType: !117, size: 128, offset: 8192)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !935, file: !936, line: 851, baseType: !1194, size: 64, offset: 8320)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !936, line: 60, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !935, file: !936, line: 855, baseType: !59, size: 64, offset: 8384)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !935, file: !936, line: 856, baseType: !103, size: 8, offset: 8448)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !935, file: !936, line: 857, baseType: !103, size: 8, offset: 8456)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !935, file: !936, line: 858, baseType: !42, size: 32, offset: 8480)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !935, file: !936, line: 859, baseType: !117, size: 128, offset: 8512)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !935, file: !936, line: 860, baseType: !42, size: 32, offset: 8640)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !935, file: !936, line: 861, baseType: !117, size: 128, offset: 8704)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !935, file: !936, line: 873, baseType: !1204, size: 256, offset: 8832)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !936, line: 376, size: 256, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1204, file: !936, line: 381, baseType: !59, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1204, file: !936, line: 384, baseType: !347, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1204, file: !936, line: 389, baseType: !347, size: 64, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1204, file: !936, line: 392, baseType: !347, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !935, file: !936, line: 875, baseType: !117, size: 128, offset: 9088)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !935, file: !936, line: 877, baseType: !1212, size: 320, offset: 9216)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1213, line: 86, size: 320, elements: !1214)
!1213 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1214 = !{!1215, !1216, !1217}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1212, file: !1213, line: 87, baseType: !42, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1212, file: !1213, line: 88, baseType: !117, size: 128, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1212, file: !1213, line: 89, baseType: !117, size: 128, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !935, file: !936, line: 878, baseType: !983, size: 192, align: 64, offset: 9536)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !935, file: !936, line: 881, baseType: !1220, size: 64, offset: 9728)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !134, line: 733, size: 10240, elements: !1222)
!1222 = !{!1223, !1654}
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !134, line: 734, baseType: !1224, size: 10240)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !134, line: 734, size: 10240, elements: !1225)
!1225 = !{!1226, !1230, !1243, !1248, !1249, !1250, !1251, !1252, !1253, !1262, !1263, !1264, !1270, !1271, !1272, !1273, !1274, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1311, !1323, !1326, !1374, !1375, !1376, !1379, !1640, !1641, !1644, !1645, !1646, !1652, !1653}
!1226 = !DIDerivedType(tag: DW_TAG_member, scope: !1224, file: !134, line: 739, baseType: !1227, size: 512, align: 512)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1224, file: !134, line: 739, size: 512, align: 512, elements: !1228)
!1228 = !{!1229}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1227, file: !134, line: 747, baseType: !69, size: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1224, file: !134, line: 750, baseType: !1231, size: 128, offset: 512)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1232, line: 218, size: 128, elements: !1233)
!1232 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1233 = !{!1234, !1241, !1242}
!1234 = !DIDerivedType(tag: DW_TAG_member, scope: !1231, file: !1232, line: 219, baseType: !1235, size: 32)
!1235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1231, file: !1232, line: 219, size: 32, elements: !1236)
!1236 = !{!1237, !1238}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1235, file: !1232, line: 220, baseType: !79, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1235, file: !1232, line: 221, baseType: !1239)
!1239 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1232, line: 197, baseType: !1240)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1232, line: 197, elements: !712)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1231, file: !1232, line: 223, baseType: !7, size: 32, offset: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1231, file: !1232, line: 224, baseType: !40, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1224, file: !134, line: 752, baseType: !1244, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!59, !1247, !59, !59, !59, !59}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1224, file: !134, line: 756, baseType: !59, size: 64, offset: 704)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1224, file: !134, line: 757, baseType: !59, size: 64, offset: 768)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1224, file: !134, line: 760, baseType: !59, size: 64, offset: 832)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1224, file: !134, line: 761, baseType: !59, size: 64, offset: 896)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1224, file: !134, line: 763, baseType: !59, size: 64, offset: 960)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1224, file: !134, line: 764, baseType: !1254, size: 64, offset: 1024)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1256, line: 299, baseType: !1257)
!1256 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1256, line: 299, size: 64, elements: !1258)
!1258 = !{!1259}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1257, file: !1256, line: 299, baseType: !1260, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1261, line: 18, baseType: !59)
!1261 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1224, file: !134, line: 773, baseType: !69, size: 32, offset: 1088)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1224, file: !134, line: 785, baseType: !69, size: 32, offset: 1120)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1224, file: !134, line: 795, baseType: !1265, size: 64, offset: 1152)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !134, line: 726, size: 128, elements: !1267)
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1266, file: !134, line: 727, baseType: !345, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1266, file: !134, line: 728, baseType: !42, size: 32, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1224, file: !134, line: 801, baseType: !59, size: 64, offset: 1216)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1224, file: !134, line: 804, baseType: !797, size: 64, offset: 1280)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1224, file: !134, line: 806, baseType: !42, size: 32, offset: 1344)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1224, file: !134, line: 808, baseType: !79, size: 32, offset: 1376)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1224, file: !134, line: 823, baseType: !1275, size: 320, offset: 1408)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1276, line: 48, size: 320, elements: !1277)
!1276 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1277 = !{!1278, !1279, !1280, !1281, !1282}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1275, file: !1276, line: 49, baseType: !797, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1275, file: !1276, line: 55, baseType: !797, size: 64, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1275, file: !1276, line: 57, baseType: !806, size: 32, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1275, file: !1276, line: 59, baseType: !804, size: 32, offset: 160)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1275, file: !1276, line: 60, baseType: !117, size: 128, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1224, file: !134, line: 825, baseType: !117, size: 128, offset: 1728)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1224, file: !134, line: 845, baseType: !42, size: 32, offset: 1856)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1224, file: !134, line: 849, baseType: !59, size: 64, offset: 1920)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1224, file: !134, line: 850, baseType: !59, size: 64, offset: 1984)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1224, file: !134, line: 852, baseType: !59, size: 64, offset: 2048)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1224, file: !134, line: 853, baseType: !59, size: 64, offset: 2112)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1224, file: !134, line: 854, baseType: !799, size: 64, offset: 2176)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1224, file: !134, line: 855, baseType: !59, size: 64, offset: 2240)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1224, file: !134, line: 856, baseType: !59, size: 64, offset: 2304)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1224, file: !134, line: 857, baseType: !59, size: 64, offset: 2368)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1224, file: !134, line: 858, baseType: !59, size: 64, offset: 2432)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1224, file: !134, line: 865, baseType: !562, size: 32, offset: 2496)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1224, file: !134, line: 867, baseType: !79, size: 32, offset: 2528)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1224, file: !134, line: 869, baseType: !59, size: 64, offset: 2560)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1224, file: !134, line: 869, baseType: !59, size: 64, offset: 2624)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1224, file: !134, line: 869, baseType: !59, size: 64, offset: 2688)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1224, file: !134, line: 869, baseType: !59, size: 64, offset: 2752)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1224, file: !134, line: 870, baseType: !59, size: 64, offset: 2816)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1224, file: !134, line: 870, baseType: !59, size: 64, offset: 2880)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1224, file: !134, line: 870, baseType: !59, size: 64, offset: 2944)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1224, file: !134, line: 871, baseType: !59, size: 64, offset: 3008)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1224, file: !134, line: 871, baseType: !59, size: 64, offset: 3072)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1224, file: !134, line: 871, baseType: !59, size: 64, offset: 3136)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1224, file: !134, line: 871, baseType: !59, size: 64, offset: 3200)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1224, file: !134, line: 873, baseType: !1308, size: 3328, offset: 3264)
!1308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 3328, elements: !1309)
!1309 = !{!1310}
!1310 = !DISubrange(count: 52)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1224, file: !134, line: 875, baseType: !1312, size: 1280, offset: 6592)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1313, size: 1280, elements: !902)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1314, line: 22, size: 320, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1315 = !{!1316, !1317, !1318, !1319}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1313, file: !1314, line: 23, baseType: !804, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1313, file: !1314, line: 24, baseType: !341, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1313, file: !1314, line: 26, baseType: !117, size: 128, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1313, file: !1314, line: 28, baseType: !1320, size: 64, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !104, line: 20, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !106, line: 26, baseType: !42)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1224, file: !134, line: 877, baseType: !1324, size: 64, offset: 7872)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !134, line: 877, flags: DIFlagFwdDecl)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1224, file: !134, line: 880, baseType: !1327, size: 1088, offset: 7936)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1328, line: 72, baseType: !1329)
!1328 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1328, line: 23, size: 1088, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1334, !1335, !1338, !1339, !1340, !1341, !1368, !1369, !1370}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1329, file: !1328, line: 28, baseType: !345, size: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1329, file: !1328, line: 38, baseType: !799, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1329, file: !1328, line: 40, baseType: !59, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1329, file: !1328, line: 43, baseType: !1275, size: 320, offset: 192)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1329, file: !1328, line: 44, baseType: !1336, size: 64, offset: 512)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1328, line: 44, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1329, file: !1328, line: 48, baseType: !59, size: 64, offset: 576)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1329, file: !1328, line: 59, baseType: !793, size: 256, offset: 640)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1329, file: !1328, line: 60, baseType: !40, size: 64, offset: 896)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1329, file: !1328, line: 61, baseType: !1342, size: 64, offset: 960)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1344)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1345, line: 13, size: 1216, elements: !1346)
!1345 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1344, file: !1345, line: 14, baseType: !40, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1344, file: !1345, line: 15, baseType: !59, size: 64, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1344, file: !1345, line: 17, baseType: !59, size: 64, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1344, file: !1345, line: 17, baseType: !59, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1344, file: !1345, line: 18, baseType: !59, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1344, file: !1345, line: 18, baseType: !59, size: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1344, file: !1345, line: 19, baseType: !1354, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1344, file: !1345, line: 21, baseType: !477, size: 64, offset: 448)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1344, file: !1345, line: 23, baseType: !477, size: 64, offset: 512)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1344, file: !1345, line: 24, baseType: !477, size: 64, offset: 576)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1344, file: !1345, line: 25, baseType: !477, size: 64, offset: 640)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1344, file: !1345, line: 26, baseType: !477, size: 64, offset: 704)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1344, file: !1345, line: 27, baseType: !477, size: 64, offset: 768)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1344, file: !1345, line: 28, baseType: !477, size: 64, offset: 832)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1344, file: !1345, line: 29, baseType: !477, size: 64, offset: 896)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1344, file: !1345, line: 30, baseType: !477, size: 64, offset: 960)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1344, file: !1345, line: 31, baseType: !477, size: 64, offset: 1024)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1344, file: !1345, line: 32, baseType: !477, size: 64, offset: 1088)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1344, file: !1345, line: 33, baseType: !477, size: 64, offset: 1152)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1329, file: !1328, line: 63, baseType: !69, size: 32, offset: 1024)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1329, file: !1328, line: 69, baseType: !113, size: 16, offset: 1056)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1329, file: !1328, line: 70, baseType: !1371, size: 16, offset: 1072)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !104, line: 18, baseType: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !106, line: 23, baseType: !1373)
!1373 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1224, file: !134, line: 882, baseType: !59, size: 64, offset: 9024)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1224, file: !134, line: 885, baseType: !79, size: 32, offset: 9088)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1224, file: !134, line: 886, baseType: !1377, size: 64, offset: 9152)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !134, line: 732, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1224, file: !134, line: 901, baseType: !1380, size: 64, offset: 9216)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1382, line: 68, size: 4800, elements: !1383)
!1382 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!1383 = !{!1384, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1423, !1424, !1427, !1428, !1538, !1539, !1551, !1621, !1622, !1636, !1638}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !1381, file: !1382, line: 69, baseType: !1385, size: 576)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !1382, line: 23, size: 576, elements: !1386)
!1386 = !{!1387, !1388}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !1385, file: !1382, line: 24, baseType: !350, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1385, file: !1382, line: 25, baseType: !1389, size: 512, offset: 64)
!1389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1385, file: !1382, line: 25, size: 512, elements: !1390)
!1390 = !{!1391, !1400}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !1389, file: !1382, line: 26, baseType: !1392, size: 480)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1393, size: 480, elements: !1398)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !1382, line: 17, size: 96, elements: !1394)
!1394 = !{!1395, !1396, !1397}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1393, file: !1382, line: 18, baseType: !350, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !1393, file: !1382, line: 19, baseType: !350, size: 32, offset: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1393, file: !1382, line: 20, baseType: !350, size: 32, offset: 64)
!1398 = !{!1399}
!1399 = !DISubrange(count: 5)
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1382, line: 27, baseType: !1401, size: 128)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1389, file: !1382, line: 27, size: 128, elements: !1402)
!1402 = !{!1403, !1405}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !1401, file: !1382, line: 28, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !1401, file: !1382, line: 29, baseType: !1404, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !1381, file: !1382, line: 70, baseType: !1385, size: 576, offset: 576)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !1381, file: !1382, line: 71, baseType: !1385, size: 576, offset: 1152)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1381, file: !1382, line: 72, baseType: !1380, size: 64, offset: 1728)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1381, file: !1382, line: 73, baseType: !42, size: 32, offset: 1792)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1381, file: !1382, line: 74, baseType: !522, size: 32, offset: 1824)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !1381, file: !1382, line: 75, baseType: !531, size: 32, offset: 1856)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1381, file: !1382, line: 76, baseType: !1413, size: 192, offset: 1920)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !1414, line: 9, size: 192, elements: !1415)
!1414 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!1415 = !{!1416, !1417, !1421, !1422}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !1413, file: !1414, line: 10, baseType: !797, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1413, file: !1414, line: 11, baseType: !1418, size: 64, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1420)
!1420 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !1414, line: 7, flags: DIFlagFwdDecl)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !1413, file: !1414, line: 12, baseType: !7, size: 32, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1413, file: !1414, line: 13, baseType: !893, size: 32, offset: 160)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1381, file: !1382, line: 77, baseType: !59, size: 64, offset: 2112)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !1381, file: !1382, line: 80, baseType: !1425, size: 8, offset: 2176)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !45, line: 35, baseType: !1426)
!1426 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !1381, file: !1382, line: 88, baseType: !117, size: 128, offset: 2240)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !1381, file: !1382, line: 89, baseType: !1429, size: 64, offset: 2368)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1431, line: 195, size: 1728, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1432 = !{!1433, !1434, !1437, !1442, !1443, !1446, !1447, !1454, !1455, !1456, !1457, !1460, !1461, !1462, !1463, !1464, !1502, !1523}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1430, file: !1431, line: 196, baseType: !893, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1430, file: !1431, line: 197, baseType: !1435, size: 32, offset: 32)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1431, line: 28, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !45, line: 104, baseType: !1321)
!1437 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1431, line: 198, baseType: !1438, size: 192, offset: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !1431, line: 198, size: 192, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1438, file: !1431, line: 199, baseType: !117, size: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1438, file: !1431, line: 200, baseType: !983, size: 192, align: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1430, file: !1431, line: 205, baseType: !1275, size: 320, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1430, file: !1431, line: 206, baseType: !1444, size: 64, offset: 576)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1431, line: 206, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1430, file: !1431, line: 207, baseType: !40, size: 64, offset: 640)
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1431, line: 208, baseType: !1448, size: 64, offset: 704)
!1448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !1431, line: 208, size: 64, elements: !1449)
!1449 = !{!1450, !1453}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1448, file: !1431, line: 209, baseType: !1451, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1452, line: 8, baseType: !342)
!1452 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1448, file: !1431, line: 210, baseType: !1451, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1430, file: !1431, line: 212, baseType: !1451, size: 64, offset: 768)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1430, file: !1431, line: 213, baseType: !522, size: 32, offset: 832)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1430, file: !1431, line: 214, baseType: !531, size: 32, offset: 864)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1430, file: !1431, line: 215, baseType: !1458, size: 32, offset: 896)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1431, line: 31, baseType: !1459)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !45, line: 110, baseType: !350)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1430, file: !1431, line: 216, baseType: !46, size: 16, offset: 928)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1430, file: !1431, line: 217, baseType: !46, size: 16, offset: 944)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1430, file: !1431, line: 221, baseType: !1373, size: 16, offset: 960)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1430, file: !1431, line: 228, baseType: !59, size: 64, offset: 1024)
!1464 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1431, line: 245, baseType: !1465, size: 320, offset: 1088)
!1465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !1431, line: 245, size: 320, elements: !1466)
!1466 = !{!1467, !1494}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1465, file: !1431, line: 246, baseType: !1468, size: 320)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1431, line: 114, size: 320, elements: !1469)
!1469 = !{!1470, !1471, !1483, !1486, !1493}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1468, file: !1431, line: 116, baseType: !59, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1468, file: !1431, line: 117, baseType: !1472, size: 64, offset: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !1431, line: 117, size: 64, elements: !1473)
!1473 = !{!1474, !1482}
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1472, file: !1431, line: 118, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1472, file: !1431, line: 118, size: 64, elements: !1476)
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1475, file: !1431, line: 120, baseType: !113, size: 16)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1475, file: !1431, line: 121, baseType: !1479, size: 48, offset: 16)
!1479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, elements: !1480)
!1480 = !{!1481}
!1481 = !DISubrange(count: 6)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1472, file: !1431, line: 127, baseType: !59, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1468, file: !1431, line: 129, baseType: !1484, size: 64, offset: 128)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1431, line: 102, flags: DIFlagFwdDecl)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1468, file: !1431, line: 130, baseType: !1487, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1431, line: 108, size: 192, elements: !1489)
!1489 = !{!1490, !1491, !1492}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1488, file: !1431, line: 109, baseType: !848, size: 128, align: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1488, file: !1431, line: 110, baseType: !893, size: 32, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1488, file: !1431, line: 111, baseType: !1425, size: 8, offset: 160)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1468, file: !1431, line: 131, baseType: !36, size: 64, offset: 256)
!1494 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1431, line: 247, baseType: !1495, size: 320)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1465, file: !1431, line: 247, size: 320, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1501}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1495, file: !1431, line: 248, baseType: !59, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1495, file: !1431, line: 249, baseType: !59, size: 64, offset: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1495, file: !1431, line: 250, baseType: !1484, size: 64, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1495, file: !1431, line: 251, baseType: !1487, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1495, file: !1431, line: 252, baseType: !442, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1431, line: 260, baseType: !1503, size: 256, offset: 1408)
!1503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !1431, line: 260, size: 256, elements: !1504)
!1504 = !{!1505, !1511}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1503, file: !1431, line: 261, baseType: !1506, size: 256)
!1506 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1431, line: 134, size: 256, elements: !1507)
!1507 = !{!1508, !1509}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1506, file: !1431, line: 135, baseType: !40, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1506, file: !1431, line: 136, baseType: !1510, size: 256)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !902)
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1503, file: !1431, line: 262, baseType: !1512, size: 256)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1503, file: !1431, line: 262, size: 256, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1512, file: !1431, line: 264, baseType: !117, size: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1512, file: !1431, line: 265, baseType: !1516, size: 128, offset: 128)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1517, line: 22, size: 128, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1518 = !{!1519, !1522}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1516, file: !1517, line: 23, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1517, line: 23, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1516, file: !1517, line: 24, baseType: !59, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1430, file: !1431, line: 280, baseType: !1524, size: 64, offset: 1664)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1431, line: 176, size: 192, elements: !1526)
!1526 = !{!1527, !1536, !1537}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1525, file: !1431, line: 177, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1431, line: 171, baseType: !1529)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!42, !1429, !1532, !1534, !1429}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1485)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1506)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1525, file: !1431, line: 178, baseType: !1429, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1525, file: !1431, line: 179, baseType: !1484, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !1381, file: !1382, line: 90, baseType: !1275, size: 320, offset: 2432)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1381, file: !1382, line: 97, baseType: !1540, size: 256, offset: 2752)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1541, line: 98, size: 256, elements: !1542)
!1541 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1542 = !{!1543, !1544, !1545}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1540, file: !1541, line: 99, baseType: !797, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1540, file: !1541, line: 100, baseType: !117, size: 128, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1540, file: !1541, line: 101, baseType: !1546, size: 64, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1541, line: 21, baseType: !1547)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !1550}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1381, file: !1382, line: 99, baseType: !1552, size: 768, offset: 3008)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !32, line: 199, size: 768, elements: !1553)
!1553 = !{!1554, !1559}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !1552, file: !32, line: 200, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!42, !1558}
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1552, file: !32, line: 201, baseType: !1560, size: 704, offset: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !32, line: 193, size: 704, elements: !1561)
!1561 = !{!1562, !1620}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1560, file: !32, line: 195, baseType: !1563, size: 640)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !32, line: 173, size: 640, elements: !1564)
!1564 = !{!1565, !1577, !1589, !1590, !1610, !1611, !1613, !1619}
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1563, file: !32, line: 174, baseType: !1566, size: 192)
!1566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1563, file: !32, line: 174, size: 192, elements: !1567)
!1567 = !{!1568, !1576}
!1568 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !32, line: 175, baseType: !1569, size: 192)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1566, file: !32, line: 175, size: 192, elements: !1570)
!1570 = !{!1571, !1572, !1573, !1574, !1575}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !1569, file: !32, line: 176, baseType: !53, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !1569, file: !32, line: 177, baseType: !42, size: 32, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1569, file: !32, line: 178, baseType: !42, size: 32, offset: 96)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1569, file: !32, line: 179, baseType: !42, size: 32, offset: 128)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !1569, file: !32, line: 180, baseType: !42, size: 32, offset: 160)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1566, file: !32, line: 182, baseType: !848, size: 128, align: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !1563, file: !32, line: 184, baseType: !1578, size: 64, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1580, line: 26, size: 256, elements: !1581)
!1580 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1581 = !{!1582, !1583}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1579, file: !1580, line: 27, baseType: !7, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1579, file: !1580, line: 28, baseType: !1584, size: 192, offset: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1585, line: 43, size: 192, elements: !1586)
!1585 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1586 = !{!1587, !1588}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1584, file: !1585, line: 44, baseType: !804, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1584, file: !1585, line: 45, baseType: !117, size: 128, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !1563, file: !32, line: 185, baseType: !53, size: 64, offset: 256)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1563, file: !32, line: 186, baseType: !1591, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !32, line: 204, size: 960, elements: !1593)
!1593 = !{!1594, !1595, !1599, !1606}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1592, file: !32, line: 205, baseType: !1552, size: 768)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1592, file: !32, line: 206, baseType: !1596, size: 64, offset: 768)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!1558, !1591}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1592, file: !32, line: 207, baseType: !1600, size: 64, offset: 832)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !1603, !1604, !1605}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1592, file: !32, line: 209, baseType: !1607, size: 64, offset: 896)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!42, !1603, !53}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1563, file: !32, line: 187, baseType: !1558, size: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1563, file: !32, line: 188, baseType: !1612, size: 64, offset: 448)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1563, file: !32, line: 189, baseType: !1614, size: 64, offset: 512)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !32, line: 157, size: 256, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1615, file: !32, line: 158, baseType: !983, size: 192, align: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1615, file: !32, line: 159, baseType: !1603, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1563, file: !32, line: 190, baseType: !700, size: 64, offset: 576)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1560, file: !32, line: 196, baseType: !1113, size: 64, offset: 640)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !1381, file: !1382, line: 100, baseType: !1603, size: 64, offset: 3776)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1381, file: !1382, line: 102, baseType: !1623, size: 64, offset: 3840)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1382, line: 107, size: 1152, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629, !1630, !1634}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1624, file: !1382, line: 108, baseType: !704, size: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1624, file: !1382, line: 109, baseType: !1380, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1624, file: !1382, line: 110, baseType: !522, size: 32, offset: 192)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1624, file: !1382, line: 111, baseType: !69, size: 32, offset: 224)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1624, file: !1382, line: 112, baseType: !1631, size: 640, offset: 256)
!1631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 640, elements: !1632)
!1632 = !{!1633}
!1633 = !DISubrange(count: 10)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1624, file: !1382, line: 113, baseType: !1635, size: 256, offset: 896)
!1635 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 256, elements: !902)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !1381, file: !1382, line: 103, baseType: !1637, size: 640, offset: 3904)
!1637 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 640, elements: !1632)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !1381, file: !1382, line: 104, baseType: !1639, size: 256, offset: 4544)
!1639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 256, elements: !902)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1224, file: !134, line: 904, baseType: !1247, size: 64, offset: 9280)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1224, file: !134, line: 906, baseType: !1642, size: 64, offset: 9344)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !134, line: 906, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1224, file: !134, line: 930, baseType: !69, size: 32, offset: 9408)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1224, file: !134, line: 933, baseType: !69, size: 32, offset: 9440)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1224, file: !134, line: 935, baseType: !1647, size: 64, offset: 9472)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !158, line: 103, size: 64, elements: !1648)
!1648 = !{!1649}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1647, file: !158, line: 104, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !158, line: 101, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1224, file: !134, line: 940, baseType: !797, size: 64, offset: 9536)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1224, file: !134, line: 942, baseType: !1540, size: 256, offset: 9600)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1221, file: !134, line: 986, baseType: !1655, offset: 10240)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, elements: !1656)
!1656 = !{!1657}
!1657 = !DISubrange(count: -1)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !935, file: !936, line: 882, baseType: !1220, size: 64, offset: 9792)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !935, file: !936, line: 884, baseType: !42, size: 32, offset: 9856)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !935, file: !936, line: 885, baseType: !42, size: 32, offset: 9888)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !935, file: !936, line: 886, baseType: !42, size: 32, offset: 9920)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !935, file: !936, line: 888, baseType: !42, size: 32, offset: 9952)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !935, file: !936, line: 890, baseType: !59, size: 64, offset: 9984)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !935, file: !936, line: 893, baseType: !7, size: 32, offset: 10048)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !935, file: !936, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !935, file: !936, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !935, file: !936, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !935, file: !936, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !935, file: !936, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !935, file: !936, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !935, file: !936, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !935, file: !936, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !935, file: !936, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !935, file: !936, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !935, file: !936, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !935, file: !936, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !935, file: !936, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !935, file: !936, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !935, file: !936, line: 969, baseType: !59, size: 64, offset: 10176)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !935, file: !936, line: 971, baseType: !1681, size: 448, offset: 10240)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !128, line: 25, size: 448, elements: !1682)
!1682 = !{!1683, !1684, !1689}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1681, file: !128, line: 26, baseType: !59, size: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1681, file: !128, line: 27, baseType: !1685, size: 64, offset: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!477, !1688}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !128, line: 28, baseType: !1690, size: 320, offset: 128)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1681, file: !128, line: 28, size: 320, elements: !1691)
!1691 = !{!1692, !1702, !1727}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1690, file: !128, line: 37, baseType: !1693, size: 320)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !128, line: 30, size: 320, elements: !1694)
!1694 = !{!1695, !1697, !1698, !1699, !1700, !1701}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1693, file: !128, line: 31, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1693, file: !128, line: 32, baseType: !350, size: 32, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1693, file: !128, line: 33, baseType: !350, size: 32, offset: 96)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1693, file: !128, line: 34, baseType: !350, size: 32, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1693, file: !128, line: 35, baseType: !345, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1693, file: !128, line: 36, baseType: !1696, size: 64, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1690, file: !128, line: 47, baseType: !1703, size: 192)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !128, line: 39, size: 192, elements: !1704)
!1704 = !{!1705, !1706, !1707, !1726}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1703, file: !128, line: 40, baseType: !1098, size: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1703, file: !128, line: 41, baseType: !127, size: 32, offset: 32)
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1703, file: !128, line: 42, baseType: !1708, size: 64, offset: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1703, file: !128, line: 42, size: 64, elements: !1709)
!1709 = !{!1710, !1718}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1708, file: !128, line: 43, baseType: !1711, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1713, line: 7, size: 128, elements: !1714)
!1713 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1714 = !{!1715, !1717}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1712, file: !1713, line: 8, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !57, line: 93, baseType: !63)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1712, file: !1713, line: 9, baseType: !63, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1708, file: !128, line: 44, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1721, line: 7, size: 64, elements: !1722)
!1721 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1722 = !{!1723, !1725}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1720, file: !1721, line: 8, baseType: !1724, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1721, line: 5, baseType: !1321)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1720, file: !1721, line: 9, baseType: !1321, size: 32, offset: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1703, file: !128, line: 46, baseType: !345, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1690, file: !128, line: 55, baseType: !1728, size: 256)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1690, file: !128, line: 49, size: 256, elements: !1729)
!1729 = !{!1730, !1738, !1739, !1740, !1741}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1728, file: !128, line: 50, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1733, line: 36, size: 64, elements: !1734)
!1733 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1734 = !{!1735, !1736, !1737}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1732, file: !1733, line: 37, baseType: !42, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1732, file: !1733, line: 38, baseType: !1373, size: 16, offset: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1732, file: !1733, line: 39, baseType: !1373, size: 16, offset: 48)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1728, file: !128, line: 51, baseType: !42, size: 32, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1728, file: !128, line: 52, baseType: !42, size: 32, offset: 96)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1728, file: !128, line: 53, baseType: !59, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1728, file: !128, line: 54, baseType: !59, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !935, file: !936, line: 973, baseType: !1743, size: 32, offset: 10688)
!1743 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !45, line: 27, baseType: !1744)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !57, line: 28, baseType: !42)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !935, file: !936, line: 974, baseType: !1743, size: 32, offset: 10720)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !935, file: !936, line: 978, baseType: !59, size: 64, offset: 10752)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !935, file: !936, line: 987, baseType: !934, size: 64, offset: 10816)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !935, file: !936, line: 990, baseType: !934, size: 64, offset: 10880)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !935, file: !936, line: 995, baseType: !117, size: 128, offset: 10944)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !935, file: !936, line: 996, baseType: !117, size: 128, offset: 11072)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !935, file: !936, line: 997, baseType: !934, size: 64, offset: 11200)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !935, file: !936, line: 1005, baseType: !117, size: 128, offset: 11264)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !935, file: !936, line: 1006, baseType: !117, size: 128, offset: 11392)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !935, file: !936, line: 1009, baseType: !889, size: 64, offset: 11520)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !935, file: !936, line: 1010, baseType: !1756, size: 512, offset: 11584)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 512, elements: !902)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !935, file: !936, line: 1011, baseType: !117, size: 128, offset: 12096)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !935, file: !936, line: 1012, baseType: !117, size: 128, offset: 12224)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !935, file: !936, line: 1014, baseType: !1578, size: 64, offset: 12352)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !935, file: !936, line: 1017, baseType: !775, size: 64, offset: 12416)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !935, file: !936, line: 1020, baseType: !775, size: 64, offset: 12480)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !935, file: !936, line: 1023, baseType: !40, size: 64, offset: 12544)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !935, file: !936, line: 1025, baseType: !345, size: 64, offset: 12608)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !935, file: !936, line: 1026, baseType: !345, size: 64, offset: 12672)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !935, file: !936, line: 1031, baseType: !345, size: 64, offset: 12736)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !935, file: !936, line: 1032, baseType: !1767, size: 192, offset: 12800)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !936, line: 324, size: 192, elements: !1768)
!1768 = !{!1769, !1770, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1767, file: !936, line: 326, baseType: !345, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1767, file: !936, line: 327, baseType: !345, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1767, file: !936, line: 328, baseType: !804, size: 32, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !935, file: !936, line: 1041, baseType: !59, size: 64, offset: 12992)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !935, file: !936, line: 1042, baseType: !59, size: 64, offset: 13056)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !935, file: !936, line: 1045, baseType: !345, size: 64, offset: 13120)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !935, file: !936, line: 1048, baseType: !345, size: 64, offset: 13184)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !935, file: !936, line: 1051, baseType: !59, size: 64, offset: 13248)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !935, file: !936, line: 1052, baseType: !59, size: 64, offset: 13312)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !935, file: !936, line: 1055, baseType: !1779, size: 640, offset: 13376)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1780, line: 132, size: 640, elements: !1781)
!1780 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1781 = !{!1782, !1788, !1789}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1779, file: !1780, line: 133, baseType: !1783, size: 576)
!1783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1784, size: 576, elements: !443)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1780, line: 117, size: 192, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1784, file: !1780, line: 118, baseType: !345, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1784, file: !1780, line: 119, baseType: !1107, size: 128, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1779, file: !1780, line: 134, baseType: !7, size: 32, offset: 576)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1779, file: !1780, line: 135, baseType: !7, size: 32, offset: 608)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !935, file: !936, line: 1058, baseType: !1791, size: 448, offset: 14016)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1780, line: 144, size: 448, elements: !1792)
!1792 = !{!1793, !1794, !1795}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1791, file: !1780, line: 145, baseType: !848, size: 128, align: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1791, file: !1780, line: 146, baseType: !793, size: 256, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1791, file: !1780, line: 147, baseType: !7, size: 32, offset: 384)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !935, file: !936, line: 1064, baseType: !1797, size: 64, offset: 14464)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1799)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1800, line: 110, size: 1472, elements: !1801)
!1800 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1801 = !{!1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1851, !1852, !1853, !1861}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1799, file: !1800, line: 111, baseType: !797, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1799, file: !1800, line: 112, baseType: !522, size: 32, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1799, file: !1800, line: 113, baseType: !531, size: 32, offset: 96)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1799, file: !1800, line: 114, baseType: !522, size: 32, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1799, file: !1800, line: 115, baseType: !531, size: 32, offset: 160)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1799, file: !1800, line: 116, baseType: !522, size: 32, offset: 192)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1799, file: !1800, line: 117, baseType: !531, size: 32, offset: 224)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1799, file: !1800, line: 118, baseType: !522, size: 32, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1799, file: !1800, line: 119, baseType: !531, size: 32, offset: 288)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1799, file: !1800, line: 120, baseType: !7, size: 32, offset: 320)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1799, file: !1800, line: 121, baseType: !1813, size: 64, offset: 384)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1814, line: 24, baseType: !1815)
!1814 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1814, line: 24, size: 64, elements: !1816)
!1816 = !{!1817}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1815, file: !1814, line: 24, baseType: !345, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1799, file: !1800, line: 122, baseType: !1813, size: 64, offset: 448)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1799, file: !1800, line: 123, baseType: !1813, size: 64, offset: 512)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1799, file: !1800, line: 124, baseType: !1813, size: 64, offset: 576)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1799, file: !1800, line: 125, baseType: !1813, size: 64, offset: 640)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1799, file: !1800, line: 127, baseType: !107, size: 8, offset: 704)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1799, file: !1800, line: 129, baseType: !1429, size: 64, offset: 768)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1799, file: !1800, line: 130, baseType: !1429, size: 64, offset: 832)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1799, file: !1800, line: 131, baseType: !1429, size: 64, offset: 896)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1799, file: !1800, line: 132, baseType: !1429, size: 64, offset: 960)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1799, file: !1800, line: 135, baseType: !40, size: 64, offset: 1024)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1799, file: !1800, line: 137, baseType: !1829, size: 64, offset: 1088)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1831, line: 14, size: 1088, elements: !1832)
!1831 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1832 = !{!1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1830, file: !1831, line: 15, baseType: !893, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1830, file: !1831, line: 17, baseType: !1313, size: 320, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1830, file: !1831, line: 19, baseType: !59, size: 64, offset: 384)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1830, file: !1831, line: 20, baseType: !797, size: 64, offset: 448)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1830, file: !1831, line: 23, baseType: !704, size: 128, offset: 512)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1830, file: !1831, line: 24, baseType: !522, size: 32, offset: 640)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1830, file: !1831, line: 29, baseType: !797, size: 64, offset: 704)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1830, file: !1831, line: 36, baseType: !1841, size: 320, offset: 768)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1842, line: 15, size: 320, elements: !1843)
!1842 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1843 = !{!1844, !1845, !1846, !1847, !1848, !1849, !1850}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1841, file: !1842, line: 16, baseType: !804, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1841, file: !1842, line: 18, baseType: !42, size: 32, offset: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1841, file: !1842, line: 19, baseType: !42, size: 32, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1841, file: !1842, line: 20, baseType: !42, size: 32, offset: 96)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1841, file: !1842, line: 21, baseType: !42, size: 32, offset: 128)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1841, file: !1842, line: 22, baseType: !59, size: 64, offset: 192)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1841, file: !1842, line: 23, baseType: !59, size: 64, offset: 256)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1799, file: !1800, line: 138, baseType: !1380, size: 64, offset: 1152)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1799, file: !1800, line: 139, baseType: !1623, size: 64, offset: 1216)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1799, file: !1800, line: 140, baseType: !1854, size: 64, offset: 1280)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1800, line: 25, size: 64, elements: !1856)
!1856 = !{!1857, !1858, !1859}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1855, file: !1800, line: 26, baseType: !69, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1855, file: !1800, line: 27, baseType: !42, size: 32, offset: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1855, file: !1800, line: 28, baseType: !1860, offset: 64)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, elements: !1656)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1800, line: 142, baseType: !1862, size: 128, offset: 1344)
!1862 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !1800, line: 142, size: 128, elements: !1863)
!1863 = !{!1864, !1865}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1862, file: !1800, line: 143, baseType: !42, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1862, file: !1800, line: 144, baseType: !848, size: 128, align: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !935, file: !936, line: 1067, baseType: !1797, size: 64, offset: 14528)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !935, file: !936, line: 1070, baseType: !1797, size: 64, offset: 14592)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !935, file: !936, line: 1074, baseType: !1429, size: 64, offset: 14656)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !935, file: !936, line: 1084, baseType: !1870, size: 128, offset: 14720)
!1870 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !1871)
!1871 = !{!1872}
!1872 = !DISubrange(count: 16)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !935, file: !936, line: 1086, baseType: !1874, size: 64, offset: 14848)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !936, line: 55, flags: DIFlagFwdDecl)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !935, file: !936, line: 1089, baseType: !1877, size: 64, offset: 14912)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1878, line: 12, size: 64, elements: !1879)
!1878 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1879 = !{!1880}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1877, file: !1878, line: 13, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1878, line: 8, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !935, file: !936, line: 1090, baseType: !1884, size: 128, offset: 14976)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1885, line: 13, size: 128, elements: !1886)
!1885 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1886 = !{!1887}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1884, file: !1885, line: 14, baseType: !117, size: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !935, file: !936, line: 1097, baseType: !1889, size: 64, offset: 15104)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !936, line: 50, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !935, file: !936, line: 1100, baseType: !1892, size: 64, offset: 15168)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !936, line: 1100, flags: DIFlagFwdDecl)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !935, file: !936, line: 1103, baseType: !1895, size: 64, offset: 15232)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !936, line: 53, flags: DIFlagFwdDecl)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !935, file: !936, line: 1107, baseType: !1898, size: 64, offset: 15296)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1900, line: 31, size: 576, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!1901 = !{!1902, !1903, !1906, !1909, !1912, !1913, !1916, !1919, !1920}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1899, file: !1900, line: 32, baseType: !893, size: 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !1899, file: !1900, line: 33, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !1900, line: 9, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !1899, file: !1900, line: 34, baseType: !1907, size: 64, offset: 128)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !1900, line: 10, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !1899, file: !1900, line: 35, baseType: !1910, size: 64, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !1900, line: 8, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !1899, file: !1900, line: 36, baseType: !913, size: 64, offset: 256)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !1899, file: !1900, line: 37, baseType: !1914, size: 64, offset: 320)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1431, line: 34, flags: DIFlagFwdDecl)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1899, file: !1900, line: 38, baseType: !1917, size: 64, offset: 384)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !1900, line: 38, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !1899, file: !1900, line: 39, baseType: !1917, size: 64, offset: 448)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !1899, file: !1900, line: 40, baseType: !1921, size: 64, offset: 512)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !1923, line: 771, size: 384, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!1924 = !{!1925, !1926, !1927, !1928}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1922, file: !1923, line: 772, baseType: !1413, size: 192)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1922, file: !1923, line: 773, baseType: !1380, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1922, file: !1923, line: 774, baseType: !1623, size: 64, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !1922, file: !1923, line: 775, baseType: !1929, size: 64, offset: 320)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1931, line: 209, size: 4736, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!1932 = !{!1933, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1930, file: !1931, line: 215, baseType: !1934, size: 896)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1935, size: 896, elements: !2392)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !1931, line: 152, size: 1600, elements: !1937)
!1937 = !{!1938, !2443, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2566}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !1936, file: !1931, line: 154, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !1931, line: 389, size: 7872, elements: !1941)
!1941 = !{!1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !2343, !2360, !2361, !2365, !2366, !2367, !2368, !2369, !2370, !2389, !2390, !2394, !2395, !2396, !2418, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2430, !2433, !2434, !2441}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1940, file: !1931, line: 391, baseType: !1936, size: 1600)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1940, file: !1931, line: 393, baseType: !59, size: 64, offset: 1600)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1940, file: !1931, line: 401, baseType: !42, size: 32, offset: 1664)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !1940, file: !1931, line: 404, baseType: !42, size: 32, offset: 1696)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !1940, file: !1931, line: 417, baseType: !42, size: 32, offset: 1728)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !1940, file: !1931, line: 418, baseType: !42, size: 32, offset: 1760)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !1940, file: !1931, line: 419, baseType: !42, size: 32, offset: 1792)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !1940, file: !1931, line: 432, baseType: !42, size: 32, offset: 1824)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !1940, file: !1931, line: 433, baseType: !42, size: 32, offset: 1856)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !1940, file: !1931, line: 434, baseType: !42, size: 32, offset: 1888)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !1940, file: !1931, line: 436, baseType: !42, size: 32, offset: 1920)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !1940, file: !1931, line: 439, baseType: !7, size: 32, offset: 1952)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1940, file: !1931, line: 441, baseType: !1955, size: 64, offset: 1984)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !684, line: 190, size: 1152, elements: !1957)
!1957 = !{!1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !2335, !2336, !2337, !2338, !2339, !2342}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1956, file: !684, line: 191, baseType: !69, size: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1956, file: !684, line: 192, baseType: !69, size: 32, offset: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1956, file: !684, line: 202, baseType: !1955, size: 64, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1956, file: !684, line: 203, baseType: !36, size: 64, offset: 128)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1956, file: !684, line: 205, baseType: !983, size: 192, align: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1956, file: !684, line: 207, baseType: !1354, size: 64, offset: 384)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1956, file: !684, line: 208, baseType: !7, size: 32, offset: 448)
!1965 = !DIDerivedType(tag: DW_TAG_member, scope: !1956, file: !684, line: 209, baseType: !1966, size: 256, offset: 512)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1956, file: !684, line: 209, size: 256, elements: !1967)
!1967 = !{!1968, !1977, !1981}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1966, file: !684, line: 210, baseType: !1969, size: 256)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !684, line: 153, size: 256, elements: !1970)
!1970 = !{!1971, !1972, !1973, !1976}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1969, file: !684, line: 154, baseType: !59, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1969, file: !684, line: 156, baseType: !1113, size: 64, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1969, file: !684, line: 162, baseType: !1974, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !684, line: 162, flags: DIFlagFwdDecl)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1969, file: !684, line: 167, baseType: !59, size: 64, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1966, file: !684, line: 211, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !684, line: 170, size: 64, elements: !1979)
!1979 = !{!1980}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1978, file: !684, line: 171, baseType: !1955, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1966, file: !684, line: 212, baseType: !1982, size: 256)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !684, line: 174, size: 256, elements: !1983)
!1983 = !{!1984, !2330, !2333, !2334}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1982, file: !684, line: 175, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1987)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !684, line: 271, size: 768, elements: !1988)
!1988 = !{!1989, !2294, !2298, !2299, !2300, !2301, !2302, !2306, !2307, !2308, !2309, !2326}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1987, file: !684, line: 276, baseType: !1990, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!42, !1993}
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !684, line: 251, size: 1216, elements: !1995)
!1995 = !{!1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1994, file: !684, line: 253, baseType: !1955, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1994, file: !684, line: 254, baseType: !1247, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1994, file: !684, line: 255, baseType: !781, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1994, file: !684, line: 256, baseType: !40, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1994, file: !684, line: 259, baseType: !793, size: 256, offset: 256)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1994, file: !684, line: 260, baseType: !793, size: 256, offset: 512)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1994, file: !684, line: 261, baseType: !42, size: 32, offset: 768)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1994, file: !684, line: 262, baseType: !117, size: 128, offset: 832)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1994, file: !684, line: 263, baseType: !442, size: 64, offset: 960)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1994, file: !684, line: 265, baseType: !55, size: 64, offset: 1024)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1994, file: !684, line: 266, baseType: !1425, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1994, file: !684, line: 267, baseType: !1425, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1994, file: !684, line: 268, baseType: !2009, size: 64, offset: 1152)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2011)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2012, line: 563, size: 1024, elements: !2013)
!2012 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2013 = !{!2014, !2070, !2071, !2075, !2079, !2083, !2260, !2264, !2268, !2272, !2273, !2274, !2278, !2282, !2286, !2290}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2011, file: !2012, line: 564, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DISubroutineType(types: !2017)
!2017 = !{null, !2018}
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !134, line: 625, size: 1344, elements: !2020)
!2020 = !{!2021, !2030, !2031, !2037, !2044, !2045, !2050, !2051, !2056, !2057, !2060, !2061, !2062, !2063, !2064, !2065, !2068}
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !2019, file: !134, line: 628, baseType: !2022, size: 128)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2019, file: !134, line: 628, size: 128, elements: !2023)
!2023 = !{!2024, !2029}
!2024 = !DIDerivedType(tag: DW_TAG_member, scope: !2022, file: !134, line: 629, baseType: !2025, size: 128)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2022, file: !134, line: 629, size: 128, elements: !2026)
!2026 = !{!2027, !2028}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2025, file: !134, line: 631, baseType: !59, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2025, file: !134, line: 632, baseType: !59, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2022, file: !134, line: 635, baseType: !848, size: 128, align: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2019, file: !134, line: 639, baseType: !1220, size: 64, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2019, file: !134, line: 640, baseType: !2032, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1256, line: 297, baseType: !2033)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1256, line: 297, size: 64, elements: !2034)
!2034 = !{!2035}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2033, file: !1256, line: 297, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1261, line: 19, baseType: !59)
!2037 = !DIDerivedType(tag: DW_TAG_member, scope: !2019, file: !134, line: 646, baseType: !2038, size: 64, offset: 256)
!2038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2019, file: !134, line: 646, size: 64, elements: !2039)
!2039 = !{!2040, !2043}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2038, file: !134, line: 647, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2042)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !134, line: 542, baseType: !59)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2038, file: !134, line: 648, baseType: !2042, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2019, file: !134, line: 666, baseType: !42, size: 32, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2019, file: !134, line: 667, baseType: !2046, size: 64, offset: 384)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !134, line: 579, size: 320, elements: !2048)
!2048 = !{!2049}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2047, file: !134, line: 580, baseType: !1275, size: 320)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2019, file: !134, line: 670, baseType: !1425, size: 8, offset: 448)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2019, file: !134, line: 681, baseType: !2052, size: 256, offset: 512)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2019, file: !134, line: 678, size: 256, elements: !2053)
!2053 = !{!2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2052, file: !134, line: 679, baseType: !983, size: 192, align: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2052, file: !134, line: 680, baseType: !59, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2019, file: !134, line: 689, baseType: !117, size: 128, offset: 768)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2019, file: !134, line: 691, baseType: !2058, size: 64, offset: 896)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !134, line: 691, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2019, file: !134, line: 694, baseType: !2009, size: 64, offset: 960)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2019, file: !134, line: 697, baseType: !59, size: 64, offset: 1024)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2019, file: !134, line: 699, baseType: !1247, size: 64, offset: 1088)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2019, file: !134, line: 700, baseType: !40, size: 64, offset: 1152)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2019, file: !134, line: 711, baseType: !797, size: 64, offset: 1216)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2019, file: !134, line: 717, baseType: !2066, size: 64, offset: 1280)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !936, line: 54, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2019, file: !134, line: 722, baseType: !2069, offset: 1344)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !134, line: 570, elements: !712)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2011, file: !2012, line: 569, baseType: !2015, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2011, file: !2012, line: 571, baseType: !2072, size: 64, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DISubroutineType(types: !2074)
!2074 = !{!42, !2018, !59}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2011, file: !2012, line: 572, baseType: !2076, size: 64, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!42, !2018}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2011, file: !2012, line: 578, baseType: !2080, size: 64, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!42, !2018, !59, !59, !59}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2011, file: !2012, line: 580, baseType: !2084, size: 64, offset: 320)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!2087, !2088}
!2087 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !134, line: 1184, baseType: !7)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2089, size: 64)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2012, line: 512, size: 896, elements: !2090)
!2090 = !{!2091, !2099, !2100, !2107, !2114, !2124, !2253, !2254, !2256, !2258}
!2091 = !DIDerivedType(tag: DW_TAG_member, scope: !2089, file: !2012, line: 513, baseType: !2092, size: 320)
!2092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2089, file: !2012, line: 513, size: 320, elements: !2093)
!2093 = !{!2094, !2095, !2096, !2097, !2098}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2092, file: !2012, line: 514, baseType: !2018, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2092, file: !2012, line: 515, baseType: !927, size: 32, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2092, file: !2012, line: 516, baseType: !59, size: 64, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2092, file: !2012, line: 517, baseType: !59, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2092, file: !2012, line: 518, baseType: !59, size: 64, offset: 256)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2089, file: !2012, line: 520, baseType: !133, size: 32, offset: 320)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2089, file: !2012, line: 522, baseType: !2101, size: 64, offset: 384)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1261, line: 22, baseType: !2103)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1261, line: 22, size: 64, elements: !2104)
!2104 = !{!2105}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2103, file: !1261, line: 22, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1261, line: 15, baseType: !59)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2089, file: !2012, line: 524, baseType: !2108, size: 64, offset: 448)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1256, line: 372, baseType: !2110)
!2110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1256, line: 372, size: 64, elements: !2111)
!2111 = !{!2112}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2110, file: !1256, line: 372, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1261, line: 16, baseType: !59)
!2114 = !DIDerivedType(tag: DW_TAG_member, scope: !2089, file: !2012, line: 527, baseType: !2115, size: 64, offset: 512)
!2115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2089, file: !2012, line: 527, size: 64, elements: !2116)
!2116 = !{!2117, !2123}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2115, file: !2012, line: 528, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1261, line: 21, baseType: !2119)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1261, line: 21, size: 64, elements: !2120)
!2120 = !{!2121}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2119, file: !1261, line: 21, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1261, line: 14, baseType: !59)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2115, file: !2012, line: 529, baseType: !2102, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2089, file: !2012, line: 534, baseType: !2125, size: 64, offset: 576)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !134, line: 74, size: 512, align: 128, elements: !2127)
!2127 = !{!2128, !2129, !2247, !2252}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2126, file: !134, line: 75, baseType: !59, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !2126, file: !134, line: 83, baseType: !2130, size: 320, offset: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2126, file: !134, line: 83, size: 320, elements: !2131)
!2131 = !{!2132, !2153, !2167, !2171, !2246}
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !134, line: 84, baseType: !2133, size: 320)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2130, file: !134, line: 84, size: 320, elements: !2134)
!2134 = !{!2135, !2146, !2147, !2152}
!2135 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !134, line: 90, baseType: !2136, size: 128)
!2136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2133, file: !134, line: 90, size: 128, elements: !2137)
!2137 = !{!2138, !2139, !2144, !2145}
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2136, file: !134, line: 91, baseType: !117, size: 128)
!2139 = !DIDerivedType(tag: DW_TAG_member, scope: !2136, file: !134, line: 94, baseType: !2140, size: 128)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2136, file: !134, line: 94, size: 128, elements: !2141)
!2141 = !{!2142, !2143}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2140, file: !134, line: 96, baseType: !40, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2140, file: !134, line: 98, baseType: !7, size: 32, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2136, file: !134, line: 102, baseType: !117, size: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2136, file: !134, line: 103, baseType: !117, size: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2133, file: !134, line: 106, baseType: !512, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, scope: !2133, file: !134, line: 107, baseType: !2148, size: 64, offset: 192)
!2148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2133, file: !134, line: 107, size: 64, elements: !2149)
!2149 = !{!2150, !2151}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2148, file: !134, line: 108, baseType: !59, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2148, file: !134, line: 109, baseType: !59, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2133, file: !134, line: 117, baseType: !59, size: 64, offset: 256)
!2153 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !134, line: 119, baseType: !2154, size: 320)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2130, file: !134, line: 119, size: 320, elements: !2155)
!2155 = !{!2156, !2157, !2160, !2161, !2162}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2154, file: !134, line: 124, baseType: !59, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2154, file: !134, line: 125, baseType: !2158, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !134, line: 125, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2154, file: !134, line: 126, baseType: !59, size: 64, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2154, file: !134, line: 127, baseType: !59, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_member, scope: !2154, file: !134, line: 128, baseType: !2163, size: 64, offset: 256)
!2163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2154, file: !134, line: 128, size: 64, elements: !2164)
!2164 = !{!2165, !2166}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2163, file: !134, line: 133, baseType: !59, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2163, file: !134, line: 138, baseType: !797, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !134, line: 141, baseType: !2168, size: 64)
!2168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2130, file: !134, line: 141, size: 64, elements: !2169)
!2169 = !{!2170}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2168, file: !134, line: 142, baseType: !59, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !134, line: 144, baseType: !2172, size: 128)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2130, file: !134, line: 144, size: 128, elements: !2173)
!2173 = !{!2174, !2245}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2172, file: !134, line: 146, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !150, line: 126, size: 1216, elements: !2177)
!2177 = !{!2178, !2188, !2209, !2210, !2211, !2212, !2213, !2227, !2228, !2229}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2176, file: !150, line: 127, baseType: !2179, size: 384)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !150, line: 21, size: 384, elements: !2180)
!2180 = !{!2181, !2182, !2184, !2185, !2186, !2187}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2179, file: !150, line: 22, baseType: !59, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2179, file: !150, line: 23, baseType: !2183, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2179, file: !150, line: 24, baseType: !2183, size: 64, offset: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2179, file: !150, line: 25, baseType: !59, size: 64, offset: 192)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2179, file: !150, line: 26, baseType: !59, size: 64, offset: 256)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2179, file: !150, line: 27, baseType: !59, size: 64, offset: 320)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2176, file: !150, line: 128, baseType: !2189, size: 128, offset: 384)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2190, line: 105, size: 128, elements: !2191)
!2190 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2191 = !{!2192, !2193}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2189, file: !2190, line: 110, baseType: !59, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2189, file: !2190, line: 118, baseType: !2194, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2190, line: 95, size: 448, elements: !2196)
!2196 = !{!2197, !2198, !2204, !2205, !2206, !2207, !2208}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2195, file: !2190, line: 96, baseType: !797, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2195, file: !2190, line: 97, baseType: !2199, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2190, line: 60, baseType: !2201)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2195, file: !2190, line: 98, baseType: !2199, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2195, file: !2190, line: 99, baseType: !1425, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2195, file: !2190, line: 100, baseType: !1425, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2195, file: !2190, line: 101, baseType: !848, size: 128, align: 64, offset: 256)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2195, file: !2190, line: 102, baseType: !2203, size: 64, offset: 384)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2176, file: !150, line: 129, baseType: !1579, size: 256, offset: 512)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2176, file: !150, line: 130, baseType: !149, size: 32, offset: 768)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2176, file: !150, line: 131, baseType: !7, size: 32, offset: 800)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2176, file: !150, line: 132, baseType: !59, size: 64, offset: 832)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2176, file: !150, line: 133, baseType: !2214, size: 64, offset: 896)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2216)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !150, line: 77, size: 192, elements: !2217)
!2217 = !{!2218, !2222, !2223}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2216, file: !150, line: 83, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{null, !2125}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2216, file: !150, line: 89, baseType: !2084, size: 64, offset: 64)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2216, file: !150, line: 100, baseType: !2224, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!42, !2175, !59, !59, !42}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2176, file: !150, line: 134, baseType: !40, size: 64, offset: 960)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2176, file: !150, line: 135, baseType: !42, size: 32, offset: 1024)
!2229 = !DIDerivedType(tag: DW_TAG_member, scope: !2176, file: !150, line: 136, baseType: !2230, size: 128, offset: 1088)
!2230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2176, file: !150, line: 136, size: 128, elements: !2231)
!2231 = !{!2232, !2238}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2230, file: !150, line: 137, baseType: !2233, size: 128)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2234, line: 6, size: 128, elements: !2235)
!2234 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2235 = !{!2236, !2237}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2233, file: !2234, line: 7, baseType: !345, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2233, file: !2234, line: 8, baseType: !345, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, scope: !2230, file: !150, line: 138, baseType: !2239)
!2239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2230, file: !150, line: 138, elements: !2240)
!2240 = !{!2241, !2243}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2239, file: !150, line: 138, baseType: !2242)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2239, file: !150, line: 138, elements: !712)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2239, file: !150, line: 138, baseType: !2244)
!2244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2233, elements: !1656)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2172, file: !134, line: 147, baseType: !40, size: 64, offset: 64)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2130, file: !134, line: 161, baseType: !848, size: 128, align: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, scope: !2126, file: !134, line: 164, baseType: !2248, size: 32, offset: 384)
!2248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2126, file: !134, line: 164, size: 32, elements: !2249)
!2249 = !{!2250, !2251}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2248, file: !134, line: 169, baseType: !69, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2248, file: !134, line: 177, baseType: !7, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2126, file: !134, line: 181, baseType: !69, size: 32, offset: 416)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2089, file: !2012, line: 535, baseType: !2125, size: 64, offset: 640)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2089, file: !2012, line: 541, baseType: !2255, size: 64, offset: 704)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2089, file: !2012, line: 545, baseType: !2257, size: 64, offset: 768)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2089, file: !2012, line: 549, baseType: !2259, size: 64, offset: 832)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1256, line: 520, baseType: !2125)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2011, file: !2012, line: 581, baseType: !2261, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!2087, !2088, !7}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2011, file: !2012, line: 582, baseType: !2265, size: 64, offset: 448)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!2087, !2088, !59, !59}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2011, file: !2012, line: 584, baseType: !2269, size: 64, offset: 512)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!59, !2018}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2011, file: !2012, line: 588, baseType: !2084, size: 64, offset: 576)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2011, file: !2012, line: 591, baseType: !2084, size: 64, offset: 640)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2011, file: !2012, line: 597, baseType: !2275, size: 64, offset: 704)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!42, !2018, !59, !40, !42, !42}
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2011, file: !2012, line: 603, baseType: !2279, size: 64, offset: 768)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!36, !2018}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2011, file: !2012, line: 613, baseType: !2283, size: 64, offset: 832)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DISubroutineType(types: !2285)
!2285 = !{!42, !2018, !2066}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2011, file: !2012, line: 625, baseType: !2287, size: 64, offset: 896)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!2066, !2018, !59}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2011, file: !2012, line: 633, baseType: !2291, size: 64, offset: 960)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!2125, !2018, !59}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1987, file: !684, line: 277, baseType: !2295, size: 64, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{null, !1993}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1987, file: !684, line: 290, baseType: !829, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1987, file: !684, line: 292, baseType: !817, size: 64, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1987, file: !684, line: 293, baseType: !825, size: 64, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1987, file: !684, line: 294, baseType: !821, size: 64, offset: 320)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1987, file: !684, line: 296, baseType: !2303, size: 64, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!474, !1993, !442, !55, !61}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1987, file: !684, line: 306, baseType: !55, size: 64, offset: 448)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1987, file: !684, line: 313, baseType: !1425, size: 8, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1987, file: !684, line: 314, baseType: !2303, size: 64, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1987, file: !684, line: 317, baseType: !2310, size: 64, offset: 640)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!2313, !1993, !2315}
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2314, line: 59, baseType: !7)
!2314 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !2317, line: 37, size: 128, elements: !2318)
!2317 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!2318 = !{!2319, !2325}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !2316, file: !2317, line: 38, baseType: !2320, size: 64)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !2317, line: 31, baseType: !2321)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{null, !1247, !2324, !2315}
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !2316, file: !2317, line: 39, baseType: !2313, size: 32, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1987, file: !684, line: 320, baseType: !2327, size: 64, offset: 704)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!42, !1993, !2018}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1982, file: !684, line: 176, baseType: !2331, size: 64, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !684, line: 35, flags: DIFlagFwdDecl)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1982, file: !684, line: 177, baseType: !61, size: 64, offset: 128)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1982, file: !684, line: 178, baseType: !1955, size: 64, offset: 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1956, file: !684, line: 215, baseType: !40, size: 64, offset: 768)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1956, file: !684, line: 221, baseType: !345, size: 64, offset: 832)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1956, file: !684, line: 223, baseType: !46, size: 16, offset: 896)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1956, file: !684, line: 224, baseType: !44, size: 16, offset: 912)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1956, file: !684, line: 225, baseType: !2340, size: 64, offset: 960)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !684, line: 36, flags: DIFlagFwdDecl)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1956, file: !684, line: 227, baseType: !848, size: 128, align: 64, offset: 1024)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !1940, file: !1931, line: 442, baseType: !2344, size: 448, offset: 2048)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !1931, line: 138, size: 448, elements: !2345)
!2345 = !{!2346, !2347, !2348}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2344, file: !1931, line: 140, baseType: !1955, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !2344, file: !1931, line: 141, baseType: !59, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !2344, file: !1931, line: 142, baseType: !2349, size: 320, offset: 128)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2350, line: 11, size: 320, elements: !2351)
!2350 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2351 = !{!2352, !2353, !2354, !2359}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2349, file: !2350, line: 16, baseType: !704, size: 128)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2349, file: !2350, line: 17, baseType: !59, size: 64, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2349, file: !2350, line: 18, baseType: !2355, size: 64, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{null, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2349, file: !2350, line: 19, baseType: !350, size: 32, offset: 256)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !1940, file: !1931, line: 443, baseType: !2344, size: 448, offset: 2496)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !1940, file: !1931, line: 446, baseType: !2362, offset: 2944)
!2362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2344, elements: !2363)
!2363 = !{!2364}
!2364 = !DISubrange(count: 0)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !1940, file: !1931, line: 455, baseType: !113, size: 16, offset: 2944)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !1940, file: !1931, line: 456, baseType: !113, size: 16, offset: 2960)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !1940, file: !1931, line: 457, baseType: !113, size: 16, offset: 2976)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !1940, file: !1931, line: 458, baseType: !113, size: 16, offset: 2992)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !1940, file: !1931, line: 461, baseType: !1934, size: 896, offset: 3008)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1940, file: !1931, line: 463, baseType: !2371, size: 64, offset: 3904)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !1931, line: 537, size: 41664, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2387}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !2372, file: !1931, line: 538, baseType: !1974, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !2372, file: !1931, line: 541, baseType: !7, size: 32, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !2372, file: !1931, line: 544, baseType: !42, size: 32, offset: 96)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !2372, file: !1931, line: 547, baseType: !117, size: 128, offset: 128)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2372, file: !1931, line: 548, baseType: !848, size: 128, align: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !2372, file: !1931, line: 555, baseType: !1940, size: 7872, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !2372, file: !1931, line: 558, baseType: !1939, size: 64, offset: 8256)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !2372, file: !1931, line: 561, baseType: !69, size: 32, offset: 8320)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2372, file: !1931, line: 564, baseType: !7, size: 32, offset: 8352)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !2372, file: !1931, line: 567, baseType: !2384, size: 32768, offset: 8384)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32768, elements: !2385)
!2385 = !{!2386}
!2386 = !DISubrange(count: 4096)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2372, file: !1931, line: 570, baseType: !2388, size: 512, offset: 41152)
!2388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 512, elements: !447)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !1940, file: !1931, line: 469, baseType: !117, size: 128, offset: 3968)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !1940, file: !1931, line: 478, baseType: !2391, size: 1792, offset: 4096)
!2391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1792, elements: !2392)
!2392 = !{!2393}
!2393 = !DISubrange(count: 14)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !1940, file: !1931, line: 487, baseType: !1939, size: 64, offset: 5888)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !1940, file: !1931, line: 488, baseType: !1939, size: 64, offset: 5952)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !1940, file: !1931, line: 491, baseType: !2397, size: 64, offset: 6016)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !1931, line: 327, size: 896, elements: !2399)
!2399 = !{!2400, !2403, !2413, !2414, !2415, !2416, !2417}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !2398, file: !1931, line: 332, baseType: !2401)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !2402, line: 64, elements: !712)
!2402 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !2398, file: !1931, line: 333, baseType: !2404, size: 192)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !1931, line: 299, size: 192, elements: !2405)
!2405 = !{!2406}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !2404, file: !1931, line: 300, baseType: !2407, size: 192)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !2408, line: 17, size: 192, elements: !2409)
!2408 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!2409 = !{!2410, !2411, !2412}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2407, file: !2408, line: 18, baseType: !345, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2407, file: !2408, line: 19, baseType: !345, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2407, file: !2408, line: 20, baseType: !347, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !2398, file: !1931, line: 339, baseType: !2404, size: 192, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !2398, file: !1931, line: 347, baseType: !2404, size: 192, offset: 384)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !2398, file: !1931, line: 353, baseType: !2404, size: 192, offset: 576)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !2398, file: !1931, line: 366, baseType: !1939, size: 64, offset: 768)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !2398, file: !1931, line: 367, baseType: !1939, size: 64, offset: 832)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !1940, file: !1931, line: 492, baseType: !117, size: 128, offset: 6080)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !1940, file: !1931, line: 495, baseType: !2404, size: 192, offset: 6208)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !1940, file: !1931, line: 496, baseType: !2404, size: 192, offset: 6400)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1940, file: !1931, line: 497, baseType: !1767, size: 192, offset: 6592)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !1940, file: !1931, line: 503, baseType: !117, size: 128, offset: 6784)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !1940, file: !1931, line: 504, baseType: !793, size: 256, offset: 6912)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !1940, file: !1931, line: 507, baseType: !74, size: 192, offset: 7168)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !1940, file: !1931, line: 510, baseType: !1540, size: 256, offset: 7360)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !1940, file: !1931, line: 513, baseType: !2427, size: 64, offset: 7616)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !2429, line: 214, elements: !712)
!2429 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !1940, file: !1931, line: 516, baseType: !2431, offset: 7680)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !2432, line: 76, elements: !712)
!2432 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !1940, file: !1931, line: 519, baseType: !69, size: 32, offset: 7680)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !1940, file: !1931, line: 522, baseType: !2435, size: 128, offset: 7712)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !1931, line: 370, size: 128, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2435, file: !1931, line: 372, baseType: !1425, size: 8)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !2435, file: !1931, line: 375, baseType: !42, size: 32, offset: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !2435, file: !1931, line: 380, baseType: !42, size: 32, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !2435, file: !1931, line: 386, baseType: !42, size: 32, offset: 96)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !1940, file: !1931, line: 529, baseType: !2442, offset: 7872)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1939, elements: !1656)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1936, file: !1931, line: 157, baseType: !2444, size: 64, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !1931, line: 669, size: 1984, elements: !2446)
!2446 = !{!2447, !2451, !2455, !2459, !2460, !2461, !2462, !2466, !2470, !2471, !2477, !2481, !2482, !2486, !2490, !2494, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2547, !2548}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !2445, file: !1931, line: 670, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2449, size: 64)
!2449 = !DISubroutineType(types: !2450)
!2450 = !{!1935, !1935}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !2445, file: !1931, line: 671, baseType: !2452, size: 64, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DISubroutineType(types: !2454)
!2454 = !{!42, !1935}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !2445, file: !1931, line: 672, baseType: !2456, size: 64, offset: 128)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !1935}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !2445, file: !1931, line: 673, baseType: !2456, size: 64, offset: 192)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !2445, file: !1931, line: 674, baseType: !2456, size: 64, offset: 256)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !2445, file: !1931, line: 675, baseType: !2456, size: 64, offset: 320)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !2445, file: !1931, line: 676, baseType: !2463, size: 64, offset: 384)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{null, !1935, !42}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !2445, file: !1931, line: 677, baseType: !2467, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!42, !781, !1935}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !2445, file: !1931, line: 679, baseType: !2467, size: 64, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !2445, file: !1931, line: 682, baseType: !2472, size: 64, offset: 576)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!42, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !1931, line: 30, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !2445, file: !1931, line: 683, baseType: !2478, size: 64, offset: 640)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{null, !2475}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2445, file: !1931, line: 684, baseType: !2478, size: 64, offset: 704)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !2445, file: !1931, line: 685, baseType: !2483, size: 64, offset: 768)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DISubroutineType(types: !2485)
!2485 = !{null}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !2445, file: !1931, line: 686, baseType: !2487, size: 64, offset: 832)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!42, !934, !1929}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !2445, file: !1931, line: 688, baseType: !2491, size: 64, offset: 896)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{null, !934, !1929}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !2445, file: !1931, line: 689, baseType: !2495, size: 64, offset: 960)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{null, !934}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !2445, file: !1931, line: 690, baseType: !2495, size: 64, offset: 1024)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2445, file: !1931, line: 691, baseType: !2495, size: 64, offset: 1088)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2445, file: !1931, line: 692, baseType: !2456, size: 64, offset: 1152)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2445, file: !1931, line: 694, baseType: !1425, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !2445, file: !1931, line: 707, baseType: !1425, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !2445, file: !1931, line: 719, baseType: !1425, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2445, file: !1931, line: 722, baseType: !42, size: 32, offset: 1248)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2445, file: !1931, line: 723, baseType: !36, size: 64, offset: 1280)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !2445, file: !1931, line: 726, baseType: !36, size: 64, offset: 1344)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2445, file: !1931, line: 729, baseType: !2371, size: 64, offset: 1408)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !2445, file: !1931, line: 732, baseType: !918, size: 192, offset: 1472)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !2445, file: !1931, line: 738, baseType: !117, size: 128, offset: 1664)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !2445, file: !1931, line: 744, baseType: !2511, size: 64, offset: 1792)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2512, size: 64)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !1931, line: 580, size: 1728, elements: !2513)
!2513 = !{!2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2523, !2524, !2525, !2529, !2533, !2534, !2535, !2536, !2537, !2541, !2545, !2546}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2512, file: !1931, line: 586, baseType: !2388, size: 512)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2512, file: !1931, line: 587, baseType: !59, size: 64, offset: 512)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2512, file: !1931, line: 593, baseType: !55, size: 64, offset: 576)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2512, file: !1931, line: 596, baseType: !7, size: 32, offset: 640)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !2512, file: !1931, line: 604, baseType: !7, size: 32, offset: 672)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2512, file: !1931, line: 610, baseType: !2444, size: 64, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2512, file: !1931, line: 611, baseType: !117, size: 128, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !2512, file: !1931, line: 612, baseType: !2522, size: 64, offset: 896)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2512, file: !1931, line: 614, baseType: !1990, size: 64, offset: 960)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2512, file: !1931, line: 615, baseType: !2295, size: 64, offset: 1024)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !2512, file: !1931, line: 621, baseType: !2526, size: 64, offset: 1088)
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!345, !1935, !2511}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !2512, file: !1931, line: 625, baseType: !2530, size: 64, offset: 1152)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!341, !1935, !2511}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2512, file: !1931, line: 628, baseType: !829, size: 64, offset: 1216)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2512, file: !1931, line: 631, baseType: !817, size: 64, offset: 1280)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2512, file: !1931, line: 632, baseType: !825, size: 64, offset: 1344)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2512, file: !1931, line: 633, baseType: !821, size: 64, offset: 1408)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !2512, file: !1931, line: 640, baseType: !2538, size: 64, offset: 1472)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!42, !1935, !2511, !345}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !2512, file: !1931, line: 645, baseType: !2542, size: 64, offset: 1536)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!42, !1935, !2511, !341}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2512, file: !1931, line: 654, baseType: !2303, size: 64, offset: 1600)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2512, file: !1931, line: 657, baseType: !2310, size: 64, offset: 1664)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !2445, file: !1931, line: 745, baseType: !2511, size: 64, offset: 1856)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !2445, file: !1931, line: 754, baseType: !7, size: 32, offset: 1920)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1936, file: !1931, line: 160, baseType: !2189, size: 128, offset: 128)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1936, file: !1931, line: 163, baseType: !117, size: 128, offset: 256)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1936, file: !1931, line: 164, baseType: !117, size: 128, offset: 384)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !1936, file: !1931, line: 167, baseType: !117, size: 128, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1936, file: !1931, line: 173, baseType: !42, size: 32, offset: 640)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1936, file: !1931, line: 175, baseType: !7, size: 32, offset: 672)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !1936, file: !1931, line: 183, baseType: !345, size: 64, offset: 704)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !1936, file: !1931, line: 189, baseType: !69, size: 32, offset: 768)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1936, file: !1931, line: 192, baseType: !1540, size: 256, offset: 832)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !1936, file: !1931, line: 193, baseType: !2559, size: 448, offset: 1088)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !1541, line: 120, size: 448, elements: !2560)
!2560 = !{!2561, !2562, !2563}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2559, file: !1541, line: 121, baseType: !1540, size: 256)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2559, file: !1541, line: 122, baseType: !848, size: 128, align: 64, offset: 256)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2559, file: !1541, line: 125, baseType: !2564, size: 64, offset: 384)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1541, line: 18, flags: DIFlagFwdDecl)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1936, file: !1931, line: 199, baseType: !1935, size: 64, offset: 1536)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1930, file: !1931, line: 218, baseType: !893, size: 32, offset: 896)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !1930, file: !1931, line: 226, baseType: !1929, size: 64, offset: 960)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !1930, file: !1931, line: 229, baseType: !1939, size: 64, offset: 1024)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1930, file: !1931, line: 232, baseType: !42, size: 32, offset: 1088)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1930, file: !1931, line: 241, baseType: !117, size: 128, offset: 1152)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !1930, file: !1931, line: 242, baseType: !117, size: 128, offset: 1280)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !1930, file: !1931, line: 243, baseType: !117, size: 128, offset: 1408)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !1930, file: !1931, line: 246, baseType: !117, size: 128, offset: 1536)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !1930, file: !1931, line: 255, baseType: !2391, size: 1792, offset: 1664)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !1930, file: !1931, line: 258, baseType: !117, size: 128, offset: 3456)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !1930, file: !1931, line: 259, baseType: !117, size: 128, offset: 3584)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !1930, file: !1931, line: 265, baseType: !704, size: 128, offset: 3712)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !1930, file: !1931, line: 271, baseType: !117, size: 128, offset: 3840)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !1930, file: !1931, line: 277, baseType: !117, size: 128, offset: 3968)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !1930, file: !1931, line: 278, baseType: !117, size: 128, offset: 4096)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !1930, file: !1931, line: 279, baseType: !117, size: 128, offset: 4224)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !1930, file: !1931, line: 288, baseType: !1939, size: 64, offset: 4352)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !1930, file: !1931, line: 289, baseType: !1939, size: 64, offset: 4416)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !1930, file: !1931, line: 290, baseType: !1929, size: 64, offset: 4480)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !1930, file: !1931, line: 293, baseType: !1425, size: 8, offset: 4544)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1930, file: !1931, line: 296, baseType: !848, size: 128, align: 64, offset: 4608)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !935, file: !936, line: 1110, baseType: !2589, size: 64, offset: 15360)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2591, line: 93, size: 8768, elements: !2592)
!2591 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2592 = !{!2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2643, !2652, !2653, !2655, !2656, !2657, !2660, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2698, !2699, !2706, !2716, !2779, !2780, !2783, !2784, !2785, !2786, !2787, !2788}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2590, file: !2591, line: 94, baseType: !893, size: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2590, file: !2591, line: 95, baseType: !69, size: 32, offset: 32)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2590, file: !2591, line: 96, baseType: !42, size: 32, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2590, file: !2591, line: 97, baseType: !42, size: 32, offset: 96)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2590, file: !2591, line: 98, baseType: !117, size: 128, offset: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2590, file: !2591, line: 100, baseType: !74, size: 192, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2590, file: !2591, line: 103, baseType: !934, size: 64, offset: 448)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2590, file: !2591, line: 106, baseType: !2601, size: 192, offset: 512)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2602, line: 32, size: 192, elements: !2603)
!2602 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2603 = !{!2604, !2605}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2601, file: !2602, line: 33, baseType: !117, size: 128)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2601, file: !2602, line: 34, baseType: !2606, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2607, line: 25, baseType: !2608)
!2607 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2607, line: 23, size: 64, elements: !2609)
!2609 = !{!2610}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2608, file: !2607, line: 24, baseType: !374, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2590, file: !2591, line: 109, baseType: !700, size: 64, offset: 704)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2590, file: !2591, line: 112, baseType: !42, size: 32, offset: 768)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2590, file: !2591, line: 114, baseType: !42, size: 32, offset: 800)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2590, file: !2591, line: 115, baseType: !934, size: 64, offset: 832)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2590, file: !2591, line: 118, baseType: !42, size: 32, offset: 896)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2590, file: !2591, line: 119, baseType: !7, size: 32, offset: 928)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2590, file: !2591, line: 121, baseType: !2618, size: 64, offset: 960)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2591, line: 80, size: 448, elements: !2620)
!2620 = !{!2621, !2622, !2628}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2619, file: !2591, line: 81, baseType: !69, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2619, file: !2591, line: 82, baseType: !2623, size: 128, offset: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2591, line: 75, size: 128, elements: !2624)
!2624 = !{!2625, !2626}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2623, file: !2591, line: 76, baseType: !934, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2623, file: !2591, line: 77, baseType: !2627, size: 64, offset: 64)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2619, file: !2591, line: 83, baseType: !1579, size: 256, offset: 192)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2590, file: !2591, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2590, file: !2591, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2590, file: !2591, line: 138, baseType: !7, size: 32, offset: 1056)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2590, file: !2591, line: 139, baseType: !117, size: 128, offset: 1088)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2590, file: !2591, line: 142, baseType: !1053, size: 512, offset: 1216)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2590, file: !2591, line: 143, baseType: !339, size: 64, offset: 1728)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2590, file: !2591, line: 150, baseType: !2636, size: 256, offset: 1792)
!2636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2637, size: 256, elements: !2641)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2591, line: 38, size: 128, elements: !2638)
!2638 = !{!2639, !2640}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2637, file: !2591, line: 39, baseType: !345, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2637, file: !2591, line: 40, baseType: !345, size: 64, offset: 64)
!2641 = !{!2642}
!2642 = !DISubrange(count: 2)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2590, file: !2591, line: 156, baseType: !2644, size: 192, offset: 2048)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2591, line: 66, size: 192, elements: !2645)
!2645 = !{!2646}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2644, file: !2591, line: 67, baseType: !2647, size: 192)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2591, line: 47, size: 192, elements: !2648)
!2648 = !{!2649, !2650, !2651}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2647, file: !2591, line: 48, baseType: !799, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2647, file: !2591, line: 49, baseType: !799, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2647, file: !2591, line: 50, baseType: !799, size: 64, offset: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2590, file: !2591, line: 160, baseType: !1779, size: 640, offset: 2240)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2590, file: !2591, line: 163, baseType: !2654, size: 256, offset: 2880)
!2654 = !DICompositeType(tag: DW_TAG_array_type, baseType: !889, size: 256, elements: !902)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2590, file: !2591, line: 169, baseType: !889, size: 64, offset: 3136)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2590, file: !2591, line: 172, baseType: !42, size: 32, offset: 3200)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2590, file: !2591, line: 174, baseType: !2658, size: 64, offset: 3264)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2591, line: 174, flags: DIFlagFwdDecl)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2590, file: !2591, line: 185, baseType: !2661, size: 64, offset: 3328)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !558, line: 860, baseType: !2662)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !558, line: 853, size: 64, elements: !2663)
!2663 = !{!2664, !2665}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2662, file: !558, line: 858, baseType: !557, size: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2662, file: !558, line: 859, baseType: !79, size: 32, offset: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2590, file: !2591, line: 186, baseType: !345, size: 64, offset: 3392)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2590, file: !2591, line: 186, baseType: !345, size: 64, offset: 3456)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2590, file: !2591, line: 186, baseType: !345, size: 64, offset: 3520)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2590, file: !2591, line: 186, baseType: !345, size: 64, offset: 3584)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2590, file: !2591, line: 187, baseType: !345, size: 64, offset: 3648)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2590, file: !2591, line: 188, baseType: !345, size: 64, offset: 3712)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2590, file: !2591, line: 189, baseType: !1767, size: 192, offset: 3776)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2590, file: !2591, line: 190, baseType: !59, size: 64, offset: 3968)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2590, file: !2591, line: 190, baseType: !59, size: 64, offset: 4032)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2590, file: !2591, line: 190, baseType: !59, size: 64, offset: 4096)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2590, file: !2591, line: 190, baseType: !59, size: 64, offset: 4160)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2590, file: !2591, line: 191, baseType: !59, size: 64, offset: 4224)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2590, file: !2591, line: 191, baseType: !59, size: 64, offset: 4288)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2590, file: !2591, line: 191, baseType: !59, size: 64, offset: 4352)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2590, file: !2591, line: 191, baseType: !59, size: 64, offset: 4416)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2590, file: !2591, line: 192, baseType: !59, size: 64, offset: 4480)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2590, file: !2591, line: 192, baseType: !59, size: 64, offset: 4544)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2590, file: !2591, line: 192, baseType: !59, size: 64, offset: 4608)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2590, file: !2591, line: 192, baseType: !59, size: 64, offset: 4672)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2590, file: !2591, line: 193, baseType: !59, size: 64, offset: 4736)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2590, file: !2591, line: 193, baseType: !59, size: 64, offset: 4800)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2590, file: !2591, line: 194, baseType: !2688, size: 448, offset: 4864)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2689, line: 12, size: 448, elements: !2690)
!2689 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2690 = !{!2691, !2692, !2693, !2694, !2695, !2696, !2697}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2688, file: !2689, line: 15, baseType: !345, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2688, file: !2689, line: 17, baseType: !345, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2688, file: !2689, line: 19, baseType: !345, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2688, file: !2689, line: 21, baseType: !345, size: 64, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2688, file: !2689, line: 29, baseType: !345, size: 64, offset: 256)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2688, file: !2689, line: 35, baseType: !345, size: 64, offset: 320)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2688, file: !2689, line: 44, baseType: !345, size: 64, offset: 384)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2590, file: !2591, line: 202, baseType: !347, size: 64, offset: 5312)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2590, file: !2591, line: 213, baseType: !2700, size: 2048, offset: 5376)
!2700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2701, size: 2048, elements: !1871)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2702, line: 43, size: 128, elements: !2703)
!2702 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2703 = !{!2704, !2705}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2701, file: !2702, line: 44, baseType: !58, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2701, file: !2702, line: 45, baseType: !58, size: 64, offset: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2590, file: !2591, line: 216, baseType: !2707, size: 448, offset: 7424)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2591, line: 30, size: 448, elements: !2708)
!2708 = !{!2709, !2710, !2711, !2712, !2713, !2714, !2715}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2707, file: !2591, line: 31, baseType: !42, size: 32)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2707, file: !2591, line: 32, baseType: !477, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2707, file: !2591, line: 33, baseType: !59, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2707, file: !2591, line: 34, baseType: !345, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2707, file: !2591, line: 34, baseType: !345, size: 64, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2707, file: !2591, line: 35, baseType: !59, size: 64, offset: 320)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2707, file: !2591, line: 35, baseType: !59, size: 64, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2590, file: !2591, line: 219, baseType: !2717, size: 64, offset: 7872)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2719, line: 41, size: 3456, elements: !2720)
!2719 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!2720 = !{!2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2735, !2736, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2718, file: !2719, line: 47, baseType: !114, size: 16)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2718, file: !2719, line: 48, baseType: !351, size: 32, offset: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2718, file: !2719, line: 54, baseType: !105, size: 8, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !2718, file: !2719, line: 55, baseType: !105, size: 8, offset: 72)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !2718, file: !2719, line: 73, baseType: !346, size: 64, align: 64, offset: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !2718, file: !2719, line: 74, baseType: !346, size: 64, offset: 192)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !2718, file: !2719, line: 81, baseType: !346, size: 64, offset: 256)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !2718, file: !2719, line: 82, baseType: !346, size: 64, offset: 320)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !2718, file: !2719, line: 85, baseType: !346, size: 64, offset: 384)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !2718, file: !2719, line: 86, baseType: !346, size: 64, offset: 448)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !2718, file: !2719, line: 94, baseType: !346, size: 64, offset: 512)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !2718, file: !2719, line: 102, baseType: !346, size: 64, offset: 576)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !2718, file: !2719, line: 107, baseType: !2734, size: 256, offset: 640)
!2734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !593)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !2718, file: !2719, line: 108, baseType: !105, size: 8, align: 64, offset: 896)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !2718, file: !2719, line: 110, baseType: !2737, size: 24, offset: 904)
!2737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 24, elements: !443)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !2718, file: !2719, line: 111, baseType: !351, size: 32, align: 64, offset: 960)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !2718, file: !2719, line: 113, baseType: !351, size: 32, offset: 992)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !2718, file: !2719, line: 114, baseType: !351, size: 32, offset: 1024)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !2718, file: !2719, line: 115, baseType: !351, size: 32, offset: 1056)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !2718, file: !2719, line: 117, baseType: !351, size: 32, offset: 1088)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !2718, file: !2719, line: 118, baseType: !346, size: 64, align: 64, offset: 1152)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2718, file: !2719, line: 120, baseType: !346, size: 64, offset: 1216)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2718, file: !2719, line: 121, baseType: !346, size: 64, offset: 1280)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2718, file: !2719, line: 122, baseType: !346, size: 64, offset: 1344)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2718, file: !2719, line: 123, baseType: !346, size: 64, offset: 1408)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !2718, file: !2719, line: 133, baseType: !346, size: 64, offset: 1472)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !2718, file: !2719, line: 137, baseType: !346, size: 64, offset: 1536)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !2718, file: !2719, line: 142, baseType: !346, size: 64, offset: 1600)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !2718, file: !2719, line: 143, baseType: !346, size: 64, offset: 1664)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !2718, file: !2719, line: 146, baseType: !346, size: 64, offset: 1728)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !2718, file: !2719, line: 147, baseType: !346, size: 64, offset: 1792)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !2718, file: !2719, line: 148, baseType: !346, size: 64, offset: 1856)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !2718, file: !2719, line: 149, baseType: !346, size: 64, offset: 1920)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2718, file: !2719, line: 154, baseType: !346, size: 64, offset: 1984)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2718, file: !2719, line: 155, baseType: !346, size: 64, offset: 2048)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2718, file: !2719, line: 156, baseType: !346, size: 64, offset: 2112)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2718, file: !2719, line: 158, baseType: !346, size: 64, offset: 2176)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2718, file: !2719, line: 159, baseType: !346, size: 64, offset: 2240)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !2718, file: !2719, line: 162, baseType: !346, size: 64, offset: 2304)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !2718, file: !2719, line: 163, baseType: !346, size: 64, offset: 2368)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !2718, file: !2719, line: 164, baseType: !346, size: 64, offset: 2432)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !2718, file: !2719, line: 167, baseType: !346, size: 64, offset: 2496)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !2718, file: !2719, line: 168, baseType: !346, size: 64, offset: 2560)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !2718, file: !2719, line: 171, baseType: !346, size: 64, offset: 2624)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !2718, file: !2719, line: 172, baseType: !346, size: 64, offset: 2688)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !2718, file: !2719, line: 175, baseType: !346, size: 64, offset: 2752)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !2718, file: !2719, line: 178, baseType: !346, size: 64, offset: 2816)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !2718, file: !2719, line: 179, baseType: !346, size: 64, offset: 2880)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !2718, file: !2719, line: 182, baseType: !351, size: 32, offset: 2944)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !2718, file: !2719, line: 186, baseType: !346, size: 64, align: 64, offset: 3008)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !2718, file: !2719, line: 194, baseType: !346, size: 64, offset: 3072)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !2718, file: !2719, line: 195, baseType: !346, size: 64, offset: 3136)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !2718, file: !2719, line: 199, baseType: !346, size: 64, offset: 3200)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !2718, file: !2719, line: 200, baseType: !346, size: 64, offset: 3264)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !2718, file: !2719, line: 203, baseType: !346, size: 64, offset: 3328)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !2718, file: !2719, line: 204, baseType: !346, size: 64, offset: 3392)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2590, file: !2591, line: 222, baseType: !7, size: 32, offset: 7936)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2590, file: !2591, line: 223, baseType: !2781, size: 64, offset: 8000)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2591, line: 223, flags: DIFlagFwdDecl)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2590, file: !2591, line: 230, baseType: !1425, size: 8, offset: 8064)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2590, file: !2591, line: 231, baseType: !1373, size: 16, offset: 8080)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2590, file: !2591, line: 232, baseType: !1373, size: 16, offset: 8096)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2590, file: !2591, line: 234, baseType: !1220, size: 64, offset: 8128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2590, file: !2591, line: 237, baseType: !793, size: 256, offset: 8192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2590, file: !2591, line: 243, baseType: !1275, size: 320, offset: 8448)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !935, file: !936, line: 1111, baseType: !2790, size: 64, offset: 15424)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2591, line: 20, size: 16640, elements: !2792)
!2792 = !{!2793, !2794, !2795, !2796}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2791, file: !2591, line: 21, baseType: !79, size: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2791, file: !2591, line: 22, baseType: !893, size: 32, offset: 32)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2791, file: !2591, line: 23, baseType: !74, size: 192, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2791, file: !2591, line: 24, baseType: !2797, size: 16384, offset: 256)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2798, size: 16384, elements: !447)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2602, line: 51, size: 256, elements: !2799)
!2799 = !{!2800}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2798, file: !2602, line: 52, baseType: !2801, size: 256)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2602, line: 37, size: 256, elements: !2802)
!2802 = !{!2803, !2810, !2811, !2815}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2801, file: !2602, line: 39, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2805, line: 83, baseType: !2806)
!2805 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2805, line: 82, baseType: !2808)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{null, !42}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2801, file: !2602, line: 40, baseType: !59, size: 64, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2801, file: !2602, line: 46, baseType: !2812, size: 64, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2805, line: 86, baseType: !2813)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2805, line: 85, baseType: !2484)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2801, file: !2602, line: 48, baseType: !2606, size: 64, offset: 192)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !935, file: !936, line: 1112, baseType: !2606, size: 64, offset: 15488)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !935, file: !936, line: 1113, baseType: !2606, size: 64, offset: 15552)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !935, file: !936, line: 1115, baseType: !2606, size: 64, offset: 15616)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !935, file: !936, line: 1116, baseType: !2601, size: 192, offset: 15680)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !935, file: !936, line: 1117, baseType: !59, size: 64, offset: 15872)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !935, file: !936, line: 1118, baseType: !55, size: 64, offset: 15936)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !935, file: !936, line: 1119, baseType: !7, size: 32, offset: 16000)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !935, file: !936, line: 1121, baseType: !851, size: 64, offset: 16064)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !935, file: !936, line: 1125, baseType: !2825, size: 64, offset: 16128)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !936, line: 43, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !935, file: !936, line: 1127, baseType: !522, size: 32, offset: 16192)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !935, file: !936, line: 1128, baseType: !7, size: 32, offset: 16224)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !935, file: !936, line: 1130, baseType: !2830, size: 128, offset: 16256)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2831, line: 37, size: 128, elements: !2832)
!2831 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2832 = !{!2833, !2834, !2835}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2830, file: !2831, line: 38, baseType: !42, size: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2830, file: !2831, line: 39, baseType: !69, size: 32, offset: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2830, file: !2831, line: 40, baseType: !2836, size: 64, offset: 64)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2831, line: 24, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !935, file: !936, line: 1131, baseType: !2839, size: 256, offset: 16384)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2840, line: 12, size: 256, elements: !2841)
!2840 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2841 = !{!2842, !2843, !2844, !2845}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2839, file: !2840, line: 13, baseType: !442, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2839, file: !2840, line: 14, baseType: !59, size: 64, offset: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2839, file: !2840, line: 15, baseType: !59, size: 64, offset: 128)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2839, file: !2840, line: 16, baseType: !1425, size: 8, offset: 192)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !935, file: !936, line: 1134, baseType: !345, size: 64, offset: 16640)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !935, file: !936, line: 1135, baseType: !345, size: 64, offset: 16704)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !935, file: !936, line: 1138, baseType: !79, size: 32, offset: 16768)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !935, file: !936, line: 1141, baseType: !804, size: 32, offset: 16800)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !935, file: !936, line: 1143, baseType: !2851, size: 64, offset: 16832)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !936, line: 735, size: 64, elements: !2852)
!2852 = !{!2853}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2851, file: !936, line: 736, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !935, file: !936, line: 1147, baseType: !1110, size: 128, offset: 16896)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !935, file: !936, line: 1149, baseType: !934, size: 64, offset: 17024)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !935, file: !936, line: 1151, baseType: !2858, size: 64, offset: 17088)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !936, line: 1151, flags: DIFlagFwdDecl)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !935, file: !936, line: 1188, baseType: !40, size: 64, offset: 17152)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !935, file: !936, line: 1191, baseType: !2862, size: 64, offset: 17216)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !936, line: 44, flags: DIFlagFwdDecl)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !935, file: !936, line: 1194, baseType: !2865, size: 64, offset: 17280)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !936, line: 45, flags: DIFlagFwdDecl)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !935, file: !936, line: 1197, baseType: !2868, size: 64, offset: 17344)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !936, line: 61, flags: DIFlagFwdDecl)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !935, file: !936, line: 1199, baseType: !2871, size: 64, offset: 17408)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2873, line: 99, size: 128, elements: !2874)
!2873 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2874 = !{!2875, !2876, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2872, file: !2873, line: 100, baseType: !797, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2872, file: !2873, line: 101, baseType: !69, size: 32, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2872, file: !2873, line: 103, baseType: !46, size: 16, offset: 96)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !935, file: !936, line: 1202, baseType: !2879, size: 64, offset: 17472)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !936, line: 48, flags: DIFlagFwdDecl)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !935, file: !936, line: 1205, baseType: !59, size: 64, offset: 17536)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !935, file: !936, line: 1206, baseType: !2883, size: 64, offset: 17600)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2602, line: 14, baseType: !2885)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2602, line: 12, size: 384, elements: !2886)
!2886 = !{!2887}
!2887 = !DIDerivedType(tag: DW_TAG_member, scope: !2885, file: !2602, line: 13, baseType: !2888, size: 384)
!2888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2885, file: !2602, line: 13, size: 384, elements: !2889)
!2889 = !{!2890, !2891, !2892, !2893}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2888, file: !2602, line: 13, baseType: !42, size: 32)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2888, file: !2602, line: 13, baseType: !42, size: 32, offset: 32)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2888, file: !2602, line: 13, baseType: !42, size: 32, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2888, file: !2602, line: 13, baseType: !2894, size: 256, offset: 128)
!2894 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2895, line: 37, size: 256, elements: !2896)
!2895 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2896 = !{!2897, !2902, !2915, !2921, !2930, !2957, !2962}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2894, file: !2895, line: 42, baseType: !2898, size: 64)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2895, line: 39, size: 64, elements: !2899)
!2899 = !{!2900, !2901}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2898, file: !2895, line: 40, baseType: !1744, size: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2898, file: !2895, line: 41, baseType: !528, size: 32, offset: 32)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2894, file: !2895, line: 50, baseType: !2903, size: 192)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2895, line: 45, size: 192, elements: !2904)
!2904 = !{!2905, !2907, !2908, !2914}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2903, file: !2895, line: 46, baseType: !2906, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !57, line: 95, baseType: !42)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2903, file: !2895, line: 47, baseType: !42, size: 32, offset: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2903, file: !2895, line: 48, baseType: !2909, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2895, line: 11, baseType: !2910)
!2910 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2895, line: 8, size: 64, elements: !2911)
!2911 = !{!2912, !2913}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2910, file: !2895, line: 9, baseType: !42, size: 32)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2910, file: !2895, line: 10, baseType: !40, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2903, file: !2895, line: 49, baseType: !42, size: 32, offset: 128)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2894, file: !2895, line: 57, baseType: !2916, size: 128)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2895, line: 53, size: 128, elements: !2917)
!2917 = !{!2918, !2919, !2920}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2916, file: !2895, line: 54, baseType: !1744, size: 32)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2916, file: !2895, line: 55, baseType: !528, size: 32, offset: 32)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2916, file: !2895, line: 56, baseType: !2909, size: 64, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2894, file: !2895, line: 66, baseType: !2922, size: 256)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2895, line: 60, size: 256, elements: !2923)
!2923 = !{!2924, !2925, !2926, !2927, !2929}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2922, file: !2895, line: 61, baseType: !1744, size: 32)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2922, file: !2895, line: 62, baseType: !528, size: 32, offset: 32)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2922, file: !2895, line: 63, baseType: !42, size: 32, offset: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2922, file: !2895, line: 64, baseType: !2928, size: 64, offset: 128)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !57, line: 94, baseType: !476)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2922, file: !2895, line: 65, baseType: !2928, size: 64, offset: 192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2894, file: !2895, line: 105, baseType: !2931, size: 256)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2895, line: 69, size: 256, elements: !2932)
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2931, file: !2895, line: 70, baseType: !40, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, scope: !2931, file: !2895, line: 79, baseType: !2935, size: 192, offset: 64)
!2935 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2931, file: !2895, line: 79, size: 192, elements: !2936)
!2936 = !{!2937, !2938, !2939, !2946, !2951}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2935, file: !2895, line: 81, baseType: !42, size: 32)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2935, file: !2895, line: 86, baseType: !1373, size: 16)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2935, file: !2895, line: 92, baseType: !2940, size: 192)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2935, file: !2895, line: 88, size: 192, elements: !2941)
!2941 = !{!2942, !2944, !2945}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2940, file: !2895, line: 89, baseType: !2943, size: 64)
!2943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !1094)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2940, file: !2895, line: 90, baseType: !40, size: 64, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2940, file: !2895, line: 91, baseType: !40, size: 64, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2935, file: !2895, line: 97, baseType: !2947, size: 96)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2935, file: !2895, line: 94, size: 96, elements: !2948)
!2948 = !{!2949, !2950}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2947, file: !2895, line: 95, baseType: !2943, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2947, file: !2895, line: 96, baseType: !351, size: 32, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2935, file: !2895, line: 103, baseType: !2952, size: 128)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2935, file: !2895, line: 99, size: 128, elements: !2953)
!2953 = !{!2954, !2955, !2956}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2952, file: !2895, line: 100, baseType: !59, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2952, file: !2895, line: 101, baseType: !351, size: 32, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2952, file: !2895, line: 102, baseType: !351, size: 32, offset: 96)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2894, file: !2895, line: 111, baseType: !2958, size: 128)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2895, line: 108, size: 128, elements: !2959)
!2959 = !{!2960, !2961}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2958, file: !2895, line: 109, baseType: !477, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2958, file: !2895, line: 110, baseType: !42, size: 32, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2894, file: !2895, line: 118, baseType: !2963, size: 128)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2894, file: !2895, line: 114, size: 128, elements: !2964)
!2964 = !{!2965, !2966, !2967}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2963, file: !2895, line: 115, baseType: !40, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2963, file: !2895, line: 116, baseType: !42, size: 32, offset: 64)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2963, file: !2895, line: 117, baseType: !7, size: 32, offset: 96)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !935, file: !936, line: 1208, baseType: !2688, size: 448, offset: 17664)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !935, file: !936, line: 1215, baseType: !345, size: 64, offset: 18112)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !935, file: !936, line: 1217, baseType: !345, size: 64, offset: 18176)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !935, file: !936, line: 1219, baseType: !345, size: 64, offset: 18240)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !935, file: !936, line: 1223, baseType: !2973, size: 64, offset: 18304)
!2973 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2974, line: 99, baseType: !2975)
!2974 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2974, line: 99, size: 64, elements: !2976)
!2976 = !{!2977}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2975, file: !2974, line: 99, baseType: !374, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !935, file: !936, line: 1225, baseType: !557, size: 32, offset: 18368)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !935, file: !936, line: 1226, baseType: !42, size: 32, offset: 18400)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !935, file: !936, line: 1227, baseType: !42, size: 32, offset: 18432)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !935, file: !936, line: 1231, baseType: !1929, size: 64, offset: 18496)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !935, file: !936, line: 1233, baseType: !117, size: 128, offset: 18560)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !935, file: !936, line: 1240, baseType: !2984, size: 64, offset: 18688)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !936, line: 62, flags: DIFlagFwdDecl)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !935, file: !936, line: 1242, baseType: !2987, size: 64, offset: 18752)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !936, line: 1242, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !935, file: !936, line: 1244, baseType: !117, size: 128, offset: 18816)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !935, file: !936, line: 1245, baseType: !2991, size: 64, offset: 18944)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !936, line: 51, flags: DIFlagFwdDecl)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !935, file: !936, line: 1246, baseType: !793, size: 256, offset: 19008)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !935, file: !936, line: 1247, baseType: !7, size: 32, offset: 19264)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !935, file: !936, line: 1250, baseType: !2996, size: 64, offset: 19328)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !247, line: 912, size: 1792, elements: !2998)
!2998 = !{!2999, !3000, !3001, !3002, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2997, file: !247, line: 917, baseType: !804, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2997, file: !247, line: 923, baseType: !793, size: 256, offset: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_list", scope: !2997, file: !247, line: 925, baseType: !117, size: 128, offset: 320)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_groups", scope: !2997, file: !247, line: 926, baseType: !3003, size: 128, offset: 448)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_groups", file: !247, line: 901, size: 128, elements: !3004)
!3004 = !{!3005, !3006}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !3003, file: !247, line: 902, baseType: !1113, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3003, file: !247, line: 903, baseType: !345, size: 64, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_groups", scope: !2997, file: !247, line: 927, baseType: !3003, size: 128, offset: 576)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !2997, file: !247, line: 928, baseType: !117, size: 128, offset: 704)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2997, file: !247, line: 930, baseType: !42, size: 32, offset: 832)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "nr_user", scope: !2997, file: !247, line: 931, baseType: !42, size: 32, offset: 864)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "is_active", scope: !2997, file: !247, line: 932, baseType: !42, size: 32, offset: 896)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "nr_task_data", scope: !2997, file: !247, line: 934, baseType: !42, size: 32, offset: 928)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "nr_stat", scope: !2997, file: !247, line: 935, baseType: !42, size: 32, offset: 960)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "nr_freq", scope: !2997, file: !247, line: 936, baseType: !42, size: 32, offset: 992)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_disable", scope: !2997, file: !247, line: 937, baseType: !42, size: 32, offset: 1024)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2997, file: !247, line: 939, baseType: !893, size: 32, offset: 1056)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2997, file: !247, line: 940, baseType: !934, size: 64, offset: 1088)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2997, file: !247, line: 945, baseType: !345, size: 64, offset: 1152)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !2997, file: !247, line: 946, baseType: !345, size: 64, offset: 1216)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !2997, file: !247, line: 947, baseType: !345, size: 64, offset: 1280)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "parent_ctx", scope: !2997, file: !247, line: 953, baseType: !2996, size: 64, offset: 1344)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "parent_gen", scope: !2997, file: !247, line: 954, baseType: !345, size: 64, offset: 1408)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "generation", scope: !2997, file: !247, line: 955, baseType: !345, size: 64, offset: 1472)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !2997, file: !247, line: 956, baseType: !42, size: 32, offset: 1536)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !2997, file: !247, line: 958, baseType: !42, size: 32, offset: 1568)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2997, file: !247, line: 960, baseType: !848, size: 128, align: 64, offset: 1600)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pending", scope: !2997, file: !247, line: 968, baseType: !3028, size: 64, offset: 1728)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "local_t", file: !3029, line: 12, baseType: !3030)
!3029 = !DIFile(filename: "./arch/x86/include/asm/local.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1295a17343a8a36946da0822a5548474")
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3029, line: 10, size: 64, elements: !3031)
!3031 = !{!3032}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3030, file: !3029, line: 11, baseType: !797, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !935, file: !936, line: 1251, baseType: !793, size: 256, offset: 19392)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !935, file: !936, line: 1252, baseType: !117, size: 128, offset: 19648)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !935, file: !936, line: 1259, baseType: !2066, size: 64, offset: 19776)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !935, file: !936, line: 1260, baseType: !1373, size: 16, offset: 19840)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !935, file: !936, line: 1261, baseType: !1373, size: 16, offset: 19856)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !935, file: !936, line: 1314, baseType: !3039, size: 64, offset: 19904)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3041, line: 62, size: 256, align: 256, elements: !3042)
!3041 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3042 = !{!3043, !3044, !3045, !3046, !3047, !3048, !3049}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3040, file: !3041, line: 75, baseType: !351, size: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3040, file: !3041, line: 90, baseType: !351, size: 32, offset: 32)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3040, file: !3041, line: 112, baseType: !346, size: 64, offset: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3040, file: !3041, line: 132, baseType: !351, size: 32, offset: 128)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3040, file: !3041, line: 140, baseType: !351, size: 32, offset: 160)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3040, file: !3041, line: 149, baseType: !351, size: 32, offset: 192)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3040, file: !3041, line: 154, baseType: !3050, offset: 224)
!3050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, elements: !1656)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !935, file: !936, line: 1315, baseType: !350, size: 32, offset: 19968)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !935, file: !936, line: 1316, baseType: !350, size: 32, offset: 20000)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !935, file: !936, line: 1321, baseType: !59, size: 64, offset: 20032)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !935, file: !936, line: 1325, baseType: !42, size: 32, offset: 20096)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !935, file: !936, line: 1326, baseType: !42, size: 32, offset: 20128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !935, file: !936, line: 1327, baseType: !42, size: 32, offset: 20160)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !935, file: !936, line: 1328, baseType: !42, size: 32, offset: 20192)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !935, file: !936, line: 1329, baseType: !848, size: 128, align: 64, offset: 20224)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !935, file: !936, line: 1332, baseType: !3060, size: 128, offset: 20352)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3061, line: 51, size: 128, elements: !3062)
!3061 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3062 = !{!3063, !3068, !3069}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3060, file: !3061, line: 60, baseType: !3064, size: 64)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3065, line: 7, size: 64, elements: !3066)
!3065 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3066 = !{!3067}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3064, file: !3065, line: 12, baseType: !370, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3060, file: !3061, line: 63, baseType: !1425, size: 8, offset: 64)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3060, file: !3061, line: 70, baseType: !1425, size: 8, offset: 72)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !935, file: !936, line: 1335, baseType: !3071, size: 64, offset: 20480)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !936, line: 59, flags: DIFlagFwdDecl)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !935, file: !936, line: 1337, baseType: !3074, size: 128, offset: 20544)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3061, line: 39, size: 128, elements: !3075)
!3075 = !{!3076, !3077, !3078}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3074, file: !3061, line: 40, baseType: !2125, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3074, file: !3061, line: 42, baseType: !351, size: 32, offset: 64)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3074, file: !3061, line: 43, baseType: !351, size: 32, offset: 96)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !935, file: !936, line: 1340, baseType: !3080, size: 64, offset: 20672)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !936, line: 69, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !935, file: !936, line: 1351, baseType: !42, size: 32, offset: 20736)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !935, file: !936, line: 1352, baseType: !42, size: 32, offset: 20768)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !935, file: !936, line: 1354, baseType: !59, size: 64, offset: 20800)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !935, file: !936, line: 1364, baseType: !345, size: 64, offset: 20864)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !935, file: !936, line: 1365, baseType: !345, size: 64, offset: 20928)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !935, file: !936, line: 1412, baseType: !59, size: 64, offset: 20992)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !935, file: !936, line: 1453, baseType: !3089, size: 64, offset: 21056)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !936, line: 1453, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !935, file: !936, line: 1457, baseType: !3092, size: 64, offset: 21120)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !158, line: 61, size: 576, elements: !3094)
!3094 = !{!3095, !3096, !3115, !3118, !3119, !3152, !3162}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3093, file: !158, line: 62, baseType: !157, size: 32)
!3096 = !DIDerivedType(tag: DW_TAG_member, scope: !3093, file: !158, line: 64, baseType: !3097, size: 192, offset: 64)
!3097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3093, file: !158, line: 64, size: 192, elements: !3098)
!3098 = !{!3099, !3110}
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !3097, file: !158, line: 65, baseType: !3100, size: 192)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3097, file: !158, line: 65, size: 192, elements: !3101)
!3101 = !{!3102, !3109}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3100, file: !158, line: 66, baseType: !3103, size: 128)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3104, line: 50, size: 128, elements: !3105)
!3104 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3105 = !{!3106, !3107, !3108}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3103, file: !3104, line: 52, baseType: !59, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3103, file: !3104, line: 54, baseType: !7, size: 32, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3103, file: !3104, line: 55, baseType: !7, size: 32, offset: 96)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3100, file: !158, line: 67, baseType: !59, size: 64, offset: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, scope: !3097, file: !158, line: 70, baseType: !3111, size: 192)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3097, file: !158, line: 70, size: 192, elements: !3112)
!3112 = !{!3113, !3114}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3111, file: !158, line: 71, baseType: !848, size: 128, align: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3111, file: !158, line: 72, baseType: !59, size: 64, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3093, file: !158, line: 76, baseType: !3116, size: 64, offset: 256)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !158, line: 76, flags: DIFlagFwdDecl)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3093, file: !158, line: 77, baseType: !59, size: 64, offset: 320)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3093, file: !158, line: 79, baseType: !3120, size: 64, offset: 384)
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3104, line: 25, size: 256, elements: !3122)
!3122 = !{!3123, !3129, !3133}
!3123 = !DIDerivedType(tag: DW_TAG_member, scope: !3121, file: !3104, line: 26, baseType: !3124, size: 128)
!3124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3121, file: !3104, line: 26, size: 128, elements: !3125)
!3125 = !{!3126, !3128}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3124, file: !3104, line: 27, baseType: !3127, size: 128)
!3127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !1871)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3124, file: !3104, line: 28, baseType: !3127, size: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3121, file: !3104, line: 31, baseType: !3130, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3132)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3104, line: 23, flags: DIFlagFwdDecl)
!3133 = !DIDerivedType(tag: DW_TAG_member, scope: !3121, file: !3104, line: 33, baseType: !3134, size: 64, offset: 192)
!3134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3121, file: !3104, line: 33, size: 64, elements: !3135)
!3135 = !{!3136, !3142, !3147}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3134, file: !3104, line: 38, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !3104, line: 34, size: 64, elements: !3138)
!3138 = !{!3139, !3140, !3141}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3137, file: !3104, line: 35, baseType: !1321, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3137, file: !3104, line: 36, baseType: !103, size: 8, offset: 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3137, file: !3104, line: 37, baseType: !103, size: 8, offset: 40)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3134, file: !3104, line: 42, baseType: !3143, size: 16)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !3104, line: 39, size: 16, elements: !3144)
!3144 = !{!3145, !3146}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3143, file: !3104, line: 40, baseType: !103, size: 8)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3143, file: !3104, line: 41, baseType: !103, size: 8, offset: 8)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3134, file: !3104, line: 46, baseType: !3148, size: 16)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !3104, line: 43, size: 16, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3148, file: !3104, line: 44, baseType: !103, size: 8)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3148, file: !3104, line: 45, baseType: !103, size: 8, offset: 8)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3093, file: !158, line: 81, baseType: !3153, size: 64, offset: 448)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !158, line: 85, size: 384, elements: !3155)
!3155 = !{!3156, !3157, !3158, !3159, !3160, !3161}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3154, file: !158, line: 86, baseType: !3116, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3154, file: !158, line: 87, baseType: !59, size: 64, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3154, file: !158, line: 88, baseType: !59, size: 64, offset: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3154, file: !158, line: 89, baseType: !59, size: 64, offset: 192)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3154, file: !158, line: 90, baseType: !1425, size: 8, offset: 256)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3154, file: !158, line: 92, baseType: !3153, size: 64, offset: 320)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3093, file: !158, line: 82, baseType: !7, size: 32, offset: 512)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !935, file: !936, line: 1463, baseType: !3164, offset: 21184)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !936, line: 739, elements: !712)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !935, file: !936, line: 1470, baseType: !848, size: 128, align: 64, offset: 21184)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !935, file: !936, line: 1471, baseType: !893, size: 32, offset: 21312)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !935, file: !936, line: 1472, baseType: !42, size: 32, offset: 21344)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !935, file: !936, line: 1474, baseType: !934, size: 64, offset: 21376)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !935, file: !936, line: 1475, baseType: !2349, size: 320, offset: 21440)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !935, file: !936, line: 1478, baseType: !3171, size: 64, offset: 21760)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3173, line: 49, size: 512, elements: !3174)
!3173 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3174 = !{!3175, !3176, !3177, !3178, !3179, !3181, !3182, !3183, !3185}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3172, file: !3173, line: 50, baseType: !3171, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3172, file: !3173, line: 51, baseType: !40, size: 64, offset: 64)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3172, file: !3173, line: 52, baseType: !59, size: 64, offset: 128)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3172, file: !3173, line: 53, baseType: !59, size: 64, offset: 192)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3172, file: !3173, line: 54, baseType: !3180, size: 64, offset: 256)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3172, file: !3173, line: 56, baseType: !7, size: 32, offset: 320)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3172, file: !3173, line: 58, baseType: !7, size: 32, offset: 352)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3172, file: !3173, line: 59, baseType: !3184, size: 64, offset: 384)
!3184 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !45, line: 159, baseType: !345)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3172, file: !3173, line: 60, baseType: !1354, size: 64, offset: 448)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !935, file: !936, line: 1482, baseType: !893, size: 32, offset: 21824)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !935, file: !936, line: 1489, baseType: !40, size: 64, offset: 21888)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !935, file: !936, line: 1504, baseType: !40, size: 64, offset: 21952)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !935, file: !936, line: 1505, baseType: !346, size: 64, offset: 22016)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !935, file: !936, line: 1506, baseType: !345, size: 64, offset: 22080)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !935, file: !936, line: 1507, baseType: !346, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !935, file: !936, line: 1508, baseType: !346, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !935, file: !936, line: 1509, baseType: !346, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !935, file: !936, line: 1510, baseType: !848, size: 128, align: 64, offset: 22208)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !935, file: !936, line: 1511, baseType: !42, size: 32, offset: 22336)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !935, file: !936, line: 1515, baseType: !3197, size: 64, offset: 22400)
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !843, line: 56, size: 64, elements: !3198)
!3198 = !{!3199}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3197, file: !843, line: 57, baseType: !846, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !935, file: !936, line: 1518, baseType: !3197, size: 64, offset: 22464)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !935, file: !936, line: 1528, baseType: !848, size: 128, align: 64, offset: 22528)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !935, file: !936, line: 1552, baseType: !3203, size: 35328, offset: 23040)
!3203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3204, line: 430, size: 35328, elements: !3205)
!3204 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3205 = !{!3206, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231, !4634, !4635, !4636, !4637, !4638, !4639, !4642, !4643, !4644, !4645}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3203, file: !3204, line: 432, baseType: !3207, size: 192)
!3207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3208, size: 192, elements: !443)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3209, line: 16, size: 64, elements: !3210)
!3209 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3210 = !{!3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3208, file: !3209, line: 17, baseType: !113, size: 16)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3208, file: !3209, line: 18, baseType: !113, size: 16, offset: 16)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3208, file: !3209, line: 19, baseType: !113, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3208, file: !3209, line: 19, baseType: !113, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3208, file: !3209, line: 19, baseType: !113, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3208, file: !3209, line: 19, baseType: !113, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3208, file: !3209, line: 19, baseType: !113, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3208, file: !3209, line: 20, baseType: !113, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3208, file: !3209, line: 20, baseType: !113, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3208, file: !3209, line: 20, baseType: !113, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3208, file: !3209, line: 20, baseType: !113, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3208, file: !3209, line: 20, baseType: !113, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3208, file: !3209, line: 20, baseType: !113, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3203, file: !3204, line: 436, baseType: !59, size: 64, offset: 192)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3203, file: !3204, line: 440, baseType: !46, size: 16, offset: 256)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3203, file: !3204, line: 441, baseType: !46, size: 16, offset: 272)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3203, file: !3204, line: 442, baseType: !46, size: 16, offset: 288)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3203, file: !3204, line: 443, baseType: !46, size: 16, offset: 304)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3203, file: !3204, line: 447, baseType: !59, size: 64, offset: 320)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3203, file: !3204, line: 448, baseType: !59, size: 64, offset: 384)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3203, file: !3204, line: 459, baseType: !3232, size: 256, offset: 448)
!3232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3233, size: 256, elements: !902)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !247, line: 671, size: 8512, elements: !3235)
!3235 = !{!3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3965, !3966, !3967, !3968, !3974, !3975, !3976, !3977, !3978, !4062, !4063, !4064, !4065, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4185, !4186, !4187, !4188, !4189, !4190, !4205, !4206, !4207, !4208, !4209, !4215, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4232, !4403, !4404, !4617, !4618, !4631, !4632, !4633}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "event_entry", scope: !3234, file: !247, line: 678, baseType: !117, size: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "sibling_list", scope: !3234, file: !247, line: 684, baseType: !117, size: 128, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "active_list", scope: !3234, file: !247, line: 685, baseType: !117, size: 128, offset: 256)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3234, file: !247, line: 689, baseType: !983, size: 192, align: 64, offset: 384)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "group_index", scope: !3234, file: !247, line: 690, baseType: !345, size: 64, offset: 576)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_entry", scope: !3234, file: !247, line: 696, baseType: !117, size: 128, offset: 640)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "hlist_entry", scope: !3234, file: !247, line: 698, baseType: !704, size: 128, offset: 768)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "active_entry", scope: !3234, file: !247, line: 699, baseType: !117, size: 128, offset: 896)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "nr_siblings", scope: !3234, file: !247, line: 700, baseType: !42, size: 32, offset: 1024)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "event_caps", scope: !3234, file: !247, line: 703, baseType: !42, size: 32, offset: 1056)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "group_caps", scope: !3234, file: !247, line: 705, baseType: !42, size: 32, offset: 1088)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "group_generation", scope: !3234, file: !247, line: 707, baseType: !7, size: 32, offset: 1120)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3234, file: !247, line: 708, baseType: !3233, size: 64, offset: 1152)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3234, file: !247, line: 714, baseType: !3250, size: 64, offset: 1216)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pmu", file: !247, line: 302, size: 2432, elements: !3252)
!3252 = !{!3253, !3254, !3255, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3871, !3872, !3873, !3874, !3875, !3879, !3880, !3884, !3888, !3889, !3893, !3897, !3898, !3899, !3903, !3907, !3911, !3912, !3913, !3917, !3921, !3925, !3930, !3931, !3951, !3955, !3956, !3957, !3961}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3251, file: !247, line: 303, baseType: !117, size: 128)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3251, file: !247, line: 305, baseType: !388, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3251, file: !247, line: 306, baseType: !3256, size: 64, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !171, line: 705, size: 5824, elements: !3258)
!3258 = !{!3259, !3260, !3261, !3264, !3265, !3318, !3404, !3405, !3406, !3407, !3408, !3415, !3573, !3586, !3596, !3600, !3602, !3603, !3604, !3608, !3615, !3616, !3619, !3622, !3749, !3750, !3751, !3752, !3753, !3754, !3755, !3812, !3813, !3814, !3817, !3820, !3829, !3830, !3831, !3832, !3833, !3834}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3257, file: !171, line: 706, baseType: !401, size: 512)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3257, file: !171, line: 707, baseType: !3256, size: 64, offset: 512)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3257, file: !171, line: 709, baseType: !3262, size: 64, offset: 576)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !171, line: 37, flags: DIFlagFwdDecl)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3257, file: !171, line: 711, baseType: !36, size: 64, offset: 640)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3257, file: !171, line: 712, baseType: !3266, size: 64, offset: 704)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3268)
!3268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !171, line: 89, size: 384, elements: !3269)
!3269 = !{!3270, !3271, !3272, !3278, !3283, !3287}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3268, file: !171, line: 90, baseType: !36, size: 64)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3268, file: !171, line: 91, baseType: !488, size: 64, offset: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3268, file: !171, line: 92, baseType: !3273, size: 64, offset: 128)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!42, !3276, !437}
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3257)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3268, file: !171, line: 93, baseType: !3279, size: 64, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3280, size: 64)
!3280 = !DISubroutineType(types: !3281)
!3281 = !{!442, !3276, !3282, !1604, !1605}
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3268, file: !171, line: 95, baseType: !3284, size: 64, offset: 256)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{null, !3256}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3268, file: !171, line: 97, baseType: !3288, size: 64, offset: 320)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3290)
!3290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !178, line: 286, size: 1472, elements: !3291)
!3291 = !{!3292, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3290, file: !178, line: 287, baseType: !3293, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DISubroutineType(types: !3295)
!3295 = !{!42, !3256}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3290, file: !178, line: 288, baseType: !3284, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3290, file: !178, line: 289, baseType: !3293, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3290, file: !178, line: 290, baseType: !3293, size: 64, offset: 192)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3290, file: !178, line: 291, baseType: !3293, size: 64, offset: 256)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3290, file: !178, line: 292, baseType: !3293, size: 64, offset: 320)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3290, file: !178, line: 293, baseType: !3293, size: 64, offset: 384)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3290, file: !178, line: 294, baseType: !3293, size: 64, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3290, file: !178, line: 295, baseType: !3293, size: 64, offset: 512)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3290, file: !178, line: 296, baseType: !3293, size: 64, offset: 576)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3290, file: !178, line: 297, baseType: !3293, size: 64, offset: 640)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3290, file: !178, line: 298, baseType: !3293, size: 64, offset: 704)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3290, file: !178, line: 299, baseType: !3293, size: 64, offset: 768)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3290, file: !178, line: 300, baseType: !3293, size: 64, offset: 832)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3290, file: !178, line: 301, baseType: !3293, size: 64, offset: 896)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3290, file: !178, line: 302, baseType: !3293, size: 64, offset: 960)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3290, file: !178, line: 303, baseType: !3293, size: 64, offset: 1024)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3290, file: !178, line: 304, baseType: !3293, size: 64, offset: 1088)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3290, file: !178, line: 305, baseType: !3293, size: 64, offset: 1152)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3290, file: !178, line: 306, baseType: !3293, size: 64, offset: 1216)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3290, file: !178, line: 307, baseType: !3293, size: 64, offset: 1280)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3290, file: !178, line: 308, baseType: !3293, size: 64, offset: 1344)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3290, file: !178, line: 309, baseType: !3293, size: 64, offset: 1408)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3257, file: !171, line: 714, baseType: !3319, size: 64, offset: 768)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3321)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3322, line: 80, size: 1344, elements: !3323)
!3322 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!3323 = !{!3324, !3325, !3326, !3327, !3328, !3329, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3403}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3321, file: !3322, line: 81, baseType: !36, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3321, file: !3322, line: 82, baseType: !36, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3321, file: !3322, line: 83, baseType: !488, size: 64, offset: 128)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3321, file: !3322, line: 84, baseType: !488, size: 64, offset: 192)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3321, file: !3322, line: 85, baseType: !488, size: 64, offset: 256)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3321, file: !3322, line: 87, baseType: !3330, size: 64, offset: 320)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!42, !3256, !3333}
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !165, line: 96, size: 1152, elements: !3335)
!3335 = !{!3336, !3337, !3338, !3339, !3340, !3341, !3342, !3355, !3366, !3367, !3368, !3369, !3370, !3378, !3379, !3380, !3381, !3382, !3383}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3334, file: !165, line: 97, baseType: !36, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3334, file: !165, line: 98, baseType: !3319, size: 64, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3334, file: !165, line: 100, baseType: !388, size: 64, offset: 128)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3334, file: !165, line: 101, baseType: !36, size: 64, offset: 192)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3334, file: !165, line: 103, baseType: !1425, size: 8, offset: 256)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3334, file: !165, line: 104, baseType: !164, size: 32, offset: 288)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3334, file: !165, line: 106, baseType: !3343, size: 64, offset: 320)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3345)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3346, line: 282, size: 1600, elements: !3347)
!3346 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!3347 = !{!3348, !3349, !3350, !3354}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3345, file: !3346, line: 283, baseType: !2734, size: 256)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3345, file: !3346, line: 284, baseType: !2734, size: 256, offset: 256)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3345, file: !3346, line: 285, baseType: !3351, size: 1024, offset: 512)
!3351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 1024, elements: !3352)
!3352 = !{!3353}
!3353 = !DISubrange(count: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3345, file: !3346, line: 286, baseType: !1354, size: 64, offset: 1536)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3334, file: !165, line: 107, baseType: !3356, size: 64, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3358)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3346, line: 217, size: 256, elements: !3359)
!3359 = !{!3360, !3362, !3364, !3365}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3358, file: !3346, line: 218, baseType: !3361, size: 128)
!3361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !1871)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3358, file: !3346, line: 219, baseType: !3363, size: 64, offset: 128)
!3363 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3346, line: 15, baseType: !59)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3358, file: !3346, line: 220, baseType: !351, size: 32, offset: 192)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3358, file: !3346, line: 221, baseType: !351, size: 32, offset: 224)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3334, file: !165, line: 109, baseType: !3293, size: 64, offset: 448)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3334, file: !165, line: 110, baseType: !3284, size: 64, offset: 512)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3334, file: !165, line: 111, baseType: !3293, size: 64, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3334, file: !165, line: 112, baseType: !3284, size: 64, offset: 640)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3334, file: !165, line: 113, baseType: !3371, size: 64, offset: 704)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!42, !3256, !3374}
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !178, line: 60, baseType: !3375)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !178, line: 58, size: 32, elements: !3376)
!3376 = !{!3377}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3375, file: !178, line: 59, baseType: !42, size: 32)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3334, file: !165, line: 114, baseType: !3293, size: 64, offset: 768)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3334, file: !165, line: 115, baseType: !488, size: 64, offset: 832)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3334, file: !165, line: 116, baseType: !488, size: 64, offset: 896)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3334, file: !165, line: 118, baseType: !3288, size: 64, offset: 960)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3334, file: !165, line: 119, baseType: !3284, size: 64, offset: 1024)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3334, file: !165, line: 121, baseType: !3384, size: 64, offset: 1088)
!3384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3385, size: 64)
!3385 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !165, line: 121, flags: DIFlagFwdDecl)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3321, file: !3322, line: 88, baseType: !3273, size: 64, offset: 384)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3321, file: !3322, line: 89, baseType: !3293, size: 64, offset: 448)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3321, file: !3322, line: 90, baseType: !3284, size: 64, offset: 512)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3321, file: !3322, line: 91, baseType: !3284, size: 64, offset: 576)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3321, file: !3322, line: 92, baseType: !3284, size: 64, offset: 640)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3321, file: !3322, line: 94, baseType: !3293, size: 64, offset: 704)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3321, file: !3322, line: 95, baseType: !3293, size: 64, offset: 768)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3321, file: !3322, line: 97, baseType: !3371, size: 64, offset: 832)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3321, file: !3322, line: 98, baseType: !3293, size: 64, offset: 896)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3321, file: !3322, line: 100, baseType: !3293, size: 64, offset: 960)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3321, file: !3322, line: 102, baseType: !3293, size: 64, offset: 1024)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3321, file: !3322, line: 103, baseType: !3284, size: 64, offset: 1088)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3321, file: !3322, line: 105, baseType: !3288, size: 64, offset: 1152)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3321, file: !3322, line: 107, baseType: !3400, size: 64, offset: 1216)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3402)
!3402 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3322, line: 107, flags: DIFlagFwdDecl)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3321, file: !3322, line: 109, baseType: !1425, size: 8, offset: 1280)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3257, file: !171, line: 715, baseType: !3333, size: 64, offset: 832)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3257, file: !171, line: 717, baseType: !40, size: 64, offset: 896)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3257, file: !171, line: 719, baseType: !40, size: 64, offset: 960)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3257, file: !171, line: 721, baseType: !793, size: 256, offset: 1024)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3257, file: !171, line: 725, baseType: !3409, size: 448, offset: 1280)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !171, line: 517, size: 448, elements: !3410)
!3410 = !{!3411, !3412, !3413, !3414}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3409, file: !171, line: 518, baseType: !117, size: 128)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3409, file: !171, line: 519, baseType: !117, size: 128, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !3409, file: !171, line: 520, baseType: !117, size: 128, offset: 256)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3409, file: !171, line: 521, baseType: !170, size: 32, offset: 384)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3257, file: !171, line: 726, baseType: !3416, size: 2496, offset: 1728)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !178, line: 663, size: 2496, elements: !3417)
!3417 = !{!3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3500, !3504}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3416, file: !178, line: 664, baseType: !3374, size: 32)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3416, file: !178, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3416, file: !178, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3416, file: !178, line: 667, baseType: !1425, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3416, file: !178, line: 668, baseType: !1425, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3416, file: !178, line: 669, baseType: !1425, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3416, file: !178, line: 670, baseType: !1425, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3416, file: !178, line: 671, baseType: !1425, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3416, file: !178, line: 672, baseType: !1425, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3416, file: !178, line: 673, baseType: !1425, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3416, file: !178, line: 674, baseType: !1425, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3416, file: !178, line: 675, baseType: !350, size: 32, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3416, file: !178, line: 676, baseType: !79, size: 32, offset: 96)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3416, file: !178, line: 678, baseType: !117, size: 128, offset: 128)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3416, file: !178, line: 679, baseType: !1579, size: 256, offset: 256)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3416, file: !178, line: 680, baseType: !3434, size: 64, offset: 512)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3436, line: 43, size: 1536, elements: !3437)
!3436 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!3437 = !{!3438, !3439, !3440, !3441, !3442, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3435, file: !3436, line: 44, baseType: !36, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3435, file: !3436, line: 45, baseType: !42, size: 32, offset: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3435, file: !3436, line: 46, baseType: !117, size: 128, offset: 128)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3435, file: !3436, line: 47, baseType: !79, size: 32, offset: 256)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3435, file: !3436, line: 48, baseType: !3443, size: 64, offset: 320)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !178, line: 629, flags: DIFlagFwdDecl)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3435, file: !3436, line: 49, baseType: !2349, size: 320, offset: 384)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3435, file: !3436, line: 50, baseType: !59, size: 64, offset: 704)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3435, file: !3436, line: 51, baseType: !339, size: 64, offset: 768)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3435, file: !3436, line: 52, baseType: !339, size: 64, offset: 832)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3435, file: !3436, line: 53, baseType: !339, size: 64, offset: 896)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3435, file: !3436, line: 54, baseType: !339, size: 64, offset: 960)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3435, file: !3436, line: 55, baseType: !339, size: 64, offset: 1024)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3435, file: !3436, line: 56, baseType: !59, size: 64, offset: 1088)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3435, file: !3436, line: 57, baseType: !59, size: 64, offset: 1152)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3435, file: !3436, line: 58, baseType: !59, size: 64, offset: 1216)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3435, file: !3436, line: 59, baseType: !59, size: 64, offset: 1280)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3435, file: !3436, line: 60, baseType: !59, size: 64, offset: 1344)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3435, file: !3436, line: 61, baseType: !3256, size: 64, offset: 1408)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3435, file: !3436, line: 62, baseType: !1425, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3435, file: !3436, line: 63, baseType: !1425, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3416, file: !178, line: 681, baseType: !1425, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3416, file: !178, line: 682, baseType: !1425, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3416, file: !178, line: 683, baseType: !1425, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3416, file: !178, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3416, file: !178, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3416, file: !178, line: 690, baseType: !1053, size: 512, offset: 640)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3416, file: !178, line: 691, baseType: !345, size: 64, offset: 1152)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3416, file: !178, line: 692, baseType: !1540, size: 256, offset: 1216)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3416, file: !178, line: 693, baseType: !74, size: 192, offset: 1472)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3416, file: !178, line: 694, baseType: !3443, size: 64, offset: 1664)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3416, file: !178, line: 695, baseType: !69, size: 32, offset: 1728)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3416, file: !178, line: 696, baseType: !69, size: 32, offset: 1760)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3416, file: !178, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3416, file: !178, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3416, file: !178, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3416, file: !178, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !3416, file: !178, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3416, file: !178, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3416, file: !178, line: 703, baseType: !1425, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3416, file: !178, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3416, file: !178, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3416, file: !178, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3416, file: !178, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3416, file: !178, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3416, file: !178, line: 709, baseType: !7, size: 32, offset: 1824)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3416, file: !178, line: 710, baseType: !177, size: 32, offset: 1856)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3416, file: !178, line: 711, baseType: !185, size: 32, offset: 1888)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !3416, file: !178, line: 712, baseType: !185, size: 32, offset: 1920)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3416, file: !178, line: 713, baseType: !42, size: 32, offset: 1952)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3416, file: !178, line: 714, baseType: !42, size: 32, offset: 1984)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3416, file: !178, line: 715, baseType: !345, size: 64, offset: 2048)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3416, file: !178, line: 716, baseType: !345, size: 64, offset: 2112)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3416, file: !178, line: 717, baseType: !345, size: 64, offset: 2176)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3416, file: !178, line: 718, baseType: !345, size: 64, offset: 2240)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3416, file: !178, line: 720, baseType: !3495, size: 64, offset: 2304)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !178, line: 632, size: 64, elements: !3497)
!3497 = !{!3498, !3499}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3496, file: !178, line: 633, baseType: !79, size: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3496, file: !178, line: 634, baseType: !7, size: 32, offset: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3416, file: !178, line: 721, baseType: !3501, size: 64, offset: 2368)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{null, !3256, !1321}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3416, file: !178, line: 722, baseType: !3505, size: 64, offset: 2432)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !193, line: 117, size: 2432, elements: !3507)
!3507 = !{!3508, !3536, !3537, !3544, !3549, !3571, !3572}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !3506, file: !193, line: 118, baseType: !3509, size: 320)
!3509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !193, line: 52, size: 320, elements: !3510)
!3510 = !{!3511, !3515, !3516, !3517, !3518, !3519}
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3509, file: !193, line: 53, baseType: !3512, size: 128)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1213, line: 82, size: 128, elements: !3513)
!3513 = !{!3514}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3512, file: !1213, line: 83, baseType: !117, size: 128)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !3509, file: !193, line: 54, baseType: !1321, size: 32, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !3509, file: !193, line: 55, baseType: !1321, size: 32, offset: 160)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !3509, file: !193, line: 56, baseType: !1321, size: 32, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3509, file: !193, line: 57, baseType: !192, size: 32, offset: 224)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !3509, file: !193, line: 58, baseType: !3520, size: 64, offset: 256)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !3522, line: 65, size: 384, elements: !3523)
!3522 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!3523 = !{!3524, !3525}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !3521, file: !3522, line: 66, baseType: !1275, size: 320)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3521, file: !3522, line: 67, baseType: !3526, size: 64, offset: 320)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !3522, line: 54, size: 192, elements: !3528)
!3528 = !{!3529, !3534, !3535}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !3527, file: !3522, line: 55, baseType: !3530, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !3522, line: 51, baseType: !3531)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!42, !3526, !59, !40}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3527, file: !3522, line: 56, baseType: !3526, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !3527, file: !3522, line: 57, baseType: !42, size: 32, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !3506, file: !193, line: 119, baseType: !3509, size: 320, offset: 320)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3506, file: !193, line: 120, baseType: !3538, size: 1408, offset: 640)
!3538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !193, line: 85, size: 1408, elements: !3539)
!3539 = !{!3540, !3541, !3542, !3543}
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !3538, file: !193, line: 86, baseType: !3509, size: 320)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !3538, file: !193, line: 87, baseType: !3521, size: 384, offset: 320)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !3538, file: !193, line: 88, baseType: !3509, size: 320, offset: 704)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !3538, file: !193, line: 89, baseType: !3521, size: 384, offset: 1024)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3506, file: !193, line: 121, baseType: !3545, size: 192, offset: 2048)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !193, line: 71, size: 192, elements: !3546)
!3546 = !{!3547, !3548}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3545, file: !193, line: 72, baseType: !117, size: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !3545, file: !193, line: 73, baseType: !1321, size: 32, offset: 128)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !3506, file: !193, line: 122, baseType: !3550, size: 64, offset: 2240)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !193, line: 107, size: 576, elements: !3552)
!3552 = !{!3553, !3554, !3570}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3551, file: !193, line: 108, baseType: !198, size: 32)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3551, file: !193, line: 113, baseType: !3555, size: 448, offset: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3551, file: !193, line: 109, size: 448, elements: !3556)
!3556 = !{!3557, !3558, !3563}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !3555, file: !193, line: 110, baseType: !1212, size: 320)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !3555, file: !193, line: 111, baseType: !3559, size: 192)
!3559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !193, line: 66, size: 192, elements: !3560)
!3560 = !{!3561, !3562}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3559, file: !193, line: 67, baseType: !117, size: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3559, file: !193, line: 68, baseType: !1321, size: 32, offset: 128)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3555, file: !193, line: 112, baseType: !3564, size: 448)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !193, line: 92, size: 448, elements: !3565)
!3565 = !{!3566, !3567, !3568}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3564, file: !193, line: 93, baseType: !205, size: 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !3564, file: !193, line: 94, baseType: !1212, size: 320, offset: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3564, file: !193, line: 95, baseType: !3569, size: 64, offset: 384)
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3551, file: !193, line: 114, baseType: !3256, size: 64, offset: 512)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !3506, file: !193, line: 123, baseType: !3550, size: 64, offset: 2304)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !3506, file: !193, line: 124, baseType: !3550, size: 64, offset: 2368)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3257, file: !171, line: 727, baseType: !3574, size: 64, offset: 4224)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !178, line: 742, size: 1792, elements: !3576)
!3576 = !{!3577, !3578, !3579, !3583, !3584, !3585}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3575, file: !178, line: 743, baseType: !3290, size: 1472)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3575, file: !178, line: 744, baseType: !3293, size: 64, offset: 1472)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3575, file: !178, line: 745, baseType: !3580, size: 64, offset: 1536)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{null, !3256, !1425}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3575, file: !178, line: 746, baseType: !3293, size: 64, offset: 1600)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3575, file: !178, line: 747, baseType: !3284, size: 64, offset: 1664)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3575, file: !178, line: 748, baseType: !3284, size: 64, offset: 1728)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3257, file: !171, line: 736, baseType: !3587, size: 128, offset: 4288)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !171, line: 529, size: 128, elements: !3588)
!3588 = !{!3589, !3593}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3587, file: !171, line: 531, baseType: !3590, size: 64)
!3590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3591, size: 64)
!3591 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3592, line: 13, flags: DIFlagFwdDecl)
!3592 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3587, file: !171, line: 532, baseType: !3594, size: 64, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !171, line: 49, flags: DIFlagFwdDecl)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3257, file: !171, line: 738, baseType: !3597, size: 64, offset: 4416)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3599)
!3599 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !171, line: 738, flags: DIFlagFwdDecl)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3257, file: !171, line: 740, baseType: !3601, size: 64, offset: 4480)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3257, file: !171, line: 741, baseType: !345, size: 64, offset: 4544)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3257, file: !171, line: 746, baseType: !345, size: 64, offset: 4608)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3257, file: !171, line: 747, baseType: !3605, size: 64, offset: 4672)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3607)
!3607 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !171, line: 747, flags: DIFlagFwdDecl)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3257, file: !171, line: 749, baseType: !3609, size: 64, offset: 4736)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !171, line: 428, size: 128, elements: !3611)
!3611 = !{!3612, !3613, !3614}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3610, file: !171, line: 433, baseType: !7, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !3610, file: !171, line: 434, baseType: !7, size: 32, offset: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3610, file: !171, line: 435, baseType: !59, size: 64, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3257, file: !171, line: 751, baseType: !117, size: 128, offset: 4800)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3257, file: !171, line: 762, baseType: !3617, size: 64, offset: 4928)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !171, line: 762, flags: DIFlagFwdDecl)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3257, file: !171, line: 770, baseType: !3620, offset: 4992)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3621, line: 5, elements: !712)
!3621 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3257, file: !171, line: 772, baseType: !3623, size: 64, offset: 4992)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3625, line: 48, size: 1152, elements: !3626)
!3625 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!3626 = !{!3627, !3628, !3630, !3631, !3735, !3743, !3744, !3745, !3746, !3747, !3748}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3624, file: !3625, line: 49, baseType: !36, size: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3624, file: !3625, line: 50, baseType: !3629, size: 32, offset: 64)
!3629 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3625, line: 25, baseType: !350)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3624, file: !3625, line: 51, baseType: !36, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3624, file: !3625, line: 52, baseType: !3632, size: 512, offset: 192)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3633, line: 41, size: 512, elements: !3634)
!3633 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!3634 = !{!3635, !3637, !3731, !3732, !3733, !3734}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3632, file: !3633, line: 42, baseType: !3636, size: 64)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3632, file: !3633, line: 43, baseType: !3638, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3640)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3633, line: 125, size: 1408, elements: !3641)
!3641 = !{!3642, !3646, !3650, !3656, !3660, !3661, !3665, !3669, !3673, !3678, !3682, !3683, !3687, !3691, !3695, !3706, !3707, !3708, !3709, !3719, !3723, !3727}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3640, file: !3633, line: 126, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DISubroutineType(types: !3645)
!3645 = !{!3636, !3636}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3640, file: !3633, line: 127, baseType: !3647, size: 64, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{null, !3636}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3640, file: !3633, line: 128, baseType: !3651, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DISubroutineType(types: !3653)
!3653 = !{!1425, !3654}
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3632)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3640, file: !3633, line: 129, baseType: !3657, size: 64, offset: 192)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!1354, !3654, !3276}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !3640, file: !3633, line: 131, baseType: !3651, size: 64, offset: 256)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !3640, file: !3633, line: 133, baseType: !3662, size: 64, offset: 320)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DISubroutineType(types: !3664)
!3664 = !{!209, !3654}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3640, file: !3633, line: 134, baseType: !3666, size: 64, offset: 384)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!1425, !3654, !36}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3640, file: !3633, line: 136, baseType: !3670, size: 64, offset: 448)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!42, !3654, !36, !7, !40, !55}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3640, file: !3633, line: 141, baseType: !3674, size: 64, offset: 512)
!3674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3675, size: 64)
!3675 = !DISubroutineType(types: !3676)
!3676 = !{!42, !3654, !36, !3677, !55}
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3640, file: !3633, line: 144, baseType: !3679, size: 64, offset: 576)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!36, !3654}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3640, file: !3633, line: 145, baseType: !3679, size: 64, offset: 640)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3640, file: !3633, line: 146, baseType: !3684, size: 64, offset: 704)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!3636, !3654}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3640, file: !3633, line: 148, baseType: !3688, size: 64, offset: 768)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!3636, !3654, !3636}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3640, file: !3633, line: 151, baseType: !3692, size: 64, offset: 832)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!3636, !3654, !36}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3640, file: !3633, line: 153, baseType: !3696, size: 64, offset: 896)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!42, !3654, !36, !36, !7, !7, !3699}
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3633, line: 94, size: 640, elements: !3701)
!3701 = !{!3702, !3703, !3704}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3700, file: !3633, line: 95, baseType: !3636, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3700, file: !3633, line: 96, baseType: !7, size: 32, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3700, file: !3633, line: 97, baseType: !3705, size: 512, offset: 128)
!3705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 512, elements: !1094)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3640, file: !3633, line: 158, baseType: !3688, size: 64, offset: 960)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3640, file: !3633, line: 161, baseType: !3684, size: 64, offset: 1024)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3640, file: !3633, line: 163, baseType: !3643, size: 64, offset: 1088)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3640, file: !3633, line: 164, baseType: !3710, size: 64, offset: 1152)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!42, !3654, !3713}
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3633, line: 73, size: 128, elements: !3715)
!3715 = !{!3716, !3717, !3718}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3714, file: !3633, line: 74, baseType: !7, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3714, file: !3633, line: 75, baseType: !7, size: 32, offset: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3714, file: !3633, line: 76, baseType: !3654, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !3640, file: !3633, line: 166, baseType: !3720, size: 64, offset: 1216)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!40, !3636, !42}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !3640, file: !3633, line: 167, baseType: !3724, size: 64, offset: 1280)
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3725, size: 64)
!3725 = !DISubroutineType(types: !3726)
!3726 = !{!42, !3654, !7}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3640, file: !3633, line: 168, baseType: !3728, size: 64, offset: 1344)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!42, !3636}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3632, file: !3633, line: 44, baseType: !3256, size: 64, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3632, file: !3633, line: 45, baseType: !117, size: 128, offset: 192)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3632, file: !3633, line: 46, baseType: !117, size: 128, offset: 320)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3632, file: !3633, line: 47, baseType: !103, size: 8, offset: 448)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3624, file: !3625, line: 54, baseType: !3736, size: 64, offset: 704)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3625, line: 28, size: 256, elements: !3738)
!3738 = !{!3739, !3740, !3741, !3742}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3737, file: !3625, line: 29, baseType: !442, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3737, file: !3625, line: 30, baseType: !42, size: 32, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3737, file: !3625, line: 31, baseType: !40, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3737, file: !3625, line: 32, baseType: !3736, size: 64, offset: 192)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3624, file: !3625, line: 55, baseType: !3736, size: 64, offset: 768)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3624, file: !3625, line: 56, baseType: !3623, size: 64, offset: 832)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3624, file: !3625, line: 57, baseType: !3623, size: 64, offset: 896)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3624, file: !3625, line: 58, baseType: !3623, size: 64, offset: 960)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3624, file: !3625, line: 62, baseType: !59, size: 64, offset: 1024)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3624, file: !3625, line: 63, baseType: !40, size: 64, offset: 1088)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3257, file: !171, line: 773, baseType: !3636, size: 64, offset: 5056)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3257, file: !171, line: 776, baseType: !42, size: 32, offset: 5120)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3257, file: !171, line: 778, baseType: !667, size: 32, offset: 5152)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3257, file: !171, line: 779, baseType: !350, size: 32, offset: 5184)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3257, file: !171, line: 781, baseType: !79, size: 32, offset: 5216)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3257, file: !171, line: 782, baseType: !117, size: 128, offset: 5248)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3257, file: !171, line: 784, baseType: !3756, size: 64, offset: 5376)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3758)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3759, line: 52, size: 768, elements: !3760)
!3759 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3760 = !{!3761, !3762, !3763, !3764, !3765, !3769, !3773, !3774, !3775, !3803, !3807, !3811}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3758, file: !3759, line: 53, baseType: !36, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3758, file: !3759, line: 55, baseType: !488, size: 64, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3758, file: !3759, line: 56, baseType: !488, size: 64, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3758, file: !3759, line: 58, baseType: !3273, size: 64, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3758, file: !3759, line: 59, baseType: !3766, size: 64, offset: 256)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!442, !3276, !3282}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3758, file: !3759, line: 61, baseType: !3770, size: 64, offset: 320)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{null, !3756}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3758, file: !3759, line: 62, baseType: !3284, size: 64, offset: 384)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3758, file: !3759, line: 64, baseType: !3293, size: 64, offset: 448)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3758, file: !3759, line: 66, baseType: !3776, size: 64, offset: 512)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3778)
!3778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !216, line: 39, size: 384, elements: !3779)
!3779 = !{!3780, !3781, !3785, !3789, !3795, !3799}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3778, file: !216, line: 40, baseType: !215, size: 32)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3778, file: !216, line: 41, baseType: !3782, size: 64, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!1425}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3778, file: !216, line: 42, baseType: !3786, size: 64, offset: 128)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!40}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3778, file: !216, line: 43, baseType: !3790, size: 64, offset: 192)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!1354, !3793}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !216, line: 19, flags: DIFlagFwdDecl)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3778, file: !216, line: 44, baseType: !3796, size: 64, offset: 256)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!1354}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3778, file: !216, line: 45, baseType: !3800, size: 64, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{null, !40}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3758, file: !3759, line: 67, baseType: !3804, size: 64, offset: 576)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!1354, !3276}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3758, file: !3759, line: 69, baseType: !3808, size: 64, offset: 640)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !3276, !1604, !1605}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3758, file: !3759, line: 71, baseType: !3288, size: 64, offset: 704)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3257, file: !171, line: 785, baseType: !488, size: 64, offset: 5440)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3257, file: !171, line: 787, baseType: !3284, size: 64, offset: 5504)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3257, file: !171, line: 788, baseType: !3815, size: 64, offset: 5568)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !171, line: 46, flags: DIFlagFwdDecl)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3257, file: !171, line: 789, baseType: !3818, size: 64, offset: 5632)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !171, line: 48, flags: DIFlagFwdDecl)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3257, file: !171, line: 791, baseType: !3821, size: 64, offset: 5696)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !171, line: 597, size: 128, elements: !3823)
!3823 = !{!3824, !3825, !3826, !3827, !3828}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !3822, file: !171, line: 598, baseType: !221, size: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !3822, file: !171, line: 599, baseType: !230, size: 32, offset: 32)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !3822, file: !171, line: 600, baseType: !235, size: 32, offset: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !3822, file: !171, line: 601, baseType: !1425, size: 8, offset: 96)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !3822, file: !171, line: 602, baseType: !1425, size: 8, offset: 104)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3257, file: !171, line: 793, baseType: !240, size: 32, offset: 5760)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3257, file: !171, line: 795, baseType: !1425, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3257, file: !171, line: 796, baseType: !1425, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3257, file: !171, line: 797, baseType: !1425, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3257, file: !171, line: 798, baseType: !1425, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3257, file: !171, line: 799, baseType: !1425, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3251, file: !247, line: 307, baseType: !3256, size: 64, offset: 256)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "attr_groups", scope: !3251, file: !247, line: 308, baseType: !488, size: 64, offset: 320)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "attr_update", scope: !3251, file: !247, line: 309, baseType: !488, size: 64, offset: 384)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3251, file: !247, line: 310, baseType: !36, size: 64, offset: 448)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3251, file: !247, line: 311, baseType: !42, size: 32, offset: 512)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3251, file: !247, line: 316, baseType: !42, size: 32, offset: 544)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable_count", scope: !3251, file: !247, line: 318, baseType: !775, size: 64, offset: 576)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_pmu_context", scope: !3251, file: !247, line: 319, baseType: !3843, size: 64, offset: 640)
!3843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3844, size: 64)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cpu_pmu_context", file: !247, line: 977, size: 1856, elements: !3845)
!3845 = !{!3846, !3861, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !3844, file: !247, line: 978, baseType: !3847, size: 896)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_pmu_context", file: !247, line: 873, size: 896, elements: !3848)
!3848 = !{!3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "pmu", scope: !3847, file: !247, line: 874, baseType: !3250, size: 64)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3847, file: !247, line: 875, baseType: !2996, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx_entry", scope: !3847, file: !247, line: 877, baseType: !117, size: 128, offset: 128)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_active", scope: !3847, file: !247, line: 879, baseType: !117, size: 128, offset: 256)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "flexible_active", scope: !3847, file: !247, line: 880, baseType: !117, size: 128, offset: 384)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "embedded", scope: !3847, file: !247, line: 883, baseType: !7, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !3847, file: !247, line: 885, baseType: !7, size: 32, offset: 544)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgroups", scope: !3847, file: !247, line: 886, baseType: !7, size: 32, offset: 576)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3847, file: !247, line: 888, baseType: !69, size: 32, offset: 608)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3847, file: !247, line: 889, baseType: !848, size: 128, align: 64, offset: 640)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_data", scope: !3847, file: !247, line: 891, baseType: !40, size: 64, offset: 768)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "rotate_necessary", scope: !3847, file: !247, line: 898, baseType: !42, size: 32, offset: 832)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "task_epc", scope: !3844, file: !247, line: 979, baseType: !3862, size: 64, offset: 896)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_entry", scope: !3844, file: !247, line: 981, baseType: !117, size: 128, offset: 960)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "sched_cb_usage", scope: !3844, file: !247, line: 982, baseType: !42, size: 32, offset: 1088)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "active_oncpu", scope: !3844, file: !247, line: 984, baseType: !42, size: 32, offset: 1120)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3844, file: !247, line: 985, baseType: !42, size: 32, offset: 1152)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_lock", scope: !3844, file: !247, line: 987, baseType: !804, size: 32, offset: 1184)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !3844, file: !247, line: 988, baseType: !1053, size: 512, offset: 1216)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval", scope: !3844, file: !247, line: 989, baseType: !339, size: 64, offset: 1728)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_active", scope: !3844, file: !247, line: 990, baseType: !7, size: 32, offset: 1792)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive_cnt", scope: !3251, file: !247, line: 320, baseType: !69, size: 32, offset: 704)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_nr", scope: !3251, file: !247, line: 321, baseType: !42, size: 32, offset: 736)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer_interval_ms", scope: !3251, file: !247, line: 322, baseType: !42, size: 32, offset: 768)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_addr_filters", scope: !3251, file: !247, line: 325, baseType: !7, size: 32, offset: 800)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_enable", scope: !3251, file: !247, line: 331, baseType: !3876, size: 64, offset: 832)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{null, !3250}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_disable", scope: !3251, file: !247, line: 332, baseType: !3876, size: 64, offset: 896)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "event_init", scope: !3251, file: !247, line: 350, baseType: !3881, size: 64, offset: 960)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!42, !3233}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "event_mapped", scope: !3251, file: !247, line: 356, baseType: !3885, size: 64, offset: 1024)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{null, !3233, !1220}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "event_unmapped", scope: !3251, file: !247, line: 357, baseType: !3885, size: 64, offset: 1088)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !3251, file: !247, line: 385, baseType: !3890, size: 64, offset: 1152)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!42, !3233, !42}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "del", scope: !3251, file: !247, line: 386, baseType: !3894, size: 64, offset: 1216)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{null, !3233, !42}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3251, file: !247, line: 406, baseType: !3894, size: 64, offset: 1280)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3251, file: !247, line: 407, baseType: !3894, size: 64, offset: 1344)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3251, file: !247, line: 415, baseType: !3900, size: 64, offset: 1408)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{null, !3233}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "start_txn", scope: !3251, file: !247, line: 427, baseType: !3904, size: 64, offset: 1472)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !3250, !7}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "commit_txn", scope: !3251, file: !247, line: 436, baseType: !3908, size: 64, offset: 1536)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!42, !3250}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_txn", scope: !3251, file: !247, line: 443, baseType: !3876, size: 64, offset: 1600)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "event_idx", scope: !3251, file: !247, line: 450, baseType: !3881, size: 64, offset: 1664)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task", scope: !3251, file: !247, line: 455, baseType: !3914, size: 64, offset: 1728)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{null, !3862, !1425}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "task_ctx_cache", scope: !3251, file: !247, line: 461, baseType: !3918, size: 64, offset: 1792)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3920, line: 325, flags: DIFlagFwdDecl)
!3920 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "swap_task_ctx", scope: !3251, file: !247, line: 469, baseType: !3922, size: 64, offset: 1856)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{null, !3862, !3862}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "setup_aux", scope: !3251, file: !247, line: 476, baseType: !3926, size: 64, offset: 1920)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DISubroutineType(types: !3928)
!3928 = !{!40, !3233, !3929, !42, !1425}
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "free_aux", scope: !3251, file: !247, line: 483, baseType: !3800, size: 64, offset: 1984)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot_aux", scope: !3251, file: !247, line: 494, baseType: !3932, size: 64, offset: 2048)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!477, !3233, !3935, !59}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_output_handle", file: !247, line: 1014, size: 448, elements: !3937)
!3937 = !{!3938, !3939, !3942, !3943, !3944, !3945, !3950}
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3936, file: !247, line: 1015, baseType: !3233, size: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3936, file: !247, line: 1016, baseType: !3940, size: 64, offset: 64)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_buffer", file: !247, line: 641, flags: DIFlagFwdDecl)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3936, file: !247, line: 1017, baseType: !59, size: 64, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3936, file: !247, line: 1018, baseType: !59, size: 64, offset: 192)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "aux_flags", scope: !3936, file: !247, line: 1019, baseType: !345, size: 64, offset: 256)
!3945 = !DIDerivedType(tag: DW_TAG_member, scope: !3936, file: !247, line: 1020, baseType: !3946, size: 64, offset: 320)
!3946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3936, file: !247, line: 1020, size: 64, elements: !3947)
!3947 = !{!3948, !3949}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3946, file: !247, line: 1021, baseType: !40, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3946, file: !247, line: 1022, baseType: !59, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3936, file: !247, line: 1024, baseType: !42, size: 32, offset: 384)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_validate", scope: !3251, file: !247, line: 506, baseType: !3952, size: 64, offset: 2112)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!42, !120}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_sync", scope: !3251, file: !247, line: 520, baseType: !3900, size: 64, offset: 2176)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output_match", scope: !3251, file: !247, line: 530, baseType: !3881, size: 64, offset: 2240)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3251, file: !247, line: 537, baseType: !3958, size: 64, offset: 2304)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!1425, !3250, !42}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "check_period", scope: !3251, file: !247, line: 542, baseType: !3962, size: 64, offset: 2368)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!42, !3233, !345}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_private", scope: !3234, file: !247, line: 715, baseType: !40, size: 64, offset: 1280)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3234, file: !247, line: 717, baseType: !246, size: 32, offset: 1344)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "attach_state", scope: !3234, file: !247, line: 718, baseType: !7, size: 32, offset: 1376)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3234, file: !247, line: 719, baseType: !3969, size: 64, offset: 1408)
!3969 = !DIDerivedType(tag: DW_TAG_typedef, name: "local64_t", file: !3970, line: 26, baseType: !3971)
!3970 = !DIFile(filename: "./include/asm-generic/local64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df4d146c32c49eaacbf0050bc72e4892")
!3971 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3970, line: 24, size: 64, elements: !3972)
!3972 = !{!3973}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !3971, file: !3970, line: 25, baseType: !3028, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3234, file: !247, line: 720, baseType: !799, size: 64, offset: 1472)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_enabled", scope: !3234, file: !247, line: 728, baseType: !345, size: 64, offset: 1536)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "total_time_running", scope: !3234, file: !247, line: 729, baseType: !345, size: 64, offset: 1600)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !3234, file: !247, line: 730, baseType: !345, size: 64, offset: 1664)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3234, file: !247, line: 732, baseType: !3979, size: 1088, offset: 1728)
!3979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_attr", file: !3980, line: 385, size: 1088, elements: !3981)
!3980 = !DIFile(filename: "./include/uapi/linux/perf_event.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bcad89ece8f79f502358c5429db5ebf0")
!3981 = !{!3982, !3983, !3984, !3985, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4030, !4035, !4036, !4043, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3979, file: !3980, line: 390, baseType: !351, size: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3979, file: !3980, line: 395, baseType: !351, size: 32, offset: 32)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3979, file: !3980, line: 400, baseType: !346, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_member, scope: !3979, file: !3980, line: 402, baseType: !3986, size: 64, offset: 128)
!3986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3979, file: !3980, line: 402, size: 64, elements: !3987)
!3987 = !{!3988, !3989}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3986, file: !3980, line: 403, baseType: !346, size: 64)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "sample_freq", scope: !3986, file: !3980, line: 404, baseType: !346, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "sample_type", scope: !3979, file: !3980, line: 407, baseType: !346, size: 64, offset: 192)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "read_format", scope: !3979, file: !3980, line: 408, baseType: !346, size: 64, offset: 256)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "disabled", scope: !3979, file: !3980, line: 410, baseType: !346, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "inherit", scope: !3979, file: !3980, line: 411, baseType: !346, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !3979, file: !3980, line: 412, baseType: !346, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "exclusive", scope: !3979, file: !3980, line: 413, baseType: !346, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_user", scope: !3979, file: !3980, line: 414, baseType: !346, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_kernel", scope: !3979, file: !3980, line: 415, baseType: !346, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_hv", scope: !3979, file: !3980, line: 416, baseType: !346, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_idle", scope: !3979, file: !3980, line: 417, baseType: !346, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3979, file: !3980, line: 418, baseType: !346, size: 1, offset: 328, flags: DIFlagBitField, extraData: i64 320)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3979, file: !3980, line: 419, baseType: !346, size: 1, offset: 329, flags: DIFlagBitField, extraData: i64 320)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !3979, file: !3980, line: 420, baseType: !346, size: 1, offset: 330, flags: DIFlagBitField, extraData: i64 320)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_stat", scope: !3979, file: !3980, line: 421, baseType: !346, size: 1, offset: 331, flags: DIFlagBitField, extraData: i64 320)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "enable_on_exec", scope: !3979, file: !3980, line: 422, baseType: !346, size: 1, offset: 332, flags: DIFlagBitField, extraData: i64 320)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3979, file: !3980, line: 423, baseType: !346, size: 1, offset: 333, flags: DIFlagBitField, extraData: i64 320)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "watermark", scope: !3979, file: !3980, line: 424, baseType: !346, size: 1, offset: 334, flags: DIFlagBitField, extraData: i64 320)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "precise_ip", scope: !3979, file: !3980, line: 435, baseType: !346, size: 2, offset: 335, flags: DIFlagBitField, extraData: i64 320)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_data", scope: !3979, file: !3980, line: 436, baseType: !346, size: 1, offset: 337, flags: DIFlagBitField, extraData: i64 320)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "sample_id_all", scope: !3979, file: !3980, line: 437, baseType: !346, size: 1, offset: 338, flags: DIFlagBitField, extraData: i64 320)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_host", scope: !3979, file: !3980, line: 439, baseType: !346, size: 1, offset: 339, flags: DIFlagBitField, extraData: i64 320)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_guest", scope: !3979, file: !3980, line: 440, baseType: !346, size: 1, offset: 340, flags: DIFlagBitField, extraData: i64 320)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_kernel", scope: !3979, file: !3980, line: 442, baseType: !346, size: 1, offset: 341, flags: DIFlagBitField, extraData: i64 320)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "exclude_callchain_user", scope: !3979, file: !3980, line: 443, baseType: !346, size: 1, offset: 342, flags: DIFlagBitField, extraData: i64 320)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "mmap2", scope: !3979, file: !3980, line: 444, baseType: !346, size: 1, offset: 343, flags: DIFlagBitField, extraData: i64 320)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "comm_exec", scope: !3979, file: !3980, line: 445, baseType: !346, size: 1, offset: 344, flags: DIFlagBitField, extraData: i64 320)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "use_clockid", scope: !3979, file: !3980, line: 446, baseType: !346, size: 1, offset: 345, flags: DIFlagBitField, extraData: i64 320)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "context_switch", scope: !3979, file: !3980, line: 447, baseType: !346, size: 1, offset: 346, flags: DIFlagBitField, extraData: i64 320)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "write_backward", scope: !3979, file: !3980, line: 448, baseType: !346, size: 1, offset: 347, flags: DIFlagBitField, extraData: i64 320)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "namespaces", scope: !3979, file: !3980, line: 449, baseType: !346, size: 1, offset: 348, flags: DIFlagBitField, extraData: i64 320)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "ksymbol", scope: !3979, file: !3980, line: 450, baseType: !346, size: 1, offset: 349, flags: DIFlagBitField, extraData: i64 320)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "bpf_event", scope: !3979, file: !3980, line: 451, baseType: !346, size: 1, offset: 350, flags: DIFlagBitField, extraData: i64 320)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "aux_output", scope: !3979, file: !3980, line: 452, baseType: !346, size: 1, offset: 351, flags: DIFlagBitField, extraData: i64 320)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !3979, file: !3980, line: 453, baseType: !346, size: 1, offset: 352, flags: DIFlagBitField, extraData: i64 320)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "text_poke", scope: !3979, file: !3980, line: 454, baseType: !346, size: 1, offset: 353, flags: DIFlagBitField, extraData: i64 320)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "build_id", scope: !3979, file: !3980, line: 455, baseType: !346, size: 1, offset: 354, flags: DIFlagBitField, extraData: i64 320)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "inherit_thread", scope: !3979, file: !3980, line: 456, baseType: !346, size: 1, offset: 355, flags: DIFlagBitField, extraData: i64 320)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "remove_on_exec", scope: !3979, file: !3980, line: 457, baseType: !346, size: 1, offset: 356, flags: DIFlagBitField, extraData: i64 320)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "sigtrap", scope: !3979, file: !3980, line: 458, baseType: !346, size: 1, offset: 357, flags: DIFlagBitField, extraData: i64 320)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_1", scope: !3979, file: !3980, line: 459, baseType: !346, size: 26, offset: 358, flags: DIFlagBitField, extraData: i64 320)
!4030 = !DIDerivedType(tag: DW_TAG_member, scope: !3979, file: !3980, line: 461, baseType: !4031, size: 32, offset: 384)
!4031 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3979, file: !3980, line: 461, size: 32, elements: !4032)
!4032 = !{!4033, !4034}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_events", scope: !4031, file: !3980, line: 462, baseType: !351, size: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_watermark", scope: !4031, file: !3980, line: 463, baseType: !351, size: 32)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "bp_type", scope: !3979, file: !3980, line: 466, baseType: !351, size: 32, offset: 416)
!4036 = !DIDerivedType(tag: DW_TAG_member, scope: !3979, file: !3980, line: 467, baseType: !4037, size: 64, offset: 448)
!4037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3979, file: !3980, line: 467, size: 64, elements: !4038)
!4038 = !{!4039, !4040, !4041, !4042}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "bp_addr", scope: !4037, file: !3980, line: 468, baseType: !346, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_func", scope: !4037, file: !3980, line: 469, baseType: !346, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe_path", scope: !4037, file: !3980, line: 470, baseType: !346, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "config1", scope: !4037, file: !3980, line: 471, baseType: !346, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, scope: !3979, file: !3980, line: 473, baseType: !4044, size: 64, offset: 512)
!4044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3979, file: !3980, line: 473, size: 64, elements: !4045)
!4045 = !{!4046, !4047, !4048, !4049}
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "bp_len", scope: !4044, file: !3980, line: 474, baseType: !346, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_addr", scope: !4044, file: !3980, line: 475, baseType: !346, size: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "probe_offset", scope: !4044, file: !3980, line: 476, baseType: !346, size: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "config2", scope: !4044, file: !3980, line: 477, baseType: !346, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "branch_sample_type", scope: !3979, file: !3980, line: 479, baseType: !346, size: 64, offset: 576)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_user", scope: !3979, file: !3980, line: 485, baseType: !346, size: 64, offset: 640)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "sample_stack_user", scope: !3979, file: !3980, line: 490, baseType: !351, size: 32, offset: 704)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3979, file: !3980, line: 492, baseType: !1322, size: 32, offset: 736)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "sample_regs_intr", scope: !3979, file: !3980, line: 501, baseType: !346, size: 64, offset: 768)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "aux_watermark", scope: !3979, file: !3980, line: 506, baseType: !351, size: 32, offset: 832)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "sample_max_stack", scope: !3979, file: !3980, line: 507, baseType: !114, size: 16, offset: 864)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_2", scope: !3979, file: !3980, line: 508, baseType: !114, size: 16, offset: 880)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "aux_sample_size", scope: !3979, file: !3980, line: 509, baseType: !351, size: 32, offset: 896)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "__reserved_3", scope: !3979, file: !3980, line: 510, baseType: !351, size: 32, offset: 928)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "sig_data", scope: !3979, file: !3980, line: 518, baseType: !346, size: 64, offset: 960)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "config3", scope: !3979, file: !3980, line: 520, baseType: !346, size: 64, offset: 1024)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "header_size", scope: !3234, file: !247, line: 733, baseType: !113, size: 16, offset: 2816)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "id_header_size", scope: !3234, file: !247, line: 734, baseType: !113, size: 16, offset: 2832)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "read_size", scope: !3234, file: !247, line: 735, baseType: !113, size: 16, offset: 2848)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !3234, file: !247, line: 736, baseType: !4066, size: 1536, offset: 2880)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event", file: !247, line: 155, size: 1536, elements: !4067)
!4067 = !{!4068, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4152, !4153, !4154, !4155}
!4068 = !DIDerivedType(tag: DW_TAG_member, scope: !4066, file: !247, line: 157, baseType: !4069, size: 768)
!4069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4066, file: !247, line: 157, size: 768, elements: !4070)
!4070 = !{!4071, !4090, !4094, !4098, !4103, !4125}
!4071 = !DIDerivedType(tag: DW_TAG_member, scope: !4069, file: !247, line: 158, baseType: !4072, size: 768)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4069, file: !247, line: 158, size: 768, elements: !4073)
!4073 = !{!4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4089}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4072, file: !247, line: 159, baseType: !345, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "last_tag", scope: !4072, file: !247, line: 160, baseType: !345, size: 64, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "config_base", scope: !4072, file: !247, line: 161, baseType: !59, size: 64, offset: 128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !4072, file: !247, line: 162, baseType: !59, size: 64, offset: 192)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "event_base_rdpmc", scope: !4072, file: !247, line: 163, baseType: !42, size: 32, offset: 256)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4072, file: !247, line: 164, baseType: !42, size: 32, offset: 288)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4072, file: !247, line: 165, baseType: !42, size: 32, offset: 320)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4072, file: !247, line: 166, baseType: !42, size: 32, offset: 352)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "extra_reg", scope: !4072, file: !247, line: 168, baseType: !4083, size: 192, offset: 384)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hw_perf_event_extra", file: !247, line: 134, size: 192, elements: !4084)
!4084 = !{!4085, !4086, !4087, !4088}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !4083, file: !247, line: 135, baseType: !345, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4083, file: !247, line: 136, baseType: !7, size: 32, offset: 64)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !4083, file: !247, line: 137, baseType: !42, size: 32, offset: 96)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4083, file: !247, line: 138, baseType: !42, size: 32, offset: 128)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "branch_reg", scope: !4072, file: !247, line: 169, baseType: !4083, size: 192, offset: 576)
!4090 = !DIDerivedType(tag: DW_TAG_member, scope: !4069, file: !247, line: 171, baseType: !4091, size: 512)
!4091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4069, file: !247, line: 171, size: 512, elements: !4092)
!4092 = !{!4093}
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "hrtimer", scope: !4091, file: !247, line: 172, baseType: !1053, size: 512)
!4094 = !DIDerivedType(tag: DW_TAG_member, scope: !4069, file: !247, line: 174, baseType: !4095, size: 128)
!4095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4069, file: !247, line: 174, size: 128, elements: !4096)
!4096 = !{!4097}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "tp_list", scope: !4095, file: !247, line: 176, baseType: !117, size: 128)
!4098 = !DIDerivedType(tag: DW_TAG_member, scope: !4069, file: !247, line: 178, baseType: !4099, size: 128)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4069, file: !247, line: 178, size: 128, elements: !4100)
!4100 = !{!4101, !4102}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "pwr_acc", scope: !4099, file: !247, line: 179, baseType: !345, size: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "ptsc", scope: !4099, file: !247, line: 180, baseType: !345, size: 64, offset: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, scope: !4069, file: !247, line: 183, baseType: !4104, size: 320)
!4104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4069, file: !247, line: 183, size: 320, elements: !4105)
!4105 = !{!4106, !4114}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4104, file: !247, line: 189, baseType: !4107, size: 192)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_hw_breakpoint", file: !4108, line: 14, size: 192, elements: !4109)
!4108 = !DIFile(filename: "./arch/x86/include/asm/hw_breakpoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "107c509acefbbe18efeb522731cf3028")
!4109 = !{!4110, !4111, !4112, !4113}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4107, file: !4108, line: 15, baseType: !59, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4107, file: !4108, line: 16, baseType: !59, size: 64, offset: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4107, file: !4108, line: 17, baseType: !103, size: 8, offset: 128)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4107, file: !4108, line: 18, baseType: !103, size: 8, offset: 136)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "bp_list", scope: !4104, file: !247, line: 190, baseType: !4115, size: 128, offset: 192)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhlist_head", file: !4116, line: 21, size: 128, elements: !4117)
!4116 = !DIFile(filename: "./include/linux/rhashtable-types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3652a01a9d39bb1c8b53f50a53014")
!4117 = !{!4118, !4123}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "rhead", scope: !4115, file: !4116, line: 22, baseType: !4119, size: 64)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rhash_head", file: !4116, line: 17, size: 64, elements: !4120)
!4120 = !{!4121}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4119, file: !4116, line: 18, baseType: !4122, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4115, file: !4116, line: 23, baseType: !4124, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_member, scope: !4069, file: !247, line: 193, baseType: !4126, size: 192)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4069, file: !247, line: 193, size: 192, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4131, !4132}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_bank", scope: !4126, file: !247, line: 194, baseType: !103, size: 8)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_cntr", scope: !4126, file: !247, line: 195, baseType: !103, size: 8, offset: 8)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4126, file: !247, line: 196, baseType: !113, size: 16, offset: 16)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !4126, file: !247, line: 197, baseType: !345, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "conf1", scope: !4126, file: !247, line: 198, baseType: !345, size: 64, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4066, file: !247, line: 205, baseType: !934, size: 64, offset: 768)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !4066, file: !247, line: 211, baseType: !40, size: 64, offset: 832)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !4066, file: !247, line: 214, baseType: !59, size: 64, offset: 896)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4066, file: !247, line: 223, baseType: !42, size: 32, offset: 960)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "prev_count", scope: !4066, file: !247, line: 229, baseType: !3969, size: 64, offset: 1024)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !4066, file: !247, line: 234, baseType: !345, size: 64, offset: 1088)
!4139 = !DIDerivedType(tag: DW_TAG_member, scope: !4066, file: !247, line: 236, baseType: !4140, size: 128, offset: 1152)
!4140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4066, file: !247, line: 236, size: 128, elements: !4141)
!4141 = !{!4142, !4147}
!4142 = !DIDerivedType(tag: DW_TAG_member, scope: !4140, file: !247, line: 237, baseType: !4143, size: 128)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4140, file: !247, line: 237, size: 128, elements: !4144)
!4144 = !{!4145, !4146}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "last_period", scope: !4143, file: !247, line: 241, baseType: !345, size: 64)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "period_left", scope: !4143, file: !247, line: 249, baseType: !3969, size: 64, offset: 64)
!4147 = !DIDerivedType(tag: DW_TAG_member, scope: !4140, file: !247, line: 251, baseType: !4148, size: 128)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4140, file: !247, line: 251, size: 128, elements: !4149)
!4149 = !{!4150, !4151}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "saved_metric", scope: !4148, file: !247, line: 252, baseType: !345, size: 64)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "saved_slots", scope: !4148, file: !247, line: 253, baseType: !345, size: 64, offset: 64)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts_seq", scope: !4066, file: !247, line: 261, baseType: !345, size: 64, offset: 1280)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !4066, file: !247, line: 262, baseType: !345, size: 64, offset: 1344)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "freq_time_stamp", scope: !4066, file: !247, line: 268, baseType: !345, size: 64, offset: 1408)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "freq_count_stamp", scope: !4066, file: !247, line: 269, baseType: !345, size: 64, offset: 1472)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !3234, file: !247, line: 738, baseType: !2996, size: 64, offset: 4416)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "pmu_ctx", scope: !3234, file: !247, line: 744, baseType: !3862, size: 64, offset: 4480)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3234, file: !247, line: 745, baseType: !797, size: 64, offset: 4544)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_enabled", scope: !3234, file: !247, line: 751, baseType: !799, size: 64, offset: 4608)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "child_total_time_running", scope: !3234, file: !247, line: 752, baseType: !799, size: 64, offset: 4672)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "child_mutex", scope: !3234, file: !247, line: 757, baseType: !793, size: 256, offset: 4736)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "child_list", scope: !3234, file: !247, line: 758, baseType: !117, size: 128, offset: 4992)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3234, file: !247, line: 759, baseType: !3233, size: 64, offset: 5120)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "oncpu", scope: !3234, file: !247, line: 761, baseType: !42, size: 32, offset: 5184)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3234, file: !247, line: 762, baseType: !42, size: 32, offset: 5216)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "owner_entry", scope: !3234, file: !247, line: 764, baseType: !117, size: 128, offset: 5248)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3234, file: !247, line: 765, baseType: !934, size: 64, offset: 5376)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_mutex", scope: !3234, file: !247, line: 768, baseType: !793, size: 256, offset: 5440)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_count", scope: !3234, file: !247, line: 769, baseType: !69, size: 32, offset: 5696)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3234, file: !247, line: 771, baseType: !3940, size: 64, offset: 5760)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "rb_entry", scope: !3234, file: !247, line: 772, baseType: !117, size: 128, offset: 5824)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_batches", scope: !3234, file: !247, line: 773, baseType: !59, size: 64, offset: 5952)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_pending", scope: !3234, file: !247, line: 774, baseType: !42, size: 32, offset: 6016)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "waitq", scope: !3234, file: !247, line: 777, baseType: !74, size: 192, offset: 6080)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3234, file: !247, line: 778, baseType: !4176, size: 64, offset: 6272)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !22, line: 1083, size: 384, elements: !4178)
!4178 = !{!4179, !4180, !4181, !4182, !4183, !4184}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4177, file: !22, line: 1084, baseType: !868, size: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4177, file: !22, line: 1085, baseType: !42, size: 32, offset: 64)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4177, file: !22, line: 1086, baseType: !42, size: 32, offset: 96)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4177, file: !22, line: 1087, baseType: !4176, size: 64, offset: 128)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4177, file: !22, line: 1088, baseType: !1247, size: 64, offset: 192)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4177, file: !22, line: 1089, baseType: !848, size: 128, align: 64, offset: 256)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "pending_wakeup", scope: !3234, file: !247, line: 781, baseType: !7, size: 32, offset: 6336)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "pending_kill", scope: !3234, file: !247, line: 782, baseType: !7, size: 32, offset: 6368)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "pending_disable", scope: !3234, file: !247, line: 783, baseType: !7, size: 32, offset: 6400)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "pending_sigtrap", scope: !3234, file: !247, line: 784, baseType: !7, size: 32, offset: 6432)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "pending_addr", scope: !3234, file: !247, line: 785, baseType: !59, size: 64, offset: 6464)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "pending_irq", scope: !3234, file: !247, line: 786, baseType: !4191, size: 256, offset: 6528)
!4191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_work", file: !4192, line: 17, size: 256, elements: !4193)
!4192 = !DIFile(filename: "./include/linux/irq_work.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "897aa98b7525a8c43c93f11203b0d4f0")
!4193 = !{!4194, !4195, !4200}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4191, file: !4192, line: 18, baseType: !953, size: 128)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4191, file: !4192, line: 19, baseType: !4196, size: 64, offset: 128)
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DISubroutineType(types: !4198)
!4198 = !{null, !4199}
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "irqwait", scope: !4191, file: !4192, line: 20, baseType: !4201, size: 64, offset: 192)
!4201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !4202, line: 16, size: 64, elements: !4203)
!4202 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!4203 = !{!4204}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4201, file: !4202, line: 17, baseType: !934, size: 64)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "pending_task", scope: !3234, file: !247, line: 787, baseType: !848, size: 128, align: 64, offset: 6784)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work", scope: !3234, file: !247, line: 788, baseType: !7, size: 32, offset: 6912)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "pending_work_wait", scope: !3234, file: !247, line: 789, baseType: !4201, size: 64, offset: 6976)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "event_limit", scope: !3234, file: !247, line: 791, baseType: !69, size: 32, offset: 7040)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters", scope: !3234, file: !247, line: 794, baseType: !4210, size: 192, offset: 7104)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filters_head", file: !247, line: 579, size: 192, elements: !4211)
!4211 = !{!4212, !4213, !4214}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4210, file: !247, line: 580, baseType: !117, size: 128)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4210, file: !247, line: 581, baseType: !804, size: 32, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "nr_file_filters", scope: !4210, file: !247, line: 582, baseType: !7, size: 32, offset: 160)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filter_ranges", scope: !3234, file: !247, line: 796, baseType: !4216, size: 64, offset: 7296)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_addr_filter_range", file: !247, line: 585, size: 128, elements: !4218)
!4218 = !{!4219, !4220}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4217, file: !247, line: 586, baseType: !59, size: 64)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4217, file: !247, line: 587, baseType: !59, size: 64, offset: 64)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "addr_filters_gen", scope: !3234, file: !247, line: 797, baseType: !59, size: 64, offset: 7360)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "aux_event", scope: !3234, file: !247, line: 800, baseType: !3233, size: 64, offset: 7424)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !3234, file: !247, line: 802, baseType: !3900, size: 64, offset: 7488)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !3234, file: !247, line: 803, baseType: !848, size: 128, align: 64, offset: 7552)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3234, file: !247, line: 805, baseType: !913, size: 64, offset: 7680)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3234, file: !247, line: 806, baseType: !345, size: 64, offset: 7744)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "lost_samples", scope: !3234, file: !247, line: 808, baseType: !799, size: 64, offset: 7808)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !3234, file: !247, line: 810, baseType: !4229, size: 64, offset: 7872)
!4229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4230, size: 64)
!4230 = !DISubroutineType(types: !4231)
!4231 = !{!345}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler", scope: !3234, file: !247, line: 811, baseType: !4233, size: 64, offset: 7936)
!4233 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_overflow_handler_t", file: !247, line: 605, baseType: !4234)
!4234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4235, size: 64)
!4235 = !DISubroutineType(types: !4236)
!4236 = !{null, !3233, !4237, !4342}
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4238, size: 64)
!4238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_sample_data", file: !247, line: 1148, size: 2048, align: 512, elements: !4239)
!4239 = !{!4240, !4241, !4242, !4243, !4244, !4249, !4250, !4251, !4256, !4257, !4264, !4285, !4307, !4317, !4335, !4336, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402}
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "sample_flags", scope: !4238, file: !247, line: 1153, baseType: !345, size: 64)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4238, file: !247, line: 1154, baseType: !345, size: 64, offset: 64)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "dyn_size", scope: !4238, file: !247, line: 1155, baseType: !345, size: 64, offset: 128)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4238, file: !247, line: 1161, baseType: !345, size: 64, offset: 192)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "tid_entry", scope: !4238, file: !247, line: 1165, baseType: !4245, size: 64, offset: 256)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4238, file: !247, line: 1162, size: 64, elements: !4246)
!4246 = !{!4247, !4248}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4245, file: !247, line: 1163, baseType: !350, size: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !4245, file: !247, line: 1164, baseType: !350, size: 32, offset: 32)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4238, file: !247, line: 1166, baseType: !345, size: 64, offset: 320)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4238, file: !247, line: 1167, baseType: !345, size: 64, offset: 384)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_entry", scope: !4238, file: !247, line: 1171, baseType: !4252, size: 64, offset: 448)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4238, file: !247, line: 1168, size: 64, elements: !4253)
!4253 = !{!4254, !4255}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4252, file: !247, line: 1169, baseType: !350, size: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4252, file: !247, line: 1170, baseType: !350, size: 32, offset: 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4238, file: !247, line: 1177, baseType: !345, size: 64, offset: 512)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "callchain", scope: !4238, file: !247, line: 1178, baseType: !4258, size: 64, offset: 576)
!4258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4259, size: 64)
!4259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_callchain_entry", file: !247, line: 67, size: 64, elements: !4260)
!4260 = !{!4261, !4262}
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4259, file: !247, line: 68, baseType: !346, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4259, file: !247, line: 69, baseType: !4263, offset: 64)
!4263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, elements: !1656)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4238, file: !247, line: 1179, baseType: !4265, size: 64, offset: 640)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_record", file: !247, line: 93, size: 256, elements: !4267)
!4267 = !{!4268, !4284}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "frag", scope: !4266, file: !247, line: 94, baseType: !4269, size: 224)
!4269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_raw_frag", file: !247, line: 83, size: 224, elements: !4270)
!4270 = !{!4271, !4277, !4282, !4283}
!4271 = !DIDerivedType(tag: DW_TAG_member, scope: !4269, file: !247, line: 84, baseType: !4272, size: 64)
!4272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4269, file: !247, line: 84, size: 64, elements: !4273)
!4273 = !{!4274, !4276}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4272, file: !247, line: 85, baseType: !4275, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !4272, file: !247, line: 86, baseType: !59, size: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "copy", scope: !4269, file: !247, line: 88, baseType: !4278, size: 64, offset: 64)
!4278 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_copy_f", file: !247, line: 80, baseType: !4279)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DISubroutineType(types: !4281)
!4281 = !{!59, !40, !1354, !59, !59}
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4269, file: !247, line: 89, baseType: !40, size: 64, offset: 128)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4269, file: !247, line: 90, baseType: !350, size: 32, offset: 192)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4266, file: !247, line: 95, baseType: !350, size: 32, offset: 224)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "br_stack", scope: !4238, file: !247, line: 1180, baseType: !4286, size: 64, offset: 704)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_stack", file: !247, line: 123, size: 128, elements: !4288)
!4288 = !{!4289, !4290, !4291}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !4287, file: !247, line: 124, baseType: !346, size: 64)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "hw_idx", scope: !4287, file: !247, line: 125, baseType: !346, size: 64, offset: 64)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4287, file: !247, line: 126, baseType: !4292, offset: 128)
!4292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4293, elements: !1656)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_branch_entry", file: !3980, line: 1415, size: 192, elements: !4294)
!4294 = !{!4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !4293, file: !3980, line: 1416, baseType: !346, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !4293, file: !3980, line: 1417, baseType: !346, size: 64, offset: 64)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "mispred", scope: !4293, file: !3980, line: 1418, baseType: !346, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "predicted", scope: !4293, file: !3980, line: 1419, baseType: !346, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "in_tx", scope: !4293, file: !3980, line: 1420, baseType: !346, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "abort", scope: !4293, file: !3980, line: 1421, baseType: !346, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "cycles", scope: !4293, file: !3980, line: 1422, baseType: !346, size: 16, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4293, file: !3980, line: 1423, baseType: !346, size: 4, offset: 148, flags: DIFlagBitField, extraData: i64 128)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "spec", scope: !4293, file: !3980, line: 1424, baseType: !346, size: 2, offset: 152, flags: DIFlagBitField, extraData: i64 128)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "new_type", scope: !4293, file: !3980, line: 1425, baseType: !346, size: 4, offset: 154, flags: DIFlagBitField, extraData: i64 128)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4293, file: !3980, line: 1426, baseType: !346, size: 3, offset: 158, flags: DIFlagBitField, extraData: i64 128)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4293, file: !3980, line: 1427, baseType: !346, size: 31, offset: 161, flags: DIFlagBitField, extraData: i64 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !4238, file: !247, line: 1181, baseType: !4308, size: 64, offset: 768)
!4308 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_sample_weight", file: !3980, line: 1430, size: 64, elements: !4309)
!4309 = !{!4310, !4311}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4308, file: !3980, line: 1431, baseType: !346, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, scope: !4308, file: !3980, line: 1433, baseType: !4312, size: 64)
!4312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4308, file: !3980, line: 1433, size: 64, elements: !4313)
!4313 = !{!4314, !4315, !4316}
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "var1_dw", scope: !4312, file: !3980, line: 1434, baseType: !351, size: 32)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "var2_w", scope: !4312, file: !3980, line: 1435, baseType: !114, size: 16, offset: 32)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "var3_w", scope: !4312, file: !3980, line: 1436, baseType: !114, size: 16, offset: 48)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "data_src", scope: !4238, file: !247, line: 1182, baseType: !4318, size: 64, offset: 832)
!4318 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "perf_mem_data_src", file: !3980, line: 1267, size: 64, elements: !4319)
!4319 = !{!4320, !4321}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4318, file: !3980, line: 1268, baseType: !346, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, scope: !4318, file: !3980, line: 1269, baseType: !4322, size: 64)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4318, file: !3980, line: 1269, size: 64, elements: !4323)
!4323 = !{!4324, !4325, !4326, !4327, !4328, !4329, !4330, !4331, !4332, !4333, !4334}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "mem_op", scope: !4322, file: !3980, line: 1270, baseType: !346, size: 5, flags: DIFlagBitField, extraData: i64 0)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl", scope: !4322, file: !3980, line: 1271, baseType: !346, size: 14, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoop", scope: !4322, file: !3980, line: 1272, baseType: !346, size: 5, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lock", scope: !4322, file: !3980, line: 1273, baseType: !346, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "mem_dtlb", scope: !4322, file: !3980, line: 1274, baseType: !346, size: 7, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "mem_lvl_num", scope: !4322, file: !3980, line: 1275, baseType: !346, size: 4, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "mem_remote", scope: !4322, file: !3980, line: 1276, baseType: !346, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "mem_snoopx", scope: !4322, file: !3980, line: 1277, baseType: !346, size: 2, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "mem_blk", scope: !4322, file: !3980, line: 1278, baseType: !346, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "mem_hops", scope: !4322, file: !3980, line: 1279, baseType: !346, size: 3, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "mem_rsvd", scope: !4322, file: !3980, line: 1280, baseType: !346, size: 18, offset: 46, flags: DIFlagBitField, extraData: i64 0)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "txn", scope: !4238, file: !247, line: 1183, baseType: !345, size: 64, offset: 896)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "regs_user", scope: !4238, file: !247, line: 1185, baseType: !4337, size: 128, offset: 960)
!4337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_regs", file: !4338, line: 7, size: 128, elements: !4339)
!4338 = !DIFile(filename: "./include/linux/perf_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ddec4c01469dcac1787a884df1c79d64")
!4339 = !{!4340, !4341}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "abi", scope: !4337, file: !4338, line: 8, baseType: !346, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4337, file: !4338, line: 9, baseType: !4342, size: 64, offset: 64)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4344, line: 103, size: 1344, elements: !4345)
!4344 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4345 = !{!4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4362, !4363, !4374, !4375, !4376}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4343, file: !4344, line: 109, baseType: !59, size: 64)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4343, file: !4344, line: 110, baseType: !59, size: 64, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4343, file: !4344, line: 111, baseType: !59, size: 64, offset: 128)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4343, file: !4344, line: 112, baseType: !59, size: 64, offset: 192)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4343, file: !4344, line: 113, baseType: !59, size: 64, offset: 256)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4343, file: !4344, line: 114, baseType: !59, size: 64, offset: 320)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4343, file: !4344, line: 117, baseType: !59, size: 64, offset: 384)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4343, file: !4344, line: 118, baseType: !59, size: 64, offset: 448)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4343, file: !4344, line: 119, baseType: !59, size: 64, offset: 512)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4343, file: !4344, line: 120, baseType: !59, size: 64, offset: 576)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4343, file: !4344, line: 121, baseType: !59, size: 64, offset: 640)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4343, file: !4344, line: 122, baseType: !59, size: 64, offset: 704)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4343, file: !4344, line: 123, baseType: !59, size: 64, offset: 768)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4343, file: !4344, line: 124, baseType: !59, size: 64, offset: 832)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4343, file: !4344, line: 125, baseType: !59, size: 64, offset: 896)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4343, file: !4344, line: 139, baseType: !59, size: 64, offset: 960)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4343, file: !4344, line: 142, baseType: !59, size: 64, offset: 1024)
!4363 = !DIDerivedType(tag: DW_TAG_member, scope: !4343, file: !4344, line: 144, baseType: !4364, size: 64, offset: 1088)
!4364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4343, file: !4344, line: 144, size: 64, elements: !4365)
!4365 = !{!4366, !4367, !4368}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4364, file: !4344, line: 146, baseType: !113, size: 16)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4364, file: !4344, line: 148, baseType: !345, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4364, file: !4344, line: 150, baseType: !4369, size: 64)
!4369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4344, line: 59, size: 64, elements: !4370)
!4370 = !{!4371, !4372, !4373}
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4369, file: !4344, line: 61, baseType: !345, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4369, file: !4344, line: 63, baseType: !345, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4369, file: !4344, line: 65, baseType: !345, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4343, file: !4344, line: 153, baseType: !59, size: 64, offset: 1152)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4343, file: !4344, line: 154, baseType: !59, size: 64, offset: 1216)
!4376 = !DIDerivedType(tag: DW_TAG_member, scope: !4343, file: !4344, line: 156, baseType: !4377, size: 64, offset: 1280)
!4377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4343, file: !4344, line: 156, size: 64, elements: !4378)
!4378 = !{!4379, !4380, !4381}
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4377, file: !4344, line: 158, baseType: !113, size: 16)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4377, file: !4344, line: 160, baseType: !345, size: 64)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4377, file: !4344, line: 162, baseType: !4382, size: 64)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4344, line: 69, size: 64, elements: !4383)
!4383 = !{!4384, !4385, !4386, !4387, !4388, !4389, !4390, !4391, !4392, !4393}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4382, file: !4344, line: 71, baseType: !345, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4382, file: !4344, line: 73, baseType: !345, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4382, file: !4344, line: 75, baseType: !345, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4382, file: !4344, line: 77, baseType: !345, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4382, file: !4344, line: 80, baseType: !345, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4382, file: !4344, line: 83, baseType: !345, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4382, file: !4344, line: 86, baseType: !345, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4382, file: !4344, line: 88, baseType: !345, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4382, file: !4344, line: 93, baseType: !345, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4382, file: !4344, line: 100, baseType: !345, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "regs_intr", scope: !4238, file: !247, line: 1186, baseType: !4337, size: 128, offset: 1088)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "stack_user_size", scope: !4238, file: !247, line: 1187, baseType: !345, size: 64, offset: 1216)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4238, file: !247, line: 1189, baseType: !345, size: 64, offset: 1280)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4238, file: !247, line: 1190, baseType: !345, size: 64, offset: 1344)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4238, file: !247, line: 1191, baseType: !345, size: 64, offset: 1408)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4238, file: !247, line: 1192, baseType: !345, size: 64, offset: 1472)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "data_page_size", scope: !4238, file: !247, line: 1193, baseType: !345, size: 64, offset: 1536)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "code_page_size", scope: !4238, file: !247, line: 1194, baseType: !345, size: 64, offset: 1600)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "aux_size", scope: !4238, file: !247, line: 1195, baseType: !345, size: 64, offset: 1664)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_handler_context", scope: !3234, file: !247, line: 812, baseType: !40, size: 64, offset: 8000)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "tp_event", scope: !3234, file: !247, line: 820, baseType: !4405, size: 64, offset: 8064)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !256, line: 372, size: 1024, elements: !4407)
!4407 = !{!4408, !4409, !4450, !4518, !4596, !4597, !4600, !4605, !4606, !4607, !4608, !4610, !4613}
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4406, file: !256, line: 373, baseType: !117, size: 128)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4406, file: !256, line: 374, baseType: !4410, size: 64, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_class", file: !256, line: 291, size: 576, elements: !4412)
!4412 = !{!4413, !4414, !4415, !4416, !4420, !4444, !4448, !4449}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !4411, file: !256, line: 292, baseType: !36, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4411, file: !256, line: 293, baseType: !40, size: 64, offset: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "perf_probe", scope: !4411, file: !256, line: 295, baseType: !40, size: 64, offset: 128)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !4411, file: !256, line: 297, baseType: !4417, size: 64, offset: 192)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4418, size: 64)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!42, !4405, !255, !40}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "fields_array", scope: !4411, file: !256, line: 299, baseType: !4421, size: 64, offset: 256)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_fields", file: !256, line: 275, size: 320, elements: !4423)
!4423 = !{!4424, !4425}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4422, file: !256, line: 276, baseType: !36, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, scope: !4422, file: !256, line: 277, baseType: !4426, size: 256, offset: 64)
!4426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4422, file: !256, line: 277, size: 256, elements: !4427)
!4427 = !{!4428, !4440}
!4428 = !DIDerivedType(tag: DW_TAG_member, scope: !4426, file: !256, line: 278, baseType: !4429, size: 256)
!4429 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4426, file: !256, line: 278, size: 256, elements: !4430)
!4430 = !{!4431, !4432, !4434, !4435, !4437, !4438, !4439}
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4429, file: !256, line: 279, baseType: !36, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4429, file: !256, line: 280, baseType: !4433, size: 32, offset: 64)
!4433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !4429, file: !256, line: 281, baseType: !4433, size: 32, offset: 96)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "is_signed", scope: !4429, file: !256, line: 282, baseType: !4436, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "needs_test", scope: !4429, file: !256, line: 283, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "filter_type", scope: !4429, file: !256, line: 284, baseType: !4433, size: 32, offset: 160)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4429, file: !256, line: 285, baseType: !4433, size: 32, offset: 192)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "define_fields", scope: !4426, file: !256, line: 287, baseType: !4441, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4442, size: 64)
!4442 = !DISubroutineType(types: !4443)
!4443 = !{!42, !4405}
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "get_fields", scope: !4411, file: !256, line: 300, baseType: !4445, size: 64, offset: 320)
!4445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4446, size: 64)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!120, !4405}
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !4411, file: !256, line: 301, baseType: !117, size: 128, offset: 384)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "raw_init", scope: !4411, file: !256, line: 302, baseType: !4441, size: 64, offset: 512)
!4450 = !DIDerivedType(tag: DW_TAG_member, scope: !4406, file: !256, line: 375, baseType: !4451, size: 64, offset: 192)
!4451 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4406, file: !256, line: 375, size: 64, elements: !4452)
!4452 = !{!4453, !4454}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4451, file: !256, line: 376, baseType: !36, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !4451, file: !256, line: 378, baseType: !4455, size: 64)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint", file: !4457, line: 32, size: 640, elements: !4458)
!4457 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!4458 = !{!4459, !4460, !4479, !4503, !4504, !4505, !4506, !4510, !4511}
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4456, file: !4457, line: 33, baseType: !36, size: 64)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4456, file: !4457, line: 34, baseType: !4461, size: 128, offset: 64)
!4461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !4462, line: 85, size: 128, elements: !4463)
!4462 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!4463 = !{!4464, !4465}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4461, file: !4462, line: 86, baseType: !69, size: 32)
!4465 = !DIDerivedType(tag: DW_TAG_member, scope: !4461, file: !4462, line: 101, baseType: !4466, size: 64, offset: 64)
!4466 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4461, file: !4462, line: 101, size: 64, elements: !4467)
!4467 = !{!4468, !4469, !4476}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4466, file: !4462, line: 102, baseType: !59, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4466, file: !4462, line: 103, baseType: !4470, size: 64)
!4470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4471, size: 64)
!4471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !4462, line: 117, size: 128, elements: !4472)
!4472 = !{!4473, !4474, !4475}
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4471, file: !4462, line: 118, baseType: !1321, size: 32)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4471, file: !4462, line: 119, baseType: !1321, size: 32, offset: 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4471, file: !4462, line: 120, baseType: !477, size: 64, offset: 64)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4466, file: !4462, line: 104, baseType: !4477, size: 64)
!4477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4478, size: 64)
!4478 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !4462, line: 104, flags: DIFlagFwdDecl)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_key", scope: !4456, file: !4457, line: 35, baseType: !4480, size: 64, offset: 192)
!4480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4481, size: 64)
!4481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !4482, line: 61, size: 128, elements: !4483)
!4482 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!4483 = !{!4484, !4485}
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4481, file: !4482, line: 62, baseType: !40, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, scope: !4481, file: !4482, line: 63, baseType: !4486, size: 64, offset: 64)
!4486 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4481, file: !4482, line: 63, size: 64, elements: !4487)
!4487 = !{!4488, !4489, !4502}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4486, file: !4482, line: 65, baseType: !59, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !4486, file: !4482, line: 66, baseType: !4490, size: 64)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !4492, line: 169, size: 192, elements: !4493)
!4492 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!4493 = !{!4494, !4495, !4496}
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4491, file: !4492, line: 170, baseType: !4490, size: 64)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !4491, file: !4492, line: 171, baseType: !388, size: 64, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !4491, file: !4492, line: 172, baseType: !4497, size: 64, offset: 128)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !4482, line: 32, size: 64, elements: !4499)
!4499 = !{!4500, !4501}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4498, file: !4482, line: 33, baseType: !1321, size: 32)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !4498, file: !4482, line: 34, baseType: !1321, size: 32, offset: 32)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !4486, file: !4482, line: 67, baseType: !4497, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_tramp", scope: !4456, file: !4457, line: 36, baseType: !40, size: 64, offset: 256)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !4456, file: !4457, line: 37, baseType: !40, size: 64, offset: 320)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "probestub", scope: !4456, file: !4457, line: 38, baseType: !40, size: 64, offset: 384)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "regfunc", scope: !4456, file: !4457, line: 39, baseType: !4507, size: 64, offset: 448)
!4507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4508, size: 64)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!42}
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "unregfunc", scope: !4456, file: !4457, line: 40, baseType: !2483, size: 64, offset: 512)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4456, file: !4457, line: 41, baseType: !4512, size: 64, offset: 576)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !4457, line: 26, size: 192, elements: !4514)
!4514 = !{!4515, !4516, !4517}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4513, file: !4457, line: 27, baseType: !40, size: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4513, file: !4457, line: 28, baseType: !40, size: 64, offset: 64)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4513, file: !4457, line: 29, baseType: !42, size: 32, offset: 128)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4406, file: !256, line: 380, baseType: !4519, size: 256, offset: 256)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event", file: !256, line: 148, size: 256, elements: !4520)
!4520 = !{!4521, !4522, !4523}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4519, file: !256, line: 149, baseType: !704, size: 128)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4519, file: !256, line: 150, baseType: !42, size: 32, offset: 128)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4519, file: !256, line: 151, baseType: !4524, size: 64, offset: 192)
!4524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4525, size: 64)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_functions", file: !256, line: 141, size: 256, elements: !4526)
!4526 = !{!4527, !4593, !4594, !4595}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !4525, file: !256, line: 142, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_typedef, name: "trace_print_func", file: !256, line: 138, baseType: !4529)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!266, !4532, !42, !4592}
!4532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4533, size: 64)
!4533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_iterator", file: !256, line: 93, size: 67776, elements: !4534)
!4534 = !{!4535, !4538, !4541, !4544, !4545, !4546, !4547, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4572, !4575, !4576, !4577, !4585, !4586, !4587, !4588, !4589, !4590, !4591}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "tr", scope: !4533, file: !256, line: 94, baseType: !4536, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4537, size: 64)
!4537 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_array", file: !256, line: 13, flags: DIFlagFwdDecl)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "trace", scope: !4533, file: !256, line: 95, baseType: !4539, size: 64, offset: 64)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DICompositeType(tag: DW_TAG_structure_type, name: "tracer", file: !256, line: 15, flags: DIFlagFwdDecl)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "array_buffer", scope: !4533, file: !256, line: 96, baseType: !4542, size: 64, offset: 128)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DICompositeType(tag: DW_TAG_structure_type, name: "array_buffer", file: !256, line: 14, flags: DIFlagFwdDecl)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4533, file: !256, line: 97, baseType: !40, size: 64, offset: 192)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_file", scope: !4533, file: !256, line: 98, baseType: !42, size: 32, offset: 256)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4533, file: !256, line: 99, baseType: !793, size: 256, offset: 320)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_iter", scope: !4533, file: !256, line: 100, baseType: !4548, size: 64, offset: 576)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DICompositeType(tag: DW_TAG_structure_type, name: "ring_buffer_iter", file: !4551, line: 10, flags: DIFlagFwdDecl)
!4551 = !DIFile(filename: "./include/linux/ring_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6b33fcbb5a7a42a82ce834d9b0e18658")
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "iter_flags", scope: !4533, file: !256, line: 101, baseType: !59, size: 64, offset: 640)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !4533, file: !256, line: 102, baseType: !40, size: 64, offset: 704)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "temp_size", scope: !4533, file: !256, line: 103, baseType: !7, size: 32, offset: 768)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4533, file: !256, line: 104, baseType: !442, size: 64, offset: 832)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "fmt_size", scope: !4533, file: !256, line: 105, baseType: !7, size: 32, offset: 896)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !4533, file: !256, line: 106, baseType: !477, size: 64, offset: 960)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_seq", scope: !4533, file: !256, line: 109, baseType: !4559, size: 33088, offset: 1024)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_seq", file: !4560, line: 14, size: 33088, elements: !4561)
!4560 = !DIFile(filename: "./include/linux/trace_seq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cf71e515adc12762081b96266f67a26")
!4561 = !{!4562, !4563, !4570, !4571}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4559, file: !4560, line: 15, baseType: !2384, size: 32768)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4559, file: !4560, line: 16, baseType: !4564, size: 192, offset: 32768)
!4564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_buf", file: !4565, line: 18, size: 192, elements: !4566)
!4565 = !DIFile(filename: "./include/linux/seq_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca9012ec0d31d1c4540dcb3f58de70c8")
!4566 = !{!4567, !4568, !4569}
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !4564, file: !4565, line: 19, baseType: !442, size: 64)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4564, file: !4565, line: 20, baseType: !55, size: 64, offset: 64)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4564, file: !4565, line: 21, baseType: !55, size: 64, offset: 128)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "readpos", scope: !4559, file: !4560, line: 17, baseType: !55, size: 64, offset: 32960)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "full", scope: !4559, file: !4560, line: 18, baseType: !42, size: 32, offset: 33024)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "started", scope: !4533, file: !256, line: 111, baseType: !4573, size: 64, offset: 34112)
!4573 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !371, line: 913, baseType: !4574)
!4574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 64, elements: !375)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "snapshot", scope: !4533, file: !256, line: 114, baseType: !1425, size: 8, offset: 34176)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !4533, file: !256, line: 117, baseType: !4559, size: 33088, offset: 34240)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "ent", scope: !4533, file: !256, line: 118, baseType: !4578, size: 64, offset: 67328)
!4578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4579, size: 64)
!4579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_entry", file: !256, line: 79, size: 64, elements: !4580)
!4580 = !{!4581, !4582, !4583, !4584}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4579, file: !256, line: 80, baseType: !46, size: 16)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4579, file: !256, line: 81, baseType: !107, size: 8, offset: 16)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "preempt_count", scope: !4579, file: !256, line: 82, baseType: !107, size: 8, offset: 24)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !4579, file: !256, line: 83, baseType: !42, size: 32, offset: 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "lost_events", scope: !4533, file: !256, line: 119, baseType: !59, size: 64, offset: 67392)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "leftover", scope: !4533, file: !256, line: 120, baseType: !42, size: 32, offset: 67456)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "ent_size", scope: !4533, file: !256, line: 121, baseType: !42, size: 32, offset: 67488)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !4533, file: !256, line: 122, baseType: !42, size: 32, offset: 67520)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "ts", scope: !4533, file: !256, line: 123, baseType: !345, size: 64, offset: 67584)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4533, file: !256, line: 125, baseType: !61, size: 64, offset: 67648)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !4533, file: !256, line: 126, baseType: !477, size: 64, offset: 67712)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !4525, file: !256, line: 143, baseType: !4528, size: 64, offset: 64)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "hex", scope: !4525, file: !256, line: 144, baseType: !4528, size: 64, offset: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "binary", scope: !4525, file: !256, line: 145, baseType: !4528, size: 64, offset: 192)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "print_fmt", scope: !4406, file: !256, line: 381, baseType: !442, size: 64, offset: 512)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4406, file: !256, line: 382, baseType: !4598, size: 64, offset: 576)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_filter", file: !247, line: 821, flags: DIFlagFwdDecl)
!4600 = !DIDerivedType(tag: DW_TAG_member, scope: !4406, file: !256, line: 387, baseType: !4601, size: 64, offset: 640)
!4601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4406, file: !256, line: 387, size: 64, elements: !4602)
!4602 = !{!4603, !4604}
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !4601, file: !256, line: 388, baseType: !40, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4601, file: !256, line: 389, baseType: !69, size: 32)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4406, file: !256, line: 391, baseType: !40, size: 64, offset: 704)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4406, file: !256, line: 394, baseType: !42, size: 32, offset: 768)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "perf_refcount", scope: !4406, file: !256, line: 397, baseType: !42, size: 32, offset: 800)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "perf_events", scope: !4406, file: !256, line: 398, baseType: !4609, size: 64, offset: 832)
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "prog_array", scope: !4406, file: !256, line: 399, baseType: !4611, size: 64, offset: 896)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DICompositeType(tag: DW_TAG_structure_type, name: "bpf_prog_array", file: !256, line: 399, flags: DIFlagFwdDecl)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "perf_perm", scope: !4406, file: !256, line: 401, baseType: !4614, size: 64, offset: 960)
!4614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4615, size: 64)
!4615 = !DISubroutineType(types: !4616)
!4616 = !{!42, !4405, !3233}
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3234, file: !247, line: 821, baseType: !4598, size: 64, offset: 8128)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !3234, file: !247, line: 828, baseType: !4619, size: 64, offset: 8192)
!4619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4620, size: 64)
!4620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup", file: !247, line: 1046, size: 1664, elements: !4621)
!4621 = !{!4622, !4623}
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "css", scope: !4620, file: !247, line: 1047, baseType: !1936, size: 1600)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4620, file: !247, line: 1048, baseType: !4624, size: 64, offset: 1600)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "perf_cgroup_info", file: !247, line: 1039, size: 256, elements: !4626)
!4626 = !{!4627, !4628, !4629, !4630}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4625, file: !247, line: 1040, baseType: !345, size: 64)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !4625, file: !247, line: 1041, baseType: !345, size: 64, offset: 64)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "timeoffset", scope: !4625, file: !247, line: 1042, baseType: !345, size: 64, offset: 128)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4625, file: !247, line: 1043, baseType: !42, size: 32, offset: 192)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3234, file: !247, line: 832, baseType: !40, size: 64, offset: 8256)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "sb_list", scope: !3234, file: !247, line: 834, baseType: !117, size: 128, offset: 8320)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !3234, file: !247, line: 842, baseType: !351, size: 32, offset: 8448)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3203, file: !3204, line: 461, baseType: !59, size: 64, offset: 704)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3203, file: !3204, line: 463, baseType: !59, size: 64, offset: 768)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3203, file: !3204, line: 465, baseType: !59, size: 64, offset: 832)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3203, file: !3204, line: 466, baseType: !59, size: 64, offset: 896)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3203, file: !3204, line: 467, baseType: !59, size: 64, offset: 960)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3203, file: !3204, line: 473, baseType: !4640, size: 64, offset: 1024)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3204, line: 10, flags: DIFlagFwdDecl)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3203, file: !3204, line: 480, baseType: !59, size: 64, offset: 1088)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3203, file: !3204, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3203, file: !3204, line: 491, baseType: !350, size: 32, offset: 1184)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3203, file: !3204, line: 501, baseType: !4646, size: 33792, offset: 1536)
!4646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4647, line: 448, size: 33792, elements: !4648)
!4647 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4648 = !{!4649, !4650, !4651, !4759, !4760, !4766, !4767}
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4646, file: !4647, line: 461, baseType: !7, size: 32)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4646, file: !4647, line: 468, baseType: !59, size: 64, offset: 64)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4646, file: !4647, line: 476, baseType: !4652, size: 64, offset: 128)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4647, line: 356, size: 33280, align: 512, elements: !4654)
!4654 = !{!4655, !4656, !4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664}
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4653, file: !4647, line: 358, baseType: !7, size: 32)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4653, file: !4647, line: 361, baseType: !7, size: 32, offset: 32)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4653, file: !4647, line: 364, baseType: !345, size: 64, offset: 64)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4653, file: !4647, line: 367, baseType: !345, size: 64, offset: 128)
!4659 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4653, file: !4647, line: 370, baseType: !345, size: 64, offset: 192)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4653, file: !4647, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4653, file: !4647, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4653, file: !4647, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4653, file: !4647, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4653, file: !4647, line: 397, baseType: !4665, size: 32768, offset: 512)
!4665 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4647, line: 348, size: 32768, elements: !4666)
!4666 = !{!4667, !4682, !4719, !4744, !4757}
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4665, file: !4647, line: 349, baseType: !4668, size: 896)
!4668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4647, line: 12, size: 896, elements: !4669)
!4669 = !{!4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4681}
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4668, file: !4647, line: 13, baseType: !350, size: 32)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4668, file: !4647, line: 14, baseType: !350, size: 32, offset: 32)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4668, file: !4647, line: 15, baseType: !350, size: 32, offset: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4668, file: !4647, line: 16, baseType: !350, size: 32, offset: 96)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4668, file: !4647, line: 17, baseType: !350, size: 32, offset: 128)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4668, file: !4647, line: 18, baseType: !350, size: 32, offset: 160)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4668, file: !4647, line: 19, baseType: !350, size: 32, offset: 192)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4668, file: !4647, line: 22, baseType: !4678, size: 640, offset: 224)
!4678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 640, elements: !4679)
!4679 = !{!4680}
!4680 = !DISubrange(count: 20)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4668, file: !4647, line: 25, baseType: !350, size: 32, offset: 864)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4665, file: !4647, line: 350, baseType: !4683, size: 4096, align: 128)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4647, line: 34, size: 4096, align: 128, elements: !4684)
!4684 = !{!4685, !4686, !4687, !4688, !4689, !4704, !4705, !4706, !4708, !4710, !4714}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4683, file: !4647, line: 35, baseType: !113, size: 16)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4683, file: !4647, line: 36, baseType: !113, size: 16, offset: 16)
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4683, file: !4647, line: 37, baseType: !113, size: 16, offset: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4683, file: !4647, line: 38, baseType: !113, size: 16, offset: 48)
!4689 = !DIDerivedType(tag: DW_TAG_member, scope: !4683, file: !4647, line: 39, baseType: !4690, size: 128, offset: 64)
!4690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4683, file: !4647, line: 39, size: 128, elements: !4691)
!4691 = !{!4692, !4697}
!4692 = !DIDerivedType(tag: DW_TAG_member, scope: !4690, file: !4647, line: 40, baseType: !4693, size: 128)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4690, file: !4647, line: 40, size: 128, elements: !4694)
!4694 = !{!4695, !4696}
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4693, file: !4647, line: 41, baseType: !345, size: 64)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4693, file: !4647, line: 42, baseType: !345, size: 64, offset: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, scope: !4690, file: !4647, line: 44, baseType: !4698, size: 128)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4690, file: !4647, line: 44, size: 128, elements: !4699)
!4699 = !{!4700, !4701, !4702, !4703}
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4698, file: !4647, line: 45, baseType: !350, size: 32)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4698, file: !4647, line: 46, baseType: !350, size: 32, offset: 32)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4698, file: !4647, line: 47, baseType: !350, size: 32, offset: 64)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4698, file: !4647, line: 48, baseType: !350, size: 32, offset: 96)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4683, file: !4647, line: 51, baseType: !350, size: 32, offset: 192)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4683, file: !4647, line: 52, baseType: !350, size: 32, offset: 224)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4683, file: !4647, line: 55, baseType: !4707, size: 1024, offset: 256)
!4707 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 1024, elements: !593)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4683, file: !4647, line: 58, baseType: !4709, size: 2048, offset: 1280)
!4709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 2048, elements: !447)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4683, file: !4647, line: 60, baseType: !4711, size: 384, offset: 3328)
!4711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 384, elements: !4712)
!4712 = !{!4713}
!4713 = !DISubrange(count: 12)
!4714 = !DIDerivedType(tag: DW_TAG_member, scope: !4683, file: !4647, line: 62, baseType: !4715, size: 384, offset: 3712)
!4715 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4683, file: !4647, line: 62, size: 384, elements: !4716)
!4716 = !{!4717, !4718}
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4715, file: !4647, line: 63, baseType: !4711, size: 384)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4715, file: !4647, line: 64, baseType: !4711, size: 384)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4665, file: !4647, line: 351, baseType: !4720, size: 1088)
!4720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4647, line: 79, size: 1088, elements: !4721)
!4721 = !{!4722, !4723, !4724, !4725, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4734, !4735, !4736, !4743}
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4720, file: !4647, line: 80, baseType: !350, size: 32)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4720, file: !4647, line: 81, baseType: !350, size: 32, offset: 32)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4720, file: !4647, line: 82, baseType: !350, size: 32, offset: 64)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4720, file: !4647, line: 83, baseType: !350, size: 32, offset: 96)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4720, file: !4647, line: 84, baseType: !350, size: 32, offset: 128)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4720, file: !4647, line: 85, baseType: !350, size: 32, offset: 160)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4720, file: !4647, line: 86, baseType: !350, size: 32, offset: 192)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4720, file: !4647, line: 88, baseType: !4678, size: 640, offset: 224)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4720, file: !4647, line: 89, baseType: !103, size: 8, offset: 864)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4720, file: !4647, line: 90, baseType: !103, size: 8, offset: 872)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4720, file: !4647, line: 91, baseType: !103, size: 8, offset: 880)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4720, file: !4647, line: 92, baseType: !103, size: 8, offset: 888)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4720, file: !4647, line: 93, baseType: !103, size: 8, offset: 896)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4720, file: !4647, line: 94, baseType: !103, size: 8, offset: 904)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4720, file: !4647, line: 95, baseType: !4737, size: 64, offset: 960)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4739, line: 11, size: 128, elements: !4740)
!4739 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4740 = !{!4741, !4742}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4738, file: !4739, line: 12, baseType: !477, size: 64)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4738, file: !4739, line: 13, baseType: !4342, size: 64, offset: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4720, file: !4647, line: 96, baseType: !350, size: 32, offset: 1024)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4665, file: !4647, line: 352, baseType: !4745, size: 4608, align: 512)
!4745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4647, line: 333, size: 4608, align: 512, elements: !4746)
!4746 = !{!4747, !4748, !4755}
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4745, file: !4647, line: 334, baseType: !4683, size: 4096, align: 128)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4745, file: !4647, line: 335, baseType: !4749, size: 512, offset: 4096)
!4749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4647, line: 312, size: 512, elements: !4750)
!4750 = !{!4751, !4752, !4753}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4749, file: !4647, line: 313, baseType: !345, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4749, file: !4647, line: 314, baseType: !345, size: 64, offset: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4749, file: !4647, line: 315, baseType: !4754, size: 384, offset: 128)
!4754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 384, elements: !1480)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4745, file: !4647, line: 336, baseType: !4756, offset: 4608)
!4756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, elements: !1656)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4665, file: !4647, line: 353, baseType: !4758, size: 32768)
!4758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 32768, elements: !2385)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4646, file: !4647, line: 484, baseType: !4652, size: 64, offset: 192)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4646, file: !4647, line: 491, baseType: !4761, size: 128, offset: 256)
!4761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4647, line: 404, size: 128, elements: !4762)
!4762 = !{!4763, !4764, !4765}
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4761, file: !4647, line: 424, baseType: !345, size: 64)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4761, file: !4647, line: 432, baseType: !7, size: 32, offset: 64)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4761, file: !4647, line: 440, baseType: !7, size: 32, offset: 96)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4646, file: !4647, line: 498, baseType: !4761, size: 128, offset: 384)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4646, file: !4647, line: 508, baseType: !4653, size: 33280, align: 512, offset: 512)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !914, file: !915, line: 31, baseType: !3918, size: 64, offset: 448)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !914, file: !915, line: 32, baseType: !7, size: 32, offset: 512)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !914, file: !915, line: 33, baseType: !913, size: 64, offset: 576)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !914, file: !915, line: 35, baseType: !4772, size: 64, offset: 640)
!4772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4773, size: 64)
!4773 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !915, line: 17, flags: DIFlagFwdDecl)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !914, file: !915, line: 37, baseType: !1380, size: 64, offset: 704)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !914, file: !915, line: 38, baseType: !1623, size: 64, offset: 768)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !914, file: !915, line: 39, baseType: !42, size: 32, offset: 832)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !914, file: !915, line: 40, baseType: !1413, size: 192, offset: 896)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !914, file: !915, line: 42, baseType: !42, size: 32, offset: 1088)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !865, file: !22, line: 951, baseType: !272, size: 32, offset: 128)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !865, file: !22, line: 952, baseType: !522, size: 32, offset: 160)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !865, file: !22, line: 952, baseType: !522, size: 32, offset: 192)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !865, file: !22, line: 953, baseType: !42, size: 32, offset: 224)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !836, file: !22, line: 1012, baseType: !1797, size: 64, offset: 896)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !836, file: !22, line: 1013, baseType: !4785, size: 256, offset: 960)
!4785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !22, line: 970, size: 256, elements: !4786)
!4786 = !{!4787, !4788, !4789, !4790, !4791, !4792}
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4785, file: !22, line: 971, baseType: !59, size: 64)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4785, file: !22, line: 972, baseType: !7, size: 32, offset: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !4785, file: !22, line: 973, baseType: !7, size: 32, offset: 96)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !4785, file: !22, line: 974, baseType: !7, size: 32, offset: 128)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !4785, file: !22, line: 975, baseType: !7, size: 32, offset: 160)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !4785, file: !22, line: 976, baseType: !61, size: 64, offset: 192)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !836, file: !22, line: 1014, baseType: !4794, size: 128, offset: 1216)
!4794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !4795, line: 8, size: 128, elements: !4796)
!4795 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!4796 = !{!4797, !4798}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !4794, file: !4795, line: 9, baseType: !656, size: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !4794, file: !4795, line: 10, baseType: !551, size: 64, offset: 64)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !836, file: !22, line: 1015, baseType: !516, size: 64, offset: 1344)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !836, file: !22, line: 1016, baseType: !4801, size: 64, offset: 1408)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4803)
!4803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !22, line: 1914, size: 2112, elements: !4804)
!4804 = !{!4805, !4806, !4810, !4814, !4818, !4846, !4847, !4853, !4866, !4870, !4874, !4875, !4879, !4880, !4884, !4889, !4890, !4894, !4898, !4904, !4905, !4909, !4910, !4914, !4918, !4922, !4927, !4931, !4935, !4939, !4943, !4944, !4950}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4803, file: !22, line: 1915, baseType: !388, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !4803, file: !22, line: 1916, baseType: !4807, size: 64, offset: 64)
!4807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4808, size: 64)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!61, !1247, !61, !42}
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4803, file: !22, line: 1917, baseType: !4811, size: 64, offset: 128)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!474, !1247, !442, !55, !60}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4803, file: !22, line: 1918, baseType: !4815, size: 64, offset: 192)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!474, !1247, !36, !55, !60}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !4803, file: !22, line: 1919, baseType: !4819, size: 64, offset: 256)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!474, !4822, !4844}
!4822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4823, size: 64)
!4823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !22, line: 373, size: 384, elements: !4824)
!4824 = !{!4825, !4826, !4827, !4831, !4832, !4833, !4834}
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !4823, file: !22, line: 374, baseType: !1247, size: 64)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !4823, file: !22, line: 375, baseType: !61, size: 64, offset: 64)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !4823, file: !22, line: 376, baseType: !4828, size: 64, offset: 128)
!4828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4829, size: 64)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{null, !4822, !477}
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4823, file: !22, line: 377, baseType: !40, size: 64, offset: 192)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !4823, file: !22, line: 378, baseType: !42, size: 32, offset: 256)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !4823, file: !22, line: 379, baseType: !113, size: 16, offset: 288)
!4834 = !DIDerivedType(tag: DW_TAG_member, scope: !4823, file: !22, line: 380, baseType: !4835, size: 64, offset: 320)
!4835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4823, file: !22, line: 380, size: 64, elements: !4836)
!4836 = !{!4837, !4840}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !4835, file: !22, line: 386, baseType: !4838, size: 64)
!4838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4839, size: 64)
!4839 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !22, line: 386, flags: DIFlagFwdDecl)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !4835, file: !22, line: 395, baseType: !4841, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!474, !40}
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !3173, line: 17, flags: DIFlagFwdDecl)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !4803, file: !22, line: 1920, baseType: !4819, size: 64, offset: 320)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !4803, file: !22, line: 1921, baseType: !4848, size: 64, offset: 384)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DISubroutineType(types: !4850)
!4850 = !{!42, !4822, !4851, !7}
!4851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4852, size: 64)
!4852 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !22, line: 53, flags: DIFlagFwdDecl)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !4803, file: !22, line: 1923, baseType: !4854, size: 64, offset: 448)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!42, !1247, !4857}
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !22, line: 1858, size: 128, elements: !4859)
!4859 = !{!4860, !4865}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !4858, file: !22, line: 1859, baseType: !4861, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !22, line: 1855, baseType: !4862)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DISubroutineType(types: !4864)
!4864 = !{!1425, !4857, !36, !42, !61, !345, !7}
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4858, file: !22, line: 1860, baseType: !61, size: 64, offset: 64)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4803, file: !22, line: 1924, baseType: !4867, size: 64, offset: 512)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DISubroutineType(types: !4869)
!4869 = !{!2313, !1247, !2315}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !4803, file: !22, line: 1925, baseType: !4871, size: 64, offset: 576)
!4871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4872, size: 64)
!4872 = !DISubroutineType(types: !4873)
!4873 = !{!477, !1247, !7, !59}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !4803, file: !22, line: 1926, baseType: !4871, size: 64, offset: 640)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4803, file: !22, line: 1927, baseType: !4876, size: 64, offset: 704)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{!42, !1247, !2018}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !4803, file: !22, line: 1928, baseType: !59, size: 64, offset: 768)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4803, file: !22, line: 1929, baseType: !4881, size: 64, offset: 832)
!4881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4882, size: 64)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!42, !516, !1247}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !4803, file: !22, line: 1930, baseType: !4885, size: 64, offset: 896)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!42, !1247, !4888}
!4888 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !22, line: 1061, baseType: !40)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4803, file: !22, line: 1931, baseType: !4881, size: 64, offset: 960)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !4803, file: !22, line: 1932, baseType: !4891, size: 64, offset: 1024)
!4891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4892, size: 64)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!42, !1247, !61, !61, !42}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !4803, file: !22, line: 1933, baseType: !4895, size: 64, offset: 1088)
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!42, !42, !1247, !42}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4803, file: !22, line: 1934, baseType: !4899, size: 64, offset: 1152)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!42, !1247, !42, !4902}
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !22, line: 1063, flags: DIFlagFwdDecl)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !4803, file: !22, line: 1935, baseType: !1244, size: 64, offset: 1216)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !4803, file: !22, line: 1936, baseType: !4906, size: 64, offset: 1280)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!42, !42}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !4803, file: !22, line: 1937, baseType: !4899, size: 64, offset: 1344)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !4803, file: !22, line: 1938, baseType: !4911, size: 64, offset: 1408)
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4912, size: 64)
!4912 = !DISubroutineType(types: !4913)
!4913 = !{!474, !3071, !1247, !60, !55, !7}
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !4803, file: !22, line: 1939, baseType: !4915, size: 64, offset: 1472)
!4915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4916, size: 64)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!474, !1247, !60, !3071, !55, !7}
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !4803, file: !22, line: 1940, baseType: !4919, size: 64, offset: 1536)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = !DISubroutineType(types: !4921)
!4921 = !{null, !1247}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !4803, file: !22, line: 1941, baseType: !4923, size: 64, offset: 1600)
!4923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4924, size: 64)
!4924 = !DISubroutineType(types: !4925)
!4925 = !{!42, !1247, !42, !4926, !3929}
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4902, size: 64)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !4803, file: !22, line: 1942, baseType: !4928, size: 64, offset: 1664)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{!477, !1247, !42, !61, !61}
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4803, file: !22, line: 1944, baseType: !4932, size: 64, offset: 1728)
!4932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4933, size: 64)
!4933 = !DISubroutineType(types: !4934)
!4934 = !{null, !781, !1247}
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !4803, file: !22, line: 1948, baseType: !4936, size: 64, offset: 1792)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!474, !1247, !61, !1247, !61, !55, !7}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !4803, file: !22, line: 1950, baseType: !4940, size: 64, offset: 1856)
!4940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!4941 = !DISubroutineType(types: !4942)
!4942 = !{!61, !1247, !61, !1247, !61, !61, !7}
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !4803, file: !22, line: 1953, baseType: !4891, size: 64, offset: 1920)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !4803, file: !22, line: 1954, baseType: !4945, size: 64, offset: 1984)
!4945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4946, size: 64)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!42, !4948, !7}
!4948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4949, size: 64)
!4949 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !22, line: 1911, flags: DIFlagFwdDecl)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !4803, file: !22, line: 1955, baseType: !4951, size: 64, offset: 2048)
!4951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4952, size: 64)
!4952 = !DISubroutineType(types: !4953)
!4953 = !{!42, !4948, !4851, !7}
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !836, file: !22, line: 1018, baseType: !345, size: 64, offset: 1472)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !836, file: !22, line: 1020, baseType: !40, size: 64, offset: 1536)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !836, file: !22, line: 1023, baseType: !40, size: 64, offset: 1600)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !836, file: !22, line: 1027, baseType: !4609, size: 64, offset: 1664)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !836, file: !22, line: 1029, baseType: !512, size: 64, offset: 1728)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !836, file: !22, line: 1030, baseType: !4960, size: 32, offset: 1792)
!4960 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !4961, line: 8, baseType: !350)
!4961 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !836, file: !22, line: 1031, baseType: !4960, size: 32, offset: 1824)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !782, file: !783, line: 29, baseType: !40, size: 64, offset: 896)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !724, file: !22, line: 2077, baseType: !778, size: 64, offset: 1088)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !724, file: !22, line: 2078, baseType: !778, size: 64, offset: 1152)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !724, file: !22, line: 2079, baseType: !778, size: 64, offset: 1216)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !724, file: !22, line: 2081, baseType: !4968, size: 64, offset: 1280)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = !DISubroutineType(types: !4970)
!4970 = !{!474, !662, !42, !442, !55, !61}
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !724, file: !22, line: 2082, baseType: !4972, size: 64, offset: 1344)
!4972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4973, size: 64)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{!474, !662, !42, !36, !55, !61}
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !724, file: !22, line: 2083, baseType: !4976, size: 64, offset: 1408)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!4979, !516}
!4979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4980, size: 64)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !281, line: 296, size: 1664, elements: !4982)
!4982 = !{!4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990, !4991, !5007, !5008, !5009}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !4981, file: !281, line: 297, baseType: !704, size: 128)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !4981, file: !281, line: 298, baseType: !117, size: 128, offset: 128)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !4981, file: !281, line: 299, baseType: !117, size: 128, offset: 256)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !4981, file: !281, line: 300, baseType: !117, size: 128, offset: 384)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !4981, file: !281, line: 301, baseType: !793, size: 256, offset: 512)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !4981, file: !281, line: 302, baseType: !79, size: 32, offset: 768)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !4981, file: !281, line: 303, baseType: !69, size: 32, offset: 800)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !4981, file: !281, line: 304, baseType: !662, size: 64, offset: 832)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !4981, file: !281, line: 305, baseType: !4992, size: 64, offset: 896)
!4992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !281, line: 68, size: 64, elements: !4993)
!4993 = !{!4994, !5006}
!4994 = !DIDerivedType(tag: DW_TAG_member, scope: !4992, file: !281, line: 69, baseType: !4995, size: 32)
!4995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4992, file: !281, line: 69, size: 32, elements: !4996)
!4996 = !{!4997, !4998, !4999}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4995, file: !281, line: 70, baseType: !522, size: 32)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4995, file: !281, line: 71, baseType: !531, size: 32)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !4995, file: !281, line: 72, baseType: !5000, size: 32)
!5000 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !5001, line: 24, baseType: !5002)
!5001 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5001, line: 22, size: 32, elements: !5003)
!5003 = !{!5004}
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5002, file: !5001, line: 23, baseType: !5005, size: 32)
!5005 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !5001, line: 20, baseType: !528)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4992, file: !281, line: 74, baseType: !280, size: 32, offset: 32)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !4981, file: !281, line: 306, baseType: !61, size: 64, offset: 960)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !4981, file: !281, line: 307, baseType: !59, size: 64, offset: 1024)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !4981, file: !281, line: 308, baseType: !5010, size: 576, offset: 1088)
!5010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !281, line: 205, size: 576, elements: !5011)
!5011 = !{!5012, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021}
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !5010, file: !281, line: 206, baseType: !5013, size: 64)
!5013 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !281, line: 66, baseType: !63)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !5010, file: !281, line: 207, baseType: !5013, size: 64, offset: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !5010, file: !281, line: 208, baseType: !5013, size: 64, offset: 128)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !5010, file: !281, line: 209, baseType: !5013, size: 64, offset: 192)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !5010, file: !281, line: 210, baseType: !5013, size: 64, offset: 256)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !5010, file: !281, line: 211, baseType: !5013, size: 64, offset: 320)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !5010, file: !281, line: 212, baseType: !5013, size: 64, offset: 384)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !5010, file: !281, line: 213, baseType: !1451, size: 64, offset: 448)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !5010, file: !281, line: 214, baseType: !1451, size: 64, offset: 512)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !724, file: !22, line: 2085, baseType: !5023, size: 64, offset: 1472)
!5023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5024, size: 64)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!477, !662, !5026}
!5026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5027, size: 64)
!5027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !5028, line: 15, size: 256, elements: !5029)
!5028 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!5029 = !{!5030, !5031, !5032, !5033, !5034}
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !5027, file: !5028, line: 16, baseType: !927, size: 32)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !5027, file: !5028, line: 19, baseType: !42, size: 32, offset: 32)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !5027, file: !5028, line: 26, baseType: !59, size: 64, offset: 64)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !5027, file: !5028, line: 33, baseType: !59, size: 64, offset: 128)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !5027, file: !5028, line: 36, baseType: !5035, size: 64, offset: 192)
!5035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5036 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !134, line: 33, flags: DIFlagFwdDecl)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !724, file: !22, line: 2087, baseType: !5023, size: 64, offset: 1536)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !724, file: !22, line: 2089, baseType: !694, size: 64, offset: 1600)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !663, file: !22, line: 1198, baseType: !5040, size: 64, offset: 448)
!5040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5041, size: 64)
!5041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5042)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !281, line: 324, size: 704, elements: !5043)
!5043 = !{!5044, !5048, !5052, !5056, !5057, !5058, !5059, !5060, !5065, !5070, !5074}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !5042, file: !281, line: 325, baseType: !5045, size: 64)
!5045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5046, size: 64)
!5046 = !DISubroutineType(types: !5047)
!5047 = !{!42, !4980}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !5042, file: !281, line: 326, baseType: !5049, size: 64, offset: 64)
!5049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5050, size: 64)
!5050 = !DISubroutineType(types: !5051)
!5051 = !{!4980, !662, !42}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !5042, file: !281, line: 327, baseType: !5053, size: 64, offset: 128)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{null, !4980}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !5042, file: !281, line: 328, baseType: !5045, size: 64, offset: 192)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !5042, file: !281, line: 329, baseType: !5045, size: 64, offset: 256)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !5042, file: !281, line: 330, baseType: !5045, size: 64, offset: 320)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !5042, file: !281, line: 331, baseType: !752, size: 64, offset: 384)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !5042, file: !281, line: 334, baseType: !5061, size: 64, offset: 448)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{!5064, !516}
!5064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !5042, file: !281, line: 335, baseType: !5066, size: 64, offset: 512)
!5066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5067, size: 64)
!5067 = !DISubroutineType(types: !5068)
!5068 = !{!42, !516, !5069}
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5000, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !5042, file: !281, line: 337, baseType: !5071, size: 64, offset: 576)
!5071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5072, size: 64)
!5072 = !DISubroutineType(types: !5073)
!5073 = !{!42, !516, !5064}
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !5042, file: !281, line: 339, baseType: !5075, size: 64, offset: 640)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DISubroutineType(types: !5077)
!5077 = !{!42, !662, !5078}
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !663, file: !22, line: 1199, baseType: !5080, size: 64, offset: 512)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5082)
!5082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !281, line: 430, size: 704, elements: !5083)
!5083 = !{!5084, !5090, !5091, !5095, !5096, !5097, !5112, !5135, !5139, !5140, !5163}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !5082, file: !281, line: 431, baseType: !5085, size: 64)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!42, !662, !42, !42, !5088}
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4794)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !5082, file: !281, line: 432, baseType: !752, size: 64, offset: 64)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !5082, file: !281, line: 433, baseType: !5092, size: 64, offset: 128)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!42, !662, !7}
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !5082, file: !281, line: 434, baseType: !5092, size: 64, offset: 192)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !5082, file: !281, line: 435, baseType: !752, size: 64, offset: 256)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !5082, file: !281, line: 436, baseType: !5098, size: 64, offset: 320)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{!42, !662, !42, !5101}
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !281, line: 417, size: 256, elements: !5103)
!5103 = !{!5104, !5105, !5106, !5107, !5108, !5109, !5110, !5111}
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !5102, file: !281, line: 418, baseType: !42, size: 32)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !5102, file: !281, line: 419, baseType: !7, size: 32, offset: 32)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !5102, file: !281, line: 420, baseType: !7, size: 32, offset: 64)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !5102, file: !281, line: 422, baseType: !7, size: 32, offset: 96)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !5102, file: !281, line: 423, baseType: !7, size: 32, offset: 128)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !5102, file: !281, line: 424, baseType: !7, size: 32, offset: 160)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !5102, file: !281, line: 425, baseType: !7, size: 32, offset: 192)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !5102, file: !281, line: 426, baseType: !7, size: 32, offset: 224)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !5082, file: !281, line: 437, baseType: !5113, size: 64, offset: 384)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DISubroutineType(types: !5115)
!5115 = !{!42, !662, !4992, !5116}
!5116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5117, size: 64)
!5117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !281, line: 345, size: 960, elements: !5118)
!5118 = !{!5119, !5120, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134}
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !5117, file: !281, line: 346, baseType: !42, size: 32)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !5117, file: !281, line: 347, baseType: !345, size: 64, offset: 64)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !5117, file: !281, line: 348, baseType: !345, size: 64, offset: 128)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !5117, file: !281, line: 349, baseType: !345, size: 64, offset: 192)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !5117, file: !281, line: 350, baseType: !345, size: 64, offset: 256)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !5117, file: !281, line: 351, baseType: !345, size: 64, offset: 320)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !5117, file: !281, line: 352, baseType: !345, size: 64, offset: 384)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !5117, file: !281, line: 353, baseType: !341, size: 64, offset: 448)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !5117, file: !281, line: 355, baseType: !341, size: 64, offset: 512)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !5117, file: !281, line: 356, baseType: !42, size: 32, offset: 576)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !5117, file: !281, line: 357, baseType: !42, size: 32, offset: 608)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !5117, file: !281, line: 358, baseType: !345, size: 64, offset: 640)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !5117, file: !281, line: 359, baseType: !345, size: 64, offset: 704)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !5117, file: !281, line: 360, baseType: !345, size: 64, offset: 768)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !5117, file: !281, line: 361, baseType: !341, size: 64, offset: 832)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !5117, file: !281, line: 362, baseType: !42, size: 32, offset: 896)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !5082, file: !281, line: 438, baseType: !5136, size: 64, offset: 448)
!5136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5137, size: 64)
!5137 = !DISubroutineType(types: !5138)
!5138 = !{!42, !662, !5078, !5116}
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !5082, file: !281, line: 440, baseType: !5113, size: 64, offset: 512)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !5082, file: !281, line: 441, baseType: !5141, size: 64, offset: 576)
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!42, !662, !5144}
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !281, line: 411, size: 1408, elements: !5146)
!5146 = !{!5147, !5148}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !5145, file: !281, line: 412, baseType: !7, size: 32)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !5145, file: !281, line: 413, baseType: !5149, size: 1344, offset: 64)
!5149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5150, size: 1344, elements: !443)
!5150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !281, line: 397, size: 448, elements: !5151)
!5151 = !{!5152, !5153, !5154, !5155, !5156, !5157, !5158, !5159, !5160, !5162}
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5150, file: !281, line: 398, baseType: !7, size: 32)
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !5150, file: !281, line: 399, baseType: !7, size: 32, offset: 32)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !5150, file: !281, line: 401, baseType: !7, size: 32, offset: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !5150, file: !281, line: 402, baseType: !7, size: 32, offset: 96)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !5150, file: !281, line: 403, baseType: !7, size: 32, offset: 128)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !5150, file: !281, line: 404, baseType: !7, size: 32, offset: 160)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !5150, file: !281, line: 405, baseType: !7, size: 32, offset: 192)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5150, file: !281, line: 406, baseType: !347, size: 64, offset: 256)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5150, file: !281, line: 407, baseType: !5161, size: 64, offset: 320)
!5161 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !45, line: 132, baseType: !345)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !5150, file: !281, line: 408, baseType: !5161, size: 64, offset: 384)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !5082, file: !281, line: 442, baseType: !5092, size: 64, offset: 640)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !663, file: !22, line: 1200, baseType: !5165, size: 64, offset: 576)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5167)
!5167 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !22, line: 54, flags: DIFlagFwdDecl)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !663, file: !22, line: 1201, baseType: !59, size: 64, offset: 640)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !663, file: !22, line: 1202, baseType: !59, size: 64, offset: 704)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !663, file: !22, line: 1203, baseType: !59, size: 64, offset: 768)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !663, file: !22, line: 1204, baseType: !551, size: 64, offset: 832)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !663, file: !22, line: 1205, baseType: !1275, size: 320, offset: 896)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !663, file: !22, line: 1206, baseType: !42, size: 32, offset: 1216)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !663, file: !22, line: 1207, baseType: !69, size: 32, offset: 1248)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !663, file: !22, line: 1209, baseType: !40, size: 64, offset: 1280)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !663, file: !22, line: 1211, baseType: !5177, size: 64, offset: 1344)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5179, size: 64)
!5179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5180)
!5180 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !22, line: 1211, flags: DIFlagFwdDecl)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !663, file: !22, line: 1223, baseType: !5182, size: 64, offset: 1408)
!5182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !568, line: 34, size: 64, elements: !5183)
!5183 = !{!5184}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5182, file: !568, line: 35, baseType: !571, size: 64)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !663, file: !22, line: 1224, baseType: !117, size: 128, offset: 1472)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !663, file: !22, line: 1225, baseType: !5187, size: 64, offset: 1600)
!5187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5188, size: 64)
!5188 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !22, line: 1225, flags: DIFlagFwdDecl)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !663, file: !22, line: 1226, baseType: !5190, size: 64, offset: 1664)
!5190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5191, size: 64)
!5191 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !22, line: 1226, flags: DIFlagFwdDecl)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !663, file: !22, line: 1227, baseType: !5193, size: 64, offset: 1728)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !22, line: 50, flags: DIFlagFwdDecl)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !663, file: !22, line: 1228, baseType: !5196, size: 64, offset: 1792)
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !22, line: 1228, flags: DIFlagFwdDecl)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !663, file: !22, line: 1229, baseType: !704, size: 128, offset: 1856)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !663, file: !22, line: 1230, baseType: !7, size: 32, offset: 1984)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !663, file: !22, line: 1231, baseType: !5201, size: 2496, offset: 2048)
!5201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !281, line: 521, size: 2496, elements: !5202)
!5202 = !{!5203, !5204, !5205, !5207, !5239}
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5201, file: !281, line: 522, baseType: !7, size: 32)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !5201, file: !281, line: 523, baseType: !1275, size: 320, offset: 64)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !5201, file: !281, line: 524, baseType: !5206, size: 192, offset: 384)
!5206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 192, elements: !443)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5201, file: !281, line: 525, baseType: !5208, size: 1728, offset: 576)
!5208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5209, size: 1728, elements: !443)
!5209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !281, line: 222, size: 576, elements: !5210)
!5210 = !{!5211, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238}
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !5209, file: !281, line: 223, baseType: !5212, size: 64)
!5212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5213, size: 64)
!5213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !281, line: 445, size: 256, elements: !5214)
!5214 = !{!5215, !5216, !5229, !5230}
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !5213, file: !281, line: 446, baseType: !42, size: 32)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !5213, file: !281, line: 447, baseType: !5217, size: 64, offset: 64)
!5217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5218, size: 64)
!5218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5219)
!5219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !281, line: 312, size: 512, elements: !5220)
!5220 = !{!5221, !5222, !5223, !5224, !5225, !5226, !5227, !5228}
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !5219, file: !281, line: 313, baseType: !752, size: 64)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !5219, file: !281, line: 314, baseType: !752, size: 64, offset: 64)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !5219, file: !281, line: 315, baseType: !752, size: 64, offset: 128)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !5219, file: !281, line: 316, baseType: !752, size: 64, offset: 192)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !5219, file: !281, line: 317, baseType: !5045, size: 64, offset: 256)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !5219, file: !281, line: 318, baseType: !5045, size: 64, offset: 320)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !5219, file: !281, line: 319, baseType: !5045, size: 64, offset: 384)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !5219, file: !281, line: 320, baseType: !5075, size: 64, offset: 448)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !5213, file: !281, line: 448, baseType: !388, size: 64, offset: 128)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !5213, file: !281, line: 449, baseType: !5212, size: 64, offset: 192)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !5209, file: !281, line: 224, baseType: !42, size: 32, offset: 64)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !5209, file: !281, line: 226, baseType: !117, size: 128, offset: 128)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !5209, file: !281, line: 227, baseType: !59, size: 64, offset: 256)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !5209, file: !281, line: 228, baseType: !7, size: 32, offset: 320)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !5209, file: !281, line: 229, baseType: !7, size: 32, offset: 352)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !5209, file: !281, line: 230, baseType: !5013, size: 64, offset: 384)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !5209, file: !281, line: 231, baseType: !5013, size: 64, offset: 448)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !5209, file: !281, line: 232, baseType: !40, size: 64, offset: 512)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5201, file: !281, line: 526, baseType: !5240, size: 192, offset: 2304)
!5240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5217, size: 192, elements: !443)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !663, file: !22, line: 1233, baseType: !5242, size: 2368, offset: 4544)
!5242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !22, line: 1184, size: 2368, elements: !5243)
!5243 = !{!5244, !5245, !5246}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !5242, file: !22, line: 1185, baseType: !46, size: 16)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !5242, file: !22, line: 1186, baseType: !46, size: 16, offset: 16)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !5242, file: !22, line: 1187, baseType: !5247, size: 2304, offset: 64)
!5247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5248, size: 2304, elements: !443)
!5248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !5249, line: 12, size: 768, elements: !5250)
!5249 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!5250 = !{!5251, !5259, !5261, !5262, !5263}
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !5248, file: !5249, line: 13, baseType: !5252, size: 384)
!5252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !5253, line: 17, size: 384, elements: !5254)
!5253 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!5254 = !{!5255, !5256, !5257, !5258}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !5252, file: !5253, line: 18, baseType: !42, size: 32)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !5252, file: !5253, line: 19, baseType: !42, size: 32, offset: 32)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !5252, file: !5253, line: 20, baseType: !74, size: 192, offset: 64)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !5252, file: !5253, line: 22, baseType: !848, size: 128, align: 64, offset: 256)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !5248, file: !5249, line: 14, baseType: !5260, size: 64, offset: 384)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !5248, file: !5249, line: 15, baseType: !4201, size: 64, offset: 448)
!5262 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5248, file: !5249, line: 16, baseType: !74, size: 192, offset: 512)
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5248, file: !5249, line: 17, baseType: !69, size: 32, offset: 704)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !663, file: !22, line: 1240, baseType: !40, size: 64, offset: 6912)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !663, file: !22, line: 1243, baseType: !350, size: 32, offset: 6976)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !663, file: !22, line: 1245, baseType: !1451, size: 64, offset: 7040)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !663, file: !22, line: 1246, baseType: !1451, size: 64, offset: 7104)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !663, file: !22, line: 1248, baseType: !351, size: 32, offset: 7168)
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !663, file: !22, line: 1249, baseType: !5270, size: 64, offset: 7232)
!5270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5271, size: 64)
!5271 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !22, line: 634, flags: DIFlagFwdDecl)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !663, file: !22, line: 1252, baseType: !2734, size: 256, offset: 7296)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !663, file: !22, line: 1253, baseType: !5274, size: 128, offset: 7552)
!5274 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !5275, line: 21, baseType: !5276)
!5275 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!5276 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5275, line: 19, size: 128, elements: !5277)
!5277 = !{!5278}
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !5276, file: !5275, line: 20, baseType: !3361, size: 128)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !663, file: !22, line: 1255, baseType: !7, size: 32, offset: 7680)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !663, file: !22, line: 1261, baseType: !793, size: 256, offset: 7744)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !663, file: !22, line: 1267, baseType: !36, size: 64, offset: 8000)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !663, file: !22, line: 1269, baseType: !609, size: 64, offset: 8064)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !663, file: !22, line: 1271, baseType: !5284, size: 448, offset: 8128)
!5284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !5028, line: 63, size: 448, elements: !5285)
!5285 = !{!5286, !5291, !5292, !5293, !5294, !5295, !5296}
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !5284, file: !5028, line: 64, baseType: !5287, size: 64)
!5287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5288, size: 64)
!5288 = !DISubroutineType(types: !5289)
!5289 = !{!59, !5290, !5026}
!5290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5284, size: 64)
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !5284, file: !5028, line: 66, baseType: !5287, size: 64, offset: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !5284, file: !5028, line: 69, baseType: !477, size: 64, offset: 128)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !5284, file: !5028, line: 70, baseType: !42, size: 32, offset: 192)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5284, file: !5028, line: 71, baseType: !7, size: 32, offset: 224)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5284, file: !5028, line: 74, baseType: !117, size: 128, offset: 256)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !5284, file: !5028, line: 85, baseType: !5297, size: 64, offset: 384)
!5297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !663, file: !22, line: 1274, baseType: !797, size: 64, offset: 8576)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !663, file: !22, line: 1280, baseType: !797, size: 64, offset: 8640)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !663, file: !22, line: 1283, baseType: !42, size: 32, offset: 8704)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !663, file: !22, line: 1286, baseType: !4960, size: 32, offset: 8736)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !663, file: !22, line: 1289, baseType: !2564, size: 64, offset: 8768)
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !663, file: !22, line: 1290, baseType: !700, size: 64, offset: 8832)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !663, file: !22, line: 1297, baseType: !1380, size: 64, offset: 8896)
!5305 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !663, file: !22, line: 1304, baseType: !5306, size: 64, offset: 8960)
!5306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !5307, line: 49, size: 64, elements: !5308)
!5307 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!5308 = !{!5309}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5306, file: !5307, line: 50, baseType: !5310, size: 64)
!5310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5311, size: 64)
!5311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !5307, line: 41, size: 512, align: 512, elements: !5312)
!5312 = !{!5313, !5314, !5319}
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5311, file: !5307, line: 43, baseType: !79, size: 32)
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5311, file: !5307, line: 45, baseType: !5315, size: 192, offset: 64)
!5315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !5307, line: 29, size: 192, elements: !5316)
!5316 = !{!5317, !5318}
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5315, file: !5307, line: 30, baseType: !117, size: 128)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5315, file: !5307, line: 32, baseType: !477, size: 64, offset: 128)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !5311, file: !5307, line: 46, baseType: !477, size: 64, offset: 256)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !663, file: !22, line: 1305, baseType: !5306, size: 64, offset: 9024)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !663, file: !22, line: 1306, baseType: !848, size: 128, align: 64, offset: 9088)
!5322 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !663, file: !22, line: 1307, baseType: !1540, size: 256, offset: 9216)
!5323 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !663, file: !22, line: 1309, baseType: !793, size: 256, offset: 9472)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !663, file: !22, line: 1314, baseType: !42, size: 32, offset: 9728)
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !663, file: !22, line: 1317, baseType: !79, size: 32, align: 512, offset: 10240)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !663, file: !22, line: 1318, baseType: !117, size: 128, offset: 10304)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !663, file: !22, line: 1320, baseType: !79, size: 32, offset: 10432)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !663, file: !22, line: 1321, baseType: !117, size: 128, offset: 10496)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !657, file: !658, line: 73, baseType: !42, size: 32, offset: 128)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !657, file: !658, line: 74, baseType: !5331, size: 64, offset: 192)
!5331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5332, size: 64)
!5332 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1814, line: 42, flags: DIFlagFwdDecl)
!5333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4794, size: 64)
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !611, file: !553, line: 141, baseType: !5335, size: 64, offset: 704)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{!42, !5088, !1425}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !611, file: !553, line: 142, baseType: !5339, size: 64, offset: 768)
!5339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5340, size: 64)
!5340 = !DISubroutineType(types: !5341)
!5341 = !{!551, !551, !5342}
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !552, file: !553, line: 96, baseType: !662, size: 64, offset: 832)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !552, file: !553, line: 97, baseType: !59, size: 64, offset: 896)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !552, file: !553, line: 98, baseType: !40, size: 64, offset: 960)
!5347 = !DIDerivedType(tag: DW_TAG_member, scope: !552, file: !553, line: 100, baseType: !5348, size: 128, offset: 1024)
!5348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !552, file: !553, line: 100, size: 128, elements: !5349)
!5349 = !{!5350, !5351}
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !5348, file: !553, line: 101, baseType: !117, size: 128)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !5348, file: !553, line: 102, baseType: !2324, size: 64)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !552, file: !553, line: 104, baseType: !117, size: 128, offset: 1152)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !552, file: !553, line: 105, baseType: !117, size: 128, offset: 1280)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !552, file: !553, line: 113, baseType: !5355, size: 128, offset: 1408)
!5355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !552, file: !553, line: 109, size: 128, elements: !5356)
!5356 = !{!5357, !5358, !5359}
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !5355, file: !553, line: 110, baseType: !704, size: 128)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !5355, file: !553, line: 111, baseType: !567, size: 128)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !5355, file: !553, line: 112, baseType: !848, size: 128, align: 64)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !545, file: !22, line: 1968, baseType: !5361, size: 64, offset: 64)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = !DISubroutineType(types: !5363)
!5363 = !{!36, !551, !516, !5364}
!5364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5365, size: 64)
!5365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !5366, line: 10, size: 128, elements: !5367)
!5366 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!5367 = !{!5368, !5369}
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !5365, file: !5366, line: 11, baseType: !3800, size: 64)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5365, file: !5366, line: 12, baseType: !40, size: 64, offset: 64)
!5370 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !545, file: !22, line: 1969, baseType: !5371, size: 64, offset: 128)
!5371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5372, size: 64)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!42, !5331, !516, !42}
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !545, file: !22, line: 1970, baseType: !5375, size: 64, offset: 192)
!5375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5376, size: 64)
!5376 = !DISubroutineType(types: !5377)
!5377 = !{!539, !516, !42, !1425}
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !545, file: !22, line: 1972, baseType: !5379, size: 64, offset: 256)
!5379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5380, size: 64)
!5380 = !DISubroutineType(types: !5381)
!5381 = !{!42, !551, !442, !42}
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !545, file: !22, line: 1974, baseType: !5383, size: 64, offset: 320)
!5383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5384, size: 64)
!5384 = !DISubroutineType(types: !5385)
!5385 = !{!42, !5331, !516, !551, !44, !1425}
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !545, file: !22, line: 1976, baseType: !5387, size: 64, offset: 384)
!5387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5388, size: 64)
!5388 = !DISubroutineType(types: !5389)
!5389 = !{!42, !551, !516, !551}
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !545, file: !22, line: 1977, baseType: !5391, size: 64, offset: 448)
!5391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5392, size: 64)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{!42, !516, !551}
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !545, file: !22, line: 1978, baseType: !5395, size: 64, offset: 512)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!42, !5331, !516, !551, !36}
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !545, file: !22, line: 1980, baseType: !5399, size: 64, offset: 576)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DISubroutineType(types: !5401)
!5401 = !{!42, !5331, !516, !551, !44}
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !545, file: !22, line: 1982, baseType: !5391, size: 64, offset: 640)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !545, file: !22, line: 1983, baseType: !5404, size: 64, offset: 704)
!5404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5405, size: 64)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{!42, !5331, !516, !551, !44, !667}
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !545, file: !22, line: 1985, baseType: !5408, size: 64, offset: 768)
!5408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5409, size: 64)
!5409 = !DISubroutineType(types: !5410)
!5410 = !{!42, !5331, !516, !551, !516, !551, !7}
!5411 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !545, file: !22, line: 1987, baseType: !5412, size: 64, offset: 832)
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5413, size: 64)
!5413 = !DISubroutineType(types: !5414)
!5414 = !{!42, !5331, !551, !5415}
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !22, line: 226, size: 640, elements: !5417)
!5417 = !{!5418, !5419, !5420, !5430, !5439, !5440, !5445, !5446, !5447}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !5416, file: !22, line: 227, baseType: !7, size: 32)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !5416, file: !22, line: 228, baseType: !44, size: 16, offset: 32)
!5420 = !DIDerivedType(tag: DW_TAG_member, scope: !5416, file: !22, line: 241, baseType: !5421, size: 32, offset: 64)
!5421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5416, file: !22, line: 241, size: 32, elements: !5422)
!5422 = !{!5423, !5424}
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !5421, file: !22, line: 242, baseType: !522, size: 32)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !5421, file: !22, line: 243, baseType: !5425, size: 32)
!5425 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !5426, line: 16, baseType: !5427)
!5426 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!5427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5426, line: 14, size: 32, elements: !5428)
!5428 = !{!5429}
!5429 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5427, file: !5426, line: 15, baseType: !527, size: 32)
!5430 = !DIDerivedType(tag: DW_TAG_member, scope: !5416, file: !22, line: 245, baseType: !5431, size: 32, offset: 96)
!5431 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5416, file: !22, line: 245, size: 32, elements: !5432)
!5432 = !{!5433, !5434}
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !5431, file: !22, line: 246, baseType: !531, size: 32)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !5431, file: !22, line: 247, baseType: !5435, size: 32)
!5435 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !5426, line: 20, baseType: !5436)
!5436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !5426, line: 18, size: 32, elements: !5437)
!5437 = !{!5438}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5436, file: !5426, line: 19, baseType: !535, size: 32)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !5416, file: !22, line: 249, baseType: !61, size: 64, offset: 128)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !5416, file: !22, line: 250, baseType: !5441, size: 128, offset: 192)
!5441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1452, line: 13, size: 128, elements: !5442)
!5442 = !{!5443, !5444}
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !5441, file: !1452, line: 14, baseType: !1451, size: 64)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !5441, file: !1452, line: 15, baseType: !477, size: 64, offset: 64)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !5416, file: !22, line: 251, baseType: !5441, size: 128, offset: 320)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !5416, file: !22, line: 252, baseType: !5441, size: 128, offset: 448)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !5416, file: !22, line: 259, baseType: !1247, size: 64, offset: 576)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !545, file: !22, line: 1988, baseType: !5449, size: 64, offset: 896)
!5449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5450, size: 64)
!5450 = !DISubroutineType(types: !5451)
!5451 = !{!42, !5331, !5088, !5452, !350, !7}
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!5453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !5454, line: 22, size: 1280, elements: !5455)
!5454 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!5455 = !{!5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468, !5469, !5470, !5471, !5472, !5473, !5474, !5475, !5476}
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !5453, file: !5454, line: 23, baseType: !350, size: 32)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5453, file: !5454, line: 24, baseType: !44, size: 16, offset: 32)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !5453, file: !5454, line: 25, baseType: !7, size: 32, offset: 64)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !5453, file: !5454, line: 26, baseType: !1459, size: 32, offset: 96)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !5453, file: !5454, line: 27, baseType: !345, size: 64, offset: 128)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !5453, file: !5454, line: 28, baseType: !345, size: 64, offset: 192)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !5453, file: !5454, line: 41, baseType: !345, size: 64, offset: 256)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5453, file: !5454, line: 42, baseType: !667, size: 32, offset: 320)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !5453, file: !5454, line: 43, baseType: !667, size: 32, offset: 352)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !5453, file: !5454, line: 44, baseType: !522, size: 32, offset: 384)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !5453, file: !5454, line: 45, baseType: !531, size: 32, offset: 416)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5453, file: !5454, line: 46, baseType: !61, size: 64, offset: 448)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !5453, file: !5454, line: 47, baseType: !5441, size: 128, offset: 512)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !5453, file: !5454, line: 48, baseType: !5441, size: 128, offset: 640)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !5453, file: !5454, line: 49, baseType: !5441, size: 128, offset: 768)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !5453, file: !5454, line: 50, baseType: !5441, size: 128, offset: 896)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5453, file: !5454, line: 51, baseType: !345, size: 64, offset: 1024)
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !5453, file: !5454, line: 52, baseType: !345, size: 64, offset: 1088)
!5474 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !5453, file: !5454, line: 53, baseType: !350, size: 32, offset: 1152)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !5453, file: !5454, line: 54, baseType: !350, size: 32, offset: 1184)
!5476 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !5453, file: !5454, line: 55, baseType: !345, size: 64, offset: 1216)
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !545, file: !22, line: 1990, baseType: !5478, size: 64, offset: 960)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!474, !551, !442, !55}
!5481 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !545, file: !22, line: 1991, baseType: !5482, size: 64, offset: 1024)
!5482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5483, size: 64)
!5483 = !DISubroutineType(types: !5484)
!5484 = !{!42, !516, !5485, !345, !345}
!5485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5486, size: 64)
!5486 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !22, line: 55, flags: DIFlagFwdDecl)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !545, file: !22, line: 1993, baseType: !5488, size: 64, offset: 1088)
!5488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5489, size: 64)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{!42, !516, !42}
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !545, file: !22, line: 1994, baseType: !5492, size: 64, offset: 1152)
!5492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5493, size: 64)
!5493 = !DISubroutineType(types: !5494)
!5494 = !{!42, !516, !551, !1247, !7, !44}
!5495 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !545, file: !22, line: 1997, baseType: !5496, size: 64, offset: 1216)
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5497, size: 64)
!5497 = !DISubroutineType(types: !5498)
!5498 = !{!42, !5331, !516, !1247, !44}
!5499 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !545, file: !22, line: 1999, baseType: !5500, size: 64, offset: 1280)
!5500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5501, size: 64)
!5501 = !DISubroutineType(types: !5502)
!5502 = !{!539, !5331, !551, !42}
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !545, file: !22, line: 2001, baseType: !5504, size: 64, offset: 1344)
!5504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5505, size: 64)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{!42, !5331, !551, !539, !42}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !545, file: !22, line: 2003, baseType: !5508, size: 64, offset: 1408)
!5508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 64)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{!42, !5331, !551, !5511}
!5511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5512, size: 64)
!5512 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !22, line: 76, flags: DIFlagFwdDecl)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !545, file: !22, line: 2005, baseType: !5514, size: 64, offset: 1472)
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!42, !551, !5511}
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !545, file: !22, line: 2006, baseType: !5518, size: 64, offset: 1536)
!5518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5519, size: 64)
!5519 = !DISubroutineType(types: !5520)
!5520 = !{!5521, !516}
!5521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5522, size: 64)
!5522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !22, line: 3192, size: 192, elements: !5523)
!5523 = !{!5524, !5525}
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5522, file: !22, line: 3193, baseType: !922, size: 128)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !5522, file: !22, line: 3194, baseType: !350, size: 32, offset: 128)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !517, file: !22, line: 655, baseType: !662, size: 64, offset: 448)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !517, file: !22, line: 656, baseType: !512, size: 64, offset: 512)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !517, file: !22, line: 659, baseType: !40, size: 64, offset: 576)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !517, file: !22, line: 663, baseType: !59, size: 64, offset: 640)
!5530 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !22, line: 671, baseType: !5531, size: 32, offset: 704)
!5531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !517, file: !22, line: 671, size: 32, elements: !5532)
!5532 = !{!5533, !5534}
!5533 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !5531, file: !22, line: 672, baseType: !4436, size: 32)
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !5531, file: !22, line: 673, baseType: !7, size: 32)
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !517, file: !22, line: 675, baseType: !667, size: 32, offset: 736)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !517, file: !22, line: 676, baseType: !61, size: 64, offset: 768)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !517, file: !22, line: 677, baseType: !5441, size: 128, offset: 832)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !517, file: !22, line: 678, baseType: !5441, size: 128, offset: 960)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !517, file: !22, line: 679, baseType: !5441, size: 128, offset: 1088)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !517, file: !22, line: 680, baseType: !79, size: 32, offset: 1216)
!5541 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !517, file: !22, line: 681, baseType: !46, size: 16, offset: 1248)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !517, file: !22, line: 682, baseType: !103, size: 8, offset: 1264)
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !517, file: !22, line: 683, baseType: !103, size: 8, offset: 1272)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !517, file: !22, line: 684, baseType: !5161, size: 64, offset: 1280)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !517, file: !22, line: 691, baseType: !59, size: 64, offset: 1344)
!5546 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !517, file: !22, line: 692, baseType: !1275, size: 320, offset: 1408)
!5547 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !517, file: !22, line: 694, baseType: !59, size: 64, offset: 1728)
!5548 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !517, file: !22, line: 695, baseType: !59, size: 64, offset: 1792)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !517, file: !22, line: 697, baseType: !704, size: 128, offset: 1856)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !517, file: !22, line: 698, baseType: !117, size: 128, offset: 1984)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !517, file: !22, line: 707, baseType: !117, size: 128, offset: 2112)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !517, file: !22, line: 708, baseType: !117, size: 128, offset: 2240)
!5553 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !22, line: 709, baseType: !5554, size: 128, offset: 2368)
!5554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !517, file: !22, line: 709, size: 128, elements: !5555)
!5555 = !{!5556, !5557}
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !5554, file: !22, line: 710, baseType: !700, size: 64)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !5554, file: !22, line: 711, baseType: !848, size: 128, align: 64)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !517, file: !22, line: 713, baseType: !799, size: 64, offset: 2496)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !517, file: !22, line: 714, baseType: !799, size: 64, offset: 2560)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !517, file: !22, line: 715, baseType: !69, size: 32, offset: 2624)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !517, file: !22, line: 716, baseType: !69, size: 32, offset: 2656)
!5562 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !517, file: !22, line: 717, baseType: !69, size: 32, offset: 2688)
!5563 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !517, file: !22, line: 719, baseType: !69, size: 32, offset: 2720)
!5564 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !22, line: 721, baseType: !5565, size: 64, offset: 2752)
!5565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !517, file: !22, line: 721, size: 64, elements: !5566)
!5566 = !{!5567, !5568}
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !5565, file: !22, line: 722, baseType: !4801, size: 64)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !5565, file: !22, line: 723, baseType: !731, size: 64)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !517, file: !22, line: 725, baseType: !5570, size: 64, offset: 2816)
!5570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5571, size: 64)
!5571 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !22, line: 725, flags: DIFlagFwdDecl)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !517, file: !22, line: 726, baseType: !513, size: 1536, align: 64, offset: 2880)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !517, file: !22, line: 727, baseType: !117, size: 128, offset: 4416)
!5574 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !22, line: 728, baseType: !5575, size: 64, offset: 4544)
!5575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !517, file: !22, line: 728, size: 64, elements: !5576)
!5576 = !{!5577, !5578, !5581, !5582}
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !5575, file: !22, line: 729, baseType: !3071, size: 64)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !5575, file: !22, line: 730, baseType: !5579, size: 64)
!5579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5580, size: 64)
!5580 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !22, line: 730, flags: DIFlagFwdDecl)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !5575, file: !22, line: 731, baseType: !442, size: 64)
!5582 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !5575, file: !22, line: 732, baseType: !7, size: 32)
!5583 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !517, file: !22, line: 735, baseType: !351, size: 32, offset: 4608)
!5584 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !517, file: !22, line: 738, baseType: !351, size: 32, offset: 4640)
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !517, file: !22, line: 739, baseType: !5270, size: 64, offset: 4672)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !517, file: !22, line: 750, baseType: !40, size: 64, offset: 4736)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !513, file: !22, line: 474, baseType: !922, size: 128, offset: 64)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !513, file: !22, line: 475, baseType: !1275, size: 320, offset: 192)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !513, file: !22, line: 476, baseType: !927, size: 32, offset: 512)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !513, file: !22, line: 477, baseType: !69, size: 32, offset: 544)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !513, file: !22, line: 482, baseType: !1110, size: 128, offset: 576)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !513, file: !22, line: 483, baseType: !59, size: 64, offset: 704)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !513, file: !22, line: 484, baseType: !59, size: 64, offset: 768)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !513, file: !22, line: 485, baseType: !5595, size: 64, offset: 832)
!5595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5596, size: 64)
!5596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5597)
!5597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !22, line: 404, size: 1280, elements: !5598)
!5598 = !{!5599, !5603, !5673, !5677, !5681, !5687, !5691, !5695, !5700, !5704, !5708, !5712, !5713, !5717, !5721, !5725, !5730, !5734, !5741, !5742}
!5599 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !5597, file: !22, line: 405, baseType: !5600, size: 64)
!5600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5601, size: 64)
!5601 = !DISubroutineType(types: !5602)
!5602 = !{!42, !2125, !743}
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !5597, file: !22, line: 406, baseType: !5604, size: 64, offset: 64)
!5604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5605, size: 64)
!5605 = !DISubroutineType(types: !5606)
!5606 = !{!42, !1247, !5607}
!5607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5608, size: 64)
!5608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !134, line: 293, size: 1536, elements: !5609)
!5609 = !{!5610, !5640, !5654}
!5610 = !DIDerivedType(tag: DW_TAG_member, scope: !5608, file: !134, line: 295, baseType: !5611, size: 512)
!5611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5608, file: !134, line: 295, size: 512, elements: !5612)
!5612 = !{!5613, !5639}
!5613 = !DIDerivedType(tag: DW_TAG_member, scope: !5611, file: !134, line: 296, baseType: !5614, size: 448)
!5614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5611, file: !134, line: 296, size: 448, elements: !5615)
!5615 = !{!5616, !5617, !5626, !5627, !5628, !5637, !5638}
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5614, file: !134, line: 298, baseType: !59, size: 64)
!5617 = !DIDerivedType(tag: DW_TAG_member, scope: !5614, file: !134, line: 299, baseType: !5618, size: 128, offset: 64)
!5618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5614, file: !134, line: 299, size: 128, elements: !5619)
!5619 = !{!5620, !5621}
!5620 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5618, file: !134, line: 300, baseType: !117, size: 128)
!5621 = !DIDerivedType(tag: DW_TAG_member, scope: !5618, file: !134, line: 302, baseType: !5622, size: 128)
!5622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5618, file: !134, line: 302, size: 128, elements: !5623)
!5623 = !{!5624, !5625}
!5624 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !5622, file: !134, line: 303, baseType: !40, size: 64)
!5625 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !5622, file: !134, line: 305, baseType: !7, size: 32, offset: 64)
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !5614, file: !134, line: 310, baseType: !512, size: 64, offset: 192)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5614, file: !134, line: 311, baseType: !59, size: 64, offset: 256)
!5628 = !DIDerivedType(tag: DW_TAG_member, scope: !5614, file: !134, line: 312, baseType: !5629, size: 64, offset: 320)
!5629 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5614, file: !134, line: 312, size: 64, elements: !5630)
!5630 = !{!5631, !5632}
!5631 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5629, file: !134, line: 313, baseType: !40, size: 64)
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5629, file: !134, line: 314, baseType: !5633, size: 64)
!5633 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !134, line: 257, baseType: !5634)
!5634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !134, line: 255, size: 64, elements: !5635)
!5635 = !{!5636}
!5636 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !5634, file: !134, line: 256, baseType: !59, size: 64)
!5637 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !5614, file: !134, line: 316, baseType: !69, size: 32, offset: 384)
!5638 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !5614, file: !134, line: 317, baseType: !69, size: 32, offset: 416)
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !5611, file: !134, line: 323, baseType: !2126, size: 512, align: 128)
!5640 = !DIDerivedType(tag: DW_TAG_member, scope: !5608, file: !134, line: 325, baseType: !5641, size: 512, offset: 512)
!5641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5608, file: !134, line: 325, size: 512, elements: !5642)
!5642 = !{!5643, !5653}
!5643 = !DIDerivedType(tag: DW_TAG_member, scope: !5641, file: !134, line: 326, baseType: !5644, size: 320)
!5644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5641, file: !134, line: 326, size: 320, elements: !5645)
!5645 = !{!5646, !5647, !5648, !5649, !5650, !5651, !5652}
!5646 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !5644, file: !134, line: 327, baseType: !59, size: 64)
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !5644, file: !134, line: 328, baseType: !59, size: 64, offset: 64)
!5648 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !5644, file: !134, line: 329, baseType: !59, size: 64, offset: 128)
!5649 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !5644, file: !134, line: 331, baseType: !69, size: 32, offset: 192)
!5650 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !5644, file: !134, line: 332, baseType: !69, size: 32, offset: 224)
!5651 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !5644, file: !134, line: 333, baseType: !69, size: 32, offset: 256)
!5652 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !5644, file: !134, line: 335, baseType: !7, size: 32, offset: 288)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !5641, file: !134, line: 339, baseType: !2126, size: 512, align: 128)
!5654 = !DIDerivedType(tag: DW_TAG_member, scope: !5608, file: !134, line: 341, baseType: !5655, size: 512, offset: 1024)
!5655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5608, file: !134, line: 341, size: 512, elements: !5656)
!5656 = !{!5657, !5666, !5672}
!5657 = !DIDerivedType(tag: DW_TAG_member, scope: !5655, file: !134, line: 342, baseType: !5658, size: 384)
!5658 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5655, file: !134, line: 342, size: 384, elements: !5659)
!5659 = !{!5660, !5661, !5662, !5663, !5664, !5665}
!5660 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !5658, file: !134, line: 343, baseType: !59, size: 64)
!5661 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !5658, file: !134, line: 344, baseType: !59, size: 64, offset: 64)
!5662 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !5658, file: !134, line: 346, baseType: !40, size: 64, offset: 128)
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !5658, file: !134, line: 347, baseType: !40, size: 64, offset: 192)
!5664 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !5658, file: !134, line: 348, baseType: !40, size: 64, offset: 256)
!5665 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !5658, file: !134, line: 349, baseType: !40, size: 64, offset: 320)
!5666 = !DIDerivedType(tag: DW_TAG_member, scope: !5655, file: !134, line: 352, baseType: !5667, size: 256)
!5667 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5655, file: !134, line: 352, size: 256, elements: !5668)
!5668 = !{!5669, !5670, !5671}
!5669 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !5667, file: !134, line: 353, baseType: !59, size: 64)
!5670 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !5667, file: !134, line: 354, baseType: !59, size: 64, offset: 64)
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !5667, file: !134, line: 356, baseType: !117, size: 128, offset: 128)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !5655, file: !134, line: 359, baseType: !2126, size: 512, align: 128)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !5597, file: !22, line: 409, baseType: !5674, size: 64, offset: 128)
!5674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5675, size: 64)
!5675 = !DISubroutineType(types: !5676)
!5676 = !{!42, !512, !743}
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !5597, file: !22, line: 412, baseType: !5678, size: 64, offset: 192)
!5678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5679, size: 64)
!5679 = !DISubroutineType(types: !5680)
!5680 = !{!1425, !512, !5607}
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !5597, file: !22, line: 414, baseType: !5682, size: 64, offset: 256)
!5682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5683, size: 64)
!5683 = !DISubroutineType(types: !5684)
!5684 = !{null, !5685}
!5685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5686, size: 64)
!5686 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !22, line: 310, flags: DIFlagFwdDecl)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !5597, file: !22, line: 416, baseType: !5688, size: 64, offset: 320)
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = !DISubroutineType(types: !5690)
!5690 = !{!42, !1247, !512, !61, !7, !3180, !3929}
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !5597, file: !22, line: 419, baseType: !5692, size: 64, offset: 384)
!5692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5693, size: 64)
!5693 = !DISubroutineType(types: !5694)
!5694 = !{!42, !1247, !512, !61, !7, !7, !2125, !40}
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !5597, file: !22, line: 424, baseType: !5696, size: 64, offset: 448)
!5696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5697, size: 64)
!5697 = !DISubroutineType(types: !5698)
!5698 = !{!5699, !512, !5699}
!5699 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !45, line: 131, baseType: !345)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !5597, file: !22, line: 425, baseType: !5701, size: 64, offset: 512)
!5701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5702, size: 64)
!5702 = !DISubroutineType(types: !5703)
!5703 = !{null, !5607, !55, !55}
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !5597, file: !22, line: 426, baseType: !5705, size: 64, offset: 576)
!5705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5706, size: 64)
!5706 = !DISubroutineType(types: !5707)
!5707 = !{!1425, !5607, !927}
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !5597, file: !22, line: 427, baseType: !5709, size: 64, offset: 640)
!5709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5710, size: 64)
!5710 = !DISubroutineType(types: !5711)
!5711 = !{null, !5607}
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !5597, file: !22, line: 428, baseType: !4819, size: 64, offset: 704)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !5597, file: !22, line: 433, baseType: !5714, size: 64, offset: 768)
!5714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5715, size: 64)
!5715 = !DISubroutineType(types: !5716)
!5716 = !{!42, !512, !5607, !5607, !286}
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !5597, file: !22, line: 435, baseType: !5718, size: 64, offset: 832)
!5718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5719, size: 64)
!5719 = !DISubroutineType(types: !5720)
!5720 = !{!42, !5607}
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !5597, file: !22, line: 436, baseType: !5722, size: 64, offset: 896)
!5722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5723, size: 64)
!5723 = !DISubroutineType(types: !5724)
!5724 = !{!1425, !5607, !55, !55}
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !5597, file: !22, line: 438, baseType: !5726, size: 64, offset: 960)
!5726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5727, size: 64)
!5727 = !DISubroutineType(types: !5728)
!5728 = !{null, !5607, !5729, !5729}
!5729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !5597, file: !22, line: 439, baseType: !5731, size: 64, offset: 1024)
!5731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5732, size: 64)
!5732 = !DISubroutineType(types: !5733)
!5733 = !{!42, !512, !2125}
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !5597, file: !22, line: 442, baseType: !5735, size: 64, offset: 1088)
!5735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5736, size: 64)
!5736 = !DISubroutineType(types: !5737)
!5737 = !{!42, !5738, !1247, !5740}
!5738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5739, size: 64)
!5739 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !22, line: 66, flags: DIFlagFwdDecl)
!5740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5699, size: 64)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !5597, file: !22, line: 444, baseType: !4919, size: 64, offset: 1152)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !5597, file: !22, line: 445, baseType: !5743, size: 64, offset: 1216)
!5743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5744, size: 64)
!5744 = !DISubroutineType(types: !5745)
!5745 = !{!42, !4822, !4844}
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !513, file: !22, line: 486, baseType: !59, size: 64, offset: 896)
!5747 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !513, file: !22, line: 487, baseType: !1275, size: 320, offset: 960)
!5748 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !513, file: !22, line: 488, baseType: !4960, size: 32, offset: 1280)
!5749 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !513, file: !22, line: 489, baseType: !79, size: 32, offset: 1312)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !513, file: !22, line: 490, baseType: !117, size: 128, offset: 1344)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !513, file: !22, line: 491, baseType: !40, size: 64, offset: 1472)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !503, file: !468, line: 180, baseType: !5753, size: 64, offset: 320)
!5753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5754, size: 64)
!5754 = !DISubroutineType(types: !5755)
!5755 = !{!474, !1247, !407, !502, !442, !61, !55}
!5756 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !503, file: !468, line: 182, baseType: !5753, size: 64, offset: 384)
!5757 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !503, file: !468, line: 184, baseType: !5758, size: 64, offset: 448)
!5758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5759, size: 64)
!5759 = !DISubroutineType(types: !5760)
!5760 = !{!42, !1247, !407, !502, !2018}
!5761 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !491, file: !468, line: 90, baseType: !5762, size: 64, offset: 192)
!5762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !491, file: !468, line: 91, baseType: !5764, size: 64, offset: 256)
!5764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !458, file: !402, line: 120, baseType: !5766, size: 64, offset: 192)
!5766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5767, size: 64)
!5767 = !DISubroutineType(types: !5768)
!5768 = !{!3776, !425}
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !458, file: !402, line: 121, baseType: !5770, size: 64, offset: 256)
!5770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5771, size: 64)
!5771 = !DISubroutineType(types: !5772)
!5772 = !{!1354, !425}
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !458, file: !402, line: 122, baseType: !5774, size: 64, offset: 320)
!5774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5775, size: 64)
!5775 = !DISubroutineType(types: !5776)
!5776 = !{null, !425, !1604, !1605}
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !401, file: !402, line: 70, baseType: !1955, size: 64, offset: 384)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !401, file: !402, line: 71, baseType: !5779, size: 32, offset: 448)
!5779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5780, line: 19, size: 32, elements: !5781)
!5780 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5781 = !{!5782}
!5782 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5779, file: !5780, line: 20, baseType: !893, size: 32)
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !401, file: !402, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5784 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !401, file: !402, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5785 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !401, file: !402, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5786 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !401, file: !402, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !401, file: !402, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5788 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !398, file: !15, line: 47, baseType: !388, size: 64, offset: 512)
!5789 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !398, file: !15, line: 48, baseType: !407, size: 64, offset: 576)
!5790 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !398, file: !15, line: 49, baseType: !5791, size: 64, offset: 640)
!5791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5792, size: 64)
!5792 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!5793 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !398, file: !15, line: 50, baseType: !1578, size: 64, offset: 704)
!5794 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !389, file: !15, line: 418, baseType: !5795, size: 64, offset: 1408)
!5795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5796, size: 64)
!5796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !5797)
!5797 = !{!5798, !5799, !5804, !5808, !5812, !5816}
!5798 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5796, file: !15, line: 54, baseType: !479, size: 128)
!5799 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5796, file: !15, line: 55, baseType: !5800, size: 64, offset: 128)
!5800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5801, size: 64)
!5801 = !DISubroutineType(types: !5802)
!5802 = !{!474, !5795, !5803, !442}
!5803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5796, file: !15, line: 57, baseType: !5805, size: 64, offset: 192)
!5805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5806, size: 64)
!5806 = !DISubroutineType(types: !5807)
!5807 = !{!474, !5795, !5803, !36, !55}
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5796, file: !15, line: 59, baseType: !5809, size: 64, offset: 256)
!5809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5810, size: 64)
!5810 = !DISubroutineType(types: !5811)
!5811 = !{null, !388, !36}
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5796, file: !15, line: 60, baseType: !5813, size: 64, offset: 320)
!5813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5814, size: 64)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!42, !388}
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5796, file: !15, line: 61, baseType: !5817, size: 64, offset: 384)
!5817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5818, size: 64)
!5818 = !DISubroutineType(types: !5819)
!5819 = !{null, !388}
!5820 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !389, file: !15, line: 419, baseType: !36, size: 64, offset: 1472)
!5821 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !389, file: !15, line: 420, baseType: !36, size: 64, offset: 1536)
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !389, file: !15, line: 421, baseType: !407, size: 64, offset: 1600)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !389, file: !15, line: 424, baseType: !5824, size: 64, offset: 1664)
!5824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5825, size: 64)
!5825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5826)
!5826 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !389, file: !15, line: 425, baseType: !5828, size: 64, offset: 1728)
!5828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5829, size: 64)
!5829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1321)
!5830 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !389, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !389, file: !15, line: 435, baseType: !793, size: 256, offset: 1856)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !389, file: !15, line: 437, baseType: !5833, size: 64, offset: 2112)
!5833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5834, size: 64)
!5834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5835, line: 69, size: 320, elements: !5836)
!5835 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5836 = !{!5837, !5838, !5839, !5856, !5858, !5862, !5863}
!5837 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5834, file: !5835, line: 70, baseType: !36, size: 64)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5834, file: !5835, line: 71, baseType: !388, size: 64, offset: 64)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5834, file: !5835, line: 72, baseType: !5840, size: 64, offset: 128)
!5840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5841, size: 64)
!5841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5842)
!5842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5835, line: 47, size: 256, elements: !5843)
!5843 = !{!5844, !5845, !5851, !5855}
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5842, file: !5835, line: 49, baseType: !7, size: 32)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5842, file: !5835, line: 51, baseType: !5846, size: 64, offset: 64)
!5846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5847, size: 64)
!5847 = !DISubroutineType(types: !5848)
!5848 = !{!42, !36, !5849}
!5849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5850, size: 64)
!5850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5834)
!5851 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5842, file: !5835, line: 53, baseType: !5852, size: 64, offset: 128)
!5852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5853, size: 64)
!5853 = !DISubroutineType(types: !5854)
!5854 = !{!42, !442, !5849}
!5855 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5842, file: !5835, line: 55, baseType: !3800, size: 64, offset: 192)
!5856 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5834, file: !5835, line: 73, baseType: !5857, size: 16, offset: 192)
!5857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!5858 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5834, file: !5835, line: 74, baseType: !5859, size: 8, offset: 208)
!5859 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !104, line: 16, baseType: !5860)
!5860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !106, line: 20, baseType: !5861)
!5861 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5834, file: !5835, line: 75, baseType: !103, size: 8, offset: 216)
!5863 = !DIDerivedType(tag: DW_TAG_member, scope: !5834, file: !5835, line: 76, baseType: !5864, size: 64, offset: 256)
!5864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5834, file: !5835, line: 76, size: 64, elements: !5865)
!5865 = !{!5866, !5867, !5874}
!5866 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5864, file: !5835, line: 77, baseType: !40, size: 64)
!5867 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5864, file: !5835, line: 78, baseType: !5868, size: 64)
!5868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5869, size: 64)
!5869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5870)
!5870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5835, line: 86, size: 128, elements: !5871)
!5871 = !{!5872, !5873}
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5870, file: !5835, line: 87, baseType: !7, size: 32)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5870, file: !5835, line: 88, baseType: !442, size: 64, offset: 64)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5864, file: !5835, line: 79, baseType: !5875, size: 64)
!5875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5876, size: 64)
!5876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5877)
!5877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5835, line: 92, size: 256, elements: !5878)
!5878 = !{!5879, !5880, !5881, !5882, !5883}
!5879 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5877, file: !5835, line: 94, baseType: !7, size: 32)
!5880 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5877, file: !5835, line: 95, baseType: !7, size: 32, offset: 32)
!5881 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5877, file: !5835, line: 96, baseType: !5260, size: 64, offset: 64)
!5882 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5877, file: !5835, line: 97, baseType: !5840, size: 64, offset: 128)
!5883 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5877, file: !5835, line: 98, baseType: !40, size: 64, offset: 192)
!5884 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !389, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!5885 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !389, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!5886 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !389, file: !15, line: 442, baseType: !5824, size: 64, offset: 2240)
!5887 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !389, file: !15, line: 443, baseType: !5828, size: 64, offset: 2304)
!5888 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !389, file: !15, line: 444, baseType: !1425, size: 8, offset: 2368)
!5889 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !389, file: !15, line: 451, baseType: !1425, size: 8, offset: 2376)
!5890 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !389, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!5891 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !389, file: !15, line: 455, baseType: !5892, size: 64, offset: 2432)
!5892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5893, size: 64)
!5893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5894, line: 23, size: 96, elements: !5895)
!5894 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5895 = !{!5896, !5897, !5898}
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5893, file: !5894, line: 24, baseType: !42, size: 32)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5893, file: !5894, line: 24, baseType: !42, size: 32, offset: 32)
!5898 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5893, file: !5894, line: 24, baseType: !42, size: 32, offset: 64)
!5899 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !389, file: !15, line: 458, baseType: !4507, size: 64, offset: 2496)
!5900 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !389, file: !15, line: 460, baseType: !5901, size: 4032, align: 512, offset: 2560)
!5901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5902, size: 4032, elements: !5916)
!5902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !5903)
!5903 = !{!5904, !5905, !5906}
!5904 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5902, file: !15, line: 363, baseType: !40, size: 64)
!5905 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5902, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!5906 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5902, file: !15, line: 367, baseType: !5907, size: 448, offset: 128)
!5907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !5908)
!5908 = !{!5909, !5910}
!5909 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5907, file: !15, line: 320, baseType: !388, size: 64)
!5910 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5907, file: !15, line: 321, baseType: !5911, size: 384, offset: 64)
!5911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5912, line: 40, size: 384, elements: !5913)
!5912 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5913 = !{!5914}
!5914 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5911, file: !5912, line: 41, baseType: !5915, size: 384, align: 64)
!5915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !983, size: 384, align: 64, elements: !2641)
!5916 = !{!5917}
!5917 = !DISubrange(count: 7)
!5918 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !389, file: !15, line: 463, baseType: !5919, size: 192, offset: 6592)
!5919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5920, line: 8, size: 192, elements: !5921)
!5920 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5921 = !{!5922, !5923, !5924}
!5922 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5919, file: !5920, line: 10, baseType: !7, size: 32)
!5923 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5919, file: !5920, line: 11, baseType: !775, size: 64, offset: 64)
!5924 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5919, file: !5920, line: 12, baseType: !5925, size: 64, offset: 128)
!5925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5926, size: 64)
!5926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5927, line: 59, size: 48, elements: !5928)
!5927 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5928 = !{!5929, !5930, !5931, !5932, !5933, !5934}
!5929 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5926, file: !5927, line: 60, baseType: !1371, size: 16)
!5930 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5926, file: !5927, line: 61, baseType: !1371, size: 16, offset: 16)
!5931 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5926, file: !5927, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5932 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5926, file: !5927, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5933 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5926, file: !5927, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5934 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5926, file: !5927, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5935 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !389, file: !15, line: 465, baseType: !59, size: 64, offset: 6784)
!5936 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !389, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!5937 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !389, file: !15, line: 470, baseType: !117, size: 128, offset: 6912)
!5938 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !389, file: !15, line: 471, baseType: !5939, size: 64, offset: 7040)
!5939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5940, size: 64)
!5940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5941, line: 33, size: 96, elements: !5942)
!5941 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5942 = !{!5943, !5944, !5945, !5946}
!5943 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5940, file: !5941, line: 37, baseType: !42, size: 32)
!5944 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5940, file: !5941, line: 43, baseType: !42, size: 32, offset: 32)
!5945 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5940, file: !5941, line: 45, baseType: !46, size: 16, offset: 64)
!5946 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5940, file: !5941, line: 47, baseType: !46, size: 16, offset: 80)
!5947 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !389, file: !15, line: 476, baseType: !5948, size: 64, offset: 7104)
!5948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5949, size: 64)
!5949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !5950)
!5950 = !{!5951, !5967, !5968, !5969}
!5951 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5949, file: !15, line: 379, baseType: !5952, size: 64)
!5952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5953, size: 64)
!5953 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5954, line: 204, baseType: !5955)
!5954 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5954, line: 197, size: 192, elements: !5956)
!5956 = !{!5957, !5959, !5960, !5961, !5963, !5965}
!5957 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5955, file: !5954, line: 198, baseType: !5958, size: 32)
!5958 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5954, line: 21, baseType: !351)
!5959 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5955, file: !5954, line: 199, baseType: !107, size: 8, offset: 32)
!5960 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5955, file: !5954, line: 200, baseType: !107, size: 8, offset: 40)
!5961 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5955, file: !5954, line: 201, baseType: !5962, size: 16, offset: 48)
!5962 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5954, line: 17, baseType: !114)
!5963 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5955, file: !5954, line: 202, baseType: !5964, size: 64, offset: 64)
!5964 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5954, line: 16, baseType: !346)
!5965 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5955, file: !5954, line: 203, baseType: !5966, size: 64, offset: 128)
!5966 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5954, line: 22, baseType: !346)
!5967 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5949, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!5968 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5949, file: !15, line: 381, baseType: !442, size: 64, offset: 128)
!5969 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5949, file: !15, line: 382, baseType: !442, size: 64, offset: 192)
!5970 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !389, file: !15, line: 477, baseType: !5949, size: 256, offset: 7168)
!5971 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !389, file: !15, line: 480, baseType: !5972, size: 64, offset: 7424)
!5972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5973, size: 64)
!5973 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!5974 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !389, file: !15, line: 483, baseType: !5975, size: 64, offset: 7488)
!5975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5976, size: 64)
!5976 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!5977 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !389, file: !15, line: 488, baseType: !442, size: 64, offset: 7552)
!5978 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !389, file: !15, line: 492, baseType: !40, size: 64, offset: 7616)
!5979 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !389, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!5980 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !389, file: !15, line: 495, baseType: !40, size: 64, offset: 7744)
!5981 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !389, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!5982 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !389, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!5983 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !389, file: !15, line: 500, baseType: !5984, size: 64, offset: 7872)
!5984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5985, size: 64)
!5985 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !4457, line: 45, baseType: !4433)
!5986 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !389, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!5987 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !389, file: !15, line: 504, baseType: !5988, size: 64, offset: 8000)
!5988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5989, size: 64)
!5989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5990, size: 64)
!5990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !5991, line: 96, size: 192, elements: !5992)
!5991 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!5992 = !{!5993, !5994, !6036, !6038}
!5993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !5990, file: !5991, line: 97, baseType: !7, size: 32)
!5994 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !5990, file: !5991, line: 98, baseType: !5995, size: 64, offset: 64)
!5995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5996, size: 64)
!5996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !5991, line: 24, size: 3072, elements: !5997)
!5997 = !{!5998, !6000, !6001, !6002, !6003, !6016, !6017, !6018, !6019, !6020, !6021, !6022, !6033, !6034, !6035}
!5998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !5996, file: !5991, line: 26, baseType: !5999, size: 128)
!5999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 128, elements: !2641)
!6000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !5996, file: !5991, line: 27, baseType: !5999, size: 128, offset: 128)
!6001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !5996, file: !5991, line: 28, baseType: !42, size: 32, offset: 256)
!6002 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5996, file: !5991, line: 31, baseType: !79, size: 32, align: 512, offset: 512)
!6003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !5996, file: !5991, line: 32, baseType: !6004, size: 960, offset: 576)
!6004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !6005, line: 206, size: 960, elements: !6006)
!6005 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!6006 = !{!6007, !6008, !6011, !6013, !6014, !6015}
!6007 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !6004, file: !6005, line: 207, baseType: !851, size: 64)
!6008 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !6004, file: !6005, line: 208, baseType: !6009, size: 256, offset: 64)
!6009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6010, size: 256, elements: !902)
!6010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!6011 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !6004, file: !6005, line: 209, baseType: !6012, size: 256, offset: 320)
!6012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !902)
!6013 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6004, file: !6005, line: 213, baseType: !477, size: 64, offset: 576)
!6014 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !6004, file: !6005, line: 215, baseType: !1639, size: 256, offset: 640)
!6015 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6004, file: !6005, line: 216, baseType: !103, size: 8, offset: 896)
!6016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !5996, file: !5991, line: 33, baseType: !59, size: 64, offset: 1536)
!6017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !5996, file: !5991, line: 34, baseType: !59, size: 64, offset: 1600)
!6018 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !5996, file: !5991, line: 35, baseType: !1425, size: 8, offset: 1664)
!6019 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !5996, file: !5991, line: 36, baseType: !2349, size: 320, offset: 1728)
!6020 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !5996, file: !5991, line: 37, baseType: !1540, size: 256, offset: 2048)
!6021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !5996, file: !5991, line: 38, baseType: !848, size: 128, align: 64, offset: 2304)
!6022 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !5996, file: !5991, line: 39, baseType: !6023, size: 64, offset: 2432)
!6023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6024, size: 64)
!6024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !5991, line: 49, size: 768, elements: !6025)
!6025 = !{!6026, !6027, !6028, !6029, !6030, !6031, !6032}
!6026 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6024, file: !5991, line: 50, baseType: !79, size: 32)
!6027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !6024, file: !5991, line: 51, baseType: !6012, size: 256, offset: 64)
!6028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !6024, file: !5991, line: 53, baseType: !6012, size: 256, offset: 320)
!6029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !6024, file: !5991, line: 54, baseType: !59, size: 64, offset: 576)
!6030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !6024, file: !5991, line: 55, baseType: !6023, size: 64, offset: 640)
!6031 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !6024, file: !5991, line: 56, baseType: !42, size: 32, offset: 704)
!6032 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !6024, file: !5991, line: 57, baseType: !42, size: 32, offset: 736)
!6033 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !5996, file: !5991, line: 40, baseType: !59, size: 64, offset: 2496)
!6034 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !5996, file: !5991, line: 42, baseType: !42, size: 32, offset: 2560)
!6035 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !5996, file: !5991, line: 43, baseType: !5989, size: 64, offset: 2624)
!6036 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !5990, file: !5991, line: 99, baseType: !6037, offset: 128)
!6037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !711, line: 211, elements: !712)
!6038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !5990, file: !5991, line: 100, baseType: !6039, size: 64, offset: 128)
!6039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6040, size: 64)
!6040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !5991, line: 63, size: 3008, elements: !6041)
!6041 = !{!6042, !6043, !6045, !6046, !6047, !6048, !6049, !6050, !6051, !6052, !6053, !6054, !6055, !6056, !6057, !6058, !6059, !6060, !6061, !6062, !6063, !6064, !6071}
!6042 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !6040, file: !5991, line: 64, baseType: !6023, size: 64)
!6043 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !6040, file: !5991, line: 65, baseType: !6044, size: 192, offset: 64)
!6044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6023, size: 192, elements: !443)
!6045 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !6040, file: !5991, line: 67, baseType: !42, size: 32, offset: 256)
!6046 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !6040, file: !5991, line: 68, baseType: !793, size: 256, offset: 320)
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !6040, file: !5991, line: 69, baseType: !79, size: 32, offset: 576)
!6048 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !6040, file: !5991, line: 70, baseType: !793, size: 256, offset: 640)
!6049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !6040, file: !5991, line: 71, baseType: !59, size: 64, offset: 896)
!6050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !6040, file: !5991, line: 72, baseType: !59, size: 64, offset: 960)
!6051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !6040, file: !5991, line: 73, baseType: !59, size: 64, offset: 1024)
!6052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !6040, file: !5991, line: 74, baseType: !59, size: 64, offset: 1088)
!6053 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !6040, file: !5991, line: 75, baseType: !59, size: 64, offset: 1152)
!6054 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !6040, file: !5991, line: 76, baseType: !59, size: 64, offset: 1216)
!6055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !6040, file: !5991, line: 77, baseType: !59, size: 64, offset: 1280)
!6056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !6040, file: !5991, line: 78, baseType: !59, size: 64, offset: 1344)
!6057 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !6040, file: !5991, line: 79, baseType: !1425, size: 8, offset: 1408)
!6058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !6040, file: !5991, line: 80, baseType: !59, size: 64, offset: 1472)
!6059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !6040, file: !5991, line: 81, baseType: !793, size: 256, offset: 1536)
!6060 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !6040, file: !5991, line: 82, baseType: !1579, size: 256, offset: 1792)
!6061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !6040, file: !5991, line: 84, baseType: !69, size: 32, offset: 2048)
!6062 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !6040, file: !5991, line: 87, baseType: !59, size: 64, offset: 2112)
!6063 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !6040, file: !5991, line: 88, baseType: !59, size: 64, offset: 2176)
!6064 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !6040, file: !5991, line: 89, baseType: !6065, size: 704, offset: 2240)
!6065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1541, line: 111, size: 704, elements: !6066)
!6066 = !{!6067, !6068, !6069, !6070}
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !6065, file: !1541, line: 112, baseType: !1540, size: 256)
!6068 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !6065, file: !1541, line: 113, baseType: !2349, size: 320, offset: 256)
!6069 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !6065, file: !1541, line: 116, baseType: !2564, size: 64, offset: 576)
!6070 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !6065, file: !1541, line: 117, baseType: !42, size: 32, offset: 640)
!6071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !6040, file: !5991, line: 90, baseType: !5989, size: 64, offset: 2944)
!6072 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !389, file: !15, line: 515, baseType: !4470, size: 64, offset: 8064)
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !389, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !389, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!6075 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !389, file: !15, line: 520, baseType: !3677, size: 64, offset: 8192)
!6076 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !389, file: !15, line: 523, baseType: !6077, size: 64, offset: 8256)
!6077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4405, size: 64)
!6078 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !389, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!6079 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !389, file: !15, line: 525, baseType: !6080, size: 64, offset: 8384)
!6080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6081, size: 64)
!6081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6082, size: 64)
!6082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6083, line: 28, size: 192, elements: !6084)
!6083 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!6084 = !{!6085, !6086, !6087}
!6085 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !6082, file: !6083, line: 29, baseType: !36, size: 64)
!6086 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !6082, file: !6083, line: 30, baseType: !36, size: 64, offset: 64)
!6087 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !6082, file: !6083, line: 31, baseType: !59, size: 64, offset: 128)
!6088 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !389, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!6089 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !389, file: !15, line: 533, baseType: !40, size: 64, offset: 8512)
!6090 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !389, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!6091 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !389, file: !15, line: 535, baseType: !6092, size: 64, offset: 8640)
!6092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!6093 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !389, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!6094 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !389, file: !15, line: 539, baseType: !42, size: 32, offset: 8736)
!6095 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !389, file: !15, line: 540, baseType: !4497, size: 64, offset: 8768)
!6096 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !389, file: !15, line: 563, baseType: !117, size: 128, offset: 8832)
!6097 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !389, file: !15, line: 565, baseType: !117, size: 128, offset: 8960)
!6098 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !389, file: !15, line: 568, baseType: !2483, size: 64, offset: 9088)
!6099 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !389, file: !15, line: 570, baseType: !69, size: 32, offset: 9152)
!6100 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !321, file: !294, line: 14, baseType: !293, size: 32, offset: 64)
!6101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!6102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!6103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6104, size: 64)
!6104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6105)
!6105 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!6106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!6107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6108, size: 64)
!6108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6109)
!6109 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !42)
!6110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6111, size: 64)
!6111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6112)
!6112 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4512)
!6113 = !{!0, !6114, !6117, !6119, !6124, !6137, !6150, !6152, !6154, !6156, !6161, !6163, !6169, !6199}
!6114 = !DIGlobalVariableExpression(var: !6115, expr: !DIExpression())
!6115 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !6116, isLocal: true, isDefinition: true)
!6116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 40, elements: !1398)
!6117 = !DIGlobalVariableExpression(var: !6118, expr: !DIExpression())
!6118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_tick_broadcast_oneshot_control528", scope: !2, file: !3, line: 384, type: !40, isLocal: true, isDefinition: true)
!6119 = !DIGlobalVariableExpression(var: !6120, expr: !DIExpression())
!6120 = distinct !DIGlobalVariable(scope: null, file: !3, line: 515, type: !6121, isLocal: true, isDefinition: true)
!6121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 152, elements: !6122)
!6122 = !{!6123}
!6123 = !DISubrange(count: 19)
!6124 = !DIGlobalVariableExpression(var: !6125, expr: !DIExpression())
!6125 = distinct !DIGlobalVariable(name: "___tp_str", scope: !6126, file: !3, line: 515, type: !36, isLocal: true, isDefinition: true)
!6126 = distinct !DISubprogram(name: "tick_freeze", scope: !3, file: !3, line: 509, type: !2484, scopeLine: 510, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6127)
!6127 = !{!6128, !6133, !6135}
!6128 = !DILocalVariable(name: "pscr_ret__", scope: !6129, file: !3, line: 516, type: !42)
!6129 = distinct !DILexicalBlock(scope: !6130, file: !3, line: 516, column: 10)
!6130 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 516, column: 10)
!6131 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 514, column: 46)
!6132 = distinct !DILexicalBlock(scope: !6126, file: !3, line: 514, column: 6)
!6133 = !DILocalVariable(name: "__vpp_verify", scope: !6134, file: !3, line: 516, type: !1354)
!6134 = distinct !DILexicalBlock(scope: !6129, file: !3, line: 516, column: 10)
!6135 = !DILocalVariable(name: "pfo_val__", scope: !6136, file: !3, line: 516, type: !350)
!6136 = distinct !DILexicalBlock(scope: !6129, file: !3, line: 516, column: 10)
!6137 = !DIGlobalVariableExpression(var: !6138, expr: !DIExpression())
!6138 = distinct !DIGlobalVariable(name: "___tp_str", scope: !6139, file: !3, line: 544, type: !36, isLocal: true, isDefinition: true)
!6139 = distinct !DISubprogram(name: "tick_unfreeze", scope: !3, file: !3, line: 536, type: !2484, scopeLine: 537, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6140)
!6140 = !{!6141, !6146, !6148}
!6141 = !DILocalVariable(name: "pscr_ret__", scope: !6142, file: !3, line: 545, type: !42)
!6142 = distinct !DILexicalBlock(scope: !6143, file: !3, line: 545, column: 10)
!6143 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 545, column: 10)
!6144 = distinct !DILexicalBlock(scope: !6145, file: !3, line: 540, column: 46)
!6145 = distinct !DILexicalBlock(scope: !6139, file: !3, line: 540, column: 6)
!6146 = !DILocalVariable(name: "__vpp_verify", scope: !6147, file: !3, line: 545, type: !1354)
!6147 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 545, column: 10)
!6148 = !DILocalVariable(name: "pfo_val__", scope: !6149, file: !3, line: 545, type: !350)
!6149 = distinct !DILexicalBlock(scope: !6142, file: !3, line: 545, column: 10)
!6150 = !DIGlobalVariableExpression(var: !6151, expr: !DIExpression())
!6151 = distinct !DIGlobalVariable(name: "tick_cpu_device", scope: !2, file: !3, line: 28, type: !321, isLocal: false, isDefinition: true)
!6152 = !DIGlobalVariableExpression(var: !6153, expr: !DIExpression())
!6153 = distinct !DIGlobalVariable(name: "tick_next_period", scope: !2, file: !3, line: 34, type: !339, isLocal: false, isDefinition: true)
!6154 = !DIGlobalVariableExpression(var: !6155, expr: !DIExpression())
!6155 = distinct !DIGlobalVariable(name: "tick_freeze_depth", scope: !2, file: !3, line: 498, type: !7, isLocal: true, isDefinition: true)
!6156 = !DIGlobalVariableExpression(var: !6157, expr: !DIExpression())
!6157 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule527", scope: !6158, file: !3, line: 95, type: !40, isLocal: true, isDefinition: true)
!6158 = distinct !DISubprogram(name: "tick_periodic", scope: !3, file: !3, line: 85, type: !2808, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6159)
!6159 = !{!6160}
!6160 = !DILocalVariable(name: "cpu", arg: 1, scope: !6158, file: !3, line: 85, type: !42)
!6161 = !DIGlobalVariableExpression(var: !6162, expr: !DIExpression())
!6162 = distinct !DIGlobalVariable(name: "tick_freeze_lock", scope: !2, file: !3, line: 497, type: !804, isLocal: true, isDefinition: true)
!6163 = !DIGlobalVariableExpression(var: !6164, expr: !DIExpression())
!6164 = distinct !DIGlobalVariable(scope: null, file: !6165, line: 248, type: !6166, isLocal: true, isDefinition: true)
!6165 = !DIFile(filename: "./include/trace/events/power.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "39006560aadda1aecb35636d6d2fb319")
!6166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 232, elements: !6167)
!6167 = !{!6168}
!6168 = !DISubrange(count: 29)
!6169 = !DIGlobalVariableExpression(var: !6170, expr: !DIExpression())
!6170 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_suspend_resume398", scope: !6171, file: !6165, line: 248, type: !40, isLocal: true, isDefinition: true)
!6171 = distinct !DISubprogram(name: "trace_suspend_resume", scope: !6165, file: !6165, line: 248, type: !6172, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6174)
!6172 = !DISubroutineType(types: !6173)
!6173 = !{null, !36, !42, !1425}
!6174 = !{!6175, !6176, !6177, !6178, !6181, !6184, !6186, !6188, !6191, !6194, !6196, !6197}
!6175 = !DILocalVariable(name: "action", arg: 1, scope: !6171, file: !6165, line: 248, type: !36)
!6176 = !DILocalVariable(name: "val", arg: 2, scope: !6171, file: !6165, line: 248, type: !42)
!6177 = !DILocalVariable(name: "start", arg: 3, scope: !6171, file: !6165, line: 248, type: !1425)
!6178 = !DILocalVariable(name: "__idx", scope: !6179, file: !6165, line: 248, type: !42)
!6179 = distinct !DILexicalBlock(scope: !6180, file: !6165, line: 248, column: 1)
!6180 = distinct !DILexicalBlock(scope: !6171, file: !6165, line: 248, column: 1)
!6181 = !DILocalVariable(name: "pscr_ret__", scope: !6182, file: !6165, line: 248, type: !42)
!6182 = distinct !DILexicalBlock(scope: !6183, file: !6165, line: 248, column: 1)
!6183 = distinct !DILexicalBlock(scope: !6179, file: !6165, line: 248, column: 1)
!6184 = !DILocalVariable(name: "__vpp_verify", scope: !6185, file: !6165, line: 248, type: !1354)
!6185 = distinct !DILexicalBlock(scope: !6182, file: !6165, line: 248, column: 1)
!6186 = !DILocalVariable(name: "pfo_val__", scope: !6187, file: !6165, line: 248, type: !350)
!6187 = distinct !DILexicalBlock(scope: !6182, file: !6165, line: 248, column: 1)
!6188 = !DILocalVariable(name: "__ret_warn_on", scope: !6189, file: !6165, line: 248, type: !42)
!6189 = distinct !DILexicalBlock(scope: !6190, file: !6165, line: 248, column: 1)
!6190 = distinct !DILexicalBlock(scope: !6179, file: !6165, line: 248, column: 1)
!6191 = !DILocalVariable(name: "__flags", scope: !6192, file: !6165, line: 248, type: !42)
!6192 = distinct !DILexicalBlock(scope: !6193, file: !6165, line: 248, column: 1)
!6193 = distinct !DILexicalBlock(scope: !6189, file: !6165, line: 248, column: 1)
!6194 = !DILocalVariable(name: "it_func_ptr", scope: !6195, file: !6165, line: 248, type: !4512)
!6195 = distinct !DILexicalBlock(scope: !6179, file: !6165, line: 248, column: 1)
!6196 = !DILocalVariable(name: "__data", scope: !6195, file: !6165, line: 248, type: !40)
!6197 = !DILocalVariable(name: "__UNIQUE_ID_rcu396", scope: !6198, file: !6165, line: 248, type: !4512)
!6198 = distinct !DILexicalBlock(scope: !6195, file: !6165, line: 248, column: 1)
!6199 = !DIGlobalVariableExpression(var: !6200, expr: !DIExpression())
!6200 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace399", scope: !6171, file: !6165, line: 248, type: !40, isLocal: true, isDefinition: true)
!6201 = !{!"rsp"}
!6202 = !{i32 7, !"Dwarf Version", i32 5}
!6203 = !{i32 2, !"Debug Info Version", i32 3}
!6204 = !{i32 1, !"wchar_size", i32 2}
!6205 = !{i32 8, !"cf-protection-branch", i32 1}
!6206 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6207 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!6208 = !{i32 1, !"Code Model", i32 2}
!6209 = !{i32 1, !"override-stack-alignment", i32 8}
!6210 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6211 = distinct !DISubprogram(name: "tick_get_device", scope: !3, file: !3, line: 63, type: !6212, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6214)
!6212 = !DISubroutineType(types: !6213)
!6213 = !{!320, !42}
!6214 = !{!6215, !6216, !6219}
!6215 = !DILocalVariable(name: "cpu", arg: 1, scope: !6211, file: !3, line: 63, type: !42)
!6216 = !DILocalVariable(name: "__vpp_verify", scope: !6217, file: !3, line: 65, type: !1354)
!6217 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 65, column: 10)
!6218 = distinct !DILexicalBlock(scope: !6211, file: !3, line: 65, column: 10)
!6219 = !DILocalVariable(name: "__ptr", scope: !6220, file: !3, line: 65, type: !59)
!6220 = distinct !DILexicalBlock(scope: !6218, file: !3, line: 65, column: 10)
!6221 = !DILocation(line: 63, column: 41, scope: !6211)
!6222 = !DILocation(line: 65, column: 10, scope: !6218)
!6223 = !DILocation(line: 65, column: 10, scope: !6217)
!6224 = !DILocation(line: 65, column: 10, scope: !6220)
!6225 = !DILocation(line: 65, column: 2, scope: !6211)
!6226 = distinct !DISubprogram(name: "tick_is_oneshot_available", scope: !3, file: !3, line: 71, type: !4508, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6227)
!6227 = !{!6228, !6229, !6232, !6234}
!6228 = !DILocalVariable(name: "dev", scope: !6226, file: !3, line: 73, type: !324)
!6229 = !DILocalVariable(name: "pscr_ret__", scope: !6230, file: !3, line: 73, type: !324)
!6230 = distinct !DILexicalBlock(scope: !6231, file: !3, line: 73, column: 35)
!6231 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 73, column: 35)
!6232 = !DILocalVariable(name: "__vpp_verify", scope: !6233, file: !3, line: 73, type: !1354)
!6233 = distinct !DILexicalBlock(scope: !6230, file: !3, line: 73, column: 35)
!6234 = !DILocalVariable(name: "pfo_val__", scope: !6235, file: !3, line: 73, type: !345)
!6235 = distinct !DILexicalBlock(scope: !6230, file: !3, line: 73, column: 35)
!6236 = !DILocation(line: 73, column: 2, scope: !6226)
!6237 = !DILocation(line: 73, column: 29, scope: !6226)
!6238 = !DILocation(line: 73, column: 35, scope: !6231)
!6239 = !DILocation(line: 73, column: 35, scope: !6230)
!6240 = !DILocation(line: 73, column: 35, scope: !6233)
!6241 = !DILocation(line: 73, column: 35, scope: !6235)
!6242 = !{i64 2157189669}
!6243 = !DILocation(line: 75, column: 7, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 75, column: 6)
!6245 = !DILocation(line: 75, column: 11, scope: !6244)
!6246 = !DILocation(line: 75, column: 16, scope: !6244)
!6247 = !DILocation(line: 75, column: 21, scope: !6244)
!6248 = !DILocation(line: 75, column: 30, scope: !6244)
!6249 = !DILocation(line: 75, column: 6, scope: !6226)
!6250 = !DILocation(line: 76, column: 3, scope: !6244)
!6251 = !DILocation(line: 77, column: 8, scope: !6252)
!6252 = distinct !DILexicalBlock(scope: !6226, file: !3, line: 77, column: 6)
!6253 = !DILocation(line: 77, column: 13, scope: !6252)
!6254 = !DILocation(line: 77, column: 22, scope: !6252)
!6255 = !DILocation(line: 77, column: 6, scope: !6226)
!6256 = !DILocation(line: 78, column: 3, scope: !6252)
!6257 = !DILocation(line: 79, column: 9, scope: !6226)
!6258 = !DILocation(line: 79, column: 2, scope: !6226)
!6259 = !DILocation(line: 80, column: 1, scope: !6226)
!6260 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !6261, file: !6261, line: 313, type: !6262, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6264)
!6261 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!6262 = !DISubroutineType(types: !6263)
!6263 = !{null, !36}
!6264 = !{!6265}
!6265 = !DILocalVariable(name: "op", arg: 1, scope: !6260, file: !6261, line: 313, type: !36)
!6266 = !DILocation(line: 313, column: 66, scope: !6260)
!6267 = !DILocation(line: 313, column: 72, scope: !6260)
!6268 = !DISubprogram(name: "tick_broadcast_oneshot_available", scope: !6269, file: !6269, line: 131, type: !3783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6269 = !DIFile(filename: "kernel/time/tick-internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "43882d5594f243c1bfbd5b540566356d")
!6270 = distinct !DISubprogram(name: "tick_handle_periodic", scope: !3, file: !3, line: 107, type: !329, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6271)
!6271 = !{!6272, !6273, !6274, !6277, !6279, !6281}
!6272 = !DILocalVariable(name: "dev", arg: 1, scope: !6270, file: !3, line: 107, type: !324)
!6273 = !DILocalVariable(name: "cpu", scope: !6270, file: !3, line: 109, type: !42)
!6274 = !DILocalVariable(name: "pscr_ret__", scope: !6275, file: !3, line: 109, type: !42)
!6275 = distinct !DILexicalBlock(scope: !6276, file: !3, line: 109, column: 12)
!6276 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 109, column: 12)
!6277 = !DILocalVariable(name: "__vpp_verify", scope: !6278, file: !3, line: 109, type: !1354)
!6278 = distinct !DILexicalBlock(scope: !6275, file: !3, line: 109, column: 12)
!6279 = !DILocalVariable(name: "pfo_val__", scope: !6280, file: !3, line: 109, type: !350)
!6280 = distinct !DILexicalBlock(scope: !6275, file: !3, line: 109, column: 12)
!6281 = !DILocalVariable(name: "next", scope: !6270, file: !3, line: 110, type: !339)
!6282 = !DILocation(line: 107, column: 54, scope: !6270)
!6283 = !DILocation(line: 109, column: 2, scope: !6270)
!6284 = !DILocation(line: 109, column: 6, scope: !6270)
!6285 = !DILocation(line: 109, column: 12, scope: !6276)
!6286 = !DILocation(line: 109, column: 12, scope: !6275)
!6287 = !DILocation(line: 109, column: 12, scope: !6278)
!6288 = !DILocation(line: 109, column: 12, scope: !6280)
!6289 = !{i64 2157200311}
!6290 = !DILocation(line: 110, column: 2, scope: !6270)
!6291 = !DILocation(line: 110, column: 10, scope: !6270)
!6292 = !DILocation(line: 110, column: 17, scope: !6270)
!6293 = !DILocation(line: 110, column: 22, scope: !6270)
!6294 = !DILocation(line: 112, column: 16, scope: !6270)
!6295 = !DILocation(line: 112, column: 2, scope: !6270)
!6296 = !DILocation(line: 120, column: 6, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 120, column: 6)
!6298 = !DILocation(line: 120, column: 11, scope: !6297)
!6299 = !DILocation(line: 120, column: 25, scope: !6297)
!6300 = !DILocation(line: 120, column: 6, scope: !6270)
!6301 = !DILocation(line: 121, column: 3, scope: !6297)
!6302 = !DILocation(line: 124, column: 32, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 124, column: 6)
!6304 = !DILocation(line: 124, column: 7, scope: !6303)
!6305 = !DILocation(line: 124, column: 6, scope: !6270)
!6306 = !DILocation(line: 125, column: 3, scope: !6303)
!6307 = !DILocation(line: 126, column: 2, scope: !6270)
!6308 = !DILocation(line: 131, column: 10, scope: !6309)
!6309 = distinct !DILexicalBlock(scope: !6310, file: !3, line: 126, column: 11)
!6310 = distinct !DILexicalBlock(scope: !6311, file: !3, line: 126, column: 2)
!6311 = distinct !DILexicalBlock(scope: !6270, file: !3, line: 126, column: 2)
!6312 = !DILocation(line: 131, column: 8, scope: !6309)
!6313 = !DILocation(line: 133, column: 34, scope: !6314)
!6314 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 133, column: 7)
!6315 = !DILocation(line: 133, column: 39, scope: !6314)
!6316 = !DILocation(line: 133, column: 8, scope: !6314)
!6317 = !DILocation(line: 133, column: 7, scope: !6309)
!6318 = !DILocation(line: 134, column: 4, scope: !6314)
!6319 = !DILocation(line: 144, column: 7, scope: !6320)
!6320 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 144, column: 7)
!6321 = !DILocation(line: 144, column: 7, scope: !6309)
!6322 = !DILocation(line: 145, column: 18, scope: !6320)
!6323 = !DILocation(line: 145, column: 4, scope: !6320)
!6324 = !DILocation(line: 126, column: 2, scope: !6310)
!6325 = distinct !{!6325, !6326, !6327, !6328}
!6326 = !DILocation(line: 126, column: 2, scope: !6311)
!6327 = !DILocation(line: 146, column: 2, scope: !6311)
!6328 = !{!"llvm.loop.unroll.disable"}
!6329 = !DILocation(line: 147, column: 1, scope: !6270)
!6330 = !DILocation(line: 85, column: 31, scope: !6158)
!6331 = !DILocation(line: 87, column: 6, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6158, file: !3, line: 87, column: 6)
!6333 = !DILocation(line: 87, column: 27, scope: !6332)
!6334 = !DILocation(line: 87, column: 24, scope: !6332)
!6335 = !DILocation(line: 87, column: 6, scope: !6158)
!6336 = !DILocation(line: 88, column: 3, scope: !6337)
!6337 = distinct !DILexicalBlock(scope: !6332, file: !3, line: 87, column: 32)
!6338 = !DILocation(line: 89, column: 3, scope: !6337)
!6339 = !DILocation(line: 89, column: 3, scope: !6340)
!6340 = distinct !DILexicalBlock(scope: !6337, file: !3, line: 89, column: 3)
!6341 = !DILocation(line: 89, column: 3, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6340, file: !3, line: 89, column: 3)
!6343 = !DILocation(line: 89, column: 3, scope: !6344)
!6344 = distinct !DILexicalBlock(scope: !6342, file: !3, line: 89, column: 3)
!6345 = !{i64 2157192359}
!6346 = !DILocation(line: 92, column: 22, scope: !6337)
!6347 = !DILocation(line: 92, column: 20, scope: !6337)
!6348 = !DILocation(line: 94, column: 3, scope: !6337)
!6349 = !DILocation(line: 95, column: 3, scope: !6337)
!6350 = !DILocation(line: 95, column: 3, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6337, file: !3, line: 95, column: 3)
!6352 = !DILocation(line: 95, column: 3, scope: !6353)
!6353 = distinct !DILexicalBlock(scope: !6351, file: !3, line: 95, column: 3)
!6354 = !DILocation(line: 95, column: 3, scope: !6355)
!6355 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 95, column: 3)
!6356 = !{i64 2157195848}
!6357 = !DILocation(line: 95, column: 3, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6355, file: !3, line: 95, column: 3)
!6359 = !DILocation(line: 95, column: 3, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 95, column: 3)
!6361 = !{i64 2157196030}
!6362 = !DILocation(line: 96, column: 3, scope: !6337)
!6363 = !DILocation(line: 97, column: 3, scope: !6337)
!6364 = !DILocation(line: 98, column: 2, scope: !6337)
!6365 = !DILocation(line: 100, column: 33, scope: !6158)
!6366 = !DILocation(line: 100, column: 23, scope: !6158)
!6367 = !DILocation(line: 100, column: 2, scope: !6158)
!6368 = !DILocation(line: 101, column: 2, scope: !6158)
!6369 = !DILocation(line: 102, column: 1, scope: !6158)
!6370 = distinct !DISubprogram(name: "clockevent_state_oneshot", scope: !6, file: !6, line: 150, type: !6371, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6373)
!6371 = !DISubroutineType(types: !6372)
!6372 = !{!1425, !324}
!6373 = !{!6374}
!6374 = !DILocalVariable(name: "dev", arg: 1, scope: !6370, file: !6, line: 150, type: !324)
!6375 = !DILocation(line: 150, column: 72, scope: !6370)
!6376 = !DILocation(line: 152, column: 9, scope: !6370)
!6377 = !DILocation(line: 152, column: 14, scope: !6370)
!6378 = !DILocation(line: 152, column: 34, scope: !6370)
!6379 = !DILocation(line: 152, column: 2, scope: !6370)
!6380 = !DISubprogram(name: "clockevents_program_event", scope: !6269, file: !6269, line: 55, type: !6381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6381 = !DISubroutineType(types: !6382)
!6382 = !{!42, !324, !339, !1425}
!6383 = !DISubprogram(name: "timekeeping_valid_for_hres", scope: !6384, file: !6384, line: 12, type: !4508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6384 = !DIFile(filename: "kernel/time/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6c5d04d34cec1647d6af05566121fc1c")
!6385 = distinct !DISubprogram(name: "tick_setup_periodic", scope: !3, file: !3, line: 152, type: !6386, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6388)
!6386 = !DISubroutineType(types: !6387)
!6387 = !{null, !324, !42}
!6388 = !{!6389, !6390, !6391, !6394, !6395, !6399}
!6389 = !DILocalVariable(name: "dev", arg: 1, scope: !6385, file: !3, line: 152, type: !324)
!6390 = !DILocalVariable(name: "broadcast", arg: 2, scope: !6385, file: !3, line: 152, type: !42)
!6391 = !DILocalVariable(name: "seq", scope: !6392, file: !3, line: 164, type: !7)
!6392 = distinct !DILexicalBlock(scope: !6393, file: !3, line: 163, column: 9)
!6393 = distinct !DILexicalBlock(scope: !6385, file: !3, line: 160, column: 6)
!6394 = !DILocalVariable(name: "next", scope: !6392, file: !3, line: 165, type: !339)
!6395 = !DILocalVariable(name: "_seq", scope: !6396, file: !3, line: 168, type: !7)
!6396 = distinct !DILexicalBlock(scope: !6397, file: !3, line: 168, column: 10)
!6397 = distinct !DILexicalBlock(scope: !6398, file: !3, line: 168, column: 10)
!6398 = distinct !DILexicalBlock(scope: !6392, file: !3, line: 167, column: 6)
!6399 = !DILocalVariable(name: "__seq", scope: !6400, file: !3, line: 168, type: !7)
!6400 = distinct !DILexicalBlock(scope: !6396, file: !3, line: 168, column: 10)
!6401 = !DILocation(line: 152, column: 53, scope: !6385)
!6402 = !DILocation(line: 152, column: 62, scope: !6385)
!6403 = !DILocation(line: 154, column: 28, scope: !6385)
!6404 = !DILocation(line: 154, column: 33, scope: !6385)
!6405 = !DILocation(line: 154, column: 2, scope: !6385)
!6406 = !DILocation(line: 157, column: 33, scope: !6407)
!6407 = distinct !DILexicalBlock(scope: !6385, file: !3, line: 157, column: 6)
!6408 = !DILocation(line: 157, column: 7, scope: !6407)
!6409 = !DILocation(line: 157, column: 6, scope: !6385)
!6410 = !DILocation(line: 158, column: 3, scope: !6407)
!6411 = !DILocation(line: 160, column: 7, scope: !6393)
!6412 = !DILocation(line: 160, column: 12, scope: !6393)
!6413 = !DILocation(line: 160, column: 21, scope: !6393)
!6414 = !DILocation(line: 160, column: 48, scope: !6393)
!6415 = !DILocation(line: 161, column: 7, scope: !6393)
!6416 = !DILocation(line: 160, column: 6, scope: !6385)
!6417 = !DILocation(line: 162, column: 28, scope: !6418)
!6418 = distinct !DILexicalBlock(scope: !6393, file: !3, line: 161, column: 40)
!6419 = !DILocation(line: 162, column: 3, scope: !6418)
!6420 = !DILocation(line: 163, column: 2, scope: !6418)
!6421 = !DILocation(line: 164, column: 3, scope: !6392)
!6422 = !DILocation(line: 164, column: 16, scope: !6392)
!6423 = !DILocation(line: 165, column: 3, scope: !6392)
!6424 = !DILocation(line: 165, column: 11, scope: !6392)
!6425 = !DILocation(line: 167, column: 3, scope: !6392)
!6426 = !DILocation(line: 168, column: 10, scope: !6396)
!6427 = !DILocation(line: 168, column: 10, scope: !6400)
!6428 = distinct !{!6428, !6427, !6427, !6429, !6328}
!6429 = !{!"llvm.loop.mustprogress"}
!6430 = !DILocation(line: 168, column: 10, scope: !6431)
!6431 = distinct !DILexicalBlock(scope: !6396, file: !3, line: 168, column: 10)
!6432 = !DILocation(line: 168, column: 10, scope: !6433)
!6433 = distinct !DILexicalBlock(scope: !6431, file: !3, line: 168, column: 10)
!6434 = !DILocation(line: 168, column: 10, scope: !6435)
!6435 = distinct !DILexicalBlock(scope: !6431, file: !3, line: 168, column: 10)
!6436 = !DILocation(line: 168, column: 10, scope: !6437)
!6437 = distinct !DILexicalBlock(scope: !6435, file: !3, line: 168, column: 10)
!6438 = !{i64 2157202898}
!6439 = !DILocation(line: 168, column: 10, scope: !6397)
!6440 = !DILocation(line: 168, column: 10, scope: !6398)
!6441 = !DILocation(line: 168, column: 8, scope: !6398)
!6442 = !DILocation(line: 169, column: 11, scope: !6398)
!6443 = !DILocation(line: 169, column: 9, scope: !6398)
!6444 = !DILocation(line: 170, column: 3, scope: !6398)
!6445 = !DILocation(line: 170, column: 12, scope: !6392)
!6446 = distinct !{!6446, !6425, !6447, !6429, !6328}
!6447 = !DILocation(line: 170, column: 50, scope: !6392)
!6448 = !DILocation(line: 172, column: 28, scope: !6392)
!6449 = !DILocation(line: 172, column: 3, scope: !6392)
!6450 = !DILocation(line: 174, column: 3, scope: !6392)
!6451 = !DILocation(line: 175, column: 35, scope: !6452)
!6452 = distinct !DILexicalBlock(scope: !6453, file: !3, line: 175, column: 8)
!6453 = distinct !DILexicalBlock(scope: !6454, file: !3, line: 174, column: 12)
!6454 = distinct !DILexicalBlock(scope: !6455, file: !3, line: 174, column: 3)
!6455 = distinct !DILexicalBlock(scope: !6392, file: !3, line: 174, column: 3)
!6456 = !DILocation(line: 175, column: 40, scope: !6452)
!6457 = !DILocation(line: 175, column: 9, scope: !6452)
!6458 = !DILocation(line: 175, column: 8, scope: !6453)
!6459 = !DILocation(line: 179, column: 2, scope: !6393)
!6460 = !DILocation(line: 177, column: 11, scope: !6453)
!6461 = !DILocation(line: 177, column: 9, scope: !6453)
!6462 = !DILocation(line: 174, column: 3, scope: !6454)
!6463 = distinct !{!6463, !6464, !6465, !6328}
!6464 = !DILocation(line: 174, column: 3, scope: !6455)
!6465 = !DILocation(line: 178, column: 3, scope: !6455)
!6466 = !DILocation(line: 180, column: 1, scope: !6385)
!6467 = !DISubprogram(name: "tick_set_periodic_handler", scope: !6269, file: !6269, line: 70, type: !6386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6468 = distinct !DISubprogram(name: "tick_device_is_functional", scope: !6269, file: !6269, line: 34, type: !358, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6469)
!6469 = !{!6470}
!6470 = !DILocalVariable(name: "dev", arg: 1, scope: !6468, file: !6269, line: 34, type: !324)
!6471 = !DILocation(line: 34, column: 72, scope: !6468)
!6472 = !DILocation(line: 36, column: 11, scope: !6468)
!6473 = !DILocation(line: 36, column: 16, scope: !6468)
!6474 = !DILocation(line: 36, column: 25, scope: !6468)
!6475 = !DILocation(line: 36, column: 9, scope: !6468)
!6476 = !DILocation(line: 36, column: 2, scope: !6468)
!6477 = !DISubprogram(name: "tick_broadcast_oneshot_active", scope: !6269, file: !6269, line: 129, type: !4508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6478 = !DISubprogram(name: "clockevents_switch_state", scope: !6269, file: !6269, line: 53, type: !6479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6479 = !DISubroutineType(types: !6480)
!6480 = !{null, !324, !5}
!6481 = distinct !DISubprogram(name: "__seqprop_raw_spinlock_sequence", scope: !558, file: !558, line: 274, type: !6482, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6486)
!6482 = !DISubroutineType(types: !6483)
!6483 = !{!7, !6484}
!6484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6485, size: 64)
!6485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1101)
!6486 = !{!6487, !6488}
!6487 = !DILocalVariable(name: "s", arg: 1, scope: !6481, file: !558, line: 274, type: !6484)
!6488 = !DILocalVariable(name: "seq", scope: !6481, file: !558, line: 274, type: !7)
!6489 = !DILocation(line: 274, column: 1, scope: !6481)
!6490 = !DILocation(line: 274, column: 1, scope: !6491)
!6491 = distinct !DILexicalBlock(scope: !6481, file: !558, line: 274, column: 1)
!6492 = !DILocation(line: 274, column: 1, scope: !6493)
!6493 = distinct !DILexicalBlock(scope: !6491, file: !558, line: 274, column: 1)
!6494 = !DILocation(line: 274, column: 1, scope: !6495)
!6495 = distinct !DILexicalBlock(scope: !6481, file: !558, line: 274, column: 1)
!6496 = distinct !DISubprogram(name: "cpu_relax", scope: !6497, file: !6497, line: 16, type: !2484, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6497 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!6498 = !DILocation(line: 18, column: 2, scope: !6496)
!6499 = !DILocation(line: 19, column: 1, scope: !6496)
!6500 = distinct !DISubprogram(name: "kcsan_atomic_next", scope: !6501, file: !6501, line: 203, type: !2808, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6502)
!6501 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6502 = !{!6503}
!6503 = !DILocalVariable(name: "n", arg: 1, scope: !6500, file: !6501, line: 203, type: !42)
!6504 = !DILocation(line: 203, column: 42, scope: !6500)
!6505 = !DILocation(line: 203, column: 48, scope: !6500)
!6506 = distinct !DISubprogram(name: "do_read_seqcount_retry", scope: !558, file: !558, line: 446, type: !6507, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6511)
!6507 = !DISubroutineType(types: !6508)
!6508 = !{!42, !6509, !7}
!6509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6510, size: 64)
!6510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !562)
!6511 = !{!6512, !6513}
!6512 = !DILocalVariable(name: "s", arg: 1, scope: !6506, file: !558, line: 446, type: !6509)
!6513 = !DILocalVariable(name: "start", arg: 2, scope: !6506, file: !558, line: 446, type: !7)
!6514 = !DILocation(line: 446, column: 60, scope: !6506)
!6515 = !DILocation(line: 446, column: 72, scope: !6506)
!6516 = !DILocation(line: 448, column: 2, scope: !6506)
!6517 = !DILocation(line: 448, column: 2, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6506, file: !558, line: 448, column: 2)
!6519 = !DILocation(line: 448, column: 2, scope: !6520)
!6520 = distinct !DILexicalBlock(scope: !6518, file: !558, line: 448, column: 2)
!6521 = !DILocation(line: 448, column: 2, scope: !6522)
!6522 = distinct !DILexicalBlock(scope: !6518, file: !558, line: 448, column: 2)
!6523 = !DILocation(line: 448, column: 2, scope: !6524)
!6524 = distinct !DILexicalBlock(scope: !6522, file: !558, line: 448, column: 2)
!6525 = !{i64 2150574684}
!6526 = !DILocation(line: 449, column: 34, scope: !6506)
!6527 = !DILocation(line: 449, column: 37, scope: !6506)
!6528 = !DILocation(line: 449, column: 9, scope: !6506)
!6529 = !DILocation(line: 449, column: 2, scope: !6506)
!6530 = distinct !DISubprogram(name: "__seqprop_raw_spinlock_ptr", scope: !558, file: !558, line: 274, type: !6531, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6535)
!6531 = !DISubroutineType(types: !6532)
!6532 = !{!6533, !6534}
!6533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!6534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!6535 = !{!6536}
!6536 = !DILocalVariable(name: "s", arg: 1, scope: !6530, file: !558, line: 274, type: !6534)
!6537 = !DILocation(line: 274, column: 1, scope: !6530)
!6538 = distinct !DISubprogram(name: "tick_install_replacement", scope: !3, file: !3, line: 262, type: !329, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6539)
!6539 = !{!6540, !6541, !6542, !6545, !6547, !6548, !6551, !6553}
!6540 = !DILocalVariable(name: "newdev", arg: 1, scope: !6538, file: !3, line: 262, type: !324)
!6541 = !DILocalVariable(name: "td", scope: !6538, file: !3, line: 264, type: !320)
!6542 = !DILocalVariable(name: "__vpp_verify", scope: !6543, file: !3, line: 264, type: !1354)
!6543 = distinct !DILexicalBlock(scope: !6544, file: !3, line: 264, column: 27)
!6544 = distinct !DILexicalBlock(scope: !6538, file: !3, line: 264, column: 27)
!6545 = !DILocalVariable(name: "tcp_ptr__", scope: !6546, file: !3, line: 264, type: !59)
!6546 = distinct !DILexicalBlock(scope: !6544, file: !3, line: 264, column: 27)
!6547 = !DILocalVariable(name: "cpu", scope: !6538, file: !3, line: 265, type: !42)
!6548 = !DILocalVariable(name: "pscr_ret__", scope: !6549, file: !3, line: 265, type: !42)
!6549 = distinct !DILexicalBlock(scope: !6550, file: !3, line: 265, column: 12)
!6550 = distinct !DILexicalBlock(scope: !6538, file: !3, line: 265, column: 12)
!6551 = !DILocalVariable(name: "__vpp_verify", scope: !6552, file: !3, line: 265, type: !1354)
!6552 = distinct !DILexicalBlock(scope: !6549, file: !3, line: 265, column: 12)
!6553 = !DILocalVariable(name: "pfo_val__", scope: !6554, file: !3, line: 265, type: !350)
!6554 = distinct !DILexicalBlock(scope: !6549, file: !3, line: 265, column: 12)
!6555 = !DILocation(line: 262, column: 58, scope: !6538)
!6556 = !DILocation(line: 264, column: 2, scope: !6538)
!6557 = !DILocation(line: 264, column: 22, scope: !6538)
!6558 = !DILocation(line: 264, column: 27, scope: !6544)
!6559 = !DILocation(line: 264, column: 27, scope: !6543)
!6560 = !DILocation(line: 264, column: 27, scope: !6546)
!6561 = !{i64 2157204457}
!6562 = !DILocation(line: 265, column: 2, scope: !6538)
!6563 = !DILocation(line: 265, column: 6, scope: !6538)
!6564 = !DILocation(line: 265, column: 12, scope: !6550)
!6565 = !DILocation(line: 265, column: 12, scope: !6549)
!6566 = !DILocation(line: 265, column: 12, scope: !6552)
!6567 = !DILocation(line: 265, column: 12, scope: !6554)
!6568 = !{i64 2157211443}
!6569 = !DILocation(line: 267, column: 30, scope: !6538)
!6570 = !DILocation(line: 267, column: 34, scope: !6538)
!6571 = !DILocation(line: 267, column: 42, scope: !6538)
!6572 = !DILocation(line: 267, column: 2, scope: !6538)
!6573 = !DILocation(line: 268, column: 20, scope: !6538)
!6574 = !DILocation(line: 268, column: 24, scope: !6538)
!6575 = !DILocation(line: 268, column: 32, scope: !6538)
!6576 = !DILocation(line: 268, column: 37, scope: !6538)
!6577 = !DILocation(line: 268, column: 2, scope: !6538)
!6578 = !DILocation(line: 269, column: 6, scope: !6579)
!6579 = distinct !DILexicalBlock(scope: !6538, file: !3, line: 269, column: 6)
!6580 = !DILocation(line: 269, column: 14, scope: !6579)
!6581 = !DILocation(line: 269, column: 23, scope: !6579)
!6582 = !DILocation(line: 269, column: 6, scope: !6538)
!6583 = !DILocation(line: 270, column: 3, scope: !6579)
!6584 = !DILocation(line: 271, column: 1, scope: !6538)
!6585 = !DISubprogram(name: "clockevents_exchange_device", scope: !6269, file: !6269, line: 51, type: !6586, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6586 = !DISubroutineType(types: !6587)
!6587 = !{null, !324, !324}
!6588 = distinct !DISubprogram(name: "tick_setup_device", scope: !3, file: !3, line: 185, type: !6589, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6591)
!6589 = !DISubroutineType(types: !6590)
!6590 = !{null, !320, !324, !42, !368}
!6591 = !{!6592, !6593, !6594, !6595, !6596, !6597}
!6592 = !DILocalVariable(name: "td", arg: 1, scope: !6588, file: !3, line: 185, type: !320)
!6593 = !DILocalVariable(name: "newdev", arg: 2, scope: !6588, file: !3, line: 186, type: !324)
!6594 = !DILocalVariable(name: "cpu", arg: 3, scope: !6588, file: !3, line: 186, type: !42)
!6595 = !DILocalVariable(name: "cpumask", arg: 4, scope: !6588, file: !3, line: 187, type: !368)
!6596 = !DILocalVariable(name: "handler", scope: !6588, file: !3, line: 189, type: !328)
!6597 = !DILocalVariable(name: "next_event", scope: !6588, file: !3, line: 190, type: !339)
!6598 = !DILocation(line: 185, column: 51, scope: !6588)
!6599 = !DILocation(line: 186, column: 37, scope: !6588)
!6600 = !DILocation(line: 186, column: 49, scope: !6588)
!6601 = !DILocation(line: 187, column: 32, scope: !6588)
!6602 = !DILocation(line: 189, column: 2, scope: !6588)
!6603 = !DILocation(line: 189, column: 9, scope: !6588)
!6604 = !DILocation(line: 190, column: 2, scope: !6588)
!6605 = !DILocation(line: 190, column: 10, scope: !6588)
!6606 = !DILocation(line: 195, column: 7, scope: !6607)
!6607 = distinct !DILexicalBlock(scope: !6588, file: !3, line: 195, column: 6)
!6608 = !DILocation(line: 195, column: 11, scope: !6607)
!6609 = !DILocation(line: 195, column: 6, scope: !6588)
!6610 = !DILocation(line: 200, column: 7, scope: !6611)
!6611 = distinct !DILexicalBlock(scope: !6612, file: !3, line: 200, column: 7)
!6612 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 195, column: 19)
!6613 = !DILocation(line: 200, column: 25, scope: !6611)
!6614 = !DILocation(line: 200, column: 7, scope: !6612)
!6615 = !DILocation(line: 201, column: 24, scope: !6616)
!6616 = distinct !DILexicalBlock(scope: !6611, file: !3, line: 200, column: 48)
!6617 = !DILocation(line: 201, column: 22, scope: !6616)
!6618 = !DILocation(line: 202, column: 23, scope: !6616)
!6619 = !DILocation(line: 202, column: 21, scope: !6616)
!6620 = !DILocation(line: 225, column: 3, scope: !6616)
!6621 = !DILocation(line: 230, column: 3, scope: !6612)
!6622 = !DILocation(line: 230, column: 7, scope: !6612)
!6623 = !DILocation(line: 230, column: 12, scope: !6612)
!6624 = !DILocation(line: 231, column: 2, scope: !6612)
!6625 = !DILocation(line: 232, column: 13, scope: !6626)
!6626 = distinct !DILexicalBlock(scope: !6607, file: !3, line: 231, column: 9)
!6627 = !DILocation(line: 232, column: 17, scope: !6626)
!6628 = !DILocation(line: 232, column: 25, scope: !6626)
!6629 = !DILocation(line: 232, column: 11, scope: !6626)
!6630 = !DILocation(line: 233, column: 16, scope: !6626)
!6631 = !DILocation(line: 233, column: 20, scope: !6626)
!6632 = !DILocation(line: 233, column: 28, scope: !6626)
!6633 = !DILocation(line: 233, column: 14, scope: !6626)
!6634 = !DILocation(line: 234, column: 3, scope: !6626)
!6635 = !DILocation(line: 234, column: 7, scope: !6626)
!6636 = !DILocation(line: 234, column: 15, scope: !6626)
!6637 = !DILocation(line: 234, column: 29, scope: !6626)
!6638 = !DILocation(line: 237, column: 15, scope: !6588)
!6639 = !DILocation(line: 237, column: 2, scope: !6588)
!6640 = !DILocation(line: 237, column: 6, scope: !6588)
!6641 = !DILocation(line: 237, column: 13, scope: !6588)
!6642 = !DILocation(line: 243, column: 21, scope: !6643)
!6643 = distinct !DILexicalBlock(scope: !6588, file: !3, line: 243, column: 6)
!6644 = !DILocation(line: 243, column: 29, scope: !6643)
!6645 = !DILocation(line: 243, column: 38, scope: !6643)
!6646 = !DILocation(line: 243, column: 7, scope: !6643)
!6647 = !DILocation(line: 243, column: 6, scope: !6588)
!6648 = !DILocation(line: 244, column: 20, scope: !6643)
!6649 = !DILocation(line: 244, column: 28, scope: !6643)
!6650 = !DILocation(line: 244, column: 33, scope: !6643)
!6651 = !DILocation(line: 244, column: 3, scope: !6643)
!6652 = !DILocation(line: 253, column: 33, scope: !6653)
!6653 = distinct !DILexicalBlock(scope: !6588, file: !3, line: 253, column: 6)
!6654 = !DILocation(line: 253, column: 41, scope: !6653)
!6655 = !DILocation(line: 253, column: 6, scope: !6653)
!6656 = !DILocation(line: 253, column: 6, scope: !6588)
!6657 = !DILocation(line: 254, column: 3, scope: !6653)
!6658 = !DILocation(line: 256, column: 6, scope: !6659)
!6659 = distinct !DILexicalBlock(scope: !6588, file: !3, line: 256, column: 6)
!6660 = !DILocation(line: 256, column: 10, scope: !6659)
!6661 = !DILocation(line: 256, column: 15, scope: !6659)
!6662 = !DILocation(line: 256, column: 6, scope: !6588)
!6663 = !DILocation(line: 257, column: 23, scope: !6659)
!6664 = !DILocation(line: 257, column: 3, scope: !6659)
!6665 = !DILocation(line: 259, column: 22, scope: !6659)
!6666 = !DILocation(line: 259, column: 30, scope: !6659)
!6667 = !DILocation(line: 259, column: 39, scope: !6659)
!6668 = !DILocation(line: 259, column: 3, scope: !6659)
!6669 = !DILocation(line: 260, column: 1, scope: !6588)
!6670 = distinct !DISubprogram(name: "get_cpu_mask", scope: !371, file: !371, line: 1056, type: !6671, scopeLine: 1057, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6673)
!6671 = !DISubroutineType(types: !6672)
!6672 = !{!368, !7}
!6673 = !{!6674, !6675}
!6674 = !DILocalVariable(name: "cpu", arg: 1, scope: !6670, file: !371, line: 1056, type: !7)
!6675 = !DILocalVariable(name: "p", scope: !6670, file: !371, line: 1058, type: !6676)
!6676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!6677 = !DILocation(line: 1056, column: 63, scope: !6670)
!6678 = !DILocation(line: 1058, column: 2, scope: !6670)
!6679 = !DILocation(line: 1058, column: 23, scope: !6670)
!6680 = !DILocation(line: 1058, column: 46, scope: !6670)
!6681 = !DILocation(line: 1058, column: 50, scope: !6670)
!6682 = !DILocation(line: 1058, column: 44, scope: !6670)
!6683 = !DILocation(line: 1058, column: 27, scope: !6670)
!6684 = !DILocation(line: 1059, column: 7, scope: !6670)
!6685 = !DILocation(line: 1059, column: 11, scope: !6670)
!6686 = !DILocation(line: 1059, column: 4, scope: !6670)
!6687 = !DILocation(line: 1060, column: 9, scope: !6670)
!6688 = !DILocation(line: 1061, column: 1, scope: !6670)
!6689 = !DILocation(line: 1060, column: 2, scope: !6670)
!6690 = !DISubprogram(name: "tick_oneshot_notify", scope: !6269, file: !6269, line: 104, type: !2484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6691 = distinct !DISubprogram(name: "tick_check_replacement", scope: !3, file: !3, line: 313, type: !6692, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6694)
!6692 = !DISubroutineType(types: !6693)
!6693 = !{!1425, !324, !324}
!6694 = !{!6695, !6696, !6697, !6701, !6703}
!6695 = !DILocalVariable(name: "curdev", arg: 1, scope: !6691, file: !3, line: 313, type: !324)
!6696 = !DILocalVariable(name: "newdev", arg: 2, scope: !6691, file: !3, line: 314, type: !324)
!6697 = !DILocalVariable(name: "pscr_ret__", scope: !6698, file: !3, line: 316, type: !42)
!6698 = distinct !DILexicalBlock(scope: !6699, file: !3, line: 316, column: 41)
!6699 = distinct !DILexicalBlock(scope: !6700, file: !3, line: 316, column: 41)
!6700 = distinct !DILexicalBlock(scope: !6691, file: !3, line: 316, column: 6)
!6701 = !DILocalVariable(name: "__vpp_verify", scope: !6702, file: !3, line: 316, type: !1354)
!6702 = distinct !DILexicalBlock(scope: !6698, file: !3, line: 316, column: 41)
!6703 = !DILocalVariable(name: "pfo_val__", scope: !6704, file: !3, line: 316, type: !350)
!6704 = distinct !DILexicalBlock(scope: !6698, file: !3, line: 316, column: 41)
!6705 = !DILocation(line: 313, column: 56, scope: !6691)
!6706 = !DILocation(line: 314, column: 35, scope: !6691)
!6707 = !DILocation(line: 316, column: 25, scope: !6700)
!6708 = !DILocation(line: 316, column: 33, scope: !6700)
!6709 = !DILocation(line: 316, column: 41, scope: !6699)
!6710 = !DILocation(line: 316, column: 41, scope: !6698)
!6711 = !DILocation(line: 316, column: 41, scope: !6702)
!6712 = !DILocation(line: 316, column: 41, scope: !6704)
!6713 = !{i64 2157214955}
!6714 = !DILocation(line: 316, column: 7, scope: !6700)
!6715 = !DILocation(line: 316, column: 6, scope: !6691)
!6716 = !DILocation(line: 317, column: 3, scope: !6700)
!6717 = !DILocation(line: 319, column: 30, scope: !6691)
!6718 = !DILocation(line: 319, column: 38, scope: !6691)
!6719 = !DILocation(line: 319, column: 9, scope: !6691)
!6720 = !DILocation(line: 319, column: 2, scope: !6691)
!6721 = !DILocation(line: 320, column: 1, scope: !6691)
!6722 = distinct !DISubprogram(name: "tick_check_percpu", scope: !3, file: !3, line: 273, type: !6723, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6725)
!6723 = !DISubroutineType(types: !6724)
!6724 = !{!1425, !324, !324, !42}
!6725 = !{!6726, !6727, !6728}
!6726 = !DILocalVariable(name: "curdev", arg: 1, scope: !6722, file: !3, line: 273, type: !324)
!6727 = !DILocalVariable(name: "newdev", arg: 2, scope: !6722, file: !3, line: 274, type: !324)
!6728 = !DILocalVariable(name: "cpu", arg: 3, scope: !6722, file: !3, line: 274, type: !42)
!6729 = !DILocation(line: 273, column: 58, scope: !6722)
!6730 = !DILocation(line: 274, column: 37, scope: !6722)
!6731 = !DILocation(line: 274, column: 49, scope: !6722)
!6732 = !DILocation(line: 276, column: 24, scope: !6733)
!6733 = distinct !DILexicalBlock(scope: !6722, file: !3, line: 276, column: 6)
!6734 = !DILocation(line: 276, column: 29, scope: !6733)
!6735 = !DILocation(line: 276, column: 37, scope: !6733)
!6736 = !DILocation(line: 276, column: 7, scope: !6733)
!6737 = !DILocation(line: 276, column: 6, scope: !6722)
!6738 = !DILocation(line: 277, column: 3, scope: !6733)
!6739 = !DILocation(line: 278, column: 20, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6722, file: !3, line: 278, column: 6)
!6741 = !DILocation(line: 278, column: 28, scope: !6740)
!6742 = !DILocation(line: 278, column: 37, scope: !6740)
!6743 = !DILocation(line: 278, column: 6, scope: !6740)
!6744 = !DILocation(line: 278, column: 6, scope: !6722)
!6745 = !DILocation(line: 279, column: 3, scope: !6740)
!6746 = !DILocation(line: 281, column: 6, scope: !6747)
!6747 = distinct !DILexicalBlock(scope: !6722, file: !3, line: 281, column: 6)
!6748 = !DILocation(line: 281, column: 14, scope: !6747)
!6749 = !DILocation(line: 281, column: 18, scope: !6747)
!6750 = !DILocation(line: 281, column: 23, scope: !6747)
!6751 = !DILocation(line: 281, column: 48, scope: !6747)
!6752 = !DILocation(line: 281, column: 56, scope: !6747)
!6753 = !DILocation(line: 281, column: 27, scope: !6747)
!6754 = !DILocation(line: 281, column: 6, scope: !6722)
!6755 = !DILocation(line: 282, column: 3, scope: !6747)
!6756 = !DILocation(line: 284, column: 6, scope: !6757)
!6757 = distinct !DILexicalBlock(scope: !6722, file: !3, line: 284, column: 6)
!6758 = !DILocation(line: 284, column: 13, scope: !6757)
!6759 = !DILocation(line: 284, column: 30, scope: !6757)
!6760 = !DILocation(line: 284, column: 38, scope: !6757)
!6761 = !DILocation(line: 284, column: 47, scope: !6757)
!6762 = !DILocation(line: 284, column: 16, scope: !6757)
!6763 = !DILocation(line: 284, column: 6, scope: !6722)
!6764 = !DILocation(line: 285, column: 3, scope: !6757)
!6765 = !DILocation(line: 286, column: 2, scope: !6722)
!6766 = !DILocation(line: 287, column: 1, scope: !6722)
!6767 = distinct !DISubprogram(name: "tick_check_preferred", scope: !3, file: !3, line: 289, type: !6692, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6768)
!6768 = !{!6769, !6770}
!6769 = !DILocalVariable(name: "curdev", arg: 1, scope: !6767, file: !3, line: 289, type: !324)
!6770 = !DILocalVariable(name: "newdev", arg: 2, scope: !6767, file: !3, line: 290, type: !324)
!6771 = !DILocation(line: 289, column: 61, scope: !6767)
!6772 = !DILocation(line: 290, column: 33, scope: !6767)
!6773 = !DILocation(line: 293, column: 8, scope: !6774)
!6774 = distinct !DILexicalBlock(scope: !6767, file: !3, line: 293, column: 6)
!6775 = !DILocation(line: 293, column: 16, scope: !6774)
!6776 = !DILocation(line: 293, column: 25, scope: !6774)
!6777 = !DILocation(line: 293, column: 6, scope: !6767)
!6778 = !DILocation(line: 294, column: 7, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6780, file: !3, line: 294, column: 7)
!6780 = distinct !DILexicalBlock(scope: !6774, file: !3, line: 293, column: 52)
!6781 = !DILocation(line: 294, column: 14, scope: !6779)
!6782 = !DILocation(line: 294, column: 18, scope: !6779)
!6783 = !DILocation(line: 294, column: 26, scope: !6779)
!6784 = !DILocation(line: 294, column: 35, scope: !6779)
!6785 = !DILocation(line: 294, column: 7, scope: !6780)
!6786 = !DILocation(line: 295, column: 4, scope: !6779)
!6787 = !DILocation(line: 296, column: 7, scope: !6788)
!6788 = distinct !DILexicalBlock(scope: !6780, file: !3, line: 296, column: 7)
!6789 = !DILocation(line: 296, column: 7, scope: !6780)
!6790 = !DILocation(line: 297, column: 4, scope: !6788)
!6791 = !DILocation(line: 298, column: 2, scope: !6780)
!6792 = !DILocation(line: 304, column: 10, scope: !6767)
!6793 = !DILocation(line: 304, column: 17, scope: !6767)
!6794 = !DILocation(line: 305, column: 3, scope: !6767)
!6795 = !DILocation(line: 305, column: 11, scope: !6767)
!6796 = !DILocation(line: 305, column: 20, scope: !6767)
!6797 = !DILocation(line: 305, column: 28, scope: !6767)
!6798 = !DILocation(line: 305, column: 18, scope: !6767)
!6799 = !DILocation(line: 305, column: 35, scope: !6767)
!6800 = !DILocation(line: 306, column: 24, scope: !6767)
!6801 = !DILocation(line: 306, column: 32, scope: !6767)
!6802 = !DILocation(line: 306, column: 41, scope: !6767)
!6803 = !DILocation(line: 306, column: 49, scope: !6767)
!6804 = !DILocation(line: 306, column: 10, scope: !6767)
!6805 = !DILocation(line: 306, column: 9, scope: !6767)
!6806 = !DILocation(line: 304, column: 2, scope: !6767)
!6807 = !DILocation(line: 307, column: 1, scope: !6767)
!6808 = distinct !DISubprogram(name: "tick_check_new_device", scope: !3, file: !3, line: 326, type: !329, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6809)
!6809 = !{!6810, !6811, !6812, !6813, !6814, !6817, !6819, !6821, !6824, !6826}
!6810 = !DILocalVariable(name: "newdev", arg: 1, scope: !6808, file: !3, line: 326, type: !324)
!6811 = !DILocalVariable(name: "curdev", scope: !6808, file: !3, line: 328, type: !324)
!6812 = !DILocalVariable(name: "td", scope: !6808, file: !3, line: 329, type: !320)
!6813 = !DILocalVariable(name: "cpu", scope: !6808, file: !3, line: 330, type: !42)
!6814 = !DILocalVariable(name: "pscr_ret__", scope: !6815, file: !3, line: 332, type: !42)
!6815 = distinct !DILexicalBlock(scope: !6816, file: !3, line: 332, column: 8)
!6816 = distinct !DILexicalBlock(scope: !6808, file: !3, line: 332, column: 8)
!6817 = !DILocalVariable(name: "__vpp_verify", scope: !6818, file: !3, line: 332, type: !1354)
!6818 = distinct !DILexicalBlock(scope: !6815, file: !3, line: 332, column: 8)
!6819 = !DILocalVariable(name: "pfo_val__", scope: !6820, file: !3, line: 332, type: !350)
!6820 = distinct !DILexicalBlock(scope: !6815, file: !3, line: 332, column: 8)
!6821 = !DILocalVariable(name: "__vpp_verify", scope: !6822, file: !3, line: 333, type: !1354)
!6822 = distinct !DILexicalBlock(scope: !6823, file: !3, line: 333, column: 8)
!6823 = distinct !DILexicalBlock(scope: !6808, file: !3, line: 333, column: 8)
!6824 = !DILocalVariable(name: "__ptr", scope: !6825, file: !3, line: 333, type: !59)
!6825 = distinct !DILexicalBlock(scope: !6823, file: !3, line: 333, column: 8)
!6826 = !DILabel(scope: !6808, name: "out_bc", file: !3, line: 357)
!6827 = !DILocation(line: 326, column: 55, scope: !6808)
!6828 = !DILocation(line: 328, column: 2, scope: !6808)
!6829 = !DILocation(line: 328, column: 29, scope: !6808)
!6830 = !DILocation(line: 329, column: 2, scope: !6808)
!6831 = !DILocation(line: 329, column: 22, scope: !6808)
!6832 = !DILocation(line: 330, column: 2, scope: !6808)
!6833 = !DILocation(line: 330, column: 6, scope: !6808)
!6834 = !DILocation(line: 332, column: 8, scope: !6816)
!6835 = !DILocation(line: 332, column: 8, scope: !6815)
!6836 = !DILocation(line: 332, column: 8, scope: !6818)
!6837 = !DILocation(line: 332, column: 8, scope: !6820)
!6838 = !{i64 2157218368}
!6839 = !DILocation(line: 332, column: 6, scope: !6808)
!6840 = !DILocation(line: 333, column: 8, scope: !6823)
!6841 = !DILocation(line: 333, column: 8, scope: !6822)
!6842 = !DILocation(line: 333, column: 8, scope: !6825)
!6843 = !DILocation(line: 333, column: 5, scope: !6808)
!6844 = !DILocation(line: 334, column: 11, scope: !6808)
!6845 = !DILocation(line: 334, column: 15, scope: !6808)
!6846 = !DILocation(line: 334, column: 9, scope: !6808)
!6847 = !DILocation(line: 336, column: 30, scope: !6848)
!6848 = distinct !DILexicalBlock(scope: !6808, file: !3, line: 336, column: 6)
!6849 = !DILocation(line: 336, column: 38, scope: !6848)
!6850 = !DILocation(line: 336, column: 7, scope: !6848)
!6851 = !DILocation(line: 336, column: 6, scope: !6808)
!6852 = !DILocation(line: 337, column: 3, scope: !6848)
!6853 = !DILocation(line: 339, column: 22, scope: !6854)
!6854 = distinct !DILexicalBlock(scope: !6808, file: !3, line: 339, column: 6)
!6855 = !DILocation(line: 339, column: 30, scope: !6854)
!6856 = !DILocation(line: 339, column: 7, scope: !6854)
!6857 = !DILocation(line: 339, column: 6, scope: !6808)
!6858 = !DILocation(line: 340, column: 3, scope: !6854)
!6859 = !DILocation(line: 347, column: 31, scope: !6860)
!6860 = distinct !DILexicalBlock(scope: !6808, file: !3, line: 347, column: 6)
!6861 = !DILocation(line: 347, column: 6, scope: !6860)
!6862 = !DILocation(line: 347, column: 6, scope: !6808)
!6863 = !DILocation(line: 348, column: 24, scope: !6864)
!6864 = distinct !DILexicalBlock(scope: !6860, file: !3, line: 347, column: 40)
!6865 = !DILocation(line: 348, column: 3, scope: !6864)
!6866 = !DILocation(line: 349, column: 10, scope: !6864)
!6867 = !DILocation(line: 350, column: 2, scope: !6864)
!6868 = !DILocation(line: 351, column: 30, scope: !6808)
!6869 = !DILocation(line: 351, column: 38, scope: !6808)
!6870 = !DILocation(line: 351, column: 2, scope: !6808)
!6871 = !DILocation(line: 352, column: 20, scope: !6808)
!6872 = !DILocation(line: 352, column: 24, scope: !6808)
!6873 = !DILocation(line: 352, column: 32, scope: !6808)
!6874 = !DILocation(line: 352, column: 37, scope: !6808)
!6875 = !DILocation(line: 352, column: 2, scope: !6808)
!6876 = !DILocation(line: 353, column: 6, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6808, file: !3, line: 353, column: 6)
!6878 = !DILocation(line: 353, column: 14, scope: !6877)
!6879 = !DILocation(line: 353, column: 23, scope: !6877)
!6880 = !DILocation(line: 353, column: 6, scope: !6808)
!6881 = !DILocation(line: 354, column: 3, scope: !6877)
!6882 = !DILocation(line: 355, column: 2, scope: !6808)
!6883 = !DILocation(line: 357, column: 1, scope: !6808)
!6884 = !DILocation(line: 361, column: 32, scope: !6808)
!6885 = !DILocation(line: 361, column: 40, scope: !6808)
!6886 = !DILocation(line: 361, column: 2, scope: !6808)
!6887 = !DILocation(line: 362, column: 1, scope: !6808)
!6888 = !DISubprogram(name: "try_module_get", scope: !15, file: !15, line: 696, type: !6889, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6889 = !DISubroutineType(types: !6890)
!6890 = !{!1425, !388}
!6891 = !DISubprogram(name: "tick_is_broadcast_device", scope: !6269, file: !6269, line: 65, type: !358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6892 = !DISubprogram(name: "clockevents_shutdown", scope: !6269, file: !6269, line: 50, type: !329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6893 = !DISubprogram(name: "tick_install_broadcast_device", scope: !6269, file: !6269, line: 64, type: !6386, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6894 = distinct !DISubprogram(name: "tick_broadcast_oneshot_control", scope: !3, file: !3, line: 375, type: !6895, scopeLine: 376, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6897)
!6895 = !DISubroutineType(types: !6896)
!6896 = !{!42, !303}
!6897 = !{!6898, !6899, !6900, !6903}
!6898 = !DILocalVariable(name: "state", arg: 1, scope: !6894, file: !3, line: 375, type: !303)
!6899 = !DILocalVariable(name: "td", scope: !6894, file: !3, line: 377, type: !320)
!6900 = !DILocalVariable(name: "__vpp_verify", scope: !6901, file: !3, line: 377, type: !1354)
!6901 = distinct !DILexicalBlock(scope: !6902, file: !3, line: 377, column: 27)
!6902 = distinct !DILexicalBlock(scope: !6894, file: !3, line: 377, column: 27)
!6903 = !DILocalVariable(name: "tcp_ptr__", scope: !6904, file: !3, line: 377, type: !59)
!6904 = distinct !DILexicalBlock(scope: !6902, file: !3, line: 377, column: 27)
!6905 = !DILocation(line: 375, column: 62, scope: !6894)
!6906 = !DILocation(line: 377, column: 2, scope: !6894)
!6907 = !DILocation(line: 377, column: 22, scope: !6894)
!6908 = !DILocation(line: 377, column: 27, scope: !6902)
!6909 = !DILocation(line: 377, column: 27, scope: !6901)
!6910 = !DILocation(line: 377, column: 27, scope: !6904)
!6911 = !{i64 2157220417}
!6912 = !DILocation(line: 379, column: 8, scope: !6913)
!6913 = distinct !DILexicalBlock(scope: !6894, file: !3, line: 379, column: 6)
!6914 = !DILocation(line: 379, column: 12, scope: !6913)
!6915 = !DILocation(line: 379, column: 20, scope: !6913)
!6916 = !DILocation(line: 379, column: 29, scope: !6913)
!6917 = !DILocation(line: 379, column: 6, scope: !6894)
!6918 = !DILocation(line: 380, column: 3, scope: !6913)
!6919 = !DILocation(line: 382, column: 42, scope: !6894)
!6920 = !DILocation(line: 382, column: 9, scope: !6894)
!6921 = !DILocation(line: 382, column: 2, scope: !6894)
!6922 = !DILocation(line: 383, column: 1, scope: !6894)
!6923 = !DISubprogram(name: "__tick_broadcast_oneshot_control", scope: !294, file: !294, line: 113, type: !6895, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6924 = distinct !DISubprogram(name: "tick_handover_do_timer", scope: !3, file: !3, line: 393, type: !2484, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6925)
!6925 = !{!6926, !6930, !6932}
!6926 = !DILocalVariable(name: "pscr_ret__", scope: !6927, file: !3, line: 395, type: !42)
!6927 = distinct !DILexicalBlock(scope: !6928, file: !3, line: 395, column: 27)
!6928 = distinct !DILexicalBlock(scope: !6929, file: !3, line: 395, column: 27)
!6929 = distinct !DILexicalBlock(scope: !6924, file: !3, line: 395, column: 6)
!6930 = !DILocalVariable(name: "__vpp_verify", scope: !6931, file: !3, line: 395, type: !1354)
!6931 = distinct !DILexicalBlock(scope: !6927, file: !3, line: 395, column: 27)
!6932 = !DILocalVariable(name: "pfo_val__", scope: !6933, file: !3, line: 395, type: !350)
!6933 = distinct !DILexicalBlock(scope: !6927, file: !3, line: 395, column: 27)
!6934 = !DILocation(line: 395, column: 6, scope: !6929)
!6935 = !DILocation(line: 395, column: 27, scope: !6928)
!6936 = !DILocation(line: 395, column: 27, scope: !6927)
!6937 = !DILocation(line: 395, column: 27, scope: !6931)
!6938 = !DILocation(line: 395, column: 27, scope: !6933)
!6939 = !{i64 2157225496}
!6940 = !DILocation(line: 395, column: 24, scope: !6929)
!6941 = !DILocation(line: 395, column: 6, scope: !6924)
!6942 = !DILocation(line: 396, column: 23, scope: !6929)
!6943 = !DILocation(line: 396, column: 21, scope: !6929)
!6944 = !DILocation(line: 396, column: 3, scope: !6929)
!6945 = !DILocation(line: 397, column: 1, scope: !6924)
!6946 = distinct !DISubprogram(name: "cpumask_first", scope: !371, file: !371, line: 160, type: !6947, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6949)
!6947 = !DISubroutineType(types: !6948)
!6948 = !{!7, !368}
!6949 = !{!6950}
!6950 = !DILocalVariable(name: "srcp", arg: 1, scope: !6946, file: !371, line: 160, type: !368)
!6951 = !DILocation(line: 160, column: 64, scope: !6946)
!6952 = !DILocation(line: 162, column: 24, scope: !6946)
!6953 = !DILocation(line: 162, column: 9, scope: !6946)
!6954 = !DILocation(line: 162, column: 2, scope: !6946)
!6955 = distinct !DISubprogram(name: "tick_shutdown", scope: !3, file: !3, line: 406, type: !6956, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6958)
!6956 = !DISubroutineType(types: !6957)
!6957 = !{null, !7}
!6958 = !{!6959, !6960, !6961, !6964, !6966}
!6959 = !DILocalVariable(name: "cpu", arg: 1, scope: !6955, file: !3, line: 406, type: !7)
!6960 = !DILocalVariable(name: "td", scope: !6955, file: !3, line: 408, type: !320)
!6961 = !DILocalVariable(name: "__vpp_verify", scope: !6962, file: !3, line: 408, type: !1354)
!6962 = distinct !DILexicalBlock(scope: !6963, file: !3, line: 408, column: 28)
!6963 = distinct !DILexicalBlock(scope: !6955, file: !3, line: 408, column: 28)
!6964 = !DILocalVariable(name: "__ptr", scope: !6965, file: !3, line: 408, type: !59)
!6965 = distinct !DILexicalBlock(scope: !6963, file: !3, line: 408, column: 28)
!6966 = !DILocalVariable(name: "dev", scope: !6955, file: !3, line: 409, type: !324)
!6967 = !DILocation(line: 406, column: 33, scope: !6955)
!6968 = !DILocation(line: 408, column: 2, scope: !6955)
!6969 = !DILocation(line: 408, column: 22, scope: !6955)
!6970 = !DILocation(line: 408, column: 28, scope: !6963)
!6971 = !DILocation(line: 408, column: 28, scope: !6962)
!6972 = !DILocation(line: 408, column: 28, scope: !6965)
!6973 = !DILocation(line: 409, column: 2, scope: !6955)
!6974 = !DILocation(line: 409, column: 29, scope: !6955)
!6975 = !DILocation(line: 409, column: 35, scope: !6955)
!6976 = !DILocation(line: 409, column: 39, scope: !6955)
!6977 = !DILocation(line: 411, column: 2, scope: !6955)
!6978 = !DILocation(line: 411, column: 6, scope: !6955)
!6979 = !DILocation(line: 411, column: 11, scope: !6955)
!6980 = !DILocation(line: 412, column: 6, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6955, file: !3, line: 412, column: 6)
!6982 = !DILocation(line: 412, column: 6, scope: !6955)
!6983 = !DILocation(line: 417, column: 24, scope: !6984)
!6984 = distinct !DILexicalBlock(scope: !6981, file: !3, line: 412, column: 11)
!6985 = !DILocation(line: 417, column: 3, scope: !6984)
!6986 = !DILocation(line: 418, column: 31, scope: !6984)
!6987 = !DILocation(line: 418, column: 3, scope: !6984)
!6988 = !DILocation(line: 419, column: 3, scope: !6984)
!6989 = !DILocation(line: 419, column: 8, scope: !6984)
!6990 = !DILocation(line: 419, column: 22, scope: !6984)
!6991 = !DILocation(line: 420, column: 3, scope: !6984)
!6992 = !DILocation(line: 420, column: 7, scope: !6984)
!6993 = !DILocation(line: 420, column: 14, scope: !6984)
!6994 = !DILocation(line: 421, column: 2, scope: !6984)
!6995 = !DILocation(line: 422, column: 1, scope: !6955)
!6996 = distinct !DISubprogram(name: "clockevent_set_state", scope: !6269, file: !6269, line: 44, type: !6479, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6997)
!6997 = !{!6998, !6999}
!6998 = !DILocalVariable(name: "dev", arg: 1, scope: !6996, file: !6269, line: 44, type: !324)
!6999 = !DILocalVariable(name: "state", arg: 2, scope: !6996, file: !6269, line: 45, type: !5)
!7000 = !DILocation(line: 44, column: 68, scope: !6996)
!7001 = !DILocation(line: 45, column: 29, scope: !6996)
!7002 = !DILocation(line: 47, column: 29, scope: !6996)
!7003 = !DILocation(line: 47, column: 2, scope: !6996)
!7004 = !DILocation(line: 47, column: 7, scope: !6996)
!7005 = !DILocation(line: 47, column: 27, scope: !6996)
!7006 = !DILocation(line: 48, column: 1, scope: !6996)
!7007 = distinct !DISubprogram(name: "tick_suspend_local", scope: !3, file: !3, line: 432, type: !2484, scopeLine: 433, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7008)
!7008 = !{!7009, !7010, !7013}
!7009 = !DILocalVariable(name: "td", scope: !7007, file: !3, line: 434, type: !320)
!7010 = !DILocalVariable(name: "__vpp_verify", scope: !7011, file: !3, line: 434, type: !1354)
!7011 = distinct !DILexicalBlock(scope: !7012, file: !3, line: 434, column: 27)
!7012 = distinct !DILexicalBlock(scope: !7007, file: !3, line: 434, column: 27)
!7013 = !DILocalVariable(name: "tcp_ptr__", scope: !7014, file: !3, line: 434, type: !59)
!7014 = distinct !DILexicalBlock(scope: !7012, file: !3, line: 434, column: 27)
!7015 = !DILocation(line: 434, column: 2, scope: !7007)
!7016 = !DILocation(line: 434, column: 22, scope: !7007)
!7017 = !DILocation(line: 434, column: 27, scope: !7012)
!7018 = !DILocation(line: 434, column: 27, scope: !7011)
!7019 = !DILocation(line: 434, column: 27, scope: !7014)
!7020 = !{i64 2157227569}
!7021 = !DILocation(line: 436, column: 23, scope: !7007)
!7022 = !DILocation(line: 436, column: 27, scope: !7007)
!7023 = !DILocation(line: 436, column: 2, scope: !7007)
!7024 = !DILocation(line: 437, column: 1, scope: !7007)
!7025 = distinct !DISubprogram(name: "tick_resume_local", scope: !3, file: !3, line: 446, type: !2484, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7026)
!7026 = !{!7027, !7028, !7031, !7033}
!7027 = !DILocalVariable(name: "td", scope: !7025, file: !3, line: 448, type: !320)
!7028 = !DILocalVariable(name: "__vpp_verify", scope: !7029, file: !3, line: 448, type: !1354)
!7029 = distinct !DILexicalBlock(scope: !7030, file: !3, line: 448, column: 27)
!7030 = distinct !DILexicalBlock(scope: !7025, file: !3, line: 448, column: 27)
!7031 = !DILocalVariable(name: "tcp_ptr__", scope: !7032, file: !3, line: 448, type: !59)
!7032 = distinct !DILexicalBlock(scope: !7030, file: !3, line: 448, column: 27)
!7033 = !DILocalVariable(name: "broadcast", scope: !7025, file: !3, line: 449, type: !1425)
!7034 = !DILocation(line: 448, column: 2, scope: !7025)
!7035 = !DILocation(line: 448, column: 22, scope: !7025)
!7036 = !DILocation(line: 448, column: 27, scope: !7030)
!7037 = !DILocation(line: 448, column: 27, scope: !7029)
!7038 = !DILocation(line: 448, column: 27, scope: !7032)
!7039 = !{i64 2157228221}
!7040 = !DILocation(line: 449, column: 2, scope: !7025)
!7041 = !DILocation(line: 449, column: 7, scope: !7025)
!7042 = !DILocation(line: 449, column: 19, scope: !7025)
!7043 = !DILocation(line: 451, column: 26, scope: !7025)
!7044 = !DILocation(line: 451, column: 30, scope: !7025)
!7045 = !DILocation(line: 451, column: 2, scope: !7025)
!7046 = !DILocation(line: 452, column: 7, scope: !7047)
!7047 = distinct !DILexicalBlock(scope: !7025, file: !3, line: 452, column: 6)
!7048 = !{i8 0, i8 2}
!7049 = !DILocation(line: 452, column: 6, scope: !7025)
!7050 = !DILocation(line: 453, column: 7, scope: !7051)
!7051 = distinct !DILexicalBlock(scope: !7052, file: !3, line: 453, column: 7)
!7052 = distinct !DILexicalBlock(scope: !7047, file: !3, line: 452, column: 18)
!7053 = !DILocation(line: 453, column: 11, scope: !7051)
!7054 = !DILocation(line: 453, column: 16, scope: !7051)
!7055 = !DILocation(line: 453, column: 7, scope: !7052)
!7056 = !DILocation(line: 454, column: 24, scope: !7051)
!7057 = !DILocation(line: 454, column: 28, scope: !7051)
!7058 = !DILocation(line: 454, column: 4, scope: !7051)
!7059 = !DILocation(line: 456, column: 4, scope: !7051)
!7060 = !DILocation(line: 457, column: 2, scope: !7052)
!7061 = !DILocation(line: 464, column: 2, scope: !7025)
!7062 = !DILocation(line: 465, column: 1, scope: !7025)
!7063 = !DISubprogram(name: "tick_resume_check_broadcast", scope: !6269, file: !6269, line: 68, type: !3783, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7064 = !DISubprogram(name: "clockevents_tick_resume", scope: !6269, file: !6269, line: 32, type: !358, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7065 = !DISubprogram(name: "tick_resume_oneshot", scope: !6269, file: !6269, line: 106, type: !2484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7066 = !DISubprogram(name: "hrtimers_resume_local", scope: !6269, file: !6269, line: 179, type: !2484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7067 = distinct !DISubprogram(name: "tick_suspend", scope: !3, file: !3, line: 476, type: !2484, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7068 = !DILocation(line: 478, column: 2, scope: !7067)
!7069 = !DILocation(line: 479, column: 2, scope: !7067)
!7070 = !DILocation(line: 480, column: 1, scope: !7067)
!7071 = !DISubprogram(name: "tick_suspend_broadcast", scope: !6269, file: !6269, line: 66, type: !2484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7072 = distinct !DISubprogram(name: "tick_resume", scope: !3, file: !3, line: 490, type: !2484, scopeLine: 491, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7073 = !DILocation(line: 492, column: 2, scope: !7072)
!7074 = !DILocation(line: 493, column: 2, scope: !7072)
!7075 = !DILocation(line: 494, column: 1, scope: !7072)
!7076 = !DISubprogram(name: "tick_resume_broadcast", scope: !6269, file: !6269, line: 67, type: !2484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7077 = !DILocation(line: 511, column: 2, scope: !6126)
!7078 = !DILocation(line: 513, column: 19, scope: !6126)
!7079 = !DILocation(line: 514, column: 6, scope: !6132)
!7080 = !DILocation(line: 514, column: 27, scope: !6132)
!7081 = !DILocation(line: 514, column: 24, scope: !6132)
!7082 = !DILocation(line: 514, column: 6, scope: !6126)
!7083 = !DILocation(line: 515, column: 24, scope: !7084)
!7084 = distinct !DILexicalBlock(scope: !6131, file: !3, line: 515, column: 24)
!7085 = !DILocation(line: 516, column: 10, scope: !6130)
!7086 = !DILocation(line: 516, column: 10, scope: !6129)
!7087 = !DILocation(line: 516, column: 10, scope: !6134)
!7088 = !DILocation(line: 516, column: 10, scope: !6136)
!7089 = !{i64 2157231809}
!7090 = !DILocation(line: 515, column: 3, scope: !6131)
!7091 = !DILocation(line: 517, column: 16, scope: !6131)
!7092 = !DILocation(line: 518, column: 3, scope: !6131)
!7093 = !DILocation(line: 519, column: 3, scope: !6131)
!7094 = !DILocation(line: 520, column: 2, scope: !6131)
!7095 = !DILocation(line: 521, column: 3, scope: !7096)
!7096 = distinct !DILexicalBlock(scope: !6132, file: !3, line: 520, column: 9)
!7097 = !DILocation(line: 524, column: 2, scope: !6126)
!7098 = !DILocation(line: 525, column: 1, scope: !6126)
!7099 = !DISubprogram(name: "_raw_spin_lock", scope: !7100, file: !7100, line: 22, type: !7101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7100 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!7101 = !DISubroutineType(types: !7102)
!7102 = !{null, !7103}
!7103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!7104 = distinct !DISubprogram(name: "num_online_cpus", scope: !371, file: !371, line: 1072, type: !7105, scopeLine: 1073, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7105 = !DISubroutineType(types: !7106)
!7106 = !{!7}
!7107 = !DILocation(line: 1074, column: 9, scope: !7104)
!7108 = !DILocation(line: 1074, column: 2, scope: !7104)
!7109 = !DILocation(line: 248, column: 1, scope: !6171)
!7110 = !DILocation(line: 248, column: 1, scope: !6180)
!7111 = !DILocation(line: 248, column: 1, scope: !6179)
!7112 = !DILocation(line: 248, column: 1, scope: !6182)
!7113 = !DILocation(line: 248, column: 1, scope: !6185)
!7114 = !DILocation(line: 248, column: 1, scope: !6187)
!7115 = !{i64 2156326696}
!7116 = !DILocation(line: 248, column: 1, scope: !6183)
!7117 = !DILocation(line: 248, column: 1, scope: !6189)
!7118 = !DILocation(line: 248, column: 1, scope: !6193)
!7119 = !DILocation(line: 248, column: 1, scope: !6192)
!7120 = !DILocation(line: 248, column: 1, scope: !7121)
!7121 = distinct !DILexicalBlock(scope: !6192, file: !6165, line: 248, column: 1)
!7122 = !DILocation(line: 248, column: 1, scope: !7123)
!7123 = distinct !DILexicalBlock(scope: !6192, file: !6165, line: 248, column: 1)
!7124 = !{i64 2156327910, i64 2156327939, i64 2156327985, i64 2156328043, i64 2156328097, i64 2156328151, i64 2156328206, i64 2156328237, i64 2156328545, i64 2156328551, i64 2156328598, i64 2156328621, i64 2156328647}
!7125 = !DILocation(line: 248, column: 1, scope: !7126)
!7126 = distinct !DILexicalBlock(scope: !6192, file: !6165, line: 248, column: 1)
!7127 = !DILocation(line: 248, column: 1, scope: !6190)
!7128 = !DILocation(line: 248, column: 1, scope: !7129)
!7129 = distinct !DILexicalBlock(scope: !6179, file: !6165, line: 248, column: 1)
!7130 = !{i64 2156329000}
!7131 = !DILocation(line: 248, column: 1, scope: !6195)
!7132 = !DILocation(line: 248, column: 1, scope: !6198)
!7133 = !DILocation(line: 248, column: 1, scope: !7134)
!7134 = distinct !DILexicalBlock(scope: !6198, file: !6165, line: 248, column: 1)
!7135 = !DILocation(line: 248, column: 1, scope: !7136)
!7136 = distinct !DILexicalBlock(scope: !7134, file: !6165, line: 248, column: 1)
!7137 = !DILocation(line: 248, column: 1, scope: !7138)
!7138 = distinct !DILexicalBlock(scope: !6195, file: !6165, line: 248, column: 1)
!7139 = !DILocation(line: 248, column: 1, scope: !7140)
!7140 = distinct !DILexicalBlock(scope: !7138, file: !6165, line: 248, column: 1)
!7141 = !DILocation(line: 248, column: 1, scope: !7142)
!7142 = distinct !DILexicalBlock(scope: !7140, file: !6165, line: 248, column: 1)
!7143 = !DILocation(line: 248, column: 1, scope: !7144)
!7144 = distinct !DILexicalBlock(scope: !6179, file: !6165, line: 248, column: 1)
!7145 = !{i64 2156335377}
!7146 = !DILocation(line: 248, column: 1, scope: !7147)
!7147 = distinct !DILexicalBlock(scope: !7144, file: !6165, line: 248, column: 1)
!7148 = !DILocation(line: 248, column: 1, scope: !7149)
!7149 = distinct !DILexicalBlock(scope: !7147, file: !6165, line: 248, column: 1)
!7150 = !{i64 2156335536}
!7151 = distinct !DISubprogram(name: "sched_clock_suspend", scope: !6384, file: !6384, line: 21, type: !4508, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7152 = !DILocation(line: 21, column: 47, scope: !7151)
!7153 = !DISubprogram(name: "timekeeping_suspend", scope: !6384, file: !6384, line: 15, type: !4508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7154 = !DISubprogram(name: "_raw_spin_unlock", scope: !7100, file: !7100, line: 39, type: !7101, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7155 = !DILocation(line: 538, column: 2, scope: !6139)
!7156 = !DILocation(line: 540, column: 6, scope: !6145)
!7157 = !DILocation(line: 540, column: 27, scope: !6145)
!7158 = !DILocation(line: 540, column: 24, scope: !6145)
!7159 = !DILocation(line: 540, column: 6, scope: !6139)
!7160 = !DILocation(line: 541, column: 3, scope: !6144)
!7161 = !DILocation(line: 542, column: 3, scope: !6144)
!7162 = !DILocation(line: 543, column: 16, scope: !6144)
!7163 = !DILocation(line: 544, column: 24, scope: !7164)
!7164 = distinct !DILexicalBlock(scope: !6144, file: !3, line: 544, column: 24)
!7165 = !DILocation(line: 545, column: 10, scope: !6143)
!7166 = !DILocation(line: 545, column: 10, scope: !6142)
!7167 = !DILocation(line: 545, column: 10, scope: !6147)
!7168 = !DILocation(line: 545, column: 10, scope: !6149)
!7169 = !{i64 2157235581}
!7170 = !DILocation(line: 544, column: 3, scope: !6144)
!7171 = !DILocation(line: 546, column: 2, scope: !6144)
!7172 = !DILocation(line: 547, column: 3, scope: !7173)
!7173 = distinct !DILexicalBlock(scope: !6145, file: !3, line: 546, column: 9)
!7174 = !DILocation(line: 548, column: 3, scope: !7173)
!7175 = !DILocation(line: 551, column: 19, scope: !6139)
!7176 = !DILocation(line: 553, column: 2, scope: !6139)
!7177 = !DILocation(line: 554, column: 1, scope: !6139)
!7178 = !DISubprogram(name: "timekeeping_resume", scope: !6384, file: !6384, line: 16, type: !2484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7179 = distinct !DISubprogram(name: "sched_clock_resume", scope: !6384, file: !6384, line: 22, type: !2484, scopeLine: 22, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7180 = !DILocation(line: 22, column: 47, scope: !7179)
!7181 = distinct !DISubprogram(name: "touch_softlockup_watchdog", scope: !7182, file: !7182, line: 54, type: !2484, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7182 = !DIFile(filename: "./include/linux/nmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5da5752bbe70ab061cfd0891798ac7e8")
!7183 = !DILocation(line: 54, column: 54, scope: !7181)
!7184 = distinct !DISubprogram(name: "tick_init", scope: !3, file: !3, line: 560, type: !2484, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7185 = !DILocation(line: 562, column: 2, scope: !7184)
!7186 = !DILocation(line: 563, column: 2, scope: !7184)
!7187 = !DILocation(line: 564, column: 1, scope: !7184)
!7188 = !DISubprogram(name: "tick_broadcast_init", scope: !6269, file: !6269, line: 69, type: !2484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7189 = distinct !DISubprogram(name: "tick_nohz_init", scope: !6269, file: !6269, line: 150, type: !2484, scopeLine: 150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7190 = !DILocation(line: 150, column: 43, scope: !7189)
!7191 = distinct !DISubprogram(name: "__seqprop_raw_spinlock_assert", scope: !558, file: !558, line: 274, type: !7192, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7194)
!7192 = !DISubroutineType(types: !7193)
!7193 = !{null, !6484}
!7194 = !{!7195}
!7195 = !DILocalVariable(name: "s", arg: 1, scope: !7191, file: !558, line: 274, type: !6484)
!7196 = !DILocation(line: 274, column: 1, scope: !7191)
!7197 = distinct !DISubprogram(name: "__seqprop_raw_spinlock_preemptible", scope: !558, file: !558, line: 274, type: !7198, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7200)
!7198 = !DISubroutineType(types: !7199)
!7199 = !{!1425, !6484}
!7200 = !{!7201}
!7201 = !DILocalVariable(name: "s", arg: 1, scope: !7197, file: !558, line: 274, type: !6484)
!7202 = !DILocation(line: 274, column: 1, scope: !7197)
!7203 = !DILocation(line: 274, column: 1, scope: !7204)
!7204 = distinct !DILexicalBlock(scope: !7197, file: !558, line: 274, column: 1)
!7205 = distinct !DISubprogram(name: "__preempt_count_add", scope: !7206, file: !7206, line: 78, type: !2808, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7207)
!7206 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!7207 = !{!7208, !7209, !7211}
!7208 = !DILocalVariable(name: "val", arg: 1, scope: !7205, file: !7206, line: 78, type: !42)
!7209 = !DILocalVariable(name: "pao_ID__", scope: !7210, file: !7206, line: 80, type: !4433)
!7210 = distinct !DILexicalBlock(scope: !7205, file: !7206, line: 80, column: 2)
!7211 = !DILocalVariable(name: "pto_val__", scope: !7212, file: !7206, line: 80, type: !350)
!7212 = distinct !DILexicalBlock(scope: !7213, file: !7206, line: 80, column: 2)
!7213 = distinct !DILexicalBlock(scope: !7214, file: !7206, line: 80, column: 2)
!7214 = distinct !DILexicalBlock(scope: !7210, file: !7206, line: 80, column: 2)
!7215 = !DILocation(line: 78, column: 53, scope: !7205)
!7216 = !DILocation(line: 80, column: 2, scope: !7205)
!7217 = !DILocation(line: 80, column: 2, scope: !7210)
!7218 = !DILocation(line: 80, column: 2, scope: !7214)
!7219 = !DILocation(line: 80, column: 2, scope: !7220)
!7220 = distinct !DILexicalBlock(scope: !7214, file: !7206, line: 80, column: 2)
!7221 = !{i64 2149666734}
!7222 = !DILocation(line: 80, column: 2, scope: !7213)
!7223 = !DILocation(line: 80, column: 2, scope: !7224)
!7224 = distinct !DILexicalBlock(scope: !7213, file: !7206, line: 80, column: 2)
!7225 = !{i64 2149667029}
!7226 = !DILocation(line: 80, column: 2, scope: !7212)
!7227 = !{i64 2149667734}
!7228 = !DILocation(line: 81, column: 1, scope: !7205)
!7229 = distinct !DISubprogram(name: "do_write_seqcount_begin", scope: !558, file: !558, line: 539, type: !7230, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7232)
!7230 = !DISubroutineType(types: !7231)
!7231 = !{null, !6533}
!7232 = !{!7233}
!7233 = !DILocalVariable(name: "s", arg: 1, scope: !7229, file: !558, line: 539, type: !6533)
!7234 = !DILocation(line: 539, column: 56, scope: !7229)
!7235 = !DILocation(line: 541, column: 33, scope: !7229)
!7236 = !DILocation(line: 541, column: 2, scope: !7229)
!7237 = !DILocation(line: 542, column: 1, scope: !7229)
!7238 = !DISubprogram(name: "do_timer", scope: !6384, file: !6384, line: 26, type: !7239, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7239 = !DISubroutineType(types: !7240)
!7240 = !{null, !59}
!7241 = distinct !DISubprogram(name: "do_write_seqcount_end", scope: !558, file: !558, line: 559, type: !7230, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7242)
!7242 = !{!7243}
!7243 = !DILocalVariable(name: "s", arg: 1, scope: !7241, file: !558, line: 559, type: !6533)
!7244 = !DILocation(line: 559, column: 54, scope: !7241)
!7245 = !DILocation(line: 561, column: 2, scope: !7241)
!7246 = !DILocation(line: 561, column: 2, scope: !7247)
!7247 = distinct !DILexicalBlock(scope: !7241, file: !558, line: 561, column: 2)
!7248 = !DILocation(line: 562, column: 28, scope: !7241)
!7249 = !DILocation(line: 562, column: 2, scope: !7241)
!7250 = !DILocation(line: 563, column: 1, scope: !7241)
!7251 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !7206, file: !7206, line: 93, type: !3783, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7252)
!7252 = !{!7253}
!7253 = !DILocalVariable(name: "c", scope: !7254, file: !7206, line: 95, type: !1425)
!7254 = distinct !DILexicalBlock(scope: !7251, file: !7206, line: 95, column: 9)
!7255 = !DILocation(line: 95, column: 9, scope: !7254)
!7256 = !{i64 2149671090, i64 2149671183}
!7257 = !DILocation(line: 95, column: 9, scope: !7251)
!7258 = !DILocation(line: 95, column: 2, scope: !7251)
!7259 = !DISubprogram(name: "update_wall_time", scope: !6384, file: !6384, line: 27, type: !2484, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7260 = !DISubprogram(name: "update_process_times", scope: !6384, file: !6384, line: 25, type: !2808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7261 = distinct !DISubprogram(name: "user_mode", scope: !4344, file: !4344, line: 209, type: !7262, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7264)
!7262 = !DISubroutineType(types: !7263)
!7263 = !{!42, !4342}
!7264 = !{!7265}
!7265 = !DILocalVariable(name: "regs", arg: 1, scope: !7261, file: !4344, line: 209, type: !4342)
!7266 = !DILocation(line: 209, column: 54, scope: !7261)
!7267 = !DILocation(line: 214, column: 12, scope: !7261)
!7268 = !DILocation(line: 214, column: 18, scope: !7261)
!7269 = !DILocation(line: 214, column: 21, scope: !7261)
!7270 = !DILocation(line: 214, column: 10, scope: !7261)
!7271 = !DILocation(line: 214, column: 9, scope: !7261)
!7272 = !DILocation(line: 214, column: 2, scope: !7261)
!7273 = distinct !DISubprogram(name: "get_irq_regs", scope: !7274, file: !7274, line: 19, type: !7275, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7277)
!7274 = !DIFile(filename: "./include/asm-generic/irq_regs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b19b686e9556a0825595e081e13ea17")
!7275 = !DISubroutineType(types: !7276)
!7276 = !{!4342}
!7277 = !{!7278, !7281, !7283}
!7278 = !DILocalVariable(name: "pscr_ret__", scope: !7279, file: !7274, line: 21, type: !4342)
!7279 = distinct !DILexicalBlock(scope: !7280, file: !7274, line: 21, column: 9)
!7280 = distinct !DILexicalBlock(scope: !7273, file: !7274, line: 21, column: 9)
!7281 = !DILocalVariable(name: "__vpp_verify", scope: !7282, file: !7274, line: 21, type: !1354)
!7282 = distinct !DILexicalBlock(scope: !7279, file: !7274, line: 21, column: 9)
!7283 = !DILocalVariable(name: "pfo_val__", scope: !7284, file: !7274, line: 21, type: !345)
!7284 = distinct !DILexicalBlock(scope: !7279, file: !7274, line: 21, column: 9)
!7285 = !DILocation(line: 21, column: 9, scope: !7280)
!7286 = !DILocation(line: 21, column: 9, scope: !7279)
!7287 = !DILocation(line: 21, column: 9, scope: !7282)
!7288 = !DILocation(line: 21, column: 9, scope: !7284)
!7289 = !{i64 2157107443}
!7290 = !DILocation(line: 21, column: 2, scope: !7273)
!7291 = !DISubprogram(name: "profile_tick", scope: !7292, file: !7292, line: 40, type: !2808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7292 = !DIFile(filename: "./include/linux/profile.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "891c8d5616dd007cc2ab9d018022f868")
!7293 = distinct !DISubprogram(name: "do_write_seqcount_begin_nested", scope: !558, file: !558, line: 513, type: !7294, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7296)
!7294 = !DISubroutineType(types: !7295)
!7295 = !{null, !6533, !42}
!7296 = !{!7297, !7298}
!7297 = !DILocalVariable(name: "s", arg: 1, scope: !7293, file: !558, line: 513, type: !6533)
!7298 = !DILocalVariable(name: "subclass", arg: 2, scope: !7293, file: !558, line: 513, type: !42)
!7299 = !DILocation(line: 513, column: 63, scope: !7293)
!7300 = !DILocation(line: 513, column: 70, scope: !7293)
!7301 = !DILocation(line: 515, column: 2, scope: !7293)
!7302 = !DILocation(line: 515, column: 2, scope: !7303)
!7303 = distinct !DILexicalBlock(scope: !7293, file: !558, line: 515, column: 2)
!7304 = !DILocation(line: 516, column: 30, scope: !7293)
!7305 = !DILocation(line: 516, column: 2, scope: !7293)
!7306 = !DILocation(line: 517, column: 1, scope: !7293)
!7307 = distinct !DISubprogram(name: "do_raw_write_seqcount_begin", scope: !558, file: !558, line: 466, type: !7230, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7308)
!7308 = !{!7309}
!7309 = !DILocalVariable(name: "s", arg: 1, scope: !7307, file: !558, line: 466, type: !6533)
!7310 = !DILocation(line: 466, column: 60, scope: !7307)
!7311 = !DILocation(line: 468, column: 2, scope: !7307)
!7312 = !DILocation(line: 469, column: 2, scope: !7307)
!7313 = !DILocation(line: 469, column: 5, scope: !7307)
!7314 = !DILocation(line: 469, column: 13, scope: !7307)
!7315 = !DILocation(line: 470, column: 2, scope: !7307)
!7316 = !DILocation(line: 470, column: 2, scope: !7317)
!7317 = distinct !DILexicalBlock(scope: !7307, file: !558, line: 470, column: 2)
!7318 = !DILocation(line: 470, column: 2, scope: !7319)
!7319 = distinct !DILexicalBlock(scope: !7317, file: !558, line: 470, column: 2)
!7320 = !{i64 2150574957}
!7321 = !DILocation(line: 471, column: 1, scope: !7307)
!7322 = distinct !DISubprogram(name: "kcsan_nestable_atomic_begin", scope: !6501, file: !6501, line: 199, type: !2484, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7323 = !DILocation(line: 199, column: 56, scope: !7322)
!7324 = distinct !DISubprogram(name: "do_raw_write_seqcount_end", scope: !558, file: !558, line: 487, type: !7230, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7325)
!7325 = !{!7326}
!7326 = !DILocalVariable(name: "s", arg: 1, scope: !7324, file: !558, line: 487, type: !6533)
!7327 = !DILocation(line: 487, column: 58, scope: !7324)
!7328 = !DILocation(line: 489, column: 2, scope: !7324)
!7329 = !DILocation(line: 489, column: 2, scope: !7330)
!7330 = distinct !DILexicalBlock(scope: !7324, file: !558, line: 489, column: 2)
!7331 = !DILocation(line: 489, column: 2, scope: !7332)
!7332 = distinct !DILexicalBlock(scope: !7330, file: !558, line: 489, column: 2)
!7333 = !{i64 2150575230}
!7334 = !DILocation(line: 490, column: 2, scope: !7324)
!7335 = !DILocation(line: 490, column: 5, scope: !7324)
!7336 = !DILocation(line: 490, column: 13, scope: !7324)
!7337 = !DILocation(line: 491, column: 2, scope: !7324)
!7338 = !DILocation(line: 492, column: 1, scope: !7324)
!7339 = distinct !DISubprogram(name: "kcsan_nestable_atomic_end", scope: !6501, file: !6501, line: 200, type: !2484, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7340 = !DILocation(line: 200, column: 54, scope: !7339)
!7341 = distinct !DISubprogram(name: "rep_nop", scope: !6497, file: !6497, line: 11, type: !2484, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!7342 = !DILocation(line: 13, column: 2, scope: !7341)
!7343 = !{i64 2135520}
!7344 = !DILocation(line: 14, column: 1, scope: !7341)
!7345 = distinct !DISubprogram(name: "do___read_seqcount_retry", scope: !558, file: !558, line: 426, type: !6507, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7346)
!7346 = !{!7347, !7348}
!7347 = !DILocalVariable(name: "s", arg: 1, scope: !7345, file: !558, line: 426, type: !6509)
!7348 = !DILocalVariable(name: "start", arg: 2, scope: !7345, file: !558, line: 426, type: !7)
!7349 = !DILocation(line: 426, column: 62, scope: !7345)
!7350 = !DILocation(line: 426, column: 74, scope: !7345)
!7351 = !DILocation(line: 428, column: 2, scope: !7345)
!7352 = !DILocation(line: 429, column: 9, scope: !7353)
!7353 = distinct !DILexicalBlock(scope: !7345, file: !558, line: 429, column: 9)
!7354 = !DILocation(line: 429, column: 9, scope: !7355)
!7355 = distinct !DILexicalBlock(scope: !7353, file: !558, line: 429, column: 9)
!7356 = !DILocation(line: 429, column: 9, scope: !7345)
!7357 = !DILocation(line: 429, column: 2, scope: !7345)
!7358 = !DISubprogram(name: "ktime_get", scope: !7359, file: !7359, line: 67, type: !1119, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7359 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!7360 = distinct !DISubprogram(name: "cpumask_equal", scope: !371, file: !371, line: 621, type: !7361, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7363)
!7361 = !DISubroutineType(types: !7362)
!7362 = !{!1425, !368, !368}
!7363 = !{!7364, !7365}
!7364 = !DILocalVariable(name: "src1p", arg: 1, scope: !7360, file: !371, line: 621, type: !368)
!7365 = !DILocalVariable(name: "src2p", arg: 2, scope: !7360, file: !371, line: 622, type: !368)
!7366 = !DILocation(line: 621, column: 56, scope: !7360)
!7367 = !DILocation(line: 622, column: 27, scope: !7360)
!7368 = !DILocation(line: 624, column: 22, scope: !7360)
!7369 = !DILocation(line: 624, column: 43, scope: !7360)
!7370 = !DILocation(line: 624, column: 9, scope: !7360)
!7371 = !DILocation(line: 624, column: 2, scope: !7360)
!7372 = !DISubprogram(name: "irq_set_affinity", scope: !7373, file: !7373, line: 308, type: !7374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7373 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!7374 = !DISubroutineType(types: !7375)
!7375 = !{!42, !7, !368}
!7376 = !DISubprogram(name: "tick_device_uses_broadcast", scope: !6269, file: !6269, line: 63, type: !7377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7377 = !DISubroutineType(types: !7378)
!7378 = !{!42, !324, !42}
!7379 = !DISubprogram(name: "tick_setup_oneshot", scope: !6269, file: !6269, line: 100, type: !7380, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7380 = !DISubroutineType(types: !7381)
!7381 = !{null, !324, !328, !339}
!7382 = distinct !DISubprogram(name: "bitmap_equal", scope: !7383, file: !7383, line: 386, type: !7384, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7386)
!7383 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!7384 = !DISubroutineType(types: !7385)
!7385 = !{!1425, !6676, !6676, !7}
!7386 = !{!7387, !7388, !7389}
!7387 = !DILocalVariable(name: "src1", arg: 1, scope: !7382, file: !7383, line: 386, type: !6676)
!7388 = !DILocalVariable(name: "src2", arg: 2, scope: !7382, file: !7383, line: 387, type: !6676)
!7389 = !DILocalVariable(name: "nbits", arg: 3, scope: !7382, file: !7383, line: 387, type: !7)
!7390 = !DILocation(line: 386, column: 54, scope: !7382)
!7391 = !DILocation(line: 387, column: 26, scope: !7382)
!7392 = !DILocation(line: 387, column: 45, scope: !7382)
!7393 = !DILocation(line: 389, column: 6, scope: !7394)
!7394 = distinct !DILexicalBlock(scope: !7382, file: !7383, line: 389, column: 6)
!7395 = !DILocation(line: 389, column: 6, scope: !7382)
!7396 = !DILocation(line: 390, column: 14, scope: !7394)
!7397 = !DILocation(line: 390, column: 13, scope: !7394)
!7398 = !DILocation(line: 390, column: 22, scope: !7394)
!7399 = !DILocation(line: 390, column: 21, scope: !7394)
!7400 = !DILocation(line: 390, column: 19, scope: !7394)
!7401 = !DILocation(line: 390, column: 30, scope: !7394)
!7402 = !DILocation(line: 390, column: 28, scope: !7394)
!7403 = !DILocation(line: 390, column: 10, scope: !7394)
!7404 = !DILocation(line: 390, column: 3, scope: !7394)
!7405 = !DILocation(line: 391, column: 27, scope: !7406)
!7406 = distinct !DILexicalBlock(scope: !7382, file: !7383, line: 391, column: 6)
!7407 = !DILocation(line: 391, column: 33, scope: !7406)
!7408 = !DILocation(line: 391, column: 6, scope: !7406)
!7409 = !DILocation(line: 391, column: 52, scope: !7406)
!7410 = !DILocation(line: 392, column: 6, scope: !7406)
!7411 = !DILocation(line: 391, column: 6, scope: !7382)
!7412 = !DILocation(line: 393, column: 18, scope: !7406)
!7413 = !DILocation(line: 393, column: 24, scope: !7406)
!7414 = !DILocation(line: 393, column: 30, scope: !7406)
!7415 = !DILocation(line: 393, column: 36, scope: !7406)
!7416 = !DILocation(line: 393, column: 11, scope: !7406)
!7417 = !DILocation(line: 393, column: 10, scope: !7406)
!7418 = !DILocation(line: 393, column: 3, scope: !7406)
!7419 = !DILocation(line: 394, column: 24, scope: !7382)
!7420 = !DILocation(line: 394, column: 30, scope: !7382)
!7421 = !DILocation(line: 394, column: 36, scope: !7382)
!7422 = !DILocation(line: 394, column: 9, scope: !7382)
!7423 = !DILocation(line: 394, column: 2, scope: !7382)
!7424 = !DILocation(line: 395, column: 1, scope: !7382)
!7425 = !DISubprogram(name: "memcmp", scope: !7426, file: !7426, line: 196, type: !7427, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7426 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!7427 = !DISubroutineType(types: !7428)
!7428 = !{!42, !1354, !1354, !56}
!7429 = !DISubprogram(name: "__bitmap_equal", scope: !7383, file: !7383, line: 142, type: !7384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7430 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !371, file: !371, line: 502, type: !7431, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7433)
!7431 = !DISubroutineType(types: !7432)
!7432 = !{!1425, !42, !368}
!7433 = !{!7434, !7435}
!7434 = !DILocalVariable(name: "cpu", arg: 1, scope: !7430, file: !371, line: 502, type: !42)
!7435 = !DILocalVariable(name: "cpumask", arg: 2, scope: !7430, file: !371, line: 502, type: !368)
!7436 = !DILocation(line: 502, column: 50, scope: !7430)
!7437 = !DILocation(line: 502, column: 77, scope: !7430)
!7438 = !DILocation(line: 504, column: 9, scope: !7430)
!7439 = !DILocation(line: 504, column: 2, scope: !7430)
!7440 = !DISubprogram(name: "irq_can_set_affinity", scope: !7373, file: !7373, line: 311, type: !7441, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7441 = !DISubroutineType(types: !7442)
!7442 = !{!42, !7}
!7443 = distinct !DISubprogram(name: "_test_bit", scope: !7444, file: !7444, line: 139, type: !7445, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7450)
!7444 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!7445 = !DISubroutineType(types: !7446)
!7446 = !{!1425, !59, !7447}
!7447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7448, size: 64)
!7448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7449)
!7449 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !59)
!7450 = !{!7451, !7452}
!7451 = !DILocalVariable(name: "nr", arg: 1, scope: !7443, file: !7444, line: 139, type: !59)
!7452 = !DILocalVariable(name: "addr", arg: 2, scope: !7443, file: !7444, line: 139, type: !7447)
!7453 = !DILocation(line: 139, column: 25, scope: !7443)
!7454 = !DILocation(line: 139, column: 59, scope: !7443)
!7455 = !DILocation(line: 141, column: 25, scope: !7443)
!7456 = !DILocation(line: 141, column: 32, scope: !7443)
!7457 = !DILocation(line: 141, column: 30, scope: !7443)
!7458 = !DILocation(line: 141, column: 2, scope: !7443)
!7459 = !DILocation(line: 142, column: 23, scope: !7443)
!7460 = !DILocation(line: 142, column: 27, scope: !7443)
!7461 = !DILocation(line: 142, column: 9, scope: !7443)
!7462 = !DILocation(line: 142, column: 2, scope: !7443)
!7463 = distinct !DISubprogram(name: "cpumask_check", scope: !371, file: !371, line: 148, type: !7464, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7466)
!7464 = !DISubroutineType(types: !7465)
!7465 = !{!7, !7}
!7466 = !{!7467}
!7467 = !DILocalVariable(name: "cpu", arg: 1, scope: !7463, file: !371, line: 148, type: !7)
!7468 = !DILocation(line: 148, column: 64, scope: !7463)
!7469 = !DILocation(line: 150, column: 20, scope: !7463)
!7470 = !DILocation(line: 150, column: 2, scope: !7463)
!7471 = !DILocation(line: 151, column: 9, scope: !7463)
!7472 = !DILocation(line: 151, column: 2, scope: !7463)
!7473 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !7474, file: !7474, line: 66, type: !7475, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7480)
!7474 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7475 = !DISubroutineType(types: !7476)
!7476 = !{null, !7477, !55}
!7477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7478, size: 64)
!7478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7479)
!7479 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7480 = !{!7481, !7482}
!7481 = !DILocalVariable(name: "v", arg: 1, scope: !7473, file: !7474, line: 66, type: !7477)
!7482 = !DILocalVariable(name: "size", arg: 2, scope: !7473, file: !7474, line: 66, type: !55)
!7483 = !DILocation(line: 66, column: 73, scope: !7473)
!7484 = !DILocation(line: 66, column: 83, scope: !7473)
!7485 = !DILocation(line: 68, column: 19, scope: !7473)
!7486 = !DILocation(line: 68, column: 22, scope: !7473)
!7487 = !DILocation(line: 68, column: 2, scope: !7473)
!7488 = !DILocation(line: 69, column: 2, scope: !7473)
!7489 = !DILocation(line: 70, column: 1, scope: !7473)
!7490 = distinct !DISubprogram(name: "arch_test_bit", scope: !7491, file: !7491, line: 237, type: !7445, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7492)
!7491 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!7492 = !{!7493, !7494}
!7493 = !DILocalVariable(name: "nr", arg: 1, scope: !7490, file: !7491, line: 237, type: !59)
!7494 = !DILocalVariable(name: "addr", arg: 2, scope: !7490, file: !7491, line: 237, type: !7447)
!7495 = !DILocation(line: 237, column: 29, scope: !7490)
!7496 = !DILocation(line: 237, column: 63, scope: !7490)
!7497 = !DILocation(line: 239, column: 30, scope: !7490)
!7498 = !DILocation(line: 239, column: 9, scope: !7490)
!7499 = !DILocation(line: 239, column: 54, scope: !7490)
!7500 = !DILocation(line: 239, column: 58, scope: !7490)
!7501 = !DILocation(line: 239, column: 36, scope: !7490)
!7502 = !DILocation(line: 240, column: 26, scope: !7490)
!7503 = !DILocation(line: 240, column: 30, scope: !7490)
!7504 = !DILocation(line: 240, column: 8, scope: !7490)
!7505 = !DILocation(line: 239, column: 2, scope: !7490)
!7506 = distinct !DISubprogram(name: "kasan_check_read", scope: !7507, file: !7507, line: 40, type: !7508, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7510)
!7507 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7508 = !DISubroutineType(types: !7509)
!7509 = !{!1425, !7477, !7}
!7510 = !{!7511, !7512}
!7511 = !DILocalVariable(name: "p", arg: 1, scope: !7506, file: !7507, line: 40, type: !7477)
!7512 = !DILocalVariable(name: "size", arg: 2, scope: !7506, file: !7507, line: 40, type: !7)
!7513 = !DILocation(line: 40, column: 58, scope: !7506)
!7514 = !DILocation(line: 40, column: 74, scope: !7506)
!7515 = !DILocation(line: 42, column: 2, scope: !7506)
!7516 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6501, file: !6501, line: 229, type: !7517, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7519)
!7517 = !DISubroutineType(types: !7518)
!7518 = !{null, !7477, !55, !42}
!7519 = !{!7520, !7521, !7522}
!7520 = !DILocalVariable(name: "ptr", arg: 1, scope: !7516, file: !6501, line: 229, type: !7477)
!7521 = !DILocalVariable(name: "size", arg: 2, scope: !7516, file: !6501, line: 229, type: !55)
!7522 = !DILocalVariable(name: "type", arg: 3, scope: !7516, file: !6501, line: 230, type: !42)
!7523 = !DILocation(line: 229, column: 60, scope: !7516)
!7524 = !DILocation(line: 229, column: 72, scope: !7516)
!7525 = !DILocation(line: 230, column: 15, scope: !7516)
!7526 = !DILocation(line: 230, column: 23, scope: !7516)
!7527 = distinct !DISubprogram(name: "constant_test_bit", scope: !7491, file: !7491, line: 204, type: !7528, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7530)
!7528 = !DISubroutineType(types: !7529)
!7529 = !{!1425, !477, !7447}
!7530 = !{!7531, !7532}
!7531 = !DILocalVariable(name: "nr", arg: 1, scope: !7527, file: !7491, line: 204, type: !477)
!7532 = !DILocalVariable(name: "addr", arg: 2, scope: !7527, file: !7491, line: 204, type: !7447)
!7533 = !DILocation(line: 204, column: 52, scope: !7527)
!7534 = !DILocation(line: 204, column: 86, scope: !7527)
!7535 = !DILocation(line: 206, column: 19, scope: !7527)
!7536 = !DILocation(line: 206, column: 22, scope: !7527)
!7537 = !DILocation(line: 206, column: 15, scope: !7527)
!7538 = !DILocation(line: 207, column: 4, scope: !7527)
!7539 = !DILocation(line: 207, column: 9, scope: !7527)
!7540 = !DILocation(line: 207, column: 12, scope: !7527)
!7541 = !DILocation(line: 206, column: 44, scope: !7527)
!7542 = !DILocation(line: 207, column: 37, scope: !7527)
!7543 = !DILocation(line: 206, column: 2, scope: !7527)
!7544 = distinct !DISubprogram(name: "variable_test_bit", scope: !7491, file: !7491, line: 224, type: !7528, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7545)
!7545 = !{!7546, !7547, !7548}
!7546 = !DILocalVariable(name: "nr", arg: 1, scope: !7544, file: !7491, line: 224, type: !477)
!7547 = !DILocalVariable(name: "addr", arg: 2, scope: !7544, file: !7491, line: 224, type: !7447)
!7548 = !DILocalVariable(name: "oldbit", scope: !7544, file: !7491, line: 226, type: !1425)
!7549 = !DILocation(line: 224, column: 52, scope: !7544)
!7550 = !DILocation(line: 224, column: 86, scope: !7544)
!7551 = !DILocation(line: 226, column: 2, scope: !7544)
!7552 = !DILocation(line: 226, column: 7, scope: !7544)
!7553 = !DILocation(line: 231, column: 33, scope: !7544)
!7554 = !DILocation(line: 231, column: 46, scope: !7544)
!7555 = !DILocation(line: 228, column: 2, scope: !7544)
!7556 = !{i64 2148020802, i64 2148020876}
!7557 = !DILocation(line: 233, column: 9, scope: !7544)
!7558 = !DILocation(line: 234, column: 1, scope: !7544)
!7559 = !DILocation(line: 233, column: 2, scope: !7544)
!7560 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !371, file: !371, line: 140, type: !7561, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7563)
!7561 = !DISubroutineType(types: !7562)
!7562 = !{null, !7, !7}
!7563 = !{!7564, !7565}
!7564 = !DILocalVariable(name: "cpu", arg: 1, scope: !7560, file: !371, line: 140, type: !7)
!7565 = !DILocalVariable(name: "bits", arg: 2, scope: !7560, file: !371, line: 140, type: !7)
!7566 = !DILocation(line: 140, column: 60, scope: !7560)
!7567 = !DILocation(line: 140, column: 78, scope: !7560)
!7568 = !DILocation(line: 145, column: 1, scope: !7560)
!7569 = !DISubprogram(name: "tick_oneshot_mode_active", scope: !6269, file: !6269, line: 108, type: !4508, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7570 = distinct !DISubprogram(name: "find_first_bit", scope: !7571, file: !7571, line: 200, type: !7572, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7574)
!7571 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!7572 = !DISubroutineType(types: !7573)
!7573 = !{!59, !6676, !59}
!7574 = !{!7575, !7576, !7577}
!7575 = !DILocalVariable(name: "addr", arg: 1, scope: !7570, file: !7571, line: 200, type: !6676)
!7576 = !DILocalVariable(name: "size", arg: 2, scope: !7570, file: !7571, line: 200, type: !59)
!7577 = !DILocalVariable(name: "val", scope: !7578, file: !7571, line: 203, type: !59)
!7578 = distinct !DILexicalBlock(scope: !7579, file: !7571, line: 202, column: 31)
!7579 = distinct !DILexicalBlock(scope: !7570, file: !7571, line: 202, column: 6)
!7580 = !DILocation(line: 200, column: 51, scope: !7570)
!7581 = !DILocation(line: 200, column: 71, scope: !7570)
!7582 = !DILocation(line: 202, column: 6, scope: !7579)
!7583 = !DILocation(line: 202, column: 6, scope: !7570)
!7584 = !DILocation(line: 203, column: 3, scope: !7578)
!7585 = !DILocation(line: 203, column: 17, scope: !7578)
!7586 = !DILocation(line: 203, column: 24, scope: !7578)
!7587 = !DILocation(line: 203, column: 23, scope: !7578)
!7588 = !DILocation(line: 203, column: 31, scope: !7578)
!7589 = !DILocation(line: 203, column: 29, scope: !7578)
!7590 = !DILocation(line: 205, column: 10, scope: !7578)
!7591 = !DILocation(line: 205, column: 16, scope: !7578)
!7592 = !DILocation(line: 205, column: 29, scope: !7578)
!7593 = !DILocation(line: 205, column: 3, scope: !7578)
!7594 = !DILocation(line: 206, column: 2, scope: !7579)
!7595 = !DILocation(line: 208, column: 25, scope: !7570)
!7596 = !DILocation(line: 208, column: 31, scope: !7570)
!7597 = !DILocation(line: 208, column: 9, scope: !7570)
!7598 = !DILocation(line: 208, column: 2, scope: !7570)
!7599 = !DILocation(line: 209, column: 1, scope: !7570)
!7600 = distinct !DISubprogram(name: "variable__ffs", scope: !7491, file: !7491, line: 250, type: !7601, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7603)
!7601 = !DISubroutineType(types: !7602)
!7602 = !{!59, !59}
!7603 = !{!7604}
!7604 = !DILocalVariable(name: "word", arg: 1, scope: !7600, file: !7491, line: 250, type: !59)
!7605 = !DILocation(line: 250, column: 66, scope: !7600)
!7606 = !DILocation(line: 254, column: 11, scope: !7600)
!7607 = !DILocation(line: 252, column: 2, scope: !7600)
!7608 = !{i64 515877}
!7609 = !DILocation(line: 255, column: 9, scope: !7600)
!7610 = !DILocation(line: 255, column: 2, scope: !7600)
!7611 = !DISubprogram(name: "_find_first_bit", scope: !7571, file: !7571, line: 21, type: !7572, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7612 = distinct !DISubprogram(name: "raw_atomic_read", scope: !7613, file: !7613, line: 442, type: !7614, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7618)
!7613 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7614 = !DISubroutineType(types: !7615)
!7615 = !{!42, !7616}
!7616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7617, size: 64)
!7617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!7618 = !{!7619}
!7619 = !DILocalVariable(name: "v", arg: 1, scope: !7612, file: !7613, line: 442, type: !7616)
!7620 = !DILocation(line: 442, column: 33, scope: !7612)
!7621 = !DILocation(line: 444, column: 26, scope: !7612)
!7622 = !DILocation(line: 444, column: 9, scope: !7612)
!7623 = !DILocation(line: 444, column: 2, scope: !7612)
!7624 = distinct !DISubprogram(name: "arch_atomic_read", scope: !7625, file: !7625, line: 17, type: !7614, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7626)
!7625 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7626 = !{!7627}
!7627 = !DILocalVariable(name: "v", arg: 1, scope: !7624, file: !7625, line: 17, type: !7616)
!7628 = !DILocation(line: 17, column: 61, scope: !7624)
!7629 = !DILocation(line: 23, column: 9, scope: !7624)
!7630 = !DILocation(line: 23, column: 2, scope: !7624)
!7631 = distinct !DISubprogram(name: "static_key_false", scope: !4462, file: !4462, line: 205, type: !7632, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7635)
!7632 = !DISubroutineType(types: !7633)
!7633 = !{!1425, !7634}
!7634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!7635 = !{!7636}
!7636 = !DILocalVariable(name: "key", arg: 1, scope: !7631, file: !4462, line: 205, type: !7634)
!7637 = !DILocation(line: 205, column: 65, scope: !7631)
!7638 = !DILocation(line: 207, column: 28, scope: !7631)
!7639 = !DILocation(line: 207, column: 9, scope: !7631)
!7640 = !DILocation(line: 207, column: 2, scope: !7631)
!7641 = distinct !DISubprogram(name: "cpu_online", scope: !371, file: !371, line: 1080, type: !7642, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7644)
!7642 = !DISubroutineType(types: !7643)
!7643 = !{!1425, !7}
!7644 = !{!7645}
!7645 = !DILocalVariable(name: "cpu", arg: 1, scope: !7641, file: !371, line: 1080, type: !7)
!7646 = !DILocation(line: 1080, column: 44, scope: !7641)
!7647 = !DILocation(line: 1082, column: 26, scope: !7641)
!7648 = !DILocation(line: 1082, column: 9, scope: !7641)
!7649 = !DILocation(line: 1082, column: 2, scope: !7641)
!7650 = distinct !DISubprogram(name: "arch_static_branch", scope: !7651, file: !7651, line: 25, type: !7652, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !7654)
!7651 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!7652 = !DISubroutineType(types: !7653)
!7653 = !{!1425, !7634, !1425}
!7654 = !{!7655, !7656, !7657}
!7655 = !DILocalVariable(name: "key", arg: 1, scope: !7650, file: !7651, line: 25, type: !7634)
!7656 = !DILocalVariable(name: "branch", arg: 2, scope: !7650, file: !7651, line: 25, type: !1425)
!7657 = !DILabel(scope: !7650, name: "l_yes", file: !7651, line: 33)
!7658 = !DILocation(line: 25, column: 67, scope: !7650)
!7659 = !DILocation(line: 25, column: 77, scope: !7650)
!7660 = !DILocation(line: 30, column: 13, scope: !7650)
!7661 = !DILocation(line: 30, column: 28, scope: !7650)
!7662 = !DILocation(line: 30, column: 26, scope: !7650)
!7663 = !DILocation(line: 27, column: 2, scope: !7650)
!7664 = !{i64 1558831, i64 1558875, i64 2149043558, i64 2149043579, i64 2149043605, i64 2149043638, i64 2149043672, i64 2149043696}
!7665 = !DILocation(line: 32, column: 2, scope: !7650)
!7666 = !DILocation(line: 33, column: 1, scope: !7650)
!7667 = !DILocation(line: 34, column: 2, scope: !7650)
!7668 = !DILocation(line: 35, column: 1, scope: !7650)
