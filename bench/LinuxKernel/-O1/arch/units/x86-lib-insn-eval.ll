; ModuleID = 'arch/x86/lib/insn-eval.c'
source_filename = "arch/x86/lib/insn-eval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.4 }
%struct.atomic_t = type { i32 }
%union.anon.4 = type { i64 }
%struct.pcpu_hot = type { %union.anon.22 }
%union.anon.22 = type { %struct.anon.23, [16 x i8] }
%struct.anon.23 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.atomic_t }
%struct.insn = type { %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %struct.insn_field, %union.anon.0, %union.anon.1, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.insn_field = type { %union.anon, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { %struct.insn_field }
%union.anon.1 = type { %struct.insn_field }
%struct.desc_struct = type { i16, i16, i32 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.2, i64, i64, %union.anon.3 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.11, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.11 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, i64, i64, %struct.list_head, i32, i64, i64, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i64, [16 x i8], %struct.sched_avg }
%struct.load_weight = type { i64, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i64, i64, i64, %struct.util_est }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i64, i64, i32, i16, i16, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [32 x i8] }
%struct.cpumask = type { [1 x i64] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i64, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i64, ptr, ptr }
%struct.restart_block = type { i64, ptr, %union.anon.13 }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, i32, i32, i32, i64, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.posix_cputimers_work = type { %struct.callback_head, %struct.mutex, i32 }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [1 x i64] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type { ptr, i64, i64, i8 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i64] }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%struct.page_frag = type { ptr, i32, i32 }
%struct.kmap_ctrl = type {}
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.thread_struct = type { [3 x %struct.desc_struct], i64, i16, i16, i16, i16, i64, i64, [4 x ptr], i64, i64, i64, i64, i64, ptr, i64, i8, i32, [40 x i8], %struct.fpu }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.18, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.21 }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i64, i64 }
%union.anon.21 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.anon.5, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.5 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.6, i32, ptr }
%union.anon.6 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ldt_struct = type { ptr, i32, i32 }

@pt_regoff = internal constant [16 x i32] [i32 80, i32 88, i32 96, i32 40, i32 152, i32 32, i32 104, i32 112, i32 72, i32 64, i32 56, i32 48, i32 24, i32 16, i32 8, i32 0], align 16, !dbg !0
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@get_regno._rs = internal global %struct.ratelimit_state { %struct.raw_spinlock zeroinitializer, i32 5000, i32 10, i32 0, i32 0, i64 0, i64 0 }, align 8, !dbg !4057
@__func__.get_regno = private unnamed_addr constant [10 x i8] c"get_regno\00", align 1, !dbg !4128
@.str = private unnamed_addr constant [35 x i8] c"\013insn: invalid register type: %d\0A\00", align 1, !dbg !4133
@get_regno.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !4138
@.str.1 = private unnamed_addr constant [48 x i8] c"decoded an instruction with an invalid register\00", align 1, !dbg !4140
@.str.2 = private unnamed_addr constant [25 x i8] c"arch/x86/lib/insn-eval.c\00", align 1, !dbg !4145
@get_reg_offset_16.regoff1 = internal constant [8 x i32] [i32 40, i32 40, i32 32, i32 32, i32 104, i32 112, i32 32, i32 40], align 16, !dbg !4150
@get_reg_offset_16.regoff2 = internal constant [8 x i32] [i32 104, i32 112, i32 104, i32 112, i32 -33, i32 -33, i32 -33, i32 -33], align 16, !dbg !4161
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4163

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @insn_has_rep_prefix(ptr noundef %insn) #0 align 16 !dbg !4180 {
entry:
  %retval = alloca i1, align 1
  %insn.addr = alloca ptr, align 8
  %p = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4184, metadata !DIExpression()), !dbg !4187
  call void @llvm.lifetime.start.p0(i64 1, ptr %p) #15, !dbg !4188
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4185, metadata !DIExpression()), !dbg !4189
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4190
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4186, metadata !DIExpression()), !dbg !4191
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !4192
  %call = call i32 @insn_get_prefixes(ptr noundef %0) #16, !dbg !4193
  store i32 0, ptr %i, align 4, !dbg !4194
  br label %for.cond, !dbg !4194

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !4196
  %conv = sext i32 %1 to i64, !dbg !4196
  %cmp = icmp ult i64 %conv, 4, !dbg !4196
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4196

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !4196
  %prefixes = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 0, !dbg !4196
  %3 = getelementptr inbounds %struct.insn_field, ptr %prefixes, i32 0, i32 0, !dbg !4196
  %4 = load i32, ptr %i, align 4, !dbg !4196
  %idxprom = sext i32 %4 to i64, !dbg !4196
  %arrayidx = getelementptr [4 x i8], ptr %3, i64 0, i64 %idxprom, !dbg !4196
  %5 = load i8, ptr %arrayidx, align 1, !dbg !4196
  store i8 %5, ptr %p, align 1, !dbg !4196
  %conv2 = zext i8 %5 to i32, !dbg !4196
  %cmp3 = icmp ne i32 %conv2, 0, !dbg !4196
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ], !dbg !4198
  br i1 %6, label %for.body, label %for.end, !dbg !4194

for.body:                                         ; preds = %land.end
  %7 = load i8, ptr %p, align 1, !dbg !4199
  %conv5 = zext i8 %7 to i32, !dbg !4199
  %cmp6 = icmp eq i32 %conv5, 242, !dbg !4202
  br i1 %cmp6, label %if.then, label %lor.lhs.false, !dbg !4203

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i8, ptr %p, align 1, !dbg !4204
  %conv8 = zext i8 %8 to i32, !dbg !4204
  %cmp9 = icmp eq i32 %conv8, 243, !dbg !4205
  br i1 %cmp9, label %if.then, label %if.end, !dbg !4206

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i1 true, ptr %retval, align 1, !dbg !4207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4207

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc, !dbg !4208

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !dbg !4196
  %inc = add i32 %9, 1, !dbg !4196
  store i32 %inc, ptr %i, align 4, !dbg !4196
  br label %for.cond, !dbg !4196, !llvm.loop !4209

for.end:                                          ; preds = %land.end
  store i1 false, ptr %retval, align 1, !dbg !4213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4213

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !4214
  call void @llvm.lifetime.end.p0(i64 1, ptr %p) #15, !dbg !4214
  %10 = load i1, ptr %retval, align 1, !dbg !4214
  ret i1 %10, !dbg !4214
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4215 dso_local i32 @insn_get_prefixes(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pt_regs_offset(ptr noundef %regs, i32 noundef %regno) #0 align 16 !dbg !4218 {
entry:
  %retval = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %regno.addr = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4222, metadata !DIExpression()), !dbg !4224
  store i32 %regno, ptr %regno.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regno.addr, metadata !4223, metadata !DIExpression()), !dbg !4225
  %0 = load i32, ptr %regno.addr, align 4, !dbg !4226
  %conv = zext i32 %0 to i64, !dbg !4228
  %cmp = icmp ult i64 %conv, 16, !dbg !4229
  br i1 %cmp, label %if.then, label %if.end, !dbg !4230

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %regno.addr, align 4, !dbg !4231
  %idxprom = sext i32 %1 to i64, !dbg !4232
  %arrayidx = getelementptr [16 x i32], ptr @pt_regoff, i64 0, i64 %idxprom, !dbg !4232
  %2 = load i32, ptr %arrayidx, align 4, !dbg !4232
  store i32 %2, ptr %retval, align 4, !dbg !4233
  br label %return, !dbg !4233

if.end:                                           ; preds = %entry
  store i32 -33, ptr %retval, align 4, !dbg !4234
  br label %return, !dbg !4234

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !4235
  ret i32 %3, !dbg !4235
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @insn_get_seg_base(ptr noundef %regs, i32 noundef %seg_reg_idx) #0 align 16 !dbg !4236 {
entry:
  %retval = alloca i64, align 8
  %regs.addr = alloca ptr, align 8
  %seg_reg_idx.addr = alloca i32, align 4
  %desc = alloca %struct.desc_struct, align 1
  %sel = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  %base = alloca i64, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4240, metadata !DIExpression()), !dbg !4247
  store i32 %seg_reg_idx, ptr %seg_reg_idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg_reg_idx.addr, metadata !4241, metadata !DIExpression()), !dbg !4248
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #15, !dbg !4249
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4242, metadata !DIExpression()), !dbg !4250
  call void @llvm.lifetime.start.p0(i64 2, ptr %sel) #15, !dbg !4251
  call void @llvm.dbg.declare(metadata ptr %sel, metadata !4243, metadata !DIExpression()), !dbg !4252
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4253
  %1 = load i32, ptr %seg_reg_idx.addr, align 4, !dbg !4254
  %call = call signext i16 @get_segment_selector(ptr noundef %0, i32 noundef %1) #16, !dbg !4255
  store i16 %call, ptr %sel, align 2, !dbg !4256
  %2 = load i16, ptr %sel, align 2, !dbg !4257
  %conv = sext i16 %2 to i32, !dbg !4257
  %cmp = icmp slt i32 %conv, 0, !dbg !4259
  br i1 %cmp, label %if.then, label %if.end, !dbg !4260

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !4261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4261

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !4262
  %call2 = call i32 @v8086_mode(ptr noundef %3) #16, !dbg !4264
  %tobool = icmp ne i32 %call2, 0, !dbg !4264
  br i1 %tobool, label %if.then3, label %if.end6, !dbg !4265

if.then3:                                         ; preds = %if.end
  %4 = load i16, ptr %sel, align 2, !dbg !4266
  %conv4 = sext i16 %4 to i32, !dbg !4266
  %shl = shl i32 %conv4, 4, !dbg !4267
  %conv5 = sext i32 %shl to i64, !dbg !4268
  store i64 %conv5, ptr %retval, align 8, !dbg !4269
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4269

if.end6:                                          ; preds = %if.end
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !4270
  %call7 = call zeroext i1 @any_64bit_mode(ptr noundef %5) #16, !dbg !4271
  br i1 %call7, label %if.then8, label %if.end26, !dbg !4272

if.then8:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #15, !dbg !4273
  call void @llvm.dbg.declare(metadata ptr %base, metadata !4244, metadata !DIExpression()), !dbg !4274
  %6 = load i32, ptr %seg_reg_idx.addr, align 4, !dbg !4275
  %cmp9 = icmp eq i32 %6, 6, !dbg !4277
  br i1 %cmp9, label %if.then11, label %if.else, !dbg !4278

if.then11:                                        ; preds = %if.then8
  %call12 = call i64 @native_read_msr(i32 noundef -1073741568) #16, !dbg !4279
  store i64 %call12, ptr %base, align 8, !dbg !4279
  br label %if.end25, !dbg !4281

if.else:                                          ; preds = %if.then8
  %7 = load i32, ptr %seg_reg_idx.addr, align 4, !dbg !4282
  %cmp13 = icmp eq i32 %7, 7, !dbg !4284
  br i1 %cmp13, label %if.then15, label %if.else23, !dbg !4285

if.then15:                                        ; preds = %if.else
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !4286
  %call16 = call i32 @user_mode(ptr noundef %8) #16, !dbg !4289
  %tobool17 = icmp ne i32 %call16, 0, !dbg !4289
  br i1 %tobool17, label %if.then18, label %if.else20, !dbg !4290

if.then18:                                        ; preds = %if.then15
  %call19 = call i64 @native_read_msr(i32 noundef -1073741566) #16, !dbg !4291
  store i64 %call19, ptr %base, align 8, !dbg !4291
  br label %if.end22, !dbg !4291

if.else20:                                        ; preds = %if.then15
  %call21 = call i64 @native_read_msr(i32 noundef -1073741567) #16, !dbg !4292
  store i64 %call21, ptr %base, align 8, !dbg !4292
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then18
  br label %if.end24, !dbg !4293

if.else23:                                        ; preds = %if.else
  store i64 0, ptr %base, align 8, !dbg !4294
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %if.end22
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then11
  %9 = load i64, ptr %base, align 8, !dbg !4296
  store i64 %9, ptr %retval, align 8, !dbg !4297
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #15, !dbg !4298
  br label %cleanup

if.end26:                                         ; preds = %if.end6
  %10 = load i16, ptr %sel, align 2, !dbg !4299
  %tobool27 = icmp ne i16 %10, 0, !dbg !4299
  br i1 %tobool27, label %if.end29, label %if.then28, !dbg !4301

if.then28:                                        ; preds = %if.end26
  store i64 -1, ptr %retval, align 8, !dbg !4302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4302

if.end29:                                         ; preds = %if.end26
  %11 = load i16, ptr %sel, align 2, !dbg !4303
  %call30 = call zeroext i1 @get_desc(ptr noundef %desc, i16 noundef zeroext %11) #16, !dbg !4305
  br i1 %call30, label %if.end32, label %if.then31, !dbg !4306

if.then31:                                        ; preds = %if.end29
  store i64 -1, ptr %retval, align 8, !dbg !4307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4307

if.end32:                                         ; preds = %if.end29
  %call33 = call i64 @get_desc_base(ptr noundef %desc) #16, !dbg !4308
  store i64 %call33, ptr %retval, align 8, !dbg !4309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4309

cleanup:                                          ; preds = %if.end32, %if.then31, %if.then28, %if.end25, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %sel) #15, !dbg !4310
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #15, !dbg !4310
  %12 = load i64, ptr %retval, align 8, !dbg !4310
  ret i64 %12, !dbg !4310
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal signext i16 @get_segment_selector(ptr noundef %regs, i32 noundef %seg_reg_idx) #0 align 16 !dbg !4311 {
entry:
  %retval = alloca i16, align 2
  %regs.addr = alloca ptr, align 8
  %seg_reg_idx.addr = alloca i32, align 4
  %sel = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4315, metadata !DIExpression()), !dbg !4318
  store i32 %seg_reg_idx, ptr %seg_reg_idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg_reg_idx.addr, metadata !4316, metadata !DIExpression()), !dbg !4319
  call void @llvm.lifetime.start.p0(i64 2, ptr %sel) #15, !dbg !4320
  call void @llvm.dbg.declare(metadata ptr %sel, metadata !4317, metadata !DIExpression()), !dbg !4321
  %0 = load i32, ptr %seg_reg_idx.addr, align 4, !dbg !4322
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb7
    i32 5, label %sw.bb8
    i32 6, label %sw.bb9
    i32 7, label %sw.bb10
  ], !dbg !4323

sw.bb:                                            ; preds = %entry
  store i16 0, ptr %retval, align 2, !dbg !4324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4324

sw.bb1:                                           ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !4326
  %2 = getelementptr inbounds %struct.pt_regs, ptr %1, i32 0, i32 17, !dbg !4327
  %3 = load i16, ptr %2, align 8, !dbg !4327
  %conv = zext i16 %3 to i32, !dbg !4326
  %and = and i32 %conv, 65535, !dbg !4328
  %conv2 = trunc i32 %and to i16, !dbg !4329
  store i16 %conv2, ptr %retval, align 2, !dbg !4330
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4330

sw.bb3:                                           ; preds = %entry
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !4331
  %5 = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 20, !dbg !4332
  %6 = load i16, ptr %5, align 8, !dbg !4332
  %conv4 = zext i16 %6 to i32, !dbg !4331
  %and5 = and i32 %conv4, 65535, !dbg !4333
  %conv6 = trunc i32 %and5 to i16, !dbg !4334
  store i16 %conv6, ptr %retval, align 2, !dbg !4335
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4335

sw.bb7:                                           ; preds = %entry
  %7 = call i16 asm "mov %ds,$0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4336, !srcloc !4337
  store i16 %7, ptr %sel, align 2, !dbg !4336
  %8 = load i16, ptr %sel, align 2, !dbg !4338
  store i16 %8, ptr %retval, align 2, !dbg !4339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4339

sw.bb8:                                           ; preds = %entry
  %9 = call i16 asm "mov %es,$0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4340, !srcloc !4341
  store i16 %9, ptr %sel, align 2, !dbg !4340
  %10 = load i16, ptr %sel, align 2, !dbg !4342
  store i16 %10, ptr %retval, align 2, !dbg !4343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4343

sw.bb9:                                           ; preds = %entry
  %11 = call i16 asm "mov %fs,$0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4344, !srcloc !4345
  store i16 %11, ptr %sel, align 2, !dbg !4344
  %12 = load i16, ptr %sel, align 2, !dbg !4346
  store i16 %12, ptr %retval, align 2, !dbg !4347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4347

sw.bb10:                                          ; preds = %entry
  %13 = call i16 asm "mov %gs,$0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !4348, !srcloc !4349
  store i16 %13, ptr %sel, align 2, !dbg !4348
  %14 = load i16, ptr %sel, align 2, !dbg !4350
  store i16 %14, ptr %retval, align 2, !dbg !4351
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4351

sw.default:                                       ; preds = %entry
  store i16 -22, ptr %retval, align 2, !dbg !4352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4352

cleanup:                                          ; preds = %sw.default, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb3, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end.p0(i64 2, ptr %sel) #15, !dbg !4353
  %15 = load i16, ptr %retval, align 2, !dbg !4353
  ret i16 %15, !dbg !4353
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v8086_mode(ptr noundef %regs) #4 align 16 !dbg !4354 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4358, metadata !DIExpression()), !dbg !4359
  ret i32 0, !dbg !4360
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @any_64bit_mode(ptr noundef %regs) #5 align 16 !dbg !4361 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4365, metadata !DIExpression()), !dbg !4366
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4367
  %call = call i32 @user_mode(ptr noundef %0) #16, !dbg !4368
  %tobool = icmp ne i32 %call, 0, !dbg !4368
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !4369

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !4370
  %call1 = call zeroext i1 @user_64bit_mode(ptr noundef %1) #16, !dbg !4371
  br label %lor.end, !dbg !4369

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %2, !dbg !4372
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #5 align 16 !dbg !4373 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !4378, metadata !DIExpression()), !dbg !4380
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !4381
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4379, metadata !DIExpression()), !dbg !4382
  %0 = load i32, ptr %msr.addr, align 4, !dbg !4383
  %call = call i64 @__rdmsr(i32 noundef %0) #16, !dbg !4384
  store i64 %call, ptr %val, align 8, !dbg !4385
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #16, !dbg !4386
  br i1 %call1, label %if.then, label %if.end, !dbg !4388

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !4389
  %2 = load i64, ptr %val, align 8, !dbg !4390
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #16, !dbg !4391
  br label %if.end, !dbg !4391

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !4392
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !4393
  ret i64 %3, !dbg !4394
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @user_mode(ptr noundef %regs) #4 align 16 !dbg !4395 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4397, metadata !DIExpression()), !dbg !4398
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4399
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !4400
  %2 = load i16, ptr %1, align 8, !dbg !4400
  %conv = zext i16 %2 to i32, !dbg !4399
  %and = and i32 %conv, 3, !dbg !4401
  %tobool = icmp ne i32 %and, 0, !dbg !4402
  %lnot = xor i1 %tobool, true, !dbg !4402
  %lnot1 = xor i1 %lnot, true, !dbg !4403
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4403
  ret i32 %lnot.ext, !dbg !4404
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @get_desc(ptr noundef %out, i16 noundef zeroext %sel) #0 align 16 !dbg !4405 {
entry:
  %retval = alloca i1, align 1
  %out.addr = alloca ptr, align 8
  %sel.addr = alloca i16, align 2
  %gdt_desc = alloca %struct.desc_ptr, align 1
  %desc_base = alloca i64, align 8
  %success = alloca i8, align 1
  %ldt = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %out, ptr %out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %out.addr, metadata !4409, metadata !DIExpression()), !dbg !4421
  store i16 %sel, ptr %sel.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %sel.addr, metadata !4410, metadata !DIExpression()), !dbg !4422
  call void @llvm.lifetime.start.p0(i64 10, ptr %gdt_desc) #15, !dbg !4423
  call void @llvm.dbg.declare(metadata ptr %gdt_desc, metadata !4411, metadata !DIExpression()), !dbg !4424
  call void @llvm.memset.p0.i64(ptr align 1 %gdt_desc, i8 0, i64 10, i1 false), !dbg !4424
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_base) #15, !dbg !4425
  call void @llvm.dbg.declare(metadata ptr %desc_base, metadata !4416, metadata !DIExpression()), !dbg !4426
  %0 = load i16, ptr %sel.addr, align 2, !dbg !4427
  %conv = zext i16 %0 to i32, !dbg !4427
  %and = and i32 %conv, 4, !dbg !4428
  %cmp = icmp eq i32 %and, 4, !dbg !4429
  br i1 %cmp, label %if.then, label %if.end17, !dbg !4430

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #15, !dbg !4431
  call void @llvm.dbg.declare(metadata ptr %success, metadata !4417, metadata !DIExpression()), !dbg !4432
  store i8 0, ptr %success, align 1, !dbg !4432
  call void @llvm.lifetime.start.p0(i64 8, ptr %ldt) #15, !dbg !4433
  call void @llvm.dbg.declare(metadata ptr %ldt, metadata !4420, metadata !DIExpression()), !dbg !4434
  %1 = load i16, ptr %sel.addr, align 2, !dbg !4435
  %conv2 = zext i16 %1 to i32, !dbg !4435
  %shr = ashr i32 %conv2, 3, !dbg !4435
  %conv3 = trunc i32 %shr to i16, !dbg !4435
  store i16 %conv3, ptr %sel.addr, align 2, !dbg !4435
  %call = call ptr @get_current() #16, !dbg !4436
  %active_mm = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 50, !dbg !4437
  %2 = load ptr, ptr %active_mm, align 8, !dbg !4437
  %3 = getelementptr inbounds %struct.mm_struct, ptr %2, i32 0, i32 0, !dbg !4438
  %context = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 44, !dbg !4438
  %lock = getelementptr inbounds %struct.mm_context_t, ptr %context, i32 0, i32 6, !dbg !4439
  call void @mutex_lock(ptr noundef %lock) #16, !dbg !4440
  %call4 = call ptr @get_current() #16, !dbg !4441
  %active_mm5 = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 50, !dbg !4442
  %4 = load ptr, ptr %active_mm5, align 8, !dbg !4442
  %5 = getelementptr inbounds %struct.mm_struct, ptr %4, i32 0, i32 0, !dbg !4443
  %context6 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 44, !dbg !4443
  %ldt7 = getelementptr inbounds %struct.mm_context_t, ptr %context6, i32 0, i32 4, !dbg !4444
  %6 = load ptr, ptr %ldt7, align 32, !dbg !4444
  store ptr %6, ptr %ldt, align 8, !dbg !4445
  %7 = load ptr, ptr %ldt, align 8, !dbg !4446
  %tobool = icmp ne ptr %7, null, !dbg !4446
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !4448

land.lhs.true:                                    ; preds = %if.then
  %8 = load i16, ptr %sel.addr, align 2, !dbg !4449
  %conv8 = zext i16 %8 to i32, !dbg !4449
  %9 = load ptr, ptr %ldt, align 8, !dbg !4450
  %nr_entries = getelementptr inbounds %struct.ldt_struct, ptr %9, i32 0, i32 1, !dbg !4451
  %10 = load i32, ptr %nr_entries, align 8, !dbg !4451
  %cmp9 = icmp ult i32 %conv8, %10, !dbg !4452
  br i1 %cmp9, label %if.then11, label %if.end, !dbg !4453

if.then11:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %out.addr, align 8, !dbg !4454
  %12 = load ptr, ptr %ldt, align 8, !dbg !4456
  %entries = getelementptr inbounds %struct.ldt_struct, ptr %12, i32 0, i32 0, !dbg !4457
  %13 = load ptr, ptr %entries, align 8, !dbg !4457
  %14 = load i16, ptr %sel.addr, align 2, !dbg !4458
  %idxprom = zext i16 %14 to i64, !dbg !4456
  %arrayidx = getelementptr %struct.desc_struct, ptr %13, i64 %idxprom, !dbg !4456
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %11, ptr align 1 %arrayidx, i64 8, i1 false), !dbg !4456
  store i8 1, ptr %success, align 1, !dbg !4459
  br label %if.end, !dbg !4460

if.end:                                           ; preds = %if.then11, %land.lhs.true, %if.then
  %call12 = call ptr @get_current() #16, !dbg !4461
  %active_mm13 = getelementptr inbounds %struct.task_struct, ptr %call12, i32 0, i32 50, !dbg !4462
  %15 = load ptr, ptr %active_mm13, align 8, !dbg !4462
  %16 = getelementptr inbounds %struct.mm_struct, ptr %15, i32 0, i32 0, !dbg !4463
  %context14 = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 44, !dbg !4463
  %lock15 = getelementptr inbounds %struct.mm_context_t, ptr %context14, i32 0, i32 6, !dbg !4464
  call void @mutex_unlock(ptr noundef %lock15) #16, !dbg !4465
  %17 = load i8, ptr %success, align 1, !dbg !4466, !range !4467, !noundef !519
  %tobool16 = trunc i8 %17 to i1, !dbg !4466
  store i1 %tobool16, ptr %retval, align 1, !dbg !4468
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ldt) #15, !dbg !4469
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #15, !dbg !4469
  br label %cleanup

if.end17:                                         ; preds = %entry
  call void @native_store_gdt(ptr noundef %gdt_desc) #16, !dbg !4470
  %18 = load i16, ptr %sel.addr, align 2, !dbg !4471
  %conv18 = zext i16 %18 to i32, !dbg !4471
  %and19 = and i32 %conv18, -8, !dbg !4472
  %conv20 = sext i32 %and19 to i64, !dbg !4471
  store i64 %conv20, ptr %desc_base, align 8, !dbg !4473
  %19 = load i64, ptr %desc_base, align 8, !dbg !4474
  %size = getelementptr inbounds %struct.desc_ptr, ptr %gdt_desc, i32 0, i32 0, !dbg !4476
  %20 = load i16, ptr %size, align 1, !dbg !4476
  %conv21 = zext i16 %20 to i64, !dbg !4477
  %cmp22 = icmp ugt i64 %19, %conv21, !dbg !4478
  br i1 %cmp22, label %if.then24, label %if.end25, !dbg !4479

if.then24:                                        ; preds = %if.end17
  store i1 false, ptr %retval, align 1, !dbg !4480
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4480

if.end25:                                         ; preds = %if.end17
  %21 = load ptr, ptr %out.addr, align 8, !dbg !4481
  %address = getelementptr inbounds %struct.desc_ptr, ptr %gdt_desc, i32 0, i32 1, !dbg !4482
  %22 = load i64, ptr %address, align 1, !dbg !4482
  %23 = load i64, ptr %desc_base, align 8, !dbg !4483
  %add = add i64 %22, %23, !dbg !4484
  %24 = inttoptr i64 %add to ptr, !dbg !4485
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %24, i64 8, i1 false), !dbg !4486
  store i1 true, ptr %retval, align 1, !dbg !4487
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4487

cleanup:                                          ; preds = %if.end25, %if.then24, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_base) #15, !dbg !4488
  call void @llvm.lifetime.end.p0(i64 10, ptr %gdt_desc) #15, !dbg !4488
  %25 = load i1, ptr %retval, align 1, !dbg !4488
  ret i1 %25, !dbg !4488
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_desc_base(ptr noundef %desc) #5 align 16 !dbg !4489 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4496, metadata !DIExpression()), !dbg !4497
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !4498
  %base0 = getelementptr inbounds %struct.desc_struct, ptr %0, i32 0, i32 1, !dbg !4499
  %1 = load i16, ptr %base0, align 1, !dbg !4499
  %conv = zext i16 %1 to i32, !dbg !4498
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !4500
  %base1 = getelementptr inbounds %struct.desc_struct, ptr %2, i32 0, i32 2, !dbg !4501
  %bf.load = load i32, ptr %base1, align 1, !dbg !4501
  %bf.clear = and i32 %bf.load, 255, !dbg !4501
  %bf.cast = trunc i32 %bf.clear to i16, !dbg !4501
  %conv1 = zext i16 %bf.cast to i32, !dbg !4502
  %shl = shl i32 %conv1, 16, !dbg !4503
  %or = or i32 %conv, %shl, !dbg !4504
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !4505
  %base2 = getelementptr inbounds %struct.desc_struct, ptr %3, i32 0, i32 2, !dbg !4506
  %bf.load2 = load i32, ptr %base2, align 1, !dbg !4506
  %bf.lshr = lshr i32 %bf.load2, 24, !dbg !4506
  %bf.cast3 = trunc i32 %bf.lshr to i16, !dbg !4506
  %conv4 = zext i16 %bf.cast3 to i32, !dbg !4507
  %shl5 = shl i32 %conv4, 24, !dbg !4508
  %or6 = or i32 %or, %shl5, !dbg !4509
  %conv7 = zext i32 %or6 to i64, !dbg !4510
  ret i64 %conv7, !dbg !4511
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_get_code_seg_params(ptr noundef %regs) #0 align 16 !dbg !4512 {
entry:
  %retval = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %desc = alloca %struct.desc_struct, align 1
  %sel = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4514, metadata !DIExpression()), !dbg !4517
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #15, !dbg !4518
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4515, metadata !DIExpression()), !dbg !4519
  call void @llvm.lifetime.start.p0(i64 2, ptr %sel) #15, !dbg !4520
  call void @llvm.dbg.declare(metadata ptr %sel, metadata !4516, metadata !DIExpression()), !dbg !4521
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4522
  %call = call i32 @v8086_mode(ptr noundef %0) #16, !dbg !4524
  %tobool = icmp ne i32 %call, 0, !dbg !4524
  br i1 %tobool, label %if.then, label %if.end, !dbg !4525

if.then:                                          ; preds = %entry
  store i32 34, ptr %retval, align 4, !dbg !4526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4526

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !4527
  %call1 = call signext i16 @get_segment_selector(ptr noundef %1, i32 noundef 2) #16, !dbg !4528
  store i16 %call1, ptr %sel, align 2, !dbg !4529
  %2 = load i16, ptr %sel, align 2, !dbg !4530
  %conv = sext i16 %2 to i32, !dbg !4530
  %cmp = icmp slt i32 %conv, 0, !dbg !4532
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !4533

if.then3:                                         ; preds = %if.end
  %3 = load i16, ptr %sel, align 2, !dbg !4534
  %conv4 = sext i16 %3 to i32, !dbg !4534
  store i32 %conv4, ptr %retval, align 4, !dbg !4535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4535

if.end5:                                          ; preds = %if.end
  %4 = load i16, ptr %sel, align 2, !dbg !4536
  %call6 = call zeroext i1 @get_desc(ptr noundef %desc, i16 noundef zeroext %4) #16, !dbg !4538
  br i1 %call6, label %if.end8, label %if.then7, !dbg !4539

if.then7:                                         ; preds = %if.end5
  store i32 -22, ptr %retval, align 4, !dbg !4540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4540

if.end8:                                          ; preds = %if.end5
  %type = getelementptr inbounds %struct.desc_struct, ptr %desc, i32 0, i32 2, !dbg !4541
  %bf.load = load i32, ptr %type, align 1, !dbg !4541
  %bf.lshr = lshr i32 %bf.load, 8, !dbg !4541
  %bf.clear = and i32 %bf.lshr, 15, !dbg !4541
  %bf.cast = trunc i32 %bf.clear to i16, !dbg !4541
  %conv9 = zext i16 %bf.cast to i64, !dbg !4543
  %and = and i64 %conv9, 8, !dbg !4544
  %tobool10 = icmp ne i64 %and, 0, !dbg !4544
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !4545

if.then11:                                        ; preds = %if.end8
  store i32 -22, ptr %retval, align 4, !dbg !4546
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4546

if.end12:                                         ; preds = %if.end8
  %l = getelementptr inbounds %struct.desc_struct, ptr %desc, i32 0, i32 2, !dbg !4547
  %bf.load13 = load i32, ptr %l, align 1, !dbg !4547
  %bf.lshr14 = lshr i32 %bf.load13, 21, !dbg !4547
  %bf.clear15 = and i32 %bf.lshr14, 1, !dbg !4547
  %bf.cast16 = trunc i32 %bf.clear15 to i16, !dbg !4547
  %conv17 = zext i16 %bf.cast16 to i32, !dbg !4548
  %shl = shl i32 %conv17, 1, !dbg !4549
  %d = getelementptr inbounds %struct.desc_struct, ptr %desc, i32 0, i32 2, !dbg !4550
  %bf.load18 = load i32, ptr %d, align 1, !dbg !4550
  %bf.lshr19 = lshr i32 %bf.load18, 22, !dbg !4550
  %bf.clear20 = and i32 %bf.lshr19, 1, !dbg !4550
  %bf.cast21 = trunc i32 %bf.clear20 to i16, !dbg !4550
  %conv22 = zext i16 %bf.cast21 to i32, !dbg !4551
  %or = or i32 %shl, %conv22, !dbg !4552
  switch i32 %or, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
    i32 2, label %sw.bb24
    i32 3, label %sw.bb25
  ], !dbg !4553

sw.bb:                                            ; preds = %if.end12
  store i32 34, ptr %retval, align 4, !dbg !4554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4554

sw.bb23:                                          ; preds = %if.end12
  store i32 68, ptr %retval, align 4, !dbg !4556
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4556

sw.bb24:                                          ; preds = %if.end12
  store i32 132, ptr %retval, align 4, !dbg !4557
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4557

sw.bb25:                                          ; preds = %if.end12
  br label %sw.default, !dbg !4557

sw.default:                                       ; preds = %if.end12, %sw.bb25
  store i32 -22, ptr %retval, align 4, !dbg !4558
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4558

cleanup:                                          ; preds = %sw.default, %sw.bb24, %sw.bb23, %sw.bb, %if.then11, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %sel) #15, !dbg !4559
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #15, !dbg !4559
  %5 = load i32, ptr %retval, align 4, !dbg !4559
  ret i32 %5, !dbg !4559
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_get_modrm_rm_off(ptr noundef %insn, ptr noundef %regs) #0 align 16 !dbg !4560 {
entry:
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4564, metadata !DIExpression()), !dbg !4566
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4565, metadata !DIExpression()), !dbg !4567
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !4568
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !4569
  %call = call i32 @get_reg_offset(ptr noundef %0, ptr noundef %1, i32 noundef 0) #16, !dbg !4570
  ret i32 %call, !dbg !4571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_reg_offset(ptr noundef %insn, ptr noundef %regs, i32 noundef %type) #0 align 16 !dbg !4572 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %regno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4576, metadata !DIExpression()), !dbg !4580
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4577, metadata !DIExpression()), !dbg !4581
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4578, metadata !DIExpression()), !dbg !4582
  call void @llvm.lifetime.start.p0(i64 4, ptr %regno) #15, !dbg !4583
  call void @llvm.dbg.declare(metadata ptr %regno, metadata !4579, metadata !DIExpression()), !dbg !4584
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !4585
  %1 = load i32, ptr %type.addr, align 4, !dbg !4586
  %call = call i32 @get_regno(ptr noundef %0, i32 noundef %1) #16, !dbg !4587
  store i32 %call, ptr %regno, align 4, !dbg !4584
  %2 = load i32, ptr %regno, align 4, !dbg !4588
  %cmp = icmp slt i32 %2, 0, !dbg !4590
  br i1 %cmp, label %if.then, label %if.end, !dbg !4591

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %regno, align 4, !dbg !4592
  store i32 %3, ptr %retval, align 4, !dbg !4593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4593

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !4594
  %5 = load i32, ptr %regno, align 4, !dbg !4595
  %call1 = call i32 @pt_regs_offset(ptr noundef %4, i32 noundef %5) #16, !dbg !4596
  store i32 %call1, ptr %retval, align 4, !dbg !4597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4597

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %regno) #15, !dbg !4598
  %6 = load i32, ptr %retval, align 4, !dbg !4598
  ret i32 %6, !dbg !4598
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_get_modrm_reg_off(ptr noundef %insn, ptr noundef %regs) #0 align 16 !dbg !4599 {
entry:
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4601, metadata !DIExpression()), !dbg !4603
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4602, metadata !DIExpression()), !dbg !4604
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !4605
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !4606
  %call = call i32 @get_reg_offset(ptr noundef %0, ptr noundef %1, i32 noundef 1) #16, !dbg !4607
  ret i32 %call, !dbg !4608
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @insn_get_modrm_reg_ptr(ptr noundef %insn, ptr noundef %regs) #0 align 16 !dbg !4609 {
entry:
  %retval = alloca ptr, align 8
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %offset = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4613, metadata !DIExpression()), !dbg !4616
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4614, metadata !DIExpression()), !dbg !4617
  call void @llvm.lifetime.start.p0(i64 4, ptr %offset) #15, !dbg !4618
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !4615, metadata !DIExpression()), !dbg !4619
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !4620
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !4621
  %call = call i32 @insn_get_modrm_reg_off(ptr noundef %0, ptr noundef %1) #16, !dbg !4622
  store i32 %call, ptr %offset, align 4, !dbg !4623
  %2 = load i32, ptr %offset, align 4, !dbg !4624
  %cmp = icmp slt i32 %2, 0, !dbg !4626
  br i1 %cmp, label %if.then, label %if.end, !dbg !4627

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4628
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4628

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !4629
  %4 = load i32, ptr %offset, align 4, !dbg !4630
  %idx.ext = sext i32 %4 to i64, !dbg !4631
  %add.ptr = getelementptr i8, ptr %3, i64 %idx.ext, !dbg !4631
  store ptr %add.ptr, ptr %retval, align 8, !dbg !4632
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4632

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %offset) #15, !dbg !4633
  %5 = load ptr, ptr %retval, align 8, !dbg !4633
  ret ptr %5, !dbg !4633
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @insn_get_addr_ref(ptr noundef %insn, ptr noundef %regs) #0 align 16 !dbg !4634 {
entry:
  %retval = alloca ptr, align 8
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4638, metadata !DIExpression()), !dbg !4640
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4639, metadata !DIExpression()), !dbg !4641
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !4642
  %tobool = icmp ne ptr %0, null, !dbg !4642
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4644

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !4645
  %tobool1 = icmp ne ptr %1, null, !dbg !4645
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4646

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !4647
  br label %return, !dbg !4647

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !4648
  %call = call i32 @insn_get_opcode(ptr noundef %2) #16, !dbg !4650
  %tobool2 = icmp ne i32 %call, 0, !dbg !4650
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4651

if.then3:                                         ; preds = %if.end
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !4652
  br label %return, !dbg !4652

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !4653
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %3, i32 0, i32 12, !dbg !4654
  %4 = load i8, ptr %addr_bytes, align 1, !dbg !4654
  %conv = zext i8 %4 to i32, !dbg !4653
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb6
    i32 8, label %sw.bb8
  ], !dbg !4655

sw.bb:                                            ; preds = %if.end4
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !4656
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !4658
  %call5 = call ptr @get_addr_ref_16(ptr noundef %5, ptr noundef %6) #16, !dbg !4659
  store ptr %call5, ptr %retval, align 8, !dbg !4660
  br label %return, !dbg !4660

sw.bb6:                                           ; preds = %if.end4
  %7 = load ptr, ptr %insn.addr, align 8, !dbg !4661
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !4662
  %call7 = call ptr @get_addr_ref_32(ptr noundef %7, ptr noundef %8) #16, !dbg !4663
  store ptr %call7, ptr %retval, align 8, !dbg !4664
  br label %return, !dbg !4664

sw.bb8:                                           ; preds = %if.end4
  %9 = load ptr, ptr %insn.addr, align 8, !dbg !4665
  %10 = load ptr, ptr %regs.addr, align 8, !dbg !4666
  %call9 = call ptr @get_addr_ref_64(ptr noundef %9, ptr noundef %10) #16, !dbg !4667
  store ptr %call9, ptr %retval, align 8, !dbg !4668
  br label %return, !dbg !4668

sw.default:                                       ; preds = %if.end4
  store ptr inttoptr (i64 -1 to ptr), ptr %retval, align 8, !dbg !4669
  br label %return, !dbg !4669

return:                                           ; preds = %sw.default, %sw.bb8, %sw.bb6, %sw.bb, %if.then3, %if.then
  %11 = load ptr, ptr %retval, align 8, !dbg !4670
  ret ptr %11, !dbg !4670
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4671 dso_local i32 @insn_get_opcode(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_addr_ref_16(ptr noundef %insn, ptr noundef %regs) #0 align 16 !dbg !4672 {
entry:
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %linear_addr = alloca i64, align 8
  %seg_base = alloca i64, align 8
  %seg_limit = alloca i64, align 8
  %ret = alloca i32, align 4
  %regoff = alloca i32, align 4
  %eff_addr = alloca i16, align 2
  %tmp = alloca i64, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4674, metadata !DIExpression()), !dbg !4684
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4675, metadata !DIExpression()), !dbg !4685
  call void @llvm.lifetime.start.p0(i64 8, ptr %linear_addr) #15, !dbg !4686
  call void @llvm.dbg.declare(metadata ptr %linear_addr, metadata !4676, metadata !DIExpression()), !dbg !4687
  store i64 -1, ptr %linear_addr, align 8, !dbg !4687
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg_base) #15, !dbg !4686
  call void @llvm.dbg.declare(metadata ptr %seg_base, metadata !4677, metadata !DIExpression()), !dbg !4688
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg_limit) #15, !dbg !4686
  call void @llvm.dbg.declare(metadata ptr %seg_limit, metadata !4678, metadata !DIExpression()), !dbg !4689
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4690
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4679, metadata !DIExpression()), !dbg !4691
  call void @llvm.lifetime.start.p0(i64 4, ptr %regoff) #15, !dbg !4690
  call void @llvm.dbg.declare(metadata ptr %regoff, metadata !4680, metadata !DIExpression()), !dbg !4692
  call void @llvm.lifetime.start.p0(i64 2, ptr %eff_addr) #15, !dbg !4693
  call void @llvm.dbg.declare(metadata ptr %eff_addr, metadata !4681, metadata !DIExpression()), !dbg !4694
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !4695
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4682, metadata !DIExpression()), !dbg !4696
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !4697
  %call = call i32 @insn_get_displacement(ptr noundef %0) #16, !dbg !4699
  %tobool = icmp ne i32 %call, 0, !dbg !4699
  br i1 %tobool, label %if.then, label %if.end, !dbg !4700

if.then:                                          ; preds = %entry
  br label %out, !dbg !4701

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !4702
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %1, i32 0, i32 12, !dbg !4704
  %2 = load i8, ptr %addr_bytes, align 1, !dbg !4704
  %conv = zext i8 %2 to i32, !dbg !4702
  %cmp = icmp ne i32 %conv, 2, !dbg !4705
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4706

if.then2:                                         ; preds = %if.end
  br label %out, !dbg !4707

if.end3:                                          ; preds = %if.end
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !4708
  %modrm = getelementptr inbounds %struct.insn, ptr %3, i32 0, i32 4, !dbg !4708
  %4 = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 0, !dbg !4708
  %5 = load i32, ptr %4, align 8, !dbg !4708
  %and = and i32 %5, 192, !dbg !4708
  %shr = ashr i32 %and, 6, !dbg !4708
  %cmp4 = icmp eq i32 %shr, 3, !dbg !4710
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !4711

if.then6:                                         ; preds = %if.end3
  %6 = load ptr, ptr %insn.addr, align 8, !dbg !4712
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !4714
  %call7 = call i32 @get_eff_addr_reg(ptr noundef %6, ptr noundef %7, ptr noundef %regoff, ptr noundef %tmp) #16, !dbg !4715
  store i32 %call7, ptr %ret, align 4, !dbg !4716
  %8 = load i32, ptr %ret, align 4, !dbg !4717
  %tobool8 = icmp ne i32 %8, 0, !dbg !4717
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4719

if.then9:                                         ; preds = %if.then6
  br label %out, !dbg !4720

if.end10:                                         ; preds = %if.then6
  %9 = load i64, ptr %tmp, align 8, !dbg !4721
  %conv11 = trunc i64 %9 to i16, !dbg !4721
  store i16 %conv11, ptr %eff_addr, align 2, !dbg !4722
  br label %if.end16, !dbg !4723

if.else:                                          ; preds = %if.end3
  %10 = load ptr, ptr %insn.addr, align 8, !dbg !4724
  %11 = load ptr, ptr %regs.addr, align 8, !dbg !4726
  %call12 = call i32 @get_eff_addr_modrm_16(ptr noundef %10, ptr noundef %11, ptr noundef %regoff, ptr noundef %eff_addr) #16, !dbg !4727
  store i32 %call12, ptr %ret, align 4, !dbg !4728
  %12 = load i32, ptr %ret, align 4, !dbg !4729
  %tobool13 = icmp ne i32 %12, 0, !dbg !4729
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4731

if.then14:                                        ; preds = %if.else
  br label %out, !dbg !4732

if.end15:                                         ; preds = %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end10
  %13 = load ptr, ptr %insn.addr, align 8, !dbg !4733
  %14 = load ptr, ptr %regs.addr, align 8, !dbg !4734
  %15 = load i32, ptr %regoff, align 4, !dbg !4735
  %call17 = call i32 @get_seg_base_limit(ptr noundef %13, ptr noundef %14, i32 noundef %15, ptr noundef %seg_base, ptr noundef %seg_limit) #16, !dbg !4736
  store i32 %call17, ptr %ret, align 4, !dbg !4737
  %16 = load i32, ptr %ret, align 4, !dbg !4738
  %tobool18 = icmp ne i32 %16, 0, !dbg !4738
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !4740

if.then19:                                        ; preds = %if.end16
  br label %out, !dbg !4741

if.end20:                                         ; preds = %if.end16
  %17 = load i16, ptr %eff_addr, align 2, !dbg !4742
  %conv21 = sext i16 %17 to i32, !dbg !4742
  %and22 = and i32 %conv21, 65535, !dbg !4744
  %conv23 = sext i32 %and22 to i64, !dbg !4745
  %18 = load i64, ptr %seg_limit, align 8, !dbg !4746
  %cmp24 = icmp ugt i64 %conv23, %18, !dbg !4747
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !4748

if.then26:                                        ; preds = %if.end20
  br label %out, !dbg !4749

if.end27:                                         ; preds = %if.end20
  %19 = load i16, ptr %eff_addr, align 2, !dbg !4750
  %conv28 = sext i16 %19 to i32, !dbg !4750
  %and29 = and i32 %conv28, 65535, !dbg !4751
  %conv30 = sext i32 %and29 to i64, !dbg !4752
  %20 = load i64, ptr %seg_base, align 8, !dbg !4753
  %add = add i64 %conv30, %20, !dbg !4754
  store i64 %add, ptr %linear_addr, align 8, !dbg !4755
  %21 = load ptr, ptr %regs.addr, align 8, !dbg !4756
  %call31 = call i32 @v8086_mode(ptr noundef %21) #16, !dbg !4758
  %tobool32 = icmp ne i32 %call31, 0, !dbg !4758
  br i1 %tobool32, label %if.then33, label %if.end35, !dbg !4759

if.then33:                                        ; preds = %if.end27
  %22 = load i64, ptr %linear_addr, align 8, !dbg !4760
  %and34 = and i64 %22, 1048575, !dbg !4760
  store i64 %and34, ptr %linear_addr, align 8, !dbg !4760
  br label %if.end35, !dbg !4761

if.end35:                                         ; preds = %if.then33, %if.end27
  br label %out, !dbg !4762

out:                                              ; preds = %if.end35, %if.then26, %if.then19, %if.then14, %if.then9, %if.then2, %if.then
  call void @llvm.dbg.label(metadata !4683), !dbg !4763
  %23 = load i64, ptr %linear_addr, align 8, !dbg !4764
  %24 = inttoptr i64 %23 to ptr, !dbg !4765
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !4766
  call void @llvm.lifetime.end.p0(i64 2, ptr %eff_addr) #15, !dbg !4766
  call void @llvm.lifetime.end.p0(i64 4, ptr %regoff) #15, !dbg !4766
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4766
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg_limit) #15, !dbg !4766
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg_base) #15, !dbg !4766
  call void @llvm.lifetime.end.p0(i64 8, ptr %linear_addr) #15, !dbg !4766
  ret ptr %24, !dbg !4767
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_addr_ref_32(ptr noundef %insn, ptr noundef %regs) #0 align 16 !dbg !4768 {
entry:
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %linear_addr = alloca i64, align 8
  %seg_base = alloca i64, align 8
  %seg_limit = alloca i64, align 8
  %eff_addr = alloca i32, align 4
  %regoff = alloca i32, align 4
  %tmp = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4770, metadata !DIExpression()), !dbg !4780
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4771, metadata !DIExpression()), !dbg !4781
  call void @llvm.lifetime.start.p0(i64 8, ptr %linear_addr) #15, !dbg !4782
  call void @llvm.dbg.declare(metadata ptr %linear_addr, metadata !4772, metadata !DIExpression()), !dbg !4783
  store i64 -1, ptr %linear_addr, align 8, !dbg !4783
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg_base) #15, !dbg !4782
  call void @llvm.dbg.declare(metadata ptr %seg_base, metadata !4773, metadata !DIExpression()), !dbg !4784
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg_limit) #15, !dbg !4782
  call void @llvm.dbg.declare(metadata ptr %seg_limit, metadata !4774, metadata !DIExpression()), !dbg !4785
  call void @llvm.lifetime.start.p0(i64 4, ptr %eff_addr) #15, !dbg !4786
  call void @llvm.dbg.declare(metadata ptr %eff_addr, metadata !4775, metadata !DIExpression()), !dbg !4787
  call void @llvm.lifetime.start.p0(i64 4, ptr %regoff) #15, !dbg !4786
  call void @llvm.dbg.declare(metadata ptr %regoff, metadata !4776, metadata !DIExpression()), !dbg !4788
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !4789
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4777, metadata !DIExpression()), !dbg !4790
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4791
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4778, metadata !DIExpression()), !dbg !4792
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !4793
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 12, !dbg !4795
  %1 = load i8, ptr %addr_bytes, align 1, !dbg !4795
  %conv = zext i8 %1 to i32, !dbg !4793
  %cmp = icmp ne i32 %conv, 4, !dbg !4796
  br i1 %cmp, label %if.then, label %if.end, !dbg !4797

if.then:                                          ; preds = %entry
  br label %out, !dbg !4798

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !4799
  %modrm = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 4, !dbg !4799
  %3 = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 0, !dbg !4799
  %4 = load i32, ptr %3, align 8, !dbg !4799
  %and = and i32 %4, 192, !dbg !4799
  %shr = ashr i32 %and, 6, !dbg !4799
  %cmp2 = icmp eq i32 %shr, 3, !dbg !4801
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !4802

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !4803
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !4805
  %call = call i32 @get_eff_addr_reg(ptr noundef %5, ptr noundef %6, ptr noundef %regoff, ptr noundef %tmp) #16, !dbg !4806
  store i32 %call, ptr %ret, align 4, !dbg !4807
  %7 = load i32, ptr %ret, align 4, !dbg !4808
  %tobool = icmp ne i32 %7, 0, !dbg !4808
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !4810

if.then5:                                         ; preds = %if.then4
  br label %out, !dbg !4811

if.end6:                                          ; preds = %if.then4
  %8 = load i64, ptr %tmp, align 8, !dbg !4812
  %conv7 = trunc i64 %8 to i32, !dbg !4812
  store i32 %conv7, ptr %eff_addr, align 4, !dbg !4813
  br label %if.end22, !dbg !4814

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %insn.addr, align 8, !dbg !4815
  %sib = getelementptr inbounds %struct.insn, ptr %9, i32 0, i32 5, !dbg !4818
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %sib, i32 0, i32 2, !dbg !4819
  %10 = load i8, ptr %nbytes, align 1, !dbg !4819
  %tobool8 = icmp ne i8 %10, 0, !dbg !4815
  br i1 %tobool8, label %if.then9, label %if.else15, !dbg !4820

if.then9:                                         ; preds = %if.else
  %11 = load ptr, ptr %insn.addr, align 8, !dbg !4821
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !4823
  %call10 = call i32 @get_eff_addr_sib(ptr noundef %11, ptr noundef %12, ptr noundef %regoff, ptr noundef %tmp) #16, !dbg !4824
  store i32 %call10, ptr %ret, align 4, !dbg !4825
  %13 = load i32, ptr %ret, align 4, !dbg !4826
  %tobool11 = icmp ne i32 %13, 0, !dbg !4826
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4828

if.then12:                                        ; preds = %if.then9
  br label %out, !dbg !4829

if.end13:                                         ; preds = %if.then9
  %14 = load i64, ptr %tmp, align 8, !dbg !4830
  %conv14 = trunc i64 %14 to i32, !dbg !4830
  store i32 %conv14, ptr %eff_addr, align 4, !dbg !4831
  br label %if.end21, !dbg !4832

if.else15:                                        ; preds = %if.else
  %15 = load ptr, ptr %insn.addr, align 8, !dbg !4833
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !4835
  %call16 = call i32 @get_eff_addr_modrm(ptr noundef %15, ptr noundef %16, ptr noundef %regoff, ptr noundef %tmp) #16, !dbg !4836
  store i32 %call16, ptr %ret, align 4, !dbg !4837
  %17 = load i32, ptr %ret, align 4, !dbg !4838
  %tobool17 = icmp ne i32 %17, 0, !dbg !4838
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !4840

if.then18:                                        ; preds = %if.else15
  br label %out, !dbg !4841

if.end19:                                         ; preds = %if.else15
  %18 = load i64, ptr %tmp, align 8, !dbg !4842
  %conv20 = trunc i64 %18 to i32, !dbg !4842
  store i32 %conv20, ptr %eff_addr, align 4, !dbg !4843
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end13
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end6
  %19 = load ptr, ptr %insn.addr, align 8, !dbg !4844
  %20 = load ptr, ptr %regs.addr, align 8, !dbg !4845
  %21 = load i32, ptr %regoff, align 4, !dbg !4846
  %call23 = call i32 @get_seg_base_limit(ptr noundef %19, ptr noundef %20, i32 noundef %21, ptr noundef %seg_base, ptr noundef %seg_limit) #16, !dbg !4847
  store i32 %call23, ptr %ret, align 4, !dbg !4848
  %22 = load i32, ptr %ret, align 4, !dbg !4849
  %tobool24 = icmp ne i32 %22, 0, !dbg !4849
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4851

if.then25:                                        ; preds = %if.end22
  br label %out, !dbg !4852

if.end26:                                         ; preds = %if.end22
  %23 = load ptr, ptr %regs.addr, align 8, !dbg !4853
  %call27 = call zeroext i1 @any_64bit_mode(ptr noundef %23) #16, !dbg !4855
  br i1 %call27, label %if.end32, label %land.lhs.true, !dbg !4856

land.lhs.true:                                    ; preds = %if.end26
  %24 = load i32, ptr %eff_addr, align 4, !dbg !4857
  %conv28 = zext i32 %24 to i64, !dbg !4858
  %25 = load i64, ptr %seg_limit, align 8, !dbg !4859
  %cmp29 = icmp ugt i64 %conv28, %25, !dbg !4860
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !4861

if.then31:                                        ; preds = %land.lhs.true
  br label %out, !dbg !4862

if.end32:                                         ; preds = %land.lhs.true, %if.end26
  %26 = load ptr, ptr %regs.addr, align 8, !dbg !4863
  %call33 = call i32 @v8086_mode(ptr noundef %26) #16, !dbg !4865
  %tobool34 = icmp ne i32 %call33, 0, !dbg !4865
  br i1 %tobool34, label %land.lhs.true35, label %if.end39, !dbg !4866

land.lhs.true35:                                  ; preds = %if.end32
  %27 = load i32, ptr %eff_addr, align 4, !dbg !4867
  %and36 = and i32 %27, -65536, !dbg !4868
  %tobool37 = icmp ne i32 %and36, 0, !dbg !4868
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !4869

if.then38:                                        ; preds = %land.lhs.true35
  br label %out, !dbg !4870

if.end39:                                         ; preds = %land.lhs.true35, %if.end32
  %28 = load i32, ptr %eff_addr, align 4, !dbg !4871
  %and40 = and i32 %28, -1, !dbg !4872
  %conv41 = zext i32 %and40 to i64, !dbg !4873
  %29 = load i64, ptr %seg_base, align 8, !dbg !4874
  %add = add i64 %conv41, %29, !dbg !4875
  store i64 %add, ptr %linear_addr, align 8, !dbg !4876
  %30 = load ptr, ptr %regs.addr, align 8, !dbg !4877
  %call42 = call i32 @v8086_mode(ptr noundef %30) #16, !dbg !4879
  %tobool43 = icmp ne i32 %call42, 0, !dbg !4879
  br i1 %tobool43, label %if.then44, label %if.end46, !dbg !4880

if.then44:                                        ; preds = %if.end39
  %31 = load i64, ptr %linear_addr, align 8, !dbg !4881
  %and45 = and i64 %31, 1048575, !dbg !4881
  store i64 %and45, ptr %linear_addr, align 8, !dbg !4881
  br label %if.end46, !dbg !4882

if.end46:                                         ; preds = %if.then44, %if.end39
  br label %out, !dbg !4883

out:                                              ; preds = %if.end46, %if.then38, %if.then31, %if.then25, %if.then18, %if.then12, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !4779), !dbg !4884
  %32 = load i64, ptr %linear_addr, align 8, !dbg !4885
  %33 = inttoptr i64 %32 to ptr, !dbg !4886
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4887
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !4887
  call void @llvm.lifetime.end.p0(i64 4, ptr %regoff) #15, !dbg !4887
  call void @llvm.lifetime.end.p0(i64 4, ptr %eff_addr) #15, !dbg !4887
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg_limit) #15, !dbg !4887
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg_base) #15, !dbg !4887
  call void @llvm.lifetime.end.p0(i64 8, ptr %linear_addr) #15, !dbg !4887
  ret ptr %33, !dbg !4888
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_addr_ref_64(ptr noundef %insn, ptr noundef %regs) #0 align 16 !dbg !4889 {
entry:
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %linear_addr = alloca i64, align 8
  %seg_base = alloca i64, align 8
  %regoff = alloca i32, align 4
  %ret = alloca i32, align 4
  %eff_addr = alloca i64, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4891, metadata !DIExpression()), !dbg !4899
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4892, metadata !DIExpression()), !dbg !4900
  call void @llvm.lifetime.start.p0(i64 8, ptr %linear_addr) #15, !dbg !4901
  call void @llvm.dbg.declare(metadata ptr %linear_addr, metadata !4893, metadata !DIExpression()), !dbg !4902
  store i64 -1, ptr %linear_addr, align 8, !dbg !4902
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg_base) #15, !dbg !4901
  call void @llvm.dbg.declare(metadata ptr %seg_base, metadata !4894, metadata !DIExpression()), !dbg !4903
  call void @llvm.lifetime.start.p0(i64 4, ptr %regoff) #15, !dbg !4904
  call void @llvm.dbg.declare(metadata ptr %regoff, metadata !4895, metadata !DIExpression()), !dbg !4905
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !4904
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4896, metadata !DIExpression()), !dbg !4906
  call void @llvm.lifetime.start.p0(i64 8, ptr %eff_addr) #15, !dbg !4907
  call void @llvm.dbg.declare(metadata ptr %eff_addr, metadata !4897, metadata !DIExpression()), !dbg !4908
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !4909
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 12, !dbg !4911
  %1 = load i8, ptr %addr_bytes, align 1, !dbg !4911
  %conv = zext i8 %1 to i32, !dbg !4909
  %cmp = icmp ne i32 %conv, 8, !dbg !4912
  br i1 %cmp, label %if.then, label %if.end, !dbg !4913

if.then:                                          ; preds = %entry
  br label %out, !dbg !4914

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !4915
  %modrm = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 4, !dbg !4915
  %3 = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 0, !dbg !4915
  %4 = load i32, ptr %3, align 8, !dbg !4915
  %and = and i32 %4, 192, !dbg !4915
  %shr = ashr i32 %and, 6, !dbg !4915
  %cmp2 = icmp eq i32 %shr, 3, !dbg !4917
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !4918

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !4919
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !4921
  %call = call i32 @get_eff_addr_reg(ptr noundef %5, ptr noundef %6, ptr noundef %regoff, ptr noundef %eff_addr) #16, !dbg !4922
  store i32 %call, ptr %ret, align 4, !dbg !4923
  %7 = load i32, ptr %ret, align 4, !dbg !4924
  %tobool = icmp ne i32 %7, 0, !dbg !4924
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !4926

if.then5:                                         ; preds = %if.then4
  br label %out, !dbg !4927

if.end6:                                          ; preds = %if.then4
  br label %if.end19, !dbg !4928

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !4929
  %sib = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 5, !dbg !4932
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %sib, i32 0, i32 2, !dbg !4933
  %9 = load i8, ptr %nbytes, align 1, !dbg !4933
  %tobool7 = icmp ne i8 %9, 0, !dbg !4929
  br i1 %tobool7, label %if.then8, label %if.else13, !dbg !4934

if.then8:                                         ; preds = %if.else
  %10 = load ptr, ptr %insn.addr, align 8, !dbg !4935
  %11 = load ptr, ptr %regs.addr, align 8, !dbg !4937
  %call9 = call i32 @get_eff_addr_sib(ptr noundef %10, ptr noundef %11, ptr noundef %regoff, ptr noundef %eff_addr) #16, !dbg !4938
  store i32 %call9, ptr %ret, align 4, !dbg !4939
  %12 = load i32, ptr %ret, align 4, !dbg !4940
  %tobool10 = icmp ne i32 %12, 0, !dbg !4940
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4942

if.then11:                                        ; preds = %if.then8
  br label %out, !dbg !4943

if.end12:                                         ; preds = %if.then8
  br label %if.end18, !dbg !4944

if.else13:                                        ; preds = %if.else
  %13 = load ptr, ptr %insn.addr, align 8, !dbg !4945
  %14 = load ptr, ptr %regs.addr, align 8, !dbg !4947
  %call14 = call i32 @get_eff_addr_modrm(ptr noundef %13, ptr noundef %14, ptr noundef %regoff, ptr noundef %eff_addr) #16, !dbg !4948
  store i32 %call14, ptr %ret, align 4, !dbg !4949
  %15 = load i32, ptr %ret, align 4, !dbg !4950
  %tobool15 = icmp ne i32 %15, 0, !dbg !4950
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !4952

if.then16:                                        ; preds = %if.else13
  br label %out, !dbg !4953

if.end17:                                         ; preds = %if.else13
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end12
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end6
  %16 = load ptr, ptr %insn.addr, align 8, !dbg !4954
  %17 = load ptr, ptr %regs.addr, align 8, !dbg !4955
  %18 = load i32, ptr %regoff, align 4, !dbg !4956
  %call20 = call i32 @get_seg_base_limit(ptr noundef %16, ptr noundef %17, i32 noundef %18, ptr noundef %seg_base, ptr noundef null) #16, !dbg !4957
  store i32 %call20, ptr %ret, align 4, !dbg !4958
  %19 = load i32, ptr %ret, align 4, !dbg !4959
  %tobool21 = icmp ne i32 %19, 0, !dbg !4959
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4961

if.then22:                                        ; preds = %if.end19
  br label %out, !dbg !4962

if.end23:                                         ; preds = %if.end19
  %20 = load i64, ptr %eff_addr, align 8, !dbg !4963
  %21 = load i64, ptr %seg_base, align 8, !dbg !4964
  %add = add i64 %20, %21, !dbg !4965
  store i64 %add, ptr %linear_addr, align 8, !dbg !4966
  br label %out, !dbg !4967

out:                                              ; preds = %if.end23, %if.then22, %if.then16, %if.then11, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !4898), !dbg !4968
  %22 = load i64, ptr %linear_addr, align 8, !dbg !4969
  %23 = inttoptr i64 %22 to ptr, !dbg !4970
  call void @llvm.lifetime.end.p0(i64 8, ptr %eff_addr) #15, !dbg !4971
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !4971
  call void @llvm.lifetime.end.p0(i64 4, ptr %regoff) #15, !dbg !4971
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg_base) #15, !dbg !4971
  call void @llvm.lifetime.end.p0(i64 8, ptr %linear_addr) #15, !dbg !4971
  ret ptr %23, !dbg !4972
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_get_effective_ip(ptr noundef %regs, ptr noundef %ip) #0 align 16 !dbg !4973 {
entry:
  %retval = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %ip.addr = alloca ptr, align 8
  %seg_base = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4977, metadata !DIExpression()), !dbg !4980
  store ptr %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !4978, metadata !DIExpression()), !dbg !4981
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg_base) #15, !dbg !4982
  call void @llvm.dbg.declare(metadata ptr %seg_base, metadata !4979, metadata !DIExpression()), !dbg !4983
  store i64 0, ptr %seg_base, align 8, !dbg !4983
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4984
  %call = call zeroext i1 @user_64bit_mode(ptr noundef %0) #16, !dbg !4986
  br i1 %call, label %if.end3, label %if.then, !dbg !4987

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !4988
  %call1 = call i64 @insn_get_seg_base(ptr noundef %1, i32 noundef 2) #16, !dbg !4990
  store i64 %call1, ptr %seg_base, align 8, !dbg !4991
  %2 = load i64, ptr %seg_base, align 8, !dbg !4992
  %cmp = icmp eq i64 %2, -1, !dbg !4994
  br i1 %cmp, label %if.then2, label %if.end, !dbg !4995

if.then2:                                         ; preds = %if.then
  store i32 -22, ptr %retval, align 4, !dbg !4996
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4996

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !4997

if.end3:                                          ; preds = %if.end, %entry
  %3 = load i64, ptr %seg_base, align 8, !dbg !4998
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !4999
  %ip4 = getelementptr inbounds %struct.pt_regs, ptr %4, i32 0, i32 16, !dbg !5000
  %5 = load i64, ptr %ip4, align 8, !dbg !5000
  %add = add i64 %3, %5, !dbg !5001
  %6 = load ptr, ptr %ip.addr, align 8, !dbg !5002
  store i64 %add, ptr %6, align 8, !dbg !5003
  store i32 0, ptr %retval, align 4, !dbg !5004
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5004

cleanup:                                          ; preds = %if.end3, %if.then2
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg_base) #15, !dbg !5005
  %7 = load i32, ptr %retval, align 4, !dbg !5005
  ret i32 %7, !dbg !5005
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @user_64bit_mode(ptr noundef %regs) #5 align 16 !dbg !5006 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5008, metadata !DIExpression()), !dbg !5009
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5010
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !5011
  %2 = load i16, ptr %1, align 8, !dbg !5011
  %conv = zext i16 %2 to i32, !dbg !5010
  %cmp = icmp eq i32 %conv, 51, !dbg !5012
  ret i1 %cmp, !dbg !5013
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_fetch_from_user(ptr noundef %regs, ptr noundef %buf) #0 align 16 !dbg !5014 {
entry:
  %retval = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ip = alloca i64, align 8
  %not_copied = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5019, metadata !DIExpression()), !dbg !5023
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5020, metadata !DIExpression()), !dbg !5024
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #15, !dbg !5025
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !5021, metadata !DIExpression()), !dbg !5026
  call void @llvm.lifetime.start.p0(i64 4, ptr %not_copied) #15, !dbg !5027
  call void @llvm.dbg.declare(metadata ptr %not_copied, metadata !5022, metadata !DIExpression()), !dbg !5028
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5029
  %call = call i32 @insn_get_effective_ip(ptr noundef %0, ptr noundef %ip) #16, !dbg !5031
  %tobool = icmp ne i32 %call, 0, !dbg !5031
  br i1 %tobool, label %if.then, label %if.end, !dbg !5032

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5033

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !5034
  %2 = load i64, ptr %ip, align 8, !dbg !5035
  %3 = inttoptr i64 %2 to ptr, !dbg !5036
  %call1 = call i64 @copy_from_user(ptr noundef %1, ptr noundef %3, i64 noundef 15) #16, !dbg !5037
  %conv = trunc i64 %call1 to i32, !dbg !5037
  store i32 %conv, ptr %not_copied, align 4, !dbg !5038
  %4 = load i32, ptr %not_copied, align 4, !dbg !5039
  %sub = sub i32 15, %4, !dbg !5040
  store i32 %sub, ptr %retval, align 4, !dbg !5041
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5041

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %not_copied) #15, !dbg !5042
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #15, !dbg !5042
  %5 = load i32, ptr %retval, align 4, !dbg !5042
  ret i32 %5, !dbg !5042
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !5043 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5048, metadata !DIExpression()), !dbg !5051
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5049, metadata !DIExpression()), !dbg !5052
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5050, metadata !DIExpression()), !dbg !5053
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5054
  %1 = load i64, ptr %n.addr, align 8, !dbg !5056
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #16, !dbg !5057
  br i1 %call, label %if.then, label %if.end, !dbg !5058

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5059
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5060
  %4 = load i64, ptr %n.addr, align 8, !dbg !5061
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #16, !dbg !5062
  store i64 %call1, ptr %n.addr, align 8, !dbg !5063
  br label %if.end, !dbg !5064

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5065
  ret i64 %5, !dbg !5066
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_fetch_from_user_inatomic(ptr noundef %regs, ptr noundef %buf) #0 align 16 !dbg !5067 {
entry:
  %retval = alloca i32, align 4
  %regs.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ip = alloca i64, align 8
  %not_copied = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5069, metadata !DIExpression()), !dbg !5073
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5070, metadata !DIExpression()), !dbg !5074
  call void @llvm.lifetime.start.p0(i64 8, ptr %ip) #15, !dbg !5075
  call void @llvm.dbg.declare(metadata ptr %ip, metadata !5071, metadata !DIExpression()), !dbg !5076
  call void @llvm.lifetime.start.p0(i64 4, ptr %not_copied) #15, !dbg !5077
  call void @llvm.dbg.declare(metadata ptr %not_copied, metadata !5072, metadata !DIExpression()), !dbg !5078
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5079
  %call = call i32 @insn_get_effective_ip(ptr noundef %0, ptr noundef %ip) #16, !dbg !5081
  %tobool = icmp ne i32 %call, 0, !dbg !5081
  br i1 %tobool, label %if.then, label %if.end, !dbg !5082

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5083
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5083

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !5084
  %2 = load i64, ptr %ip, align 8, !dbg !5085
  %3 = inttoptr i64 %2 to ptr, !dbg !5086
  %call1 = call i64 @__copy_from_user_inatomic(ptr noundef %1, ptr noundef %3, i64 noundef 15) #16, !dbg !5087
  %conv = trunc i64 %call1 to i32, !dbg !5087
  store i32 %conv, ptr %not_copied, align 4, !dbg !5088
  %4 = load i32, ptr %not_copied, align 4, !dbg !5089
  %sub = sub i32 15, %4, !dbg !5090
  store i32 %sub, ptr %retval, align 4, !dbg !5091
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5091

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %not_copied) #15, !dbg !5092
  call void @llvm.lifetime.end.p0(i64 8, ptr %ip) #15, !dbg !5092
  %5 = load i32, ptr %retval, align 4, !dbg !5092
  ret i32 %5, !dbg !5092
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__copy_from_user_inatomic(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !5093 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5095, metadata !DIExpression()), !dbg !5099
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5096, metadata !DIExpression()), !dbg !5100
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5097, metadata !DIExpression()), !dbg !5101
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #15, !dbg !5102
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5098, metadata !DIExpression()), !dbg !5103
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5104
  %1 = load ptr, ptr %from.addr, align 8, !dbg !5105
  %2 = load i64, ptr %n.addr, align 8, !dbg !5106
  call void @instrument_copy_from_user_before(ptr noundef %0, ptr noundef %1, i64 noundef %2) #16, !dbg !5107
  %3 = load ptr, ptr %to.addr, align 8, !dbg !5108
  %4 = load i64, ptr %n.addr, align 8, !dbg !5109
  call void @check_object_size(ptr noundef %3, i64 noundef %4, i1 noundef zeroext false) #16, !dbg !5110
  %5 = load ptr, ptr %to.addr, align 8, !dbg !5111
  %6 = load ptr, ptr %from.addr, align 8, !dbg !5112
  %7 = load i64, ptr %n.addr, align 8, !dbg !5113
  %call = call i64 @raw_copy_from_user(ptr noundef %5, ptr noundef %6, i64 noundef %7) #16, !dbg !5114
  store i64 %call, ptr %res, align 8, !dbg !5115
  %8 = load ptr, ptr %to.addr, align 8, !dbg !5116
  %9 = load ptr, ptr %from.addr, align 8, !dbg !5117
  %10 = load i64, ptr %n.addr, align 8, !dbg !5118
  %11 = load i64, ptr %res, align 8, !dbg !5119
  call void @instrument_copy_from_user_after(ptr noundef %8, ptr noundef %9, i64 noundef %10, i64 noundef %11) #16, !dbg !5120
  %12 = load i64, ptr %res, align 8, !dbg !5121
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #15, !dbg !5122
  ret i64 %12, !dbg !5123
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @insn_decode_from_regs(ptr noundef %insn, ptr noundef %regs, ptr noundef %buf, i32 noundef %buf_size) #0 align 16 !dbg !5124 {
entry:
  %retval = alloca i1, align 1
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %buf_size.addr = alloca i32, align 4
  %seg_defs = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5128, metadata !DIExpression()), !dbg !5133
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5129, metadata !DIExpression()), !dbg !5134
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5130, metadata !DIExpression()), !dbg !5135
  store i32 %buf_size, ptr %buf_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buf_size.addr, metadata !5131, metadata !DIExpression()), !dbg !5136
  call void @llvm.lifetime.start.p0(i64 4, ptr %seg_defs) #15, !dbg !5137
  call void @llvm.dbg.declare(metadata ptr %seg_defs, metadata !5132, metadata !DIExpression()), !dbg !5138
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !5139
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !5140
  %2 = load i32, ptr %buf_size.addr, align 4, !dbg !5141
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !5142
  %call = call zeroext i1 @user_64bit_mode(ptr noundef %3) #16, !dbg !5143
  %conv = zext i1 %call to i32, !dbg !5143
  call void @insn_init(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %conv) #16, !dbg !5144
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5145
  %call1 = call i32 @insn_get_code_seg_params(ptr noundef %4) #16, !dbg !5146
  store i32 %call1, ptr %seg_defs, align 4, !dbg !5147
  %5 = load i32, ptr %seg_defs, align 4, !dbg !5148
  %cmp = icmp eq i32 %5, -22, !dbg !5150
  br i1 %cmp, label %if.then, label %if.end, !dbg !5151

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5152

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %seg_defs, align 4, !dbg !5153
  %shr = ashr i32 %6, 4, !dbg !5153
  %and = and i32 %shr, 15, !dbg !5153
  %conv3 = trunc i32 %and to i8, !dbg !5153
  %7 = load ptr, ptr %insn.addr, align 8, !dbg !5154
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %7, i32 0, i32 12, !dbg !5155
  store i8 %conv3, ptr %addr_bytes, align 1, !dbg !5156
  %8 = load i32, ptr %seg_defs, align 4, !dbg !5157
  %and4 = and i32 %8, 15, !dbg !5157
  %conv5 = trunc i32 %and4 to i8, !dbg !5157
  %9 = load ptr, ptr %insn.addr, align 8, !dbg !5158
  %opnd_bytes = getelementptr inbounds %struct.insn, ptr %9, i32 0, i32 11, !dbg !5159
  store i8 %conv5, ptr %opnd_bytes, align 8, !dbg !5160
  %10 = load ptr, ptr %insn.addr, align 8, !dbg !5161
  %call6 = call i32 @insn_get_length(ptr noundef %10) #16, !dbg !5163
  %tobool = icmp ne i32 %call6, 0, !dbg !5163
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !5164

if.then7:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !5165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5165

if.end8:                                          ; preds = %if.end
  %11 = load i32, ptr %buf_size.addr, align 4, !dbg !5166
  %12 = load ptr, ptr %insn.addr, align 8, !dbg !5168
  %length = getelementptr inbounds %struct.insn, ptr %12, i32 0, i32 13, !dbg !5169
  %13 = load i8, ptr %length, align 2, !dbg !5169
  %conv9 = zext i8 %13 to i32, !dbg !5168
  %cmp10 = icmp slt i32 %11, %conv9, !dbg !5170
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5171

if.then12:                                        ; preds = %if.end8
  store i1 false, ptr %retval, align 1, !dbg !5172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5172

if.end13:                                         ; preds = %if.end8
  store i1 true, ptr %retval, align 1, !dbg !5173
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5173

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %seg_defs) #15, !dbg !5174
  %14 = load i1, ptr %retval, align 1, !dbg !5174
  ret i1 %14, !dbg !5174
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5175 dso_local void @insn_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5178 dso_local i32 @insn_get_length(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @insn_decode_mmio(ptr noundef %insn, ptr noundef %bytes) #0 align 16 !dbg !5179 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %bytes.addr = alloca ptr, align 8
  %type = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5183, metadata !DIExpression()), !dbg !5186
  store ptr %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5184, metadata !DIExpression()), !dbg !5187
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15, !dbg !5188
  call void @llvm.dbg.declare(metadata ptr %type, metadata !5185, metadata !DIExpression()), !dbg !5189
  store i32 0, ptr %type, align 4, !dbg !5189
  %0 = load ptr, ptr %bytes.addr, align 8, !dbg !5190
  store i32 0, ptr %0, align 4, !dbg !5191
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !5192
  %call = call i32 @insn_get_opcode(ptr noundef %1) #16, !dbg !5194
  %tobool = icmp ne i32 %call, 0, !dbg !5194
  br i1 %tobool, label %if.then, label %if.end, !dbg !5195

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5196

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !5197
  %opcode = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 3, !dbg !5198
  %3 = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 0, !dbg !5199
  %arrayidx = getelementptr [4 x i8], ptr %3, i64 0, i64 0, !dbg !5197
  %4 = load i8, ptr %arrayidx, align 8, !dbg !5197
  %conv = zext i8 %4 to i32, !dbg !5197
  switch i32 %conv, label %sw.epilog41 [
    i32 136, label %sw.bb
    i32 137, label %sw.bb1
    i32 198, label %sw.bb6
    i32 199, label %sw.bb7
    i32 138, label %sw.bb13
    i32 139, label %sw.bb14
    i32 164, label %sw.bb20
    i32 165, label %sw.bb21
    i32 15, label %sw.bb27
  ], !dbg !5200

sw.bb:                                            ; preds = %if.end
  %5 = load ptr, ptr %bytes.addr, align 8, !dbg !5201
  store i32 1, ptr %5, align 4, !dbg !5203
  br label %sw.bb1, !dbg !5204

sw.bb1:                                           ; preds = %if.end, %sw.bb
  %6 = load ptr, ptr %bytes.addr, align 8, !dbg !5205
  %7 = load i32, ptr %6, align 4, !dbg !5207
  %tobool2 = icmp ne i32 %7, 0, !dbg !5207
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !5208

if.then3:                                         ; preds = %sw.bb1
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !5209
  %opnd_bytes = getelementptr inbounds %struct.insn, ptr %8, i32 0, i32 11, !dbg !5210
  %9 = load i8, ptr %opnd_bytes, align 8, !dbg !5210
  %conv4 = zext i8 %9 to i32, !dbg !5209
  %10 = load ptr, ptr %bytes.addr, align 8, !dbg !5211
  store i32 %conv4, ptr %10, align 4, !dbg !5212
  br label %if.end5, !dbg !5213

if.end5:                                          ; preds = %if.then3, %sw.bb1
  store i32 1, ptr %type, align 4, !dbg !5214
  br label %sw.epilog41, !dbg !5215

sw.bb6:                                           ; preds = %if.end
  %11 = load ptr, ptr %bytes.addr, align 8, !dbg !5216
  store i32 1, ptr %11, align 4, !dbg !5217
  br label %sw.bb7, !dbg !5218

sw.bb7:                                           ; preds = %if.end, %sw.bb6
  %12 = load ptr, ptr %bytes.addr, align 8, !dbg !5219
  %13 = load i32, ptr %12, align 4, !dbg !5221
  %tobool8 = icmp ne i32 %13, 0, !dbg !5221
  br i1 %tobool8, label %if.end12, label %if.then9, !dbg !5222

if.then9:                                         ; preds = %sw.bb7
  %14 = load ptr, ptr %insn.addr, align 8, !dbg !5223
  %opnd_bytes10 = getelementptr inbounds %struct.insn, ptr %14, i32 0, i32 11, !dbg !5224
  %15 = load i8, ptr %opnd_bytes10, align 8, !dbg !5224
  %conv11 = zext i8 %15 to i32, !dbg !5223
  %16 = load ptr, ptr %bytes.addr, align 8, !dbg !5225
  store i32 %conv11, ptr %16, align 4, !dbg !5226
  br label %if.end12, !dbg !5227

if.end12:                                         ; preds = %if.then9, %sw.bb7
  store i32 2, ptr %type, align 4, !dbg !5228
  br label %sw.epilog41, !dbg !5229

sw.bb13:                                          ; preds = %if.end
  %17 = load ptr, ptr %bytes.addr, align 8, !dbg !5230
  store i32 1, ptr %17, align 4, !dbg !5231
  br label %sw.bb14, !dbg !5232

sw.bb14:                                          ; preds = %if.end, %sw.bb13
  %18 = load ptr, ptr %bytes.addr, align 8, !dbg !5233
  %19 = load i32, ptr %18, align 4, !dbg !5235
  %tobool15 = icmp ne i32 %19, 0, !dbg !5235
  br i1 %tobool15, label %if.end19, label %if.then16, !dbg !5236

if.then16:                                        ; preds = %sw.bb14
  %20 = load ptr, ptr %insn.addr, align 8, !dbg !5237
  %opnd_bytes17 = getelementptr inbounds %struct.insn, ptr %20, i32 0, i32 11, !dbg !5238
  %21 = load i8, ptr %opnd_bytes17, align 8, !dbg !5238
  %conv18 = zext i8 %21 to i32, !dbg !5237
  %22 = load ptr, ptr %bytes.addr, align 8, !dbg !5239
  store i32 %conv18, ptr %22, align 4, !dbg !5240
  br label %if.end19, !dbg !5241

if.end19:                                         ; preds = %if.then16, %sw.bb14
  store i32 3, ptr %type, align 4, !dbg !5242
  br label %sw.epilog41, !dbg !5243

sw.bb20:                                          ; preds = %if.end
  %23 = load ptr, ptr %bytes.addr, align 8, !dbg !5244
  store i32 1, ptr %23, align 4, !dbg !5245
  br label %sw.bb21, !dbg !5246

sw.bb21:                                          ; preds = %if.end, %sw.bb20
  %24 = load ptr, ptr %bytes.addr, align 8, !dbg !5247
  %25 = load i32, ptr %24, align 4, !dbg !5249
  %tobool22 = icmp ne i32 %25, 0, !dbg !5249
  br i1 %tobool22, label %if.end26, label %if.then23, !dbg !5250

if.then23:                                        ; preds = %sw.bb21
  %26 = load ptr, ptr %insn.addr, align 8, !dbg !5251
  %opnd_bytes24 = getelementptr inbounds %struct.insn, ptr %26, i32 0, i32 11, !dbg !5252
  %27 = load i8, ptr %opnd_bytes24, align 8, !dbg !5252
  %conv25 = zext i8 %27 to i32, !dbg !5251
  %28 = load ptr, ptr %bytes.addr, align 8, !dbg !5253
  store i32 %conv25, ptr %28, align 4, !dbg !5254
  br label %if.end26, !dbg !5255

if.end26:                                         ; preds = %if.then23, %sw.bb21
  store i32 6, ptr %type, align 4, !dbg !5256
  br label %sw.epilog41, !dbg !5257

sw.bb27:                                          ; preds = %if.end
  %29 = load ptr, ptr %insn.addr, align 8, !dbg !5258
  %opcode28 = getelementptr inbounds %struct.insn, ptr %29, i32 0, i32 3, !dbg !5259
  %30 = getelementptr inbounds %struct.insn_field, ptr %opcode28, i32 0, i32 0, !dbg !5260
  %arrayidx29 = getelementptr [4 x i8], ptr %30, i64 0, i64 1, !dbg !5258
  %31 = load i8, ptr %arrayidx29, align 1, !dbg !5258
  %conv30 = zext i8 %31 to i32, !dbg !5258
  switch i32 %conv30, label %sw.epilog [
    i32 182, label %sw.bb31
    i32 183, label %sw.bb32
    i32 190, label %sw.bb36
    i32 191, label %sw.bb37
  ], !dbg !5261

sw.bb31:                                          ; preds = %sw.bb27
  %32 = load ptr, ptr %bytes.addr, align 8, !dbg !5262
  store i32 1, ptr %32, align 4, !dbg !5264
  br label %sw.bb32, !dbg !5265

sw.bb32:                                          ; preds = %sw.bb27, %sw.bb31
  %33 = load ptr, ptr %bytes.addr, align 8, !dbg !5266
  %34 = load i32, ptr %33, align 4, !dbg !5268
  %tobool33 = icmp ne i32 %34, 0, !dbg !5268
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !5269

if.then34:                                        ; preds = %sw.bb32
  %35 = load ptr, ptr %bytes.addr, align 8, !dbg !5270
  store i32 2, ptr %35, align 4, !dbg !5271
  br label %if.end35, !dbg !5272

if.end35:                                         ; preds = %if.then34, %sw.bb32
  store i32 4, ptr %type, align 4, !dbg !5273
  br label %sw.epilog, !dbg !5274

sw.bb36:                                          ; preds = %sw.bb27
  %36 = load ptr, ptr %bytes.addr, align 8, !dbg !5275
  store i32 1, ptr %36, align 4, !dbg !5276
  br label %sw.bb37, !dbg !5277

sw.bb37:                                          ; preds = %sw.bb27, %sw.bb36
  %37 = load ptr, ptr %bytes.addr, align 8, !dbg !5278
  %38 = load i32, ptr %37, align 4, !dbg !5280
  %tobool38 = icmp ne i32 %38, 0, !dbg !5280
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !5281

if.then39:                                        ; preds = %sw.bb37
  %39 = load ptr, ptr %bytes.addr, align 8, !dbg !5282
  store i32 2, ptr %39, align 4, !dbg !5283
  br label %if.end40, !dbg !5284

if.end40:                                         ; preds = %if.then39, %sw.bb37
  store i32 5, ptr %type, align 4, !dbg !5285
  br label %sw.epilog, !dbg !5286

sw.epilog:                                        ; preds = %sw.bb27, %if.end40, %if.end35
  br label %sw.epilog41, !dbg !5287

sw.epilog41:                                      ; preds = %if.end, %sw.epilog, %if.end26, %if.end19, %if.end12, %if.end5
  %40 = load i32, ptr %type, align 4, !dbg !5288
  store i32 %40, ptr %retval, align 4, !dbg !5289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5289

cleanup:                                          ; preds = %sw.epilog41, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15, !dbg !5290
  %41 = load i32, ptr %retval, align 4, !dbg !5290
  ret i32 %41, !dbg !5290
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #4 align 16 !dbg !5291 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !5293, metadata !DIExpression()), !dbg !5296
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #15, !dbg !5297
  call void @llvm.dbg.declare(metadata ptr %low, metadata !5294, metadata !DIExpression()), !dbg !5297
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #15, !dbg !5297
  call void @llvm.dbg.declare(metadata ptr %high, metadata !5295, metadata !DIExpression()), !dbg !5297
  %0 = load i32, ptr %msr.addr, align 4, !dbg !5298
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #15, !dbg !5299, !srcloc !5300
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !5299
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !5299
  store i64 %asmresult, ptr %low, align 8, !dbg !5299
  store i64 %asmresult1, ptr %high, align 8, !dbg !5299
  %2 = load i64, ptr %low, align 8, !dbg !5301
  %3 = load i64, ptr %high, align 8, !dbg !5301
  %shl = shl i64 %3, 32, !dbg !5301
  %or = or i64 %2, %shl, !dbg !5301
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #15, !dbg !5302
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #15, !dbg !5302
  ret i64 %or, !dbg !5303
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #4 align 16 !dbg !5304 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5320, metadata !DIExpression()), !dbg !5321
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5322
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #16, !dbg !5323
  ret i1 %call, !dbg !5324
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5325 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #4 align 16 !dbg !5328 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5333, metadata !DIExpression()), !dbg !5336
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5334, metadata !DIExpression()), !dbg !5337
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5338
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5339, !range !4467, !noundef !519
  %tobool = trunc i8 %1 to i1, !dbg !5339
  %conv = zext i1 %tobool to i32, !dbg !5339
  %or = or i32 2, %conv, !dbg !5340
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #15
          to label %asm.fallthrough [label %l_yes], !dbg !5341, !srcloc !5342

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5343
  br label %return, !dbg !5343

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5335), !dbg !5344
  store i1 true, ptr %retval, align 1, !dbg !5345
  br label %return, !dbg !5345

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5346
  ret i1 %2, !dbg !5346
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5347 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #4 align 16 !dbg !5351 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #15, !dbg !5362
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5356, metadata !DIExpression()), !dbg !5362
  br label %do.body, !dbg !5362

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5363
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5358, metadata !DIExpression()), !dbg !5363
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5363
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5363
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #15, !dbg !5362
  br label %do.cond, !dbg !5363

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5363

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #15, !dbg !5364
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5360, metadata !DIExpression()), !dbg !5364
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #17, !dbg !5364, !srcloc !5365
  store i64 %1, ptr %pfo_val__, align 8, !dbg !5364
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !5364
  %3 = inttoptr i64 %2 to ptr, !dbg !5364
  store ptr %3, ptr %tmp, align 8, !dbg !5364
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #15, !dbg !5362
  %4 = load ptr, ptr %tmp, align 8, !dbg !5364
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !5362
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !5362
  store ptr %5, ptr %tmp1, align 8, !dbg !5362
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #15, !dbg !5366
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5362
  ret ptr %6, !dbg !5367
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5368 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_store_gdt(ptr noundef %dtr) #5 align 16 !dbg !5369 {
entry:
  %dtr.addr = alloca ptr, align 8
  store ptr %dtr, ptr %dtr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dtr.addr, metadata !5374, metadata !DIExpression()), !dbg !5375
  %0 = load ptr, ptr %dtr.addr, align 8, !dbg !5376
  call void asm sideeffect "sgdt $0", "=*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.desc_ptr) %0) #15, !dbg !5377, !srcloc !5378
  ret void, !dbg !5379
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_regno(ptr noundef %insn, i32 noundef %type) #0 align 16 !dbg !4059 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %nr_registers = alloca i32, align 4
  %regno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp70 = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp111 = alloca i64, align 8
  %tmp120 = alloca i64, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4110, metadata !DIExpression()), !dbg !5380
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4111, metadata !DIExpression()), !dbg !5381
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_registers) #15, !dbg !5382
  call void @llvm.dbg.declare(metadata ptr %nr_registers, metadata !4112, metadata !DIExpression()), !dbg !5383
  store i32 16, ptr %nr_registers, align 4, !dbg !5383
  call void @llvm.lifetime.start.p0(i64 4, ptr %regno) #15, !dbg !5384
  call void @llvm.dbg.declare(metadata ptr %regno, metadata !4113, metadata !DIExpression()), !dbg !5385
  store i32 0, ptr %regno, align 4, !dbg !5385
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !5386
  %x86_64 = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 14, !dbg !5388
  %1 = load i8, ptr %x86_64, align 1, !dbg !5388
  %tobool = icmp ne i8 %1, 0, !dbg !5386
  br i1 %tobool, label %if.end, label %if.then, !dbg !5389

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %nr_registers, align 4, !dbg !5390
  %sub = sub i32 %2, 8, !dbg !5390
  store i32 %sub, ptr %nr_registers, align 4, !dbg !5390
  br label %if.end, !dbg !5391

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %type.addr, align 4, !dbg !5392
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb20
    i32 3, label %sw.bb37
  ], !dbg !5393

sw.bb:                                            ; preds = %if.end
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !5394
  %modrm = getelementptr inbounds %struct.insn, ptr %4, i32 0, i32 4, !dbg !5394
  %5 = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 0, !dbg !5394
  %6 = load i32, ptr %5, align 8, !dbg !5394
  %and = and i32 %6, 7, !dbg !5394
  store i32 %and, ptr %regno, align 4, !dbg !5396
  %7 = load ptr, ptr %insn.addr, align 8, !dbg !5397
  %modrm1 = getelementptr inbounds %struct.insn, ptr %7, i32 0, i32 4, !dbg !5397
  %8 = getelementptr inbounds %struct.insn_field, ptr %modrm1, i32 0, i32 0, !dbg !5397
  %9 = load i32, ptr %8, align 8, !dbg !5397
  %and2 = and i32 %9, 192, !dbg !5397
  %shr = ashr i32 %and2, 6, !dbg !5397
  %tobool3 = icmp ne i32 %shr, 0, !dbg !5397
  br i1 %tobool3, label %if.end5, label %land.lhs.true, !dbg !5399

land.lhs.true:                                    ; preds = %sw.bb
  %10 = load i32, ptr %regno, align 4, !dbg !5400
  %cmp = icmp eq i32 %10, 5, !dbg !5401
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !5402

if.then4:                                         ; preds = %land.lhs.true
  store i32 -33, ptr %retval, align 4, !dbg !5403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5403

if.end5:                                          ; preds = %land.lhs.true, %sw.bb
  %11 = load ptr, ptr %insn.addr, align 8, !dbg !5404
  %rex_prefix = getelementptr inbounds %struct.insn, ptr %11, i32 0, i32 1, !dbg !5404
  %12 = getelementptr inbounds %struct.insn_field, ptr %rex_prefix, i32 0, i32 0, !dbg !5404
  %13 = load i32, ptr %12, align 8, !dbg !5404
  %and6 = and i32 %13, 1, !dbg !5404
  %tobool7 = icmp ne i32 %and6, 0, !dbg !5404
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5406

if.then8:                                         ; preds = %if.end5
  %14 = load i32, ptr %regno, align 4, !dbg !5407
  %add = add i32 %14, 8, !dbg !5407
  store i32 %add, ptr %regno, align 4, !dbg !5407
  br label %if.end9, !dbg !5408

if.end9:                                          ; preds = %if.then8, %if.end5
  br label %sw.epilog, !dbg !5409

sw.bb10:                                          ; preds = %if.end
  %15 = load ptr, ptr %insn.addr, align 8, !dbg !5410
  %modrm11 = getelementptr inbounds %struct.insn, ptr %15, i32 0, i32 4, !dbg !5410
  %16 = getelementptr inbounds %struct.insn_field, ptr %modrm11, i32 0, i32 0, !dbg !5410
  %17 = load i32, ptr %16, align 8, !dbg !5410
  %and12 = and i32 %17, 56, !dbg !5410
  %shr13 = ashr i32 %and12, 3, !dbg !5410
  store i32 %shr13, ptr %regno, align 4, !dbg !5411
  %18 = load ptr, ptr %insn.addr, align 8, !dbg !5412
  %rex_prefix14 = getelementptr inbounds %struct.insn, ptr %18, i32 0, i32 1, !dbg !5412
  %19 = getelementptr inbounds %struct.insn_field, ptr %rex_prefix14, i32 0, i32 0, !dbg !5412
  %20 = load i32, ptr %19, align 8, !dbg !5412
  %and15 = and i32 %20, 4, !dbg !5412
  %tobool16 = icmp ne i32 %and15, 0, !dbg !5412
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !5414

if.then17:                                        ; preds = %sw.bb10
  %21 = load i32, ptr %regno, align 4, !dbg !5415
  %add18 = add i32 %21, 8, !dbg !5415
  store i32 %add18, ptr %regno, align 4, !dbg !5415
  br label %if.end19, !dbg !5416

if.end19:                                         ; preds = %if.then17, %sw.bb10
  br label %sw.epilog, !dbg !5417

sw.bb20:                                          ; preds = %if.end
  %22 = load ptr, ptr %insn.addr, align 8, !dbg !5418
  %sib = getelementptr inbounds %struct.insn, ptr %22, i32 0, i32 5, !dbg !5418
  %23 = getelementptr inbounds %struct.insn_field, ptr %sib, i32 0, i32 0, !dbg !5418
  %24 = load i32, ptr %23, align 8, !dbg !5418
  %and21 = and i32 %24, 56, !dbg !5418
  %shr22 = ashr i32 %and21, 3, !dbg !5418
  store i32 %shr22, ptr %regno, align 4, !dbg !5419
  %25 = load ptr, ptr %insn.addr, align 8, !dbg !5420
  %rex_prefix23 = getelementptr inbounds %struct.insn, ptr %25, i32 0, i32 1, !dbg !5420
  %26 = getelementptr inbounds %struct.insn_field, ptr %rex_prefix23, i32 0, i32 0, !dbg !5420
  %27 = load i32, ptr %26, align 8, !dbg !5420
  %and24 = and i32 %27, 2, !dbg !5420
  %tobool25 = icmp ne i32 %and24, 0, !dbg !5420
  br i1 %tobool25, label %if.then26, label %if.end28, !dbg !5422

if.then26:                                        ; preds = %sw.bb20
  %28 = load i32, ptr %regno, align 4, !dbg !5423
  %add27 = add i32 %28, 8, !dbg !5423
  store i32 %add27, ptr %regno, align 4, !dbg !5423
  br label %if.end28, !dbg !5424

if.end28:                                         ; preds = %if.then26, %sw.bb20
  %29 = load ptr, ptr %insn.addr, align 8, !dbg !5425
  %modrm29 = getelementptr inbounds %struct.insn, ptr %29, i32 0, i32 4, !dbg !5425
  %30 = getelementptr inbounds %struct.insn_field, ptr %modrm29, i32 0, i32 0, !dbg !5425
  %31 = load i32, ptr %30, align 8, !dbg !5425
  %and30 = and i32 %31, 192, !dbg !5425
  %shr31 = ashr i32 %and30, 6, !dbg !5425
  %cmp32 = icmp ne i32 %shr31, 3, !dbg !5427
  br i1 %cmp32, label %land.lhs.true33, label %if.end36, !dbg !5428

land.lhs.true33:                                  ; preds = %if.end28
  %32 = load i32, ptr %regno, align 4, !dbg !5429
  %cmp34 = icmp eq i32 %32, 4, !dbg !5430
  br i1 %cmp34, label %if.then35, label %if.end36, !dbg !5431

if.then35:                                        ; preds = %land.lhs.true33
  store i32 -33, ptr %retval, align 4, !dbg !5432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5432

if.end36:                                         ; preds = %land.lhs.true33, %if.end28
  br label %sw.epilog, !dbg !5433

sw.bb37:                                          ; preds = %if.end
  %33 = load ptr, ptr %insn.addr, align 8, !dbg !5434
  %sib38 = getelementptr inbounds %struct.insn, ptr %33, i32 0, i32 5, !dbg !5434
  %34 = getelementptr inbounds %struct.insn_field, ptr %sib38, i32 0, i32 0, !dbg !5434
  %35 = load i32, ptr %34, align 8, !dbg !5434
  %and39 = and i32 %35, 7, !dbg !5434
  store i32 %and39, ptr %regno, align 4, !dbg !5435
  %36 = load ptr, ptr %insn.addr, align 8, !dbg !5436
  %modrm40 = getelementptr inbounds %struct.insn, ptr %36, i32 0, i32 4, !dbg !5436
  %37 = getelementptr inbounds %struct.insn_field, ptr %modrm40, i32 0, i32 0, !dbg !5436
  %38 = load i32, ptr %37, align 8, !dbg !5436
  %and41 = and i32 %38, 192, !dbg !5436
  %shr42 = ashr i32 %and41, 6, !dbg !5436
  %tobool43 = icmp ne i32 %shr42, 0, !dbg !5436
  br i1 %tobool43, label %if.end47, label %land.lhs.true44, !dbg !5438

land.lhs.true44:                                  ; preds = %sw.bb37
  %39 = load i32, ptr %regno, align 4, !dbg !5439
  %cmp45 = icmp eq i32 %39, 5, !dbg !5440
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5441

if.then46:                                        ; preds = %land.lhs.true44
  store i32 -33, ptr %retval, align 4, !dbg !5442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5442

if.end47:                                         ; preds = %land.lhs.true44, %sw.bb37
  %40 = load ptr, ptr %insn.addr, align 8, !dbg !5443
  %rex_prefix48 = getelementptr inbounds %struct.insn, ptr %40, i32 0, i32 1, !dbg !5443
  %41 = getelementptr inbounds %struct.insn_field, ptr %rex_prefix48, i32 0, i32 0, !dbg !5443
  %42 = load i32, ptr %41, align 8, !dbg !5443
  %and49 = and i32 %42, 1, !dbg !5443
  %tobool50 = icmp ne i32 %and49, 0, !dbg !5443
  br i1 %tobool50, label %if.then51, label %if.end53, !dbg !5445

if.then51:                                        ; preds = %if.end47
  %43 = load i32, ptr %regno, align 4, !dbg !5446
  %add52 = add i32 %43, 8, !dbg !5446
  store i32 %add52, ptr %regno, align 4, !dbg !5446
  br label %if.end53, !dbg !5447

if.end53:                                         ; preds = %if.then51, %if.end47
  br label %sw.epilog, !dbg !5448

sw.default:                                       ; preds = %if.end
  %call = call i32 @___ratelimit(ptr noundef @get_regno._rs, ptr noundef @__func__.get_regno) #16, !dbg !5449
  %tobool54 = icmp ne i32 %call, 0, !dbg !5449
  br i1 %tobool54, label %if.then55, label %if.end57, !dbg !5452

if.then55:                                        ; preds = %sw.default
  br label %do.body, !dbg !5453

do.body:                                          ; preds = %if.then55
  br label %do.cond, !dbg !5455

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5455

do.end:                                           ; preds = %do.cond
  %44 = load i32, ptr %type.addr, align 4, !dbg !5453
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef %44) #18, !dbg !5453
  store i32 %call56, ptr %tmp, align 4, !dbg !5455
  %45 = load i32, ptr %tmp, align 4, !dbg !5453
  br label %if.end57, !dbg !5449

if.end57:                                         ; preds = %do.end, %sw.default
  store i32 -22, ptr %retval, align 4, !dbg !5457
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5457

sw.epilog:                                        ; preds = %if.end53, %if.end36, %if.end19, %if.end9
  %46 = load i32, ptr %regno, align 4, !dbg !5458
  %47 = load i32, ptr %nr_registers, align 4, !dbg !5459
  %cmp58 = icmp sge i32 %46, %47, !dbg !5460
  br i1 %cmp58, label %if.then59, label %if.end128, !dbg !5461

if.then59:                                        ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #15, !dbg !5462
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !4114, metadata !DIExpression()), !dbg !5462
  store i8 1, ptr %__ret_do_once, align 1, !dbg !5462
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #15, !dbg !5463
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !4118, metadata !DIExpression()), !dbg !5463
  %48 = load i8, ptr %__ret_do_once, align 1, !dbg !5463, !range !4467, !noundef !519
  %tobool60 = trunc i8 %48 to i1, !dbg !5463
  %lnot = xor i1 %tobool60, true, !dbg !5463
  %lnot61 = xor i1 %lnot, true, !dbg !5463
  %frombool = zext i1 %lnot61 to i8, !dbg !5463
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !5463
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #15, !dbg !5463
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !4121, metadata !DIExpression()), !dbg !5463
  store i8 0, ptr %__ret_once, align 1, !dbg !5463
  %49 = load i8, ptr %__ret_cond, align 1, !dbg !5464, !range !4467, !noundef !519
  %tobool62 = trunc i8 %49 to i1, !dbg !5464
  br i1 %tobool62, label %land.rhs, label %land.end, !dbg !5464

land.rhs:                                         ; preds = %if.then59
  %50 = load i8, ptr @get_regno.__already_done, align 1, !dbg !5464, !range !4467, !noundef !519
  %tobool63 = trunc i8 %50 to i1, !dbg !5464
  %lnot64 = xor i1 %tobool63, true, !dbg !5464
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then59
  %51 = phi i1 [ false, %if.then59 ], [ %lnot64, %land.rhs ], !dbg !5466
  %lnot65 = xor i1 %51, true, !dbg !5464
  %lnot66 = xor i1 %lnot65, true, !dbg !5464
  %lnot.ext = zext i1 %lnot66 to i32, !dbg !5464
  %conv = sext i32 %lnot.ext to i64, !dbg !5464
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5464
  %tobool67 = icmp ne i64 %expval, 0, !dbg !5464
  br i1 %tobool67, label %if.then68, label %if.end69, !dbg !5463

if.then68:                                        ; preds = %land.end
  store i8 1, ptr @get_regno.__already_done, align 1, !dbg !5467
  store i8 1, ptr %__ret_once, align 1, !dbg !5467
  br label %if.end69, !dbg !5467

if.end69:                                         ; preds = %if.then68, %land.end
  %52 = load i8, ptr %__ret_once, align 1, !dbg !5463, !range !4467, !noundef !519
  %tobool71 = trunc i8 %52 to i1, !dbg !5463
  %lnot72 = xor i1 %tobool71, true, !dbg !5463
  %lnot74 = xor i1 %lnot72, true, !dbg !5463
  %lnot.ext75 = zext i1 %lnot74 to i32, !dbg !5463
  %conv76 = sext i32 %lnot.ext75 to i64, !dbg !5463
  %expval77 = call i64 @llvm.expect.i64(i64 %conv76, i64 0), !dbg !5463
  store i64 %expval77, ptr %tmp70, align 8, !dbg !5464
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #15, !dbg !5469
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #15, !dbg !5469
  %53 = load i64, ptr %tmp70, align 8, !dbg !5463
  %tobool78 = icmp ne i64 %53, 0, !dbg !5469
  br i1 %tobool78, label %if.then79, label %if.end119, !dbg !5462

if.then79:                                        ; preds = %if.end69
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5470
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4122, metadata !DIExpression()), !dbg !5470
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !5470
  %54 = load i32, ptr %__ret_warn_on, align 4, !dbg !5471
  %tobool80 = icmp ne i32 %54, 0, !dbg !5471
  %lnot81 = xor i1 %tobool80, true, !dbg !5471
  %lnot83 = xor i1 %lnot81, true, !dbg !5471
  %lnot.ext84 = zext i1 %lnot83 to i32, !dbg !5471
  %conv85 = sext i32 %lnot.ext84 to i64, !dbg !5471
  %expval86 = call i64 @llvm.expect.i64(i64 %conv85, i64 0), !dbg !5471
  %tobool87 = icmp ne i64 %expval86, 0, !dbg !5471
  br i1 %tobool87, label %if.then88, label %if.end110, !dbg !5470

if.then88:                                        ; preds = %if.then79
  br label %do.body89, !dbg !5471

do.body89:                                        ; preds = %if.then88
  br label %do.body90, !dbg !5472

do.body90:                                        ; preds = %do.body89
  br label %do.cond91, !dbg !5473

do.cond91:                                        ; preds = %do.body90
  br label %do.end92, !dbg !5473

do.end92:                                         ; preds = %do.cond91
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.1) #16, !dbg !5472
  br label %do.body93, !dbg !5472

do.body93:                                        ; preds = %do.end92
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5475
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4124, metadata !DIExpression()), !dbg !5475
  store i32 2313, ptr %__flags, align 4, !dbg !5475
  br label %do.body94, !dbg !5475

do.body94:                                        ; preds = %do.body93
  br label %do.cond95, !dbg !5476

do.cond95:                                        ; preds = %do.body94
  br label %do.end96, !dbg !5476

do.end96:                                         ; preds = %do.cond95
  br label %do.body97, !dbg !5475

do.body97:                                        ; preds = %do.end96
  %55 = load i32, ptr %__flags, align 4, !dbg !5478
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 516, i32 %55, i64 12) #15, !dbg !5478, !srcloc !5480
  br label %do.cond98, !dbg !5478

do.cond98:                                        ; preds = %do.body97
  br label %do.end99, !dbg !5478

do.end99:                                         ; preds = %do.cond98
  br label %do.body100, !dbg !5475

do.body100:                                       ; preds = %do.end99
  br label %do.cond101, !dbg !5481

do.cond101:                                       ; preds = %do.body100
  br label %do.end102, !dbg !5481

do.end102:                                        ; preds = %do.cond101
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5472
  br label %do.cond103, !dbg !5475

do.cond103:                                       ; preds = %do.end102
  br label %do.end104, !dbg !5475

do.end104:                                        ; preds = %do.cond103
  br label %do.body105, !dbg !5472

do.body105:                                       ; preds = %do.end104
  br label %do.cond106, !dbg !5483

do.cond106:                                       ; preds = %do.body105
  br label %do.end107, !dbg !5483

do.end107:                                        ; preds = %do.cond106
  br label %do.cond108, !dbg !5472

do.cond108:                                       ; preds = %do.end107
  br label %do.end109, !dbg !5472

do.end109:                                        ; preds = %do.cond108
  br label %if.end110, !dbg !5472

if.end110:                                        ; preds = %do.end109, %if.then79
  %56 = load i32, ptr %__ret_warn_on, align 4, !dbg !5470
  %tobool112 = icmp ne i32 %56, 0, !dbg !5470
  %lnot113 = xor i1 %tobool112, true, !dbg !5470
  %lnot115 = xor i1 %lnot113, true, !dbg !5470
  %lnot.ext116 = zext i1 %lnot115 to i32, !dbg !5470
  %conv117 = sext i32 %lnot.ext116 to i64, !dbg !5470
  %expval118 = call i64 @llvm.expect.i64(i64 %conv117, i64 0), !dbg !5470
  store i64 %expval118, ptr %tmp111, align 8, !dbg !5471
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5469
  %57 = load i64, ptr %tmp111, align 8, !dbg !5470
  br label %if.end119, !dbg !5469

if.end119:                                        ; preds = %if.end110, %if.end69
  %58 = load i8, ptr %__ret_do_once, align 1, !dbg !5462, !range !4467, !noundef !519
  %tobool121 = trunc i8 %58 to i1, !dbg !5462
  %lnot122 = xor i1 %tobool121, true, !dbg !5462
  %lnot124 = xor i1 %lnot122, true, !dbg !5462
  %lnot.ext125 = zext i1 %lnot124 to i32, !dbg !5462
  %conv126 = sext i32 %lnot.ext125 to i64, !dbg !5462
  %expval127 = call i64 @llvm.expect.i64(i64 %conv126, i64 0), !dbg !5462
  store i64 %expval127, ptr %tmp120, align 8, !dbg !5469
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #15, !dbg !5485
  %59 = load i64, ptr %tmp120, align 8, !dbg !5462
  store i32 -22, ptr %retval, align 4, !dbg !5486
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5486

if.end128:                                        ; preds = %sw.epilog
  %60 = load i32, ptr %regno, align 4, !dbg !5487
  store i32 %60, ptr %retval, align 4, !dbg !5488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5488

cleanup:                                          ; preds = %if.end128, %if.end119, %if.end57, %if.then46, %if.then35, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %regno) #15, !dbg !5489
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_registers) #15, !dbg !5489
  %61 = load i32, ptr %retval, align 4, !dbg !5489
  ret i32 %61, !dbg !5489
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5490 dso_local i32 @___ratelimit(ptr noundef, ptr noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5494 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5498 dso_local void @__warn_printk(ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5501 dso_local i32 @insn_get_displacement(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_eff_addr_reg(ptr noundef %insn, ptr noundef %regs, ptr noundef %regoff, ptr noundef %eff_addr) #0 align 16 !dbg !5502 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %regoff.addr = alloca ptr, align 8
  %eff_addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5507, metadata !DIExpression()), !dbg !5512
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5508, metadata !DIExpression()), !dbg !5513
  store ptr %regoff, ptr %regoff.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regoff.addr, metadata !5509, metadata !DIExpression()), !dbg !5514
  store ptr %eff_addr, ptr %eff_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eff_addr.addr, metadata !5510, metadata !DIExpression()), !dbg !5515
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5516
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5511, metadata !DIExpression()), !dbg !5517
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !5518
  %call = call i32 @insn_get_modrm(ptr noundef %0) #16, !dbg !5519
  store i32 %call, ptr %ret, align 4, !dbg !5520
  %1 = load i32, ptr %ret, align 4, !dbg !5521
  %tobool = icmp ne i32 %1, 0, !dbg !5521
  br i1 %tobool, label %if.then, label %if.end, !dbg !5523

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !5524
  store i32 %2, ptr %retval, align 4, !dbg !5525
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5525

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !5526
  %modrm = getelementptr inbounds %struct.insn, ptr %3, i32 0, i32 4, !dbg !5526
  %4 = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 0, !dbg !5526
  %5 = load i32, ptr %4, align 8, !dbg !5526
  %and = and i32 %5, 192, !dbg !5526
  %shr = ashr i32 %and, 6, !dbg !5526
  %cmp = icmp ne i32 %shr, 3, !dbg !5528
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5529

if.then1:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5530
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5530

if.end2:                                          ; preds = %if.end
  %6 = load ptr, ptr %insn.addr, align 8, !dbg !5531
  %7 = load ptr, ptr %regs.addr, align 8, !dbg !5532
  %call3 = call i32 @get_reg_offset(ptr noundef %6, ptr noundef %7, i32 noundef 0) #16, !dbg !5533
  %8 = load ptr, ptr %regoff.addr, align 8, !dbg !5534
  store i32 %call3, ptr %8, align 4, !dbg !5535
  %9 = load ptr, ptr %regoff.addr, align 8, !dbg !5536
  %10 = load i32, ptr %9, align 4, !dbg !5538
  %cmp4 = icmp slt i32 %10, 0, !dbg !5539
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5540

if.then5:                                         ; preds = %if.end2
  store i32 -22, ptr %retval, align 4, !dbg !5541
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5541

if.end6:                                          ; preds = %if.end2
  %11 = load ptr, ptr %insn.addr, align 8, !dbg !5542
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %11, i32 0, i32 12, !dbg !5544
  %12 = load i8, ptr %addr_bytes, align 1, !dbg !5544
  %conv = zext i8 %12 to i32, !dbg !5542
  %cmp7 = icmp eq i32 %conv, 2, !dbg !5545
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !5546

if.then9:                                         ; preds = %if.end6
  %13 = load ptr, ptr %regs.addr, align 8, !dbg !5547
  %14 = load ptr, ptr %regoff.addr, align 8, !dbg !5548
  %15 = load i32, ptr %14, align 4, !dbg !5549
  %call10 = call i64 @regs_get_register(ptr noundef %13, i32 noundef %15) #16, !dbg !5550
  %and11 = and i64 %call10, 65535, !dbg !5551
  %16 = load ptr, ptr %eff_addr.addr, align 8, !dbg !5552
  store i64 %and11, ptr %16, align 8, !dbg !5553
  br label %if.end22, !dbg !5554

if.else:                                          ; preds = %if.end6
  %17 = load ptr, ptr %insn.addr, align 8, !dbg !5555
  %addr_bytes12 = getelementptr inbounds %struct.insn, ptr %17, i32 0, i32 12, !dbg !5557
  %18 = load i8, ptr %addr_bytes12, align 1, !dbg !5557
  %conv13 = zext i8 %18 to i32, !dbg !5555
  %cmp14 = icmp eq i32 %conv13, 4, !dbg !5558
  br i1 %cmp14, label %if.then16, label %if.else19, !dbg !5559

if.then16:                                        ; preds = %if.else
  %19 = load ptr, ptr %regs.addr, align 8, !dbg !5560
  %20 = load ptr, ptr %regoff.addr, align 8, !dbg !5561
  %21 = load i32, ptr %20, align 4, !dbg !5562
  %call17 = call i64 @regs_get_register(ptr noundef %19, i32 noundef %21) #16, !dbg !5563
  %and18 = and i64 %call17, 4294967295, !dbg !5564
  %22 = load ptr, ptr %eff_addr.addr, align 8, !dbg !5565
  store i64 %and18, ptr %22, align 8, !dbg !5566
  br label %if.end21, !dbg !5567

if.else19:                                        ; preds = %if.else
  %23 = load ptr, ptr %regs.addr, align 8, !dbg !5568
  %24 = load ptr, ptr %regoff.addr, align 8, !dbg !5569
  %25 = load i32, ptr %24, align 4, !dbg !5570
  %call20 = call i64 @regs_get_register(ptr noundef %23, i32 noundef %25) #16, !dbg !5571
  %26 = load ptr, ptr %eff_addr.addr, align 8, !dbg !5572
  store i64 %call20, ptr %26, align 8, !dbg !5573
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then16
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then9
  store i32 0, ptr %retval, align 4, !dbg !5574
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5574

cleanup:                                          ; preds = %if.end22, %if.then5, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5575
  %27 = load i32, ptr %retval, align 4, !dbg !5575
  ret i32 %27, !dbg !5575
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_eff_addr_modrm_16(ptr noundef %insn, ptr noundef %regs, ptr noundef %regoff, ptr noundef %eff_addr) #0 align 16 !dbg !5576 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %regoff.addr = alloca ptr, align 8
  %eff_addr.addr = alloca ptr, align 8
  %addr_offset1 = alloca i32, align 4
  %addr_offset2 = alloca i32, align 4
  %ret = alloca i32, align 4
  %addr1 = alloca i16, align 2
  %addr2 = alloca i16, align 2
  %displacement = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5581, metadata !DIExpression()), !dbg !5591
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5582, metadata !DIExpression()), !dbg !5592
  store ptr %regoff, ptr %regoff.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regoff.addr, metadata !5583, metadata !DIExpression()), !dbg !5593
  store ptr %eff_addr, ptr %eff_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eff_addr.addr, metadata !5584, metadata !DIExpression()), !dbg !5594
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr_offset1) #15, !dbg !5595
  call void @llvm.dbg.declare(metadata ptr %addr_offset1, metadata !5585, metadata !DIExpression()), !dbg !5596
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr_offset2) #15, !dbg !5595
  call void @llvm.dbg.declare(metadata ptr %addr_offset2, metadata !5586, metadata !DIExpression()), !dbg !5597
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5595
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5587, metadata !DIExpression()), !dbg !5598
  call void @llvm.lifetime.start.p0(i64 2, ptr %addr1) #15, !dbg !5599
  call void @llvm.dbg.declare(metadata ptr %addr1, metadata !5588, metadata !DIExpression()), !dbg !5600
  store i16 0, ptr %addr1, align 2, !dbg !5600
  call void @llvm.lifetime.start.p0(i64 2, ptr %addr2) #15, !dbg !5599
  call void @llvm.dbg.declare(metadata ptr %addr2, metadata !5589, metadata !DIExpression()), !dbg !5601
  store i16 0, ptr %addr2, align 2, !dbg !5601
  call void @llvm.lifetime.start.p0(i64 2, ptr %displacement) #15, !dbg !5599
  call void @llvm.dbg.declare(metadata ptr %displacement, metadata !5590, metadata !DIExpression()), !dbg !5602
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !5603
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 12, !dbg !5605
  %1 = load i8, ptr %addr_bytes, align 1, !dbg !5605
  %conv = zext i8 %1 to i32, !dbg !5603
  %cmp = icmp ne i32 %conv, 2, !dbg !5606
  br i1 %cmp, label %if.then, label %if.end, !dbg !5607

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5608

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !5609
  %call = call i32 @insn_get_modrm(ptr noundef %2) #16, !dbg !5610
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !5611
  %modrm = getelementptr inbounds %struct.insn, ptr %3, i32 0, i32 4, !dbg !5613
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 2, !dbg !5614
  %4 = load i8, ptr %nbytes, align 1, !dbg !5614
  %tobool = icmp ne i8 %4, 0, !dbg !5611
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !5615

if.then2:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5616

if.end3:                                          ; preds = %if.end
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !5617
  %modrm4 = getelementptr inbounds %struct.insn, ptr %5, i32 0, i32 4, !dbg !5617
  %6 = getelementptr inbounds %struct.insn_field, ptr %modrm4, i32 0, i32 0, !dbg !5617
  %7 = load i32, ptr %6, align 8, !dbg !5617
  %and = and i32 %7, 192, !dbg !5617
  %shr = ashr i32 %and, 6, !dbg !5617
  %cmp5 = icmp sgt i32 %shr, 2, !dbg !5619
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !5620

if.then7:                                         ; preds = %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !5621
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5621

if.end8:                                          ; preds = %if.end3
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !5622
  %9 = load ptr, ptr %regs.addr, align 8, !dbg !5623
  %call9 = call i32 @get_reg_offset_16(ptr noundef %8, ptr noundef %9, ptr noundef %addr_offset1, ptr noundef %addr_offset2) #16, !dbg !5624
  store i32 %call9, ptr %ret, align 4, !dbg !5625
  %10 = load i32, ptr %ret, align 4, !dbg !5626
  %cmp10 = icmp slt i32 %10, 0, !dbg !5628
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5629

if.then12:                                        ; preds = %if.end8
  store i32 -22, ptr %retval, align 4, !dbg !5630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5630

if.end13:                                         ; preds = %if.end8
  %11 = load i32, ptr %addr_offset1, align 4, !dbg !5631
  %cmp14 = icmp ne i32 %11, -33, !dbg !5633
  br i1 %cmp14, label %if.then16, label %if.end20, !dbg !5634

if.then16:                                        ; preds = %if.end13
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !5635
  %13 = load i32, ptr %addr_offset1, align 4, !dbg !5636
  %call17 = call i64 @regs_get_register(ptr noundef %12, i32 noundef %13) #16, !dbg !5637
  %and18 = and i64 %call17, 65535, !dbg !5638
  %conv19 = trunc i64 %and18 to i16, !dbg !5637
  store i16 %conv19, ptr %addr1, align 2, !dbg !5639
  br label %if.end20, !dbg !5640

if.end20:                                         ; preds = %if.then16, %if.end13
  %14 = load i32, ptr %addr_offset2, align 4, !dbg !5641
  %cmp21 = icmp ne i32 %14, -33, !dbg !5643
  br i1 %cmp21, label %if.then23, label %if.end27, !dbg !5644

if.then23:                                        ; preds = %if.end20
  %15 = load ptr, ptr %regs.addr, align 8, !dbg !5645
  %16 = load i32, ptr %addr_offset2, align 4, !dbg !5646
  %call24 = call i64 @regs_get_register(ptr noundef %15, i32 noundef %16) #16, !dbg !5647
  %and25 = and i64 %call24, 65535, !dbg !5648
  %conv26 = trunc i64 %and25 to i16, !dbg !5647
  store i16 %conv26, ptr %addr2, align 2, !dbg !5649
  br label %if.end27, !dbg !5650

if.end27:                                         ; preds = %if.then23, %if.end20
  %17 = load ptr, ptr %insn.addr, align 8, !dbg !5651
  %displacement28 = getelementptr inbounds %struct.insn, ptr %17, i32 0, i32 6, !dbg !5652
  %18 = getelementptr inbounds %struct.insn_field, ptr %displacement28, i32 0, i32 0, !dbg !5653
  %19 = load i32, ptr %18, align 8, !dbg !5653
  %and29 = and i32 %19, 65535, !dbg !5654
  %conv30 = trunc i32 %and29 to i16, !dbg !5651
  store i16 %conv30, ptr %displacement, align 2, !dbg !5655
  %20 = load i16, ptr %addr1, align 2, !dbg !5656
  %conv31 = sext i16 %20 to i32, !dbg !5656
  %21 = load i16, ptr %addr2, align 2, !dbg !5657
  %conv32 = sext i16 %21 to i32, !dbg !5657
  %add = add i32 %conv31, %conv32, !dbg !5658
  %22 = load i16, ptr %displacement, align 2, !dbg !5659
  %conv33 = sext i16 %22 to i32, !dbg !5659
  %add34 = add i32 %add, %conv33, !dbg !5660
  %conv35 = trunc i32 %add34 to i16, !dbg !5656
  %23 = load ptr, ptr %eff_addr.addr, align 8, !dbg !5661
  store i16 %conv35, ptr %23, align 2, !dbg !5662
  %24 = load i32, ptr %addr_offset1, align 4, !dbg !5663
  %25 = load ptr, ptr %regoff.addr, align 8, !dbg !5664
  store i32 %24, ptr %25, align 4, !dbg !5665
  store i32 0, ptr %retval, align 4, !dbg !5666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5666

cleanup:                                          ; preds = %if.end27, %if.then12, %if.then7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %displacement) #15, !dbg !5667
  call void @llvm.lifetime.end.p0(i64 2, ptr %addr2) #15, !dbg !5667
  call void @llvm.lifetime.end.p0(i64 2, ptr %addr1) #15, !dbg !5667
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5667
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr_offset2) #15, !dbg !5667
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr_offset1) #15, !dbg !5667
  %26 = load i32, ptr %retval, align 4, !dbg !5667
  ret i32 %26, !dbg !5667
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_seg_base_limit(ptr noundef %insn, ptr noundef %regs, i32 noundef %regoff, ptr noundef %base, ptr noundef %limit) #0 align 16 !dbg !5668 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %regoff.addr = alloca i32, align 4
  %base.addr = alloca ptr, align 8
  %limit.addr = alloca ptr, align 8
  %seg_reg_idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5672, metadata !DIExpression()), !dbg !5678
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5673, metadata !DIExpression()), !dbg !5679
  store i32 %regoff, ptr %regoff.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regoff.addr, metadata !5674, metadata !DIExpression()), !dbg !5680
  store ptr %base, ptr %base.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5675, metadata !DIExpression()), !dbg !5681
  store ptr %limit, ptr %limit.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %limit.addr, metadata !5676, metadata !DIExpression()), !dbg !5682
  call void @llvm.lifetime.start.p0(i64 4, ptr %seg_reg_idx) #15, !dbg !5683
  call void @llvm.dbg.declare(metadata ptr %seg_reg_idx, metadata !5677, metadata !DIExpression()), !dbg !5684
  %0 = load ptr, ptr %base.addr, align 8, !dbg !5685
  %tobool = icmp ne ptr %0, null, !dbg !5685
  br i1 %tobool, label %if.end, label %if.then, !dbg !5687

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5688
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5688

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !5689
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !5690
  %3 = load i32, ptr %regoff.addr, align 4, !dbg !5691
  %call = call i32 @resolve_seg_reg(ptr noundef %1, ptr noundef %2, i32 noundef %3) #16, !dbg !5692
  store i32 %call, ptr %seg_reg_idx, align 4, !dbg !5693
  %4 = load i32, ptr %seg_reg_idx, align 4, !dbg !5694
  %cmp = icmp slt i32 %4, 0, !dbg !5696
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5697

if.then1:                                         ; preds = %if.end
  %5 = load i32, ptr %seg_reg_idx, align 4, !dbg !5698
  store i32 %5, ptr %retval, align 4, !dbg !5699
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5699

if.end2:                                          ; preds = %if.end
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !5700
  %7 = load i32, ptr %seg_reg_idx, align 4, !dbg !5701
  %call3 = call i64 @insn_get_seg_base(ptr noundef %6, i32 noundef %7) #16, !dbg !5702
  %8 = load ptr, ptr %base.addr, align 8, !dbg !5703
  store i64 %call3, ptr %8, align 8, !dbg !5704
  %9 = load ptr, ptr %base.addr, align 8, !dbg !5705
  %10 = load i64, ptr %9, align 8, !dbg !5707
  %cmp4 = icmp eq i64 %10, -1, !dbg !5708
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5709

if.then5:                                         ; preds = %if.end2
  store i32 -22, ptr %retval, align 4, !dbg !5710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5710

if.end6:                                          ; preds = %if.end2
  %11 = load ptr, ptr %limit.addr, align 8, !dbg !5711
  %tobool7 = icmp ne ptr %11, null, !dbg !5711
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !5713

if.then8:                                         ; preds = %if.end6
  store i32 0, ptr %retval, align 4, !dbg !5714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5714

if.end9:                                          ; preds = %if.end6
  %12 = load ptr, ptr %regs.addr, align 8, !dbg !5715
  %13 = load i32, ptr %seg_reg_idx, align 4, !dbg !5716
  %call10 = call i64 @get_seg_limit(ptr noundef %12, i32 noundef %13) #16, !dbg !5717
  %14 = load ptr, ptr %limit.addr, align 8, !dbg !5718
  store i64 %call10, ptr %14, align 8, !dbg !5719
  %15 = load ptr, ptr %limit.addr, align 8, !dbg !5720
  %16 = load i64, ptr %15, align 8, !dbg !5722
  %tobool11 = icmp ne i64 %16, 0, !dbg !5723
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5724

if.then12:                                        ; preds = %if.end9
  store i32 -22, ptr %retval, align 4, !dbg !5725
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5725

if.end13:                                         ; preds = %if.end9
  store i32 0, ptr %retval, align 4, !dbg !5726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5726

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then8, %if.then5, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %seg_reg_idx) #15, !dbg !5727
  %17 = load i32, ptr %retval, align 4, !dbg !5727
  ret i32 %17, !dbg !5727
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5728 dso_local i32 @insn_get_modrm(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @regs_get_register(ptr noundef %regs, i32 noundef %offset) #5 align 16 !dbg !5729 {
entry:
  %retval = alloca i64, align 8
  %regs.addr = alloca ptr, align 8
  %offset.addr = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5733, metadata !DIExpression()), !dbg !5735
  store i32 %offset, ptr %offset.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5734, metadata !DIExpression()), !dbg !5736
  %0 = load i32, ptr %offset.addr, align 4, !dbg !5737
  %conv = zext i32 %0 to i64, !dbg !5737
  %cmp = icmp ugt i64 %conv, 160, !dbg !5737
  %lnot = xor i1 %cmp, true, !dbg !5737
  %lnot2 = xor i1 %lnot, true, !dbg !5737
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5737
  %conv3 = sext i32 %lnot.ext to i64, !dbg !5737
  %expval = call i64 @llvm.expect.i64(i64 %conv3, i64 0), !dbg !5737
  %tobool = icmp ne i64 %expval, 0, !dbg !5737
  br i1 %tobool, label %if.then, label %if.end, !dbg !5739

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5740
  br label %return, !dbg !5740

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !5741
  %2 = ptrtoint ptr %1 to i64, !dbg !5742
  %3 = load i32, ptr %offset.addr, align 4, !dbg !5743
  %conv4 = zext i32 %3 to i64, !dbg !5743
  %add = add i64 %2, %conv4, !dbg !5744
  %4 = inttoptr i64 %add to ptr, !dbg !5745
  %5 = load i64, ptr %4, align 8, !dbg !5746
  store i64 %5, ptr %retval, align 8, !dbg !5747
  br label %return, !dbg !5747

return:                                           ; preds = %if.end, %if.then
  %6 = load i64, ptr %retval, align 8, !dbg !5748
  ret i64 %6, !dbg !5748
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_reg_offset_16(ptr noundef %insn, ptr noundef %regs, ptr noundef %offs1, ptr noundef %offs2) #0 align 16 !dbg !4152 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %offs1.addr = alloca ptr, align 8
  %offs2.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !4156, metadata !DIExpression()), !dbg !5749
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4157, metadata !DIExpression()), !dbg !5750
  store ptr %offs1, ptr %offs1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offs1.addr, metadata !4158, metadata !DIExpression()), !dbg !5751
  store ptr %offs2, ptr %offs2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offs2.addr, metadata !4159, metadata !DIExpression()), !dbg !5752
  %0 = load ptr, ptr %offs1.addr, align 8, !dbg !5753
  %tobool = icmp ne ptr %0, null, !dbg !5753
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5755

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %offs2.addr, align 8, !dbg !5756
  %tobool1 = icmp ne ptr %1, null, !dbg !5756
  br i1 %tobool1, label %if.end, label %if.then, !dbg !5757

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !5758
  br label %return, !dbg !5758

if.end:                                           ; preds = %lor.lhs.false
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !5759
  %modrm = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 4, !dbg !5759
  %3 = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 0, !dbg !5759
  %4 = load i32, ptr %3, align 8, !dbg !5759
  %and = and i32 %4, 192, !dbg !5759
  %shr = ashr i32 %and, 6, !dbg !5759
  %cmp = icmp eq i32 %shr, 3, !dbg !5761
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5762

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !5763
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !5765
  %call = call i32 @insn_get_modrm_rm_off(ptr noundef %5, ptr noundef %6) #16, !dbg !5766
  %7 = load ptr, ptr %offs1.addr, align 8, !dbg !5767
  store i32 %call, ptr %7, align 4, !dbg !5768
  %8 = load ptr, ptr %offs2.addr, align 8, !dbg !5769
  store i32 -33, ptr %8, align 4, !dbg !5770
  store i32 0, ptr %retval, align 4, !dbg !5771
  br label %return, !dbg !5771

if.end3:                                          ; preds = %if.end
  %9 = load ptr, ptr %insn.addr, align 8, !dbg !5772
  %modrm4 = getelementptr inbounds %struct.insn, ptr %9, i32 0, i32 4, !dbg !5772
  %10 = getelementptr inbounds %struct.insn_field, ptr %modrm4, i32 0, i32 0, !dbg !5772
  %11 = load i32, ptr %10, align 8, !dbg !5772
  %and5 = and i32 %11, 7, !dbg !5772
  %idxprom = sext i32 %and5 to i64, !dbg !5773
  %arrayidx = getelementptr [8 x i32], ptr @get_reg_offset_16.regoff1, i64 0, i64 %idxprom, !dbg !5773
  %12 = load i32, ptr %arrayidx, align 4, !dbg !5773
  %13 = load ptr, ptr %offs1.addr, align 8, !dbg !5774
  store i32 %12, ptr %13, align 4, !dbg !5775
  %14 = load ptr, ptr %insn.addr, align 8, !dbg !5776
  %modrm6 = getelementptr inbounds %struct.insn, ptr %14, i32 0, i32 4, !dbg !5776
  %15 = getelementptr inbounds %struct.insn_field, ptr %modrm6, i32 0, i32 0, !dbg !5776
  %16 = load i32, ptr %15, align 8, !dbg !5776
  %and7 = and i32 %16, 7, !dbg !5776
  %idxprom8 = sext i32 %and7 to i64, !dbg !5777
  %arrayidx9 = getelementptr [8 x i32], ptr @get_reg_offset_16.regoff2, i64 0, i64 %idxprom8, !dbg !5777
  %17 = load i32, ptr %arrayidx9, align 4, !dbg !5777
  %18 = load ptr, ptr %offs2.addr, align 8, !dbg !5778
  store i32 %17, ptr %18, align 4, !dbg !5779
  %19 = load ptr, ptr %insn.addr, align 8, !dbg !5780
  %modrm10 = getelementptr inbounds %struct.insn, ptr %19, i32 0, i32 4, !dbg !5780
  %20 = getelementptr inbounds %struct.insn_field, ptr %modrm10, i32 0, i32 0, !dbg !5780
  %21 = load i32, ptr %20, align 8, !dbg !5780
  %and11 = and i32 %21, 192, !dbg !5780
  %shr12 = ashr i32 %and11, 6, !dbg !5780
  %cmp13 = icmp eq i32 %shr12, 0, !dbg !5782
  br i1 %cmp13, label %land.lhs.true, label %if.end18, !dbg !5783

land.lhs.true:                                    ; preds = %if.end3
  %22 = load ptr, ptr %insn.addr, align 8, !dbg !5784
  %modrm14 = getelementptr inbounds %struct.insn, ptr %22, i32 0, i32 4, !dbg !5784
  %23 = getelementptr inbounds %struct.insn_field, ptr %modrm14, i32 0, i32 0, !dbg !5784
  %24 = load i32, ptr %23, align 8, !dbg !5784
  %and15 = and i32 %24, 7, !dbg !5784
  %cmp16 = icmp eq i32 %and15, 6, !dbg !5785
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !5786

if.then17:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %offs1.addr, align 8, !dbg !5787
  store i32 -33, ptr %25, align 4, !dbg !5788
  br label %if.end18, !dbg !5789

if.end18:                                         ; preds = %if.then17, %land.lhs.true, %if.end3
  store i32 0, ptr %retval, align 4, !dbg !5790
  br label %return, !dbg !5790

return:                                           ; preds = %if.end18, %if.then2, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5791
  ret i32 %26, !dbg !5791
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @resolve_seg_reg(ptr noundef %insn, ptr noundef %regs, i32 noundef %regoff) #0 align 16 !dbg !5792 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %regoff.addr = alloca i32, align 4
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5796, metadata !DIExpression()), !dbg !5800
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5797, metadata !DIExpression()), !dbg !5801
  store i32 %regoff, ptr %regoff.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regoff.addr, metadata !5798, metadata !DIExpression()), !dbg !5802
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #15, !dbg !5803
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !5799, metadata !DIExpression()), !dbg !5804
  %0 = load i32, ptr %regoff.addr, align 4, !dbg !5805
  %conv = sext i32 %0 to i64, !dbg !5805
  %cmp = icmp eq i64 %conv, 128, !dbg !5807
  br i1 %cmp, label %if.then, label %if.end, !dbg !5808

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !5809
  %call = call zeroext i1 @any_64bit_mode(ptr noundef %1) #16, !dbg !5812
  br i1 %call, label %if.then2, label %if.else, !dbg !5813

if.then2:                                         ; preds = %if.then
  store i32 0, ptr %retval, align 4, !dbg !5814
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5814

if.else:                                          ; preds = %if.then
  store i32 2, ptr %retval, align 4, !dbg !5815
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5815

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !5816
  %tobool = icmp ne ptr %2, null, !dbg !5816
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !5818

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5819
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5819

if.end4:                                          ; preds = %if.end
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !5820
  %4 = load i32, ptr %regoff.addr, align 4, !dbg !5822
  %call5 = call zeroext i1 @check_seg_overrides(ptr noundef %3, i32 noundef %4) #16, !dbg !5823
  br i1 %call5, label %if.end8, label %if.then6, !dbg !5824

if.then6:                                         ; preds = %if.end4
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !5825
  %6 = load ptr, ptr %regs.addr, align 8, !dbg !5826
  %7 = load i32, ptr %regoff.addr, align 4, !dbg !5827
  %call7 = call i32 @resolve_default_seg(ptr noundef %5, ptr noundef %6, i32 noundef %7) #16, !dbg !5828
  store i32 %call7, ptr %retval, align 4, !dbg !5829
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5829

if.end8:                                          ; preds = %if.end4
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !5830
  %call9 = call i32 @get_seg_reg_override_idx(ptr noundef %8) #16, !dbg !5831
  store i32 %call9, ptr %idx, align 4, !dbg !5832
  %9 = load i32, ptr %idx, align 4, !dbg !5833
  %cmp10 = icmp slt i32 %9, 0, !dbg !5835
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5836

if.then12:                                        ; preds = %if.end8
  %10 = load i32, ptr %idx, align 4, !dbg !5837
  store i32 %10, ptr %retval, align 4, !dbg !5838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5838

if.end13:                                         ; preds = %if.end8
  %11 = load i32, ptr %idx, align 4, !dbg !5839
  %cmp14 = icmp eq i32 %11, 1, !dbg !5841
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !5842

if.then16:                                        ; preds = %if.end13
  %12 = load ptr, ptr %insn.addr, align 8, !dbg !5843
  %13 = load ptr, ptr %regs.addr, align 8, !dbg !5844
  %14 = load i32, ptr %regoff.addr, align 4, !dbg !5845
  %call17 = call i32 @resolve_default_seg(ptr noundef %12, ptr noundef %13, i32 noundef %14) #16, !dbg !5846
  store i32 %call17, ptr %retval, align 4, !dbg !5847
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5847

if.end18:                                         ; preds = %if.end13
  %15 = load ptr, ptr %regs.addr, align 8, !dbg !5848
  %call19 = call zeroext i1 @any_64bit_mode(ptr noundef %15) #16, !dbg !5850
  br i1 %call19, label %if.then20, label %if.end27, !dbg !5851

if.then20:                                        ; preds = %if.end18
  %16 = load i32, ptr %idx, align 4, !dbg !5852
  %cmp21 = icmp ne i32 %16, 6, !dbg !5855
  br i1 %cmp21, label %land.lhs.true, label %if.end26, !dbg !5856

land.lhs.true:                                    ; preds = %if.then20
  %17 = load i32, ptr %idx, align 4, !dbg !5857
  %cmp23 = icmp ne i32 %17, 7, !dbg !5858
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !5859

if.then25:                                        ; preds = %land.lhs.true
  store i32 0, ptr %idx, align 4, !dbg !5860
  br label %if.end26, !dbg !5861

if.end26:                                         ; preds = %if.then25, %land.lhs.true, %if.then20
  br label %if.end27, !dbg !5862

if.end27:                                         ; preds = %if.end26, %if.end18
  %18 = load i32, ptr %idx, align 4, !dbg !5863
  store i32 %18, ptr %retval, align 4, !dbg !5864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5864

cleanup:                                          ; preds = %if.end27, %if.then16, %if.then12, %if.then6, %if.then3, %if.else, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #15, !dbg !5865
  %19 = load i32, ptr %retval, align 4, !dbg !5865
  ret i32 %19, !dbg !5865
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_seg_limit(ptr noundef %regs, i32 noundef %seg_reg_idx) #0 align 16 !dbg !5866 {
entry:
  %retval = alloca i64, align 8
  %regs.addr = alloca ptr, align 8
  %seg_reg_idx.addr = alloca i32, align 4
  %desc = alloca %struct.desc_struct, align 1
  %limit = alloca i64, align 8
  %sel = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5868, metadata !DIExpression()), !dbg !5873
  store i32 %seg_reg_idx, ptr %seg_reg_idx.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %seg_reg_idx.addr, metadata !5869, metadata !DIExpression()), !dbg !5874
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #15, !dbg !5875
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !5870, metadata !DIExpression()), !dbg !5876
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #15, !dbg !5877
  call void @llvm.dbg.declare(metadata ptr %limit, metadata !5871, metadata !DIExpression()), !dbg !5878
  call void @llvm.lifetime.start.p0(i64 2, ptr %sel) #15, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %sel, metadata !5872, metadata !DIExpression()), !dbg !5880
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5881
  %1 = load i32, ptr %seg_reg_idx.addr, align 4, !dbg !5882
  %call = call signext i16 @get_segment_selector(ptr noundef %0, i32 noundef %1) #16, !dbg !5883
  store i16 %call, ptr %sel, align 2, !dbg !5884
  %2 = load i16, ptr %sel, align 2, !dbg !5885
  %conv = sext i16 %2 to i32, !dbg !5885
  %cmp = icmp slt i32 %conv, 0, !dbg !5887
  br i1 %cmp, label %if.then, label %if.end, !dbg !5888

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5889
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5889

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %regs.addr, align 8, !dbg !5890
  %call2 = call zeroext i1 @any_64bit_mode(ptr noundef %3) #16, !dbg !5892
  br i1 %call2, label %if.then5, label %lor.lhs.false, !dbg !5893

lor.lhs.false:                                    ; preds = %if.end
  %4 = load ptr, ptr %regs.addr, align 8, !dbg !5894
  %call4 = call i32 @v8086_mode(ptr noundef %4) #16, !dbg !5895
  %tobool = icmp ne i32 %call4, 0, !dbg !5895
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !5896

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  store i64 -1, ptr %retval, align 8, !dbg !5897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5897

if.end6:                                          ; preds = %lor.lhs.false
  %5 = load i16, ptr %sel, align 2, !dbg !5898
  %tobool7 = icmp ne i16 %5, 0, !dbg !5898
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !5900

if.then8:                                         ; preds = %if.end6
  store i64 0, ptr %retval, align 8, !dbg !5901
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5901

if.end9:                                          ; preds = %if.end6
  %6 = load i16, ptr %sel, align 2, !dbg !5902
  %call10 = call zeroext i1 @get_desc(ptr noundef %desc, i16 noundef zeroext %6) #16, !dbg !5904
  br i1 %call10, label %if.end12, label %if.then11, !dbg !5905

if.then11:                                        ; preds = %if.end9
  store i64 0, ptr %retval, align 8, !dbg !5906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5906

if.end12:                                         ; preds = %if.end9
  %call13 = call i64 @get_desc_limit(ptr noundef %desc) #16, !dbg !5907
  store i64 %call13, ptr %limit, align 8, !dbg !5908
  %g = getelementptr inbounds %struct.desc_struct, ptr %desc, i32 0, i32 2, !dbg !5909
  %bf.load = load i32, ptr %g, align 1, !dbg !5909
  %bf.lshr = lshr i32 %bf.load, 23, !dbg !5909
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5909
  %bf.cast = trunc i32 %bf.clear to i16, !dbg !5909
  %tobool14 = icmp ne i16 %bf.cast, 0, !dbg !5911
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5912

if.then15:                                        ; preds = %if.end12
  %7 = load i64, ptr %limit, align 8, !dbg !5913
  %shl = shl i64 %7, 12, !dbg !5914
  %add = add i64 %shl, 4095, !dbg !5915
  store i64 %add, ptr %limit, align 8, !dbg !5916
  br label %if.end16, !dbg !5917

if.end16:                                         ; preds = %if.then15, %if.end12
  %8 = load i64, ptr %limit, align 8, !dbg !5918
  store i64 %8, ptr %retval, align 8, !dbg !5919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5919

cleanup:                                          ; preds = %if.end16, %if.then11, %if.then8, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %sel) #15, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #15, !dbg !5920
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #15, !dbg !5920
  %9 = load i64, ptr %retval, align 8, !dbg !5920
  ret i64 %9, !dbg !5920
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_seg_overrides(ptr noundef %insn, i32 noundef %regoff) #0 align 16 !dbg !5921 {
entry:
  %retval = alloca i1, align 1
  %insn.addr = alloca ptr, align 8
  %regoff.addr = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5925, metadata !DIExpression()), !dbg !5927
  store i32 %regoff, ptr %regoff.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %regoff.addr, metadata !5926, metadata !DIExpression()), !dbg !5928
  %0 = load i32, ptr %regoff.addr, align 4, !dbg !5929
  %conv = sext i32 %0 to i64, !dbg !5929
  %cmp = icmp eq i64 %conv, 112, !dbg !5931
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5932

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %insn.addr, align 8, !dbg !5933
  %call = call zeroext i1 @is_string_insn(ptr noundef %1) #16, !dbg !5934
  br i1 %call, label %if.then, label %if.end, !dbg !5935

if.then:                                          ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !5936
  br label %return, !dbg !5936

if.end:                                           ; preds = %land.lhs.true, %entry
  store i1 true, ptr %retval, align 1, !dbg !5937
  br label %return, !dbg !5937

return:                                           ; preds = %if.end, %if.then
  %2 = load i1, ptr %retval, align 1, !dbg !5938
  ret i1 %2, !dbg !5938
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @resolve_default_seg(ptr noundef %insn, ptr noundef %regs, i32 noundef %off) #0 align 16 !dbg !5939 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %off.addr = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5941, metadata !DIExpression()), !dbg !5944
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !5942, metadata !DIExpression()), !dbg !5945
  store i32 %off, ptr %off.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %off.addr, metadata !5943, metadata !DIExpression()), !dbg !5946
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !5947
  %call = call zeroext i1 @any_64bit_mode(ptr noundef %0) #16, !dbg !5949
  br i1 %call, label %if.then, label %if.end, !dbg !5950

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5951
  br label %return, !dbg !5951

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %off.addr, align 4, !dbg !5952
  switch i32 %1, label %sw.default [
    i32 80, label %sw.bb
    i32 88, label %sw.bb
    i32 96, label %sw.bb
    i32 -33, label %sw.bb4
    i32 40, label %sw.bb4
    i32 104, label %sw.bb4
    i32 112, label %sw.bb5
    i32 32, label %sw.bb9
    i32 152, label %sw.bb9
    i32 128, label %sw.bb10
  ], !dbg !5953

sw.bb:                                            ; preds = %if.end, %if.end, %if.end
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !5954
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 12, !dbg !5957
  %3 = load i8, ptr %addr_bytes, align 1, !dbg !5957
  %conv = zext i8 %3 to i32, !dbg !5954
  %cmp = icmp eq i32 %conv, 2, !dbg !5958
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5959

if.then2:                                         ; preds = %sw.bb
  store i32 -22, ptr %retval, align 4, !dbg !5960
  br label %return, !dbg !5960

if.end3:                                          ; preds = %sw.bb
  br label %sw.bb4, !dbg !5961

sw.bb4:                                           ; preds = %if.end, %if.end, %if.end, %if.end3
  store i32 4, ptr %retval, align 4, !dbg !5962
  br label %return, !dbg !5962

sw.bb5:                                           ; preds = %if.end
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !5963
  %call6 = call zeroext i1 @is_string_insn(ptr noundef %4) #16, !dbg !5965
  br i1 %call6, label %if.then7, label %if.end8, !dbg !5966

if.then7:                                         ; preds = %sw.bb5
  store i32 5, ptr %retval, align 4, !dbg !5967
  br label %return, !dbg !5967

if.end8:                                          ; preds = %sw.bb5
  store i32 4, ptr %retval, align 4, !dbg !5968
  br label %return, !dbg !5968

sw.bb9:                                           ; preds = %if.end, %if.end
  store i32 3, ptr %retval, align 4, !dbg !5969
  br label %return, !dbg !5969

sw.bb10:                                          ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5970
  br label %return, !dbg !5970

sw.default:                                       ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5971
  br label %return, !dbg !5971

return:                                           ; preds = %sw.default, %sw.bb10, %sw.bb9, %if.end8, %if.then7, %sw.bb4, %if.then2, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !5972
  ret i32 %5, !dbg !5972
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_seg_reg_override_idx(ptr noundef %insn) #0 align 16 !dbg !5973 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %idx = alloca i32, align 4
  %num_overrides = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca i8, align 1
  %attr = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !5975, metadata !DIExpression()), !dbg !5984
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #15, !dbg !5985
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !5976, metadata !DIExpression()), !dbg !5986
  store i32 1, ptr %idx, align 4, !dbg !5986
  call void @llvm.lifetime.start.p0(i64 4, ptr %num_overrides) #15, !dbg !5987
  call void @llvm.dbg.declare(metadata ptr %num_overrides, metadata !5977, metadata !DIExpression()), !dbg !5988
  store i32 0, ptr %num_overrides, align 4, !dbg !5988
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5987
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5978, metadata !DIExpression()), !dbg !5989
  call void @llvm.lifetime.start.p0(i64 1, ptr %p) #15, !dbg !5990
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5979, metadata !DIExpression()), !dbg !5991
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !5992
  %call = call i32 @insn_get_prefixes(ptr noundef %0) #16, !dbg !5993
  store i32 0, ptr %i, align 4, !dbg !5994
  br label %for.cond, !dbg !5994

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !5995
  %conv = sext i32 %1 to i64, !dbg !5995
  %cmp = icmp ult i64 %conv, 4, !dbg !5995
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5995

land.rhs:                                         ; preds = %for.cond
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !5995
  %prefixes = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 0, !dbg !5995
  %3 = getelementptr inbounds %struct.insn_field, ptr %prefixes, i32 0, i32 0, !dbg !5995
  %4 = load i32, ptr %i, align 4, !dbg !5995
  %idxprom = sext i32 %4 to i64, !dbg !5995
  %arrayidx = getelementptr [4 x i8], ptr %3, i64 0, i64 %idxprom, !dbg !5995
  %5 = load i8, ptr %arrayidx, align 1, !dbg !5995
  store i8 %5, ptr %p, align 1, !dbg !5995
  %conv2 = zext i8 %5 to i32, !dbg !5995
  %cmp3 = icmp ne i32 %conv2, 0, !dbg !5995
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp3, %land.rhs ], !dbg !5996
  br i1 %6, label %for.body, label %for.end, !dbg !5994

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %attr) #15, !dbg !5997
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !5980, metadata !DIExpression()), !dbg !5998
  %7 = load i8, ptr %p, align 1, !dbg !5999
  %call5 = call i32 @inat_get_opcode_attribute(i8 noundef zeroext %7) #16, !dbg !6000
  store i32 %call5, ptr %attr, align 4, !dbg !6001
  %8 = load i32, ptr %attr, align 4, !dbg !6002
  switch i32 %8, label %sw.epilog [
    i32 5, label %sw.bb
    i32 10, label %sw.bb6
    i32 6, label %sw.bb8
    i32 7, label %sw.bb10
    i32 8, label %sw.bb12
    i32 9, label %sw.bb14
  ], !dbg !6003

sw.bb:                                            ; preds = %for.body
  store i32 2, ptr %idx, align 4, !dbg !6004
  %9 = load i32, ptr %num_overrides, align 4, !dbg !6006
  %inc = add i32 %9, 1, !dbg !6006
  store i32 %inc, ptr %num_overrides, align 4, !dbg !6006
  br label %sw.epilog, !dbg !6007

sw.bb6:                                           ; preds = %for.body
  store i32 3, ptr %idx, align 4, !dbg !6008
  %10 = load i32, ptr %num_overrides, align 4, !dbg !6009
  %inc7 = add i32 %10, 1, !dbg !6009
  store i32 %inc7, ptr %num_overrides, align 4, !dbg !6009
  br label %sw.epilog, !dbg !6010

sw.bb8:                                           ; preds = %for.body
  store i32 4, ptr %idx, align 4, !dbg !6011
  %11 = load i32, ptr %num_overrides, align 4, !dbg !6012
  %inc9 = add i32 %11, 1, !dbg !6012
  store i32 %inc9, ptr %num_overrides, align 4, !dbg !6012
  br label %sw.epilog, !dbg !6013

sw.bb10:                                          ; preds = %for.body
  store i32 5, ptr %idx, align 4, !dbg !6014
  %12 = load i32, ptr %num_overrides, align 4, !dbg !6015
  %inc11 = add i32 %12, 1, !dbg !6015
  store i32 %inc11, ptr %num_overrides, align 4, !dbg !6015
  br label %sw.epilog, !dbg !6016

sw.bb12:                                          ; preds = %for.body
  store i32 6, ptr %idx, align 4, !dbg !6017
  %13 = load i32, ptr %num_overrides, align 4, !dbg !6018
  %inc13 = add i32 %13, 1, !dbg !6018
  store i32 %inc13, ptr %num_overrides, align 4, !dbg !6018
  br label %sw.epilog, !dbg !6019

sw.bb14:                                          ; preds = %for.body
  store i32 7, ptr %idx, align 4, !dbg !6020
  %14 = load i32, ptr %num_overrides, align 4, !dbg !6021
  %inc15 = add i32 %14, 1, !dbg !6021
  store i32 %inc15, ptr %num_overrides, align 4, !dbg !6021
  br label %sw.epilog, !dbg !6022

sw.epilog:                                        ; preds = %for.body, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %attr) #15, !dbg !6023
  br label %for.inc, !dbg !6024

for.inc:                                          ; preds = %sw.epilog
  %15 = load i32, ptr %i, align 4, !dbg !5995
  %inc16 = add i32 %15, 1, !dbg !5995
  store i32 %inc16, ptr %i, align 4, !dbg !5995
  br label %for.cond, !dbg !5995, !llvm.loop !6025

for.end:                                          ; preds = %land.end
  %16 = load i32, ptr %num_overrides, align 4, !dbg !6027
  %cmp17 = icmp sgt i32 %16, 1, !dbg !6029
  br i1 %cmp17, label %if.then, label %if.end, !dbg !6030

if.then:                                          ; preds = %for.end
  store i32 -22, ptr %retval, align 4, !dbg !6031
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6031

if.end:                                           ; preds = %for.end
  %17 = load i32, ptr %idx, align 4, !dbg !6032
  store i32 %17, ptr %retval, align 4, !dbg !6033
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6033

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %p) #15, !dbg !6034
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !6034
  call void @llvm.lifetime.end.p0(i64 4, ptr %num_overrides) #15, !dbg !6034
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #15, !dbg !6034
  %18 = load i32, ptr %retval, align 4, !dbg !6034
  ret i32 %18, !dbg !6034
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @is_string_insn(ptr noundef %insn) #0 align 16 !dbg !6035 {
entry:
  %retval = alloca i1, align 1
  %insn.addr = alloca ptr, align 8
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !6037, metadata !DIExpression()), !dbg !6038
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !6039
  %opcode = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 3, !dbg !6041
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %opcode, i32 0, i32 2, !dbg !6042
  %1 = load i8, ptr %nbytes, align 1, !dbg !6042
  %conv = zext i8 %1 to i32, !dbg !6039
  %cmp = icmp ne i32 %conv, 1, !dbg !6043
  br i1 %cmp, label %if.then, label %if.end, !dbg !6044

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !6045
  br label %return, !dbg !6045

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !6046
  %opcode2 = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 3, !dbg !6047
  %3 = getelementptr inbounds %struct.insn_field, ptr %opcode2, i32 0, i32 0, !dbg !6048
  %arrayidx = getelementptr [4 x i8], ptr %3, i64 0, i64 0, !dbg !6046
  %4 = load i8, ptr %arrayidx, align 8, !dbg !6046
  %conv3 = zext i8 %4 to i32, !dbg !6046
  switch i32 %conv3, label %sw.default [
    i32 170, label %sw.bb5
    i32 171, label %sw.bb5
    i32 172, label %sw.bb5
    i32 173, label %sw.bb5
    i32 174, label %sw.bb5
    i32 175, label %sw.bb5
    i32 164, label %sw.bb4
    i32 165, label %sw.bb4
    i32 166, label %sw.bb4
    i32 167, label %sw.bb4
    i32 108, label %sw.bb
    i32 109, label %sw.bb
    i32 110, label %sw.bb
    i32 111, label %sw.bb
  ], !dbg !6049

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end
  br label %sw.bb4, !dbg !6050

sw.bb4:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %sw.bb
  br label %sw.bb5, !dbg !6050

sw.bb5:                                           ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %sw.bb4
  store i1 true, ptr %retval, align 1, !dbg !6051
  br label %return, !dbg !6051

sw.default:                                       ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6053
  br label %return, !dbg !6053

return:                                           ; preds = %sw.default, %sw.bb5, %if.then
  %5 = load i1, ptr %retval, align 1, !dbg !6054
  ret i1 %5, !dbg !6054
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6055 dso_local i32 @inat_get_opcode_attribute(i8 noundef zeroext) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_desc_limit(ptr noundef %desc) #5 align 16 !dbg !6059 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !6061, metadata !DIExpression()), !dbg !6062
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !6063
  %limit0 = getelementptr inbounds %struct.desc_struct, ptr %0, i32 0, i32 0, !dbg !6064
  %1 = load i16, ptr %limit0, align 1, !dbg !6064
  %conv = zext i16 %1 to i32, !dbg !6063
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !6065
  %limit1 = getelementptr inbounds %struct.desc_struct, ptr %2, i32 0, i32 2, !dbg !6066
  %bf.load = load i32, ptr %limit1, align 1, !dbg !6066
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !6066
  %bf.clear = and i32 %bf.lshr, 15, !dbg !6066
  %bf.cast = trunc i32 %bf.clear to i16, !dbg !6066
  %conv1 = zext i16 %bf.cast to i32, !dbg !6065
  %shl = shl i32 %conv1, 16, !dbg !6067
  %or = or i32 %conv, %shl, !dbg !6068
  %conv2 = sext i32 %or to i64, !dbg !6063
  ret i64 %conv2, !dbg !6069
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_eff_addr_sib(ptr noundef %insn, ptr noundef %regs, ptr noundef %base_offset, ptr noundef %eff_addr) #0 align 16 !dbg !6070 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %base_offset.addr = alloca ptr, align 8
  %eff_addr.addr = alloca ptr, align 8
  %base = alloca i64, align 8
  %indx = alloca i64, align 8
  %indx_offset = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %addr32 = alloca i32, align 4
  %base32 = alloca i32, align 4
  %idx32 = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !6072, metadata !DIExpression()), !dbg !6085
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6073, metadata !DIExpression()), !dbg !6086
  store ptr %base_offset, ptr %base_offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %base_offset.addr, metadata !6074, metadata !DIExpression()), !dbg !6087
  store ptr %eff_addr, ptr %eff_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eff_addr.addr, metadata !6075, metadata !DIExpression()), !dbg !6088
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #15, !dbg !6089
  call void @llvm.dbg.declare(metadata ptr %base, metadata !6076, metadata !DIExpression()), !dbg !6090
  call void @llvm.lifetime.start.p0(i64 8, ptr %indx) #15, !dbg !6089
  call void @llvm.dbg.declare(metadata ptr %indx, metadata !6077, metadata !DIExpression()), !dbg !6091
  call void @llvm.lifetime.start.p0(i64 4, ptr %indx_offset) #15, !dbg !6092
  call void @llvm.dbg.declare(metadata ptr %indx_offset, metadata !6078, metadata !DIExpression()), !dbg !6093
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6094
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6079, metadata !DIExpression()), !dbg !6095
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !6096
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 12, !dbg !6098
  %1 = load i8, ptr %addr_bytes, align 1, !dbg !6098
  %conv = zext i8 %1 to i32, !dbg !6096
  %cmp = icmp ne i32 %conv, 8, !dbg !6099
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6100

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !6101
  %addr_bytes2 = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 12, !dbg !6102
  %3 = load i8, ptr %addr_bytes2, align 1, !dbg !6102
  %conv3 = zext i8 %3 to i32, !dbg !6101
  %cmp4 = icmp ne i32 %conv3, 4, !dbg !6103
  br i1 %cmp4, label %if.then, label %if.end, !dbg !6104

if.then:                                          ; preds = %land.lhs.true
  store i32 -22, ptr %retval, align 4, !dbg !6105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6105

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !6106
  %call = call i32 @insn_get_modrm(ptr noundef %4) #16, !dbg !6107
  store i32 %call, ptr %ret, align 4, !dbg !6108
  %5 = load i32, ptr %ret, align 4, !dbg !6109
  %tobool = icmp ne i32 %5, 0, !dbg !6109
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !6111

if.then6:                                         ; preds = %if.end
  %6 = load i32, ptr %ret, align 4, !dbg !6112
  store i32 %6, ptr %retval, align 4, !dbg !6113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6113

if.end7:                                          ; preds = %if.end
  %7 = load ptr, ptr %insn.addr, align 8, !dbg !6114
  %modrm = getelementptr inbounds %struct.insn, ptr %7, i32 0, i32 4, !dbg !6116
  %nbytes = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 2, !dbg !6117
  %8 = load i8, ptr %nbytes, align 1, !dbg !6117
  %tobool8 = icmp ne i8 %8, 0, !dbg !6114
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !6118

if.then9:                                         ; preds = %if.end7
  store i32 -22, ptr %retval, align 4, !dbg !6119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6119

if.end10:                                         ; preds = %if.end7
  %9 = load ptr, ptr %insn.addr, align 8, !dbg !6120
  %modrm11 = getelementptr inbounds %struct.insn, ptr %9, i32 0, i32 4, !dbg !6120
  %10 = getelementptr inbounds %struct.insn_field, ptr %modrm11, i32 0, i32 0, !dbg !6120
  %11 = load i32, ptr %10, align 8, !dbg !6120
  %and = and i32 %11, 192, !dbg !6120
  %shr = ashr i32 %and, 6, !dbg !6120
  %cmp12 = icmp sgt i32 %shr, 2, !dbg !6122
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !6123

if.then14:                                        ; preds = %if.end10
  store i32 -22, ptr %retval, align 4, !dbg !6124
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6124

if.end15:                                         ; preds = %if.end10
  %12 = load ptr, ptr %insn.addr, align 8, !dbg !6125
  %call16 = call i32 @insn_get_sib(ptr noundef %12) #16, !dbg !6126
  store i32 %call16, ptr %ret, align 4, !dbg !6127
  %13 = load i32, ptr %ret, align 4, !dbg !6128
  %tobool17 = icmp ne i32 %13, 0, !dbg !6128
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !6130

if.then18:                                        ; preds = %if.end15
  %14 = load i32, ptr %ret, align 4, !dbg !6131
  store i32 %14, ptr %retval, align 4, !dbg !6132
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6132

if.end19:                                         ; preds = %if.end15
  %15 = load ptr, ptr %insn.addr, align 8, !dbg !6133
  %sib = getelementptr inbounds %struct.insn, ptr %15, i32 0, i32 5, !dbg !6135
  %nbytes20 = getelementptr inbounds %struct.insn_field, ptr %sib, i32 0, i32 2, !dbg !6136
  %16 = load i8, ptr %nbytes20, align 1, !dbg !6136
  %tobool21 = icmp ne i8 %16, 0, !dbg !6133
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !6137

if.then22:                                        ; preds = %if.end19
  store i32 -22, ptr %retval, align 4, !dbg !6138
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6138

if.end23:                                         ; preds = %if.end19
  %17 = load ptr, ptr %insn.addr, align 8, !dbg !6139
  %18 = load ptr, ptr %regs.addr, align 8, !dbg !6140
  %call24 = call i32 @get_reg_offset(ptr noundef %17, ptr noundef %18, i32 noundef 3) #16, !dbg !6141
  %19 = load ptr, ptr %base_offset.addr, align 8, !dbg !6142
  store i32 %call24, ptr %19, align 4, !dbg !6143
  %20 = load ptr, ptr %insn.addr, align 8, !dbg !6144
  %21 = load ptr, ptr %regs.addr, align 8, !dbg !6145
  %call25 = call i32 @get_reg_offset(ptr noundef %20, ptr noundef %21, i32 noundef 2) #16, !dbg !6146
  store i32 %call25, ptr %indx_offset, align 4, !dbg !6147
  %22 = load ptr, ptr %base_offset.addr, align 8, !dbg !6148
  %23 = load i32, ptr %22, align 4, !dbg !6150
  %cmp26 = icmp eq i32 %23, -33, !dbg !6151
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !6152

if.then28:                                        ; preds = %if.end23
  store i64 0, ptr %base, align 8, !dbg !6153
  br label %if.end35, !dbg !6154

if.else:                                          ; preds = %if.end23
  %24 = load ptr, ptr %base_offset.addr, align 8, !dbg !6155
  %25 = load i32, ptr %24, align 4, !dbg !6157
  %cmp29 = icmp slt i32 %25, 0, !dbg !6158
  br i1 %cmp29, label %if.then31, label %if.else32, !dbg !6159

if.then31:                                        ; preds = %if.else
  store i32 -22, ptr %retval, align 4, !dbg !6160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6160

if.else32:                                        ; preds = %if.else
  %26 = load ptr, ptr %regs.addr, align 8, !dbg !6161
  %27 = load ptr, ptr %base_offset.addr, align 8, !dbg !6162
  %28 = load i32, ptr %27, align 4, !dbg !6163
  %call33 = call i64 @regs_get_register(ptr noundef %26, i32 noundef %28) #16, !dbg !6164
  store i64 %call33, ptr %base, align 8, !dbg !6165
  br label %if.end34

if.end34:                                         ; preds = %if.else32
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then28
  %29 = load i32, ptr %indx_offset, align 4, !dbg !6166
  %cmp36 = icmp eq i32 %29, -33, !dbg !6168
  br i1 %cmp36, label %if.then38, label %if.else39, !dbg !6169

if.then38:                                        ; preds = %if.end35
  store i64 0, ptr %indx, align 8, !dbg !6170
  br label %if.end46, !dbg !6171

if.else39:                                        ; preds = %if.end35
  %30 = load i32, ptr %indx_offset, align 4, !dbg !6172
  %cmp40 = icmp slt i32 %30, 0, !dbg !6174
  br i1 %cmp40, label %if.then42, label %if.else43, !dbg !6175

if.then42:                                        ; preds = %if.else39
  store i32 -22, ptr %retval, align 4, !dbg !6176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6176

if.else43:                                        ; preds = %if.else39
  %31 = load ptr, ptr %regs.addr, align 8, !dbg !6177
  %32 = load i32, ptr %indx_offset, align 4, !dbg !6178
  %call44 = call i64 @regs_get_register(ptr noundef %31, i32 noundef %32) #16, !dbg !6179
  store i64 %call44, ptr %indx, align 8, !dbg !6180
  br label %if.end45

if.end45:                                         ; preds = %if.else43
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then38
  %33 = load ptr, ptr %insn.addr, align 8, !dbg !6181
  %addr_bytes47 = getelementptr inbounds %struct.insn, ptr %33, i32 0, i32 12, !dbg !6182
  %34 = load i8, ptr %addr_bytes47, align 1, !dbg !6182
  %conv48 = zext i8 %34 to i32, !dbg !6181
  %cmp49 = icmp eq i32 %conv48, 4, !dbg !6183
  br i1 %cmp49, label %if.then51, label %if.else62, !dbg !6184

if.then51:                                        ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr32) #15, !dbg !6185
  call void @llvm.dbg.declare(metadata ptr %addr32, metadata !6080, metadata !DIExpression()), !dbg !6186
  call void @llvm.lifetime.start.p0(i64 4, ptr %base32) #15, !dbg !6185
  call void @llvm.dbg.declare(metadata ptr %base32, metadata !6083, metadata !DIExpression()), !dbg !6187
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx32) #15, !dbg !6185
  call void @llvm.dbg.declare(metadata ptr %idx32, metadata !6084, metadata !DIExpression()), !dbg !6188
  %35 = load i64, ptr %base, align 8, !dbg !6189
  %and52 = and i64 %35, 4294967295, !dbg !6190
  %conv53 = trunc i64 %and52 to i32, !dbg !6189
  store i32 %conv53, ptr %base32, align 4, !dbg !6191
  %36 = load i64, ptr %indx, align 8, !dbg !6192
  %and54 = and i64 %36, 4294967295, !dbg !6193
  %conv55 = trunc i64 %and54 to i32, !dbg !6192
  store i32 %conv55, ptr %idx32, align 4, !dbg !6194
  %37 = load i32, ptr %base32, align 4, !dbg !6195
  %38 = load i32, ptr %idx32, align 4, !dbg !6196
  %39 = load ptr, ptr %insn.addr, align 8, !dbg !6197
  %sib56 = getelementptr inbounds %struct.insn, ptr %39, i32 0, i32 5, !dbg !6197
  %40 = getelementptr inbounds %struct.insn_field, ptr %sib56, i32 0, i32 0, !dbg !6197
  %41 = load i32, ptr %40, align 8, !dbg !6197
  %and57 = and i32 %41, 192, !dbg !6197
  %shr58 = ashr i32 %and57, 6, !dbg !6197
  %shl = shl i32 1, %shr58, !dbg !6198
  %mul = mul i32 %38, %shl, !dbg !6199
  %add = add i32 %37, %mul, !dbg !6200
  store i32 %add, ptr %addr32, align 4, !dbg !6201
  %42 = load ptr, ptr %insn.addr, align 8, !dbg !6202
  %displacement = getelementptr inbounds %struct.insn, ptr %42, i32 0, i32 6, !dbg !6203
  %43 = getelementptr inbounds %struct.insn_field, ptr %displacement, i32 0, i32 0, !dbg !6204
  %44 = load i32, ptr %43, align 8, !dbg !6204
  %45 = load i32, ptr %addr32, align 4, !dbg !6205
  %add59 = add i32 %45, %44, !dbg !6205
  store i32 %add59, ptr %addr32, align 4, !dbg !6205
  %46 = load i32, ptr %addr32, align 4, !dbg !6206
  %and60 = and i32 %46, -1, !dbg !6207
  %conv61 = zext i32 %and60 to i64, !dbg !6206
  %47 = load ptr, ptr %eff_addr.addr, align 8, !dbg !6208
  store i64 %conv61, ptr %47, align 8, !dbg !6209
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx32) #15, !dbg !6210
  call void @llvm.lifetime.end.p0(i64 4, ptr %base32) #15, !dbg !6210
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr32) #15, !dbg !6210
  br label %if.end73, !dbg !6211

if.else62:                                        ; preds = %if.end46
  %48 = load i64, ptr %base, align 8, !dbg !6212
  %49 = load i64, ptr %indx, align 8, !dbg !6214
  %50 = load ptr, ptr %insn.addr, align 8, !dbg !6215
  %sib63 = getelementptr inbounds %struct.insn, ptr %50, i32 0, i32 5, !dbg !6215
  %51 = getelementptr inbounds %struct.insn_field, ptr %sib63, i32 0, i32 0, !dbg !6215
  %52 = load i32, ptr %51, align 8, !dbg !6215
  %and64 = and i32 %52, 192, !dbg !6215
  %shr65 = ashr i32 %and64, 6, !dbg !6215
  %shl66 = shl i32 1, %shr65, !dbg !6216
  %conv67 = sext i32 %shl66 to i64, !dbg !6217
  %mul68 = mul i64 %49, %conv67, !dbg !6218
  %add69 = add i64 %48, %mul68, !dbg !6219
  %53 = load ptr, ptr %eff_addr.addr, align 8, !dbg !6220
  store i64 %add69, ptr %53, align 8, !dbg !6221
  %54 = load ptr, ptr %insn.addr, align 8, !dbg !6222
  %displacement70 = getelementptr inbounds %struct.insn, ptr %54, i32 0, i32 6, !dbg !6223
  %55 = getelementptr inbounds %struct.insn_field, ptr %displacement70, i32 0, i32 0, !dbg !6224
  %56 = load i32, ptr %55, align 8, !dbg !6224
  %conv71 = sext i32 %56 to i64, !dbg !6222
  %57 = load ptr, ptr %eff_addr.addr, align 8, !dbg !6225
  %58 = load i64, ptr %57, align 8, !dbg !6226
  %add72 = add i64 %58, %conv71, !dbg !6226
  store i64 %add72, ptr %57, align 8, !dbg !6226
  br label %if.end73

if.end73:                                         ; preds = %if.else62, %if.then51
  store i32 0, ptr %retval, align 4, !dbg !6227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6227

cleanup:                                          ; preds = %if.end73, %if.then42, %if.then31, %if.then22, %if.then18, %if.then14, %if.then9, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6228
  call void @llvm.lifetime.end.p0(i64 4, ptr %indx_offset) #15, !dbg !6228
  call void @llvm.lifetime.end.p0(i64 8, ptr %indx) #15, !dbg !6228
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #15, !dbg !6228
  %59 = load i32, ptr %retval, align 4, !dbg !6228
  ret i32 %59, !dbg !6228
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_eff_addr_modrm(ptr noundef %insn, ptr noundef %regs, ptr noundef %regoff, ptr noundef %eff_addr) #0 align 16 !dbg !6229 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %regoff.addr = alloca ptr, align 8
  %eff_addr.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %addr32 = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !6231, metadata !DIExpression()), !dbg !6240
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !6232, metadata !DIExpression()), !dbg !6241
  store ptr %regoff, ptr %regoff.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regoff.addr, metadata !6233, metadata !DIExpression()), !dbg !6242
  store ptr %eff_addr, ptr %eff_addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eff_addr.addr, metadata !6234, metadata !DIExpression()), !dbg !6243
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !6244
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !6235, metadata !DIExpression()), !dbg !6245
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !6246
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6236, metadata !DIExpression()), !dbg !6247
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !6248
  %addr_bytes = getelementptr inbounds %struct.insn, ptr %0, i32 0, i32 12, !dbg !6250
  %1 = load i8, ptr %addr_bytes, align 1, !dbg !6250
  %conv = zext i8 %1 to i32, !dbg !6248
  %cmp = icmp ne i32 %conv, 8, !dbg !6251
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !6252

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !6253
  %addr_bytes2 = getelementptr inbounds %struct.insn, ptr %2, i32 0, i32 12, !dbg !6254
  %3 = load i8, ptr %addr_bytes2, align 1, !dbg !6254
  %conv3 = zext i8 %3 to i32, !dbg !6253
  %cmp4 = icmp ne i32 %conv3, 4, !dbg !6255
  br i1 %cmp4, label %if.then, label %if.end, !dbg !6256

if.then:                                          ; preds = %land.lhs.true
  store i32 -22, ptr %retval, align 4, !dbg !6257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6257

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %insn.addr, align 8, !dbg !6258
  %call = call i32 @insn_get_modrm(ptr noundef %4) #16, !dbg !6259
  store i32 %call, ptr %ret, align 4, !dbg !6260
  %5 = load i32, ptr %ret, align 4, !dbg !6261
  %tobool = icmp ne i32 %5, 0, !dbg !6261
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !6263

if.then6:                                         ; preds = %if.end
  %6 = load i32, ptr %ret, align 4, !dbg !6264
  store i32 %6, ptr %retval, align 4, !dbg !6265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6265

if.end7:                                          ; preds = %if.end
  %7 = load ptr, ptr %insn.addr, align 8, !dbg !6266
  %modrm = getelementptr inbounds %struct.insn, ptr %7, i32 0, i32 4, !dbg !6266
  %8 = getelementptr inbounds %struct.insn_field, ptr %modrm, i32 0, i32 0, !dbg !6266
  %9 = load i32, ptr %8, align 8, !dbg !6266
  %and = and i32 %9, 192, !dbg !6266
  %shr = ashr i32 %and, 6, !dbg !6266
  %cmp8 = icmp sgt i32 %shr, 2, !dbg !6268
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !6269

if.then10:                                        ; preds = %if.end7
  store i32 -22, ptr %retval, align 4, !dbg !6270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6270

if.end11:                                         ; preds = %if.end7
  %10 = load ptr, ptr %insn.addr, align 8, !dbg !6271
  %11 = load ptr, ptr %regs.addr, align 8, !dbg !6272
  %call12 = call i32 @get_reg_offset(ptr noundef %10, ptr noundef %11, i32 noundef 0) #16, !dbg !6273
  %12 = load ptr, ptr %regoff.addr, align 8, !dbg !6274
  store i32 %call12, ptr %12, align 4, !dbg !6275
  %13 = load ptr, ptr %regoff.addr, align 8, !dbg !6276
  %14 = load i32, ptr %13, align 4, !dbg !6278
  %cmp13 = icmp eq i32 %14, -33, !dbg !6279
  br i1 %cmp13, label %if.then15, label %if.else20, !dbg !6280

if.then15:                                        ; preds = %if.end11
  %15 = load ptr, ptr %regs.addr, align 8, !dbg !6281
  %call16 = call zeroext i1 @any_64bit_mode(ptr noundef %15) #16, !dbg !6284
  br i1 %call16, label %if.then17, label %if.else, !dbg !6285

if.then17:                                        ; preds = %if.then15
  %16 = load ptr, ptr %regs.addr, align 8, !dbg !6286
  %ip = getelementptr inbounds %struct.pt_regs, ptr %16, i32 0, i32 16, !dbg !6287
  %17 = load i64, ptr %ip, align 8, !dbg !6287
  %18 = load ptr, ptr %insn.addr, align 8, !dbg !6288
  %length = getelementptr inbounds %struct.insn, ptr %18, i32 0, i32 13, !dbg !6289
  %19 = load i8, ptr %length, align 2, !dbg !6289
  %conv18 = zext i8 %19 to i64, !dbg !6288
  %add = add i64 %17, %conv18, !dbg !6290
  store i64 %add, ptr %tmp, align 8, !dbg !6291
  br label %if.end19, !dbg !6292

if.else:                                          ; preds = %if.then15
  store i64 0, ptr %tmp, align 8, !dbg !6293
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  br label %if.end27, !dbg !6294

if.else20:                                        ; preds = %if.end11
  %20 = load ptr, ptr %regoff.addr, align 8, !dbg !6295
  %21 = load i32, ptr %20, align 4, !dbg !6297
  %cmp21 = icmp slt i32 %21, 0, !dbg !6298
  br i1 %cmp21, label %if.then23, label %if.else24, !dbg !6299

if.then23:                                        ; preds = %if.else20
  store i32 -22, ptr %retval, align 4, !dbg !6300
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6300

if.else24:                                        ; preds = %if.else20
  %22 = load ptr, ptr %regs.addr, align 8, !dbg !6302
  %23 = load ptr, ptr %regoff.addr, align 8, !dbg !6304
  %24 = load i32, ptr %23, align 4, !dbg !6305
  %call25 = call i64 @regs_get_register(ptr noundef %22, i32 noundef %24) #16, !dbg !6306
  store i64 %call25, ptr %tmp, align 8, !dbg !6307
  br label %if.end26

if.end26:                                         ; preds = %if.else24
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end19
  %25 = load ptr, ptr %insn.addr, align 8, !dbg !6308
  %addr_bytes28 = getelementptr inbounds %struct.insn, ptr %25, i32 0, i32 12, !dbg !6309
  %26 = load i8, ptr %addr_bytes28, align 1, !dbg !6309
  %conv29 = zext i8 %26 to i32, !dbg !6308
  %cmp30 = icmp eq i32 %conv29, 4, !dbg !6310
  br i1 %cmp30, label %if.then32, label %if.else38, !dbg !6311

if.then32:                                        ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 4, ptr %addr32) #15, !dbg !6312
  call void @llvm.dbg.declare(metadata ptr %addr32, metadata !6237, metadata !DIExpression()), !dbg !6313
  %27 = load i64, ptr %tmp, align 8, !dbg !6314
  %and33 = and i64 %27, 4294967295, !dbg !6315
  %conv34 = trunc i64 %and33 to i32, !dbg !6316
  %28 = load ptr, ptr %insn.addr, align 8, !dbg !6317
  %displacement = getelementptr inbounds %struct.insn, ptr %28, i32 0, i32 6, !dbg !6318
  %29 = getelementptr inbounds %struct.insn_field, ptr %displacement, i32 0, i32 0, !dbg !6319
  %30 = load i32, ptr %29, align 8, !dbg !6319
  %add35 = add i32 %conv34, %30, !dbg !6320
  store i32 %add35, ptr %addr32, align 4, !dbg !6313
  %31 = load i32, ptr %addr32, align 4, !dbg !6321
  %and36 = and i32 %31, -1, !dbg !6322
  %conv37 = zext i32 %and36 to i64, !dbg !6321
  %32 = load ptr, ptr %eff_addr.addr, align 8, !dbg !6323
  store i64 %conv37, ptr %32, align 8, !dbg !6324
  call void @llvm.lifetime.end.p0(i64 4, ptr %addr32) #15, !dbg !6325
  br label %if.end42, !dbg !6326

if.else38:                                        ; preds = %if.end27
  %33 = load i64, ptr %tmp, align 8, !dbg !6327
  %34 = load ptr, ptr %insn.addr, align 8, !dbg !6329
  %displacement39 = getelementptr inbounds %struct.insn, ptr %34, i32 0, i32 6, !dbg !6330
  %35 = getelementptr inbounds %struct.insn_field, ptr %displacement39, i32 0, i32 0, !dbg !6331
  %36 = load i32, ptr %35, align 8, !dbg !6331
  %conv40 = sext i32 %36 to i64, !dbg !6329
  %add41 = add i64 %33, %conv40, !dbg !6332
  %37 = load ptr, ptr %eff_addr.addr, align 8, !dbg !6333
  store i64 %add41, ptr %37, align 8, !dbg !6334
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %if.then32
  store i32 0, ptr %retval, align 4, !dbg !6335
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6335

cleanup:                                          ; preds = %if.end42, %if.then23, %if.then10, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !6336
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !6336
  %38 = load i32, ptr %retval, align 4, !dbg !6336
  ret i32 %38, !dbg !6336
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6337 dso_local i32 @insn_get_sib(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #4 align 16 !dbg !6338 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6342, metadata !DIExpression()), !dbg !6352
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6343, metadata !DIExpression()), !dbg !6353
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6344, metadata !DIExpression()), !dbg !6354
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #15, !dbg !6355
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6345, metadata !DIExpression()), !dbg !6356
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6357
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6358
  %conv = trunc i64 %1 to i32, !dbg !6358
  store i32 %conv, ptr %sz, align 4, !dbg !6356
  %2 = load i32, ptr %sz, align 4, !dbg !6359
  %cmp = icmp sge i32 %2, 0, !dbg !6359
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6359

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6359
  %conv2 = sext i32 %3 to i64, !dbg !6359
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6359
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6359
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6361
  %lnot = xor i1 %5, true, !dbg !6359
  %lnot5 = xor i1 %lnot, true, !dbg !6359
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6359
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6359
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6359
  %tobool = icmp ne i64 %expval, 0, !dbg !6359
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6362

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6363
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6366
  br i1 %7, label %if.else, label %if.then7, !dbg !6367

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6368
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6369
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #16, !dbg !6370
  br label %if.end11, !dbg !6370

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6371, !range !4467, !noundef !519
  %tobool8 = trunc i8 %10 to i1, !dbg !6371
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6373

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #16, !dbg !6374, !srcloc !6375
  br label %if.end, !dbg !6374

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #16, !dbg !6376, !srcloc !6377
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6378

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6379
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6346, metadata !DIExpression()), !dbg !6379
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6379
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6379
  %lnot15 = xor i1 %cmp13, true, !dbg !6379
  %lnot17 = xor i1 %lnot15, true, !dbg !6379
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6379
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6379
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6380
  %tobool19 = icmp ne i32 %12, 0, !dbg !6380
  %lnot20 = xor i1 %tobool19, true, !dbg !6380
  %lnot22 = xor i1 %lnot20, true, !dbg !6380
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6380
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6380
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6380
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6380
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6379

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6380

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !6381
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6349, metadata !DIExpression()), !dbg !6381
  store i32 2307, ptr %__flags, align 4, !dbg !6381
  br label %do.body28, !dbg !6381

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6382

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6382

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6381

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6384
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 249, i32 %13, i64 12) #15, !dbg !6384, !srcloc !6386
  br label %do.cond30, !dbg !6384

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6384

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6381

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6387

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6387

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !6380
  br label %do.cond35, !dbg !6381

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6381

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6381

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6379
  %tobool38 = icmp ne i32 %14, 0, !dbg !6379
  %lnot39 = xor i1 %tobool38, true, !dbg !6379
  %lnot41 = xor i1 %lnot39, true, !dbg !6379
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6379
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6379
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6379
  store i64 %expval44, ptr %tmp, align 8, !dbg !6380
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !6389
  %15 = load i64, ptr %tmp, align 8, !dbg !6379
  %tobool45 = icmp ne i64 %15, 0, !dbg !6389
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6390

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6391
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6391

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6392
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6393
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6394, !range !4467, !noundef !519
  %tobool48 = trunc i8 %18 to i1, !dbg !6394
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #16, !dbg !6395
  store i1 true, ptr %retval, align 1, !dbg !6396
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6396

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #15, !dbg !6397
  %19 = load i1, ptr %retval, align 1, !dbg !6397
  ret i1 %19, !dbg !6397
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6398 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !6399 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6403, metadata !DIExpression()), !dbg !6405
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6404, metadata !DIExpression()), !dbg !6406
  %0 = load i32, ptr %size.addr, align 4, !dbg !6407
  %1 = load i64, ptr %count.addr, align 8, !dbg !6409
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #16, !dbg !6410
  ret void, !dbg !6411
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6412 dso_local void @__bad_copy_from() #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6413 dso_local void @__bad_copy_to() #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !6414 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6418, metadata !DIExpression()), !dbg !6421
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6419, metadata !DIExpression()), !dbg !6422
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6420, metadata !DIExpression()), !dbg !6423
  ret void, !dbg !6424
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6425 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_from_user_before(ptr noundef %to, ptr noundef %from, i64 noundef %n) #4 align 16 !dbg !6426 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6431, metadata !DIExpression()), !dbg !6434
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6432, metadata !DIExpression()), !dbg !6435
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6433, metadata !DIExpression()), !dbg !6436
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6437
  %1 = load i64, ptr %n.addr, align 8, !dbg !6438
  %conv = trunc i64 %1 to i32, !dbg !6438
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #16, !dbg !6439
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6440
  %3 = load i64, ptr %n.addr, align 8, !dbg !6440
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #16, !dbg !6440
  ret void, !dbg !6441
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_copy_from_user(ptr noundef %dst, ptr noundef %src, i64 noundef %size) #4 align 16 !dbg !6442 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !6445, metadata !DIExpression()), !dbg !6448
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !6446, metadata !DIExpression()), !dbg !6449
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6447, metadata !DIExpression()), !dbg !6450
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !6451
  %1 = load ptr, ptr %src.addr, align 8, !dbg !6452
  %2 = load i64, ptr %size.addr, align 8, !dbg !6453
  %call = call i64 @copy_user_generic(ptr noundef %0, ptr noundef %1, i64 noundef %2) #16, !dbg !6454
  ret i64 %call, !dbg !6455
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_from_user_after(ptr noundef %to, ptr noundef %from, i64 noundef %n, i64 noundef %left) #4 align 16 !dbg !6456 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6460, metadata !DIExpression()), !dbg !6464
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6461, metadata !DIExpression()), !dbg !6465
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6462, metadata !DIExpression()), !dbg !6466
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6463, metadata !DIExpression()), !dbg !6467
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6468
  %1 = load i64, ptr %n.addr, align 8, !dbg !6469
  %2 = load i64, ptr %left.addr, align 8, !dbg !6470
  %sub = sub i64 %1, %2, !dbg !6471
  call void @kmsan_unpoison_memory(ptr noundef %0, i64 noundef %sub) #16, !dbg !6472
  ret void, !dbg !6473
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6474 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6482, metadata !DIExpression()), !dbg !6484
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6483, metadata !DIExpression()), !dbg !6485
  ret i1 true, !dbg !6486
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6487 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6492, metadata !DIExpression()), !dbg !6495
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6493, metadata !DIExpression()), !dbg !6496
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6494, metadata !DIExpression()), !dbg !6497
  ret void, !dbg !6498
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_user_generic(ptr noundef %to, ptr noundef %from, i64 noundef %len) #4 align 16 !dbg !6499 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6501, metadata !DIExpression()), !dbg !6504
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6502, metadata !DIExpression()), !dbg !6505
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6503, metadata !DIExpression()), !dbg !6506
  call void @stac() #16, !dbg !6507
  %0 = load i64, ptr %len.addr, align 8, !dbg !6508
  %1 = load ptr, ptr %to.addr, align 8, !dbg !6508
  %2 = load ptr, ptr %from.addr, align 8, !dbg !6508
  %3 = call i64 @llvm.read_register.i64(metadata !4170), !dbg !6508
  %4 = call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldnstr\0A661:\0A\09rep movsb\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call rep_movs_alternative\0A6651:\0A.popsection\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %0, ptr %1, ptr %2, i64 %3) #15, !dbg !6508, !srcloc !6509
  %asmresult = extractvalue { i64, ptr, ptr, i64 } %4, 0, !dbg !6508
  %asmresult1 = extractvalue { i64, ptr, ptr, i64 } %4, 1, !dbg !6508
  %asmresult2 = extractvalue { i64, ptr, ptr, i64 } %4, 2, !dbg !6508
  %asmresult3 = extractvalue { i64, ptr, ptr, i64 } %4, 3, !dbg !6508
  store i64 %asmresult, ptr %len.addr, align 8, !dbg !6508
  store ptr %asmresult1, ptr %to.addr, align 8, !dbg !6508
  store ptr %asmresult2, ptr %from.addr, align 8, !dbg !6508
  call void @llvm.write_register.i64(metadata !4170, i64 %asmresult3), !dbg !6508
  call void @clac() #16, !dbg !6510
  %5 = load i64, ptr %len.addr, align 8, !dbg !6511
  ret i64 %5, !dbg !6512
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #4 align 16 !dbg !6513 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !6515, !srcloc !6516
  ret void, !dbg !6517
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #13

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #4 align 16 !dbg !6518 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !6519, !srcloc !6520
  ret void, !dbg !6521
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #5 align 16 !dbg !6522 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !6527, metadata !DIExpression()), !dbg !6529
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6528, metadata !DIExpression()), !dbg !6530
  ret void, !dbg !6531
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #14 = { nocallback nounwind }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { nounwind memory(none) }
attributes #18 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4170}
!llvm.module.flags = !{!4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178}
!llvm.ident = !{!4179}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pt_regoff", scope: !2, file: !3, line: 414, type: !4169, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/lib/.insn-eval.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/lib/insn-eval\22 -D KBUILD_BASENAME=\22insn_eval\22 -D KBUILD_MODNAME=\22insn_eval\22 -D __KBUILD_MODNAME=kmod_insn_eval -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/lib/insn-eval.ll arch/x86/lib/insn-eval.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !108, globals: !4056, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/lib/insn-eval.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9e2615ce7afb7f0e1cc24121e268effd")
!4 = !{!5, !11, !17, !27, !32, !40, !47, !55, !71, !78, !84, !89, !95, !101}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "reg_type", file: !3, line: 21, baseType: !7, size: 32, elements: !12)
!12 = !{!13, !14, !15, !16}
!13 = !DIEnumerator(name: "REG_TYPE_RM", value: 0)
!14 = !DIEnumerator(name: "REG_TYPE_REG", value: 1)
!15 = !DIEnumerator(name: "REG_TYPE_INDEX", value: 2)
!16 = !DIEnumerator(name: "REG_TYPE_BASE", value: 3)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "insn_mmio_type", file: !18, line: 35, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./arch/x86/include/asm/insn-eval.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b770eccb38ab563431b148e70067df62")
!19 = !{!20, !21, !22, !23, !24, !25, !26}
!20 = !DIEnumerator(name: "INSN_MMIO_DECODE_FAILED", value: 0)
!21 = !DIEnumerator(name: "INSN_MMIO_WRITE", value: 1)
!22 = !DIEnumerator(name: "INSN_MMIO_WRITE_IMM", value: 2)
!23 = !DIEnumerator(name: "INSN_MMIO_READ", value: 3)
!24 = !DIEnumerator(name: "INSN_MMIO_READ_ZERO_EXTEND", value: 4)
!25 = !DIEnumerator(name: "INSN_MMIO_READ_SIGN_EXTEND", value: 5)
!26 = !DIEnumerator(name: "INSN_MMIO_MOVS", value: 6)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !28, line: 65, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!31 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !33, line: 9, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!36 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!37 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!38 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!39 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !41, line: 312, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!44 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!45 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!46 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !48, line: 68, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!49 = !{!50, !51, !52, !53, !54}
!50 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!51 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!52 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!53 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!54 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !56, line: 1325, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70}
!58 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!59 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!60 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!61 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!62 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!63 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!64 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!65 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!66 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!67 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!68 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!69 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!70 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !72, line: 15, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!75 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!76 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!77 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !79, line: 26, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!82 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!83 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !85, line: 2052, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!88 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !90, line: 54, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "USRQUOTA", value: 0)
!93 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!94 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !96, line: 16, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "TT_NONE", value: 0)
!99 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!100 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !102, line: 51, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!103 = !{!104, !105, !106, !107}
!104 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!105 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!106 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!107 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!108 = !{!109, !7, !110, !111, !112, !113, !134, !135, !2305}
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!112 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !115, line: 16, size: 64, elements: !116)
!115 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!116 = !{!117, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !114, file: !115, line: 17, baseType: !118, size: 16)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !119, line: 19, baseType: !120)
!119 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !121, line: 24, baseType: !112)
!121 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!122 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !114, file: !115, line: 18, baseType: !118, size: 16, offset: 16)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !114, file: !115, line: 19, baseType: !118, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !114, file: !115, line: 19, baseType: !118, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !114, file: !115, line: 19, baseType: !118, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !114, file: !115, line: 19, baseType: !118, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !114, file: !115, line: 19, baseType: !118, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !114, file: !115, line: 20, baseType: !118, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !114, file: !115, line: 20, baseType: !118, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !114, file: !115, line: 20, baseType: !118, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !114, file: !115, line: 20, baseType: !118, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !114, file: !115, line: 20, baseType: !118, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !114, file: !115, line: 20, baseType: !118, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !137, line: 746, size: 58368, elements: !138)
!137 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!138 = !{!139, !149, !150, !151, !162, !163, !164, !165, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !254, !265, !392, !396, !399, !430, !431, !432, !433, !444, !446, !447, !448, !449, !450, !451, !462, !463, !466, !467, !468, !469, !470, !471, !472, !473, !480, !481, !488, !489, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3261, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3309, !3315, !3316, !3317, !3318, !3319, !3321, !3324, !3331, !3336, !3339, !3342, !3345, !3348, !3486, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3524, !3525, !3526, !3535, !3543, !3544, !3545, !3546, !3547, !3552, !3553, !3554, !3557, !3558, !3561, !3564, !3567, !3575, !3578, !3579, !3665, !3666, !3667, !3668, !3669, !3675, !3676, !3677, !3678, !3681, !3682, !3685, !3688, !3689, !3692, !3693, !3694, !3697, !3698, !3699, !3700, !3701, !3702, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3734, !3735, !3741, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3753, !3825, !3827, !3828, !3829, !3830, !3831, !3832, !3835, !3836, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3849, !3850, !3851}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !136, file: !137, line: 752, baseType: !140, size: 192)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !141, line: 56, size: 192, elements: !142)
!141 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!142 = !{!143, !144, !145, !148}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !140, file: !141, line: 57, baseType: !110, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !140, file: !141, line: 58, baseType: !110, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !140, file: !141, line: 59, baseType: !146, size: 32, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !119, line: 21, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !121, line: 27, baseType: !7)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !140, file: !141, line: 61, baseType: !146, size: 32, offset: 160)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !136, file: !137, line: 754, baseType: !7, size: 32, offset: 192)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !136, file: !137, line: 767, baseType: !111, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !136, file: !137, line: 768, baseType: !152, size: 32, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !153, line: 113, baseType: !154)
!153 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !153, line: 111, size: 32, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !154, file: !153, line: 112, baseType: !157, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !158, line: 174, baseType: !159)
!158 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 172, size: 32, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !159, file: !158, line: 173, baseType: !109, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !136, file: !137, line: 770, baseType: !7, size: 32, offset: 352)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !136, file: !137, line: 771, baseType: !7, size: 32, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !136, file: !137, line: 774, baseType: !109, size: 32, offset: 416)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !136, file: !137, line: 775, baseType: !166, size: 128, offset: 448)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !167, line: 58, size: 128, elements: !168)
!167 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!168 = !{!169, !175, !180, !181}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !166, file: !167, line: 59, baseType: !170, size: 64)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !171, line: 60, size: 64, elements: !172)
!171 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !170, file: !171, line: 61, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !166, file: !167, line: 60, baseType: !176, size: 32, offset: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !166, file: !167, line: 60, size: 32, elements: !177)
!177 = !{!178, !179}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !176, file: !167, line: 61, baseType: !7, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !176, file: !167, line: 62, baseType: !157, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !166, file: !167, line: 65, baseType: !118, size: 16, offset: 96)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !166, file: !167, line: 65, baseType: !118, size: 16, offset: 112)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !136, file: !137, line: 776, baseType: !7, size: 32, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !136, file: !137, line: 777, baseType: !110, size: 64, offset: 640)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !136, file: !137, line: 778, baseType: !135, size: 64, offset: 704)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !136, file: !137, line: 787, baseType: !109, size: 32, offset: 768)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !136, file: !137, line: 788, baseType: !109, size: 32, offset: 800)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !136, file: !137, line: 790, baseType: !109, size: 32, offset: 832)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !136, file: !137, line: 792, baseType: !109, size: 32, offset: 864)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !136, file: !137, line: 793, baseType: !109, size: 32, offset: 896)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !136, file: !137, line: 794, baseType: !109, size: 32, offset: 928)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !136, file: !137, line: 795, baseType: !7, size: 32, offset: 960)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !136, file: !137, line: 797, baseType: !193, size: 2048, offset: 1024)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !137, line: 551, size: 2048, elements: !194)
!194 = !{!195, !200, !208, !212, !213, !219, !220, !221, !222, !223, !224, !228, !229, !230, !231, !233, !236, !237, !238}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !193, file: !137, line: 553, baseType: !196, size: 128)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !137, line: 411, size: 128, elements: !197)
!197 = !{!198, !199}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !196, file: !137, line: 412, baseType: !110, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !196, file: !137, line: 413, baseType: !146, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !193, file: !137, line: 554, baseType: !201, size: 192, align: 64, offset: 128)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !202, line: 5, size: 192, align: 64, elements: !203)
!202 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!203 = !{!204, !205, !207}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !201, file: !202, line: 6, baseType: !110, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !201, file: !202, line: 7, baseType: !206, size: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !201, file: !202, line: 8, baseType: !206, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !193, file: !137, line: 555, baseType: !209, size: 64, offset: 320)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !119, line: 23, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !121, line: 31, baseType: !211)
!211 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !193, file: !137, line: 556, baseType: !209, size: 64, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !193, file: !137, line: 558, baseType: !214, size: 128, offset: 448)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !158, line: 190, size: 128, elements: !215)
!215 = !{!216, !218}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !214, file: !158, line: 191, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !214, file: !158, line: 191, baseType: !217, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !193, file: !137, line: 559, baseType: !7, size: 32, offset: 576)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !193, file: !137, line: 561, baseType: !209, size: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !193, file: !137, line: 562, baseType: !209, size: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !193, file: !137, line: 563, baseType: !209, size: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !193, file: !137, line: 564, baseType: !209, size: 64, offset: 832)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !193, file: !137, line: 565, baseType: !225, size: 64, offset: 896)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !119, line: 22, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !121, line: 30, baseType: !227)
!227 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !193, file: !137, line: 566, baseType: !209, size: 64, offset: 960)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !193, file: !137, line: 568, baseType: !209, size: 64, offset: 1024)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !193, file: !137, line: 571, baseType: !109, size: 32, offset: 1088)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !193, file: !137, line: 572, baseType: !232, size: 64, offset: 1152)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !193, file: !137, line: 574, baseType: !234, size: 64, offset: 1216)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !137, line: 49, flags: DIFlagFwdDecl)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !193, file: !137, line: 576, baseType: !234, size: 64, offset: 1280)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !193, file: !137, line: 578, baseType: !110, size: 64, offset: 1344)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !193, file: !137, line: 588, baseType: !239, size: 512, align: 512, offset: 1536)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !137, line: 497, size: 512, align: 512, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !239, file: !137, line: 498, baseType: !209, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !239, file: !137, line: 499, baseType: !209, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !239, file: !137, line: 500, baseType: !209, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !239, file: !137, line: 501, baseType: !146, size: 32, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !239, file: !137, line: 502, baseType: !146, size: 32, offset: 224)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !239, file: !137, line: 503, baseType: !110, size: 64, offset: 256)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !239, file: !137, line: 504, baseType: !110, size: 64, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !239, file: !137, line: 505, baseType: !110, size: 64, offset: 384)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !239, file: !137, line: 506, baseType: !250, size: 64, align: 64, offset: 448)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !137, line: 445, size: 64, align: 64, elements: !251)
!251 = !{!252, !253}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !250, file: !137, line: 446, baseType: !7, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !250, file: !137, line: 447, baseType: !7, size: 32, offset: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !136, file: !137, line: 798, baseType: !255, size: 384, offset: 3072)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !137, line: 592, size: 384, elements: !256)
!256 = !{!257, !258, !259, !260, !261, !262, !263}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !255, file: !137, line: 593, baseType: !214, size: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !255, file: !137, line: 594, baseType: !110, size: 64, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !255, file: !137, line: 595, baseType: !110, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !255, file: !137, line: 596, baseType: !7, size: 32, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !255, file: !137, line: 597, baseType: !112, size: 16, offset: 288)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !255, file: !137, line: 598, baseType: !112, size: 16, offset: 304)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !255, file: !137, line: 600, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !136, file: !137, line: 799, baseType: !266, size: 1792, offset: 3456)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !137, line: 610, size: 1792, elements: !267)
!267 = !{!268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !389, !390}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !266, file: !137, line: 611, baseType: !201, size: 192, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !266, file: !137, line: 618, baseType: !209, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !266, file: !137, line: 619, baseType: !209, size: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !266, file: !137, line: 620, baseType: !209, size: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !266, file: !137, line: 621, baseType: !209, size: 64, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !266, file: !137, line: 622, baseType: !209, size: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !266, file: !137, line: 629, baseType: !225, size: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !266, file: !137, line: 630, baseType: !209, size: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !266, file: !137, line: 631, baseType: !7, size: 32, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !266, file: !137, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !266, file: !137, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !266, file: !137, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !266, file: !137, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !266, file: !137, line: 662, baseType: !282, size: 512, offset: 704)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !28, line: 118, size: 512, elements: !283)
!283 = !{!284, !292, !293, !298, !385, !386, !387, !388}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !282, file: !28, line: 119, baseType: !285, size: 256)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !286, line: 9, size: 256, elements: !287)
!286 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!287 = !{!288, !289}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !285, file: !286, line: 10, baseType: !201, size: 192, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !285, file: !286, line: 11, baseType: !290, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !291, line: 29, baseType: !225)
!291 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !282, file: !28, line: 120, baseType: !290, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !282, file: !28, line: 121, baseType: !294, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!27, !297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !282, file: !28, line: 122, baseType: !299, size: 64, offset: 384)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !28, line: 159, size: 512, align: 512, elements: !301)
!301 = !{!302, !353, !354, !358, !368, !369, !380, !384}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !300, file: !28, line: 160, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !28, line: 215, size: 4608, align: 512, elements: !305)
!305 = !{!306, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !304, file: !28, line: 216, baseType: !307, size: 32)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !308, line: 23, baseType: !309)
!308 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !308, line: 14, size: 32, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !309, file: !308, line: 15, baseType: !312, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !313, line: 44, baseType: !314)
!313 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !313, line: 14, size: 32, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !313, line: 15, baseType: !317, size: 32)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !313, line: 15, size: 32, elements: !318)
!318 = !{!319, !320, !328}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !317, file: !313, line: 16, baseType: !157, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !313, line: 24, baseType: !321, size: 16)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !313, line: 24, size: 16, elements: !322)
!322 = !{!323, !327}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !321, file: !313, line: 25, baseType: !324, size: 8)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !119, line: 17, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !121, line: 21, baseType: !326)
!326 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !321, file: !313, line: 26, baseType: !324, size: 8, offset: 8)
!328 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !313, line: 28, baseType: !329, size: 32)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !313, line: 28, size: 32, elements: !330)
!330 = !{!331, !332}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !329, file: !313, line: 29, baseType: !118, size: 16)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !329, file: !313, line: 30, baseType: !118, size: 16, offset: 16)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !304, file: !28, line: 217, baseType: !7, size: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !304, file: !28, line: 218, baseType: !7, size: 32, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !304, file: !28, line: 219, baseType: !7, size: 32, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !304, file: !28, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !304, file: !28, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !304, file: !28, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !304, file: !28, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !304, file: !28, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !304, file: !28, line: 226, baseType: !7, size: 32, offset: 160)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !304, file: !28, line: 227, baseType: !112, size: 16, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !304, file: !28, line: 228, baseType: !112, size: 16, offset: 208)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !304, file: !28, line: 229, baseType: !7, size: 32, offset: 224)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !304, file: !28, line: 235, baseType: !290, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !304, file: !28, line: 236, baseType: !297, size: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !304, file: !28, line: 237, baseType: !290, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !304, file: !28, line: 238, baseType: !297, size: 64, offset: 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !304, file: !28, line: 239, baseType: !350, size: 4096, align: 512, offset: 512)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 4096, align: 512, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 8)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !300, file: !28, line: 161, baseType: !7, size: 32, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !300, file: !28, line: 162, baseType: !355, size: 32, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !158, line: 32, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !357, line: 96, baseType: !109)
!357 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!358 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !300, file: !28, line: 163, baseType: !359, size: 32, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !360, line: 274, baseType: !361)
!360 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !360, line: 274, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !361, file: !360, line: 274, baseType: !364, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !360, line: 69, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !360, line: 64, size: 32, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !365, file: !360, line: 65, baseType: !7, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !300, file: !28, line: 164, baseType: !297, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !300, file: !28, line: 165, baseType: !370, size: 128, offset: 256)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !286, line: 14, size: 128, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !370, file: !286, line: 15, baseType: !373, size: 128)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !202, line: 26, size: 128, elements: !374)
!374 = !{!375, !379}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !373, file: !202, line: 27, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !202, line: 12, size: 64, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !376, file: !202, line: 13, baseType: !206, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !373, file: !202, line: 28, baseType: !206, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !300, file: !28, line: 166, baseType: !381, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!290}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !300, file: !28, line: 167, baseType: !290, size: 64, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !282, file: !28, line: 123, baseType: !324, size: 8, offset: 448)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !282, file: !28, line: 124, baseType: !324, size: 8, offset: 456)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !282, file: !28, line: 125, baseType: !324, size: 8, offset: 464)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !282, file: !28, line: 126, baseType: !324, size: 8, offset: 472)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !266, file: !137, line: 671, baseType: !282, size: 512, offset: 1216)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !266, file: !137, line: 679, baseType: !391, size: 64, offset: 1728)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !136, file: !137, line: 800, baseType: !393, size: 64, offset: 5248)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !395)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !137, line: 800, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !136, file: !137, line: 809, baseType: !397, size: 64, offset: 5312)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !137, line: 70, flags: DIFlagFwdDecl)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !136, file: !137, line: 825, baseType: !400, size: 2048, align: 512, offset: 5632)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !137, line: 509, size: 2048, align: 512, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !400, file: !137, line: 511, baseType: !209, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !400, file: !137, line: 512, baseType: !209, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !400, file: !137, line: 513, baseType: !209, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !400, file: !137, line: 514, baseType: !209, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !400, file: !137, line: 515, baseType: !209, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !400, file: !137, line: 516, baseType: !209, size: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !400, file: !137, line: 518, baseType: !209, size: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !400, file: !137, line: 519, baseType: !209, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !400, file: !137, line: 520, baseType: !225, size: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !400, file: !137, line: 522, baseType: !209, size: 64, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !400, file: !137, line: 523, baseType: !209, size: 64, offset: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !400, file: !137, line: 524, baseType: !225, size: 64, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !400, file: !137, line: 526, baseType: !225, size: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !400, file: !137, line: 527, baseType: !209, size: 64, offset: 832)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !400, file: !137, line: 529, baseType: !209, size: 64, offset: 896)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !400, file: !137, line: 530, baseType: !209, size: 64, offset: 960)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !400, file: !137, line: 531, baseType: !209, size: 64, offset: 1024)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !400, file: !137, line: 532, baseType: !209, size: 64, offset: 1088)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !400, file: !137, line: 533, baseType: !209, size: 64, offset: 1152)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !400, file: !137, line: 535, baseType: !209, size: 64, offset: 1216)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !400, file: !137, line: 536, baseType: !209, size: 64, offset: 1280)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !400, file: !137, line: 537, baseType: !209, size: 64, offset: 1344)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !400, file: !137, line: 538, baseType: !209, size: 64, offset: 1408)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !400, file: !137, line: 539, baseType: !209, size: 64, offset: 1472)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !400, file: !137, line: 540, baseType: !209, size: 64, offset: 1536)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !400, file: !137, line: 541, baseType: !209, size: 64, offset: 1600)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !400, file: !137, line: 542, baseType: !209, size: 64, offset: 1664)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !400, file: !137, line: 543, baseType: !209, size: 64, offset: 1728)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !136, file: !137, line: 833, baseType: !7, size: 32, offset: 7680)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !136, file: !137, line: 836, baseType: !7, size: 32, offset: 7712)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !136, file: !137, line: 837, baseType: !109, size: 32, offset: 7744)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !136, file: !137, line: 838, baseType: !434, size: 64, offset: 7808)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !437, line: 19, baseType: !438)
!437 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !437, line: 19, size: 64, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !438, file: !437, line: 19, baseType: !441, size: 64)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 1)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !136, file: !137, line: 839, baseType: !445, size: 64, offset: 7872)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !136, file: !137, line: 840, baseType: !436, size: 64, offset: 7936)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !136, file: !137, line: 841, baseType: !111, size: 64, offset: 8000)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !136, file: !137, line: 843, baseType: !112, size: 16, offset: 8064)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !136, file: !137, line: 845, baseType: !112, size: 16, offset: 8080)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !136, file: !137, line: 848, baseType: !109, size: 32, offset: 8096)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !136, file: !137, line: 849, baseType: !452, size: 32, offset: 8128)
!452 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !137, line: 718, size: 32, elements: !453)
!453 = !{!454, !461}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !452, file: !137, line: 724, baseType: !455, size: 32)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !452, file: !137, line: 719, size: 32, elements: !456)
!456 = !{!457, !458, !459, !460}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !455, file: !137, line: 720, baseType: !324, size: 8)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !455, file: !137, line: 721, baseType: !324, size: 8, offset: 8)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !455, file: !137, line: 722, baseType: !324, size: 8, offset: 16)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !455, file: !137, line: 723, baseType: !324, size: 8, offset: 24)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !452, file: !137, line: 725, baseType: !146, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !136, file: !137, line: 850, baseType: !214, size: 128, offset: 8192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !136, file: !137, line: 851, baseType: !464, size: 64, offset: 8320)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !137, line: 60, flags: DIFlagFwdDecl)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !136, file: !137, line: 855, baseType: !110, size: 64, offset: 8384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !136, file: !137, line: 856, baseType: !324, size: 8, offset: 8448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !136, file: !137, line: 857, baseType: !324, size: 8, offset: 8456)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !136, file: !137, line: 858, baseType: !109, size: 32, offset: 8480)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !136, file: !137, line: 859, baseType: !214, size: 128, offset: 8512)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !136, file: !137, line: 860, baseType: !109, size: 32, offset: 8640)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !136, file: !137, line: 861, baseType: !214, size: 128, offset: 8704)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !136, file: !137, line: 873, baseType: !474, size: 256, offset: 8832)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !137, line: 376, size: 256, elements: !475)
!475 = !{!476, !477, !478, !479}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !474, file: !137, line: 381, baseType: !110, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !474, file: !137, line: 384, baseType: !211, size: 64, offset: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !474, file: !137, line: 389, baseType: !211, size: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !474, file: !137, line: 392, baseType: !211, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !136, file: !137, line: 875, baseType: !214, size: 128, offset: 9088)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !136, file: !137, line: 877, baseType: !482, size: 320, offset: 9216)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !483, line: 86, size: 320, elements: !484)
!483 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!484 = !{!485, !486, !487}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !482, file: !483, line: 87, baseType: !109, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !482, file: !483, line: 88, baseType: !214, size: 128, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !482, file: !483, line: 89, baseType: !214, size: 128, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !136, file: !137, line: 878, baseType: !201, size: 192, align: 64, offset: 9536)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !136, file: !137, line: 881, baseType: !490, size: 64, offset: 9728)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !56, line: 733, size: 10240, elements: !492)
!492 = !{!493, !3180}
!493 = !DIDerivedType(tag: DW_TAG_member, scope: !491, file: !56, line: 734, baseType: !494, size: 10240)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !491, file: !56, line: 734, size: 10240, elements: !495)
!495 = !{!496, !500, !522, !3054, !3055, !3056, !3057, !3058, !3059, !3066, !3067, !3068, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3107, !3109, !3112, !3160, !3161, !3162, !3165, !3166, !3167, !3170, !3171, !3172, !3178, !3179}
!496 = !DIDerivedType(tag: DW_TAG_member, scope: !494, file: !56, line: 739, baseType: !497, size: 512, align: 512)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !494, file: !56, line: 739, size: 512, align: 512, elements: !498)
!498 = !{!499}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !497, file: !56, line: 747, baseType: !157, size: 32)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !494, file: !56, line: 750, baseType: !501, size: 128, offset: 512)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !502, line: 218, size: 128, elements: !503)
!502 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!503 = !{!504, !520, !521}
!504 = !DIDerivedType(tag: DW_TAG_member, scope: !501, file: !502, line: 219, baseType: !505, size: 32)
!505 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !501, file: !502, line: 219, size: 32, elements: !506)
!506 = !{!507, !516}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !505, file: !502, line: 220, baseType: !508, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !509, line: 29, baseType: !510)
!509 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !509, line: 17, size: 32, elements: !511)
!511 = !{!512}
!512 = !DIDerivedType(tag: DW_TAG_member, scope: !510, file: !509, line: 18, baseType: !513, size: 32)
!513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !510, file: !509, line: 18, size: 32, elements: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !513, file: !509, line: 19, baseType: !309, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !505, file: !502, line: 221, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !502, line: 197, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !502, line: 197, elements: !519)
!519 = !{}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !501, file: !502, line: 223, baseType: !7, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !501, file: !502, line: 224, baseType: !111, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !494, file: !56, line: 752, baseType: !523, size: 64, offset: 640)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!110, !526, !110, !110, !110, !110}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !85, line: 994, size: 1856, align: 64, elements: !528)
!528 = !{!529, !543, !544, !546, !553, !565, !568, !569, !645, !860, !869, !3044, !3045, !3046, !3047, !3048, !3049, !3051, !3052, !3053}
!529 = !DIDerivedType(tag: DW_TAG_member, scope: !527, file: !85, line: 995, baseType: !530, size: 128)
!530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !527, file: !85, line: 995, size: 128, elements: !531)
!531 = !{!532, !533, !542}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !530, file: !85, line: 996, baseType: !170, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !530, file: !85, line: 997, baseType: !534, size: 128, align: 64)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !158, line: 232, size: 128, align: 64, elements: !535)
!535 = !{!536, !538}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !534, file: !158, line: 233, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !534, file: !158, line: 234, baseType: !539, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !537}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !530, file: !85, line: 998, baseType: !7, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !527, file: !85, line: 1005, baseType: !508, size: 32, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !527, file: !85, line: 1006, baseType: !545, size: 32, offset: 160)
!545 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !158, line: 156, baseType: !7)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !527, file: !85, line: 1007, baseType: !547, size: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !548, line: 13, baseType: !549)
!548 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !158, line: 181, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !158, line: 179, size: 64, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !550, file: !158, line: 180, baseType: !225, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !527, file: !85, line: 1008, baseType: !554, size: 256, offset: 256)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !555, line: 66, size: 256, elements: !556)
!555 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!556 = !{!557, !558, !559, !564}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !554, file: !555, line: 67, baseType: !547, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !554, file: !555, line: 68, baseType: !307, size: 32, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !554, file: !555, line: 70, baseType: !560, size: 32, offset: 96)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !561, line: 15, size: 32, elements: !562)
!561 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !560, file: !561, line: 20, baseType: !157, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !554, file: !555, line: 72, baseType: !214, size: 128, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !527, file: !85, line: 1009, baseType: !566, size: 64, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !158, line: 52, baseType: !567)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !357, line: 88, baseType: !227)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !527, file: !85, line: 1010, baseType: !7, size: 32, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !527, file: !85, line: 1011, baseType: !570, size: 256, offset: 640)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !85, line: 948, size: 256, elements: !571)
!571 = !{!572, !595, !634, !635, !643, !644}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !570, file: !85, line: 949, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !574, line: 34, baseType: !575)
!574 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 25, size: 64, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !575, file: !574, line: 26, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !579, line: 27, baseType: !580)
!579 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !579, line: 13, size: 64, elements: !581)
!581 = !{!582, !594}
!582 = !DIDerivedType(tag: DW_TAG_member, scope: !580, file: !579, line: 14, baseType: !583, size: 32)
!583 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !580, file: !579, line: 14, size: 32, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !583, file: !579, line: 15, baseType: !157, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !579, line: 16, baseType: !587, size: 32)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !579, line: 16, size: 32, elements: !588)
!588 = !{!589, !590}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !587, file: !579, line: 18, baseType: !324, size: 8)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !587, file: !579, line: 19, baseType: !591, size: 24, offset: 8)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 24, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: 3)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !580, file: !579, line: 26, baseType: !312, size: 32, offset: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !570, file: !85, line: 950, baseType: !596, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !33, line: 59, size: 768, elements: !598)
!598 = !{!599, !600, !601, !602, !615, !616, !623, !624}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !597, file: !33, line: 61, baseType: !152, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !597, file: !33, line: 62, baseType: !7, size: 32, offset: 32)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !597, file: !33, line: 63, baseType: !508, size: 32, offset: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !597, file: !33, line: 65, baseType: !603, size: 256, offset: 128)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 256, elements: !613)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !158, line: 194, size: 64, elements: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !604, file: !158, line: 195, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !158, line: 198, size: 128, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !608, file: !158, line: 199, baseType: !607, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !608, file: !158, line: 199, baseType: !612, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!613 = !{!614}
!614 = !DISubrange(count: 4)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !597, file: !33, line: 66, baseType: !604, size: 64, offset: 384)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !597, file: !33, line: 68, baseType: !617, size: 192, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !618, line: 41, baseType: !619)
!618 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !618, line: 37, size: 192, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !619, file: !618, line: 38, baseType: !508, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !619, file: !618, line: 39, baseType: !214, size: 128, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !597, file: !33, line: 69, baseType: !534, size: 128, align: 64, offset: 640)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !597, file: !33, line: 70, baseType: !625, offset: 768)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !626, elements: !632)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !33, line: 54, size: 128, elements: !627)
!627 = !{!628, !629}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !626, file: !33, line: 55, baseType: !109, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !626, file: !33, line: 56, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !33, line: 56, flags: DIFlagFwdDecl)
!632 = !{!633}
!633 = !DISubrange(count: -1)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !570, file: !85, line: 951, baseType: !32, size: 32, offset: 128)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !570, file: !85, line: 952, baseType: !636, size: 32, offset: 160)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !637, line: 23, baseType: !638)
!637 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !637, line: 21, size: 32, elements: !639)
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !638, file: !637, line: 22, baseType: !641, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !158, line: 37, baseType: !642)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !357, line: 49, baseType: !7)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !570, file: !85, line: 952, baseType: !636, size: 32, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !570, file: !85, line: 953, baseType: !109, size: 32, offset: 224)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !527, file: !85, line: 1012, baseType: !646, size: 64, offset: 896)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !649, line: 110, size: 1472, elements: !650)
!649 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!650 = !{!651, !652, !653, !660, !661, !662, !663, !664, !665, !666, !667, !673, !674, !675, !676, !677, !678, !805, !806, !807, !808, !809, !840, !843, !847, !855}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !648, file: !649, line: 111, baseType: !547, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !648, file: !649, line: 112, baseType: !636, size: 32, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !648, file: !649, line: 113, baseType: !654, size: 32, offset: 96)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !637, line: 28, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !637, line: 26, size: 32, elements: !656)
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !655, file: !637, line: 27, baseType: !658, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !158, line: 38, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !357, line: 50, baseType: !7)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !648, file: !649, line: 114, baseType: !636, size: 32, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !648, file: !649, line: 115, baseType: !654, size: 32, offset: 160)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !648, file: !649, line: 116, baseType: !636, size: 32, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !648, file: !649, line: 117, baseType: !654, size: 32, offset: 224)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !648, file: !649, line: 118, baseType: !636, size: 32, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !648, file: !649, line: 119, baseType: !654, size: 32, offset: 288)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !648, file: !649, line: 120, baseType: !7, size: 32, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !648, file: !649, line: 121, baseType: !668, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !669, line: 24, baseType: !670)
!669 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !669, line: 24, size: 64, elements: !671)
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !670, file: !669, line: 24, baseType: !209, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !648, file: !649, line: 122, baseType: !668, size: 64, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !648, file: !649, line: 123, baseType: !668, size: 64, offset: 512)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !648, file: !649, line: 124, baseType: !668, size: 64, offset: 576)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !648, file: !649, line: 125, baseType: !668, size: 64, offset: 640)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !648, file: !649, line: 127, baseType: !326, size: 8, offset: 704)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !648, file: !649, line: 129, baseType: !679, size: 64, offset: 768)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !681, line: 195, size: 1728, elements: !682)
!681 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!682 = !{!683, !684, !689, !694, !703, !706, !707, !714, !715, !716, !717, !720, !721, !722, !724, !725, !769, !790}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !680, file: !681, line: 196, baseType: !152, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !680, file: !681, line: 197, baseType: !685, size: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !681, line: 28, baseType: !686)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !158, line: 104, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !119, line: 20, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !121, line: 26, baseType: !109)
!689 = !DIDerivedType(tag: DW_TAG_member, scope: !680, file: !681, line: 198, baseType: !690, size: 192, offset: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !681, line: 198, size: 192, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !690, file: !681, line: 199, baseType: !214, size: 128)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !690, file: !681, line: 200, baseType: !201, size: 192, align: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !680, file: !681, line: 205, baseType: !695, size: 320, offset: 256)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !696, line: 48, size: 320, elements: !697)
!696 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!697 = !{!698, !699, !700, !701, !702}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !695, file: !696, line: 49, baseType: !547, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !695, file: !696, line: 55, baseType: !547, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !695, file: !696, line: 57, baseType: !560, size: 32, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !695, file: !696, line: 59, baseType: !307, size: 32, offset: 160)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !695, file: !696, line: 60, baseType: !214, size: 128, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !680, file: !681, line: 206, baseType: !704, size: 64, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !681, line: 206, flags: DIFlagFwdDecl)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !680, file: !681, line: 207, baseType: !111, size: 64, offset: 640)
!707 = !DIDerivedType(tag: DW_TAG_member, scope: !680, file: !681, line: 208, baseType: !708, size: 64, offset: 704)
!708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !681, line: 208, size: 64, elements: !709)
!709 = !{!710, !713}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !708, file: !681, line: 209, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !712, line: 8, baseType: !226)
!712 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!713 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !708, file: !681, line: 210, baseType: !711, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !680, file: !681, line: 212, baseType: !711, size: 64, offset: 768)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !680, file: !681, line: 213, baseType: !636, size: 32, offset: 832)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !680, file: !681, line: 214, baseType: !654, size: 32, offset: 864)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !680, file: !681, line: 215, baseType: !718, size: 32, offset: 896)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !681, line: 31, baseType: !719)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !158, line: 110, baseType: !146)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !680, file: !681, line: 216, baseType: !112, size: 16, offset: 928)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !680, file: !681, line: 217, baseType: !112, size: 16, offset: 944)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !680, file: !681, line: 221, baseType: !723, size: 16, offset: 960)
!723 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !680, file: !681, line: 228, baseType: !110, size: 64, offset: 1024)
!725 = !DIDerivedType(tag: DW_TAG_member, scope: !680, file: !681, line: 245, baseType: !726, size: 320, offset: 1088)
!726 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !681, line: 245, size: 320, elements: !727)
!727 = !{!728, !760}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !726, file: !681, line: 246, baseType: !729, size: 320)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !681, line: 114, size: 320, elements: !730)
!730 = !{!731, !732, !745, !748, !757}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !729, file: !681, line: 116, baseType: !110, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, scope: !729, file: !681, line: 117, baseType: !733, size: 64, offset: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !729, file: !681, line: 117, size: 64, elements: !734)
!734 = !{!735, !744}
!735 = !DIDerivedType(tag: DW_TAG_member, scope: !733, file: !681, line: 118, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !733, file: !681, line: 118, size: 64, elements: !737)
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !736, file: !681, line: 120, baseType: !118, size: 16)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !736, file: !681, line: 121, baseType: !740, size: 48, offset: 16)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 48, elements: !742)
!741 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!742 = !{!743}
!743 = !DISubrange(count: 6)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !733, file: !681, line: 127, baseType: !110, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !729, file: !681, line: 129, baseType: !746, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !681, line: 102, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !729, file: !681, line: 130, baseType: !749, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !681, line: 108, size: 192, elements: !751)
!751 = !{!752, !753, !754}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !750, file: !681, line: 109, baseType: !534, size: 128, align: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !750, file: !681, line: 110, baseType: !152, size: 32, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !750, file: !681, line: 111, baseType: !755, size: 8, offset: 160)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !158, line: 35, baseType: !756)
!756 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !729, file: !681, line: 131, baseType: !758, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!760 = !DIDerivedType(tag: DW_TAG_member, scope: !726, file: !681, line: 247, baseType: !761, size: 320)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !726, file: !681, line: 247, size: 320, elements: !762)
!762 = !{!763, !764, !765, !766, !767}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !761, file: !681, line: 248, baseType: !110, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !761, file: !681, line: 249, baseType: !110, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !761, file: !681, line: 250, baseType: !746, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !761, file: !681, line: 251, baseType: !749, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !761, file: !681, line: 252, baseType: !768, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, scope: !680, file: !681, line: 260, baseType: !770, size: 256, offset: 1408)
!770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !681, line: 260, size: 256, elements: !771)
!771 = !{!772, !778}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !770, file: !681, line: 261, baseType: !773, size: 256)
!773 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !681, line: 134, size: 256, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !773, file: !681, line: 135, baseType: !111, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !773, file: !681, line: 136, baseType: !777, size: 256)
!777 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, elements: !613)
!778 = !DIDerivedType(tag: DW_TAG_member, scope: !770, file: !681, line: 262, baseType: !779, size: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !770, file: !681, line: 262, size: 256, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !779, file: !681, line: 264, baseType: !214, size: 128)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !779, file: !681, line: 265, baseType: !783, size: 128, offset: 128)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !784, line: 22, size: 128, elements: !785)
!784 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!785 = !{!786, !789}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !783, file: !784, line: 23, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !784, line: 23, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !783, file: !784, line: 24, baseType: !110, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !680, file: !681, line: 280, baseType: !791, size: 64, offset: 1664)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !681, line: 176, size: 192, elements: !793)
!793 = !{!794, !803, !804}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !792, file: !681, line: 177, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !681, line: 171, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!109, !679, !799, !801, !679}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !747)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !792, file: !681, line: 178, baseType: !679, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !792, file: !681, line: 179, baseType: !746, size: 64, offset: 128)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !648, file: !649, line: 130, baseType: !679, size: 64, offset: 832)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !648, file: !649, line: 131, baseType: !679, size: 64, offset: 896)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !648, file: !649, line: 132, baseType: !679, size: 64, offset: 960)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !648, file: !649, line: 135, baseType: !111, size: 64, offset: 1024)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !648, file: !649, line: 137, baseType: !810, size: 64, offset: 1088)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !812, line: 14, size: 1088, elements: !813)
!812 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!813 = !{!814, !815, !824, !825, !826, !827, !828, !829}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !811, file: !812, line: 15, baseType: !152, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !811, file: !812, line: 17, baseType: !816, size: 320, offset: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !817, line: 22, size: 320, elements: !818)
!817 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!818 = !{!819, !820, !821, !822}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !816, file: !817, line: 23, baseType: !307, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !816, file: !817, line: 24, baseType: !225, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !816, file: !817, line: 26, baseType: !214, size: 128, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !816, file: !817, line: 28, baseType: !823, size: 64, offset: 256)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !811, file: !812, line: 19, baseType: !110, size: 64, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !811, file: !812, line: 20, baseType: !547, size: 64, offset: 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !811, file: !812, line: 23, baseType: !608, size: 128, offset: 512)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !811, file: !812, line: 24, baseType: !636, size: 32, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !811, file: !812, line: 29, baseType: !547, size: 64, offset: 704)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !811, file: !812, line: 36, baseType: !830, size: 320, offset: 768)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !831, line: 15, size: 320, elements: !832)
!831 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!832 = !{!833, !834, !835, !836, !837, !838, !839}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !830, file: !831, line: 16, baseType: !307, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !830, file: !831, line: 18, baseType: !109, size: 32, offset: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !830, file: !831, line: 19, baseType: !109, size: 32, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !830, file: !831, line: 20, baseType: !109, size: 32, offset: 96)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !830, file: !831, line: 21, baseType: !109, size: 32, offset: 128)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !830, file: !831, line: 22, baseType: !110, size: 64, offset: 192)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !830, file: !831, line: 23, baseType: !110, size: 64, offset: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !648, file: !649, line: 138, baseType: !841, size: 64, offset: 1152)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !637, line: 18, flags: DIFlagFwdDecl)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !648, file: !649, line: 139, baseType: !844, size: 64, offset: 1216)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !846, line: 16, flags: DIFlagFwdDecl)
!846 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!847 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !648, file: !649, line: 140, baseType: !848, size: 64, offset: 1280)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !649, line: 25, size: 64, elements: !850)
!850 = !{!851, !852, !853}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !849, file: !649, line: 26, baseType: !157, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !849, file: !649, line: 27, baseType: !109, size: 32, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !849, file: !649, line: 28, baseType: !854, offset: 64)
!854 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, elements: !632)
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !649, line: 142, baseType: !856, size: 128, offset: 1344)
!856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !649, line: 142, size: 128, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !856, file: !649, line: 143, baseType: !109, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !856, file: !649, line: 144, baseType: !534, size: 128, align: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !527, file: !85, line: 1013, baseType: !861, size: 256, offset: 960)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !85, line: 970, size: 256, elements: !862)
!862 = !{!863, !864, !865, !866, !867, !868}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !861, file: !85, line: 971, baseType: !110, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !861, file: !85, line: 972, baseType: !7, size: 32, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !861, file: !85, line: 973, baseType: !7, size: 32, offset: 96)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !861, file: !85, line: 974, baseType: !7, size: 32, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !861, file: !85, line: 975, baseType: !7, size: 32, offset: 160)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !861, file: !85, line: 976, baseType: !566, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !527, file: !85, line: 1014, baseType: !870, size: 128, offset: 1216)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !871, line: 8, size: 128, elements: !872)
!871 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!872 = !{!873, !3043}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !870, file: !871, line: 9, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !876, line: 70, size: 256, elements: !877)
!876 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!877 = !{!878, !3040, !3041, !3042}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !875, file: !876, line: 71, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !881, line: 82, size: 1536, elements: !882)
!881 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!882 = !{!883, !884, !889, !897, !898, !913, !3007, !3009, !3022, !3023, !3024, !3025, !3026, !3032, !3033, !3034}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !880, file: !881, line: 84, baseType: !7, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !880, file: !881, line: 85, baseType: !885, size: 32, offset: 32)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !360, line: 275, baseType: !886)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !360, line: 275, size: 32, elements: !887)
!887 = !{!888}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !886, file: !360, line: 275, baseType: !364, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !880, file: !881, line: 86, baseType: !890, size: 128, offset: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !891, line: 38, size: 128, elements: !892)
!891 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!892 = !{!893, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !890, file: !891, line: 39, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !890, file: !891, line: 39, baseType: !896, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !880, file: !881, line: 87, baseType: !879, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !880, file: !881, line: 88, baseType: !899, size: 128, offset: 256)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !881, line: 49, size: 128, elements: !900)
!900 = !{!901, !910}
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !899, file: !881, line: 50, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !899, file: !881, line: 50, size: 64, elements: !903)
!903 = !{!904, !909}
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !902, file: !881, line: 51, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !902, file: !881, line: 51, size: 64, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !905, file: !881, line: 52, baseType: !146, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !905, file: !881, line: 52, baseType: !146, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !902, file: !881, line: 54, baseType: !209, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !899, file: !881, line: 56, baseType: !911, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !880, file: !881, line: 89, baseType: !914, size: 64, offset: 384)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !85, line: 641, size: 4800, elements: !916)
!916 = !{!917, !919, !920, !921, !922, !923, !924, !927, !928, !1126, !2821, !2822, !2823, !2824, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2989, !2992, !2993, !2994, !3003, !3004, !3005, !3006}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !915, file: !85, line: 642, baseType: !918, size: 16)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !158, line: 24, baseType: !112)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !915, file: !85, line: 643, baseType: !112, size: 16, offset: 16)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !915, file: !85, line: 644, baseType: !636, size: 32, offset: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !915, file: !85, line: 645, baseType: !214, size: 128, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !915, file: !85, line: 646, baseType: !654, size: 32, offset: 192)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !915, file: !85, line: 647, baseType: !7, size: 32, offset: 224)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !915, file: !85, line: 650, baseType: !925, size: 64, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !85, line: 607, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !915, file: !85, line: 651, baseType: !925, size: 64, offset: 320)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !915, file: !85, line: 654, baseType: !929, size: 64, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !931)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !85, line: 1966, size: 2048, align: 512, elements: !932)
!932 = !{!933, !937, !950, !956, !960, !964, !968, !972, !976, !980, !984, !985, !991, !995, !1033, !1064, !1074, !1080, !1084, !1088, !1092, !1096, !1100, !1106, !1110}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !931, file: !85, line: 1967, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!879, !914, !879, !7}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !931, file: !85, line: 1968, baseType: !938, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!758, !879, !914, !941}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !943, line: 10, size: 128, elements: !944)
!943 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!944 = !{!945, !949}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !942, file: !943, line: 11, baseType: !946, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !111}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !942, file: !943, line: 12, baseType: !111, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !931, file: !85, line: 1969, baseType: !951, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!109, !954, !914, !109}
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !669, line: 42, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !931, file: !85, line: 1970, baseType: !957, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DISubroutineType(types: !959)
!959 = !{!925, !914, !109, !755}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !931, file: !85, line: 1972, baseType: !961, size: 64, offset: 256)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DISubroutineType(types: !963)
!963 = !{!109, !879, !768, !109}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !931, file: !85, line: 1974, baseType: !965, size: 64, offset: 320)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{!109, !954, !914, !879, !918, !755}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !931, file: !85, line: 1976, baseType: !969, size: 64, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DISubroutineType(types: !971)
!971 = !{!109, !879, !914, !879}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !931, file: !85, line: 1977, baseType: !973, size: 64, offset: 448)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{!109, !914, !879}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !931, file: !85, line: 1978, baseType: !977, size: 64, offset: 512)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{!109, !954, !914, !879, !758}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !931, file: !85, line: 1980, baseType: !981, size: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DISubroutineType(types: !983)
!983 = !{!109, !954, !914, !879, !918}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !931, file: !85, line: 1982, baseType: !973, size: 64, offset: 640)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !931, file: !85, line: 1983, baseType: !986, size: 64, offset: 704)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!109, !954, !914, !879, !918, !989}
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !158, line: 21, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !158, line: 18, baseType: !146)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !931, file: !85, line: 1985, baseType: !992, size: 64, offset: 768)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!109, !954, !914, !879, !914, !879, !7}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !931, file: !85, line: 1987, baseType: !996, size: 64, offset: 832)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!109, !954, !879, !999}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !85, line: 226, size: 640, elements: !1001)
!1001 = !{!1002, !1003, !1004, !1014, !1023, !1024, !1030, !1031, !1032}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1000, file: !85, line: 227, baseType: !7, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1000, file: !85, line: 228, baseType: !918, size: 16, offset: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !85, line: 241, baseType: !1005, size: 32, offset: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !85, line: 241, size: 32, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1005, file: !85, line: 242, baseType: !636, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1005, file: !85, line: 243, baseType: !1009, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1010, line: 16, baseType: !1011)
!1010 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1010, line: 14, size: 32, elements: !1012)
!1012 = !{!1013}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1011, file: !1010, line: 15, baseType: !641, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, scope: !1000, file: !85, line: 245, baseType: !1015, size: 32, offset: 96)
!1015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !85, line: 245, size: 32, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1015, file: !85, line: 246, baseType: !654, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1015, file: !85, line: 247, baseType: !1019, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1010, line: 20, baseType: !1020)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1010, line: 18, size: 32, elements: !1021)
!1021 = !{!1022}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1020, file: !1010, line: 19, baseType: !658, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1000, file: !85, line: 249, baseType: !566, size: 64, offset: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1000, file: !85, line: 250, baseType: !1025, size: 128, offset: 192)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !712, line: 13, size: 128, elements: !1026)
!1026 = !{!1027, !1028}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1025, file: !712, line: 14, baseType: !711, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1025, file: !712, line: 15, baseType: !1029, size: 64, offset: 64)
!1029 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1000, file: !85, line: 251, baseType: !1025, size: 128, offset: 320)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1000, file: !85, line: 252, baseType: !1025, size: 128, offset: 448)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1000, file: !85, line: 259, baseType: !526, size: 64, offset: 576)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !931, file: !85, line: 1988, baseType: !1034, size: 64, offset: 896)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!109, !954, !1037, !1039, !146, !7}
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1041, line: 22, size: 1280, elements: !1042)
!1041 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1040, file: !1041, line: 23, baseType: !146, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1040, file: !1041, line: 24, baseType: !918, size: 16, offset: 32)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1040, file: !1041, line: 25, baseType: !7, size: 32, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1040, file: !1041, line: 26, baseType: !719, size: 32, offset: 96)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1040, file: !1041, line: 27, baseType: !209, size: 64, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1040, file: !1041, line: 28, baseType: !209, size: 64, offset: 192)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1040, file: !1041, line: 41, baseType: !209, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1040, file: !1041, line: 42, baseType: !989, size: 32, offset: 320)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1040, file: !1041, line: 43, baseType: !989, size: 32, offset: 352)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1040, file: !1041, line: 44, baseType: !636, size: 32, offset: 384)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1040, file: !1041, line: 45, baseType: !654, size: 32, offset: 416)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1040, file: !1041, line: 46, baseType: !566, size: 64, offset: 448)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1040, file: !1041, line: 47, baseType: !1025, size: 128, offset: 512)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1040, file: !1041, line: 48, baseType: !1025, size: 128, offset: 640)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1040, file: !1041, line: 49, baseType: !1025, size: 128, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1040, file: !1041, line: 50, baseType: !1025, size: 128, offset: 896)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1040, file: !1041, line: 51, baseType: !209, size: 64, offset: 1024)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1040, file: !1041, line: 52, baseType: !209, size: 64, offset: 1088)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1040, file: !1041, line: 53, baseType: !146, size: 32, offset: 1152)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1040, file: !1041, line: 54, baseType: !146, size: 32, offset: 1184)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1040, file: !1041, line: 55, baseType: !209, size: 64, offset: 1216)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !931, file: !85, line: 1990, baseType: !1065, size: 64, offset: 960)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!1068, !879, !768, !1071}
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !158, line: 66, baseType: !1069)
!1069 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !357, line: 73, baseType: !1070)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !357, line: 15, baseType: !1029)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 61, baseType: !1072)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !357, line: 72, baseType: !1073)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !357, line: 16, baseType: !110)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !931, file: !85, line: 1991, baseType: !1075, size: 64, offset: 1024)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!109, !914, !1078, !209, !209}
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !85, line: 55, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !931, file: !85, line: 1993, baseType: !1081, size: 64, offset: 1088)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{!109, !914, !109}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !931, file: !85, line: 1994, baseType: !1085, size: 64, offset: 1152)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!109, !914, !879, !526, !7, !918}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !931, file: !85, line: 1997, baseType: !1089, size: 64, offset: 1216)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!109, !954, !914, !526, !918}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !931, file: !85, line: 1999, baseType: !1093, size: 64, offset: 1280)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!925, !954, !879, !109}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !931, file: !85, line: 2001, baseType: !1097, size: 64, offset: 1344)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!109, !954, !879, !925, !109}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !931, file: !85, line: 2003, baseType: !1101, size: 64, offset: 1408)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DISubroutineType(types: !1103)
!1103 = !{!109, !954, !879, !1104}
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !85, line: 76, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !931, file: !85, line: 2005, baseType: !1107, size: 64, offset: 1472)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!109, !879, !1104}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !931, file: !85, line: 2006, baseType: !1111, size: 64, offset: 1536)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{!1114, !914}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !85, line: 3192, size: 192, elements: !1116)
!1116 = !{!1117, !1125}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1115, file: !85, line: 3193, baseType: !1118, size: 128)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1119, line: 296, size: 128, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1120 = !{!1121, !1122, !1124}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1118, file: !1119, line: 297, baseType: !508, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1118, file: !1119, line: 299, baseType: !1123, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !158, line: 154, baseType: !7)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1118, file: !1119, line: 300, baseType: !111, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1115, file: !85, line: 3194, baseType: !146, size: 32, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !915, file: !85, line: 655, baseType: !1127, size: 64, offset: 448)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !85, line: 1190, size: 10752, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135, !2334, !2466, !2506, !2589, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2606, !2610, !2611, !2614, !2617, !2620, !2623, !2624, !2625, !2666, !2692, !2693, !2694, !2695, !2696, !2697, !2700, !2704, !2713, !2714, !2715, !2716, !2775, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1128, file: !85, line: 1191, baseType: !214, size: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1128, file: !85, line: 1192, baseType: !989, size: 32, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1128, file: !85, line: 1193, baseType: !326, size: 8, offset: 160)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1128, file: !85, line: 1194, baseType: !110, size: 64, offset: 192)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1128, file: !85, line: 1195, baseType: !566, size: 64, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1128, file: !85, line: 1196, baseType: !1136, size: 64, offset: 320)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !85, line: 2366, size: 576, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1147, !1151, !1155, !1159, !2322, !2323, !2324, !2326, !2327, !2328, !2330, !2331, !2332, !2333}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1137, file: !85, line: 2367, baseType: !758, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1137, file: !85, line: 2368, baseType: !109, size: 32, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1137, file: !85, line: 2376, baseType: !1142, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!109, !1145}
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !876, line: 21, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1137, file: !85, line: 2377, baseType: !1148, size: 64, offset: 192)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1150)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !85, line: 75, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1137, file: !85, line: 2378, baseType: !1152, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!879, !1136, !109, !758, !111}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1137, file: !85, line: 2380, baseType: !1156, size: 64, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DISubroutineType(types: !1158)
!1158 = !{null, !1127}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1137, file: !85, line: 2381, baseType: !1160, size: 64, offset: 384)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !41, line: 402, size: 9216, align: 512, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1169, !1960, !1986, !1987, !1988, !1989, !1993, !1996, !1997, !1998, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2066, !2070, !2090, !2110, !2111, !2112, !2113, !2122, !2145, !2146, !2149, !2152, !2153, !2154, !2155, !2156, !2157, !2158, !2163, !2164, !2275, !2283, !2284, !2285, !2287, !2291, !2292, !2301, !2302, !2303, !2304, !2306, !2307, !2308, !2315, !2316, !2317, !2321}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1161, file: !41, line: 403, baseType: !40, size: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1161, file: !41, line: 406, baseType: !214, size: 128, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1161, file: !41, line: 409, baseType: !1166, size: 448, offset: 192)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 448, elements: !1167)
!1167 = !{!1168}
!1168 = !DISubrange(count: 56)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1161, file: !41, line: 417, baseType: !1170, size: 768, offset: 640)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !41, line: 45, size: 768, elements: !1171)
!1171 = !{!1172, !1953, !1954, !1955, !1958}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1170, file: !41, line: 46, baseType: !1173, size: 512)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1174, line: 64, size: 512, elements: !1175)
!1174 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1175 = !{!1176, !1177, !1178, !1180, !1224, !1832, !1943, !1948, !1949, !1950, !1951, !1952}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1173, file: !1174, line: 65, baseType: !758, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1173, file: !1174, line: 66, baseType: !214, size: 128, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1173, file: !1174, line: 67, baseType: !1179, size: 64, offset: 192)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1173, file: !1174, line: 68, baseType: !1181, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1174, line: 168, size: 768, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1182, file: !1174, line: 169, baseType: !214, size: 128)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1182, file: !1174, line: 170, baseType: !508, size: 32, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1182, file: !1174, line: 171, baseType: !1173, size: 512, offset: 192)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1182, file: !1174, line: 172, baseType: !1188, size: 64, offset: 704)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1190)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1174, line: 133, size: 192, elements: !1191)
!1191 = !{!1192, !1199, !1204}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1190, file: !1174, line: 134, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1194)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!109, !1197}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1173)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1190, file: !1174, line: 135, baseType: !1200, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1201)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!758, !1197}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1190, file: !1174, line: 136, baseType: !1205, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1206)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!109, !1197, !1209}
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1174, line: 125, size: 20736, elements: !1211)
!1211 = !{!1212, !1214, !1218, !1219, !1223}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1210, file: !1174, line: 126, baseType: !1213, size: 192)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 192, elements: !592)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1210, file: !1174, line: 127, baseType: !1215, size: 4096, offset: 192)
!1215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 4096, elements: !1216)
!1216 = !{!1217}
!1217 = !DISubrange(count: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1210, file: !1174, line: 128, baseType: !109, size: 32, offset: 4288)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1210, file: !1174, line: 129, baseType: !1220, size: 16384, offset: 4320)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 16384, elements: !1221)
!1221 = !{!1222}
!1222 = !DISubrange(count: 2048)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1210, file: !1174, line: 130, baseType: !109, size: 32, offset: 20704)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1173, file: !1174, line: 69, baseType: !1225, size: 64, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1227)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1174, line: 116, size: 384, elements: !1228)
!1228 = !{!1229, !1233, !1252, !1792, !1822, !1826}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1227, file: !1174, line: 117, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{null, !1179}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1227, file: !1174, line: 118, baseType: !1234, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1237, line: 254, size: 128, elements: !1238)
!1237 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1238 = !{!1239, !1248}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1236, file: !1237, line: 255, baseType: !1240, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1241, size: 64)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!1068, !1179, !1243, !768}
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1237, line: 30, size: 128, elements: !1245)
!1245 = !{!1246, !1247}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1244, file: !1237, line: 31, baseType: !758, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1244, file: !1237, line: 32, baseType: !918, size: 16, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1236, file: !1237, line: 256, baseType: !1249, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DISubroutineType(types: !1251)
!1251 = !{!1068, !1179, !1243, !758, !1071}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1227, file: !1174, line: 119, baseType: !1253, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1256)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1237, line: 84, size: 320, elements: !1257)
!1257 = !{!1258, !1259, !1263, !1788, !1790}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1256, file: !1237, line: 85, baseType: !758, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1256, file: !1237, line: 86, baseType: !1260, size: 64, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!918, !1179, !1243, !109}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1256, file: !1237, line: 88, baseType: !1264, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!918, !1179, !1267, !109}
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1237, line: 175, size: 512, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1779, !1783, !1784}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1268, file: !1237, line: 176, baseType: !1244, size: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1268, file: !1237, line: 177, baseType: !1071, size: 64, offset: 128)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1268, file: !1237, line: 178, baseType: !111, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1268, file: !1237, line: 179, baseType: !1274, size: 64, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!1277}
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !85, line: 472, size: 1536, align: 64, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1771, !1772, !1773, !1776, !1777, !1778}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1278, file: !85, line: 473, baseType: !914, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1278, file: !85, line: 474, baseType: !1118, size: 128, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1278, file: !85, line: 475, baseType: !695, size: 320, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1278, file: !85, line: 476, baseType: !1123, size: 32, offset: 512)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1278, file: !85, line: 477, baseType: !157, size: 32, offset: 544)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1278, file: !85, line: 482, baseType: !373, size: 128, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1278, file: !85, line: 483, baseType: !110, size: 64, offset: 704)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1278, file: !85, line: 484, baseType: !110, size: 64, offset: 768)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1278, file: !85, line: 485, baseType: !1289, size: 64, offset: 832)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1291)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !85, line: 404, size: 1280, elements: !1292)
!1292 = !{!1293, !1596, !1666, !1670, !1674, !1680, !1686, !1690, !1695, !1699, !1703, !1707, !1735, !1739, !1743, !1747, !1752, !1756, !1763, !1767}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1291, file: !85, line: 405, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!109, !1297, !1594}
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !56, line: 74, size: 512, align: 128, elements: !1299)
!1299 = !{!1300, !1301, !1588, !1593}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1298, file: !56, line: 75, baseType: !110, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !56, line: 83, baseType: !1302, size: 320, offset: 64)
!1302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !56, line: 83, size: 320, elements: !1303)
!1303 = !{!1304, !1325, !1339, !1343, !1587}
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1302, file: !56, line: 84, baseType: !1305, size: 320)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1302, file: !56, line: 84, size: 320, elements: !1306)
!1306 = !{!1307, !1318, !1319, !1324}
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !56, line: 90, baseType: !1308, size: 128)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1305, file: !56, line: 90, size: 128, elements: !1309)
!1309 = !{!1310, !1311, !1316, !1317}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1308, file: !56, line: 91, baseType: !214, size: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !56, line: 94, baseType: !1312, size: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !56, line: 94, size: 128, elements: !1313)
!1313 = !{!1314, !1315}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1312, file: !56, line: 96, baseType: !111, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1312, file: !56, line: 98, baseType: !7, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1308, file: !56, line: 102, baseType: !214, size: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1308, file: !56, line: 103, baseType: !214, size: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1305, file: !56, line: 106, baseType: !1277, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1305, file: !56, line: 107, baseType: !1320, size: 64, offset: 192)
!1320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1305, file: !56, line: 107, size: 64, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1320, file: !56, line: 108, baseType: !110, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1320, file: !56, line: 109, baseType: !110, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1305, file: !56, line: 117, baseType: !110, size: 64, offset: 256)
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1302, file: !56, line: 119, baseType: !1326, size: 320)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1302, file: !56, line: 119, size: 320, elements: !1327)
!1327 = !{!1328, !1329, !1332, !1333, !1334}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1326, file: !56, line: 124, baseType: !110, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1326, file: !56, line: 125, baseType: !1330, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !56, line: 125, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1326, file: !56, line: 126, baseType: !110, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1326, file: !56, line: 127, baseType: !110, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1326, file: !56, line: 128, baseType: !1335, size: 64, offset: 256)
!1335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1326, file: !56, line: 128, size: 64, elements: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1335, file: !56, line: 133, baseType: !110, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1335, file: !56, line: 138, baseType: !547, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1302, file: !56, line: 141, baseType: !1340, size: 64)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1302, file: !56, line: 141, size: 64, elements: !1341)
!1341 = !{!1342}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1340, file: !56, line: 142, baseType: !110, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, scope: !1302, file: !56, line: 144, baseType: !1344, size: 128)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1302, file: !56, line: 144, size: 128, elements: !1345)
!1345 = !{!1346, !1586}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1344, file: !56, line: 146, baseType: !1347, size: 64)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !48, line: 126, size: 1216, elements: !1349)
!1349 = !{!1350, !1360, !1381, !1392, !1393, !1394, !1395, !1568, !1569, !1570}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1348, file: !48, line: 127, baseType: !1351, size: 384)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !48, line: 21, size: 384, elements: !1352)
!1352 = !{!1353, !1354, !1356, !1357, !1358, !1359}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1351, file: !48, line: 22, baseType: !110, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1351, file: !48, line: 23, baseType: !1355, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1351, file: !48, line: 24, baseType: !1355, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1351, file: !48, line: 25, baseType: !110, size: 64, offset: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1351, file: !48, line: 26, baseType: !110, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1351, file: !48, line: 27, baseType: !110, size: 64, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1348, file: !48, line: 128, baseType: !1361, size: 128, offset: 384)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1362, line: 105, size: 128, elements: !1363)
!1362 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1363 = !{!1364, !1365}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1361, file: !1362, line: 110, baseType: !110, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1361, file: !1362, line: 118, baseType: !1366, size: 64, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1362, line: 95, size: 448, elements: !1368)
!1368 = !{!1369, !1370, !1376, !1377, !1378, !1379, !1380}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1367, file: !1362, line: 96, baseType: !547, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1367, file: !1362, line: 97, baseType: !1371, size: 64, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1362, line: 60, baseType: !1373)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null, !1375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1367, file: !1362, line: 98, baseType: !1371, size: 64, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1367, file: !1362, line: 99, baseType: !755, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1367, file: !1362, line: 100, baseType: !755, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1367, file: !1362, line: 101, baseType: !534, size: 128, align: 64, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1367, file: !1362, line: 102, baseType: !1375, size: 64, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1348, file: !48, line: 129, baseType: !1382, size: 256, offset: 512)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1383, line: 26, size: 256, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1382, file: !1383, line: 27, baseType: !7, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1382, file: !1383, line: 28, baseType: !1387, size: 192, offset: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1388, line: 43, size: 192, elements: !1389)
!1388 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1389 = !{!1390, !1391}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1387, file: !1388, line: 44, baseType: !307, size: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1387, file: !1388, line: 45, baseType: !214, size: 128, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1348, file: !48, line: 130, baseType: !47, size: 32, offset: 768)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1348, file: !48, line: 131, baseType: !7, size: 32, offset: 800)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1348, file: !48, line: 132, baseType: !110, size: 64, offset: 832)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1348, file: !48, line: 133, baseType: !1396, size: 64, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1398)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !48, line: 77, size: 192, elements: !1399)
!1399 = !{!1400, !1404, !1564}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1398, file: !48, line: 83, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{null, !1297}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1398, file: !48, line: 89, baseType: !1405, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !56, line: 1184, baseType: !7)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1411, line: 512, size: 896, elements: !1412)
!1411 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1412 = !{!1413, !1531, !1532, !1539, !1546, !1556, !1557, !1558, !1560, !1562}
!1413 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !1411, line: 513, baseType: !1414, size: 320)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1410, file: !1411, line: 513, size: 320, elements: !1415)
!1415 = !{!1416, !1527, !1528, !1529, !1530}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1414, file: !1411, line: 514, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !56, line: 625, size: 1344, elements: !1419)
!1419 = !{!1420, !1429, !1430, !1438, !1445, !1446, !1451, !1452, !1457, !1458, !1461, !1520, !1521, !1522, !1523, !1524, !1525}
!1420 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !56, line: 628, baseType: !1421, size: 128)
!1421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1418, file: !56, line: 628, size: 128, elements: !1422)
!1422 = !{!1423, !1428}
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1421, file: !56, line: 629, baseType: !1424, size: 128)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1421, file: !56, line: 629, size: 128, elements: !1425)
!1425 = !{!1426, !1427}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1424, file: !56, line: 631, baseType: !110, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1424, file: !56, line: 632, baseType: !110, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1421, file: !56, line: 635, baseType: !534, size: 128, align: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1418, file: !56, line: 639, baseType: !490, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1418, file: !56, line: 640, baseType: !1431, size: 64, offset: 192)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1432, line: 297, baseType: !1433)
!1432 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1432, line: 297, size: 64, elements: !1434)
!1434 = !{!1435}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1433, file: !1432, line: 297, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1437, line: 19, baseType: !110)
!1437 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1438 = !DIDerivedType(tag: DW_TAG_member, scope: !1418, file: !56, line: 646, baseType: !1439, size: 64, offset: 256)
!1439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1418, file: !56, line: 646, size: 64, elements: !1440)
!1440 = !{!1441, !1444}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1439, file: !56, line: 647, baseType: !1442, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1443)
!1443 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !56, line: 542, baseType: !110)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1439, file: !56, line: 648, baseType: !1443, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1418, file: !56, line: 666, baseType: !109, size: 32, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1418, file: !56, line: 667, baseType: !1447, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !56, line: 579, size: 320, elements: !1449)
!1449 = !{!1450}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1448, file: !56, line: 580, baseType: !695, size: 320)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1418, file: !56, line: 670, baseType: !755, size: 8, offset: 448)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1418, file: !56, line: 681, baseType: !1453, size: 256, offset: 512)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1418, file: !56, line: 678, size: 256, elements: !1454)
!1454 = !{!1455, !1456}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1453, file: !56, line: 679, baseType: !201, size: 192, align: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1453, file: !56, line: 680, baseType: !110, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1418, file: !56, line: 689, baseType: !214, size: 128, offset: 768)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1418, file: !56, line: 691, baseType: !1459, size: 64, offset: 896)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !56, line: 691, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1418, file: !56, line: 694, baseType: !1462, size: 64, offset: 960)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1464)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1411, line: 563, size: 1024, elements: !1465)
!1465 = !{!1466, !1470, !1471, !1475, !1479, !1483, !1484, !1488, !1492, !1496, !1497, !1498, !1502, !1506, !1512, !1516}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1464, file: !1411, line: 564, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{null, !1417}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1464, file: !1411, line: 569, baseType: !1467, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1464, file: !1411, line: 571, baseType: !1472, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!109, !1417, !110}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1464, file: !1411, line: 572, baseType: !1476, size: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{!109, !1417}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1464, file: !1411, line: 578, baseType: !1480, size: 64, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!109, !1417, !110, !110, !110}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1464, file: !1411, line: 580, baseType: !1405, size: 64, offset: 320)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1464, file: !1411, line: 581, baseType: !1485, size: 64, offset: 384)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!1408, !1409, !7}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1464, file: !1411, line: 582, baseType: !1489, size: 64, offset: 448)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{!1408, !1409, !110, !110}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1464, file: !1411, line: 584, baseType: !1493, size: 64, offset: 512)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!110, !1417}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1464, file: !1411, line: 588, baseType: !1405, size: 64, offset: 576)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1464, file: !1411, line: 591, baseType: !1405, size: 64, offset: 640)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1464, file: !1411, line: 597, baseType: !1499, size: 64, offset: 704)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{!109, !1417, !110, !111, !109, !109}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1464, file: !1411, line: 603, baseType: !1503, size: 64, offset: 768)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DISubroutineType(types: !1505)
!1505 = !{!758, !1417}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1464, file: !1411, line: 613, baseType: !1507, size: 64, offset: 832)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!109, !1417, !1510}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !137, line: 54, flags: DIFlagFwdDecl)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1464, file: !1411, line: 625, baseType: !1513, size: 64, offset: 896)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!1510, !1417, !110}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1464, file: !1411, line: 633, baseType: !1517, size: 64, offset: 960)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!1297, !1417, !110}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1418, file: !56, line: 697, baseType: !110, size: 64, offset: 1024)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1418, file: !56, line: 699, baseType: !526, size: 64, offset: 1088)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1418, file: !56, line: 700, baseType: !111, size: 64, offset: 1152)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1418, file: !56, line: 711, baseType: !547, size: 64, offset: 1216)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1418, file: !56, line: 717, baseType: !1510, size: 64, offset: 1280)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1418, file: !56, line: 722, baseType: !1526, offset: 1344)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !56, line: 570, elements: !519)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1414, file: !1411, line: 515, baseType: !1123, size: 32, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1414, file: !1411, line: 516, baseType: !110, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1414, file: !1411, line: 517, baseType: !110, size: 64, offset: 192)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1414, file: !1411, line: 518, baseType: !110, size: 64, offset: 256)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1410, file: !1411, line: 520, baseType: !55, size: 32, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1410, file: !1411, line: 522, baseType: !1533, size: 64, offset: 384)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1437, line: 22, baseType: !1535)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1437, line: 22, size: 64, elements: !1536)
!1536 = !{!1537}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1535, file: !1437, line: 22, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1437, line: 15, baseType: !110)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1410, file: !1411, line: 524, baseType: !1540, size: 64, offset: 448)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1432, line: 372, baseType: !1542)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1432, line: 372, size: 64, elements: !1543)
!1543 = !{!1544}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1542, file: !1432, line: 372, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1437, line: 16, baseType: !110)
!1546 = !DIDerivedType(tag: DW_TAG_member, scope: !1410, file: !1411, line: 527, baseType: !1547, size: 64, offset: 512)
!1547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1410, file: !1411, line: 527, size: 64, elements: !1548)
!1548 = !{!1549, !1555}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1547, file: !1411, line: 528, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1437, line: 21, baseType: !1551)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1437, line: 21, size: 64, elements: !1552)
!1552 = !{!1553}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1551, file: !1437, line: 21, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1437, line: 14, baseType: !110)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1547, file: !1411, line: 529, baseType: !1534, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1410, file: !1411, line: 534, baseType: !1297, size: 64, offset: 576)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1410, file: !1411, line: 535, baseType: !1297, size: 64, offset: 640)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1410, file: !1411, line: 541, baseType: !1559, size: 64, offset: 704)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1410, file: !1411, line: 545, baseType: !1561, size: 64, offset: 768)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1410, file: !1411, line: 549, baseType: !1563, size: 64, offset: 832)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1432, line: 520, baseType: !1297)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1398, file: !48, line: 100, baseType: !1565, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!109, !1347, !110, !110, !109}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1348, file: !48, line: 134, baseType: !111, size: 64, offset: 960)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1348, file: !48, line: 135, baseType: !109, size: 32, offset: 1024)
!1570 = !DIDerivedType(tag: DW_TAG_member, scope: !1348, file: !48, line: 136, baseType: !1571, size: 128, offset: 1088)
!1571 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1348, file: !48, line: 136, size: 128, elements: !1572)
!1572 = !{!1573, !1579}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1571, file: !48, line: 137, baseType: !1574, size: 128)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1575, line: 6, size: 128, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1574, file: !1575, line: 7, baseType: !209, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1574, file: !1575, line: 8, baseType: !209, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1571, file: !48, line: 138, baseType: !1580)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1571, file: !48, line: 138, elements: !1581)
!1581 = !{!1582, !1584}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1580, file: !48, line: 138, baseType: !1583)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1580, file: !48, line: 138, elements: !519)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1580, file: !48, line: 138, baseType: !1585)
!1585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1574, elements: !632)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1344, file: !56, line: 147, baseType: !111, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1302, file: !56, line: 161, baseType: !534, size: 128, align: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1298, file: !56, line: 164, baseType: !1589, size: 32, offset: 384)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1298, file: !56, line: 164, size: 32, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1589, file: !56, line: 169, baseType: !157, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1589, file: !56, line: 177, baseType: !7, size: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1298, file: !56, line: 181, baseType: !157, size: 32, offset: 416)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !85, line: 309, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1291, file: !85, line: 406, baseType: !1597, size: 64, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!109, !526, !1600}
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !56, line: 293, size: 1536, elements: !1602)
!1602 = !{!1603, !1633, !1647}
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !56, line: 295, baseType: !1604, size: 512)
!1604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !56, line: 295, size: 512, elements: !1605)
!1605 = !{!1606, !1632}
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !56, line: 296, baseType: !1607, size: 448)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1604, file: !56, line: 296, size: 448, elements: !1608)
!1608 = !{!1609, !1610, !1619, !1620, !1621, !1630, !1631}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1607, file: !56, line: 298, baseType: !110, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !56, line: 299, baseType: !1611, size: 128, offset: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1607, file: !56, line: 299, size: 128, elements: !1612)
!1612 = !{!1613, !1614}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1611, file: !56, line: 300, baseType: !214, size: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !56, line: 302, baseType: !1615, size: 128)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1611, file: !56, line: 302, size: 128, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1615, file: !56, line: 303, baseType: !111, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1615, file: !56, line: 305, baseType: !7, size: 32, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1607, file: !56, line: 310, baseType: !1277, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1607, file: !56, line: 311, baseType: !110, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, scope: !1607, file: !56, line: 312, baseType: !1622, size: 64, offset: 320)
!1622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1607, file: !56, line: 312, size: 64, elements: !1623)
!1623 = !{!1624, !1625}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1622, file: !56, line: 313, baseType: !111, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1622, file: !56, line: 314, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !56, line: 257, baseType: !1627)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !56, line: 255, size: 64, elements: !1628)
!1628 = !{!1629}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1627, file: !56, line: 256, baseType: !110, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1607, file: !56, line: 316, baseType: !157, size: 32, offset: 384)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1607, file: !56, line: 317, baseType: !157, size: 32, offset: 416)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1604, file: !56, line: 323, baseType: !1298, size: 512, align: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !56, line: 325, baseType: !1634, size: 512, offset: 512)
!1634 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !56, line: 325, size: 512, elements: !1635)
!1635 = !{!1636, !1646}
!1636 = !DIDerivedType(tag: DW_TAG_member, scope: !1634, file: !56, line: 326, baseType: !1637, size: 320)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1634, file: !56, line: 326, size: 320, elements: !1638)
!1638 = !{!1639, !1640, !1641, !1642, !1643, !1644, !1645}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1637, file: !56, line: 327, baseType: !110, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1637, file: !56, line: 328, baseType: !110, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1637, file: !56, line: 329, baseType: !110, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1637, file: !56, line: 331, baseType: !157, size: 32, offset: 192)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1637, file: !56, line: 332, baseType: !157, size: 32, offset: 224)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1637, file: !56, line: 333, baseType: !157, size: 32, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1637, file: !56, line: 335, baseType: !7, size: 32, offset: 288)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1634, file: !56, line: 339, baseType: !1298, size: 512, align: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !56, line: 341, baseType: !1648, size: 512, offset: 1024)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !56, line: 341, size: 512, elements: !1649)
!1649 = !{!1650, !1659, !1665}
!1650 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !56, line: 342, baseType: !1651, size: 384)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !56, line: 342, size: 384, elements: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1658}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1651, file: !56, line: 343, baseType: !110, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1651, file: !56, line: 344, baseType: !110, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1651, file: !56, line: 346, baseType: !111, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1651, file: !56, line: 347, baseType: !111, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1651, file: !56, line: 348, baseType: !111, size: 64, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1651, file: !56, line: 349, baseType: !111, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1648, file: !56, line: 352, baseType: !1660, size: 256)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1648, file: !56, line: 352, size: 256, elements: !1661)
!1661 = !{!1662, !1663, !1664}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1660, file: !56, line: 353, baseType: !110, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1660, file: !56, line: 354, baseType: !110, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1660, file: !56, line: 356, baseType: !214, size: 128, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1648, file: !56, line: 359, baseType: !1298, size: 512, align: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1291, file: !85, line: 409, baseType: !1667, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!109, !1277, !1594}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1291, file: !85, line: 412, baseType: !1671, size: 64, offset: 192)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!755, !1277, !1600}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1291, file: !85, line: 414, baseType: !1675, size: 64, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !1678}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !85, line: 310, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1291, file: !85, line: 416, baseType: !1681, size: 64, offset: 320)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!109, !526, !1277, !566, !7, !1684, !1685}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1291, file: !85, line: 419, baseType: !1687, size: 64, offset: 384)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!109, !526, !1277, !566, !7, !7, !1297, !111}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1291, file: !85, line: 424, baseType: !1691, size: 64, offset: 448)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!1694, !1277, !1694}
!1694 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !158, line: 131, baseType: !209)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1291, file: !85, line: 425, baseType: !1696, size: 64, offset: 512)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{null, !1600, !1071, !1071}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1291, file: !85, line: 426, baseType: !1700, size: 64, offset: 576)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!755, !1600, !1123}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1291, file: !85, line: 427, baseType: !1704, size: 64, offset: 640)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{null, !1600}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1291, file: !85, line: 428, baseType: !1708, size: 64, offset: 704)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!1068, !1711, !1733}
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !85, line: 373, size: 384, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1720, !1721, !1722, !1723}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1712, file: !85, line: 374, baseType: !526, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1712, file: !85, line: 375, baseType: !566, size: 64, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1712, file: !85, line: 376, baseType: !1717, size: 64, offset: 128)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null, !1711, !1029}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1712, file: !85, line: 377, baseType: !111, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1712, file: !85, line: 378, baseType: !109, size: 32, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1712, file: !85, line: 379, baseType: !118, size: 16, offset: 288)
!1723 = !DIDerivedType(tag: DW_TAG_member, scope: !1712, file: !85, line: 380, baseType: !1724, size: 64, offset: 320)
!1724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1712, file: !85, line: 380, size: 64, elements: !1725)
!1725 = !{!1726, !1729}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1724, file: !85, line: 386, baseType: !1727, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !85, line: 386, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1724, file: !85, line: 395, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!1068, !111}
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !85, line: 69, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1291, file: !85, line: 433, baseType: !1736, size: 64, offset: 768)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!109, !1277, !1600, !1600, !71}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1291, file: !85, line: 435, baseType: !1740, size: 64, offset: 832)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!109, !1600}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1291, file: !85, line: 436, baseType: !1744, size: 64, offset: 896)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!755, !1600, !1071, !1071}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1291, file: !85, line: 438, baseType: !1748, size: 64, offset: 960)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{null, !1600, !1751, !1751}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1291, file: !85, line: 439, baseType: !1753, size: 64, offset: 1024)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!109, !1277, !1297}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1291, file: !85, line: 442, baseType: !1757, size: 64, offset: 1088)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!109, !1760, !526, !1762}
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !85, line: 66, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1291, file: !85, line: 444, baseType: !1764, size: 64, offset: 1152)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{null, !526}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1291, file: !85, line: 445, baseType: !1768, size: 64, offset: 1216)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!109, !1711, !1733}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1278, file: !85, line: 486, baseType: !110, size: 64, offset: 896)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1278, file: !85, line: 487, baseType: !695, size: 320, offset: 960)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1278, file: !85, line: 488, baseType: !1774, size: 32, offset: 1280)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1775, line: 8, baseType: !146)
!1775 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1278, file: !85, line: 489, baseType: !508, size: 32, offset: 1312)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1278, file: !85, line: 490, baseType: !214, size: 128, offset: 1344)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1278, file: !85, line: 491, baseType: !111, size: 64, offset: 1472)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1268, file: !1237, line: 180, baseType: !1780, size: 64, offset: 320)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!1068, !526, !1179, !1267, !768, !566, !1071}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1268, file: !1237, line: 182, baseType: !1780, size: 64, offset: 384)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1268, file: !1237, line: 184, baseType: !1785, size: 64, offset: 448)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!109, !526, !1179, !1267, !1417}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1256, file: !1237, line: 90, baseType: !1789, size: 64, offset: 192)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1256, file: !1237, line: 91, baseType: !1791, size: 64, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1227, file: !1174, line: 120, baseType: !1793, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!1796, !1197}
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1798)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !79, line: 39, size: 384, elements: !1799)
!1799 = !{!1800, !1801, !1805, !1809, !1817, !1821}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1798, file: !79, line: 40, baseType: !78, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1798, file: !79, line: 41, baseType: !1802, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!755}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1798, file: !79, line: 42, baseType: !1806, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!111}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1798, file: !79, line: 43, baseType: !1810, size: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DISubroutineType(types: !1812)
!1812 = !{!1813, !1815}
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !79, line: 19, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1798, file: !79, line: 44, baseType: !1818, size: 64, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!1813}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1798, file: !79, line: 45, baseType: !946, size: 64, offset: 320)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1227, file: !1174, line: 121, baseType: !1823, size: 64, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!1813, !1197}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1227, file: !1174, line: 122, baseType: !1827, size: 64, offset: 320)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{null, !1197, !1830, !1831}
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1173, file: !1174, line: 70, baseType: !1833, size: 64, offset: 384)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1835, line: 190, size: 1152, elements: !1836)
!1835 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1836 = !{!1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1935, !1936, !1937, !1938, !1939, !1942}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1834, file: !1835, line: 191, baseType: !157, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1834, file: !1835, line: 192, baseType: !157, size: 32, offset: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1834, file: !1835, line: 202, baseType: !1833, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1834, file: !1835, line: 203, baseType: !758, size: 64, offset: 128)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1834, file: !1835, line: 205, baseType: !201, size: 192, align: 64, offset: 192)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1834, file: !1835, line: 207, baseType: !1813, size: 64, offset: 384)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1834, file: !1835, line: 208, baseType: !7, size: 32, offset: 448)
!1844 = !DIDerivedType(tag: DW_TAG_member, scope: !1834, file: !1835, line: 209, baseType: !1845, size: 256, offset: 512)
!1845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1834, file: !1835, line: 209, size: 256, elements: !1846)
!1846 = !{!1847, !1856, !1860}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1845, file: !1835, line: 210, baseType: !1848, size: 256)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1835, line: 153, size: 256, elements: !1849)
!1849 = !{!1850, !1851, !1852, !1855}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1848, file: !1835, line: 154, baseType: !110, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1848, file: !1835, line: 156, baseType: !376, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1848, file: !1835, line: 162, baseType: !1853, size: 64, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1835, line: 162, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1848, file: !1835, line: 167, baseType: !110, size: 64, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1845, file: !1835, line: 211, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1835, line: 170, size: 64, elements: !1858)
!1858 = !{!1859}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1857, file: !1835, line: 171, baseType: !1833, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1845, file: !1835, line: 212, baseType: !1861, size: 256)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1835, line: 174, size: 256, elements: !1862)
!1862 = !{!1863, !1930, !1933, !1934}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1861, file: !1835, line: 175, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1835, line: 271, size: 768, elements: !1867)
!1867 = !{!1868, !1890, !1894, !1898, !1903, !1907, !1911, !1915, !1916, !1917, !1918, !1926}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1866, file: !1835, line: 276, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!109, !1872}
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1835, line: 251, size: 1216, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1873, file: !1835, line: 253, baseType: !1833, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1873, file: !1835, line: 254, baseType: !526, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1873, file: !1835, line: 255, baseType: !1878, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !137, line: 66, flags: DIFlagFwdDecl)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1873, file: !1835, line: 256, baseType: !111, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1873, file: !1835, line: 259, baseType: !554, size: 256, offset: 256)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1873, file: !1835, line: 260, baseType: !554, size: 256, offset: 512)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1873, file: !1835, line: 261, baseType: !109, size: 32, offset: 768)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1873, file: !1835, line: 262, baseType: !214, size: 128, offset: 832)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1873, file: !1835, line: 263, baseType: !768, size: 64, offset: 960)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1873, file: !1835, line: 265, baseType: !1071, size: 64, offset: 1024)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1873, file: !1835, line: 266, baseType: !755, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1873, file: !1835, line: 267, baseType: !755, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1873, file: !1835, line: 268, baseType: !1462, size: 64, offset: 1152)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1866, file: !1835, line: 277, baseType: !1891, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{null, !1872}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1866, file: !1835, line: 290, baseType: !1895, size: 64, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!109, !1878, !111}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1866, file: !1835, line: 292, baseType: !1899, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!111, !1878, !1902}
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1866, file: !1835, line: 293, baseType: !1904, size: 64, offset: 256)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!111, !1878, !111, !1902}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1866, file: !1835, line: 294, baseType: !1908, size: 64, offset: 320)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !1878, !111}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1866, file: !1835, line: 296, baseType: !1912, size: 64, offset: 384)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!1068, !1872, !768, !1071, !566}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1866, file: !1835, line: 306, baseType: !1071, size: 64, offset: 448)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1866, file: !1835, line: 313, baseType: !755, size: 8, offset: 512)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1866, file: !1835, line: 314, baseType: !1912, size: 64, offset: 576)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1866, file: !1835, line: 317, baseType: !1919, size: 64, offset: 640)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!1922, !1872, !1924}
!1922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1923, line: 59, baseType: !7)
!1923 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !85, line: 61, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1866, file: !1835, line: 320, baseType: !1927, size: 64, offset: 704)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!109, !1872, !1417}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1861, file: !1835, line: 176, baseType: !1931, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1835, line: 35, flags: DIFlagFwdDecl)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1861, file: !1835, line: 177, baseType: !566, size: 64, offset: 128)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1861, file: !1835, line: 178, baseType: !1833, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1834, file: !1835, line: 215, baseType: !111, size: 64, offset: 768)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1834, file: !1835, line: 221, baseType: !209, size: 64, offset: 832)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1834, file: !1835, line: 223, baseType: !112, size: 16, offset: 896)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1834, file: !1835, line: 224, baseType: !918, size: 16, offset: 912)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1834, file: !1835, line: 225, baseType: !1940, size: 64, offset: 960)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1835, line: 36, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1834, file: !1835, line: 227, baseType: !534, size: 128, align: 64, offset: 1024)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1173, file: !1174, line: 71, baseType: !1944, size: 32, offset: 448)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1945, line: 19, size: 32, elements: !1946)
!1945 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1944, file: !1945, line: 20, baseType: !152, size: 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1173, file: !1174, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1173, file: !1174, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1173, file: !1174, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1173, file: !1174, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1173, file: !1174, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1170, file: !41, line: 47, baseType: !1160, size: 64, offset: 512)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1170, file: !41, line: 48, baseType: !1179, size: 64, offset: 576)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1170, file: !41, line: 49, baseType: !1956, size: 64, offset: 640)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !41, line: 49, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1170, file: !41, line: 50, baseType: !1959, size: 64, offset: 704)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1161, file: !41, line: 418, baseType: !1961, size: 64, offset: 1408)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !41, line: 53, size: 448, elements: !1963)
!1963 = !{!1964, !1965, !1970, !1974, !1978, !1982}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1962, file: !41, line: 54, baseType: !1244, size: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1962, file: !41, line: 55, baseType: !1966, size: 64, offset: 128)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!1068, !1961, !1969, !768}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1962, file: !41, line: 57, baseType: !1971, size: 64, offset: 192)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!1068, !1961, !1969, !758, !1071}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1962, file: !41, line: 59, baseType: !1975, size: 64, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !1160, !758}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1962, file: !41, line: 60, baseType: !1979, size: 64, offset: 320)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!109, !1160}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1962, file: !41, line: 61, baseType: !1983, size: 64, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{null, !1160}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1161, file: !41, line: 419, baseType: !758, size: 64, offset: 1472)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1161, file: !41, line: 420, baseType: !758, size: 64, offset: 1536)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1161, file: !41, line: 421, baseType: !1179, size: 64, offset: 1600)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1161, file: !41, line: 424, baseType: !1990, size: 64, offset: 1664)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1992)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !41, line: 424, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1161, file: !41, line: 425, baseType: !1994, size: 64, offset: 1728)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1161, file: !41, line: 426, baseType: !7, size: 32, offset: 1792)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1161, file: !41, line: 435, baseType: !554, size: 256, offset: 1856)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1161, file: !41, line: 437, baseType: !1999, size: 64, offset: 2112)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2001, line: 69, size: 320, elements: !2002)
!2001 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2002 = !{!2003, !2004, !2005, !2022, !2024, !2028, !2029}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2000, file: !2001, line: 70, baseType: !758, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2000, file: !2001, line: 71, baseType: !1160, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2000, file: !2001, line: 72, baseType: !2006, size: 64, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2008)
!2008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2001, line: 47, size: 256, elements: !2009)
!2009 = !{!2010, !2011, !2017, !2021}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2008, file: !2001, line: 49, baseType: !7, size: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2008, file: !2001, line: 51, baseType: !2012, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!109, !758, !2015}
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2000)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2008, file: !2001, line: 53, baseType: !2018, size: 64, offset: 128)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!109, !768, !2015}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2008, file: !2001, line: 55, baseType: !946, size: 64, offset: 192)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2000, file: !2001, line: 73, baseType: !2023, size: 16, offset: 192)
!2023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2000, file: !2001, line: 74, baseType: !2025, size: 8, offset: 208)
!2025 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !119, line: 16, baseType: !2026)
!2026 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !121, line: 20, baseType: !2027)
!2027 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2000, file: !2001, line: 75, baseType: !324, size: 8, offset: 216)
!2029 = !DIDerivedType(tag: DW_TAG_member, scope: !2000, file: !2001, line: 76, baseType: !2030, size: 64, offset: 256)
!2030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2000, file: !2001, line: 76, size: 64, elements: !2031)
!2031 = !{!2032, !2033, !2040}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2030, file: !2001, line: 77, baseType: !111, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2030, file: !2001, line: 78, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2036)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2001, line: 86, size: 128, elements: !2037)
!2037 = !{!2038, !2039}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2036, file: !2001, line: 87, baseType: !7, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2036, file: !2001, line: 88, baseType: !768, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2030, file: !2001, line: 79, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2043)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2001, line: 92, size: 256, elements: !2044)
!2044 = !{!2045, !2046, !2047, !2049, !2050}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2043, file: !2001, line: 94, baseType: !7, size: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2043, file: !2001, line: 95, baseType: !7, size: 32, offset: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2043, file: !2001, line: 96, baseType: !2048, size: 64, offset: 64)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2043, file: !2001, line: 97, baseType: !2006, size: 64, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2043, file: !2001, line: 98, baseType: !111, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1161, file: !41, line: 438, baseType: !7, size: 32, offset: 2176)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1161, file: !41, line: 441, baseType: !7, size: 32, offset: 2208)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1161, file: !41, line: 442, baseType: !1990, size: 64, offset: 2240)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1161, file: !41, line: 443, baseType: !1994, size: 64, offset: 2304)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1161, file: !41, line: 444, baseType: !755, size: 8, offset: 2368)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1161, file: !41, line: 451, baseType: !755, size: 8, offset: 2376)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1161, file: !41, line: 454, baseType: !7, size: 32, offset: 2400)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1161, file: !41, line: 455, baseType: !2059, size: 64, offset: 2432)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2061, line: 23, size: 96, elements: !2062)
!2061 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2062 = !{!2063, !2064, !2065}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2060, file: !2061, line: 24, baseType: !109, size: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2060, file: !2061, line: 24, baseType: !109, size: 32, offset: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2060, file: !2061, line: 24, baseType: !109, size: 32, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1161, file: !41, line: 458, baseType: !2067, size: 64, offset: 2496)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!109}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1161, file: !41, line: 460, baseType: !2071, size: 4032, align: 512, offset: 2560)
!2071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2072, size: 4032, elements: !2088)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !41, line: 362, size: 576, elements: !2073)
!2073 = !{!2074, !2075, !2076}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2072, file: !41, line: 363, baseType: !111, size: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2072, file: !41, line: 364, baseType: !7, size: 32, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2072, file: !41, line: 367, baseType: !2077, size: 448, offset: 128)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !41, line: 319, size: 448, elements: !2078)
!2078 = !{!2079, !2080}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2077, file: !41, line: 320, baseType: !1160, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2077, file: !41, line: 321, baseType: !2081, size: 384, offset: 64)
!2081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2082, line: 40, size: 384, elements: !2083)
!2082 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2083 = !{!2084}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2081, file: !2082, line: 41, baseType: !2085, size: 384, align: 64)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 384, align: 64, elements: !2086)
!2086 = !{!2087}
!2087 = !DISubrange(count: 2)
!2088 = !{!2089}
!2089 = !DISubrange(count: 7)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1161, file: !41, line: 463, baseType: !2091, size: 192, offset: 6592)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2092, line: 8, size: 192, elements: !2093)
!2092 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2093 = !{!2094, !2095, !2097}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2091, file: !2092, line: 10, baseType: !7, size: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2091, file: !2092, line: 11, baseType: !2096, size: 64, offset: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2091, file: !2092, line: 12, baseType: !2098, size: 64, offset: 128)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2100, line: 59, size: 48, elements: !2101)
!2100 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2101 = !{!2102, !2105, !2106, !2107, !2108, !2109}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2099, file: !2100, line: 60, baseType: !2103, size: 16)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !119, line: 18, baseType: !2104)
!2104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !121, line: 23, baseType: !723)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2099, file: !2100, line: 61, baseType: !2103, size: 16, offset: 16)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2099, file: !2100, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2099, file: !2100, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2099, file: !2100, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2099, file: !2100, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1161, file: !41, line: 465, baseType: !110, size: 64, offset: 6784)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1161, file: !41, line: 469, baseType: !7, size: 32, offset: 6848)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1161, file: !41, line: 470, baseType: !214, size: 128, offset: 6912)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1161, file: !41, line: 471, baseType: !2114, size: 64, offset: 7040)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2116, line: 33, size: 96, elements: !2117)
!2116 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2117 = !{!2118, !2119, !2120, !2121}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2115, file: !2116, line: 37, baseType: !109, size: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2115, file: !2116, line: 43, baseType: !109, size: 32, offset: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2115, file: !2116, line: 45, baseType: !112, size: 16, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2115, file: !2116, line: 47, baseType: !112, size: 16, offset: 80)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1161, file: !41, line: 476, baseType: !2123, size: 64, offset: 7104)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !41, line: 378, size: 256, elements: !2125)
!2125 = !{!2126, !2142, !2143, !2144}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2124, file: !41, line: 379, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2129, line: 204, baseType: !2130)
!2129 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2129, line: 197, size: 192, elements: !2131)
!2131 = !{!2132, !2134, !2135, !2136, !2138, !2140}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2130, file: !2129, line: 198, baseType: !2133, size: 32)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2129, line: 21, baseType: !147)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2130, file: !2129, line: 199, baseType: !326, size: 8, offset: 32)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2130, file: !2129, line: 200, baseType: !326, size: 8, offset: 40)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2130, file: !2129, line: 201, baseType: !2137, size: 16, offset: 48)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2129, line: 17, baseType: !120)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2130, file: !2129, line: 202, baseType: !2139, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2129, line: 16, baseType: !210)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2130, file: !2129, line: 203, baseType: !2141, size: 64, offset: 128)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2129, line: 22, baseType: !210)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2124, file: !41, line: 380, baseType: !7, size: 32, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2124, file: !41, line: 381, baseType: !768, size: 64, offset: 128)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2124, file: !41, line: 382, baseType: !768, size: 64, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1161, file: !41, line: 477, baseType: !2124, size: 256, offset: 7168)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1161, file: !41, line: 480, baseType: !2147, size: 64, offset: 7424)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !41, line: 480, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1161, file: !41, line: 483, baseType: !2150, size: 64, offset: 7488)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !41, line: 483, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1161, file: !41, line: 488, baseType: !768, size: 64, offset: 7552)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1161, file: !41, line: 492, baseType: !111, size: 64, offset: 7616)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1161, file: !41, line: 493, baseType: !7, size: 32, offset: 7680)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1161, file: !41, line: 495, baseType: !111, size: 64, offset: 7744)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1161, file: !41, line: 496, baseType: !7, size: 32, offset: 7808)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1161, file: !41, line: 499, baseType: !7, size: 32, offset: 7840)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1161, file: !41, line: 500, baseType: !2159, size: 64, offset: 7872)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2161, line: 45, baseType: !2162)
!2161 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1161, file: !41, line: 503, baseType: !7, size: 32, offset: 7936)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1161, file: !41, line: 504, baseType: !2165, size: 64, offset: 8000)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2168, line: 96, size: 192, elements: !2169)
!2168 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2169 = !{!2170, !2171, !2236, !2239}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2167, file: !2168, line: 97, baseType: !7, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2167, file: !2168, line: 98, baseType: !2172, size: 64, offset: 64)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2168, line: 24, size: 3072, elements: !2174)
!2174 = !{!2175, !2177, !2178, !2179, !2180, !2194, !2195, !2196, !2197, !2209, !2221, !2222, !2233, !2234, !2235}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2173, file: !2168, line: 26, baseType: !2176, size: 128)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 128, elements: !2086)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2173, file: !2168, line: 27, baseType: !2176, size: 128, offset: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2173, file: !2168, line: 28, baseType: !109, size: 32, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2173, file: !2168, line: 31, baseType: !508, size: 32, align: 512, offset: 512)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2173, file: !2168, line: 32, baseType: !2181, size: 960, offset: 576)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2182, line: 206, size: 960, elements: !2183)
!2182 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2183 = !{!2184, !2185, !2188, !2190, !2191, !2193}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2181, file: !2182, line: 207, baseType: !537, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2181, file: !2182, line: 208, baseType: !2186, size: 256, offset: 64)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2187, size: 256, elements: !613)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2181, file: !2182, line: 209, baseType: !2189, size: 256, offset: 320)
!2189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 256, elements: !613)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2181, file: !2182, line: 213, baseType: !1029, size: 64, offset: 576)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2181, file: !2182, line: 215, baseType: !2192, size: 256, offset: 640)
!2192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1029, size: 256, elements: !613)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2181, file: !2182, line: 216, baseType: !324, size: 8, offset: 896)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2173, file: !2168, line: 33, baseType: !110, size: 64, offset: 1536)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2173, file: !2168, line: 34, baseType: !110, size: 64, offset: 1600)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2173, file: !2168, line: 35, baseType: !755, size: 8, offset: 1664)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2173, file: !2168, line: 36, baseType: !2198, size: 320, offset: 1728)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2199, line: 11, size: 320, elements: !2200)
!2199 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2200 = !{!2201, !2202, !2203, !2208}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2198, file: !2199, line: 16, baseType: !608, size: 128)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2198, file: !2199, line: 17, baseType: !110, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2198, file: !2199, line: 18, baseType: !2204, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{null, !2207}
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2198, file: !2199, line: 19, baseType: !146, size: 32, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2173, file: !2168, line: 37, baseType: !2210, size: 256, offset: 2048)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2211, line: 98, size: 256, elements: !2212)
!2211 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2212 = !{!2213, !2214, !2215}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2210, file: !2211, line: 99, baseType: !547, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2210, file: !2211, line: 100, baseType: !214, size: 128, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2210, file: !2211, line: 101, baseType: !2216, size: 64, offset: 192)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2211, line: 21, baseType: !2217)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{null, !2220}
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2173, file: !2168, line: 38, baseType: !534, size: 128, align: 64, offset: 2304)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2173, file: !2168, line: 39, baseType: !2223, size: 64, offset: 2432)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2168, line: 49, size: 768, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2232}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2224, file: !2168, line: 50, baseType: !508, size: 32)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2224, file: !2168, line: 51, baseType: !2189, size: 256, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2224, file: !2168, line: 53, baseType: !2189, size: 256, offset: 320)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2224, file: !2168, line: 54, baseType: !110, size: 64, offset: 576)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2224, file: !2168, line: 55, baseType: !2223, size: 64, offset: 640)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2224, file: !2168, line: 56, baseType: !109, size: 32, offset: 704)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2224, file: !2168, line: 57, baseType: !109, size: 32, offset: 736)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2173, file: !2168, line: 40, baseType: !110, size: 64, offset: 2496)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2173, file: !2168, line: 42, baseType: !109, size: 32, offset: 2560)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2173, file: !2168, line: 43, baseType: !2166, size: 64, offset: 2624)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2167, file: !2168, line: 99, baseType: !2237, offset: 128)
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2238, line: 211, elements: !519)
!2238 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2167, file: !2168, line: 100, baseType: !2240, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2168, line: 63, size: 3008, elements: !2242)
!2242 = !{!2243, !2244, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2274}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2241, file: !2168, line: 64, baseType: !2223, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2241, file: !2168, line: 65, baseType: !2245, size: 192, offset: 64)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2223, size: 192, elements: !592)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2241, file: !2168, line: 67, baseType: !109, size: 32, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2241, file: !2168, line: 68, baseType: !554, size: 256, offset: 320)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2241, file: !2168, line: 69, baseType: !508, size: 32, offset: 576)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2241, file: !2168, line: 70, baseType: !554, size: 256, offset: 640)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2241, file: !2168, line: 71, baseType: !110, size: 64, offset: 896)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2241, file: !2168, line: 72, baseType: !110, size: 64, offset: 960)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2241, file: !2168, line: 73, baseType: !110, size: 64, offset: 1024)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2241, file: !2168, line: 74, baseType: !110, size: 64, offset: 1088)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2241, file: !2168, line: 75, baseType: !110, size: 64, offset: 1152)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2241, file: !2168, line: 76, baseType: !110, size: 64, offset: 1216)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2241, file: !2168, line: 77, baseType: !110, size: 64, offset: 1280)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2241, file: !2168, line: 78, baseType: !110, size: 64, offset: 1344)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2241, file: !2168, line: 79, baseType: !755, size: 8, offset: 1408)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2241, file: !2168, line: 80, baseType: !110, size: 64, offset: 1472)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2241, file: !2168, line: 81, baseType: !554, size: 256, offset: 1536)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2241, file: !2168, line: 82, baseType: !1382, size: 256, offset: 1792)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2241, file: !2168, line: 84, baseType: !157, size: 32, offset: 2048)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2241, file: !2168, line: 87, baseType: !110, size: 64, offset: 2112)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2241, file: !2168, line: 88, baseType: !110, size: 64, offset: 2176)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2241, file: !2168, line: 89, baseType: !2266, size: 704, offset: 2240)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2211, line: 111, size: 704, elements: !2267)
!2267 = !{!2268, !2269, !2270, !2273}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2266, file: !2211, line: 112, baseType: !2210, size: 256)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2266, file: !2211, line: 113, baseType: !2198, size: 320, offset: 256)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2266, file: !2211, line: 116, baseType: !2271, size: 64, offset: 576)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2211, line: 18, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2266, file: !2211, line: 117, baseType: !109, size: 32, offset: 640)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2241, file: !2168, line: 90, baseType: !2166, size: 64, offset: 2944)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1161, file: !41, line: 515, baseType: !2276, size: 64, offset: 8064)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2278, line: 117, size: 128, elements: !2279)
!2278 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2279 = !{!2280, !2281, !2282}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2277, file: !2278, line: 118, baseType: !687, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2277, file: !2278, line: 119, baseType: !687, size: 32, offset: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2277, file: !2278, line: 120, baseType: !1029, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1161, file: !41, line: 516, baseType: !7, size: 32, offset: 8128)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1161, file: !41, line: 519, baseType: !7, size: 32, offset: 8160)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1161, file: !41, line: 520, baseType: !2286, size: 64, offset: 8192)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1161, file: !41, line: 523, baseType: !2288, size: 64, offset: 8256)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !41, line: 523, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1161, file: !41, line: 524, baseType: !7, size: 32, offset: 8320)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1161, file: !41, line: 525, baseType: !2293, size: 64, offset: 8384)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2296, line: 28, size: 192, elements: !2297)
!2296 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2297 = !{!2298, !2299, !2300}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2295, file: !2296, line: 29, baseType: !758, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2295, file: !2296, line: 30, baseType: !758, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2295, file: !2296, line: 31, baseType: !110, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1161, file: !41, line: 526, baseType: !7, size: 32, offset: 8448)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1161, file: !41, line: 533, baseType: !111, size: 64, offset: 8512)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1161, file: !41, line: 534, baseType: !7, size: 32, offset: 8576)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1161, file: !41, line: 535, baseType: !2305, size: 64, offset: 8640)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1161, file: !41, line: 536, baseType: !7, size: 32, offset: 8704)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1161, file: !41, line: 539, baseType: !109, size: 32, offset: 8736)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1161, file: !41, line: 540, baseType: !2309, size: 64, offset: 8768)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2311, line: 32, size: 64, elements: !2312)
!2311 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2312 = !{!2313, !2314}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2310, file: !2311, line: 33, baseType: !687, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2310, file: !2311, line: 34, baseType: !687, size: 32, offset: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1161, file: !41, line: 563, baseType: !214, size: 128, offset: 8832)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1161, file: !41, line: 565, baseType: !214, size: 128, offset: 8960)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1161, file: !41, line: 568, baseType: !2318, size: 64, offset: 9088)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{null}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1161, file: !41, line: 570, baseType: !157, size: 32, offset: 9152)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1137, file: !85, line: 2382, baseType: !1136, size: 64, offset: 448)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1137, file: !85, line: 2383, baseType: !604, size: 64, offset: 512)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1137, file: !85, line: 2385, baseType: !2325, offset: 576)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2238, line: 206, elements: !519)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1137, file: !85, line: 2386, baseType: !2325, offset: 576)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1137, file: !85, line: 2387, baseType: !2325, offset: 576)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1137, file: !85, line: 2388, baseType: !2329, offset: 576)
!2329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2325, elements: !592)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1137, file: !85, line: 2390, baseType: !2325, offset: 576)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1137, file: !85, line: 2391, baseType: !2325, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1137, file: !85, line: 2392, baseType: !2325, offset: 576)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1137, file: !85, line: 2393, baseType: !2325, offset: 576)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1128, file: !85, line: 1197, baseType: !2335, size: 64, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2337)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !85, line: 2057, size: 1664, elements: !2338)
!2338 = !{!2339, !2343, !2347, !2348, !2352, !2356, !2360, !2361, !2362, !2366, !2370, !2374, !2375, !2376, !2382, !2386, !2387, !2391, !2392, !2393, !2394, !2398, !2402, !2449, !2464, !2465}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2337, file: !85, line: 2058, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{!914, !1127}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2337, file: !85, line: 2059, baseType: !2344, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !914}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2337, file: !85, line: 2060, baseType: !2344, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2337, file: !85, line: 2062, baseType: !2349, size: 64, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{null, !914, !109}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2337, file: !85, line: 2063, baseType: !2353, size: 64, offset: 256)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!109, !914, !1594}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2337, file: !85, line: 2064, baseType: !2357, size: 64, offset: 320)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!109, !914}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2337, file: !85, line: 2065, baseType: !2344, size: 64, offset: 384)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2337, file: !85, line: 2066, baseType: !1156, size: 64, offset: 448)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2337, file: !85, line: 2067, baseType: !2363, size: 64, offset: 512)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DISubroutineType(types: !2365)
!2365 = !{!109, !1127, !109}
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2337, file: !85, line: 2068, baseType: !2367, size: 64, offset: 576)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DISubroutineType(types: !2369)
!2369 = !{!109, !1127, !84}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2337, file: !85, line: 2069, baseType: !2371, size: 64, offset: 640)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!109, !1127}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2337, file: !85, line: 2070, baseType: !2367, size: 64, offset: 704)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2337, file: !85, line: 2071, baseType: !2371, size: 64, offset: 768)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2337, file: !85, line: 2072, baseType: !2377, size: 64, offset: 832)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!109, !879, !2380}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !85, line: 62, flags: DIFlagFwdDecl)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2337, file: !85, line: 2073, baseType: !2383, size: 64, offset: 896)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!109, !1127, !2096, !768}
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2337, file: !85, line: 2074, baseType: !1156, size: 64, offset: 960)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2337, file: !85, line: 2076, baseType: !2388, size: 64, offset: 1024)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!109, !1878, !879}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2337, file: !85, line: 2077, baseType: !2388, size: 64, offset: 1088)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2337, file: !85, line: 2078, baseType: !2388, size: 64, offset: 1152)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2337, file: !85, line: 2079, baseType: !2388, size: 64, offset: 1216)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2337, file: !85, line: 2081, baseType: !2395, size: 64, offset: 1280)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!1068, !1127, !109, !768, !1071, !566}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2337, file: !85, line: 2082, baseType: !2399, size: 64, offset: 1344)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!1068, !1127, !109, !758, !1071, !566}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2337, file: !85, line: 2083, baseType: !2403, size: 64, offset: 1408)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!2406, !914}
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !90, line: 296, size: 1664, elements: !2409)
!2409 = !{!2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2434, !2435, !2436}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2408, file: !90, line: 297, baseType: !608, size: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2408, file: !90, line: 298, baseType: !214, size: 128, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2408, file: !90, line: 299, baseType: !214, size: 128, offset: 256)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2408, file: !90, line: 300, baseType: !214, size: 128, offset: 384)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2408, file: !90, line: 301, baseType: !554, size: 256, offset: 512)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2408, file: !90, line: 302, baseType: !508, size: 32, offset: 768)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2408, file: !90, line: 303, baseType: !157, size: 32, offset: 800)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2408, file: !90, line: 304, baseType: !1127, size: 64, offset: 832)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2408, file: !90, line: 305, baseType: !2419, size: 64, offset: 896)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !90, line: 68, size: 64, elements: !2420)
!2420 = !{!2421, !2433}
!2421 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !90, line: 69, baseType: !2422, size: 32)
!2422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2419, file: !90, line: 69, size: 32, elements: !2423)
!2423 = !{!2424, !2425, !2426}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2422, file: !90, line: 70, baseType: !636, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2422, file: !90, line: 71, baseType: !654, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2422, file: !90, line: 72, baseType: !2427, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2428, line: 24, baseType: !2429)
!2428 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2428, line: 22, size: 32, elements: !2430)
!2430 = !{!2431}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2429, file: !2428, line: 23, baseType: !2432, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2428, line: 20, baseType: !642)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2419, file: !90, line: 74, baseType: !89, size: 32, offset: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2408, file: !90, line: 306, baseType: !566, size: 64, offset: 960)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2408, file: !90, line: 307, baseType: !110, size: 64, offset: 1024)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2408, file: !90, line: 308, baseType: !2437, size: 576, offset: 1088)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !90, line: 205, size: 576, elements: !2438)
!2438 = !{!2439, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2437, file: !90, line: 206, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !90, line: 66, baseType: !227)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2437, file: !90, line: 207, baseType: !2440, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2437, file: !90, line: 208, baseType: !2440, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2437, file: !90, line: 209, baseType: !2440, size: 64, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2437, file: !90, line: 210, baseType: !2440, size: 64, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2437, file: !90, line: 211, baseType: !2440, size: 64, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2437, file: !90, line: 212, baseType: !2440, size: 64, offset: 384)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2437, file: !90, line: 213, baseType: !711, size: 64, offset: 448)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2437, file: !90, line: 214, baseType: !711, size: 64, offset: 512)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2337, file: !85, line: 2085, baseType: !2450, size: 64, offset: 1472)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!1029, !1127, !2453}
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2455, line: 15, size: 256, elements: !2456)
!2455 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2456 = !{!2457, !2458, !2459, !2460, !2461}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2454, file: !2455, line: 16, baseType: !1123, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2454, file: !2455, line: 19, baseType: !109, size: 32, offset: 32)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2454, file: !2455, line: 26, baseType: !110, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2454, file: !2455, line: 33, baseType: !110, size: 64, offset: 128)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2454, file: !2455, line: 36, baseType: !2462, size: 64, offset: 192)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !56, line: 33, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2337, file: !85, line: 2087, baseType: !2450, size: 64, offset: 1536)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2337, file: !85, line: 2089, baseType: !1156, size: 64, offset: 1600)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1128, file: !85, line: 1198, baseType: !2467, size: 64, offset: 448)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2469)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !90, line: 324, size: 704, elements: !2470)
!2470 = !{!2471, !2475, !2479, !2483, !2484, !2485, !2486, !2487, !2492, !2497, !2501}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2469, file: !90, line: 325, baseType: !2472, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!109, !2407}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2469, file: !90, line: 326, baseType: !2476, size: 64, offset: 64)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!2407, !1127, !109}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2469, file: !90, line: 327, baseType: !2480, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{null, !2407}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2469, file: !90, line: 328, baseType: !2472, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2469, file: !90, line: 329, baseType: !2472, size: 64, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2469, file: !90, line: 330, baseType: !2472, size: 64, offset: 320)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2469, file: !90, line: 331, baseType: !2363, size: 64, offset: 384)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2469, file: !90, line: 334, baseType: !2488, size: 64, offset: 448)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!2491, !914}
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2469, file: !90, line: 335, baseType: !2493, size: 64, offset: 512)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!109, !914, !2496}
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2469, file: !90, line: 337, baseType: !2498, size: 64, offset: 576)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!109, !914, !2491}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2469, file: !90, line: 339, baseType: !2502, size: 64, offset: 640)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!109, !1127, !2505}
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1128, file: !85, line: 1199, baseType: !2507, size: 64, offset: 512)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2509)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !90, line: 430, size: 704, elements: !2510)
!2510 = !{!2511, !2515, !2516, !2520, !2521, !2522, !2537, !2560, !2564, !2565, !2588}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2509, file: !90, line: 431, baseType: !2512, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!109, !1127, !109, !109, !1037}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2509, file: !90, line: 432, baseType: !2363, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2509, file: !90, line: 433, baseType: !2517, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DISubroutineType(types: !2519)
!2519 = !{!109, !1127, !7}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2509, file: !90, line: 434, baseType: !2517, size: 64, offset: 192)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2509, file: !90, line: 435, baseType: !2363, size: 64, offset: 256)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2509, file: !90, line: 436, baseType: !2523, size: 64, offset: 320)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!109, !1127, !109, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !90, line: 417, size: 256, elements: !2528)
!2528 = !{!2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2527, file: !90, line: 418, baseType: !109, size: 32)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2527, file: !90, line: 419, baseType: !7, size: 32, offset: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2527, file: !90, line: 420, baseType: !7, size: 32, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2527, file: !90, line: 422, baseType: !7, size: 32, offset: 96)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2527, file: !90, line: 423, baseType: !7, size: 32, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2527, file: !90, line: 424, baseType: !7, size: 32, offset: 160)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2527, file: !90, line: 425, baseType: !7, size: 32, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2527, file: !90, line: 426, baseType: !7, size: 32, offset: 224)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2509, file: !90, line: 437, baseType: !2538, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{!109, !1127, !2419, !2541}
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !90, line: 345, size: 960, elements: !2543)
!2543 = !{!2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2542, file: !90, line: 346, baseType: !109, size: 32)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2542, file: !90, line: 347, baseType: !209, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2542, file: !90, line: 348, baseType: !209, size: 64, offset: 128)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2542, file: !90, line: 349, baseType: !209, size: 64, offset: 192)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2542, file: !90, line: 350, baseType: !209, size: 64, offset: 256)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2542, file: !90, line: 351, baseType: !209, size: 64, offset: 320)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2542, file: !90, line: 352, baseType: !209, size: 64, offset: 384)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2542, file: !90, line: 353, baseType: !225, size: 64, offset: 448)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2542, file: !90, line: 355, baseType: !225, size: 64, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2542, file: !90, line: 356, baseType: !109, size: 32, offset: 576)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2542, file: !90, line: 357, baseType: !109, size: 32, offset: 608)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2542, file: !90, line: 358, baseType: !209, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2542, file: !90, line: 359, baseType: !209, size: 64, offset: 704)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2542, file: !90, line: 360, baseType: !209, size: 64, offset: 768)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2542, file: !90, line: 361, baseType: !225, size: 64, offset: 832)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2542, file: !90, line: 362, baseType: !109, size: 32, offset: 896)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2509, file: !90, line: 438, baseType: !2561, size: 64, offset: 448)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DISubroutineType(types: !2563)
!2563 = !{!109, !1127, !2505, !2541}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2509, file: !90, line: 440, baseType: !2538, size: 64, offset: 512)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2509, file: !90, line: 441, baseType: !2566, size: 64, offset: 576)
!2566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2567 = !DISubroutineType(types: !2568)
!2568 = !{!109, !1127, !2569}
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !90, line: 411, size: 1408, elements: !2571)
!2571 = !{!2572, !2573}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2570, file: !90, line: 412, baseType: !7, size: 32)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2570, file: !90, line: 413, baseType: !2574, size: 1344, offset: 64)
!2574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2575, size: 1344, elements: !592)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !90, line: 397, size: 448, elements: !2576)
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2587}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2575, file: !90, line: 398, baseType: !7, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2575, file: !90, line: 399, baseType: !7, size: 32, offset: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2575, file: !90, line: 401, baseType: !7, size: 32, offset: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2575, file: !90, line: 402, baseType: !7, size: 32, offset: 96)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2575, file: !90, line: 403, baseType: !7, size: 32, offset: 128)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2575, file: !90, line: 404, baseType: !7, size: 32, offset: 160)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2575, file: !90, line: 405, baseType: !7, size: 32, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2575, file: !90, line: 406, baseType: !211, size: 64, offset: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2575, file: !90, line: 407, baseType: !2586, size: 64, offset: 320)
!2586 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !158, line: 132, baseType: !209)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2575, file: !90, line: 408, baseType: !2586, size: 64, offset: 384)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2509, file: !90, line: 442, baseType: !2517, size: 64, offset: 640)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1128, file: !85, line: 1200, baseType: !2590, size: 64, offset: 576)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2592)
!2592 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !85, line: 54, flags: DIFlagFwdDecl)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1128, file: !85, line: 1201, baseType: !110, size: 64, offset: 640)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1128, file: !85, line: 1202, baseType: !110, size: 64, offset: 704)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1128, file: !85, line: 1203, baseType: !110, size: 64, offset: 768)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1128, file: !85, line: 1204, baseType: !879, size: 64, offset: 832)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1128, file: !85, line: 1205, baseType: !695, size: 320, offset: 896)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1128, file: !85, line: 1206, baseType: !109, size: 32, offset: 1216)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1128, file: !85, line: 1207, baseType: !157, size: 32, offset: 1248)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1128, file: !85, line: 1209, baseType: !111, size: 64, offset: 1280)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1128, file: !85, line: 1211, baseType: !2602, size: 64, offset: 1344)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2605)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !85, line: 1211, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1128, file: !85, line: 1223, baseType: !2607, size: 64, offset: 1408)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !891, line: 34, size: 64, elements: !2608)
!2608 = !{!2609}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2607, file: !891, line: 35, baseType: !894, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1128, file: !85, line: 1224, baseType: !214, size: 128, offset: 1472)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1128, file: !85, line: 1225, baseType: !2612, size: 64, offset: 1600)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !85, line: 1225, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1128, file: !85, line: 1226, baseType: !2615, size: 64, offset: 1664)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !85, line: 1226, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1128, file: !85, line: 1227, baseType: !2618, size: 64, offset: 1728)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !85, line: 50, flags: DIFlagFwdDecl)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1128, file: !85, line: 1228, baseType: !2621, size: 64, offset: 1792)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !85, line: 1228, flags: DIFlagFwdDecl)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1128, file: !85, line: 1229, baseType: !608, size: 128, offset: 1856)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1128, file: !85, line: 1230, baseType: !7, size: 32, offset: 1984)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1128, file: !85, line: 1231, baseType: !2626, size: 2496, offset: 2048)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !90, line: 521, size: 2496, elements: !2627)
!2627 = !{!2628, !2629, !2630, !2632, !2664}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2626, file: !90, line: 522, baseType: !7, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2626, file: !90, line: 523, baseType: !695, size: 320, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2626, file: !90, line: 524, baseType: !2631, size: 192, offset: 384)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 192, elements: !592)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2626, file: !90, line: 525, baseType: !2633, size: 1728, offset: 576)
!2633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2634, size: 1728, elements: !592)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !90, line: 222, size: 576, elements: !2635)
!2635 = !{!2636, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2634, file: !90, line: 223, baseType: !2637, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !90, line: 445, size: 256, elements: !2639)
!2639 = !{!2640, !2641, !2654, !2655}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2638, file: !90, line: 446, baseType: !109, size: 32)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2638, file: !90, line: 447, baseType: !2642, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2644)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !90, line: 312, size: 512, elements: !2645)
!2645 = !{!2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2644, file: !90, line: 313, baseType: !2363, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2644, file: !90, line: 314, baseType: !2363, size: 64, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2644, file: !90, line: 315, baseType: !2363, size: 64, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2644, file: !90, line: 316, baseType: !2363, size: 64, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2644, file: !90, line: 317, baseType: !2472, size: 64, offset: 256)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2644, file: !90, line: 318, baseType: !2472, size: 64, offset: 320)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2644, file: !90, line: 319, baseType: !2472, size: 64, offset: 384)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2644, file: !90, line: 320, baseType: !2502, size: 64, offset: 448)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2638, file: !90, line: 448, baseType: !1160, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2638, file: !90, line: 449, baseType: !2637, size: 64, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2634, file: !90, line: 224, baseType: !109, size: 32, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2634, file: !90, line: 226, baseType: !214, size: 128, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2634, file: !90, line: 227, baseType: !110, size: 64, offset: 256)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2634, file: !90, line: 228, baseType: !7, size: 32, offset: 320)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2634, file: !90, line: 229, baseType: !7, size: 32, offset: 352)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2634, file: !90, line: 230, baseType: !2440, size: 64, offset: 384)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2634, file: !90, line: 231, baseType: !2440, size: 64, offset: 448)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2634, file: !90, line: 232, baseType: !111, size: 64, offset: 512)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2626, file: !90, line: 526, baseType: !2665, size: 192, offset: 2304)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2642, size: 192, elements: !592)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1128, file: !85, line: 1233, baseType: !2667, size: 2368, offset: 4544)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !85, line: 1184, size: 2368, elements: !2668)
!2668 = !{!2669, !2670, !2671}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2667, file: !85, line: 1185, baseType: !112, size: 16)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2667, file: !85, line: 1186, baseType: !112, size: 16, offset: 16)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2667, file: !85, line: 1187, baseType: !2672, size: 2304, offset: 64)
!2672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2673, size: 2304, elements: !592)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2674, line: 12, size: 768, elements: !2675)
!2674 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2675 = !{!2676, !2684, !2685, !2690, !2691}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2673, file: !2674, line: 13, baseType: !2677, size: 384)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2678, line: 17, size: 384, elements: !2679)
!2678 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2679 = !{!2680, !2681, !2682, !2683}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2677, file: !2678, line: 18, baseType: !109, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2677, file: !2678, line: 19, baseType: !109, size: 32, offset: 32)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2677, file: !2678, line: 20, baseType: !617, size: 192, offset: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2677, file: !2678, line: 22, baseType: !534, size: 128, align: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2673, file: !2674, line: 14, baseType: !2048, size: 64, offset: 384)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2673, file: !2674, line: 15, baseType: !2686, size: 64, offset: 448)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2687, line: 16, size: 64, elements: !2688)
!2687 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2688 = !{!2689}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2686, file: !2687, line: 17, baseType: !135, size: 64)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2673, file: !2674, line: 16, baseType: !617, size: 192, offset: 512)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2673, file: !2674, line: 17, baseType: !157, size: 32, offset: 704)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1128, file: !85, line: 1240, baseType: !111, size: 64, offset: 6912)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1128, file: !85, line: 1243, baseType: !146, size: 32, offset: 6976)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1128, file: !85, line: 1245, baseType: !711, size: 64, offset: 7040)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1128, file: !85, line: 1246, baseType: !711, size: 64, offset: 7104)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1128, file: !85, line: 1248, baseType: !147, size: 32, offset: 7168)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1128, file: !85, line: 1249, baseType: !2698, size: 64, offset: 7232)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !85, line: 634, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1128, file: !85, line: 1252, baseType: !2701, size: 256, offset: 7296)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 256, elements: !2702)
!2702 = !{!2703}
!2703 = !DISubrange(count: 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1128, file: !85, line: 1253, baseType: !2705, size: 128, offset: 7552)
!2705 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2706, line: 21, baseType: !2707)
!2706 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2706, line: 19, size: 128, elements: !2708)
!2708 = !{!2709}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2707, file: !2706, line: 20, baseType: !2710, size: 128)
!2710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 128, elements: !2711)
!2711 = !{!2712}
!2712 = !DISubrange(count: 16)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1128, file: !85, line: 1255, baseType: !7, size: 32, offset: 7680)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1128, file: !85, line: 1261, baseType: !554, size: 256, offset: 7744)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1128, file: !85, line: 1267, baseType: !758, size: 64, offset: 8000)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1128, file: !85, line: 1269, baseType: !2717, size: 64, offset: 8064)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2719)
!2719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !881, line: 128, size: 1024, align: 512, elements: !2720)
!2720 = !{!2721, !2725, !2726, !2733, !2739, !2743, !2747, !2751, !2752, !2756, !2760, !2765, !2769}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2719, file: !881, line: 129, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!109, !879, !7}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2719, file: !881, line: 130, baseType: !2722, size: 64, offset: 64)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2719, file: !881, line: 131, baseType: !2727, size: 64, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!109, !2730, !2732}
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !880)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2719, file: !881, line: 132, baseType: !2734, size: 64, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!109, !2730, !7, !758, !2737}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !899)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2719, file: !881, line: 134, baseType: !2740, size: 64, offset: 256)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!109, !2730}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2719, file: !881, line: 135, baseType: !2744, size: 64, offset: 320)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!109, !879}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2719, file: !881, line: 136, baseType: !2748, size: 64, offset: 384)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{null, !879}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2719, file: !881, line: 137, baseType: !2748, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2719, file: !881, line: 138, baseType: !2753, size: 64, offset: 512)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{null, !879, !914}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2719, file: !881, line: 139, baseType: !2757, size: 64, offset: 576)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!768, !879, !768, !109}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2719, file: !881, line: 140, baseType: !2761, size: 64, offset: 640)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!874, !2764}
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2719, file: !881, line: 141, baseType: !2766, size: 64, offset: 704)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DISubroutineType(types: !2768)
!2768 = !{!109, !1037, !755}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2719, file: !881, line: 142, baseType: !2770, size: 64, offset: 768)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!879, !879, !2773}
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !915)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1128, file: !85, line: 1271, baseType: !2776, size: 448, offset: 8128)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2455, line: 63, size: 448, elements: !2777)
!2777 = !{!2778, !2783, !2784, !2785, !2786, !2787, !2788}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2776, file: !2455, line: 64, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!110, !2782, !2453}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2776, file: !2455, line: 66, baseType: !2779, size: 64, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2776, file: !2455, line: 69, baseType: !1029, size: 64, offset: 128)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2776, file: !2455, line: 70, baseType: !109, size: 32, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2776, file: !2455, line: 71, baseType: !7, size: 32, offset: 224)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2776, file: !2455, line: 74, baseType: !214, size: 128, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2776, file: !2455, line: 85, baseType: !2789, size: 64, offset: 384)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1128, file: !85, line: 1274, baseType: !547, size: 64, offset: 8576)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1128, file: !85, line: 1280, baseType: !547, size: 64, offset: 8640)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1128, file: !85, line: 1283, baseType: !109, size: 32, offset: 8704)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1128, file: !85, line: 1286, baseType: !1774, size: 32, offset: 8736)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1128, file: !85, line: 1289, baseType: !2271, size: 64, offset: 8768)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1128, file: !85, line: 1290, baseType: !604, size: 64, offset: 8832)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1128, file: !85, line: 1297, baseType: !841, size: 64, offset: 8896)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1128, file: !85, line: 1304, baseType: !2798, size: 64, offset: 8960)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2799, line: 49, size: 64, elements: !2800)
!2799 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2800 = !{!2801}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2798, file: !2799, line: 50, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2799, line: 41, size: 512, align: 512, elements: !2804)
!2804 = !{!2805, !2806, !2811}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2803, file: !2799, line: 43, baseType: !508, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2803, file: !2799, line: 45, baseType: !2807, size: 192, offset: 64)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2799, line: 29, size: 192, elements: !2808)
!2808 = !{!2809, !2810}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2807, file: !2799, line: 30, baseType: !214, size: 128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2807, file: !2799, line: 32, baseType: !1029, size: 64, offset: 128)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2803, file: !2799, line: 46, baseType: !1029, size: 64, offset: 256)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1128, file: !85, line: 1305, baseType: !2798, size: 64, offset: 9024)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1128, file: !85, line: 1306, baseType: !534, size: 128, align: 64, offset: 9088)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1128, file: !85, line: 1307, baseType: !2210, size: 256, offset: 9216)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1128, file: !85, line: 1309, baseType: !554, size: 256, offset: 9472)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1128, file: !85, line: 1314, baseType: !109, size: 32, offset: 9728)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1128, file: !85, line: 1317, baseType: !508, size: 32, align: 512, offset: 10240)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1128, file: !85, line: 1318, baseType: !214, size: 128, offset: 10304)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1128, file: !85, line: 1320, baseType: !508, size: 32, offset: 10432)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1128, file: !85, line: 1321, baseType: !214, size: 128, offset: 10496)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !915, file: !85, line: 656, baseType: !1277, size: 64, offset: 512)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !915, file: !85, line: 659, baseType: !111, size: 64, offset: 576)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !915, file: !85, line: 663, baseType: !110, size: 64, offset: 640)
!2824 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !85, line: 671, baseType: !2825, size: 32, offset: 704)
!2825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !915, file: !85, line: 671, size: 32, elements: !2826)
!2826 = !{!2827, !2829}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2825, file: !85, line: 672, baseType: !2828, size: 32)
!2828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2825, file: !85, line: 673, baseType: !7, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !915, file: !85, line: 675, baseType: !989, size: 32, offset: 736)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !915, file: !85, line: 676, baseType: !566, size: 64, offset: 768)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !915, file: !85, line: 677, baseType: !1025, size: 128, offset: 832)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !915, file: !85, line: 678, baseType: !1025, size: 128, offset: 960)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !915, file: !85, line: 679, baseType: !1025, size: 128, offset: 1088)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !915, file: !85, line: 680, baseType: !508, size: 32, offset: 1216)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !915, file: !85, line: 681, baseType: !112, size: 16, offset: 1248)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !915, file: !85, line: 682, baseType: !324, size: 8, offset: 1264)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !915, file: !85, line: 683, baseType: !324, size: 8, offset: 1272)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !915, file: !85, line: 684, baseType: !2586, size: 64, offset: 1280)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !915, file: !85, line: 691, baseType: !110, size: 64, offset: 1344)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !915, file: !85, line: 692, baseType: !695, size: 320, offset: 1408)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !915, file: !85, line: 694, baseType: !110, size: 64, offset: 1728)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !915, file: !85, line: 695, baseType: !110, size: 64, offset: 1792)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !915, file: !85, line: 697, baseType: !608, size: 128, offset: 1856)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !915, file: !85, line: 698, baseType: !214, size: 128, offset: 1984)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !915, file: !85, line: 707, baseType: !214, size: 128, offset: 2112)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !915, file: !85, line: 708, baseType: !214, size: 128, offset: 2240)
!2848 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !85, line: 709, baseType: !2849, size: 128, offset: 2368)
!2849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !915, file: !85, line: 709, size: 128, elements: !2850)
!2850 = !{!2851, !2852}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2849, file: !85, line: 710, baseType: !604, size: 64)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2849, file: !85, line: 711, baseType: !534, size: 128, align: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !915, file: !85, line: 713, baseType: !549, size: 64, offset: 2496)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !915, file: !85, line: 714, baseType: !549, size: 64, offset: 2560)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !915, file: !85, line: 715, baseType: !157, size: 32, offset: 2624)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !915, file: !85, line: 716, baseType: !157, size: 32, offset: 2656)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !915, file: !85, line: 717, baseType: !157, size: 32, offset: 2688)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !915, file: !85, line: 719, baseType: !157, size: 32, offset: 2720)
!2859 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !85, line: 721, baseType: !2860, size: 64, offset: 2752)
!2860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !915, file: !85, line: 721, size: 64, elements: !2861)
!2861 = !{!2862, !2988}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2860, file: !85, line: 722, baseType: !2863, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2865)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !85, line: 1914, size: 2112, elements: !2866)
!2866 = !{!2867, !2868, !2872, !2876, !2880, !2881, !2882, !2888, !2901, !2905, !2909, !2910, !2914, !2915, !2919, !2924, !2925, !2929, !2933, !2939, !2940, !2944, !2945, !2951, !2955, !2956, !2961, !2965, !2969, !2973, !2977, !2978, !2984}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2865, file: !85, line: 1915, baseType: !1160, size: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2865, file: !85, line: 1916, baseType: !2869, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!566, !526, !566, !109}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2865, file: !85, line: 1917, baseType: !2873, size: 64, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2874, size: 64)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!1068, !526, !768, !1071, !1902}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2865, file: !85, line: 1918, baseType: !2877, size: 64, offset: 192)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!1068, !526, !758, !1071, !1902}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2865, file: !85, line: 1919, baseType: !1708, size: 64, offset: 256)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2865, file: !85, line: 1920, baseType: !1708, size: 64, offset: 320)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2865, file: !85, line: 1921, baseType: !2883, size: 64, offset: 384)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!109, !1711, !2886, !7}
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !85, line: 53, flags: DIFlagFwdDecl)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2865, file: !85, line: 1923, baseType: !2889, size: 64, offset: 448)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!109, !526, !2892}
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !85, line: 1858, size: 128, elements: !2894)
!2894 = !{!2895, !2900}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2893, file: !85, line: 1859, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !85, line: 1855, baseType: !2897)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!755, !2892, !758, !109, !566, !209, !7}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2893, file: !85, line: 1860, baseType: !566, size: 64, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2865, file: !85, line: 1924, baseType: !2902, size: 64, offset: 512)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!1922, !526, !1924}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2865, file: !85, line: 1925, baseType: !2906, size: 64, offset: 576)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!1029, !526, !7, !110}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2865, file: !85, line: 1926, baseType: !2906, size: 64, offset: 640)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2865, file: !85, line: 1927, baseType: !2911, size: 64, offset: 704)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!109, !526, !1417}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2865, file: !85, line: 1928, baseType: !110, size: 64, offset: 768)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2865, file: !85, line: 1929, baseType: !2916, size: 64, offset: 832)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!109, !914, !526}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2865, file: !85, line: 1930, baseType: !2920, size: 64, offset: 896)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!109, !526, !2923}
!2923 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !85, line: 1061, baseType: !111)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2865, file: !85, line: 1931, baseType: !2916, size: 64, offset: 960)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2865, file: !85, line: 1932, baseType: !2926, size: 64, offset: 1024)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!109, !526, !566, !566, !109}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2865, file: !85, line: 1933, baseType: !2930, size: 64, offset: 1088)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!109, !109, !526, !109}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2865, file: !85, line: 1934, baseType: !2934, size: 64, offset: 1152)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!109, !526, !109, !2937}
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !85, line: 1063, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2865, file: !85, line: 1935, baseType: !523, size: 64, offset: 1216)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2865, file: !85, line: 1936, baseType: !2941, size: 64, offset: 1280)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!109, !109}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2865, file: !85, line: 1937, baseType: !2934, size: 64, offset: 1344)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2865, file: !85, line: 1938, baseType: !2946, size: 64, offset: 1408)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!1068, !2949, !526, !1902, !1071, !7}
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !137, line: 59, flags: DIFlagFwdDecl)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2865, file: !85, line: 1939, baseType: !2952, size: 64, offset: 1472)
!2952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2953, size: 64)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!1068, !526, !1902, !2949, !1071, !7}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2865, file: !85, line: 1940, baseType: !1764, size: 64, offset: 1536)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2865, file: !85, line: 1941, baseType: !2957, size: 64, offset: 1600)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{!109, !526, !109, !2960, !1685}
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2865, file: !85, line: 1942, baseType: !2962, size: 64, offset: 1664)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!1029, !526, !109, !566, !566}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2865, file: !85, line: 1944, baseType: !2966, size: 64, offset: 1728)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{null, !1878, !526}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2865, file: !85, line: 1948, baseType: !2970, size: 64, offset: 1792)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!1068, !526, !566, !526, !566, !1071, !7}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2865, file: !85, line: 1950, baseType: !2974, size: 64, offset: 1856)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!566, !526, !566, !526, !566, !566, !7}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2865, file: !85, line: 1953, baseType: !2926, size: 64, offset: 1920)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2865, file: !85, line: 1954, baseType: !2979, size: 64, offset: 1984)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!109, !2982, !7}
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2983 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !85, line: 1911, flags: DIFlagFwdDecl)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2865, file: !85, line: 1955, baseType: !2985, size: 64, offset: 2048)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!109, !2982, !2886, !7}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2860, file: !85, line: 723, baseType: !2344, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !915, file: !85, line: 725, baseType: !2990, size: 64, offset: 2816)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !85, line: 725, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !915, file: !85, line: 726, baseType: !1278, size: 1536, align: 64, offset: 2880)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !915, file: !85, line: 727, baseType: !214, size: 128, offset: 4416)
!2994 = !DIDerivedType(tag: DW_TAG_member, scope: !915, file: !85, line: 728, baseType: !2995, size: 64, offset: 4544)
!2995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !915, file: !85, line: 728, size: 64, elements: !2996)
!2996 = !{!2997, !2998, !3001, !3002}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2995, file: !85, line: 729, baseType: !2949, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2995, file: !85, line: 730, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !85, line: 730, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2995, file: !85, line: 731, baseType: !768, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2995, file: !85, line: 732, baseType: !7, size: 32)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !915, file: !85, line: 735, baseType: !147, size: 32, offset: 4608)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !915, file: !85, line: 738, baseType: !147, size: 32, offset: 4640)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !915, file: !85, line: 739, baseType: !2698, size: 64, offset: 4672)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !915, file: !85, line: 750, baseType: !111, size: 64, offset: 4736)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !880, file: !881, line: 91, baseType: !3008, size: 256, offset: 448)
!3008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 256, elements: !2702)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !880, file: !881, line: 94, baseType: !3010, size: 64, offset: 704)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3011, line: 25, size: 64, elements: !3012)
!3011 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3012 = !{!3013}
!3013 = !DIDerivedType(tag: DW_TAG_member, scope: !3010, file: !3011, line: 26, baseType: !3014, size: 64)
!3014 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3010, file: !3011, line: 26, size: 64, elements: !3015)
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3014, file: !3011, line: 28, baseType: !210, size: 64, align: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, scope: !3014, file: !3011, line: 30, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3014, file: !3011, line: 30, size: 64, elements: !3019)
!3019 = !{!3020, !3021}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3018, file: !3011, line: 31, baseType: !508, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3018, file: !3011, line: 32, baseType: !109, size: 32, offset: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !880, file: !881, line: 95, baseType: !2717, size: 64, offset: 768)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !880, file: !881, line: 96, baseType: !1127, size: 64, offset: 832)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !880, file: !881, line: 97, baseType: !110, size: 64, offset: 896)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !880, file: !881, line: 98, baseType: !111, size: 64, offset: 960)
!3026 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !881, line: 100, baseType: !3027, size: 128, offset: 1024)
!3027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !881, line: 100, size: 128, elements: !3028)
!3028 = !{!3029, !3030}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3027, file: !881, line: 101, baseType: !214, size: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3027, file: !881, line: 102, baseType: !3031, size: 64)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !880, file: !881, line: 104, baseType: !214, size: 128, offset: 1152)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !880, file: !881, line: 105, baseType: !214, size: 128, offset: 1280)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !880, file: !881, line: 113, baseType: !3035, size: 128, offset: 1408)
!3035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !881, line: 109, size: 128, elements: !3036)
!3036 = !{!3037, !3038, !3039}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3035, file: !881, line: 110, baseType: !608, size: 128)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3035, file: !881, line: 111, baseType: !890, size: 128)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3035, file: !881, line: 112, baseType: !534, size: 128, align: 64)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !875, file: !876, line: 72, baseType: !1127, size: 64, offset: 64)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !875, file: !876, line: 73, baseType: !109, size: 32, offset: 128)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !875, file: !876, line: 74, baseType: !954, size: 64, offset: 192)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !870, file: !871, line: 10, baseType: !879, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !527, file: !85, line: 1015, baseType: !914, size: 64, offset: 1344)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !527, file: !85, line: 1016, baseType: !2863, size: 64, offset: 1408)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !527, file: !85, line: 1018, baseType: !209, size: 64, offset: 1472)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !527, file: !85, line: 1020, baseType: !111, size: 64, offset: 1536)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !527, file: !85, line: 1023, baseType: !111, size: 64, offset: 1600)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !527, file: !85, line: 1027, baseType: !3050, size: 64, offset: 1664)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !527, file: !85, line: 1029, baseType: !1277, size: 64, offset: 1728)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !527, file: !85, line: 1030, baseType: !1774, size: 32, offset: 1792)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !527, file: !85, line: 1031, baseType: !1774, size: 32, offset: 1824)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !494, file: !56, line: 756, baseType: !110, size: 64, offset: 704)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !494, file: !56, line: 757, baseType: !110, size: 64, offset: 768)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !494, file: !56, line: 760, baseType: !110, size: 64, offset: 832)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !494, file: !56, line: 761, baseType: !110, size: 64, offset: 896)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !494, file: !56, line: 763, baseType: !110, size: 64, offset: 960)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !494, file: !56, line: 764, baseType: !3060, size: 64, offset: 1024)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1432, line: 299, baseType: !3062)
!3062 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1432, line: 299, size: 64, elements: !3063)
!3063 = !{!3064}
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3062, file: !1432, line: 299, baseType: !3065, size: 64)
!3065 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1437, line: 18, baseType: !110)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !494, file: !56, line: 773, baseType: !157, size: 32, offset: 1088)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !494, file: !56, line: 785, baseType: !157, size: 32, offset: 1120)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !494, file: !56, line: 795, baseType: !3069, size: 64, offset: 1152)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !56, line: 726, size: 128, elements: !3071)
!3071 = !{!3072, !3073}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3070, file: !56, line: 727, baseType: !209, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3070, file: !56, line: 728, baseType: !109, size: 32, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !494, file: !56, line: 801, baseType: !110, size: 64, offset: 1216)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !494, file: !56, line: 804, baseType: !547, size: 64, offset: 1280)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !494, file: !56, line: 806, baseType: !109, size: 32, offset: 1344)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !494, file: !56, line: 808, baseType: !508, size: 32, offset: 1376)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !494, file: !56, line: 823, baseType: !695, size: 320, offset: 1408)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !494, file: !56, line: 825, baseType: !214, size: 128, offset: 1728)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !494, file: !56, line: 845, baseType: !109, size: 32, offset: 1856)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !494, file: !56, line: 849, baseType: !110, size: 64, offset: 1920)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !494, file: !56, line: 850, baseType: !110, size: 64, offset: 1984)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !494, file: !56, line: 852, baseType: !110, size: 64, offset: 2048)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !494, file: !56, line: 853, baseType: !110, size: 64, offset: 2112)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !494, file: !56, line: 854, baseType: !549, size: 64, offset: 2176)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !494, file: !56, line: 855, baseType: !110, size: 64, offset: 2240)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !494, file: !56, line: 856, baseType: !110, size: 64, offset: 2304)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !494, file: !56, line: 857, baseType: !110, size: 64, offset: 2368)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !494, file: !56, line: 858, baseType: !110, size: 64, offset: 2432)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !494, file: !56, line: 865, baseType: !364, size: 32, offset: 2496)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !494, file: !56, line: 867, baseType: !508, size: 32, offset: 2528)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !494, file: !56, line: 869, baseType: !110, size: 64, offset: 2560)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !494, file: !56, line: 869, baseType: !110, size: 64, offset: 2624)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !494, file: !56, line: 869, baseType: !110, size: 64, offset: 2688)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !494, file: !56, line: 869, baseType: !110, size: 64, offset: 2752)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !494, file: !56, line: 870, baseType: !110, size: 64, offset: 2816)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !494, file: !56, line: 870, baseType: !110, size: 64, offset: 2880)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !494, file: !56, line: 870, baseType: !110, size: 64, offset: 2944)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !494, file: !56, line: 871, baseType: !110, size: 64, offset: 3008)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !494, file: !56, line: 871, baseType: !110, size: 64, offset: 3072)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !494, file: !56, line: 871, baseType: !110, size: 64, offset: 3136)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !494, file: !56, line: 871, baseType: !110, size: 64, offset: 3200)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !494, file: !56, line: 873, baseType: !3104, size: 3328, offset: 3264)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 3328, elements: !3105)
!3105 = !{!3106}
!3106 = !DISubrange(count: 52)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !494, file: !56, line: 875, baseType: !3108, size: 1280, offset: 6592)
!3108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 1280, elements: !613)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !494, file: !56, line: 877, baseType: !3110, size: 64, offset: 7872)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !56, line: 877, flags: DIFlagFwdDecl)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !494, file: !56, line: 880, baseType: !3113, size: 1088, offset: 7936)
!3113 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3114, line: 72, baseType: !3115)
!3114 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3114, line: 23, size: 1088, elements: !3116)
!3116 = !{!3117, !3118, !3119, !3120, !3121, !3129, !3130, !3131, !3132, !3157, !3158, !3159}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3115, file: !3114, line: 28, baseType: !209, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3115, file: !3114, line: 38, baseType: !549, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3115, file: !3114, line: 40, baseType: !110, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3115, file: !3114, line: 43, baseType: !695, size: 320, offset: 192)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3115, file: !3114, line: 44, baseType: !3122, size: 64, offset: 512)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3124, line: 30, size: 128, elements: !3125)
!3124 = !DIFile(filename: "./arch/x86/include/asm/mmu_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e7349a2ab0563256af671ddc4b36d96")
!3125 = !{!3126, !3127, !3128}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3123, file: !3124, line: 37, baseType: !113, size: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !3123, file: !3124, line: 38, baseType: !7, size: 32, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3123, file: !3124, line: 49, baseType: !109, size: 32, offset: 96)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3115, file: !3114, line: 48, baseType: !110, size: 64, offset: 576)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3115, file: !3114, line: 59, baseType: !554, size: 256, offset: 640)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3115, file: !3114, line: 60, baseType: !111, size: 64, offset: 896)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3115, file: !3114, line: 61, baseType: !3133, size: 64, offset: 960)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3135)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3136, line: 13, size: 1216, elements: !3137)
!3136 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3137 = !{!3138, !3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3135, file: !3136, line: 14, baseType: !111, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3135, file: !3136, line: 15, baseType: !110, size: 64, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3135, file: !3136, line: 17, baseType: !110, size: 64, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3135, file: !3136, line: 17, baseType: !110, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3135, file: !3136, line: 18, baseType: !110, size: 64, offset: 256)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3135, file: !3136, line: 18, baseType: !110, size: 64, offset: 320)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3135, file: !3136, line: 19, baseType: !1813, size: 64, offset: 384)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3135, file: !3136, line: 21, baseType: !1029, size: 64, offset: 448)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3135, file: !3136, line: 23, baseType: !1029, size: 64, offset: 512)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3135, file: !3136, line: 24, baseType: !1029, size: 64, offset: 576)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3135, file: !3136, line: 25, baseType: !1029, size: 64, offset: 640)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3135, file: !3136, line: 26, baseType: !1029, size: 64, offset: 704)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3135, file: !3136, line: 27, baseType: !1029, size: 64, offset: 768)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3135, file: !3136, line: 28, baseType: !1029, size: 64, offset: 832)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3135, file: !3136, line: 29, baseType: !1029, size: 64, offset: 896)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3135, file: !3136, line: 30, baseType: !1029, size: 64, offset: 960)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3135, file: !3136, line: 31, baseType: !1029, size: 64, offset: 1024)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3135, file: !3136, line: 32, baseType: !1029, size: 64, offset: 1088)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3135, file: !3136, line: 33, baseType: !1029, size: 64, offset: 1152)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3115, file: !3114, line: 63, baseType: !157, size: 32, offset: 1024)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3115, file: !3114, line: 69, baseType: !118, size: 16, offset: 1056)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3115, file: !3114, line: 70, baseType: !2103, size: 16, offset: 1072)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !56, line: 882, baseType: !110, size: 64, offset: 9024)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !494, file: !56, line: 885, baseType: !508, size: 32, offset: 9088)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !494, file: !56, line: 886, baseType: !3163, size: 64, offset: 9152)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !56, line: 732, flags: DIFlagFwdDecl)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !494, file: !56, line: 901, baseType: !841, size: 64, offset: 9216)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !494, file: !56, line: 904, baseType: !526, size: 64, offset: 9280)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !494, file: !56, line: 906, baseType: !3168, size: 64, offset: 9344)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !56, line: 906, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !494, file: !56, line: 930, baseType: !157, size: 32, offset: 9408)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !494, file: !56, line: 933, baseType: !157, size: 32, offset: 9440)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !494, file: !56, line: 935, baseType: !3173, size: 64, offset: 9472)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !102, line: 103, size: 64, elements: !3174)
!3174 = !{!3175}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3173, file: !102, line: 104, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !102, line: 101, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !494, file: !56, line: 940, baseType: !547, size: 64, offset: 9536)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !494, file: !56, line: 942, baseType: !2210, size: 256, offset: 9600)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !491, file: !56, line: 986, baseType: !3181, offset: 10240)
!3181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, elements: !632)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !136, file: !137, line: 882, baseType: !490, size: 64, offset: 9792)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !136, file: !137, line: 884, baseType: !109, size: 32, offset: 9856)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !136, file: !137, line: 885, baseType: !109, size: 32, offset: 9888)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !136, file: !137, line: 886, baseType: !109, size: 32, offset: 9920)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !136, file: !137, line: 888, baseType: !109, size: 32, offset: 9952)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !136, file: !137, line: 890, baseType: !110, size: 64, offset: 9984)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !136, file: !137, line: 893, baseType: !7, size: 32, offset: 10048)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !136, file: !137, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !136, file: !137, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !136, file: !137, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !136, file: !137, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !136, file: !137, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !136, file: !137, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !136, file: !137, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !136, file: !137, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !136, file: !137, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !136, file: !137, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !136, file: !137, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !136, file: !137, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !136, file: !137, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !136, file: !137, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !136, file: !137, line: 969, baseType: !110, size: 64, offset: 10176)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !136, file: !137, line: 971, baseType: !3205, size: 448, offset: 10240)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !96, line: 25, size: 448, elements: !3206)
!3206 = !{!3207, !3208, !3213}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3205, file: !96, line: 26, baseType: !110, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3205, file: !96, line: 27, baseType: !3209, size: 64, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!1029, !3212}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, scope: !3205, file: !96, line: 28, baseType: !3214, size: 320, offset: 128)
!3214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3205, file: !96, line: 28, size: 320, elements: !3215)
!3215 = !{!3216, !3226, !3251}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3214, file: !96, line: 37, baseType: !3217, size: 320)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3214, file: !96, line: 30, size: 320, elements: !3218)
!3218 = !{!3219, !3221, !3222, !3223, !3224, !3225}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3217, file: !96, line: 31, baseType: !3220, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3217, file: !96, line: 32, baseType: !146, size: 32, offset: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3217, file: !96, line: 33, baseType: !146, size: 32, offset: 96)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3217, file: !96, line: 34, baseType: !146, size: 32, offset: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3217, file: !96, line: 35, baseType: !209, size: 64, offset: 192)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3217, file: !96, line: 36, baseType: !3220, size: 64, offset: 256)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3214, file: !96, line: 47, baseType: !3227, size: 192)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3214, file: !96, line: 39, size: 192, elements: !3228)
!3228 = !{!3229, !3230, !3231, !3250}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3227, file: !96, line: 40, baseType: !355, size: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3227, file: !96, line: 41, baseType: !95, size: 32, offset: 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, scope: !3227, file: !96, line: 42, baseType: !3232, size: 64, offset: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3227, file: !96, line: 42, size: 64, elements: !3233)
!3233 = !{!3234, !3242}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3232, file: !96, line: 43, baseType: !3235, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3237, line: 7, size: 128, elements: !3238)
!3237 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3238 = !{!3239, !3241}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3236, file: !3237, line: 8, baseType: !3240, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !357, line: 93, baseType: !227)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3236, file: !3237, line: 9, baseType: !227, size: 64, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3232, file: !96, line: 44, baseType: !3243, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3245, line: 7, size: 64, elements: !3246)
!3245 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3246 = !{!3247, !3249}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3244, file: !3245, line: 8, baseType: !3248, size: 32)
!3248 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3245, line: 5, baseType: !687)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3244, file: !3245, line: 9, baseType: !687, size: 32, offset: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3227, file: !96, line: 46, baseType: !209, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3214, file: !96, line: 55, baseType: !3252, size: 256)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3214, file: !96, line: 49, size: 256, elements: !3253)
!3253 = !{!3254, !3257, !3258, !3259, !3260}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3252, file: !96, line: 50, baseType: !3255, size: 64)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !96, line: 14, flags: DIFlagFwdDecl)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3252, file: !96, line: 51, baseType: !109, size: 32, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3252, file: !96, line: 52, baseType: !109, size: 32, offset: 96)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3252, file: !96, line: 53, baseType: !110, size: 64, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3252, file: !96, line: 54, baseType: !110, size: 64, offset: 192)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !136, file: !137, line: 973, baseType: !3262, size: 32, offset: 10688)
!3262 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !158, line: 27, baseType: !3263)
!3263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !357, line: 28, baseType: !109)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !136, file: !137, line: 974, baseType: !3262, size: 32, offset: 10720)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !136, file: !137, line: 978, baseType: !110, size: 64, offset: 10752)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !136, file: !137, line: 987, baseType: !135, size: 64, offset: 10816)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !136, file: !137, line: 990, baseType: !135, size: 64, offset: 10880)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !136, file: !137, line: 995, baseType: !214, size: 128, offset: 10944)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !136, file: !137, line: 996, baseType: !214, size: 128, offset: 11072)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !136, file: !137, line: 997, baseType: !135, size: 64, offset: 11200)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !136, file: !137, line: 1005, baseType: !214, size: 128, offset: 11264)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !136, file: !137, line: 1006, baseType: !214, size: 128, offset: 11392)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !136, file: !137, line: 1009, baseType: !596, size: 64, offset: 11520)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !136, file: !137, line: 1010, baseType: !3275, size: 512, offset: 11584)
!3275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 512, elements: !613)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !136, file: !137, line: 1011, baseType: !214, size: 128, offset: 12096)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !136, file: !137, line: 1012, baseType: !214, size: 128, offset: 12224)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !136, file: !137, line: 1014, baseType: !1959, size: 64, offset: 12352)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !136, file: !137, line: 1017, baseType: !2096, size: 64, offset: 12416)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !136, file: !137, line: 1020, baseType: !2096, size: 64, offset: 12480)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !136, file: !137, line: 1023, baseType: !111, size: 64, offset: 12544)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !136, file: !137, line: 1025, baseType: !209, size: 64, offset: 12608)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !136, file: !137, line: 1026, baseType: !209, size: 64, offset: 12672)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !136, file: !137, line: 1031, baseType: !209, size: 64, offset: 12736)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !136, file: !137, line: 1032, baseType: !3286, size: 192, offset: 12800)
!3286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !137, line: 324, size: 192, elements: !3287)
!3287 = !{!3288, !3289, !3290}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3286, file: !137, line: 326, baseType: !209, size: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3286, file: !137, line: 327, baseType: !209, size: 64, offset: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3286, file: !137, line: 328, baseType: !307, size: 32, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !136, file: !137, line: 1041, baseType: !110, size: 64, offset: 12992)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !136, file: !137, line: 1042, baseType: !110, size: 64, offset: 13056)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !136, file: !137, line: 1045, baseType: !209, size: 64, offset: 13120)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !136, file: !137, line: 1048, baseType: !209, size: 64, offset: 13184)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !136, file: !137, line: 1051, baseType: !110, size: 64, offset: 13248)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !136, file: !137, line: 1052, baseType: !110, size: 64, offset: 13312)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !136, file: !137, line: 1055, baseType: !3298, size: 640, offset: 13376)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3299, line: 132, size: 640, elements: !3300)
!3299 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3300 = !{!3301, !3307, !3308}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3298, file: !3299, line: 133, baseType: !3302, size: 576)
!3302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3303, size: 576, elements: !592)
!3303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3299, line: 117, size: 192, elements: !3304)
!3304 = !{!3305, !3306}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3303, file: !3299, line: 118, baseType: !209, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3303, file: !3299, line: 119, baseType: !370, size: 128, offset: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3298, file: !3299, line: 134, baseType: !7, size: 32, offset: 576)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3298, file: !3299, line: 135, baseType: !7, size: 32, offset: 608)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !136, file: !137, line: 1058, baseType: !3310, size: 448, offset: 14016)
!3310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3299, line: 144, size: 448, elements: !3311)
!3311 = !{!3312, !3313, !3314}
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3310, file: !3299, line: 145, baseType: !534, size: 128, align: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3310, file: !3299, line: 146, baseType: !554, size: 256, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3310, file: !3299, line: 147, baseType: !7, size: 32, offset: 384)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !136, file: !137, line: 1064, baseType: !646, size: 64, offset: 14464)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !136, file: !137, line: 1067, baseType: !646, size: 64, offset: 14528)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !136, file: !137, line: 1070, baseType: !646, size: 64, offset: 14592)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !136, file: !137, line: 1074, baseType: !679, size: 64, offset: 14656)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !136, file: !137, line: 1084, baseType: !3320, size: 128, offset: 14720)
!3320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 128, elements: !2711)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !136, file: !137, line: 1086, baseType: !3322, size: 64, offset: 14848)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !137, line: 55, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !136, file: !137, line: 1089, baseType: !3325, size: 64, offset: 14912)
!3325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3326, line: 12, size: 64, elements: !3327)
!3326 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3327 = !{!3328}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3325, file: !3326, line: 13, baseType: !3329, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3326, line: 8, flags: DIFlagFwdDecl)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !136, file: !137, line: 1090, baseType: !3332, size: 128, offset: 14976)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3333, line: 13, size: 128, elements: !3334)
!3333 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3334 = !{!3335}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3332, file: !3333, line: 14, baseType: !214, size: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !136, file: !137, line: 1097, baseType: !3337, size: 64, offset: 15104)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !137, line: 50, flags: DIFlagFwdDecl)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !136, file: !137, line: 1100, baseType: !3340, size: 64, offset: 15168)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !137, line: 1100, flags: DIFlagFwdDecl)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !136, file: !137, line: 1103, baseType: !3343, size: 64, offset: 15232)
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3344, size: 64)
!3344 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !137, line: 53, flags: DIFlagFwdDecl)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !136, file: !137, line: 1107, baseType: !3346, size: 64, offset: 15296)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !137, line: 56, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !136, file: !137, line: 1110, baseType: !3349, size: 64, offset: 15360)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3351, line: 93, size: 8768, elements: !3352)
!3351 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3352 = !{!3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3400, !3409, !3410, !3412, !3413, !3414, !3417, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3455, !3456, !3463, !3473, !3476, !3477, !3480, !3481, !3482, !3483, !3484, !3485}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3350, file: !3351, line: 94, baseType: !152, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3350, file: !3351, line: 95, baseType: !157, size: 32, offset: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3350, file: !3351, line: 96, baseType: !109, size: 32, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3350, file: !3351, line: 97, baseType: !109, size: 32, offset: 96)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3350, file: !3351, line: 98, baseType: !214, size: 128, offset: 128)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3350, file: !3351, line: 100, baseType: !617, size: 192, offset: 256)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3350, file: !3351, line: 103, baseType: !135, size: 64, offset: 448)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3350, file: !3351, line: 106, baseType: !3361, size: 192, offset: 512)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !846, line: 32, size: 192, elements: !3362)
!3362 = !{!3363, !3364}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3361, file: !846, line: 33, baseType: !214, size: 128)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3361, file: !846, line: 34, baseType: !3365, size: 64, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3366, line: 25, baseType: !3367)
!3366 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3366, line: 23, size: 64, elements: !3368)
!3368 = !{!3369}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3367, file: !3366, line: 24, baseType: !441, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3350, file: !3351, line: 109, baseType: !604, size: 64, offset: 704)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3350, file: !3351, line: 112, baseType: !109, size: 32, offset: 768)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3350, file: !3351, line: 114, baseType: !109, size: 32, offset: 800)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3350, file: !3351, line: 115, baseType: !135, size: 64, offset: 832)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3350, file: !3351, line: 118, baseType: !109, size: 32, offset: 896)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3350, file: !3351, line: 119, baseType: !7, size: 32, offset: 928)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3350, file: !3351, line: 121, baseType: !3377, size: 64, offset: 960)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3351, line: 80, size: 448, elements: !3379)
!3379 = !{!3380, !3381, !3387}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3378, file: !3351, line: 81, baseType: !157, size: 32)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3378, file: !3351, line: 82, baseType: !3382, size: 128, offset: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3351, line: 75, size: 128, elements: !3383)
!3383 = !{!3384, !3385}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3382, file: !3351, line: 76, baseType: !135, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3382, file: !3351, line: 77, baseType: !3386, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3378, file: !3351, line: 83, baseType: !1382, size: 256, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3350, file: !3351, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3350, file: !3351, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3350, file: !3351, line: 138, baseType: !7, size: 32, offset: 1056)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3350, file: !3351, line: 139, baseType: !214, size: 128, offset: 1088)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3350, file: !3351, line: 142, baseType: !282, size: 512, offset: 1216)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3350, file: !3351, line: 143, baseType: !290, size: 64, offset: 1728)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3350, file: !3351, line: 150, baseType: !3395, size: 256, offset: 1792)
!3395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3396, size: 256, elements: !2086)
!3396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3351, line: 38, size: 128, elements: !3397)
!3397 = !{!3398, !3399}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3396, file: !3351, line: 39, baseType: !209, size: 64)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3396, file: !3351, line: 40, baseType: !209, size: 64, offset: 64)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3350, file: !3351, line: 156, baseType: !3401, size: 192, offset: 2048)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3351, line: 66, size: 192, elements: !3402)
!3402 = !{!3403}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3401, file: !3351, line: 67, baseType: !3404, size: 192)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3351, line: 47, size: 192, elements: !3405)
!3405 = !{!3406, !3407, !3408}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3404, file: !3351, line: 48, baseType: !549, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3404, file: !3351, line: 49, baseType: !549, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3404, file: !3351, line: 50, baseType: !549, size: 64, offset: 128)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3350, file: !3351, line: 160, baseType: !3298, size: 640, offset: 2240)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3350, file: !3351, line: 163, baseType: !3411, size: 256, offset: 2880)
!3411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 256, elements: !613)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3350, file: !3351, line: 169, baseType: !596, size: 64, offset: 3136)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3350, file: !3351, line: 172, baseType: !109, size: 32, offset: 3200)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3350, file: !3351, line: 174, baseType: !3415, size: 64, offset: 3264)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3351, line: 174, flags: DIFlagFwdDecl)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3350, file: !3351, line: 185, baseType: !3418, size: 64, offset: 3328)
!3418 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !360, line: 860, baseType: !3419)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !360, line: 853, size: 64, elements: !3420)
!3420 = !{!3421, !3422}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3419, file: !360, line: 858, baseType: !885, size: 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3419, file: !360, line: 859, baseType: !508, size: 32, offset: 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3350, file: !3351, line: 186, baseType: !209, size: 64, offset: 3392)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3350, file: !3351, line: 186, baseType: !209, size: 64, offset: 3456)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3350, file: !3351, line: 186, baseType: !209, size: 64, offset: 3520)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3350, file: !3351, line: 186, baseType: !209, size: 64, offset: 3584)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3350, file: !3351, line: 187, baseType: !209, size: 64, offset: 3648)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3350, file: !3351, line: 188, baseType: !209, size: 64, offset: 3712)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3350, file: !3351, line: 189, baseType: !3286, size: 192, offset: 3776)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3350, file: !3351, line: 190, baseType: !110, size: 64, offset: 3968)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3350, file: !3351, line: 190, baseType: !110, size: 64, offset: 4032)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3350, file: !3351, line: 190, baseType: !110, size: 64, offset: 4096)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3350, file: !3351, line: 190, baseType: !110, size: 64, offset: 4160)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3350, file: !3351, line: 191, baseType: !110, size: 64, offset: 4224)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3350, file: !3351, line: 191, baseType: !110, size: 64, offset: 4288)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3350, file: !3351, line: 191, baseType: !110, size: 64, offset: 4352)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3350, file: !3351, line: 191, baseType: !110, size: 64, offset: 4416)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3350, file: !3351, line: 192, baseType: !110, size: 64, offset: 4480)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3350, file: !3351, line: 192, baseType: !110, size: 64, offset: 4544)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3350, file: !3351, line: 192, baseType: !110, size: 64, offset: 4608)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3350, file: !3351, line: 192, baseType: !110, size: 64, offset: 4672)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3350, file: !3351, line: 193, baseType: !110, size: 64, offset: 4736)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3350, file: !3351, line: 193, baseType: !110, size: 64, offset: 4800)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3350, file: !3351, line: 194, baseType: !3445, size: 448, offset: 4864)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3446, line: 12, size: 448, elements: !3447)
!3446 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453, !3454}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3445, file: !3446, line: 15, baseType: !209, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3445, file: !3446, line: 17, baseType: !209, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3445, file: !3446, line: 19, baseType: !209, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3445, file: !3446, line: 21, baseType: !209, size: 64, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3445, file: !3446, line: 29, baseType: !209, size: 64, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3445, file: !3446, line: 35, baseType: !209, size: 64, offset: 320)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3445, file: !3446, line: 44, baseType: !209, size: 64, offset: 384)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3350, file: !3351, line: 202, baseType: !211, size: 64, offset: 5312)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3350, file: !3351, line: 213, baseType: !3457, size: 2048, offset: 5376)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3458, size: 2048, elements: !2711)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3459, line: 43, size: 128, elements: !3460)
!3459 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3460 = !{!3461, !3462}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3458, file: !3459, line: 44, baseType: !1073, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3458, file: !3459, line: 45, baseType: !1073, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3350, file: !3351, line: 216, baseType: !3464, size: 448, offset: 7424)
!3464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3351, line: 30, size: 448, elements: !3465)
!3465 = !{!3466, !3467, !3468, !3469, !3470, !3471, !3472}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3464, file: !3351, line: 31, baseType: !109, size: 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3464, file: !3351, line: 32, baseType: !1029, size: 64, offset: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3464, file: !3351, line: 33, baseType: !110, size: 64, offset: 128)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3464, file: !3351, line: 34, baseType: !209, size: 64, offset: 192)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3464, file: !3351, line: 34, baseType: !209, size: 64, offset: 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3464, file: !3351, line: 35, baseType: !110, size: 64, offset: 320)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3464, file: !3351, line: 35, baseType: !110, size: 64, offset: 384)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3350, file: !3351, line: 219, baseType: !3474, size: 64, offset: 7872)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3351, line: 219, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3350, file: !3351, line: 222, baseType: !7, size: 32, offset: 7936)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3350, file: !3351, line: 223, baseType: !3478, size: 64, offset: 8000)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3351, line: 223, flags: DIFlagFwdDecl)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3350, file: !3351, line: 230, baseType: !755, size: 8, offset: 8064)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3350, file: !3351, line: 231, baseType: !723, size: 16, offset: 8080)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3350, file: !3351, line: 232, baseType: !723, size: 16, offset: 8096)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3350, file: !3351, line: 234, baseType: !490, size: 64, offset: 8128)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3350, file: !3351, line: 237, baseType: !554, size: 256, offset: 8192)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3350, file: !3351, line: 243, baseType: !695, size: 320, offset: 8448)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !136, file: !137, line: 1111, baseType: !3487, size: 64, offset: 15424)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3351, line: 20, size: 16640, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3493}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3488, file: !3351, line: 21, baseType: !508, size: 32)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3488, file: !3351, line: 22, baseType: !152, size: 32, offset: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3488, file: !3351, line: 23, baseType: !617, size: 192, offset: 64)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3488, file: !3351, line: 24, baseType: !3494, size: 16384, offset: 256)
!3494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3495, size: 16384, elements: !1216)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !846, line: 51, size: 256, elements: !3496)
!3496 = !{!3497}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3495, file: !846, line: 52, baseType: !3498, size: 256)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !846, line: 37, size: 256, elements: !3499)
!3499 = !{!3500, !3507, !3508, !3512}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3498, file: !846, line: 39, baseType: !3501, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3502, line: 83, baseType: !3503)
!3502 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3502, line: 82, baseType: !3505)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{null, !109}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3498, file: !846, line: 40, baseType: !110, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3498, file: !846, line: 46, baseType: !3509, size: 64, offset: 128)
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3502, line: 86, baseType: !3510)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3502, line: 85, baseType: !2319)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3498, file: !846, line: 48, baseType: !3365, size: 64, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !136, file: !137, line: 1112, baseType: !3365, size: 64, offset: 15488)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !136, file: !137, line: 1113, baseType: !3365, size: 64, offset: 15552)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !136, file: !137, line: 1115, baseType: !3365, size: 64, offset: 15616)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !136, file: !137, line: 1116, baseType: !3361, size: 192, offset: 15680)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !136, file: !137, line: 1117, baseType: !110, size: 64, offset: 15872)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !136, file: !137, line: 1118, baseType: !1071, size: 64, offset: 15936)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !136, file: !137, line: 1119, baseType: !7, size: 32, offset: 16000)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !136, file: !137, line: 1121, baseType: !537, size: 64, offset: 16064)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !136, file: !137, line: 1125, baseType: !3522, size: 64, offset: 16128)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !137, line: 43, flags: DIFlagFwdDecl)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !136, file: !137, line: 1127, baseType: !636, size: 32, offset: 16192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !136, file: !137, line: 1128, baseType: !7, size: 32, offset: 16224)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !136, file: !137, line: 1130, baseType: !3527, size: 128, offset: 16256)
!3527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3528, line: 37, size: 128, elements: !3529)
!3528 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3529 = !{!3530, !3531, !3532}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3527, file: !3528, line: 38, baseType: !109, size: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3527, file: !3528, line: 39, baseType: !157, size: 32, offset: 32)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3527, file: !3528, line: 40, baseType: !3533, size: 64, offset: 64)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3528, line: 24, flags: DIFlagFwdDecl)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !136, file: !137, line: 1131, baseType: !3536, size: 256, offset: 16384)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3537, line: 12, size: 256, elements: !3538)
!3537 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3538 = !{!3539, !3540, !3541, !3542}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3536, file: !3537, line: 13, baseType: !768, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3536, file: !3537, line: 14, baseType: !110, size: 64, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3536, file: !3537, line: 15, baseType: !110, size: 64, offset: 128)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3536, file: !3537, line: 16, baseType: !755, size: 8, offset: 192)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !136, file: !137, line: 1134, baseType: !209, size: 64, offset: 16640)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !136, file: !137, line: 1135, baseType: !209, size: 64, offset: 16704)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !136, file: !137, line: 1138, baseType: !508, size: 32, offset: 16768)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !136, file: !137, line: 1141, baseType: !307, size: 32, offset: 16800)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !136, file: !137, line: 1143, baseType: !3548, size: 64, offset: 16832)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !137, line: 735, size: 64, elements: !3549)
!3549 = !{!3550}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3548, file: !137, line: 736, baseType: !3551, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !136, file: !137, line: 1147, baseType: !373, size: 128, offset: 16896)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !136, file: !137, line: 1149, baseType: !135, size: 64, offset: 17024)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !136, file: !137, line: 1151, baseType: !3555, size: 64, offset: 17088)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !137, line: 1151, flags: DIFlagFwdDecl)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !136, file: !137, line: 1188, baseType: !111, size: 64, offset: 17152)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !136, file: !137, line: 1191, baseType: !3559, size: 64, offset: 17216)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !137, line: 44, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !136, file: !137, line: 1194, baseType: !3562, size: 64, offset: 17280)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !137, line: 45, flags: DIFlagFwdDecl)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !136, file: !137, line: 1197, baseType: !3565, size: 64, offset: 17344)
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !137, line: 61, flags: DIFlagFwdDecl)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !136, file: !137, line: 1199, baseType: !3568, size: 64, offset: 17408)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3570, line: 99, size: 128, elements: !3571)
!3570 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3571 = !{!3572, !3573, !3574}
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3569, file: !3570, line: 100, baseType: !547, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3569, file: !3570, line: 101, baseType: !157, size: 32, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3569, file: !3570, line: 103, baseType: !112, size: 16, offset: 96)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !136, file: !137, line: 1202, baseType: !3576, size: 64, offset: 17472)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !137, line: 48, flags: DIFlagFwdDecl)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !136, file: !137, line: 1205, baseType: !110, size: 64, offset: 17536)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !136, file: !137, line: 1206, baseType: !3580, size: 64, offset: 17600)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !846, line: 14, baseType: !3582)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !846, line: 12, size: 384, elements: !3583)
!3583 = !{!3584}
!3584 = !DIDerivedType(tag: DW_TAG_member, scope: !3582, file: !846, line: 13, baseType: !3585, size: 384)
!3585 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3582, file: !846, line: 13, size: 384, elements: !3586)
!3586 = !{!3587, !3588, !3589, !3590}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3585, file: !846, line: 13, baseType: !109, size: 32)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3585, file: !846, line: 13, baseType: !109, size: 32, offset: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3585, file: !846, line: 13, baseType: !109, size: 32, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3585, file: !846, line: 13, baseType: !3591, size: 256, offset: 128)
!3591 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3592, line: 37, size: 256, elements: !3593)
!3592 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3593 = !{!3594, !3599, !3612, !3618, !3627, !3654, !3659}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3591, file: !3592, line: 42, baseType: !3595, size: 64)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3591, file: !3592, line: 39, size: 64, elements: !3596)
!3596 = !{!3597, !3598}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3595, file: !3592, line: 40, baseType: !3263, size: 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3595, file: !3592, line: 41, baseType: !642, size: 32, offset: 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3591, file: !3592, line: 50, baseType: !3600, size: 192)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3591, file: !3592, line: 45, size: 192, elements: !3601)
!3601 = !{!3602, !3604, !3605, !3611}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3600, file: !3592, line: 46, baseType: !3603, size: 32)
!3603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !357, line: 95, baseType: !109)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3600, file: !3592, line: 47, baseType: !109, size: 32, offset: 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3600, file: !3592, line: 48, baseType: !3606, size: 64, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3592, line: 11, baseType: !3607)
!3607 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3592, line: 8, size: 64, elements: !3608)
!3608 = !{!3609, !3610}
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3607, file: !3592, line: 9, baseType: !109, size: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3607, file: !3592, line: 10, baseType: !111, size: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3600, file: !3592, line: 49, baseType: !109, size: 32, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3591, file: !3592, line: 57, baseType: !3613, size: 128)
!3613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3591, file: !3592, line: 53, size: 128, elements: !3614)
!3614 = !{!3615, !3616, !3617}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3613, file: !3592, line: 54, baseType: !3263, size: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3613, file: !3592, line: 55, baseType: !642, size: 32, offset: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3613, file: !3592, line: 56, baseType: !3606, size: 64, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3591, file: !3592, line: 66, baseType: !3619, size: 256)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3591, file: !3592, line: 60, size: 256, elements: !3620)
!3620 = !{!3621, !3622, !3623, !3624, !3626}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3619, file: !3592, line: 61, baseType: !3263, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3619, file: !3592, line: 62, baseType: !642, size: 32, offset: 32)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3619, file: !3592, line: 63, baseType: !109, size: 32, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3619, file: !3592, line: 64, baseType: !3625, size: 64, offset: 128)
!3625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !357, line: 94, baseType: !1070)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3619, file: !3592, line: 65, baseType: !3625, size: 64, offset: 192)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3591, file: !3592, line: 105, baseType: !3628, size: 256)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3591, file: !3592, line: 69, size: 256, elements: !3629)
!3629 = !{!3630, !3631}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3628, file: !3592, line: 70, baseType: !111, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, scope: !3628, file: !3592, line: 79, baseType: !3632, size: 192, offset: 64)
!3632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3628, file: !3592, line: 79, size: 192, elements: !3633)
!3633 = !{!3634, !3635, !3636, !3643, !3648}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3632, file: !3592, line: 81, baseType: !109, size: 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3632, file: !3592, line: 86, baseType: !723, size: 16)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3632, file: !3592, line: 92, baseType: !3637, size: 192)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3632, file: !3592, line: 88, size: 192, elements: !3638)
!3638 = !{!3639, !3641, !3642}
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3637, file: !3592, line: 89, baseType: !3640, size: 64)
!3640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 64, elements: !351)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3637, file: !3592, line: 90, baseType: !111, size: 64, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3637, file: !3592, line: 91, baseType: !111, size: 64, offset: 128)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3632, file: !3592, line: 97, baseType: !3644, size: 96)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3632, file: !3592, line: 94, size: 96, elements: !3645)
!3645 = !{!3646, !3647}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3644, file: !3592, line: 95, baseType: !3640, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3644, file: !3592, line: 96, baseType: !147, size: 32, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3632, file: !3592, line: 103, baseType: !3649, size: 128)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3632, file: !3592, line: 99, size: 128, elements: !3650)
!3650 = !{!3651, !3652, !3653}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3649, file: !3592, line: 100, baseType: !110, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3649, file: !3592, line: 101, baseType: !147, size: 32, offset: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3649, file: !3592, line: 102, baseType: !147, size: 32, offset: 96)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3591, file: !3592, line: 111, baseType: !3655, size: 128)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3591, file: !3592, line: 108, size: 128, elements: !3656)
!3656 = !{!3657, !3658}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3655, file: !3592, line: 109, baseType: !1029, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3655, file: !3592, line: 110, baseType: !109, size: 32, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3591, file: !3592, line: 118, baseType: !3660, size: 128)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3591, file: !3592, line: 114, size: 128, elements: !3661)
!3661 = !{!3662, !3663, !3664}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3660, file: !3592, line: 115, baseType: !111, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3660, file: !3592, line: 116, baseType: !109, size: 32, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3660, file: !3592, line: 117, baseType: !7, size: 32, offset: 96)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !136, file: !137, line: 1208, baseType: !3445, size: 448, offset: 17664)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !136, file: !137, line: 1215, baseType: !209, size: 64, offset: 18112)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !136, file: !137, line: 1217, baseType: !209, size: 64, offset: 18176)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !136, file: !137, line: 1219, baseType: !209, size: 64, offset: 18240)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !136, file: !137, line: 1223, baseType: !3670, size: 64, offset: 18304)
!3670 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3671, line: 99, baseType: !3672)
!3671 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3671, line: 99, size: 64, elements: !3673)
!3673 = !{!3674}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3672, file: !3671, line: 99, baseType: !441, size: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !136, file: !137, line: 1225, baseType: !885, size: 32, offset: 18368)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !136, file: !137, line: 1226, baseType: !109, size: 32, offset: 18400)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !136, file: !137, line: 1227, baseType: !109, size: 32, offset: 18432)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !136, file: !137, line: 1231, baseType: !3679, size: 64, offset: 18496)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !137, line: 1231, flags: DIFlagFwdDecl)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !136, file: !137, line: 1233, baseType: !214, size: 128, offset: 18560)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !136, file: !137, line: 1240, baseType: !3683, size: 64, offset: 18688)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !137, line: 62, flags: DIFlagFwdDecl)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !136, file: !137, line: 1242, baseType: !3686, size: 64, offset: 18752)
!3686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3687, size: 64)
!3687 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !137, line: 1242, flags: DIFlagFwdDecl)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !136, file: !137, line: 1244, baseType: !214, size: 128, offset: 18816)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !136, file: !137, line: 1245, baseType: !3690, size: 64, offset: 18944)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !137, line: 51, flags: DIFlagFwdDecl)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !136, file: !137, line: 1246, baseType: !554, size: 256, offset: 19008)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !136, file: !137, line: 1247, baseType: !7, size: 32, offset: 19264)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !136, file: !137, line: 1250, baseType: !3695, size: 64, offset: 19328)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !137, line: 57, flags: DIFlagFwdDecl)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !136, file: !137, line: 1251, baseType: !554, size: 256, offset: 19392)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !136, file: !137, line: 1252, baseType: !214, size: 128, offset: 19648)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !136, file: !137, line: 1259, baseType: !1510, size: 64, offset: 19776)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !136, file: !137, line: 1260, baseType: !723, size: 16, offset: 19840)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !136, file: !137, line: 1261, baseType: !723, size: 16, offset: 19856)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !136, file: !137, line: 1314, baseType: !3703, size: 64, offset: 19904)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3705, line: 62, size: 256, align: 256, elements: !3706)
!3705 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3706 = !{!3707, !3708, !3709, !3710, !3711, !3712, !3713}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3704, file: !3705, line: 75, baseType: !147, size: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3704, file: !3705, line: 90, baseType: !147, size: 32, offset: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3704, file: !3705, line: 112, baseType: !210, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3704, file: !3705, line: 132, baseType: !147, size: 32, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3704, file: !3705, line: 140, baseType: !147, size: 32, offset: 160)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3704, file: !3705, line: 149, baseType: !147, size: 32, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3704, file: !3705, line: 154, baseType: !3714, offset: 224)
!3714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, elements: !632)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !136, file: !137, line: 1315, baseType: !146, size: 32, offset: 19968)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !136, file: !137, line: 1316, baseType: !146, size: 32, offset: 20000)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !136, file: !137, line: 1321, baseType: !110, size: 64, offset: 20032)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !136, file: !137, line: 1325, baseType: !109, size: 32, offset: 20096)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !136, file: !137, line: 1326, baseType: !109, size: 32, offset: 20128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !136, file: !137, line: 1327, baseType: !109, size: 32, offset: 20160)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !136, file: !137, line: 1328, baseType: !109, size: 32, offset: 20192)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !136, file: !137, line: 1329, baseType: !534, size: 128, align: 64, offset: 20224)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !136, file: !137, line: 1332, baseType: !3724, size: 128, offset: 20352)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3725, line: 51, size: 128, elements: !3726)
!3725 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3726 = !{!3727, !3732, !3733}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3724, file: !3725, line: 60, baseType: !3728, size: 64)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3729, line: 7, size: 64, elements: !3730)
!3729 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3730 = !{!3731}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3728, file: !3729, line: 12, baseType: !438, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3724, file: !3725, line: 63, baseType: !755, size: 8, offset: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3724, file: !3725, line: 70, baseType: !755, size: 8, offset: 72)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !136, file: !137, line: 1335, baseType: !2949, size: 64, offset: 20480)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !136, file: !137, line: 1337, baseType: !3736, size: 128, offset: 20544)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3725, line: 39, size: 128, elements: !3737)
!3737 = !{!3738, !3739, !3740}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3736, file: !3725, line: 40, baseType: !1297, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3736, file: !3725, line: 42, baseType: !147, size: 32, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3736, file: !3725, line: 43, baseType: !147, size: 32, offset: 96)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !136, file: !137, line: 1340, baseType: !3742, size: 64, offset: 20672)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !137, line: 69, flags: DIFlagFwdDecl)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !136, file: !137, line: 1351, baseType: !109, size: 32, offset: 20736)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !136, file: !137, line: 1352, baseType: !109, size: 32, offset: 20768)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !136, file: !137, line: 1354, baseType: !110, size: 64, offset: 20800)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !136, file: !137, line: 1364, baseType: !209, size: 64, offset: 20864)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !136, file: !137, line: 1365, baseType: !209, size: 64, offset: 20928)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !136, file: !137, line: 1412, baseType: !110, size: 64, offset: 20992)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !136, file: !137, line: 1453, baseType: !3751, size: 64, offset: 21056)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !137, line: 1453, flags: DIFlagFwdDecl)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !136, file: !137, line: 1457, baseType: !3754, size: 64, offset: 21120)
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !102, line: 61, size: 576, elements: !3756)
!3756 = !{!3757, !3758, !3777, !3780, !3781, !3814, !3824}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3755, file: !102, line: 62, baseType: !101, size: 32)
!3758 = !DIDerivedType(tag: DW_TAG_member, scope: !3755, file: !102, line: 64, baseType: !3759, size: 192, offset: 64)
!3759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3755, file: !102, line: 64, size: 192, elements: !3760)
!3760 = !{!3761, !3772}
!3761 = !DIDerivedType(tag: DW_TAG_member, scope: !3759, file: !102, line: 65, baseType: !3762, size: 192)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3759, file: !102, line: 65, size: 192, elements: !3763)
!3763 = !{!3764, !3771}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3762, file: !102, line: 66, baseType: !3765, size: 128)
!3765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3766, line: 50, size: 128, elements: !3767)
!3766 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3767 = !{!3768, !3769, !3770}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3765, file: !3766, line: 52, baseType: !110, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3765, file: !3766, line: 54, baseType: !7, size: 32, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3765, file: !3766, line: 55, baseType: !7, size: 32, offset: 96)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3762, file: !102, line: 67, baseType: !110, size: 64, offset: 128)
!3772 = !DIDerivedType(tag: DW_TAG_member, scope: !3759, file: !102, line: 70, baseType: !3773, size: 192)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3759, file: !102, line: 70, size: 192, elements: !3774)
!3774 = !{!3775, !3776}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3773, file: !102, line: 71, baseType: !534, size: 128, align: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3773, file: !102, line: 72, baseType: !110, size: 64, offset: 128)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3755, file: !102, line: 76, baseType: !3778, size: 64, offset: 256)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !102, line: 76, flags: DIFlagFwdDecl)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3755, file: !102, line: 77, baseType: !110, size: 64, offset: 320)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3755, file: !102, line: 79, baseType: !3782, size: 64, offset: 384)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3766, line: 25, size: 256, elements: !3784)
!3784 = !{!3785, !3791, !3795}
!3785 = !DIDerivedType(tag: DW_TAG_member, scope: !3783, file: !3766, line: 26, baseType: !3786, size: 128)
!3786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3783, file: !3766, line: 26, size: 128, elements: !3787)
!3787 = !{!3788, !3790}
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3786, file: !3766, line: 27, baseType: !3789, size: 128)
!3789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 128, elements: !2711)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3786, file: !3766, line: 28, baseType: !3789, size: 128)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3783, file: !3766, line: 31, baseType: !3792, size: 64, offset: 128)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3794)
!3794 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3766, line: 23, flags: DIFlagFwdDecl)
!3795 = !DIDerivedType(tag: DW_TAG_member, scope: !3783, file: !3766, line: 33, baseType: !3796, size: 64, offset: 192)
!3796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3783, file: !3766, line: 33, size: 64, elements: !3797)
!3797 = !{!3798, !3804, !3809}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3796, file: !3766, line: 38, baseType: !3799, size: 64)
!3799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3796, file: !3766, line: 34, size: 64, elements: !3800)
!3800 = !{!3801, !3802, !3803}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3799, file: !3766, line: 35, baseType: !687, size: 32)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3799, file: !3766, line: 36, baseType: !324, size: 8, offset: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3799, file: !3766, line: 37, baseType: !324, size: 8, offset: 40)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3796, file: !3766, line: 42, baseType: !3805, size: 16)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3796, file: !3766, line: 39, size: 16, elements: !3806)
!3806 = !{!3807, !3808}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3805, file: !3766, line: 40, baseType: !324, size: 8)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3805, file: !3766, line: 41, baseType: !324, size: 8, offset: 8)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3796, file: !3766, line: 46, baseType: !3810, size: 16)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3796, file: !3766, line: 43, size: 16, elements: !3811)
!3811 = !{!3812, !3813}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3810, file: !3766, line: 44, baseType: !324, size: 8)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3810, file: !3766, line: 45, baseType: !324, size: 8, offset: 8)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3755, file: !102, line: 81, baseType: !3815, size: 64, offset: 448)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !102, line: 85, size: 384, elements: !3817)
!3817 = !{!3818, !3819, !3820, !3821, !3822, !3823}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3816, file: !102, line: 86, baseType: !3778, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3816, file: !102, line: 87, baseType: !110, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3816, file: !102, line: 88, baseType: !110, size: 64, offset: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3816, file: !102, line: 89, baseType: !110, size: 64, offset: 192)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3816, file: !102, line: 90, baseType: !755, size: 8, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3816, file: !102, line: 92, baseType: !3815, size: 64, offset: 320)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3755, file: !102, line: 82, baseType: !7, size: 32, offset: 512)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !136, file: !137, line: 1463, baseType: !3826, offset: 21184)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !137, line: 739, elements: !519)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !136, file: !137, line: 1470, baseType: !534, size: 128, align: 64, offset: 21184)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !136, file: !137, line: 1471, baseType: !152, size: 32, offset: 21312)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !136, file: !137, line: 1472, baseType: !109, size: 32, offset: 21344)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !136, file: !137, line: 1474, baseType: !135, size: 64, offset: 21376)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !136, file: !137, line: 1475, baseType: !2198, size: 320, offset: 21440)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !136, file: !137, line: 1478, baseType: !3833, size: 64, offset: 21760)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !137, line: 1478, flags: DIFlagFwdDecl)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !136, file: !137, line: 1482, baseType: !152, size: 32, offset: 21824)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !136, file: !137, line: 1489, baseType: !111, size: 64, offset: 21888)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !136, file: !137, line: 1504, baseType: !111, size: 64, offset: 21952)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !136, file: !137, line: 1505, baseType: !210, size: 64, offset: 22016)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !136, file: !137, line: 1506, baseType: !209, size: 64, offset: 22080)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !136, file: !137, line: 1507, baseType: !210, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !136, file: !137, line: 1508, baseType: !210, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !136, file: !137, line: 1509, baseType: !210, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !136, file: !137, line: 1510, baseType: !534, size: 128, align: 64, offset: 22208)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !136, file: !137, line: 1511, baseType: !109, size: 32, offset: 22336)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !136, file: !137, line: 1515, baseType: !3846, size: 64, offset: 22400)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !171, line: 56, size: 64, elements: !3847)
!3847 = !{!3848}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3846, file: !171, line: 57, baseType: !174, size: 64)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !136, file: !137, line: 1518, baseType: !3846, size: 64, offset: 22464)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !136, file: !137, line: 1528, baseType: !534, size: 128, align: 64, offset: 22528)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !136, file: !137, line: 1552, baseType: !3852, size: 35328, offset: 23040)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3853, line: 430, size: 35328, elements: !3854)
!3853 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3854 = !{!3855, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3868, !3869, !3870, !3871, !3872, !3873, !3876, !3877, !3878, !3879}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3852, file: !3853, line: 432, baseType: !3856, size: 192)
!3856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 192, elements: !592)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3852, file: !3853, line: 436, baseType: !110, size: 64, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3852, file: !3853, line: 440, baseType: !112, size: 16, offset: 256)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3852, file: !3853, line: 441, baseType: !112, size: 16, offset: 272)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3852, file: !3853, line: 442, baseType: !112, size: 16, offset: 288)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3852, file: !3853, line: 443, baseType: !112, size: 16, offset: 304)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3852, file: !3853, line: 447, baseType: !110, size: 64, offset: 320)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3852, file: !3853, line: 448, baseType: !110, size: 64, offset: 384)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3852, file: !3853, line: 459, baseType: !3865, size: 256, offset: 448)
!3865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3866, size: 256, elements: !613)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3853, line: 428, flags: DIFlagFwdDecl)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3852, file: !3853, line: 461, baseType: !110, size: 64, offset: 704)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3852, file: !3853, line: 463, baseType: !110, size: 64, offset: 768)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3852, file: !3853, line: 465, baseType: !110, size: 64, offset: 832)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3852, file: !3853, line: 466, baseType: !110, size: 64, offset: 896)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3852, file: !3853, line: 467, baseType: !110, size: 64, offset: 960)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3852, file: !3853, line: 473, baseType: !3874, size: 64, offset: 1024)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3853, line: 10, flags: DIFlagFwdDecl)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3852, file: !3853, line: 480, baseType: !110, size: 64, offset: 1088)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3852, file: !3853, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3852, file: !3853, line: 491, baseType: !146, size: 32, offset: 1184)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3852, file: !3853, line: 501, baseType: !3880, size: 33792, offset: 1536)
!3880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3881, line: 448, size: 33792, elements: !3882)
!3881 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3882 = !{!3883, !3884, !3885, !4047, !4048, !4054, !4055}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3880, file: !3881, line: 461, baseType: !7, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3880, file: !3881, line: 468, baseType: !110, size: 64, offset: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3880, file: !3881, line: 476, baseType: !3886, size: 64, offset: 128)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3881, line: 356, size: 33280, align: 512, elements: !3888)
!3888 = !{!3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3887, file: !3881, line: 358, baseType: !7, size: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3887, file: !3881, line: 361, baseType: !7, size: 32, offset: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3887, file: !3881, line: 364, baseType: !209, size: 64, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3887, file: !3881, line: 367, baseType: !209, size: 64, offset: 128)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3887, file: !3881, line: 370, baseType: !209, size: 64, offset: 192)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3887, file: !3881, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3887, file: !3881, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3887, file: !3881, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3887, file: !3881, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3887, file: !3881, line: 397, baseType: !3899, size: 32768, offset: 512)
!3899 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3881, line: 348, size: 32768, elements: !3900)
!3900 = !{!3901, !3916, !3953, !4030, !4043}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3899, file: !3881, line: 349, baseType: !3902, size: 896)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3881, line: 12, size: 896, elements: !3903)
!3903 = !{!3904, !3905, !3906, !3907, !3908, !3909, !3910, !3911, !3915}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3902, file: !3881, line: 13, baseType: !146, size: 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3902, file: !3881, line: 14, baseType: !146, size: 32, offset: 32)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3902, file: !3881, line: 15, baseType: !146, size: 32, offset: 64)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3902, file: !3881, line: 16, baseType: !146, size: 32, offset: 96)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3902, file: !3881, line: 17, baseType: !146, size: 32, offset: 128)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3902, file: !3881, line: 18, baseType: !146, size: 32, offset: 160)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3902, file: !3881, line: 19, baseType: !146, size: 32, offset: 192)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3902, file: !3881, line: 22, baseType: !3912, size: 640, offset: 224)
!3912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 640, elements: !3913)
!3913 = !{!3914}
!3914 = !DISubrange(count: 20)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3902, file: !3881, line: 25, baseType: !146, size: 32, offset: 864)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3899, file: !3881, line: 350, baseType: !3917, size: 4096, align: 128)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3881, line: 34, size: 4096, align: 128, elements: !3918)
!3918 = !{!3919, !3920, !3921, !3922, !3923, !3938, !3939, !3940, !3942, !3944, !3948}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3917, file: !3881, line: 35, baseType: !118, size: 16)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3917, file: !3881, line: 36, baseType: !118, size: 16, offset: 16)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3917, file: !3881, line: 37, baseType: !118, size: 16, offset: 32)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3917, file: !3881, line: 38, baseType: !118, size: 16, offset: 48)
!3923 = !DIDerivedType(tag: DW_TAG_member, scope: !3917, file: !3881, line: 39, baseType: !3924, size: 128, offset: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3917, file: !3881, line: 39, size: 128, elements: !3925)
!3925 = !{!3926, !3931}
!3926 = !DIDerivedType(tag: DW_TAG_member, scope: !3924, file: !3881, line: 40, baseType: !3927, size: 128)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3924, file: !3881, line: 40, size: 128, elements: !3928)
!3928 = !{!3929, !3930}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3927, file: !3881, line: 41, baseType: !209, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3927, file: !3881, line: 42, baseType: !209, size: 64, offset: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, scope: !3924, file: !3881, line: 44, baseType: !3932, size: 128)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3924, file: !3881, line: 44, size: 128, elements: !3933)
!3933 = !{!3934, !3935, !3936, !3937}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3932, file: !3881, line: 45, baseType: !146, size: 32)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3932, file: !3881, line: 46, baseType: !146, size: 32, offset: 32)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3932, file: !3881, line: 47, baseType: !146, size: 32, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3932, file: !3881, line: 48, baseType: !146, size: 32, offset: 96)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3917, file: !3881, line: 51, baseType: !146, size: 32, offset: 192)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3917, file: !3881, line: 52, baseType: !146, size: 32, offset: 224)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3917, file: !3881, line: 55, baseType: !3941, size: 1024, offset: 256)
!3941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 1024, elements: !2702)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3917, file: !3881, line: 58, baseType: !3943, size: 2048, offset: 1280)
!3943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 2048, elements: !1216)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3917, file: !3881, line: 60, baseType: !3945, size: 384, offset: 3328)
!3945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 384, elements: !3946)
!3946 = !{!3947}
!3947 = !DISubrange(count: 12)
!3948 = !DIDerivedType(tag: DW_TAG_member, scope: !3917, file: !3881, line: 62, baseType: !3949, size: 384, offset: 3712)
!3949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3917, file: !3881, line: 62, size: 384, elements: !3950)
!3950 = !{!3951, !3952}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3949, file: !3881, line: 63, baseType: !3945, size: 384)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3949, file: !3881, line: 64, baseType: !3945, size: 384)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3899, file: !3881, line: 351, baseType: !3954, size: 1088)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3881, line: 79, size: 1088, elements: !3955)
!3955 = !{!3956, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3968, !3969, !3970, !4029}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3954, file: !3881, line: 80, baseType: !146, size: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3954, file: !3881, line: 81, baseType: !146, size: 32, offset: 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3954, file: !3881, line: 82, baseType: !146, size: 32, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3954, file: !3881, line: 83, baseType: !146, size: 32, offset: 96)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3954, file: !3881, line: 84, baseType: !146, size: 32, offset: 128)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3954, file: !3881, line: 85, baseType: !146, size: 32, offset: 160)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3954, file: !3881, line: 86, baseType: !146, size: 32, offset: 192)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3954, file: !3881, line: 88, baseType: !3912, size: 640, offset: 224)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3954, file: !3881, line: 89, baseType: !324, size: 8, offset: 864)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3954, file: !3881, line: 90, baseType: !324, size: 8, offset: 872)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3954, file: !3881, line: 91, baseType: !324, size: 8, offset: 880)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3954, file: !3881, line: 92, baseType: !324, size: 8, offset: 888)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3954, file: !3881, line: 93, baseType: !324, size: 8, offset: 896)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3954, file: !3881, line: 94, baseType: !324, size: 8, offset: 904)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3954, file: !3881, line: 95, baseType: !3971, size: 64, offset: 960)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3973, line: 11, size: 128, elements: !3974)
!3973 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3974 = !{!3975, !3976}
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3972, file: !3973, line: 12, baseType: !1029, size: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3972, file: !3973, line: 13, baseType: !3977, size: 64, offset: 64)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3979, line: 103, size: 1344, elements: !3980)
!3979 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3980 = !{!3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !4009, !4010, !4011}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3978, file: !3979, line: 109, baseType: !110, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3978, file: !3979, line: 110, baseType: !110, size: 64, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3978, file: !3979, line: 111, baseType: !110, size: 64, offset: 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3978, file: !3979, line: 112, baseType: !110, size: 64, offset: 192)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3978, file: !3979, line: 113, baseType: !110, size: 64, offset: 256)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3978, file: !3979, line: 114, baseType: !110, size: 64, offset: 320)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3978, file: !3979, line: 117, baseType: !110, size: 64, offset: 384)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3978, file: !3979, line: 118, baseType: !110, size: 64, offset: 448)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3978, file: !3979, line: 119, baseType: !110, size: 64, offset: 512)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3978, file: !3979, line: 120, baseType: !110, size: 64, offset: 576)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3978, file: !3979, line: 121, baseType: !110, size: 64, offset: 640)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3978, file: !3979, line: 122, baseType: !110, size: 64, offset: 704)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3978, file: !3979, line: 123, baseType: !110, size: 64, offset: 768)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3978, file: !3979, line: 124, baseType: !110, size: 64, offset: 832)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3978, file: !3979, line: 125, baseType: !110, size: 64, offset: 896)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3978, file: !3979, line: 139, baseType: !110, size: 64, offset: 960)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3978, file: !3979, line: 142, baseType: !110, size: 64, offset: 1024)
!3998 = !DIDerivedType(tag: DW_TAG_member, scope: !3978, file: !3979, line: 144, baseType: !3999, size: 64, offset: 1088)
!3999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3978, file: !3979, line: 144, size: 64, elements: !4000)
!4000 = !{!4001, !4002, !4003}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3999, file: !3979, line: 146, baseType: !118, size: 16)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3999, file: !3979, line: 148, baseType: !209, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3999, file: !3979, line: 150, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3979, line: 59, size: 64, elements: !4005)
!4005 = !{!4006, !4007, !4008}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4004, file: !3979, line: 61, baseType: !209, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4004, file: !3979, line: 63, baseType: !209, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4004, file: !3979, line: 65, baseType: !209, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3978, file: !3979, line: 153, baseType: !110, size: 64, offset: 1152)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3978, file: !3979, line: 154, baseType: !110, size: 64, offset: 1216)
!4011 = !DIDerivedType(tag: DW_TAG_member, scope: !3978, file: !3979, line: 156, baseType: !4012, size: 64, offset: 1280)
!4012 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3978, file: !3979, line: 156, size: 64, elements: !4013)
!4013 = !{!4014, !4015, !4016}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4012, file: !3979, line: 158, baseType: !118, size: 16)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4012, file: !3979, line: 160, baseType: !209, size: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4012, file: !3979, line: 162, baseType: !4017, size: 64)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3979, line: 69, size: 64, elements: !4018)
!4018 = !{!4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4017, file: !3979, line: 71, baseType: !209, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4017, file: !3979, line: 73, baseType: !209, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4017, file: !3979, line: 75, baseType: !209, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4017, file: !3979, line: 77, baseType: !209, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4017, file: !3979, line: 80, baseType: !209, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4017, file: !3979, line: 83, baseType: !209, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4017, file: !3979, line: 86, baseType: !209, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4017, file: !3979, line: 88, baseType: !209, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4017, file: !3979, line: 93, baseType: !209, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4017, file: !3979, line: 100, baseType: !209, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3954, file: !3881, line: 96, baseType: !146, size: 32, offset: 1024)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3899, file: !3881, line: 352, baseType: !4031, size: 4608, align: 512)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3881, line: 333, size: 4608, align: 512, elements: !4032)
!4032 = !{!4033, !4034, !4041}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4031, file: !3881, line: 334, baseType: !3917, size: 4096, align: 128)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4031, file: !3881, line: 335, baseType: !4035, size: 512, offset: 4096)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3881, line: 312, size: 512, elements: !4036)
!4036 = !{!4037, !4038, !4039}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4035, file: !3881, line: 313, baseType: !209, size: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4035, file: !3881, line: 314, baseType: !209, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4035, file: !3881, line: 315, baseType: !4040, size: 384, offset: 128)
!4040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 384, elements: !742)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4031, file: !3881, line: 336, baseType: !4042, offset: 4608)
!4042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, elements: !632)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3899, file: !3881, line: 353, baseType: !4044, size: 32768)
!4044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 32768, elements: !4045)
!4045 = !{!4046}
!4046 = !DISubrange(count: 4096)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3880, file: !3881, line: 484, baseType: !3886, size: 64, offset: 192)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3880, file: !3881, line: 491, baseType: !4049, size: 128, offset: 256)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3881, line: 404, size: 128, elements: !4050)
!4050 = !{!4051, !4052, !4053}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4049, file: !3881, line: 424, baseType: !209, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4049, file: !3881, line: 432, baseType: !7, size: 32, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4049, file: !3881, line: 440, baseType: !7, size: 32, offset: 96)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3880, file: !3881, line: 498, baseType: !4049, size: 128, offset: 384)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3880, file: !3881, line: 508, baseType: !3887, size: 33280, align: 512, offset: 512)
!4056 = !{!0, !4057, !4128, !4133, !4138, !4140, !4145, !4150, !4161, !4163}
!4057 = !DIGlobalVariableExpression(var: !4058, expr: !DIExpression())
!4058 = distinct !DIGlobalVariable(name: "_rs", scope: !4059, file: !3, line: 511, type: !830, isLocal: true, isDefinition: true)
!4059 = distinct !DISubprogram(name: "get_regno", scope: !3, file: !3, line: 447, type: !4060, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4109)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!109, !4062, !11}
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn", file: !4064, line: 68, size: 896, elements: !4065)
!4064 = !DIFile(filename: "./arch/x86/include/asm/insn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ca1df7461e09b68408eb75c2e122471d")
!4065 = !{!4066, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4092, !4097, !4098, !4100, !4101, !4102, !4103, !4104, !4107, !4108}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !4063, file: !4064, line: 69, baseType: !4067, size: 64)
!4067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "insn_field", file: !4064, line: 16, size: 64, elements: !4068)
!4068 = !{!4069, !4078, !4079}
!4069 = !DIDerivedType(tag: DW_TAG_member, scope: !4067, file: !4064, line: 17, baseType: !4070, size: 32)
!4070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4067, file: !4064, line: 17, size: 32, elements: !4071)
!4071 = !{!4072, !4075}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4070, file: !4064, line: 18, baseType: !4073, size: 32)
!4073 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_value_t", file: !4074, line: 13, baseType: !109)
!4074 = !DIFile(filename: "./arch/x86/include/asm/inat_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cebd64027eadc0d452590e3ac4fca7d6")
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !4070, file: !4064, line: 19, baseType: !4076, size: 32)
!4076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4077, size: 32, elements: !613)
!4077 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_byte_t", file: !4074, line: 12, baseType: !326)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "got", scope: !4067, file: !4064, line: 22, baseType: !326, size: 8, offset: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "nbytes", scope: !4067, file: !4064, line: 23, baseType: !326, size: 8, offset: 40)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "rex_prefix", scope: !4063, file: !4064, line: 73, baseType: !4067, size: 64, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "vex_prefix", scope: !4063, file: !4064, line: 74, baseType: !4067, size: 64, offset: 128)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !4063, file: !4064, line: 75, baseType: !4067, size: 64, offset: 192)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "modrm", scope: !4063, file: !4064, line: 80, baseType: !4067, size: 64, offset: 256)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "sib", scope: !4063, file: !4064, line: 81, baseType: !4067, size: 64, offset: 320)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "displacement", scope: !4063, file: !4064, line: 82, baseType: !4067, size: 64, offset: 384)
!4086 = !DIDerivedType(tag: DW_TAG_member, scope: !4063, file: !4064, line: 83, baseType: !4087, size: 64, offset: 448)
!4087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4063, file: !4064, line: 83, size: 64, elements: !4088)
!4088 = !{!4089, !4090, !4091}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "immediate", scope: !4087, file: !4064, line: 84, baseType: !4067, size: 64)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "moffset1", scope: !4087, file: !4064, line: 85, baseType: !4067, size: 64)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "immediate1", scope: !4087, file: !4064, line: 86, baseType: !4067, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, scope: !4063, file: !4064, line: 88, baseType: !4093, size: 64, offset: 512)
!4093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4063, file: !4064, line: 88, size: 64, elements: !4094)
!4094 = !{!4095, !4096}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "moffset2", scope: !4093, file: !4064, line: 89, baseType: !4067, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "immediate2", scope: !4093, file: !4064, line: 90, baseType: !4067, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "emulate_prefix_size", scope: !4063, file: !4064, line: 93, baseType: !109, size: 32, offset: 576)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4063, file: !4064, line: 94, baseType: !4099, size: 32, offset: 608)
!4099 = !DIDerivedType(tag: DW_TAG_typedef, name: "insn_attr_t", file: !4074, line: 11, baseType: !7)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "opnd_bytes", scope: !4063, file: !4064, line: 95, baseType: !326, size: 8, offset: 640)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "addr_bytes", scope: !4063, file: !4064, line: 96, baseType: !326, size: 8, offset: 648)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4063, file: !4064, line: 97, baseType: !326, size: 8, offset: 656)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "x86_64", scope: !4063, file: !4064, line: 98, baseType: !326, size: 8, offset: 664)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "kaddr", scope: !4063, file: !4064, line: 100, baseType: !4105, size: 64, offset: 704)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4077)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "end_kaddr", scope: !4063, file: !4064, line: 101, baseType: !4105, size: 64, offset: 768)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "next_byte", scope: !4063, file: !4064, line: 102, baseType: !4105, size: 64, offset: 832)
!4109 = !{!4110, !4111, !4112, !4113, !4114, !4118, !4121, !4122, !4124}
!4110 = !DILocalVariable(name: "insn", arg: 1, scope: !4059, file: !3, line: 447, type: !4062)
!4111 = !DILocalVariable(name: "type", arg: 2, scope: !4059, file: !3, line: 447, type: !11)
!4112 = !DILocalVariable(name: "nr_registers", scope: !4059, file: !3, line: 449, type: !109)
!4113 = !DILocalVariable(name: "regno", scope: !4059, file: !3, line: 450, type: !109)
!4114 = !DILocalVariable(name: "__ret_do_once", scope: !4115, file: !3, line: 516, type: !755)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 516, column: 3)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 515, column: 29)
!4117 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 515, column: 6)
!4118 = !DILocalVariable(name: "__ret_cond", scope: !4119, file: !3, line: 516, type: !755)
!4119 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 516, column: 3)
!4120 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 516, column: 3)
!4121 = !DILocalVariable(name: "__ret_once", scope: !4119, file: !3, line: 516, type: !755)
!4122 = !DILocalVariable(name: "__ret_warn_on", scope: !4123, file: !3, line: 516, type: !109)
!4123 = distinct !DILexicalBlock(scope: !4120, file: !3, line: 516, column: 3)
!4124 = !DILocalVariable(name: "__flags", scope: !4125, file: !3, line: 516, type: !109)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 516, column: 3)
!4126 = distinct !DILexicalBlock(scope: !4127, file: !3, line: 516, column: 3)
!4127 = distinct !DILexicalBlock(scope: !4123, file: !3, line: 516, column: 3)
!4128 = !DIGlobalVariableExpression(var: !4129, expr: !DIExpression())
!4129 = distinct !DIGlobalVariable(scope: null, file: !3, line: 511, type: !4130, isLocal: true, isDefinition: true)
!4130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, size: 80, elements: !4131)
!4131 = !{!4132}
!4132 = !DISubrange(count: 10)
!4133 = !DIGlobalVariableExpression(var: !4134, expr: !DIExpression())
!4134 = distinct !DIGlobalVariable(scope: null, file: !3, line: 511, type: !4135, isLocal: true, isDefinition: true)
!4135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 280, elements: !4136)
!4136 = !{!4137}
!4137 = !DISubrange(count: 35)
!4138 = !DIGlobalVariableExpression(var: !4139, expr: !DIExpression())
!4139 = distinct !DIGlobalVariable(name: "__already_done", scope: !4059, file: !3, line: 516, type: !755, isLocal: true, isDefinition: true)
!4140 = !DIGlobalVariableExpression(var: !4141, expr: !DIExpression())
!4141 = distinct !DIGlobalVariable(scope: null, file: !3, line: 516, type: !4142, isLocal: true, isDefinition: true)
!4142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 384, elements: !4143)
!4143 = !{!4144}
!4144 = !DISubrange(count: 48)
!4145 = !DIGlobalVariableExpression(var: !4146, expr: !DIExpression())
!4146 = distinct !DIGlobalVariable(scope: null, file: !3, line: 516, type: !4147, isLocal: true, isDefinition: true)
!4147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 200, elements: !4148)
!4148 = !{!4149}
!4149 = !DISubrange(count: 25)
!4150 = !DIGlobalVariableExpression(var: !4151, expr: !DIExpression())
!4151 = distinct !DIGlobalVariable(name: "regoff1", scope: !4152, file: !3, line: 558, type: !4160, isLocal: true, isDefinition: true)
!4152 = distinct !DISubprogram(name: "get_reg_offset_16", scope: !3, file: !3, line: 550, type: !4153, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4155)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!109, !4062, !3977, !2096, !2096}
!4155 = !{!4156, !4157, !4158, !4159}
!4156 = !DILocalVariable(name: "insn", arg: 1, scope: !4152, file: !3, line: 550, type: !4062)
!4157 = !DILocalVariable(name: "regs", arg: 2, scope: !4152, file: !3, line: 550, type: !3977)
!4158 = !DILocalVariable(name: "offs1", arg: 3, scope: !4152, file: !3, line: 551, type: !2096)
!4159 = !DILocalVariable(name: "offs2", arg: 4, scope: !4152, file: !3, line: 551, type: !2096)
!4160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2162, size: 256, elements: !351)
!4161 = !DIGlobalVariableExpression(var: !4162, expr: !DIExpression())
!4162 = distinct !DIGlobalVariable(name: "regoff2", scope: !4152, file: !3, line: 569, type: !4160, isLocal: true, isDefinition: true)
!4163 = !DIGlobalVariableExpression(var: !4164, expr: !DIExpression())
!4164 = distinct !DIGlobalVariable(scope: null, file: !4165, line: 249, type: !4166, isLocal: true, isDefinition: true)
!4165 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, size: 224, elements: !4167)
!4167 = !{!4168}
!4168 = !DISubrange(count: 28)
!4169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2162, size: 512, elements: !2711)
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
!4180 = distinct !DISubprogram(name: "insn_has_rep_prefix", scope: !3, file: !3, line: 62, type: !4181, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4183)
!4181 = !DISubroutineType(types: !4182)
!4182 = !{!755, !4062}
!4183 = !{!4184, !4185, !4186}
!4184 = !DILocalVariable(name: "insn", arg: 1, scope: !4180, file: !3, line: 62, type: !4062)
!4185 = !DILocalVariable(name: "p", scope: !4180, file: !3, line: 64, type: !4077)
!4186 = !DILocalVariable(name: "i", scope: !4180, file: !3, line: 65, type: !109)
!4187 = !DILocation(line: 62, column: 39, scope: !4180)
!4188 = !DILocation(line: 64, column: 2, scope: !4180)
!4189 = !DILocation(line: 64, column: 14, scope: !4180)
!4190 = !DILocation(line: 65, column: 2, scope: !4180)
!4191 = !DILocation(line: 65, column: 6, scope: !4180)
!4192 = !DILocation(line: 67, column: 20, scope: !4180)
!4193 = !DILocation(line: 67, column: 2, scope: !4180)
!4194 = !DILocation(line: 69, column: 2, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4180, file: !3, line: 69, column: 2)
!4196 = !DILocation(line: 69, column: 2, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4195, file: !3, line: 69, column: 2)
!4198 = !DILocation(line: 0, scope: !4197)
!4199 = !DILocation(line: 70, column: 7, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 70, column: 7)
!4201 = distinct !DILexicalBlock(scope: !4197, file: !3, line: 69, column: 35)
!4202 = !DILocation(line: 70, column: 9, scope: !4200)
!4203 = !DILocation(line: 70, column: 17, scope: !4200)
!4204 = !DILocation(line: 70, column: 20, scope: !4200)
!4205 = !DILocation(line: 70, column: 22, scope: !4200)
!4206 = !DILocation(line: 70, column: 7, scope: !4201)
!4207 = !DILocation(line: 71, column: 4, scope: !4200)
!4208 = !DILocation(line: 72, column: 2, scope: !4201)
!4209 = distinct !{!4209, !4194, !4210, !4211, !4212}
!4210 = !DILocation(line: 72, column: 2, scope: !4195)
!4211 = !{!"llvm.loop.mustprogress"}
!4212 = !{!"llvm.loop.unroll.disable"}
!4213 = !DILocation(line: 74, column: 2, scope: !4180)
!4214 = !DILocation(line: 75, column: 1, scope: !4180)
!4215 = !DISubprogram(name: "insn_get_prefixes", scope: !4064, file: !4064, line: 135, type: !4216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4216 = !DISubroutineType(types: !4217)
!4217 = !{!109, !4062}
!4218 = distinct !DISubprogram(name: "pt_regs_offset", scope: !3, file: !3, line: 440, type: !4219, scopeLine: 441, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4221)
!4219 = !DISubroutineType(types: !4220)
!4220 = !{!109, !3977, !109}
!4221 = !{!4222, !4223}
!4222 = !DILocalVariable(name: "regs", arg: 1, scope: !4218, file: !3, line: 440, type: !3977)
!4223 = !DILocalVariable(name: "regno", arg: 2, scope: !4218, file: !3, line: 440, type: !109)
!4224 = !DILocation(line: 440, column: 36, scope: !4218)
!4225 = !DILocation(line: 440, column: 46, scope: !4218)
!4226 = !DILocation(line: 442, column: 16, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4218, file: !3, line: 442, column: 6)
!4228 = !DILocation(line: 442, column: 6, scope: !4227)
!4229 = !DILocation(line: 442, column: 22, scope: !4227)
!4230 = !DILocation(line: 442, column: 6, scope: !4218)
!4231 = !DILocation(line: 443, column: 20, scope: !4227)
!4232 = !DILocation(line: 443, column: 10, scope: !4227)
!4233 = !DILocation(line: 443, column: 3, scope: !4227)
!4234 = !DILocation(line: 444, column: 2, scope: !4218)
!4235 = !DILocation(line: 445, column: 1, scope: !4218)
!4236 = distinct !DISubprogram(name: "insn_get_seg_base", scope: !3, file: !3, line: 681, type: !4237, scopeLine: 682, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4239)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!110, !3977, !109}
!4239 = !{!4240, !4241, !4242, !4243, !4244}
!4240 = !DILocalVariable(name: "regs", arg: 1, scope: !4236, file: !3, line: 681, type: !3977)
!4241 = !DILocalVariable(name: "seg_reg_idx", arg: 2, scope: !4236, file: !3, line: 681, type: !109)
!4242 = !DILocalVariable(name: "desc", scope: !4236, file: !3, line: 683, type: !114)
!4243 = !DILocalVariable(name: "sel", scope: !4236, file: !3, line: 684, type: !723)
!4244 = !DILocalVariable(name: "base", scope: !4245, file: !3, line: 702, type: !110)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !3, line: 697, column: 28)
!4246 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 697, column: 6)
!4247 = !DILocation(line: 681, column: 49, scope: !4236)
!4248 = !DILocation(line: 681, column: 59, scope: !4236)
!4249 = !DILocation(line: 683, column: 2, scope: !4236)
!4250 = !DILocation(line: 683, column: 21, scope: !4236)
!4251 = !DILocation(line: 684, column: 2, scope: !4236)
!4252 = !DILocation(line: 684, column: 8, scope: !4236)
!4253 = !DILocation(line: 686, column: 29, scope: !4236)
!4254 = !DILocation(line: 686, column: 35, scope: !4236)
!4255 = !DILocation(line: 686, column: 8, scope: !4236)
!4256 = !DILocation(line: 686, column: 6, scope: !4236)
!4257 = !DILocation(line: 687, column: 6, scope: !4258)
!4258 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 687, column: 6)
!4259 = !DILocation(line: 687, column: 10, scope: !4258)
!4260 = !DILocation(line: 687, column: 6, scope: !4236)
!4261 = !DILocation(line: 688, column: 3, scope: !4258)
!4262 = !DILocation(line: 690, column: 17, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 690, column: 6)
!4264 = !DILocation(line: 690, column: 6, scope: !4263)
!4265 = !DILocation(line: 690, column: 6, scope: !4236)
!4266 = !DILocation(line: 695, column: 26, scope: !4263)
!4267 = !DILocation(line: 695, column: 30, scope: !4263)
!4268 = !DILocation(line: 695, column: 10, scope: !4263)
!4269 = !DILocation(line: 695, column: 3, scope: !4263)
!4270 = !DILocation(line: 697, column: 21, scope: !4246)
!4271 = !DILocation(line: 697, column: 6, scope: !4246)
!4272 = !DILocation(line: 697, column: 6, scope: !4236)
!4273 = !DILocation(line: 702, column: 3, scope: !4245)
!4274 = !DILocation(line: 702, column: 17, scope: !4245)
!4275 = !DILocation(line: 704, column: 7, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4245, file: !3, line: 704, column: 7)
!4277 = !DILocation(line: 704, column: 19, scope: !4276)
!4278 = !DILocation(line: 704, column: 7, scope: !4245)
!4279 = !DILocation(line: 705, column: 4, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 704, column: 39)
!4281 = !DILocation(line: 706, column: 3, scope: !4280)
!4282 = !DILocation(line: 706, column: 14, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 706, column: 14)
!4284 = !DILocation(line: 706, column: 26, scope: !4283)
!4285 = !DILocation(line: 706, column: 14, scope: !4276)
!4286 = !DILocation(line: 711, column: 18, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4288, file: !3, line: 711, column: 8)
!4288 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 706, column: 46)
!4289 = !DILocation(line: 711, column: 8, scope: !4287)
!4290 = !DILocation(line: 711, column: 8, scope: !4288)
!4291 = !DILocation(line: 712, column: 5, scope: !4287)
!4292 = !DILocation(line: 714, column: 5, scope: !4287)
!4293 = !DILocation(line: 715, column: 3, scope: !4288)
!4294 = !DILocation(line: 716, column: 9, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 715, column: 10)
!4296 = !DILocation(line: 718, column: 10, scope: !4245)
!4297 = !DILocation(line: 718, column: 3, scope: !4245)
!4298 = !DILocation(line: 719, column: 2, scope: !4246)
!4299 = !DILocation(line: 722, column: 7, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 722, column: 6)
!4301 = !DILocation(line: 722, column: 6, scope: !4236)
!4302 = !DILocation(line: 723, column: 3, scope: !4300)
!4303 = !DILocation(line: 725, column: 23, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4236, file: !3, line: 725, column: 6)
!4305 = !DILocation(line: 725, column: 7, scope: !4304)
!4306 = !DILocation(line: 725, column: 6, scope: !4236)
!4307 = !DILocation(line: 726, column: 3, scope: !4304)
!4308 = !DILocation(line: 728, column: 9, scope: !4236)
!4309 = !DILocation(line: 728, column: 2, scope: !4236)
!4310 = !DILocation(line: 729, column: 1, scope: !4236)
!4311 = distinct !DISubprogram(name: "get_segment_selector", scope: !3, file: !3, line: 343, type: !4312, scopeLine: 344, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4314)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!723, !3977, !109}
!4314 = !{!4315, !4316, !4317}
!4315 = !DILocalVariable(name: "regs", arg: 1, scope: !4311, file: !3, line: 343, type: !3977)
!4316 = !DILocalVariable(name: "seg_reg_idx", arg: 2, scope: !4311, file: !3, line: 343, type: !109)
!4317 = !DILocalVariable(name: "sel", scope: !4311, file: !3, line: 345, type: !112)
!4318 = !DILocation(line: 343, column: 51, scope: !4311)
!4319 = !DILocation(line: 343, column: 61, scope: !4311)
!4320 = !DILocation(line: 345, column: 2, scope: !4311)
!4321 = !DILocation(line: 345, column: 17, scope: !4311)
!4322 = !DILocation(line: 348, column: 10, scope: !4311)
!4323 = !DILocation(line: 348, column: 2, scope: !4311)
!4324 = !DILocation(line: 350, column: 3, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 348, column: 23)
!4326 = !DILocation(line: 352, column: 27, scope: !4325)
!4327 = !DILocation(line: 352, column: 33, scope: !4325)
!4328 = !DILocation(line: 352, column: 36, scope: !4325)
!4329 = !DILocation(line: 352, column: 10, scope: !4325)
!4330 = !DILocation(line: 352, column: 3, scope: !4325)
!4331 = !DILocation(line: 354, column: 27, scope: !4325)
!4332 = !DILocation(line: 354, column: 33, scope: !4325)
!4333 = !DILocation(line: 354, column: 36, scope: !4325)
!4334 = !DILocation(line: 354, column: 10, scope: !4325)
!4335 = !DILocation(line: 354, column: 3, scope: !4325)
!4336 = !DILocation(line: 356, column: 3, scope: !4325)
!4337 = !{i64 2154816856}
!4338 = !DILocation(line: 357, column: 10, scope: !4325)
!4339 = !DILocation(line: 357, column: 3, scope: !4325)
!4340 = !DILocation(line: 359, column: 3, scope: !4325)
!4341 = !{i64 2154816918}
!4342 = !DILocation(line: 360, column: 10, scope: !4325)
!4343 = !DILocation(line: 360, column: 3, scope: !4325)
!4344 = !DILocation(line: 362, column: 3, scope: !4325)
!4345 = !{i64 2154816980}
!4346 = !DILocation(line: 363, column: 10, scope: !4325)
!4347 = !DILocation(line: 363, column: 3, scope: !4325)
!4348 = !DILocation(line: 365, column: 3, scope: !4325)
!4349 = !{i64 2154817042}
!4350 = !DILocation(line: 366, column: 10, scope: !4325)
!4351 = !DILocation(line: 366, column: 3, scope: !4325)
!4352 = !DILocation(line: 368, column: 3, scope: !4325)
!4353 = !DILocation(line: 412, column: 1, scope: !4311)
!4354 = distinct !DISubprogram(name: "v8086_mode", scope: !3979, file: !3979, line: 218, type: !4355, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4357)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{!109, !3977}
!4357 = !{!4358}
!4358 = !DILocalVariable(name: "regs", arg: 1, scope: !4354, file: !3979, line: 218, type: !3977)
!4359 = !DILocation(line: 218, column: 55, scope: !4354)
!4360 = !DILocation(line: 223, column: 2, scope: !4354)
!4361 = distinct !DISubprogram(name: "any_64bit_mode", scope: !3979, file: !3979, line: 249, type: !4362, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4364)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!755, !3977}
!4364 = !{!4365}
!4365 = !DILocalVariable(name: "regs", arg: 1, scope: !4361, file: !3979, line: 249, type: !3977)
!4366 = !DILocation(line: 249, column: 51, scope: !4361)
!4367 = !DILocation(line: 252, column: 20, scope: !4361)
!4368 = !DILocation(line: 252, column: 10, scope: !4361)
!4369 = !DILocation(line: 252, column: 26, scope: !4361)
!4370 = !DILocation(line: 252, column: 45, scope: !4361)
!4371 = !DILocation(line: 252, column: 29, scope: !4361)
!4372 = !DILocation(line: 252, column: 2, scope: !4361)
!4373 = distinct !DISubprogram(name: "native_read_msr", scope: !4374, file: !4374, line: 114, type: !4375, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4377)
!4374 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!211, !7}
!4377 = !{!4378, !4379}
!4378 = !DILocalVariable(name: "msr", arg: 1, scope: !4373, file: !4374, line: 114, type: !7)
!4379 = !DILocalVariable(name: "val", scope: !4373, file: !4374, line: 116, type: !211)
!4380 = !DILocation(line: 114, column: 63, scope: !4373)
!4381 = !DILocation(line: 116, column: 2, scope: !4373)
!4382 = !DILocation(line: 116, column: 21, scope: !4373)
!4383 = !DILocation(line: 118, column: 16, scope: !4373)
!4384 = !DILocation(line: 118, column: 8, scope: !4373)
!4385 = !DILocation(line: 118, column: 6, scope: !4373)
!4386 = !DILocation(line: 120, column: 6, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4373, file: !4374, line: 120, column: 6)
!4388 = !DILocation(line: 120, column: 6, scope: !4373)
!4389 = !DILocation(line: 121, column: 21, scope: !4387)
!4390 = !DILocation(line: 121, column: 26, scope: !4387)
!4391 = !DILocation(line: 121, column: 3, scope: !4387)
!4392 = !DILocation(line: 123, column: 9, scope: !4373)
!4393 = !DILocation(line: 124, column: 1, scope: !4373)
!4394 = !DILocation(line: 123, column: 2, scope: !4373)
!4395 = distinct !DISubprogram(name: "user_mode", scope: !3979, file: !3979, line: 209, type: !4355, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4396)
!4396 = !{!4397}
!4397 = !DILocalVariable(name: "regs", arg: 1, scope: !4395, file: !3979, line: 209, type: !3977)
!4398 = !DILocation(line: 209, column: 54, scope: !4395)
!4399 = !DILocation(line: 214, column: 12, scope: !4395)
!4400 = !DILocation(line: 214, column: 18, scope: !4395)
!4401 = !DILocation(line: 214, column: 21, scope: !4395)
!4402 = !DILocation(line: 214, column: 10, scope: !4395)
!4403 = !DILocation(line: 214, column: 9, scope: !4395)
!4404 = !DILocation(line: 214, column: 2, scope: !4395)
!4405 = distinct !DISubprogram(name: "get_desc", scope: !3, file: !3, line: 621, type: !4406, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4408)
!4406 = !DISubroutineType(types: !4407)
!4407 = !{!755, !113, !112}
!4408 = !{!4409, !4410, !4411, !4416, !4417, !4420}
!4409 = !DILocalVariable(name: "out", arg: 1, scope: !4405, file: !3, line: 621, type: !113)
!4410 = !DILocalVariable(name: "sel", arg: 2, scope: !4405, file: !3, line: 621, type: !112)
!4411 = !DILocalVariable(name: "gdt_desc", scope: !4405, file: !3, line: 623, type: !4412)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_ptr", file: !115, line: 112, size: 80, elements: !4413)
!4413 = !{!4414, !4415}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4412, file: !115, line: 113, baseType: !112, size: 16)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !4412, file: !115, line: 114, baseType: !110, size: 64, offset: 16)
!4416 = !DILocalVariable(name: "desc_base", scope: !4405, file: !3, line: 624, type: !110)
!4417 = !DILocalVariable(name: "success", scope: !4418, file: !3, line: 628, type: !755)
!4418 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 627, column: 46)
!4419 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 627, column: 6)
!4420 = !DILocalVariable(name: "ldt", scope: !4418, file: !3, line: 629, type: !3122)
!4421 = !DILocation(line: 621, column: 42, scope: !4405)
!4422 = !DILocation(line: 621, column: 62, scope: !4405)
!4423 = !DILocation(line: 623, column: 2, scope: !4405)
!4424 = !DILocation(line: 623, column: 18, scope: !4405)
!4425 = !DILocation(line: 624, column: 2, scope: !4405)
!4426 = !DILocation(line: 624, column: 16, scope: !4405)
!4427 = !DILocation(line: 627, column: 7, scope: !4419)
!4428 = !DILocation(line: 627, column: 11, scope: !4419)
!4429 = !DILocation(line: 627, column: 30, scope: !4419)
!4430 = !DILocation(line: 627, column: 6, scope: !4405)
!4431 = !DILocation(line: 628, column: 3, scope: !4418)
!4432 = !DILocation(line: 628, column: 8, scope: !4418)
!4433 = !DILocation(line: 629, column: 3, scope: !4418)
!4434 = !DILocation(line: 629, column: 22, scope: !4418)
!4435 = !DILocation(line: 632, column: 7, scope: !4418)
!4436 = !DILocation(line: 634, column: 15, scope: !4418)
!4437 = !DILocation(line: 634, column: 24, scope: !4418)
!4438 = !DILocation(line: 634, column: 35, scope: !4418)
!4439 = !DILocation(line: 634, column: 43, scope: !4418)
!4440 = !DILocation(line: 634, column: 3, scope: !4418)
!4441 = !DILocation(line: 635, column: 9, scope: !4418)
!4442 = !DILocation(line: 635, column: 18, scope: !4418)
!4443 = !DILocation(line: 635, column: 29, scope: !4418)
!4444 = !DILocation(line: 635, column: 37, scope: !4418)
!4445 = !DILocation(line: 635, column: 7, scope: !4418)
!4446 = !DILocation(line: 636, column: 7, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4418, file: !3, line: 636, column: 7)
!4448 = !DILocation(line: 636, column: 11, scope: !4447)
!4449 = !DILocation(line: 636, column: 14, scope: !4447)
!4450 = !DILocation(line: 636, column: 20, scope: !4447)
!4451 = !DILocation(line: 636, column: 25, scope: !4447)
!4452 = !DILocation(line: 636, column: 18, scope: !4447)
!4453 = !DILocation(line: 636, column: 7, scope: !4418)
!4454 = !DILocation(line: 637, column: 5, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 636, column: 37)
!4456 = !DILocation(line: 637, column: 11, scope: !4455)
!4457 = !DILocation(line: 637, column: 16, scope: !4455)
!4458 = !DILocation(line: 637, column: 24, scope: !4455)
!4459 = !DILocation(line: 638, column: 12, scope: !4455)
!4460 = !DILocation(line: 639, column: 3, scope: !4455)
!4461 = !DILocation(line: 641, column: 17, scope: !4418)
!4462 = !DILocation(line: 641, column: 26, scope: !4418)
!4463 = !DILocation(line: 641, column: 37, scope: !4418)
!4464 = !DILocation(line: 641, column: 45, scope: !4418)
!4465 = !DILocation(line: 641, column: 3, scope: !4418)
!4466 = !DILocation(line: 643, column: 10, scope: !4418)
!4467 = !{i8 0, i8 2}
!4468 = !DILocation(line: 643, column: 3, scope: !4418)
!4469 = !DILocation(line: 644, column: 2, scope: !4419)
!4470 = !DILocation(line: 646, column: 2, scope: !4405)
!4471 = !DILocation(line: 655, column: 14, scope: !4405)
!4472 = !DILocation(line: 655, column: 18, scope: !4405)
!4473 = !DILocation(line: 655, column: 12, scope: !4405)
!4474 = !DILocation(line: 657, column: 6, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4405, file: !3, line: 657, column: 6)
!4476 = !DILocation(line: 657, column: 27, scope: !4475)
!4477 = !DILocation(line: 657, column: 18, scope: !4475)
!4478 = !DILocation(line: 657, column: 16, scope: !4475)
!4479 = !DILocation(line: 657, column: 6, scope: !4405)
!4480 = !DILocation(line: 658, column: 3, scope: !4475)
!4481 = !DILocation(line: 660, column: 3, scope: !4405)
!4482 = !DILocation(line: 660, column: 42, scope: !4405)
!4483 = !DILocation(line: 660, column: 52, scope: !4405)
!4484 = !DILocation(line: 660, column: 50, scope: !4405)
!4485 = !DILocation(line: 660, column: 10, scope: !4405)
!4486 = !DILocation(line: 660, column: 9, scope: !4405)
!4487 = !DILocation(line: 661, column: 2, scope: !4405)
!4488 = !DILocation(line: 662, column: 1, scope: !4405)
!4489 = distinct !DISubprogram(name: "get_desc_base", scope: !4490, file: !4490, line: 382, type: !4491, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4495)
!4490 = !DIFile(filename: "./arch/x86/include/asm/desc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ce8a8e19f799ab03a132d4ddc6cfe6d")
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!110, !4493}
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!4495 = !{!4496}
!4496 = !DILocalVariable(name: "desc", arg: 1, scope: !4489, file: !4490, line: 382, type: !4493)
!4497 = !DILocation(line: 382, column: 69, scope: !4489)
!4498 = !DILocation(line: 384, column: 20, scope: !4489)
!4499 = !DILocation(line: 384, column: 26, scope: !4489)
!4500 = !DILocation(line: 384, column: 36, scope: !4489)
!4501 = !DILocation(line: 384, column: 42, scope: !4489)
!4502 = !DILocation(line: 384, column: 35, scope: !4489)
!4503 = !DILocation(line: 384, column: 49, scope: !4489)
!4504 = !DILocation(line: 384, column: 32, scope: !4489)
!4505 = !DILocation(line: 384, column: 60, scope: !4489)
!4506 = !DILocation(line: 384, column: 66, scope: !4489)
!4507 = !DILocation(line: 384, column: 59, scope: !4489)
!4508 = !DILocation(line: 384, column: 73, scope: !4489)
!4509 = !DILocation(line: 384, column: 56, scope: !4489)
!4510 = !DILocation(line: 384, column: 9, scope: !4489)
!4511 = !DILocation(line: 384, column: 2, scope: !4489)
!4512 = distinct !DISubprogram(name: "insn_get_code_seg_params", scope: !3, file: !3, line: 796, type: !4355, scopeLine: 797, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4513)
!4513 = !{!4514, !4515, !4516}
!4514 = !DILocalVariable(name: "regs", arg: 1, scope: !4512, file: !3, line: 796, type: !3977)
!4515 = !DILocalVariable(name: "desc", scope: !4512, file: !3, line: 798, type: !114)
!4516 = !DILocalVariable(name: "sel", scope: !4512, file: !3, line: 799, type: !723)
!4517 = !DILocation(line: 796, column: 46, scope: !4512)
!4518 = !DILocation(line: 798, column: 2, scope: !4512)
!4519 = !DILocation(line: 798, column: 21, scope: !4512)
!4520 = !DILocation(line: 799, column: 2, scope: !4512)
!4521 = !DILocation(line: 799, column: 8, scope: !4512)
!4522 = !DILocation(line: 801, column: 17, scope: !4523)
!4523 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 801, column: 6)
!4524 = !DILocation(line: 801, column: 6, scope: !4523)
!4525 = !DILocation(line: 801, column: 6, scope: !4512)
!4526 = !DILocation(line: 803, column: 3, scope: !4523)
!4527 = !DILocation(line: 805, column: 29, scope: !4512)
!4528 = !DILocation(line: 805, column: 8, scope: !4512)
!4529 = !DILocation(line: 805, column: 6, scope: !4512)
!4530 = !DILocation(line: 806, column: 6, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 806, column: 6)
!4532 = !DILocation(line: 806, column: 10, scope: !4531)
!4533 = !DILocation(line: 806, column: 6, scope: !4512)
!4534 = !DILocation(line: 807, column: 10, scope: !4531)
!4535 = !DILocation(line: 807, column: 3, scope: !4531)
!4536 = !DILocation(line: 809, column: 23, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 809, column: 6)
!4538 = !DILocation(line: 809, column: 7, scope: !4537)
!4539 = !DILocation(line: 809, column: 6, scope: !4512)
!4540 = !DILocation(line: 810, column: 3, scope: !4537)
!4541 = !DILocation(line: 817, column: 13, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 817, column: 6)
!4543 = !DILocation(line: 817, column: 8, scope: !4542)
!4544 = !DILocation(line: 817, column: 18, scope: !4542)
!4545 = !DILocation(line: 817, column: 6, scope: !4512)
!4546 = !DILocation(line: 818, column: 3, scope: !4542)
!4547 = !DILocation(line: 820, column: 16, scope: !4512)
!4548 = !DILocation(line: 820, column: 11, scope: !4512)
!4549 = !DILocation(line: 820, column: 18, scope: !4512)
!4550 = !DILocation(line: 820, column: 31, scope: !4512)
!4551 = !DILocation(line: 820, column: 26, scope: !4512)
!4552 = !DILocation(line: 820, column: 24, scope: !4512)
!4553 = !DILocation(line: 820, column: 2, scope: !4512)
!4554 = !DILocation(line: 825, column: 3, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 820, column: 34)
!4556 = !DILocation(line: 830, column: 3, scope: !4555)
!4557 = !DILocation(line: 835, column: 3, scope: !4555)
!4558 = !DILocation(line: 839, column: 3, scope: !4555)
!4559 = !DILocation(line: 841, column: 1, scope: !4512)
!4560 = distinct !DISubprogram(name: "insn_get_modrm_rm_off", scope: !3, file: !3, line: 855, type: !4561, scopeLine: 856, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4563)
!4561 = !DISubroutineType(types: !4562)
!4562 = !{!109, !4062, !3977}
!4563 = !{!4564, !4565}
!4564 = !DILocalVariable(name: "insn", arg: 1, scope: !4560, file: !3, line: 855, type: !4062)
!4565 = !DILocalVariable(name: "regs", arg: 2, scope: !4560, file: !3, line: 855, type: !3977)
!4566 = !DILocation(line: 855, column: 40, scope: !4560)
!4567 = !DILocation(line: 855, column: 62, scope: !4560)
!4568 = !DILocation(line: 857, column: 24, scope: !4560)
!4569 = !DILocation(line: 857, column: 30, scope: !4560)
!4570 = !DILocation(line: 857, column: 9, scope: !4560)
!4571 = !DILocation(line: 857, column: 2, scope: !4560)
!4572 = distinct !DISubprogram(name: "get_reg_offset", scope: !3, file: !3, line: 522, type: !4573, scopeLine: 524, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4575)
!4573 = !DISubroutineType(types: !4574)
!4574 = !{!109, !4062, !3977, !11}
!4575 = !{!4576, !4577, !4578, !4579}
!4576 = !DILocalVariable(name: "insn", arg: 1, scope: !4572, file: !3, line: 522, type: !4062)
!4577 = !DILocalVariable(name: "regs", arg: 2, scope: !4572, file: !3, line: 522, type: !3977)
!4578 = !DILocalVariable(name: "type", arg: 3, scope: !4572, file: !3, line: 523, type: !11)
!4579 = !DILocalVariable(name: "regno", scope: !4572, file: !3, line: 525, type: !109)
!4580 = !DILocation(line: 522, column: 40, scope: !4572)
!4581 = !DILocation(line: 522, column: 62, scope: !4572)
!4582 = !DILocation(line: 523, column: 20, scope: !4572)
!4583 = !DILocation(line: 525, column: 2, scope: !4572)
!4584 = !DILocation(line: 525, column: 6, scope: !4572)
!4585 = !DILocation(line: 525, column: 24, scope: !4572)
!4586 = !DILocation(line: 525, column: 30, scope: !4572)
!4587 = !DILocation(line: 525, column: 14, scope: !4572)
!4588 = !DILocation(line: 527, column: 6, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 527, column: 6)
!4590 = !DILocation(line: 527, column: 12, scope: !4589)
!4591 = !DILocation(line: 527, column: 6, scope: !4572)
!4592 = !DILocation(line: 528, column: 10, scope: !4589)
!4593 = !DILocation(line: 528, column: 3, scope: !4589)
!4594 = !DILocation(line: 530, column: 24, scope: !4572)
!4595 = !DILocation(line: 530, column: 30, scope: !4572)
!4596 = !DILocation(line: 530, column: 9, scope: !4572)
!4597 = !DILocation(line: 530, column: 2, scope: !4572)
!4598 = !DILocation(line: 531, column: 1, scope: !4572)
!4599 = distinct !DISubprogram(name: "insn_get_modrm_reg_off", scope: !3, file: !3, line: 870, type: !4561, scopeLine: 871, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4600)
!4600 = !{!4601, !4602}
!4601 = !DILocalVariable(name: "insn", arg: 1, scope: !4599, file: !3, line: 870, type: !4062)
!4602 = !DILocalVariable(name: "regs", arg: 2, scope: !4599, file: !3, line: 870, type: !3977)
!4603 = !DILocation(line: 870, column: 41, scope: !4599)
!4604 = !DILocation(line: 870, column: 63, scope: !4599)
!4605 = !DILocation(line: 872, column: 24, scope: !4599)
!4606 = !DILocation(line: 872, column: 30, scope: !4599)
!4607 = !DILocation(line: 872, column: 9, scope: !4599)
!4608 = !DILocation(line: 872, column: 2, scope: !4599)
!4609 = distinct !DISubprogram(name: "insn_get_modrm_reg_ptr", scope: !3, file: !3, line: 885, type: !4610, scopeLine: 886, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4612)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!2305, !4062, !3977}
!4612 = !{!4613, !4614, !4615}
!4613 = !DILocalVariable(name: "insn", arg: 1, scope: !4609, file: !3, line: 885, type: !4062)
!4614 = !DILocalVariable(name: "regs", arg: 2, scope: !4609, file: !3, line: 885, type: !3977)
!4615 = !DILocalVariable(name: "offset", scope: !4609, file: !3, line: 887, type: !109)
!4616 = !DILocation(line: 885, column: 52, scope: !4609)
!4617 = !DILocation(line: 885, column: 74, scope: !4609)
!4618 = !DILocation(line: 887, column: 2, scope: !4609)
!4619 = !DILocation(line: 887, column: 6, scope: !4609)
!4620 = !DILocation(line: 889, column: 34, scope: !4609)
!4621 = !DILocation(line: 889, column: 40, scope: !4609)
!4622 = !DILocation(line: 889, column: 11, scope: !4609)
!4623 = !DILocation(line: 889, column: 9, scope: !4609)
!4624 = !DILocation(line: 890, column: 6, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4609, file: !3, line: 890, column: 6)
!4626 = !DILocation(line: 890, column: 13, scope: !4625)
!4627 = !DILocation(line: 890, column: 6, scope: !4609)
!4628 = !DILocation(line: 891, column: 3, scope: !4625)
!4629 = !DILocation(line: 892, column: 17, scope: !4609)
!4630 = !DILocation(line: 892, column: 24, scope: !4609)
!4631 = !DILocation(line: 892, column: 22, scope: !4609)
!4632 = !DILocation(line: 892, column: 2, scope: !4609)
!4633 = !DILocation(line: 893, column: 1, scope: !4609)
!4634 = distinct !DISubprogram(name: "insn_get_addr_ref", scope: !3, file: !3, line: 1445, type: !4635, scopeLine: 1446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4637)
!4635 = !DISubroutineType(types: !4636)
!4636 = !{!111, !4062, !3977}
!4637 = !{!4638, !4639}
!4638 = !DILocalVariable(name: "insn", arg: 1, scope: !4634, file: !3, line: 1445, type: !4062)
!4639 = !DILocalVariable(name: "regs", arg: 2, scope: !4634, file: !3, line: 1445, type: !3977)
!4640 = !DILocation(line: 1445, column: 45, scope: !4634)
!4641 = !DILocation(line: 1445, column: 67, scope: !4634)
!4642 = !DILocation(line: 1447, column: 7, scope: !4643)
!4643 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 1447, column: 6)
!4644 = !DILocation(line: 1447, column: 12, scope: !4643)
!4645 = !DILocation(line: 1447, column: 16, scope: !4643)
!4646 = !DILocation(line: 1447, column: 6, scope: !4634)
!4647 = !DILocation(line: 1448, column: 3, scope: !4643)
!4648 = !DILocation(line: 1450, column: 22, scope: !4649)
!4649 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 1450, column: 6)
!4650 = !DILocation(line: 1450, column: 6, scope: !4649)
!4651 = !DILocation(line: 1450, column: 6, scope: !4634)
!4652 = !DILocation(line: 1451, column: 3, scope: !4649)
!4653 = !DILocation(line: 1453, column: 10, scope: !4634)
!4654 = !DILocation(line: 1453, column: 16, scope: !4634)
!4655 = !DILocation(line: 1453, column: 2, scope: !4634)
!4656 = !DILocation(line: 1455, column: 26, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4634, file: !3, line: 1453, column: 28)
!4658 = !DILocation(line: 1455, column: 32, scope: !4657)
!4659 = !DILocation(line: 1455, column: 10, scope: !4657)
!4660 = !DILocation(line: 1455, column: 3, scope: !4657)
!4661 = !DILocation(line: 1457, column: 26, scope: !4657)
!4662 = !DILocation(line: 1457, column: 32, scope: !4657)
!4663 = !DILocation(line: 1457, column: 10, scope: !4657)
!4664 = !DILocation(line: 1457, column: 3, scope: !4657)
!4665 = !DILocation(line: 1459, column: 26, scope: !4657)
!4666 = !DILocation(line: 1459, column: 32, scope: !4657)
!4667 = !DILocation(line: 1459, column: 10, scope: !4657)
!4668 = !DILocation(line: 1459, column: 3, scope: !4657)
!4669 = !DILocation(line: 1461, column: 3, scope: !4657)
!4670 = !DILocation(line: 1463, column: 1, scope: !4634)
!4671 = !DISubprogram(name: "insn_get_opcode", scope: !4064, file: !4064, line: 136, type: !4216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4672 = distinct !DISubprogram(name: "get_addr_ref_16", scope: !3, file: !3, line: 1234, type: !4635, scopeLine: 1235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4673)
!4673 = !{!4674, !4675, !4676, !4677, !4678, !4679, !4680, !4681, !4682, !4683}
!4674 = !DILocalVariable(name: "insn", arg: 1, scope: !4672, file: !3, line: 1234, type: !4062)
!4675 = !DILocalVariable(name: "regs", arg: 2, scope: !4672, file: !3, line: 1234, type: !3977)
!4676 = !DILocalVariable(name: "linear_addr", scope: !4672, file: !3, line: 1236, type: !110)
!4677 = !DILocalVariable(name: "seg_base", scope: !4672, file: !3, line: 1236, type: !110)
!4678 = !DILocalVariable(name: "seg_limit", scope: !4672, file: !3, line: 1236, type: !110)
!4679 = !DILocalVariable(name: "ret", scope: !4672, file: !3, line: 1237, type: !109)
!4680 = !DILocalVariable(name: "regoff", scope: !4672, file: !3, line: 1237, type: !109)
!4681 = !DILocalVariable(name: "eff_addr", scope: !4672, file: !3, line: 1238, type: !723)
!4682 = !DILocalVariable(name: "tmp", scope: !4672, file: !3, line: 1239, type: !1029)
!4683 = !DILabel(scope: !4672, name: "out", file: !3, line: 1278)
!4684 = !DILocation(line: 1234, column: 50, scope: !4672)
!4685 = !DILocation(line: 1234, column: 72, scope: !4672)
!4686 = !DILocation(line: 1236, column: 2, scope: !4672)
!4687 = !DILocation(line: 1236, column: 16, scope: !4672)
!4688 = !DILocation(line: 1236, column: 35, scope: !4672)
!4689 = !DILocation(line: 1236, column: 45, scope: !4672)
!4690 = !DILocation(line: 1237, column: 2, scope: !4672)
!4691 = !DILocation(line: 1237, column: 6, scope: !4672)
!4692 = !DILocation(line: 1237, column: 11, scope: !4672)
!4693 = !DILocation(line: 1238, column: 2, scope: !4672)
!4694 = !DILocation(line: 1238, column: 8, scope: !4672)
!4695 = !DILocation(line: 1239, column: 2, scope: !4672)
!4696 = !DILocation(line: 1239, column: 7, scope: !4672)
!4697 = !DILocation(line: 1241, column: 28, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 1241, column: 6)
!4699 = !DILocation(line: 1241, column: 6, scope: !4698)
!4700 = !DILocation(line: 1241, column: 6, scope: !4672)
!4701 = !DILocation(line: 1242, column: 3, scope: !4698)
!4702 = !DILocation(line: 1244, column: 6, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 1244, column: 6)
!4704 = !DILocation(line: 1244, column: 12, scope: !4703)
!4705 = !DILocation(line: 1244, column: 23, scope: !4703)
!4706 = !DILocation(line: 1244, column: 6, scope: !4672)
!4707 = !DILocation(line: 1245, column: 3, scope: !4703)
!4708 = !DILocation(line: 1247, column: 6, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 1247, column: 6)
!4710 = !DILocation(line: 1247, column: 39, scope: !4709)
!4711 = !DILocation(line: 1247, column: 6, scope: !4672)
!4712 = !DILocation(line: 1248, column: 26, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 1247, column: 45)
!4714 = !DILocation(line: 1248, column: 32, scope: !4713)
!4715 = !DILocation(line: 1248, column: 9, scope: !4713)
!4716 = !DILocation(line: 1248, column: 7, scope: !4713)
!4717 = !DILocation(line: 1249, column: 7, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4713, file: !3, line: 1249, column: 7)
!4719 = !DILocation(line: 1249, column: 7, scope: !4713)
!4720 = !DILocation(line: 1250, column: 4, scope: !4718)
!4721 = !DILocation(line: 1252, column: 14, scope: !4713)
!4722 = !DILocation(line: 1252, column: 12, scope: !4713)
!4723 = !DILocation(line: 1253, column: 2, scope: !4713)
!4724 = !DILocation(line: 1254, column: 31, scope: !4725)
!4725 = distinct !DILexicalBlock(scope: !4709, file: !3, line: 1253, column: 9)
!4726 = !DILocation(line: 1254, column: 37, scope: !4725)
!4727 = !DILocation(line: 1254, column: 9, scope: !4725)
!4728 = !DILocation(line: 1254, column: 7, scope: !4725)
!4729 = !DILocation(line: 1255, column: 7, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 1255, column: 7)
!4731 = !DILocation(line: 1255, column: 7, scope: !4725)
!4732 = !DILocation(line: 1256, column: 4, scope: !4730)
!4733 = !DILocation(line: 1259, column: 27, scope: !4672)
!4734 = !DILocation(line: 1259, column: 33, scope: !4672)
!4735 = !DILocation(line: 1259, column: 39, scope: !4672)
!4736 = !DILocation(line: 1259, column: 8, scope: !4672)
!4737 = !DILocation(line: 1259, column: 6, scope: !4672)
!4738 = !DILocation(line: 1260, column: 6, scope: !4739)
!4739 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 1260, column: 6)
!4740 = !DILocation(line: 1260, column: 6, scope: !4672)
!4741 = !DILocation(line: 1261, column: 3, scope: !4739)
!4742 = !DILocation(line: 1269, column: 22, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 1269, column: 6)
!4744 = !DILocation(line: 1269, column: 31, scope: !4743)
!4745 = !DILocation(line: 1269, column: 6, scope: !4743)
!4746 = !DILocation(line: 1269, column: 43, scope: !4743)
!4747 = !DILocation(line: 1269, column: 41, scope: !4743)
!4748 = !DILocation(line: 1269, column: 6, scope: !4672)
!4749 = !DILocation(line: 1270, column: 3, scope: !4743)
!4750 = !DILocation(line: 1272, column: 32, scope: !4672)
!4751 = !DILocation(line: 1272, column: 41, scope: !4672)
!4752 = !DILocation(line: 1272, column: 16, scope: !4672)
!4753 = !DILocation(line: 1272, column: 53, scope: !4672)
!4754 = !DILocation(line: 1272, column: 51, scope: !4672)
!4755 = !DILocation(line: 1272, column: 14, scope: !4672)
!4756 = !DILocation(line: 1275, column: 17, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 1275, column: 6)
!4758 = !DILocation(line: 1275, column: 6, scope: !4757)
!4759 = !DILocation(line: 1275, column: 6, scope: !4672)
!4760 = !DILocation(line: 1276, column: 15, scope: !4757)
!4761 = !DILocation(line: 1276, column: 3, scope: !4757)
!4762 = !DILocation(line: 1275, column: 21, scope: !4757)
!4763 = !DILocation(line: 1278, column: 1, scope: !4672)
!4764 = !DILocation(line: 1279, column: 24, scope: !4672)
!4765 = !DILocation(line: 1279, column: 9, scope: !4672)
!4766 = !DILocation(line: 1280, column: 1, scope: !4672)
!4767 = !DILocation(line: 1279, column: 2, scope: !4672)
!4768 = distinct !DISubprogram(name: "get_addr_ref_32", scope: !3, file: !3, line: 1298, type: !4635, scopeLine: 1299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4769)
!4769 = !{!4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779}
!4770 = !DILocalVariable(name: "insn", arg: 1, scope: !4768, file: !3, line: 1298, type: !4062)
!4771 = !DILocalVariable(name: "regs", arg: 2, scope: !4768, file: !3, line: 1298, type: !3977)
!4772 = !DILocalVariable(name: "linear_addr", scope: !4768, file: !3, line: 1300, type: !110)
!4773 = !DILocalVariable(name: "seg_base", scope: !4768, file: !3, line: 1300, type: !110)
!4774 = !DILocalVariable(name: "seg_limit", scope: !4768, file: !3, line: 1300, type: !110)
!4775 = !DILocalVariable(name: "eff_addr", scope: !4768, file: !3, line: 1301, type: !109)
!4776 = !DILocalVariable(name: "regoff", scope: !4768, file: !3, line: 1301, type: !109)
!4777 = !DILocalVariable(name: "tmp", scope: !4768, file: !3, line: 1302, type: !1029)
!4778 = !DILocalVariable(name: "ret", scope: !4768, file: !3, line: 1303, type: !109)
!4779 = !DILabel(scope: !4768, name: "out", file: !3, line: 1367)
!4780 = !DILocation(line: 1298, column: 50, scope: !4768)
!4781 = !DILocation(line: 1298, column: 72, scope: !4768)
!4782 = !DILocation(line: 1300, column: 2, scope: !4768)
!4783 = !DILocation(line: 1300, column: 16, scope: !4768)
!4784 = !DILocation(line: 1300, column: 35, scope: !4768)
!4785 = !DILocation(line: 1300, column: 45, scope: !4768)
!4786 = !DILocation(line: 1301, column: 2, scope: !4768)
!4787 = !DILocation(line: 1301, column: 6, scope: !4768)
!4788 = !DILocation(line: 1301, column: 16, scope: !4768)
!4789 = !DILocation(line: 1302, column: 2, scope: !4768)
!4790 = !DILocation(line: 1302, column: 7, scope: !4768)
!4791 = !DILocation(line: 1303, column: 2, scope: !4768)
!4792 = !DILocation(line: 1303, column: 6, scope: !4768)
!4793 = !DILocation(line: 1305, column: 6, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 1305, column: 6)
!4795 = !DILocation(line: 1305, column: 12, scope: !4794)
!4796 = !DILocation(line: 1305, column: 23, scope: !4794)
!4797 = !DILocation(line: 1305, column: 6, scope: !4768)
!4798 = !DILocation(line: 1306, column: 3, scope: !4794)
!4799 = !DILocation(line: 1308, column: 6, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 1308, column: 6)
!4801 = !DILocation(line: 1308, column: 39, scope: !4800)
!4802 = !DILocation(line: 1308, column: 6, scope: !4768)
!4803 = !DILocation(line: 1309, column: 26, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 1308, column: 45)
!4805 = !DILocation(line: 1309, column: 32, scope: !4804)
!4806 = !DILocation(line: 1309, column: 9, scope: !4804)
!4807 = !DILocation(line: 1309, column: 7, scope: !4804)
!4808 = !DILocation(line: 1310, column: 7, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 1310, column: 7)
!4810 = !DILocation(line: 1310, column: 7, scope: !4804)
!4811 = !DILocation(line: 1311, column: 4, scope: !4809)
!4812 = !DILocation(line: 1313, column: 14, scope: !4804)
!4813 = !DILocation(line: 1313, column: 12, scope: !4804)
!4814 = !DILocation(line: 1315, column: 2, scope: !4804)
!4815 = !DILocation(line: 1316, column: 7, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 1316, column: 7)
!4817 = distinct !DILexicalBlock(scope: !4800, file: !3, line: 1315, column: 9)
!4818 = !DILocation(line: 1316, column: 13, scope: !4816)
!4819 = !DILocation(line: 1316, column: 17, scope: !4816)
!4820 = !DILocation(line: 1316, column: 7, scope: !4817)
!4821 = !DILocation(line: 1317, column: 27, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 1316, column: 25)
!4823 = !DILocation(line: 1317, column: 33, scope: !4822)
!4824 = !DILocation(line: 1317, column: 10, scope: !4822)
!4825 = !DILocation(line: 1317, column: 8, scope: !4822)
!4826 = !DILocation(line: 1318, column: 8, scope: !4827)
!4827 = distinct !DILexicalBlock(scope: !4822, file: !3, line: 1318, column: 8)
!4828 = !DILocation(line: 1318, column: 8, scope: !4822)
!4829 = !DILocation(line: 1319, column: 5, scope: !4827)
!4830 = !DILocation(line: 1321, column: 15, scope: !4822)
!4831 = !DILocation(line: 1321, column: 13, scope: !4822)
!4832 = !DILocation(line: 1322, column: 3, scope: !4822)
!4833 = !DILocation(line: 1323, column: 29, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4816, file: !3, line: 1322, column: 10)
!4835 = !DILocation(line: 1323, column: 35, scope: !4834)
!4836 = !DILocation(line: 1323, column: 10, scope: !4834)
!4837 = !DILocation(line: 1323, column: 8, scope: !4834)
!4838 = !DILocation(line: 1324, column: 8, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 1324, column: 8)
!4840 = !DILocation(line: 1324, column: 8, scope: !4834)
!4841 = !DILocation(line: 1325, column: 5, scope: !4839)
!4842 = !DILocation(line: 1327, column: 15, scope: !4834)
!4843 = !DILocation(line: 1327, column: 13, scope: !4834)
!4844 = !DILocation(line: 1331, column: 27, scope: !4768)
!4845 = !DILocation(line: 1331, column: 33, scope: !4768)
!4846 = !DILocation(line: 1331, column: 39, scope: !4768)
!4847 = !DILocation(line: 1331, column: 8, scope: !4768)
!4848 = !DILocation(line: 1331, column: 6, scope: !4768)
!4849 = !DILocation(line: 1332, column: 6, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 1332, column: 6)
!4851 = !DILocation(line: 1332, column: 6, scope: !4768)
!4852 = !DILocation(line: 1333, column: 3, scope: !4850)
!4853 = !DILocation(line: 1346, column: 22, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 1346, column: 6)
!4855 = !DILocation(line: 1346, column: 7, scope: !4854)
!4856 = !DILocation(line: 1346, column: 28, scope: !4854)
!4857 = !DILocation(line: 1346, column: 46, scope: !4854)
!4858 = !DILocation(line: 1346, column: 32, scope: !4854)
!4859 = !DILocation(line: 1346, column: 57, scope: !4854)
!4860 = !DILocation(line: 1346, column: 55, scope: !4854)
!4861 = !DILocation(line: 1346, column: 6, scope: !4768)
!4862 = !DILocation(line: 1347, column: 3, scope: !4854)
!4863 = !DILocation(line: 1353, column: 17, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 1353, column: 6)
!4865 = !DILocation(line: 1353, column: 6, scope: !4864)
!4866 = !DILocation(line: 1353, column: 23, scope: !4864)
!4867 = !DILocation(line: 1353, column: 27, scope: !4864)
!4868 = !DILocation(line: 1353, column: 36, scope: !4864)
!4869 = !DILocation(line: 1353, column: 6, scope: !4768)
!4870 = !DILocation(line: 1354, column: 3, scope: !4864)
!4871 = !DILocation(line: 1361, column: 32, scope: !4768)
!4872 = !DILocation(line: 1361, column: 41, scope: !4768)
!4873 = !DILocation(line: 1361, column: 16, scope: !4768)
!4874 = !DILocation(line: 1361, column: 57, scope: !4768)
!4875 = !DILocation(line: 1361, column: 55, scope: !4768)
!4876 = !DILocation(line: 1361, column: 14, scope: !4768)
!4877 = !DILocation(line: 1364, column: 17, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4768, file: !3, line: 1364, column: 6)
!4879 = !DILocation(line: 1364, column: 6, scope: !4878)
!4880 = !DILocation(line: 1364, column: 6, scope: !4768)
!4881 = !DILocation(line: 1365, column: 15, scope: !4878)
!4882 = !DILocation(line: 1365, column: 3, scope: !4878)
!4883 = !DILocation(line: 1364, column: 21, scope: !4878)
!4884 = !DILocation(line: 1367, column: 1, scope: !4768)
!4885 = !DILocation(line: 1368, column: 24, scope: !4768)
!4886 = !DILocation(line: 1368, column: 9, scope: !4768)
!4887 = !DILocation(line: 1369, column: 1, scope: !4768)
!4888 = !DILocation(line: 1368, column: 2, scope: !4768)
!4889 = distinct !DISubprogram(name: "get_addr_ref_64", scope: !3, file: !3, line: 1392, type: !4635, scopeLine: 1393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4890)
!4890 = !{!4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898}
!4891 = !DILocalVariable(name: "insn", arg: 1, scope: !4889, file: !3, line: 1392, type: !4062)
!4892 = !DILocalVariable(name: "regs", arg: 2, scope: !4889, file: !3, line: 1392, type: !3977)
!4893 = !DILocalVariable(name: "linear_addr", scope: !4889, file: !3, line: 1394, type: !110)
!4894 = !DILocalVariable(name: "seg_base", scope: !4889, file: !3, line: 1394, type: !110)
!4895 = !DILocalVariable(name: "regoff", scope: !4889, file: !3, line: 1395, type: !109)
!4896 = !DILocalVariable(name: "ret", scope: !4889, file: !3, line: 1395, type: !109)
!4897 = !DILocalVariable(name: "eff_addr", scope: !4889, file: !3, line: 1396, type: !1029)
!4898 = !DILabel(scope: !4889, name: "out", file: !3, line: 1425)
!4899 = !DILocation(line: 1392, column: 50, scope: !4889)
!4900 = !DILocation(line: 1392, column: 72, scope: !4889)
!4901 = !DILocation(line: 1394, column: 2, scope: !4889)
!4902 = !DILocation(line: 1394, column: 16, scope: !4889)
!4903 = !DILocation(line: 1394, column: 35, scope: !4889)
!4904 = !DILocation(line: 1395, column: 2, scope: !4889)
!4905 = !DILocation(line: 1395, column: 6, scope: !4889)
!4906 = !DILocation(line: 1395, column: 14, scope: !4889)
!4907 = !DILocation(line: 1396, column: 2, scope: !4889)
!4908 = !DILocation(line: 1396, column: 7, scope: !4889)
!4909 = !DILocation(line: 1398, column: 6, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 1398, column: 6)
!4911 = !DILocation(line: 1398, column: 12, scope: !4910)
!4912 = !DILocation(line: 1398, column: 23, scope: !4910)
!4913 = !DILocation(line: 1398, column: 6, scope: !4889)
!4914 = !DILocation(line: 1399, column: 3, scope: !4910)
!4915 = !DILocation(line: 1401, column: 6, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 1401, column: 6)
!4917 = !DILocation(line: 1401, column: 39, scope: !4916)
!4918 = !DILocation(line: 1401, column: 6, scope: !4889)
!4919 = !DILocation(line: 1402, column: 26, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 1401, column: 45)
!4921 = !DILocation(line: 1402, column: 32, scope: !4920)
!4922 = !DILocation(line: 1402, column: 9, scope: !4920)
!4923 = !DILocation(line: 1402, column: 7, scope: !4920)
!4924 = !DILocation(line: 1403, column: 7, scope: !4925)
!4925 = distinct !DILexicalBlock(scope: !4920, file: !3, line: 1403, column: 7)
!4926 = !DILocation(line: 1403, column: 7, scope: !4920)
!4927 = !DILocation(line: 1404, column: 4, scope: !4925)
!4928 = !DILocation(line: 1406, column: 2, scope: !4920)
!4929 = !DILocation(line: 1407, column: 7, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 1407, column: 7)
!4931 = distinct !DILexicalBlock(scope: !4916, file: !3, line: 1406, column: 9)
!4932 = !DILocation(line: 1407, column: 13, scope: !4930)
!4933 = !DILocation(line: 1407, column: 17, scope: !4930)
!4934 = !DILocation(line: 1407, column: 7, scope: !4931)
!4935 = !DILocation(line: 1408, column: 27, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 1407, column: 25)
!4937 = !DILocation(line: 1408, column: 33, scope: !4936)
!4938 = !DILocation(line: 1408, column: 10, scope: !4936)
!4939 = !DILocation(line: 1408, column: 8, scope: !4936)
!4940 = !DILocation(line: 1409, column: 8, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4936, file: !3, line: 1409, column: 8)
!4942 = !DILocation(line: 1409, column: 8, scope: !4936)
!4943 = !DILocation(line: 1410, column: 5, scope: !4941)
!4944 = !DILocation(line: 1411, column: 3, scope: !4936)
!4945 = !DILocation(line: 1412, column: 29, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4930, file: !3, line: 1411, column: 10)
!4947 = !DILocation(line: 1412, column: 35, scope: !4946)
!4948 = !DILocation(line: 1412, column: 10, scope: !4946)
!4949 = !DILocation(line: 1412, column: 8, scope: !4946)
!4950 = !DILocation(line: 1413, column: 8, scope: !4951)
!4951 = distinct !DILexicalBlock(scope: !4946, file: !3, line: 1413, column: 8)
!4952 = !DILocation(line: 1413, column: 8, scope: !4946)
!4953 = !DILocation(line: 1414, column: 5, scope: !4951)
!4954 = !DILocation(line: 1419, column: 27, scope: !4889)
!4955 = !DILocation(line: 1419, column: 33, scope: !4889)
!4956 = !DILocation(line: 1419, column: 39, scope: !4889)
!4957 = !DILocation(line: 1419, column: 8, scope: !4889)
!4958 = !DILocation(line: 1419, column: 6, scope: !4889)
!4959 = !DILocation(line: 1420, column: 6, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4889, file: !3, line: 1420, column: 6)
!4961 = !DILocation(line: 1420, column: 6, scope: !4889)
!4962 = !DILocation(line: 1421, column: 3, scope: !4960)
!4963 = !DILocation(line: 1423, column: 31, scope: !4889)
!4964 = !DILocation(line: 1423, column: 42, scope: !4889)
!4965 = !DILocation(line: 1423, column: 40, scope: !4889)
!4966 = !DILocation(line: 1423, column: 14, scope: !4889)
!4967 = !DILocation(line: 1423, column: 2, scope: !4889)
!4968 = !DILocation(line: 1425, column: 1, scope: !4889)
!4969 = !DILocation(line: 1426, column: 24, scope: !4889)
!4970 = !DILocation(line: 1426, column: 9, scope: !4889)
!4971 = !DILocation(line: 1427, column: 1, scope: !4889)
!4972 = !DILocation(line: 1426, column: 2, scope: !4889)
!4973 = distinct !DISubprogram(name: "insn_get_effective_ip", scope: !3, file: !3, line: 1465, type: !4974, scopeLine: 1466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4976)
!4974 = !DISubroutineType(types: !4975)
!4975 = !{!109, !3977, !2305}
!4976 = !{!4977, !4978, !4979}
!4977 = !DILocalVariable(name: "regs", arg: 1, scope: !4973, file: !3, line: 1465, type: !3977)
!4978 = !DILocalVariable(name: "ip", arg: 2, scope: !4973, file: !3, line: 1465, type: !2305)
!4979 = !DILocalVariable(name: "seg_base", scope: !4973, file: !3, line: 1467, type: !110)
!4980 = !DILocation(line: 1465, column: 43, scope: !4973)
!4981 = !DILocation(line: 1465, column: 64, scope: !4973)
!4982 = !DILocation(line: 1467, column: 2, scope: !4973)
!4983 = !DILocation(line: 1467, column: 16, scope: !4973)
!4984 = !DILocation(line: 1475, column: 23, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 1475, column: 6)
!4986 = !DILocation(line: 1475, column: 7, scope: !4985)
!4987 = !DILocation(line: 1475, column: 6, scope: !4973)
!4988 = !DILocation(line: 1476, column: 32, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 1475, column: 30)
!4990 = !DILocation(line: 1476, column: 14, scope: !4989)
!4991 = !DILocation(line: 1476, column: 12, scope: !4989)
!4992 = !DILocation(line: 1477, column: 7, scope: !4993)
!4993 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 1477, column: 7)
!4994 = !DILocation(line: 1477, column: 16, scope: !4993)
!4995 = !DILocation(line: 1477, column: 7, scope: !4989)
!4996 = !DILocation(line: 1478, column: 4, scope: !4993)
!4997 = !DILocation(line: 1479, column: 2, scope: !4989)
!4998 = !DILocation(line: 1481, column: 8, scope: !4973)
!4999 = !DILocation(line: 1481, column: 19, scope: !4973)
!5000 = !DILocation(line: 1481, column: 25, scope: !4973)
!5001 = !DILocation(line: 1481, column: 17, scope: !4973)
!5002 = !DILocation(line: 1481, column: 3, scope: !4973)
!5003 = !DILocation(line: 1481, column: 6, scope: !4973)
!5004 = !DILocation(line: 1483, column: 2, scope: !4973)
!5005 = !DILocation(line: 1484, column: 1, scope: !4973)
!5006 = distinct !DISubprogram(name: "user_64bit_mode", scope: !3979, file: !3979, line: 227, type: !4362, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5007)
!5007 = !{!5008}
!5008 = !DILocalVariable(name: "regs", arg: 1, scope: !5006, file: !3979, line: 227, type: !3977)
!5009 = !DILocation(line: 227, column: 52, scope: !5006)
!5010 = !DILocation(line: 235, column: 9, scope: !5006)
!5011 = !DILocation(line: 235, column: 15, scope: !5006)
!5012 = !DILocation(line: 235, column: 18, scope: !5006)
!5013 = !DILocation(line: 235, column: 2, scope: !5006)
!5014 = distinct !DISubprogram(name: "insn_fetch_from_user", scope: !3, file: !3, line: 1500, type: !5015, scopeLine: 1501, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5018)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!109, !3977, !5017}
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!5018 = !{!5019, !5020, !5021, !5022}
!5019 = !DILocalVariable(name: "regs", arg: 1, scope: !5014, file: !3, line: 1500, type: !3977)
!5020 = !DILocalVariable(name: "buf", arg: 2, scope: !5014, file: !3, line: 1500, type: !5017)
!5021 = !DILocalVariable(name: "ip", scope: !5014, file: !3, line: 1502, type: !110)
!5022 = !DILocalVariable(name: "not_copied", scope: !5014, file: !3, line: 1503, type: !109)
!5023 = !DILocation(line: 1500, column: 42, scope: !5014)
!5024 = !DILocation(line: 1500, column: 62, scope: !5014)
!5025 = !DILocation(line: 1502, column: 2, scope: !5014)
!5026 = !DILocation(line: 1502, column: 16, scope: !5014)
!5027 = !DILocation(line: 1503, column: 2, scope: !5014)
!5028 = !DILocation(line: 1503, column: 6, scope: !5014)
!5029 = !DILocation(line: 1505, column: 28, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5014, file: !3, line: 1505, column: 6)
!5031 = !DILocation(line: 1505, column: 6, scope: !5030)
!5032 = !DILocation(line: 1505, column: 6, scope: !5014)
!5033 = !DILocation(line: 1506, column: 3, scope: !5030)
!5034 = !DILocation(line: 1508, column: 30, scope: !5014)
!5035 = !DILocation(line: 1508, column: 50, scope: !5014)
!5036 = !DILocation(line: 1508, column: 35, scope: !5014)
!5037 = !DILocation(line: 1508, column: 15, scope: !5014)
!5038 = !DILocation(line: 1508, column: 13, scope: !5014)
!5039 = !DILocation(line: 1510, column: 25, scope: !5014)
!5040 = !DILocation(line: 1510, column: 23, scope: !5014)
!5041 = !DILocation(line: 1510, column: 2, scope: !5014)
!5042 = !DILocation(line: 1511, column: 1, scope: !5014)
!5043 = distinct !DISubprogram(name: "copy_from_user", scope: !5044, file: !5044, line: 180, type: !5045, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5047)
!5044 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!110, !111, !1813, !110}
!5047 = !{!5048, !5049, !5050}
!5048 = !DILocalVariable(name: "to", arg: 1, scope: !5043, file: !5044, line: 180, type: !111)
!5049 = !DILocalVariable(name: "from", arg: 2, scope: !5043, file: !5044, line: 180, type: !1813)
!5050 = !DILocalVariable(name: "n", arg: 3, scope: !5043, file: !5044, line: 180, type: !110)
!5051 = !DILocation(line: 180, column: 22, scope: !5043)
!5052 = !DILocation(line: 180, column: 45, scope: !5043)
!5053 = !DILocation(line: 180, column: 65, scope: !5043)
!5054 = !DILocation(line: 182, column: 22, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5043, file: !5044, line: 182, column: 6)
!5056 = !DILocation(line: 182, column: 26, scope: !5055)
!5057 = !DILocation(line: 182, column: 6, scope: !5055)
!5058 = !DILocation(line: 182, column: 6, scope: !5043)
!5059 = !DILocation(line: 183, column: 23, scope: !5055)
!5060 = !DILocation(line: 183, column: 27, scope: !5055)
!5061 = !DILocation(line: 183, column: 33, scope: !5055)
!5062 = !DILocation(line: 183, column: 7, scope: !5055)
!5063 = !DILocation(line: 183, column: 5, scope: !5055)
!5064 = !DILocation(line: 183, column: 3, scope: !5055)
!5065 = !DILocation(line: 184, column: 9, scope: !5043)
!5066 = !DILocation(line: 184, column: 2, scope: !5043)
!5067 = distinct !DISubprogram(name: "insn_fetch_from_user_inatomic", scope: !3, file: !3, line: 1528, type: !5015, scopeLine: 1529, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5068)
!5068 = !{!5069, !5070, !5071, !5072}
!5069 = !DILocalVariable(name: "regs", arg: 1, scope: !5067, file: !3, line: 1528, type: !3977)
!5070 = !DILocalVariable(name: "buf", arg: 2, scope: !5067, file: !3, line: 1528, type: !5017)
!5071 = !DILocalVariable(name: "ip", scope: !5067, file: !3, line: 1530, type: !110)
!5072 = !DILocalVariable(name: "not_copied", scope: !5067, file: !3, line: 1531, type: !109)
!5073 = !DILocation(line: 1528, column: 51, scope: !5067)
!5074 = !DILocation(line: 1528, column: 71, scope: !5067)
!5075 = !DILocation(line: 1530, column: 2, scope: !5067)
!5076 = !DILocation(line: 1530, column: 16, scope: !5067)
!5077 = !DILocation(line: 1531, column: 2, scope: !5067)
!5078 = !DILocation(line: 1531, column: 6, scope: !5067)
!5079 = !DILocation(line: 1533, column: 28, scope: !5080)
!5080 = distinct !DILexicalBlock(scope: !5067, file: !3, line: 1533, column: 6)
!5081 = !DILocation(line: 1533, column: 6, scope: !5080)
!5082 = !DILocation(line: 1533, column: 6, scope: !5067)
!5083 = !DILocation(line: 1534, column: 3, scope: !5080)
!5084 = !DILocation(line: 1536, column: 41, scope: !5067)
!5085 = !DILocation(line: 1536, column: 61, scope: !5067)
!5086 = !DILocation(line: 1536, column: 46, scope: !5067)
!5087 = !DILocation(line: 1536, column: 15, scope: !5067)
!5088 = !DILocation(line: 1536, column: 13, scope: !5067)
!5089 = !DILocation(line: 1538, column: 25, scope: !5067)
!5090 = !DILocation(line: 1538, column: 23, scope: !5067)
!5091 = !DILocation(line: 1538, column: 2, scope: !5067)
!5092 = !DILocation(line: 1539, column: 1, scope: !5067)
!5093 = distinct !DISubprogram(name: "__copy_from_user_inatomic", scope: !5044, file: !5044, line: 81, type: !5045, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5094)
!5094 = !{!5095, !5096, !5097, !5098}
!5095 = !DILocalVariable(name: "to", arg: 1, scope: !5093, file: !5044, line: 81, type: !111)
!5096 = !DILocalVariable(name: "from", arg: 2, scope: !5093, file: !5044, line: 81, type: !1813)
!5097 = !DILocalVariable(name: "n", arg: 3, scope: !5093, file: !5044, line: 81, type: !110)
!5098 = !DILocalVariable(name: "res", scope: !5093, file: !5044, line: 83, type: !110)
!5099 = !DILocation(line: 81, column: 33, scope: !5093)
!5100 = !DILocation(line: 81, column: 56, scope: !5093)
!5101 = !DILocation(line: 81, column: 76, scope: !5093)
!5102 = !DILocation(line: 83, column: 2, scope: !5093)
!5103 = !DILocation(line: 83, column: 16, scope: !5093)
!5104 = !DILocation(line: 85, column: 35, scope: !5093)
!5105 = !DILocation(line: 85, column: 39, scope: !5093)
!5106 = !DILocation(line: 85, column: 45, scope: !5093)
!5107 = !DILocation(line: 85, column: 2, scope: !5093)
!5108 = !DILocation(line: 86, column: 20, scope: !5093)
!5109 = !DILocation(line: 86, column: 24, scope: !5093)
!5110 = !DILocation(line: 86, column: 2, scope: !5093)
!5111 = !DILocation(line: 87, column: 27, scope: !5093)
!5112 = !DILocation(line: 87, column: 31, scope: !5093)
!5113 = !DILocation(line: 87, column: 37, scope: !5093)
!5114 = !DILocation(line: 87, column: 8, scope: !5093)
!5115 = !DILocation(line: 87, column: 6, scope: !5093)
!5116 = !DILocation(line: 88, column: 34, scope: !5093)
!5117 = !DILocation(line: 88, column: 38, scope: !5093)
!5118 = !DILocation(line: 88, column: 44, scope: !5093)
!5119 = !DILocation(line: 88, column: 47, scope: !5093)
!5120 = !DILocation(line: 88, column: 2, scope: !5093)
!5121 = !DILocation(line: 89, column: 9, scope: !5093)
!5122 = !DILocation(line: 90, column: 1, scope: !5093)
!5123 = !DILocation(line: 89, column: 2, scope: !5093)
!5124 = distinct !DISubprogram(name: "insn_decode_from_regs", scope: !3, file: !3, line: 1555, type: !5125, scopeLine: 1557, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5127)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!755, !4062, !3977, !5017, !109}
!5127 = !{!5128, !5129, !5130, !5131, !5132}
!5128 = !DILocalVariable(name: "insn", arg: 1, scope: !5124, file: !3, line: 1555, type: !4062)
!5129 = !DILocalVariable(name: "regs", arg: 2, scope: !5124, file: !3, line: 1555, type: !3977)
!5130 = !DILocalVariable(name: "buf", arg: 3, scope: !5124, file: !3, line: 1556, type: !5017)
!5131 = !DILocalVariable(name: "buf_size", arg: 4, scope: !5124, file: !3, line: 1556, type: !109)
!5132 = !DILocalVariable(name: "seg_defs", scope: !5124, file: !3, line: 1558, type: !109)
!5133 = !DILocation(line: 1555, column: 41, scope: !5124)
!5134 = !DILocation(line: 1555, column: 63, scope: !5124)
!5135 = !DILocation(line: 1556, column: 21, scope: !5124)
!5136 = !DILocation(line: 1556, column: 45, scope: !5124)
!5137 = !DILocation(line: 1558, column: 2, scope: !5124)
!5138 = !DILocation(line: 1558, column: 6, scope: !5124)
!5139 = !DILocation(line: 1560, column: 12, scope: !5124)
!5140 = !DILocation(line: 1560, column: 18, scope: !5124)
!5141 = !DILocation(line: 1560, column: 23, scope: !5124)
!5142 = !DILocation(line: 1560, column: 49, scope: !5124)
!5143 = !DILocation(line: 1560, column: 33, scope: !5124)
!5144 = !DILocation(line: 1560, column: 2, scope: !5124)
!5145 = !DILocation(line: 1572, column: 38, scope: !5124)
!5146 = !DILocation(line: 1572, column: 13, scope: !5124)
!5147 = !DILocation(line: 1572, column: 11, scope: !5124)
!5148 = !DILocation(line: 1573, column: 6, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 1573, column: 6)
!5150 = !DILocation(line: 1573, column: 15, scope: !5149)
!5151 = !DILocation(line: 1573, column: 6, scope: !5124)
!5152 = !DILocation(line: 1574, column: 3, scope: !5149)
!5153 = !DILocation(line: 1576, column: 21, scope: !5124)
!5154 = !DILocation(line: 1576, column: 2, scope: !5124)
!5155 = !DILocation(line: 1576, column: 8, scope: !5124)
!5156 = !DILocation(line: 1576, column: 19, scope: !5124)
!5157 = !DILocation(line: 1577, column: 21, scope: !5124)
!5158 = !DILocation(line: 1577, column: 2, scope: !5124)
!5159 = !DILocation(line: 1577, column: 8, scope: !5124)
!5160 = !DILocation(line: 1577, column: 19, scope: !5124)
!5161 = !DILocation(line: 1579, column: 22, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 1579, column: 6)
!5163 = !DILocation(line: 1579, column: 6, scope: !5162)
!5164 = !DILocation(line: 1579, column: 6, scope: !5124)
!5165 = !DILocation(line: 1580, column: 3, scope: !5162)
!5166 = !DILocation(line: 1582, column: 6, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 1582, column: 6)
!5168 = !DILocation(line: 1582, column: 17, scope: !5167)
!5169 = !DILocation(line: 1582, column: 23, scope: !5167)
!5170 = !DILocation(line: 1582, column: 15, scope: !5167)
!5171 = !DILocation(line: 1582, column: 6, scope: !5124)
!5172 = !DILocation(line: 1583, column: 3, scope: !5167)
!5173 = !DILocation(line: 1585, column: 2, scope: !5124)
!5174 = !DILocation(line: 1586, column: 1, scope: !5124)
!5175 = !DISubprogram(name: "insn_init", scope: !4064, file: !4064, line: 134, type: !5176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5176 = !DISubroutineType(types: !5177)
!5177 = !{null, !4062, !1813, !109, !109}
!5178 = !DISubprogram(name: "insn_get_length", scope: !4064, file: !4064, line: 141, type: !4216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5179 = distinct !DISubprogram(name: "insn_decode_mmio", scope: !3, file: !3, line: 1600, type: !5180, scopeLine: 1601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5182)
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!17, !4062, !2096}
!5182 = !{!5183, !5184, !5185}
!5183 = !DILocalVariable(name: "insn", arg: 1, scope: !5179, file: !3, line: 1600, type: !4062)
!5184 = !DILocalVariable(name: "bytes", arg: 2, scope: !5179, file: !3, line: 1600, type: !2096)
!5185 = !DILocalVariable(name: "type", scope: !5179, file: !3, line: 1602, type: !17)
!5186 = !DILocation(line: 1600, column: 51, scope: !5179)
!5187 = !DILocation(line: 1600, column: 62, scope: !5179)
!5188 = !DILocation(line: 1602, column: 2, scope: !5179)
!5189 = !DILocation(line: 1602, column: 22, scope: !5179)
!5190 = !DILocation(line: 1604, column: 3, scope: !5179)
!5191 = !DILocation(line: 1604, column: 9, scope: !5179)
!5192 = !DILocation(line: 1606, column: 22, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 1606, column: 6)
!5194 = !DILocation(line: 1606, column: 6, scope: !5193)
!5195 = !DILocation(line: 1606, column: 6, scope: !5179)
!5196 = !DILocation(line: 1607, column: 3, scope: !5193)
!5197 = !DILocation(line: 1609, column: 10, scope: !5179)
!5198 = !DILocation(line: 1609, column: 16, scope: !5179)
!5199 = !DILocation(line: 1609, column: 23, scope: !5179)
!5200 = !DILocation(line: 1609, column: 2, scope: !5179)
!5201 = !DILocation(line: 1611, column: 4, scope: !5202)
!5202 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 1609, column: 33)
!5203 = !DILocation(line: 1611, column: 10, scope: !5202)
!5204 = !DILocation(line: 1611, column: 3, scope: !5202)
!5205 = !DILocation(line: 1614, column: 9, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 1614, column: 7)
!5207 = !DILocation(line: 1614, column: 8, scope: !5206)
!5208 = !DILocation(line: 1614, column: 7, scope: !5202)
!5209 = !DILocation(line: 1615, column: 13, scope: !5206)
!5210 = !DILocation(line: 1615, column: 19, scope: !5206)
!5211 = !DILocation(line: 1615, column: 5, scope: !5206)
!5212 = !DILocation(line: 1615, column: 11, scope: !5206)
!5213 = !DILocation(line: 1615, column: 4, scope: !5206)
!5214 = !DILocation(line: 1616, column: 8, scope: !5202)
!5215 = !DILocation(line: 1617, column: 3, scope: !5202)
!5216 = !DILocation(line: 1620, column: 4, scope: !5202)
!5217 = !DILocation(line: 1620, column: 10, scope: !5202)
!5218 = !DILocation(line: 1620, column: 3, scope: !5202)
!5219 = !DILocation(line: 1623, column: 9, scope: !5220)
!5220 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 1623, column: 7)
!5221 = !DILocation(line: 1623, column: 8, scope: !5220)
!5222 = !DILocation(line: 1623, column: 7, scope: !5202)
!5223 = !DILocation(line: 1624, column: 13, scope: !5220)
!5224 = !DILocation(line: 1624, column: 19, scope: !5220)
!5225 = !DILocation(line: 1624, column: 5, scope: !5220)
!5226 = !DILocation(line: 1624, column: 11, scope: !5220)
!5227 = !DILocation(line: 1624, column: 4, scope: !5220)
!5228 = !DILocation(line: 1625, column: 8, scope: !5202)
!5229 = !DILocation(line: 1626, column: 3, scope: !5202)
!5230 = !DILocation(line: 1629, column: 4, scope: !5202)
!5231 = !DILocation(line: 1629, column: 10, scope: !5202)
!5232 = !DILocation(line: 1629, column: 3, scope: !5202)
!5233 = !DILocation(line: 1632, column: 9, scope: !5234)
!5234 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 1632, column: 7)
!5235 = !DILocation(line: 1632, column: 8, scope: !5234)
!5236 = !DILocation(line: 1632, column: 7, scope: !5202)
!5237 = !DILocation(line: 1633, column: 13, scope: !5234)
!5238 = !DILocation(line: 1633, column: 19, scope: !5234)
!5239 = !DILocation(line: 1633, column: 5, scope: !5234)
!5240 = !DILocation(line: 1633, column: 11, scope: !5234)
!5241 = !DILocation(line: 1633, column: 4, scope: !5234)
!5242 = !DILocation(line: 1634, column: 8, scope: !5202)
!5243 = !DILocation(line: 1635, column: 3, scope: !5202)
!5244 = !DILocation(line: 1638, column: 4, scope: !5202)
!5245 = !DILocation(line: 1638, column: 10, scope: !5202)
!5246 = !DILocation(line: 1638, column: 3, scope: !5202)
!5247 = !DILocation(line: 1641, column: 9, scope: !5248)
!5248 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 1641, column: 7)
!5249 = !DILocation(line: 1641, column: 8, scope: !5248)
!5250 = !DILocation(line: 1641, column: 7, scope: !5202)
!5251 = !DILocation(line: 1642, column: 13, scope: !5248)
!5252 = !DILocation(line: 1642, column: 19, scope: !5248)
!5253 = !DILocation(line: 1642, column: 5, scope: !5248)
!5254 = !DILocation(line: 1642, column: 11, scope: !5248)
!5255 = !DILocation(line: 1642, column: 4, scope: !5248)
!5256 = !DILocation(line: 1643, column: 8, scope: !5202)
!5257 = !DILocation(line: 1644, column: 3, scope: !5202)
!5258 = !DILocation(line: 1647, column: 11, scope: !5202)
!5259 = !DILocation(line: 1647, column: 17, scope: !5202)
!5260 = !DILocation(line: 1647, column: 24, scope: !5202)
!5261 = !DILocation(line: 1647, column: 3, scope: !5202)
!5262 = !DILocation(line: 1649, column: 5, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5202, file: !3, line: 1647, column: 34)
!5264 = !DILocation(line: 1649, column: 11, scope: !5263)
!5265 = !DILocation(line: 1649, column: 4, scope: !5263)
!5266 = !DILocation(line: 1652, column: 10, scope: !5267)
!5267 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 1652, column: 8)
!5268 = !DILocation(line: 1652, column: 9, scope: !5267)
!5269 = !DILocation(line: 1652, column: 8, scope: !5263)
!5270 = !DILocation(line: 1653, column: 6, scope: !5267)
!5271 = !DILocation(line: 1653, column: 12, scope: !5267)
!5272 = !DILocation(line: 1653, column: 5, scope: !5267)
!5273 = !DILocation(line: 1654, column: 9, scope: !5263)
!5274 = !DILocation(line: 1655, column: 4, scope: !5263)
!5275 = !DILocation(line: 1658, column: 5, scope: !5263)
!5276 = !DILocation(line: 1658, column: 11, scope: !5263)
!5277 = !DILocation(line: 1658, column: 4, scope: !5263)
!5278 = !DILocation(line: 1661, column: 10, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5263, file: !3, line: 1661, column: 8)
!5280 = !DILocation(line: 1661, column: 9, scope: !5279)
!5281 = !DILocation(line: 1661, column: 8, scope: !5263)
!5282 = !DILocation(line: 1662, column: 6, scope: !5279)
!5283 = !DILocation(line: 1662, column: 12, scope: !5279)
!5284 = !DILocation(line: 1662, column: 5, scope: !5279)
!5285 = !DILocation(line: 1663, column: 9, scope: !5263)
!5286 = !DILocation(line: 1664, column: 4, scope: !5263)
!5287 = !DILocation(line: 1666, column: 3, scope: !5202)
!5288 = !DILocation(line: 1669, column: 9, scope: !5179)
!5289 = !DILocation(line: 1669, column: 2, scope: !5179)
!5290 = !DILocation(line: 1670, column: 1, scope: !5179)
!5291 = distinct !DISubprogram(name: "__rdmsr", scope: !4374, file: !4374, line: 80, type: !4375, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5292)
!5292 = !{!5293, !5294, !5295}
!5293 = !DILocalVariable(name: "msr", arg: 1, scope: !5291, file: !4374, line: 80, type: !7)
!5294 = !DILocalVariable(name: "low", scope: !5291, file: !4374, line: 82, type: !110)
!5295 = !DILocalVariable(name: "high", scope: !5291, file: !4374, line: 82, type: !110)
!5296 = !DILocation(line: 80, column: 64, scope: !5291)
!5297 = !DILocation(line: 82, column: 2, scope: !5291)
!5298 = !DILocation(line: 87, column: 45, scope: !5291)
!5299 = !DILocation(line: 84, column: 2, scope: !5291)
!5300 = !{i64 1893299, i64 1893320, i64 2149539499, i64 2149539543, i64 2149539566, i64 2149539599, i64 2149539630, i64 2149539669}
!5301 = !DILocation(line: 89, column: 9, scope: !5291)
!5302 = !DILocation(line: 90, column: 1, scope: !5291)
!5303 = !DILocation(line: 89, column: 2, scope: !5291)
!5304 = distinct !DISubprogram(name: "static_key_false", scope: !2278, file: !2278, line: 205, type: !5305, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5319)
!5305 = !DISubroutineType(types: !5306)
!5306 = !{!755, !5307}
!5307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5308, size: 64)
!5308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2278, line: 85, size: 128, elements: !5309)
!5309 = !{!5310, !5311}
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5308, file: !2278, line: 86, baseType: !157, size: 32)
!5311 = !DIDerivedType(tag: DW_TAG_member, scope: !5308, file: !2278, line: 101, baseType: !5312, size: 64, offset: 64)
!5312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5308, file: !2278, line: 101, size: 64, elements: !5313)
!5313 = !{!5314, !5315, !5316}
!5314 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5312, file: !2278, line: 102, baseType: !110, size: 64)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5312, file: !2278, line: 103, baseType: !2276, size: 64)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5312, file: !2278, line: 104, baseType: !5317, size: 64)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2278, line: 104, flags: DIFlagFwdDecl)
!5319 = !{!5320}
!5320 = !DILocalVariable(name: "key", arg: 1, scope: !5304, file: !2278, line: 205, type: !5307)
!5321 = !DILocation(line: 205, column: 65, scope: !5304)
!5322 = !DILocation(line: 207, column: 28, scope: !5304)
!5323 = !DILocation(line: 207, column: 9, scope: !5304)
!5324 = !DILocation(line: 207, column: 2, scope: !5304)
!5325 = !DISubprogram(name: "do_trace_read_msr", scope: !4374, file: !4374, line: 65, type: !5326, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5326 = !DISubroutineType(types: !5327)
!5327 = !{null, !7, !209, !109}
!5328 = distinct !DISubprogram(name: "arch_static_branch", scope: !5329, file: !5329, line: 25, type: !5330, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5332)
!5329 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5330 = !DISubroutineType(types: !5331)
!5331 = !{!755, !5307, !755}
!5332 = !{!5333, !5334, !5335}
!5333 = !DILocalVariable(name: "key", arg: 1, scope: !5328, file: !5329, line: 25, type: !5307)
!5334 = !DILocalVariable(name: "branch", arg: 2, scope: !5328, file: !5329, line: 25, type: !755)
!5335 = !DILabel(scope: !5328, name: "l_yes", file: !5329, line: 33)
!5336 = !DILocation(line: 25, column: 67, scope: !5328)
!5337 = !DILocation(line: 25, column: 77, scope: !5328)
!5338 = !DILocation(line: 30, column: 13, scope: !5328)
!5339 = !DILocation(line: 30, column: 28, scope: !5328)
!5340 = !DILocation(line: 30, column: 26, scope: !5328)
!5341 = !DILocation(line: 27, column: 2, scope: !5328)
!5342 = !{i64 666945, i64 666989, i64 2148151672, i64 2148151693, i64 2148151719, i64 2148151752, i64 2148151786, i64 2148151810}
!5343 = !DILocation(line: 32, column: 2, scope: !5328)
!5344 = !DILocation(line: 33, column: 1, scope: !5328)
!5345 = !DILocation(line: 34, column: 2, scope: !5328)
!5346 = !DILocation(line: 35, column: 1, scope: !5328)
!5347 = !DISubprogram(name: "mutex_lock", scope: !555, file: !555, line: 227, type: !5348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{null, !5350}
!5350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!5351 = distinct !DISubprogram(name: "get_current", scope: !5352, file: !5352, line: 39, type: !5353, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5355)
!5352 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!5353 = !DISubroutineType(types: !5354)
!5354 = !{!135}
!5355 = !{!5356, !5358, !5360}
!5356 = !DILocalVariable(name: "pscr_ret__", scope: !5357, file: !5352, line: 41, type: !135)
!5357 = distinct !DILexicalBlock(scope: !5351, file: !5352, line: 41, column: 9)
!5358 = !DILocalVariable(name: "__vpp_verify", scope: !5359, file: !5352, line: 41, type: !1813)
!5359 = distinct !DILexicalBlock(scope: !5357, file: !5352, line: 41, column: 9)
!5360 = !DILocalVariable(name: "pfo_val__", scope: !5361, file: !5352, line: 41, type: !209)
!5361 = distinct !DILexicalBlock(scope: !5357, file: !5352, line: 41, column: 9)
!5362 = !DILocation(line: 41, column: 9, scope: !5357)
!5363 = !DILocation(line: 41, column: 9, scope: !5359)
!5364 = !DILocation(line: 41, column: 9, scope: !5361)
!5365 = !{i64 2148301725}
!5366 = !DILocation(line: 41, column: 9, scope: !5351)
!5367 = !DILocation(line: 41, column: 2, scope: !5351)
!5368 = !DISubprogram(name: "mutex_unlock", scope: !555, file: !555, line: 246, type: !5348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5369 = distinct !DISubprogram(name: "native_store_gdt", scope: !4490, file: !4490, line: 218, type: !5370, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5373)
!5370 = !DISubroutineType(types: !5371)
!5371 = !{null, !5372}
!5372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!5373 = !{!5374}
!5374 = !DILocalVariable(name: "dtr", arg: 1, scope: !5369, file: !4490, line: 218, type: !5372)
!5375 = !DILocation(line: 218, column: 54, scope: !5369)
!5376 = !DILocation(line: 220, column: 32, scope: !5369)
!5377 = !DILocation(line: 220, column: 2, scope: !5369)
!5378 = !{i64 3363608}
!5379 = !DILocation(line: 221, column: 1, scope: !5369)
!5380 = !DILocation(line: 447, column: 35, scope: !4059)
!5381 = !DILocation(line: 447, column: 55, scope: !4059)
!5382 = !DILocation(line: 449, column: 2, scope: !4059)
!5383 = !DILocation(line: 449, column: 6, scope: !4059)
!5384 = !DILocation(line: 450, column: 2, scope: !4059)
!5385 = !DILocation(line: 450, column: 6, scope: !4059)
!5386 = !DILocation(line: 456, column: 36, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 456, column: 6)
!5388 = !DILocation(line: 456, column: 42, scope: !5387)
!5389 = !DILocation(line: 456, column: 6, scope: !4059)
!5390 = !DILocation(line: 457, column: 16, scope: !5387)
!5391 = !DILocation(line: 457, column: 3, scope: !5387)
!5392 = !DILocation(line: 459, column: 10, scope: !4059)
!5393 = !DILocation(line: 459, column: 2, scope: !4059)
!5394 = !DILocation(line: 461, column: 11, scope: !5395)
!5395 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 459, column: 16)
!5396 = !DILocation(line: 461, column: 9, scope: !5395)
!5397 = !DILocation(line: 467, column: 8, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 467, column: 7)
!5399 = !DILocation(line: 467, column: 41, scope: !5398)
!5400 = !DILocation(line: 467, column: 44, scope: !5398)
!5401 = !DILocation(line: 467, column: 50, scope: !5398)
!5402 = !DILocation(line: 467, column: 7, scope: !5395)
!5403 = !DILocation(line: 468, column: 4, scope: !5398)
!5404 = !DILocation(line: 470, column: 7, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 470, column: 7)
!5406 = !DILocation(line: 470, column: 7, scope: !5395)
!5407 = !DILocation(line: 471, column: 10, scope: !5405)
!5408 = !DILocation(line: 471, column: 4, scope: !5405)
!5409 = !DILocation(line: 472, column: 3, scope: !5395)
!5410 = !DILocation(line: 475, column: 11, scope: !5395)
!5411 = !DILocation(line: 475, column: 9, scope: !5395)
!5412 = !DILocation(line: 477, column: 7, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 477, column: 7)
!5414 = !DILocation(line: 477, column: 7, scope: !5395)
!5415 = !DILocation(line: 478, column: 10, scope: !5413)
!5416 = !DILocation(line: 478, column: 4, scope: !5413)
!5417 = !DILocation(line: 479, column: 3, scope: !5395)
!5418 = !DILocation(line: 482, column: 11, scope: !5395)
!5419 = !DILocation(line: 482, column: 9, scope: !5395)
!5420 = !DILocation(line: 483, column: 7, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 483, column: 7)
!5422 = !DILocation(line: 483, column: 7, scope: !5395)
!5423 = !DILocation(line: 484, column: 10, scope: !5421)
!5424 = !DILocation(line: 484, column: 4, scope: !5421)
!5425 = !DILocation(line: 492, column: 7, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 492, column: 7)
!5427 = !DILocation(line: 492, column: 40, scope: !5426)
!5428 = !DILocation(line: 492, column: 45, scope: !5426)
!5429 = !DILocation(line: 492, column: 48, scope: !5426)
!5430 = !DILocation(line: 492, column: 54, scope: !5426)
!5431 = !DILocation(line: 492, column: 7, scope: !5395)
!5432 = !DILocation(line: 493, column: 4, scope: !5426)
!5433 = !DILocation(line: 494, column: 3, scope: !5395)
!5434 = !DILocation(line: 497, column: 11, scope: !5395)
!5435 = !DILocation(line: 497, column: 9, scope: !5395)
!5436 = !DILocation(line: 503, column: 8, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 503, column: 7)
!5438 = !DILocation(line: 503, column: 41, scope: !5437)
!5439 = !DILocation(line: 503, column: 44, scope: !5437)
!5440 = !DILocation(line: 503, column: 50, scope: !5437)
!5441 = !DILocation(line: 503, column: 7, scope: !5395)
!5442 = !DILocation(line: 504, column: 4, scope: !5437)
!5443 = !DILocation(line: 506, column: 7, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 506, column: 7)
!5445 = !DILocation(line: 506, column: 7, scope: !5395)
!5446 = !DILocation(line: 507, column: 10, scope: !5444)
!5447 = !DILocation(line: 507, column: 4, scope: !5444)
!5448 = !DILocation(line: 508, column: 3, scope: !5395)
!5449 = !DILocation(line: 511, column: 3, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 511, column: 3)
!5451 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 511, column: 3)
!5452 = !DILocation(line: 511, column: 3, scope: !5451)
!5453 = !DILocation(line: 511, column: 3, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 511, column: 3)
!5455 = !DILocation(line: 511, column: 3, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5454, file: !3, line: 511, column: 3)
!5457 = !DILocation(line: 512, column: 3, scope: !5395)
!5458 = !DILocation(line: 515, column: 6, scope: !4117)
!5459 = !DILocation(line: 515, column: 15, scope: !4117)
!5460 = !DILocation(line: 515, column: 12, scope: !4117)
!5461 = !DILocation(line: 515, column: 6, scope: !4059)
!5462 = !DILocation(line: 516, column: 3, scope: !4115)
!5463 = !DILocation(line: 516, column: 3, scope: !4119)
!5464 = !DILocation(line: 516, column: 3, scope: !5465)
!5465 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 516, column: 3)
!5466 = !DILocation(line: 0, scope: !5465)
!5467 = !DILocation(line: 516, column: 3, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5465, file: !3, line: 516, column: 3)
!5469 = !DILocation(line: 516, column: 3, scope: !4120)
!5470 = !DILocation(line: 516, column: 3, scope: !4123)
!5471 = !DILocation(line: 516, column: 3, scope: !4127)
!5472 = !DILocation(line: 516, column: 3, scope: !4126)
!5473 = !DILocation(line: 516, column: 3, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 516, column: 3)
!5475 = !DILocation(line: 516, column: 3, scope: !4125)
!5476 = !DILocation(line: 516, column: 3, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 516, column: 3)
!5478 = !DILocation(line: 516, column: 3, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 516, column: 3)
!5480 = !{i64 2154822650, i64 2154822679, i64 2154822725, i64 2154822783, i64 2154822837, i64 2154822891, i64 2154822946, i64 2154822977, i64 2154823285, i64 2154823291, i64 2154823338, i64 2154823361, i64 2154823387}
!5481 = !DILocation(line: 516, column: 3, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !4125, file: !3, line: 516, column: 3)
!5483 = !DILocation(line: 516, column: 3, scope: !5484)
!5484 = distinct !DILexicalBlock(scope: !4126, file: !3, line: 516, column: 3)
!5485 = !DILocation(line: 516, column: 3, scope: !4116)
!5486 = !DILocation(line: 517, column: 3, scope: !4116)
!5487 = !DILocation(line: 519, column: 9, scope: !4059)
!5488 = !DILocation(line: 519, column: 2, scope: !4059)
!5489 = !DILocation(line: 520, column: 1, scope: !4059)
!5490 = !DISubprogram(name: "___ratelimit", scope: !831, file: !831, line: 44, type: !5491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5491 = !DISubroutineType(types: !5492)
!5492 = !{!109, !5493, !758}
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!5494 = !DISubprogram(name: "_printk", scope: !5495, file: !5495, line: 153, type: !5496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5495 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!109, !758, null}
!5498 = !DISubprogram(name: "__warn_printk", scope: !2116, file: !2116, line: 93, type: !5499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5499 = !DISubroutineType(types: !5500)
!5500 = !{null, !758, null}
!5501 = !DISubprogram(name: "insn_get_displacement", scope: !4064, file: !4064, line: 139, type: !4216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5502 = distinct !DISubprogram(name: "get_eff_addr_reg", scope: !3, file: !3, line: 966, type: !5503, scopeLine: 968, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5506)
!5503 = !DISubroutineType(types: !5504)
!5504 = !{!109, !4062, !3977, !2096, !5505}
!5505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!5506 = !{!5507, !5508, !5509, !5510, !5511}
!5507 = !DILocalVariable(name: "insn", arg: 1, scope: !5502, file: !3, line: 966, type: !4062)
!5508 = !DILocalVariable(name: "regs", arg: 2, scope: !5502, file: !3, line: 966, type: !3977)
!5509 = !DILocalVariable(name: "regoff", arg: 3, scope: !5502, file: !3, line: 967, type: !2096)
!5510 = !DILocalVariable(name: "eff_addr", arg: 4, scope: !5502, file: !3, line: 967, type: !5505)
!5511 = !DILocalVariable(name: "ret", scope: !5502, file: !3, line: 969, type: !109)
!5512 = !DILocation(line: 966, column: 42, scope: !5502)
!5513 = !DILocation(line: 966, column: 64, scope: !5502)
!5514 = !DILocation(line: 967, column: 13, scope: !5502)
!5515 = !DILocation(line: 967, column: 27, scope: !5502)
!5516 = !DILocation(line: 969, column: 2, scope: !5502)
!5517 = !DILocation(line: 969, column: 6, scope: !5502)
!5518 = !DILocation(line: 971, column: 23, scope: !5502)
!5519 = !DILocation(line: 971, column: 8, scope: !5502)
!5520 = !DILocation(line: 971, column: 6, scope: !5502)
!5521 = !DILocation(line: 972, column: 6, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 972, column: 6)
!5523 = !DILocation(line: 972, column: 6, scope: !5502)
!5524 = !DILocation(line: 973, column: 10, scope: !5522)
!5525 = !DILocation(line: 973, column: 3, scope: !5522)
!5526 = !DILocation(line: 975, column: 6, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 975, column: 6)
!5528 = !DILocation(line: 975, column: 39, scope: !5527)
!5529 = !DILocation(line: 975, column: 6, scope: !5502)
!5530 = !DILocation(line: 976, column: 3, scope: !5527)
!5531 = !DILocation(line: 978, column: 27, scope: !5502)
!5532 = !DILocation(line: 978, column: 33, scope: !5502)
!5533 = !DILocation(line: 978, column: 12, scope: !5502)
!5534 = !DILocation(line: 978, column: 3, scope: !5502)
!5535 = !DILocation(line: 978, column: 10, scope: !5502)
!5536 = !DILocation(line: 979, column: 7, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 979, column: 6)
!5538 = !DILocation(line: 979, column: 6, scope: !5537)
!5539 = !DILocation(line: 979, column: 14, scope: !5537)
!5540 = !DILocation(line: 979, column: 6, scope: !5502)
!5541 = !DILocation(line: 980, column: 3, scope: !5537)
!5542 = !DILocation(line: 983, column: 6, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 983, column: 6)
!5544 = !DILocation(line: 983, column: 12, scope: !5543)
!5545 = !DILocation(line: 983, column: 23, scope: !5543)
!5546 = !DILocation(line: 983, column: 6, scope: !5502)
!5547 = !DILocation(line: 984, column: 33, scope: !5543)
!5548 = !DILocation(line: 984, column: 40, scope: !5543)
!5549 = !DILocation(line: 984, column: 39, scope: !5543)
!5550 = !DILocation(line: 984, column: 15, scope: !5543)
!5551 = !DILocation(line: 984, column: 48, scope: !5543)
!5552 = !DILocation(line: 984, column: 4, scope: !5543)
!5553 = !DILocation(line: 984, column: 13, scope: !5543)
!5554 = !DILocation(line: 984, column: 3, scope: !5543)
!5555 = !DILocation(line: 985, column: 11, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5543, file: !3, line: 985, column: 11)
!5557 = !DILocation(line: 985, column: 17, scope: !5556)
!5558 = !DILocation(line: 985, column: 28, scope: !5556)
!5559 = !DILocation(line: 985, column: 11, scope: !5543)
!5560 = !DILocation(line: 986, column: 33, scope: !5556)
!5561 = !DILocation(line: 986, column: 40, scope: !5556)
!5562 = !DILocation(line: 986, column: 39, scope: !5556)
!5563 = !DILocation(line: 986, column: 15, scope: !5556)
!5564 = !DILocation(line: 986, column: 48, scope: !5556)
!5565 = !DILocation(line: 986, column: 4, scope: !5556)
!5566 = !DILocation(line: 986, column: 13, scope: !5556)
!5567 = !DILocation(line: 986, column: 3, scope: !5556)
!5568 = !DILocation(line: 988, column: 33, scope: !5556)
!5569 = !DILocation(line: 988, column: 40, scope: !5556)
!5570 = !DILocation(line: 988, column: 39, scope: !5556)
!5571 = !DILocation(line: 988, column: 15, scope: !5556)
!5572 = !DILocation(line: 988, column: 4, scope: !5556)
!5573 = !DILocation(line: 988, column: 13, scope: !5556)
!5574 = !DILocation(line: 990, column: 2, scope: !5502)
!5575 = !DILocation(line: 991, column: 1, scope: !5502)
!5576 = distinct !DISubprogram(name: "get_eff_addr_modrm_16", scope: !3, file: !3, line: 1082, type: !5577, scopeLine: 1084, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5580)
!5577 = !DISubroutineType(types: !5578)
!5578 = !{!109, !4062, !3977, !2096, !5579}
!5579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!5580 = !{!5581, !5582, !5583, !5584, !5585, !5586, !5587, !5588, !5589, !5590}
!5581 = !DILocalVariable(name: "insn", arg: 1, scope: !5576, file: !3, line: 1082, type: !4062)
!5582 = !DILocalVariable(name: "regs", arg: 2, scope: !5576, file: !3, line: 1082, type: !3977)
!5583 = !DILocalVariable(name: "regoff", arg: 3, scope: !5576, file: !3, line: 1083, type: !2096)
!5584 = !DILocalVariable(name: "eff_addr", arg: 4, scope: !5576, file: !3, line: 1083, type: !5579)
!5585 = !DILocalVariable(name: "addr_offset1", scope: !5576, file: !3, line: 1085, type: !109)
!5586 = !DILocalVariable(name: "addr_offset2", scope: !5576, file: !3, line: 1085, type: !109)
!5587 = !DILocalVariable(name: "ret", scope: !5576, file: !3, line: 1085, type: !109)
!5588 = !DILocalVariable(name: "addr1", scope: !5576, file: !3, line: 1086, type: !723)
!5589 = !DILocalVariable(name: "addr2", scope: !5576, file: !3, line: 1086, type: !723)
!5590 = !DILocalVariable(name: "displacement", scope: !5576, file: !3, line: 1086, type: !723)
!5591 = !DILocation(line: 1082, column: 47, scope: !5576)
!5592 = !DILocation(line: 1082, column: 69, scope: !5576)
!5593 = !DILocation(line: 1083, column: 11, scope: !5576)
!5594 = !DILocation(line: 1083, column: 26, scope: !5576)
!5595 = !DILocation(line: 1085, column: 2, scope: !5576)
!5596 = !DILocation(line: 1085, column: 6, scope: !5576)
!5597 = !DILocation(line: 1085, column: 20, scope: !5576)
!5598 = !DILocation(line: 1085, column: 34, scope: !5576)
!5599 = !DILocation(line: 1086, column: 2, scope: !5576)
!5600 = !DILocation(line: 1086, column: 8, scope: !5576)
!5601 = !DILocation(line: 1086, column: 19, scope: !5576)
!5602 = !DILocation(line: 1086, column: 30, scope: !5576)
!5603 = !DILocation(line: 1088, column: 6, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 1088, column: 6)
!5605 = !DILocation(line: 1088, column: 12, scope: !5604)
!5606 = !DILocation(line: 1088, column: 23, scope: !5604)
!5607 = !DILocation(line: 1088, column: 6, scope: !5576)
!5608 = !DILocation(line: 1089, column: 3, scope: !5604)
!5609 = !DILocation(line: 1091, column: 17, scope: !5576)
!5610 = !DILocation(line: 1091, column: 2, scope: !5576)
!5611 = !DILocation(line: 1093, column: 7, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 1093, column: 6)
!5613 = !DILocation(line: 1093, column: 13, scope: !5612)
!5614 = !DILocation(line: 1093, column: 19, scope: !5612)
!5615 = !DILocation(line: 1093, column: 6, scope: !5576)
!5616 = !DILocation(line: 1094, column: 3, scope: !5612)
!5617 = !DILocation(line: 1096, column: 6, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 1096, column: 6)
!5619 = !DILocation(line: 1096, column: 39, scope: !5618)
!5620 = !DILocation(line: 1096, column: 6, scope: !5576)
!5621 = !DILocation(line: 1097, column: 3, scope: !5618)
!5622 = !DILocation(line: 1099, column: 26, scope: !5576)
!5623 = !DILocation(line: 1099, column: 32, scope: !5576)
!5624 = !DILocation(line: 1099, column: 8, scope: !5576)
!5625 = !DILocation(line: 1099, column: 6, scope: !5576)
!5626 = !DILocation(line: 1100, column: 6, scope: !5627)
!5627 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 1100, column: 6)
!5628 = !DILocation(line: 1100, column: 10, scope: !5627)
!5629 = !DILocation(line: 1100, column: 6, scope: !5576)
!5630 = !DILocation(line: 1101, column: 3, scope: !5627)
!5631 = !DILocation(line: 1108, column: 6, scope: !5632)
!5632 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 1108, column: 6)
!5633 = !DILocation(line: 1108, column: 19, scope: !5632)
!5634 = !DILocation(line: 1108, column: 6, scope: !5576)
!5635 = !DILocation(line: 1109, column: 29, scope: !5632)
!5636 = !DILocation(line: 1109, column: 35, scope: !5632)
!5637 = !DILocation(line: 1109, column: 11, scope: !5632)
!5638 = !DILocation(line: 1109, column: 49, scope: !5632)
!5639 = !DILocation(line: 1109, column: 9, scope: !5632)
!5640 = !DILocation(line: 1109, column: 3, scope: !5632)
!5641 = !DILocation(line: 1111, column: 6, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5576, file: !3, line: 1111, column: 6)
!5643 = !DILocation(line: 1111, column: 19, scope: !5642)
!5644 = !DILocation(line: 1111, column: 6, scope: !5576)
!5645 = !DILocation(line: 1112, column: 29, scope: !5642)
!5646 = !DILocation(line: 1112, column: 35, scope: !5642)
!5647 = !DILocation(line: 1112, column: 11, scope: !5642)
!5648 = !DILocation(line: 1112, column: 49, scope: !5642)
!5649 = !DILocation(line: 1112, column: 9, scope: !5642)
!5650 = !DILocation(line: 1112, column: 3, scope: !5642)
!5651 = !DILocation(line: 1114, column: 17, scope: !5576)
!5652 = !DILocation(line: 1114, column: 23, scope: !5576)
!5653 = !DILocation(line: 1114, column: 36, scope: !5576)
!5654 = !DILocation(line: 1114, column: 42, scope: !5576)
!5655 = !DILocation(line: 1114, column: 15, scope: !5576)
!5656 = !DILocation(line: 1115, column: 14, scope: !5576)
!5657 = !DILocation(line: 1115, column: 22, scope: !5576)
!5658 = !DILocation(line: 1115, column: 20, scope: !5576)
!5659 = !DILocation(line: 1115, column: 30, scope: !5576)
!5660 = !DILocation(line: 1115, column: 28, scope: !5576)
!5661 = !DILocation(line: 1115, column: 3, scope: !5576)
!5662 = !DILocation(line: 1115, column: 12, scope: !5576)
!5663 = !DILocation(line: 1123, column: 12, scope: !5576)
!5664 = !DILocation(line: 1123, column: 3, scope: !5576)
!5665 = !DILocation(line: 1123, column: 10, scope: !5576)
!5666 = !DILocation(line: 1125, column: 2, scope: !5576)
!5667 = !DILocation(line: 1126, column: 1, scope: !5576)
!5668 = distinct !DISubprogram(name: "get_seg_base_limit", scope: !3, file: !3, line: 916, type: !5669, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5671)
!5669 = !DISubroutineType(types: !5670)
!5670 = !{!109, !4062, !3977, !109, !2305, !2305}
!5671 = !{!5672, !5673, !5674, !5675, !5676, !5677}
!5672 = !DILocalVariable(name: "insn", arg: 1, scope: !5668, file: !3, line: 916, type: !4062)
!5673 = !DILocalVariable(name: "regs", arg: 2, scope: !5668, file: !3, line: 916, type: !3977)
!5674 = !DILocalVariable(name: "regoff", arg: 3, scope: !5668, file: !3, line: 917, type: !109)
!5675 = !DILocalVariable(name: "base", arg: 4, scope: !5668, file: !3, line: 917, type: !2305)
!5676 = !DILocalVariable(name: "limit", arg: 5, scope: !5668, file: !3, line: 918, type: !2305)
!5677 = !DILocalVariable(name: "seg_reg_idx", scope: !5668, file: !3, line: 920, type: !109)
!5678 = !DILocation(line: 916, column: 44, scope: !5668)
!5679 = !DILocation(line: 916, column: 66, scope: !5668)
!5680 = !DILocation(line: 917, column: 14, scope: !5668)
!5681 = !DILocation(line: 917, column: 37, scope: !5668)
!5682 = !DILocation(line: 918, column: 25, scope: !5668)
!5683 = !DILocation(line: 920, column: 2, scope: !5668)
!5684 = !DILocation(line: 920, column: 6, scope: !5668)
!5685 = !DILocation(line: 922, column: 7, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 922, column: 6)
!5687 = !DILocation(line: 922, column: 6, scope: !5668)
!5688 = !DILocation(line: 923, column: 3, scope: !5686)
!5689 = !DILocation(line: 925, column: 32, scope: !5668)
!5690 = !DILocation(line: 925, column: 38, scope: !5668)
!5691 = !DILocation(line: 925, column: 44, scope: !5668)
!5692 = !DILocation(line: 925, column: 16, scope: !5668)
!5693 = !DILocation(line: 925, column: 14, scope: !5668)
!5694 = !DILocation(line: 926, column: 6, scope: !5695)
!5695 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 926, column: 6)
!5696 = !DILocation(line: 926, column: 18, scope: !5695)
!5697 = !DILocation(line: 926, column: 6, scope: !5668)
!5698 = !DILocation(line: 927, column: 10, scope: !5695)
!5699 = !DILocation(line: 927, column: 3, scope: !5695)
!5700 = !DILocation(line: 929, column: 28, scope: !5668)
!5701 = !DILocation(line: 929, column: 34, scope: !5668)
!5702 = !DILocation(line: 929, column: 10, scope: !5668)
!5703 = !DILocation(line: 929, column: 3, scope: !5668)
!5704 = !DILocation(line: 929, column: 8, scope: !5668)
!5705 = !DILocation(line: 930, column: 7, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 930, column: 6)
!5707 = !DILocation(line: 930, column: 6, scope: !5706)
!5708 = !DILocation(line: 930, column: 12, scope: !5706)
!5709 = !DILocation(line: 930, column: 6, scope: !5668)
!5710 = !DILocation(line: 931, column: 3, scope: !5706)
!5711 = !DILocation(line: 933, column: 7, scope: !5712)
!5712 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 933, column: 6)
!5713 = !DILocation(line: 933, column: 6, scope: !5668)
!5714 = !DILocation(line: 934, column: 3, scope: !5712)
!5715 = !DILocation(line: 936, column: 25, scope: !5668)
!5716 = !DILocation(line: 936, column: 31, scope: !5668)
!5717 = !DILocation(line: 936, column: 11, scope: !5668)
!5718 = !DILocation(line: 936, column: 3, scope: !5668)
!5719 = !DILocation(line: 936, column: 9, scope: !5668)
!5720 = !DILocation(line: 937, column: 9, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 937, column: 6)
!5722 = !DILocation(line: 937, column: 8, scope: !5721)
!5723 = !DILocation(line: 937, column: 7, scope: !5721)
!5724 = !DILocation(line: 937, column: 6, scope: !5668)
!5725 = !DILocation(line: 938, column: 3, scope: !5721)
!5726 = !DILocation(line: 940, column: 2, scope: !5668)
!5727 = !DILocation(line: 941, column: 1, scope: !5668)
!5728 = !DISubprogram(name: "insn_get_modrm", scope: !4064, file: !4064, line: 137, type: !4216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5729 = distinct !DISubprogram(name: "regs_get_register", scope: !3979, file: !3979, line: 331, type: !5730, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5732)
!5730 = !DISubroutineType(types: !5731)
!5731 = !{!110, !3977, !7}
!5732 = !{!5733, !5734}
!5733 = !DILocalVariable(name: "regs", arg: 1, scope: !5729, file: !3979, line: 331, type: !3977)
!5734 = !DILocalVariable(name: "offset", arg: 2, scope: !5729, file: !3979, line: 332, type: !7)
!5735 = !DILocation(line: 331, column: 63, scope: !5729)
!5736 = !DILocation(line: 332, column: 25, scope: !5729)
!5737 = !DILocation(line: 334, column: 6, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5729, file: !3979, line: 334, column: 6)
!5739 = !DILocation(line: 334, column: 6, scope: !5729)
!5740 = !DILocation(line: 335, column: 3, scope: !5738)
!5741 = !DILocation(line: 348, column: 43, scope: !5729)
!5742 = !DILocation(line: 348, column: 28, scope: !5729)
!5743 = !DILocation(line: 348, column: 50, scope: !5729)
!5744 = !DILocation(line: 348, column: 48, scope: !5729)
!5745 = !DILocation(line: 348, column: 10, scope: !5729)
!5746 = !DILocation(line: 348, column: 9, scope: !5729)
!5747 = !DILocation(line: 348, column: 2, scope: !5729)
!5748 = !DILocation(line: 349, column: 1, scope: !5729)
!5749 = !DILocation(line: 550, column: 43, scope: !4152)
!5750 = !DILocation(line: 550, column: 65, scope: !4152)
!5751 = !DILocation(line: 551, column: 14, scope: !4152)
!5752 = !DILocation(line: 551, column: 26, scope: !4152)
!5753 = !DILocation(line: 580, column: 7, scope: !5754)
!5754 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 580, column: 6)
!5755 = !DILocation(line: 580, column: 13, scope: !5754)
!5756 = !DILocation(line: 580, column: 17, scope: !5754)
!5757 = !DILocation(line: 580, column: 6, scope: !4152)
!5758 = !DILocation(line: 581, column: 3, scope: !5754)
!5759 = !DILocation(line: 584, column: 6, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 584, column: 6)
!5761 = !DILocation(line: 584, column: 39, scope: !5760)
!5762 = !DILocation(line: 584, column: 6, scope: !4152)
!5763 = !DILocation(line: 585, column: 34, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 584, column: 45)
!5765 = !DILocation(line: 585, column: 40, scope: !5764)
!5766 = !DILocation(line: 585, column: 12, scope: !5764)
!5767 = !DILocation(line: 585, column: 4, scope: !5764)
!5768 = !DILocation(line: 585, column: 10, scope: !5764)
!5769 = !DILocation(line: 586, column: 4, scope: !5764)
!5770 = !DILocation(line: 586, column: 10, scope: !5764)
!5771 = !DILocation(line: 587, column: 3, scope: !5764)
!5772 = !DILocation(line: 590, column: 19, scope: !4152)
!5773 = !DILocation(line: 590, column: 11, scope: !4152)
!5774 = !DILocation(line: 590, column: 3, scope: !4152)
!5775 = !DILocation(line: 590, column: 9, scope: !4152)
!5776 = !DILocation(line: 591, column: 19, scope: !4152)
!5777 = !DILocation(line: 591, column: 11, scope: !4152)
!5778 = !DILocation(line: 591, column: 3, scope: !4152)
!5779 = !DILocation(line: 591, column: 9, scope: !4152)
!5780 = !DILocation(line: 600, column: 7, scope: !5781)
!5781 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 600, column: 6)
!5782 = !DILocation(line: 600, column: 40, scope: !5781)
!5783 = !DILocation(line: 600, column: 46, scope: !5781)
!5784 = !DILocation(line: 601, column: 7, scope: !5781)
!5785 = !DILocation(line: 601, column: 39, scope: !5781)
!5786 = !DILocation(line: 600, column: 6, scope: !4152)
!5787 = !DILocation(line: 602, column: 4, scope: !5781)
!5788 = !DILocation(line: 602, column: 10, scope: !5781)
!5789 = !DILocation(line: 602, column: 3, scope: !5781)
!5790 = !DILocation(line: 604, column: 2, scope: !4152)
!5791 = !DILocation(line: 605, column: 1, scope: !4152)
!5792 = distinct !DISubprogram(name: "resolve_seg_reg", scope: !3, file: !3, line: 281, type: !5793, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5795)
!5793 = !DISubroutineType(types: !5794)
!5794 = !{!109, !4062, !3977, !109}
!5795 = !{!5796, !5797, !5798, !5799}
!5796 = !DILocalVariable(name: "insn", arg: 1, scope: !5792, file: !3, line: 281, type: !4062)
!5797 = !DILocalVariable(name: "regs", arg: 2, scope: !5792, file: !3, line: 281, type: !3977)
!5798 = !DILocalVariable(name: "regoff", arg: 3, scope: !5792, file: !3, line: 281, type: !109)
!5799 = !DILocalVariable(name: "idx", scope: !5792, file: !3, line: 283, type: !109)
!5800 = !DILocation(line: 281, column: 41, scope: !5792)
!5801 = !DILocation(line: 281, column: 63, scope: !5792)
!5802 = !DILocation(line: 281, column: 73, scope: !5792)
!5803 = !DILocation(line: 283, column: 2, scope: !5792)
!5804 = !DILocation(line: 283, column: 6, scope: !5792)
!5805 = !DILocation(line: 291, column: 6, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 291, column: 6)
!5807 = !DILocation(line: 291, column: 13, scope: !5806)
!5808 = !DILocation(line: 291, column: 6, scope: !5792)
!5809 = !DILocation(line: 292, column: 22, scope: !5810)
!5810 = distinct !DILexicalBlock(scope: !5811, file: !3, line: 292, column: 7)
!5811 = distinct !DILexicalBlock(scope: !5806, file: !3, line: 291, column: 46)
!5812 = !DILocation(line: 292, column: 7, scope: !5810)
!5813 = !DILocation(line: 292, column: 7, scope: !5811)
!5814 = !DILocation(line: 293, column: 4, scope: !5810)
!5815 = !DILocation(line: 295, column: 4, scope: !5810)
!5816 = !DILocation(line: 298, column: 7, scope: !5817)
!5817 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 298, column: 6)
!5818 = !DILocation(line: 298, column: 6, scope: !5792)
!5819 = !DILocation(line: 299, column: 3, scope: !5817)
!5820 = !DILocation(line: 301, column: 27, scope: !5821)
!5821 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 301, column: 6)
!5822 = !DILocation(line: 301, column: 33, scope: !5821)
!5823 = !DILocation(line: 301, column: 7, scope: !5821)
!5824 = !DILocation(line: 301, column: 6, scope: !5792)
!5825 = !DILocation(line: 302, column: 30, scope: !5821)
!5826 = !DILocation(line: 302, column: 36, scope: !5821)
!5827 = !DILocation(line: 302, column: 42, scope: !5821)
!5828 = !DILocation(line: 302, column: 10, scope: !5821)
!5829 = !DILocation(line: 302, column: 3, scope: !5821)
!5830 = !DILocation(line: 304, column: 33, scope: !5792)
!5831 = !DILocation(line: 304, column: 8, scope: !5792)
!5832 = !DILocation(line: 304, column: 6, scope: !5792)
!5833 = !DILocation(line: 305, column: 6, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 305, column: 6)
!5835 = !DILocation(line: 305, column: 10, scope: !5834)
!5836 = !DILocation(line: 305, column: 6, scope: !5792)
!5837 = !DILocation(line: 306, column: 10, scope: !5834)
!5838 = !DILocation(line: 306, column: 3, scope: !5834)
!5839 = !DILocation(line: 308, column: 6, scope: !5840)
!5840 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 308, column: 6)
!5841 = !DILocation(line: 308, column: 10, scope: !5840)
!5842 = !DILocation(line: 308, column: 6, scope: !5792)
!5843 = !DILocation(line: 309, column: 30, scope: !5840)
!5844 = !DILocation(line: 309, column: 36, scope: !5840)
!5845 = !DILocation(line: 309, column: 42, scope: !5840)
!5846 = !DILocation(line: 309, column: 10, scope: !5840)
!5847 = !DILocation(line: 309, column: 3, scope: !5840)
!5848 = !DILocation(line: 315, column: 21, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 315, column: 6)
!5850 = !DILocation(line: 315, column: 6, scope: !5849)
!5851 = !DILocation(line: 315, column: 6, scope: !5792)
!5852 = !DILocation(line: 316, column: 7, scope: !5853)
!5853 = distinct !DILexicalBlock(scope: !5854, file: !3, line: 316, column: 7)
!5854 = distinct !DILexicalBlock(scope: !5849, file: !3, line: 315, column: 28)
!5855 = !DILocation(line: 316, column: 11, scope: !5853)
!5856 = !DILocation(line: 316, column: 30, scope: !5853)
!5857 = !DILocation(line: 317, column: 7, scope: !5853)
!5858 = !DILocation(line: 317, column: 11, scope: !5853)
!5859 = !DILocation(line: 316, column: 7, scope: !5854)
!5860 = !DILocation(line: 318, column: 8, scope: !5853)
!5861 = !DILocation(line: 318, column: 4, scope: !5853)
!5862 = !DILocation(line: 319, column: 2, scope: !5854)
!5863 = !DILocation(line: 321, column: 9, scope: !5792)
!5864 = !DILocation(line: 321, column: 2, scope: !5792)
!5865 = !DILocation(line: 322, column: 1, scope: !5792)
!5866 = distinct !DISubprogram(name: "get_seg_limit", scope: !3, file: !3, line: 748, type: !4237, scopeLine: 749, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5867)
!5867 = !{!5868, !5869, !5870, !5871, !5872}
!5868 = !DILocalVariable(name: "regs", arg: 1, scope: !5866, file: !3, line: 748, type: !3977)
!5869 = !DILocalVariable(name: "seg_reg_idx", arg: 2, scope: !5866, file: !3, line: 748, type: !109)
!5870 = !DILocalVariable(name: "desc", scope: !5866, file: !3, line: 750, type: !114)
!5871 = !DILocalVariable(name: "limit", scope: !5866, file: !3, line: 751, type: !110)
!5872 = !DILocalVariable(name: "sel", scope: !5866, file: !3, line: 752, type: !723)
!5873 = !DILocation(line: 748, column: 52, scope: !5866)
!5874 = !DILocation(line: 748, column: 62, scope: !5866)
!5875 = !DILocation(line: 750, column: 2, scope: !5866)
!5876 = !DILocation(line: 750, column: 21, scope: !5866)
!5877 = !DILocation(line: 751, column: 2, scope: !5866)
!5878 = !DILocation(line: 751, column: 16, scope: !5866)
!5879 = !DILocation(line: 752, column: 2, scope: !5866)
!5880 = !DILocation(line: 752, column: 8, scope: !5866)
!5881 = !DILocation(line: 754, column: 29, scope: !5866)
!5882 = !DILocation(line: 754, column: 35, scope: !5866)
!5883 = !DILocation(line: 754, column: 8, scope: !5866)
!5884 = !DILocation(line: 754, column: 6, scope: !5866)
!5885 = !DILocation(line: 755, column: 6, scope: !5886)
!5886 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 755, column: 6)
!5887 = !DILocation(line: 755, column: 10, scope: !5886)
!5888 = !DILocation(line: 755, column: 6, scope: !5866)
!5889 = !DILocation(line: 756, column: 3, scope: !5886)
!5890 = !DILocation(line: 758, column: 21, scope: !5891)
!5891 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 758, column: 6)
!5892 = !DILocation(line: 758, column: 6, scope: !5891)
!5893 = !DILocation(line: 758, column: 27, scope: !5891)
!5894 = !DILocation(line: 758, column: 41, scope: !5891)
!5895 = !DILocation(line: 758, column: 30, scope: !5891)
!5896 = !DILocation(line: 758, column: 6, scope: !5866)
!5897 = !DILocation(line: 759, column: 3, scope: !5891)
!5898 = !DILocation(line: 761, column: 7, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 761, column: 6)
!5900 = !DILocation(line: 761, column: 6, scope: !5866)
!5901 = !DILocation(line: 762, column: 3, scope: !5899)
!5902 = !DILocation(line: 764, column: 23, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 764, column: 6)
!5904 = !DILocation(line: 764, column: 7, scope: !5903)
!5905 = !DILocation(line: 764, column: 6, scope: !5866)
!5906 = !DILocation(line: 765, column: 3, scope: !5903)
!5907 = !DILocation(line: 773, column: 10, scope: !5866)
!5908 = !DILocation(line: 773, column: 8, scope: !5866)
!5909 = !DILocation(line: 774, column: 11, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5866, file: !3, line: 774, column: 6)
!5911 = !DILocation(line: 774, column: 6, scope: !5910)
!5912 = !DILocation(line: 774, column: 6, scope: !5866)
!5913 = !DILocation(line: 775, column: 12, scope: !5910)
!5914 = !DILocation(line: 775, column: 18, scope: !5910)
!5915 = !DILocation(line: 775, column: 25, scope: !5910)
!5916 = !DILocation(line: 775, column: 9, scope: !5910)
!5917 = !DILocation(line: 775, column: 3, scope: !5910)
!5918 = !DILocation(line: 777, column: 9, scope: !5866)
!5919 = !DILocation(line: 777, column: 2, scope: !5866)
!5920 = !DILocation(line: 778, column: 1, scope: !5866)
!5921 = distinct !DISubprogram(name: "check_seg_overrides", scope: !3, file: !3, line: 154, type: !5922, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5924)
!5922 = !DISubroutineType(types: !5923)
!5923 = !{!755, !4062, !109}
!5924 = !{!5925, !5926}
!5925 = !DILocalVariable(name: "insn", arg: 1, scope: !5921, file: !3, line: 154, type: !4062)
!5926 = !DILocalVariable(name: "regoff", arg: 2, scope: !5921, file: !3, line: 154, type: !109)
!5927 = !DILocation(line: 154, column: 46, scope: !5921)
!5928 = !DILocation(line: 154, column: 56, scope: !5921)
!5929 = !DILocation(line: 156, column: 6, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5921, file: !3, line: 156, column: 6)
!5931 = !DILocation(line: 156, column: 13, scope: !5930)
!5932 = !DILocation(line: 156, column: 45, scope: !5930)
!5933 = !DILocation(line: 156, column: 63, scope: !5930)
!5934 = !DILocation(line: 156, column: 48, scope: !5930)
!5935 = !DILocation(line: 156, column: 6, scope: !5921)
!5936 = !DILocation(line: 157, column: 3, scope: !5930)
!5937 = !DILocation(line: 159, column: 2, scope: !5921)
!5938 = !DILocation(line: 160, column: 1, scope: !5921)
!5939 = distinct !DISubprogram(name: "resolve_default_seg", scope: !3, file: !3, line: 179, type: !5793, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5940)
!5940 = !{!5941, !5942, !5943}
!5941 = !DILocalVariable(name: "insn", arg: 1, scope: !5939, file: !3, line: 179, type: !4062)
!5942 = !DILocalVariable(name: "regs", arg: 2, scope: !5939, file: !3, line: 179, type: !3977)
!5943 = !DILocalVariable(name: "off", arg: 3, scope: !5939, file: !3, line: 179, type: !109)
!5944 = !DILocation(line: 179, column: 45, scope: !5939)
!5945 = !DILocation(line: 179, column: 67, scope: !5939)
!5946 = !DILocation(line: 179, column: 77, scope: !5939)
!5947 = !DILocation(line: 181, column: 21, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 181, column: 6)
!5949 = !DILocation(line: 181, column: 6, scope: !5948)
!5950 = !DILocation(line: 181, column: 6, scope: !5939)
!5951 = !DILocation(line: 182, column: 3, scope: !5948)
!5952 = !DILocation(line: 197, column: 10, scope: !5939)
!5953 = !DILocation(line: 197, column: 2, scope: !5939)
!5954 = !DILocation(line: 202, column: 7, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5956, file: !3, line: 202, column: 7)
!5956 = distinct !DILexicalBlock(scope: !5939, file: !3, line: 197, column: 15)
!5957 = !DILocation(line: 202, column: 13, scope: !5955)
!5958 = !DILocation(line: 202, column: 24, scope: !5955)
!5959 = !DILocation(line: 202, column: 7, scope: !5956)
!5960 = !DILocation(line: 203, column: 4, scope: !5955)
!5961 = !DILocation(line: 202, column: 27, scope: !5955)
!5962 = !DILocation(line: 210, column: 3, scope: !5956)
!5963 = !DILocation(line: 213, column: 22, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5956, file: !3, line: 213, column: 7)
!5965 = !DILocation(line: 213, column: 7, scope: !5964)
!5966 = !DILocation(line: 213, column: 7, scope: !5956)
!5967 = !DILocation(line: 214, column: 4, scope: !5964)
!5968 = !DILocation(line: 215, column: 3, scope: !5956)
!5969 = !DILocation(line: 219, column: 3, scope: !5956)
!5970 = !DILocation(line: 222, column: 3, scope: !5956)
!5971 = !DILocation(line: 225, column: 3, scope: !5956)
!5972 = !DILocation(line: 227, column: 1, scope: !5939)
!5973 = distinct !DISubprogram(name: "get_seg_reg_override_idx", scope: !3, file: !3, line: 91, type: !4216, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5974)
!5974 = !{!5975, !5976, !5977, !5978, !5979, !5980}
!5975 = !DILocalVariable(name: "insn", arg: 1, scope: !5973, file: !3, line: 91, type: !4062)
!5976 = !DILocalVariable(name: "idx", scope: !5973, file: !3, line: 93, type: !109)
!5977 = !DILocalVariable(name: "num_overrides", scope: !5973, file: !3, line: 94, type: !109)
!5978 = !DILocalVariable(name: "i", scope: !5973, file: !3, line: 94, type: !109)
!5979 = !DILocalVariable(name: "p", scope: !5973, file: !3, line: 95, type: !4077)
!5980 = !DILocalVariable(name: "attr", scope: !5981, file: !3, line: 101, type: !4099)
!5981 = distinct !DILexicalBlock(scope: !5982, file: !3, line: 100, column: 35)
!5982 = distinct !DILexicalBlock(scope: !5983, file: !3, line: 100, column: 2)
!5983 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 100, column: 2)
!5984 = !DILocation(line: 91, column: 50, scope: !5973)
!5985 = !DILocation(line: 93, column: 2, scope: !5973)
!5986 = !DILocation(line: 93, column: 6, scope: !5973)
!5987 = !DILocation(line: 94, column: 2, scope: !5973)
!5988 = !DILocation(line: 94, column: 6, scope: !5973)
!5989 = !DILocation(line: 94, column: 25, scope: !5973)
!5990 = !DILocation(line: 95, column: 2, scope: !5973)
!5991 = !DILocation(line: 95, column: 14, scope: !5973)
!5992 = !DILocation(line: 97, column: 20, scope: !5973)
!5993 = !DILocation(line: 97, column: 2, scope: !5973)
!5994 = !DILocation(line: 100, column: 2, scope: !5983)
!5995 = !DILocation(line: 100, column: 2, scope: !5982)
!5996 = !DILocation(line: 0, scope: !5982)
!5997 = !DILocation(line: 101, column: 3, scope: !5981)
!5998 = !DILocation(line: 101, column: 15, scope: !5981)
!5999 = !DILocation(line: 103, column: 36, scope: !5981)
!6000 = !DILocation(line: 103, column: 10, scope: !5981)
!6001 = !DILocation(line: 103, column: 8, scope: !5981)
!6002 = !DILocation(line: 104, column: 11, scope: !5981)
!6003 = !DILocation(line: 104, column: 3, scope: !5981)
!6004 = !DILocation(line: 106, column: 8, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !5981, file: !3, line: 104, column: 17)
!6006 = !DILocation(line: 107, column: 17, scope: !6005)
!6007 = !DILocation(line: 108, column: 4, scope: !6005)
!6008 = !DILocation(line: 110, column: 8, scope: !6005)
!6009 = !DILocation(line: 111, column: 17, scope: !6005)
!6010 = !DILocation(line: 112, column: 4, scope: !6005)
!6011 = !DILocation(line: 114, column: 8, scope: !6005)
!6012 = !DILocation(line: 115, column: 17, scope: !6005)
!6013 = !DILocation(line: 116, column: 4, scope: !6005)
!6014 = !DILocation(line: 118, column: 8, scope: !6005)
!6015 = !DILocation(line: 119, column: 17, scope: !6005)
!6016 = !DILocation(line: 120, column: 4, scope: !6005)
!6017 = !DILocation(line: 122, column: 8, scope: !6005)
!6018 = !DILocation(line: 123, column: 17, scope: !6005)
!6019 = !DILocation(line: 124, column: 4, scope: !6005)
!6020 = !DILocation(line: 126, column: 8, scope: !6005)
!6021 = !DILocation(line: 127, column: 17, scope: !6005)
!6022 = !DILocation(line: 128, column: 4, scope: !6005)
!6023 = !DILocation(line: 131, column: 2, scope: !5982)
!6024 = !DILocation(line: 131, column: 2, scope: !5981)
!6025 = distinct !{!6025, !5994, !6026, !4211, !4212}
!6026 = !DILocation(line: 131, column: 2, scope: !5983)
!6027 = !DILocation(line: 134, column: 6, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 134, column: 6)
!6029 = !DILocation(line: 134, column: 20, scope: !6028)
!6030 = !DILocation(line: 134, column: 6, scope: !5973)
!6031 = !DILocation(line: 135, column: 3, scope: !6028)
!6032 = !DILocation(line: 137, column: 9, scope: !5973)
!6033 = !DILocation(line: 137, column: 2, scope: !5973)
!6034 = !DILocation(line: 138, column: 1, scope: !5973)
!6035 = distinct !DISubprogram(name: "is_string_insn", scope: !3, file: !3, line: 38, type: !4181, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6036)
!6036 = !{!6037}
!6037 = !DILocalVariable(name: "insn", arg: 1, scope: !6035, file: !3, line: 38, type: !4062)
!6038 = !DILocation(line: 38, column: 41, scope: !6035)
!6039 = !DILocation(line: 41, column: 6, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 41, column: 6)
!6041 = !DILocation(line: 41, column: 12, scope: !6040)
!6042 = !DILocation(line: 41, column: 19, scope: !6040)
!6043 = !DILocation(line: 41, column: 26, scope: !6040)
!6044 = !DILocation(line: 41, column: 6, scope: !6035)
!6045 = !DILocation(line: 42, column: 3, scope: !6040)
!6046 = !DILocation(line: 44, column: 10, scope: !6035)
!6047 = !DILocation(line: 44, column: 16, scope: !6035)
!6048 = !DILocation(line: 44, column: 23, scope: !6035)
!6049 = !DILocation(line: 44, column: 2, scope: !6035)
!6050 = !DILocation(line: 44, column: 33, scope: !6035)
!6051 = !DILocation(line: 48, column: 3, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6035, file: !3, line: 44, column: 33)
!6053 = !DILocation(line: 50, column: 3, scope: !6052)
!6054 = !DILocation(line: 52, column: 1, scope: !6035)
!6055 = !DISubprogram(name: "inat_get_opcode_attribute", scope: !6056, file: !6056, line: 97, type: !6057, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6056 = !DIFile(filename: "./arch/x86/include/asm/inat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6bb7b4e1f3c9759f1cc04be8dd9de68a")
!6057 = !DISubroutineType(types: !6058)
!6058 = !{!4099, !4077}
!6059 = distinct !DISubprogram(name: "get_desc_limit", scope: !4490, file: !4490, line: 394, type: !4491, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6060)
!6060 = !{!6061}
!6061 = !DILocalVariable(name: "desc", arg: 1, scope: !6059, file: !4490, line: 394, type: !4493)
!6062 = !DILocation(line: 394, column: 70, scope: !6059)
!6063 = !DILocation(line: 396, column: 9, scope: !6059)
!6064 = !DILocation(line: 396, column: 15, scope: !6059)
!6065 = !DILocation(line: 396, column: 25, scope: !6059)
!6066 = !DILocation(line: 396, column: 31, scope: !6059)
!6067 = !DILocation(line: 396, column: 38, scope: !6059)
!6068 = !DILocation(line: 396, column: 22, scope: !6059)
!6069 = !DILocation(line: 396, column: 2, scope: !6059)
!6070 = distinct !DISubprogram(name: "get_eff_addr_sib", scope: !3, file: !3, line: 1150, type: !5503, scopeLine: 1152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6071)
!6071 = !{!6072, !6073, !6074, !6075, !6076, !6077, !6078, !6079, !6080, !6083, !6084}
!6072 = !DILocalVariable(name: "insn", arg: 1, scope: !6070, file: !3, line: 1150, type: !4062)
!6073 = !DILocalVariable(name: "regs", arg: 2, scope: !6070, file: !3, line: 1150, type: !3977)
!6074 = !DILocalVariable(name: "base_offset", arg: 3, scope: !6070, file: !3, line: 1151, type: !2096)
!6075 = !DILocalVariable(name: "eff_addr", arg: 4, scope: !6070, file: !3, line: 1151, type: !5505)
!6076 = !DILocalVariable(name: "base", scope: !6070, file: !3, line: 1153, type: !1029)
!6077 = !DILocalVariable(name: "indx", scope: !6070, file: !3, line: 1153, type: !1029)
!6078 = !DILocalVariable(name: "indx_offset", scope: !6070, file: !3, line: 1154, type: !109)
!6079 = !DILocalVariable(name: "ret", scope: !6070, file: !3, line: 1155, type: !109)
!6080 = !DILocalVariable(name: "addr32", scope: !6081, file: !3, line: 1200, type: !109)
!6081 = distinct !DILexicalBlock(scope: !6082, file: !3, line: 1199, column: 29)
!6082 = distinct !DILexicalBlock(scope: !6070, file: !3, line: 1199, column: 6)
!6083 = !DILocalVariable(name: "base32", scope: !6081, file: !3, line: 1200, type: !109)
!6084 = !DILocalVariable(name: "idx32", scope: !6081, file: !3, line: 1200, type: !109)
!6085 = !DILocation(line: 1150, column: 42, scope: !6070)
!6086 = !DILocation(line: 1150, column: 64, scope: !6070)
!6087 = !DILocation(line: 1151, column: 13, scope: !6070)
!6088 = !DILocation(line: 1151, column: 32, scope: !6070)
!6089 = !DILocation(line: 1153, column: 2, scope: !6070)
!6090 = !DILocation(line: 1153, column: 7, scope: !6070)
!6091 = !DILocation(line: 1153, column: 13, scope: !6070)
!6092 = !DILocation(line: 1154, column: 2, scope: !6070)
!6093 = !DILocation(line: 1154, column: 6, scope: !6070)
!6094 = !DILocation(line: 1155, column: 2, scope: !6070)
!6095 = !DILocation(line: 1155, column: 6, scope: !6070)
!6096 = !DILocation(line: 1157, column: 6, scope: !6097)
!6097 = distinct !DILexicalBlock(scope: !6070, file: !3, line: 1157, column: 6)
!6098 = !DILocation(line: 1157, column: 12, scope: !6097)
!6099 = !DILocation(line: 1157, column: 23, scope: !6097)
!6100 = !DILocation(line: 1157, column: 28, scope: !6097)
!6101 = !DILocation(line: 1157, column: 31, scope: !6097)
!6102 = !DILocation(line: 1157, column: 37, scope: !6097)
!6103 = !DILocation(line: 1157, column: 48, scope: !6097)
!6104 = !DILocation(line: 1157, column: 6, scope: !6070)
!6105 = !DILocation(line: 1158, column: 3, scope: !6097)
!6106 = !DILocation(line: 1160, column: 23, scope: !6070)
!6107 = !DILocation(line: 1160, column: 8, scope: !6070)
!6108 = !DILocation(line: 1160, column: 6, scope: !6070)
!6109 = !DILocation(line: 1161, column: 6, scope: !6110)
!6110 = distinct !DILexicalBlock(scope: !6070, file: !3, line: 1161, column: 6)
!6111 = !DILocation(line: 1161, column: 6, scope: !6070)
!6112 = !DILocation(line: 1162, column: 10, scope: !6110)
!6113 = !DILocation(line: 1162, column: 3, scope: !6110)
!6114 = !DILocation(line: 1164, column: 7, scope: !6115)
!6115 = distinct !DILexicalBlock(scope: !6070, file: !3, line: 1164, column: 6)
!6116 = !DILocation(line: 1164, column: 13, scope: !6115)
!6117 = !DILocation(line: 1164, column: 19, scope: !6115)
!6118 = !DILocation(line: 1164, column: 6, scope: !6070)
!6119 = !DILocation(line: 1165, column: 3, scope: !6115)
!6120 = !DILocation(line: 1167, column: 6, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6070, file: !3, line: 1167, column: 6)
!6122 = !DILocation(line: 1167, column: 39, scope: !6121)
!6123 = !DILocation(line: 1167, column: 6, scope: !6070)
!6124 = !DILocation(line: 1168, column: 3, scope: !6121)
!6125 = !DILocation(line: 1170, column: 21, scope: !6070)
!6126 = !DILocation(line: 1170, column: 8, scope: !6070)
!6127 = !DILocation(line: 1170, column: 6, scope: !6070)
!6128 = !DILocation(line: 1171, column: 6, scope: !6129)
!6129 = distinct !DILexicalBlock(scope: !6070, file: !3, line: 1171, column: 6)
!6130 = !DILocation(line: 1171, column: 6, scope: !6070)
!6131 = !DILocation(line: 1172, column: 10, scope: !6129)
!6132 = !DILocation(line: 1172, column: 3, scope: !6129)
!6133 = !DILocation(line: 1174, column: 7, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6070, file: !3, line: 1174, column: 6)
!6135 = !DILocation(line: 1174, column: 13, scope: !6134)
!6136 = !DILocation(line: 1174, column: 17, scope: !6134)
!6137 = !DILocation(line: 1174, column: 6, scope: !6070)
!6138 = !DILocation(line: 1175, column: 3, scope: !6134)
!6139 = !DILocation(line: 1177, column: 32, scope: !6070)
!6140 = !DILocation(line: 1177, column: 38, scope: !6070)
!6141 = !DILocation(line: 1177, column: 17, scope: !6070)
!6142 = !DILocation(line: 1177, column: 3, scope: !6070)
!6143 = !DILocation(line: 1177, column: 15, scope: !6070)
!6144 = !DILocation(line: 1178, column: 31, scope: !6070)
!6145 = !DILocation(line: 1178, column: 37, scope: !6070)
!6146 = !DILocation(line: 1178, column: 16, scope: !6070)
!6147 = !DILocation(line: 1178, column: 14, scope: !6070)
!6148 = !DILocation(line: 1185, column: 7, scope: !6149)
!6149 = distinct !DILexicalBlock(scope: !6070, file: !3, line: 1185, column: 6)
!6150 = !DILocation(line: 1185, column: 6, scope: !6149)
!6151 = !DILocation(line: 1185, column: 19, scope: !6149)
!6152 = !DILocation(line: 1185, column: 6, scope: !6070)
!6153 = !DILocation(line: 1186, column: 8, scope: !6149)
!6154 = !DILocation(line: 1186, column: 3, scope: !6149)
!6155 = !DILocation(line: 1187, column: 12, scope: !6156)
!6156 = distinct !DILexicalBlock(scope: !6149, file: !3, line: 1187, column: 11)
!6157 = !DILocation(line: 1187, column: 11, scope: !6156)
!6158 = !DILocation(line: 1187, column: 24, scope: !6156)
!6159 = !DILocation(line: 1187, column: 11, scope: !6149)
!6160 = !DILocation(line: 1188, column: 3, scope: !6156)
!6161 = !DILocation(line: 1190, column: 28, scope: !6156)
!6162 = !DILocation(line: 1190, column: 35, scope: !6156)
!6163 = !DILocation(line: 1190, column: 34, scope: !6156)
!6164 = !DILocation(line: 1190, column: 10, scope: !6156)
!6165 = !DILocation(line: 1190, column: 8, scope: !6156)
!6166 = !DILocation(line: 1192, column: 6, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6070, file: !3, line: 1192, column: 6)
!6168 = !DILocation(line: 1192, column: 18, scope: !6167)
!6169 = !DILocation(line: 1192, column: 6, scope: !6070)
!6170 = !DILocation(line: 1193, column: 8, scope: !6167)
!6171 = !DILocation(line: 1193, column: 3, scope: !6167)
!6172 = !DILocation(line: 1194, column: 11, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6167, file: !3, line: 1194, column: 11)
!6174 = !DILocation(line: 1194, column: 23, scope: !6173)
!6175 = !DILocation(line: 1194, column: 11, scope: !6167)
!6176 = !DILocation(line: 1195, column: 3, scope: !6173)
!6177 = !DILocation(line: 1197, column: 28, scope: !6173)
!6178 = !DILocation(line: 1197, column: 34, scope: !6173)
!6179 = !DILocation(line: 1197, column: 10, scope: !6173)
!6180 = !DILocation(line: 1197, column: 8, scope: !6173)
!6181 = !DILocation(line: 1199, column: 6, scope: !6082)
!6182 = !DILocation(line: 1199, column: 12, scope: !6082)
!6183 = !DILocation(line: 1199, column: 23, scope: !6082)
!6184 = !DILocation(line: 1199, column: 6, scope: !6070)
!6185 = !DILocation(line: 1200, column: 3, scope: !6081)
!6186 = !DILocation(line: 1200, column: 7, scope: !6081)
!6187 = !DILocation(line: 1200, column: 15, scope: !6081)
!6188 = !DILocation(line: 1200, column: 23, scope: !6081)
!6189 = !DILocation(line: 1202, column: 12, scope: !6081)
!6190 = !DILocation(line: 1202, column: 17, scope: !6081)
!6191 = !DILocation(line: 1202, column: 10, scope: !6081)
!6192 = !DILocation(line: 1203, column: 11, scope: !6081)
!6193 = !DILocation(line: 1203, column: 16, scope: !6081)
!6194 = !DILocation(line: 1203, column: 9, scope: !6081)
!6195 = !DILocation(line: 1205, column: 12, scope: !6081)
!6196 = !DILocation(line: 1205, column: 21, scope: !6081)
!6197 = !DILocation(line: 1205, column: 35, scope: !6081)
!6198 = !DILocation(line: 1205, column: 32, scope: !6081)
!6199 = !DILocation(line: 1205, column: 27, scope: !6081)
!6200 = !DILocation(line: 1205, column: 19, scope: !6081)
!6201 = !DILocation(line: 1205, column: 10, scope: !6081)
!6202 = !DILocation(line: 1206, column: 13, scope: !6081)
!6203 = !DILocation(line: 1206, column: 19, scope: !6081)
!6204 = !DILocation(line: 1206, column: 32, scope: !6081)
!6205 = !DILocation(line: 1206, column: 10, scope: !6081)
!6206 = !DILocation(line: 1208, column: 15, scope: !6081)
!6207 = !DILocation(line: 1208, column: 22, scope: !6081)
!6208 = !DILocation(line: 1208, column: 4, scope: !6081)
!6209 = !DILocation(line: 1208, column: 13, scope: !6081)
!6210 = !DILocation(line: 1209, column: 2, scope: !6082)
!6211 = !DILocation(line: 1209, column: 2, scope: !6081)
!6212 = !DILocation(line: 1210, column: 15, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6082, file: !3, line: 1209, column: 9)
!6214 = !DILocation(line: 1210, column: 22, scope: !6213)
!6215 = !DILocation(line: 1210, column: 35, scope: !6213)
!6216 = !DILocation(line: 1210, column: 32, scope: !6213)
!6217 = !DILocation(line: 1210, column: 29, scope: !6213)
!6218 = !DILocation(line: 1210, column: 27, scope: !6213)
!6219 = !DILocation(line: 1210, column: 20, scope: !6213)
!6220 = !DILocation(line: 1210, column: 4, scope: !6213)
!6221 = !DILocation(line: 1210, column: 13, scope: !6213)
!6222 = !DILocation(line: 1211, column: 16, scope: !6213)
!6223 = !DILocation(line: 1211, column: 22, scope: !6213)
!6224 = !DILocation(line: 1211, column: 35, scope: !6213)
!6225 = !DILocation(line: 1211, column: 4, scope: !6213)
!6226 = !DILocation(line: 1211, column: 13, scope: !6213)
!6227 = !DILocation(line: 1214, column: 2, scope: !6070)
!6228 = !DILocation(line: 1215, column: 1, scope: !6070)
!6229 = distinct !DISubprogram(name: "get_eff_addr_modrm", scope: !3, file: !3, line: 1015, type: !5503, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6230)
!6230 = !{!6231, !6232, !6233, !6234, !6235, !6236, !6237}
!6231 = !DILocalVariable(name: "insn", arg: 1, scope: !6229, file: !3, line: 1015, type: !4062)
!6232 = !DILocalVariable(name: "regs", arg: 2, scope: !6229, file: !3, line: 1015, type: !3977)
!6233 = !DILocalVariable(name: "regoff", arg: 3, scope: !6229, file: !3, line: 1016, type: !2096)
!6234 = !DILocalVariable(name: "eff_addr", arg: 4, scope: !6229, file: !3, line: 1016, type: !5505)
!6235 = !DILocalVariable(name: "tmp", scope: !6229, file: !3, line: 1018, type: !1029)
!6236 = !DILocalVariable(name: "ret", scope: !6229, file: !3, line: 1019, type: !109)
!6237 = !DILocalVariable(name: "addr32", scope: !6238, file: !3, line: 1050, type: !109)
!6238 = distinct !DILexicalBlock(scope: !6239, file: !3, line: 1049, column: 29)
!6239 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 1049, column: 6)
!6240 = !DILocation(line: 1015, column: 44, scope: !6229)
!6241 = !DILocation(line: 1015, column: 66, scope: !6229)
!6242 = !DILocation(line: 1016, column: 15, scope: !6229)
!6243 = !DILocation(line: 1016, column: 29, scope: !6229)
!6244 = !DILocation(line: 1018, column: 2, scope: !6229)
!6245 = !DILocation(line: 1018, column: 7, scope: !6229)
!6246 = !DILocation(line: 1019, column: 2, scope: !6229)
!6247 = !DILocation(line: 1019, column: 6, scope: !6229)
!6248 = !DILocation(line: 1021, column: 6, scope: !6249)
!6249 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 1021, column: 6)
!6250 = !DILocation(line: 1021, column: 12, scope: !6249)
!6251 = !DILocation(line: 1021, column: 23, scope: !6249)
!6252 = !DILocation(line: 1021, column: 28, scope: !6249)
!6253 = !DILocation(line: 1021, column: 31, scope: !6249)
!6254 = !DILocation(line: 1021, column: 37, scope: !6249)
!6255 = !DILocation(line: 1021, column: 48, scope: !6249)
!6256 = !DILocation(line: 1021, column: 6, scope: !6229)
!6257 = !DILocation(line: 1022, column: 3, scope: !6249)
!6258 = !DILocation(line: 1024, column: 23, scope: !6229)
!6259 = !DILocation(line: 1024, column: 8, scope: !6229)
!6260 = !DILocation(line: 1024, column: 6, scope: !6229)
!6261 = !DILocation(line: 1025, column: 6, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 1025, column: 6)
!6263 = !DILocation(line: 1025, column: 6, scope: !6229)
!6264 = !DILocation(line: 1026, column: 10, scope: !6262)
!6265 = !DILocation(line: 1026, column: 3, scope: !6262)
!6266 = !DILocation(line: 1028, column: 6, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 1028, column: 6)
!6268 = !DILocation(line: 1028, column: 39, scope: !6267)
!6269 = !DILocation(line: 1028, column: 6, scope: !6229)
!6270 = !DILocation(line: 1029, column: 3, scope: !6267)
!6271 = !DILocation(line: 1031, column: 27, scope: !6229)
!6272 = !DILocation(line: 1031, column: 33, scope: !6229)
!6273 = !DILocation(line: 1031, column: 12, scope: !6229)
!6274 = !DILocation(line: 1031, column: 3, scope: !6229)
!6275 = !DILocation(line: 1031, column: 10, scope: !6229)
!6276 = !DILocation(line: 1038, column: 7, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6229, file: !3, line: 1038, column: 6)
!6278 = !DILocation(line: 1038, column: 6, scope: !6277)
!6279 = !DILocation(line: 1038, column: 14, scope: !6277)
!6280 = !DILocation(line: 1038, column: 6, scope: !6229)
!6281 = !DILocation(line: 1039, column: 22, scope: !6282)
!6282 = distinct !DILexicalBlock(scope: !6283, file: !3, line: 1039, column: 7)
!6283 = distinct !DILexicalBlock(scope: !6277, file: !3, line: 1038, column: 24)
!6284 = !DILocation(line: 1039, column: 7, scope: !6282)
!6285 = !DILocation(line: 1039, column: 7, scope: !6283)
!6286 = !DILocation(line: 1040, column: 10, scope: !6282)
!6287 = !DILocation(line: 1040, column: 16, scope: !6282)
!6288 = !DILocation(line: 1040, column: 21, scope: !6282)
!6289 = !DILocation(line: 1040, column: 27, scope: !6282)
!6290 = !DILocation(line: 1040, column: 19, scope: !6282)
!6291 = !DILocation(line: 1040, column: 8, scope: !6282)
!6292 = !DILocation(line: 1040, column: 4, scope: !6282)
!6293 = !DILocation(line: 1042, column: 8, scope: !6282)
!6294 = !DILocation(line: 1043, column: 2, scope: !6283)
!6295 = !DILocation(line: 1043, column: 14, scope: !6296)
!6296 = distinct !DILexicalBlock(scope: !6277, file: !3, line: 1043, column: 13)
!6297 = !DILocation(line: 1043, column: 13, scope: !6296)
!6298 = !DILocation(line: 1043, column: 21, scope: !6296)
!6299 = !DILocation(line: 1043, column: 13, scope: !6277)
!6300 = !DILocation(line: 1044, column: 3, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !6296, file: !3, line: 1043, column: 26)
!6302 = !DILocation(line: 1046, column: 27, scope: !6303)
!6303 = distinct !DILexicalBlock(scope: !6296, file: !3, line: 1045, column: 9)
!6304 = !DILocation(line: 1046, column: 34, scope: !6303)
!6305 = !DILocation(line: 1046, column: 33, scope: !6303)
!6306 = !DILocation(line: 1046, column: 9, scope: !6303)
!6307 = !DILocation(line: 1046, column: 7, scope: !6303)
!6308 = !DILocation(line: 1049, column: 6, scope: !6239)
!6309 = !DILocation(line: 1049, column: 12, scope: !6239)
!6310 = !DILocation(line: 1049, column: 23, scope: !6239)
!6311 = !DILocation(line: 1049, column: 6, scope: !6229)
!6312 = !DILocation(line: 1050, column: 3, scope: !6238)
!6313 = !DILocation(line: 1050, column: 7, scope: !6238)
!6314 = !DILocation(line: 1050, column: 22, scope: !6238)
!6315 = !DILocation(line: 1050, column: 26, scope: !6238)
!6316 = !DILocation(line: 1050, column: 16, scope: !6238)
!6317 = !DILocation(line: 1050, column: 42, scope: !6238)
!6318 = !DILocation(line: 1050, column: 48, scope: !6238)
!6319 = !DILocation(line: 1050, column: 61, scope: !6238)
!6320 = !DILocation(line: 1050, column: 40, scope: !6238)
!6321 = !DILocation(line: 1052, column: 15, scope: !6238)
!6322 = !DILocation(line: 1052, column: 22, scope: !6238)
!6323 = !DILocation(line: 1052, column: 4, scope: !6238)
!6324 = !DILocation(line: 1052, column: 13, scope: !6238)
!6325 = !DILocation(line: 1053, column: 2, scope: !6239)
!6326 = !DILocation(line: 1053, column: 2, scope: !6238)
!6327 = !DILocation(line: 1054, column: 15, scope: !6328)
!6328 = distinct !DILexicalBlock(scope: !6239, file: !3, line: 1053, column: 9)
!6329 = !DILocation(line: 1054, column: 21, scope: !6328)
!6330 = !DILocation(line: 1054, column: 27, scope: !6328)
!6331 = !DILocation(line: 1054, column: 40, scope: !6328)
!6332 = !DILocation(line: 1054, column: 19, scope: !6328)
!6333 = !DILocation(line: 1054, column: 4, scope: !6328)
!6334 = !DILocation(line: 1054, column: 13, scope: !6328)
!6335 = !DILocation(line: 1057, column: 2, scope: !6229)
!6336 = !DILocation(line: 1058, column: 1, scope: !6229)
!6337 = !DISubprogram(name: "insn_get_sib", scope: !4064, file: !4064, line: 138, type: !4216, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6338 = distinct !DISubprogram(name: "check_copy_size", scope: !4165, file: !4165, line: 237, type: !6339, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6341)
!6339 = !DISubroutineType(types: !6340)
!6340 = !{!755, !1813, !1071, !755}
!6341 = !{!6342, !6343, !6344, !6345, !6346, !6349}
!6342 = !DILocalVariable(name: "addr", arg: 1, scope: !6338, file: !4165, line: 237, type: !1813)
!6343 = !DILocalVariable(name: "bytes", arg: 2, scope: !6338, file: !4165, line: 237, type: !1071)
!6344 = !DILocalVariable(name: "is_source", arg: 3, scope: !6338, file: !4165, line: 237, type: !755)
!6345 = !DILocalVariable(name: "sz", scope: !6338, file: !4165, line: 239, type: !109)
!6346 = !DILocalVariable(name: "__ret_warn_on", scope: !6347, file: !4165, line: 249, type: !109)
!6347 = distinct !DILexicalBlock(scope: !6348, file: !4165, line: 249, column: 6)
!6348 = distinct !DILexicalBlock(scope: !6338, file: !4165, line: 249, column: 6)
!6349 = !DILocalVariable(name: "__flags", scope: !6350, file: !4165, line: 249, type: !109)
!6350 = distinct !DILexicalBlock(scope: !6351, file: !4165, line: 249, column: 6)
!6351 = distinct !DILexicalBlock(scope: !6347, file: !4165, line: 249, column: 6)
!6352 = !DILocation(line: 237, column: 29, scope: !6338)
!6353 = !DILocation(line: 237, column: 42, scope: !6338)
!6354 = !DILocation(line: 237, column: 54, scope: !6338)
!6355 = !DILocation(line: 239, column: 2, scope: !6338)
!6356 = !DILocation(line: 239, column: 6, scope: !6338)
!6357 = !DILocation(line: 239, column: 33, scope: !6338)
!6358 = !DILocation(line: 239, column: 11, scope: !6338)
!6359 = !DILocation(line: 240, column: 6, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6338, file: !4165, line: 240, column: 6)
!6361 = !DILocation(line: 0, scope: !6360)
!6362 = !DILocation(line: 240, column: 6, scope: !6338)
!6363 = !DILocation(line: 241, column: 29, scope: !6364)
!6364 = distinct !DILexicalBlock(scope: !6365, file: !4165, line: 241, column: 7)
!6365 = distinct !DILexicalBlock(scope: !6360, file: !4165, line: 240, column: 39)
!6366 = !DILocation(line: 241, column: 8, scope: !6364)
!6367 = !DILocation(line: 241, column: 7, scope: !6365)
!6368 = !DILocation(line: 242, column: 18, scope: !6364)
!6369 = !DILocation(line: 242, column: 22, scope: !6364)
!6370 = !DILocation(line: 242, column: 4, scope: !6364)
!6371 = !DILocation(line: 243, column: 12, scope: !6372)
!6372 = distinct !DILexicalBlock(scope: !6364, file: !4165, line: 243, column: 12)
!6373 = !DILocation(line: 243, column: 12, scope: !6364)
!6374 = !DILocation(line: 244, column: 4, scope: !6372)
!6375 = !{i32 1695186}
!6376 = !DILocation(line: 246, column: 4, scope: !6372)
!6377 = !{i32 1695215}
!6378 = !DILocation(line: 247, column: 3, scope: !6365)
!6379 = !DILocation(line: 249, column: 6, scope: !6347)
!6380 = !DILocation(line: 249, column: 6, scope: !6351)
!6381 = !DILocation(line: 249, column: 6, scope: !6350)
!6382 = !DILocation(line: 249, column: 6, scope: !6383)
!6383 = distinct !DILexicalBlock(scope: !6350, file: !4165, line: 249, column: 6)
!6384 = !DILocation(line: 249, column: 6, scope: !6385)
!6385 = distinct !DILexicalBlock(scope: !6350, file: !4165, line: 249, column: 6)
!6386 = !{i64 2149622530, i64 2149622559, i64 2149622605, i64 2149622663, i64 2149622717, i64 2149622771, i64 2149622826, i64 2149622857, i64 2149623165, i64 2149623171, i64 2149623218, i64 2149623241, i64 2149623267}
!6387 = !DILocation(line: 249, column: 6, scope: !6388)
!6388 = distinct !DILexicalBlock(scope: !6350, file: !4165, line: 249, column: 6)
!6389 = !DILocation(line: 249, column: 6, scope: !6348)
!6390 = !DILocation(line: 249, column: 6, scope: !6338)
!6391 = !DILocation(line: 250, column: 3, scope: !6348)
!6392 = !DILocation(line: 251, column: 20, scope: !6338)
!6393 = !DILocation(line: 251, column: 26, scope: !6338)
!6394 = !DILocation(line: 251, column: 33, scope: !6338)
!6395 = !DILocation(line: 251, column: 2, scope: !6338)
!6396 = !DILocation(line: 252, column: 2, scope: !6338)
!6397 = !DILocation(line: 253, column: 1, scope: !6338)
!6398 = !DISubprogram(name: "_copy_from_user", scope: !5044, file: !5044, line: 158, type: !5045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6399 = distinct !DISubprogram(name: "copy_overflow", scope: !4165, file: !4165, line: 230, type: !6400, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6402)
!6400 = !DISubroutineType(types: !6401)
!6401 = !{null, !109, !110}
!6402 = !{!6403, !6404}
!6403 = !DILocalVariable(name: "size", arg: 1, scope: !6399, file: !4165, line: 230, type: !109)
!6404 = !DILocalVariable(name: "count", arg: 2, scope: !6399, file: !4165, line: 230, type: !110)
!6405 = !DILocation(line: 230, column: 38, scope: !6399)
!6406 = !DILocation(line: 230, column: 58, scope: !6399)
!6407 = !DILocation(line: 233, column: 19, scope: !6408)
!6408 = distinct !DILexicalBlock(scope: !6399, file: !4165, line: 232, column: 6)
!6409 = !DILocation(line: 233, column: 25, scope: !6408)
!6410 = !DILocation(line: 233, column: 3, scope: !6408)
!6411 = !DILocation(line: 234, column: 1, scope: !6399)
!6412 = !DISubprogram(name: "__bad_copy_from", scope: !4165, file: !4165, line: 224, type: !2319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6413 = !DISubprogram(name: "__bad_copy_to", scope: !4165, file: !4165, line: 226, type: !2319, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6414 = distinct !DISubprogram(name: "check_object_size", scope: !4165, file: !4165, line: 218, type: !6415, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6417)
!6415 = !DISubroutineType(types: !6416)
!6416 = !{null, !1813, !110, !755}
!6417 = !{!6418, !6419, !6420}
!6418 = !DILocalVariable(name: "ptr", arg: 1, scope: !6414, file: !4165, line: 218, type: !1813)
!6419 = !DILocalVariable(name: "n", arg: 2, scope: !6414, file: !4165, line: 218, type: !110)
!6420 = !DILocalVariable(name: "to_user", arg: 3, scope: !6414, file: !4165, line: 219, type: !755)
!6421 = !DILocation(line: 218, column: 50, scope: !6414)
!6422 = !DILocation(line: 218, column: 69, scope: !6414)
!6423 = !DILocation(line: 219, column: 15, scope: !6414)
!6424 = !DILocation(line: 220, column: 3, scope: !6414)
!6425 = !DISubprogram(name: "__copy_overflow", scope: !4165, file: !4165, line: 228, type: !6400, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6426 = distinct !DISubprogram(name: "instrument_copy_from_user_before", scope: !6427, file: !6427, line: 127, type: !6428, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6430)
!6427 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6428 = !DISubroutineType(types: !6429)
!6429 = !{null, !1813, !1813, !110}
!6430 = !{!6431, !6432, !6433}
!6431 = !DILocalVariable(name: "to", arg: 1, scope: !6426, file: !6427, line: 127, type: !1813)
!6432 = !DILocalVariable(name: "from", arg: 2, scope: !6426, file: !6427, line: 127, type: !1813)
!6433 = !DILocalVariable(name: "n", arg: 3, scope: !6426, file: !6427, line: 127, type: !110)
!6434 = !DILocation(line: 127, column: 46, scope: !6426)
!6435 = !DILocation(line: 127, column: 69, scope: !6426)
!6436 = !DILocation(line: 127, column: 89, scope: !6426)
!6437 = !DILocation(line: 129, column: 20, scope: !6426)
!6438 = !DILocation(line: 129, column: 24, scope: !6426)
!6439 = !DILocation(line: 129, column: 2, scope: !6426)
!6440 = !DILocation(line: 130, column: 2, scope: !6426)
!6441 = !DILocation(line: 131, column: 1, scope: !6426)
!6442 = distinct !DISubprogram(name: "raw_copy_from_user", scope: !6443, file: !6443, line: 125, type: !5045, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6444)
!6443 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!6444 = !{!6445, !6446, !6447}
!6445 = !DILocalVariable(name: "dst", arg: 1, scope: !6442, file: !6443, line: 125, type: !111)
!6446 = !DILocalVariable(name: "src", arg: 2, scope: !6442, file: !6443, line: 125, type: !1813)
!6447 = !DILocalVariable(name: "size", arg: 3, scope: !6442, file: !6443, line: 125, type: !110)
!6448 = !DILocation(line: 125, column: 26, scope: !6442)
!6449 = !DILocation(line: 125, column: 50, scope: !6442)
!6450 = !DILocation(line: 125, column: 69, scope: !6442)
!6451 = !DILocation(line: 127, column: 27, scope: !6442)
!6452 = !DILocation(line: 127, column: 48, scope: !6442)
!6453 = !DILocation(line: 127, column: 53, scope: !6442)
!6454 = !DILocation(line: 127, column: 9, scope: !6442)
!6455 = !DILocation(line: 127, column: 2, scope: !6442)
!6456 = distinct !DISubprogram(name: "instrument_copy_from_user_after", scope: !6427, file: !6427, line: 144, type: !6457, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6459)
!6457 = !DISubroutineType(types: !6458)
!6458 = !{null, !1813, !1813, !110, !110}
!6459 = !{!6460, !6461, !6462, !6463}
!6460 = !DILocalVariable(name: "to", arg: 1, scope: !6456, file: !6427, line: 144, type: !1813)
!6461 = !DILocalVariable(name: "from", arg: 2, scope: !6456, file: !6427, line: 144, type: !1813)
!6462 = !DILocalVariable(name: "n", arg: 3, scope: !6456, file: !6427, line: 145, type: !110)
!6463 = !DILocalVariable(name: "left", arg: 4, scope: !6456, file: !6427, line: 145, type: !110)
!6464 = !DILocation(line: 144, column: 45, scope: !6456)
!6465 = !DILocation(line: 144, column: 68, scope: !6456)
!6466 = !DILocation(line: 145, column: 19, scope: !6456)
!6467 = !DILocation(line: 145, column: 36, scope: !6456)
!6468 = !DILocation(line: 147, column: 24, scope: !6456)
!6469 = !DILocation(line: 147, column: 28, scope: !6456)
!6470 = !DILocation(line: 147, column: 32, scope: !6456)
!6471 = !DILocation(line: 147, column: 30, scope: !6456)
!6472 = !DILocation(line: 147, column: 2, scope: !6456)
!6473 = !DILocation(line: 148, column: 1, scope: !6456)
!6474 = distinct !DISubprogram(name: "kasan_check_write", scope: !6475, file: !6475, line: 44, type: !6476, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6481)
!6475 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6476 = !DISubroutineType(types: !6477)
!6477 = !{!755, !6478, !7}
!6478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6479, size: 64)
!6479 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6480)
!6480 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6481 = !{!6482, !6483}
!6482 = !DILocalVariable(name: "p", arg: 1, scope: !6474, file: !6475, line: 44, type: !6478)
!6483 = !DILocalVariable(name: "size", arg: 2, scope: !6474, file: !6475, line: 44, type: !7)
!6484 = !DILocation(line: 44, column: 59, scope: !6474)
!6485 = !DILocation(line: 44, column: 75, scope: !6474)
!6486 = !DILocation(line: 46, column: 2, scope: !6474)
!6487 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6488, file: !6488, line: 229, type: !6489, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6491)
!6488 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6489 = !DISubroutineType(types: !6490)
!6490 = !{null, !6478, !1071, !109}
!6491 = !{!6492, !6493, !6494}
!6492 = !DILocalVariable(name: "ptr", arg: 1, scope: !6487, file: !6488, line: 229, type: !6478)
!6493 = !DILocalVariable(name: "size", arg: 2, scope: !6487, file: !6488, line: 229, type: !1071)
!6494 = !DILocalVariable(name: "type", arg: 3, scope: !6487, file: !6488, line: 230, type: !109)
!6495 = !DILocation(line: 229, column: 60, scope: !6487)
!6496 = !DILocation(line: 229, column: 72, scope: !6487)
!6497 = !DILocation(line: 230, column: 15, scope: !6487)
!6498 = !DILocation(line: 230, column: 23, scope: !6487)
!6499 = distinct !DISubprogram(name: "copy_user_generic", scope: !6443, file: !6443, line: 105, type: !5045, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6500)
!6500 = !{!6501, !6502, !6503}
!6501 = !DILocalVariable(name: "to", arg: 1, scope: !6499, file: !6443, line: 105, type: !111)
!6502 = !DILocalVariable(name: "from", arg: 2, scope: !6499, file: !6443, line: 105, type: !1813)
!6503 = !DILocalVariable(name: "len", arg: 3, scope: !6499, file: !6443, line: 105, type: !110)
!6504 = !DILocation(line: 105, column: 25, scope: !6499)
!6505 = !DILocation(line: 105, column: 41, scope: !6499)
!6506 = !DILocation(line: 105, column: 61, scope: !6499)
!6507 = !DILocation(line: 107, column: 2, scope: !6499)
!6508 = !DILocation(line: 112, column: 2, scope: !6499)
!6509 = !{i64 5971049, i64 5971054, i64 2153457744, i64 2153457750, i64 2153457766, i64 2153457782, i64 2153457809, i64 2153458132, i64 2153457343, i64 2153458138, i64 2153458186, i64 2153458250, i64 2153458314, i64 2153458371, i64 2153457424, i64 2153457449, i64 2153458655, i64 2153458796, i64 2153458716, i64 2153458810, i64 2153457541, i64 5971151, i64 2153458875, i64 2153458919, i64 2153458942, i64 2153458975, i64 2153459006, i64 2153459045}
!6510 = !DILocation(line: 120, column: 2, scope: !6499)
!6511 = !DILocation(line: 121, column: 9, scope: !6499)
!6512 = !DILocation(line: 121, column: 2, scope: !6499)
!6513 = distinct !DISubprogram(name: "stac", scope: !6514, file: !6514, line: 36, type: !2319, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6514 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!6515 = !DILocation(line: 39, column: 2, scope: !6513)
!6516 = !{i64 2153368311, i64 2153368339, i64 2153368345, i64 2153368361, i64 2153368377, i64 2153368404, i64 2153368718, i64 2153368061, i64 2153368724, i64 2153368772, i64 2153368836, i64 2153368900, i64 2153368957, i64 2153368142, i64 2153368167, i64 2153369164, i64 2153369300, i64 2153369225, i64 2153369314, i64 2153368259}
!6517 = !DILocation(line: 40, column: 1, scope: !6513)
!6518 = distinct !DISubprogram(name: "clac", scope: !6514, file: !6514, line: 30, type: !2319, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6519 = !DILocation(line: 33, column: 2, scope: !6518)
!6520 = !{i64 2153366644, i64 2153366672, i64 2153366678, i64 2153366694, i64 2153366710, i64 2153366737, i64 2153367051, i64 2153366394, i64 2153367057, i64 2153367105, i64 2153367169, i64 2153367233, i64 2153367290, i64 2153366475, i64 2153366500, i64 2153367497, i64 2153367633, i64 2153367558, i64 2153367647, i64 2153366592}
!6521 = !DILocation(line: 34, column: 1, scope: !6518)
!6522 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !6523, file: !6523, line: 70, type: !6524, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6526)
!6523 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6524 = !DISubroutineType(types: !6525)
!6525 = !{null, !1813, !1071}
!6526 = !{!6527, !6528}
!6527 = !DILocalVariable(name: "address", arg: 1, scope: !6522, file: !6523, line: 70, type: !1813)
!6528 = !DILocalVariable(name: "size", arg: 2, scope: !6522, file: !6523, line: 70, type: !1071)
!6529 = !DILocation(line: 70, column: 54, scope: !6522)
!6530 = !DILocation(line: 70, column: 70, scope: !6522)
!6531 = !DILocation(line: 72, column: 1, scope: !6522)
