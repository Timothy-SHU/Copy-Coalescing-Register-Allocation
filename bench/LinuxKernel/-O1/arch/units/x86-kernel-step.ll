; ModuleID = 'arch/x86/kernel/step.c'
source_filename = "arch/x86/kernel/step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { i64 }
%struct.pcpu_hot = type { %union.anon.19 }
%union.anon.19 = type { %struct.anon.20, [16 x i8] }
%struct.anon.20 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %union.anon.13, i64, i64, %union.anon.14 }
%union.anon.13 = type { i64 }
%union.anon.14 = type { i64 }
%struct.task_struct = type { %struct.thread_info, i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i64, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, ptr, [32 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, %union.rcu_special, %struct.list_head, ptr, i64, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i16, i64, %struct.restart_block, i32, i32, i64, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, ptr, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, %struct.task_io_accounting, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.mutex, i32, ptr, %struct.mutex, %struct.list_head, ptr, i16, i16, ptr, i32, i32, i64, i32, i32, i32, i32, %struct.callback_head, %struct.tlbflush_unmap_batch, ptr, %struct.page_frag, ptr, i32, i32, i64, i64, i64, i64, ptr, ptr, %struct.kmap_ctrl, %struct.callback_head, %struct.refcount_struct, i32, ptr, %struct.timer_list, ptr, %struct.refcount_struct, ptr, ptr, i64, i64, i64, %struct.callback_head, i32, %struct.llist_head, %struct.llist_head, %struct.callback_head, [48 x i8], %struct.thread_struct }
%struct.thread_info = type { i64, i64, i32, i32 }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.1, i16, i16 }
%struct.llist_node = type { ptr }
%union.anon.1 = type { i32 }
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
%struct.restart_block = type { i64, ptr, %union.anon.3 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.desc_struct = type { i16, i16, i32 }
%struct.fpu = type { i32, i64, ptr, ptr, %struct.fpu_state_perm, %struct.fpu_state_perm, %struct.fpstate }
%struct.fpu_state_perm = type { i64, i32, i32 }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.mm_struct = type { %struct.anon.15, [0 x i64] }
%struct.anon.15 = type { %struct.anon.16, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.16 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.17, i32, ptr }
%union.anon.17 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.ldt_struct = type { ptr, i32, i32 }

@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @convert_ip_to_linear(ptr noundef %child, ptr noundef %regs) #0 align 16 !dbg !4137 {
entry:
  %retval = alloca i64, align 8
  %child.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %addr = alloca i64, align 8
  %seg = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %desc = alloca ptr, align 8
  %base = alloca i64, align 8
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !4141, metadata !DIExpression()), !dbg !4149
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4142, metadata !DIExpression()), !dbg !4150
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #9, !dbg !4151
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !4143, metadata !DIExpression()), !dbg !4152
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg) #9, !dbg !4151
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !4144, metadata !DIExpression()), !dbg !4153
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4154
  %ip = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 16, !dbg !4155
  %1 = load i64, ptr %ip, align 8, !dbg !4155
  store i64 %1, ptr %addr, align 8, !dbg !4156
  %2 = load ptr, ptr %regs.addr, align 8, !dbg !4157
  %3 = getelementptr inbounds %struct.pt_regs, ptr %2, i32 0, i32 17, !dbg !4158
  %4 = load i16, ptr %3, align 8, !dbg !4158
  %conv = zext i16 %4 to i64, !dbg !4157
  store i64 %conv, ptr %seg, align 8, !dbg !4159
  %5 = load ptr, ptr %regs.addr, align 8, !dbg !4160
  %call = call i32 @v8086_mode(ptr noundef %5) #10, !dbg !4162
  %tobool = icmp ne i32 %call, 0, !dbg !4162
  br i1 %tobool, label %if.then, label %if.end, !dbg !4163

if.then:                                          ; preds = %entry
  %6 = load i64, ptr %addr, align 8, !dbg !4164
  %and = and i64 %6, 65535, !dbg !4166
  %7 = load i64, ptr %seg, align 8, !dbg !4167
  %shl = shl i64 %7, 4, !dbg !4168
  %add = add i64 %and, %shl, !dbg !4169
  store i64 %add, ptr %addr, align 8, !dbg !4170
  %8 = load i64, ptr %addr, align 8, !dbg !4171
  store i64 %8, ptr %retval, align 8, !dbg !4172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4172

if.end:                                           ; preds = %entry
  %9 = load i64, ptr %seg, align 8, !dbg !4173
  %and1 = and i64 %9, 4, !dbg !4174
  %cmp = icmp eq i64 %and1, 4, !dbg !4175
  br i1 %cmp, label %if.then3, label %if.end30, !dbg !4176

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #9, !dbg !4177
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !4145, metadata !DIExpression()), !dbg !4178
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #9, !dbg !4179
  call void @llvm.dbg.declare(metadata ptr %base, metadata !4148, metadata !DIExpression()), !dbg !4180
  %10 = load i64, ptr %seg, align 8, !dbg !4181
  %shr = lshr i64 %10, 3, !dbg !4181
  store i64 %shr, ptr %seg, align 8, !dbg !4181
  %11 = load ptr, ptr %child.addr, align 8, !dbg !4182
  %mm = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 49, !dbg !4183
  %12 = load ptr, ptr %mm, align 64, !dbg !4183
  %13 = getelementptr inbounds %struct.mm_struct, ptr %12, i32 0, i32 0, !dbg !4184
  %context = getelementptr inbounds %struct.anon.15, ptr %13, i32 0, i32 44, !dbg !4184
  %lock = getelementptr inbounds %struct.mm_context_t, ptr %context, i32 0, i32 6, !dbg !4185
  call void @mutex_lock(ptr noundef %lock) #10, !dbg !4186
  %14 = load ptr, ptr %child.addr, align 8, !dbg !4187
  %mm4 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 49, !dbg !4187
  %15 = load ptr, ptr %mm4, align 64, !dbg !4187
  %16 = getelementptr inbounds %struct.mm_struct, ptr %15, i32 0, i32 0, !dbg !4187
  %context5 = getelementptr inbounds %struct.anon.15, ptr %16, i32 0, i32 44, !dbg !4187
  %ldt = getelementptr inbounds %struct.mm_context_t, ptr %context5, i32 0, i32 4, !dbg !4187
  %17 = load ptr, ptr %ldt, align 32, !dbg !4187
  %tobool6 = icmp ne ptr %17, null, !dbg !4187
  br i1 %tobool6, label %lor.rhs, label %lor.end, !dbg !4187

lor.rhs:                                          ; preds = %if.then3
  %18 = load i64, ptr %seg, align 8, !dbg !4187
  %19 = load ptr, ptr %child.addr, align 8, !dbg !4187
  %mm7 = getelementptr inbounds %struct.task_struct, ptr %19, i32 0, i32 49, !dbg !4187
  %20 = load ptr, ptr %mm7, align 64, !dbg !4187
  %21 = getelementptr inbounds %struct.mm_struct, ptr %20, i32 0, i32 0, !dbg !4187
  %context8 = getelementptr inbounds %struct.anon.15, ptr %21, i32 0, i32 44, !dbg !4187
  %ldt9 = getelementptr inbounds %struct.mm_context_t, ptr %context8, i32 0, i32 4, !dbg !4187
  %22 = load ptr, ptr %ldt9, align 32, !dbg !4187
  %nr_entries = getelementptr inbounds %struct.ldt_struct, ptr %22, i32 0, i32 1, !dbg !4187
  %23 = load i32, ptr %nr_entries, align 8, !dbg !4187
  %conv10 = zext i32 %23 to i64, !dbg !4187
  %cmp11 = icmp uge i64 %18, %conv10, !dbg !4187
  br label %lor.end, !dbg !4187

lor.end:                                          ; preds = %lor.rhs, %if.then3
  %24 = phi i1 [ true, %if.then3 ], [ %cmp11, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !4187
  %lnot13 = xor i1 %lnot, true, !dbg !4187
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !4187
  %conv14 = sext i32 %lnot.ext to i64, !dbg !4187
  %expval = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !4187
  %tobool15 = icmp ne i64 %expval, 0, !dbg !4187
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !4189

if.then16:                                        ; preds = %lor.end
  store i64 -1, ptr %addr, align 8, !dbg !4190
  br label %if.end26, !dbg !4191

if.else:                                          ; preds = %lor.end
  %25 = load ptr, ptr %child.addr, align 8, !dbg !4192
  %mm17 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 49, !dbg !4194
  %26 = load ptr, ptr %mm17, align 64, !dbg !4194
  %27 = getelementptr inbounds %struct.mm_struct, ptr %26, i32 0, i32 0, !dbg !4195
  %context18 = getelementptr inbounds %struct.anon.15, ptr %27, i32 0, i32 44, !dbg !4195
  %ldt19 = getelementptr inbounds %struct.mm_context_t, ptr %context18, i32 0, i32 4, !dbg !4196
  %28 = load ptr, ptr %ldt19, align 32, !dbg !4196
  %entries = getelementptr inbounds %struct.ldt_struct, ptr %28, i32 0, i32 0, !dbg !4197
  %29 = load ptr, ptr %entries, align 8, !dbg !4197
  %30 = load i64, ptr %seg, align 8, !dbg !4198
  %arrayidx = getelementptr %struct.desc_struct, ptr %29, i64 %30, !dbg !4192
  store ptr %arrayidx, ptr %desc, align 8, !dbg !4199
  %31 = load ptr, ptr %desc, align 8, !dbg !4200
  %call20 = call i64 @get_desc_base(ptr noundef %31) #10, !dbg !4201
  store i64 %call20, ptr %base, align 8, !dbg !4202
  %32 = load ptr, ptr %desc, align 8, !dbg !4203
  %d = getelementptr inbounds %struct.desc_struct, ptr %32, i32 0, i32 2, !dbg !4205
  %bf.load = load i32, ptr %d, align 1, !dbg !4205
  %bf.lshr = lshr i32 %bf.load, 22, !dbg !4205
  %bf.clear = and i32 %bf.lshr, 1, !dbg !4205
  %bf.cast = trunc i32 %bf.clear to i16, !dbg !4205
  %tobool21 = icmp ne i16 %bf.cast, 0, !dbg !4203
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !4206

if.then22:                                        ; preds = %if.else
  %33 = load i64, ptr %addr, align 8, !dbg !4207
  %and23 = and i64 %33, 65535, !dbg !4207
  store i64 %and23, ptr %addr, align 8, !dbg !4207
  br label %if.end24, !dbg !4208

if.end24:                                         ; preds = %if.then22, %if.else
  %34 = load i64, ptr %base, align 8, !dbg !4209
  %35 = load i64, ptr %addr, align 8, !dbg !4210
  %add25 = add i64 %35, %34, !dbg !4210
  store i64 %add25, ptr %addr, align 8, !dbg !4210
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.then16
  %36 = load ptr, ptr %child.addr, align 8, !dbg !4211
  %mm27 = getelementptr inbounds %struct.task_struct, ptr %36, i32 0, i32 49, !dbg !4212
  %37 = load ptr, ptr %mm27, align 64, !dbg !4212
  %38 = getelementptr inbounds %struct.mm_struct, ptr %37, i32 0, i32 0, !dbg !4213
  %context28 = getelementptr inbounds %struct.anon.15, ptr %38, i32 0, i32 44, !dbg !4213
  %lock29 = getelementptr inbounds %struct.mm_context_t, ptr %context28, i32 0, i32 6, !dbg !4214
  call void @mutex_unlock(ptr noundef %lock29) #10, !dbg !4215
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #9, !dbg !4216
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #9, !dbg !4216
  br label %if.end30, !dbg !4217

if.end30:                                         ; preds = %if.end26, %if.end
  %39 = load i64, ptr %addr, align 8, !dbg !4218
  store i64 %39, ptr %retval, align 8, !dbg !4219
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4219

cleanup:                                          ; preds = %if.end30, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg) #9, !dbg !4220
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #9, !dbg !4220
  %40 = load i64, ptr %retval, align 8, !dbg !4220
  ret i64 %40, !dbg !4220
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @v8086_mode(ptr noundef %regs) #3 align 16 !dbg !4221 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4225, metadata !DIExpression()), !dbg !4226
  ret i32 0, !dbg !4227
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4228 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_desc_base(ptr noundef %desc) #6 align 16 !dbg !4232 {
entry:
  %desc.addr = alloca ptr, align 8
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !4239, metadata !DIExpression()), !dbg !4240
  %0 = load ptr, ptr %desc.addr, align 8, !dbg !4241
  %base0 = getelementptr inbounds %struct.desc_struct, ptr %0, i32 0, i32 1, !dbg !4242
  %1 = load i16, ptr %base0, align 1, !dbg !4242
  %conv = zext i16 %1 to i32, !dbg !4241
  %2 = load ptr, ptr %desc.addr, align 8, !dbg !4243
  %base1 = getelementptr inbounds %struct.desc_struct, ptr %2, i32 0, i32 2, !dbg !4244
  %bf.load = load i32, ptr %base1, align 1, !dbg !4244
  %bf.clear = and i32 %bf.load, 255, !dbg !4244
  %bf.cast = trunc i32 %bf.clear to i16, !dbg !4244
  %conv1 = zext i16 %bf.cast to i32, !dbg !4245
  %shl = shl i32 %conv1, 16, !dbg !4246
  %or = or i32 %conv, %shl, !dbg !4247
  %3 = load ptr, ptr %desc.addr, align 8, !dbg !4248
  %base2 = getelementptr inbounds %struct.desc_struct, ptr %3, i32 0, i32 2, !dbg !4249
  %bf.load2 = load i32, ptr %base2, align 1, !dbg !4249
  %bf.lshr = lshr i32 %bf.load2, 24, !dbg !4249
  %bf.cast3 = trunc i32 %bf.lshr to i16, !dbg !4249
  %conv4 = zext i16 %bf.cast3 to i32, !dbg !4250
  %shl5 = shl i32 %conv4, 24, !dbg !4251
  %or6 = or i32 %or, %shl5, !dbg !4252
  %conv7 = zext i32 %or6 to i64, !dbg !4253
  ret i64 %conv7, !dbg !4254
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4255 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @set_task_blockstep(ptr noundef %task, i1 noundef zeroext %on) #0 align 16 !dbg !4256 {
entry:
  %task.addr = alloca ptr, align 8
  %on.addr = alloca i8, align 1
  %debugctl = alloca i64, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4260, metadata !DIExpression()), !dbg !4263
  %frombool = zext i1 %on to i8
  store i8 %frombool, ptr %on.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %on.addr, metadata !4261, metadata !DIExpression()), !dbg !4264
  call void @llvm.lifetime.start.p0(i64 8, ptr %debugctl) #9, !dbg !4265
  call void @llvm.dbg.declare(metadata ptr %debugctl, metadata !4262, metadata !DIExpression()), !dbg !4266
  br label %do.body, !dbg !4267

do.body:                                          ; preds = %entry
  call void @arch_local_irq_disable() #10, !dbg !4268
  br label %do.cond, !dbg !4268

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4268

do.end:                                           ; preds = %do.cond
  %call = call i64 @get_debugctlmsr() #10, !dbg !4270
  store i64 %call, ptr %debugctl, align 8, !dbg !4271
  %0 = load i8, ptr %on.addr, align 1, !dbg !4272, !range !4274, !noundef !568
  %tobool = trunc i8 %0 to i1, !dbg !4272
  br i1 %tobool, label %if.then, label %if.else, !dbg !4275

if.then:                                          ; preds = %do.end
  %1 = load i64, ptr %debugctl, align 8, !dbg !4276
  %or = or i64 %1, 2, !dbg !4276
  store i64 %or, ptr %debugctl, align 8, !dbg !4276
  %2 = load ptr, ptr %task.addr, align 8, !dbg !4278
  call void @set_tsk_thread_flag(ptr noundef %2, i32 noundef 25) #10, !dbg !4279
  br label %if.end, !dbg !4280

if.else:                                          ; preds = %do.end
  %3 = load i64, ptr %debugctl, align 8, !dbg !4281
  %and = and i64 %3, -3, !dbg !4281
  store i64 %and, ptr %debugctl, align 8, !dbg !4281
  %4 = load ptr, ptr %task.addr, align 8, !dbg !4283
  call void @clear_tsk_thread_flag(ptr noundef %4, i32 noundef 25) #10, !dbg !4284
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load ptr, ptr %task.addr, align 8, !dbg !4285
  %call1 = call ptr @get_current() #10, !dbg !4287
  %cmp = icmp eq ptr %5, %call1, !dbg !4288
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4289

if.then2:                                         ; preds = %if.end
  %6 = load i64, ptr %debugctl, align 8, !dbg !4290
  call void @update_debugctlmsr(i64 noundef %6) #10, !dbg !4291
  br label %if.end3, !dbg !4291

if.end3:                                          ; preds = %if.then2, %if.end
  br label %do.body4, !dbg !4292

do.body4:                                         ; preds = %if.end3
  call void @arch_local_irq_enable() #10, !dbg !4293
  br label %do.cond5, !dbg !4293

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !4293

do.end6:                                          ; preds = %do.cond5
  call void @llvm.lifetime.end.p0(i64 8, ptr %debugctl) #9, !dbg !4295
  ret void, !dbg !4295
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !4296 {
entry:
  call void @native_irq_disable() #10, !dbg !4298
  ret void, !dbg !4299
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_debugctlmsr() #6 align 16 !dbg !4300 {
entry:
  %debugctlmsr = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %debugctlmsr) #9, !dbg !4305
  call void @llvm.dbg.declare(metadata ptr %debugctlmsr, metadata !4304, metadata !DIExpression()), !dbg !4306
  store i64 0, ptr %debugctlmsr, align 8, !dbg !4306
  %call = call i64 @native_read_msr(i32 noundef 473) #10, !dbg !4307
  store i64 %call, ptr %debugctlmsr, align 8, !dbg !4307
  %0 = load i64, ptr %debugctlmsr, align 8, !dbg !4308
  call void @llvm.lifetime.end.p0(i64 8, ptr %debugctlmsr) #9, !dbg !4309
  ret i64 %0, !dbg !4310
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #6 align 16 !dbg !4311 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4315, metadata !DIExpression()), !dbg !4317
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !4316, metadata !DIExpression()), !dbg !4318
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !4319
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !4319
  %1 = load i32, ptr %flag.addr, align 4, !dbg !4320
  call void @set_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #10, !dbg !4321
  ret void, !dbg !4322
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #6 align 16 !dbg !4323 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4325, metadata !DIExpression()), !dbg !4327
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !4326, metadata !DIExpression()), !dbg !4328
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !4329
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !4329
  %1 = load i32, ptr %flag.addr, align 4, !dbg !4330
  call void @clear_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #10, !dbg !4331
  ret void, !dbg !4332
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !4333 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #9, !dbg !4344
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4338, metadata !DIExpression()), !dbg !4344
  br label %do.body, !dbg !4344

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !4345
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4340, metadata !DIExpression()), !dbg !4345
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4345
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4345
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !4344
  br label %do.cond, !dbg !4345

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4345

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #9, !dbg !4346
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4342, metadata !DIExpression()), !dbg !4346
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #11, !dbg !4346, !srcloc !4347
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4346
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4346
  %3 = inttoptr i64 %2 to ptr, !dbg !4346
  store ptr %3, ptr %tmp, align 8, !dbg !4346
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #9, !dbg !4344
  %4 = load ptr, ptr %tmp, align 8, !dbg !4346
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4344
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4344
  store ptr %5, ptr %tmp1, align 8, !dbg !4344
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #9, !dbg !4348
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4344
  ret ptr %6, !dbg !4349
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @update_debugctlmsr(i64 noundef %debugctlmsr) #6 align 16 !dbg !4350 {
entry:
  %debugctlmsr.addr = alloca i64, align 8
  store i64 %debugctlmsr, ptr %debugctlmsr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %debugctlmsr.addr, metadata !4354, metadata !DIExpression()), !dbg !4355
  %0 = load i64, ptr %debugctlmsr.addr, align 8, !dbg !4356
  call void @wrmsrl(i32 noundef 473, i64 noundef %0) #10, !dbg !4357
  ret void, !dbg !4358
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !4359 {
entry:
  call void @native_irq_enable() #10, !dbg !4360
  ret void, !dbg !4361
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @user_enable_single_step(ptr noundef %child) #0 align 16 !dbg !4362 {
entry:
  %child.addr = alloca ptr, align 8
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !4366, metadata !DIExpression()), !dbg !4367
  %0 = load ptr, ptr %child.addr, align 8, !dbg !4368
  call void @enable_step(ptr noundef %0, i1 noundef zeroext false) #10, !dbg !4369
  ret void, !dbg !4370
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @enable_step(ptr noundef %child, i1 noundef zeroext %block) #0 align 16 !dbg !4371 {
entry:
  %child.addr = alloca ptr, align 8
  %block.addr = alloca i8, align 1
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !4373, metadata !DIExpression()), !dbg !4375
  %frombool = zext i1 %block to i8
  store i8 %frombool, ptr %block.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !4374, metadata !DIExpression()), !dbg !4376
  %0 = load ptr, ptr %child.addr, align 8, !dbg !4377
  %call = call i32 @enable_single_step(ptr noundef %0) #10, !dbg !4379
  %tobool = icmp ne i32 %call, 0, !dbg !4379
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !4380

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, ptr %block.addr, align 1, !dbg !4381, !range !4274, !noundef !568
  %tobool1 = trunc i8 %1 to i1, !dbg !4381
  br i1 %tobool1, label %if.then, label %if.else, !dbg !4382

if.then:                                          ; preds = %land.lhs.true
  %2 = load ptr, ptr %child.addr, align 8, !dbg !4383
  call void @set_task_blockstep(ptr noundef %2, i1 noundef zeroext true) #10, !dbg !4384
  br label %if.end5, !dbg !4384

if.else:                                          ; preds = %land.lhs.true, %entry
  %3 = load ptr, ptr %child.addr, align 8, !dbg !4385
  %call2 = call i32 @test_tsk_thread_flag(ptr noundef %3, i32 noundef 25) #10, !dbg !4387
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4387
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !4388

if.then4:                                         ; preds = %if.else
  %4 = load ptr, ptr %child.addr, align 8, !dbg !4389
  call void @set_task_blockstep(ptr noundef %4, i1 noundef zeroext false) #10, !dbg !4390
  br label %if.end, !dbg !4390

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  ret void, !dbg !4391
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @user_enable_block_step(ptr noundef %child) #0 align 16 !dbg !4392 {
entry:
  %child.addr = alloca ptr, align 8
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !4394, metadata !DIExpression()), !dbg !4395
  %0 = load ptr, ptr %child.addr, align 8, !dbg !4396
  call void @enable_step(ptr noundef %0, i1 noundef zeroext true) #10, !dbg !4397
  ret void, !dbg !4398
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @user_disable_single_step(ptr noundef %child) #0 align 16 !dbg !4399 {
entry:
  %child.addr = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp = alloca ptr, align 8
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !4401, metadata !DIExpression()), !dbg !4405
  %0 = load ptr, ptr %child.addr, align 8, !dbg !4406
  %call = call i32 @test_tsk_thread_flag(ptr noundef %0, i32 noundef 25) #10, !dbg !4408
  %tobool = icmp ne i32 %call, 0, !dbg !4408
  br i1 %tobool, label %if.then, label %if.end, !dbg !4409

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %child.addr, align 8, !dbg !4410
  call void @set_task_blockstep(ptr noundef %1, i1 noundef zeroext false) #10, !dbg !4411
  br label %if.end, !dbg !4411

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %child.addr, align 8, !dbg !4412
  call void @clear_tsk_thread_flag(ptr noundef %2, i32 noundef 4) #10, !dbg !4413
  %3 = load ptr, ptr %child.addr, align 8, !dbg !4414
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 0, !dbg !4414
  %syscall_work = getelementptr inbounds %struct.thread_info, ptr %thread_info, i32 0, i32 1, !dbg !4414
  call void @clear_bit(i64 noundef 6, ptr noundef %syscall_work) #10, !dbg !4414
  %4 = load ptr, ptr %child.addr, align 8, !dbg !4415
  %call1 = call i32 @test_and_clear_tsk_thread_flag(ptr noundef %4, i32 noundef 24) #10, !dbg !4416
  %tobool2 = icmp ne i32 %call1, 0, !dbg !4416
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4417

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !4418
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4402, metadata !DIExpression()), !dbg !4418
  %5 = load ptr, ptr %child.addr, align 8, !dbg !4418
  %call4 = call ptr @task_stack_page(ptr noundef %5) #10, !dbg !4418
  %6 = ptrtoint ptr %call4 to i64, !dbg !4418
  store i64 %6, ptr %__ptr, align 8, !dbg !4418
  %7 = load i64, ptr %__ptr, align 8, !dbg !4418
  %add = add i64 %7, 16384, !dbg !4418
  store i64 %add, ptr %__ptr, align 8, !dbg !4418
  %8 = load i64, ptr %__ptr, align 8, !dbg !4418
  %9 = inttoptr i64 %8 to ptr, !dbg !4418
  %add.ptr = getelementptr %struct.pt_regs, ptr %9, i64 -1, !dbg !4418
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4418
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !4419
  %10 = load ptr, ptr %tmp, align 8, !dbg !4418
  %flags = getelementptr inbounds %struct.pt_regs, ptr %10, i32 0, i32 18, !dbg !4420
  %11 = load i64, ptr %flags, align 8, !dbg !4421
  %and = and i64 %11, -257, !dbg !4421
  store i64 %and, ptr %flags, align 8, !dbg !4421
  br label %if.end5, !dbg !4419

if.end5:                                          ; preds = %if.then3, %if.end
  ret void, !dbg !4422
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #6 align 16 !dbg !4423 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4427, metadata !DIExpression()), !dbg !4429
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !4428, metadata !DIExpression()), !dbg !4430
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !4431
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !4431
  %1 = load i32, ptr %flag.addr, align 4, !dbg !4432
  %call = call i32 @test_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #10, !dbg !4433
  ret i32 %call, !dbg !4434
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4435 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4442, metadata !DIExpression()), !dbg !4444
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4443, metadata !DIExpression()), !dbg !4445
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4446
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4447
  %div = sdiv i64 %1, 64, !dbg !4447
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4448
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !4449
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4450
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4451
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !4452
  ret void, !dbg !4453
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_and_clear_tsk_thread_flag(ptr noundef %tsk, i32 noundef %flag) #6 align 16 !dbg !4454 {
entry:
  %tsk.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4456, metadata !DIExpression()), !dbg !4458
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !4457, metadata !DIExpression()), !dbg !4459
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !4460
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 0, !dbg !4460
  %1 = load i32, ptr %flag.addr, align 4, !dbg !4461
  %call = call i32 @test_and_clear_ti_thread_flag(ptr noundef %thread_info, i32 noundef %1) #10, !dbg !4462
  ret i32 %call, !dbg !4463
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @task_stack_page(ptr noundef %task) #3 align 16 !dbg !4464 {
entry:
  %task.addr = alloca ptr, align 8
  store ptr %task, ptr %task.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %task.addr, metadata !4471, metadata !DIExpression()), !dbg !4472
  %0 = load ptr, ptr %task.addr, align 8, !dbg !4473
  %stack = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 2, !dbg !4474
  %1 = load ptr, ptr %stack, align 32, !dbg !4474
  ret ptr %1, !dbg !4475
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !4476 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4477, !srcloc !4478
  ret void, !dbg !4479
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #6 align 16 !dbg !4480 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !4485, metadata !DIExpression()), !dbg !4487
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !4488
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4486, metadata !DIExpression()), !dbg !4489
  %0 = load i32, ptr %msr.addr, align 4, !dbg !4490
  %call = call i64 @__rdmsr(i32 noundef %0) #10, !dbg !4491
  store i64 %call, ptr %val, align 8, !dbg !4492
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #10, !dbg !4493
  br i1 %call1, label %if.then, label %if.end, !dbg !4495

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !4496
  %2 = load i64, ptr %val, align 8, !dbg !4497
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #10, !dbg !4498
  br label %if.end, !dbg !4498

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !4499
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !4500
  ret i64 %3, !dbg !4501
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #3 align 16 !dbg !4502 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !4504, metadata !DIExpression()), !dbg !4507
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #9, !dbg !4508
  call void @llvm.dbg.declare(metadata ptr %low, metadata !4505, metadata !DIExpression()), !dbg !4508
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #9, !dbg !4508
  call void @llvm.dbg.declare(metadata ptr %high, metadata !4506, metadata !DIExpression()), !dbg !4508
  %0 = load i32, ptr %msr.addr, align 4, !dbg !4509
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #9, !dbg !4510, !srcloc !4511
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !4510
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !4510
  store i64 %asmresult, ptr %low, align 8, !dbg !4510
  store i64 %asmresult1, ptr %high, align 8, !dbg !4510
  %2 = load i64, ptr %low, align 8, !dbg !4512
  %3 = load i64, ptr %high, align 8, !dbg !4512
  %shl = shl i64 %3, 32, !dbg !4512
  %or = or i64 %2, %shl, !dbg !4512
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #9, !dbg !4513
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #9, !dbg !4513
  ret i64 %or, !dbg !4514
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #3 align 16 !dbg !4515 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4531, metadata !DIExpression()), !dbg !4532
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4533
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #10, !dbg !4534
  ret i1 %call, !dbg !4535
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4536 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !4539 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !4544, metadata !DIExpression()), !dbg !4547
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !4545, metadata !DIExpression()), !dbg !4548
  %0 = load ptr, ptr %key.addr, align 8, !dbg !4549
  %1 = load i8, ptr %branch.addr, align 1, !dbg !4550, !range !4274, !noundef !568
  %tobool = trunc i8 %1 to i1, !dbg !4550
  %conv = zext i1 %tobool to i32, !dbg !4550
  %or = or i32 2, %conv, !dbg !4551
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #9
          to label %asm.fallthrough [label %l_yes], !dbg !4552, !srcloc !4553

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4554
  br label %return, !dbg !4554

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !4546), !dbg !4555
  store i1 true, ptr %retval, align 1, !dbg !4556
  br label %return, !dbg !4556

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !4557
  ret i1 %2, !dbg !4557
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #6 align 16 !dbg !4558 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !4563, metadata !DIExpression()), !dbg !4565
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !4564, metadata !DIExpression()), !dbg !4566
  %0 = load i32, ptr %flag.addr, align 4, !dbg !4567
  %conv = sext i32 %0 to i64, !dbg !4567
  %1 = load ptr, ptr %ti.addr, align 8, !dbg !4568
  %flags = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 0, !dbg !4569
  call void @set_bit(i64 noundef %conv, ptr noundef %flags) #10, !dbg !4570
  ret void, !dbg !4571
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4572 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4574, metadata !DIExpression()), !dbg !4576
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4575, metadata !DIExpression()), !dbg !4577
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4578
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4579
  %div = sdiv i64 %1, 64, !dbg !4579
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4580
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !4581
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4582
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4583
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !4584
  ret void, !dbg !4585
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4586 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4594, metadata !DIExpression()), !dbg !4596
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4595, metadata !DIExpression()), !dbg !4597
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4598
  %1 = load i64, ptr %size.addr, align 8, !dbg !4599
  %conv = trunc i64 %1 to i32, !dbg !4599
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !4600
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4601
  %3 = load i64, ptr %size.addr, align 8, !dbg !4601
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #10, !dbg !4601
  ret void, !dbg !4602
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4603 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4606, metadata !DIExpression()), !dbg !4608
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4607, metadata !DIExpression()), !dbg !4609
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4610
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4612
  br i1 %1, label %if.then, label %if.else, !dbg !4613

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !4614
  %3 = load i64, ptr %nr.addr, align 8, !dbg !4614
  %shr = ashr i64 %3, 3, !dbg !4614
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !4614
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4616
  %and = and i64 %4, 7, !dbg !4616
  %sh_prom = trunc i64 %and to i32, !dbg !4616
  %shl = shl i32 1, %sh_prom, !dbg !4616
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #9, !dbg !4617, !srcloc !4618
  br label %if.end, !dbg !4619

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4620
  %6 = load i64, ptr %nr.addr, align 8, !dbg !4622
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #9, !dbg !4623, !srcloc !4624
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4625
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !4626 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4631, metadata !DIExpression()), !dbg !4633
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4632, metadata !DIExpression()), !dbg !4634
  ret i1 true, !dbg !4635
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !4636 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4641, metadata !DIExpression()), !dbg !4644
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4642, metadata !DIExpression()), !dbg !4645
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4643, metadata !DIExpression()), !dbg !4646
  ret void, !dbg !4647
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #6 align 16 !dbg !4648 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !4650, metadata !DIExpression()), !dbg !4652
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !4651, metadata !DIExpression()), !dbg !4653
  %0 = load i32, ptr %flag.addr, align 4, !dbg !4654
  %conv = sext i32 %0 to i64, !dbg !4654
  %1 = load ptr, ptr %ti.addr, align 8, !dbg !4655
  %flags = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 0, !dbg !4656
  call void @clear_bit(i64 noundef %conv, ptr noundef %flags) #10, !dbg !4657
  ret void, !dbg !4658
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #6 align 16 !dbg !4659 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !4663, metadata !DIExpression()), !dbg !4665
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4664, metadata !DIExpression()), !dbg !4666
  %0 = load i32, ptr %msr.addr, align 4, !dbg !4667
  %1 = load i64, ptr %val.addr, align 8, !dbg !4668
  %and = and i64 %1, 4294967295, !dbg !4669
  %conv = trunc i64 %and to i32, !dbg !4670
  %2 = load i64, ptr %val.addr, align 8, !dbg !4671
  %shr = lshr i64 %2, 32, !dbg !4672
  %conv1 = trunc i64 %shr to i32, !dbg !4673
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #10, !dbg !4674
  ret void, !dbg !4675
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #6 align 16 !dbg !4676 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !4680, metadata !DIExpression()), !dbg !4683
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !4681, metadata !DIExpression()), !dbg !4684
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !4682, metadata !DIExpression()), !dbg !4685
  %0 = load i32, ptr %msr.addr, align 4, !dbg !4686
  %1 = load i32, ptr %low.addr, align 4, !dbg !4687
  %2 = load i32, ptr %high.addr, align 4, !dbg !4688
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #10, !dbg !4689
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #10, !dbg !4690
  br i1 %call, label %if.then, label %if.end, !dbg !4692

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !4693
  %4 = load i32, ptr %high.addr, align 4, !dbg !4694
  %conv = zext i32 %4 to i64, !dbg !4695
  %shl = shl i64 %conv, 32, !dbg !4696
  %5 = load i32, ptr %low.addr, align 4, !dbg !4697
  %conv1 = zext i32 %5 to i64, !dbg !4697
  %or = or i64 %shl, %conv1, !dbg !4698
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #10, !dbg !4699
  br label %if.end, !dbg !4699

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4700
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #3 align 16 !dbg !4701 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !4703, metadata !DIExpression()), !dbg !4706
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !4704, metadata !DIExpression()), !dbg !4707
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !4705, metadata !DIExpression()), !dbg !4708
  %0 = load i32, ptr %msr.addr, align 4, !dbg !4709
  %1 = load i32, ptr %low.addr, align 4, !dbg !4710
  %2 = load i32, ptr %high.addr, align 4, !dbg !4711
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #9, !dbg !4712, !srcloc !4713
  ret void, !dbg !4714
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4715 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !4716 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4717, !srcloc !4718
  ret void, !dbg !4719
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @enable_single_step(ptr noundef %child) #0 align 16 !dbg !4720 {
entry:
  %retval = alloca i32, align 4
  %child.addr = alloca ptr, align 8
  %regs = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %oflags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !4724, metadata !DIExpression()), !dbg !4729
  call void @llvm.lifetime.start.p0(i64 8, ptr %regs) #9, !dbg !4730
  call void @llvm.dbg.declare(metadata ptr %regs, metadata !4725, metadata !DIExpression()), !dbg !4731
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !4732
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4726, metadata !DIExpression()), !dbg !4732
  %0 = load ptr, ptr %child.addr, align 8, !dbg !4732
  %call = call ptr @task_stack_page(ptr noundef %0) #10, !dbg !4732
  %1 = ptrtoint ptr %call to i64, !dbg !4732
  store i64 %1, ptr %__ptr, align 8, !dbg !4732
  %2 = load i64, ptr %__ptr, align 8, !dbg !4732
  %add = add i64 %2, 16384, !dbg !4732
  store i64 %add, ptr %__ptr, align 8, !dbg !4732
  %3 = load i64, ptr %__ptr, align 8, !dbg !4732
  %4 = inttoptr i64 %3 to ptr, !dbg !4732
  %add.ptr = getelementptr %struct.pt_regs, ptr %4, i64 -1, !dbg !4732
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4732
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !4733
  %5 = load ptr, ptr %tmp, align 8, !dbg !4732
  store ptr %5, ptr %regs, align 8, !dbg !4731
  call void @llvm.lifetime.start.p0(i64 8, ptr %oflags) #9, !dbg !4734
  call void @llvm.dbg.declare(metadata ptr %oflags, metadata !4728, metadata !DIExpression()), !dbg !4735
  %6 = load ptr, ptr %child.addr, align 8, !dbg !4736
  %call1 = call i32 @test_tsk_thread_flag(ptr noundef %6, i32 noundef 4) #10, !dbg !4736
  %tobool = icmp ne i32 %call1, 0, !dbg !4736
  %lnot = xor i1 %tobool, true, !dbg !4736
  %lnot2 = xor i1 %lnot, true, !dbg !4736
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4736
  %conv = sext i32 %lnot.ext to i64, !dbg !4736
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4736
  %tobool3 = icmp ne i64 %expval, 0, !dbg !4736
  br i1 %tobool3, label %if.then, label %if.end, !dbg !4738

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %regs, align 8, !dbg !4739
  %flags = getelementptr inbounds %struct.pt_regs, ptr %7, i32 0, i32 18, !dbg !4740
  %8 = load i64, ptr %flags, align 8, !dbg !4741
  %or = or i64 %8, 256, !dbg !4741
  store i64 %or, ptr %flags, align 8, !dbg !4741
  br label %if.end, !dbg !4739

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %child.addr, align 8, !dbg !4742
  call void @set_tsk_thread_flag(ptr noundef %9, i32 noundef 4) #10, !dbg !4743
  %10 = load ptr, ptr %child.addr, align 8, !dbg !4744
  %thread_info = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 0, !dbg !4744
  %syscall_work = getelementptr inbounds %struct.thread_info, ptr %thread_info, i32 0, i32 1, !dbg !4744
  call void @set_bit(i64 noundef 6, ptr noundef %syscall_work) #10, !dbg !4744
  %11 = load ptr, ptr %regs, align 8, !dbg !4745
  %flags4 = getelementptr inbounds %struct.pt_regs, ptr %11, i32 0, i32 18, !dbg !4746
  %12 = load i64, ptr %flags4, align 8, !dbg !4746
  store i64 %12, ptr %oflags, align 8, !dbg !4747
  %13 = load ptr, ptr %regs, align 8, !dbg !4748
  %flags5 = getelementptr inbounds %struct.pt_regs, ptr %13, i32 0, i32 18, !dbg !4749
  %14 = load i64, ptr %flags5, align 8, !dbg !4750
  %or6 = or i64 %14, 256, !dbg !4750
  store i64 %or6, ptr %flags5, align 8, !dbg !4750
  %15 = load ptr, ptr %child.addr, align 8, !dbg !4751
  %16 = load ptr, ptr %regs, align 8, !dbg !4753
  %call7 = call i32 @is_setting_trap_flag(ptr noundef %15, ptr noundef %16) #10, !dbg !4754
  %tobool8 = icmp ne i32 %call7, 0, !dbg !4754
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4755

if.then9:                                         ; preds = %if.end
  %17 = load ptr, ptr %child.addr, align 8, !dbg !4756
  call void @clear_tsk_thread_flag(ptr noundef %17, i32 noundef 24) #10, !dbg !4758
  store i32 0, ptr %retval, align 4, !dbg !4759
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4759

if.end10:                                         ; preds = %if.end
  %18 = load i64, ptr %oflags, align 8, !dbg !4760
  %and = and i64 %18, 256, !dbg !4762
  %tobool11 = icmp ne i64 %and, 0, !dbg !4762
  br i1 %tobool11, label %if.then12, label %if.end14, !dbg !4763

if.then12:                                        ; preds = %if.end10
  %19 = load ptr, ptr %child.addr, align 8, !dbg !4764
  %call13 = call i32 @test_tsk_thread_flag(ptr noundef %19, i32 noundef 24) #10, !dbg !4765
  store i32 %call13, ptr %retval, align 4, !dbg !4766
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4766

if.end14:                                         ; preds = %if.end10
  %20 = load ptr, ptr %child.addr, align 8, !dbg !4767
  call void @set_tsk_thread_flag(ptr noundef %20, i32 noundef 24) #10, !dbg !4768
  store i32 1, ptr %retval, align 4, !dbg !4769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4769

cleanup:                                          ; preds = %if.end14, %if.then12, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %oflags) #9, !dbg !4770
  call void @llvm.lifetime.end.p0(i64 8, ptr %regs) #9, !dbg !4770
  %21 = load i32, ptr %retval, align 4, !dbg !4770
  ret i32 %21, !dbg !4770
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @is_setting_trap_flag(ptr noundef %child, ptr noundef %regs) #0 align 16 !dbg !4771 {
entry:
  %retval = alloca i32, align 4
  %child.addr = alloca ptr, align 8
  %regs.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %copied = alloca i32, align 4
  %opcode = alloca [15 x i8], align 1
  %addr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %child, ptr %child.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %child.addr, metadata !4775, metadata !DIExpression()), !dbg !4784
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4776, metadata !DIExpression()), !dbg !4785
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !4786
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4777, metadata !DIExpression()), !dbg !4787
  call void @llvm.lifetime.start.p0(i64 4, ptr %copied) #9, !dbg !4786
  call void @llvm.dbg.declare(metadata ptr %copied, metadata !4778, metadata !DIExpression()), !dbg !4788
  call void @llvm.lifetime.start.p0(i64 15, ptr %opcode) #9, !dbg !4789
  call void @llvm.dbg.declare(metadata ptr %opcode, metadata !4779, metadata !DIExpression()), !dbg !4790
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #9, !dbg !4791
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !4783, metadata !DIExpression()), !dbg !4792
  %0 = load ptr, ptr %child.addr, align 8, !dbg !4793
  %1 = load ptr, ptr %regs.addr, align 8, !dbg !4794
  %call = call i64 @convert_ip_to_linear(ptr noundef %0, ptr noundef %1) #10, !dbg !4795
  store i64 %call, ptr %addr, align 8, !dbg !4792
  %2 = load ptr, ptr %child.addr, align 8, !dbg !4796
  %3 = load i64, ptr %addr, align 8, !dbg !4797
  %arraydecay = getelementptr inbounds [15 x i8], ptr %opcode, i64 0, i64 0, !dbg !4798
  %call1 = call i32 @access_process_vm(ptr noundef %2, i64 noundef %3, ptr noundef %arraydecay, i32 noundef 15, i32 noundef 8) #10, !dbg !4799
  store i32 %call1, ptr %copied, align 4, !dbg !4800
  store i32 0, ptr %i, align 4, !dbg !4801
  br label %for.cond, !dbg !4803

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !4804
  %5 = load i32, ptr %copied, align 4, !dbg !4806
  %cmp = icmp slt i32 %4, %5, !dbg !4807
  br i1 %cmp, label %for.body, label %for.end, !dbg !4808

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4, !dbg !4809
  %idxprom = sext i32 %6 to i64, !dbg !4811
  %arrayidx = getelementptr [15 x i8], ptr %opcode, i64 0, i64 %idxprom, !dbg !4811
  %7 = load i8, ptr %arrayidx, align 1, !dbg !4811
  %conv = zext i8 %7 to i32, !dbg !4811
  switch i32 %conv, label %sw.default [
    i32 157, label %sw.bb
    i32 207, label %sw.bb
    i32 102, label %sw.bb2
    i32 103, label %sw.bb2
    i32 38, label %sw.bb3
    i32 46, label %sw.bb3
    i32 54, label %sw.bb3
    i32 62, label %sw.bb3
    i32 100, label %sw.bb3
    i32 101, label %sw.bb3
    i32 240, label %sw.bb3
    i32 242, label %sw.bb3
    i32 243, label %sw.bb3
    i32 64, label %sw.bb4
    i32 65, label %sw.bb4
    i32 66, label %sw.bb4
    i32 67, label %sw.bb4
    i32 68, label %sw.bb4
    i32 69, label %sw.bb4
    i32 70, label %sw.bb4
    i32 71, label %sw.bb4
    i32 72, label %sw.bb4
    i32 73, label %sw.bb4
    i32 74, label %sw.bb4
    i32 75, label %sw.bb4
    i32 76, label %sw.bb4
    i32 77, label %sw.bb4
    i32 78, label %sw.bb4
    i32 79, label %sw.bb4
    i32 156, label %sw.bb6
  ], !dbg !4812

sw.bb:                                            ; preds = %for.body, %for.body
  store i32 1, ptr %retval, align 4, !dbg !4813
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4813

sw.bb2:                                           ; preds = %for.body, %for.body
  br label %for.inc, !dbg !4815

sw.bb3:                                           ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  br label %for.inc, !dbg !4816

sw.bb4:                                           ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  %8 = load ptr, ptr %regs.addr, align 8, !dbg !4817
  %call5 = call zeroext i1 @user_64bit_mode(ptr noundef %8) #10, !dbg !4819
  br i1 %call5, label %if.end, label %if.then, !dbg !4820

if.then:                                          ; preds = %sw.bb4
  store i32 0, ptr %retval, align 4, !dbg !4821
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4821

if.end:                                           ; preds = %sw.bb4
  br label %for.inc, !dbg !4822

sw.bb6:                                           ; preds = %for.body
  br label %sw.default, !dbg !4823

sw.default:                                       ; preds = %for.body, %sw.bb6
  store i32 0, ptr %retval, align 4, !dbg !4824
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4824

for.inc:                                          ; preds = %if.end, %sw.bb3, %sw.bb2
  %9 = load i32, ptr %i, align 4, !dbg !4825
  %inc = add i32 %9, 1, !dbg !4825
  store i32 %inc, ptr %i, align 4, !dbg !4825
  br label %for.cond, !dbg !4826, !llvm.loop !4827

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !4831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4831

cleanup:                                          ; preds = %for.end, %sw.default, %if.then, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #9, !dbg !4832
  call void @llvm.lifetime.end.p0(i64 15, ptr %opcode) #9, !dbg !4832
  call void @llvm.lifetime.end.p0(i64 4, ptr %copied) #9, !dbg !4832
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !4832
  %10 = load i32, ptr %retval, align 4, !dbg !4832
  ret i32 %10, !dbg !4832
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4833 dso_local i32 @access_process_vm(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @user_64bit_mode(ptr noundef %regs) #6 align 16 !dbg !4836 {
entry:
  %regs.addr = alloca ptr, align 8
  store ptr %regs, ptr %regs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regs.addr, metadata !4840, metadata !DIExpression()), !dbg !4841
  %0 = load ptr, ptr %regs.addr, align 8, !dbg !4842
  %1 = getelementptr inbounds %struct.pt_regs, ptr %0, i32 0, i32 17, !dbg !4843
  %2 = load i16, ptr %1, align 8, !dbg !4843
  %conv = zext i16 %2 to i32, !dbg !4842
  %cmp = icmp eq i32 %conv, 51, !dbg !4844
  ret i1 %cmp, !dbg !4845
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #6 align 16 !dbg !4846 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !4850, metadata !DIExpression()), !dbg !4852
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !4851, metadata !DIExpression()), !dbg !4853
  %0 = load i32, ptr %flag.addr, align 4, !dbg !4854
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4854
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4854

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !4854
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !4854
  %3 = ptrtoint ptr %flags to i64, !dbg !4854
  %cmp = icmp ne i64 %3, 0, !dbg !4854
  %conv = zext i1 %cmp to i32, !dbg !4854
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4854
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !4854

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !4854
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !4854
  %6 = ptrtoint ptr %flags2 to i64, !dbg !4854
  %cmp3 = icmp ne i64 %6, 0, !dbg !4854
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !4854

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !4854
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !4854
  %8 = load i64, ptr %flags6, align 8, !dbg !4854
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !4854
  br i1 %9, label %cond.true, label %cond.false, !dbg !4854

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !4854
  %conv7 = sext i32 %10 to i64, !dbg !4854
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !4854
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !4854
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #10, !dbg !4854
  %conv9 = zext i1 %call to i32, !dbg !4854
  br label %cond.end, !dbg !4854

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !4854
  %conv10 = sext i32 %12 to i64, !dbg !4854
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !4854
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !4854
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #10, !dbg !4854
  %conv13 = zext i1 %call12 to i32, !dbg !4854
  br label %cond.end, !dbg !4854

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !4854
  ret i32 %cond, !dbg !4855
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4856 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4863, metadata !DIExpression()), !dbg !4868
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4864, metadata !DIExpression()), !dbg !4869
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !4870
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4865, metadata !DIExpression()), !dbg !4871
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4872
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4873
  %div = udiv i64 %1, 64, !dbg !4873
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4874
  store ptr %add.ptr, ptr %p, align 8, !dbg !4871
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #9, !dbg !4875
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4866, metadata !DIExpression()), !dbg !4876
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4877
  %rem = urem i64 %2, 64, !dbg !4877
  %shl = shl i64 1, %rem, !dbg !4877
  store i64 %shl, ptr %mask, align 8, !dbg !4876
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !4878
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4867, metadata !DIExpression()), !dbg !4879
  %3 = load ptr, ptr %p, align 8, !dbg !4880
  %4 = load i64, ptr %3, align 8, !dbg !4881
  store i64 %4, ptr %val, align 8, !dbg !4879
  %5 = load i64, ptr %val, align 8, !dbg !4882
  %6 = load i64, ptr %mask, align 8, !dbg !4883
  %and = and i64 %5, %6, !dbg !4884
  %tobool = icmp ne i64 %and, 0, !dbg !4885
  %lnot = xor i1 %tobool, true, !dbg !4885
  %lnot1 = xor i1 %lnot, true, !dbg !4886
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !4887
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #9, !dbg !4887
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !4887
  ret i1 %lnot1, !dbg !4888
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4889 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4892, metadata !DIExpression()), !dbg !4894
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4893, metadata !DIExpression()), !dbg !4895
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4896
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4897
  %div = udiv i64 %1, 64, !dbg !4897
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4898
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !4899
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4900
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4901
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !4902
  ret i1 %call, !dbg !4903
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !4904 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4906, metadata !DIExpression()), !dbg !4908
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4907, metadata !DIExpression()), !dbg !4909
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4910
  %1 = load i64, ptr %size.addr, align 8, !dbg !4911
  %conv = trunc i64 %1 to i32, !dbg !4911
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !4912
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4913
  %3 = load i64, ptr %size.addr, align 8, !dbg !4913
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !4913
  ret void, !dbg !4914
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4915 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4917, metadata !DIExpression()), !dbg !4919
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4918, metadata !DIExpression()), !dbg !4920
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4921
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4922
  br i1 %1, label %cond.true, label %cond.false, !dbg !4922

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4923
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4924
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !4925
  %conv = zext i1 %call to i32, !dbg !4925
  br label %cond.end, !dbg !4922

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4926
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4927
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !4928
  %conv2 = zext i1 %call1 to i32, !dbg !4928
  br label %cond.end, !dbg !4922

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4922
  %tobool = icmp ne i32 %cond, 0, !dbg !4922
  ret i1 %tobool, !dbg !4929
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !4930 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4932, metadata !DIExpression()), !dbg !4934
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4933, metadata !DIExpression()), !dbg !4935
  ret i1 true, !dbg !4936
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4937 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4941, metadata !DIExpression()), !dbg !4943
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4942, metadata !DIExpression()), !dbg !4944
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4945
  %and = and i64 %0, 63, !dbg !4946
  %shl = shl i64 1, %and, !dbg !4947
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4948
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4949
  %shr = ashr i64 %2, 6, !dbg !4950
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4948
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4948
  %and1 = and i64 %shl, %3, !dbg !4951
  %cmp = icmp ne i64 %and1, 0, !dbg !4952
  ret i1 %cmp, !dbg !4953
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4954 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4956, metadata !DIExpression()), !dbg !4959
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4957, metadata !DIExpression()), !dbg !4960
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #9, !dbg !4961
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4958, metadata !DIExpression()), !dbg !4962
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4963
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4964
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #9, !dbg !4965, !srcloc !4966
  %3 = icmp ult i8 %2, 2, !dbg !4965
  call void @llvm.assume(i1 %3), !dbg !4965
  store i8 %2, ptr %oldbit, align 1, !dbg !4965
  %4 = load i8, ptr %oldbit, align 1, !dbg !4967, !range !4274, !noundef !568
  %tobool = trunc i8 %4 to i1, !dbg !4967
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #9, !dbg !4968
  ret i1 %tobool, !dbg !4969
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !4970 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4972, metadata !DIExpression()), !dbg !4974
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4973, metadata !DIExpression()), !dbg !4975
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4976
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4978
  br i1 %1, label %if.then, label %if.else, !dbg !4979

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !4980
  %3 = load i64, ptr %nr.addr, align 8, !dbg !4980
  %shr = ashr i64 %3, 3, !dbg !4980
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !4980
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4982
  %and = and i64 %4, 7, !dbg !4982
  %sh_prom = trunc i64 %and to i32, !dbg !4982
  %shl = shl i32 1, %sh_prom, !dbg !4982
  %not = xor i32 %shl, -1, !dbg !4983
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #9, !dbg !4984, !srcloc !4985
  br label %if.end, !dbg !4986

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4987
  %6 = load i64, ptr %nr.addr, align 8, !dbg !4989
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #9, !dbg !4990, !srcloc !4991
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4992
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_and_clear_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #6 align 16 !dbg !4993 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !4995, metadata !DIExpression()), !dbg !4997
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !4996, metadata !DIExpression()), !dbg !4998
  %0 = load i32, ptr %flag.addr, align 4, !dbg !4999
  %conv = sext i32 %0 to i64, !dbg !4999
  %1 = load ptr, ptr %ti.addr, align 8, !dbg !5000
  %flags = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 0, !dbg !5001
  %call = call zeroext i1 @test_and_clear_bit(i64 noundef %conv, ptr noundef %flags) #10, !dbg !5002
  %conv1 = zext i1 %call to i32, !dbg !5002
  ret i32 %conv1, !dbg !5003
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5004 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5008, metadata !DIExpression()), !dbg !5010
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5009, metadata !DIExpression()), !dbg !5011
  br label %do.body, !dbg !5012

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5013

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5015
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5016
  %div = sdiv i64 %1, 64, !dbg !5016
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5017
  call void @instrument_atomic_read_write(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !5018
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5019
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5020
  %call = call zeroext i1 @arch_test_and_clear_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !5021
  ret i1 %call, !dbg !5022
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !5023 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5025, metadata !DIExpression()), !dbg !5027
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5026, metadata !DIExpression()), !dbg !5028
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5029
  %1 = load i64, ptr %size.addr, align 8, !dbg !5030
  %conv = trunc i64 %1 to i32, !dbg !5030
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !5031
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5032
  %3 = load i64, ptr %size.addr, align 8, !dbg !5032
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #10, !dbg !5032
  ret void, !dbg !5033
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_and_clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5034 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5036, metadata !DIExpression()), !dbg !5040
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5037, metadata !DIExpression()), !dbg !5041
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #9, !dbg !5042
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5038, metadata !DIExpression()), !dbg !5042
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5042
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5042
  %2 = call i8 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $2, $0\0A\09/* output condition code c*/\0A", "=*m,={@ccc},Ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1, ptr elementtype(i64) %0) #9, !dbg !5042, !srcloc !5043
  %3 = icmp ult i8 %2, 2, !dbg !5042
  call void @llvm.assume(i1 %3), !dbg !5042
  store i8 %2, ptr %c, align 1, !dbg !5042
  %4 = load i8, ptr %c, align 1, !dbg !5042, !range !4274, !noundef !568
  %tobool = trunc i8 %4 to i1, !dbg !5042
  %frombool = zext i1 %tobool to i8, !dbg !5042
  store i8 %frombool, ptr %tmp, align 1, !dbg !5042
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #9, !dbg !5044
  %5 = load i8, ptr %tmp, align 1, !dbg !5042, !range !4274, !noundef !568
  %tobool1 = trunc i8 %5 to i1, !dbg !5042
  ret i1 %tobool1, !dbg !5045
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { nounwind memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135}
!llvm.ident = !{!4136}

!0 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.step.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/step\22 -D KBUILD_BASENAME=\22step\22 -D KBUILD_MODNAME=\22step\22 -D __KBUILD_MODNAME=kmod_step -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/step.ll arch/x86/kernel/step.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !115, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "arch/x86/kernel/step.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "89d17898bff58f04c53738d6395a1293")
!2 = !{!3, !9, !17, !24, !32, !48, !55, !61, !66, !72, !78, !85, !90, !100}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !4, line: 65, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8}
!7 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!8 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !10, line: 9, baseType: !5, size: 32, elements: !11)
!10 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!11 = !{!12, !13, !14, !15, !16}
!12 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!13 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!14 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!15 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!16 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !18, line: 312, baseType: !5, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!21 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!22 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!23 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !25, line: 68, baseType: !5, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!26 = !{!27, !28, !29, !30, !31}
!27 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!28 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!29 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!30 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!31 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !33, line: 1325, baseType: !5, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!35 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!36 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!37 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!38 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!39 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!40 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!41 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!42 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!43 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!44 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!45 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!46 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!47 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !49, line: 15, baseType: !5, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!50 = !{!51, !52, !53, !54}
!51 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!52 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!53 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !56, line: 26, baseType: !5, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!57 = !{!58, !59, !60}
!58 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!59 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!60 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !62, line: 2052, baseType: !5, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!63 = !{!64, !65}
!64 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!65 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !67, line: 54, baseType: !5, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "USRQUOTA", value: 0)
!70 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!71 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !73, line: 16, baseType: !5, size: 32, elements: !74)
!73 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "TT_NONE", value: 0)
!76 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!77 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !79, line: 51, baseType: !5, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!80 = !{!81, !82, !83, !84}
!81 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!82 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!83 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!84 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !86, line: 10, baseType: !5, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!87 = !{!88, !89}
!88 = !DIEnumerator(name: "false", value: 0)
!89 = !DIEnumerator(name: "true", value: 1)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "syscall_work_bit", file: !91, line: 41, baseType: !5, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!92 = !{!93, !94, !95, !96, !97, !98, !99}
!93 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SECCOMP", value: 0)
!94 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_TRACEPOINT", value: 1)
!95 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_TRACE", value: 2)
!96 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_EMU", value: 3)
!97 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_AUDIT", value: 4)
!98 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_USER_DISPATCH", value: 5)
!99 = !DIEnumerator(name: "SYSCALL_WORK_BIT_SYSCALL_EXIT_TRAP", value: 6)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 1390, baseType: !5, size: 32, elements: !101)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!102 = !DIEnumerator(name: "FOLL_WRITE", value: 1)
!103 = !DIEnumerator(name: "FOLL_GET", value: 2)
!104 = !DIEnumerator(name: "FOLL_DUMP", value: 4)
!105 = !DIEnumerator(name: "FOLL_FORCE", value: 8)
!106 = !DIEnumerator(name: "FOLL_NOWAIT", value: 16)
!107 = !DIEnumerator(name: "FOLL_NOFAULT", value: 32)
!108 = !DIEnumerator(name: "FOLL_HWPOISON", value: 64)
!109 = !DIEnumerator(name: "FOLL_ANON", value: 128)
!110 = !DIEnumerator(name: "FOLL_LONGTERM", value: 256)
!111 = !DIEnumerator(name: "FOLL_SPLIT_PMD", value: 512)
!112 = !DIEnumerator(name: "FOLL_PCI_P2PDMA", value: 1024)
!113 = !DIEnumerator(name: "FOLL_INTERRUPTIBLE", value: 2048)
!114 = !DIEnumerator(name: "FOLL_HONOR_NUMA_FAULT", value: 4096)
!115 = !{!116, !117, !5, !177, !178, !181, !182, !185, !186, !197, !148, !4126, !4127}
!116 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !119, line: 103, size: 1344, elements: !120)
!119 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !157, !158, !159}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !118, file: !119, line: 109, baseType: !116, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !118, file: !119, line: 110, baseType: !116, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !118, file: !119, line: 111, baseType: !116, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !118, file: !119, line: 112, baseType: !116, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !118, file: !119, line: 113, baseType: !116, size: 64, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !118, file: !119, line: 114, baseType: !116, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !118, file: !119, line: 117, baseType: !116, size: 64, offset: 384)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !118, file: !119, line: 118, baseType: !116, size: 64, offset: 448)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !118, file: !119, line: 119, baseType: !116, size: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !118, file: !119, line: 120, baseType: !116, size: 64, offset: 576)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !118, file: !119, line: 121, baseType: !116, size: 64, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !118, file: !119, line: 122, baseType: !116, size: 64, offset: 704)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !118, file: !119, line: 123, baseType: !116, size: 64, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !118, file: !119, line: 124, baseType: !116, size: 64, offset: 832)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !118, file: !119, line: 125, baseType: !116, size: 64, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !118, file: !119, line: 139, baseType: !116, size: 64, offset: 960)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !118, file: !119, line: 142, baseType: !116, size: 64, offset: 1024)
!138 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !119, line: 144, baseType: !139, size: 64, offset: 1088)
!139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !119, line: 144, size: 64, elements: !140)
!140 = !{!141, !147, !151}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !139, file: !119, line: 146, baseType: !142, size: 16)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !143, line: 19, baseType: !144)
!143 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !145, line: 24, baseType: !146)
!145 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!146 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !139, file: !119, line: 148, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !143, line: 23, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !145, line: 31, baseType: !150)
!150 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !139, file: !119, line: 150, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !119, line: 59, size: 64, elements: !153)
!153 = !{!154, !155, !156}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !152, file: !119, line: 61, baseType: !148, size: 16, flags: DIFlagBitField, extraData: i64 0)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !152, file: !119, line: 63, baseType: !148, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !152, file: !119, line: 65, baseType: !148, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !118, file: !119, line: 153, baseType: !116, size: 64, offset: 1152)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !118, file: !119, line: 154, baseType: !116, size: 64, offset: 1216)
!159 = !DIDerivedType(tag: DW_TAG_member, scope: !118, file: !119, line: 156, baseType: !160, size: 64, offset: 1280)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !119, line: 156, size: 64, elements: !161)
!161 = !{!162, !163, !164}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !160, file: !119, line: 158, baseType: !142, size: 16)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !160, file: !119, line: 160, baseType: !148, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !160, file: !119, line: 162, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !119, line: 69, size: 64, elements: !166)
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175, !176}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !165, file: !119, line: 71, baseType: !148, size: 16, flags: DIFlagBitField, extraData: i64 0)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !165, file: !119, line: 73, baseType: !148, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !165, file: !119, line: 75, baseType: !148, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !165, file: !119, line: 77, baseType: !148, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !165, file: !119, line: 80, baseType: !148, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !165, file: !119, line: 83, baseType: !148, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !165, file: !119, line: 86, baseType: !148, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !165, file: !119, line: 88, baseType: !148, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !165, file: !119, line: 93, baseType: !148, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !165, file: !119, line: 100, baseType: !148, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !180)
!180 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !184)
!184 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !188, line: 746, size: 58368, elements: !189)
!188 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!189 = !{!190, !200, !201, !202, !214, !215, !216, !217, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !303, !314, !441, !445, !448, !479, !480, !481, !482, !493, !495, !496, !497, !498, !499, !500, !511, !512, !515, !516, !517, !518, !519, !520, !521, !522, !529, !530, !537, !538, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3360, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3408, !3414, !3415, !3416, !3417, !3418, !3420, !3423, !3430, !3435, !3438, !3441, !3444, !3470, !3608, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3646, !3647, !3648, !3657, !3665, !3666, !3667, !3668, !3669, !3674, !3675, !3676, !3679, !3680, !3683, !3686, !3689, !3697, !3700, !3701, !3787, !3788, !3789, !3790, !3791, !3797, !3798, !3799, !3800, !3803, !3804, !3807, !3810, !3811, !3814, !3815, !3816, !3819, !3820, !3821, !3822, !3823, !3824, !3837, !3838, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3856, !3857, !3863, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3875, !3947, !3949, !3950, !3951, !3952, !3953, !3954, !3957, !3958, !3959, !3960, !3961, !3962, !3963, !3964, !3965, !3966, !3967, !3971, !3972, !3973}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !187, file: !188, line: 752, baseType: !191, size: 192)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !192, line: 56, size: 192, elements: !193)
!192 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!193 = !{!194, !195, !196, !199}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !191, file: !192, line: 57, baseType: !116, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !191, file: !192, line: 58, baseType: !116, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !191, file: !192, line: 59, baseType: !197, size: 32, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !143, line: 21, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !145, line: 27, baseType: !5)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !191, file: !192, line: 61, baseType: !197, size: 32, offset: 160)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !187, file: !188, line: 754, baseType: !5, size: 32, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !187, file: !188, line: 767, baseType: !181, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !187, file: !188, line: 768, baseType: !203, size: 32, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !204, line: 113, baseType: !205)
!204 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !204, line: 111, size: 32, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !205, file: !204, line: 112, baseType: !208, size: 32)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !209, line: 174, baseType: !210)
!209 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !209, line: 172, size: 32, elements: !211)
!211 = !{!212}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !210, file: !209, line: 173, baseType: !213, size: 32)
!213 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !187, file: !188, line: 770, baseType: !5, size: 32, offset: 352)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !187, file: !188, line: 771, baseType: !5, size: 32, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !187, file: !188, line: 774, baseType: !213, size: 32, offset: 416)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !187, file: !188, line: 775, baseType: !218, size: 128, offset: 448)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !219, line: 58, size: 128, elements: !220)
!219 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!220 = !{!221, !227, !232, !233}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !218, file: !219, line: 59, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !223, line: 60, size: 64, elements: !224)
!223 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !223, line: 61, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, scope: !218, file: !219, line: 60, baseType: !228, size: 32, offset: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !218, file: !219, line: 60, size: 32, elements: !229)
!229 = !{!230, !231}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !228, file: !219, line: 61, baseType: !5, size: 32)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !228, file: !219, line: 62, baseType: !208, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !218, file: !219, line: 65, baseType: !142, size: 16, offset: 96)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !218, file: !219, line: 65, baseType: !142, size: 16, offset: 112)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !187, file: !188, line: 776, baseType: !5, size: 32, offset: 576)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !187, file: !188, line: 777, baseType: !116, size: 64, offset: 640)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !187, file: !188, line: 778, baseType: !186, size: 64, offset: 704)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !187, file: !188, line: 787, baseType: !213, size: 32, offset: 768)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !187, file: !188, line: 788, baseType: !213, size: 32, offset: 800)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !187, file: !188, line: 790, baseType: !213, size: 32, offset: 832)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !187, file: !188, line: 792, baseType: !213, size: 32, offset: 864)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !187, file: !188, line: 793, baseType: !213, size: 32, offset: 896)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !187, file: !188, line: 794, baseType: !213, size: 32, offset: 928)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !187, file: !188, line: 795, baseType: !5, size: 32, offset: 960)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !187, file: !188, line: 797, baseType: !245, size: 2048, offset: 1024)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !188, line: 551, size: 2048, elements: !246)
!246 = !{!247, !252, !260, !261, !262, !268, !269, !270, !271, !272, !273, !277, !278, !279, !280, !282, !285, !286, !287}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !245, file: !188, line: 553, baseType: !248, size: 128)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !188, line: 411, size: 128, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !248, file: !188, line: 412, baseType: !116, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !248, file: !188, line: 413, baseType: !197, size: 32, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !245, file: !188, line: 554, baseType: !253, size: 192, align: 64, offset: 128)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !254, line: 5, size: 192, align: 64, elements: !255)
!254 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!255 = !{!256, !257, !259}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !253, file: !254, line: 6, baseType: !116, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !253, file: !254, line: 7, baseType: !258, size: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !253, file: !254, line: 8, baseType: !258, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !245, file: !188, line: 555, baseType: !148, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !245, file: !188, line: 556, baseType: !148, size: 64, offset: 384)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !245, file: !188, line: 558, baseType: !263, size: 128, offset: 448)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !209, line: 190, size: 128, elements: !264)
!264 = !{!265, !267}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !209, line: 191, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !263, file: !209, line: 191, baseType: !266, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !245, file: !188, line: 559, baseType: !5, size: 32, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !245, file: !188, line: 561, baseType: !148, size: 64, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !245, file: !188, line: 562, baseType: !148, size: 64, offset: 704)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !245, file: !188, line: 563, baseType: !148, size: 64, offset: 768)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !245, file: !188, line: 564, baseType: !148, size: 64, offset: 832)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !245, file: !188, line: 565, baseType: !274, size: 64, offset: 896)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !143, line: 22, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !145, line: 30, baseType: !276)
!276 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !245, file: !188, line: 566, baseType: !148, size: 64, offset: 960)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !245, file: !188, line: 568, baseType: !148, size: 64, offset: 1024)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !245, file: !188, line: 571, baseType: !213, size: 32, offset: 1088)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !245, file: !188, line: 572, baseType: !281, size: 64, offset: 1152)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !245, file: !188, line: 574, baseType: !283, size: 64, offset: 1216)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !188, line: 49, flags: DIFlagFwdDecl)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !245, file: !188, line: 576, baseType: !283, size: 64, offset: 1280)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !245, file: !188, line: 578, baseType: !116, size: 64, offset: 1344)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !245, file: !188, line: 588, baseType: !288, size: 512, align: 512, offset: 1536)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !188, line: 497, size: 512, align: 512, elements: !289)
!289 = !{!290, !291, !292, !293, !294, !295, !296, !297, !298}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !288, file: !188, line: 498, baseType: !148, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !288, file: !188, line: 499, baseType: !148, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !288, file: !188, line: 500, baseType: !148, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !288, file: !188, line: 501, baseType: !197, size: 32, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !288, file: !188, line: 502, baseType: !197, size: 32, offset: 224)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !288, file: !188, line: 503, baseType: !116, size: 64, offset: 256)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !288, file: !188, line: 504, baseType: !116, size: 64, offset: 320)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !288, file: !188, line: 505, baseType: !116, size: 64, offset: 384)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !288, file: !188, line: 506, baseType: !299, size: 64, align: 64, offset: 448)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !188, line: 445, size: 64, align: 64, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !299, file: !188, line: 446, baseType: !5, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !299, file: !188, line: 447, baseType: !5, size: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !187, file: !188, line: 798, baseType: !304, size: 384, offset: 3072)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !188, line: 592, size: 384, elements: !305)
!305 = !{!306, !307, !308, !309, !310, !311, !312}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !304, file: !188, line: 593, baseType: !263, size: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !304, file: !188, line: 594, baseType: !116, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !304, file: !188, line: 595, baseType: !116, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !304, file: !188, line: 596, baseType: !5, size: 32, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !304, file: !188, line: 597, baseType: !146, size: 16, offset: 288)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !304, file: !188, line: 598, baseType: !146, size: 16, offset: 304)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !304, file: !188, line: 600, baseType: !313, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !187, file: !188, line: 799, baseType: !315, size: 1792, offset: 3456)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !188, line: 610, size: 1792, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !438, !439}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !315, file: !188, line: 611, baseType: !253, size: 192, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !315, file: !188, line: 618, baseType: !148, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !315, file: !188, line: 619, baseType: !148, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !315, file: !188, line: 620, baseType: !148, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !315, file: !188, line: 621, baseType: !148, size: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !315, file: !188, line: 622, baseType: !148, size: 64, offset: 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !315, file: !188, line: 629, baseType: !274, size: 64, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !315, file: !188, line: 630, baseType: !148, size: 64, offset: 576)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !315, file: !188, line: 631, baseType: !5, size: 32, offset: 640)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !315, file: !188, line: 653, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !315, file: !188, line: 654, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !315, file: !188, line: 655, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !315, file: !188, line: 656, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !315, file: !188, line: 662, baseType: !331, size: 512, offset: 704)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !332)
!332 = !{!333, !341, !342, !347, !434, !435, !436, !437}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !331, file: !4, line: 119, baseType: !334, size: 256)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !335, line: 9, size: 256, elements: !336)
!335 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !334, file: !335, line: 10, baseType: !253, size: 192, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !334, file: !335, line: 11, baseType: !339, size: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !340, line: 29, baseType: !274)
!340 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !331, file: !4, line: 120, baseType: !339, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !331, file: !4, line: 121, baseType: !343, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!3, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !331, file: !4, line: 122, baseType: !348, size: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !350)
!350 = !{!351, !402, !403, !407, !417, !418, !429, !433}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !349, file: !4, line: 160, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 215, size: 4608, align: 512, elements: !354)
!354 = !{!355, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !353, file: !4, line: 216, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !357, line: 23, baseType: !358)
!357 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !357, line: 14, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !358, file: !357, line: 15, baseType: !361, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !362, line: 44, baseType: !363)
!362 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !362, line: 14, size: 32, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !362, line: 15, baseType: !366, size: 32)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !362, line: 15, size: 32, elements: !367)
!367 = !{!368, !369, !377}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !366, file: !362, line: 16, baseType: !208, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !362, line: 24, baseType: !370, size: 16)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !362, line: 24, size: 16, elements: !371)
!371 = !{!372, !376}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !370, file: !362, line: 25, baseType: !373, size: 8)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !143, line: 17, baseType: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !145, line: 21, baseType: !375)
!375 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !370, file: !362, line: 26, baseType: !373, size: 8, offset: 8)
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !362, line: 28, baseType: !378, size: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !362, line: 28, size: 32, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !378, file: !362, line: 29, baseType: !142, size: 16)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !378, file: !362, line: 30, baseType: !142, size: 16, offset: 16)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !353, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !353, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !353, file: !4, line: 219, baseType: !5, size: 32, offset: 96)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !353, file: !4, line: 220, baseType: !5, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !353, file: !4, line: 221, baseType: !5, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !353, file: !4, line: 222, baseType: !5, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !353, file: !4, line: 223, baseType: !5, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !353, file: !4, line: 224, baseType: !5, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !353, file: !4, line: 226, baseType: !5, size: 32, offset: 160)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !353, file: !4, line: 227, baseType: !146, size: 16, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !353, file: !4, line: 228, baseType: !146, size: 16, offset: 208)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !353, file: !4, line: 229, baseType: !5, size: 32, offset: 224)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !353, file: !4, line: 235, baseType: !339, size: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !353, file: !4, line: 236, baseType: !346, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !353, file: !4, line: 237, baseType: !339, size: 64, offset: 384)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !353, file: !4, line: 238, baseType: !346, size: 64, offset: 448)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !353, file: !4, line: 239, baseType: !399, size: 4096, align: 512, offset: 512)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 4096, align: 512, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 8)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !349, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !349, file: !4, line: 162, baseType: !404, size: 32, offset: 96)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !209, line: 32, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !406, line: 96, baseType: !213)
!406 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!407 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !349, file: !4, line: 163, baseType: !408, size: 32, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !409, line: 274, baseType: !410)
!409 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !409, line: 274, size: 32, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !410, file: !409, line: 274, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !409, line: 69, baseType: !414)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !409, line: 64, size: 32, elements: !415)
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !414, file: !409, line: 65, baseType: !5, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !349, file: !4, line: 164, baseType: !346, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !349, file: !4, line: 165, baseType: !419, size: 128, offset: 256)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !335, line: 14, size: 128, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !419, file: !335, line: 15, baseType: !422, size: 128)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !254, line: 26, size: 128, elements: !423)
!423 = !{!424, !428}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !422, file: !254, line: 27, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !254, line: 12, size: 64, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !425, file: !254, line: 13, baseType: !258, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !422, file: !254, line: 28, baseType: !258, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !349, file: !4, line: 166, baseType: !430, size: 64, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!339}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !349, file: !4, line: 167, baseType: !339, size: 64, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !331, file: !4, line: 123, baseType: !373, size: 8, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !331, file: !4, line: 124, baseType: !373, size: 8, offset: 456)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !331, file: !4, line: 125, baseType: !373, size: 8, offset: 464)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !331, file: !4, line: 126, baseType: !373, size: 8, offset: 472)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !315, file: !188, line: 671, baseType: !331, size: 512, offset: 1216)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !315, file: !188, line: 679, baseType: !440, size: 64, offset: 1728)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !187, file: !188, line: 800, baseType: !442, size: 64, offset: 5248)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !188, line: 800, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !187, file: !188, line: 809, baseType: !446, size: 64, offset: 5312)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !188, line: 70, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !187, file: !188, line: 825, baseType: !449, size: 2048, align: 512, offset: 5632)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !188, line: 509, size: 2048, align: 512, elements: !450)
!450 = !{!451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !449, file: !188, line: 511, baseType: !148, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !449, file: !188, line: 512, baseType: !148, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !449, file: !188, line: 513, baseType: !148, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !449, file: !188, line: 514, baseType: !148, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !449, file: !188, line: 515, baseType: !148, size: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !449, file: !188, line: 516, baseType: !148, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !449, file: !188, line: 518, baseType: !148, size: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !449, file: !188, line: 519, baseType: !148, size: 64, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !449, file: !188, line: 520, baseType: !274, size: 64, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !449, file: !188, line: 522, baseType: !148, size: 64, offset: 576)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !449, file: !188, line: 523, baseType: !148, size: 64, offset: 640)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !449, file: !188, line: 524, baseType: !274, size: 64, offset: 704)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !449, file: !188, line: 526, baseType: !274, size: 64, offset: 768)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !449, file: !188, line: 527, baseType: !148, size: 64, offset: 832)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !449, file: !188, line: 529, baseType: !148, size: 64, offset: 896)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !449, file: !188, line: 530, baseType: !148, size: 64, offset: 960)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !449, file: !188, line: 531, baseType: !148, size: 64, offset: 1024)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !449, file: !188, line: 532, baseType: !148, size: 64, offset: 1088)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !449, file: !188, line: 533, baseType: !148, size: 64, offset: 1152)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !449, file: !188, line: 535, baseType: !148, size: 64, offset: 1216)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !449, file: !188, line: 536, baseType: !148, size: 64, offset: 1280)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !449, file: !188, line: 537, baseType: !148, size: 64, offset: 1344)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !449, file: !188, line: 538, baseType: !148, size: 64, offset: 1408)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !449, file: !188, line: 539, baseType: !148, size: 64, offset: 1472)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !449, file: !188, line: 540, baseType: !148, size: 64, offset: 1536)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !449, file: !188, line: 541, baseType: !148, size: 64, offset: 1600)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !449, file: !188, line: 542, baseType: !148, size: 64, offset: 1664)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !449, file: !188, line: 543, baseType: !148, size: 64, offset: 1728)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !187, file: !188, line: 833, baseType: !5, size: 32, offset: 7680)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !187, file: !188, line: 836, baseType: !5, size: 32, offset: 7712)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !187, file: !188, line: 837, baseType: !213, size: 32, offset: 7744)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !187, file: !188, line: 838, baseType: !483, size: 64, offset: 7808)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !486, line: 19, baseType: !487)
!486 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !486, line: 19, size: 64, elements: !488)
!488 = !{!489}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !487, file: !486, line: 19, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 1)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !187, file: !188, line: 839, baseType: !494, size: 64, offset: 7872)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !187, file: !188, line: 840, baseType: !485, size: 64, offset: 7936)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !187, file: !188, line: 841, baseType: !181, size: 64, offset: 8000)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !187, file: !188, line: 843, baseType: !146, size: 16, offset: 8064)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !187, file: !188, line: 845, baseType: !146, size: 16, offset: 8080)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !187, file: !188, line: 848, baseType: !213, size: 32, offset: 8096)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !187, file: !188, line: 849, baseType: !501, size: 32, offset: 8128)
!501 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !188, line: 718, size: 32, elements: !502)
!502 = !{!503, !510}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !501, file: !188, line: 724, baseType: !504, size: 32)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !501, file: !188, line: 719, size: 32, elements: !505)
!505 = !{!506, !507, !508, !509}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !504, file: !188, line: 720, baseType: !373, size: 8)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !504, file: !188, line: 721, baseType: !373, size: 8, offset: 8)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !504, file: !188, line: 722, baseType: !373, size: 8, offset: 16)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !504, file: !188, line: 723, baseType: !373, size: 8, offset: 24)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !501, file: !188, line: 725, baseType: !197, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !187, file: !188, line: 850, baseType: !263, size: 128, offset: 8192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !187, file: !188, line: 851, baseType: !513, size: 64, offset: 8320)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !188, line: 60, flags: DIFlagFwdDecl)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !187, file: !188, line: 855, baseType: !116, size: 64, offset: 8384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !187, file: !188, line: 856, baseType: !373, size: 8, offset: 8448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !187, file: !188, line: 857, baseType: !373, size: 8, offset: 8456)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !187, file: !188, line: 858, baseType: !213, size: 32, offset: 8480)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !187, file: !188, line: 859, baseType: !263, size: 128, offset: 8512)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !187, file: !188, line: 860, baseType: !213, size: 32, offset: 8640)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !187, file: !188, line: 861, baseType: !263, size: 128, offset: 8704)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !187, file: !188, line: 873, baseType: !523, size: 256, offset: 8832)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !188, line: 376, size: 256, elements: !524)
!524 = !{!525, !526, !527, !528}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !523, file: !188, line: 381, baseType: !116, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !523, file: !188, line: 384, baseType: !150, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !523, file: !188, line: 389, baseType: !150, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !523, file: !188, line: 392, baseType: !150, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !187, file: !188, line: 875, baseType: !263, size: 128, offset: 9088)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !187, file: !188, line: 877, baseType: !531, size: 320, offset: 9216)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !532, line: 86, size: 320, elements: !533)
!532 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!533 = !{!534, !535, !536}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !531, file: !532, line: 87, baseType: !213, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !531, file: !532, line: 88, baseType: !263, size: 128, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !531, file: !532, line: 89, baseType: !263, size: 128, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !187, file: !188, line: 878, baseType: !253, size: 192, align: 64, offset: 9536)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !187, file: !188, line: 881, baseType: !539, size: 64, offset: 9728)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !33, line: 733, size: 10240, elements: !541)
!541 = !{!542, !3279}
!542 = !DIDerivedType(tag: DW_TAG_member, scope: !540, file: !33, line: 734, baseType: !543, size: 10240)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !540, file: !33, line: 734, size: 10240, elements: !544)
!544 = !{!545, !549, !571, !3136, !3137, !3138, !3139, !3140, !3141, !3148, !3149, !3150, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3189, !3191, !3194, !3259, !3260, !3261, !3264, !3265, !3266, !3269, !3270, !3271, !3277, !3278}
!545 = !DIDerivedType(tag: DW_TAG_member, scope: !543, file: !33, line: 739, baseType: !546, size: 512, align: 512)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !543, file: !33, line: 739, size: 512, align: 512, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !546, file: !33, line: 747, baseType: !208, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !543, file: !33, line: 750, baseType: !550, size: 128, offset: 512)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !551, line: 218, size: 128, elements: !552)
!551 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!552 = !{!553, !569, !570}
!553 = !DIDerivedType(tag: DW_TAG_member, scope: !550, file: !551, line: 219, baseType: !554, size: 32)
!554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !550, file: !551, line: 219, size: 32, elements: !555)
!555 = !{!556, !565}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !554, file: !551, line: 220, baseType: !557, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !558, line: 29, baseType: !559)
!558 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !558, line: 17, size: 32, elements: !560)
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, scope: !559, file: !558, line: 18, baseType: !562, size: 32)
!562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !559, file: !558, line: 18, size: 32, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !562, file: !558, line: 19, baseType: !358, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !554, file: !551, line: 221, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !551, line: 197, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !551, line: 197, elements: !568)
!568 = !{}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !550, file: !551, line: 223, baseType: !5, size: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !550, file: !551, line: 224, baseType: !181, size: 64, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !543, file: !33, line: 752, baseType: !572, size: 64, offset: 640)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!116, !575, !116, !116, !116, !116}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !62, line: 994, size: 1856, align: 64, elements: !577)
!577 = !{!578, !592, !593, !595, !602, !614, !617, !618, !742, !951, !960, !3126, !3127, !3128, !3129, !3130, !3131, !3133, !3134, !3135}
!578 = !DIDerivedType(tag: DW_TAG_member, scope: !576, file: !62, line: 995, baseType: !579, size: 128)
!579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !576, file: !62, line: 995, size: 128, elements: !580)
!580 = !{!581, !582, !591}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !579, file: !62, line: 996, baseType: !222, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !579, file: !62, line: 997, baseType: !583, size: 128, align: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !209, line: 232, size: 128, align: 64, elements: !584)
!584 = !{!585, !587}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !583, file: !209, line: 233, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !583, file: !209, line: 234, baseType: !588, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{null, !586}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !579, file: !62, line: 998, baseType: !5, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !576, file: !62, line: 1005, baseType: !557, size: 32, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !576, file: !62, line: 1006, baseType: !594, size: 32, offset: 160)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !209, line: 156, baseType: !5)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !576, file: !62, line: 1007, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !597, line: 13, baseType: !598)
!597 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !209, line: 181, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !209, line: 179, size: 64, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !599, file: !209, line: 180, baseType: !274, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !576, file: !62, line: 1008, baseType: !603, size: 256, offset: 256)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !604, line: 66, size: 256, elements: !605)
!604 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!605 = !{!606, !607, !608, !613}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !603, file: !604, line: 67, baseType: !596, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !603, file: !604, line: 68, baseType: !356, size: 32, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !603, file: !604, line: 70, baseType: !609, size: 32, offset: 96)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !610, line: 15, size: 32, elements: !611)
!610 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !609, file: !610, line: 20, baseType: !208, size: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !603, file: !604, line: 72, baseType: !263, size: 128, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !576, file: !62, line: 1009, baseType: !615, size: 64, offset: 512)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !209, line: 52, baseType: !616)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !406, line: 88, baseType: !276)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !576, file: !62, line: 1010, baseType: !5, size: 32, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !576, file: !62, line: 1011, baseType: !619, size: 256, offset: 640)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !62, line: 948, size: 256, elements: !620)
!620 = !{!621, !644, !732, !733, !740, !741}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !619, file: !62, line: 949, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !623, line: 34, baseType: !624)
!623 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !623, line: 25, size: 64, elements: !625)
!625 = !{!626}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !624, file: !623, line: 26, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !628, line: 27, baseType: !629)
!628 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !628, line: 13, size: 64, elements: !630)
!630 = !{!631, !643}
!631 = !DIDerivedType(tag: DW_TAG_member, scope: !629, file: !628, line: 14, baseType: !632, size: 32)
!632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !629, file: !628, line: 14, size: 32, elements: !633)
!633 = !{!634, !635}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !632, file: !628, line: 15, baseType: !208, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !628, line: 16, baseType: !636, size: 32)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !632, file: !628, line: 16, size: 32, elements: !637)
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !636, file: !628, line: 18, baseType: !373, size: 8)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !636, file: !628, line: 19, baseType: !640, size: 24, offset: 8)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 24, elements: !641)
!641 = !{!642}
!642 = !DISubrange(count: 3)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !629, file: !628, line: 26, baseType: !361, size: 32, offset: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !619, file: !62, line: 950, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !10, line: 59, size: 768, elements: !647)
!647 = !{!648, !649, !650, !651, !664, !665, !672, !673}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !646, file: !10, line: 61, baseType: !203, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !646, file: !10, line: 62, baseType: !5, size: 32, offset: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !646, file: !10, line: 63, baseType: !557, size: 32, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !646, file: !10, line: 65, baseType: !652, size: 256, offset: 128)
!652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 256, elements: !662)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !209, line: 194, size: 64, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !653, file: !209, line: 195, baseType: !656, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !209, line: 198, size: 128, elements: !658)
!658 = !{!659, !660}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !657, file: !209, line: 199, baseType: !656, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !657, file: !209, line: 199, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!662 = !{!663}
!663 = !DISubrange(count: 4)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !646, file: !10, line: 66, baseType: !653, size: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !646, file: !10, line: 68, baseType: !666, size: 192, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !667, line: 41, baseType: !668)
!667 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !667, line: 37, size: 192, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !668, file: !667, line: 38, baseType: !557, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !668, file: !667, line: 39, baseType: !263, size: 128, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !646, file: !10, line: 69, baseType: !583, size: 128, align: 64, offset: 640)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !646, file: !10, line: 70, baseType: !674, offset: 768)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !675, elements: !730)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !10, line: 54, size: 128, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !675, file: !10, line: 55, baseType: !213, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !675, file: !10, line: 56, baseType: !679, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !681, line: 26, size: 1152, elements: !682)
!681 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!682 = !{!683, !697, !698, !699, !700, !704, !705, !706, !709, !713, !717, !718, !729}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !680, file: !681, line: 27, baseType: !684, size: 192)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !685, line: 19, size: 192, elements: !686)
!685 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!686 = !{!687, !695, !696}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !684, file: !685, line: 20, baseType: !688, size: 128)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !689, line: 296, size: 128, elements: !690)
!689 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!690 = !{!691, !692, !694}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !688, file: !689, line: 297, baseType: !557, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !688, file: !689, line: 299, baseType: !693, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !209, line: 154, baseType: !5)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !688, file: !689, line: 300, baseType: !181, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !684, file: !685, line: 21, baseType: !5, size: 32, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !684, file: !685, line: 22, baseType: !5, size: 32, offset: 160)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !680, file: !681, line: 28, baseType: !583, size: 128, align: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !680, file: !681, line: 29, baseType: !5, size: 32, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !680, file: !681, line: 30, baseType: !186, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !680, file: !681, line: 31, baseType: !701, size: 64, offset: 448)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !703, line: 11, flags: DIFlagFwdDecl)
!703 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!704 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !680, file: !681, line: 32, baseType: !5, size: 32, offset: 512)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !680, file: !681, line: 33, baseType: !679, size: 64, offset: 576)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !680, file: !681, line: 35, baseType: !707, size: 64, offset: 640)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !681, line: 17, flags: DIFlagFwdDecl)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !680, file: !681, line: 37, baseType: !710, size: 64, offset: 704)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !712, line: 18, flags: DIFlagFwdDecl)
!712 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !680, file: !681, line: 38, baseType: !714, size: 64, offset: 768)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !716, line: 16, flags: DIFlagFwdDecl)
!716 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!717 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !680, file: !681, line: 39, baseType: !213, size: 32, offset: 832)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !680, file: !681, line: 40, baseType: !719, size: 192, offset: 896)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !720, line: 9, size: 192, elements: !721)
!720 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!721 = !{!722, !723, !727, !728}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !719, file: !720, line: 10, baseType: !596, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !719, file: !720, line: 11, baseType: !724, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !720, line: 7, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !719, file: !720, line: 12, baseType: !5, size: 32, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !719, file: !720, line: 13, baseType: !203, size: 32, offset: 160)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !680, file: !681, line: 42, baseType: !213, size: 32, offset: 1088)
!730 = !{!731}
!731 = !DISubrange(count: -1)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !619, file: !62, line: 951, baseType: !9, size: 32, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !619, file: !62, line: 952, baseType: !734, size: 32, offset: 160)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !712, line: 23, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !712, line: 21, size: 32, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !735, file: !712, line: 22, baseType: !738, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !209, line: 37, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !406, line: 49, baseType: !5)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !619, file: !62, line: 952, baseType: !734, size: 32, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !619, file: !62, line: 953, baseType: !213, size: 32, offset: 224)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !576, file: !62, line: 1012, baseType: !743, size: 64, offset: 896)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !745)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !746, line: 110, size: 1472, elements: !747)
!746 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!747 = !{!748, !749, !750, !757, !758, !759, !760, !761, !762, !763, !764, !770, !771, !772, !773, !774, !775, !901, !902, !903, !904, !905, !936, !937, !938, !946}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !745, file: !746, line: 111, baseType: !596, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !745, file: !746, line: 112, baseType: !734, size: 32, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !745, file: !746, line: 113, baseType: !751, size: 32, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !712, line: 28, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !712, line: 26, size: 32, elements: !753)
!753 = !{!754}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !752, file: !712, line: 27, baseType: !755, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !209, line: 38, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !406, line: 50, baseType: !5)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !745, file: !746, line: 114, baseType: !734, size: 32, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !745, file: !746, line: 115, baseType: !751, size: 32, offset: 160)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !745, file: !746, line: 116, baseType: !734, size: 32, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !745, file: !746, line: 117, baseType: !751, size: 32, offset: 224)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !745, file: !746, line: 118, baseType: !734, size: 32, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !745, file: !746, line: 119, baseType: !751, size: 32, offset: 288)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !745, file: !746, line: 120, baseType: !5, size: 32, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !745, file: !746, line: 121, baseType: !765, size: 64, offset: 384)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !766, line: 24, baseType: !767)
!766 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !766, line: 24, size: 64, elements: !768)
!768 = !{!769}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !767, file: !766, line: 24, baseType: !148, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !745, file: !746, line: 122, baseType: !765, size: 64, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !745, file: !746, line: 123, baseType: !765, size: 64, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !745, file: !746, line: 124, baseType: !765, size: 64, offset: 576)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !745, file: !746, line: 125, baseType: !765, size: 64, offset: 640)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !745, file: !746, line: 127, baseType: !375, size: 8, offset: 704)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !745, file: !746, line: 129, baseType: !776, size: 64, offset: 768)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !778, line: 195, size: 1728, elements: !779)
!778 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!779 = !{!780, !781, !786, !791, !800, !803, !804, !811, !812, !813, !814, !817, !818, !819, !821, !822, !865, !886}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !777, file: !778, line: 196, baseType: !203, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !777, file: !778, line: 197, baseType: !782, size: 32, offset: 32)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !778, line: 28, baseType: !783)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !209, line: 104, baseType: !784)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !143, line: 20, baseType: !785)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !145, line: 26, baseType: !213)
!786 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !778, line: 198, baseType: !787, size: 192, offset: 64)
!787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !778, line: 198, size: 192, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !787, file: !778, line: 199, baseType: !263, size: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !787, file: !778, line: 200, baseType: !253, size: 192, align: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !777, file: !778, line: 205, baseType: !792, size: 320, offset: 256)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !793, line: 48, size: 320, elements: !794)
!793 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!794 = !{!795, !796, !797, !798, !799}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !792, file: !793, line: 49, baseType: !596, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !792, file: !793, line: 55, baseType: !596, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !792, file: !793, line: 57, baseType: !609, size: 32, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !792, file: !793, line: 59, baseType: !356, size: 32, offset: 160)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !792, file: !793, line: 60, baseType: !263, size: 128, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !777, file: !778, line: 206, baseType: !801, size: 64, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !778, line: 206, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !777, file: !778, line: 207, baseType: !181, size: 64, offset: 640)
!804 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !778, line: 208, baseType: !805, size: 64, offset: 704)
!805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !778, line: 208, size: 64, elements: !806)
!806 = !{!807, !810}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !805, file: !778, line: 209, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !809, line: 8, baseType: !275)
!809 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!810 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !805, file: !778, line: 210, baseType: !808, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !777, file: !778, line: 212, baseType: !808, size: 64, offset: 768)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !777, file: !778, line: 213, baseType: !734, size: 32, offset: 832)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !777, file: !778, line: 214, baseType: !751, size: 32, offset: 864)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !777, file: !778, line: 215, baseType: !815, size: 32, offset: 896)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !778, line: 31, baseType: !816)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !209, line: 110, baseType: !197)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !777, file: !778, line: 216, baseType: !146, size: 16, offset: 928)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !777, file: !778, line: 217, baseType: !146, size: 16, offset: 944)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !777, file: !778, line: 221, baseType: !820, size: 16, offset: 960)
!820 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !778, line: 228, baseType: !116, size: 64, offset: 1024)
!822 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !778, line: 245, baseType: !823, size: 320, offset: 1088)
!823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !778, line: 245, size: 320, elements: !824)
!824 = !{!825, !856}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !823, file: !778, line: 246, baseType: !826, size: 320)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !778, line: 114, size: 320, elements: !827)
!827 = !{!828, !829, !841, !844, !853}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !826, file: !778, line: 116, baseType: !116, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, scope: !826, file: !778, line: 117, baseType: !830, size: 64, offset: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !826, file: !778, line: 117, size: 64, elements: !831)
!831 = !{!832, !840}
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !830, file: !778, line: 118, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !830, file: !778, line: 118, size: 64, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !833, file: !778, line: 120, baseType: !142, size: 16)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !833, file: !778, line: 121, baseType: !837, size: 48, offset: 16)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 48, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 6)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !830, file: !778, line: 127, baseType: !116, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !826, file: !778, line: 129, baseType: !842, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !778, line: 102, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !826, file: !778, line: 130, baseType: !845, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !778, line: 108, size: 192, elements: !847)
!847 = !{!848, !849, !850}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !846, file: !778, line: 109, baseType: !583, size: 128, align: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !846, file: !778, line: 110, baseType: !203, size: 32, offset: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !846, file: !778, line: 111, baseType: !851, size: 8, offset: 160)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !209, line: 35, baseType: !852)
!852 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !826, file: !778, line: 131, baseType: !854, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!856 = !DIDerivedType(tag: DW_TAG_member, scope: !823, file: !778, line: 247, baseType: !857, size: 320)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !823, file: !778, line: 247, size: 320, elements: !858)
!858 = !{!859, !860, !861, !862, !863}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !857, file: !778, line: 248, baseType: !116, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !857, file: !778, line: 249, baseType: !116, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !857, file: !778, line: 250, baseType: !842, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !857, file: !778, line: 251, baseType: !845, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !857, file: !778, line: 252, baseType: !864, size: 64, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, scope: !777, file: !778, line: 260, baseType: !866, size: 256, offset: 1408)
!866 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !777, file: !778, line: 260, size: 256, elements: !867)
!867 = !{!868, !874}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !866, file: !778, line: 261, baseType: !869, size: 256)
!869 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !778, line: 134, size: 256, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !869, file: !778, line: 135, baseType: !181, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !869, file: !778, line: 136, baseType: !873, size: 256)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 256, elements: !662)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !866, file: !778, line: 262, baseType: !875, size: 256)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !866, file: !778, line: 262, size: 256, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !875, file: !778, line: 264, baseType: !263, size: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !875, file: !778, line: 265, baseType: !879, size: 128, offset: 128)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !880, line: 22, size: 128, elements: !881)
!880 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!881 = !{!882, !885}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !879, file: !880, line: 23, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !880, line: 23, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !879, file: !880, line: 24, baseType: !116, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !777, file: !778, line: 280, baseType: !887, size: 64, offset: 1664)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !778, line: 176, size: 192, elements: !889)
!889 = !{!890, !899, !900}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !888, file: !778, line: 177, baseType: !891, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !778, line: 171, baseType: !892)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!213, !776, !895, !897, !776}
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !888, file: !778, line: 178, baseType: !776, size: 64, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !888, file: !778, line: 179, baseType: !842, size: 64, offset: 128)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !745, file: !746, line: 130, baseType: !776, size: 64, offset: 832)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !745, file: !746, line: 131, baseType: !776, size: 64, offset: 896)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !745, file: !746, line: 132, baseType: !776, size: 64, offset: 960)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !745, file: !746, line: 135, baseType: !181, size: 64, offset: 1024)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !745, file: !746, line: 137, baseType: !906, size: 64, offset: 1088)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !908, line: 14, size: 1088, elements: !909)
!908 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!909 = !{!910, !911, !920, !921, !922, !923, !924, !925}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !907, file: !908, line: 15, baseType: !203, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !907, file: !908, line: 17, baseType: !912, size: 320, offset: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !913, line: 22, size: 320, elements: !914)
!913 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!914 = !{!915, !916, !917, !918}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !912, file: !913, line: 23, baseType: !356, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !912, file: !913, line: 24, baseType: !274, size: 64, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !912, file: !913, line: 26, baseType: !263, size: 128, offset: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !912, file: !913, line: 28, baseType: !919, size: 64, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !907, file: !908, line: 19, baseType: !116, size: 64, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !907, file: !908, line: 20, baseType: !596, size: 64, offset: 448)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !907, file: !908, line: 23, baseType: !657, size: 128, offset: 512)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !907, file: !908, line: 24, baseType: !734, size: 32, offset: 640)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !907, file: !908, line: 29, baseType: !596, size: 64, offset: 704)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !907, file: !908, line: 36, baseType: !926, size: 320, offset: 768)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !927, line: 15, size: 320, elements: !928)
!927 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!928 = !{!929, !930, !931, !932, !933, !934, !935}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !926, file: !927, line: 16, baseType: !356, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !926, file: !927, line: 18, baseType: !213, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !926, file: !927, line: 19, baseType: !213, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !926, file: !927, line: 20, baseType: !213, size: 32, offset: 96)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !926, file: !927, line: 21, baseType: !213, size: 32, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !926, file: !927, line: 22, baseType: !116, size: 64, offset: 192)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !926, file: !927, line: 23, baseType: !116, size: 64, offset: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !745, file: !746, line: 138, baseType: !710, size: 64, offset: 1152)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !745, file: !746, line: 139, baseType: !714, size: 64, offset: 1216)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !745, file: !746, line: 140, baseType: !939, size: 64, offset: 1280)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !746, line: 25, size: 64, elements: !941)
!941 = !{!942, !943, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !940, file: !746, line: 26, baseType: !208, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !940, file: !746, line: 27, baseType: !213, size: 32, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !940, file: !746, line: 28, baseType: !945, offset: 64)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, elements: !730)
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !745, file: !746, line: 142, baseType: !947, size: 128, offset: 1344)
!947 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !745, file: !746, line: 142, size: 128, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !947, file: !746, line: 143, baseType: !213, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !947, file: !746, line: 144, baseType: !583, size: 128, align: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !576, file: !62, line: 1013, baseType: !952, size: 256, offset: 960)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !62, line: 970, size: 256, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !952, file: !62, line: 971, baseType: !116, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !952, file: !62, line: 972, baseType: !5, size: 32, offset: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !952, file: !62, line: 973, baseType: !5, size: 32, offset: 96)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !952, file: !62, line: 974, baseType: !5, size: 32, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !952, file: !62, line: 975, baseType: !5, size: 32, offset: 160)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !952, file: !62, line: 976, baseType: !615, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !576, file: !62, line: 1014, baseType: !961, size: 128, offset: 1216)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !962, line: 8, size: 128, elements: !963)
!962 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!963 = !{!964, !3125}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !961, file: !962, line: 9, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !967, line: 70, size: 256, elements: !968)
!967 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!968 = !{!969, !3122, !3123, !3124}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !966, file: !967, line: 71, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !972, line: 82, size: 1536, elements: !973)
!972 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!973 = !{!974, !975, !980, !988, !989, !1004, !3089, !3091, !3104, !3105, !3106, !3107, !3108, !3114, !3115, !3116}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !971, file: !972, line: 84, baseType: !5, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !971, file: !972, line: 85, baseType: !976, size: 32, offset: 32)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !409, line: 275, baseType: !977)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !409, line: 275, size: 32, elements: !978)
!978 = !{!979}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !977, file: !409, line: 275, baseType: !413, size: 32)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !971, file: !972, line: 86, baseType: !981, size: 128, offset: 64)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !982, line: 38, size: 128, elements: !983)
!982 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!983 = !{!984, !986}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !981, file: !982, line: 39, baseType: !985, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !981, file: !982, line: 39, baseType: !987, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !971, file: !972, line: 87, baseType: !970, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !971, file: !972, line: 88, baseType: !990, size: 128, offset: 256)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !972, line: 49, size: 128, elements: !991)
!991 = !{!992, !1001}
!992 = !DIDerivedType(tag: DW_TAG_member, scope: !990, file: !972, line: 50, baseType: !993, size: 64)
!993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !990, file: !972, line: 50, size: 64, elements: !994)
!994 = !{!995, !1000}
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !993, file: !972, line: 51, baseType: !996, size: 64)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !993, file: !972, line: 51, size: 64, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !996, file: !972, line: 52, baseType: !197, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !996, file: !972, line: 52, baseType: !197, size: 32, offset: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !993, file: !972, line: 54, baseType: !148, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !990, file: !972, line: 56, baseType: !1002, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !971, file: !972, line: 89, baseType: !1005, size: 64, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !62, line: 641, size: 4800, elements: !1007)
!1007 = !{!1008, !1010, !1011, !1012, !1013, !1014, !1015, !1018, !1019, !1209, !2903, !2904, !2905, !2906, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !3071, !3074, !3075, !3076, !3085, !3086, !3087, !3088}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1006, file: !62, line: 642, baseType: !1009, size: 16)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !209, line: 24, baseType: !146)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1006, file: !62, line: 643, baseType: !146, size: 16, offset: 16)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1006, file: !62, line: 644, baseType: !734, size: 32, offset: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1006, file: !62, line: 645, baseType: !263, size: 128, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1006, file: !62, line: 646, baseType: !751, size: 32, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1006, file: !62, line: 647, baseType: !5, size: 32, offset: 224)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1006, file: !62, line: 650, baseType: !1016, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !62, line: 607, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1006, file: !62, line: 651, baseType: !1016, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1006, file: !62, line: 654, baseType: !1020, size: 64, offset: 384)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !62, line: 1966, size: 2048, align: 512, elements: !1023)
!1023 = !{!1024, !1028, !1041, !1047, !1051, !1055, !1059, !1063, !1067, !1071, !1075, !1076, !1082, !1086, !1123, !1154, !1164, !1170, !1174, !1178, !1182, !1186, !1190, !1196, !1200}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1022, file: !62, line: 1967, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!970, !1005, !970, !5}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1022, file: !62, line: 1968, baseType: !1029, size: 64, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!854, !970, !1005, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1034, line: 10, size: 128, elements: !1035)
!1034 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1035 = !{!1036, !1040}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1033, file: !1034, line: 11, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !181}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1033, file: !1034, line: 12, baseType: !181, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1022, file: !62, line: 1969, baseType: !1042, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!213, !1045, !1005, !213}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !766, line: 42, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1022, file: !62, line: 1970, baseType: !1048, size: 64, offset: 192)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!1016, !1005, !213, !851}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1022, file: !62, line: 1972, baseType: !1052, size: 64, offset: 256)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!213, !970, !864, !213}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1022, file: !62, line: 1974, baseType: !1056, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!213, !1045, !1005, !970, !1009, !851}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1022, file: !62, line: 1976, baseType: !1060, size: 64, offset: 384)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!213, !970, !1005, !970}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1022, file: !62, line: 1977, baseType: !1064, size: 64, offset: 448)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!213, !1005, !970}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1022, file: !62, line: 1978, baseType: !1068, size: 64, offset: 512)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!213, !1045, !1005, !970, !854}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1022, file: !62, line: 1980, baseType: !1072, size: 64, offset: 576)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DISubroutineType(types: !1074)
!1074 = !{!213, !1045, !1005, !970, !1009}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1022, file: !62, line: 1982, baseType: !1064, size: 64, offset: 640)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1022, file: !62, line: 1983, baseType: !1077, size: 64, offset: 704)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DISubroutineType(types: !1079)
!1079 = !{!213, !1045, !1005, !970, !1009, !1080}
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !209, line: 21, baseType: !1081)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !209, line: 18, baseType: !197)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1022, file: !62, line: 1985, baseType: !1083, size: 64, offset: 768)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!213, !1045, !1005, !970, !1005, !970, !5}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1022, file: !62, line: 1987, baseType: !1087, size: 64, offset: 832)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!213, !1045, !970, !1090}
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !62, line: 226, size: 640, elements: !1092)
!1092 = !{!1093, !1094, !1095, !1105, !1114, !1115, !1120, !1121, !1122}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1091, file: !62, line: 227, baseType: !5, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1091, file: !62, line: 228, baseType: !1009, size: 16, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !62, line: 241, baseType: !1096, size: 32, offset: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !62, line: 241, size: 32, elements: !1097)
!1097 = !{!1098, !1099}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1096, file: !62, line: 242, baseType: !734, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1096, file: !62, line: 243, baseType: !1100, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1101, line: 16, baseType: !1102)
!1101 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1101, line: 14, size: 32, elements: !1103)
!1103 = !{!1104}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1102, file: !1101, line: 15, baseType: !738, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !62, line: 245, baseType: !1106, size: 32, offset: 96)
!1106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !62, line: 245, size: 32, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1106, file: !62, line: 246, baseType: !751, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1106, file: !62, line: 247, baseType: !1110, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1101, line: 20, baseType: !1111)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1101, line: 18, size: 32, elements: !1112)
!1112 = !{!1113}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1111, file: !1101, line: 19, baseType: !755, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1091, file: !62, line: 249, baseType: !615, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1091, file: !62, line: 250, baseType: !1116, size: 128, offset: 192)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !809, line: 13, size: 128, elements: !1117)
!1117 = !{!1118, !1119}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1116, file: !809, line: 14, baseType: !808, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1116, file: !809, line: 15, baseType: !184, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1091, file: !62, line: 251, baseType: !1116, size: 128, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1091, file: !62, line: 252, baseType: !1116, size: 128, offset: 448)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1091, file: !62, line: 259, baseType: !575, size: 64, offset: 576)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1022, file: !62, line: 1988, baseType: !1124, size: 64, offset: 896)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{!213, !1045, !1127, !1129, !197, !5}
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !961)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1131, line: 22, size: 1280, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1132 = !{!1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1130, file: !1131, line: 23, baseType: !197, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1130, file: !1131, line: 24, baseType: !1009, size: 16, offset: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1130, file: !1131, line: 25, baseType: !5, size: 32, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1130, file: !1131, line: 26, baseType: !816, size: 32, offset: 96)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1130, file: !1131, line: 27, baseType: !148, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1130, file: !1131, line: 28, baseType: !148, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1130, file: !1131, line: 41, baseType: !148, size: 64, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1130, file: !1131, line: 42, baseType: !1080, size: 32, offset: 320)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1130, file: !1131, line: 43, baseType: !1080, size: 32, offset: 352)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1130, file: !1131, line: 44, baseType: !734, size: 32, offset: 384)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1130, file: !1131, line: 45, baseType: !751, size: 32, offset: 416)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1130, file: !1131, line: 46, baseType: !615, size: 64, offset: 448)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1130, file: !1131, line: 47, baseType: !1116, size: 128, offset: 512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1130, file: !1131, line: 48, baseType: !1116, size: 128, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1130, file: !1131, line: 49, baseType: !1116, size: 128, offset: 768)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1130, file: !1131, line: 50, baseType: !1116, size: 128, offset: 896)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1130, file: !1131, line: 51, baseType: !148, size: 64, offset: 1024)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1130, file: !1131, line: 52, baseType: !148, size: 64, offset: 1088)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1130, file: !1131, line: 53, baseType: !197, size: 32, offset: 1152)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1130, file: !1131, line: 54, baseType: !197, size: 32, offset: 1184)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1130, file: !1131, line: 55, baseType: !148, size: 64, offset: 1216)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1022, file: !62, line: 1990, baseType: !1155, size: 64, offset: 960)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!1158, !970, !864, !1161}
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !209, line: 66, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !406, line: 73, baseType: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !406, line: 15, baseType: !184)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !209, line: 61, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !406, line: 72, baseType: !1163)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !406, line: 16, baseType: !116)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1022, file: !62, line: 1991, baseType: !1165, size: 64, offset: 1024)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{!213, !1005, !1168, !148, !148}
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !62, line: 55, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1022, file: !62, line: 1993, baseType: !1171, size: 64, offset: 1088)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!213, !1005, !213}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1022, file: !62, line: 1994, baseType: !1175, size: 64, offset: 1152)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!213, !1005, !970, !575, !5, !1009}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1022, file: !62, line: 1997, baseType: !1179, size: 64, offset: 1216)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DISubroutineType(types: !1181)
!1181 = !{!213, !1045, !1005, !575, !1009}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1022, file: !62, line: 1999, baseType: !1183, size: 64, offset: 1280)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!1016, !1045, !970, !213}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1022, file: !62, line: 2001, baseType: !1187, size: 64, offset: 1344)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DISubroutineType(types: !1189)
!1189 = !{!213, !1045, !970, !1016, !213}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1022, file: !62, line: 2003, baseType: !1191, size: 64, offset: 1408)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!213, !1045, !970, !1194}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !62, line: 76, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1022, file: !62, line: 2005, baseType: !1197, size: 64, offset: 1472)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!213, !970, !1194}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1022, file: !62, line: 2006, baseType: !1201, size: 64, offset: 1536)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!1204, !1005}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !62, line: 3192, size: 192, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1205, file: !62, line: 3193, baseType: !688, size: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1205, file: !62, line: 3194, baseType: !197, size: 32, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1006, file: !62, line: 655, baseType: !1210, size: 64, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !62, line: 1190, size: 10752, elements: !1212)
!1212 = !{!1213, !1214, !1215, !1216, !1217, !1218, !2416, !2548, !2588, !2671, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2688, !2692, !2693, !2696, !2699, !2702, !2705, !2706, !2707, !2748, !2774, !2775, !2776, !2777, !2778, !2779, !2782, !2786, !2795, !2796, !2797, !2798, !2857, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1211, file: !62, line: 1191, baseType: !263, size: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1211, file: !62, line: 1192, baseType: !1080, size: 32, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1211, file: !62, line: 1193, baseType: !375, size: 8, offset: 160)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1211, file: !62, line: 1194, baseType: !116, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1211, file: !62, line: 1195, baseType: !615, size: 64, offset: 256)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1211, file: !62, line: 1196, baseType: !1219, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !62, line: 2366, size: 576, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1230, !1234, !1238, !1242, !2404, !2405, !2406, !2408, !2409, !2410, !2412, !2413, !2414, !2415}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1220, file: !62, line: 2367, baseType: !854, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1220, file: !62, line: 2368, baseType: !213, size: 32, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1220, file: !62, line: 2376, baseType: !1225, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DISubroutineType(types: !1227)
!1227 = !{!213, !1228}
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !967, line: 21, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1220, file: !62, line: 2377, baseType: !1231, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1233)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !62, line: 75, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1220, file: !62, line: 2378, baseType: !1235, size: 64, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{!970, !1219, !213, !854, !181}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1220, file: !62, line: 2380, baseType: !1239, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{null, !1210}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1220, file: !62, line: 2381, baseType: !1243, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !18, line: 402, size: 9216, align: 512, elements: !1245)
!1245 = !{!1246, !1247, !1248, !1252, !2043, !2069, !2070, !2071, !2072, !2076, !2079, !2080, !2081, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2149, !2153, !2173, !2193, !2194, !2195, !2196, !2205, !2228, !2229, !2232, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2246, !2247, !2358, !2366, !2367, !2368, !2370, !2374, !2375, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2397, !2398, !2399, !2403}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1244, file: !18, line: 403, baseType: !17, size: 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1244, file: !18, line: 406, baseType: !263, size: 128, offset: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1244, file: !18, line: 409, baseType: !1249, size: 448, offset: 192)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 448, elements: !1250)
!1250 = !{!1251}
!1251 = !DISubrange(count: 56)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1244, file: !18, line: 417, baseType: !1253, size: 768, offset: 640)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !18, line: 45, size: 768, elements: !1254)
!1254 = !{!1255, !2036, !2037, !2038, !2041}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1253, file: !18, line: 46, baseType: !1256, size: 512)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1257, line: 64, size: 512, elements: !1258)
!1257 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1258 = !{!1259, !1260, !1261, !1263, !1307, !1915, !2026, !2031, !2032, !2033, !2034, !2035}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1256, file: !1257, line: 65, baseType: !854, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1256, file: !1257, line: 66, baseType: !263, size: 128, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1256, file: !1257, line: 67, baseType: !1262, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1256, file: !1257, line: 68, baseType: !1264, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1257, line: 168, size: 768, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1265, file: !1257, line: 169, baseType: !263, size: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1265, file: !1257, line: 170, baseType: !557, size: 32, offset: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1265, file: !1257, line: 171, baseType: !1256, size: 512, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1265, file: !1257, line: 172, baseType: !1271, size: 64, offset: 704)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1257, line: 133, size: 192, elements: !1274)
!1274 = !{!1275, !1282, !1287}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1273, file: !1257, line: 134, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!213, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1273, file: !1257, line: 135, baseType: !1283, size: 64, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!854, !1280}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1273, file: !1257, line: 136, baseType: !1288, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!213, !1280, !1292}
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1257, line: 125, size: 20736, elements: !1294)
!1294 = !{!1295, !1297, !1301, !1302, !1306}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1293, file: !1257, line: 126, baseType: !1296, size: 192)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 192, elements: !641)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1293, file: !1257, line: 127, baseType: !1298, size: 4096, offset: 192)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !864, size: 4096, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1293, file: !1257, line: 128, baseType: !213, size: 32, offset: 4288)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1293, file: !1257, line: 129, baseType: !1303, size: 16384, offset: 4320)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 16384, elements: !1304)
!1304 = !{!1305}
!1305 = !DISubrange(count: 2048)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1293, file: !1257, line: 130, baseType: !213, size: 32, offset: 20704)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1256, file: !1257, line: 69, baseType: !1308, size: 64, offset: 320)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1310)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1257, line: 116, size: 384, elements: !1311)
!1311 = !{!1312, !1316, !1335, !1875, !1905, !1909}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1310, file: !1257, line: 117, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !1262}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1310, file: !1257, line: 118, baseType: !1317, size: 64, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1319)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1320, line: 254, size: 128, elements: !1321)
!1320 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1321 = !{!1322, !1331}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1319, file: !1320, line: 255, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DISubroutineType(types: !1325)
!1325 = !{!1158, !1262, !1326, !864}
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1320, line: 30, size: 128, elements: !1328)
!1328 = !{!1329, !1330}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1327, file: !1320, line: 31, baseType: !854, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1327, file: !1320, line: 32, baseType: !1009, size: 16, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1319, file: !1320, line: 256, baseType: !1332, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!1158, !1262, !1326, !854, !1161}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1310, file: !1257, line: 119, baseType: !1336, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1339)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1320, line: 84, size: 320, elements: !1340)
!1340 = !{!1341, !1342, !1346, !1871, !1873}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1339, file: !1320, line: 85, baseType: !854, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1339, file: !1320, line: 86, baseType: !1343, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DISubroutineType(types: !1345)
!1345 = !{!1009, !1262, !1326, !213}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1339, file: !1320, line: 88, baseType: !1347, size: 64, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!1009, !1262, !1350, !213}
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1320, line: 175, size: 512, elements: !1352)
!1352 = !{!1353, !1354, !1355, !1356, !1862, !1866, !1867}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1351, file: !1320, line: 176, baseType: !1327, size: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1351, file: !1320, line: 177, baseType: !1161, size: 64, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1351, file: !1320, line: 178, baseType: !181, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1351, file: !1320, line: 179, baseType: !1357, size: 64, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!1360}
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !62, line: 472, size: 1536, align: 64, elements: !1362)
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1854, !1855, !1856, !1859, !1860, !1861}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1361, file: !62, line: 473, baseType: !1005, size: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1361, file: !62, line: 474, baseType: !688, size: 128, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1361, file: !62, line: 475, baseType: !792, size: 320, offset: 192)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1361, file: !62, line: 476, baseType: !693, size: 32, offset: 512)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1361, file: !62, line: 477, baseType: !208, size: 32, offset: 544)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1361, file: !62, line: 482, baseType: !422, size: 128, offset: 576)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1361, file: !62, line: 483, baseType: !116, size: 64, offset: 704)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1361, file: !62, line: 484, baseType: !116, size: 64, offset: 768)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1361, file: !62, line: 485, baseType: !1372, size: 64, offset: 832)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1374)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !62, line: 404, size: 1280, elements: !1375)
!1375 = !{!1376, !1679, !1749, !1753, !1757, !1763, !1769, !1773, !1778, !1782, !1786, !1790, !1818, !1822, !1826, !1830, !1835, !1839, !1846, !1850}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1374, file: !62, line: 405, baseType: !1377, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!213, !1380, !1677}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !33, line: 74, size: 512, align: 128, elements: !1382)
!1382 = !{!1383, !1384, !1671, !1676}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1381, file: !33, line: 75, baseType: !116, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !33, line: 83, baseType: !1385, size: 320, offset: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1381, file: !33, line: 83, size: 320, elements: !1386)
!1386 = !{!1387, !1408, !1422, !1426, !1670}
!1387 = !DIDerivedType(tag: DW_TAG_member, scope: !1385, file: !33, line: 84, baseType: !1388, size: 320)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !33, line: 84, size: 320, elements: !1389)
!1389 = !{!1390, !1401, !1402, !1407}
!1390 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !33, line: 90, baseType: !1391, size: 128)
!1391 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !33, line: 90, size: 128, elements: !1392)
!1392 = !{!1393, !1394, !1399, !1400}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1391, file: !33, line: 91, baseType: !263, size: 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !33, line: 94, baseType: !1395, size: 128)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1391, file: !33, line: 94, size: 128, elements: !1396)
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1395, file: !33, line: 96, baseType: !181, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1395, file: !33, line: 98, baseType: !5, size: 32, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1391, file: !33, line: 102, baseType: !263, size: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1391, file: !33, line: 103, baseType: !263, size: 128)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1388, file: !33, line: 106, baseType: !1360, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1388, file: !33, line: 107, baseType: !1403, size: 64, offset: 192)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1388, file: !33, line: 107, size: 64, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1403, file: !33, line: 108, baseType: !116, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1403, file: !33, line: 109, baseType: !116, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1388, file: !33, line: 117, baseType: !116, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1385, file: !33, line: 119, baseType: !1409, size: 320)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !33, line: 119, size: 320, elements: !1410)
!1410 = !{!1411, !1412, !1415, !1416, !1417}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1409, file: !33, line: 124, baseType: !116, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1409, file: !33, line: 125, baseType: !1413, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !33, line: 125, flags: DIFlagFwdDecl)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1409, file: !33, line: 126, baseType: !116, size: 64, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1409, file: !33, line: 127, baseType: !116, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !33, line: 128, baseType: !1418, size: 64, offset: 256)
!1418 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1409, file: !33, line: 128, size: 64, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1418, file: !33, line: 133, baseType: !116, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1418, file: !33, line: 138, baseType: !596, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1385, file: !33, line: 141, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !33, line: 141, size: 64, elements: !1424)
!1424 = !{!1425}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1423, file: !33, line: 142, baseType: !116, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1385, file: !33, line: 144, baseType: !1427, size: 128)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1385, file: !33, line: 144, size: 128, elements: !1428)
!1428 = !{!1429, !1669}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1427, file: !33, line: 146, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !25, line: 126, size: 1216, elements: !1432)
!1432 = !{!1433, !1443, !1464, !1475, !1476, !1477, !1478, !1651, !1652, !1653}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1431, file: !25, line: 127, baseType: !1434, size: 384)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !25, line: 21, size: 384, elements: !1435)
!1435 = !{!1436, !1437, !1439, !1440, !1441, !1442}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1434, file: !25, line: 22, baseType: !116, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1434, file: !25, line: 23, baseType: !1438, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1434, file: !25, line: 24, baseType: !1438, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1434, file: !25, line: 25, baseType: !116, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1434, file: !25, line: 26, baseType: !116, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1434, file: !25, line: 27, baseType: !116, size: 64, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1431, file: !25, line: 128, baseType: !1444, size: 128, offset: 384)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1445, line: 105, size: 128, elements: !1446)
!1445 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1444, file: !1445, line: 110, baseType: !116, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1444, file: !1445, line: 118, baseType: !1449, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1445, line: 95, size: 448, elements: !1451)
!1451 = !{!1452, !1453, !1459, !1460, !1461, !1462, !1463}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1450, file: !1445, line: 96, baseType: !596, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1450, file: !1445, line: 97, baseType: !1454, size: 64, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1445, line: 60, baseType: !1456)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1450, file: !1445, line: 98, baseType: !1454, size: 64, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1450, file: !1445, line: 99, baseType: !851, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1450, file: !1445, line: 100, baseType: !851, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1450, file: !1445, line: 101, baseType: !583, size: 128, align: 64, offset: 256)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1450, file: !1445, line: 102, baseType: !1458, size: 64, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1431, file: !25, line: 129, baseType: !1465, size: 256, offset: 512)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1466, line: 26, size: 256, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1465, file: !1466, line: 27, baseType: !5, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1465, file: !1466, line: 28, baseType: !1470, size: 192, offset: 64)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1471, line: 43, size: 192, elements: !1472)
!1471 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1470, file: !1471, line: 44, baseType: !356, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1470, file: !1471, line: 45, baseType: !263, size: 128, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1431, file: !25, line: 130, baseType: !24, size: 32, offset: 768)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1431, file: !25, line: 131, baseType: !5, size: 32, offset: 800)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1431, file: !25, line: 132, baseType: !116, size: 64, offset: 832)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1431, file: !25, line: 133, baseType: !1479, size: 64, offset: 896)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1481)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !25, line: 77, size: 192, elements: !1482)
!1482 = !{!1483, !1487, !1647}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1481, file: !25, line: 83, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = !DISubroutineType(types: !1486)
!1486 = !{null, !1380}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1481, file: !25, line: 89, baseType: !1488, size: 64, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !33, line: 1184, baseType: !5)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1494, line: 512, size: 896, elements: !1495)
!1494 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1495 = !{!1496, !1614, !1615, !1622, !1629, !1639, !1640, !1641, !1643, !1645}
!1496 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1494, line: 513, baseType: !1497, size: 320)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !1494, line: 513, size: 320, elements: !1498)
!1498 = !{!1499, !1610, !1611, !1612, !1613}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1497, file: !1494, line: 514, baseType: !1500, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !33, line: 625, size: 1344, elements: !1502)
!1502 = !{!1503, !1512, !1513, !1521, !1528, !1529, !1534, !1535, !1540, !1541, !1544, !1603, !1604, !1605, !1606, !1607, !1608}
!1503 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !33, line: 628, baseType: !1504, size: 128)
!1504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1501, file: !33, line: 628, size: 128, elements: !1505)
!1505 = !{!1506, !1511}
!1506 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !33, line: 629, baseType: !1507, size: 128)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1504, file: !33, line: 629, size: 128, elements: !1508)
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1507, file: !33, line: 631, baseType: !116, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1507, file: !33, line: 632, baseType: !116, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1504, file: !33, line: 635, baseType: !583, size: 128, align: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1501, file: !33, line: 639, baseType: !539, size: 64, offset: 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1501, file: !33, line: 640, baseType: !1514, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1515, line: 297, baseType: !1516)
!1515 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1515, line: 297, size: 64, elements: !1517)
!1517 = !{!1518}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1516, file: !1515, line: 297, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1520, line: 19, baseType: !116)
!1520 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1521 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !33, line: 646, baseType: !1522, size: 64, offset: 256)
!1522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1501, file: !33, line: 646, size: 64, elements: !1523)
!1523 = !{!1524, !1527}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1522, file: !33, line: 647, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !33, line: 542, baseType: !116)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1522, file: !33, line: 648, baseType: !1526, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1501, file: !33, line: 666, baseType: !213, size: 32, offset: 320)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1501, file: !33, line: 667, baseType: !1530, size: 64, offset: 384)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !33, line: 579, size: 320, elements: !1532)
!1532 = !{!1533}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1531, file: !33, line: 580, baseType: !792, size: 320)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1501, file: !33, line: 670, baseType: !851, size: 8, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1501, file: !33, line: 681, baseType: !1536, size: 256, offset: 512)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1501, file: !33, line: 678, size: 256, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1536, file: !33, line: 679, baseType: !253, size: 192, align: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1536, file: !33, line: 680, baseType: !116, size: 64, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1501, file: !33, line: 689, baseType: !263, size: 128, offset: 768)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1501, file: !33, line: 691, baseType: !1542, size: 64, offset: 896)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !33, line: 691, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1501, file: !33, line: 694, baseType: !1545, size: 64, offset: 960)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1494, line: 563, size: 1024, elements: !1548)
!1548 = !{!1549, !1553, !1554, !1558, !1562, !1566, !1567, !1571, !1575, !1579, !1580, !1581, !1585, !1589, !1595, !1599}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1547, file: !1494, line: 564, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{null, !1500}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1547, file: !1494, line: 569, baseType: !1550, size: 64, offset: 64)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1547, file: !1494, line: 571, baseType: !1555, size: 64, offset: 128)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!213, !1500, !116}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1547, file: !1494, line: 572, baseType: !1559, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!213, !1500}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1547, file: !1494, line: 578, baseType: !1563, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!213, !1500, !116, !116, !116}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1547, file: !1494, line: 580, baseType: !1488, size: 64, offset: 320)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1547, file: !1494, line: 581, baseType: !1568, size: 64, offset: 384)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!1491, !1492, !5}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1547, file: !1494, line: 582, baseType: !1572, size: 64, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{!1491, !1492, !116, !116}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1547, file: !1494, line: 584, baseType: !1576, size: 64, offset: 512)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!116, !1500}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1547, file: !1494, line: 588, baseType: !1488, size: 64, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1547, file: !1494, line: 591, baseType: !1488, size: 64, offset: 640)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1547, file: !1494, line: 597, baseType: !1582, size: 64, offset: 704)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!213, !1500, !116, !181, !213, !213}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1547, file: !1494, line: 603, baseType: !1586, size: 64, offset: 768)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!854, !1500}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1547, file: !1494, line: 613, baseType: !1590, size: 64, offset: 832)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!213, !1500, !1593}
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !188, line: 54, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1547, file: !1494, line: 625, baseType: !1596, size: 64, offset: 896)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!1593, !1500, !116}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1547, file: !1494, line: 633, baseType: !1600, size: 64, offset: 960)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!1380, !1500, !116}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1501, file: !33, line: 697, baseType: !116, size: 64, offset: 1024)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1501, file: !33, line: 699, baseType: !575, size: 64, offset: 1088)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1501, file: !33, line: 700, baseType: !181, size: 64, offset: 1152)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1501, file: !33, line: 711, baseType: !596, size: 64, offset: 1216)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1501, file: !33, line: 717, baseType: !1593, size: 64, offset: 1280)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1501, file: !33, line: 722, baseType: !1609, offset: 1344)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !33, line: 570, elements: !568)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1497, file: !1494, line: 515, baseType: !693, size: 32, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1497, file: !1494, line: 516, baseType: !116, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1497, file: !1494, line: 517, baseType: !116, size: 64, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1497, file: !1494, line: 518, baseType: !116, size: 64, offset: 256)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1493, file: !1494, line: 520, baseType: !32, size: 32, offset: 320)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1493, file: !1494, line: 522, baseType: !1616, size: 64, offset: 384)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1520, line: 22, baseType: !1618)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1520, line: 22, size: 64, elements: !1619)
!1619 = !{!1620}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1618, file: !1520, line: 22, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1520, line: 15, baseType: !116)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1493, file: !1494, line: 524, baseType: !1623, size: 64, offset: 448)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1515, line: 372, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1515, line: 372, size: 64, elements: !1626)
!1626 = !{!1627}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1625, file: !1515, line: 372, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1520, line: 16, baseType: !116)
!1629 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !1494, line: 527, baseType: !1630, size: 64, offset: 512)
!1630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1493, file: !1494, line: 527, size: 64, elements: !1631)
!1631 = !{!1632, !1638}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1630, file: !1494, line: 528, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1520, line: 21, baseType: !1634)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1520, line: 21, size: 64, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1634, file: !1520, line: 21, baseType: !1637, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1520, line: 14, baseType: !116)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1630, file: !1494, line: 529, baseType: !1617, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1493, file: !1494, line: 534, baseType: !1380, size: 64, offset: 576)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1493, file: !1494, line: 535, baseType: !1380, size: 64, offset: 640)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1493, file: !1494, line: 541, baseType: !1642, size: 64, offset: 704)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1493, file: !1494, line: 545, baseType: !1644, size: 64, offset: 768)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1493, file: !1494, line: 549, baseType: !1646, size: 64, offset: 832)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1515, line: 520, baseType: !1380)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1481, file: !25, line: 100, baseType: !1648, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!213, !1430, !116, !116, !213}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1431, file: !25, line: 134, baseType: !181, size: 64, offset: 960)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1431, file: !25, line: 135, baseType: !213, size: 32, offset: 1024)
!1653 = !DIDerivedType(tag: DW_TAG_member, scope: !1431, file: !25, line: 136, baseType: !1654, size: 128, offset: 1088)
!1654 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1431, file: !25, line: 136, size: 128, elements: !1655)
!1655 = !{!1656, !1662}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1654, file: !25, line: 137, baseType: !1657, size: 128)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1658, line: 6, size: 128, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1657, file: !1658, line: 7, baseType: !148, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1657, file: !1658, line: 8, baseType: !148, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, scope: !1654, file: !25, line: 138, baseType: !1663)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1654, file: !25, line: 138, elements: !1664)
!1664 = !{!1665, !1667}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1663, file: !25, line: 138, baseType: !1666)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1663, file: !25, line: 138, elements: !568)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1663, file: !25, line: 138, baseType: !1668)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1657, elements: !730)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1427, file: !33, line: 147, baseType: !181, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1385, file: !33, line: 161, baseType: !583, size: 128, align: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !33, line: 164, baseType: !1672, size: 32, offset: 384)
!1672 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1381, file: !33, line: 164, size: 32, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1672, file: !33, line: 169, baseType: !208, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1672, file: !33, line: 177, baseType: !5, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1381, file: !33, line: 181, baseType: !208, size: 32, offset: 416)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !62, line: 309, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1374, file: !62, line: 406, baseType: !1680, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!213, !575, !1683}
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !33, line: 293, size: 1536, elements: !1685)
!1685 = !{!1686, !1716, !1730}
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !33, line: 295, baseType: !1687, size: 512)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !33, line: 295, size: 512, elements: !1688)
!1688 = !{!1689, !1715}
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1687, file: !33, line: 296, baseType: !1690, size: 448)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1687, file: !33, line: 296, size: 448, elements: !1691)
!1691 = !{!1692, !1693, !1702, !1703, !1704, !1713, !1714}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1690, file: !33, line: 298, baseType: !116, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !33, line: 299, baseType: !1694, size: 128, offset: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !33, line: 299, size: 128, elements: !1695)
!1695 = !{!1696, !1697}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1694, file: !33, line: 300, baseType: !263, size: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, scope: !1694, file: !33, line: 302, baseType: !1698, size: 128)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1694, file: !33, line: 302, size: 128, elements: !1699)
!1699 = !{!1700, !1701}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1698, file: !33, line: 303, baseType: !181, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1698, file: !33, line: 305, baseType: !5, size: 32, offset: 64)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1690, file: !33, line: 310, baseType: !1360, size: 64, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1690, file: !33, line: 311, baseType: !116, size: 64, offset: 256)
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1690, file: !33, line: 312, baseType: !1705, size: 64, offset: 320)
!1705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1690, file: !33, line: 312, size: 64, elements: !1706)
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1705, file: !33, line: 313, baseType: !181, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1705, file: !33, line: 314, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !33, line: 257, baseType: !1710)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 255, size: 64, elements: !1711)
!1711 = !{!1712}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1710, file: !33, line: 256, baseType: !116, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1690, file: !33, line: 316, baseType: !208, size: 32, offset: 384)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1690, file: !33, line: 317, baseType: !208, size: 32, offset: 416)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1687, file: !33, line: 323, baseType: !1381, size: 512, align: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !33, line: 325, baseType: !1717, size: 512, offset: 512)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !33, line: 325, size: 512, elements: !1718)
!1718 = !{!1719, !1729}
!1719 = !DIDerivedType(tag: DW_TAG_member, scope: !1717, file: !33, line: 326, baseType: !1720, size: 320)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1717, file: !33, line: 326, size: 320, elements: !1721)
!1721 = !{!1722, !1723, !1724, !1725, !1726, !1727, !1728}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1720, file: !33, line: 327, baseType: !116, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1720, file: !33, line: 328, baseType: !116, size: 64, offset: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1720, file: !33, line: 329, baseType: !116, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1720, file: !33, line: 331, baseType: !208, size: 32, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1720, file: !33, line: 332, baseType: !208, size: 32, offset: 224)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1720, file: !33, line: 333, baseType: !208, size: 32, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1720, file: !33, line: 335, baseType: !5, size: 32, offset: 288)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1717, file: !33, line: 339, baseType: !1381, size: 512, align: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, scope: !1684, file: !33, line: 341, baseType: !1731, size: 512, offset: 1024)
!1731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1684, file: !33, line: 341, size: 512, elements: !1732)
!1732 = !{!1733, !1742, !1748}
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !33, line: 342, baseType: !1734, size: 384)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1731, file: !33, line: 342, size: 384, elements: !1735)
!1735 = !{!1736, !1737, !1738, !1739, !1740, !1741}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1734, file: !33, line: 343, baseType: !116, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1734, file: !33, line: 344, baseType: !116, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1734, file: !33, line: 346, baseType: !181, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1734, file: !33, line: 347, baseType: !181, size: 64, offset: 192)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1734, file: !33, line: 348, baseType: !181, size: 64, offset: 256)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1734, file: !33, line: 349, baseType: !181, size: 64, offset: 320)
!1742 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !33, line: 352, baseType: !1743, size: 256)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1731, file: !33, line: 352, size: 256, elements: !1744)
!1744 = !{!1745, !1746, !1747}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1743, file: !33, line: 353, baseType: !116, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1743, file: !33, line: 354, baseType: !116, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1743, file: !33, line: 356, baseType: !263, size: 128, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1731, file: !33, line: 359, baseType: !1381, size: 512, align: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1374, file: !62, line: 409, baseType: !1750, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!213, !1360, !1677}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1374, file: !62, line: 412, baseType: !1754, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!851, !1360, !1683}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1374, file: !62, line: 414, baseType: !1758, size: 64, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{null, !1761}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !62, line: 310, flags: DIFlagFwdDecl)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1374, file: !62, line: 416, baseType: !1764, size: 64, offset: 320)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!213, !575, !1360, !615, !5, !1767, !1768}
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1374, file: !62, line: 419, baseType: !1770, size: 64, offset: 384)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!213, !575, !1360, !615, !5, !5, !1380, !181}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1374, file: !62, line: 424, baseType: !1774, size: 64, offset: 448)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!1777, !1360, !1777}
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !209, line: 131, baseType: !148)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1374, file: !62, line: 425, baseType: !1779, size: 64, offset: 512)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{null, !1683, !1161, !1161}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1374, file: !62, line: 426, baseType: !1783, size: 64, offset: 576)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!851, !1683, !693}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1374, file: !62, line: 427, baseType: !1787, size: 64, offset: 640)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !1683}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1374, file: !62, line: 428, baseType: !1791, size: 64, offset: 704)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!1158, !1794, !1816}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !62, line: 373, size: 384, elements: !1796)
!1796 = !{!1797, !1798, !1799, !1803, !1804, !1805, !1806}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1795, file: !62, line: 374, baseType: !575, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1795, file: !62, line: 375, baseType: !615, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1795, file: !62, line: 376, baseType: !1800, size: 64, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{null, !1794, !184}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1795, file: !62, line: 377, baseType: !181, size: 64, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1795, file: !62, line: 378, baseType: !213, size: 32, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1795, file: !62, line: 379, baseType: !142, size: 16, offset: 288)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1795, file: !62, line: 380, baseType: !1807, size: 64, offset: 320)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1795, file: !62, line: 380, size: 64, elements: !1808)
!1808 = !{!1809, !1812}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1807, file: !62, line: 386, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !62, line: 386, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1807, file: !62, line: 395, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!1158, !181}
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !62, line: 69, flags: DIFlagFwdDecl)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1374, file: !62, line: 433, baseType: !1819, size: 64, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!213, !1360, !1683, !1683, !48}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1374, file: !62, line: 435, baseType: !1823, size: 64, offset: 832)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!213, !1683}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1374, file: !62, line: 436, baseType: !1827, size: 64, offset: 896)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!851, !1683, !1161, !1161}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1374, file: !62, line: 438, baseType: !1831, size: 64, offset: 960)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{null, !1683, !1834, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1374, file: !62, line: 439, baseType: !1836, size: 64, offset: 1024)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!213, !1360, !1380}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1374, file: !62, line: 442, baseType: !1840, size: 64, offset: 1088)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!213, !1843, !575, !1845}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !62, line: 66, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1374, file: !62, line: 444, baseType: !1847, size: 64, offset: 1152)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null, !575}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1374, file: !62, line: 445, baseType: !1851, size: 64, offset: 1216)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!213, !1794, !1816}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1361, file: !62, line: 486, baseType: !116, size: 64, offset: 896)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1361, file: !62, line: 487, baseType: !792, size: 320, offset: 960)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1361, file: !62, line: 488, baseType: !1857, size: 32, offset: 1280)
!1857 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1858, line: 8, baseType: !197)
!1858 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1361, file: !62, line: 489, baseType: !557, size: 32, offset: 1312)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1361, file: !62, line: 490, baseType: !263, size: 128, offset: 1344)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1361, file: !62, line: 491, baseType: !181, size: 64, offset: 1472)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1351, file: !1320, line: 180, baseType: !1863, size: 64, offset: 320)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!1158, !575, !1262, !1350, !864, !615, !1161}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1351, file: !1320, line: 182, baseType: !1863, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1351, file: !1320, line: 184, baseType: !1868, size: 64, offset: 448)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!213, !575, !1262, !1350, !1500}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1339, file: !1320, line: 90, baseType: !1872, size: 64, offset: 192)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1339, file: !1320, line: 91, baseType: !1874, size: 64, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1310, file: !1257, line: 120, baseType: !1876, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!1879, !1280}
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1881)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !56, line: 39, size: 384, elements: !1882)
!1882 = !{!1883, !1884, !1888, !1892, !1900, !1904}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1881, file: !56, line: 40, baseType: !55, size: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1881, file: !56, line: 41, baseType: !1885, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{!851}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1881, file: !56, line: 42, baseType: !1889, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!181}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1881, file: !56, line: 43, baseType: !1893, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!1896, !1898}
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !56, line: 19, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1881, file: !56, line: 44, baseType: !1901, size: 64, offset: 256)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!1896}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1881, file: !56, line: 45, baseType: !1037, size: 64, offset: 320)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1310, file: !1257, line: 121, baseType: !1906, size: 64, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!1896, !1280}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1310, file: !1257, line: 122, baseType: !1910, size: 64, offset: 320)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{null, !1280, !1913, !1914}
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1256, file: !1257, line: 70, baseType: !1916, size: 64, offset: 384)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1918, line: 190, size: 1152, elements: !1919)
!1918 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1919 = !{!1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !2018, !2019, !2020, !2021, !2022, !2025}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1917, file: !1918, line: 191, baseType: !208, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1917, file: !1918, line: 192, baseType: !208, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1917, file: !1918, line: 202, baseType: !1916, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1917, file: !1918, line: 203, baseType: !854, size: 64, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1917, file: !1918, line: 205, baseType: !253, size: 192, align: 64, offset: 192)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1917, file: !1918, line: 207, baseType: !1896, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1917, file: !1918, line: 208, baseType: !5, size: 32, offset: 448)
!1927 = !DIDerivedType(tag: DW_TAG_member, scope: !1917, file: !1918, line: 209, baseType: !1928, size: 256, offset: 512)
!1928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1917, file: !1918, line: 209, size: 256, elements: !1929)
!1929 = !{!1930, !1939, !1943}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1928, file: !1918, line: 210, baseType: !1931, size: 256)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1918, line: 153, size: 256, elements: !1932)
!1932 = !{!1933, !1934, !1935, !1938}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1931, file: !1918, line: 154, baseType: !116, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1931, file: !1918, line: 156, baseType: !425, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1931, file: !1918, line: 162, baseType: !1936, size: 64, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1918, line: 162, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1931, file: !1918, line: 167, baseType: !116, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1928, file: !1918, line: 211, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1918, line: 170, size: 64, elements: !1941)
!1941 = !{!1942}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1940, file: !1918, line: 171, baseType: !1916, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1928, file: !1918, line: 212, baseType: !1944, size: 256)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1918, line: 174, size: 256, elements: !1945)
!1945 = !{!1946, !2013, !2016, !2017}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1944, file: !1918, line: 175, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1949)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1918, line: 271, size: 768, elements: !1950)
!1950 = !{!1951, !1973, !1977, !1981, !1986, !1990, !1994, !1998, !1999, !2000, !2001, !2009}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1949, file: !1918, line: 276, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!213, !1955}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1918, line: 251, size: 1216, elements: !1957)
!1957 = !{!1958, !1959, !1960, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1956, file: !1918, line: 253, baseType: !1916, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1956, file: !1918, line: 254, baseType: !575, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1956, file: !1918, line: 255, baseType: !1961, size: 64, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !188, line: 66, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1956, file: !1918, line: 256, baseType: !181, size: 64, offset: 192)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1956, file: !1918, line: 259, baseType: !603, size: 256, offset: 256)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1956, file: !1918, line: 260, baseType: !603, size: 256, offset: 512)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1956, file: !1918, line: 261, baseType: !213, size: 32, offset: 768)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1956, file: !1918, line: 262, baseType: !263, size: 128, offset: 832)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1956, file: !1918, line: 263, baseType: !864, size: 64, offset: 960)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1956, file: !1918, line: 265, baseType: !1161, size: 64, offset: 1024)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1956, file: !1918, line: 266, baseType: !851, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1956, file: !1918, line: 267, baseType: !851, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1956, file: !1918, line: 268, baseType: !1545, size: 64, offset: 1152)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1949, file: !1918, line: 277, baseType: !1974, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !1955}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1949, file: !1918, line: 290, baseType: !1978, size: 64, offset: 128)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!213, !1961, !181}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1949, file: !1918, line: 292, baseType: !1982, size: 64, offset: 192)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!181, !1961, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1949, file: !1918, line: 293, baseType: !1987, size: 64, offset: 256)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!181, !1961, !181, !1985}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1949, file: !1918, line: 294, baseType: !1991, size: 64, offset: 320)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1961, !181}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1949, file: !1918, line: 296, baseType: !1995, size: 64, offset: 384)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!1158, !1955, !864, !1161, !615}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1949, file: !1918, line: 306, baseType: !1161, size: 64, offset: 448)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1949, file: !1918, line: 313, baseType: !851, size: 8, offset: 512)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1949, file: !1918, line: 314, baseType: !1995, size: 64, offset: 576)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1949, file: !1918, line: 317, baseType: !2002, size: 64, offset: 640)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!2005, !1955, !2007}
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2006, line: 59, baseType: !5)
!2006 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !62, line: 61, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1949, file: !1918, line: 320, baseType: !2010, size: 64, offset: 704)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!213, !1955, !1500}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1944, file: !1918, line: 176, baseType: !2014, size: 64, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1918, line: 35, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1944, file: !1918, line: 177, baseType: !615, size: 64, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1944, file: !1918, line: 178, baseType: !1916, size: 64, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1917, file: !1918, line: 215, baseType: !181, size: 64, offset: 768)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1917, file: !1918, line: 221, baseType: !148, size: 64, offset: 832)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1917, file: !1918, line: 223, baseType: !146, size: 16, offset: 896)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1917, file: !1918, line: 224, baseType: !1009, size: 16, offset: 912)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1917, file: !1918, line: 225, baseType: !2023, size: 64, offset: 960)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1918, line: 36, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1917, file: !1918, line: 227, baseType: !583, size: 128, align: 64, offset: 1024)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1256, file: !1257, line: 71, baseType: !2027, size: 32, offset: 448)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2028, line: 19, size: 32, elements: !2029)
!2028 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2029 = !{!2030}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2027, file: !2028, line: 20, baseType: !203, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1256, file: !1257, line: 73, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1256, file: !1257, line: 74, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1256, file: !1257, line: 75, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1256, file: !1257, line: 76, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1256, file: !1257, line: 77, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1253, file: !18, line: 47, baseType: !1243, size: 64, offset: 512)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1253, file: !18, line: 48, baseType: !1262, size: 64, offset: 576)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1253, file: !18, line: 49, baseType: !2039, size: 64, offset: 640)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !18, line: 49, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1253, file: !18, line: 50, baseType: !2042, size: 64, offset: 704)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1244, file: !18, line: 418, baseType: !2044, size: 64, offset: 1408)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !18, line: 53, size: 448, elements: !2046)
!2046 = !{!2047, !2048, !2053, !2057, !2061, !2065}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2045, file: !18, line: 54, baseType: !1327, size: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2045, file: !18, line: 55, baseType: !2049, size: 64, offset: 128)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!1158, !2044, !2052, !864}
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1253, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2045, file: !18, line: 57, baseType: !2054, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{!1158, !2044, !2052, !854, !1161}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2045, file: !18, line: 59, baseType: !2058, size: 64, offset: 256)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{null, !1243, !854}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2045, file: !18, line: 60, baseType: !2062, size: 64, offset: 320)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!213, !1243}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2045, file: !18, line: 61, baseType: !2066, size: 64, offset: 384)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !1243}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1244, file: !18, line: 419, baseType: !854, size: 64, offset: 1472)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1244, file: !18, line: 420, baseType: !854, size: 64, offset: 1536)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1244, file: !18, line: 421, baseType: !1262, size: 64, offset: 1600)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1244, file: !18, line: 424, baseType: !2073, size: 64, offset: 1664)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2075)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !18, line: 424, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1244, file: !18, line: 425, baseType: !2077, size: 64, offset: 1728)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !784)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1244, file: !18, line: 426, baseType: !5, size: 32, offset: 1792)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1244, file: !18, line: 435, baseType: !603, size: 256, offset: 1856)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1244, file: !18, line: 437, baseType: !2082, size: 64, offset: 2112)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2084, line: 69, size: 320, elements: !2085)
!2084 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2085 = !{!2086, !2087, !2088, !2105, !2107, !2111, !2112}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2083, file: !2084, line: 70, baseType: !854, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2083, file: !2084, line: 71, baseType: !1243, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2083, file: !2084, line: 72, baseType: !2089, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2091)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2084, line: 47, size: 256, elements: !2092)
!2092 = !{!2093, !2094, !2100, !2104}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2091, file: !2084, line: 49, baseType: !5, size: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2091, file: !2084, line: 51, baseType: !2095, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!213, !854, !2098}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2091, file: !2084, line: 53, baseType: !2101, size: 64, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!213, !864, !2098}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2091, file: !2084, line: 55, baseType: !1037, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2083, file: !2084, line: 73, baseType: !2106, size: 16, offset: 192)
!2106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2083, file: !2084, line: 74, baseType: !2108, size: 8, offset: 208)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !143, line: 16, baseType: !2109)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !145, line: 20, baseType: !2110)
!2110 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2083, file: !2084, line: 75, baseType: !373, size: 8, offset: 216)
!2112 = !DIDerivedType(tag: DW_TAG_member, scope: !2083, file: !2084, line: 76, baseType: !2113, size: 64, offset: 256)
!2113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2083, file: !2084, line: 76, size: 64, elements: !2114)
!2114 = !{!2115, !2116, !2123}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2113, file: !2084, line: 77, baseType: !181, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2113, file: !2084, line: 78, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2119)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2084, line: 86, size: 128, elements: !2120)
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2119, file: !2084, line: 87, baseType: !5, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2119, file: !2084, line: 88, baseType: !864, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2113, file: !2084, line: 79, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2126)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2084, line: 92, size: 256, elements: !2127)
!2127 = !{!2128, !2129, !2130, !2132, !2133}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2126, file: !2084, line: 94, baseType: !5, size: 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2126, file: !2084, line: 95, baseType: !5, size: 32, offset: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2126, file: !2084, line: 96, baseType: !2131, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2126, file: !2084, line: 97, baseType: !2089, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2126, file: !2084, line: 98, baseType: !181, size: 64, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1244, file: !18, line: 438, baseType: !5, size: 32, offset: 2176)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1244, file: !18, line: 441, baseType: !5, size: 32, offset: 2208)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1244, file: !18, line: 442, baseType: !2073, size: 64, offset: 2240)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1244, file: !18, line: 443, baseType: !2077, size: 64, offset: 2304)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1244, file: !18, line: 444, baseType: !851, size: 8, offset: 2368)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1244, file: !18, line: 451, baseType: !851, size: 8, offset: 2376)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1244, file: !18, line: 454, baseType: !5, size: 32, offset: 2400)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1244, file: !18, line: 455, baseType: !2142, size: 64, offset: 2432)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2144, line: 23, size: 96, elements: !2145)
!2144 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2145 = !{!2146, !2147, !2148}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2143, file: !2144, line: 24, baseType: !213, size: 32)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2143, file: !2144, line: 24, baseType: !213, size: 32, offset: 32)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2143, file: !2144, line: 24, baseType: !213, size: 32, offset: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1244, file: !18, line: 458, baseType: !2150, size: 64, offset: 2496)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!213}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1244, file: !18, line: 460, baseType: !2154, size: 4032, align: 512, offset: 2560)
!2154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2155, size: 4032, elements: !2171)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !18, line: 362, size: 576, elements: !2156)
!2156 = !{!2157, !2158, !2159}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2155, file: !18, line: 363, baseType: !181, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2155, file: !18, line: 364, baseType: !5, size: 32, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2155, file: !18, line: 367, baseType: !2160, size: 448, offset: 128)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !18, line: 319, size: 448, elements: !2161)
!2161 = !{!2162, !2163}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2160, file: !18, line: 320, baseType: !1243, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2160, file: !18, line: 321, baseType: !2164, size: 384, offset: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2165, line: 40, size: 384, elements: !2166)
!2165 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2166 = !{!2167}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2164, file: !2165, line: 41, baseType: !2168, size: 384, align: 64)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 384, align: 64, elements: !2169)
!2169 = !{!2170}
!2170 = !DISubrange(count: 2)
!2171 = !{!2172}
!2172 = !DISubrange(count: 7)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1244, file: !18, line: 463, baseType: !2174, size: 192, offset: 6592)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2175, line: 8, size: 192, elements: !2176)
!2175 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2176 = !{!2177, !2178, !2180}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2174, file: !2175, line: 10, baseType: !5, size: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2174, file: !2175, line: 11, baseType: !2179, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2174, file: !2175, line: 12, baseType: !2181, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2183, line: 59, size: 48, elements: !2184)
!2183 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2184 = !{!2185, !2188, !2189, !2190, !2191, !2192}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2182, file: !2183, line: 60, baseType: !2186, size: 16)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !143, line: 18, baseType: !2187)
!2187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !145, line: 23, baseType: !820)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2182, file: !2183, line: 61, baseType: !2186, size: 16, offset: 16)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2182, file: !2183, line: 63, baseType: !5, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2182, file: !2183, line: 64, baseType: !5, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2182, file: !2183, line: 65, baseType: !5, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2182, file: !2183, line: 66, baseType: !5, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1244, file: !18, line: 465, baseType: !116, size: 64, offset: 6784)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1244, file: !18, line: 469, baseType: !5, size: 32, offset: 6848)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1244, file: !18, line: 470, baseType: !263, size: 128, offset: 6912)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1244, file: !18, line: 471, baseType: !2197, size: 64, offset: 7040)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2199, line: 33, size: 96, elements: !2200)
!2199 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2200 = !{!2201, !2202, !2203, !2204}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2198, file: !2199, line: 37, baseType: !213, size: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2198, file: !2199, line: 43, baseType: !213, size: 32, offset: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2198, file: !2199, line: 45, baseType: !146, size: 16, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2198, file: !2199, line: 47, baseType: !146, size: 16, offset: 80)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1244, file: !18, line: 476, baseType: !2206, size: 64, offset: 7104)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !18, line: 378, size: 256, elements: !2208)
!2208 = !{!2209, !2225, !2226, !2227}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2207, file: !18, line: 379, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2212, line: 204, baseType: !2213)
!2212 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2212, line: 197, size: 192, elements: !2214)
!2214 = !{!2215, !2217, !2218, !2219, !2221, !2223}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2213, file: !2212, line: 198, baseType: !2216, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2212, line: 21, baseType: !198)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2213, file: !2212, line: 199, baseType: !375, size: 8, offset: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2213, file: !2212, line: 200, baseType: !375, size: 8, offset: 40)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2213, file: !2212, line: 201, baseType: !2220, size: 16, offset: 48)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2212, line: 17, baseType: !144)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2213, file: !2212, line: 202, baseType: !2222, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2212, line: 16, baseType: !149)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2213, file: !2212, line: 203, baseType: !2224, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2212, line: 22, baseType: !149)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2207, file: !18, line: 380, baseType: !5, size: 32, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2207, file: !18, line: 381, baseType: !864, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2207, file: !18, line: 382, baseType: !864, size: 64, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1244, file: !18, line: 477, baseType: !2207, size: 256, offset: 7168)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1244, file: !18, line: 480, baseType: !2230, size: 64, offset: 7424)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !18, line: 480, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1244, file: !18, line: 483, baseType: !2233, size: 64, offset: 7488)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !18, line: 483, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1244, file: !18, line: 488, baseType: !864, size: 64, offset: 7552)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1244, file: !18, line: 492, baseType: !181, size: 64, offset: 7616)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1244, file: !18, line: 493, baseType: !5, size: 32, offset: 7680)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1244, file: !18, line: 495, baseType: !181, size: 64, offset: 7744)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1244, file: !18, line: 496, baseType: !5, size: 32, offset: 7808)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1244, file: !18, line: 499, baseType: !5, size: 32, offset: 7840)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1244, file: !18, line: 500, baseType: !2242, size: 64, offset: 7872)
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2244, line: 45, baseType: !2245)
!2244 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1244, file: !18, line: 503, baseType: !5, size: 32, offset: 7936)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1244, file: !18, line: 504, baseType: !2248, size: 64, offset: 8000)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2251, line: 96, size: 192, elements: !2252)
!2251 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2252 = !{!2253, !2254, !2319, !2322}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2250, file: !2251, line: 97, baseType: !5, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2250, file: !2251, line: 98, baseType: !2255, size: 64, offset: 64)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2251, line: 24, size: 3072, elements: !2257)
!2257 = !{!2258, !2260, !2261, !2262, !2263, !2277, !2278, !2279, !2280, !2292, !2304, !2305, !2316, !2317, !2318}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2256, file: !2251, line: 26, baseType: !2259, size: 128)
!2259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 128, elements: !2169)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2256, file: !2251, line: 27, baseType: !2259, size: 128, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2256, file: !2251, line: 28, baseType: !213, size: 32, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2256, file: !2251, line: 31, baseType: !557, size: 32, align: 512, offset: 512)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2256, file: !2251, line: 32, baseType: !2264, size: 960, offset: 576)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2265, line: 206, size: 960, elements: !2266)
!2265 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2266 = !{!2267, !2268, !2271, !2273, !2274, !2276}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2264, file: !2265, line: 207, baseType: !586, size: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2264, file: !2265, line: 208, baseType: !2269, size: 256, offset: 64)
!2269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2270, size: 256, elements: !662)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2264, file: !2265, line: 209, baseType: !2272, size: 256, offset: 320)
!2272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 256, elements: !662)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2264, file: !2265, line: 213, baseType: !184, size: 64, offset: 576)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2264, file: !2265, line: 215, baseType: !2275, size: 256, offset: 640)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !662)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2264, file: !2265, line: 216, baseType: !373, size: 8, offset: 896)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2256, file: !2251, line: 33, baseType: !116, size: 64, offset: 1536)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2256, file: !2251, line: 34, baseType: !116, size: 64, offset: 1600)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2256, file: !2251, line: 35, baseType: !851, size: 8, offset: 1664)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2256, file: !2251, line: 36, baseType: !2281, size: 320, offset: 1728)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2282, line: 11, size: 320, elements: !2283)
!2282 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2283 = !{!2284, !2285, !2286, !2291}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2281, file: !2282, line: 16, baseType: !657, size: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2281, file: !2282, line: 17, baseType: !116, size: 64, offset: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2281, file: !2282, line: 18, baseType: !2287, size: 64, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{null, !2290}
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2281, file: !2282, line: 19, baseType: !197, size: 32, offset: 256)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2256, file: !2251, line: 37, baseType: !2293, size: 256, offset: 2048)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2294, line: 98, size: 256, elements: !2295)
!2294 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2295 = !{!2296, !2297, !2298}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2293, file: !2294, line: 99, baseType: !596, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2293, file: !2294, line: 100, baseType: !263, size: 128, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2293, file: !2294, line: 101, baseType: !2299, size: 64, offset: 192)
!2299 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2294, line: 21, baseType: !2300)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{null, !2303}
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2256, file: !2251, line: 38, baseType: !583, size: 128, align: 64, offset: 2304)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2256, file: !2251, line: 39, baseType: !2306, size: 64, offset: 2432)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2251, line: 49, size: 768, elements: !2308)
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2307, file: !2251, line: 50, baseType: !557, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2307, file: !2251, line: 51, baseType: !2272, size: 256, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2307, file: !2251, line: 53, baseType: !2272, size: 256, offset: 320)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2307, file: !2251, line: 54, baseType: !116, size: 64, offset: 576)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2307, file: !2251, line: 55, baseType: !2306, size: 64, offset: 640)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2307, file: !2251, line: 56, baseType: !213, size: 32, offset: 704)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2307, file: !2251, line: 57, baseType: !213, size: 32, offset: 736)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2256, file: !2251, line: 40, baseType: !116, size: 64, offset: 2496)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2256, file: !2251, line: 42, baseType: !213, size: 32, offset: 2560)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2256, file: !2251, line: 43, baseType: !2249, size: 64, offset: 2624)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2250, file: !2251, line: 99, baseType: !2320, offset: 128)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2321, line: 211, elements: !568)
!2321 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2250, file: !2251, line: 100, baseType: !2323, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2251, line: 63, size: 3008, elements: !2325)
!2325 = !{!2326, !2327, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2357}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2324, file: !2251, line: 64, baseType: !2306, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2324, file: !2251, line: 65, baseType: !2328, size: 192, offset: 64)
!2328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2306, size: 192, elements: !641)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2324, file: !2251, line: 67, baseType: !213, size: 32, offset: 256)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2324, file: !2251, line: 68, baseType: !603, size: 256, offset: 320)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2324, file: !2251, line: 69, baseType: !557, size: 32, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2324, file: !2251, line: 70, baseType: !603, size: 256, offset: 640)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2324, file: !2251, line: 71, baseType: !116, size: 64, offset: 896)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2324, file: !2251, line: 72, baseType: !116, size: 64, offset: 960)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2324, file: !2251, line: 73, baseType: !116, size: 64, offset: 1024)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2324, file: !2251, line: 74, baseType: !116, size: 64, offset: 1088)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2324, file: !2251, line: 75, baseType: !116, size: 64, offset: 1152)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2324, file: !2251, line: 76, baseType: !116, size: 64, offset: 1216)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2324, file: !2251, line: 77, baseType: !116, size: 64, offset: 1280)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2324, file: !2251, line: 78, baseType: !116, size: 64, offset: 1344)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2324, file: !2251, line: 79, baseType: !851, size: 8, offset: 1408)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2324, file: !2251, line: 80, baseType: !116, size: 64, offset: 1472)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2324, file: !2251, line: 81, baseType: !603, size: 256, offset: 1536)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2324, file: !2251, line: 82, baseType: !1465, size: 256, offset: 1792)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2324, file: !2251, line: 84, baseType: !208, size: 32, offset: 2048)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2324, file: !2251, line: 87, baseType: !116, size: 64, offset: 2112)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2324, file: !2251, line: 88, baseType: !116, size: 64, offset: 2176)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2324, file: !2251, line: 89, baseType: !2349, size: 704, offset: 2240)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2294, line: 111, size: 704, elements: !2350)
!2350 = !{!2351, !2352, !2353, !2356}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2349, file: !2294, line: 112, baseType: !2293, size: 256)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2349, file: !2294, line: 113, baseType: !2281, size: 320, offset: 256)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2349, file: !2294, line: 116, baseType: !2354, size: 64, offset: 576)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2294, line: 18, flags: DIFlagFwdDecl)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2349, file: !2294, line: 117, baseType: !213, size: 32, offset: 640)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2324, file: !2251, line: 90, baseType: !2249, size: 64, offset: 2944)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1244, file: !18, line: 515, baseType: !2359, size: 64, offset: 8064)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2361, line: 117, size: 128, elements: !2362)
!2361 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2362 = !{!2363, !2364, !2365}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2360, file: !2361, line: 118, baseType: !784, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2360, file: !2361, line: 119, baseType: !784, size: 32, offset: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2360, file: !2361, line: 120, baseType: !184, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1244, file: !18, line: 516, baseType: !5, size: 32, offset: 8128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1244, file: !18, line: 519, baseType: !5, size: 32, offset: 8160)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1244, file: !18, line: 520, baseType: !2369, size: 64, offset: 8192)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1244, file: !18, line: 523, baseType: !2371, size: 64, offset: 8256)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !18, line: 523, flags: DIFlagFwdDecl)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1244, file: !18, line: 524, baseType: !5, size: 32, offset: 8320)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1244, file: !18, line: 525, baseType: !2376, size: 64, offset: 8384)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2379, line: 28, size: 192, elements: !2380)
!2379 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2380 = !{!2381, !2382, !2383}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2378, file: !2379, line: 29, baseType: !854, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2378, file: !2379, line: 30, baseType: !854, size: 64, offset: 64)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2378, file: !2379, line: 31, baseType: !116, size: 64, offset: 128)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1244, file: !18, line: 526, baseType: !5, size: 32, offset: 8448)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1244, file: !18, line: 533, baseType: !181, size: 64, offset: 8512)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1244, file: !18, line: 534, baseType: !5, size: 32, offset: 8576)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1244, file: !18, line: 535, baseType: !177, size: 64, offset: 8640)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1244, file: !18, line: 536, baseType: !5, size: 32, offset: 8704)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1244, file: !18, line: 539, baseType: !213, size: 32, offset: 8736)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1244, file: !18, line: 540, baseType: !2391, size: 64, offset: 8768)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2393, line: 32, size: 64, elements: !2394)
!2393 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2394 = !{!2395, !2396}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2392, file: !2393, line: 33, baseType: !784, size: 32)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2392, file: !2393, line: 34, baseType: !784, size: 32, offset: 32)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1244, file: !18, line: 563, baseType: !263, size: 128, offset: 8832)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1244, file: !18, line: 565, baseType: !263, size: 128, offset: 8960)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1244, file: !18, line: 568, baseType: !2400, size: 64, offset: 9088)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{null}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1244, file: !18, line: 570, baseType: !208, size: 32, offset: 9152)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1220, file: !62, line: 2382, baseType: !1219, size: 64, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1220, file: !62, line: 2383, baseType: !653, size: 64, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1220, file: !62, line: 2385, baseType: !2407, offset: 576)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2321, line: 206, elements: !568)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1220, file: !62, line: 2386, baseType: !2407, offset: 576)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1220, file: !62, line: 2387, baseType: !2407, offset: 576)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1220, file: !62, line: 2388, baseType: !2411, offset: 576)
!2411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2407, elements: !641)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1220, file: !62, line: 2390, baseType: !2407, offset: 576)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1220, file: !62, line: 2391, baseType: !2407, offset: 576)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1220, file: !62, line: 2392, baseType: !2407, offset: 576)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1220, file: !62, line: 2393, baseType: !2407, offset: 576)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1211, file: !62, line: 1197, baseType: !2417, size: 64, offset: 384)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2419)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !62, line: 2057, size: 1664, elements: !2420)
!2420 = !{!2421, !2425, !2429, !2430, !2434, !2438, !2442, !2443, !2444, !2448, !2452, !2456, !2457, !2458, !2464, !2468, !2469, !2473, !2474, !2475, !2476, !2480, !2484, !2531, !2546, !2547}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2419, file: !62, line: 2058, baseType: !2422, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2423, size: 64)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!1005, !1210}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2419, file: !62, line: 2059, baseType: !2426, size: 64, offset: 64)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{null, !1005}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2419, file: !62, line: 2060, baseType: !2426, size: 64, offset: 128)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2419, file: !62, line: 2062, baseType: !2431, size: 64, offset: 192)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{null, !1005, !213}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2419, file: !62, line: 2063, baseType: !2435, size: 64, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!213, !1005, !1677}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2419, file: !62, line: 2064, baseType: !2439, size: 64, offset: 320)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DISubroutineType(types: !2441)
!2441 = !{!213, !1005}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2419, file: !62, line: 2065, baseType: !2426, size: 64, offset: 384)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2419, file: !62, line: 2066, baseType: !1239, size: 64, offset: 448)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2419, file: !62, line: 2067, baseType: !2445, size: 64, offset: 512)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!213, !1210, !213}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2419, file: !62, line: 2068, baseType: !2449, size: 64, offset: 576)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!213, !1210, !61}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2419, file: !62, line: 2069, baseType: !2453, size: 64, offset: 640)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!213, !1210}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2419, file: !62, line: 2070, baseType: !2449, size: 64, offset: 704)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2419, file: !62, line: 2071, baseType: !2453, size: 64, offset: 768)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2419, file: !62, line: 2072, baseType: !2459, size: 64, offset: 832)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!213, !970, !2462}
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !62, line: 62, flags: DIFlagFwdDecl)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2419, file: !62, line: 2073, baseType: !2465, size: 64, offset: 896)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{!213, !1210, !2179, !864}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2419, file: !62, line: 2074, baseType: !1239, size: 64, offset: 960)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2419, file: !62, line: 2076, baseType: !2470, size: 64, offset: 1024)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!213, !1961, !970}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2419, file: !62, line: 2077, baseType: !2470, size: 64, offset: 1088)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2419, file: !62, line: 2078, baseType: !2470, size: 64, offset: 1152)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2419, file: !62, line: 2079, baseType: !2470, size: 64, offset: 1216)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2419, file: !62, line: 2081, baseType: !2477, size: 64, offset: 1280)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!1158, !1210, !213, !864, !1161, !615}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2419, file: !62, line: 2082, baseType: !2481, size: 64, offset: 1344)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!1158, !1210, !213, !854, !1161, !615}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2419, file: !62, line: 2083, baseType: !2485, size: 64, offset: 1408)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!2488, !1005}
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !67, line: 296, size: 1664, elements: !2491)
!2491 = !{!2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2516, !2517, !2518}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2490, file: !67, line: 297, baseType: !657, size: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2490, file: !67, line: 298, baseType: !263, size: 128, offset: 128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2490, file: !67, line: 299, baseType: !263, size: 128, offset: 256)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2490, file: !67, line: 300, baseType: !263, size: 128, offset: 384)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2490, file: !67, line: 301, baseType: !603, size: 256, offset: 512)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2490, file: !67, line: 302, baseType: !557, size: 32, offset: 768)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2490, file: !67, line: 303, baseType: !208, size: 32, offset: 800)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2490, file: !67, line: 304, baseType: !1210, size: 64, offset: 832)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2490, file: !67, line: 305, baseType: !2501, size: 64, offset: 896)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !67, line: 68, size: 64, elements: !2502)
!2502 = !{!2503, !2515}
!2503 = !DIDerivedType(tag: DW_TAG_member, scope: !2501, file: !67, line: 69, baseType: !2504, size: 32)
!2504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2501, file: !67, line: 69, size: 32, elements: !2505)
!2505 = !{!2506, !2507, !2508}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2504, file: !67, line: 70, baseType: !734, size: 32)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2504, file: !67, line: 71, baseType: !751, size: 32)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2504, file: !67, line: 72, baseType: !2509, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2510, line: 24, baseType: !2511)
!2510 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2510, line: 22, size: 32, elements: !2512)
!2512 = !{!2513}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2511, file: !2510, line: 23, baseType: !2514, size: 32)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2510, line: 20, baseType: !739)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2501, file: !67, line: 74, baseType: !66, size: 32, offset: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2490, file: !67, line: 306, baseType: !615, size: 64, offset: 960)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2490, file: !67, line: 307, baseType: !116, size: 64, offset: 1024)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2490, file: !67, line: 308, baseType: !2519, size: 576, offset: 1088)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !67, line: 205, size: 576, elements: !2520)
!2520 = !{!2521, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2519, file: !67, line: 206, baseType: !2522, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !67, line: 66, baseType: !276)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2519, file: !67, line: 207, baseType: !2522, size: 64, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2519, file: !67, line: 208, baseType: !2522, size: 64, offset: 128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2519, file: !67, line: 209, baseType: !2522, size: 64, offset: 192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2519, file: !67, line: 210, baseType: !2522, size: 64, offset: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2519, file: !67, line: 211, baseType: !2522, size: 64, offset: 320)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2519, file: !67, line: 212, baseType: !2522, size: 64, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2519, file: !67, line: 213, baseType: !808, size: 64, offset: 448)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2519, file: !67, line: 214, baseType: !808, size: 64, offset: 512)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2419, file: !62, line: 2085, baseType: !2532, size: 64, offset: 1472)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!184, !1210, !2535}
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2537, line: 15, size: 256, elements: !2538)
!2537 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2538 = !{!2539, !2540, !2541, !2542, !2543}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2536, file: !2537, line: 16, baseType: !693, size: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2536, file: !2537, line: 19, baseType: !213, size: 32, offset: 32)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2536, file: !2537, line: 26, baseType: !116, size: 64, offset: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2536, file: !2537, line: 33, baseType: !116, size: 64, offset: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2536, file: !2537, line: 36, baseType: !2544, size: 64, offset: 192)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !33, line: 33, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2419, file: !62, line: 2087, baseType: !2532, size: 64, offset: 1536)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2419, file: !62, line: 2089, baseType: !1239, size: 64, offset: 1600)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1211, file: !62, line: 1198, baseType: !2549, size: 64, offset: 448)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2551)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !67, line: 324, size: 704, elements: !2552)
!2552 = !{!2553, !2557, !2561, !2565, !2566, !2567, !2568, !2569, !2574, !2579, !2583}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2551, file: !67, line: 325, baseType: !2554, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!213, !2489}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2551, file: !67, line: 326, baseType: !2558, size: 64, offset: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DISubroutineType(types: !2560)
!2560 = !{!2489, !1210, !213}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2551, file: !67, line: 327, baseType: !2562, size: 64, offset: 128)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{null, !2489}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2551, file: !67, line: 328, baseType: !2554, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2551, file: !67, line: 329, baseType: !2554, size: 64, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2551, file: !67, line: 330, baseType: !2554, size: 64, offset: 320)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2551, file: !67, line: 331, baseType: !2445, size: 64, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2551, file: !67, line: 334, baseType: !2570, size: 64, offset: 448)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!2573, !1005}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2522, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2551, file: !67, line: 335, baseType: !2575, size: 64, offset: 512)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!213, !1005, !2578}
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2551, file: !67, line: 337, baseType: !2580, size: 64, offset: 576)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!213, !1005, !2573}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2551, file: !67, line: 339, baseType: !2584, size: 64, offset: 640)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DISubroutineType(types: !2586)
!2586 = !{!213, !1210, !2587}
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1211, file: !62, line: 1199, baseType: !2589, size: 64, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2591)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !67, line: 430, size: 704, elements: !2592)
!2592 = !{!2593, !2597, !2598, !2602, !2603, !2604, !2619, !2642, !2646, !2647, !2670}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2591, file: !67, line: 431, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{!213, !1210, !213, !213, !1127}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2591, file: !67, line: 432, baseType: !2445, size: 64, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2591, file: !67, line: 433, baseType: !2599, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!213, !1210, !5}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2591, file: !67, line: 434, baseType: !2599, size: 64, offset: 192)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2591, file: !67, line: 435, baseType: !2445, size: 64, offset: 256)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2591, file: !67, line: 436, baseType: !2605, size: 64, offset: 320)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!213, !1210, !213, !2608}
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !67, line: 417, size: 256, elements: !2610)
!2610 = !{!2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2609, file: !67, line: 418, baseType: !213, size: 32)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2609, file: !67, line: 419, baseType: !5, size: 32, offset: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2609, file: !67, line: 420, baseType: !5, size: 32, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2609, file: !67, line: 422, baseType: !5, size: 32, offset: 96)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2609, file: !67, line: 423, baseType: !5, size: 32, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2609, file: !67, line: 424, baseType: !5, size: 32, offset: 160)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2609, file: !67, line: 425, baseType: !5, size: 32, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2609, file: !67, line: 426, baseType: !5, size: 32, offset: 224)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2591, file: !67, line: 437, baseType: !2620, size: 64, offset: 384)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!213, !1210, !2501, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !67, line: 345, size: 960, elements: !2625)
!2625 = !{!2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2624, file: !67, line: 346, baseType: !213, size: 32)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2624, file: !67, line: 347, baseType: !148, size: 64, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2624, file: !67, line: 348, baseType: !148, size: 64, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2624, file: !67, line: 349, baseType: !148, size: 64, offset: 192)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2624, file: !67, line: 350, baseType: !148, size: 64, offset: 256)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2624, file: !67, line: 351, baseType: !148, size: 64, offset: 320)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2624, file: !67, line: 352, baseType: !148, size: 64, offset: 384)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2624, file: !67, line: 353, baseType: !274, size: 64, offset: 448)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2624, file: !67, line: 355, baseType: !274, size: 64, offset: 512)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2624, file: !67, line: 356, baseType: !213, size: 32, offset: 576)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2624, file: !67, line: 357, baseType: !213, size: 32, offset: 608)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2624, file: !67, line: 358, baseType: !148, size: 64, offset: 640)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2624, file: !67, line: 359, baseType: !148, size: 64, offset: 704)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2624, file: !67, line: 360, baseType: !148, size: 64, offset: 768)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2624, file: !67, line: 361, baseType: !274, size: 64, offset: 832)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2624, file: !67, line: 362, baseType: !213, size: 32, offset: 896)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2591, file: !67, line: 438, baseType: !2643, size: 64, offset: 448)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!213, !1210, !2587, !2623}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2591, file: !67, line: 440, baseType: !2620, size: 64, offset: 512)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2591, file: !67, line: 441, baseType: !2648, size: 64, offset: 576)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!213, !1210, !2651}
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !67, line: 411, size: 1408, elements: !2653)
!2653 = !{!2654, !2655}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2652, file: !67, line: 412, baseType: !5, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2652, file: !67, line: 413, baseType: !2656, size: 1344, offset: 64)
!2656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2657, size: 1344, elements: !641)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !67, line: 397, size: 448, elements: !2658)
!2658 = !{!2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2669}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2657, file: !67, line: 398, baseType: !5, size: 32)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2657, file: !67, line: 399, baseType: !5, size: 32, offset: 32)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2657, file: !67, line: 401, baseType: !5, size: 32, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2657, file: !67, line: 402, baseType: !5, size: 32, offset: 96)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2657, file: !67, line: 403, baseType: !5, size: 32, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2657, file: !67, line: 404, baseType: !5, size: 32, offset: 160)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2657, file: !67, line: 405, baseType: !5, size: 32, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2657, file: !67, line: 406, baseType: !150, size: 64, offset: 256)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2657, file: !67, line: 407, baseType: !2668, size: 64, offset: 320)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !209, line: 132, baseType: !148)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2657, file: !67, line: 408, baseType: !2668, size: 64, offset: 384)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2591, file: !67, line: 442, baseType: !2599, size: 64, offset: 640)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1211, file: !62, line: 1200, baseType: !2672, size: 64, offset: 576)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2674)
!2674 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !62, line: 54, flags: DIFlagFwdDecl)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1211, file: !62, line: 1201, baseType: !116, size: 64, offset: 640)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1211, file: !62, line: 1202, baseType: !116, size: 64, offset: 704)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1211, file: !62, line: 1203, baseType: !116, size: 64, offset: 768)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1211, file: !62, line: 1204, baseType: !970, size: 64, offset: 832)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1211, file: !62, line: 1205, baseType: !792, size: 320, offset: 896)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1211, file: !62, line: 1206, baseType: !213, size: 32, offset: 1216)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1211, file: !62, line: 1207, baseType: !208, size: 32, offset: 1248)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1211, file: !62, line: 1209, baseType: !181, size: 64, offset: 1280)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1211, file: !62, line: 1211, baseType: !2684, size: 64, offset: 1344)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2687)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !62, line: 1211, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1211, file: !62, line: 1223, baseType: !2689, size: 64, offset: 1408)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !982, line: 34, size: 64, elements: !2690)
!2690 = !{!2691}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2689, file: !982, line: 35, baseType: !985, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1211, file: !62, line: 1224, baseType: !263, size: 128, offset: 1472)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1211, file: !62, line: 1225, baseType: !2694, size: 64, offset: 1600)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !62, line: 1225, flags: DIFlagFwdDecl)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1211, file: !62, line: 1226, baseType: !2697, size: 64, offset: 1664)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !62, line: 1226, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1211, file: !62, line: 1227, baseType: !2700, size: 64, offset: 1728)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !62, line: 50, flags: DIFlagFwdDecl)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1211, file: !62, line: 1228, baseType: !2703, size: 64, offset: 1792)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !62, line: 1228, flags: DIFlagFwdDecl)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1211, file: !62, line: 1229, baseType: !657, size: 128, offset: 1856)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1211, file: !62, line: 1230, baseType: !5, size: 32, offset: 1984)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1211, file: !62, line: 1231, baseType: !2708, size: 2496, offset: 2048)
!2708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !67, line: 521, size: 2496, elements: !2709)
!2709 = !{!2710, !2711, !2712, !2714, !2746}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2708, file: !67, line: 522, baseType: !5, size: 32)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2708, file: !67, line: 523, baseType: !792, size: 320, offset: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2708, file: !67, line: 524, baseType: !2713, size: 192, offset: 384)
!2713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1005, size: 192, elements: !641)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2708, file: !67, line: 525, baseType: !2715, size: 1728, offset: 576)
!2715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2716, size: 1728, elements: !641)
!2716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !67, line: 222, size: 576, elements: !2717)
!2717 = !{!2718, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2716, file: !67, line: 223, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !67, line: 445, size: 256, elements: !2721)
!2721 = !{!2722, !2723, !2736, !2737}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2720, file: !67, line: 446, baseType: !213, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2720, file: !67, line: 447, baseType: !2724, size: 64, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2726)
!2726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !67, line: 312, size: 512, elements: !2727)
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2726, file: !67, line: 313, baseType: !2445, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2726, file: !67, line: 314, baseType: !2445, size: 64, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2726, file: !67, line: 315, baseType: !2445, size: 64, offset: 128)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2726, file: !67, line: 316, baseType: !2445, size: 64, offset: 192)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2726, file: !67, line: 317, baseType: !2554, size: 64, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2726, file: !67, line: 318, baseType: !2554, size: 64, offset: 320)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2726, file: !67, line: 319, baseType: !2554, size: 64, offset: 384)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2726, file: !67, line: 320, baseType: !2584, size: 64, offset: 448)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2720, file: !67, line: 448, baseType: !1243, size: 64, offset: 128)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2720, file: !67, line: 449, baseType: !2719, size: 64, offset: 192)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2716, file: !67, line: 224, baseType: !213, size: 32, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2716, file: !67, line: 226, baseType: !263, size: 128, offset: 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2716, file: !67, line: 227, baseType: !116, size: 64, offset: 256)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2716, file: !67, line: 228, baseType: !5, size: 32, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2716, file: !67, line: 229, baseType: !5, size: 32, offset: 352)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2716, file: !67, line: 230, baseType: !2522, size: 64, offset: 384)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2716, file: !67, line: 231, baseType: !2522, size: 64, offset: 448)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2716, file: !67, line: 232, baseType: !181, size: 64, offset: 512)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2708, file: !67, line: 526, baseType: !2747, size: 192, offset: 2304)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2724, size: 192, elements: !641)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1211, file: !62, line: 1233, baseType: !2749, size: 2368, offset: 4544)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !62, line: 1184, size: 2368, elements: !2750)
!2750 = !{!2751, !2752, !2753}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2749, file: !62, line: 1185, baseType: !146, size: 16)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2749, file: !62, line: 1186, baseType: !146, size: 16, offset: 16)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2749, file: !62, line: 1187, baseType: !2754, size: 2304, offset: 64)
!2754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2755, size: 2304, elements: !641)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2756, line: 12, size: 768, elements: !2757)
!2756 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2757 = !{!2758, !2766, !2767, !2772, !2773}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2755, file: !2756, line: 13, baseType: !2759, size: 384)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2760, line: 17, size: 384, elements: !2761)
!2760 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2761 = !{!2762, !2763, !2764, !2765}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2759, file: !2760, line: 18, baseType: !213, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2759, file: !2760, line: 19, baseType: !213, size: 32, offset: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2759, file: !2760, line: 20, baseType: !666, size: 192, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2759, file: !2760, line: 22, baseType: !583, size: 128, align: 64, offset: 256)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2755, file: !2756, line: 14, baseType: !2131, size: 64, offset: 384)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2755, file: !2756, line: 15, baseType: !2768, size: 64, offset: 448)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2769, line: 16, size: 64, elements: !2770)
!2769 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2770 = !{!2771}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2768, file: !2769, line: 17, baseType: !186, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2755, file: !2756, line: 16, baseType: !666, size: 192, offset: 512)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2755, file: !2756, line: 17, baseType: !208, size: 32, offset: 704)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1211, file: !62, line: 1240, baseType: !181, size: 64, offset: 6912)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1211, file: !62, line: 1243, baseType: !197, size: 32, offset: 6976)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1211, file: !62, line: 1245, baseType: !808, size: 64, offset: 7040)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1211, file: !62, line: 1246, baseType: !808, size: 64, offset: 7104)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1211, file: !62, line: 1248, baseType: !198, size: 32, offset: 7168)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1211, file: !62, line: 1249, baseType: !2780, size: 64, offset: 7232)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !62, line: 634, flags: DIFlagFwdDecl)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1211, file: !62, line: 1252, baseType: !2783, size: 256, offset: 7296)
!2783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 256, elements: !2784)
!2784 = !{!2785}
!2785 = !DISubrange(count: 32)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1211, file: !62, line: 1253, baseType: !2787, size: 128, offset: 7552)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2788, line: 21, baseType: !2789)
!2788 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2788, line: 19, size: 128, elements: !2790)
!2790 = !{!2791}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2789, file: !2788, line: 20, baseType: !2792, size: 128)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 128, elements: !2793)
!2793 = !{!2794}
!2794 = !DISubrange(count: 16)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1211, file: !62, line: 1255, baseType: !5, size: 32, offset: 7680)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1211, file: !62, line: 1261, baseType: !603, size: 256, offset: 7744)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1211, file: !62, line: 1267, baseType: !854, size: 64, offset: 8000)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1211, file: !62, line: 1269, baseType: !2799, size: 64, offset: 8064)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2801)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !972, line: 128, size: 1024, align: 512, elements: !2802)
!2802 = !{!2803, !2807, !2808, !2815, !2821, !2825, !2829, !2833, !2834, !2838, !2842, !2847, !2851}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2801, file: !972, line: 129, baseType: !2804, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!213, !970, !5}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2801, file: !972, line: 130, baseType: !2804, size: 64, offset: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2801, file: !972, line: 131, baseType: !2809, size: 64, offset: 128)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!213, !2812, !2814}
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2801, file: !972, line: 132, baseType: !2816, size: 64, offset: 192)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{!213, !2812, !5, !854, !2819}
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !990)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2801, file: !972, line: 134, baseType: !2822, size: 64, offset: 256)
!2822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2823, size: 64)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!213, !2812}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2801, file: !972, line: 135, baseType: !2826, size: 64, offset: 320)
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DISubroutineType(types: !2828)
!2828 = !{!213, !970}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2801, file: !972, line: 136, baseType: !2830, size: 64, offset: 384)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{null, !970}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2801, file: !972, line: 137, baseType: !2830, size: 64, offset: 448)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2801, file: !972, line: 138, baseType: !2835, size: 64, offset: 512)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{null, !970, !1005}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2801, file: !972, line: 139, baseType: !2839, size: 64, offset: 576)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!864, !970, !864, !213}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2801, file: !972, line: 140, baseType: !2843, size: 64, offset: 640)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!965, !2846}
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2801, file: !972, line: 141, baseType: !2848, size: 64, offset: 704)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!213, !1127, !851}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2801, file: !972, line: 142, baseType: !2852, size: 64, offset: 768)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!970, !970, !2855}
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1006)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1211, file: !62, line: 1271, baseType: !2858, size: 448, offset: 8128)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2537, line: 63, size: 448, elements: !2859)
!2859 = !{!2860, !2865, !2866, !2867, !2868, !2869, !2870}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2858, file: !2537, line: 64, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!116, !2864, !2535}
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2858, file: !2537, line: 66, baseType: !2861, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2858, file: !2537, line: 69, baseType: !184, size: 64, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2858, file: !2537, line: 70, baseType: !213, size: 32, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2858, file: !2537, line: 71, baseType: !5, size: 32, offset: 224)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2858, file: !2537, line: 74, baseType: !263, size: 128, offset: 256)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2858, file: !2537, line: 85, baseType: !2871, size: 64, offset: 384)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1211, file: !62, line: 1274, baseType: !596, size: 64, offset: 8576)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1211, file: !62, line: 1280, baseType: !596, size: 64, offset: 8640)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1211, file: !62, line: 1283, baseType: !213, size: 32, offset: 8704)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1211, file: !62, line: 1286, baseType: !1857, size: 32, offset: 8736)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1211, file: !62, line: 1289, baseType: !2354, size: 64, offset: 8768)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1211, file: !62, line: 1290, baseType: !653, size: 64, offset: 8832)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1211, file: !62, line: 1297, baseType: !710, size: 64, offset: 8896)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1211, file: !62, line: 1304, baseType: !2880, size: 64, offset: 8960)
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2881, line: 49, size: 64, elements: !2882)
!2881 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2882 = !{!2883}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2880, file: !2881, line: 50, baseType: !2884, size: 64)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2881, line: 41, size: 512, align: 512, elements: !2886)
!2886 = !{!2887, !2888, !2893}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2885, file: !2881, line: 43, baseType: !557, size: 32)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2885, file: !2881, line: 45, baseType: !2889, size: 192, offset: 64)
!2889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2881, line: 29, size: 192, elements: !2890)
!2890 = !{!2891, !2892}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2889, file: !2881, line: 30, baseType: !263, size: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2889, file: !2881, line: 32, baseType: !184, size: 64, offset: 128)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2885, file: !2881, line: 46, baseType: !184, size: 64, offset: 256)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1211, file: !62, line: 1305, baseType: !2880, size: 64, offset: 9024)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1211, file: !62, line: 1306, baseType: !583, size: 128, align: 64, offset: 9088)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1211, file: !62, line: 1307, baseType: !2293, size: 256, offset: 9216)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1211, file: !62, line: 1309, baseType: !603, size: 256, offset: 9472)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1211, file: !62, line: 1314, baseType: !213, size: 32, offset: 9728)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1211, file: !62, line: 1317, baseType: !557, size: 32, align: 512, offset: 10240)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1211, file: !62, line: 1318, baseType: !263, size: 128, offset: 10304)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1211, file: !62, line: 1320, baseType: !557, size: 32, offset: 10432)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1211, file: !62, line: 1321, baseType: !263, size: 128, offset: 10496)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1006, file: !62, line: 656, baseType: !1360, size: 64, offset: 512)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1006, file: !62, line: 659, baseType: !181, size: 64, offset: 576)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1006, file: !62, line: 663, baseType: !116, size: 64, offset: 640)
!2906 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !62, line: 671, baseType: !2907, size: 32, offset: 704)
!2907 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !62, line: 671, size: 32, elements: !2908)
!2908 = !{!2909, !2911}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2907, file: !62, line: 672, baseType: !2910, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2907, file: !62, line: 673, baseType: !5, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1006, file: !62, line: 675, baseType: !1080, size: 32, offset: 736)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1006, file: !62, line: 676, baseType: !615, size: 64, offset: 768)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1006, file: !62, line: 677, baseType: !1116, size: 128, offset: 832)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1006, file: !62, line: 678, baseType: !1116, size: 128, offset: 960)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1006, file: !62, line: 679, baseType: !1116, size: 128, offset: 1088)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1006, file: !62, line: 680, baseType: !557, size: 32, offset: 1216)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1006, file: !62, line: 681, baseType: !146, size: 16, offset: 1248)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1006, file: !62, line: 682, baseType: !373, size: 8, offset: 1264)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1006, file: !62, line: 683, baseType: !373, size: 8, offset: 1272)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1006, file: !62, line: 684, baseType: !2668, size: 64, offset: 1280)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1006, file: !62, line: 691, baseType: !116, size: 64, offset: 1344)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1006, file: !62, line: 692, baseType: !792, size: 320, offset: 1408)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1006, file: !62, line: 694, baseType: !116, size: 64, offset: 1728)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1006, file: !62, line: 695, baseType: !116, size: 64, offset: 1792)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1006, file: !62, line: 697, baseType: !657, size: 128, offset: 1856)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1006, file: !62, line: 698, baseType: !263, size: 128, offset: 1984)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1006, file: !62, line: 707, baseType: !263, size: 128, offset: 2112)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1006, file: !62, line: 708, baseType: !263, size: 128, offset: 2240)
!2930 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !62, line: 709, baseType: !2931, size: 128, offset: 2368)
!2931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !62, line: 709, size: 128, elements: !2932)
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2931, file: !62, line: 710, baseType: !653, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2931, file: !62, line: 711, baseType: !583, size: 128, align: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1006, file: !62, line: 713, baseType: !598, size: 64, offset: 2496)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1006, file: !62, line: 714, baseType: !598, size: 64, offset: 2560)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1006, file: !62, line: 715, baseType: !208, size: 32, offset: 2624)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1006, file: !62, line: 716, baseType: !208, size: 32, offset: 2656)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1006, file: !62, line: 717, baseType: !208, size: 32, offset: 2688)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1006, file: !62, line: 719, baseType: !208, size: 32, offset: 2720)
!2941 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !62, line: 721, baseType: !2942, size: 64, offset: 2752)
!2942 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !62, line: 721, size: 64, elements: !2943)
!2943 = !{!2944, !3070}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2942, file: !62, line: 722, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2947)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !62, line: 1914, size: 2112, elements: !2948)
!2948 = !{!2949, !2950, !2954, !2958, !2962, !2963, !2964, !2970, !2983, !2987, !2991, !2992, !2996, !2997, !3001, !3006, !3007, !3011, !3015, !3021, !3022, !3026, !3027, !3033, !3037, !3038, !3043, !3047, !3051, !3055, !3059, !3060, !3066}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2947, file: !62, line: 1915, baseType: !1243, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2947, file: !62, line: 1916, baseType: !2951, size: 64, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!615, !575, !615, !213}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2947, file: !62, line: 1917, baseType: !2955, size: 64, offset: 128)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!1158, !575, !864, !1161, !1985}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2947, file: !62, line: 1918, baseType: !2959, size: 64, offset: 192)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!1158, !575, !854, !1161, !1985}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2947, file: !62, line: 1919, baseType: !1791, size: 64, offset: 256)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2947, file: !62, line: 1920, baseType: !1791, size: 64, offset: 320)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2947, file: !62, line: 1921, baseType: !2965, size: 64, offset: 384)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!213, !1794, !2968, !5}
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !62, line: 53, flags: DIFlagFwdDecl)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2947, file: !62, line: 1923, baseType: !2971, size: 64, offset: 448)
!2971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2972, size: 64)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!213, !575, !2974}
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !62, line: 1858, size: 128, elements: !2976)
!2976 = !{!2977, !2982}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2975, file: !62, line: 1859, baseType: !2978, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !62, line: 1855, baseType: !2979)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!851, !2974, !854, !213, !615, !148, !5}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2975, file: !62, line: 1860, baseType: !615, size: 64, offset: 64)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2947, file: !62, line: 1924, baseType: !2984, size: 64, offset: 512)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!2005, !575, !2007}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2947, file: !62, line: 1925, baseType: !2988, size: 64, offset: 576)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!184, !575, !5, !116}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2947, file: !62, line: 1926, baseType: !2988, size: 64, offset: 640)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2947, file: !62, line: 1927, baseType: !2993, size: 64, offset: 704)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!213, !575, !1500}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2947, file: !62, line: 1928, baseType: !116, size: 64, offset: 768)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2947, file: !62, line: 1929, baseType: !2998, size: 64, offset: 832)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!213, !1005, !575}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2947, file: !62, line: 1930, baseType: !3002, size: 64, offset: 896)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!213, !575, !3005}
!3005 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !62, line: 1061, baseType: !181)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2947, file: !62, line: 1931, baseType: !2998, size: 64, offset: 960)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2947, file: !62, line: 1932, baseType: !3008, size: 64, offset: 1024)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!213, !575, !615, !615, !213}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2947, file: !62, line: 1933, baseType: !3012, size: 64, offset: 1088)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!213, !213, !575, !213}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2947, file: !62, line: 1934, baseType: !3016, size: 64, offset: 1152)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!213, !575, !213, !3019}
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !62, line: 1063, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2947, file: !62, line: 1935, baseType: !572, size: 64, offset: 1216)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2947, file: !62, line: 1936, baseType: !3023, size: 64, offset: 1280)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!213, !213}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2947, file: !62, line: 1937, baseType: !3016, size: 64, offset: 1344)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2947, file: !62, line: 1938, baseType: !3028, size: 64, offset: 1408)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!1158, !3031, !575, !1985, !1161, !5}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !188, line: 59, flags: DIFlagFwdDecl)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2947, file: !62, line: 1939, baseType: !3034, size: 64, offset: 1472)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!1158, !575, !1985, !3031, !1161, !5}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2947, file: !62, line: 1940, baseType: !1847, size: 64, offset: 1536)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2947, file: !62, line: 1941, baseType: !3039, size: 64, offset: 1600)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!213, !575, !213, !3042, !1768}
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2947, file: !62, line: 1942, baseType: !3044, size: 64, offset: 1664)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!184, !575, !213, !615, !615}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2947, file: !62, line: 1944, baseType: !3048, size: 64, offset: 1728)
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DISubroutineType(types: !3050)
!3050 = !{null, !1961, !575}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2947, file: !62, line: 1948, baseType: !3052, size: 64, offset: 1792)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!1158, !575, !615, !575, !615, !1161, !5}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2947, file: !62, line: 1950, baseType: !3056, size: 64, offset: 1856)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!615, !575, !615, !575, !615, !615, !5}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2947, file: !62, line: 1953, baseType: !3008, size: 64, offset: 1920)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2947, file: !62, line: 1954, baseType: !3061, size: 64, offset: 1984)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!213, !3064, !5}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !62, line: 1911, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2947, file: !62, line: 1955, baseType: !3067, size: 64, offset: 2048)
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!213, !3064, !2968, !5}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2942, file: !62, line: 723, baseType: !2426, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1006, file: !62, line: 725, baseType: !3072, size: 64, offset: 2816)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !62, line: 725, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1006, file: !62, line: 726, baseType: !1361, size: 1536, align: 64, offset: 2880)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1006, file: !62, line: 727, baseType: !263, size: 128, offset: 4416)
!3076 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !62, line: 728, baseType: !3077, size: 64, offset: 4544)
!3077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !62, line: 728, size: 64, elements: !3078)
!3078 = !{!3079, !3080, !3083, !3084}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3077, file: !62, line: 729, baseType: !3031, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3077, file: !62, line: 730, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3082 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !62, line: 730, flags: DIFlagFwdDecl)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3077, file: !62, line: 731, baseType: !864, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3077, file: !62, line: 732, baseType: !5, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1006, file: !62, line: 735, baseType: !198, size: 32, offset: 4608)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1006, file: !62, line: 738, baseType: !198, size: 32, offset: 4640)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1006, file: !62, line: 739, baseType: !2780, size: 64, offset: 4672)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1006, file: !62, line: 750, baseType: !181, size: 64, offset: 4736)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !971, file: !972, line: 91, baseType: !3090, size: 256, offset: 448)
!3090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 256, elements: !2784)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !971, file: !972, line: 94, baseType: !3092, size: 64, offset: 704)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3093, line: 25, size: 64, elements: !3094)
!3093 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3094 = !{!3095}
!3095 = !DIDerivedType(tag: DW_TAG_member, scope: !3092, file: !3093, line: 26, baseType: !3096, size: 64)
!3096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3092, file: !3093, line: 26, size: 64, elements: !3097)
!3097 = !{!3098, !3099}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3096, file: !3093, line: 28, baseType: !149, size: 64, align: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, scope: !3096, file: !3093, line: 30, baseType: !3100, size: 64)
!3100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3096, file: !3093, line: 30, size: 64, elements: !3101)
!3101 = !{!3102, !3103}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3100, file: !3093, line: 31, baseType: !557, size: 32)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3100, file: !3093, line: 32, baseType: !213, size: 32, offset: 32)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !971, file: !972, line: 95, baseType: !2799, size: 64, offset: 768)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !971, file: !972, line: 96, baseType: !1210, size: 64, offset: 832)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !971, file: !972, line: 97, baseType: !116, size: 64, offset: 896)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !971, file: !972, line: 98, baseType: !181, size: 64, offset: 960)
!3108 = !DIDerivedType(tag: DW_TAG_member, scope: !971, file: !972, line: 100, baseType: !3109, size: 128, offset: 1024)
!3109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !971, file: !972, line: 100, size: 128, elements: !3110)
!3110 = !{!3111, !3112}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3109, file: !972, line: 101, baseType: !263, size: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3109, file: !972, line: 102, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !971, file: !972, line: 104, baseType: !263, size: 128, offset: 1152)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !971, file: !972, line: 105, baseType: !263, size: 128, offset: 1280)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !971, file: !972, line: 113, baseType: !3117, size: 128, offset: 1408)
!3117 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !971, file: !972, line: 109, size: 128, elements: !3118)
!3118 = !{!3119, !3120, !3121}
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3117, file: !972, line: 110, baseType: !657, size: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3117, file: !972, line: 111, baseType: !981, size: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3117, file: !972, line: 112, baseType: !583, size: 128, align: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !966, file: !967, line: 72, baseType: !1210, size: 64, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !966, file: !967, line: 73, baseType: !213, size: 32, offset: 128)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !966, file: !967, line: 74, baseType: !1045, size: 64, offset: 192)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !961, file: !962, line: 10, baseType: !970, size: 64, offset: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !576, file: !62, line: 1015, baseType: !1005, size: 64, offset: 1344)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !576, file: !62, line: 1016, baseType: !2945, size: 64, offset: 1408)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !576, file: !62, line: 1018, baseType: !148, size: 64, offset: 1472)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !576, file: !62, line: 1020, baseType: !181, size: 64, offset: 1536)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !576, file: !62, line: 1023, baseType: !181, size: 64, offset: 1600)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !576, file: !62, line: 1027, baseType: !3132, size: 64, offset: 1664)
!3132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !576, file: !62, line: 1029, baseType: !1360, size: 64, offset: 1728)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !576, file: !62, line: 1030, baseType: !1857, size: 32, offset: 1792)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !576, file: !62, line: 1031, baseType: !1857, size: 32, offset: 1824)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !543, file: !33, line: 756, baseType: !116, size: 64, offset: 704)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !543, file: !33, line: 757, baseType: !116, size: 64, offset: 768)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !543, file: !33, line: 760, baseType: !116, size: 64, offset: 832)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !543, file: !33, line: 761, baseType: !116, size: 64, offset: 896)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !543, file: !33, line: 763, baseType: !116, size: 64, offset: 960)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !543, file: !33, line: 764, baseType: !3142, size: 64, offset: 1024)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1515, line: 299, baseType: !3144)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1515, line: 299, size: 64, elements: !3145)
!3145 = !{!3146}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3144, file: !1515, line: 299, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1520, line: 18, baseType: !116)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !543, file: !33, line: 773, baseType: !208, size: 32, offset: 1088)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !543, file: !33, line: 785, baseType: !208, size: 32, offset: 1120)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !543, file: !33, line: 795, baseType: !3151, size: 64, offset: 1152)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !33, line: 726, size: 128, elements: !3153)
!3153 = !{!3154, !3155}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3152, file: !33, line: 727, baseType: !148, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3152, file: !33, line: 728, baseType: !213, size: 32, offset: 64)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !543, file: !33, line: 801, baseType: !116, size: 64, offset: 1216)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !543, file: !33, line: 804, baseType: !596, size: 64, offset: 1280)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !543, file: !33, line: 806, baseType: !213, size: 32, offset: 1344)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !543, file: !33, line: 808, baseType: !557, size: 32, offset: 1376)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !543, file: !33, line: 823, baseType: !792, size: 320, offset: 1408)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !543, file: !33, line: 825, baseType: !263, size: 128, offset: 1728)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !543, file: !33, line: 845, baseType: !213, size: 32, offset: 1856)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !543, file: !33, line: 849, baseType: !116, size: 64, offset: 1920)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !543, file: !33, line: 850, baseType: !116, size: 64, offset: 1984)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !543, file: !33, line: 852, baseType: !116, size: 64, offset: 2048)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !543, file: !33, line: 853, baseType: !116, size: 64, offset: 2112)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !543, file: !33, line: 854, baseType: !598, size: 64, offset: 2176)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !543, file: !33, line: 855, baseType: !116, size: 64, offset: 2240)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !543, file: !33, line: 856, baseType: !116, size: 64, offset: 2304)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !543, file: !33, line: 857, baseType: !116, size: 64, offset: 2368)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !543, file: !33, line: 858, baseType: !116, size: 64, offset: 2432)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !543, file: !33, line: 865, baseType: !413, size: 32, offset: 2496)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !543, file: !33, line: 867, baseType: !557, size: 32, offset: 2528)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !543, file: !33, line: 869, baseType: !116, size: 64, offset: 2560)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !543, file: !33, line: 869, baseType: !116, size: 64, offset: 2624)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !543, file: !33, line: 869, baseType: !116, size: 64, offset: 2688)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !543, file: !33, line: 869, baseType: !116, size: 64, offset: 2752)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !543, file: !33, line: 870, baseType: !116, size: 64, offset: 2816)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !543, file: !33, line: 870, baseType: !116, size: 64, offset: 2880)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !543, file: !33, line: 870, baseType: !116, size: 64, offset: 2944)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !543, file: !33, line: 871, baseType: !116, size: 64, offset: 3008)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !543, file: !33, line: 871, baseType: !116, size: 64, offset: 3072)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !543, file: !33, line: 871, baseType: !116, size: 64, offset: 3136)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !543, file: !33, line: 871, baseType: !116, size: 64, offset: 3200)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !543, file: !33, line: 873, baseType: !3186, size: 3328, offset: 3264)
!3186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 3328, elements: !3187)
!3187 = !{!3188}
!3188 = !DISubrange(count: 52)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !543, file: !33, line: 875, baseType: !3190, size: 1280, offset: 6592)
!3190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !912, size: 1280, elements: !662)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !543, file: !33, line: 877, baseType: !3192, size: 64, offset: 7872)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !33, line: 877, flags: DIFlagFwdDecl)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !543, file: !33, line: 880, baseType: !3195, size: 1088, offset: 7936)
!3195 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3196, line: 72, baseType: !3197)
!3196 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3196, line: 23, size: 1088, elements: !3198)
!3198 = !{!3199, !3200, !3201, !3202, !3203, !3228, !3229, !3230, !3231, !3256, !3257, !3258}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3197, file: !3196, line: 28, baseType: !148, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3197, file: !3196, line: 38, baseType: !598, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3197, file: !3196, line: 40, baseType: !116, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3197, file: !3196, line: 43, baseType: !792, size: 320, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3197, file: !3196, line: 44, baseType: !3204, size: 64, offset: 512)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3206, line: 30, size: 128, elements: !3207)
!3206 = !DIFile(filename: "./arch/x86/include/asm/mmu_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e7349a2ab0563256af671ddc4b36d96")
!3207 = !{!3208, !3226, !3227}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3205, file: !3206, line: 37, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3211, line: 16, size: 64, elements: !3212)
!3211 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3212 = !{!3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3210, file: !3211, line: 17, baseType: !142, size: 16)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3210, file: !3211, line: 18, baseType: !142, size: 16, offset: 16)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3210, file: !3211, line: 19, baseType: !142, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3210, file: !3211, line: 19, baseType: !142, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3210, file: !3211, line: 19, baseType: !142, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3210, file: !3211, line: 19, baseType: !142, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3210, file: !3211, line: 19, baseType: !142, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3210, file: !3211, line: 20, baseType: !142, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3210, file: !3211, line: 20, baseType: !142, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3210, file: !3211, line: 20, baseType: !142, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3210, file: !3211, line: 20, baseType: !142, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3210, file: !3211, line: 20, baseType: !142, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3210, file: !3211, line: 20, baseType: !142, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !3205, file: !3206, line: 38, baseType: !5, size: 32, offset: 64)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3205, file: !3206, line: 49, baseType: !213, size: 32, offset: 96)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3197, file: !3196, line: 48, baseType: !116, size: 64, offset: 576)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3197, file: !3196, line: 59, baseType: !603, size: 256, offset: 640)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3197, file: !3196, line: 60, baseType: !181, size: 64, offset: 896)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3197, file: !3196, line: 61, baseType: !3232, size: 64, offset: 960)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3234)
!3234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3235, line: 13, size: 1216, elements: !3236)
!3235 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3236 = !{!3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3234, file: !3235, line: 14, baseType: !181, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3234, file: !3235, line: 15, baseType: !116, size: 64, offset: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3234, file: !3235, line: 17, baseType: !116, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3234, file: !3235, line: 17, baseType: !116, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3234, file: !3235, line: 18, baseType: !116, size: 64, offset: 256)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3234, file: !3235, line: 18, baseType: !116, size: 64, offset: 320)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3234, file: !3235, line: 19, baseType: !1896, size: 64, offset: 384)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3234, file: !3235, line: 21, baseType: !184, size: 64, offset: 448)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3234, file: !3235, line: 23, baseType: !184, size: 64, offset: 512)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3234, file: !3235, line: 24, baseType: !184, size: 64, offset: 576)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3234, file: !3235, line: 25, baseType: !184, size: 64, offset: 640)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3234, file: !3235, line: 26, baseType: !184, size: 64, offset: 704)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3234, file: !3235, line: 27, baseType: !184, size: 64, offset: 768)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3234, file: !3235, line: 28, baseType: !184, size: 64, offset: 832)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3234, file: !3235, line: 29, baseType: !184, size: 64, offset: 896)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3234, file: !3235, line: 30, baseType: !184, size: 64, offset: 960)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3234, file: !3235, line: 31, baseType: !184, size: 64, offset: 1024)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3234, file: !3235, line: 32, baseType: !184, size: 64, offset: 1088)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3234, file: !3235, line: 33, baseType: !184, size: 64, offset: 1152)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3197, file: !3196, line: 63, baseType: !208, size: 32, offset: 1024)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3197, file: !3196, line: 69, baseType: !142, size: 16, offset: 1056)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3197, file: !3196, line: 70, baseType: !2186, size: 16, offset: 1072)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !543, file: !33, line: 882, baseType: !116, size: 64, offset: 9024)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !543, file: !33, line: 885, baseType: !557, size: 32, offset: 9088)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !543, file: !33, line: 886, baseType: !3262, size: 64, offset: 9152)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !33, line: 732, flags: DIFlagFwdDecl)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !543, file: !33, line: 901, baseType: !710, size: 64, offset: 9216)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !543, file: !33, line: 904, baseType: !575, size: 64, offset: 9280)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !543, file: !33, line: 906, baseType: !3267, size: 64, offset: 9344)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !33, line: 906, flags: DIFlagFwdDecl)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !543, file: !33, line: 930, baseType: !208, size: 32, offset: 9408)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !543, file: !33, line: 933, baseType: !208, size: 32, offset: 9440)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !543, file: !33, line: 935, baseType: !3272, size: 64, offset: 9472)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !79, line: 103, size: 64, elements: !3273)
!3273 = !{!3274}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3272, file: !79, line: 104, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3276, size: 64)
!3276 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !79, line: 101, flags: DIFlagFwdDecl)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !543, file: !33, line: 940, baseType: !596, size: 64, offset: 9536)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !543, file: !33, line: 942, baseType: !2293, size: 256, offset: 9600)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !540, file: !33, line: 986, baseType: !3280, offset: 10240)
!3280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, elements: !730)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !187, file: !188, line: 882, baseType: !539, size: 64, offset: 9792)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !187, file: !188, line: 884, baseType: !213, size: 32, offset: 9856)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !187, file: !188, line: 885, baseType: !213, size: 32, offset: 9888)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !187, file: !188, line: 886, baseType: !213, size: 32, offset: 9920)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !187, file: !188, line: 888, baseType: !213, size: 32, offset: 9952)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !187, file: !188, line: 890, baseType: !116, size: 64, offset: 9984)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !187, file: !188, line: 893, baseType: !5, size: 32, offset: 10048)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !187, file: !188, line: 896, baseType: !5, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !187, file: !188, line: 897, baseType: !5, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !187, file: !188, line: 898, baseType: !5, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !187, file: !188, line: 899, baseType: !5, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !187, file: !188, line: 919, baseType: !5, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !187, file: !188, line: 922, baseType: !5, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !187, file: !188, line: 923, baseType: !5, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !187, file: !188, line: 925, baseType: !5, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !187, file: !188, line: 939, baseType: !5, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !187, file: !188, line: 941, baseType: !5, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !187, file: !188, line: 944, baseType: !5, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !187, file: !188, line: 956, baseType: !5, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !187, file: !188, line: 962, baseType: !5, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !187, file: !188, line: 966, baseType: !5, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !187, file: !188, line: 969, baseType: !116, size: 64, offset: 10176)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !187, file: !188, line: 971, baseType: !3304, size: 448, offset: 10240)
!3304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !73, line: 25, size: 448, elements: !3305)
!3305 = !{!3306, !3307, !3312}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3304, file: !73, line: 26, baseType: !116, size: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3304, file: !73, line: 27, baseType: !3308, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!184, !3311}
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, scope: !3304, file: !73, line: 28, baseType: !3313, size: 320, offset: 128)
!3313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3304, file: !73, line: 28, size: 320, elements: !3314)
!3314 = !{!3315, !3325, !3350}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3313, file: !73, line: 37, baseType: !3316, size: 320)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3313, file: !73, line: 30, size: 320, elements: !3317)
!3317 = !{!3318, !3320, !3321, !3322, !3323, !3324}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3316, file: !73, line: 31, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3316, file: !73, line: 32, baseType: !197, size: 32, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3316, file: !73, line: 33, baseType: !197, size: 32, offset: 96)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3316, file: !73, line: 34, baseType: !197, size: 32, offset: 128)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3316, file: !73, line: 35, baseType: !148, size: 64, offset: 192)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3316, file: !73, line: 36, baseType: !3319, size: 64, offset: 256)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3313, file: !73, line: 47, baseType: !3326, size: 192)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3313, file: !73, line: 39, size: 192, elements: !3327)
!3327 = !{!3328, !3329, !3330, !3349}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3326, file: !73, line: 40, baseType: !404, size: 32)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3326, file: !73, line: 41, baseType: !72, size: 32, offset: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, scope: !3326, file: !73, line: 42, baseType: !3331, size: 64, offset: 64)
!3331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3326, file: !73, line: 42, size: 64, elements: !3332)
!3332 = !{!3333, !3341}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3331, file: !73, line: 43, baseType: !3334, size: 64)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3336, line: 7, size: 128, elements: !3337)
!3336 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3337 = !{!3338, !3340}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3335, file: !3336, line: 8, baseType: !3339, size: 64)
!3339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !406, line: 93, baseType: !276)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3335, file: !3336, line: 9, baseType: !276, size: 64, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3331, file: !73, line: 44, baseType: !3342, size: 64)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3344, line: 7, size: 64, elements: !3345)
!3344 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3345 = !{!3346, !3348}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3343, file: !3344, line: 8, baseType: !3347, size: 32)
!3347 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3344, line: 5, baseType: !784)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3343, file: !3344, line: 9, baseType: !784, size: 32, offset: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3326, file: !73, line: 46, baseType: !148, size: 64, offset: 128)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3313, file: !73, line: 55, baseType: !3351, size: 256)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3313, file: !73, line: 49, size: 256, elements: !3352)
!3352 = !{!3353, !3356, !3357, !3358, !3359}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3351, file: !73, line: 50, baseType: !3354, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !73, line: 14, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3351, file: !73, line: 51, baseType: !213, size: 32, offset: 64)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3351, file: !73, line: 52, baseType: !213, size: 32, offset: 96)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3351, file: !73, line: 53, baseType: !116, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3351, file: !73, line: 54, baseType: !116, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !187, file: !188, line: 973, baseType: !3361, size: 32, offset: 10688)
!3361 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !209, line: 27, baseType: !3362)
!3362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !406, line: 28, baseType: !213)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !187, file: !188, line: 974, baseType: !3361, size: 32, offset: 10720)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !187, file: !188, line: 978, baseType: !116, size: 64, offset: 10752)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !187, file: !188, line: 987, baseType: !186, size: 64, offset: 10816)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !187, file: !188, line: 990, baseType: !186, size: 64, offset: 10880)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !187, file: !188, line: 995, baseType: !263, size: 128, offset: 10944)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !187, file: !188, line: 996, baseType: !263, size: 128, offset: 11072)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !187, file: !188, line: 997, baseType: !186, size: 64, offset: 11200)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !187, file: !188, line: 1005, baseType: !263, size: 128, offset: 11264)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !187, file: !188, line: 1006, baseType: !263, size: 128, offset: 11392)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !187, file: !188, line: 1009, baseType: !645, size: 64, offset: 11520)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !187, file: !188, line: 1010, baseType: !3374, size: 512, offset: 11584)
!3374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 512, elements: !662)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !187, file: !188, line: 1011, baseType: !263, size: 128, offset: 12096)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !187, file: !188, line: 1012, baseType: !263, size: 128, offset: 12224)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !187, file: !188, line: 1014, baseType: !2042, size: 64, offset: 12352)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !187, file: !188, line: 1017, baseType: !2179, size: 64, offset: 12416)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !187, file: !188, line: 1020, baseType: !2179, size: 64, offset: 12480)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !187, file: !188, line: 1023, baseType: !181, size: 64, offset: 12544)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !187, file: !188, line: 1025, baseType: !148, size: 64, offset: 12608)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !187, file: !188, line: 1026, baseType: !148, size: 64, offset: 12672)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !187, file: !188, line: 1031, baseType: !148, size: 64, offset: 12736)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !187, file: !188, line: 1032, baseType: !3385, size: 192, offset: 12800)
!3385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !188, line: 324, size: 192, elements: !3386)
!3386 = !{!3387, !3388, !3389}
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3385, file: !188, line: 326, baseType: !148, size: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3385, file: !188, line: 327, baseType: !148, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3385, file: !188, line: 328, baseType: !356, size: 32, offset: 128)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !187, file: !188, line: 1041, baseType: !116, size: 64, offset: 12992)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !187, file: !188, line: 1042, baseType: !116, size: 64, offset: 13056)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !187, file: !188, line: 1045, baseType: !148, size: 64, offset: 13120)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !187, file: !188, line: 1048, baseType: !148, size: 64, offset: 13184)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !187, file: !188, line: 1051, baseType: !116, size: 64, offset: 13248)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !187, file: !188, line: 1052, baseType: !116, size: 64, offset: 13312)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !187, file: !188, line: 1055, baseType: !3397, size: 640, offset: 13376)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3398, line: 132, size: 640, elements: !3399)
!3398 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3399 = !{!3400, !3406, !3407}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3397, file: !3398, line: 133, baseType: !3401, size: 576)
!3401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3402, size: 576, elements: !641)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3398, line: 117, size: 192, elements: !3403)
!3403 = !{!3404, !3405}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3402, file: !3398, line: 118, baseType: !148, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3402, file: !3398, line: 119, baseType: !419, size: 128, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3397, file: !3398, line: 134, baseType: !5, size: 32, offset: 576)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3397, file: !3398, line: 135, baseType: !5, size: 32, offset: 608)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !187, file: !188, line: 1058, baseType: !3409, size: 448, offset: 14016)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3398, line: 144, size: 448, elements: !3410)
!3410 = !{!3411, !3412, !3413}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3409, file: !3398, line: 145, baseType: !583, size: 128, align: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3409, file: !3398, line: 146, baseType: !603, size: 256, offset: 128)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3409, file: !3398, line: 147, baseType: !5, size: 32, offset: 384)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !187, file: !188, line: 1064, baseType: !743, size: 64, offset: 14464)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !187, file: !188, line: 1067, baseType: !743, size: 64, offset: 14528)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !187, file: !188, line: 1070, baseType: !743, size: 64, offset: 14592)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !187, file: !188, line: 1074, baseType: !776, size: 64, offset: 14656)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !187, file: !188, line: 1084, baseType: !3419, size: 128, offset: 14720)
!3419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 128, elements: !2793)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !187, file: !188, line: 1086, baseType: !3421, size: 64, offset: 14848)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !188, line: 55, flags: DIFlagFwdDecl)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !187, file: !188, line: 1089, baseType: !3424, size: 64, offset: 14912)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3425, line: 12, size: 64, elements: !3426)
!3425 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3426 = !{!3427}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3424, file: !3425, line: 13, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3425, line: 8, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !187, file: !188, line: 1090, baseType: !3431, size: 128, offset: 14976)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3432, line: 13, size: 128, elements: !3433)
!3432 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3433 = !{!3434}
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3431, file: !3432, line: 14, baseType: !263, size: 128)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !187, file: !188, line: 1097, baseType: !3436, size: 64, offset: 15104)
!3436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3437, size: 64)
!3437 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !188, line: 50, flags: DIFlagFwdDecl)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !187, file: !188, line: 1100, baseType: !3439, size: 64, offset: 15168)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !188, line: 1100, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !187, file: !188, line: 1103, baseType: !3442, size: 64, offset: 15232)
!3442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3443, size: 64)
!3443 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !188, line: 53, flags: DIFlagFwdDecl)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !187, file: !188, line: 1107, baseType: !3445, size: 64, offset: 15296)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !3447, line: 31, size: 576, elements: !3448)
!3447 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!3448 = !{!3449, !3450, !3453, !3456, !3459, !3460, !3463, !3466, !3467}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3446, file: !3447, line: 32, baseType: !203, size: 32)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !3446, file: !3447, line: 33, baseType: !3451, size: 64, offset: 64)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !3447, line: 9, flags: DIFlagFwdDecl)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !3446, file: !3447, line: 34, baseType: !3454, size: 64, offset: 128)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !3447, line: 10, flags: DIFlagFwdDecl)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !3446, file: !3447, line: 35, baseType: !3457, size: 64, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !3447, line: 8, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !3446, file: !3447, line: 36, baseType: !679, size: 64, offset: 256)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !3446, file: !3447, line: 37, baseType: !3461, size: 64, offset: 320)
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3462 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !778, line: 34, flags: DIFlagFwdDecl)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !3446, file: !3447, line: 38, baseType: !3464, size: 64, offset: 384)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !3447, line: 38, flags: DIFlagFwdDecl)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !3446, file: !3447, line: 39, baseType: !3464, size: 64, offset: 448)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !3446, file: !3447, line: 40, baseType: !3468, size: 64, offset: 512)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !3447, line: 12, flags: DIFlagFwdDecl)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !187, file: !188, line: 1110, baseType: !3471, size: 64, offset: 15360)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3473, line: 93, size: 8768, elements: !3474)
!3473 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3522, !3531, !3532, !3534, !3535, !3536, !3539, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3577, !3578, !3585, !3595, !3598, !3599, !3602, !3603, !3604, !3605, !3606, !3607}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3472, file: !3473, line: 94, baseType: !203, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3472, file: !3473, line: 95, baseType: !208, size: 32, offset: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3472, file: !3473, line: 96, baseType: !213, size: 32, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3472, file: !3473, line: 97, baseType: !213, size: 32, offset: 96)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3472, file: !3473, line: 98, baseType: !263, size: 128, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3472, file: !3473, line: 100, baseType: !666, size: 192, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3472, file: !3473, line: 103, baseType: !186, size: 64, offset: 448)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3472, file: !3473, line: 106, baseType: !3483, size: 192, offset: 512)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !716, line: 32, size: 192, elements: !3484)
!3484 = !{!3485, !3486}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3483, file: !716, line: 33, baseType: !263, size: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3483, file: !716, line: 34, baseType: !3487, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3488, line: 25, baseType: !3489)
!3488 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3488, line: 23, size: 64, elements: !3490)
!3490 = !{!3491}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3489, file: !3488, line: 24, baseType: !490, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3472, file: !3473, line: 109, baseType: !653, size: 64, offset: 704)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3472, file: !3473, line: 112, baseType: !213, size: 32, offset: 768)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3472, file: !3473, line: 114, baseType: !213, size: 32, offset: 800)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3472, file: !3473, line: 115, baseType: !186, size: 64, offset: 832)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3472, file: !3473, line: 118, baseType: !213, size: 32, offset: 896)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3472, file: !3473, line: 119, baseType: !5, size: 32, offset: 928)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3472, file: !3473, line: 121, baseType: !3499, size: 64, offset: 960)
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3500, size: 64)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3473, line: 80, size: 448, elements: !3501)
!3501 = !{!3502, !3503, !3509}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3500, file: !3473, line: 81, baseType: !208, size: 32)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3500, file: !3473, line: 82, baseType: !3504, size: 128, offset: 64)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3473, line: 75, size: 128, elements: !3505)
!3505 = !{!3506, !3507}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3504, file: !3473, line: 76, baseType: !186, size: 64)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3504, file: !3473, line: 77, baseType: !3508, size: 64, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3500, file: !3473, line: 83, baseType: !1465, size: 256, offset: 192)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3472, file: !3473, line: 132, baseType: !5, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3472, file: !3473, line: 133, baseType: !5, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3472, file: !3473, line: 138, baseType: !5, size: 32, offset: 1056)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3472, file: !3473, line: 139, baseType: !263, size: 128, offset: 1088)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3472, file: !3473, line: 142, baseType: !331, size: 512, offset: 1216)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3472, file: !3473, line: 143, baseType: !339, size: 64, offset: 1728)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3472, file: !3473, line: 150, baseType: !3517, size: 256, offset: 1792)
!3517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3518, size: 256, elements: !2169)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3473, line: 38, size: 128, elements: !3519)
!3519 = !{!3520, !3521}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3518, file: !3473, line: 39, baseType: !148, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3518, file: !3473, line: 40, baseType: !148, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3472, file: !3473, line: 156, baseType: !3523, size: 192, offset: 2048)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3473, line: 66, size: 192, elements: !3524)
!3524 = !{!3525}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3523, file: !3473, line: 67, baseType: !3526, size: 192)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3473, line: 47, size: 192, elements: !3527)
!3527 = !{!3528, !3529, !3530}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3526, file: !3473, line: 48, baseType: !598, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3526, file: !3473, line: 49, baseType: !598, size: 64, offset: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3526, file: !3473, line: 50, baseType: !598, size: 64, offset: 128)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3472, file: !3473, line: 160, baseType: !3397, size: 640, offset: 2240)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3472, file: !3473, line: 163, baseType: !3533, size: 256, offset: 2880)
!3533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !645, size: 256, elements: !662)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3472, file: !3473, line: 169, baseType: !645, size: 64, offset: 3136)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3472, file: !3473, line: 172, baseType: !213, size: 32, offset: 3200)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3472, file: !3473, line: 174, baseType: !3537, size: 64, offset: 3264)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3473, line: 174, flags: DIFlagFwdDecl)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3472, file: !3473, line: 185, baseType: !3540, size: 64, offset: 3328)
!3540 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !409, line: 860, baseType: !3541)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !409, line: 853, size: 64, elements: !3542)
!3542 = !{!3543, !3544}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3541, file: !409, line: 858, baseType: !976, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3541, file: !409, line: 859, baseType: !557, size: 32, offset: 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3472, file: !3473, line: 186, baseType: !148, size: 64, offset: 3392)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3472, file: !3473, line: 186, baseType: !148, size: 64, offset: 3456)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3472, file: !3473, line: 186, baseType: !148, size: 64, offset: 3520)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3472, file: !3473, line: 186, baseType: !148, size: 64, offset: 3584)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3472, file: !3473, line: 187, baseType: !148, size: 64, offset: 3648)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3472, file: !3473, line: 188, baseType: !148, size: 64, offset: 3712)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3472, file: !3473, line: 189, baseType: !3385, size: 192, offset: 3776)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3472, file: !3473, line: 190, baseType: !116, size: 64, offset: 3968)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3472, file: !3473, line: 190, baseType: !116, size: 64, offset: 4032)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3472, file: !3473, line: 190, baseType: !116, size: 64, offset: 4096)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3472, file: !3473, line: 190, baseType: !116, size: 64, offset: 4160)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3472, file: !3473, line: 191, baseType: !116, size: 64, offset: 4224)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3472, file: !3473, line: 191, baseType: !116, size: 64, offset: 4288)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3472, file: !3473, line: 191, baseType: !116, size: 64, offset: 4352)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3472, file: !3473, line: 191, baseType: !116, size: 64, offset: 4416)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3472, file: !3473, line: 192, baseType: !116, size: 64, offset: 4480)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3472, file: !3473, line: 192, baseType: !116, size: 64, offset: 4544)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3472, file: !3473, line: 192, baseType: !116, size: 64, offset: 4608)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3472, file: !3473, line: 192, baseType: !116, size: 64, offset: 4672)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3472, file: !3473, line: 193, baseType: !116, size: 64, offset: 4736)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3472, file: !3473, line: 193, baseType: !116, size: 64, offset: 4800)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3472, file: !3473, line: 194, baseType: !3567, size: 448, offset: 4864)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3568, line: 12, size: 448, elements: !3569)
!3568 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3567, file: !3568, line: 15, baseType: !148, size: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3567, file: !3568, line: 17, baseType: !148, size: 64, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3567, file: !3568, line: 19, baseType: !148, size: 64, offset: 128)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3567, file: !3568, line: 21, baseType: !148, size: 64, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3567, file: !3568, line: 29, baseType: !148, size: 64, offset: 256)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3567, file: !3568, line: 35, baseType: !148, size: 64, offset: 320)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3567, file: !3568, line: 44, baseType: !148, size: 64, offset: 384)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3472, file: !3473, line: 202, baseType: !150, size: 64, offset: 5312)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3472, file: !3473, line: 213, baseType: !3579, size: 2048, offset: 5376)
!3579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3580, size: 2048, elements: !2793)
!3580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3581, line: 43, size: 128, elements: !3582)
!3581 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3582 = !{!3583, !3584}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3580, file: !3581, line: 44, baseType: !1163, size: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3580, file: !3581, line: 45, baseType: !1163, size: 64, offset: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3472, file: !3473, line: 216, baseType: !3586, size: 448, offset: 7424)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3473, line: 30, size: 448, elements: !3587)
!3587 = !{!3588, !3589, !3590, !3591, !3592, !3593, !3594}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3586, file: !3473, line: 31, baseType: !213, size: 32)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3586, file: !3473, line: 32, baseType: !184, size: 64, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3586, file: !3473, line: 33, baseType: !116, size: 64, offset: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3586, file: !3473, line: 34, baseType: !148, size: 64, offset: 192)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3586, file: !3473, line: 34, baseType: !148, size: 64, offset: 256)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3586, file: !3473, line: 35, baseType: !116, size: 64, offset: 320)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3586, file: !3473, line: 35, baseType: !116, size: 64, offset: 384)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3472, file: !3473, line: 219, baseType: !3596, size: 64, offset: 7872)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3473, line: 219, flags: DIFlagFwdDecl)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3472, file: !3473, line: 222, baseType: !5, size: 32, offset: 7936)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3472, file: !3473, line: 223, baseType: !3600, size: 64, offset: 8000)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3473, line: 223, flags: DIFlagFwdDecl)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3472, file: !3473, line: 230, baseType: !851, size: 8, offset: 8064)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3472, file: !3473, line: 231, baseType: !820, size: 16, offset: 8080)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3472, file: !3473, line: 232, baseType: !820, size: 16, offset: 8096)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3472, file: !3473, line: 234, baseType: !539, size: 64, offset: 8128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3472, file: !3473, line: 237, baseType: !603, size: 256, offset: 8192)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3472, file: !3473, line: 243, baseType: !792, size: 320, offset: 8448)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !187, file: !188, line: 1111, baseType: !3609, size: 64, offset: 15424)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3473, line: 20, size: 16640, elements: !3611)
!3611 = !{!3612, !3613, !3614, !3615}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3610, file: !3473, line: 21, baseType: !557, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3610, file: !3473, line: 22, baseType: !203, size: 32, offset: 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3610, file: !3473, line: 23, baseType: !666, size: 192, offset: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3610, file: !3473, line: 24, baseType: !3616, size: 16384, offset: 256)
!3616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3617, size: 16384, elements: !1299)
!3617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !716, line: 51, size: 256, elements: !3618)
!3618 = !{!3619}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3617, file: !716, line: 52, baseType: !3620, size: 256)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !716, line: 37, size: 256, elements: !3621)
!3621 = !{!3622, !3629, !3630, !3634}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3620, file: !716, line: 39, baseType: !3623, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3624, line: 83, baseType: !3625)
!3624 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3624, line: 82, baseType: !3627)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{null, !213}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3620, file: !716, line: 40, baseType: !116, size: 64, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3620, file: !716, line: 46, baseType: !3631, size: 64, offset: 128)
!3631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3624, line: 86, baseType: !3632)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3624, line: 85, baseType: !2401)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3620, file: !716, line: 48, baseType: !3487, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !187, file: !188, line: 1112, baseType: !3487, size: 64, offset: 15488)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !187, file: !188, line: 1113, baseType: !3487, size: 64, offset: 15552)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !187, file: !188, line: 1115, baseType: !3487, size: 64, offset: 15616)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !187, file: !188, line: 1116, baseType: !3483, size: 192, offset: 15680)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !187, file: !188, line: 1117, baseType: !116, size: 64, offset: 15872)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !187, file: !188, line: 1118, baseType: !1161, size: 64, offset: 15936)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !187, file: !188, line: 1119, baseType: !5, size: 32, offset: 16000)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !187, file: !188, line: 1121, baseType: !586, size: 64, offset: 16064)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !187, file: !188, line: 1125, baseType: !3644, size: 64, offset: 16128)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !188, line: 43, flags: DIFlagFwdDecl)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !187, file: !188, line: 1127, baseType: !734, size: 32, offset: 16192)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !187, file: !188, line: 1128, baseType: !5, size: 32, offset: 16224)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !187, file: !188, line: 1130, baseType: !3649, size: 128, offset: 16256)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3650, line: 37, size: 128, elements: !3651)
!3650 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3651 = !{!3652, !3653, !3654}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3649, file: !3650, line: 38, baseType: !213, size: 32)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3649, file: !3650, line: 39, baseType: !208, size: 32, offset: 32)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3649, file: !3650, line: 40, baseType: !3655, size: 64, offset: 64)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3650, line: 24, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !187, file: !188, line: 1131, baseType: !3658, size: 256, offset: 16384)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3659, line: 12, size: 256, elements: !3660)
!3659 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3660 = !{!3661, !3662, !3663, !3664}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3658, file: !3659, line: 13, baseType: !864, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3658, file: !3659, line: 14, baseType: !116, size: 64, offset: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3658, file: !3659, line: 15, baseType: !116, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3658, file: !3659, line: 16, baseType: !851, size: 8, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !187, file: !188, line: 1134, baseType: !148, size: 64, offset: 16640)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !187, file: !188, line: 1135, baseType: !148, size: 64, offset: 16704)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !187, file: !188, line: 1138, baseType: !557, size: 32, offset: 16768)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !187, file: !188, line: 1141, baseType: !356, size: 32, offset: 16800)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !187, file: !188, line: 1143, baseType: !3670, size: 64, offset: 16832)
!3670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !188, line: 735, size: 64, elements: !3671)
!3671 = !{!3672}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3670, file: !188, line: 736, baseType: !3673, size: 64)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !187, file: !188, line: 1147, baseType: !422, size: 128, offset: 16896)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !187, file: !188, line: 1149, baseType: !186, size: 64, offset: 17024)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !187, file: !188, line: 1151, baseType: !3677, size: 64, offset: 17088)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !188, line: 1151, flags: DIFlagFwdDecl)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !187, file: !188, line: 1188, baseType: !181, size: 64, offset: 17152)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !187, file: !188, line: 1191, baseType: !3681, size: 64, offset: 17216)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !188, line: 44, flags: DIFlagFwdDecl)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !187, file: !188, line: 1194, baseType: !3684, size: 64, offset: 17280)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !188, line: 45, flags: DIFlagFwdDecl)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !187, file: !188, line: 1197, baseType: !3687, size: 64, offset: 17344)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !188, line: 61, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !187, file: !188, line: 1199, baseType: !3690, size: 64, offset: 17408)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3692, line: 99, size: 128, elements: !3693)
!3692 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3693 = !{!3694, !3695, !3696}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3691, file: !3692, line: 100, baseType: !596, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3691, file: !3692, line: 101, baseType: !208, size: 32, offset: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3691, file: !3692, line: 103, baseType: !146, size: 16, offset: 96)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !187, file: !188, line: 1202, baseType: !3698, size: 64, offset: 17472)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !188, line: 48, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !187, file: !188, line: 1205, baseType: !116, size: 64, offset: 17536)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !187, file: !188, line: 1206, baseType: !3702, size: 64, offset: 17600)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !716, line: 14, baseType: !3704)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !716, line: 12, size: 384, elements: !3705)
!3705 = !{!3706}
!3706 = !DIDerivedType(tag: DW_TAG_member, scope: !3704, file: !716, line: 13, baseType: !3707, size: 384)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3704, file: !716, line: 13, size: 384, elements: !3708)
!3708 = !{!3709, !3710, !3711, !3712}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3707, file: !716, line: 13, baseType: !213, size: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3707, file: !716, line: 13, baseType: !213, size: 32, offset: 32)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3707, file: !716, line: 13, baseType: !213, size: 32, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3707, file: !716, line: 13, baseType: !3713, size: 256, offset: 128)
!3713 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3714, line: 37, size: 256, elements: !3715)
!3714 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3715 = !{!3716, !3721, !3734, !3740, !3749, !3776, !3781}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3713, file: !3714, line: 42, baseType: !3717, size: 64)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3713, file: !3714, line: 39, size: 64, elements: !3718)
!3718 = !{!3719, !3720}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3717, file: !3714, line: 40, baseType: !3362, size: 32)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3717, file: !3714, line: 41, baseType: !739, size: 32, offset: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3713, file: !3714, line: 50, baseType: !3722, size: 192)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3713, file: !3714, line: 45, size: 192, elements: !3723)
!3723 = !{!3724, !3726, !3727, !3733}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3722, file: !3714, line: 46, baseType: !3725, size: 32)
!3725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !406, line: 95, baseType: !213)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3722, file: !3714, line: 47, baseType: !213, size: 32, offset: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3722, file: !3714, line: 48, baseType: !3728, size: 64, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3714, line: 11, baseType: !3729)
!3729 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3714, line: 8, size: 64, elements: !3730)
!3730 = !{!3731, !3732}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3729, file: !3714, line: 9, baseType: !213, size: 32)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3729, file: !3714, line: 10, baseType: !181, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3722, file: !3714, line: 49, baseType: !213, size: 32, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3713, file: !3714, line: 57, baseType: !3735, size: 128)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3713, file: !3714, line: 53, size: 128, elements: !3736)
!3736 = !{!3737, !3738, !3739}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3735, file: !3714, line: 54, baseType: !3362, size: 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3735, file: !3714, line: 55, baseType: !739, size: 32, offset: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3735, file: !3714, line: 56, baseType: !3728, size: 64, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3713, file: !3714, line: 66, baseType: !3741, size: 256)
!3741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3713, file: !3714, line: 60, size: 256, elements: !3742)
!3742 = !{!3743, !3744, !3745, !3746, !3748}
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3741, file: !3714, line: 61, baseType: !3362, size: 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3741, file: !3714, line: 62, baseType: !739, size: 32, offset: 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3741, file: !3714, line: 63, baseType: !213, size: 32, offset: 64)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3741, file: !3714, line: 64, baseType: !3747, size: 64, offset: 128)
!3747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !406, line: 94, baseType: !1160)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3741, file: !3714, line: 65, baseType: !3747, size: 64, offset: 192)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3713, file: !3714, line: 105, baseType: !3750, size: 256)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3713, file: !3714, line: 69, size: 256, elements: !3751)
!3751 = !{!3752, !3753}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3750, file: !3714, line: 70, baseType: !181, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, scope: !3750, file: !3714, line: 79, baseType: !3754, size: 192, offset: 64)
!3754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3750, file: !3714, line: 79, size: 192, elements: !3755)
!3755 = !{!3756, !3757, !3758, !3765, !3770}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3754, file: !3714, line: 81, baseType: !213, size: 32)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3754, file: !3714, line: 86, baseType: !820, size: 16)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3754, file: !3714, line: 92, baseType: !3759, size: 192)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3754, file: !3714, line: 88, size: 192, elements: !3760)
!3760 = !{!3761, !3763, !3764}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3759, file: !3714, line: 89, baseType: !3762, size: 64)
!3762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 64, elements: !400)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3759, file: !3714, line: 90, baseType: !181, size: 64, offset: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3759, file: !3714, line: 91, baseType: !181, size: 64, offset: 128)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3754, file: !3714, line: 97, baseType: !3766, size: 96)
!3766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3754, file: !3714, line: 94, size: 96, elements: !3767)
!3767 = !{!3768, !3769}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3766, file: !3714, line: 95, baseType: !3762, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3766, file: !3714, line: 96, baseType: !198, size: 32, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3754, file: !3714, line: 103, baseType: !3771, size: 128)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3754, file: !3714, line: 99, size: 128, elements: !3772)
!3772 = !{!3773, !3774, !3775}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3771, file: !3714, line: 100, baseType: !116, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3771, file: !3714, line: 101, baseType: !198, size: 32, offset: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3771, file: !3714, line: 102, baseType: !198, size: 32, offset: 96)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3713, file: !3714, line: 111, baseType: !3777, size: 128)
!3777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3713, file: !3714, line: 108, size: 128, elements: !3778)
!3778 = !{!3779, !3780}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3777, file: !3714, line: 109, baseType: !184, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3777, file: !3714, line: 110, baseType: !213, size: 32, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3713, file: !3714, line: 118, baseType: !3782, size: 128)
!3782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3713, file: !3714, line: 114, size: 128, elements: !3783)
!3783 = !{!3784, !3785, !3786}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3782, file: !3714, line: 115, baseType: !181, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3782, file: !3714, line: 116, baseType: !213, size: 32, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3782, file: !3714, line: 117, baseType: !5, size: 32, offset: 96)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !187, file: !188, line: 1208, baseType: !3567, size: 448, offset: 17664)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !187, file: !188, line: 1215, baseType: !148, size: 64, offset: 18112)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !187, file: !188, line: 1217, baseType: !148, size: 64, offset: 18176)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !187, file: !188, line: 1219, baseType: !148, size: 64, offset: 18240)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !187, file: !188, line: 1223, baseType: !3792, size: 64, offset: 18304)
!3792 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3793, line: 99, baseType: !3794)
!3793 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3793, line: 99, size: 64, elements: !3795)
!3795 = !{!3796}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3794, file: !3793, line: 99, baseType: !490, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !187, file: !188, line: 1225, baseType: !976, size: 32, offset: 18368)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !187, file: !188, line: 1226, baseType: !213, size: 32, offset: 18400)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !187, file: !188, line: 1227, baseType: !213, size: 32, offset: 18432)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !187, file: !188, line: 1231, baseType: !3801, size: 64, offset: 18496)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !188, line: 1231, flags: DIFlagFwdDecl)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !187, file: !188, line: 1233, baseType: !263, size: 128, offset: 18560)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !187, file: !188, line: 1240, baseType: !3805, size: 64, offset: 18688)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !188, line: 62, flags: DIFlagFwdDecl)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !187, file: !188, line: 1242, baseType: !3808, size: 64, offset: 18752)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !188, line: 1242, flags: DIFlagFwdDecl)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !187, file: !188, line: 1244, baseType: !263, size: 128, offset: 18816)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !187, file: !188, line: 1245, baseType: !3812, size: 64, offset: 18944)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !188, line: 51, flags: DIFlagFwdDecl)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !187, file: !188, line: 1246, baseType: !603, size: 256, offset: 19008)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !187, file: !188, line: 1247, baseType: !5, size: 32, offset: 19264)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !187, file: !188, line: 1250, baseType: !3817, size: 64, offset: 19328)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !188, line: 57, flags: DIFlagFwdDecl)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !187, file: !188, line: 1251, baseType: !603, size: 256, offset: 19392)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !187, file: !188, line: 1252, baseType: !263, size: 128, offset: 19648)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !187, file: !188, line: 1259, baseType: !1593, size: 64, offset: 19776)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !187, file: !188, line: 1260, baseType: !820, size: 16, offset: 19840)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !187, file: !188, line: 1261, baseType: !820, size: 16, offset: 19856)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !187, file: !188, line: 1314, baseType: !3825, size: 64, offset: 19904)
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3826, size: 64)
!3826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3827, line: 62, size: 256, align: 256, elements: !3828)
!3827 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3828 = !{!3829, !3830, !3831, !3832, !3833, !3834, !3835}
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3826, file: !3827, line: 75, baseType: !198, size: 32)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3826, file: !3827, line: 90, baseType: !198, size: 32, offset: 32)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3826, file: !3827, line: 112, baseType: !149, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3826, file: !3827, line: 132, baseType: !198, size: 32, offset: 128)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3826, file: !3827, line: 140, baseType: !198, size: 32, offset: 160)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3826, file: !3827, line: 149, baseType: !198, size: 32, offset: 192)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3826, file: !3827, line: 154, baseType: !3836, offset: 224)
!3836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, elements: !730)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !187, file: !188, line: 1315, baseType: !197, size: 32, offset: 19968)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !187, file: !188, line: 1316, baseType: !197, size: 32, offset: 20000)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !187, file: !188, line: 1321, baseType: !116, size: 64, offset: 20032)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !187, file: !188, line: 1325, baseType: !213, size: 32, offset: 20096)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !187, file: !188, line: 1326, baseType: !213, size: 32, offset: 20128)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !187, file: !188, line: 1327, baseType: !213, size: 32, offset: 20160)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !187, file: !188, line: 1328, baseType: !213, size: 32, offset: 20192)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !187, file: !188, line: 1329, baseType: !583, size: 128, align: 64, offset: 20224)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !187, file: !188, line: 1332, baseType: !3846, size: 128, offset: 20352)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3847, line: 51, size: 128, elements: !3848)
!3847 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3848 = !{!3849, !3854, !3855}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3846, file: !3847, line: 60, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3851, line: 7, size: 64, elements: !3852)
!3851 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3852 = !{!3853}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3850, file: !3851, line: 12, baseType: !487, size: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3846, file: !3847, line: 63, baseType: !851, size: 8, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3846, file: !3847, line: 70, baseType: !851, size: 8, offset: 72)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !187, file: !188, line: 1335, baseType: !3031, size: 64, offset: 20480)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !187, file: !188, line: 1337, baseType: !3858, size: 128, offset: 20544)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3847, line: 39, size: 128, elements: !3859)
!3859 = !{!3860, !3861, !3862}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3858, file: !3847, line: 40, baseType: !1380, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3858, file: !3847, line: 42, baseType: !198, size: 32, offset: 64)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3858, file: !3847, line: 43, baseType: !198, size: 32, offset: 96)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !187, file: !188, line: 1340, baseType: !3864, size: 64, offset: 20672)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !188, line: 69, flags: DIFlagFwdDecl)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !187, file: !188, line: 1351, baseType: !213, size: 32, offset: 20736)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !187, file: !188, line: 1352, baseType: !213, size: 32, offset: 20768)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !187, file: !188, line: 1354, baseType: !116, size: 64, offset: 20800)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !187, file: !188, line: 1364, baseType: !148, size: 64, offset: 20864)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !187, file: !188, line: 1365, baseType: !148, size: 64, offset: 20928)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !187, file: !188, line: 1412, baseType: !116, size: 64, offset: 20992)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !187, file: !188, line: 1453, baseType: !3873, size: 64, offset: 21056)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !188, line: 1453, flags: DIFlagFwdDecl)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !187, file: !188, line: 1457, baseType: !3876, size: 64, offset: 21120)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !79, line: 61, size: 576, elements: !3878)
!3878 = !{!3879, !3880, !3899, !3902, !3903, !3936, !3946}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3877, file: !79, line: 62, baseType: !78, size: 32)
!3880 = !DIDerivedType(tag: DW_TAG_member, scope: !3877, file: !79, line: 64, baseType: !3881, size: 192, offset: 64)
!3881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3877, file: !79, line: 64, size: 192, elements: !3882)
!3882 = !{!3883, !3894}
!3883 = !DIDerivedType(tag: DW_TAG_member, scope: !3881, file: !79, line: 65, baseType: !3884, size: 192)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3881, file: !79, line: 65, size: 192, elements: !3885)
!3885 = !{!3886, !3893}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3884, file: !79, line: 66, baseType: !3887, size: 128)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3888, line: 50, size: 128, elements: !3889)
!3888 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3889 = !{!3890, !3891, !3892}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3887, file: !3888, line: 52, baseType: !116, size: 64)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3887, file: !3888, line: 54, baseType: !5, size: 32, offset: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3887, file: !3888, line: 55, baseType: !5, size: 32, offset: 96)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3884, file: !79, line: 67, baseType: !116, size: 64, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_member, scope: !3881, file: !79, line: 70, baseType: !3895, size: 192)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3881, file: !79, line: 70, size: 192, elements: !3896)
!3896 = !{!3897, !3898}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3895, file: !79, line: 71, baseType: !583, size: 128, align: 64)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3895, file: !79, line: 72, baseType: !116, size: 64, offset: 128)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3877, file: !79, line: 76, baseType: !3900, size: 64, offset: 256)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !79, line: 76, flags: DIFlagFwdDecl)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3877, file: !79, line: 77, baseType: !116, size: 64, offset: 320)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3877, file: !79, line: 79, baseType: !3904, size: 64, offset: 384)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3888, line: 25, size: 256, elements: !3906)
!3906 = !{!3907, !3913, !3917}
!3907 = !DIDerivedType(tag: DW_TAG_member, scope: !3905, file: !3888, line: 26, baseType: !3908, size: 128)
!3908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3905, file: !3888, line: 26, size: 128, elements: !3909)
!3909 = !{!3910, !3912}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3908, file: !3888, line: 27, baseType: !3911, size: 128)
!3911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 128, elements: !2793)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3908, file: !3888, line: 28, baseType: !3911, size: 128)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3905, file: !3888, line: 31, baseType: !3914, size: 64, offset: 128)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3916)
!3916 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3888, line: 23, flags: DIFlagFwdDecl)
!3917 = !DIDerivedType(tag: DW_TAG_member, scope: !3905, file: !3888, line: 33, baseType: !3918, size: 64, offset: 192)
!3918 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3905, file: !3888, line: 33, size: 64, elements: !3919)
!3919 = !{!3920, !3926, !3931}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3918, file: !3888, line: 38, baseType: !3921, size: 64)
!3921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3918, file: !3888, line: 34, size: 64, elements: !3922)
!3922 = !{!3923, !3924, !3925}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3921, file: !3888, line: 35, baseType: !784, size: 32)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3921, file: !3888, line: 36, baseType: !373, size: 8, offset: 32)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3921, file: !3888, line: 37, baseType: !373, size: 8, offset: 40)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3918, file: !3888, line: 42, baseType: !3927, size: 16)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3918, file: !3888, line: 39, size: 16, elements: !3928)
!3928 = !{!3929, !3930}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3927, file: !3888, line: 40, baseType: !373, size: 8)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3927, file: !3888, line: 41, baseType: !373, size: 8, offset: 8)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3918, file: !3888, line: 46, baseType: !3932, size: 16)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3918, file: !3888, line: 43, size: 16, elements: !3933)
!3933 = !{!3934, !3935}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3932, file: !3888, line: 44, baseType: !373, size: 8)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3932, file: !3888, line: 45, baseType: !373, size: 8, offset: 8)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3877, file: !79, line: 81, baseType: !3937, size: 64, offset: 448)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !79, line: 85, size: 384, elements: !3939)
!3939 = !{!3940, !3941, !3942, !3943, !3944, !3945}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3938, file: !79, line: 86, baseType: !3900, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3938, file: !79, line: 87, baseType: !116, size: 64, offset: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3938, file: !79, line: 88, baseType: !116, size: 64, offset: 128)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3938, file: !79, line: 89, baseType: !116, size: 64, offset: 192)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3938, file: !79, line: 90, baseType: !851, size: 8, offset: 256)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3938, file: !79, line: 92, baseType: !3937, size: 64, offset: 320)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3877, file: !79, line: 82, baseType: !5, size: 32, offset: 512)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !187, file: !188, line: 1463, baseType: !3948, offset: 21184)
!3948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !188, line: 739, elements: !568)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !187, file: !188, line: 1470, baseType: !583, size: 128, align: 64, offset: 21184)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !187, file: !188, line: 1471, baseType: !203, size: 32, offset: 21312)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !187, file: !188, line: 1472, baseType: !213, size: 32, offset: 21344)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !187, file: !188, line: 1474, baseType: !186, size: 64, offset: 21376)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !187, file: !188, line: 1475, baseType: !2281, size: 320, offset: 21440)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !187, file: !188, line: 1478, baseType: !3955, size: 64, offset: 21760)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !188, line: 1478, flags: DIFlagFwdDecl)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !187, file: !188, line: 1482, baseType: !203, size: 32, offset: 21824)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !187, file: !188, line: 1489, baseType: !181, size: 64, offset: 21888)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !187, file: !188, line: 1504, baseType: !181, size: 64, offset: 21952)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !187, file: !188, line: 1505, baseType: !149, size: 64, offset: 22016)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !187, file: !188, line: 1506, baseType: !148, size: 64, offset: 22080)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !187, file: !188, line: 1507, baseType: !149, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !187, file: !188, line: 1508, baseType: !149, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !187, file: !188, line: 1509, baseType: !149, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !187, file: !188, line: 1510, baseType: !583, size: 128, align: 64, offset: 22208)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !187, file: !188, line: 1511, baseType: !213, size: 32, offset: 22336)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !187, file: !188, line: 1515, baseType: !3968, size: 64, offset: 22400)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !223, line: 56, size: 64, elements: !3969)
!3969 = !{!3970}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3968, file: !223, line: 57, baseType: !226, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !187, file: !188, line: 1518, baseType: !3968, size: 64, offset: 22464)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !187, file: !188, line: 1528, baseType: !583, size: 128, align: 64, offset: 22528)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !187, file: !188, line: 1552, baseType: !3974, size: 35328, offset: 23040)
!3974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3975, line: 430, size: 35328, elements: !3976)
!3975 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3976 = !{!3977, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3990, !3991, !3992, !3993, !3994, !3995, !3998, !3999, !4000, !4001}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3974, file: !3975, line: 432, baseType: !3978, size: 192)
!3978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3210, size: 192, elements: !641)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3974, file: !3975, line: 436, baseType: !116, size: 64, offset: 192)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3974, file: !3975, line: 440, baseType: !146, size: 16, offset: 256)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3974, file: !3975, line: 441, baseType: !146, size: 16, offset: 272)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3974, file: !3975, line: 442, baseType: !146, size: 16, offset: 288)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3974, file: !3975, line: 443, baseType: !146, size: 16, offset: 304)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3974, file: !3975, line: 447, baseType: !116, size: 64, offset: 320)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3974, file: !3975, line: 448, baseType: !116, size: 64, offset: 384)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3974, file: !3975, line: 459, baseType: !3987, size: 256, offset: 448)
!3987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3988, size: 256, elements: !662)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3975, line: 428, flags: DIFlagFwdDecl)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3974, file: !3975, line: 461, baseType: !116, size: 64, offset: 704)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3974, file: !3975, line: 463, baseType: !116, size: 64, offset: 768)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3974, file: !3975, line: 465, baseType: !116, size: 64, offset: 832)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3974, file: !3975, line: 466, baseType: !116, size: 64, offset: 896)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3974, file: !3975, line: 467, baseType: !116, size: 64, offset: 960)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3974, file: !3975, line: 473, baseType: !3996, size: 64, offset: 1024)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3975, line: 10, flags: DIFlagFwdDecl)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3974, file: !3975, line: 480, baseType: !116, size: 64, offset: 1088)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3974, file: !3975, line: 482, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3974, file: !3975, line: 491, baseType: !197, size: 32, offset: 1184)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3974, file: !3975, line: 501, baseType: !4002, size: 33792, offset: 1536)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4003, line: 448, size: 33792, elements: !4004)
!4003 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4004 = !{!4005, !4006, !4007, !4117, !4118, !4124, !4125}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4002, file: !4003, line: 461, baseType: !5, size: 32)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4002, file: !4003, line: 468, baseType: !116, size: 64, offset: 64)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4002, file: !4003, line: 476, baseType: !4008, size: 64, offset: 128)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4003, line: 356, size: 33280, align: 512, elements: !4010)
!4010 = !{!4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4009, file: !4003, line: 358, baseType: !5, size: 32)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4009, file: !4003, line: 361, baseType: !5, size: 32, offset: 32)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4009, file: !4003, line: 364, baseType: !148, size: 64, offset: 64)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4009, file: !4003, line: 367, baseType: !148, size: 64, offset: 128)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4009, file: !4003, line: 370, baseType: !148, size: 64, offset: 192)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4009, file: !4003, line: 373, baseType: !5, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4009, file: !4003, line: 376, baseType: !5, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4009, file: !4003, line: 391, baseType: !5, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4009, file: !4003, line: 394, baseType: !5, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4009, file: !4003, line: 397, baseType: !4021, size: 32768, offset: 512)
!4021 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4003, line: 348, size: 32768, elements: !4022)
!4022 = !{!4023, !4038, !4075, !4100, !4113}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4021, file: !4003, line: 349, baseType: !4024, size: 896)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4003, line: 12, size: 896, elements: !4025)
!4025 = !{!4026, !4027, !4028, !4029, !4030, !4031, !4032, !4033, !4037}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4024, file: !4003, line: 13, baseType: !197, size: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4024, file: !4003, line: 14, baseType: !197, size: 32, offset: 32)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4024, file: !4003, line: 15, baseType: !197, size: 32, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4024, file: !4003, line: 16, baseType: !197, size: 32, offset: 96)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4024, file: !4003, line: 17, baseType: !197, size: 32, offset: 128)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4024, file: !4003, line: 18, baseType: !197, size: 32, offset: 160)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4024, file: !4003, line: 19, baseType: !197, size: 32, offset: 192)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4024, file: !4003, line: 22, baseType: !4034, size: 640, offset: 224)
!4034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 640, elements: !4035)
!4035 = !{!4036}
!4036 = !DISubrange(count: 20)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4024, file: !4003, line: 25, baseType: !197, size: 32, offset: 864)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4021, file: !4003, line: 350, baseType: !4039, size: 4096, align: 128)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4003, line: 34, size: 4096, align: 128, elements: !4040)
!4040 = !{!4041, !4042, !4043, !4044, !4045, !4060, !4061, !4062, !4064, !4066, !4070}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4039, file: !4003, line: 35, baseType: !142, size: 16)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4039, file: !4003, line: 36, baseType: !142, size: 16, offset: 16)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4039, file: !4003, line: 37, baseType: !142, size: 16, offset: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4039, file: !4003, line: 38, baseType: !142, size: 16, offset: 48)
!4045 = !DIDerivedType(tag: DW_TAG_member, scope: !4039, file: !4003, line: 39, baseType: !4046, size: 128, offset: 64)
!4046 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4039, file: !4003, line: 39, size: 128, elements: !4047)
!4047 = !{!4048, !4053}
!4048 = !DIDerivedType(tag: DW_TAG_member, scope: !4046, file: !4003, line: 40, baseType: !4049, size: 128)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4046, file: !4003, line: 40, size: 128, elements: !4050)
!4050 = !{!4051, !4052}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4049, file: !4003, line: 41, baseType: !148, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4049, file: !4003, line: 42, baseType: !148, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, scope: !4046, file: !4003, line: 44, baseType: !4054, size: 128)
!4054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4046, file: !4003, line: 44, size: 128, elements: !4055)
!4055 = !{!4056, !4057, !4058, !4059}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4054, file: !4003, line: 45, baseType: !197, size: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4054, file: !4003, line: 46, baseType: !197, size: 32, offset: 32)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4054, file: !4003, line: 47, baseType: !197, size: 32, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4054, file: !4003, line: 48, baseType: !197, size: 32, offset: 96)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4039, file: !4003, line: 51, baseType: !197, size: 32, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4039, file: !4003, line: 52, baseType: !197, size: 32, offset: 224)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4039, file: !4003, line: 55, baseType: !4063, size: 1024, offset: 256)
!4063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 1024, elements: !2784)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4039, file: !4003, line: 58, baseType: !4065, size: 2048, offset: 1280)
!4065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 2048, elements: !1299)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4039, file: !4003, line: 60, baseType: !4067, size: 384, offset: 3328)
!4067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 384, elements: !4068)
!4068 = !{!4069}
!4069 = !DISubrange(count: 12)
!4070 = !DIDerivedType(tag: DW_TAG_member, scope: !4039, file: !4003, line: 62, baseType: !4071, size: 384, offset: 3712)
!4071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4039, file: !4003, line: 62, size: 384, elements: !4072)
!4072 = !{!4073, !4074}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4071, file: !4003, line: 63, baseType: !4067, size: 384)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4071, file: !4003, line: 64, baseType: !4067, size: 384)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4021, file: !4003, line: 351, baseType: !4076, size: 1088)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4003, line: 79, size: 1088, elements: !4077)
!4077 = !{!4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4099}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4076, file: !4003, line: 80, baseType: !197, size: 32)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4076, file: !4003, line: 81, baseType: !197, size: 32, offset: 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4076, file: !4003, line: 82, baseType: !197, size: 32, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4076, file: !4003, line: 83, baseType: !197, size: 32, offset: 96)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4076, file: !4003, line: 84, baseType: !197, size: 32, offset: 128)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4076, file: !4003, line: 85, baseType: !197, size: 32, offset: 160)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4076, file: !4003, line: 86, baseType: !197, size: 32, offset: 192)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4076, file: !4003, line: 88, baseType: !4034, size: 640, offset: 224)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4076, file: !4003, line: 89, baseType: !373, size: 8, offset: 864)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4076, file: !4003, line: 90, baseType: !373, size: 8, offset: 872)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4076, file: !4003, line: 91, baseType: !373, size: 8, offset: 880)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4076, file: !4003, line: 92, baseType: !373, size: 8, offset: 888)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4076, file: !4003, line: 93, baseType: !373, size: 8, offset: 896)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4076, file: !4003, line: 94, baseType: !373, size: 8, offset: 904)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4076, file: !4003, line: 95, baseType: !4093, size: 64, offset: 960)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4095, line: 11, size: 128, elements: !4096)
!4095 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4096 = !{!4097, !4098}
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4094, file: !4095, line: 12, baseType: !184, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4094, file: !4095, line: 13, baseType: !117, size: 64, offset: 64)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4076, file: !4003, line: 96, baseType: !197, size: 32, offset: 1024)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4021, file: !4003, line: 352, baseType: !4101, size: 4608, align: 512)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4003, line: 333, size: 4608, align: 512, elements: !4102)
!4102 = !{!4103, !4104, !4111}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4101, file: !4003, line: 334, baseType: !4039, size: 4096, align: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4101, file: !4003, line: 335, baseType: !4105, size: 512, offset: 4096)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4003, line: 312, size: 512, elements: !4106)
!4106 = !{!4107, !4108, !4109}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4105, file: !4003, line: 313, baseType: !148, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4105, file: !4003, line: 314, baseType: !148, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4105, file: !4003, line: 315, baseType: !4110, size: 384, offset: 128)
!4110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 384, elements: !838)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4101, file: !4003, line: 336, baseType: !4112, offset: 4608)
!4112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, elements: !730)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4021, file: !4003, line: 353, baseType: !4114, size: 32768)
!4114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 32768, elements: !4115)
!4115 = !{!4116}
!4116 = !DISubrange(count: 4096)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4002, file: !4003, line: 484, baseType: !4008, size: 64, offset: 192)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4002, file: !4003, line: 491, baseType: !4119, size: 128, offset: 256)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4003, line: 404, size: 128, elements: !4120)
!4120 = !{!4121, !4122, !4123}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4119, file: !4003, line: 424, baseType: !148, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4119, file: !4003, line: 432, baseType: !5, size: 32, offset: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4119, file: !4003, line: 440, baseType: !5, size: 32, offset: 96)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4002, file: !4003, line: 498, baseType: !4119, size: 128, offset: 384)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4002, file: !4003, line: 508, baseType: !4009, size: 33280, align: 512, offset: 512)
!4126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !209, line: 42, baseType: !116)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!4128 = !{i32 7, !"Dwarf Version", i32 5}
!4129 = !{i32 2, !"Debug Info Version", i32 3}
!4130 = !{i32 1, !"wchar_size", i32 2}
!4131 = !{i32 8, !"cf-protection-branch", i32 1}
!4132 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4133 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4134 = !{i32 1, !"Code Model", i32 2}
!4135 = !{i32 1, !"override-stack-alignment", i32 8}
!4136 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4137 = distinct !DISubprogram(name: "convert_ip_to_linear", scope: !1, file: !1, line: 12, type: !4138, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4140)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!116, !186, !117}
!4140 = !{!4141, !4142, !4143, !4144, !4145, !4148}
!4141 = !DILocalVariable(name: "child", arg: 1, scope: !4137, file: !1, line: 12, type: !186)
!4142 = !DILocalVariable(name: "regs", arg: 2, scope: !4137, file: !1, line: 12, type: !117)
!4143 = !DILocalVariable(name: "addr", scope: !4137, file: !1, line: 14, type: !116)
!4144 = !DILocalVariable(name: "seg", scope: !4137, file: !1, line: 14, type: !116)
!4145 = !DILocalVariable(name: "desc", scope: !4146, file: !1, line: 31, type: !3209)
!4146 = distinct !DILexicalBlock(scope: !4147, file: !1, line: 30, column: 46)
!4147 = distinct !DILexicalBlock(scope: !4137, file: !1, line: 30, column: 6)
!4148 = !DILocalVariable(name: "base", scope: !4146, file: !1, line: 32, type: !116)
!4149 = !DILocation(line: 12, column: 56, scope: !4137)
!4150 = !DILocation(line: 12, column: 79, scope: !4137)
!4151 = !DILocation(line: 14, column: 2, scope: !4137)
!4152 = !DILocation(line: 14, column: 16, scope: !4137)
!4153 = !DILocation(line: 14, column: 22, scope: !4137)
!4154 = !DILocation(line: 16, column: 9, scope: !4137)
!4155 = !DILocation(line: 16, column: 15, scope: !4137)
!4156 = !DILocation(line: 16, column: 7, scope: !4137)
!4157 = !DILocation(line: 17, column: 8, scope: !4137)
!4158 = !DILocation(line: 17, column: 14, scope: !4137)
!4159 = !DILocation(line: 17, column: 6, scope: !4137)
!4160 = !DILocation(line: 18, column: 17, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4137, file: !1, line: 18, column: 6)
!4162 = !DILocation(line: 18, column: 6, scope: !4161)
!4163 = !DILocation(line: 18, column: 6, scope: !4137)
!4164 = !DILocation(line: 19, column: 11, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4161, file: !1, line: 18, column: 24)
!4166 = !DILocation(line: 19, column: 16, scope: !4165)
!4167 = !DILocation(line: 19, column: 29, scope: !4165)
!4168 = !DILocation(line: 19, column: 33, scope: !4165)
!4169 = !DILocation(line: 19, column: 26, scope: !4165)
!4170 = !DILocation(line: 19, column: 8, scope: !4165)
!4171 = !DILocation(line: 20, column: 10, scope: !4165)
!4172 = !DILocation(line: 20, column: 3, scope: !4165)
!4173 = !DILocation(line: 30, column: 7, scope: !4147)
!4174 = !DILocation(line: 30, column: 11, scope: !4147)
!4175 = !DILocation(line: 30, column: 30, scope: !4147)
!4176 = !DILocation(line: 30, column: 6, scope: !4137)
!4177 = !DILocation(line: 31, column: 3, scope: !4146)
!4178 = !DILocation(line: 31, column: 23, scope: !4146)
!4179 = !DILocation(line: 32, column: 3, scope: !4146)
!4180 = !DILocation(line: 32, column: 17, scope: !4146)
!4181 = !DILocation(line: 34, column: 7, scope: !4146)
!4182 = !DILocation(line: 36, column: 15, scope: !4146)
!4183 = !DILocation(line: 36, column: 22, scope: !4146)
!4184 = !DILocation(line: 36, column: 26, scope: !4146)
!4185 = !DILocation(line: 36, column: 34, scope: !4146)
!4186 = !DILocation(line: 36, column: 3, scope: !4146)
!4187 = !DILocation(line: 37, column: 7, scope: !4188)
!4188 = distinct !DILexicalBlock(scope: !4146, file: !1, line: 37, column: 7)
!4189 = !DILocation(line: 37, column: 7, scope: !4146)
!4190 = !DILocation(line: 39, column: 9, scope: !4188)
!4191 = !DILocation(line: 39, column: 4, scope: !4188)
!4192 = !DILocation(line: 41, column: 12, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4188, file: !1, line: 40, column: 8)
!4194 = !DILocation(line: 41, column: 19, scope: !4193)
!4195 = !DILocation(line: 41, column: 23, scope: !4193)
!4196 = !DILocation(line: 41, column: 31, scope: !4193)
!4197 = !DILocation(line: 41, column: 36, scope: !4193)
!4198 = !DILocation(line: 41, column: 44, scope: !4193)
!4199 = !DILocation(line: 41, column: 9, scope: !4193)
!4200 = !DILocation(line: 42, column: 25, scope: !4193)
!4201 = !DILocation(line: 42, column: 11, scope: !4193)
!4202 = !DILocation(line: 42, column: 9, scope: !4193)
!4203 = !DILocation(line: 45, column: 9, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4193, file: !1, line: 45, column: 8)
!4205 = !DILocation(line: 45, column: 15, scope: !4204)
!4206 = !DILocation(line: 45, column: 8, scope: !4193)
!4207 = !DILocation(line: 46, column: 10, scope: !4204)
!4208 = !DILocation(line: 46, column: 5, scope: !4204)
!4209 = !DILocation(line: 47, column: 12, scope: !4193)
!4210 = !DILocation(line: 47, column: 9, scope: !4193)
!4211 = !DILocation(line: 49, column: 17, scope: !4146)
!4212 = !DILocation(line: 49, column: 24, scope: !4146)
!4213 = !DILocation(line: 49, column: 28, scope: !4146)
!4214 = !DILocation(line: 49, column: 36, scope: !4146)
!4215 = !DILocation(line: 49, column: 3, scope: !4146)
!4216 = !DILocation(line: 50, column: 2, scope: !4147)
!4217 = !DILocation(line: 50, column: 2, scope: !4146)
!4218 = !DILocation(line: 53, column: 9, scope: !4137)
!4219 = !DILocation(line: 53, column: 2, scope: !4137)
!4220 = !DILocation(line: 54, column: 1, scope: !4137)
!4221 = distinct !DISubprogram(name: "v8086_mode", scope: !119, file: !119, line: 218, type: !4222, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4224)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!213, !117}
!4224 = !{!4225}
!4225 = !DILocalVariable(name: "regs", arg: 1, scope: !4221, file: !119, line: 218, type: !117)
!4226 = !DILocation(line: 218, column: 55, scope: !4221)
!4227 = !DILocation(line: 223, column: 2, scope: !4221)
!4228 = !DISubprogram(name: "mutex_lock", scope: !604, file: !604, line: 227, type: !4229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{null, !4231}
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!4232 = distinct !DISubprogram(name: "get_desc_base", scope: !4233, file: !4233, line: 382, type: !4234, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4238)
!4233 = !DIFile(filename: "./arch/x86/include/asm/desc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ce8a8e19f799ab03a132d4ddc6cfe6d")
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!116, !4236}
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3210)
!4238 = !{!4239}
!4239 = !DILocalVariable(name: "desc", arg: 1, scope: !4232, file: !4233, line: 382, type: !4236)
!4240 = !DILocation(line: 382, column: 69, scope: !4232)
!4241 = !DILocation(line: 384, column: 20, scope: !4232)
!4242 = !DILocation(line: 384, column: 26, scope: !4232)
!4243 = !DILocation(line: 384, column: 36, scope: !4232)
!4244 = !DILocation(line: 384, column: 42, scope: !4232)
!4245 = !DILocation(line: 384, column: 35, scope: !4232)
!4246 = !DILocation(line: 384, column: 49, scope: !4232)
!4247 = !DILocation(line: 384, column: 32, scope: !4232)
!4248 = !DILocation(line: 384, column: 60, scope: !4232)
!4249 = !DILocation(line: 384, column: 66, scope: !4232)
!4250 = !DILocation(line: 384, column: 59, scope: !4232)
!4251 = !DILocation(line: 384, column: 73, scope: !4232)
!4252 = !DILocation(line: 384, column: 56, scope: !4232)
!4253 = !DILocation(line: 384, column: 9, scope: !4232)
!4254 = !DILocation(line: 384, column: 2, scope: !4232)
!4255 = !DISubprogram(name: "mutex_unlock", scope: !604, file: !604, line: 246, type: !4229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4256 = distinct !DISubprogram(name: "set_task_blockstep", scope: !1, file: !1, line: 172, type: !4257, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4259)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{null, !186, !851}
!4259 = !{!4260, !4261, !4262}
!4260 = !DILocalVariable(name: "task", arg: 1, scope: !4256, file: !1, line: 172, type: !186)
!4261 = !DILocalVariable(name: "on", arg: 2, scope: !4256, file: !1, line: 172, type: !851)
!4262 = !DILocalVariable(name: "debugctl", scope: !4256, file: !1, line: 174, type: !116)
!4263 = !DILocation(line: 172, column: 45, scope: !4256)
!4264 = !DILocation(line: 172, column: 56, scope: !4256)
!4265 = !DILocation(line: 174, column: 2, scope: !4256)
!4266 = !DILocation(line: 174, column: 16, scope: !4256)
!4267 = !DILocation(line: 185, column: 2, scope: !4256)
!4268 = !DILocation(line: 185, column: 2, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4256, file: !1, line: 185, column: 2)
!4270 = !DILocation(line: 186, column: 13, scope: !4256)
!4271 = !DILocation(line: 186, column: 11, scope: !4256)
!4272 = !DILocation(line: 187, column: 6, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4256, file: !1, line: 187, column: 6)
!4274 = !{i8 0, i8 2}
!4275 = !DILocation(line: 187, column: 6, scope: !4256)
!4276 = !DILocation(line: 188, column: 12, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4273, file: !1, line: 187, column: 10)
!4278 = !DILocation(line: 189, column: 23, scope: !4277)
!4279 = !DILocation(line: 189, column: 3, scope: !4277)
!4280 = !DILocation(line: 190, column: 2, scope: !4277)
!4281 = !DILocation(line: 191, column: 12, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4273, file: !1, line: 190, column: 9)
!4283 = !DILocation(line: 192, column: 25, scope: !4282)
!4284 = !DILocation(line: 192, column: 3, scope: !4282)
!4285 = !DILocation(line: 194, column: 6, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4256, file: !1, line: 194, column: 6)
!4287 = !DILocation(line: 194, column: 14, scope: !4286)
!4288 = !DILocation(line: 194, column: 11, scope: !4286)
!4289 = !DILocation(line: 194, column: 6, scope: !4256)
!4290 = !DILocation(line: 195, column: 22, scope: !4286)
!4291 = !DILocation(line: 195, column: 3, scope: !4286)
!4292 = !DILocation(line: 196, column: 2, scope: !4256)
!4293 = !DILocation(line: 196, column: 2, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4256, file: !1, line: 196, column: 2)
!4295 = !DILocation(line: 197, column: 1, scope: !4256)
!4296 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !4297, file: !4297, line: 70, type: !2401, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!4297 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!4298 = !DILocation(line: 72, column: 2, scope: !4296)
!4299 = !DILocation(line: 73, column: 1, scope: !4296)
!4300 = distinct !DISubprogram(name: "get_debugctlmsr", scope: !3975, file: !3975, line: 579, type: !4301, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4303)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!116}
!4303 = !{!4304}
!4304 = !DILocalVariable(name: "debugctlmsr", scope: !4300, file: !3975, line: 581, type: !116)
!4305 = !DILocation(line: 581, column: 2, scope: !4300)
!4306 = !DILocation(line: 581, column: 16, scope: !4300)
!4307 = !DILocation(line: 587, column: 2, scope: !4300)
!4308 = !DILocation(line: 589, column: 9, scope: !4300)
!4309 = !DILocation(line: 590, column: 1, scope: !4300)
!4310 = !DILocation(line: 589, column: 2, scope: !4300)
!4311 = distinct !DISubprogram(name: "set_tsk_thread_flag", scope: !188, file: !188, line: 2040, type: !4312, scopeLine: 2041, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4314)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{null, !186, !213}
!4314 = !{!4315, !4316}
!4315 = !DILocalVariable(name: "tsk", arg: 1, scope: !4311, file: !188, line: 2040, type: !186)
!4316 = !DILocalVariable(name: "flag", arg: 2, scope: !4311, file: !188, line: 2040, type: !213)
!4317 = !DILocation(line: 2040, column: 60, scope: !4311)
!4318 = !DILocation(line: 2040, column: 69, scope: !4311)
!4319 = !DILocation(line: 2042, column: 21, scope: !4311)
!4320 = !DILocation(line: 2042, column: 44, scope: !4311)
!4321 = !DILocation(line: 2042, column: 2, scope: !4311)
!4322 = !DILocation(line: 2043, column: 1, scope: !4311)
!4323 = distinct !DISubprogram(name: "clear_tsk_thread_flag", scope: !188, file: !188, line: 2045, type: !4312, scopeLine: 2046, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4324)
!4324 = !{!4325, !4326}
!4325 = !DILocalVariable(name: "tsk", arg: 1, scope: !4323, file: !188, line: 2045, type: !186)
!4326 = !DILocalVariable(name: "flag", arg: 2, scope: !4323, file: !188, line: 2045, type: !213)
!4327 = !DILocation(line: 2045, column: 62, scope: !4323)
!4328 = !DILocation(line: 2045, column: 71, scope: !4323)
!4329 = !DILocation(line: 2047, column: 23, scope: !4323)
!4330 = !DILocation(line: 2047, column: 46, scope: !4323)
!4331 = !DILocation(line: 2047, column: 2, scope: !4323)
!4332 = !DILocation(line: 2048, column: 1, scope: !4323)
!4333 = distinct !DISubprogram(name: "get_current", scope: !4334, file: !4334, line: 39, type: !4335, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4337)
!4334 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!186}
!4337 = !{!4338, !4340, !4342}
!4338 = !DILocalVariable(name: "pscr_ret__", scope: !4339, file: !4334, line: 41, type: !186)
!4339 = distinct !DILexicalBlock(scope: !4333, file: !4334, line: 41, column: 9)
!4340 = !DILocalVariable(name: "__vpp_verify", scope: !4341, file: !4334, line: 41, type: !1896)
!4341 = distinct !DILexicalBlock(scope: !4339, file: !4334, line: 41, column: 9)
!4342 = !DILocalVariable(name: "pfo_val__", scope: !4343, file: !4334, line: 41, type: !148)
!4343 = distinct !DILexicalBlock(scope: !4339, file: !4334, line: 41, column: 9)
!4344 = !DILocation(line: 41, column: 9, scope: !4339)
!4345 = !DILocation(line: 41, column: 9, scope: !4341)
!4346 = !DILocation(line: 41, column: 9, scope: !4343)
!4347 = !{i64 2148195553}
!4348 = !DILocation(line: 41, column: 9, scope: !4333)
!4349 = !DILocation(line: 41, column: 2, scope: !4333)
!4350 = distinct !DISubprogram(name: "update_debugctlmsr", scope: !3975, file: !3975, line: 592, type: !4351, scopeLine: 593, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4353)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{null, !116}
!4353 = !{!4354}
!4354 = !DILocalVariable(name: "debugctlmsr", arg: 1, scope: !4350, file: !3975, line: 592, type: !116)
!4355 = !DILocation(line: 592, column: 53, scope: !4350)
!4356 = !DILocation(line: 598, column: 31, scope: !4350)
!4357 = !DILocation(line: 598, column: 2, scope: !4350)
!4358 = !DILocation(line: 599, column: 1, scope: !4350)
!4359 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !4297, file: !4297, line: 75, type: !2401, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!4360 = !DILocation(line: 77, column: 2, scope: !4359)
!4361 = !DILocation(line: 78, column: 1, scope: !4359)
!4362 = distinct !DISubprogram(name: "user_enable_single_step", scope: !1, file: !1, line: 217, type: !4363, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4365)
!4363 = !DISubroutineType(types: !4364)
!4364 = !{null, !186}
!4365 = !{!4366}
!4366 = !DILocalVariable(name: "child", arg: 1, scope: !4362, file: !1, line: 217, type: !186)
!4367 = !DILocation(line: 217, column: 50, scope: !4362)
!4368 = !DILocation(line: 219, column: 14, scope: !4362)
!4369 = !DILocation(line: 219, column: 2, scope: !4362)
!4370 = !DILocation(line: 220, column: 1, scope: !4362)
!4371 = distinct !DISubprogram(name: "enable_step", scope: !1, file: !1, line: 202, type: !4257, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4372)
!4372 = !{!4373, !4374}
!4373 = !DILocalVariable(name: "child", arg: 1, scope: !4371, file: !1, line: 202, type: !186)
!4374 = !DILocalVariable(name: "block", arg: 2, scope: !4371, file: !1, line: 202, type: !851)
!4375 = !DILocation(line: 202, column: 45, scope: !4371)
!4376 = !DILocation(line: 202, column: 57, scope: !4371)
!4377 = !DILocation(line: 211, column: 25, scope: !4378)
!4378 = distinct !DILexicalBlock(scope: !4371, file: !1, line: 211, column: 6)
!4379 = !DILocation(line: 211, column: 6, scope: !4378)
!4380 = !DILocation(line: 211, column: 32, scope: !4378)
!4381 = !DILocation(line: 211, column: 35, scope: !4378)
!4382 = !DILocation(line: 211, column: 6, scope: !4371)
!4383 = !DILocation(line: 212, column: 22, scope: !4378)
!4384 = !DILocation(line: 212, column: 3, scope: !4378)
!4385 = !DILocation(line: 213, column: 32, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4378, file: !1, line: 213, column: 11)
!4387 = !DILocation(line: 213, column: 11, scope: !4386)
!4388 = !DILocation(line: 213, column: 11, scope: !4378)
!4389 = !DILocation(line: 214, column: 22, scope: !4386)
!4390 = !DILocation(line: 214, column: 3, scope: !4386)
!4391 = !DILocation(line: 215, column: 1, scope: !4371)
!4392 = distinct !DISubprogram(name: "user_enable_block_step", scope: !1, file: !1, line: 222, type: !4363, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4393)
!4393 = !{!4394}
!4394 = !DILocalVariable(name: "child", arg: 1, scope: !4392, file: !1, line: 222, type: !186)
!4395 = !DILocation(line: 222, column: 49, scope: !4392)
!4396 = !DILocation(line: 224, column: 14, scope: !4392)
!4397 = !DILocation(line: 224, column: 2, scope: !4392)
!4398 = !DILocation(line: 225, column: 1, scope: !4392)
!4399 = distinct !DISubprogram(name: "user_disable_single_step", scope: !1, file: !1, line: 227, type: !4363, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4400)
!4400 = !{!4401, !4402}
!4401 = !DILocalVariable(name: "child", arg: 1, scope: !4399, file: !1, line: 227, type: !186)
!4402 = !DILocalVariable(name: "__ptr", scope: !4403, file: !1, line: 241, type: !116)
!4403 = distinct !DILexicalBlock(scope: !4404, file: !1, line: 241, column: 3)
!4404 = distinct !DILexicalBlock(scope: !4399, file: !1, line: 240, column: 6)
!4405 = !DILocation(line: 227, column: 51, scope: !4399)
!4406 = !DILocation(line: 232, column: 27, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4399, file: !1, line: 232, column: 6)
!4408 = !DILocation(line: 232, column: 6, scope: !4407)
!4409 = !DILocation(line: 232, column: 6, scope: !4399)
!4410 = !DILocation(line: 233, column: 22, scope: !4407)
!4411 = !DILocation(line: 233, column: 3, scope: !4407)
!4412 = !DILocation(line: 236, column: 24, scope: !4399)
!4413 = !DILocation(line: 236, column: 2, scope: !4399)
!4414 = !DILocation(line: 237, column: 2, scope: !4399)
!4415 = !DILocation(line: 240, column: 37, scope: !4404)
!4416 = !DILocation(line: 240, column: 6, scope: !4404)
!4417 = !DILocation(line: 240, column: 6, scope: !4399)
!4418 = !DILocation(line: 241, column: 3, scope: !4403)
!4419 = !DILocation(line: 241, column: 3, scope: !4404)
!4420 = !DILocation(line: 241, column: 24, scope: !4404)
!4421 = !DILocation(line: 241, column: 30, scope: !4404)
!4422 = !DILocation(line: 242, column: 1, scope: !4399)
!4423 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !188, file: !188, line: 2066, type: !4424, scopeLine: 2067, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4426)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!213, !186, !213}
!4426 = !{!4427, !4428}
!4427 = !DILocalVariable(name: "tsk", arg: 1, scope: !4423, file: !188, line: 2066, type: !186)
!4428 = !DILocalVariable(name: "flag", arg: 2, scope: !4423, file: !188, line: 2066, type: !213)
!4429 = !DILocation(line: 2066, column: 60, scope: !4423)
!4430 = !DILocation(line: 2066, column: 69, scope: !4423)
!4431 = !DILocation(line: 2068, column: 29, scope: !4423)
!4432 = !DILocation(line: 2068, column: 52, scope: !4423)
!4433 = !DILocation(line: 2068, column: 9, scope: !4423)
!4434 = !DILocation(line: 2068, column: 2, scope: !4423)
!4435 = distinct !DISubprogram(name: "clear_bit", scope: !4436, file: !4436, line: 39, type: !4437, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4441)
!4436 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!4437 = !DISubroutineType(types: !4438)
!4438 = !{null, !184, !4439}
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !116)
!4441 = !{!4442, !4443}
!4442 = !DILocalVariable(name: "nr", arg: 1, scope: !4435, file: !4436, line: 39, type: !184)
!4443 = !DILocalVariable(name: "addr", arg: 2, scope: !4435, file: !4436, line: 39, type: !4439)
!4444 = !DILocation(line: 39, column: 44, scope: !4435)
!4445 = !DILocation(line: 39, column: 72, scope: !4435)
!4446 = !DILocation(line: 41, column: 26, scope: !4435)
!4447 = !DILocation(line: 41, column: 33, scope: !4435)
!4448 = !DILocation(line: 41, column: 31, scope: !4435)
!4449 = !DILocation(line: 41, column: 2, scope: !4435)
!4450 = !DILocation(line: 42, column: 17, scope: !4435)
!4451 = !DILocation(line: 42, column: 21, scope: !4435)
!4452 = !DILocation(line: 42, column: 2, scope: !4435)
!4453 = !DILocation(line: 43, column: 1, scope: !4435)
!4454 = distinct !DISubprogram(name: "test_and_clear_tsk_thread_flag", scope: !188, file: !188, line: 2061, type: !4424, scopeLine: 2062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4455)
!4455 = !{!4456, !4457}
!4456 = !DILocalVariable(name: "tsk", arg: 1, scope: !4454, file: !188, line: 2061, type: !186)
!4457 = !DILocalVariable(name: "flag", arg: 2, scope: !4454, file: !188, line: 2061, type: !213)
!4458 = !DILocation(line: 2061, column: 70, scope: !4454)
!4459 = !DILocation(line: 2061, column: 79, scope: !4454)
!4460 = !DILocation(line: 2063, column: 39, scope: !4454)
!4461 = !DILocation(line: 2063, column: 62, scope: !4454)
!4462 = !DILocation(line: 2063, column: 9, scope: !4454)
!4463 = !DILocation(line: 2063, column: 2, scope: !4454)
!4464 = distinct !DISubprogram(name: "task_stack_page", scope: !4465, file: !4465, line: 20, type: !4466, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4470)
!4465 = !DIFile(filename: "./include/linux/sched/task_stack.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b484ea324048fb6eae31602d0afab7d")
!4466 = !DISubroutineType(types: !4467)
!4467 = !{!181, !4468}
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!4470 = !{!4471}
!4471 = !DILocalVariable(name: "task", arg: 1, scope: !4464, file: !4465, line: 20, type: !4468)
!4472 = !DILocation(line: 20, column: 72, scope: !4464)
!4473 = !DILocation(line: 22, column: 9, scope: !4464)
!4474 = !DILocation(line: 22, column: 15, scope: !4464)
!4475 = !DILocation(line: 22, column: 2, scope: !4464)
!4476 = distinct !DISubprogram(name: "native_irq_disable", scope: !4297, file: !4297, line: 35, type: !2401, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!4477 = !DILocation(line: 37, column: 2, scope: !4476)
!4478 = !{i64 1427312}
!4479 = !DILocation(line: 38, column: 1, scope: !4476)
!4480 = distinct !DISubprogram(name: "native_read_msr", scope: !4481, file: !4481, line: 114, type: !4482, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4484)
!4481 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!4482 = !DISubroutineType(types: !4483)
!4483 = !{!150, !5}
!4484 = !{!4485, !4486}
!4485 = !DILocalVariable(name: "msr", arg: 1, scope: !4480, file: !4481, line: 114, type: !5)
!4486 = !DILocalVariable(name: "val", scope: !4480, file: !4481, line: 116, type: !150)
!4487 = !DILocation(line: 114, column: 63, scope: !4480)
!4488 = !DILocation(line: 116, column: 2, scope: !4480)
!4489 = !DILocation(line: 116, column: 21, scope: !4480)
!4490 = !DILocation(line: 118, column: 16, scope: !4480)
!4491 = !DILocation(line: 118, column: 8, scope: !4480)
!4492 = !DILocation(line: 118, column: 6, scope: !4480)
!4493 = !DILocation(line: 120, column: 6, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4480, file: !4481, line: 120, column: 6)
!4495 = !DILocation(line: 120, column: 6, scope: !4480)
!4496 = !DILocation(line: 121, column: 21, scope: !4494)
!4497 = !DILocation(line: 121, column: 26, scope: !4494)
!4498 = !DILocation(line: 121, column: 3, scope: !4494)
!4499 = !DILocation(line: 123, column: 9, scope: !4480)
!4500 = !DILocation(line: 124, column: 1, scope: !4480)
!4501 = !DILocation(line: 123, column: 2, scope: !4480)
!4502 = distinct !DISubprogram(name: "__rdmsr", scope: !4481, file: !4481, line: 80, type: !4482, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4503)
!4503 = !{!4504, !4505, !4506}
!4504 = !DILocalVariable(name: "msr", arg: 1, scope: !4502, file: !4481, line: 80, type: !5)
!4505 = !DILocalVariable(name: "low", scope: !4502, file: !4481, line: 82, type: !116)
!4506 = !DILocalVariable(name: "high", scope: !4502, file: !4481, line: 82, type: !116)
!4507 = !DILocation(line: 80, column: 64, scope: !4502)
!4508 = !DILocation(line: 82, column: 2, scope: !4502)
!4509 = !DILocation(line: 87, column: 45, scope: !4502)
!4510 = !DILocation(line: 84, column: 2, scope: !4502)
!4511 = !{i64 1820233, i64 1820254, i64 2149497856, i64 2149497900, i64 2149497923, i64 2149497956, i64 2149497987, i64 2149498026}
!4512 = !DILocation(line: 89, column: 9, scope: !4502)
!4513 = !DILocation(line: 90, column: 1, scope: !4502)
!4514 = !DILocation(line: 89, column: 2, scope: !4502)
!4515 = distinct !DISubprogram(name: "static_key_false", scope: !2361, file: !2361, line: 205, type: !4516, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4530)
!4516 = !DISubroutineType(types: !4517)
!4517 = !{!851, !4518}
!4518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4519, size: 64)
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2361, line: 85, size: 128, elements: !4520)
!4520 = !{!4521, !4522}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4519, file: !2361, line: 86, baseType: !208, size: 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, scope: !4519, file: !2361, line: 101, baseType: !4523, size: 64, offset: 64)
!4523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4519, file: !2361, line: 101, size: 64, elements: !4524)
!4524 = !{!4525, !4526, !4527}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4523, file: !2361, line: 102, baseType: !116, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !4523, file: !2361, line: 103, baseType: !2359, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4523, file: !2361, line: 104, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2361, line: 104, flags: DIFlagFwdDecl)
!4530 = !{!4531}
!4531 = !DILocalVariable(name: "key", arg: 1, scope: !4515, file: !2361, line: 205, type: !4518)
!4532 = !DILocation(line: 205, column: 65, scope: !4515)
!4533 = !DILocation(line: 207, column: 28, scope: !4515)
!4534 = !DILocation(line: 207, column: 9, scope: !4515)
!4535 = !DILocation(line: 207, column: 2, scope: !4515)
!4536 = !DISubprogram(name: "do_trace_read_msr", scope: !4481, file: !4481, line: 65, type: !4537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{null, !5, !148, !213}
!4539 = distinct !DISubprogram(name: "arch_static_branch", scope: !4540, file: !4540, line: 25, type: !4541, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4543)
!4540 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!851, !4518, !851}
!4543 = !{!4544, !4545, !4546}
!4544 = !DILocalVariable(name: "key", arg: 1, scope: !4539, file: !4540, line: 25, type: !4518)
!4545 = !DILocalVariable(name: "branch", arg: 2, scope: !4539, file: !4540, line: 25, type: !851)
!4546 = !DILabel(scope: !4539, name: "l_yes", file: !4540, line: 33)
!4547 = !DILocation(line: 25, column: 67, scope: !4539)
!4548 = !DILocation(line: 25, column: 77, scope: !4539)
!4549 = !DILocation(line: 30, column: 13, scope: !4539)
!4550 = !DILocation(line: 30, column: 28, scope: !4539)
!4551 = !DILocation(line: 30, column: 26, scope: !4539)
!4552 = !DILocation(line: 27, column: 2, scope: !4539)
!4553 = !{i64 1484555, i64 1484599, i64 2148969282, i64 2148969303, i64 2148969329, i64 2148969362, i64 2148969396, i64 2148969420}
!4554 = !DILocation(line: 32, column: 2, scope: !4539)
!4555 = !DILocation(line: 33, column: 1, scope: !4539)
!4556 = !DILocation(line: 34, column: 2, scope: !4539)
!4557 = !DILocation(line: 35, column: 1, scope: !4539)
!4558 = distinct !DISubprogram(name: "set_ti_thread_flag", scope: !91, file: !91, line: 87, type: !4559, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4562)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{null, !4561, !213}
!4561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!4562 = !{!4563, !4564}
!4563 = !DILocalVariable(name: "ti", arg: 1, scope: !4558, file: !91, line: 87, type: !4561)
!4564 = !DILocalVariable(name: "flag", arg: 2, scope: !4558, file: !91, line: 87, type: !213)
!4565 = !DILocation(line: 87, column: 59, scope: !4558)
!4566 = !DILocation(line: 87, column: 67, scope: !4558)
!4567 = !DILocation(line: 89, column: 10, scope: !4558)
!4568 = !DILocation(line: 89, column: 34, scope: !4558)
!4569 = !DILocation(line: 89, column: 38, scope: !4558)
!4570 = !DILocation(line: 89, column: 2, scope: !4558)
!4571 = !DILocation(line: 90, column: 1, scope: !4558)
!4572 = distinct !DISubprogram(name: "set_bit", scope: !4436, file: !4436, line: 26, type: !4437, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4573)
!4573 = !{!4574, !4575}
!4574 = !DILocalVariable(name: "nr", arg: 1, scope: !4572, file: !4436, line: 26, type: !184)
!4575 = !DILocalVariable(name: "addr", arg: 2, scope: !4572, file: !4436, line: 26, type: !4439)
!4576 = !DILocation(line: 26, column: 42, scope: !4572)
!4577 = !DILocation(line: 26, column: 70, scope: !4572)
!4578 = !DILocation(line: 28, column: 26, scope: !4572)
!4579 = !DILocation(line: 28, column: 33, scope: !4572)
!4580 = !DILocation(line: 28, column: 31, scope: !4572)
!4581 = !DILocation(line: 28, column: 2, scope: !4572)
!4582 = !DILocation(line: 29, column: 15, scope: !4572)
!4583 = !DILocation(line: 29, column: 19, scope: !4572)
!4584 = !DILocation(line: 29, column: 2, scope: !4572)
!4585 = !DILocation(line: 30, column: 1, scope: !4572)
!4586 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4587, file: !4587, line: 80, type: !4588, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4593)
!4587 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4588 = !DISubroutineType(types: !4589)
!4589 = !{null, !4590, !1161}
!4590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4591, size: 64)
!4591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4592)
!4592 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4593 = !{!4594, !4595}
!4594 = !DILocalVariable(name: "v", arg: 1, scope: !4586, file: !4587, line: 80, type: !4590)
!4595 = !DILocalVariable(name: "size", arg: 2, scope: !4586, file: !4587, line: 80, type: !1161)
!4596 = !DILocation(line: 80, column: 74, scope: !4586)
!4597 = !DILocation(line: 80, column: 84, scope: !4586)
!4598 = !DILocation(line: 82, column: 20, scope: !4586)
!4599 = !DILocation(line: 82, column: 23, scope: !4586)
!4600 = !DILocation(line: 82, column: 2, scope: !4586)
!4601 = !DILocation(line: 83, column: 2, scope: !4586)
!4602 = !DILocation(line: 84, column: 1, scope: !4586)
!4603 = distinct !DISubprogram(name: "arch_set_bit", scope: !4604, file: !4604, line: 52, type: !4437, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4605)
!4604 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4605 = !{!4606, !4607}
!4606 = !DILocalVariable(name: "nr", arg: 1, scope: !4603, file: !4604, line: 52, type: !184)
!4607 = !DILocalVariable(name: "addr", arg: 2, scope: !4603, file: !4604, line: 52, type: !4439)
!4608 = !DILocation(line: 52, column: 19, scope: !4603)
!4609 = !DILocation(line: 52, column: 47, scope: !4603)
!4610 = !DILocation(line: 54, column: 27, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4603, file: !4604, line: 54, column: 6)
!4612 = !DILocation(line: 54, column: 6, scope: !4611)
!4613 = !DILocation(line: 54, column: 6, scope: !4603)
!4614 = !DILocation(line: 56, column: 6, scope: !4615)
!4615 = distinct !DILexicalBlock(scope: !4611, file: !4604, line: 54, column: 32)
!4616 = !DILocation(line: 57, column: 12, scope: !4615)
!4617 = !DILocation(line: 55, column: 3, scope: !4615)
!4618 = !{i64 2147889749, i64 2147889788, i64 2147889809, i64 2147889846, i64 2147889869, i64 2147889739}
!4619 = !DILocation(line: 59, column: 2, scope: !4615)
!4620 = !DILocation(line: 61, column: 8, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4611, file: !4604, line: 59, column: 9)
!4622 = !DILocation(line: 61, column: 32, scope: !4621)
!4623 = !DILocation(line: 60, column: 3, scope: !4621)
!4624 = !{i64 2147890034, i64 2147890073, i64 2147890094, i64 2147890131, i64 2147890154, i64 2147890024}
!4625 = !DILocation(line: 63, column: 1, scope: !4603)
!4626 = distinct !DISubprogram(name: "kasan_check_write", scope: !4627, file: !4627, line: 44, type: !4628, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4630)
!4627 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!851, !4590, !5}
!4630 = !{!4631, !4632}
!4631 = !DILocalVariable(name: "p", arg: 1, scope: !4626, file: !4627, line: 44, type: !4590)
!4632 = !DILocalVariable(name: "size", arg: 2, scope: !4626, file: !4627, line: 44, type: !5)
!4633 = !DILocation(line: 44, column: 59, scope: !4626)
!4634 = !DILocation(line: 44, column: 75, scope: !4626)
!4635 = !DILocation(line: 46, column: 2, scope: !4626)
!4636 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4637, file: !4637, line: 229, type: !4638, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4640)
!4637 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4638 = !DISubroutineType(types: !4639)
!4639 = !{null, !4590, !1161, !213}
!4640 = !{!4641, !4642, !4643}
!4641 = !DILocalVariable(name: "ptr", arg: 1, scope: !4636, file: !4637, line: 229, type: !4590)
!4642 = !DILocalVariable(name: "size", arg: 2, scope: !4636, file: !4637, line: 229, type: !1161)
!4643 = !DILocalVariable(name: "type", arg: 3, scope: !4636, file: !4637, line: 230, type: !213)
!4644 = !DILocation(line: 229, column: 60, scope: !4636)
!4645 = !DILocation(line: 229, column: 72, scope: !4636)
!4646 = !DILocation(line: 230, column: 15, scope: !4636)
!4647 = !DILocation(line: 230, column: 23, scope: !4636)
!4648 = distinct !DISubprogram(name: "clear_ti_thread_flag", scope: !91, file: !91, line: 92, type: !4559, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4649)
!4649 = !{!4650, !4651}
!4650 = !DILocalVariable(name: "ti", arg: 1, scope: !4648, file: !91, line: 92, type: !4561)
!4651 = !DILocalVariable(name: "flag", arg: 2, scope: !4648, file: !91, line: 92, type: !213)
!4652 = !DILocation(line: 92, column: 61, scope: !4648)
!4653 = !DILocation(line: 92, column: 69, scope: !4648)
!4654 = !DILocation(line: 94, column: 12, scope: !4648)
!4655 = !DILocation(line: 94, column: 36, scope: !4648)
!4656 = !DILocation(line: 94, column: 40, scope: !4648)
!4657 = !DILocation(line: 94, column: 2, scope: !4648)
!4658 = !DILocation(line: 95, column: 1, scope: !4648)
!4659 = distinct !DISubprogram(name: "wrmsrl", scope: !4481, file: !4481, line: 260, type: !4660, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4662)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{null, !5, !148}
!4662 = !{!4663, !4664}
!4663 = !DILocalVariable(name: "msr", arg: 1, scope: !4659, file: !4481, line: 260, type: !5)
!4664 = !DILocalVariable(name: "val", arg: 2, scope: !4659, file: !4481, line: 260, type: !148)
!4665 = !DILocation(line: 260, column: 40, scope: !4659)
!4666 = !DILocation(line: 260, column: 49, scope: !4659)
!4667 = !DILocation(line: 262, column: 19, scope: !4659)
!4668 = !DILocation(line: 262, column: 30, scope: !4659)
!4669 = !DILocation(line: 262, column: 34, scope: !4659)
!4670 = !DILocation(line: 262, column: 24, scope: !4659)
!4671 = !DILocation(line: 262, column: 58, scope: !4659)
!4672 = !DILocation(line: 262, column: 62, scope: !4659)
!4673 = !DILocation(line: 262, column: 52, scope: !4659)
!4674 = !DILocation(line: 262, column: 2, scope: !4659)
!4675 = !DILocation(line: 263, column: 1, scope: !4659)
!4676 = distinct !DISubprogram(name: "native_write_msr", scope: !4481, file: !4481, line: 143, type: !4677, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4679)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{null, !5, !197, !197}
!4679 = !{!4680, !4681, !4682}
!4680 = !DILocalVariable(name: "msr", arg: 1, scope: !4676, file: !4481, line: 143, type: !5)
!4681 = !DILocalVariable(name: "low", arg: 2, scope: !4676, file: !4481, line: 143, type: !197)
!4682 = !DILocalVariable(name: "high", arg: 3, scope: !4676, file: !4481, line: 143, type: !197)
!4683 = !DILocation(line: 143, column: 31, scope: !4676)
!4684 = !DILocation(line: 143, column: 40, scope: !4676)
!4685 = !DILocation(line: 143, column: 49, scope: !4676)
!4686 = !DILocation(line: 145, column: 10, scope: !4676)
!4687 = !DILocation(line: 145, column: 15, scope: !4676)
!4688 = !DILocation(line: 145, column: 20, scope: !4676)
!4689 = !DILocation(line: 145, column: 2, scope: !4676)
!4690 = !DILocation(line: 147, column: 6, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4676, file: !4481, line: 147, column: 6)
!4692 = !DILocation(line: 147, column: 6, scope: !4676)
!4693 = !DILocation(line: 148, column: 22, scope: !4691)
!4694 = !DILocation(line: 148, column: 33, scope: !4691)
!4695 = !DILocation(line: 148, column: 28, scope: !4691)
!4696 = !DILocation(line: 148, column: 38, scope: !4691)
!4697 = !DILocation(line: 148, column: 46, scope: !4691)
!4698 = !DILocation(line: 148, column: 44, scope: !4691)
!4699 = !DILocation(line: 148, column: 3, scope: !4691)
!4700 = !DILocation(line: 149, column: 1, scope: !4676)
!4701 = distinct !DISubprogram(name: "__wrmsr", scope: !4481, file: !4481, line: 92, type: !4677, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4702)
!4702 = !{!4703, !4704, !4705}
!4703 = !DILocalVariable(name: "msr", arg: 1, scope: !4701, file: !4481, line: 92, type: !5)
!4704 = !DILocalVariable(name: "low", arg: 2, scope: !4701, file: !4481, line: 92, type: !197)
!4705 = !DILocalVariable(name: "high", arg: 3, scope: !4701, file: !4481, line: 92, type: !197)
!4706 = !DILocation(line: 92, column: 50, scope: !4701)
!4707 = !DILocation(line: 92, column: 59, scope: !4701)
!4708 = !DILocation(line: 92, column: 68, scope: !4701)
!4709 = !DILocation(line: 97, column: 17, scope: !4701)
!4710 = !DILocation(line: 97, column: 27, scope: !4701)
!4711 = !DILocation(line: 97, column: 38, scope: !4701)
!4712 = !DILocation(line: 94, column: 2, scope: !4701)
!4713 = !{i64 1820489, i64 1820510, i64 2149498355, i64 2149498399, i64 2149498422, i64 2149498455, i64 2149498486, i64 2149498525}
!4714 = !DILocation(line: 98, column: 1, scope: !4701)
!4715 = !DISubprogram(name: "do_trace_write_msr", scope: !4481, file: !4481, line: 64, type: !4537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4716 = distinct !DISubprogram(name: "native_irq_enable", scope: !4297, file: !4297, line: 40, type: !2401, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0)
!4717 = !DILocation(line: 42, column: 2, scope: !4716)
!4718 = !{i64 1427404}
!4719 = !DILocation(line: 43, column: 1, scope: !4716)
!4720 = distinct !DISubprogram(name: "enable_single_step", scope: !1, file: !1, line: 111, type: !4721, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4723)
!4721 = !DISubroutineType(types: !4722)
!4722 = !{!213, !186}
!4723 = !{!4724, !4725, !4726, !4728}
!4724 = !DILocalVariable(name: "child", arg: 1, scope: !4720, file: !1, line: 111, type: !186)
!4725 = !DILocalVariable(name: "regs", scope: !4720, file: !1, line: 113, type: !117)
!4726 = !DILocalVariable(name: "__ptr", scope: !4727, file: !1, line: 113, type: !116)
!4727 = distinct !DILexicalBlock(scope: !4720, file: !1, line: 113, column: 25)
!4728 = !DILocalVariable(name: "oflags", scope: !4720, file: !1, line: 114, type: !116)
!4729 = !DILocation(line: 111, column: 51, scope: !4720)
!4730 = !DILocation(line: 113, column: 2, scope: !4720)
!4731 = !DILocation(line: 113, column: 18, scope: !4720)
!4732 = !DILocation(line: 113, column: 25, scope: !4727)
!4733 = !DILocation(line: 113, column: 25, scope: !4720)
!4734 = !DILocation(line: 114, column: 2, scope: !4720)
!4735 = !DILocation(line: 114, column: 16, scope: !4720)
!4736 = !DILocation(line: 126, column: 6, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4720, file: !1, line: 126, column: 6)
!4738 = !DILocation(line: 126, column: 6, scope: !4720)
!4739 = !DILocation(line: 127, column: 3, scope: !4737)
!4740 = !DILocation(line: 127, column: 9, scope: !4737)
!4741 = !DILocation(line: 127, column: 15, scope: !4737)
!4742 = !DILocation(line: 133, column: 22, scope: !4720)
!4743 = !DILocation(line: 133, column: 2, scope: !4720)
!4744 = !DILocation(line: 139, column: 2, scope: !4720)
!4745 = !DILocation(line: 141, column: 11, scope: !4720)
!4746 = !DILocation(line: 141, column: 17, scope: !4720)
!4747 = !DILocation(line: 141, column: 9, scope: !4720)
!4748 = !DILocation(line: 144, column: 2, scope: !4720)
!4749 = !DILocation(line: 144, column: 8, scope: !4720)
!4750 = !DILocation(line: 144, column: 14, scope: !4720)
!4751 = !DILocation(line: 155, column: 27, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4720, file: !1, line: 155, column: 6)
!4753 = !DILocation(line: 155, column: 34, scope: !4752)
!4754 = !DILocation(line: 155, column: 6, scope: !4752)
!4755 = !DILocation(line: 155, column: 6, scope: !4720)
!4756 = !DILocation(line: 156, column: 25, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4752, file: !1, line: 155, column: 41)
!4758 = !DILocation(line: 156, column: 3, scope: !4757)
!4759 = !DILocation(line: 157, column: 3, scope: !4757)
!4760 = !DILocation(line: 164, column: 6, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4720, file: !1, line: 164, column: 6)
!4762 = !DILocation(line: 164, column: 13, scope: !4761)
!4763 = !DILocation(line: 164, column: 6, scope: !4720)
!4764 = !DILocation(line: 165, column: 31, scope: !4761)
!4765 = !DILocation(line: 165, column: 10, scope: !4761)
!4766 = !DILocation(line: 165, column: 3, scope: !4761)
!4767 = !DILocation(line: 167, column: 22, scope: !4720)
!4768 = !DILocation(line: 167, column: 2, scope: !4720)
!4769 = !DILocation(line: 169, column: 2, scope: !4720)
!4770 = !DILocation(line: 170, column: 1, scope: !4720)
!4771 = distinct !DISubprogram(name: "is_setting_trap_flag", scope: !1, file: !1, line: 56, type: !4772, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4774)
!4772 = !DISubroutineType(types: !4773)
!4773 = !{!213, !186, !117}
!4774 = !{!4775, !4776, !4777, !4778, !4779, !4783}
!4775 = !DILocalVariable(name: "child", arg: 1, scope: !4771, file: !1, line: 56, type: !186)
!4776 = !DILocalVariable(name: "regs", arg: 2, scope: !4771, file: !1, line: 56, type: !117)
!4777 = !DILocalVariable(name: "i", scope: !4771, file: !1, line: 58, type: !213)
!4778 = !DILocalVariable(name: "copied", scope: !4771, file: !1, line: 58, type: !213)
!4779 = !DILocalVariable(name: "opcode", scope: !4771, file: !1, line: 59, type: !4780)
!4780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !375, size: 120, elements: !4781)
!4781 = !{!4782}
!4782 = !DISubrange(count: 15)
!4783 = !DILocalVariable(name: "addr", scope: !4771, file: !1, line: 60, type: !116)
!4784 = !DILocation(line: 56, column: 53, scope: !4771)
!4785 = !DILocation(line: 56, column: 76, scope: !4771)
!4786 = !DILocation(line: 58, column: 2, scope: !4771)
!4787 = !DILocation(line: 58, column: 6, scope: !4771)
!4788 = !DILocation(line: 58, column: 9, scope: !4771)
!4789 = !DILocation(line: 59, column: 2, scope: !4771)
!4790 = !DILocation(line: 59, column: 16, scope: !4771)
!4791 = !DILocation(line: 60, column: 2, scope: !4771)
!4792 = !DILocation(line: 60, column: 16, scope: !4771)
!4793 = !DILocation(line: 60, column: 44, scope: !4771)
!4794 = !DILocation(line: 60, column: 51, scope: !4771)
!4795 = !DILocation(line: 60, column: 23, scope: !4771)
!4796 = !DILocation(line: 62, column: 29, scope: !4771)
!4797 = !DILocation(line: 62, column: 36, scope: !4771)
!4798 = !DILocation(line: 62, column: 42, scope: !4771)
!4799 = !DILocation(line: 62, column: 11, scope: !4771)
!4800 = !DILocation(line: 62, column: 9, scope: !4771)
!4801 = !DILocation(line: 64, column: 9, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4771, file: !1, line: 64, column: 2)
!4803 = !DILocation(line: 64, column: 7, scope: !4802)
!4804 = !DILocation(line: 64, column: 14, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4802, file: !1, line: 64, column: 2)
!4806 = !DILocation(line: 64, column: 18, scope: !4805)
!4807 = !DILocation(line: 64, column: 16, scope: !4805)
!4808 = !DILocation(line: 64, column: 2, scope: !4802)
!4809 = !DILocation(line: 65, column: 18, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4805, file: !1, line: 64, column: 31)
!4811 = !DILocation(line: 65, column: 11, scope: !4810)
!4812 = !DILocation(line: 65, column: 3, scope: !4810)
!4813 = !DILocation(line: 68, column: 4, scope: !4814)
!4814 = distinct !DILexicalBlock(scope: !4810, file: !1, line: 65, column: 22)
!4815 = !DILocation(line: 74, column: 4, scope: !4814)
!4816 = !DILocation(line: 80, column: 4, scope: !4814)
!4817 = !DILocation(line: 84, column: 25, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4814, file: !1, line: 84, column: 8)
!4819 = !DILocation(line: 84, column: 9, scope: !4818)
!4820 = !DILocation(line: 84, column: 8, scope: !4814)
!4821 = !DILocation(line: 86, column: 5, scope: !4818)
!4822 = !DILocation(line: 88, column: 4, scope: !4814)
!4823 = !DILocation(line: 100, column: 3, scope: !4814)
!4824 = !DILocation(line: 102, column: 4, scope: !4814)
!4825 = !DILocation(line: 64, column: 27, scope: !4805)
!4826 = !DILocation(line: 64, column: 2, scope: !4805)
!4827 = distinct !{!4827, !4808, !4828, !4829, !4830}
!4828 = !DILocation(line: 104, column: 2, scope: !4802)
!4829 = !{!"llvm.loop.mustprogress"}
!4830 = !{!"llvm.loop.unroll.disable"}
!4831 = !DILocation(line: 105, column: 2, scope: !4771)
!4832 = !DILocation(line: 106, column: 1, scope: !4771)
!4833 = !DISubprogram(name: "access_process_vm", scope: !1494, file: !1494, line: 2418, type: !4834, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4834 = !DISubroutineType(types: !4835)
!4835 = !{!213, !186, !116, !181, !213, !5}
!4836 = distinct !DISubprogram(name: "user_64bit_mode", scope: !119, file: !119, line: 227, type: !4837, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4839)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{!851, !117}
!4839 = !{!4840}
!4840 = !DILocalVariable(name: "regs", arg: 1, scope: !4836, file: !119, line: 227, type: !117)
!4841 = !DILocation(line: 227, column: 52, scope: !4836)
!4842 = !DILocation(line: 235, column: 9, scope: !4836)
!4843 = !DILocation(line: 235, column: 15, scope: !4836)
!4844 = !DILocation(line: 235, column: 18, scope: !4836)
!4845 = !DILocation(line: 235, column: 2, scope: !4836)
!4846 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !91, file: !91, line: 116, type: !4847, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4849)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!213, !4561, !213}
!4849 = !{!4850, !4851}
!4850 = !DILocalVariable(name: "ti", arg: 1, scope: !4846, file: !91, line: 116, type: !4561)
!4851 = !DILocalVariable(name: "flag", arg: 2, scope: !4846, file: !91, line: 116, type: !213)
!4852 = !DILocation(line: 116, column: 59, scope: !4846)
!4853 = !DILocation(line: 116, column: 67, scope: !4846)
!4854 = !DILocation(line: 118, column: 9, scope: !4846)
!4855 = !DILocation(line: 118, column: 2, scope: !4846)
!4856 = distinct !DISubprogram(name: "const_test_bit", scope: !4857, file: !4857, line: 166, type: !4858, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4862)
!4857 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4858 = !DISubroutineType(types: !4859)
!4859 = !{!851, !116, !4860}
!4860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4861, size: 64)
!4861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4440)
!4862 = !{!4863, !4864, !4865, !4866, !4867}
!4863 = !DILocalVariable(name: "nr", arg: 1, scope: !4856, file: !4857, line: 166, type: !116)
!4864 = !DILocalVariable(name: "addr", arg: 2, scope: !4856, file: !4857, line: 166, type: !4860)
!4865 = !DILocalVariable(name: "p", scope: !4856, file: !4857, line: 168, type: !4127)
!4866 = !DILocalVariable(name: "mask", scope: !4856, file: !4857, line: 169, type: !116)
!4867 = !DILocalVariable(name: "val", scope: !4856, file: !4857, line: 170, type: !116)
!4868 = !DILocation(line: 166, column: 30, scope: !4856)
!4869 = !DILocation(line: 166, column: 64, scope: !4856)
!4870 = !DILocation(line: 168, column: 2, scope: !4856)
!4871 = !DILocation(line: 168, column: 23, scope: !4856)
!4872 = !DILocation(line: 168, column: 50, scope: !4856)
!4873 = !DILocation(line: 168, column: 57, scope: !4856)
!4874 = !DILocation(line: 168, column: 55, scope: !4856)
!4875 = !DILocation(line: 169, column: 2, scope: !4856)
!4876 = !DILocation(line: 169, column: 16, scope: !4856)
!4877 = !DILocation(line: 169, column: 23, scope: !4856)
!4878 = !DILocation(line: 170, column: 2, scope: !4856)
!4879 = !DILocation(line: 170, column: 16, scope: !4856)
!4880 = !DILocation(line: 170, column: 23, scope: !4856)
!4881 = !DILocation(line: 170, column: 22, scope: !4856)
!4882 = !DILocation(line: 172, column: 12, scope: !4856)
!4883 = !DILocation(line: 172, column: 18, scope: !4856)
!4884 = !DILocation(line: 172, column: 16, scope: !4856)
!4885 = !DILocation(line: 172, column: 10, scope: !4856)
!4886 = !DILocation(line: 172, column: 9, scope: !4856)
!4887 = !DILocation(line: 173, column: 1, scope: !4856)
!4888 = !DILocation(line: 172, column: 2, scope: !4856)
!4889 = distinct !DISubprogram(name: "_test_bit", scope: !4890, file: !4890, line: 139, type: !4858, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4891)
!4890 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4891 = !{!4892, !4893}
!4892 = !DILocalVariable(name: "nr", arg: 1, scope: !4889, file: !4890, line: 139, type: !116)
!4893 = !DILocalVariable(name: "addr", arg: 2, scope: !4889, file: !4890, line: 139, type: !4860)
!4894 = !DILocation(line: 139, column: 25, scope: !4889)
!4895 = !DILocation(line: 139, column: 59, scope: !4889)
!4896 = !DILocation(line: 141, column: 25, scope: !4889)
!4897 = !DILocation(line: 141, column: 32, scope: !4889)
!4898 = !DILocation(line: 141, column: 30, scope: !4889)
!4899 = !DILocation(line: 141, column: 2, scope: !4889)
!4900 = !DILocation(line: 142, column: 23, scope: !4889)
!4901 = !DILocation(line: 142, column: 27, scope: !4889)
!4902 = !DILocation(line: 142, column: 9, scope: !4889)
!4903 = !DILocation(line: 142, column: 2, scope: !4889)
!4904 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4587, file: !4587, line: 66, type: !4588, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4905)
!4905 = !{!4906, !4907}
!4906 = !DILocalVariable(name: "v", arg: 1, scope: !4904, file: !4587, line: 66, type: !4590)
!4907 = !DILocalVariable(name: "size", arg: 2, scope: !4904, file: !4587, line: 66, type: !1161)
!4908 = !DILocation(line: 66, column: 73, scope: !4904)
!4909 = !DILocation(line: 66, column: 83, scope: !4904)
!4910 = !DILocation(line: 68, column: 19, scope: !4904)
!4911 = !DILocation(line: 68, column: 22, scope: !4904)
!4912 = !DILocation(line: 68, column: 2, scope: !4904)
!4913 = !DILocation(line: 69, column: 2, scope: !4904)
!4914 = !DILocation(line: 70, column: 1, scope: !4904)
!4915 = distinct !DISubprogram(name: "arch_test_bit", scope: !4604, file: !4604, line: 237, type: !4858, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4916)
!4916 = !{!4917, !4918}
!4917 = !DILocalVariable(name: "nr", arg: 1, scope: !4915, file: !4604, line: 237, type: !116)
!4918 = !DILocalVariable(name: "addr", arg: 2, scope: !4915, file: !4604, line: 237, type: !4860)
!4919 = !DILocation(line: 237, column: 29, scope: !4915)
!4920 = !DILocation(line: 237, column: 63, scope: !4915)
!4921 = !DILocation(line: 239, column: 30, scope: !4915)
!4922 = !DILocation(line: 239, column: 9, scope: !4915)
!4923 = !DILocation(line: 239, column: 54, scope: !4915)
!4924 = !DILocation(line: 239, column: 58, scope: !4915)
!4925 = !DILocation(line: 239, column: 36, scope: !4915)
!4926 = !DILocation(line: 240, column: 26, scope: !4915)
!4927 = !DILocation(line: 240, column: 30, scope: !4915)
!4928 = !DILocation(line: 240, column: 8, scope: !4915)
!4929 = !DILocation(line: 239, column: 2, scope: !4915)
!4930 = distinct !DISubprogram(name: "kasan_check_read", scope: !4627, file: !4627, line: 40, type: !4628, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4931)
!4931 = !{!4932, !4933}
!4932 = !DILocalVariable(name: "p", arg: 1, scope: !4930, file: !4627, line: 40, type: !4590)
!4933 = !DILocalVariable(name: "size", arg: 2, scope: !4930, file: !4627, line: 40, type: !5)
!4934 = !DILocation(line: 40, column: 58, scope: !4930)
!4935 = !DILocation(line: 40, column: 74, scope: !4930)
!4936 = !DILocation(line: 42, column: 2, scope: !4930)
!4937 = distinct !DISubprogram(name: "constant_test_bit", scope: !4604, file: !4604, line: 204, type: !4938, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4940)
!4938 = !DISubroutineType(types: !4939)
!4939 = !{!851, !184, !4860}
!4940 = !{!4941, !4942}
!4941 = !DILocalVariable(name: "nr", arg: 1, scope: !4937, file: !4604, line: 204, type: !184)
!4942 = !DILocalVariable(name: "addr", arg: 2, scope: !4937, file: !4604, line: 204, type: !4860)
!4943 = !DILocation(line: 204, column: 52, scope: !4937)
!4944 = !DILocation(line: 204, column: 86, scope: !4937)
!4945 = !DILocation(line: 206, column: 19, scope: !4937)
!4946 = !DILocation(line: 206, column: 22, scope: !4937)
!4947 = !DILocation(line: 206, column: 15, scope: !4937)
!4948 = !DILocation(line: 207, column: 4, scope: !4937)
!4949 = !DILocation(line: 207, column: 9, scope: !4937)
!4950 = !DILocation(line: 207, column: 12, scope: !4937)
!4951 = !DILocation(line: 206, column: 44, scope: !4937)
!4952 = !DILocation(line: 207, column: 37, scope: !4937)
!4953 = !DILocation(line: 206, column: 2, scope: !4937)
!4954 = distinct !DISubprogram(name: "variable_test_bit", scope: !4604, file: !4604, line: 224, type: !4938, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4955)
!4955 = !{!4956, !4957, !4958}
!4956 = !DILocalVariable(name: "nr", arg: 1, scope: !4954, file: !4604, line: 224, type: !184)
!4957 = !DILocalVariable(name: "addr", arg: 2, scope: !4954, file: !4604, line: 224, type: !4860)
!4958 = !DILocalVariable(name: "oldbit", scope: !4954, file: !4604, line: 226, type: !851)
!4959 = !DILocation(line: 224, column: 52, scope: !4954)
!4960 = !DILocation(line: 224, column: 86, scope: !4954)
!4961 = !DILocation(line: 226, column: 2, scope: !4954)
!4962 = !DILocation(line: 226, column: 7, scope: !4954)
!4963 = !DILocation(line: 231, column: 33, scope: !4954)
!4964 = !DILocation(line: 231, column: 46, scope: !4954)
!4965 = !DILocation(line: 228, column: 2, scope: !4954)
!4966 = !{i64 2147903361, i64 2147903435}
!4967 = !DILocation(line: 233, column: 9, scope: !4954)
!4968 = !DILocation(line: 234, column: 1, scope: !4954)
!4969 = !DILocation(line: 233, column: 2, scope: !4954)
!4970 = distinct !DISubprogram(name: "arch_clear_bit", scope: !4604, file: !4604, line: 72, type: !4437, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4971)
!4971 = !{!4972, !4973}
!4972 = !DILocalVariable(name: "nr", arg: 1, scope: !4970, file: !4604, line: 72, type: !184)
!4973 = !DILocalVariable(name: "addr", arg: 2, scope: !4970, file: !4604, line: 72, type: !4439)
!4974 = !DILocation(line: 72, column: 21, scope: !4970)
!4975 = !DILocation(line: 72, column: 49, scope: !4970)
!4976 = !DILocation(line: 74, column: 27, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4970, file: !4604, line: 74, column: 6)
!4978 = !DILocation(line: 74, column: 6, scope: !4977)
!4979 = !DILocation(line: 74, column: 6, scope: !4970)
!4980 = !DILocation(line: 76, column: 6, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4977, file: !4604, line: 74, column: 32)
!4982 = !DILocation(line: 77, column: 13, scope: !4981)
!4983 = !DILocation(line: 77, column: 12, scope: !4981)
!4984 = !DILocation(line: 75, column: 3, scope: !4981)
!4985 = !{i64 2147891037, i64 2147891076, i64 2147891097, i64 2147891134, i64 2147891157, i64 2147891027}
!4986 = !DILocation(line: 78, column: 2, scope: !4981)
!4987 = !DILocation(line: 80, column: 8, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4977, file: !4604, line: 78, column: 9)
!4989 = !DILocation(line: 80, column: 32, scope: !4988)
!4990 = !DILocation(line: 79, column: 3, scope: !4988)
!4991 = !{i64 2147891322, i64 2147891361, i64 2147891382, i64 2147891419, i64 2147891442, i64 2147891312}
!4992 = !DILocation(line: 82, column: 1, scope: !4970)
!4993 = distinct !DISubprogram(name: "test_and_clear_ti_thread_flag", scope: !91, file: !91, line: 111, type: !4847, scopeLine: 112, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4994)
!4994 = !{!4995, !4996}
!4995 = !DILocalVariable(name: "ti", arg: 1, scope: !4993, file: !91, line: 111, type: !4561)
!4996 = !DILocalVariable(name: "flag", arg: 2, scope: !4993, file: !91, line: 111, type: !213)
!4997 = !DILocation(line: 111, column: 69, scope: !4993)
!4998 = !DILocation(line: 111, column: 77, scope: !4993)
!4999 = !DILocation(line: 113, column: 28, scope: !4993)
!5000 = !DILocation(line: 113, column: 52, scope: !4993)
!5001 = !DILocation(line: 113, column: 56, scope: !4993)
!5002 = !DILocation(line: 113, column: 9, scope: !4993)
!5003 = !DILocation(line: 113, column: 2, scope: !4993)
!5004 = distinct !DISubprogram(name: "test_and_clear_bit", scope: !4436, file: !4436, line: 82, type: !5005, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5007)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!851, !184, !4439}
!5007 = !{!5008, !5009}
!5008 = !DILocalVariable(name: "nr", arg: 1, scope: !5004, file: !4436, line: 82, type: !184)
!5009 = !DILocalVariable(name: "addr", arg: 2, scope: !5004, file: !4436, line: 82, type: !4439)
!5010 = !DILocation(line: 82, column: 53, scope: !5004)
!5011 = !DILocation(line: 82, column: 81, scope: !5004)
!5012 = !DILocation(line: 84, column: 2, scope: !5004)
!5013 = !DILocation(line: 84, column: 2, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5004, file: !4436, line: 84, column: 2)
!5015 = !DILocation(line: 85, column: 31, scope: !5004)
!5016 = !DILocation(line: 85, column: 38, scope: !5004)
!5017 = !DILocation(line: 85, column: 36, scope: !5004)
!5018 = !DILocation(line: 85, column: 2, scope: !5004)
!5019 = !DILocation(line: 86, column: 33, scope: !5004)
!5020 = !DILocation(line: 86, column: 37, scope: !5004)
!5021 = !DILocation(line: 86, column: 9, scope: !5004)
!5022 = !DILocation(line: 86, column: 2, scope: !5004)
!5023 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !4587, file: !4587, line: 94, type: !4588, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5024)
!5024 = !{!5025, !5026}
!5025 = !DILocalVariable(name: "v", arg: 1, scope: !5023, file: !4587, line: 94, type: !4590)
!5026 = !DILocalVariable(name: "size", arg: 2, scope: !5023, file: !4587, line: 94, type: !1161)
!5027 = !DILocation(line: 94, column: 79, scope: !5023)
!5028 = !DILocation(line: 94, column: 89, scope: !5023)
!5029 = !DILocation(line: 96, column: 20, scope: !5023)
!5030 = !DILocation(line: 96, column: 23, scope: !5023)
!5031 = !DILocation(line: 96, column: 2, scope: !5023)
!5032 = !DILocation(line: 97, column: 2, scope: !5023)
!5033 = !DILocation(line: 98, column: 1, scope: !5023)
!5034 = distinct !DISubprogram(name: "arch_test_and_clear_bit", scope: !4604, file: !4604, line: 160, type: !5005, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !5035)
!5035 = !{!5036, !5037, !5038}
!5036 = !DILocalVariable(name: "nr", arg: 1, scope: !5034, file: !4604, line: 160, type: !184)
!5037 = !DILocalVariable(name: "addr", arg: 2, scope: !5034, file: !4604, line: 160, type: !4439)
!5038 = !DILocalVariable(name: "c", scope: !5039, file: !4604, line: 162, type: !851)
!5039 = distinct !DILexicalBlock(scope: !5034, file: !4604, line: 162, column: 9)
!5040 = !DILocation(line: 160, column: 30, scope: !5034)
!5041 = !DILocation(line: 160, column: 58, scope: !5034)
!5042 = !DILocation(line: 162, column: 9, scope: !5039)
!5043 = !{i64 2147899102, i64 2147899141, i64 2147899162, i64 2147899199, i64 2147899222, i64 2147899231, i64 2147899334}
!5044 = !DILocation(line: 162, column: 9, scope: !5034)
!5045 = !DILocation(line: 162, column: 2, scope: !5034)
