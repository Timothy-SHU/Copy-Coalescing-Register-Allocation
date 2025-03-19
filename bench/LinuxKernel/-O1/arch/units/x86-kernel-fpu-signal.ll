; ModuleID = 'arch/x86/kernel/fpu/signal.c'
source_filename = "arch/x86/kernel/fpu/signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpu_state_config = type { i32, i32, i64, i64, i64, i64 }
%struct.pcpu_hot = type { %union.anon.13 }
%union.anon.13 = type { %struct.anon.14, [16 x i8] }
%struct.anon.14 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.cpuinfo_x86 = type { %union.anon.15, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.17, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.15 = type { i32 }
%union.anon.17 = type { i64, [88 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.18 }
%struct.atomic_t = type { i32 }
%union.anon.18 = type { i64 }
%struct.static_call_key = type { ptr, %union.anon.19 }
%union.anon.19 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.static_key_false = type { %struct.static_key }
%struct.fpstate = type { i32, i32, i64, i64, i64, i8, [31 x i8], %union.fpregs_state }
%union.fpregs_state = type { %struct.xregs_state, [3520 x i8] }
%struct.xregs_state = type { %struct.fxregs_state, %struct.xstate_header, [0 x i8] }
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.9, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.12 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i64, i64 }
%union.anon.12 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
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
%struct.user_i387_ia32_struct = type { i32, i32, i32, i32, i32, i32, i32, [20 x i32] }
%struct._fpstate_32 = type { i32, i32, i32, i32, i32, i32, i32, [8 x %struct._fpreg], i16, i16, [6 x i32], i32, i32, [8 x %struct._fpxreg], [8 x %struct._xmmreg], %union.anon.20, %union.anon.21 }
%struct._fpreg = type { [4 x i16], i16 }
%struct._fpxreg = type { [4 x i16], i16, [3 x i16] }
%struct._xmmreg = type { [4 x i32] }
%union.anon.20 = type { [44 x i32] }
%union.anon.21 = type { %struct._fpx_sw_bytes }
%struct._fpx_sw_bytes = type { i32, i32, i64, i32, [7 x i32] }
%struct.fregs_state = type { i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }

@fpu_user_cfg = external dso_local global %struct.fpu_state_config, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"arch/x86/kernel/fpu/context.h\00", align 1, !dbg !7
@fpu_fpregs_owner_ctx = external dso_local global ptr, section ".data..percpu", align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1, !dbg !12
@__tracepoint_x86_fpu_regs_activated = external dso_local global %struct.tracepoint, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"arch/x86/include/asm/trace/fpu.h\00", align 1, !dbg !17
@trace_x86_fpu_regs_activated.__UNIQUE_ID___addressable___SCK__tp_func_x86_fpu_regs_activated356 = internal global ptr @__SCK__tp_func_x86_fpu_regs_activated, section ".discard.addressable", align 8, !dbg !23
@__SCK__tp_func_x86_fpu_regs_activated = external dso_local global %struct.static_call_key, align 8
@trace_x86_fpu_regs_activated.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace357 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !4193
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@__fpu_state_size_dynamic = external dso_local global %struct.static_key_false, align 8
@mxcsr_feature_mask = external dso_local global i32, align 4
@fpu_kernel_cfg = external dso_local global %struct.fpu_state_config, align 8
@__tracepoint_x86_fpu_xstate_check_failed = external dso_local global %struct.tracepoint, align 8
@trace_x86_fpu_xstate_check_failed.__UNIQUE_ID___addressable___SCK__tp_func_x86_fpu_xstate_check_failed404 = internal global ptr @__SCK__tp_func_x86_fpu_xstate_check_failed, section ".discard.addressable", align 8, !dbg !4195
@__SCK__tp_func_x86_fpu_xstate_check_failed = external dso_local global %struct.static_call_key, align 8
@trace_x86_fpu_xstate_check_failed.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace405 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !4221
@xfd_state = external dso_local global i64, section ".data..percpu", align 8
@__tracepoint_write_msr = external dso_local global %struct.tracepoint, align 8
@init_fpstate = external dso_local global %struct.fpstate, align 64
@alternatives_patched = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"arch/x86/kernel/fpu/xstate.h\00", align 1, !dbg !4223
@llvm.compiler.used = appending global [4 x ptr] [ptr @trace_x86_fpu_regs_activated.__UNIQUE_ID___addressable___SCK__tp_func_x86_fpu_regs_activated356, ptr @trace_x86_fpu_regs_activated.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace357, ptr @trace_x86_fpu_xstate_check_failed.__UNIQUE_ID___addressable___SCK__tp_func_x86_fpu_xstate_check_failed404, ptr @trace_x86_fpu_xstate_check_failed.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace405], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @copy_fpstate_to_sigframe(ptr noundef %buf, ptr noundef %buf_fx, i32 noundef %size, i32 noundef %pkru) #0 align 16 !dbg !4262 {
entry:
  %retval = alloca i1, align 1
  %buf.addr = alloca ptr, align 8
  %buf_fx.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %pkru.addr = alloca i32, align 4
  %tsk = alloca ptr, align 8
  %fpstate = alloca ptr, align 8
  %ia32_fxstate = alloca i8, align 1
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %xbuf = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4266, metadata !DIExpression()), !dbg !4278
  store ptr %buf_fx, ptr %buf_fx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf_fx.addr, metadata !4267, metadata !DIExpression()), !dbg !4279
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4268, metadata !DIExpression()), !dbg !4280
  store i32 %pkru, ptr %pkru.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pkru.addr, metadata !4269, metadata !DIExpression()), !dbg !4281
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsk) #14, !dbg !4282
  call void @llvm.dbg.declare(metadata ptr %tsk, metadata !4270, metadata !DIExpression()), !dbg !4283
  %call = call ptr @get_current() #15, !dbg !4284
  store ptr %call, ptr %tsk, align 8, !dbg !4283
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpstate) #14, !dbg !4285
  call void @llvm.dbg.declare(metadata ptr %fpstate, metadata !4271, metadata !DIExpression()), !dbg !4286
  %0 = load ptr, ptr %tsk, align 8, !dbg !4287
  %thread = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 197, !dbg !4288
  %fpu = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !4289
  %fpstate1 = getelementptr inbounds %struct.fpu, ptr %fpu, i32 0, i32 2, !dbg !4290
  %1 = load ptr, ptr %fpstate1, align 16, !dbg !4290
  store ptr %1, ptr %fpstate, align 8, !dbg !4286
  call void @llvm.lifetime.start.p0(i64 1, ptr %ia32_fxstate) #14, !dbg !4291
  call void @llvm.dbg.declare(metadata ptr %ia32_fxstate, metadata !4272, metadata !DIExpression()), !dbg !4292
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4293
  %3 = load ptr, ptr %buf_fx.addr, align 8, !dbg !4294
  %cmp = icmp ne ptr %2, %3, !dbg !4295
  %frombool = zext i1 %cmp to i8, !dbg !4292
  store i8 %frombool, ptr %ia32_fxstate, align 1, !dbg !4292
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !4296
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4273, metadata !DIExpression()), !dbg !4297
  %4 = load i8, ptr %ia32_fxstate, align 1, !dbg !4298, !range !4299, !noundef !719
  %tobool = trunc i8 %4 to i1, !dbg !4298
  %conv = zext i1 %tobool to i32, !dbg !4298
  %and = and i32 %conv, 1, !dbg !4298
  %tobool2 = icmp ne i32 %and, 0, !dbg !4298
  %frombool3 = zext i1 %tobool2 to i8, !dbg !4298
  store i8 %frombool3, ptr %ia32_fxstate, align 1, !dbg !4298
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !4300
  %6 = load i32, ptr %size.addr, align 4, !dbg !4300
  %conv4 = sext i32 %6 to i64, !dbg !4300
  %call5 = call zeroext i1 @__access_ok(ptr noundef %5, i64 noundef %conv4) #15, !dbg !4300
  %lnot = xor i1 %call5, true, !dbg !4300
  %lnot6 = xor i1 %lnot, true, !dbg !4300
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4300
  %conv7 = sext i32 %lnot.ext to i64, !dbg !4300
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 1), !dbg !4300
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4300
  br i1 %tobool8, label %if.end, label %if.then, !dbg !4302

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !4303

if.end:                                           ; preds = %entry
  %call9 = call zeroext i1 @use_xsave() #16, !dbg !4304
  br i1 %call9, label %if.then10, label %if.end15, !dbg !4305

if.then10:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %xbuf) #14, !dbg !4306
  call void @llvm.dbg.declare(metadata ptr %xbuf, metadata !4274, metadata !DIExpression()), !dbg !4307
  %7 = load ptr, ptr %buf_fx.addr, align 8, !dbg !4308
  store ptr %7, ptr %xbuf, align 8, !dbg !4307
  %8 = load ptr, ptr %xbuf, align 8, !dbg !4309
  %header = getelementptr inbounds %struct.xregs_state, ptr %8, i32 0, i32 1, !dbg !4311
  %call11 = call i64 @__clear_user(ptr noundef %header, i64 noundef 64) #15, !dbg !4312
  %tobool12 = icmp ne i64 %call11, 0, !dbg !4312
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4313

if.then13:                                        ; preds = %if.then10
  store i1 false, ptr %retval, align 1, !dbg !4314
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4314

if.end14:                                         ; preds = %if.then10
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4315
  br label %cleanup, !dbg !4315

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %xbuf) #14, !dbg !4315
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup44 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end15, !dbg !4316

if.end15:                                         ; preds = %cleanup.cont, %if.end
  br label %retry, !dbg !4317

retry:                                            ; preds = %if.then27, %if.end15
  call void @llvm.dbg.label(metadata !4277), !dbg !4318
  call void @fpregs_lock() #15, !dbg !4319
  %call16 = call ptr @get_current() #15, !dbg !4320
  %call17 = call i32 @test_ti_thread_flag(ptr noundef %call16, i32 noundef 14) #15, !dbg !4320
  %tobool18 = icmp ne i32 %call17, 0, !dbg !4320
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !4322

if.then19:                                        ; preds = %retry
  call void @fpregs_restore_userregs() #15, !dbg !4323
  br label %if.end20, !dbg !4323

if.end20:                                         ; preds = %if.then19, %retry
  call void @pagefault_disable() #15, !dbg !4324
  %9 = load ptr, ptr %buf_fx.addr, align 8, !dbg !4325
  %10 = load i32, ptr %pkru.addr, align 4, !dbg !4326
  %call21 = call i32 @copy_fpregs_to_sigframe(ptr noundef %9, i32 noundef %10) #15, !dbg !4327
  store i32 %call21, ptr %ret, align 4, !dbg !4328
  call void @pagefault_enable() #15, !dbg !4329
  call void @fpregs_unlock() #15, !dbg !4330
  %11 = load i32, ptr %ret, align 4, !dbg !4331
  %tobool22 = icmp ne i32 %11, 0, !dbg !4331
  br i1 %tobool22, label %if.then23, label %if.end29, !dbg !4333

if.then23:                                        ; preds = %if.end20
  %12 = load ptr, ptr %buf_fx.addr, align 8, !dbg !4334
  %13 = load ptr, ptr %fpstate, align 8, !dbg !4337
  %user_size = getelementptr inbounds %struct.fpstate, ptr %13, i32 0, i32 1, !dbg !4338
  %14 = load i32, ptr %user_size, align 4, !dbg !4338
  %conv24 = zext i32 %14 to i64, !dbg !4337
  %call25 = call i64 @__clear_user(ptr noundef %12, i64 noundef %conv24) #15, !dbg !4339
  %tobool26 = icmp ne i64 %call25, 0, !dbg !4339
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !4340

if.then27:                                        ; preds = %if.then23
  br label %retry, !dbg !4341

if.end28:                                         ; preds = %if.then23
  store i1 false, ptr %retval, align 1, !dbg !4342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !4342

if.end29:                                         ; preds = %if.end20
  %15 = load i8, ptr %ia32_fxstate, align 1, !dbg !4343, !range !4299, !noundef !719
  %tobool30 = trunc i8 %15 to i1, !dbg !4343
  br i1 %tobool30, label %land.lhs.true, label %lor.lhs.false, !dbg !4345

lor.lhs.false:                                    ; preds = %if.end29
  %call32 = call zeroext i1 @use_fxsr() #16, !dbg !4346
  br i1 %call32, label %if.end35, label %land.lhs.true, !dbg !4347

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end29
  %16 = load ptr, ptr %tsk, align 8, !dbg !4348
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !4349
  %call33 = call zeroext i1 @save_fsave_header(ptr noundef %16, ptr noundef %17) #15, !dbg !4350
  br i1 %call33, label %if.end35, label %if.then34, !dbg !4351

if.then34:                                        ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !4352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !4352

if.end35:                                         ; preds = %land.lhs.true, %lor.lhs.false
  %call36 = call zeroext i1 @use_fxsr() #16, !dbg !4353
  br i1 %call36, label %land.lhs.true38, label %if.end43, !dbg !4355

land.lhs.true38:                                  ; preds = %if.end35
  %18 = load ptr, ptr %buf_fx.addr, align 8, !dbg !4356
  %19 = load i8, ptr %ia32_fxstate, align 1, !dbg !4357, !range !4299, !noundef !719
  %tobool39 = trunc i8 %19 to i1, !dbg !4357
  %conv40 = zext i1 %tobool39 to i32, !dbg !4357
  %20 = load ptr, ptr %fpstate, align 8, !dbg !4358
  %call41 = call zeroext i1 @save_xstate_epilog(ptr noundef %18, i32 noundef %conv40, ptr noundef %20) #15, !dbg !4359
  br i1 %call41, label %if.end43, label %if.then42, !dbg !4360

if.then42:                                        ; preds = %land.lhs.true38
  store i1 false, ptr %retval, align 1, !dbg !4361
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !4361

if.end43:                                         ; preds = %land.lhs.true38, %if.end35
  store i1 true, ptr %retval, align 1, !dbg !4362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup44, !dbg !4362

cleanup44:                                        ; preds = %if.end43, %if.then42, %if.then34, %if.end28, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !4363
  call void @llvm.lifetime.end.p0(i64 1, ptr %ia32_fxstate) #14, !dbg !4363
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpstate) #14, !dbg !4363
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsk) #14, !dbg !4363
  %21 = load i1, ptr %retval, align 1, !dbg !4363
  ret i1 %21, !dbg !4363
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #3 align 16 !dbg !4364 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !4375
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4369, metadata !DIExpression()), !dbg !4375
  br label %do.body, !dbg !4375

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !4376
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4371, metadata !DIExpression()), !dbg !4376
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4376
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4376
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !4375
  br label %do.cond, !dbg !4376

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4376

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !4377
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4373, metadata !DIExpression()), !dbg !4377
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #17, !dbg !4377, !srcloc !4378
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4377
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4377
  %3 = inttoptr i64 %2 to ptr, !dbg !4377
  store ptr %3, ptr %tmp, align 8, !dbg !4377
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !4375
  %4 = load ptr, ptr %tmp, align 8, !dbg !4377
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4375
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4375
  store ptr %5, ptr %tmp1, align 8, !dbg !4375
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !4379
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4375
  ret ptr %6, !dbg !4380
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__access_ok(ptr noundef %ptr, i64 noundef %size) #4 align 16 !dbg !4381 {
entry:
  %retval = alloca i1, align 1
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %sum = alloca i64, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4386, metadata !DIExpression()), !dbg !4391
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4387, metadata !DIExpression()), !dbg !4392
  %0 = load i64, ptr %size.addr, align 8, !dbg !4393
  %cmp = icmp ule i64 %0, 4096, !dbg !4394
  %conv = zext i1 %cmp to i32, !dbg !4394
  %1 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4395
  br i1 %1, label %land.lhs.true, label %if.else, !dbg !4396

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4397
  %cmp1 = icmp ule i64 %2, 4096, !dbg !4398
  br i1 %cmp1, label %if.then, label %if.else, !dbg !4399

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %ptr.addr, align 8, !dbg !4400
  %4 = ptrtoint ptr %3 to i64, !dbg !4400
  %cmp3 = icmp sge i64 %4, 0, !dbg !4400
  store i1 %cmp3, ptr %retval, align 1, !dbg !4402
  br label %return, !dbg !4402

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %sum) #14, !dbg !4403
  call void @llvm.dbg.declare(metadata ptr %sum, metadata !4388, metadata !DIExpression()), !dbg !4404
  %5 = load i64, ptr %size.addr, align 8, !dbg !4405
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !4406
  %7 = ptrtoint ptr %6 to i64, !dbg !4407
  %add = add i64 %5, %7, !dbg !4408
  store i64 %add, ptr %sum, align 8, !dbg !4404
  %8 = load i64, ptr %sum, align 8, !dbg !4409
  %cmp5 = icmp sge i64 %8, 0, !dbg !4409
  br i1 %cmp5, label %land.rhs, label %land.end, !dbg !4410

land.rhs:                                         ; preds = %if.else
  %9 = load i64, ptr %sum, align 8, !dbg !4411
  %10 = load ptr, ptr %ptr.addr, align 8, !dbg !4412
  %11 = ptrtoint ptr %10 to i64, !dbg !4413
  %cmp7 = icmp uge i64 %9, %11, !dbg !4414
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else
  %12 = phi i1 [ false, %if.else ], [ %cmp7, %land.rhs ], !dbg !4415
  store i1 %12, ptr %retval, align 1, !dbg !4416
  call void @llvm.lifetime.end.p0(i64 8, ptr %sum) #14, !dbg !4417
  br label %return

return:                                           ; preds = %land.end, %if.then
  %13 = load i1, ptr %retval, align 1, !dbg !4418
  ret i1 %13, !dbg !4418
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read)
define internal zeroext i1 @use_xsave() #6 align 16 !dbg !4419 {
entry:
  %call = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 154) #15, !dbg !4421
  ret i1 %call, !dbg !4422
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__clear_user(ptr noundef %addr, i64 noundef %size) #3 align 16 !dbg !4423 {
entry:
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4427, metadata !DIExpression()), !dbg !4429
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4428, metadata !DIExpression()), !dbg !4430
  call void @might_fault() #15, !dbg !4431
  call void @stac() #15, !dbg !4432
  %0 = load i64, ptr %size.addr, align 8, !dbg !4433
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4433
  %2 = call i64 @llvm.read_register.i64(metadata !4252), !dbg !4433
  %3 = call { i64, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldnstr\0A661:\0A\09rep stosb\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (((1 << 0) << 16) $| ((12*32+11)))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call rep_stos_alternative\0A6651:\0A.popsection\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={rsp},{ax},0,1,{rsp},~{dirflag},~{fpsr},~{flags}"(i32 0, i64 %0, ptr %1, i64 %2) #14, !dbg !4433, !srcloc !4434
  %asmresult = extractvalue { i64, ptr, i64 } %3, 0, !dbg !4433
  %asmresult1 = extractvalue { i64, ptr, i64 } %3, 1, !dbg !4433
  %asmresult2 = extractvalue { i64, ptr, i64 } %3, 2, !dbg !4433
  store i64 %asmresult, ptr %size.addr, align 8, !dbg !4433
  store ptr %asmresult1, ptr %addr.addr, align 8, !dbg !4433
  call void @llvm.write_register.i64(metadata !4252, i64 %asmresult2), !dbg !4433
  call void @clac() #15, !dbg !4435
  %4 = load i64, ptr %size.addr, align 8, !dbg !4436
  ret i64 %4, !dbg !4437
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fpregs_lock() #4 align 16 !dbg !4438 {
entry:
  call void @local_bh_disable() #15, !dbg !4440
  ret void, !dbg !4442
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @test_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #4 align 16 !dbg !4443 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !4448, metadata !DIExpression()), !dbg !4450
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !4449, metadata !DIExpression()), !dbg !4451
  %0 = load i32, ptr %flag.addr, align 4, !dbg !4452
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4452
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !4452

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ti.addr, align 8, !dbg !4452
  %flags = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 0, !dbg !4452
  %3 = ptrtoint ptr %flags to i64, !dbg !4452
  %cmp = icmp ne i64 %3, 0, !dbg !4452
  %conv = zext i1 %cmp to i32, !dbg !4452
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4452
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !4452

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load ptr, ptr %ti.addr, align 8, !dbg !4452
  %flags2 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 0, !dbg !4452
  %6 = ptrtoint ptr %flags2 to i64, !dbg !4452
  %cmp3 = icmp ne i64 %6, 0, !dbg !4452
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !4452

land.lhs.true5:                                   ; preds = %land.lhs.true1
  %7 = load ptr, ptr %ti.addr, align 8, !dbg !4452
  %flags6 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 0, !dbg !4452
  %8 = load i64, ptr %flags6, align 8, !dbg !4452
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !4452
  br i1 %9, label %cond.true, label %cond.false, !dbg !4452

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load i32, ptr %flag.addr, align 4, !dbg !4452
  %conv7 = sext i32 %10 to i64, !dbg !4452
  %11 = load ptr, ptr %ti.addr, align 8, !dbg !4452
  %flags8 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 0, !dbg !4452
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv7, ptr noundef %flags8) #15, !dbg !4452
  %conv9 = zext i1 %call to i32, !dbg !4452
  br label %cond.end, !dbg !4452

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %flag.addr, align 4, !dbg !4452
  %conv10 = sext i32 %12 to i64, !dbg !4452
  %13 = load ptr, ptr %ti.addr, align 8, !dbg !4452
  %flags11 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 0, !dbg !4452
  %call12 = call zeroext i1 @_test_bit(i64 noundef %conv10, ptr noundef %flags11) #15, !dbg !4452
  %conv13 = zext i1 %call12 to i32, !dbg !4452
  br label %cond.end, !dbg !4452

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv9, %cond.true ], [ %conv13, %cond.false ], !dbg !4452
  ret i32 %cond, !dbg !4453
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fpregs_restore_userregs() #4 align 16 !dbg !4454 {
entry:
  %fpu = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp26 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpu) #14, !dbg !4471
  call void @llvm.dbg.declare(metadata ptr %fpu, metadata !4456, metadata !DIExpression()), !dbg !4472
  %call = call ptr @get_current() #15, !dbg !4473
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !4474
  %fpu1 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !4475
  store ptr %fpu1, ptr %fpu, align 8, !dbg !4472
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #14, !dbg !4476
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4457, metadata !DIExpression()), !dbg !4477
  call void @__this_cpu_preempt_check(ptr noundef @.str) #15, !dbg !4478
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !4479
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4458, metadata !DIExpression()), !dbg !4479
  br label %do.body, !dbg !4479

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !4480
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4461, metadata !DIExpression()), !dbg !4480
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4480
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4480
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !4479
  br label %do.cond, !dbg !4480

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4480

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !4481
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4463, metadata !DIExpression()), !dbg !4481
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #18, !dbg !4481, !srcloc !4482
  store i32 %1, ptr %pfo_val__, align 4, !dbg !4481
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !4481
  %conv = zext i32 %2 to i64, !dbg !4481
  %conv3 = trunc i64 %conv to i32, !dbg !4481
  store i32 %conv3, ptr %tmp2, align 4, !dbg !4481
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !4479
  %3 = load i32, ptr %tmp2, align 4, !dbg !4481
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !4479
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !4479
  store i32 %4, ptr %tmp4, align 4, !dbg !4479
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !4478
  %5 = load i32, ptr %tmp4, align 4, !dbg !4479
  store i32 %5, ptr %tmp, align 4, !dbg !4478
  %6 = load i32, ptr %tmp, align 4, !dbg !4478
  store i32 %6, ptr %cpu, align 4, !dbg !4477
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !4483
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4465, metadata !DIExpression()), !dbg !4483
  %call5 = call ptr @get_current() #15, !dbg !4483
  %flags = getelementptr inbounds %struct.task_struct, ptr %call5, i32 0, i32 4, !dbg !4483
  %7 = load i32, ptr %flags, align 4, !dbg !4483
  %and = and i32 %7, 2113536, !dbg !4483
  %tobool = icmp ne i32 %and, 0, !dbg !4483
  %lnot = xor i1 %tobool, true, !dbg !4483
  %lnot6 = xor i1 %lnot, true, !dbg !4483
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !4483
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4483
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !4484
  %tobool7 = icmp ne i32 %8, 0, !dbg !4484
  %lnot8 = xor i1 %tobool7, true, !dbg !4484
  %lnot10 = xor i1 %lnot8, true, !dbg !4484
  %lnot.ext11 = zext i1 %lnot10 to i32, !dbg !4484
  %conv12 = sext i32 %lnot.ext11 to i64, !dbg !4484
  %expval = call i64 @llvm.expect.i64(i64 %conv12, i64 0), !dbg !4484
  %tobool13 = icmp ne i64 %expval, 0, !dbg !4484
  br i1 %tobool13, label %if.then, label %if.end, !dbg !4483

if.then:                                          ; preds = %do.end
  br label %do.body14, !dbg !4484

do.body14:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !4485
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4468, metadata !DIExpression()), !dbg !4485
  store i32 2307, ptr %__flags, align 4, !dbg !4485
  br label %do.body15, !dbg !4485

do.body15:                                        ; preds = %do.body14
  br label %do.cond16, !dbg !4486

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4486

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !4485

do.body18:                                        ; preds = %do.end17
  %9 = load i32, ptr %__flags, align 4, !dbg !4488
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 59, i32 %9, i64 12) #14, !dbg !4488, !srcloc !4490
  br label %do.cond19, !dbg !4488

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !4488

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !4485

do.body21:                                        ; preds = %do.end20
  br label %do.cond22, !dbg !4491

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !4491

do.end23:                                         ; preds = %do.cond22
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !4484
  br label %do.cond24, !dbg !4485

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !4485

do.end25:                                         ; preds = %do.cond24
  br label %if.end, !dbg !4485

if.end:                                           ; preds = %do.end25, %do.end
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !4483
  %tobool27 = icmp ne i32 %10, 0, !dbg !4483
  %lnot28 = xor i1 %tobool27, true, !dbg !4483
  %lnot30 = xor i1 %lnot28, true, !dbg !4483
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !4483
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !4483
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !4483
  store i64 %expval33, ptr %tmp26, align 8, !dbg !4484
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !4493
  %11 = load i64, ptr %tmp26, align 8, !dbg !4483
  %tobool34 = icmp ne i64 %11, 0, !dbg !4493
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !4494

if.then35:                                        ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4495

if.end36:                                         ; preds = %if.end
  %12 = load ptr, ptr %fpu, align 8, !dbg !4496
  %13 = load i32, ptr %cpu, align 4, !dbg !4498
  %call37 = call i32 @fpregs_state_valid(ptr noundef %12, i32 noundef %13) #15, !dbg !4499
  %tobool38 = icmp ne i32 %call37, 0, !dbg !4499
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !4500

if.then39:                                        ; preds = %if.end36
  %14 = load ptr, ptr %fpu, align 8, !dbg !4501
  %fpstate = getelementptr inbounds %struct.fpu, ptr %14, i32 0, i32 2, !dbg !4503
  %15 = load ptr, ptr %fpstate, align 16, !dbg !4503
  call void @restore_fpregs_from_fpstate(ptr noundef %15, i64 noundef 396543) #15, !dbg !4504
  %16 = load ptr, ptr %fpu, align 8, !dbg !4505
  call void @fpregs_activate(ptr noundef %16) #15, !dbg !4506
  %17 = load i32, ptr %cpu, align 4, !dbg !4507
  %18 = load ptr, ptr %fpu, align 8, !dbg !4508
  %last_cpu = getelementptr inbounds %struct.fpu, ptr %18, i32 0, i32 0, !dbg !4509
  store i32 %17, ptr %last_cpu, align 64, !dbg !4510
  br label %if.end40, !dbg !4511

if.end40:                                         ; preds = %if.then39, %if.end36
  %call41 = call ptr @get_current() #15, !dbg !4512
  call void @clear_ti_thread_flag(ptr noundef %call41, i32 noundef 14) #15, !dbg !4512
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4513
  br label %cleanup, !dbg !4513

cleanup:                                          ; preds = %if.end40, %if.then35
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #14, !dbg !4513
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpu) #14, !dbg !4513
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4513

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disable() #4 align 16 !dbg !4514 {
entry:
  call void @pagefault_disabled_inc() #15, !dbg !4516
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !4517, !srcloc !4518
  ret void, !dbg !4519
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @copy_fpregs_to_sigframe(ptr noundef %buf, i32 noundef %pkru) #4 align 16 !dbg !4520 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %pkru.addr = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4524, metadata !DIExpression()), !dbg !4526
  store i32 %pkru, ptr %pkru.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pkru.addr, metadata !4525, metadata !DIExpression()), !dbg !4527
  %call = call zeroext i1 @use_xsave() #16, !dbg !4528
  br i1 %call, label %if.then, label %if.end, !dbg !4530

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4531
  %call1 = call i32 @xsave_to_user_sigframe(ptr noundef %0) #15, !dbg !4532
  store i32 %call1, ptr %retval, align 4, !dbg !4533
  br label %return, !dbg !4533

if.end:                                           ; preds = %entry
  %call2 = call zeroext i1 @use_fxsr() #16, !dbg !4534
  br i1 %call2, label %if.then3, label %if.else, !dbg !4536

if.then3:                                         ; preds = %if.end
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4537
  %call4 = call i32 @fxsave_to_user_sigframe(ptr noundef %1) #15, !dbg !4538
  store i32 %call4, ptr %retval, align 4, !dbg !4539
  br label %return, !dbg !4539

if.else:                                          ; preds = %if.end
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4540
  %call5 = call i32 @fnsave_to_user_sigframe(ptr noundef %2) #15, !dbg !4541
  store i32 %call5, ptr %retval, align 4, !dbg !4542
  br label %return, !dbg !4542

return:                                           ; preds = %if.else, %if.then3, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !4543
  ret i32 %3, !dbg !4543
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_enable() #4 align 16 !dbg !4544 {
entry:
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !4545, !srcloc !4546
  call void @pagefault_disabled_dec() #15, !dbg !4547
  ret void, !dbg !4548
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fpregs_unlock() #4 align 16 !dbg !4549 {
entry:
  call void @local_bh_enable() #15, !dbg !4550
  ret void, !dbg !4552
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read)
define internal zeroext i1 @use_fxsr() #6 align 16 !dbg !4553 {
entry:
  ret i1 true, !dbg !4554
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @save_fsave_header(ptr noundef %tsk, ptr noundef %buf) #4 align 16 !dbg !4555 {
entry:
  %retval = alloca i1, align 1
  %tsk.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %xsave = alloca ptr, align 8
  %env = alloca %struct.user_i387_ia32_struct, align 4
  %fp = alloca ptr, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i16, align 2
  %__x = alloca i16, align 2
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__ret_pu13 = alloca i32, align 4
  %__ptr_pu14 = alloca ptr, align 8
  %__val_pu15 = alloca i16, align 2
  %__x16 = alloca i16, align 2
  %__ptr17 = alloca ptr, align 8
  %tmp20 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %fp28 = alloca ptr, align 8
  %swd29 = alloca i32, align 4
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp35 = alloca i32, align 4
  %tmp37 = alloca i64, align 8
  %__ret_pu42 = alloca i32, align 4
  %__ptr_pu43 = alloca ptr, align 8
  %__val_pu44 = alloca i32, align 4
  %__x45 = alloca i32, align 4
  %__ptr46 = alloca ptr, align 8
  %tmp50 = alloca i64, align 8
  store ptr %tsk, ptr %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tsk.addr, metadata !4559, metadata !DIExpression()), !dbg !4666
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4560, metadata !DIExpression()), !dbg !4667
  %call = call zeroext i1 @use_fxsr() #16, !dbg !4668
  br i1 %call, label %if.then, label %if.else, !dbg !4669

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %xsave) #14, !dbg !4670
  call void @llvm.dbg.declare(metadata ptr %xsave, metadata !4561, metadata !DIExpression()), !dbg !4671
  %0 = load ptr, ptr %tsk.addr, align 8, !dbg !4672
  %thread = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 197, !dbg !4673
  %fpu = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !4674
  %fpstate = getelementptr inbounds %struct.fpu, ptr %fpu, i32 0, i32 2, !dbg !4675
  %1 = load ptr, ptr %fpstate, align 16, !dbg !4675
  %regs = getelementptr inbounds %struct.fpstate, ptr %1, i32 0, i32 7, !dbg !4676
  store ptr %regs, ptr %xsave, align 8, !dbg !4671
  call void @llvm.lifetime.start.p0(i64 108, ptr %env) #14, !dbg !4677
  call void @llvm.dbg.declare(metadata ptr %env, metadata !4564, metadata !DIExpression()), !dbg !4678
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp) #14, !dbg !4679
  call void @llvm.dbg.declare(metadata ptr %fp, metadata !4576, metadata !DIExpression()), !dbg !4680
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !4681
  store ptr %2, ptr %fp, align 8, !dbg !4680
  call void @fpregs_lock() #15, !dbg !4682
  %call1 = call ptr @get_current() #15, !dbg !4683
  %call2 = call i32 @test_ti_thread_flag(ptr noundef %call1, i32 noundef 14) #15, !dbg !4683
  %tobool = icmp ne i32 %call2, 0, !dbg !4683
  br i1 %tobool, label %if.end, label %if.then3, !dbg !4685

if.then3:                                         ; preds = %if.then
  %3 = load ptr, ptr %tsk.addr, align 8, !dbg !4686
  %thread4 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 197, !dbg !4687
  %fpu5 = getelementptr inbounds %struct.thread_struct, ptr %thread4, i32 0, i32 19, !dbg !4688
  %fpstate6 = getelementptr inbounds %struct.fpu, ptr %fpu5, i32 0, i32 2, !dbg !4689
  %4 = load ptr, ptr %fpstate6, align 16, !dbg !4689
  %regs7 = getelementptr inbounds %struct.fpstate, ptr %4, i32 0, i32 7, !dbg !4690
  call void @fxsave(ptr noundef %regs7) #15, !dbg !4691
  br label %if.end, !dbg !4691

if.end:                                           ; preds = %if.then3, %if.then
  call void @fpregs_unlock() #15, !dbg !4692
  %5 = load ptr, ptr %tsk.addr, align 8, !dbg !4693
  call void @convert_from_fxsr(ptr noundef %env, ptr noundef %5) #15, !dbg !4694
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !4695
  %call8 = call i64 @__copy_to_user(ptr noundef %6, ptr noundef %env, i64 noundef 108) #15, !dbg !4696
  %tobool9 = icmp ne i64 %call8, 0, !dbg !4696
  br i1 %tobool9, label %if.then24, label %lor.lhs.false, !dbg !4697

lor.lhs.false:                                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #14, !dbg !4698
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !4637, metadata !DIExpression()), !dbg !4698
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #14, !dbg !4698
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !4640, metadata !DIExpression()), !dbg !4698
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val_pu) #14, !dbg !4698
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !4641, metadata !DIExpression()), !dbg !4698
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x) #14, !dbg !4698
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !4642, metadata !DIExpression()), !dbg !4698
  %7 = load ptr, ptr %xsave, align 8, !dbg !4698
  %i387 = getelementptr inbounds %struct.xregs_state, ptr %7, i32 0, i32 0, !dbg !4698
  %swd = getelementptr inbounds %struct.fxregs_state, ptr %i387, i32 0, i32 1, !dbg !4698
  %8 = load i16, ptr %swd, align 2, !dbg !4698
  store i16 %8, ptr %__x, align 2, !dbg !4698
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !4698
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4643, metadata !DIExpression()), !dbg !4698
  %9 = load ptr, ptr %fp, align 8, !dbg !4698
  %status = getelementptr inbounds %struct._fpstate_32, ptr %9, i32 0, i32 8, !dbg !4698
  store ptr %status, ptr %__ptr, align 8, !dbg !4698
  %10 = load ptr, ptr %__ptr, align 8, !dbg !4698
  store ptr %10, ptr %__ptr_pu, align 8, !dbg !4698
  %11 = load i16, ptr %__x, align 2, !dbg !4698
  store i16 %11, ptr %__val_pu, align 2, !dbg !4698
  %12 = call i64 @llvm.read_register.i64(metadata !4252), !dbg !4698
  %13 = load ptr, ptr %__ptr_pu, align 8, !dbg !4698
  %14 = load i16, ptr %__val_pu, align 2, !dbg !4698
  %15 = call { ptr, i64 } asm sideeffect "call __put_user_nocheck_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %13, i16 %14, i64 2, i64 %12) #14, !dbg !4698, !srcloc !4699
  %asmresult = extractvalue { ptr, i64 } %15, 0, !dbg !4698
  %asmresult10 = extractvalue { ptr, i64 } %15, 1, !dbg !4698
  %16 = ptrtoint ptr %asmresult to i64, !dbg !4698
  %17 = trunc i64 %16 to i32, !dbg !4698
  store i32 %17, ptr %__ret_pu, align 4, !dbg !4698
  call void @llvm.write_register.i64(metadata !4252, i64 %asmresult10), !dbg !4698
  %18 = load ptr, ptr %__ptr, align 8, !dbg !4700
  call void @kmsan_copy_to_user(ptr noundef %18, ptr noundef %__x, i64 noundef 2, i64 noundef 0) #15, !dbg !4700
  %19 = load i32, ptr %__ret_pu, align 4, !dbg !4698
  %conv = sext i32 %19 to i64, !dbg !4698
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4698
  store i64 %expval, ptr %tmp, align 8, !dbg !4698
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !4702
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x) #14, !dbg !4702
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val_pu) #14, !dbg !4702
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #14, !dbg !4702
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #14, !dbg !4702
  %20 = load i64, ptr %tmp, align 8, !dbg !4698
  %tobool11 = icmp ne i64 %20, 0, !dbg !4702
  br i1 %tobool11, label %if.then24, label %lor.lhs.false12, !dbg !4703

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu13) #14, !dbg !4704
  call void @llvm.dbg.declare(metadata ptr %__ret_pu13, metadata !4645, metadata !DIExpression()), !dbg !4704
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu14) #14, !dbg !4704
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu14, metadata !4647, metadata !DIExpression()), !dbg !4704
  call void @llvm.lifetime.start.p0(i64 2, ptr %__val_pu15) #14, !dbg !4704
  call void @llvm.dbg.declare(metadata ptr %__val_pu15, metadata !4648, metadata !DIExpression()), !dbg !4704
  call void @llvm.lifetime.start.p0(i64 2, ptr %__x16) #14, !dbg !4704
  call void @llvm.dbg.declare(metadata ptr %__x16, metadata !4649, metadata !DIExpression()), !dbg !4704
  store i16 0, ptr %__x16, align 2, !dbg !4704
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr17) #14, !dbg !4704
  call void @llvm.dbg.declare(metadata ptr %__ptr17, metadata !4650, metadata !DIExpression()), !dbg !4704
  %21 = load ptr, ptr %fp, align 8, !dbg !4704
  %magic = getelementptr inbounds %struct._fpstate_32, ptr %21, i32 0, i32 9, !dbg !4704
  store ptr %magic, ptr %__ptr17, align 8, !dbg !4704
  %22 = load ptr, ptr %__ptr17, align 8, !dbg !4704
  store ptr %22, ptr %__ptr_pu14, align 8, !dbg !4704
  %23 = load i16, ptr %__x16, align 2, !dbg !4704
  store i16 %23, ptr %__val_pu15, align 2, !dbg !4704
  %24 = call i64 @llvm.read_register.i64(metadata !4252), !dbg !4704
  %25 = load ptr, ptr %__ptr_pu14, align 8, !dbg !4704
  %26 = load i16, ptr %__val_pu15, align 2, !dbg !4704
  %27 = call { ptr, i64 } asm sideeffect "call __put_user_nocheck_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %25, i16 %26, i64 2, i64 %24) #14, !dbg !4704, !srcloc !4705
  %asmresult18 = extractvalue { ptr, i64 } %27, 0, !dbg !4704
  %asmresult19 = extractvalue { ptr, i64 } %27, 1, !dbg !4704
  %28 = ptrtoint ptr %asmresult18 to i64, !dbg !4704
  %29 = trunc i64 %28 to i32, !dbg !4704
  store i32 %29, ptr %__ret_pu13, align 4, !dbg !4704
  call void @llvm.write_register.i64(metadata !4252, i64 %asmresult19), !dbg !4704
  %30 = load ptr, ptr %__ptr17, align 8, !dbg !4706
  call void @kmsan_copy_to_user(ptr noundef %30, ptr noundef %__x16, i64 noundef 2, i64 noundef 0) #15, !dbg !4706
  %31 = load i32, ptr %__ret_pu13, align 4, !dbg !4704
  %conv21 = sext i32 %31 to i64, !dbg !4704
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !4704
  store i64 %expval22, ptr %tmp20, align 8, !dbg !4704
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr17) #14, !dbg !4708
  call void @llvm.lifetime.end.p0(i64 2, ptr %__x16) #14, !dbg !4708
  call void @llvm.lifetime.end.p0(i64 2, ptr %__val_pu15) #14, !dbg !4708
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu14) #14, !dbg !4708
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu13) #14, !dbg !4708
  %32 = load i64, ptr %tmp20, align 8, !dbg !4704
  %tobool23 = icmp ne i64 %32, 0, !dbg !4708
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !4709

if.then24:                                        ; preds = %lor.lhs.false12, %lor.lhs.false, %if.end
  store i1 false, ptr %retval, align 1, !dbg !4710
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4710

if.end25:                                         ; preds = %lor.lhs.false12
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4711
  br label %cleanup, !dbg !4711

cleanup:                                          ; preds = %if.end25, %if.then24
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp) #14, !dbg !4711
  call void @llvm.lifetime.end.p0(i64 108, ptr %env) #14, !dbg !4711
  call void @llvm.lifetime.end.p0(i64 8, ptr %xsave) #14, !dbg !4711
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end60, !dbg !4712

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %fp28) #14, !dbg !4713
  call void @llvm.dbg.declare(metadata ptr %fp28, metadata !4651, metadata !DIExpression()), !dbg !4714
  %33 = load ptr, ptr %buf.addr, align 8, !dbg !4715
  store ptr %33, ptr %fp28, align 8, !dbg !4714
  call void @llvm.lifetime.start.p0(i64 4, ptr %swd29) #14, !dbg !4716
  call void @llvm.dbg.declare(metadata ptr %swd29, metadata !4653, metadata !DIExpression()), !dbg !4717
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #14, !dbg !4718
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !4654, metadata !DIExpression()), !dbg !4718
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #14, !dbg !4718
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !4657, metadata !DIExpression()), !dbg !4718
  %34 = call i64 @llvm.read_register.i64(metadata !4252), !dbg !4718
  %35 = load ptr, ptr %fp28, align 8, !dbg !4718
  %swd30 = getelementptr inbounds %struct.fregs_state, ptr %35, i32 0, i32 1, !dbg !4718
  %36 = call { ptr, i32, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %swd30, i64 4, i64 %34) #14, !dbg !4718, !srcloc !4719
  %asmresult31 = extractvalue { ptr, i32, i64 } %36, 0, !dbg !4718
  %asmresult32 = extractvalue { ptr, i32, i64 } %36, 1, !dbg !4718
  %asmresult33 = extractvalue { ptr, i32, i64 } %36, 2, !dbg !4718
  %37 = ptrtoint ptr %asmresult31 to i64, !dbg !4718
  %38 = trunc i64 %37 to i32, !dbg !4718
  store i32 %38, ptr %__ret_gu, align 4, !dbg !4718
  store i32 %asmresult32, ptr %__val_gu, align 4, !dbg !4718
  call void @llvm.write_register.i64(metadata !4252, i64 %asmresult33), !dbg !4718
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #14, !dbg !4720
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !4658, metadata !DIExpression()), !dbg !4720
  %39 = load i32, ptr %__val_gu, align 4, !dbg !4720
  %conv34 = zext i32 %39 to i64, !dbg !4720
  store i64 %conv34, ptr %__tmp, align 8, !dbg !4720
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #15, !dbg !4720
  %40 = load i64, ptr %__tmp, align 8, !dbg !4720
  %conv36 = trunc i64 %40 to i32, !dbg !4720
  store i32 %conv36, ptr %__val_gu, align 4, !dbg !4720
  store i32 %conv36, ptr %tmp35, align 4, !dbg !4720
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #14, !dbg !4718
  %41 = load i32, ptr %tmp35, align 4, !dbg !4720
  %42 = load i32, ptr %__val_gu, align 4, !dbg !4718
  store i32 %42, ptr %swd29, align 4, !dbg !4718
  %43 = load i32, ptr %__ret_gu, align 4, !dbg !4718
  %conv38 = sext i32 %43 to i64, !dbg !4718
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0), !dbg !4718
  store i64 %expval39, ptr %tmp37, align 8, !dbg !4718
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #14, !dbg !4721
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #14, !dbg !4721
  %44 = load i64, ptr %tmp37, align 8, !dbg !4718
  %tobool40 = icmp ne i64 %44, 0, !dbg !4721
  br i1 %tobool40, label %if.then54, label %lor.lhs.false41, !dbg !4722

lor.lhs.false41:                                  ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu42) #14, !dbg !4723
  call void @llvm.dbg.declare(metadata ptr %__ret_pu42, metadata !4660, metadata !DIExpression()), !dbg !4723
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu43) #14, !dbg !4723
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu43, metadata !4662, metadata !DIExpression()), !dbg !4723
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu44) #14, !dbg !4723
  call void @llvm.dbg.declare(metadata ptr %__val_pu44, metadata !4663, metadata !DIExpression()), !dbg !4723
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x45) #14, !dbg !4723
  call void @llvm.dbg.declare(metadata ptr %__x45, metadata !4664, metadata !DIExpression()), !dbg !4723
  %45 = load i32, ptr %swd29, align 4, !dbg !4723
  store i32 %45, ptr %__x45, align 4, !dbg !4723
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr46) #14, !dbg !4723
  call void @llvm.dbg.declare(metadata ptr %__ptr46, metadata !4665, metadata !DIExpression()), !dbg !4723
  %46 = load ptr, ptr %fp28, align 8, !dbg !4723
  %status47 = getelementptr inbounds %struct.fregs_state, ptr %46, i32 0, i32 8, !dbg !4723
  store ptr %status47, ptr %__ptr46, align 8, !dbg !4723
  %47 = load ptr, ptr %__ptr46, align 8, !dbg !4723
  store ptr %47, ptr %__ptr_pu43, align 8, !dbg !4723
  %48 = load i32, ptr %__x45, align 4, !dbg !4723
  store i32 %48, ptr %__val_pu44, align 4, !dbg !4723
  %49 = call i64 @llvm.read_register.i64(metadata !4252), !dbg !4723
  %50 = load ptr, ptr %__ptr_pu43, align 8, !dbg !4723
  %51 = load i32, ptr %__val_pu44, align 4, !dbg !4723
  %52 = call { ptr, i64 } asm sideeffect "call __put_user_nocheck_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %50, i32 %51, i64 4, i64 %49) #14, !dbg !4723, !srcloc !4724
  %asmresult48 = extractvalue { ptr, i64 } %52, 0, !dbg !4723
  %asmresult49 = extractvalue { ptr, i64 } %52, 1, !dbg !4723
  %53 = ptrtoint ptr %asmresult48 to i64, !dbg !4723
  %54 = trunc i64 %53 to i32, !dbg !4723
  store i32 %54, ptr %__ret_pu42, align 4, !dbg !4723
  call void @llvm.write_register.i64(metadata !4252, i64 %asmresult49), !dbg !4723
  %55 = load ptr, ptr %__ptr46, align 8, !dbg !4725
  call void @kmsan_copy_to_user(ptr noundef %55, ptr noundef %__x45, i64 noundef 4, i64 noundef 0) #15, !dbg !4725
  %56 = load i32, ptr %__ret_pu42, align 4, !dbg !4723
  %conv51 = sext i32 %56 to i64, !dbg !4723
  %expval52 = call i64 @llvm.expect.i64(i64 %conv51, i64 0), !dbg !4723
  store i64 %expval52, ptr %tmp50, align 8, !dbg !4723
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr46) #14, !dbg !4727
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x45) #14, !dbg !4727
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu44) #14, !dbg !4727
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu43) #14, !dbg !4727
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu42) #14, !dbg !4727
  %57 = load i64, ptr %tmp50, align 8, !dbg !4723
  %tobool53 = icmp ne i64 %57, 0, !dbg !4727
  br i1 %tobool53, label %if.then54, label %if.end55, !dbg !4728

if.then54:                                        ; preds = %lor.lhs.false41, %if.else
  store i1 false, ptr %retval, align 1, !dbg !4729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup56, !dbg !4729

if.end55:                                         ; preds = %lor.lhs.false41
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4730
  br label %cleanup56, !dbg !4730

cleanup56:                                        ; preds = %if.end55, %if.then54
  call void @llvm.lifetime.end.p0(i64 4, ptr %swd29) #14, !dbg !4730
  call void @llvm.lifetime.end.p0(i64 8, ptr %fp28) #14, !dbg !4730
  %cleanup.dest58 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest58, label %unreachable [
    i32 0, label %cleanup.cont59
    i32 1, label %return
  ]

cleanup.cont59:                                   ; preds = %cleanup56
  br label %if.end60

if.end60:                                         ; preds = %cleanup.cont59, %cleanup.cont
  store i1 true, ptr %retval, align 1, !dbg !4731
  br label %return, !dbg !4731

return:                                           ; preds = %if.end60, %cleanup56, %cleanup
  %58 = load i1, ptr %retval, align 1, !dbg !4732
  ret i1 %58, !dbg !4732

unreachable:                                      ; preds = %cleanup56, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @save_xstate_epilog(ptr noundef %buf, i32 noundef %ia32_frame, ptr noundef %fpstate) #4 align 16 !dbg !4733 {
entry:
  %retval = alloca i1, align 1
  %buf.addr = alloca ptr, align 8
  %ia32_frame.addr = alloca i32, align 4
  %fpstate.addr = alloca ptr, align 8
  %x = alloca ptr, align 8
  %sw_bytes = alloca %struct._fpx_sw_bytes, align 8
  %xfeatures = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %tmp14 = alloca i64, align 8
  %__ret_pu21 = alloca i32, align 4
  %__ptr_pu22 = alloca ptr, align 8
  %__val_pu23 = alloca i32, align 4
  %__x24 = alloca i32, align 4
  %__ptr25 = alloca ptr, align 8
  %tmp30 = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4737, metadata !DIExpression()), !dbg !4761
  store i32 %ia32_frame, ptr %ia32_frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ia32_frame.addr, metadata !4738, metadata !DIExpression()), !dbg !4762
  store ptr %fpstate, ptr %fpstate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpstate.addr, metadata !4739, metadata !DIExpression()), !dbg !4763
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #14, !dbg !4764
  call void @llvm.dbg.declare(metadata ptr %x, metadata !4740, metadata !DIExpression()), !dbg !4765
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4766
  store ptr %0, ptr %x, align 8, !dbg !4765
  call void @llvm.lifetime.start.p0(i64 48, ptr %sw_bytes) #14, !dbg !4767
  call void @llvm.dbg.declare(metadata ptr %sw_bytes, metadata !4741, metadata !DIExpression()), !dbg !4768
  call void @llvm.memset.p0.i64(ptr align 8 %sw_bytes, i8 0, i64 48, i1 false), !dbg !4768
  call void @llvm.lifetime.start.p0(i64 4, ptr %xfeatures) #14, !dbg !4769
  call void @llvm.dbg.declare(metadata ptr %xfeatures, metadata !4742, metadata !DIExpression()), !dbg !4770
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !4771
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4743, metadata !DIExpression()), !dbg !4772
  %1 = load i32, ptr %ia32_frame.addr, align 4, !dbg !4773
  %tobool = icmp ne i32 %1, 0, !dbg !4773
  %2 = load ptr, ptr %fpstate.addr, align 8, !dbg !4774
  call void @save_sw_bytes(ptr noundef %sw_bytes, i1 noundef zeroext %tobool, ptr noundef %2) #15, !dbg !4775
  %3 = load ptr, ptr %x, align 8, !dbg !4776
  %i387 = getelementptr inbounds %struct.xregs_state, ptr %3, i32 0, i32 0, !dbg !4777
  %4 = getelementptr inbounds %struct.fxregs_state, ptr %i387, i32 0, i32 10, !dbg !4778
  %call = call i64 @__copy_to_user(ptr noundef %4, ptr noundef %sw_bytes, i64 noundef 48) #15, !dbg !4779
  %conv = trunc i64 %call to i32, !dbg !4779
  store i32 %conv, ptr %err, align 4, !dbg !4780
  %call1 = call zeroext i1 @use_xsave() #16, !dbg !4781
  br i1 %call1, label %if.end, label %if.then, !dbg !4783

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %err, align 4, !dbg !4784
  %tobool2 = icmp ne i32 %5, 0, !dbg !4785
  %lnot = xor i1 %tobool2, true, !dbg !4785
  store i1 %lnot, ptr %retval, align 1, !dbg !4786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4786

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #14, !dbg !4787
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !4744, metadata !DIExpression()), !dbg !4787
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #14, !dbg !4787
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !4746, metadata !DIExpression()), !dbg !4787
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #14, !dbg !4787
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !4747, metadata !DIExpression()), !dbg !4787
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #14, !dbg !4787
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !4748, metadata !DIExpression()), !dbg !4787
  store i32 1179670597, ptr %__x, align 4, !dbg !4787
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #14, !dbg !4787
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4749, metadata !DIExpression()), !dbg !4787
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !4787
  %7 = load ptr, ptr %fpstate.addr, align 8, !dbg !4787
  %user_size = getelementptr inbounds %struct.fpstate, ptr %7, i32 0, i32 1, !dbg !4787
  %8 = load i32, ptr %user_size, align 4, !dbg !4787
  %idx.ext = zext i32 %8 to i64, !dbg !4787
  %add.ptr = getelementptr i8, ptr %6, i64 %idx.ext, !dbg !4787
  store ptr %add.ptr, ptr %__ptr, align 8, !dbg !4787
  %9 = load ptr, ptr %__ptr, align 8, !dbg !4787
  store ptr %9, ptr %__ptr_pu, align 8, !dbg !4787
  %10 = load i32, ptr %__x, align 4, !dbg !4787
  store i32 %10, ptr %__val_pu, align 4, !dbg !4787
  %11 = call i64 @llvm.read_register.i64(metadata !4252), !dbg !4787
  %12 = load ptr, ptr %__ptr_pu, align 8, !dbg !4787
  %13 = load i32, ptr %__val_pu, align 4, !dbg !4787
  %14 = call { ptr, i64 } asm sideeffect "call __put_user_nocheck_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %12, i32 %13, i64 4, i64 %11) #14, !dbg !4787, !srcloc !4788
  %asmresult = extractvalue { ptr, i64 } %14, 0, !dbg !4787
  %asmresult3 = extractvalue { ptr, i64 } %14, 1, !dbg !4787
  %15 = ptrtoint ptr %asmresult to i64, !dbg !4787
  %16 = trunc i64 %15 to i32, !dbg !4787
  store i32 %16, ptr %__ret_pu, align 4, !dbg !4787
  call void @llvm.write_register.i64(metadata !4252, i64 %asmresult3), !dbg !4787
  %17 = load ptr, ptr %__ptr, align 8, !dbg !4789
  call void @kmsan_copy_to_user(ptr noundef %17, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #15, !dbg !4789
  %18 = load i32, ptr %__ret_pu, align 4, !dbg !4787
  %conv4 = sext i32 %18 to i64, !dbg !4787
  %expval = call i64 @llvm.expect.i64(i64 %conv4, i64 0), !dbg !4787
  store i64 %expval, ptr %tmp, align 8, !dbg !4787
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #14, !dbg !4791
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #14, !dbg !4791
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #14, !dbg !4791
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #14, !dbg !4791
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #14, !dbg !4791
  %19 = load i64, ptr %tmp, align 8, !dbg !4787
  %20 = load i32, ptr %err, align 4, !dbg !4792
  %conv5 = sext i32 %20 to i64, !dbg !4792
  %or = or i64 %conv5, %19, !dbg !4792
  %conv6 = trunc i64 %or to i32, !dbg !4792
  store i32 %conv6, ptr %err, align 4, !dbg !4792
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #14, !dbg !4793
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !4750, metadata !DIExpression()), !dbg !4793
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #14, !dbg !4793
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !4752, metadata !DIExpression()), !dbg !4793
  %21 = call i64 @llvm.read_register.i64(metadata !4252), !dbg !4793
  %22 = load ptr, ptr %x, align 8, !dbg !4793
  %header = getelementptr inbounds %struct.xregs_state, ptr %22, i32 0, i32 1, !dbg !4793
  %xfeatures7 = getelementptr inbounds %struct.xstate_header, ptr %header, i32 0, i32 0, !dbg !4793
  %23 = call { ptr, i32, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %xfeatures7, i64 4, i64 %21) #14, !dbg !4793, !srcloc !4794
  %asmresult8 = extractvalue { ptr, i32, i64 } %23, 0, !dbg !4793
  %asmresult9 = extractvalue { ptr, i32, i64 } %23, 1, !dbg !4793
  %asmresult10 = extractvalue { ptr, i32, i64 } %23, 2, !dbg !4793
  %24 = ptrtoint ptr %asmresult8 to i64, !dbg !4793
  %25 = trunc i64 %24 to i32, !dbg !4793
  store i32 %25, ptr %__ret_gu, align 4, !dbg !4793
  store i32 %asmresult9, ptr %__val_gu, align 4, !dbg !4793
  call void @llvm.write_register.i64(metadata !4252, i64 %asmresult10), !dbg !4793
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #14, !dbg !4795
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !4753, metadata !DIExpression()), !dbg !4795
  %26 = load i32, ptr %__val_gu, align 4, !dbg !4795
  %conv11 = zext i32 %26 to i64, !dbg !4795
  store i64 %conv11, ptr %__tmp, align 8, !dbg !4795
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #15, !dbg !4795
  %27 = load i64, ptr %__tmp, align 8, !dbg !4795
  %conv13 = trunc i64 %27 to i32, !dbg !4795
  store i32 %conv13, ptr %__val_gu, align 4, !dbg !4795
  store i32 %conv13, ptr %tmp12, align 4, !dbg !4795
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #14, !dbg !4793
  %28 = load i32, ptr %tmp12, align 4, !dbg !4795
  %29 = load i32, ptr %__val_gu, align 4, !dbg !4793
  store i32 %29, ptr %xfeatures, align 4, !dbg !4793
  %30 = load i32, ptr %__ret_gu, align 4, !dbg !4793
  %conv15 = sext i32 %30 to i64, !dbg !4793
  %expval16 = call i64 @llvm.expect.i64(i64 %conv15, i64 0), !dbg !4793
  store i64 %expval16, ptr %tmp14, align 8, !dbg !4793
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #14, !dbg !4796
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #14, !dbg !4796
  %31 = load i64, ptr %tmp14, align 8, !dbg !4793
  %32 = load i32, ptr %err, align 4, !dbg !4797
  %conv17 = sext i32 %32 to i64, !dbg !4797
  %or18 = or i64 %conv17, %31, !dbg !4797
  %conv19 = trunc i64 %or18 to i32, !dbg !4797
  store i32 %conv19, ptr %err, align 4, !dbg !4797
  %33 = load i32, ptr %xfeatures, align 4, !dbg !4798
  %or20 = or i32 %33, 3, !dbg !4798
  store i32 %or20, ptr %xfeatures, align 4, !dbg !4798
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu21) #14, !dbg !4799
  call void @llvm.dbg.declare(metadata ptr %__ret_pu21, metadata !4755, metadata !DIExpression()), !dbg !4799
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu22) #14, !dbg !4799
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu22, metadata !4757, metadata !DIExpression()), !dbg !4799
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu23) #14, !dbg !4799
  call void @llvm.dbg.declare(metadata ptr %__val_pu23, metadata !4758, metadata !DIExpression()), !dbg !4799
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x24) #14, !dbg !4799
  call void @llvm.dbg.declare(metadata ptr %__x24, metadata !4759, metadata !DIExpression()), !dbg !4799
  %34 = load i32, ptr %xfeatures, align 4, !dbg !4799
  store i32 %34, ptr %__x24, align 4, !dbg !4799
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr25) #14, !dbg !4799
  call void @llvm.dbg.declare(metadata ptr %__ptr25, metadata !4760, metadata !DIExpression()), !dbg !4799
  %35 = load ptr, ptr %x, align 8, !dbg !4799
  %header26 = getelementptr inbounds %struct.xregs_state, ptr %35, i32 0, i32 1, !dbg !4799
  %xfeatures27 = getelementptr inbounds %struct.xstate_header, ptr %header26, i32 0, i32 0, !dbg !4799
  store ptr %xfeatures27, ptr %__ptr25, align 8, !dbg !4799
  %36 = load ptr, ptr %__ptr25, align 8, !dbg !4799
  store ptr %36, ptr %__ptr_pu22, align 8, !dbg !4799
  %37 = load i32, ptr %__x24, align 4, !dbg !4799
  store i32 %37, ptr %__val_pu23, align 4, !dbg !4799
  %38 = call i64 @llvm.read_register.i64(metadata !4252), !dbg !4799
  %39 = load ptr, ptr %__ptr_pu22, align 8, !dbg !4799
  %40 = load i32, ptr %__val_pu23, align 4, !dbg !4799
  %41 = call { ptr, i64 } asm sideeffect "call __put_user_nocheck_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %39, i32 %40, i64 4, i64 %38) #14, !dbg !4799, !srcloc !4800
  %asmresult28 = extractvalue { ptr, i64 } %41, 0, !dbg !4799
  %asmresult29 = extractvalue { ptr, i64 } %41, 1, !dbg !4799
  %42 = ptrtoint ptr %asmresult28 to i64, !dbg !4799
  %43 = trunc i64 %42 to i32, !dbg !4799
  store i32 %43, ptr %__ret_pu21, align 4, !dbg !4799
  call void @llvm.write_register.i64(metadata !4252, i64 %asmresult29), !dbg !4799
  %44 = load ptr, ptr %__ptr25, align 8, !dbg !4801
  call void @kmsan_copy_to_user(ptr noundef %44, ptr noundef %__x24, i64 noundef 4, i64 noundef 0) #15, !dbg !4801
  %45 = load i32, ptr %__ret_pu21, align 4, !dbg !4799
  %conv31 = sext i32 %45 to i64, !dbg !4799
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !4799
  store i64 %expval32, ptr %tmp30, align 8, !dbg !4799
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr25) #14, !dbg !4803
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x24) #14, !dbg !4803
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu23) #14, !dbg !4803
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu22) #14, !dbg !4803
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu21) #14, !dbg !4803
  %46 = load i64, ptr %tmp30, align 8, !dbg !4799
  %47 = load i32, ptr %err, align 4, !dbg !4804
  %conv33 = sext i32 %47 to i64, !dbg !4804
  %or34 = or i64 %conv33, %46, !dbg !4804
  %conv35 = trunc i64 %or34 to i32, !dbg !4804
  store i32 %conv35, ptr %err, align 4, !dbg !4804
  %48 = load i32, ptr %err, align 4, !dbg !4805
  %tobool36 = icmp ne i32 %48, 0, !dbg !4806
  %lnot37 = xor i1 %tobool36, true, !dbg !4806
  store i1 %lnot37, ptr %retval, align 1, !dbg !4807
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4807

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !4808
  call void @llvm.lifetime.end.p0(i64 4, ptr %xfeatures) #14, !dbg !4808
  call void @llvm.lifetime.end.p0(i64 48, ptr %sw_bytes) #14, !dbg !4808
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #14, !dbg !4808
  %49 = load i1, ptr %retval, align 1, !dbg !4808
  ret i1 %49, !dbg !4808
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @fpu__restore_sig(ptr noundef %buf, i32 noundef %ia32_frame) #0 align 16 !dbg !4809 {
entry:
  %retval = alloca i1, align 1
  %buf.addr = alloca ptr, align 8
  %ia32_frame.addr = alloca i32, align 4
  %fpu = alloca ptr, align 8
  %buf_fx = alloca ptr, align 8
  %ia32_fxstate = alloca i8, align 1
  %success = alloca i8, align 1
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4813, metadata !DIExpression()), !dbg !4821
  store i32 %ia32_frame, ptr %ia32_frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ia32_frame.addr, metadata !4814, metadata !DIExpression()), !dbg !4822
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpu) #14, !dbg !4823
  call void @llvm.dbg.declare(metadata ptr %fpu, metadata !4815, metadata !DIExpression()), !dbg !4824
  %call = call ptr @get_current() #15, !dbg !4825
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !4826
  %fpu1 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !4827
  store ptr %fpu1, ptr %fpu, align 8, !dbg !4824
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_fx) #14, !dbg !4828
  call void @llvm.dbg.declare(metadata ptr %buf_fx, metadata !4816, metadata !DIExpression()), !dbg !4829
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !4830
  store ptr %0, ptr %buf_fx, align 8, !dbg !4829
  call void @llvm.lifetime.start.p0(i64 1, ptr %ia32_fxstate) #14, !dbg !4831
  call void @llvm.dbg.declare(metadata ptr %ia32_fxstate, metadata !4817, metadata !DIExpression()), !dbg !4832
  store i8 0, ptr %ia32_fxstate, align 1, !dbg !4832
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #14, !dbg !4833
  call void @llvm.dbg.declare(metadata ptr %success, metadata !4818, metadata !DIExpression()), !dbg !4834
  store i8 0, ptr %success, align 1, !dbg !4834
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #14, !dbg !4835
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4819, metadata !DIExpression()), !dbg !4836
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !4837
  %tobool = icmp ne ptr %1, null, !dbg !4837
  %lnot = xor i1 %tobool, true, !dbg !4837
  %lnot2 = xor i1 %lnot, true, !dbg !4837
  %lnot3 = xor i1 %lnot2, true, !dbg !4837
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4837
  %conv = sext i32 %lnot.ext to i64, !dbg !4837
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4837
  %tobool4 = icmp ne i64 %expval, 0, !dbg !4837
  br i1 %tobool4, label %if.then, label %if.end, !dbg !4839

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %fpu, align 8, !dbg !4840
  call void @fpu__clear_user_states(ptr noundef %2) #15, !dbg !4842
  store i1 true, ptr %retval, align 1, !dbg !4843
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4843

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %fpu, align 8, !dbg !4844
  %fpstate = getelementptr inbounds %struct.fpu, ptr %3, i32 0, i32 2, !dbg !4845
  %4 = load ptr, ptr %fpstate, align 16, !dbg !4845
  %call5 = call i32 @xstate_sigframe_size(ptr noundef %4) #15, !dbg !4846
  store i32 %call5, ptr %size, align 4, !dbg !4847
  %5 = load i32, ptr %ia32_frame.addr, align 4, !dbg !4848
  %and = and i32 %5, 1, !dbg !4848
  store i32 %and, ptr %ia32_frame.addr, align 4, !dbg !4848
  %6 = load i32, ptr %ia32_frame.addr, align 4, !dbg !4849
  %tobool6 = icmp ne i32 %6, 0, !dbg !4849
  br i1 %tobool6, label %land.lhs.true, label %if.end12, !dbg !4851

land.lhs.true:                                    ; preds = %if.end
  %call7 = call zeroext i1 @use_fxsr() #16, !dbg !4852
  br i1 %call7, label %if.then9, label %if.end12, !dbg !4853

if.then9:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !4854
  %add.ptr = getelementptr i8, ptr %7, i64 112, !dbg !4856
  store ptr %add.ptr, ptr %buf_fx, align 8, !dbg !4857
  %8 = load i32, ptr %size, align 4, !dbg !4858
  %conv10 = zext i32 %8 to i64, !dbg !4858
  %add = add i64 %conv10, 112, !dbg !4858
  %conv11 = trunc i64 %add to i32, !dbg !4858
  store i32 %conv11, ptr %size, align 4, !dbg !4858
  store i8 1, ptr %ia32_fxstate, align 1, !dbg !4859
  br label %if.end12, !dbg !4860

if.end12:                                         ; preds = %if.then9, %land.lhs.true, %if.end
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !4861
  %10 = load i32, ptr %size, align 4, !dbg !4861
  %conv13 = zext i32 %10 to i64, !dbg !4861
  %call14 = call zeroext i1 @__access_ok(ptr noundef %9, i64 noundef %conv13) #15, !dbg !4861
  %lnot15 = xor i1 %call14, true, !dbg !4861
  %lnot17 = xor i1 %lnot15, true, !dbg !4861
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4861
  %conv19 = sext i32 %lnot.ext18 to i64, !dbg !4861
  %expval20 = call i64 @llvm.expect.i64(i64 %conv19, i64 1), !dbg !4861
  %tobool21 = icmp ne i64 %expval20, 0, !dbg !4861
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !4863

if.then22:                                        ; preds = %if.end12
  br label %out, !dbg !4864

if.end23:                                         ; preds = %if.end12
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !4865
  %12 = load ptr, ptr %buf_fx, align 8, !dbg !4868
  %13 = load i8, ptr %ia32_fxstate, align 1, !dbg !4869, !range !4299, !noundef !719
  %tobool24 = trunc i8 %13 to i1, !dbg !4869
  %call25 = call zeroext i1 @__fpu_restore_sig(ptr noundef %11, ptr noundef %12, i1 noundef zeroext %tobool24) #15, !dbg !4870
  %frombool = zext i1 %call25 to i8, !dbg !4871
  store i8 %frombool, ptr %success, align 1, !dbg !4871
  br label %out, !dbg !4872

out:                                              ; preds = %if.end23, %if.then22
  call void @llvm.dbg.label(metadata !4820), !dbg !4873
  %14 = load i8, ptr %success, align 1, !dbg !4874, !range !4299, !noundef !719
  %tobool26 = trunc i8 %14 to i1, !dbg !4874
  %lnot27 = xor i1 %tobool26, true, !dbg !4874
  %lnot29 = xor i1 %lnot27, true, !dbg !4874
  %lnot31 = xor i1 %lnot29, true, !dbg !4874
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !4874
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !4874
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !4874
  %tobool35 = icmp ne i64 %expval34, 0, !dbg !4874
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !4876

if.then36:                                        ; preds = %out
  %15 = load ptr, ptr %fpu, align 8, !dbg !4877
  call void @fpu__clear_user_states(ptr noundef %15) #15, !dbg !4878
  br label %if.end37, !dbg !4878

if.end37:                                         ; preds = %if.then36, %out
  %16 = load i8, ptr %success, align 1, !dbg !4879, !range !4299, !noundef !719
  %tobool38 = trunc i8 %16 to i1, !dbg !4879
  store i1 %tobool38, ptr %retval, align 1, !dbg !4880
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4880

cleanup:                                          ; preds = %if.end37, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #14, !dbg !4881
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #14, !dbg !4881
  call void @llvm.lifetime.end.p0(i64 1, ptr %ia32_fxstate) #14, !dbg !4881
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_fx) #14, !dbg !4881
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpu) #14, !dbg !4881
  %17 = load i1, ptr %retval, align 1, !dbg !4881
  ret i1 %17, !dbg !4881
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4882 dso_local void @fpu__clear_user_states(ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xstate_sigframe_size(ptr noundef %fpstate) #4 align 16 !dbg !4884 {
entry:
  %fpstate.addr = alloca ptr, align 8
  %size = alloca i32, align 4
  store ptr %fpstate, ptr %fpstate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpstate.addr, metadata !4888, metadata !DIExpression()), !dbg !4890
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #14, !dbg !4891
  call void @llvm.dbg.declare(metadata ptr %size, metadata !4889, metadata !DIExpression()), !dbg !4892
  %0 = load ptr, ptr %fpstate.addr, align 8, !dbg !4893
  %user_size = getelementptr inbounds %struct.fpstate, ptr %0, i32 0, i32 1, !dbg !4894
  %1 = load i32, ptr %user_size, align 4, !dbg !4894
  store i32 %1, ptr %size, align 4, !dbg !4892
  %call = call zeroext i1 @use_xsave() #16, !dbg !4895
  br i1 %call, label %cond.true, label %cond.false, !dbg !4895

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %size, align 4, !dbg !4896
  %conv = zext i32 %2 to i64, !dbg !4896
  %add = add i64 %conv, 4, !dbg !4897
  br label %cond.end, !dbg !4895

cond.false:                                       ; preds = %entry
  %3 = load i32, ptr %size, align 4, !dbg !4898
  %conv1 = zext i32 %3 to i64, !dbg !4898
  br label %cond.end, !dbg !4895

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ %conv1, %cond.false ], !dbg !4895
  %conv2 = trunc i64 %cond to i32, !dbg !4895
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #14, !dbg !4899
  ret i32 %conv2, !dbg !4900
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__fpu_restore_sig(ptr noundef %buf, ptr noundef %buf_fx, i1 noundef zeroext %ia32_fxstate) #0 align 16 !dbg !4901 {
entry:
  %retval = alloca i1, align 1
  %buf.addr = alloca ptr, align 8
  %buf_fx.addr = alloca ptr, align 8
  %ia32_fxstate.addr = alloca i8, align 1
  %tsk = alloca ptr, align 8
  %fpu = alloca ptr, align 8
  %env = alloca %struct.user_i387_ia32_struct, align 4
  %success = alloca i8, align 1
  %fx_only = alloca i8, align 1
  %fpregs = alloca ptr, align 8
  %user_xfeatures = alloca i64, align 8
  %fx_sw_user = alloca %struct._fpx_sw_bytes, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %mask = alloca i64, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4905, metadata !DIExpression()), !dbg !4922
  store ptr %buf_fx, ptr %buf_fx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf_fx.addr, metadata !4906, metadata !DIExpression()), !dbg !4923
  %frombool = zext i1 %ia32_fxstate to i8
  store i8 %frombool, ptr %ia32_fxstate.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ia32_fxstate.addr, metadata !4907, metadata !DIExpression()), !dbg !4924
  call void @llvm.lifetime.start.p0(i64 8, ptr %tsk) #14, !dbg !4925
  call void @llvm.dbg.declare(metadata ptr %tsk, metadata !4908, metadata !DIExpression()), !dbg !4926
  %call = call ptr @get_current() #15, !dbg !4927
  store ptr %call, ptr %tsk, align 8, !dbg !4926
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpu) #14, !dbg !4928
  call void @llvm.dbg.declare(metadata ptr %fpu, metadata !4909, metadata !DIExpression()), !dbg !4929
  %0 = load ptr, ptr %tsk, align 8, !dbg !4930
  %thread = getelementptr inbounds %struct.task_struct, ptr %0, i32 0, i32 197, !dbg !4931
  %fpu1 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !4932
  store ptr %fpu1, ptr %fpu, align 8, !dbg !4929
  call void @llvm.lifetime.start.p0(i64 108, ptr %env) #14, !dbg !4933
  call void @llvm.dbg.declare(metadata ptr %env, metadata !4910, metadata !DIExpression()), !dbg !4934
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #14, !dbg !4935
  call void @llvm.dbg.declare(metadata ptr %success, metadata !4911, metadata !DIExpression()), !dbg !4936
  call void @llvm.lifetime.start.p0(i64 1, ptr %fx_only) #14, !dbg !4935
  call void @llvm.dbg.declare(metadata ptr %fx_only, metadata !4912, metadata !DIExpression()), !dbg !4937
  store i8 0, ptr %fx_only, align 1, !dbg !4937
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpregs) #14, !dbg !4938
  call void @llvm.dbg.declare(metadata ptr %fpregs, metadata !4913, metadata !DIExpression()), !dbg !4939
  call void @llvm.lifetime.start.p0(i64 8, ptr %user_xfeatures) #14, !dbg !4940
  call void @llvm.dbg.declare(metadata ptr %user_xfeatures, metadata !4915, metadata !DIExpression()), !dbg !4941
  store i64 0, ptr %user_xfeatures, align 8, !dbg !4941
  %call2 = call zeroext i1 @use_xsave() #16, !dbg !4942
  br i1 %call2, label %if.then, label %if.else, !dbg !4943

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr %fx_sw_user) #14, !dbg !4944
  call void @llvm.dbg.declare(metadata ptr %fx_sw_user, metadata !4916, metadata !DIExpression()), !dbg !4945
  %1 = load ptr, ptr %buf_fx.addr, align 8, !dbg !4946
  %call3 = call zeroext i1 @check_xstate_in_sigframe(ptr noundef %1, ptr noundef %fx_sw_user) #15, !dbg !4948
  br i1 %call3, label %if.end, label %if.then4, !dbg !4949

if.then4:                                         ; preds = %if.then
  store i1 false, ptr %retval, align 1, !dbg !4950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4950

if.end:                                           ; preds = %if.then
  %magic1 = getelementptr inbounds %struct._fpx_sw_bytes, ptr %fx_sw_user, i32 0, i32 0, !dbg !4951
  %2 = load i32, ptr %magic1, align 8, !dbg !4951
  %tobool = icmp ne i32 %2, 0, !dbg !4952
  %lnot = xor i1 %tobool, true, !dbg !4952
  %frombool5 = zext i1 %lnot to i8, !dbg !4953
  store i8 %frombool5, ptr %fx_only, align 1, !dbg !4953
  %xfeatures = getelementptr inbounds %struct._fpx_sw_bytes, ptr %fx_sw_user, i32 0, i32 2, !dbg !4954
  %3 = load i64, ptr %xfeatures, align 8, !dbg !4954
  store i64 %3, ptr %user_xfeatures, align 8, !dbg !4955
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4956
  br label %cleanup, !dbg !4956

cleanup:                                          ; preds = %if.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 48, ptr %fx_sw_user) #14, !dbg !4956
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup83 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end6, !dbg !4957

if.else:                                          ; preds = %entry
  store i64 3, ptr %user_xfeatures, align 8, !dbg !4958
  br label %if.end6

if.end6:                                          ; preds = %if.else, %cleanup.cont
  %4 = load i8, ptr %ia32_fxstate.addr, align 1, !dbg !4960, !range !4299, !noundef !719
  %tobool7 = trunc i8 %4 to i1, !dbg !4960
  %lnot8 = xor i1 %tobool7, true, !dbg !4960
  %lnot9 = xor i1 %lnot8, true, !dbg !4960
  %lnot10 = xor i1 %lnot9, true, !dbg !4960
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !4960
  %conv = sext i32 %lnot.ext to i64, !dbg !4960
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4960
  %tobool11 = icmp ne i64 %expval, 0, !dbg !4960
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !4962

if.then12:                                        ; preds = %if.end6
  %5 = load ptr, ptr %buf_fx.addr, align 8, !dbg !4963
  %6 = load i64, ptr %user_xfeatures, align 8, !dbg !4965
  %7 = load i8, ptr %fx_only, align 1, !dbg !4966, !range !4299, !noundef !719
  %tobool13 = trunc i8 %7 to i1, !dbg !4966
  %call14 = call zeroext i1 @restore_fpregs_from_user(ptr noundef %5, i64 noundef %6, i1 noundef zeroext %tobool13) #15, !dbg !4967
  store i1 %call14, ptr %retval, align 1, !dbg !4968
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !4968

if.end15:                                         ; preds = %if.end6
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !4969
  %call16 = call i64 @__copy_from_user(ptr noundef %env, ptr noundef %8, i64 noundef 108) #15, !dbg !4971
  %tobool17 = icmp ne i64 %call16, 0, !dbg !4971
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !4972

if.then18:                                        ; preds = %if.end15
  store i1 false, ptr %retval, align 1, !dbg !4973
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !4973

if.end19:                                         ; preds = %if.end15
  call void @fpregs_lock() #15, !dbg !4974
  %call20 = call ptr @get_current() #15, !dbg !4975
  %call21 = call i32 @test_ti_thread_flag(ptr noundef %call20, i32 noundef 14) #15, !dbg !4975
  %tobool22 = icmp ne i32 %call21, 0, !dbg !4975
  br i1 %tobool22, label %if.end29, label %if.then23, !dbg !4977

if.then23:                                        ; preds = %if.end19
  %call24 = call i64 @xfeatures_mask_supervisor() #15, !dbg !4978
  %tobool25 = icmp ne i64 %call24, 0, !dbg !4978
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4981

if.then26:                                        ; preds = %if.then23
  %9 = load ptr, ptr %fpu, align 8, !dbg !4982
  %fpstate = getelementptr inbounds %struct.fpu, ptr %9, i32 0, i32 2, !dbg !4983
  %10 = load ptr, ptr %fpstate, align 16, !dbg !4983
  call void @os_xsave(ptr noundef %10) #15, !dbg !4984
  br label %if.end27, !dbg !4984

if.end27:                                         ; preds = %if.then26, %if.then23
  %call28 = call ptr @get_current() #15, !dbg !4985
  call void @set_ti_thread_flag(ptr noundef %call28, i32 noundef 14) #15, !dbg !4985
  br label %if.end29, !dbg !4986

if.end29:                                         ; preds = %if.end27, %if.end19
  %11 = load ptr, ptr %fpu, align 8, !dbg !4987
  call void @__fpu_invalidate_fpregs_state(ptr noundef %11) #15, !dbg !4988
  call void @__cpu_invalidate_fpregs_state() #15, !dbg !4989
  call void @fpregs_unlock() #15, !dbg !4990
  %12 = load ptr, ptr %fpu, align 8, !dbg !4991
  %fpstate30 = getelementptr inbounds %struct.fpu, ptr %12, i32 0, i32 2, !dbg !4992
  %13 = load ptr, ptr %fpstate30, align 16, !dbg !4992
  %regs = getelementptr inbounds %struct.fpstate, ptr %13, i32 0, i32 7, !dbg !4993
  store ptr %regs, ptr %fpregs, align 8, !dbg !4994
  %call31 = call zeroext i1 @use_xsave() #16, !dbg !4995
  br i1 %call31, label %land.lhs.true, label %if.else39, !dbg !4997

land.lhs.true:                                    ; preds = %if.end29
  %14 = load i8, ptr %fx_only, align 1, !dbg !4998, !range !4299, !noundef !719
  %tobool33 = trunc i8 %14 to i1, !dbg !4998
  br i1 %tobool33, label %if.else39, label %if.then34, !dbg !4999

if.then34:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %tsk, align 8, !dbg !5000
  %16 = load ptr, ptr %buf_fx.addr, align 8, !dbg !5003
  %call35 = call i32 @copy_sigframe_from_user_to_xstate(ptr noundef %15, ptr noundef %16) #15, !dbg !5004
  %tobool36 = icmp ne i32 %call35, 0, !dbg !5004
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !5005

if.then37:                                        ; preds = %if.then34
  store i1 false, ptr %retval, align 1, !dbg !5006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !5006

if.end38:                                         ; preds = %if.then34
  br label %if.end51, !dbg !5007

if.else39:                                        ; preds = %land.lhs.true, %if.end29
  %17 = load ptr, ptr %fpregs, align 8, !dbg !5008
  %18 = load ptr, ptr %buf_fx.addr, align 8, !dbg !5011
  %call40 = call i64 @__copy_from_user(ptr noundef %17, ptr noundef %18, i64 noundef 512) #15, !dbg !5012
  %tobool41 = icmp ne i64 %call40, 0, !dbg !5012
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !5013

if.then42:                                        ; preds = %if.else39
  store i1 false, ptr %retval, align 1, !dbg !5014
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !5014

if.end43:                                         ; preds = %if.else39
  %19 = load ptr, ptr %fpregs, align 8, !dbg !5015
  %mxcsr = getelementptr inbounds %struct.fxregs_state, ptr %19, i32 0, i32 5, !dbg !5019
  %20 = load i32, ptr %mxcsr, align 8, !dbg !5019
  %21 = load i32, ptr @mxcsr_feature_mask, align 4, !dbg !5020
  %not = xor i32 %21, -1, !dbg !5021
  %and = and i32 %20, %not, !dbg !5022
  %tobool44 = icmp ne i32 %and, 0, !dbg !5022
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !5023

if.then45:                                        ; preds = %if.end43
  store i1 false, ptr %retval, align 1, !dbg !5024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !5024

if.end46:                                         ; preds = %if.end43
  %call47 = call zeroext i1 @use_xsave() #16, !dbg !5025
  br i1 %call47, label %if.then48, label %if.end50, !dbg !5027

if.then48:                                        ; preds = %if.end46
  %22 = load ptr, ptr %fpregs, align 8, !dbg !5028
  %header = getelementptr inbounds %struct.xregs_state, ptr %22, i32 0, i32 1, !dbg !5029
  %xfeatures49 = getelementptr inbounds %struct.xstate_header, ptr %header, i32 0, i32 0, !dbg !5030
  %23 = load i64, ptr %xfeatures49, align 64, !dbg !5031
  %or = or i64 %23, 3, !dbg !5031
  store i64 %or, ptr %xfeatures49, align 64, !dbg !5031
  br label %if.end50, !dbg !5028

if.end50:                                         ; preds = %if.then48, %if.end46
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end38
  %24 = load ptr, ptr %fpregs, align 8, !dbg !5032
  call void @convert_to_fxsr(ptr noundef %24, ptr noundef %env) #15, !dbg !5033
  call void @fpregs_lock() #15, !dbg !5034
  %call52 = call zeroext i1 @use_xsave() #16, !dbg !5035
  br i1 %call52, label %if.then53, label %if.else65, !dbg !5036

if.then53:                                        ; preds = %if.end51
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !5037
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4919, metadata !DIExpression()), !dbg !5038
  %25 = load i64, ptr %user_xfeatures, align 8, !dbg !5039
  %call54 = call i64 @xfeatures_mask_supervisor() #15, !dbg !5040
  %or55 = or i64 %25, %call54, !dbg !5041
  store i64 %or55, ptr %mask, align 8, !dbg !5038
  %26 = load i64, ptr %mask, align 8, !dbg !5042
  %27 = load ptr, ptr %fpregs, align 8, !dbg !5043
  %header56 = getelementptr inbounds %struct.xregs_state, ptr %27, i32 0, i32 1, !dbg !5044
  %xfeatures57 = getelementptr inbounds %struct.xstate_header, ptr %header56, i32 0, i32 0, !dbg !5045
  %28 = load i64, ptr %xfeatures57, align 64, !dbg !5046
  %and58 = and i64 %28, %26, !dbg !5046
  store i64 %and58, ptr %xfeatures57, align 64, !dbg !5046
  %29 = load ptr, ptr %fpu, align 8, !dbg !5047
  %fpstate59 = getelementptr inbounds %struct.fpu, ptr %29, i32 0, i32 2, !dbg !5048
  %30 = load ptr, ptr %fpstate59, align 16, !dbg !5048
  %31 = load i64, ptr getelementptr inbounds (%struct.fpu_state_config, ptr @fpu_kernel_cfg, i32 0, i32 2), align 8, !dbg !5049
  %call60 = call i32 @os_xrstor_safe(ptr noundef %30, i64 noundef %31) #15, !dbg !5050
  %tobool61 = icmp ne i32 %call60, 0, !dbg !5051
  %lnot62 = xor i1 %tobool61, true, !dbg !5051
  %frombool64 = zext i1 %lnot62 to i8, !dbg !5052
  store i8 %frombool64, ptr %success, align 1, !dbg !5052
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !5053
  br label %if.end71, !dbg !5054

if.else65:                                        ; preds = %if.end51
  %32 = load ptr, ptr %fpregs, align 8, !dbg !5055
  %call66 = call i32 @fxrstor_safe(ptr noundef %32) #15, !dbg !5057
  %tobool67 = icmp ne i32 %call66, 0, !dbg !5058
  %lnot68 = xor i1 %tobool67, true, !dbg !5058
  %frombool70 = zext i1 %lnot68 to i8, !dbg !5059
  store i8 %frombool70, ptr %success, align 1, !dbg !5059
  br label %if.end71

if.end71:                                         ; preds = %if.else65, %if.then53
  %33 = load i8, ptr %success, align 1, !dbg !5060, !range !4299, !noundef !719
  %tobool72 = trunc i8 %33 to i1, !dbg !5060
  %lnot73 = xor i1 %tobool72, true, !dbg !5060
  %lnot75 = xor i1 %lnot73, true, !dbg !5060
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !5060
  %conv77 = sext i32 %lnot.ext76 to i64, !dbg !5060
  %expval78 = call i64 @llvm.expect.i64(i64 %conv77, i64 1), !dbg !5060
  %tobool79 = icmp ne i64 %expval78, 0, !dbg !5060
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !5062

if.then80:                                        ; preds = %if.end71
  call void @fpregs_mark_activate() #15, !dbg !5063
  br label %if.end81, !dbg !5063

if.end81:                                         ; preds = %if.then80, %if.end71
  call void @fpregs_unlock() #15, !dbg !5064
  %34 = load i8, ptr %success, align 1, !dbg !5065, !range !4299, !noundef !719
  %tobool82 = trunc i8 %34 to i1, !dbg !5065
  store i1 %tobool82, ptr %retval, align 1, !dbg !5066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83, !dbg !5066

cleanup83:                                        ; preds = %if.end81, %if.then45, %if.then42, %if.then37, %if.then18, %if.then12, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %user_xfeatures) #14, !dbg !5067
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpregs) #14, !dbg !5067
  call void @llvm.lifetime.end.p0(i64 1, ptr %fx_only) #14, !dbg !5067
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #14, !dbg !5067
  call void @llvm.lifetime.end.p0(i64 108, ptr %env) #14, !dbg !5067
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpu) #14, !dbg !5067
  call void @llvm.lifetime.end.p0(i64 8, ptr %tsk) #14, !dbg !5067
  %35 = load i1, ptr %retval, align 1, !dbg !5067
  ret i1 %35, !dbg !5067
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @fpu__alloc_mathframe(i64 noundef %sp, i32 noundef %ia32_frame, ptr noundef %buf_fx, ptr noundef %size) #0 align 16 !dbg !5068 {
entry:
  %sp.addr = alloca i64, align 8
  %ia32_frame.addr = alloca i32, align 4
  %buf_fx.addr = alloca ptr, align 8
  %size.addr = alloca ptr, align 8
  %frame_size = alloca i64, align 8
  store i64 %sp, ptr %sp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sp.addr, metadata !5072, metadata !DIExpression()), !dbg !5077
  store i32 %ia32_frame, ptr %ia32_frame.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ia32_frame.addr, metadata !5073, metadata !DIExpression()), !dbg !5078
  store ptr %buf_fx, ptr %buf_fx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf_fx.addr, metadata !5074, metadata !DIExpression()), !dbg !5079
  store ptr %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5075, metadata !DIExpression()), !dbg !5080
  call void @llvm.lifetime.start.p0(i64 8, ptr %frame_size) #14, !dbg !5081
  call void @llvm.dbg.declare(metadata ptr %frame_size, metadata !5076, metadata !DIExpression()), !dbg !5082
  %call = call ptr @get_current() #15, !dbg !5083
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !5084
  %fpu = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !5085
  %fpstate = getelementptr inbounds %struct.fpu, ptr %fpu, i32 0, i32 2, !dbg !5086
  %0 = load ptr, ptr %fpstate, align 16, !dbg !5086
  %call1 = call i32 @xstate_sigframe_size(ptr noundef %0) #15, !dbg !5087
  %conv = zext i32 %call1 to i64, !dbg !5087
  store i64 %conv, ptr %frame_size, align 8, !dbg !5082
  %1 = load i64, ptr %sp.addr, align 8, !dbg !5088
  %2 = load i64, ptr %frame_size, align 8, !dbg !5088
  %sub = sub i64 %1, %2, !dbg !5088
  %and = and i64 %sub, -64, !dbg !5088
  store i64 %and, ptr %sp.addr, align 8, !dbg !5089
  %3 = load ptr, ptr %buf_fx.addr, align 8, !dbg !5090
  store i64 %and, ptr %3, align 8, !dbg !5091
  %4 = load i32, ptr %ia32_frame.addr, align 4, !dbg !5092
  %tobool = icmp ne i32 %4, 0, !dbg !5092
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5094

land.lhs.true:                                    ; preds = %entry
  %call2 = call zeroext i1 @use_fxsr() #16, !dbg !5095
  br i1 %call2, label %if.then, label %if.end, !dbg !5096

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, ptr %frame_size, align 8, !dbg !5097
  %add = add i64 %5, 112, !dbg !5097
  store i64 %add, ptr %frame_size, align 8, !dbg !5097
  %6 = load i64, ptr %sp.addr, align 8, !dbg !5099
  %sub4 = sub i64 %6, 112, !dbg !5099
  store i64 %sub4, ptr %sp.addr, align 8, !dbg !5099
  br label %if.end, !dbg !5100

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i64, ptr %frame_size, align 8, !dbg !5101
  %8 = load ptr, ptr %size.addr, align 8, !dbg !5102
  store i64 %7, ptr %8, align 8, !dbg !5103
  %9 = load i64, ptr %sp.addr, align 8, !dbg !5104
  call void @llvm.lifetime.end.p0(i64 8, ptr %frame_size) #14, !dbg !5105
  ret i64 %9, !dbg !5106
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i64 @fpu__get_fpstate_size() #8 section ".init.text" align 16 !dbg !5107 {
entry:
  %ret = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #14, !dbg !5112
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5111, metadata !DIExpression()), !dbg !5113
  %0 = load i32, ptr @fpu_user_cfg, align 8, !dbg !5114
  %conv = zext i32 %0 to i64, !dbg !5115
  store i64 %conv, ptr %ret, align 8, !dbg !5113
  %call = call zeroext i1 @use_xsave() #16, !dbg !5116
  br i1 %call, label %if.then, label %if.end, !dbg !5118

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %ret, align 8, !dbg !5119
  %add = add i64 %1, 4, !dbg !5119
  store i64 %add, ptr %ret, align 8, !dbg !5119
  br label %if.end, !dbg !5120

if.end:                                           ; preds = %if.then, %entry
  %call1 = call zeroext i1 @use_fxsr() #16, !dbg !5121
  br i1 %call1, label %if.then3, label %if.end5, !dbg !5123

if.then3:                                         ; preds = %if.end
  %2 = load i64, ptr %ret, align 8, !dbg !5124
  %add4 = add i64 %2, 112, !dbg !5124
  store i64 %add4, ptr %ret, align 8, !dbg !5124
  br label %if.end5, !dbg !5125

if.end5:                                          ; preds = %if.then3, %if.end
  %3 = load i64, ptr %ret, align 8, !dbg !5126
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #14, !dbg !5127
  ret i64 %3, !dbg !5128
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #3 align 16 !dbg !5129 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !5134, metadata !DIExpression()), !dbg !5137
  %0 = load i16, ptr %bit.addr, align 2, !dbg !5138
  %1 = load i16, ptr %bit.addr, align 2, !dbg !5139
  %conv = zext i16 %1 to i32, !dbg !5139
  %and = and i32 %conv, 7, !dbg !5140
  %shl = shl i32 1, %and, !dbg !5141
  %2 = load i16, ptr %bit.addr, align 2, !dbg !5142
  %conv1 = zext i16 %2 to i32, !dbg !5142
  %shr = ashr i32 %conv1, 3, !dbg !5143
  %idxprom = sext i32 %shr to i64, !dbg !5144
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !5144
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #14
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !5145, !srcloc !5146

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !5145

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !5135), !dbg !5147
  store i1 true, ptr %retval, align 1, !dbg !5148
  br label %return, !dbg !5148

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !5136), !dbg !5149
  store i1 false, ptr %retval, align 1, !dbg !5150
  br label %return, !dbg !5150

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !5151
  ret i1 %3, !dbg !5151
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #4 align 16 !dbg !5152 {
entry:
  ret void, !dbg !5154
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @stac() #3 align 16 !dbg !5155 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !5157, !srcloc !5158
  ret void, !dbg !5159
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clac() #3 align 16 !dbg !5160 {
entry:
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !5161, !srcloc !5162
  ret void, !dbg !5163
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @local_bh_disable() #4 align 16 !dbg !5164 {
entry:
  %__here = alloca i64, align 8
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__here) #14, !dbg !5169
  call void @llvm.dbg.declare(metadata ptr %__here, metadata !5167, metadata !DIExpression()), !dbg !5169
  %0 = call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !dbg !5169, !srcloc !5170
  store i64 %0, ptr %__here, align 8, !dbg !5169
  %1 = load i64, ptr %__here, align 8, !dbg !5169
  store i64 %1, ptr %tmp, align 8, !dbg !5169
  call void @llvm.lifetime.end.p0(i64 8, ptr %__here) #14, !dbg !5171
  %2 = load i64, ptr %tmp, align 8, !dbg !5169
  call void @__local_bh_disable_ip(i64 noundef %2, i32 noundef 512) #15, !dbg !5172
  ret void, !dbg !5173
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__local_bh_disable_ip(i64 noundef %ip, i32 noundef %cnt) #3 align 16 !dbg !5174 {
entry:
  %ip.addr = alloca i64, align 8
  %cnt.addr = alloca i32, align 4
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !5178, metadata !DIExpression()), !dbg !5180
  store i32 %cnt, ptr %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !5179, metadata !DIExpression()), !dbg !5181
  %0 = load i32, ptr %cnt.addr, align 4, !dbg !5182
  call void @__preempt_count_add(i32 noundef %0) #15, !dbg !5182
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !5183, !srcloc !5184
  ret void, !dbg !5185
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #3 align 16 !dbg !5186 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5189, metadata !DIExpression()), !dbg !5196
  br label %do.body, !dbg !5197

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #14, !dbg !5198
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !5190, metadata !DIExpression()), !dbg !5198
  %0 = load i32, ptr %val.addr, align 4, !dbg !5198
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5198
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !5198

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !5198
  %cmp = icmp eq i32 %2, 1, !dbg !5198
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !5198

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !5198
  %cmp1 = icmp eq i32 %3, -1, !dbg !5198
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5198

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !5198
  br label %cond.end, !dbg !5198

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !5198

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !5198
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !5198
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !5199
  %cmp2 = icmp eq i32 %5, 1, !dbg !5199
  br i1 %cmp2, label %if.then, label %if.else, !dbg !5198

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !5200, !srcloc !5202
  br label %if.end8, !dbg !5199

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !5203
  %cmp3 = icmp eq i32 %6, -1, !dbg !5203
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !5199

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !5204, !srcloc !5206
  br label %if.end, !dbg !5203

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !5203

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #14, !dbg !5207
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5192, metadata !DIExpression()), !dbg !5207
  %7 = load i32, ptr %val.addr, align 4, !dbg !5207
  %conv = sext i32 %7 to i64, !dbg !5207
  %and = and i64 %conv, 4294967295, !dbg !5207
  %conv7 = trunc i64 %and to i32, !dbg !5207
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !5207
  %8 = load i32, ptr %pto_val__, align 4, !dbg !5207
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !5207, !srcloc !5208
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #14, !dbg !5203
  br label %do.cond, !dbg !5207

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !5207

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #14, !dbg !5197
  br label %do.end10, !dbg !5198

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !5209
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5210 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5218, metadata !DIExpression()), !dbg !5223
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5219, metadata !DIExpression()), !dbg !5224
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #14, !dbg !5225
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5220, metadata !DIExpression()), !dbg !5226
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5227
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5228
  %div = udiv i64 %1, 64, !dbg !5228
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5229
  store ptr %add.ptr, ptr %p, align 8, !dbg !5226
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !5230
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5221, metadata !DIExpression()), !dbg !5231
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5232
  %rem = urem i64 %2, 64, !dbg !5232
  %shl = shl i64 1, %rem, !dbg !5232
  store i64 %shl, ptr %mask, align 8, !dbg !5231
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !5233
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5222, metadata !DIExpression()), !dbg !5234
  %3 = load ptr, ptr %p, align 8, !dbg !5235
  %4 = load i64, ptr %3, align 8, !dbg !5236
  store i64 %4, ptr %val, align 8, !dbg !5234
  %5 = load i64, ptr %val, align 8, !dbg !5237
  %6 = load i64, ptr %mask, align 8, !dbg !5238
  %and = and i64 %5, %6, !dbg !5239
  %tobool = icmp ne i64 %and, 0, !dbg !5240
  %lnot = xor i1 %tobool, true, !dbg !5240
  %lnot1 = xor i1 %lnot, true, !dbg !5241
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !5242
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !5242
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #14, !dbg !5242
  ret i1 %lnot1, !dbg !5243
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5244 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5247, metadata !DIExpression()), !dbg !5249
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5248, metadata !DIExpression()), !dbg !5250
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5251
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5252
  %div = udiv i64 %1, 64, !dbg !5252
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5253
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !5254
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5255
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5256
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !5257
  ret i1 %call, !dbg !5258
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !5259 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5267, metadata !DIExpression()), !dbg !5269
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5268, metadata !DIExpression()), !dbg !5270
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5271
  %1 = load i64, ptr %size.addr, align 8, !dbg !5272
  %conv = trunc i64 %1 to i32, !dbg !5272
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !5273
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5274
  %3 = load i64, ptr %size.addr, align 8, !dbg !5274
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #15, !dbg !5274
  ret void, !dbg !5275
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5276 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5279, metadata !DIExpression()), !dbg !5281
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5280, metadata !DIExpression()), !dbg !5282
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5283
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5284
  br i1 %1, label %cond.true, label %cond.false, !dbg !5284

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5285
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5286
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !5287
  %conv = zext i1 %call to i32, !dbg !5287
  br label %cond.end, !dbg !5284

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5288
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5289
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #15, !dbg !5290
  %conv2 = zext i1 %call1 to i32, !dbg !5290
  br label %cond.end, !dbg !5284

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5284
  %tobool = icmp ne i32 %cond, 0, !dbg !5284
  ret i1 %tobool, !dbg !5291
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5292 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5297, metadata !DIExpression()), !dbg !5299
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5298, metadata !DIExpression()), !dbg !5300
  ret i1 true, !dbg !5301
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !5302 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5307, metadata !DIExpression()), !dbg !5310
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5308, metadata !DIExpression()), !dbg !5311
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5309, metadata !DIExpression()), !dbg !5312
  ret void, !dbg !5313
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5314 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5318, metadata !DIExpression()), !dbg !5320
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5319, metadata !DIExpression()), !dbg !5321
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5322
  %and = and i64 %0, 63, !dbg !5323
  %shl = shl i64 1, %and, !dbg !5324
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5325
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5326
  %shr = ashr i64 %2, 6, !dbg !5327
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5325
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5325
  %and1 = and i64 %shl, %3, !dbg !5328
  %cmp = icmp ne i64 %and1, 0, !dbg !5329
  ret i1 %cmp, !dbg !5330
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5331 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5333, metadata !DIExpression()), !dbg !5336
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5334, metadata !DIExpression()), !dbg !5337
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !5338
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5335, metadata !DIExpression()), !dbg !5339
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5340
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5341
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !5342, !srcloc !5343
  %3 = icmp ult i8 %2, 2, !dbg !5342
  call void @llvm.assume(i1 %3), !dbg !5342
  store i8 %2, ptr %oldbit, align 1, !dbg !5342
  %4 = load i8, ptr %oldbit, align 1, !dbg !5344, !range !4299, !noundef !719
  %tobool = trunc i8 %4 to i1, !dbg !5344
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !5345
  ret i1 %tobool, !dbg !5346
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #3 align 16 !dbg !5347 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !5352, metadata !DIExpression()), !dbg !5353
  ret void, !dbg !5354
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fpregs_state_valid(ptr noundef %fpu, i32 noundef %cpu) #4 align 16 !dbg !5355 {
entry:
  %fpu.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %fpu, ptr %fpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpu.addr, metadata !5359, metadata !DIExpression()), !dbg !5367
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5360, metadata !DIExpression()), !dbg !5368
  %0 = load ptr, ptr %fpu.addr, align 8, !dbg !5369
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !5370
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !5361, metadata !DIExpression()), !dbg !5370
  br label %do.body, !dbg !5370

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5371
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5363, metadata !DIExpression()), !dbg !5371
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5371
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !5371
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5370
  br label %do.cond, !dbg !5371

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5371

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !5372
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !5365, metadata !DIExpression()), !dbg !5372
  %2 = call i64 asm sideeffect "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @fpu_fpregs_owner_ctx) #14, !dbg !5372, !srcloc !5373
  store i64 %2, ptr %pfo_val__, align 8, !dbg !5372
  %3 = load i64, ptr %pfo_val__, align 8, !dbg !5372
  %4 = inttoptr i64 %3 to ptr, !dbg !5372
  store ptr %4, ptr %tmp, align 8, !dbg !5372
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !5370
  %5 = load ptr, ptr %tmp, align 8, !dbg !5372
  store ptr %5, ptr %pscr_ret__, align 8, !dbg !5370
  %6 = load ptr, ptr %pscr_ret__, align 8, !dbg !5370
  store ptr %6, ptr %tmp1, align 8, !dbg !5370
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !5374
  %7 = load ptr, ptr %tmp1, align 8, !dbg !5370
  %cmp = icmp eq ptr %0, %7, !dbg !5375
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5376

land.rhs:                                         ; preds = %do.end
  %8 = load i32, ptr %cpu.addr, align 4, !dbg !5377
  %9 = load ptr, ptr %fpu.addr, align 8, !dbg !5378
  %last_cpu = getelementptr inbounds %struct.fpu, ptr %9, i32 0, i32 0, !dbg !5379
  %10 = load i32, ptr %last_cpu, align 64, !dbg !5379
  %cmp2 = icmp eq i32 %8, %10, !dbg !5380
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end
  %11 = phi i1 [ false, %do.end ], [ %cmp2, %land.rhs ], !dbg !5381
  %land.ext = zext i1 %11 to i32, !dbg !5376
  ret i32 %land.ext, !dbg !5382
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5383 dso_local void @restore_fpregs_from_fpstate(ptr noundef, i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fpregs_activate(ptr noundef %fpu) #4 align 16 !dbg !5386 {
entry:
  %fpu.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  store ptr %fpu, ptr %fpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpu.addr, metadata !5388, metadata !DIExpression()), !dbg !5395
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #15, !dbg !5396
  br label %do.body, !dbg !5396

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5397

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5398
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !5389, metadata !DIExpression()), !dbg !5398
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5398
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5398
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5397
  br label %do.end, !dbg !5398

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5397

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #14, !dbg !5399
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !5393, metadata !DIExpression()), !dbg !5399
  %1 = load ptr, ptr %fpu.addr, align 8, !dbg !5399
  %2 = ptrtoint ptr %1 to i64, !dbg !5399
  store i64 %2, ptr %pto_val__, align 8, !dbg !5399
  %3 = load i64, ptr %pto_val__, align 8, !dbg !5399
  call void asm "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @fpu_fpregs_owner_ctx, i64 %3, ptr elementtype(ptr) @fpu_fpregs_owner_ctx) #14, !dbg !5399, !srcloc !5400
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #14, !dbg !5397
  br label %do.end3, !dbg !5399

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5397

do.end4:                                          ; preds = %do.end3
  %4 = load ptr, ptr %fpu.addr, align 8, !dbg !5401
  call void @trace_x86_fpu_regs_activated(ptr noundef %4) #15, !dbg !5402
  ret void, !dbg !5403
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #4 align 16 !dbg !5404 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !5408, metadata !DIExpression()), !dbg !5410
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !5409, metadata !DIExpression()), !dbg !5411
  %0 = load i32, ptr %flag.addr, align 4, !dbg !5412
  %conv = sext i32 %0 to i64, !dbg !5412
  %1 = load ptr, ptr %ti.addr, align 8, !dbg !5413
  %flags = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 0, !dbg !5414
  call void @clear_bit(i64 noundef %conv, ptr noundef %flags) #15, !dbg !5415
  ret void, !dbg !5416
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_x86_fpu_regs_activated(ptr noundef %fpu) #4 align 16 !dbg !25 {
entry:
  %fpu.addr = alloca ptr, align 8
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
  %__UNIQUE_ID_rcu354 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %fpu, ptr %fpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpu.addr, metadata !4230, metadata !DIExpression()), !dbg !5417
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_x86_fpu_regs_activated, i32 0, i32 1)) #15, !dbg !5418
  br i1 %call, label %if.then, label %if.end68, !dbg !5417

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5418

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #14, !dbg !5419
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !4231, metadata !DIExpression()), !dbg !5419
  store i32 0, ptr %__idx, align 4, !dbg !5419
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !5420
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4234, metadata !DIExpression()), !dbg !5420
  br label %do.body1, !dbg !5420

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5421
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4237, metadata !DIExpression()), !dbg !5421
  store ptr null, ptr %__vpp_verify, align 8, !dbg !5421
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !5421
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !5420
  br label %do.cond, !dbg !5421

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !5421

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !5422
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4239, metadata !DIExpression()), !dbg !5422
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !5422, !srcloc !5423
  store i32 %1, ptr %pfo_val__, align 4, !dbg !5422
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !5422
  %conv = zext i32 %2 to i64, !dbg !5422
  %conv2 = trunc i64 %conv to i32, !dbg !5422
  store i32 %conv2, ptr %tmp, align 4, !dbg !5422
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !5420
  %3 = load i32, ptr %tmp, align 4, !dbg !5422
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !5420
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !5420
  store i32 %4, ptr %tmp3, align 4, !dbg !5420
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !5424
  %5 = load i32, ptr %tmp3, align 4, !dbg !5420
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #15, !dbg !5424
  br i1 %call4, label %if.end, label %if.then5, !dbg !5419

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5424

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5425
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4241, metadata !DIExpression()), !dbg !5425
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !5425
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5426
  %tobool = icmp ne i32 %6, 0, !dbg !5426
  %lnot = xor i1 %tobool, true, !dbg !5426
  %lnot6 = xor i1 %lnot, true, !dbg !5426
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !5426
  %conv7 = sext i32 %lnot.ext to i64, !dbg !5426
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5426
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5426
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !5425

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !5426

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !5427
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4244, metadata !DIExpression()), !dbg !5427
  store i32 2307, ptr %__flags, align 4, !dbg !5427
  br label %do.body11, !dbg !5427

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !5428

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5428

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5427

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !5430
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 60, i32 %7, i64 12) #14, !dbg !5430, !srcloc !5432
  br label %do.cond15, !dbg !5430

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5430

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5427

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5433

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5433

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !5426
  br label %do.cond20, !dbg !5427

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5427

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !5427

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5425
  %tobool24 = icmp ne i32 %8, 0, !dbg !5425
  %lnot25 = xor i1 %tobool24, true, !dbg !5425
  %lnot27 = xor i1 %lnot25, true, !dbg !5425
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !5425
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !5425
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !5425
  store i64 %expval30, ptr %tmp23, align 8, !dbg !5426
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !5435
  %9 = load i64, ptr %tmp23, align 8, !dbg !5425
  %tobool31 = icmp ne i64 %9, 0, !dbg !5435
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !5419

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5435

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !5419

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #15, !dbg !5436
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !5436, !srcloc !5438
  br label %do.cond35, !dbg !5436

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !5436

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !5419

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #14, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !4247, metadata !DIExpression()), !dbg !5439
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #14, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !4249, metadata !DIExpression()), !dbg !5439
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu354) #14, !dbg !5440
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu354, metadata !4250, metadata !DIExpression()), !dbg !5440
  br label %do.body38, !dbg !5441

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !5443

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !5443

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_x86_fpu_regs_activated, i32 0, i32 8), align 8, !dbg !5441
  store ptr %10, ptr %tmp41, align 8, !dbg !5443
  %11 = load ptr, ptr %tmp41, align 8, !dbg !5441
  store ptr %11, ptr %__UNIQUE_ID_rcu354, align 8, !dbg !5440
  %12 = load ptr, ptr %__UNIQUE_ID_rcu354, align 8, !dbg !5440
  store ptr %12, ptr %tmp42, align 8, !dbg !5440
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu354) #14, !dbg !5439
  %13 = load ptr, ptr %tmp42, align 8, !dbg !5440
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !5439
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !5445
  %tobool43 = icmp ne ptr %14, null, !dbg !5445
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !5439

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !5447
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !5447
  %16 = load ptr, ptr %data, align 8, !dbg !5447
  store ptr %16, ptr %__data, align 8, !dbg !5447
  store ptr @__SCT__tp_func_x86_fpu_regs_activated, ptr %tmp45, align 8, !dbg !5449
  %17 = load ptr, ptr %tmp45, align 8, !dbg !5449
  %18 = load ptr, ptr %__data, align 8, !dbg !5447
  %19 = load ptr, ptr %fpu.addr, align 8, !dbg !5447
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19) #15, !dbg !5447
  br label %if.end47, !dbg !5447

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #14, !dbg !5419
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #14, !dbg !5419
  br label %do.cond48, !dbg !5439

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !5439

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !5419

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !5451, !srcloc !5453
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #15, !dbg !5454
  %lnot52 = xor i1 %call51, true, !dbg !5454
  %lnot54 = xor i1 %lnot52, true, !dbg !5454
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !5454
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !5454
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !5454
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !5454
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !5451

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !5454

do.body60:                                        ; preds = %if.then59
  %20 = call i64 @llvm.read_register.i64(metadata !4252), !dbg !5456
  %21 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %20) #14, !dbg !5456, !srcloc !5458
  call void @llvm.write_register.i64(metadata !4252, i64 %21), !dbg !5456
  br label %do.cond61, !dbg !5456

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5456

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !5456

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !5451

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !5451

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5418
  br label %cleanup, !dbg !5418

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #14, !dbg !5418
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !5419

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !5419

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !5417

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #3 align 16 !dbg !5459 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5475, metadata !DIExpression()), !dbg !5476
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5477
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #15, !dbg !5478
  ret i1 %call, !dbg !5479
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #4 align 16 !dbg !5480 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5484, metadata !DIExpression()), !dbg !5485
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5486
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #15, !dbg !5487
  ret i1 %call, !dbg !5488
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_x86_fpu_regs_activated(ptr noundef, ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #3 align 16 !dbg !5489 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #14, !dbg !5493
  call void @llvm.dbg.declare(metadata ptr %c, metadata !5491, metadata !DIExpression()), !dbg !5493
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 1)) #14, !dbg !5493, !srcloc !5494
  %1 = icmp ult i8 %0, 2, !dbg !5493
  call void @llvm.assume(i1 %1), !dbg !5493
  store i8 %0, ptr %c, align 1, !dbg !5493
  %2 = load i8, ptr %c, align 1, !dbg !5493, !range !4299, !noundef !719
  %tobool = trunc i8 %2 to i1, !dbg !5493
  %frombool = zext i1 %tobool to i8, !dbg !5493
  store i8 %frombool, ptr %tmp, align 1, !dbg !5493
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #14, !dbg !5495
  %3 = load i8, ptr %tmp, align 1, !dbg !5493, !range !4299, !noundef !719
  %tobool1 = trunc i8 %3 to i1, !dbg !5493
  ret i1 %tobool1, !dbg !5496
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !5497 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !5502, metadata !DIExpression()), !dbg !5505
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !5503, metadata !DIExpression()), !dbg !5506
  %0 = load ptr, ptr %key.addr, align 8, !dbg !5507
  %1 = load i8, ptr %branch.addr, align 1, !dbg !5508, !range !4299, !noundef !719
  %tobool = trunc i8 %1 to i1, !dbg !5508
  %conv = zext i1 %tobool to i32, !dbg !5508
  %or = or i32 2, %conv, !dbg !5509
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #14
          to label %asm.fallthrough [label %l_yes], !dbg !5510, !srcloc !5511

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5512
  br label %return, !dbg !5512

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !5504), !dbg !5513
  store i1 true, ptr %retval, align 1, !dbg !5514
  br label %return, !dbg !5514

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !5515
  ret i1 %2, !dbg !5515
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #3 align 16 !dbg !5516 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5520, metadata !DIExpression()), !dbg !5522
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !5521, metadata !DIExpression()), !dbg !5523
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5524
  %call = call i32 @cpumask_check(i32 noundef %0) #15, !dbg !5524
  %conv = zext i32 %call to i64, !dbg !5524
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !5524
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !5524
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !5524
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #15, !dbg !5524
  ret i1 %call1, !dbg !5525
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #3 align 16 !dbg !5526 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5530, metadata !DIExpression()), !dbg !5531
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !5532
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #15, !dbg !5533
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !5534
  ret i32 %1, !dbg !5535
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #3 align 16 !dbg !5536 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !5540, metadata !DIExpression()), !dbg !5542
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !5541, metadata !DIExpression()), !dbg !5543
  ret void, !dbg !5544
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5545 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5551, metadata !DIExpression()), !dbg !5553
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5552, metadata !DIExpression()), !dbg !5554
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5555
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5556
  %div = sdiv i64 %1, 64, !dbg !5556
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5557
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !5558
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5559
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5560
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !5561
  ret void, !dbg !5562
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !5563 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5565, metadata !DIExpression()), !dbg !5567
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5566, metadata !DIExpression()), !dbg !5568
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5569
  %1 = load i64, ptr %size.addr, align 8, !dbg !5570
  %conv = trunc i64 %1 to i32, !dbg !5570
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !5571
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5572
  %3 = load i64, ptr %size.addr, align 8, !dbg !5572
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #15, !dbg !5572
  ret void, !dbg !5573
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !5574 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5576, metadata !DIExpression()), !dbg !5578
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5577, metadata !DIExpression()), !dbg !5579
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5580
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5582
  br i1 %1, label %if.then, label %if.else, !dbg !5583

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5584
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5584
  %shr = ashr i64 %3, 3, !dbg !5584
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5584
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5586
  %and = and i64 %4, 7, !dbg !5586
  %sh_prom = trunc i64 %and to i32, !dbg !5586
  %shl = shl i32 1, %sh_prom, !dbg !5586
  %not = xor i32 %shl, -1, !dbg !5587
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #14, !dbg !5588, !srcloc !5589
  br label %if.end, !dbg !5590

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5591
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5593
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #14, !dbg !5594, !srcloc !5595
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5596
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !5597 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5599, metadata !DIExpression()), !dbg !5601
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5600, metadata !DIExpression()), !dbg !5602
  ret i1 true, !dbg !5603
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disabled_inc() #3 align 16 !dbg !5604 {
entry:
  %call = call ptr @get_current() #15, !dbg !5605
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 181, !dbg !5606
  %0 = load i32, ptr %pagefault_disabled, align 4, !dbg !5607
  %inc = add i32 %0, 1, !dbg !5607
  store i32 %inc, ptr %pagefault_disabled, align 4, !dbg !5607
  ret void, !dbg !5608
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xsave_to_user_sigframe(ptr noundef %buf) #4 align 16 !dbg !5609 {
entry:
  %buf.addr = alloca ptr, align 8
  %fpstate = alloca ptr, align 8
  %mask = alloca i64, align 8
  %lmask = alloca i32, align 4
  %hmask = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5613, metadata !DIExpression()), !dbg !5619
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpstate) #14, !dbg !5620
  call void @llvm.dbg.declare(metadata ptr %fpstate, metadata !5614, metadata !DIExpression()), !dbg !5621
  %call = call ptr @get_current() #15, !dbg !5622
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !5623
  %fpu = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !5624
  %fpstate1 = getelementptr inbounds %struct.fpu, ptr %fpu, i32 0, i32 2, !dbg !5625
  %0 = load ptr, ptr %fpstate1, align 16, !dbg !5625
  store ptr %0, ptr %fpstate, align 8, !dbg !5621
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !5626
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5615, metadata !DIExpression()), !dbg !5627
  %1 = load ptr, ptr %fpstate, align 8, !dbg !5628
  %user_xfeatures = getelementptr inbounds %struct.fpstate, ptr %1, i32 0, i32 3, !dbg !5629
  %2 = load i64, ptr %user_xfeatures, align 16, !dbg !5629
  store i64 %2, ptr %mask, align 8, !dbg !5627
  call void @llvm.lifetime.start.p0(i64 4, ptr %lmask) #14, !dbg !5630
  call void @llvm.dbg.declare(metadata ptr %lmask, metadata !5616, metadata !DIExpression()), !dbg !5631
  call void @llvm.lifetime.start.p0(i64 4, ptr %hmask) #14, !dbg !5632
  call void @llvm.dbg.declare(metadata ptr %hmask, metadata !5617, metadata !DIExpression()), !dbg !5633
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5634
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5618, metadata !DIExpression()), !dbg !5635
  %call2 = call zeroext i1 @fpu_state_size_dynamic() #16, !dbg !5636
  br i1 %call2, label %if.then, label %if.end, !dbg !5638

if.then:                                          ; preds = %entry
  %call3 = call i64 @xfeatures_need_sigframe_write() #15, !dbg !5639
  %3 = load i64, ptr %mask, align 8, !dbg !5640
  %and = and i64 %3, %call3, !dbg !5640
  store i64 %and, ptr %mask, align 8, !dbg !5640
  br label %if.end, !dbg !5641

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, ptr %mask, align 8, !dbg !5642
  %conv = trunc i64 %4 to i32, !dbg !5642
  store i32 %conv, ptr %lmask, align 4, !dbg !5643
  %5 = load i64, ptr %mask, align 8, !dbg !5644
  %shr = lshr i64 %5, 32, !dbg !5645
  %conv4 = trunc i64 %shr to i32, !dbg !5644
  store i32 %conv4, ptr %hmask, align 4, !dbg !5646
  %6 = load ptr, ptr %fpstate, align 8, !dbg !5647
  %7 = load i64, ptr %mask, align 8, !dbg !5648
  call void @xfd_validate_state(ptr noundef %6, i64 noundef %7, i1 noundef zeroext false) #15, !dbg !5649
  call void @stac() #15, !dbg !5650
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !5651
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !5651
  %10 = load i32, ptr %lmask, align 4, !dbg !5651
  %11 = load i32, ptr %hmask, align 4, !dbg !5651
  %12 = call i32 asm sideeffect "1:.byte 0x48, 0x0f,0xae,0x27\0A\09xor $0, $0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 15 \0A .popsection\0A", "={ax},{di},*m,{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %8, ptr elementtype(%struct.xregs_state) %9, i32 %10, i32 %11) #14, !dbg !5651, !srcloc !5652
  store i32 %12, ptr %err, align 4, !dbg !5651
  call void @clac() #15, !dbg !5653
  %13 = load i32, ptr %err, align 4, !dbg !5654
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5655
  call void @llvm.lifetime.end.p0(i64 4, ptr %hmask) #14, !dbg !5655
  call void @llvm.lifetime.end.p0(i64 4, ptr %lmask) #14, !dbg !5655
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !5655
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpstate) #14, !dbg !5655
  ret i32 %13, !dbg !5656
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fxsave_to_user_sigframe(ptr noundef %fx) #4 align 16 !dbg !5657 {
entry:
  %fx.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %fx, ptr %fx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fx.addr, metadata !5662, metadata !DIExpression()), !dbg !5666
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5667
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5663, metadata !DIExpression()), !dbg !5667
  call void @might_fault() #15, !dbg !5667
  %0 = load ptr, ptr %fx.addr, align 8, !dbg !5667
  %1 = load ptr, ptr %fx.addr, align 8, !dbg !5667
  %2 = call i32 asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A\0A1: fxsaveq $1\0A2: # ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 15 \0A .popsection\0A", "={ax},=*m,0,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.fxregs_state) %0, i32 0, ptr elementtype(%struct.fxregs_state) %1) #14, !dbg !5667, !srcloc !5668
  store i32 %2, ptr %err, align 4, !dbg !5667
  %3 = load i32, ptr %err, align 4, !dbg !5667
  store i32 %3, ptr %tmp, align 4, !dbg !5667
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5669
  %4 = load i32, ptr %tmp, align 4, !dbg !5667
  ret i32 %4, !dbg !5670
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fnsave_to_user_sigframe(ptr noundef %fx) #4 align 16 !dbg !5671 {
entry:
  %fx.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %fx, ptr %fx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fx.addr, metadata !5675, metadata !DIExpression()), !dbg !5678
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !5679
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5676, metadata !DIExpression()), !dbg !5679
  call void @might_fault() #15, !dbg !5679
  %0 = load ptr, ptr %fx.addr, align 8, !dbg !5679
  %1 = load ptr, ptr %fx.addr, align 8, !dbg !5679
  %2 = call i32 asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A\0A1: fnsave $1; fwait\0A2: # ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 15 \0A .popsection\0A", "={ax},=*m,0,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.fregs_state) %0, i32 0, ptr elementtype(%struct.fregs_state) %1) #14, !dbg !5679, !srcloc !5680
  store i32 %2, ptr %err, align 4, !dbg !5679
  %3 = load i32, ptr %err, align 4, !dbg !5679
  store i32 %3, ptr %tmp, align 4, !dbg !5679
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !5681
  %4 = load i32, ptr %tmp, align 4, !dbg !5679
  ret i32 %4, !dbg !5682
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read)
define internal zeroext i1 @fpu_state_size_dynamic() #6 align 16 !dbg !5683 {
entry:
  %branch = alloca i8, align 1
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr %branch) #14, !dbg !5688
  call void @llvm.dbg.declare(metadata ptr %branch, metadata !5686, metadata !DIExpression()), !dbg !5688
  %call = call zeroext i1 @arch_static_branch(ptr noundef @__fpu_state_size_dynamic, i1 noundef zeroext false) #15, !dbg !5689
  %frombool = zext i1 %call to i8, !dbg !5689
  store i8 %frombool, ptr %branch, align 1, !dbg !5689
  %0 = load i8, ptr %branch, align 1, !dbg !5688, !range !4299, !noundef !719
  %tobool = trunc i8 %0 to i1, !dbg !5688
  %lnot = xor i1 %tobool, true, !dbg !5688
  %lnot1 = xor i1 %lnot, true, !dbg !5688
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5688
  %conv = sext i32 %lnot.ext to i64, !dbg !5688
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5688
  store i64 %expval, ptr %tmp, align 8, !dbg !5692
  call void @llvm.lifetime.end.p0(i64 1, ptr %branch) #14, !dbg !5693
  %1 = load i64, ptr %tmp, align 8, !dbg !5688
  %tobool2 = icmp ne i64 %1, 0, !dbg !5693
  ret i1 %tobool2, !dbg !5694
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @xfeatures_need_sigframe_write() #4 align 16 !dbg !5695 {
entry:
  %xfeaures_to_write = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %xfeaures_to_write) #14, !dbg !5700
  call void @llvm.dbg.declare(metadata ptr %xfeaures_to_write, metadata !5699, metadata !DIExpression()), !dbg !5701
  %call = call i64 @xfeatures_in_use() #15, !dbg !5702
  store i64 %call, ptr %xfeaures_to_write, align 8, !dbg !5703
  %0 = load i64, ptr %xfeaures_to_write, align 8, !dbg !5704
  %or = or i64 %0, 767, !dbg !5704
  store i64 %or, ptr %xfeaures_to_write, align 8, !dbg !5704
  %1 = load i64, ptr %xfeaures_to_write, align 8, !dbg !5705
  call void @llvm.lifetime.end.p0(i64 8, ptr %xfeaures_to_write) #14, !dbg !5706
  ret i64 %1, !dbg !5707
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5708 dso_local void @xfd_validate_state(ptr noundef, i64 noundef, i1 noundef zeroext) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @xfeatures_in_use() #3 align 16 !dbg !5711 {
entry:
  %call = call i64 @xgetbv(i32 noundef 1) #15, !dbg !5713
  ret i64 %call, !dbg !5714
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @xgetbv(i32 noundef %index) #3 align 16 !dbg !5715 {
entry:
  %index.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %index, ptr %index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %index.addr, metadata !5719, metadata !DIExpression()), !dbg !5722
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #14, !dbg !5723
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !5720, metadata !DIExpression()), !dbg !5724
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #14, !dbg !5723
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !5721, metadata !DIExpression()), !dbg !5725
  %0 = load i32, ptr %index.addr, align 4, !dbg !5726
  %1 = call { i32, i32 } asm sideeffect "xgetbv", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #14, !dbg !5727, !srcloc !5728
  %asmresult = extractvalue { i32, i32 } %1, 0, !dbg !5727
  %asmresult1 = extractvalue { i32, i32 } %1, 1, !dbg !5727
  store i32 %asmresult, ptr %eax, align 4, !dbg !5727
  store i32 %asmresult1, ptr %edx, align 4, !dbg !5727
  %2 = load i32, ptr %eax, align 4, !dbg !5729
  %conv = zext i32 %2 to i64, !dbg !5729
  %3 = load i32, ptr %edx, align 4, !dbg !5730
  %conv2 = zext i32 %3 to i64, !dbg !5731
  %shl = shl i64 %conv2, 32, !dbg !5732
  %add = add i64 %conv, %shl, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #14, !dbg !5734
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #14, !dbg !5734
  ret i64 %add, !dbg !5735
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pagefault_disabled_dec() #3 align 16 !dbg !5736 {
entry:
  %call = call ptr @get_current() #15, !dbg !5737
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 181, !dbg !5738
  %0 = load i32, ptr %pagefault_disabled, align 4, !dbg !5739
  %dec = add i32 %0, -1, !dbg !5739
  store i32 %dec, ptr %pagefault_disabled, align 4, !dbg !5739
  ret void, !dbg !5740
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @local_bh_enable() #4 align 16 !dbg !5741 {
entry:
  %__here = alloca i64, align 8
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__here) #14, !dbg !5745
  call void @llvm.dbg.declare(metadata ptr %__here, metadata !5743, metadata !DIExpression()), !dbg !5745
  %0 = call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #17, !dbg !5745, !srcloc !5746
  store i64 %0, ptr %__here, align 8, !dbg !5745
  %1 = load i64, ptr %__here, align 8, !dbg !5745
  store i64 %1, ptr %tmp, align 8, !dbg !5745
  call void @llvm.lifetime.end.p0(i64 8, ptr %__here) #14, !dbg !5747
  %2 = load i64, ptr %tmp, align 8, !dbg !5745
  call void @__local_bh_enable_ip(i64 noundef %2, i32 noundef 512) #15, !dbg !5748
  ret void, !dbg !5749
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5750 dso_local void @__local_bh_enable_ip(i64 noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @fxsave(ptr noundef %fx) #4 align 16 !dbg !5751 {
entry:
  %fx.addr = alloca ptr, align 8
  store ptr %fx, ptr %fx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fx.addr, metadata !5755, metadata !DIExpression()), !dbg !5756
  %0 = load ptr, ptr %fx.addr, align 8, !dbg !5757
  call void asm sideeffect "fxsaveq $0", "=*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.fxregs_state) %0) #14, !dbg !5759, !srcloc !5760
  ret void, !dbg !5761
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5762 dso_local void @convert_from_fxsr(ptr noundef, ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !5766 {
entry:
  %retval = alloca i64, align 8
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5770, metadata !DIExpression()), !dbg !5773
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5771, metadata !DIExpression()), !dbg !5774
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5772, metadata !DIExpression()), !dbg !5775
  call void @might_fault() #15, !dbg !5776
  %call = call zeroext i1 @should_fail_usercopy() #15, !dbg !5777
  br i1 %call, label %if.then, label %if.end, !dbg !5779

if.then:                                          ; preds = %entry
  %0 = load i64, ptr %n.addr, align 8, !dbg !5780
  store i64 %0, ptr %retval, align 8, !dbg !5781
  br label %return, !dbg !5781

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %to.addr, align 8, !dbg !5782
  %2 = load ptr, ptr %from.addr, align 8, !dbg !5783
  %3 = load i64, ptr %n.addr, align 8, !dbg !5784
  call void @instrument_copy_to_user(ptr noundef %1, ptr noundef %2, i64 noundef %3) #15, !dbg !5785
  %4 = load ptr, ptr %from.addr, align 8, !dbg !5786
  %5 = load i64, ptr %n.addr, align 8, !dbg !5787
  call void @check_object_size(ptr noundef %4, i64 noundef %5, i1 noundef zeroext true) #15, !dbg !5788
  %6 = load ptr, ptr %to.addr, align 8, !dbg !5789
  %7 = load ptr, ptr %from.addr, align 8, !dbg !5790
  %8 = load i64, ptr %n.addr, align 8, !dbg !5791
  %call1 = call i64 @raw_copy_to_user(ptr noundef %6, ptr noundef %7, i64 noundef %8) #15, !dbg !5792
  store i64 %call1, ptr %retval, align 8, !dbg !5793
  br label %return, !dbg !5793

return:                                           ; preds = %if.end, %if.then
  %9 = load i64, ptr %retval, align 8, !dbg !5794
  ret i64 %9, !dbg !5794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #4 align 16 !dbg !5795 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5800, metadata !DIExpression()), !dbg !5804
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5801, metadata !DIExpression()), !dbg !5805
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !5802, metadata !DIExpression()), !dbg !5806
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !5803, metadata !DIExpression()), !dbg !5807
  ret void, !dbg !5808
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_unpoison_memory(ptr noundef %address, i64 noundef %size) #4 align 16 !dbg !5809 {
entry:
  %address.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !5813, metadata !DIExpression()), !dbg !5815
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5814, metadata !DIExpression()), !dbg !5816
  ret void, !dbg !5817
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @should_fail_usercopy() #4 align 16 !dbg !5818 {
entry:
  ret i1 false, !dbg !5820
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !5821 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5825, metadata !DIExpression()), !dbg !5828
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5826, metadata !DIExpression()), !dbg !5829
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5827, metadata !DIExpression()), !dbg !5830
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5831
  %1 = load i64, ptr %n.addr, align 8, !dbg !5832
  %conv = trunc i64 %1 to i32, !dbg !5832
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #15, !dbg !5833
  %2 = load ptr, ptr %from.addr, align 8, !dbg !5834
  %3 = load i64, ptr %n.addr, align 8, !dbg !5834
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 0) #15, !dbg !5834
  %4 = load ptr, ptr %to.addr, align 8, !dbg !5835
  %5 = load ptr, ptr %from.addr, align 8, !dbg !5836
  %6 = load i64, ptr %n.addr, align 8, !dbg !5837
  call void @kmsan_copy_to_user(ptr noundef %4, ptr noundef %5, i64 noundef %6, i64 noundef 0) #15, !dbg !5838
  ret void, !dbg !5839
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #4 align 16 !dbg !5840 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5844, metadata !DIExpression()), !dbg !5847
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5845, metadata !DIExpression()), !dbg !5848
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !5846, metadata !DIExpression()), !dbg !5849
  ret void, !dbg !5850
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_copy_to_user(ptr noundef %dst, ptr noundef %src, i64 noundef %size) #3 align 16 !dbg !5851 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !5853, metadata !DIExpression()), !dbg !5856
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !5854, metadata !DIExpression()), !dbg !5857
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5855, metadata !DIExpression()), !dbg !5858
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !5859
  %1 = load ptr, ptr %src.addr, align 8, !dbg !5860
  %2 = load i64, ptr %size.addr, align 8, !dbg !5861
  %call = call i64 @copy_user_generic(ptr noundef %0, ptr noundef %1, i64 noundef %2) #15, !dbg !5862
  ret i64 %call, !dbg !5863
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_user_generic(ptr noundef %to, ptr noundef %from, i64 noundef %len) #3 align 16 !dbg !5864 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5866, metadata !DIExpression()), !dbg !5869
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5867, metadata !DIExpression()), !dbg !5870
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !5868, metadata !DIExpression()), !dbg !5871
  call void @stac() #15, !dbg !5872
  %0 = load i64, ptr %len.addr, align 8, !dbg !5873
  %1 = load ptr, ptr %to.addr, align 8, !dbg !5873
  %2 = load ptr, ptr %from.addr, align 8, !dbg !5873
  %3 = call i64 @llvm.read_register.i64(metadata !4252), !dbg !5873
  %4 = call { i64, ptr, ptr, i64 } asm sideeffect "1:\0A\09# ALT: oldnstr\0A661:\0A\09rep movsb\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (((1 << 0) << 16) $| ((18*32+ 4)))\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09call rep_movs_alternative\0A6651:\0A.popsection\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 3 \0A .popsection\0A", "={cx},={di},={si},={rsp},0,1,2,{rsp},~{memory},~{rax},~{dirflag},~{fpsr},~{flags}"(i64 %0, ptr %1, ptr %2, i64 %3) #14, !dbg !5873, !srcloc !5874
  %asmresult = extractvalue { i64, ptr, ptr, i64 } %4, 0, !dbg !5873
  %asmresult1 = extractvalue { i64, ptr, ptr, i64 } %4, 1, !dbg !5873
  %asmresult2 = extractvalue { i64, ptr, ptr, i64 } %4, 2, !dbg !5873
  %asmresult3 = extractvalue { i64, ptr, ptr, i64 } %4, 3, !dbg !5873
  store i64 %asmresult, ptr %len.addr, align 8, !dbg !5873
  store ptr %asmresult1, ptr %to.addr, align 8, !dbg !5873
  store ptr %asmresult2, ptr %from.addr, align 8, !dbg !5873
  call void @llvm.write_register.i64(metadata !4252, i64 %asmresult3), !dbg !5873
  call void @clac() #15, !dbg !5875
  %5 = load i64, ptr %len.addr, align 8, !dbg !5876
  ret i64 %5, !dbg !5877
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @save_sw_bytes(ptr noundef %sw_bytes, i1 noundef zeroext %ia32_frame, ptr noundef %fpstate) #4 align 16 !dbg !5878 {
entry:
  %sw_bytes.addr = alloca ptr, align 8
  %ia32_frame.addr = alloca i8, align 1
  %fpstate.addr = alloca ptr, align 8
  store ptr %sw_bytes, ptr %sw_bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sw_bytes.addr, metadata !5883, metadata !DIExpression()), !dbg !5886
  %frombool = zext i1 %ia32_frame to i8
  store i8 %frombool, ptr %ia32_frame.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %ia32_frame.addr, metadata !5884, metadata !DIExpression()), !dbg !5887
  store ptr %fpstate, ptr %fpstate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpstate.addr, metadata !5885, metadata !DIExpression()), !dbg !5888
  %0 = load ptr, ptr %sw_bytes.addr, align 8, !dbg !5889
  %magic1 = getelementptr inbounds %struct._fpx_sw_bytes, ptr %0, i32 0, i32 0, !dbg !5890
  store i32 1179670611, ptr %magic1, align 8, !dbg !5891
  %1 = load ptr, ptr %fpstate.addr, align 8, !dbg !5892
  %user_size = getelementptr inbounds %struct.fpstate, ptr %1, i32 0, i32 1, !dbg !5893
  %2 = load i32, ptr %user_size, align 4, !dbg !5893
  %conv = zext i32 %2 to i64, !dbg !5892
  %add = add i64 %conv, 4, !dbg !5894
  %conv1 = trunc i64 %add to i32, !dbg !5892
  %3 = load ptr, ptr %sw_bytes.addr, align 8, !dbg !5895
  %extended_size = getelementptr inbounds %struct._fpx_sw_bytes, ptr %3, i32 0, i32 1, !dbg !5896
  store i32 %conv1, ptr %extended_size, align 4, !dbg !5897
  %4 = load ptr, ptr %fpstate.addr, align 8, !dbg !5898
  %user_xfeatures = getelementptr inbounds %struct.fpstate, ptr %4, i32 0, i32 3, !dbg !5899
  %5 = load i64, ptr %user_xfeatures, align 16, !dbg !5899
  %6 = load ptr, ptr %sw_bytes.addr, align 8, !dbg !5900
  %xfeatures = getelementptr inbounds %struct._fpx_sw_bytes, ptr %6, i32 0, i32 2, !dbg !5901
  store i64 %5, ptr %xfeatures, align 8, !dbg !5902
  %7 = load ptr, ptr %fpstate.addr, align 8, !dbg !5903
  %user_size2 = getelementptr inbounds %struct.fpstate, ptr %7, i32 0, i32 1, !dbg !5904
  %8 = load i32, ptr %user_size2, align 4, !dbg !5904
  %9 = load ptr, ptr %sw_bytes.addr, align 8, !dbg !5905
  %xstate_size = getelementptr inbounds %struct._fpx_sw_bytes, ptr %9, i32 0, i32 3, !dbg !5906
  store i32 %8, ptr %xstate_size, align 8, !dbg !5907
  %10 = load i8, ptr %ia32_frame.addr, align 1, !dbg !5908, !range !4299, !noundef !719
  %tobool = trunc i8 %10 to i1, !dbg !5908
  br i1 %tobool, label %if.then, label %if.end, !dbg !5910

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %sw_bytes.addr, align 8, !dbg !5911
  %extended_size3 = getelementptr inbounds %struct._fpx_sw_bytes, ptr %11, i32 0, i32 1, !dbg !5912
  %12 = load i32, ptr %extended_size3, align 4, !dbg !5913
  %conv4 = zext i32 %12 to i64, !dbg !5913
  %add5 = add i64 %conv4, 112, !dbg !5913
  %conv6 = trunc i64 %add5 to i32, !dbg !5913
  store i32 %conv6, ptr %extended_size3, align 4, !dbg !5913
  br label %if.end, !dbg !5911

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5914
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_xstate_in_sigframe(ptr noundef %fxbuf, ptr noundef %fx_sw) #4 align 16 !dbg !5915 {
entry:
  %retval = alloca i1, align 1
  %fxbuf.addr = alloca ptr, align 8
  %fx_sw.addr = alloca ptr, align 8
  %min_xstate_size = alloca i32, align 4
  %fpstate = alloca ptr, align 8
  %magic2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i32, align 4
  %__tmp = alloca i64, align 8
  %tmp = alloca i32, align 4
  %tmp16 = alloca i64, align 8
  store ptr %fxbuf, ptr %fxbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fxbuf.addr, metadata !5919, metadata !DIExpression()), !dbg !5931
  store ptr %fx_sw, ptr %fx_sw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fx_sw.addr, metadata !5920, metadata !DIExpression()), !dbg !5932
  call void @llvm.lifetime.start.p0(i64 4, ptr %min_xstate_size) #14, !dbg !5933
  call void @llvm.dbg.declare(metadata ptr %min_xstate_size, metadata !5921, metadata !DIExpression()), !dbg !5934
  store i32 576, ptr %min_xstate_size, align 4, !dbg !5934
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpstate) #14, !dbg !5935
  call void @llvm.dbg.declare(metadata ptr %fpstate, metadata !5922, metadata !DIExpression()), !dbg !5936
  %0 = load ptr, ptr %fxbuf.addr, align 8, !dbg !5937
  store ptr %0, ptr %fpstate, align 8, !dbg !5936
  call void @llvm.lifetime.start.p0(i64 4, ptr %magic2) #14, !dbg !5938
  call void @llvm.dbg.declare(metadata ptr %magic2, metadata !5923, metadata !DIExpression()), !dbg !5939
  %1 = load ptr, ptr %fx_sw.addr, align 8, !dbg !5940
  %2 = load ptr, ptr %fxbuf.addr, align 8, !dbg !5942
  %3 = getelementptr inbounds %struct.fxregs_state, ptr %2, i32 0, i32 10, !dbg !5943
  %arrayidx = getelementptr [12 x i32], ptr %3, i64 0, i64 0, !dbg !5942
  %call = call i64 @__copy_from_user(ptr noundef %1, ptr noundef %arrayidx, i64 noundef 48) #15, !dbg !5944
  %tobool = icmp ne i64 %call, 0, !dbg !5944
  br i1 %tobool, label %if.then, label %if.end, !dbg !5945

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5946

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %fx_sw.addr, align 8, !dbg !5947
  %magic1 = getelementptr inbounds %struct._fpx_sw_bytes, ptr %4, i32 0, i32 0, !dbg !5949
  %5 = load i32, ptr %magic1, align 8, !dbg !5949
  %cmp = icmp ne i32 %5, 1179670611, !dbg !5950
  br i1 %cmp, label %if.then10, label %lor.lhs.false, !dbg !5951

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %fx_sw.addr, align 8, !dbg !5952
  %xstate_size = getelementptr inbounds %struct._fpx_sw_bytes, ptr %6, i32 0, i32 3, !dbg !5953
  %7 = load i32, ptr %xstate_size, align 8, !dbg !5953
  %8 = load i32, ptr %min_xstate_size, align 4, !dbg !5954
  %cmp1 = icmp ult i32 %7, %8, !dbg !5955
  br i1 %cmp1, label %if.then10, label %lor.lhs.false2, !dbg !5956

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %9 = load ptr, ptr %fx_sw.addr, align 8, !dbg !5957
  %xstate_size3 = getelementptr inbounds %struct._fpx_sw_bytes, ptr %9, i32 0, i32 3, !dbg !5958
  %10 = load i32, ptr %xstate_size3, align 8, !dbg !5958
  %call4 = call ptr @get_current() #15, !dbg !5959
  %thread = getelementptr inbounds %struct.task_struct, ptr %call4, i32 0, i32 197, !dbg !5960
  %fpu = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !5961
  %fpstate5 = getelementptr inbounds %struct.fpu, ptr %fpu, i32 0, i32 2, !dbg !5962
  %11 = load ptr, ptr %fpstate5, align 16, !dbg !5962
  %user_size = getelementptr inbounds %struct.fpstate, ptr %11, i32 0, i32 1, !dbg !5963
  %12 = load i32, ptr %user_size, align 4, !dbg !5963
  %cmp6 = icmp ugt i32 %10, %12, !dbg !5964
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7, !dbg !5965

lor.lhs.false7:                                   ; preds = %lor.lhs.false2
  %13 = load ptr, ptr %fx_sw.addr, align 8, !dbg !5966
  %xstate_size8 = getelementptr inbounds %struct._fpx_sw_bytes, ptr %13, i32 0, i32 3, !dbg !5967
  %14 = load i32, ptr %xstate_size8, align 8, !dbg !5967
  %15 = load ptr, ptr %fx_sw.addr, align 8, !dbg !5968
  %extended_size = getelementptr inbounds %struct._fpx_sw_bytes, ptr %15, i32 0, i32 1, !dbg !5969
  %16 = load i32, ptr %extended_size, align 4, !dbg !5969
  %cmp9 = icmp ugt i32 %14, %16, !dbg !5970
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5971

if.then10:                                        ; preds = %lor.lhs.false7, %lor.lhs.false2, %lor.lhs.false, %if.end
  br label %setfx, !dbg !5972

if.end11:                                         ; preds = %lor.lhs.false7
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_gu) #14, !dbg !5973
  call void @llvm.dbg.declare(metadata ptr %__ret_gu, metadata !5924, metadata !DIExpression()), !dbg !5973
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_gu) #14, !dbg !5973
  call void @llvm.dbg.declare(metadata ptr %__val_gu, metadata !5927, metadata !DIExpression()), !dbg !5973
  %17 = call i64 @llvm.read_register.i64(metadata !4252), !dbg !5973
  %18 = load ptr, ptr %fpstate, align 8, !dbg !5973
  %19 = load ptr, ptr %fx_sw.addr, align 8, !dbg !5973
  %xstate_size12 = getelementptr inbounds %struct._fpx_sw_bytes, ptr %19, i32 0, i32 3, !dbg !5973
  %20 = load i32, ptr %xstate_size12, align 8, !dbg !5973
  %idx.ext = zext i32 %20 to i64, !dbg !5973
  %add.ptr = getelementptr i8, ptr %18, i64 %idx.ext, !dbg !5973
  %21 = call { ptr, i32, i64 } asm sideeffect "call __get_user_nocheck_${4:c}", "={ax},={rdx},={rsp},0,i,{rsp},~{dirflag},~{fpsr},~{flags}"(ptr %add.ptr, i64 4, i64 %17) #14, !dbg !5973, !srcloc !5974
  %asmresult = extractvalue { ptr, i32, i64 } %21, 0, !dbg !5973
  %asmresult13 = extractvalue { ptr, i32, i64 } %21, 1, !dbg !5973
  %asmresult14 = extractvalue { ptr, i32, i64 } %21, 2, !dbg !5973
  %22 = ptrtoint ptr %asmresult to i64, !dbg !5973
  %23 = trunc i64 %22 to i32, !dbg !5973
  store i32 %23, ptr %__ret_gu, align 4, !dbg !5973
  store i32 %asmresult13, ptr %__val_gu, align 4, !dbg !5973
  call void @llvm.write_register.i64(metadata !4252, i64 %asmresult14), !dbg !5973
  call void @llvm.lifetime.start.p0(i64 8, ptr %__tmp) #14, !dbg !5975
  call void @llvm.dbg.declare(metadata ptr %__tmp, metadata !5928, metadata !DIExpression()), !dbg !5975
  %24 = load i32, ptr %__val_gu, align 4, !dbg !5975
  %conv = zext i32 %24 to i64, !dbg !5975
  store i64 %conv, ptr %__tmp, align 8, !dbg !5975
  call void @kmsan_unpoison_memory(ptr noundef %__tmp, i64 noundef 8) #15, !dbg !5975
  %25 = load i64, ptr %__tmp, align 8, !dbg !5975
  %conv15 = trunc i64 %25 to i32, !dbg !5975
  store i32 %conv15, ptr %__val_gu, align 4, !dbg !5975
  store i32 %conv15, ptr %tmp, align 4, !dbg !5975
  call void @llvm.lifetime.end.p0(i64 8, ptr %__tmp) #14, !dbg !5973
  %26 = load i32, ptr %tmp, align 4, !dbg !5975
  %27 = load i32, ptr %__val_gu, align 4, !dbg !5973
  store i32 %27, ptr %magic2, align 4, !dbg !5973
  %28 = load i32, ptr %__ret_gu, align 4, !dbg !5973
  %conv17 = sext i32 %28 to i64, !dbg !5973
  %expval = call i64 @llvm.expect.i64(i64 %conv17, i64 0), !dbg !5973
  store i64 %expval, ptr %tmp16, align 8, !dbg !5973
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_gu) #14, !dbg !5976
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_gu) #14, !dbg !5976
  %29 = load i64, ptr %tmp16, align 8, !dbg !5973
  %tobool18 = icmp ne i64 %29, 0, !dbg !5976
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5977

if.then19:                                        ; preds = %if.end11
  store i1 false, ptr %retval, align 1, !dbg !5978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5978

if.end20:                                         ; preds = %if.end11
  %30 = load i32, ptr %magic2, align 4, !dbg !5979
  %cmp21 = icmp eq i32 %30, 1179670597, !dbg !5979
  %lnot = xor i1 %cmp21, true, !dbg !5979
  %lnot23 = xor i1 %lnot, true, !dbg !5979
  %lnot.ext = zext i1 %lnot23 to i32, !dbg !5979
  %conv24 = sext i32 %lnot.ext to i64, !dbg !5979
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 1), !dbg !5979
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5979
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5981

if.then27:                                        ; preds = %if.end20
  store i1 true, ptr %retval, align 1, !dbg !5982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5982

if.end28:                                         ; preds = %if.end20
  br label %setfx, !dbg !5979

setfx:                                            ; preds = %if.end28, %if.then10
  call void @llvm.dbg.label(metadata !5930), !dbg !5983
  %call29 = call ptr @get_current() #15, !dbg !5984
  %thread30 = getelementptr inbounds %struct.task_struct, ptr %call29, i32 0, i32 197, !dbg !5985
  %fpu31 = getelementptr inbounds %struct.thread_struct, ptr %thread30, i32 0, i32 19, !dbg !5986
  call void @trace_x86_fpu_xstate_check_failed(ptr noundef %fpu31) #15, !dbg !5987
  %31 = load ptr, ptr %fx_sw.addr, align 8, !dbg !5988
  %magic132 = getelementptr inbounds %struct._fpx_sw_bytes, ptr %31, i32 0, i32 0, !dbg !5989
  store i32 0, ptr %magic132, align 8, !dbg !5990
  %32 = load ptr, ptr %fx_sw.addr, align 8, !dbg !5991
  %xstate_size33 = getelementptr inbounds %struct._fpx_sw_bytes, ptr %32, i32 0, i32 3, !dbg !5992
  store i32 512, ptr %xstate_size33, align 8, !dbg !5993
  %33 = load ptr, ptr %fx_sw.addr, align 8, !dbg !5994
  %xfeatures = getelementptr inbounds %struct._fpx_sw_bytes, ptr %33, i32 0, i32 2, !dbg !5995
  store i64 3, ptr %xfeatures, align 8, !dbg !5996
  store i1 true, ptr %retval, align 1, !dbg !5997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5997

cleanup:                                          ; preds = %setfx, %if.then27, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %magic2) #14, !dbg !5998
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpstate) #14, !dbg !5998
  call void @llvm.lifetime.end.p0(i64 4, ptr %min_xstate_size) #14, !dbg !5998
  %34 = load i1, ptr %retval, align 1, !dbg !5998
  ret i1 %34, !dbg !5998
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @restore_fpregs_from_user(ptr noundef %buf, i64 noundef %xrestore, i1 noundef zeroext %fx_only) #0 align 16 !dbg !5999 {
entry:
  %retval = alloca i1, align 1
  %buf.addr = alloca ptr, align 8
  %xrestore.addr = alloca i64, align 8
  %fx_only.addr = alloca i8, align 1
  %fpu = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6003, metadata !DIExpression()), !dbg !6009
  store i64 %xrestore, ptr %xrestore.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xrestore.addr, metadata !6004, metadata !DIExpression()), !dbg !6010
  %frombool = zext i1 %fx_only to i8
  store i8 %frombool, ptr %fx_only.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %fx_only.addr, metadata !6005, metadata !DIExpression()), !dbg !6011
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpu) #14, !dbg !6012
  call void @llvm.dbg.declare(metadata ptr %fpu, metadata !6006, metadata !DIExpression()), !dbg !6013
  %call = call ptr @get_current() #15, !dbg !6014
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !6015
  %fpu1 = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !6016
  store ptr %fpu1, ptr %fpu, align 8, !dbg !6013
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6017
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6007, metadata !DIExpression()), !dbg !6018
  %0 = load ptr, ptr %fpu, align 8, !dbg !6019
  %fpstate = getelementptr inbounds %struct.fpu, ptr %0, i32 0, i32 2, !dbg !6020
  %1 = load ptr, ptr %fpstate, align 16, !dbg !6020
  %user_xfeatures = getelementptr inbounds %struct.fpstate, ptr %1, i32 0, i32 3, !dbg !6021
  %2 = load i64, ptr %user_xfeatures, align 16, !dbg !6021
  %3 = load i64, ptr %xrestore.addr, align 8, !dbg !6022
  %and = and i64 %3, %2, !dbg !6022
  store i64 %and, ptr %xrestore.addr, align 8, !dbg !6022
  br label %retry, !dbg !6023

retry:                                            ; preds = %if.then20, %entry
  call void @llvm.dbg.label(metadata !6008), !dbg !6024
  call void @fpregs_lock() #15, !dbg !6025
  %4 = load ptr, ptr %fpu, align 8, !dbg !6026
  %fpstate2 = getelementptr inbounds %struct.fpu, ptr %4, i32 0, i32 2, !dbg !6027
  %5 = load ptr, ptr %fpstate2, align 16, !dbg !6027
  call void @xfd_update_state(ptr noundef %5) #15, !dbg !6028
  call void @pagefault_disable() #15, !dbg !6029
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !6030
  %7 = load ptr, ptr %fpu, align 8, !dbg !6031
  %fpstate3 = getelementptr inbounds %struct.fpu, ptr %7, i32 0, i32 2, !dbg !6032
  %8 = load ptr, ptr %fpstate3, align 16, !dbg !6032
  %user_xfeatures4 = getelementptr inbounds %struct.fpstate, ptr %8, i32 0, i32 3, !dbg !6033
  %9 = load i64, ptr %user_xfeatures4, align 16, !dbg !6033
  %10 = load i64, ptr %xrestore.addr, align 8, !dbg !6034
  %11 = load i8, ptr %fx_only.addr, align 1, !dbg !6035, !range !4299, !noundef !719
  %tobool = trunc i8 %11 to i1, !dbg !6035
  %call5 = call i32 @__restore_fpregs_from_user(ptr noundef %6, i64 noundef %9, i64 noundef %10, i1 noundef zeroext %tobool) #15, !dbg !6036
  store i32 %call5, ptr %ret, align 4, !dbg !6037
  call void @pagefault_enable() #15, !dbg !6038
  %12 = load i32, ptr %ret, align 4, !dbg !6039
  %tobool6 = icmp ne i32 %12, 0, !dbg !6039
  %lnot = xor i1 %tobool6, true, !dbg !6039
  %lnot7 = xor i1 %lnot, true, !dbg !6039
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !6039
  %conv = sext i32 %lnot.ext to i64, !dbg !6039
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6039
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6039
  br i1 %tobool8, label %if.then, label %if.end22, !dbg !6041

if.then:                                          ; preds = %retry
  %call9 = call ptr @get_current() #15, !dbg !6042
  %call10 = call i32 @test_ti_thread_flag(ptr noundef %call9, i32 noundef 14) #15, !dbg !6042
  %tobool11 = icmp ne i32 %call10, 0, !dbg !6042
  br i1 %tobool11, label %if.then12, label %if.end, !dbg !6045

if.then12:                                        ; preds = %if.then
  call void @__cpu_invalidate_fpregs_state() #15, !dbg !6046
  br label %if.end, !dbg !6046

if.end:                                           ; preds = %if.then12, %if.then
  call void @fpregs_unlock() #15, !dbg !6047
  %13 = load i32, ptr %ret, align 4, !dbg !6048
  %cmp = icmp ne i32 %13, 14, !dbg !6050
  br i1 %cmp, label %if.then14, label %if.end15, !dbg !6051

if.then14:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !6052
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6052

if.end15:                                         ; preds = %if.end
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !6053
  %15 = load ptr, ptr %fpu, align 8, !dbg !6055
  %fpstate16 = getelementptr inbounds %struct.fpu, ptr %15, i32 0, i32 2, !dbg !6056
  %16 = load ptr, ptr %fpstate16, align 16, !dbg !6056
  %user_size = getelementptr inbounds %struct.fpstate, ptr %16, i32 0, i32 1, !dbg !6057
  %17 = load i32, ptr %user_size, align 4, !dbg !6057
  %conv17 = zext i32 %17 to i64, !dbg !6055
  %call18 = call i64 @fault_in_readable(ptr noundef %14, i64 noundef %conv17) #15, !dbg !6058
  %tobool19 = icmp ne i64 %call18, 0, !dbg !6058
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !6059

if.then20:                                        ; preds = %if.end15
  br label %retry, !dbg !6060

if.end21:                                         ; preds = %if.end15
  store i1 false, ptr %retval, align 1, !dbg !6061
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6061

if.end22:                                         ; preds = %retry
  %call23 = call ptr @get_current() #15, !dbg !6062
  %call24 = call i32 @test_ti_thread_flag(ptr noundef %call23, i32 noundef 14) #15, !dbg !6062
  %tobool25 = icmp ne i32 %call24, 0, !dbg !6062
  br i1 %tobool25, label %land.lhs.true, label %if.end30, !dbg !6064

land.lhs.true:                                    ; preds = %if.end22
  %call26 = call i64 @xfeatures_mask_supervisor() #15, !dbg !6065
  %tobool27 = icmp ne i64 %call26, 0, !dbg !6065
  br i1 %tobool27, label %if.then28, label %if.end30, !dbg !6066

if.then28:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %fpu, align 8, !dbg !6067
  %fpstate29 = getelementptr inbounds %struct.fpu, ptr %18, i32 0, i32 2, !dbg !6068
  %19 = load ptr, ptr %fpstate29, align 16, !dbg !6068
  call void @os_xrstor_supervisor(ptr noundef %19) #15, !dbg !6069
  br label %if.end30, !dbg !6069

if.end30:                                         ; preds = %if.then28, %land.lhs.true, %if.end22
  call void @fpregs_mark_activate() #15, !dbg !6070
  call void @fpregs_unlock() #15, !dbg !6071
  store i1 true, ptr %retval, align 1, !dbg !6072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6072

cleanup:                                          ; preds = %if.end30, %if.end21, %if.then14
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6073
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpu) #14, !dbg !6073
  %20 = load i1, ptr %retval, align 1, !dbg !6073
  ret i1 %20, !dbg !6073
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !6074 {
entry:
  %retval = alloca i64, align 8
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %res = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6076, metadata !DIExpression()), !dbg !6080
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6077, metadata !DIExpression()), !dbg !6081
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6078, metadata !DIExpression()), !dbg !6082
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #14, !dbg !6083
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6079, metadata !DIExpression()), !dbg !6084
  call void @might_fault() #15, !dbg !6085
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6086
  %1 = load ptr, ptr %from.addr, align 8, !dbg !6087
  %2 = load i64, ptr %n.addr, align 8, !dbg !6088
  call void @instrument_copy_from_user_before(ptr noundef %0, ptr noundef %1, i64 noundef %2) #15, !dbg !6089
  %call = call zeroext i1 @should_fail_usercopy() #15, !dbg !6090
  br i1 %call, label %if.then, label %if.end, !dbg !6092

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %n.addr, align 8, !dbg !6093
  store i64 %3, ptr %retval, align 8, !dbg !6094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6094

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %to.addr, align 8, !dbg !6095
  %5 = load i64, ptr %n.addr, align 8, !dbg !6096
  call void @check_object_size(ptr noundef %4, i64 noundef %5, i1 noundef zeroext false) #15, !dbg !6097
  %6 = load ptr, ptr %to.addr, align 8, !dbg !6098
  %7 = load ptr, ptr %from.addr, align 8, !dbg !6099
  %8 = load i64, ptr %n.addr, align 8, !dbg !6100
  %call1 = call i64 @raw_copy_from_user(ptr noundef %6, ptr noundef %7, i64 noundef %8) #15, !dbg !6101
  store i64 %call1, ptr %res, align 8, !dbg !6102
  %9 = load ptr, ptr %to.addr, align 8, !dbg !6103
  %10 = load ptr, ptr %from.addr, align 8, !dbg !6104
  %11 = load i64, ptr %n.addr, align 8, !dbg !6105
  %12 = load i64, ptr %res, align 8, !dbg !6106
  call void @instrument_copy_from_user_after(ptr noundef %9, ptr noundef %10, i64 noundef %11, i64 noundef %12) #15, !dbg !6107
  %13 = load i64, ptr %res, align 8, !dbg !6108
  store i64 %13, ptr %retval, align 8, !dbg !6109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6109

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #14, !dbg !6110
  %14 = load i64, ptr %retval, align 8, !dbg !6110
  ret i64 %14, !dbg !6110
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @xfeatures_mask_supervisor() #4 align 16 !dbg !6111 {
entry:
  %0 = load i64, ptr getelementptr inbounds (%struct.fpu_state_config, ptr @fpu_kernel_cfg, i32 0, i32 2), align 8, !dbg !6112
  %and = and i64 %0, 3072, !dbg !6113
  ret i64 %and, !dbg !6114
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @os_xsave(ptr noundef %fpstate) #4 align 16 !dbg !6115 {
entry:
  %fpstate.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %lmask = alloca i32, align 4
  %hmask = alloca i32, align 4
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on28 = alloca i32, align 4
  %__flags44 = alloca i32, align 4
  %tmp57 = alloca i64, align 8
  store ptr %fpstate, ptr %fpstate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpstate.addr, metadata !6119, metadata !DIExpression()), !dbg !6134
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !6135
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6120, metadata !DIExpression()), !dbg !6136
  %0 = load ptr, ptr %fpstate.addr, align 8, !dbg !6137
  %xfeatures = getelementptr inbounds %struct.fpstate, ptr %0, i32 0, i32 2, !dbg !6138
  %1 = load i64, ptr %xfeatures, align 8, !dbg !6138
  store i64 %1, ptr %mask, align 8, !dbg !6136
  call void @llvm.lifetime.start.p0(i64 4, ptr %lmask) #14, !dbg !6139
  call void @llvm.dbg.declare(metadata ptr %lmask, metadata !6121, metadata !DIExpression()), !dbg !6140
  %2 = load i64, ptr %mask, align 8, !dbg !6141
  %conv = trunc i64 %2 to i32, !dbg !6141
  store i32 %conv, ptr %lmask, align 4, !dbg !6140
  call void @llvm.lifetime.start.p0(i64 4, ptr %hmask) #14, !dbg !6142
  call void @llvm.dbg.declare(metadata ptr %hmask, metadata !6122, metadata !DIExpression()), !dbg !6143
  %3 = load i64, ptr %mask, align 8, !dbg !6144
  %shr = lshr i64 %3, 32, !dbg !6145
  %conv1 = trunc i64 %shr to i32, !dbg !6144
  store i32 %conv1, ptr %hmask, align 4, !dbg !6143
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6146
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6123, metadata !DIExpression()), !dbg !6147
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6148
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6124, metadata !DIExpression()), !dbg !6148
  %4 = load i32, ptr @alternatives_patched, align 4, !dbg !6148
  %tobool = icmp ne i32 %4, 0, !dbg !6148
  %lnot = xor i1 %tobool, true, !dbg !6148
  %lnot2 = xor i1 %lnot, true, !dbg !6148
  %lnot3 = xor i1 %lnot2, true, !dbg !6148
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6148
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6148
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !6149
  %tobool4 = icmp ne i32 %5, 0, !dbg !6149
  %lnot5 = xor i1 %tobool4, true, !dbg !6149
  %lnot7 = xor i1 %lnot5, true, !dbg !6149
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !6149
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !6149
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !6149
  %tobool10 = icmp ne i64 %expval, 0, !dbg !6149
  br i1 %tobool10, label %if.then, label %if.end, !dbg !6148

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6149

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6150
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6126, metadata !DIExpression()), !dbg !6150
  store i32 2307, ptr %__flags, align 4, !dbg !6150
  br label %do.body11, !dbg !6150

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !6151

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !6151

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !6150

do.body12:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !6153
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 191, i32 %6, i64 12) #14, !dbg !6153, !srcloc !6155
  br label %do.cond13, !dbg !6153

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6153

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !6150

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !6156

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6156

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6149
  br label %do.cond18, !dbg !6150

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !6150

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !6150

if.end:                                           ; preds = %do.end19, %entry
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !6148
  %tobool20 = icmp ne i32 %7, 0, !dbg !6148
  %lnot21 = xor i1 %tobool20, true, !dbg !6148
  %lnot23 = xor i1 %lnot21, true, !dbg !6148
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !6148
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !6148
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !6148
  store i64 %expval26, ptr %tmp, align 8, !dbg !6149
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6158
  %8 = load i64, ptr %tmp, align 8, !dbg !6148
  %9 = load ptr, ptr %fpstate.addr, align 8, !dbg !6159
  %10 = load i64, ptr %mask, align 8, !dbg !6160
  call void @xfd_validate_state(ptr noundef %9, i64 noundef %10, i1 noundef zeroext false) #15, !dbg !6161
  %11 = load ptr, ptr %fpstate.addr, align 8, !dbg !6162
  %regs = getelementptr inbounds %struct.fpstate, ptr %11, i32 0, i32 7, !dbg !6162
  %12 = load ptr, ptr %fpstate.addr, align 8, !dbg !6162
  %regs27 = getelementptr inbounds %struct.fpstate, ptr %12, i32 0, i32 7, !dbg !6162
  %13 = load i32, ptr %lmask, align 4, !dbg !6162
  %14 = load i32, ptr %hmask, align 4, !dbg !6162
  %15 = call i32 asm sideeffect "# ALT: oldinstr3\0A661:\0A\09.byte 0x48, 0x0f,0xae,0x27\0A662:\0A# ALT: padding3\0A.skip -((((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f)))))) ^ (((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f)))))) ^ (6653f-6643f)) & -(-((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f)))))) < (6653f-6643f))))) - (662b-661b)) > 0) * (((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f)))))) ^ (((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f)))))) ^ (6653f-6643f)) & -(-((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f)))))) < (6653f-6643f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (10*32+ 0)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte (10*32+ 1)\0A .byte 663b-661b\0A .byte 6652f-6642f\0A .long 661b - .\0A .long 6643f - .\0A .4byte (10*32+ 3)\0A .byte 663b-661b\0A .byte 6653f-6643f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x48, 0x0f,0xae,0x37\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09.byte 0x48, 0x0f,0xc7,0x27\0A6652:\0A# ALT: replacement 3\0A6643:\0A\09.byte 0x48, 0x0f,0xc7,0x2f\0A6653:\0A.popsection\0A\0Axor $0, $0\0A3:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (661b) - .\0A .long (3b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=(17 $| ((-14) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A", "=r,{di},*m,{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %regs, ptr elementtype(%struct.xregs_state) %regs27, i32 %13, i32 %14) #14, !dbg !6162, !srcloc !6163
  store i32 %15, ptr %err, align 4, !dbg !6162
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on28) #14, !dbg !6164
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on28, metadata !6129, metadata !DIExpression()), !dbg !6164
  %16 = load i32, ptr %err, align 4, !dbg !6164
  %tobool29 = icmp ne i32 %16, 0, !dbg !6164
  %lnot30 = xor i1 %tobool29, true, !dbg !6164
  %lnot32 = xor i1 %lnot30, true, !dbg !6164
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !6164
  store i32 %lnot.ext33, ptr %__ret_warn_on28, align 4, !dbg !6164
  %17 = load i32, ptr %__ret_warn_on28, align 4, !dbg !6165
  %tobool34 = icmp ne i32 %17, 0, !dbg !6165
  %lnot35 = xor i1 %tobool34, true, !dbg !6165
  %lnot37 = xor i1 %lnot35, true, !dbg !6165
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !6165
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !6165
  %expval40 = call i64 @llvm.expect.i64(i64 %conv39, i64 0), !dbg !6165
  %tobool41 = icmp ne i64 %expval40, 0, !dbg !6165
  br i1 %tobool41, label %if.then42, label %if.end56, !dbg !6164

if.then42:                                        ; preds = %if.end
  br label %do.body43, !dbg !6165

do.body43:                                        ; preds = %if.then42
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags44) #14, !dbg !6166
  call void @llvm.dbg.declare(metadata ptr %__flags44, metadata !6131, metadata !DIExpression()), !dbg !6166
  store i32 2307, ptr %__flags44, align 4, !dbg !6166
  br label %do.body45, !dbg !6166

do.body45:                                        ; preds = %do.body43
  br label %do.cond46, !dbg !6167

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !6167

do.end47:                                         ; preds = %do.cond46
  br label %do.body48, !dbg !6166

do.body48:                                        ; preds = %do.end47
  %18 = load i32, ptr %__flags44, align 4, !dbg !6169
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.4, i32 197, i32 %18, i64 12) #14, !dbg !6169, !srcloc !6171
  br label %do.cond49, !dbg !6169

do.cond49:                                        ; preds = %do.body48
  br label %do.end50, !dbg !6169

do.end50:                                         ; preds = %do.cond49
  br label %do.body51, !dbg !6166

do.body51:                                        ; preds = %do.end50
  br label %do.cond52, !dbg !6172

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !6172

do.end53:                                         ; preds = %do.cond52
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags44) #14, !dbg !6165
  br label %do.cond54, !dbg !6166

do.cond54:                                        ; preds = %do.end53
  br label %do.end55, !dbg !6166

do.end55:                                         ; preds = %do.cond54
  br label %if.end56, !dbg !6166

if.end56:                                         ; preds = %do.end55, %if.end
  %19 = load i32, ptr %__ret_warn_on28, align 4, !dbg !6164
  %tobool58 = icmp ne i32 %19, 0, !dbg !6164
  %lnot59 = xor i1 %tobool58, true, !dbg !6164
  %lnot61 = xor i1 %lnot59, true, !dbg !6164
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !6164
  %conv63 = sext i32 %lnot.ext62 to i64, !dbg !6164
  %expval64 = call i64 @llvm.expect.i64(i64 %conv63, i64 0), !dbg !6164
  store i64 %expval64, ptr %tmp57, align 8, !dbg !6165
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on28) #14, !dbg !6174
  %20 = load i64, ptr %tmp57, align 8, !dbg !6164
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6175
  call void @llvm.lifetime.end.p0(i64 4, ptr %hmask) #14, !dbg !6175
  call void @llvm.lifetime.end.p0(i64 4, ptr %lmask) #14, !dbg !6175
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !6175
  ret void, !dbg !6175
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_ti_thread_flag(ptr noundef %ti, i32 noundef %flag) #4 align 16 !dbg !6176 {
entry:
  %ti.addr = alloca ptr, align 8
  %flag.addr = alloca i32, align 4
  store ptr %ti, ptr %ti.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ti.addr, metadata !6178, metadata !DIExpression()), !dbg !6180
  store i32 %flag, ptr %flag.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flag.addr, metadata !6179, metadata !DIExpression()), !dbg !6181
  %0 = load i32, ptr %flag.addr, align 4, !dbg !6182
  %conv = sext i32 %0 to i64, !dbg !6182
  %1 = load ptr, ptr %ti.addr, align 8, !dbg !6183
  %flags = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 0, !dbg !6184
  call void @set_bit(i64 noundef %conv, ptr noundef %flags) #15, !dbg !6185
  ret void, !dbg !6186
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__fpu_invalidate_fpregs_state(ptr noundef %fpu) #4 align 16 !dbg !6187 {
entry:
  %fpu.addr = alloca ptr, align 8
  store ptr %fpu, ptr %fpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpu.addr, metadata !6189, metadata !DIExpression()), !dbg !6190
  %0 = load ptr, ptr %fpu.addr, align 8, !dbg !6191
  %last_cpu = getelementptr inbounds %struct.fpu, ptr %0, i32 0, i32 0, !dbg !6192
  store i32 -1, ptr %last_cpu, align 64, !dbg !6193
  ret void, !dbg !6194
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__cpu_invalidate_fpregs_state() #4 align 16 !dbg !6195 {
entry:
  %__vpp_verify = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #15, !dbg !6203
  br label %do.body, !dbg !6203

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6204

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6205
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6197, metadata !DIExpression()), !dbg !6205
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6205
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6205
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6204
  br label %do.end, !dbg !6205

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6204

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #14, !dbg !6206
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6201, metadata !DIExpression()), !dbg !6206
  store i64 0, ptr %pto_val__, align 8, !dbg !6206
  %1 = load i64, ptr %pto_val__, align 8, !dbg !6206
  call void asm "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(ptr) @fpu_fpregs_owner_ctx, i64 %1, ptr elementtype(ptr) @fpu_fpregs_owner_ctx) #14, !dbg !6206, !srcloc !6207
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #14, !dbg !6204
  br label %do.end3, !dbg !6206

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6204

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !6208
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6209 dso_local i32 @copy_sigframe_from_user_to_xstate(ptr noundef, ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6212 dso_local void @convert_to_fxsr(ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @os_xrstor_safe(ptr noundef %fpstate, i64 noundef %mask) #4 align 16 !dbg !6217 {
entry:
  %fpstate.addr = alloca ptr, align 8
  %mask.addr = alloca i64, align 8
  %xstate = alloca ptr, align 8
  %lmask = alloca i32, align 4
  %hmask = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %fpstate, ptr %fpstate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpstate.addr, metadata !6221, metadata !DIExpression()), !dbg !6227
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6222, metadata !DIExpression()), !dbg !6228
  call void @llvm.lifetime.start.p0(i64 8, ptr %xstate) #14, !dbg !6229
  call void @llvm.dbg.declare(metadata ptr %xstate, metadata !6223, metadata !DIExpression()), !dbg !6230
  %0 = load ptr, ptr %fpstate.addr, align 8, !dbg !6231
  %regs = getelementptr inbounds %struct.fpstate, ptr %0, i32 0, i32 7, !dbg !6232
  store ptr %regs, ptr %xstate, align 8, !dbg !6230
  call void @llvm.lifetime.start.p0(i64 4, ptr %lmask) #14, !dbg !6233
  call void @llvm.dbg.declare(metadata ptr %lmask, metadata !6224, metadata !DIExpression()), !dbg !6234
  %1 = load i64, ptr %mask.addr, align 8, !dbg !6235
  %conv = trunc i64 %1 to i32, !dbg !6235
  store i32 %conv, ptr %lmask, align 4, !dbg !6234
  call void @llvm.lifetime.start.p0(i64 4, ptr %hmask) #14, !dbg !6236
  call void @llvm.dbg.declare(metadata ptr %hmask, metadata !6225, metadata !DIExpression()), !dbg !6237
  %2 = load i64, ptr %mask.addr, align 8, !dbg !6238
  %shr = lshr i64 %2, 32, !dbg !6239
  %conv1 = trunc i64 %shr to i32, !dbg !6238
  store i32 %conv1, ptr %hmask, align 4, !dbg !6237
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6240
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6226, metadata !DIExpression()), !dbg !6241
  %3 = load ptr, ptr %fpstate.addr, align 8, !dbg !6242
  call void @xfd_update_state(ptr noundef %3) #15, !dbg !6243
  br i1 false, label %cond.true, label %cond.false, !dbg !6244

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.else, !dbg !6245

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true2, label %cond.false6, !dbg !6244

cond.true2:                                       ; preds = %cond.false
  br i1 false, label %cond.true3, label %cond.false4, !dbg !6245

cond.true3:                                       ; preds = %cond.true2
  br i1 true, label %if.then, label %if.else, !dbg !6245

cond.false4:                                      ; preds = %cond.true2
  %call = call zeroext i1 @arch_test_bit(i64 noundef 323, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #15, !dbg !6245
  br i1 %call, label %if.then, label %if.else, !dbg !6245

cond.false6:                                      ; preds = %cond.false
  %call7 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 323) #15, !dbg !6245
  br i1 %call7, label %if.then, label %if.else, !dbg !6244

if.then:                                          ; preds = %cond.false6, %cond.false4, %cond.true3, %cond.true
  %4 = load ptr, ptr %xstate, align 8, !dbg !6247
  %5 = load ptr, ptr %xstate, align 8, !dbg !6247
  %6 = load i32, ptr %lmask, align 4, !dbg !6247
  %7 = load i32, ptr %hmask, align 4, !dbg !6247
  %8 = call i32 asm sideeffect "1:.byte 0x48, 0x0f,0xc7,0x1f\0A\09xor $0, $0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 15 \0A .popsection\0A", "={ax},{di},*m,{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %4, ptr elementtype(%struct.xregs_state) %5, i32 %6, i32 %7) #14, !dbg !6247, !srcloc !6248
  store i32 %8, ptr %err, align 4, !dbg !6247
  br label %if.end, !dbg !6247

if.else:                                          ; preds = %cond.false6, %cond.false4, %cond.true3, %cond.true
  %9 = load ptr, ptr %xstate, align 8, !dbg !6249
  %10 = load ptr, ptr %xstate, align 8, !dbg !6249
  %11 = load i32, ptr %lmask, align 4, !dbg !6249
  %12 = load i32, ptr %hmask, align 4, !dbg !6249
  %13 = call i32 asm sideeffect "1:.byte 0x48, 0x0f,0xae,0x2f\0A\09xor $0, $0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 15 \0A .popsection\0A", "={ax},{di},*m,{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %9, ptr elementtype(%struct.xregs_state) %10, i32 %11, i32 %12) #14, !dbg !6249, !srcloc !6250
  store i32 %13, ptr %err, align 4, !dbg !6249
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, ptr %err, align 4, !dbg !6251
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6252
  call void @llvm.lifetime.end.p0(i64 4, ptr %hmask) #14, !dbg !6252
  call void @llvm.lifetime.end.p0(i64 4, ptr %lmask) #14, !dbg !6252
  call void @llvm.lifetime.end.p0(i64 8, ptr %xstate) #14, !dbg !6252
  ret i32 %14, !dbg !6253
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fxrstor_safe(ptr noundef %fx) #4 align 16 !dbg !6254 {
entry:
  %fx.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %fx, ptr %fx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fx.addr, metadata !6256, metadata !DIExpression()), !dbg !6260
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6261
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6257, metadata !DIExpression()), !dbg !6261
  %0 = load ptr, ptr %fx.addr, align 8, !dbg !6261
  %1 = load ptr, ptr %fx.addr, align 8, !dbg !6261
  %2 = call i32 asm sideeffect "1:fxrstorq $3\0A\092:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=(17 $| ((-14) << 16)) \0A.purgem extable_type_reg\0A .popsection\0A", "=r,=*m,0,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.fxregs_state) %0, i32 0, ptr elementtype(%struct.fxregs_state) %1) #14, !dbg !6261, !srcloc !6262
  store i32 %2, ptr %err, align 4, !dbg !6261
  %3 = load i32, ptr %err, align 4, !dbg !6261
  store i32 %3, ptr %tmp, align 4, !dbg !6261
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6263
  %4 = load i32, ptr %tmp, align 4, !dbg !6261
  ret i32 %4, !dbg !6264
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6265 dso_local void @fpregs_mark_activate() #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_x86_fpu_xstate_check_failed(ptr noundef %fpu) #4 align 16 !dbg !4197 {
entry:
  %fpu.addr = alloca ptr, align 8
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
  %__UNIQUE_ID_rcu402 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %fpu, ptr %fpu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpu.addr, metadata !4199, metadata !DIExpression()), !dbg !6266
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_x86_fpu_xstate_check_failed, i32 0, i32 1)) #15, !dbg !6267
  br i1 %call, label %if.then, label %if.end68, !dbg !6266

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6267

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #14, !dbg !6268
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !4200, metadata !DIExpression()), !dbg !6268
  store i32 0, ptr %__idx, align 4, !dbg !6268
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #14, !dbg !6269
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4203, metadata !DIExpression()), !dbg !6269
  br label %do.body1, !dbg !6269

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6270
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4206, metadata !DIExpression()), !dbg !6270
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6270
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6270
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6269
  br label %do.cond, !dbg !6270

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !6270

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #14, !dbg !6271
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4208, metadata !DIExpression()), !dbg !6271
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.14, ptr @pcpu_hot, i32 0, i32 2)) #14, !dbg !6271, !srcloc !6272
  store i32 %1, ptr %pfo_val__, align 4, !dbg !6271
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !6271
  %conv = zext i32 %2 to i64, !dbg !6271
  %conv2 = trunc i64 %conv to i32, !dbg !6271
  store i32 %conv2, ptr %tmp, align 4, !dbg !6271
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #14, !dbg !6269
  %3 = load i32, ptr %tmp, align 4, !dbg !6271
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !6269
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !6269
  store i32 %4, ptr %tmp3, align 4, !dbg !6269
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #14, !dbg !6273
  %5 = load i32, ptr %tmp3, align 4, !dbg !6269
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #15, !dbg !6273
  br i1 %call4, label %if.end, label %if.then5, !dbg !6268

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6273

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6274
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4210, metadata !DIExpression()), !dbg !6274
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !6274
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6275
  %tobool = icmp ne i32 %6, 0, !dbg !6275
  %lnot = xor i1 %tobool, true, !dbg !6275
  %lnot6 = xor i1 %lnot, true, !dbg !6275
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !6275
  %conv7 = sext i32 %lnot.ext to i64, !dbg !6275
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !6275
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6275
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !6274

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !6275

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6276
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4213, metadata !DIExpression()), !dbg !6276
  store i32 2307, ptr %__flags, align 4, !dbg !6276
  br label %do.body11, !dbg !6276

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !6277

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6277

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !6276

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !6279
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 90, i32 %7, i64 12) #14, !dbg !6279, !srcloc !6281
  br label %do.cond15, !dbg !6279

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !6279

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !6276

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !6282

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !6282

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6275
  br label %do.cond20, !dbg !6276

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !6276

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !6276

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6274
  %tobool24 = icmp ne i32 %8, 0, !dbg !6274
  %lnot25 = xor i1 %tobool24, true, !dbg !6274
  %lnot27 = xor i1 %lnot25, true, !dbg !6274
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !6274
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !6274
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !6274
  store i64 %expval30, ptr %tmp23, align 8, !dbg !6275
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6284
  %9 = load i64, ptr %tmp23, align 8, !dbg !6274
  %tobool31 = icmp ne i64 %9, 0, !dbg !6284
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !6268

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6284

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !6268

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #15, !dbg !6285
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6285, !srcloc !6287
  br label %do.cond35, !dbg !6285

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !6285

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !6268

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6288
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !4216, metadata !DIExpression()), !dbg !6288
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #14, !dbg !6288
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !4218, metadata !DIExpression()), !dbg !6288
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu402) #14, !dbg !6289
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu402, metadata !4219, metadata !DIExpression()), !dbg !6289
  br label %do.body38, !dbg !6290

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !6292

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !6292

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_x86_fpu_xstate_check_failed, i32 0, i32 8), align 8, !dbg !6290
  store ptr %10, ptr %tmp41, align 8, !dbg !6292
  %11 = load ptr, ptr %tmp41, align 8, !dbg !6290
  store ptr %11, ptr %__UNIQUE_ID_rcu402, align 8, !dbg !6289
  %12 = load ptr, ptr %__UNIQUE_ID_rcu402, align 8, !dbg !6289
  store ptr %12, ptr %tmp42, align 8, !dbg !6289
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu402) #14, !dbg !6288
  %13 = load ptr, ptr %tmp42, align 8, !dbg !6289
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !6288
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !6294
  %tobool43 = icmp ne ptr %14, null, !dbg !6294
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !6288

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !6296
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !6296
  %16 = load ptr, ptr %data, align 8, !dbg !6296
  store ptr %16, ptr %__data, align 8, !dbg !6296
  store ptr @__SCT__tp_func_x86_fpu_xstate_check_failed, ptr %tmp45, align 8, !dbg !6298
  %17 = load ptr, ptr %tmp45, align 8, !dbg !6298
  %18 = load ptr, ptr %__data, align 8, !dbg !6296
  %19 = load ptr, ptr %fpu.addr, align 8, !dbg !6296
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19) #15, !dbg !6296
  br label %if.end47, !dbg !6296

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #14, !dbg !6268
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #14, !dbg !6268
  br label %do.cond48, !dbg !6288

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !6288

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !6268

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !6300, !srcloc !6302
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #15, !dbg !6303
  %lnot52 = xor i1 %call51, true, !dbg !6303
  %lnot54 = xor i1 %lnot52, true, !dbg !6303
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !6303
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !6303
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !6303
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !6303
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !6300

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !6303

do.body60:                                        ; preds = %if.then59
  %20 = call i64 @llvm.read_register.i64(metadata !4252), !dbg !6305
  %21 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %20) #14, !dbg !6305, !srcloc !6307
  call void @llvm.write_register.i64(metadata !4252, i64 %21), !dbg !6305
  br label %do.cond61, !dbg !6305

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !6305

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !6305

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !6300

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !6300

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6267
  br label %cleanup, !dbg !6267

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #14, !dbg !6267
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !6268

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !6268

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !6266

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_x86_fpu_xstate_check_failed(ptr noundef, ptr noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xfd_update_state(ptr noundef %fpstate) #4 align 16 !dbg !6308 {
entry:
  %fpstate.addr = alloca ptr, align 8
  %xfd = alloca i64, align 8
  %tmp = alloca i64, align 8
  %pscr_ret__ = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp3 = alloca i64, align 8
  store ptr %fpstate, ptr %fpstate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpstate.addr, metadata !6310, metadata !DIExpression()), !dbg !6322
  %call = call zeroext i1 @fpu_state_size_dynamic() #16, !dbg !6323
  br i1 %call, label %if.then, label %if.end5, !dbg !6324

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %xfd) #14, !dbg !6325
  call void @llvm.dbg.declare(metadata ptr %xfd, metadata !6311, metadata !DIExpression()), !dbg !6326
  %0 = load ptr, ptr %fpstate.addr, align 8, !dbg !6327
  %xfd1 = getelementptr inbounds %struct.fpstate, ptr %0, i32 0, i32 4, !dbg !6328
  %1 = load i64, ptr %xfd1, align 8, !dbg !6328
  store i64 %1, ptr %xfd, align 8, !dbg !6326
  call void @__this_cpu_preempt_check(ptr noundef @.str) #15, !dbg !6329
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #14, !dbg !6330
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6314, metadata !DIExpression()), !dbg !6330
  br label %do.body, !dbg !6330

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6331
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6318, metadata !DIExpression()), !dbg !6331
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6331
  %2 = load ptr, ptr %__vpp_verify, align 8, !dbg !6331
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6330
  br label %do.cond, !dbg !6331

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6331

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #14, !dbg !6332
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6320, metadata !DIExpression()), !dbg !6332
  %3 = call i64 asm "movq %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @xfd_state) #18, !dbg !6332, !srcloc !6333
  store i64 %3, ptr %pfo_val__, align 8, !dbg !6332
  %4 = load i64, ptr %pfo_val__, align 8, !dbg !6332
  store i64 %4, ptr %tmp2, align 8, !dbg !6332
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #14, !dbg !6330
  %5 = load i64, ptr %tmp2, align 8, !dbg !6332
  store i64 %5, ptr %pscr_ret__, align 8, !dbg !6330
  %6 = load i64, ptr %pscr_ret__, align 8, !dbg !6330
  store i64 %6, ptr %tmp3, align 8, !dbg !6330
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #14, !dbg !6329
  %7 = load i64, ptr %tmp3, align 8, !dbg !6330
  store i64 %7, ptr %tmp, align 8, !dbg !6329
  %8 = load i64, ptr %tmp, align 8, !dbg !6329
  %9 = load i64, ptr %xfd, align 8, !dbg !6334
  %cmp = icmp ne i64 %8, %9, !dbg !6335
  br i1 %cmp, label %if.then4, label %if.end, !dbg !6336

if.then4:                                         ; preds = %do.end
  %10 = load i64, ptr %xfd, align 8, !dbg !6337
  call void @xfd_set_state(i64 noundef %10) #15, !dbg !6338
  br label %if.end, !dbg !6338

if.end:                                           ; preds = %if.then4, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %xfd) #14, !dbg !6339
  br label %if.end5, !dbg !6340

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !6341
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__restore_fpregs_from_user(ptr noundef %buf, i64 noundef %ufeatures, i64 noundef %xrestore, i1 noundef zeroext %fx_only) #0 align 16 !dbg !6342 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %ufeatures.addr = alloca i64, align 8
  %xrestore.addr = alloca i64, align 8
  %fx_only.addr = alloca i8, align 1
  %init_bv = alloca i64, align 8
  %ret = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6346, metadata !DIExpression()), !dbg !6354
  store i64 %ufeatures, ptr %ufeatures.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ufeatures.addr, metadata !6347, metadata !DIExpression()), !dbg !6355
  store i64 %xrestore, ptr %xrestore.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xrestore.addr, metadata !6348, metadata !DIExpression()), !dbg !6356
  %frombool = zext i1 %fx_only to i8
  store i8 %frombool, ptr %fx_only.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %fx_only.addr, metadata !6349, metadata !DIExpression()), !dbg !6357
  %call = call zeroext i1 @use_xsave() #16, !dbg !6358
  br i1 %call, label %if.then, label %if.else18, !dbg !6359

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %init_bv) #14, !dbg !6360
  call void @llvm.dbg.declare(metadata ptr %init_bv, metadata !6350, metadata !DIExpression()), !dbg !6361
  %0 = load i64, ptr %ufeatures.addr, align 8, !dbg !6362
  %1 = load i64, ptr %xrestore.addr, align 8, !dbg !6363
  %not = xor i64 %1, -1, !dbg !6364
  %and = and i64 %0, %not, !dbg !6365
  store i64 %and, ptr %init_bv, align 8, !dbg !6361
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6366
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6353, metadata !DIExpression()), !dbg !6367
  %2 = load i8, ptr %fx_only.addr, align 1, !dbg !6368, !range !4299, !noundef !719
  %tobool = trunc i8 %2 to i1, !dbg !6368
  %lnot = xor i1 %tobool, true, !dbg !6368
  %lnot1 = xor i1 %lnot, true, !dbg !6368
  %lnot2 = xor i1 %lnot1, true, !dbg !6368
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6368
  %conv = sext i32 %lnot.ext to i64, !dbg !6368
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6368
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6368
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !6370

if.then4:                                         ; preds = %if.then
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6371
  %4 = load i64, ptr %xrestore.addr, align 8, !dbg !6372
  %call5 = call i32 @xrstor_from_user_sigframe(ptr noundef %3, i64 noundef %4) #15, !dbg !6373
  store i32 %call5, ptr %ret, align 4, !dbg !6374
  br label %if.end, !dbg !6375

if.else:                                          ; preds = %if.then
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !6376
  %call6 = call i32 @fxrstor_from_user_sigframe(ptr noundef %5) #15, !dbg !6377
  store i32 %call6, ptr %ret, align 4, !dbg !6378
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then4
  %6 = load i32, ptr %ret, align 4, !dbg !6379
  %tobool7 = icmp ne i32 %6, 0, !dbg !6379
  br i1 %tobool7, label %if.end17, label %land.lhs.true, !dbg !6381

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %init_bv, align 8, !dbg !6382
  %tobool8 = icmp ne i64 %7, 0, !dbg !6382
  %lnot9 = xor i1 %tobool8, true, !dbg !6382
  %lnot11 = xor i1 %lnot9, true, !dbg !6382
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !6382
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !6382
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !6382
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !6382
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !6383

if.then16:                                        ; preds = %land.lhs.true
  %8 = load i64, ptr %init_bv, align 8, !dbg !6384
  call void @os_xrstor(ptr noundef @init_fpstate, i64 noundef %8) #15, !dbg !6385
  br label %if.end17, !dbg !6385

if.end17:                                         ; preds = %if.then16, %land.lhs.true, %if.end
  %9 = load i32, ptr %ret, align 4, !dbg !6386
  store i32 %9, ptr %retval, align 4, !dbg !6387
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6388
  call void @llvm.lifetime.end.p0(i64 8, ptr %init_bv) #14, !dbg !6388
  br label %return

if.else18:                                        ; preds = %entry
  %call19 = call zeroext i1 @use_fxsr() #16, !dbg !6389
  br i1 %call19, label %if.then20, label %if.else22, !dbg !6391

if.then20:                                        ; preds = %if.else18
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !6392
  %call21 = call i32 @fxrstor_from_user_sigframe(ptr noundef %10) #15, !dbg !6394
  store i32 %call21, ptr %retval, align 4, !dbg !6395
  br label %return, !dbg !6395

if.else22:                                        ; preds = %if.else18
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !6396
  %call23 = call i32 @frstor_from_user_sigframe(ptr noundef %11) #15, !dbg !6398
  store i32 %call23, ptr %retval, align 4, !dbg !6399
  br label %return, !dbg !6399

return:                                           ; preds = %if.else22, %if.then20, %if.end17
  %12 = load i32, ptr %retval, align 4, !dbg !6400
  ret i32 %12, !dbg !6400
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6401 dso_local i64 @fault_in_readable(ptr noundef, i64 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @os_xrstor_supervisor(ptr noundef %fpstate) #4 align 16 !dbg !6404 {
entry:
  %fpstate.addr = alloca ptr, align 8
  %mask = alloca i64, align 8
  %lmask = alloca i32, align 4
  %hmask = alloca i32, align 4
  store ptr %fpstate, ptr %fpstate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpstate.addr, metadata !6406, metadata !DIExpression()), !dbg !6410
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #14, !dbg !6411
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !6407, metadata !DIExpression()), !dbg !6412
  %call = call i64 @xfeatures_mask_supervisor() #15, !dbg !6413
  store i64 %call, ptr %mask, align 8, !dbg !6412
  call void @llvm.lifetime.start.p0(i64 4, ptr %lmask) #14, !dbg !6414
  call void @llvm.dbg.declare(metadata ptr %lmask, metadata !6408, metadata !DIExpression()), !dbg !6415
  %0 = load i64, ptr %mask, align 8, !dbg !6416
  %conv = trunc i64 %0 to i32, !dbg !6416
  store i32 %conv, ptr %lmask, align 4, !dbg !6415
  call void @llvm.lifetime.start.p0(i64 4, ptr %hmask) #14, !dbg !6417
  call void @llvm.dbg.declare(metadata ptr %hmask, metadata !6409, metadata !DIExpression()), !dbg !6418
  %1 = load i64, ptr %mask, align 8, !dbg !6419
  %shr = lshr i64 %1, 32, !dbg !6420
  %conv1 = trunc i64 %shr to i32, !dbg !6419
  store i32 %conv1, ptr %hmask, align 4, !dbg !6418
  %2 = load ptr, ptr %fpstate.addr, align 8, !dbg !6421
  %regs = getelementptr inbounds %struct.fpstate, ptr %2, i32 0, i32 7, !dbg !6421
  %3 = load ptr, ptr %fpstate.addr, align 8, !dbg !6421
  %regs2 = getelementptr inbounds %struct.fpstate, ptr %3, i32 0, i32 7, !dbg !6421
  %4 = load i32, ptr %lmask, align 4, !dbg !6421
  %5 = load i32, ptr %hmask, align 4, !dbg !6421
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09.byte 0x48, 0x0f,0xae,0x2f\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (10*32+ 3)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x48, 0x0f,0xc7,0x1f\0A6651:\0A.popsection\0A\0A3:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (661b) - .\0A .long (3b) - .\0A .long 6 \0A .popsection\0A", "{di},*m,{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %regs, ptr elementtype(%struct.xregs_state) %regs2, i32 %4, i32 %5) #14, !dbg !6421, !srcloc !6422
  call void @llvm.lifetime.end.p0(i64 4, ptr %hmask) #14, !dbg !6423
  call void @llvm.lifetime.end.p0(i64 4, ptr %lmask) #14, !dbg !6423
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #14, !dbg !6423
  ret void, !dbg !6423
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xfd_set_state(i64 noundef %xfd) #4 align 16 !dbg !6424 {
entry:
  %xfd.addr = alloca i64, align 8
  %__vpp_verify = alloca ptr, align 8
  %pto_val__ = alloca i64, align 8
  store i64 %xfd, ptr %xfd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xfd.addr, metadata !6428, metadata !DIExpression()), !dbg !6435
  %0 = load i64, ptr %xfd.addr, align 8, !dbg !6436
  call void @wrmsrl(i32 noundef 452, i64 noundef %0) #15, !dbg !6437
  call void @__this_cpu_preempt_check(ptr noundef @.str.2) #15, !dbg !6438
  br label %do.body, !dbg !6438

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6439

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6440
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6429, metadata !DIExpression()), !dbg !6440
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6440
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !6440
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #14, !dbg !6439
  br label %do.end, !dbg !6440

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6439

do.body2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pto_val__) #14, !dbg !6441
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !6433, metadata !DIExpression()), !dbg !6441
  %2 = load i64, ptr %xfd.addr, align 8, !dbg !6441
  store i64 %2, ptr %pto_val__, align 8, !dbg !6441
  %3 = load i64, ptr %pto_val__, align 8, !dbg !6441
  call void asm "movq $1, %gs:$0", "=*m,re,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) @xfd_state, i64 %3, ptr elementtype(i64) @xfd_state) #14, !dbg !6441, !srcloc !6442
  call void @llvm.lifetime.end.p0(i64 8, ptr %pto_val__) #14, !dbg !6439
  br label %do.end3, !dbg !6441

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6439

do.end4:                                          ; preds = %do.end3
  ret void, !dbg !6443
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @wrmsrl(i32 noundef %msr, i64 noundef %val) #4 align 16 !dbg !6444 {
entry:
  %msr.addr = alloca i32, align 4
  %val.addr = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6449, metadata !DIExpression()), !dbg !6451
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6450, metadata !DIExpression()), !dbg !6452
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6453
  %1 = load i64, ptr %val.addr, align 8, !dbg !6454
  %and = and i64 %1, 4294967295, !dbg !6455
  %conv = trunc i64 %and to i32, !dbg !6456
  %2 = load i64, ptr %val.addr, align 8, !dbg !6457
  %shr = lshr i64 %2, 32, !dbg !6458
  %conv1 = trunc i64 %shr to i32, !dbg !6459
  call void @native_write_msr(i32 noundef %0, i32 noundef %conv, i32 noundef %conv1) #15, !dbg !6460
  ret void, !dbg !6461
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_msr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #4 align 16 !dbg !6462 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6466, metadata !DIExpression()), !dbg !6469
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !6467, metadata !DIExpression()), !dbg !6470
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !6468, metadata !DIExpression()), !dbg !6471
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6472
  %1 = load i32, ptr %low.addr, align 4, !dbg !6473
  %2 = load i32, ptr %high.addr, align 4, !dbg !6474
  call void @__wrmsr(i32 noundef %0, i32 noundef %1, i32 noundef %2) #15, !dbg !6475
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_write_msr, i32 0, i32 1)) #15, !dbg !6476
  br i1 %call, label %if.then, label %if.end, !dbg !6478

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !6479
  %4 = load i32, ptr %high.addr, align 4, !dbg !6480
  %conv = zext i32 %4 to i64, !dbg !6481
  %shl = shl i64 %conv, 32, !dbg !6482
  %5 = load i32, ptr %low.addr, align 4, !dbg !6483
  %conv1 = zext i32 %5 to i64, !dbg !6483
  %or = or i64 %shl, %conv1, !dbg !6484
  call void @do_trace_write_msr(i32 noundef %3, i64 noundef %or, i32 noundef 0) #15, !dbg !6485
  br label %if.end, !dbg !6485

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6486
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__wrmsr(i32 noundef %msr, i32 noundef %low, i32 noundef %high) #3 align 16 !dbg !6487 {
entry:
  %msr.addr = alloca i32, align 4
  %low.addr = alloca i32, align 4
  %high.addr = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !6489, metadata !DIExpression()), !dbg !6492
  store i32 %low, ptr %low.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %low.addr, metadata !6490, metadata !DIExpression()), !dbg !6493
  store i32 %high, ptr %high.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %high.addr, metadata !6491, metadata !DIExpression()), !dbg !6494
  %0 = load i32, ptr %msr.addr, align 4, !dbg !6495
  %1 = load i32, ptr %low.addr, align 4, !dbg !6496
  %2 = load i32, ptr %high.addr, align 4, !dbg !6497
  call void asm sideeffect "1: wrmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 8 \0A .popsection\0A", "{cx},{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 %1, i32 %2) #14, !dbg !6498, !srcloc !6499
  ret void, !dbg !6500
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6501 dso_local void @do_trace_write_msr(i32 noundef, i64 noundef, i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @xrstor_from_user_sigframe(ptr noundef %buf, i64 noundef %mask) #4 align 16 !dbg !6504 {
entry:
  %buf.addr = alloca ptr, align 8
  %mask.addr = alloca i64, align 8
  %xstate = alloca ptr, align 8
  %lmask = alloca i32, align 4
  %hmask = alloca i32, align 4
  %err = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6508, metadata !DIExpression()), !dbg !6514
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6509, metadata !DIExpression()), !dbg !6515
  call void @llvm.lifetime.start.p0(i64 8, ptr %xstate) #14, !dbg !6516
  call void @llvm.dbg.declare(metadata ptr %xstate, metadata !6510, metadata !DIExpression()), !dbg !6517
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !6518
  store ptr %0, ptr %xstate, align 8, !dbg !6517
  call void @llvm.lifetime.start.p0(i64 4, ptr %lmask) #14, !dbg !6519
  call void @llvm.dbg.declare(metadata ptr %lmask, metadata !6511, metadata !DIExpression()), !dbg !6520
  %1 = load i64, ptr %mask.addr, align 8, !dbg !6521
  %conv = trunc i64 %1 to i32, !dbg !6521
  store i32 %conv, ptr %lmask, align 4, !dbg !6520
  call void @llvm.lifetime.start.p0(i64 4, ptr %hmask) #14, !dbg !6522
  call void @llvm.dbg.declare(metadata ptr %hmask, metadata !6512, metadata !DIExpression()), !dbg !6523
  %2 = load i64, ptr %mask.addr, align 8, !dbg !6524
  %shr = lshr i64 %2, 32, !dbg !6525
  %conv1 = trunc i64 %shr to i32, !dbg !6524
  store i32 %conv1, ptr %hmask, align 4, !dbg !6523
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6526
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6513, metadata !DIExpression()), !dbg !6527
  %call = call ptr @get_current() #15, !dbg !6528
  %thread = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 197, !dbg !6529
  %fpu = getelementptr inbounds %struct.thread_struct, ptr %thread, i32 0, i32 19, !dbg !6530
  %fpstate = getelementptr inbounds %struct.fpu, ptr %fpu, i32 0, i32 2, !dbg !6531
  %3 = load ptr, ptr %fpstate, align 16, !dbg !6531
  %4 = load i64, ptr %mask.addr, align 8, !dbg !6532
  call void @xfd_validate_state(ptr noundef %3, i64 noundef %4, i1 noundef zeroext true) #15, !dbg !6533
  call void @stac() #15, !dbg !6534
  %5 = load ptr, ptr %xstate, align 8, !dbg !6535
  %6 = load ptr, ptr %xstate, align 8, !dbg !6535
  %7 = load i32, ptr %lmask, align 4, !dbg !6535
  %8 = load i32, ptr %hmask, align 4, !dbg !6535
  %9 = call i32 asm sideeffect "1:.byte 0x48, 0x0f,0xae,0x2f\0A\09xor $0, $0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 15 \0A .popsection\0A", "={ax},{di},*m,{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %5, ptr elementtype(%struct.xregs_state) %6, i32 %7, i32 %8) #14, !dbg !6535, !srcloc !6536
  store i32 %9, ptr %err, align 4, !dbg !6535
  call void @clac() #15, !dbg !6537
  %10 = load i32, ptr %err, align 4, !dbg !6538
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6539
  call void @llvm.lifetime.end.p0(i64 4, ptr %hmask) #14, !dbg !6539
  call void @llvm.lifetime.end.p0(i64 4, ptr %lmask) #14, !dbg !6539
  call void @llvm.lifetime.end.p0(i64 8, ptr %xstate) #14, !dbg !6539
  ret i32 %10, !dbg !6540
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fxrstor_from_user_sigframe(ptr noundef %fx) #4 align 16 !dbg !6541 {
entry:
  %fx.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %fx, ptr %fx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fx.addr, metadata !6543, metadata !DIExpression()), !dbg !6547
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6548
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6544, metadata !DIExpression()), !dbg !6548
  call void @might_fault() #15, !dbg !6548
  %0 = load ptr, ptr %fx.addr, align 8, !dbg !6548
  %1 = load ptr, ptr %fx.addr, align 8, !dbg !6548
  %2 = call i32 asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A\0A1: fxrstorq $3\0A2: # ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 15 \0A .popsection\0A", "={ax},=*m,0,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.fxregs_state) %0, i32 0, ptr elementtype(%struct.fxregs_state) %1) #14, !dbg !6548, !srcloc !6549
  store i32 %2, ptr %err, align 4, !dbg !6548
  %3 = load i32, ptr %err, align 4, !dbg !6548
  store i32 %3, ptr %tmp, align 4, !dbg !6548
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6550
  %4 = load i32, ptr %tmp, align 4, !dbg !6548
  ret i32 %4, !dbg !6551
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @os_xrstor(ptr noundef %fpstate, i64 noundef %mask) #4 align 16 !dbg !6552 {
entry:
  %fpstate.addr = alloca ptr, align 8
  %mask.addr = alloca i64, align 8
  %lmask = alloca i32, align 4
  %hmask = alloca i32, align 4
  store ptr %fpstate, ptr %fpstate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fpstate.addr, metadata !6554, metadata !DIExpression()), !dbg !6558
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !6555, metadata !DIExpression()), !dbg !6559
  call void @llvm.lifetime.start.p0(i64 4, ptr %lmask) #14, !dbg !6560
  call void @llvm.dbg.declare(metadata ptr %lmask, metadata !6556, metadata !DIExpression()), !dbg !6561
  %0 = load i64, ptr %mask.addr, align 8, !dbg !6562
  %conv = trunc i64 %0 to i32, !dbg !6562
  store i32 %conv, ptr %lmask, align 4, !dbg !6561
  call void @llvm.lifetime.start.p0(i64 4, ptr %hmask) #14, !dbg !6563
  call void @llvm.dbg.declare(metadata ptr %hmask, metadata !6557, metadata !DIExpression()), !dbg !6564
  %1 = load i64, ptr %mask.addr, align 8, !dbg !6565
  %shr = lshr i64 %1, 32, !dbg !6566
  %conv1 = trunc i64 %shr to i32, !dbg !6565
  store i32 %conv1, ptr %hmask, align 4, !dbg !6564
  %2 = load ptr, ptr %fpstate.addr, align 8, !dbg !6567
  %3 = load i64, ptr %mask.addr, align 8, !dbg !6568
  call void @xfd_validate_state(ptr noundef %2, i64 noundef %3, i1 noundef zeroext true) #15, !dbg !6569
  %4 = load ptr, ptr %fpstate.addr, align 8, !dbg !6570
  %regs = getelementptr inbounds %struct.fpstate, ptr %4, i32 0, i32 7, !dbg !6570
  %5 = load ptr, ptr %fpstate.addr, align 8, !dbg !6570
  %regs2 = getelementptr inbounds %struct.fpstate, ptr %5, i32 0, i32 7, !dbg !6570
  %6 = load i32, ptr %lmask, align 4, !dbg !6570
  %7 = load i32, ptr %hmask, align 4, !dbg !6570
  call void asm sideeffect "# ALT: oldnstr\0A661:\0A\09.byte 0x48, 0x0f,0xae,0x2f\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte (10*32+ 3)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x48, 0x0f,0xc7,0x1f\0A6651:\0A.popsection\0A\0A3:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (661b) - .\0A .long (3b) - .\0A .long 6 \0A .popsection\0A", "{di},*m,{ax},{dx},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %regs, ptr elementtype(%struct.xregs_state) %regs2, i32 %6, i32 %7) #14, !dbg !6570, !srcloc !6571
  call void @llvm.lifetime.end.p0(i64 4, ptr %hmask) #14, !dbg !6572
  call void @llvm.lifetime.end.p0(i64 4, ptr %lmask) #14, !dbg !6572
  ret void, !dbg !6572
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @frstor_from_user_sigframe(ptr noundef %fx) #4 align 16 !dbg !6573 {
entry:
  %fx.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %fx, ptr %fx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fx.addr, metadata !6575, metadata !DIExpression()), !dbg !6578
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !6579
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6576, metadata !DIExpression()), !dbg !6579
  call void @might_fault() #15, !dbg !6579
  %0 = load ptr, ptr %fx.addr, align 8, !dbg !6579
  %1 = load ptr, ptr %fx.addr, align 8, !dbg !6579
  %2 = call i32 asm sideeffect "# ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xcb\0A6651:\0A.popsection\0A\0A1: frstor $3\0A2: # ALT: oldnstr\0A661:\0A\09\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 9*32+20)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09.byte 0x0f,0x01,0xca\0A6651:\0A.popsection\0A\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 15 \0A .popsection\0A", "={ax},=*m,0,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(%struct.fregs_state) %0, i32 0, ptr elementtype(%struct.fregs_state) %1) #14, !dbg !6579, !srcloc !6580
  store i32 %2, ptr %err, align 4, !dbg !6579
  %3 = load i32, ptr %err, align 4, !dbg !6579
  store i32 %3, ptr %tmp, align 4, !dbg !6579
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !6581
  %4 = load i32, ptr %tmp, align 4, !dbg !6579
  ret i32 %4, !dbg !6582
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_from_user_before(ptr noundef %to, ptr noundef %from, i64 noundef %n) #3 align 16 !dbg !6583 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6587, metadata !DIExpression()), !dbg !6590
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6588, metadata !DIExpression()), !dbg !6591
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6589, metadata !DIExpression()), !dbg !6592
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6593
  %1 = load i64, ptr %n.addr, align 8, !dbg !6594
  %conv = trunc i64 %1 to i32, !dbg !6594
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #15, !dbg !6595
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6596
  %3 = load i64, ptr %n.addr, align 8, !dbg !6596
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 1) #15, !dbg !6596
  ret void, !dbg !6597
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_copy_from_user(ptr noundef %dst, ptr noundef %src, i64 noundef %size) #3 align 16 !dbg !6598 {
entry:
  %dst.addr = alloca ptr, align 8
  %src.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %dst, ptr %dst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dst.addr, metadata !6600, metadata !DIExpression()), !dbg !6603
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !6601, metadata !DIExpression()), !dbg !6604
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6602, metadata !DIExpression()), !dbg !6605
  %0 = load ptr, ptr %dst.addr, align 8, !dbg !6606
  %1 = load ptr, ptr %src.addr, align 8, !dbg !6607
  %2 = load i64, ptr %size.addr, align 8, !dbg !6608
  %call = call i64 @copy_user_generic(ptr noundef %0, ptr noundef %1, i64 noundef %2) #15, !dbg !6609
  ret i64 %call, !dbg !6610
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_copy_from_user_after(ptr noundef %to, ptr noundef %from, i64 noundef %n, i64 noundef %left) #3 align 16 !dbg !6611 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6615, metadata !DIExpression()), !dbg !6619
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6616, metadata !DIExpression()), !dbg !6620
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6617, metadata !DIExpression()), !dbg !6621
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6618, metadata !DIExpression()), !dbg !6622
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6623
  %1 = load i64, ptr %n.addr, align 8, !dbg !6624
  %2 = load i64, ptr %left.addr, align 8, !dbg !6625
  %sub = sub i64 %1, %2, !dbg !6626
  call void @kmsan_unpoison_memory(ptr noundef %0, i64 noundef %sub) #15, !dbg !6627
  ret void, !dbg !6628
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6629 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6631, metadata !DIExpression()), !dbg !6633
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6632, metadata !DIExpression()), !dbg !6634
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6635
  %1 = load i64, ptr %nr.addr, align 8, !dbg !6636
  %div = sdiv i64 %1, 64, !dbg !6636
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !6637
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #15, !dbg !6638
  %2 = load i64, ptr %nr.addr, align 8, !dbg !6639
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !6640
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #15, !dbg !6641
  ret void, !dbg !6642
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !6643 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6645, metadata !DIExpression()), !dbg !6647
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6646, metadata !DIExpression()), !dbg !6648
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6649
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6651
  br i1 %1, label %if.then, label %if.else, !dbg !6652

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6653
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6653
  %shr = ashr i64 %3, 3, !dbg !6653
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6653
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6655
  %and = and i64 %4, 7, !dbg !6655
  %sh_prom = trunc i64 %and to i32, !dbg !6655
  %shl = shl i32 1, %sh_prom, !dbg !6655
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #14, !dbg !6656, !srcloc !6657
  br label %if.end, !dbg !6658

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6659
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6661
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #14, !dbg !6662, !srcloc !6663
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6664
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(read) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nounwind }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone nounwind willreturn memory(read) }
attributes #17 = { nounwind memory(none) }
attributes #18 = { nounwind memory(read) }

!llvm.dbg.cu = !{!227}
!llvm.named.register.rsp = !{!4252}
!llvm.module.flags = !{!4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260}
!llvm.ident = !{!4261}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "arch/x86/kernel/fpu/context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4535ce2ee3afda4d25c914778a562b8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 30)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !19, line: 57, type: !20, isLocal: true, isDefinition: true)
!19 = !DIFile(filename: "./arch/x86/include/asm/trace/fpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c7c0aa149fcbf4f42ec1edac46555d77")
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 33)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_x86_fpu_regs_activated356", scope: !25, file: !19, line: 57, type: !355, isLocal: true, isDefinition: true)
!25 = distinct !DISubprogram(name: "trace_x86_fpu_regs_activated", scope: !19, file: !19, line: 57, type: !26, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4229)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !30, line: 448, size: 33792, elements: !31)
!30 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!31 = !{!32, !34, !36, !218, !219, !225, !226}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !29, file: !30, line: 461, baseType: !33, size: 32)
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !29, file: !30, line: 468, baseType: !35, size: 64, offset: 64)
!35 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !29, file: !30, line: 476, baseType: !37, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !30, line: 356, size: 33280, align: 512, elements: !39)
!39 = !{!40, !41, !42, !48, !49, !50, !51, !52, !53, !54}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !38, file: !30, line: 358, baseType: !33, size: 32)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !38, file: !30, line: 361, baseType: !33, size: 32, offset: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !38, file: !30, line: 364, baseType: !43, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !44, line: 23, baseType: !45)
!44 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !46, line: 31, baseType: !47)
!46 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!47 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !38, file: !30, line: 367, baseType: !43, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !38, file: !30, line: 370, baseType: !43, size: 64, offset: 192)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !38, file: !30, line: 373, baseType: !33, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !38, file: !30, line: 376, baseType: !33, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !38, file: !30, line: 391, baseType: !33, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !38, file: !30, line: 394, baseType: !33, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !38, file: !30, line: 397, baseType: !55, size: 32768, offset: 512)
!55 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !30, line: 348, size: 32768, elements: !56)
!56 = !{!57, !74, !118, !199, !214}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !55, file: !30, line: 349, baseType: !58, size: 896)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !30, line: 12, size: 896, elements: !59)
!59 = !{!60, !63, !64, !65, !66, !67, !68, !69, !73}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !58, file: !30, line: 13, baseType: !61, size: 32)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !44, line: 21, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !46, line: 27, baseType: !33)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !58, file: !30, line: 14, baseType: !61, size: 32, offset: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !58, file: !30, line: 15, baseType: !61, size: 32, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !58, file: !30, line: 16, baseType: !61, size: 32, offset: 96)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !58, file: !30, line: 17, baseType: !61, size: 32, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !58, file: !30, line: 18, baseType: !61, size: 32, offset: 160)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !58, file: !30, line: 19, baseType: !61, size: 32, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !58, file: !30, line: 22, baseType: !70, size: 640, offset: 224)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 640, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 20)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !58, file: !30, line: 25, baseType: !61, size: 32, offset: 864)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !55, file: !30, line: 350, baseType: !75, size: 4096, align: 128)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !30, line: 34, size: 4096, align: 128, elements: !76)
!76 = !{!77, !81, !82, !83, !84, !99, !100, !101, !105, !109, !113}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !75, file: !30, line: 35, baseType: !78, size: 16)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !44, line: 19, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !46, line: 24, baseType: !80)
!80 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !75, file: !30, line: 36, baseType: !78, size: 16, offset: 16)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !75, file: !30, line: 37, baseType: !78, size: 16, offset: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !75, file: !30, line: 38, baseType: !78, size: 16, offset: 48)
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !75, file: !30, line: 39, baseType: !85, size: 128, offset: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !75, file: !30, line: 39, size: 128, elements: !86)
!86 = !{!87, !92}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !30, line: 40, baseType: !88, size: 128)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !85, file: !30, line: 40, size: 128, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !88, file: !30, line: 41, baseType: !43, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !88, file: !30, line: 42, baseType: !43, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !30, line: 44, baseType: !93, size: 128)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !85, file: !30, line: 44, size: 128, elements: !94)
!94 = !{!95, !96, !97, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !93, file: !30, line: 45, baseType: !61, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !93, file: !30, line: 46, baseType: !61, size: 32, offset: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !93, file: !30, line: 47, baseType: !61, size: 32, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !93, file: !30, line: 48, baseType: !61, size: 32, offset: 96)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !75, file: !30, line: 51, baseType: !61, size: 32, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !75, file: !30, line: 52, baseType: !61, size: 32, offset: 224)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !75, file: !30, line: 55, baseType: !102, size: 1024, offset: 256)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 1024, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !75, file: !30, line: 58, baseType: !106, size: 2048, offset: 1280)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 2048, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !75, file: !30, line: 60, baseType: !110, size: 384, offset: 3328)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 384, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 12)
!113 = !DIDerivedType(tag: DW_TAG_member, scope: !75, file: !30, line: 62, baseType: !114, size: 384, offset: 3712)
!114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !75, file: !30, line: 62, size: 384, elements: !115)
!115 = !{!116, !117}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !114, file: !30, line: 63, baseType: !110, size: 384)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !114, file: !30, line: 64, baseType: !110, size: 384)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !55, file: !30, line: 351, baseType: !119, size: 1088)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !30, line: 79, size: 1088, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !133, !134, !135, !136, !137, !138, !198}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !119, file: !30, line: 80, baseType: !61, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !119, file: !30, line: 81, baseType: !61, size: 32, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !119, file: !30, line: 82, baseType: !61, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !119, file: !30, line: 83, baseType: !61, size: 32, offset: 96)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !119, file: !30, line: 84, baseType: !61, size: 32, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !119, file: !30, line: 85, baseType: !61, size: 32, offset: 160)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !119, file: !30, line: 86, baseType: !61, size: 32, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !119, file: !30, line: 88, baseType: !70, size: 640, offset: 224)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !119, file: !30, line: 89, baseType: !130, size: 8, offset: 864)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !44, line: 17, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !46, line: 21, baseType: !132)
!132 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !119, file: !30, line: 90, baseType: !130, size: 8, offset: 872)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !119, file: !30, line: 91, baseType: !130, size: 8, offset: 880)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !119, file: !30, line: 92, baseType: !130, size: 8, offset: 888)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !119, file: !30, line: 93, baseType: !130, size: 8, offset: 896)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !119, file: !30, line: 94, baseType: !130, size: 8, offset: 904)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !119, file: !30, line: 95, baseType: !139, size: 64, offset: 960)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !141, line: 11, size: 128, elements: !142)
!141 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!142 = !{!143, !145}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !140, file: !141, line: 12, baseType: !144, size: 64)
!144 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !140, file: !141, line: 13, baseType: !146, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !148, line: 103, size: 1344, elements: !149)
!148 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !178, !179, !180}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !147, file: !148, line: 109, baseType: !35, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !147, file: !148, line: 110, baseType: !35, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !147, file: !148, line: 111, baseType: !35, size: 64, offset: 128)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !147, file: !148, line: 112, baseType: !35, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !147, file: !148, line: 113, baseType: !35, size: 64, offset: 256)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !147, file: !148, line: 114, baseType: !35, size: 64, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !147, file: !148, line: 117, baseType: !35, size: 64, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !147, file: !148, line: 118, baseType: !35, size: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !147, file: !148, line: 119, baseType: !35, size: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !147, file: !148, line: 120, baseType: !35, size: 64, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !147, file: !148, line: 121, baseType: !35, size: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !147, file: !148, line: 122, baseType: !35, size: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !147, file: !148, line: 123, baseType: !35, size: 64, offset: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !147, file: !148, line: 124, baseType: !35, size: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !147, file: !148, line: 125, baseType: !35, size: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !147, file: !148, line: 139, baseType: !35, size: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !147, file: !148, line: 142, baseType: !35, size: 64, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !148, line: 144, baseType: !168, size: 64, offset: 1088)
!168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !148, line: 144, size: 64, elements: !169)
!169 = !{!170, !171, !172}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !168, file: !148, line: 146, baseType: !78, size: 16)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !168, file: !148, line: 148, baseType: !43, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !168, file: !148, line: 150, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !148, line: 59, size: 64, elements: !174)
!174 = !{!175, !176, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !173, file: !148, line: 61, baseType: !43, size: 16, flags: DIFlagBitField, extraData: i64 0)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !173, file: !148, line: 63, baseType: !43, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !173, file: !148, line: 65, baseType: !43, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !147, file: !148, line: 153, baseType: !35, size: 64, offset: 1152)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !147, file: !148, line: 154, baseType: !35, size: 64, offset: 1216)
!180 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !148, line: 156, baseType: !181, size: 64, offset: 1280)
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !147, file: !148, line: 156, size: 64, elements: !182)
!182 = !{!183, !184, !185}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !181, file: !148, line: 158, baseType: !78, size: 16)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !181, file: !148, line: 160, baseType: !43, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !181, file: !148, line: 162, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !148, line: 69, size: 64, elements: !187)
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !186, file: !148, line: 71, baseType: !43, size: 16, flags: DIFlagBitField, extraData: i64 0)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !186, file: !148, line: 73, baseType: !43, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !186, file: !148, line: 75, baseType: !43, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !186, file: !148, line: 77, baseType: !43, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !186, file: !148, line: 80, baseType: !43, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !186, file: !148, line: 83, baseType: !43, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !186, file: !148, line: 86, baseType: !43, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !186, file: !148, line: 88, baseType: !43, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !186, file: !148, line: 93, baseType: !43, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !186, file: !148, line: 100, baseType: !43, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !119, file: !30, line: 96, baseType: !61, size: 32, offset: 1024)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !55, file: !30, line: 352, baseType: !200, size: 4608, align: 512)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !30, line: 333, size: 4608, align: 512, elements: !201)
!201 = !{!202, !203, !210}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !200, file: !30, line: 334, baseType: !75, size: 4096, align: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !200, file: !30, line: 335, baseType: !204, size: 512, offset: 4096)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !30, line: 312, size: 512, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !204, file: !30, line: 313, baseType: !43, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !204, file: !30, line: 314, baseType: !43, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !204, file: !30, line: 315, baseType: !209, size: 384, offset: 128)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 384, elements: !15)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !200, file: !30, line: 336, baseType: !211, offset: 4608)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: -1)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !55, file: !30, line: 353, baseType: !215, size: 32768)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 32768, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 4096)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !29, file: !30, line: 484, baseType: !37, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !29, file: !30, line: 491, baseType: !220, size: 128, offset: 256)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !30, line: 404, size: 128, elements: !221)
!221 = !{!222, !223, !224}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !220, file: !30, line: 424, baseType: !43, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !220, file: !30, line: 432, baseType: !33, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !220, file: !30, line: 440, baseType: !33, size: 32, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !29, file: !30, line: 498, baseType: !220, size: 128, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !29, file: !30, line: 508, baseType: !38, size: 33280, align: 512, offset: 512)
!227 = distinct !DICompileUnit(language: DW_LANG_C11, file: !228, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/fpu/.signal.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/fpu/signal\22 -D KBUILD_BASENAME=\22signal\22 -D KBUILD_MODNAME=\22signal\22 -D __KBUILD_MODNAME=kmod_signal -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/fpu/signal.ll arch/x86/kernel/fpu/signal.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !229, retainedTypes: !338, globals: !4192, splitDebugInlining: false, nameTableKind: None)
!228 = !DIFile(filename: "arch/x86/kernel/fpu/signal.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a80d8eb2904d8a61d7911421119e561")
!229 = !{!230, !235, !243, !250, !258, !274, !281, !287, !292, !298, !304, !311, !316}
!230 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !231, line: 65, baseType: !33, size: 32, elements: !232)
!231 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!232 = !{!233, !234}
!233 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!234 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!235 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !236, line: 9, baseType: !33, size: 32, elements: !237)
!236 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!237 = !{!238, !239, !240, !241, !242}
!238 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!239 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!240 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!241 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!242 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !244, line: 312, baseType: !33, size: 32, elements: !245)
!244 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!245 = !{!246, !247, !248, !249}
!246 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!247 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!248 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!249 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!250 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !251, line: 68, baseType: !33, size: 32, elements: !252)
!251 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!252 = !{!253, !254, !255, !256, !257}
!253 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!254 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!255 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!256 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!257 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !259, line: 1325, baseType: !33, size: 32, elements: !260)
!259 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273}
!261 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!262 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!263 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!264 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!265 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!266 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!267 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!268 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!269 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!270 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!271 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!272 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!273 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!274 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !275, line: 15, baseType: !33, size: 32, elements: !276)
!275 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!276 = !{!277, !278, !279, !280}
!277 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!278 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!279 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!280 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!281 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !282, line: 26, baseType: !33, size: 32, elements: !283)
!282 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!283 = !{!284, !285, !286}
!284 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!285 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!286 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !288, line: 2052, baseType: !33, size: 32, elements: !289)
!288 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!289 = !{!290, !291}
!290 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!291 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!292 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !293, line: 54, baseType: !33, size: 32, elements: !294)
!293 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!294 = !{!295, !296, !297}
!295 = !DIEnumerator(name: "USRQUOTA", value: 0)
!296 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!297 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !299, line: 16, baseType: !33, size: 32, elements: !300)
!299 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!300 = !{!301, !302, !303}
!301 = !DIEnumerator(name: "TT_NONE", value: 0)
!302 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!303 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !305, line: 51, baseType: !33, size: 32, elements: !306)
!305 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!306 = !{!307, !308, !309, !310}
!307 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!308 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!309 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!310 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !312, line: 10, baseType: !33, size: 32, elements: !313)
!312 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!313 = !{!314, !315}
!314 = !DIEnumerator(name: "false", value: 0)
!315 = !DIEnumerator(name: "true", value: 1)
!316 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xfeature", file: !30, line: 102, baseType: !33, size: 32, elements: !317)
!317 = !{!318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!318 = !DIEnumerator(name: "XFEATURE_FP", value: 0)
!319 = !DIEnumerator(name: "XFEATURE_SSE", value: 1)
!320 = !DIEnumerator(name: "XFEATURE_YMM", value: 2)
!321 = !DIEnumerator(name: "XFEATURE_BNDREGS", value: 3)
!322 = !DIEnumerator(name: "XFEATURE_BNDCSR", value: 4)
!323 = !DIEnumerator(name: "XFEATURE_OPMASK", value: 5)
!324 = !DIEnumerator(name: "XFEATURE_ZMM_Hi256", value: 6)
!325 = !DIEnumerator(name: "XFEATURE_Hi16_ZMM", value: 7)
!326 = !DIEnumerator(name: "XFEATURE_PT_UNIMPLEMENTED_SO_FAR", value: 8)
!327 = !DIEnumerator(name: "XFEATURE_PKRU", value: 9)
!328 = !DIEnumerator(name: "XFEATURE_PASID", value: 10)
!329 = !DIEnumerator(name: "XFEATURE_CET_USER", value: 11)
!330 = !DIEnumerator(name: "XFEATURE_CET_KERNEL_UNUSED", value: 12)
!331 = !DIEnumerator(name: "XFEATURE_RSRVD_COMP_13", value: 13)
!332 = !DIEnumerator(name: "XFEATURE_RSRVD_COMP_14", value: 14)
!333 = !DIEnumerator(name: "XFEATURE_LBR", value: 15)
!334 = !DIEnumerator(name: "XFEATURE_RSRVD_COMP_16", value: 16)
!335 = !DIEnumerator(name: "XFEATURE_XTILE_CFG", value: 17)
!336 = !DIEnumerator(name: "XFEATURE_XTILE_DATA", value: 18)
!337 = !DIEnumerator(name: "XFEATURE_MAX", value: 19)
!338 = !{!339, !35, !347, !355, !348, !144, !952, !367, !61, !4169, !2574, !4170, !2365, !4171, !28, !43, !4172, !4175, !4181, !33, !4183, !4185, !4187, !4188, !4189, !62, !4190, !4191}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !341, line: 56, size: 192, elements: !342)
!341 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!342 = !{!343, !344, !345, !346}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !340, file: !341, line: 57, baseType: !35, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !340, file: !341, line: 58, baseType: !35, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !340, file: !341, line: 59, baseType: !61, size: 32, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !340, file: !341, line: 61, baseType: !61, size: 32, offset: 160)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !350, line: 746, size: 58368, elements: !351)
!350 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!351 = !{!352, !353, !354, !356, !368, !369, !370, !371, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !457, !468, !592, !596, !599, !630, !631, !632, !633, !644, !646, !647, !648, !649, !650, !651, !662, !663, !666, !667, !668, !669, !670, !671, !672, !673, !680, !681, !688, !689, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3523, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3571, !3577, !3578, !3579, !3580, !3581, !3583, !3586, !3593, !3598, !3601, !3604, !3607, !3610, !3748, !3775, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3786, !3787, !3788, !3797, !3805, !3806, !3807, !3808, !3809, !3814, !3815, !3816, !3819, !3820, !3823, !3826, !3829, !3837, !3840, !3841, !3927, !3928, !3929, !3930, !3931, !3937, !3938, !3939, !3940, !3943, !3944, !3947, !3961, !3962, !3965, !3966, !3967, !3970, !3971, !3972, !3973, !3974, !3975, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !4007, !4008, !4014, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4026, !4098, !4100, !4101, !4102, !4103, !4104, !4105, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4122, !4123, !4124}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !349, file: !350, line: 752, baseType: !340, size: 192)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !349, file: !350, line: 754, baseType: !33, size: 32, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !349, file: !350, line: 767, baseType: !355, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !349, file: !350, line: 768, baseType: !357, size: 32, offset: 320)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !358, line: 113, baseType: !359)
!358 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !358, line: 111, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !359, file: !358, line: 112, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !363, line: 174, baseType: !364)
!363 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 172, size: 32, elements: !365)
!365 = !{!366}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !364, file: !363, line: 173, baseType: !367, size: 32)
!367 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !349, file: !350, line: 770, baseType: !33, size: 32, offset: 352)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !349, file: !350, line: 771, baseType: !33, size: 32, offset: 384)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !349, file: !350, line: 774, baseType: !367, size: 32, offset: 416)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !349, file: !350, line: 775, baseType: !372, size: 128, offset: 448)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !373, line: 58, size: 128, elements: !374)
!373 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!374 = !{!375, !381, !386, !387}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !372, file: !373, line: 59, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !377, line: 60, size: 64, elements: !378)
!377 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!378 = !{!379}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !376, file: !377, line: 61, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !373, line: 60, baseType: !382, size: 32, offset: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !373, line: 60, size: 32, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !382, file: !373, line: 61, baseType: !33, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !382, file: !373, line: 62, baseType: !362, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !372, file: !373, line: 65, baseType: !78, size: 16, offset: 96)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !372, file: !373, line: 65, baseType: !78, size: 16, offset: 112)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !349, file: !350, line: 776, baseType: !33, size: 32, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !349, file: !350, line: 777, baseType: !35, size: 64, offset: 640)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !349, file: !350, line: 778, baseType: !348, size: 64, offset: 704)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !349, file: !350, line: 787, baseType: !367, size: 32, offset: 768)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !349, file: !350, line: 788, baseType: !367, size: 32, offset: 800)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !349, file: !350, line: 790, baseType: !367, size: 32, offset: 832)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !349, file: !350, line: 792, baseType: !367, size: 32, offset: 864)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !349, file: !350, line: 793, baseType: !367, size: 32, offset: 896)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !349, file: !350, line: 794, baseType: !367, size: 32, offset: 928)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !349, file: !350, line: 795, baseType: !33, size: 32, offset: 960)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !349, file: !350, line: 797, baseType: !399, size: 2048, offset: 1024)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !350, line: 551, size: 2048, elements: !400)
!400 = !{!401, !406, !414, !415, !416, !422, !423, !424, !425, !426, !427, !431, !432, !433, !434, !436, !439, !440, !441}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !399, file: !350, line: 553, baseType: !402, size: 128)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !350, line: 411, size: 128, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !402, file: !350, line: 412, baseType: !35, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !402, file: !350, line: 413, baseType: !61, size: 32, offset: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !399, file: !350, line: 554, baseType: !407, size: 192, align: 64, offset: 128)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !408, line: 5, size: 192, align: 64, elements: !409)
!408 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!409 = !{!410, !411, !413}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !407, file: !408, line: 6, baseType: !35, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !407, file: !408, line: 7, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !407, file: !408, line: 8, baseType: !412, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !399, file: !350, line: 555, baseType: !43, size: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !399, file: !350, line: 556, baseType: !43, size: 64, offset: 384)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !399, file: !350, line: 558, baseType: !417, size: 128, offset: 448)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !363, line: 190, size: 128, elements: !418)
!418 = !{!419, !421}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !417, file: !363, line: 191, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !417, file: !363, line: 191, baseType: !420, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !399, file: !350, line: 559, baseType: !33, size: 32, offset: 576)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !399, file: !350, line: 561, baseType: !43, size: 64, offset: 640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !399, file: !350, line: 562, baseType: !43, size: 64, offset: 704)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !399, file: !350, line: 563, baseType: !43, size: 64, offset: 768)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !399, file: !350, line: 564, baseType: !43, size: 64, offset: 832)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !399, file: !350, line: 565, baseType: !428, size: 64, offset: 896)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !44, line: 22, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !46, line: 30, baseType: !430)
!430 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !399, file: !350, line: 566, baseType: !43, size: 64, offset: 960)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !399, file: !350, line: 568, baseType: !43, size: 64, offset: 1024)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !399, file: !350, line: 571, baseType: !367, size: 32, offset: 1088)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !399, file: !350, line: 572, baseType: !435, size: 64, offset: 1152)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !399, file: !350, line: 574, baseType: !437, size: 64, offset: 1216)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !350, line: 49, flags: DIFlagFwdDecl)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !399, file: !350, line: 576, baseType: !437, size: 64, offset: 1280)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !399, file: !350, line: 578, baseType: !35, size: 64, offset: 1344)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !399, file: !350, line: 588, baseType: !442, size: 512, align: 512, offset: 1536)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !350, line: 497, size: 512, align: 512, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !442, file: !350, line: 498, baseType: !43, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !442, file: !350, line: 499, baseType: !43, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !442, file: !350, line: 500, baseType: !43, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !442, file: !350, line: 501, baseType: !61, size: 32, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !442, file: !350, line: 502, baseType: !61, size: 32, offset: 224)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !442, file: !350, line: 503, baseType: !35, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !442, file: !350, line: 504, baseType: !35, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !442, file: !350, line: 505, baseType: !35, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !442, file: !350, line: 506, baseType: !453, size: 64, align: 64, offset: 448)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !350, line: 445, size: 64, align: 64, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !453, file: !350, line: 446, baseType: !33, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !453, file: !350, line: 447, baseType: !33, size: 32, offset: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !349, file: !350, line: 798, baseType: !458, size: 384, offset: 3072)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !350, line: 592, size: 384, elements: !459)
!459 = !{!460, !461, !462, !463, !464, !465, !466}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !458, file: !350, line: 593, baseType: !417, size: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !458, file: !350, line: 594, baseType: !35, size: 64, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !458, file: !350, line: 595, baseType: !35, size: 64, offset: 192)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !458, file: !350, line: 596, baseType: !33, size: 32, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !458, file: !350, line: 597, baseType: !80, size: 16, offset: 288)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !458, file: !350, line: 598, baseType: !80, size: 16, offset: 304)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !458, file: !350, line: 600, baseType: !467, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !349, file: !350, line: 799, baseType: !469, size: 1792, offset: 3456)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !350, line: 610, size: 1792, elements: !470)
!470 = !{!471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !589, !590}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !469, file: !350, line: 611, baseType: !407, size: 192, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !469, file: !350, line: 618, baseType: !43, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !469, file: !350, line: 619, baseType: !43, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !469, file: !350, line: 620, baseType: !43, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !469, file: !350, line: 621, baseType: !43, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !469, file: !350, line: 622, baseType: !43, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !469, file: !350, line: 629, baseType: !428, size: 64, offset: 512)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !469, file: !350, line: 630, baseType: !43, size: 64, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !469, file: !350, line: 631, baseType: !33, size: 32, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !469, file: !350, line: 653, baseType: !33, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !469, file: !350, line: 654, baseType: !33, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !469, file: !350, line: 655, baseType: !33, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !469, file: !350, line: 656, baseType: !33, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !469, file: !350, line: 662, baseType: !485, size: 512, offset: 704)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !231, line: 118, size: 512, elements: !486)
!486 = !{!487, !495, !496, !501, !585, !586, !587, !588}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !485, file: !231, line: 119, baseType: !488, size: 256)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !489, line: 9, size: 256, elements: !490)
!489 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !488, file: !489, line: 10, baseType: !407, size: 192, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !488, file: !489, line: 11, baseType: !493, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !494, line: 29, baseType: !428)
!494 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !485, file: !231, line: 120, baseType: !493, size: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !485, file: !231, line: 121, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{!230, !500}
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !485, file: !231, line: 122, baseType: !502, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !231, line: 159, size: 512, align: 512, elements: !504)
!504 = !{!505, !553, !554, !558, !568, !569, !580, !584}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !503, file: !231, line: 160, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !231, line: 215, size: 4608, align: 512, elements: !508)
!508 = !{!509, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !507, file: !231, line: 216, baseType: !510, size: 32)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !511, line: 23, baseType: !512)
!511 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !511, line: 14, size: 32, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !512, file: !511, line: 15, baseType: !515, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !516, line: 44, baseType: !517)
!516 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !516, line: 14, size: 32, elements: !518)
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !516, line: 15, baseType: !520, size: 32)
!520 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !517, file: !516, line: 15, size: 32, elements: !521)
!521 = !{!522, !523, !528}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !520, file: !516, line: 16, baseType: !362, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !516, line: 24, baseType: !524, size: 16)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !520, file: !516, line: 24, size: 16, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !524, file: !516, line: 25, baseType: !130, size: 8)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !524, file: !516, line: 26, baseType: !130, size: 8, offset: 8)
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !520, file: !516, line: 28, baseType: !529, size: 32)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !520, file: !516, line: 28, size: 32, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !529, file: !516, line: 29, baseType: !78, size: 16)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !529, file: !516, line: 30, baseType: !78, size: 16, offset: 16)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !507, file: !231, line: 217, baseType: !33, size: 32, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !507, file: !231, line: 218, baseType: !33, size: 32, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !507, file: !231, line: 219, baseType: !33, size: 32, offset: 96)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !507, file: !231, line: 220, baseType: !33, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !507, file: !231, line: 221, baseType: !33, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !507, file: !231, line: 222, baseType: !33, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !507, file: !231, line: 223, baseType: !33, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !507, file: !231, line: 224, baseType: !33, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !507, file: !231, line: 226, baseType: !33, size: 32, offset: 160)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !507, file: !231, line: 227, baseType: !80, size: 16, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !507, file: !231, line: 228, baseType: !80, size: 16, offset: 208)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !507, file: !231, line: 229, baseType: !33, size: 32, offset: 224)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !507, file: !231, line: 235, baseType: !493, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !507, file: !231, line: 236, baseType: !500, size: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !507, file: !231, line: 237, baseType: !493, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !507, file: !231, line: 238, baseType: !500, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !507, file: !231, line: 239, baseType: !550, size: 4096, align: 512, offset: 512)
!550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !503, size: 4096, align: 512, elements: !551)
!551 = !{!552}
!552 = !DISubrange(count: 8)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !503, file: !231, line: 161, baseType: !33, size: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !503, file: !231, line: 162, baseType: !555, size: 32, offset: 96)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !363, line: 32, baseType: !556)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !557, line: 96, baseType: !367)
!557 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!558 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !503, file: !231, line: 163, baseType: !559, size: 32, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !560, line: 274, baseType: !561)
!560 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !560, line: 274, size: 32, elements: !562)
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !561, file: !560, line: 274, baseType: !564, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !560, line: 69, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !560, line: 64, size: 32, elements: !566)
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !565, file: !560, line: 65, baseType: !33, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !503, file: !231, line: 164, baseType: !500, size: 64, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !503, file: !231, line: 165, baseType: !570, size: 128, offset: 256)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !489, line: 14, size: 128, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !570, file: !489, line: 15, baseType: !573, size: 128)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !408, line: 26, size: 128, elements: !574)
!574 = !{!575, !579}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !573, file: !408, line: 27, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !408, line: 12, size: 64, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !576, file: !408, line: 13, baseType: !412, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !573, file: !408, line: 28, baseType: !412, size: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !503, file: !231, line: 166, baseType: !581, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!493}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !503, file: !231, line: 167, baseType: !493, size: 64, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !485, file: !231, line: 123, baseType: !130, size: 8, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !485, file: !231, line: 124, baseType: !130, size: 8, offset: 456)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !485, file: !231, line: 125, baseType: !130, size: 8, offset: 464)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !485, file: !231, line: 126, baseType: !130, size: 8, offset: 472)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !469, file: !350, line: 671, baseType: !485, size: 512, offset: 1216)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !469, file: !350, line: 679, baseType: !591, size: 64, offset: 1728)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !349, file: !350, line: 800, baseType: !593, size: 64, offset: 5248)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !350, line: 800, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !349, file: !350, line: 809, baseType: !597, size: 64, offset: 5312)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !350, line: 70, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !349, file: !350, line: 825, baseType: !600, size: 2048, align: 512, offset: 5632)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !350, line: 509, size: 2048, align: 512, elements: !601)
!601 = !{!602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !600, file: !350, line: 511, baseType: !43, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !600, file: !350, line: 512, baseType: !43, size: 64, offset: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !600, file: !350, line: 513, baseType: !43, size: 64, offset: 128)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !600, file: !350, line: 514, baseType: !43, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !600, file: !350, line: 515, baseType: !43, size: 64, offset: 256)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !600, file: !350, line: 516, baseType: !43, size: 64, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !600, file: !350, line: 518, baseType: !43, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !600, file: !350, line: 519, baseType: !43, size: 64, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !600, file: !350, line: 520, baseType: !428, size: 64, offset: 512)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !600, file: !350, line: 522, baseType: !43, size: 64, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !600, file: !350, line: 523, baseType: !43, size: 64, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !600, file: !350, line: 524, baseType: !428, size: 64, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !600, file: !350, line: 526, baseType: !428, size: 64, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !600, file: !350, line: 527, baseType: !43, size: 64, offset: 832)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !600, file: !350, line: 529, baseType: !43, size: 64, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !600, file: !350, line: 530, baseType: !43, size: 64, offset: 960)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !600, file: !350, line: 531, baseType: !43, size: 64, offset: 1024)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !600, file: !350, line: 532, baseType: !43, size: 64, offset: 1088)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !600, file: !350, line: 533, baseType: !43, size: 64, offset: 1152)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !600, file: !350, line: 535, baseType: !43, size: 64, offset: 1216)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !600, file: !350, line: 536, baseType: !43, size: 64, offset: 1280)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !600, file: !350, line: 537, baseType: !43, size: 64, offset: 1344)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !600, file: !350, line: 538, baseType: !43, size: 64, offset: 1408)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !600, file: !350, line: 539, baseType: !43, size: 64, offset: 1472)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !600, file: !350, line: 540, baseType: !43, size: 64, offset: 1536)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !600, file: !350, line: 541, baseType: !43, size: 64, offset: 1600)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !600, file: !350, line: 542, baseType: !43, size: 64, offset: 1664)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !600, file: !350, line: 543, baseType: !43, size: 64, offset: 1728)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !349, file: !350, line: 833, baseType: !33, size: 32, offset: 7680)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !349, file: !350, line: 836, baseType: !33, size: 32, offset: 7712)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !349, file: !350, line: 837, baseType: !367, size: 32, offset: 7744)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !349, file: !350, line: 838, baseType: !634, size: 64, offset: 7808)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !637, line: 19, baseType: !638)
!637 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !637, line: 19, size: 64, elements: !639)
!639 = !{!640}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !638, file: !637, line: 19, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !642)
!642 = !{!643}
!643 = !DISubrange(count: 1)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !349, file: !350, line: 839, baseType: !645, size: 64, offset: 7872)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !349, file: !350, line: 840, baseType: !636, size: 64, offset: 7936)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !349, file: !350, line: 841, baseType: !355, size: 64, offset: 8000)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !349, file: !350, line: 843, baseType: !80, size: 16, offset: 8064)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !349, file: !350, line: 845, baseType: !80, size: 16, offset: 8080)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !349, file: !350, line: 848, baseType: !367, size: 32, offset: 8096)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !349, file: !350, line: 849, baseType: !652, size: 32, offset: 8128)
!652 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !350, line: 718, size: 32, elements: !653)
!653 = !{!654, !661}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !652, file: !350, line: 724, baseType: !655, size: 32)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !652, file: !350, line: 719, size: 32, elements: !656)
!656 = !{!657, !658, !659, !660}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !655, file: !350, line: 720, baseType: !130, size: 8)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !655, file: !350, line: 721, baseType: !130, size: 8, offset: 8)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !655, file: !350, line: 722, baseType: !130, size: 8, offset: 16)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !655, file: !350, line: 723, baseType: !130, size: 8, offset: 24)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !652, file: !350, line: 725, baseType: !61, size: 32)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !349, file: !350, line: 850, baseType: !417, size: 128, offset: 8192)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !349, file: !350, line: 851, baseType: !664, size: 64, offset: 8320)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !350, line: 60, flags: DIFlagFwdDecl)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !349, file: !350, line: 855, baseType: !35, size: 64, offset: 8384)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !349, file: !350, line: 856, baseType: !130, size: 8, offset: 8448)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !349, file: !350, line: 857, baseType: !130, size: 8, offset: 8456)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !349, file: !350, line: 858, baseType: !367, size: 32, offset: 8480)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !349, file: !350, line: 859, baseType: !417, size: 128, offset: 8512)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !349, file: !350, line: 860, baseType: !367, size: 32, offset: 8640)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !349, file: !350, line: 861, baseType: !417, size: 128, offset: 8704)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !349, file: !350, line: 873, baseType: !674, size: 256, offset: 8832)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !350, line: 376, size: 256, elements: !675)
!675 = !{!676, !677, !678, !679}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !674, file: !350, line: 381, baseType: !35, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !674, file: !350, line: 384, baseType: !47, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !674, file: !350, line: 389, baseType: !47, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !674, file: !350, line: 392, baseType: !47, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !349, file: !350, line: 875, baseType: !417, size: 128, offset: 9088)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !349, file: !350, line: 877, baseType: !682, size: 320, offset: 9216)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !683, line: 86, size: 320, elements: !684)
!683 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!684 = !{!685, !686, !687}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !682, file: !683, line: 87, baseType: !367, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !682, file: !683, line: 88, baseType: !417, size: 128, offset: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !682, file: !683, line: 89, baseType: !417, size: 128, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !349, file: !350, line: 878, baseType: !407, size: 192, align: 64, offset: 9536)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !349, file: !350, line: 881, baseType: !690, size: 64, offset: 9728)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !259, line: 733, size: 10240, elements: !692)
!692 = !{!693, !3442}
!693 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !259, line: 734, baseType: !694, size: 10240)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !259, line: 734, size: 10240, elements: !695)
!695 = !{!696, !700, !722, !3321, !3322, !3323, !3324, !3325, !3326, !3333, !3334, !3335, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3374, !3376, !3379, !3422, !3423, !3424, !3427, !3428, !3429, !3432, !3433, !3434, !3440, !3441}
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !259, line: 739, baseType: !697, size: 512, align: 512)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !694, file: !259, line: 739, size: 512, align: 512, elements: !698)
!698 = !{!699}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !697, file: !259, line: 747, baseType: !362, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !694, file: !259, line: 750, baseType: !701, size: 128, offset: 512)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !702, line: 218, size: 128, elements: !703)
!702 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!703 = !{!704, !720, !721}
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !701, file: !702, line: 219, baseType: !705, size: 32)
!705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !701, file: !702, line: 219, size: 32, elements: !706)
!706 = !{!707, !716}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !705, file: !702, line: 220, baseType: !708, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !709, line: 29, baseType: !710)
!709 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !709, line: 17, size: 32, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !709, line: 18, baseType: !713, size: 32)
!713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !710, file: !709, line: 18, size: 32, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !713, file: !709, line: 19, baseType: !512, size: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !705, file: !702, line: 221, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !702, line: 197, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !702, line: 197, elements: !719)
!719 = !{}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !701, file: !702, line: 223, baseType: !33, size: 32, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !701, file: !702, line: 224, baseType: !355, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !694, file: !259, line: 752, baseType: !723, size: 64, offset: 640)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!35, !726, !35, !35, !35, !35}
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !288, line: 994, size: 1856, align: 64, elements: !728)
!728 = !{!729, !743, !744, !746, !753, !765, !768, !769, !843, !1054, !1063, !3311, !3312, !3313, !3314, !3315, !3316, !3318, !3319, !3320}
!729 = !DIDerivedType(tag: DW_TAG_member, scope: !727, file: !288, line: 995, baseType: !730, size: 128)
!730 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !727, file: !288, line: 995, size: 128, elements: !731)
!731 = !{!732, !733, !742}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !730, file: !288, line: 996, baseType: !376, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !730, file: !288, line: 997, baseType: !734, size: 128, align: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !363, line: 232, size: 128, align: 64, elements: !735)
!735 = !{!736, !738}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !363, line: 233, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !734, file: !363, line: 234, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{null, !737}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !730, file: !288, line: 998, baseType: !33, size: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !727, file: !288, line: 1005, baseType: !708, size: 32, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !727, file: !288, line: 1006, baseType: !745, size: 32, offset: 160)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !363, line: 156, baseType: !33)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !727, file: !288, line: 1007, baseType: !747, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !748, line: 13, baseType: !749)
!748 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !363, line: 181, baseType: !750)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 179, size: 64, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !750, file: !363, line: 180, baseType: !428, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !727, file: !288, line: 1008, baseType: !754, size: 256, offset: 256)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !755, line: 66, size: 256, elements: !756)
!755 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!756 = !{!757, !758, !759, !764}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !754, file: !755, line: 67, baseType: !747, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !754, file: !755, line: 68, baseType: !510, size: 32, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !754, file: !755, line: 70, baseType: !760, size: 32, offset: 96)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !761, line: 15, size: 32, elements: !762)
!761 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!762 = !{!763}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !760, file: !761, line: 20, baseType: !362, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !754, file: !755, line: 72, baseType: !417, size: 128, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !727, file: !288, line: 1009, baseType: !766, size: 64, offset: 512)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !363, line: 52, baseType: !767)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !557, line: 88, baseType: !430)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !727, file: !288, line: 1010, baseType: !33, size: 32, offset: 576)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !727, file: !288, line: 1011, baseType: !770, size: 256, offset: 640)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !288, line: 948, size: 256, elements: !771)
!771 = !{!772, !795, !832, !833, !841, !842}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !770, file: !288, line: 949, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !774, line: 34, baseType: !775)
!774 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !774, line: 25, size: 64, elements: !776)
!776 = !{!777}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !775, file: !774, line: 26, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !779, line: 27, baseType: !780)
!779 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !779, line: 13, size: 64, elements: !781)
!781 = !{!782, !794}
!782 = !DIDerivedType(tag: DW_TAG_member, scope: !780, file: !779, line: 14, baseType: !783, size: 32)
!783 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !779, line: 14, size: 32, elements: !784)
!784 = !{!785, !786}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !783, file: !779, line: 15, baseType: !362, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, scope: !783, file: !779, line: 16, baseType: !787, size: 32)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !783, file: !779, line: 16, size: 32, elements: !788)
!788 = !{!789, !790}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !787, file: !779, line: 18, baseType: !130, size: 8)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !787, file: !779, line: 19, baseType: !791, size: 24, offset: 8)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 24, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 3)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !780, file: !779, line: 26, baseType: !515, size: 32, offset: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !770, file: !288, line: 950, baseType: !796, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !236, line: 59, size: 768, elements: !798)
!798 = !{!799, !800, !801, !802, !815, !816, !823, !824}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !797, file: !236, line: 61, baseType: !357, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !797, file: !236, line: 62, baseType: !33, size: 32, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !797, file: !236, line: 63, baseType: !708, size: 32, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !797, file: !236, line: 65, baseType: !803, size: 256, offset: 128)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !804, size: 256, elements: !813)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !363, line: 194, size: 64, elements: !805)
!805 = !{!806}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !804, file: !363, line: 195, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !363, line: 198, size: 128, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !808, file: !363, line: 199, baseType: !807, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !808, file: !363, line: 199, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!813 = !{!814}
!814 = !DISubrange(count: 4)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !797, file: !236, line: 66, baseType: !804, size: 64, offset: 384)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !797, file: !236, line: 68, baseType: !817, size: 192, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !818, line: 41, baseType: !819)
!818 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !818, line: 37, size: 192, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !819, file: !818, line: 38, baseType: !708, size: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !819, file: !818, line: 39, baseType: !417, size: 128, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !797, file: !236, line: 69, baseType: !734, size: 128, align: 64, offset: 640)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !797, file: !236, line: 70, baseType: !825, offset: 768)
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !826, elements: !212)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !236, line: 54, size: 128, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !826, file: !236, line: 55, baseType: !367, size: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !826, file: !236, line: 56, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !236, line: 56, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !770, file: !288, line: 951, baseType: !235, size: 32, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !770, file: !288, line: 952, baseType: !834, size: 32, offset: 160)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !835, line: 23, baseType: !836)
!835 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !835, line: 21, size: 32, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !836, file: !835, line: 22, baseType: !839, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !363, line: 37, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !557, line: 49, baseType: !33)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !770, file: !288, line: 952, baseType: !834, size: 32, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !770, file: !288, line: 953, baseType: !367, size: 32, offset: 224)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !727, file: !288, line: 1012, baseType: !844, size: 64, offset: 896)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !846)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !847, line: 110, size: 1472, elements: !848)
!847 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!848 = !{!849, !850, !851, !858, !859, !860, !861, !862, !863, !864, !865, !871, !872, !873, !874, !875, !876, !999, !1000, !1001, !1002, !1003, !1034, !1037, !1041, !1049}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !846, file: !847, line: 111, baseType: !747, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !846, file: !847, line: 112, baseType: !834, size: 32, offset: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !846, file: !847, line: 113, baseType: !852, size: 32, offset: 96)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !835, line: 28, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !835, line: 26, size: 32, elements: !854)
!854 = !{!855}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !853, file: !835, line: 27, baseType: !856, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !363, line: 38, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !557, line: 50, baseType: !33)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !846, file: !847, line: 114, baseType: !834, size: 32, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !846, file: !847, line: 115, baseType: !852, size: 32, offset: 160)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !846, file: !847, line: 116, baseType: !834, size: 32, offset: 192)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !846, file: !847, line: 117, baseType: !852, size: 32, offset: 224)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !846, file: !847, line: 118, baseType: !834, size: 32, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !846, file: !847, line: 119, baseType: !852, size: 32, offset: 288)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !846, file: !847, line: 120, baseType: !33, size: 32, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !846, file: !847, line: 121, baseType: !866, size: 64, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !867, line: 24, baseType: !868)
!867 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !867, line: 24, size: 64, elements: !869)
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !868, file: !867, line: 24, baseType: !43, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !846, file: !847, line: 122, baseType: !866, size: 64, offset: 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !846, file: !847, line: 123, baseType: !866, size: 64, offset: 512)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !846, file: !847, line: 124, baseType: !866, size: 64, offset: 576)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !846, file: !847, line: 125, baseType: !866, size: 64, offset: 640)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !846, file: !847, line: 127, baseType: !132, size: 8, offset: 704)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !846, file: !847, line: 129, baseType: !877, size: 64, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !879, line: 195, size: 1728, elements: !880)
!879 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!880 = !{!881, !882, !887, !892, !901, !904, !905, !912, !913, !914, !915, !918, !919, !920, !922, !923, !963, !984}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !878, file: !879, line: 196, baseType: !357, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !878, file: !879, line: 197, baseType: !883, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !879, line: 28, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !363, line: 104, baseType: !885)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !44, line: 20, baseType: !886)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !46, line: 26, baseType: !367)
!887 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !879, line: 198, baseType: !888, size: 192, offset: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !879, line: 198, size: 192, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !888, file: !879, line: 199, baseType: !417, size: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !888, file: !879, line: 200, baseType: !407, size: 192, align: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !878, file: !879, line: 205, baseType: !893, size: 320, offset: 256)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !894, line: 48, size: 320, elements: !895)
!894 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!895 = !{!896, !897, !898, !899, !900}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !893, file: !894, line: 49, baseType: !747, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !893, file: !894, line: 55, baseType: !747, size: 64, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !893, file: !894, line: 57, baseType: !760, size: 32, offset: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !893, file: !894, line: 59, baseType: !510, size: 32, offset: 160)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !893, file: !894, line: 60, baseType: !417, size: 128, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !878, file: !879, line: 206, baseType: !902, size: 64, offset: 576)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !879, line: 206, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !878, file: !879, line: 207, baseType: !355, size: 64, offset: 640)
!905 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !879, line: 208, baseType: !906, size: 64, offset: 704)
!906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !879, line: 208, size: 64, elements: !907)
!907 = !{!908, !911}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !906, file: !879, line: 209, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !910, line: 8, baseType: !429)
!910 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!911 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !906, file: !879, line: 210, baseType: !909, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !878, file: !879, line: 212, baseType: !909, size: 64, offset: 768)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !878, file: !879, line: 213, baseType: !834, size: 32, offset: 832)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !878, file: !879, line: 214, baseType: !852, size: 32, offset: 864)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !878, file: !879, line: 215, baseType: !916, size: 32, offset: 896)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !879, line: 31, baseType: !917)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !363, line: 110, baseType: !61)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !878, file: !879, line: 216, baseType: !80, size: 16, offset: 928)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !878, file: !879, line: 217, baseType: !80, size: 16, offset: 944)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !878, file: !879, line: 221, baseType: !921, size: 16, offset: 960)
!921 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !878, file: !879, line: 228, baseType: !35, size: 64, offset: 1024)
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !879, line: 245, baseType: !924, size: 320, offset: 1088)
!924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !879, line: 245, size: 320, elements: !925)
!925 = !{!926, !954}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !924, file: !879, line: 246, baseType: !927, size: 320)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !879, line: 114, size: 320, elements: !928)
!928 = !{!929, !930, !939, !942, !951}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !927, file: !879, line: 116, baseType: !35, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, scope: !927, file: !879, line: 117, baseType: !931, size: 64, offset: 64)
!931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !927, file: !879, line: 117, size: 64, elements: !932)
!932 = !{!933, !938}
!933 = !DIDerivedType(tag: DW_TAG_member, scope: !931, file: !879, line: 118, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !931, file: !879, line: 118, size: 64, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !934, file: !879, line: 120, baseType: !78, size: 16)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !934, file: !879, line: 121, baseType: !14, size: 48, offset: 16)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !931, file: !879, line: 127, baseType: !35, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !927, file: !879, line: 129, baseType: !940, size: 64, offset: 128)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !879, line: 102, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !927, file: !879, line: 130, baseType: !943, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !879, line: 108, size: 192, elements: !945)
!945 = !{!946, !947, !948}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !944, file: !879, line: 109, baseType: !734, size: 128, align: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !944, file: !879, line: 110, baseType: !357, size: 32, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !944, file: !879, line: 111, baseType: !949, size: 8, offset: 160)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !363, line: 35, baseType: !950)
!950 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !927, file: !879, line: 131, baseType: !952, size: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!954 = !DIDerivedType(tag: DW_TAG_member, scope: !924, file: !879, line: 247, baseType: !955, size: 320)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !924, file: !879, line: 247, size: 320, elements: !956)
!956 = !{!957, !958, !959, !960, !961}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !955, file: !879, line: 248, baseType: !35, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !955, file: !879, line: 249, baseType: !35, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !955, file: !879, line: 250, baseType: !940, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !955, file: !879, line: 251, baseType: !943, size: 64, offset: 192)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !955, file: !879, line: 252, baseType: !962, size: 64, offset: 256)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !879, line: 260, baseType: !964, size: 256, offset: 1408)
!964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !878, file: !879, line: 260, size: 256, elements: !965)
!965 = !{!966, !972}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !964, file: !879, line: 261, baseType: !967, size: 256)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !879, line: 134, size: 256, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !967, file: !879, line: 135, baseType: !355, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !967, file: !879, line: 136, baseType: !971, size: 256)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !355, size: 256, elements: !813)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !879, line: 262, baseType: !973, size: 256)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !964, file: !879, line: 262, size: 256, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !973, file: !879, line: 264, baseType: !417, size: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !973, file: !879, line: 265, baseType: !977, size: 128, offset: 128)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !978, line: 22, size: 128, elements: !979)
!978 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!979 = !{!980, !983}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !977, file: !978, line: 23, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !978, line: 23, flags: DIFlagFwdDecl)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !977, file: !978, line: 24, baseType: !35, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !878, file: !879, line: 280, baseType: !985, size: 64, offset: 1664)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !879, line: 176, size: 192, elements: !987)
!987 = !{!988, !997, !998}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !986, file: !879, line: 177, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !879, line: 171, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!367, !877, !993, !995, !877}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !986, file: !879, line: 178, baseType: !877, size: 64, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !986, file: !879, line: 179, baseType: !940, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !846, file: !847, line: 130, baseType: !877, size: 64, offset: 832)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !846, file: !847, line: 131, baseType: !877, size: 64, offset: 896)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !846, file: !847, line: 132, baseType: !877, size: 64, offset: 960)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !846, file: !847, line: 135, baseType: !355, size: 64, offset: 1024)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !846, file: !847, line: 137, baseType: !1004, size: 64, offset: 1088)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1006, line: 14, size: 1088, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1007 = !{!1008, !1009, !1018, !1019, !1020, !1021, !1022, !1023}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1005, file: !1006, line: 15, baseType: !357, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1005, file: !1006, line: 17, baseType: !1010, size: 320, offset: 64)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1011, line: 22, size: 320, elements: !1012)
!1011 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1012 = !{!1013, !1014, !1015, !1016}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1010, file: !1011, line: 23, baseType: !510, size: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1010, file: !1011, line: 24, baseType: !428, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1010, file: !1011, line: 26, baseType: !417, size: 128, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1010, file: !1011, line: 28, baseType: !1017, size: 64, offset: 256)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1005, file: !1006, line: 19, baseType: !35, size: 64, offset: 384)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1005, file: !1006, line: 20, baseType: !747, size: 64, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1005, file: !1006, line: 23, baseType: !808, size: 128, offset: 512)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1005, file: !1006, line: 24, baseType: !834, size: 32, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1005, file: !1006, line: 29, baseType: !747, size: 64, offset: 704)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1005, file: !1006, line: 36, baseType: !1024, size: 320, offset: 768)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1025, line: 15, size: 320, elements: !1026)
!1025 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1032, !1033}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1024, file: !1025, line: 16, baseType: !510, size: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1024, file: !1025, line: 18, baseType: !367, size: 32, offset: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1024, file: !1025, line: 19, baseType: !367, size: 32, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1024, file: !1025, line: 20, baseType: !367, size: 32, offset: 96)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1024, file: !1025, line: 21, baseType: !367, size: 32, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1024, file: !1025, line: 22, baseType: !35, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1024, file: !1025, line: 23, baseType: !35, size: 64, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !846, file: !847, line: 138, baseType: !1035, size: 64, offset: 1152)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !835, line: 18, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !846, file: !847, line: 139, baseType: !1038, size: 64, offset: 1216)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1040, line: 16, flags: DIFlagFwdDecl)
!1040 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !846, file: !847, line: 140, baseType: !1042, size: 64, offset: 1280)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !847, line: 25, size: 64, elements: !1044)
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1043, file: !847, line: 26, baseType: !362, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1043, file: !847, line: 27, baseType: !367, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1043, file: !847, line: 28, baseType: !1048, offset: 64)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, elements: !212)
!1049 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !847, line: 142, baseType: !1050, size: 128, offset: 1344)
!1050 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !846, file: !847, line: 142, size: 128, elements: !1051)
!1051 = !{!1052, !1053}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1050, file: !847, line: 143, baseType: !367, size: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1050, file: !847, line: 144, baseType: !734, size: 128, align: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !727, file: !288, line: 1013, baseType: !1055, size: 256, offset: 960)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !288, line: 970, size: 256, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1055, file: !288, line: 971, baseType: !35, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1055, file: !288, line: 972, baseType: !33, size: 32, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1055, file: !288, line: 973, baseType: !33, size: 32, offset: 96)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1055, file: !288, line: 974, baseType: !33, size: 32, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1055, file: !288, line: 975, baseType: !33, size: 32, offset: 160)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1055, file: !288, line: 976, baseType: !766, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !727, file: !288, line: 1014, baseType: !1064, size: 128, offset: 1216)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1065, line: 8, size: 128, elements: !1066)
!1065 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1066 = !{!1067, !3310}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1064, file: !1065, line: 9, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1070, line: 70, size: 256, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1071 = !{!1072, !3307, !3308, !3309}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1069, file: !1070, line: 71, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1075, line: 82, size: 1536, elements: !1076)
!1075 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1076 = !{!1077, !1078, !1083, !1091, !1092, !1107, !3274, !3276, !3289, !3290, !3291, !3292, !3293, !3299, !3300, !3301}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1074, file: !1075, line: 84, baseType: !33, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1074, file: !1075, line: 85, baseType: !1079, size: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !560, line: 275, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !560, line: 275, size: 32, elements: !1081)
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1080, file: !560, line: 275, baseType: !564, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1074, file: !1075, line: 86, baseType: !1084, size: 128, offset: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1085, line: 38, size: 128, elements: !1086)
!1085 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1086 = !{!1087, !1089}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1084, file: !1085, line: 39, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1084, file: !1085, line: 39, baseType: !1090, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1074, file: !1075, line: 87, baseType: !1073, size: 64, offset: 192)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1074, file: !1075, line: 88, baseType: !1093, size: 128, offset: 256)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1075, line: 49, size: 128, elements: !1094)
!1094 = !{!1095, !1104}
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !1075, line: 50, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1093, file: !1075, line: 50, size: 64, elements: !1097)
!1097 = !{!1098, !1103}
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1096, file: !1075, line: 51, baseType: !1099, size: 64)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1075, line: 51, size: 64, elements: !1100)
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1099, file: !1075, line: 52, baseType: !61, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1099, file: !1075, line: 52, baseType: !61, size: 32, offset: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1096, file: !1075, line: 54, baseType: !43, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1093, file: !1075, line: 56, baseType: !1105, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1074, file: !1075, line: 89, baseType: !1108, size: 64, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !288, line: 641, size: 4800, elements: !1110)
!1110 = !{!1111, !1113, !1114, !1115, !1116, !1117, !1118, !1121, !1122, !1319, !3088, !3089, !3090, !3091, !3097, !3098, !3099, !3100, !3101, !3102, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3256, !3259, !3260, !3261, !3270, !3271, !3272, !3273}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1109, file: !288, line: 642, baseType: !1112, size: 16)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !363, line: 24, baseType: !80)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1109, file: !288, line: 643, baseType: !80, size: 16, offset: 16)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1109, file: !288, line: 644, baseType: !834, size: 32, offset: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1109, file: !288, line: 645, baseType: !417, size: 128, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1109, file: !288, line: 646, baseType: !852, size: 32, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1109, file: !288, line: 647, baseType: !33, size: 32, offset: 224)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1109, file: !288, line: 650, baseType: !1119, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !288, line: 607, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1109, file: !288, line: 651, baseType: !1119, size: 64, offset: 320)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1109, file: !288, line: 654, baseType: !1123, size: 64, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !288, line: 1966, size: 2048, align: 512, elements: !1126)
!1126 = !{!1127, !1131, !1144, !1150, !1154, !1158, !1162, !1166, !1170, !1174, !1178, !1179, !1185, !1189, !1226, !1257, !1267, !1273, !1277, !1281, !1285, !1289, !1293, !1299, !1303}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1125, file: !288, line: 1967, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DISubroutineType(types: !1130)
!1130 = !{!1073, !1108, !1073, !33}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1125, file: !288, line: 1968, baseType: !1132, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DISubroutineType(types: !1134)
!1134 = !{!952, !1073, !1108, !1135}
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1137, line: 10, size: 128, elements: !1138)
!1137 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1138 = !{!1139, !1143}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1136, file: !1137, line: 11, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !355}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1136, file: !1137, line: 12, baseType: !355, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1125, file: !288, line: 1969, baseType: !1145, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!367, !1148, !1108, !367}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !867, line: 42, flags: DIFlagFwdDecl)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1125, file: !288, line: 1970, baseType: !1151, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!1119, !1108, !367, !949}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1125, file: !288, line: 1972, baseType: !1155, size: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!367, !1073, !962, !367}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1125, file: !288, line: 1974, baseType: !1159, size: 64, offset: 320)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!367, !1148, !1108, !1073, !1112, !949}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1125, file: !288, line: 1976, baseType: !1163, size: 64, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!367, !1073, !1108, !1073}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1125, file: !288, line: 1977, baseType: !1167, size: 64, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!367, !1108, !1073}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1125, file: !288, line: 1978, baseType: !1171, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!367, !1148, !1108, !1073, !952}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1125, file: !288, line: 1980, baseType: !1175, size: 64, offset: 576)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!367, !1148, !1108, !1073, !1112}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1125, file: !288, line: 1982, baseType: !1167, size: 64, offset: 640)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1125, file: !288, line: 1983, baseType: !1180, size: 64, offset: 704)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!367, !1148, !1108, !1073, !1112, !1183}
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !363, line: 21, baseType: !1184)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !363, line: 18, baseType: !61)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1125, file: !288, line: 1985, baseType: !1186, size: 64, offset: 768)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!367, !1148, !1108, !1073, !1108, !1073, !33}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1125, file: !288, line: 1987, baseType: !1190, size: 64, offset: 832)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!367, !1148, !1073, !1193}
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !288, line: 226, size: 640, elements: !1195)
!1195 = !{!1196, !1197, !1198, !1208, !1217, !1218, !1223, !1224, !1225}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1194, file: !288, line: 227, baseType: !33, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1194, file: !288, line: 228, baseType: !1112, size: 16, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !288, line: 241, baseType: !1199, size: 32, offset: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !288, line: 241, size: 32, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1199, file: !288, line: 242, baseType: !834, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1199, file: !288, line: 243, baseType: !1203, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1204, line: 16, baseType: !1205)
!1204 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1204, line: 14, size: 32, elements: !1206)
!1206 = !{!1207}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1205, file: !1204, line: 15, baseType: !839, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !288, line: 245, baseType: !1209, size: 32, offset: 96)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !288, line: 245, size: 32, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1209, file: !288, line: 246, baseType: !852, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1209, file: !288, line: 247, baseType: !1213, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1204, line: 20, baseType: !1214)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1204, line: 18, size: 32, elements: !1215)
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1214, file: !1204, line: 19, baseType: !856, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1194, file: !288, line: 249, baseType: !766, size: 64, offset: 128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1194, file: !288, line: 250, baseType: !1219, size: 128, offset: 192)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !910, line: 13, size: 128, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1219, file: !910, line: 14, baseType: !909, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1219, file: !910, line: 15, baseType: !144, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1194, file: !288, line: 251, baseType: !1219, size: 128, offset: 320)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1194, file: !288, line: 252, baseType: !1219, size: 128, offset: 448)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1194, file: !288, line: 259, baseType: !726, size: 64, offset: 576)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1125, file: !288, line: 1988, baseType: !1227, size: 64, offset: 896)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DISubroutineType(types: !1229)
!1229 = !{!367, !1148, !1230, !1232, !61, !33}
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1064)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1234, line: 22, size: 1280, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1233, file: !1234, line: 23, baseType: !61, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1233, file: !1234, line: 24, baseType: !1112, size: 16, offset: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1233, file: !1234, line: 25, baseType: !33, size: 32, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1233, file: !1234, line: 26, baseType: !917, size: 32, offset: 96)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1233, file: !1234, line: 27, baseType: !43, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1233, file: !1234, line: 28, baseType: !43, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1233, file: !1234, line: 41, baseType: !43, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1233, file: !1234, line: 42, baseType: !1183, size: 32, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1233, file: !1234, line: 43, baseType: !1183, size: 32, offset: 352)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1233, file: !1234, line: 44, baseType: !834, size: 32, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1233, file: !1234, line: 45, baseType: !852, size: 32, offset: 416)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1233, file: !1234, line: 46, baseType: !766, size: 64, offset: 448)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1233, file: !1234, line: 47, baseType: !1219, size: 128, offset: 512)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1233, file: !1234, line: 48, baseType: !1219, size: 128, offset: 640)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1233, file: !1234, line: 49, baseType: !1219, size: 128, offset: 768)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1233, file: !1234, line: 50, baseType: !1219, size: 128, offset: 896)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1233, file: !1234, line: 51, baseType: !43, size: 64, offset: 1024)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1233, file: !1234, line: 52, baseType: !43, size: 64, offset: 1088)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1233, file: !1234, line: 53, baseType: !61, size: 32, offset: 1152)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1233, file: !1234, line: 54, baseType: !61, size: 32, offset: 1184)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1233, file: !1234, line: 55, baseType: !43, size: 64, offset: 1216)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1125, file: !288, line: 1990, baseType: !1258, size: 64, offset: 960)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{!1261, !1073, !962, !1264}
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !363, line: 66, baseType: !1262)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !557, line: 73, baseType: !1263)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !557, line: 15, baseType: !144)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !363, line: 61, baseType: !1265)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !557, line: 72, baseType: !1266)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !557, line: 16, baseType: !35)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1125, file: !288, line: 1991, baseType: !1268, size: 64, offset: 1024)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!367, !1108, !1271, !43, !43}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !288, line: 55, flags: DIFlagFwdDecl)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1125, file: !288, line: 1993, baseType: !1274, size: 64, offset: 1088)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!367, !1108, !367}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1125, file: !288, line: 1994, baseType: !1278, size: 64, offset: 1152)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!367, !1108, !1073, !726, !33, !1112}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1125, file: !288, line: 1997, baseType: !1282, size: 64, offset: 1216)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!367, !1148, !1108, !726, !1112}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1125, file: !288, line: 1999, baseType: !1286, size: 64, offset: 1280)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!1119, !1148, !1073, !367}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1125, file: !288, line: 2001, baseType: !1290, size: 64, offset: 1344)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!367, !1148, !1073, !1119, !367}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1125, file: !288, line: 2003, baseType: !1294, size: 64, offset: 1408)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!367, !1148, !1073, !1297}
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !288, line: 76, flags: DIFlagFwdDecl)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1125, file: !288, line: 2005, baseType: !1300, size: 64, offset: 1472)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!367, !1073, !1297}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1125, file: !288, line: 2006, baseType: !1304, size: 64, offset: 1536)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{!1307, !1108}
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !288, line: 3192, size: 192, elements: !1309)
!1309 = !{!1310, !1318}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1308, file: !288, line: 3193, baseType: !1311, size: 128)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1312, line: 296, size: 128, elements: !1313)
!1312 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1313 = !{!1314, !1315, !1317}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1311, file: !1312, line: 297, baseType: !708, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1311, file: !1312, line: 299, baseType: !1316, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !363, line: 154, baseType: !33)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1311, file: !1312, line: 300, baseType: !355, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1308, file: !288, line: 3194, baseType: !61, size: 32, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1109, file: !288, line: 655, baseType: !1320, size: 64, offset: 448)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !288, line: 1190, size: 10752, elements: !1322)
!1322 = !{!1323, !1324, !1325, !1326, !1327, !1328, !2603, !2735, !2775, !2858, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2875, !2879, !2880, !2883, !2886, !2889, !2892, !2893, !2894, !2935, !2961, !2962, !2963, !2964, !2965, !2966, !2969, !2971, !2980, !2981, !2982, !2983, !3042, !3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1321, file: !288, line: 1191, baseType: !417, size: 128)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1321, file: !288, line: 1192, baseType: !1183, size: 32, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1321, file: !288, line: 1193, baseType: !132, size: 8, offset: 160)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1321, file: !288, line: 1194, baseType: !35, size: 64, offset: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1321, file: !288, line: 1195, baseType: !766, size: 64, offset: 256)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1321, file: !288, line: 1196, baseType: !1329, size: 64, offset: 320)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !288, line: 2366, size: 576, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1340, !1344, !1348, !1352, !2591, !2592, !2593, !2595, !2596, !2597, !2599, !2600, !2601, !2602}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1330, file: !288, line: 2367, baseType: !952, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1330, file: !288, line: 2368, baseType: !367, size: 32, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1330, file: !288, line: 2376, baseType: !1335, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!367, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1070, line: 21, flags: DIFlagFwdDecl)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1330, file: !288, line: 2377, baseType: !1341, size: 64, offset: 192)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1343)
!1343 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !288, line: 75, flags: DIFlagFwdDecl)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1330, file: !288, line: 2378, baseType: !1345, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!1073, !1329, !367, !952, !355}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1330, file: !288, line: 2380, baseType: !1349, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{null, !1320}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1330, file: !288, line: 2381, baseType: !1353, size: 64, offset: 384)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !244, line: 402, size: 9216, align: 512, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1362, !2229, !2255, !2256, !2257, !2258, !2262, !2265, !2266, !2267, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2335, !2339, !2359, !2379, !2380, !2381, !2382, !2391, !2414, !2415, !2418, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2432, !2433, !2544, !2552, !2553, !2554, !2556, !2560, !2561, !2570, !2571, !2572, !2573, !2575, !2576, !2577, !2584, !2585, !2586, !2590}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1354, file: !244, line: 403, baseType: !243, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1354, file: !244, line: 406, baseType: !417, size: 128, offset: 64)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1354, file: !244, line: 409, baseType: !1359, size: 448, offset: 192)
!1359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !1360)
!1360 = !{!1361}
!1361 = !DISubrange(count: 56)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1354, file: !244, line: 417, baseType: !1363, size: 768, offset: 640)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !244, line: 45, size: 768, elements: !1364)
!1364 = !{!1365, !2222, !2223, !2224, !2227}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1363, file: !244, line: 46, baseType: !1366, size: 512)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1367, line: 64, size: 512, elements: !1368)
!1367 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1368 = !{!1369, !1370, !1371, !1373, !1415, !2101, !2212, !2217, !2218, !2219, !2220, !2221}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1366, file: !1367, line: 65, baseType: !952, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1366, file: !1367, line: 66, baseType: !417, size: 128, offset: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1366, file: !1367, line: 67, baseType: !1372, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1366, file: !1367, line: 68, baseType: !1374, size: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1367, line: 168, size: 768, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1375, file: !1367, line: 169, baseType: !417, size: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1375, file: !1367, line: 170, baseType: !708, size: 32, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1375, file: !1367, line: 171, baseType: !1366, size: 512, offset: 192)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1375, file: !1367, line: 172, baseType: !1381, size: 64, offset: 704)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1367, line: 133, size: 192, elements: !1384)
!1384 = !{!1385, !1392, !1397}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1383, file: !1367, line: 134, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1387)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!367, !1390}
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1366)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1383, file: !1367, line: 135, baseType: !1393, size: 64, offset: 64)
!1393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1394)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!952, !1390}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1383, file: !1367, line: 136, baseType: !1398, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1399)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!367, !1390, !1402}
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1367, line: 125, size: 20736, elements: !1404)
!1404 = !{!1405, !1407, !1409, !1410, !1414}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1403, file: !1367, line: 126, baseType: !1406, size: 192)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !962, size: 192, elements: !792)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1403, file: !1367, line: 127, baseType: !1408, size: 4096, offset: 192)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !962, size: 4096, elements: !107)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1403, file: !1367, line: 128, baseType: !367, size: 32, offset: 4288)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1403, file: !1367, line: 129, baseType: !1411, size: 16384, offset: 4320)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !1412)
!1412 = !{!1413}
!1413 = !DISubrange(count: 2048)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1403, file: !1367, line: 130, baseType: !367, size: 32, offset: 20704)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1366, file: !1367, line: 69, baseType: !1416, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1418)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1367, line: 116, size: 384, elements: !1419)
!1419 = !{!1420, !1424, !1443, !2060, !2091, !2095}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1418, file: !1367, line: 117, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{null, !1372}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1418, file: !1367, line: 118, baseType: !1425, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1427)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1428, line: 254, size: 128, elements: !1429)
!1428 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1429 = !{!1430, !1439}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1427, file: !1428, line: 255, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!1261, !1372, !1434, !962}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1428, line: 30, size: 128, elements: !1436)
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1435, file: !1428, line: 31, baseType: !952, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1435, file: !1428, line: 32, baseType: !1112, size: 16, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1427, file: !1428, line: 256, baseType: !1440, size: 64, offset: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!1261, !1372, !1434, !952, !1264}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1418, file: !1367, line: 119, baseType: !1444, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1447)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1428, line: 84, size: 320, elements: !1448)
!1448 = !{!1449, !1450, !1454, !2056, !2058}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1447, file: !1428, line: 85, baseType: !952, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1447, file: !1428, line: 86, baseType: !1451, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!1112, !1372, !1434, !367}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1447, file: !1428, line: 88, baseType: !1455, size: 64, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{!1112, !1372, !1458, !367}
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1428, line: 175, size: 512, elements: !1460)
!1460 = !{!1461, !1462, !1463, !1464, !2047, !2051, !2052}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1459, file: !1428, line: 176, baseType: !1435, size: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1459, file: !1428, line: 177, baseType: !1264, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1459, file: !1428, line: 178, baseType: !355, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1459, file: !1428, line: 179, baseType: !1465, size: 64, offset: 256)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !288, line: 472, size: 1536, align: 64, elements: !1470)
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !2039, !2040, !2041, !2044, !2045, !2046}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1469, file: !288, line: 473, baseType: !1108, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1469, file: !288, line: 474, baseType: !1311, size: 128, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1469, file: !288, line: 475, baseType: !893, size: 320, offset: 192)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1469, file: !288, line: 476, baseType: !1316, size: 32, offset: 512)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1469, file: !288, line: 477, baseType: !362, size: 32, offset: 544)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1469, file: !288, line: 482, baseType: !573, size: 128, offset: 576)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1469, file: !288, line: 483, baseType: !35, size: 64, offset: 704)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1469, file: !288, line: 484, baseType: !35, size: 64, offset: 768)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1469, file: !288, line: 485, baseType: !1480, size: 64, offset: 832)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1482)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !288, line: 404, size: 1280, elements: !1483)
!1483 = !{!1484, !1787, !1857, !1861, !1865, !1882, !1888, !1892, !1897, !1901, !1905, !1909, !2003, !2007, !2011, !2015, !2020, !2024, !2031, !2035}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1482, file: !288, line: 405, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!367, !1488, !1785}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !259, line: 74, size: 512, align: 128, elements: !1490)
!1490 = !{!1491, !1492, !1779, !1784}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1489, file: !259, line: 75, baseType: !35, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !259, line: 83, baseType: !1493, size: 320, offset: 64)
!1493 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1489, file: !259, line: 83, size: 320, elements: !1494)
!1494 = !{!1495, !1516, !1530, !1534, !1778}
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !259, line: 84, baseType: !1496, size: 320)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !259, line: 84, size: 320, elements: !1497)
!1497 = !{!1498, !1509, !1510, !1515}
!1498 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !259, line: 90, baseType: !1499, size: 128)
!1499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !259, line: 90, size: 128, elements: !1500)
!1500 = !{!1501, !1502, !1507, !1508}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1499, file: !259, line: 91, baseType: !417, size: 128)
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1499, file: !259, line: 94, baseType: !1503, size: 128)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1499, file: !259, line: 94, size: 128, elements: !1504)
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1503, file: !259, line: 96, baseType: !355, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1503, file: !259, line: 98, baseType: !33, size: 32, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1499, file: !259, line: 102, baseType: !417, size: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1499, file: !259, line: 103, baseType: !417, size: 128)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1496, file: !259, line: 106, baseType: !1468, size: 64, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !259, line: 107, baseType: !1511, size: 64, offset: 192)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !259, line: 107, size: 64, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1511, file: !259, line: 108, baseType: !35, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1511, file: !259, line: 109, baseType: !35, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1496, file: !259, line: 117, baseType: !35, size: 64, offset: 256)
!1516 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !259, line: 119, baseType: !1517, size: 320)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !259, line: 119, size: 320, elements: !1518)
!1518 = !{!1519, !1520, !1523, !1524, !1525}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1517, file: !259, line: 124, baseType: !35, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1517, file: !259, line: 125, baseType: !1521, size: 64, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !259, line: 125, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1517, file: !259, line: 126, baseType: !35, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1517, file: !259, line: 127, baseType: !35, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, scope: !1517, file: !259, line: 128, baseType: !1526, size: 64, offset: 256)
!1526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1517, file: !259, line: 128, size: 64, elements: !1527)
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1526, file: !259, line: 133, baseType: !35, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1526, file: !259, line: 138, baseType: !747, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !259, line: 141, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !259, line: 141, size: 64, elements: !1532)
!1532 = !{!1533}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1531, file: !259, line: 142, baseType: !35, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, scope: !1493, file: !259, line: 144, baseType: !1535, size: 128)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1493, file: !259, line: 144, size: 128, elements: !1536)
!1536 = !{!1537, !1777}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1535, file: !259, line: 146, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !251, line: 126, size: 1216, elements: !1540)
!1540 = !{!1541, !1551, !1572, !1583, !1584, !1585, !1586, !1759, !1760, !1761}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1539, file: !251, line: 127, baseType: !1542, size: 384)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !251, line: 21, size: 384, elements: !1543)
!1543 = !{!1544, !1545, !1547, !1548, !1549, !1550}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1542, file: !251, line: 22, baseType: !35, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1542, file: !251, line: 23, baseType: !1546, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1542, file: !251, line: 24, baseType: !1546, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1542, file: !251, line: 25, baseType: !35, size: 64, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1542, file: !251, line: 26, baseType: !35, size: 64, offset: 256)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1542, file: !251, line: 27, baseType: !35, size: 64, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1539, file: !251, line: 128, baseType: !1552, size: 128, offset: 384)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1553, line: 105, size: 128, elements: !1554)
!1553 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1552, file: !1553, line: 110, baseType: !35, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1552, file: !1553, line: 118, baseType: !1557, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1553, line: 95, size: 448, elements: !1559)
!1559 = !{!1560, !1561, !1567, !1568, !1569, !1570, !1571}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1558, file: !1553, line: 96, baseType: !747, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1558, file: !1553, line: 97, baseType: !1562, size: 64, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1553, line: 60, baseType: !1564)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{null, !1566}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1558, file: !1553, line: 98, baseType: !1562, size: 64, offset: 128)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1558, file: !1553, line: 99, baseType: !949, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1558, file: !1553, line: 100, baseType: !949, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1558, file: !1553, line: 101, baseType: !734, size: 128, align: 64, offset: 256)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1558, file: !1553, line: 102, baseType: !1566, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1539, file: !251, line: 129, baseType: !1573, size: 256, offset: 512)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1574, line: 26, size: 256, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1573, file: !1574, line: 27, baseType: !33, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1573, file: !1574, line: 28, baseType: !1578, size: 192, offset: 64)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1579, line: 43, size: 192, elements: !1580)
!1579 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1580 = !{!1581, !1582}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1578, file: !1579, line: 44, baseType: !510, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1578, file: !1579, line: 45, baseType: !417, size: 128, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1539, file: !251, line: 130, baseType: !250, size: 32, offset: 768)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1539, file: !251, line: 131, baseType: !33, size: 32, offset: 800)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1539, file: !251, line: 132, baseType: !35, size: 64, offset: 832)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1539, file: !251, line: 133, baseType: !1587, size: 64, offset: 896)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1589)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !251, line: 77, size: 192, elements: !1590)
!1590 = !{!1591, !1595, !1755}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1589, file: !251, line: 83, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{null, !1488}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1589, file: !251, line: 89, baseType: !1596, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!1599, !1600}
!1599 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !259, line: 1184, baseType: !33)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1602, line: 512, size: 896, elements: !1603)
!1602 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1603 = !{!1604, !1722, !1723, !1730, !1737, !1747, !1748, !1749, !1751, !1753}
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !1602, line: 513, baseType: !1605, size: 320)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1601, file: !1602, line: 513, size: 320, elements: !1606)
!1606 = !{!1607, !1718, !1719, !1720, !1721}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1605, file: !1602, line: 514, baseType: !1608, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !259, line: 625, size: 1344, elements: !1610)
!1610 = !{!1611, !1620, !1621, !1629, !1636, !1637, !1642, !1643, !1648, !1649, !1652, !1711, !1712, !1713, !1714, !1715, !1716}
!1611 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !259, line: 628, baseType: !1612, size: 128)
!1612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1609, file: !259, line: 628, size: 128, elements: !1613)
!1613 = !{!1614, !1619}
!1614 = !DIDerivedType(tag: DW_TAG_member, scope: !1612, file: !259, line: 629, baseType: !1615, size: 128)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1612, file: !259, line: 629, size: 128, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1615, file: !259, line: 631, baseType: !35, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1615, file: !259, line: 632, baseType: !35, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1612, file: !259, line: 635, baseType: !734, size: 128, align: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1609, file: !259, line: 639, baseType: !690, size: 64, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1609, file: !259, line: 640, baseType: !1622, size: 64, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1623, line: 297, baseType: !1624)
!1623 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1623, line: 297, size: 64, elements: !1625)
!1625 = !{!1626}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1624, file: !1623, line: 297, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1628, line: 19, baseType: !35)
!1628 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1629 = !DIDerivedType(tag: DW_TAG_member, scope: !1609, file: !259, line: 646, baseType: !1630, size: 64, offset: 256)
!1630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1609, file: !259, line: 646, size: 64, elements: !1631)
!1631 = !{!1632, !1635}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1630, file: !259, line: 647, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1634)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !259, line: 542, baseType: !35)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1630, file: !259, line: 648, baseType: !1634, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1609, file: !259, line: 666, baseType: !367, size: 32, offset: 320)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1609, file: !259, line: 667, baseType: !1638, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !259, line: 579, size: 320, elements: !1640)
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1639, file: !259, line: 580, baseType: !893, size: 320)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1609, file: !259, line: 670, baseType: !949, size: 8, offset: 448)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1609, file: !259, line: 681, baseType: !1644, size: 256, offset: 512)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1609, file: !259, line: 678, size: 256, elements: !1645)
!1645 = !{!1646, !1647}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1644, file: !259, line: 679, baseType: !407, size: 192, align: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1644, file: !259, line: 680, baseType: !35, size: 64, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1609, file: !259, line: 689, baseType: !417, size: 128, offset: 768)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1609, file: !259, line: 691, baseType: !1650, size: 64, offset: 896)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !259, line: 691, flags: DIFlagFwdDecl)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1609, file: !259, line: 694, baseType: !1653, size: 64, offset: 960)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1655)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1602, line: 563, size: 1024, elements: !1656)
!1656 = !{!1657, !1661, !1662, !1666, !1670, !1674, !1675, !1679, !1683, !1687, !1688, !1689, !1693, !1697, !1703, !1707}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1655, file: !1602, line: 564, baseType: !1658, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !1608}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1655, file: !1602, line: 569, baseType: !1658, size: 64, offset: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1655, file: !1602, line: 571, baseType: !1663, size: 64, offset: 128)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!367, !1608, !35}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1655, file: !1602, line: 572, baseType: !1667, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!367, !1608}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1655, file: !1602, line: 578, baseType: !1671, size: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!367, !1608, !35, !35, !35}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1655, file: !1602, line: 580, baseType: !1596, size: 64, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1655, file: !1602, line: 581, baseType: !1676, size: 64, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!1599, !1600, !33}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1655, file: !1602, line: 582, baseType: !1680, size: 64, offset: 448)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!1599, !1600, !35, !35}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1655, file: !1602, line: 584, baseType: !1684, size: 64, offset: 512)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!35, !1608}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1655, file: !1602, line: 588, baseType: !1596, size: 64, offset: 576)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1655, file: !1602, line: 591, baseType: !1596, size: 64, offset: 640)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1655, file: !1602, line: 597, baseType: !1690, size: 64, offset: 704)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!367, !1608, !35, !355, !367, !367}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1655, file: !1602, line: 603, baseType: !1694, size: 64, offset: 768)
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!952, !1608}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1655, file: !1602, line: 613, baseType: !1698, size: 64, offset: 832)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!367, !1608, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !259, line: 717, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1655, file: !1602, line: 625, baseType: !1704, size: 64, offset: 896)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!1701, !1608, !35}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1655, file: !1602, line: 633, baseType: !1708, size: 64, offset: 960)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!1488, !1608, !35}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1609, file: !259, line: 697, baseType: !35, size: 64, offset: 1024)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1609, file: !259, line: 699, baseType: !726, size: 64, offset: 1088)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1609, file: !259, line: 700, baseType: !355, size: 64, offset: 1152)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1609, file: !259, line: 711, baseType: !747, size: 64, offset: 1216)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1609, file: !259, line: 717, baseType: !1701, size: 64, offset: 1280)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1609, file: !259, line: 722, baseType: !1717, offset: 1344)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !259, line: 570, elements: !719)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1605, file: !1602, line: 515, baseType: !1316, size: 32, offset: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1605, file: !1602, line: 516, baseType: !35, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1605, file: !1602, line: 517, baseType: !35, size: 64, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1605, file: !1602, line: 518, baseType: !35, size: 64, offset: 256)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1601, file: !1602, line: 520, baseType: !258, size: 32, offset: 320)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1601, file: !1602, line: 522, baseType: !1724, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1628, line: 22, baseType: !1726)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1628, line: 22, size: 64, elements: !1727)
!1727 = !{!1728}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1726, file: !1628, line: 22, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1628, line: 15, baseType: !35)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1601, file: !1602, line: 524, baseType: !1731, size: 64, offset: 448)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1623, line: 372, baseType: !1733)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1623, line: 372, size: 64, elements: !1734)
!1734 = !{!1735}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1733, file: !1623, line: 372, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1628, line: 16, baseType: !35)
!1737 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !1602, line: 527, baseType: !1738, size: 64, offset: 512)
!1738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !1602, line: 527, size: 64, elements: !1739)
!1739 = !{!1740, !1746}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1738, file: !1602, line: 528, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1628, line: 21, baseType: !1742)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1628, line: 21, size: 64, elements: !1743)
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1742, file: !1628, line: 21, baseType: !1745, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1628, line: 14, baseType: !35)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1738, file: !1602, line: 529, baseType: !1725, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1601, file: !1602, line: 534, baseType: !1488, size: 64, offset: 576)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1601, file: !1602, line: 535, baseType: !1488, size: 64, offset: 640)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1601, file: !1602, line: 541, baseType: !1750, size: 64, offset: 704)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1601, file: !1602, line: 545, baseType: !1752, size: 64, offset: 768)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1601, file: !1602, line: 549, baseType: !1754, size: 64, offset: 832)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1623, line: 520, baseType: !1488)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1589, file: !251, line: 100, baseType: !1756, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!367, !1538, !35, !35, !367}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1539, file: !251, line: 134, baseType: !355, size: 64, offset: 960)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1539, file: !251, line: 135, baseType: !367, size: 32, offset: 1024)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !251, line: 136, baseType: !1762, size: 128, offset: 1088)
!1762 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !251, line: 136, size: 128, elements: !1763)
!1763 = !{!1764, !1770}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1762, file: !251, line: 137, baseType: !1765, size: 128)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1766, line: 6, size: 128, elements: !1767)
!1766 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1767 = !{!1768, !1769}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1765, file: !1766, line: 7, baseType: !43, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1765, file: !1766, line: 8, baseType: !43, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !251, line: 138, baseType: !1771)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1762, file: !251, line: 138, elements: !1772)
!1772 = !{!1773, !1775}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1771, file: !251, line: 138, baseType: !1774)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !251, line: 138, elements: !719)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1771, file: !251, line: 138, baseType: !1776)
!1776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1765, elements: !212)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1535, file: !259, line: 147, baseType: !355, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1493, file: !259, line: 161, baseType: !734, size: 128, align: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !259, line: 164, baseType: !1780, size: 32, offset: 384)
!1780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1489, file: !259, line: 164, size: 32, elements: !1781)
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1780, file: !259, line: 169, baseType: !362, size: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1780, file: !259, line: 177, baseType: !33, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1489, file: !259, line: 181, baseType: !362, size: 32, offset: 416)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !288, line: 309, flags: DIFlagFwdDecl)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1482, file: !288, line: 406, baseType: !1788, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DISubroutineType(types: !1790)
!1790 = !{!367, !726, !1791}
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !259, line: 293, size: 1536, elements: !1793)
!1793 = !{!1794, !1824, !1838}
!1794 = !DIDerivedType(tag: DW_TAG_member, scope: !1792, file: !259, line: 295, baseType: !1795, size: 512)
!1795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1792, file: !259, line: 295, size: 512, elements: !1796)
!1796 = !{!1797, !1823}
!1797 = !DIDerivedType(tag: DW_TAG_member, scope: !1795, file: !259, line: 296, baseType: !1798, size: 448)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1795, file: !259, line: 296, size: 448, elements: !1799)
!1799 = !{!1800, !1801, !1810, !1811, !1812, !1821, !1822}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1798, file: !259, line: 298, baseType: !35, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !259, line: 299, baseType: !1802, size: 128, offset: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1798, file: !259, line: 299, size: 128, elements: !1803)
!1803 = !{!1804, !1805}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1802, file: !259, line: 300, baseType: !417, size: 128)
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1802, file: !259, line: 302, baseType: !1806, size: 128)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1802, file: !259, line: 302, size: 128, elements: !1807)
!1807 = !{!1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1806, file: !259, line: 303, baseType: !355, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1806, file: !259, line: 305, baseType: !33, size: 32, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1798, file: !259, line: 310, baseType: !1468, size: 64, offset: 192)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1798, file: !259, line: 311, baseType: !35, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !1798, file: !259, line: 312, baseType: !1813, size: 64, offset: 320)
!1813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1798, file: !259, line: 312, size: 64, elements: !1814)
!1814 = !{!1815, !1816}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1813, file: !259, line: 313, baseType: !355, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1813, file: !259, line: 314, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !259, line: 257, baseType: !1818)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !259, line: 255, size: 64, elements: !1819)
!1819 = !{!1820}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1818, file: !259, line: 256, baseType: !35, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1798, file: !259, line: 316, baseType: !362, size: 32, offset: 384)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1798, file: !259, line: 317, baseType: !362, size: 32, offset: 416)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1795, file: !259, line: 323, baseType: !1489, size: 512, align: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1792, file: !259, line: 325, baseType: !1825, size: 512, offset: 512)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1792, file: !259, line: 325, size: 512, elements: !1826)
!1826 = !{!1827, !1837}
!1827 = !DIDerivedType(tag: DW_TAG_member, scope: !1825, file: !259, line: 326, baseType: !1828, size: 320)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1825, file: !259, line: 326, size: 320, elements: !1829)
!1829 = !{!1830, !1831, !1832, !1833, !1834, !1835, !1836}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1828, file: !259, line: 327, baseType: !35, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1828, file: !259, line: 328, baseType: !35, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1828, file: !259, line: 329, baseType: !35, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1828, file: !259, line: 331, baseType: !362, size: 32, offset: 192)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1828, file: !259, line: 332, baseType: !362, size: 32, offset: 224)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1828, file: !259, line: 333, baseType: !362, size: 32, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1828, file: !259, line: 335, baseType: !33, size: 32, offset: 288)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1825, file: !259, line: 339, baseType: !1489, size: 512, align: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1792, file: !259, line: 341, baseType: !1839, size: 512, offset: 1024)
!1839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1792, file: !259, line: 341, size: 512, elements: !1840)
!1840 = !{!1841, !1850, !1856}
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1839, file: !259, line: 342, baseType: !1842, size: 384)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1839, file: !259, line: 342, size: 384, elements: !1843)
!1843 = !{!1844, !1845, !1846, !1847, !1848, !1849}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1842, file: !259, line: 343, baseType: !35, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1842, file: !259, line: 344, baseType: !35, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1842, file: !259, line: 346, baseType: !355, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1842, file: !259, line: 347, baseType: !355, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1842, file: !259, line: 348, baseType: !355, size: 64, offset: 256)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1842, file: !259, line: 349, baseType: !355, size: 64, offset: 320)
!1850 = !DIDerivedType(tag: DW_TAG_member, scope: !1839, file: !259, line: 352, baseType: !1851, size: 256)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1839, file: !259, line: 352, size: 256, elements: !1852)
!1852 = !{!1853, !1854, !1855}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1851, file: !259, line: 353, baseType: !35, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1851, file: !259, line: 354, baseType: !35, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1851, file: !259, line: 356, baseType: !417, size: 128, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1839, file: !259, line: 359, baseType: !1489, size: 512, align: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1482, file: !288, line: 409, baseType: !1858, size: 64, offset: 128)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!367, !1468, !1785}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1482, file: !288, line: 412, baseType: !1862, size: 64, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!949, !1468, !1791}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1482, file: !288, line: 414, baseType: !1866, size: 64, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{null, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1871, line: 1276, size: 448, elements: !1872)
!1871 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1872 = !{!1873, !1874, !1875, !1877, !1878, !1879, !1880, !1881}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1870, file: !1871, line: 1277, baseType: !726, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1870, file: !1871, line: 1278, baseType: !1468, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1870, file: !1871, line: 1279, baseType: !1876, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1870, file: !1871, line: 1281, baseType: !35, size: 64, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1870, file: !1871, line: 1282, baseType: !33, size: 32, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1870, file: !1871, line: 1283, baseType: !33, size: 32, offset: 288)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1870, file: !1871, line: 1284, baseType: !949, size: 8, offset: 320)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1870, file: !1871, line: 1285, baseType: !35, size: 64, offset: 384)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1482, file: !288, line: 416, baseType: !1883, size: 64, offset: 320)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!367, !726, !1468, !766, !33, !1886, !1887}
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1482, file: !288, line: 419, baseType: !1889, size: 64, offset: 384)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!367, !726, !1468, !766, !33, !33, !1488, !355}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1482, file: !288, line: 424, baseType: !1893, size: 64, offset: 448)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!1896, !1468, !1896}
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !363, line: 131, baseType: !43)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1482, file: !288, line: 425, baseType: !1898, size: 64, offset: 512)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null, !1791, !1264, !1264}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1482, file: !288, line: 426, baseType: !1902, size: 64, offset: 576)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!949, !1791, !1316}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1482, file: !288, line: 427, baseType: !1906, size: 64, offset: 640)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{null, !1791}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1482, file: !288, line: 428, baseType: !1910, size: 64, offset: 704)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!1261, !1913, !1951}
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !288, line: 373, size: 384, elements: !1915)
!1915 = !{!1916, !1917, !1918, !1922, !1923, !1924, !1925}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1914, file: !288, line: 374, baseType: !726, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1914, file: !288, line: 375, baseType: !766, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1914, file: !288, line: 376, baseType: !1919, size: 64, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !1913, !144}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1914, file: !288, line: 377, baseType: !355, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1914, file: !288, line: 378, baseType: !367, size: 32, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1914, file: !288, line: 379, baseType: !78, size: 16, offset: 288)
!1925 = !DIDerivedType(tag: DW_TAG_member, scope: !1914, file: !288, line: 380, baseType: !1926, size: 64, offset: 320)
!1926 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1914, file: !288, line: 380, size: 64, elements: !1927)
!1927 = !{!1928, !1947}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1926, file: !288, line: 386, baseType: !1929, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1871, line: 998, size: 448, elements: !1931)
!1931 = !{!1932, !1933, !1934}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1930, file: !1871, line: 999, baseType: !1791, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1930, file: !1871, line: 1000, baseType: !367, size: 32, offset: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1930, file: !1871, line: 1001, baseType: !1935, size: 320, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !818, line: 14, baseType: !1936)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !818, line: 30, size: 320, elements: !1937)
!1937 = !{!1938, !1939, !1940, !1946}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1936, file: !818, line: 31, baseType: !33, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1936, file: !818, line: 32, baseType: !355, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1936, file: !818, line: 33, baseType: !1941, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !818, line: 16, baseType: !1942)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!367, !1945, !33, !367, !355}
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1936, file: !818, line: 34, baseType: !417, size: 128, offset: 192)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1926, file: !288, line: 395, baseType: !1948, size: 64)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!1261, !355}
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1953, line: 41, size: 320, elements: !1954)
!1953 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1954 = !{!1955, !1956, !1957, !1958, !1959, !1960, !1965, !1998}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1952, file: !1953, line: 42, baseType: !130, size: 8)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1952, file: !1953, line: 43, baseType: !949, size: 8, offset: 8)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1952, file: !1953, line: 44, baseType: !949, size: 8, offset: 16)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1952, file: !1953, line: 45, baseType: !949, size: 8, offset: 24)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1952, file: !1953, line: 46, baseType: !949, size: 8, offset: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !1953, line: 47, baseType: !1961, size: 64, offset: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1952, file: !1953, line: 47, size: 64, elements: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1961, file: !1953, line: 48, baseType: !1264, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1961, file: !1953, line: 49, baseType: !367, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !1953, line: 61, baseType: !1966, size: 128, offset: 128)
!1966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1952, file: !1953, line: 61, size: 128, elements: !1967)
!1967 = !{!1968, !1974}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1966, file: !1953, line: 67, baseType: !1969, size: 128)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1970, line: 17, size: 128, elements: !1971)
!1970 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1969, file: !1970, line: 19, baseType: !355, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1969, file: !1970, line: 20, baseType: !1265, size: 64, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, scope: !1966, file: !1953, line: 68, baseType: !1975, size: 128)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1966, file: !1953, line: 68, size: 128, elements: !1976)
!1976 = !{!1977, !1997}
!1977 = !DIDerivedType(tag: DW_TAG_member, scope: !1975, file: !1953, line: 69, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1975, file: !1953, line: 69, size: 64, elements: !1979)
!1979 = !{!1980, !1983, !1990, !1994, !1996}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1978, file: !1953, line: 71, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1969)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1978, file: !1953, line: 72, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1986)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1953, line: 17, size: 128, elements: !1987)
!1987 = !{!1988, !1989}
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1986, file: !1953, line: 18, baseType: !355, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1986, file: !1953, line: 19, baseType: !1264, size: 64, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1978, file: !1953, line: 73, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1993)
!1993 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1953, line: 73, flags: DIFlagFwdDecl)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1978, file: !1953, line: 74, baseType: !1995, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1978, file: !1953, line: 75, baseType: !355, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1975, file: !1953, line: 77, baseType: !1264, size: 64, offset: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !1953, line: 80, baseType: !1999, size: 64, offset: 256)
!1999 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1952, file: !1953, line: 80, size: 64, elements: !2000)
!2000 = !{!2001, !2002}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1999, file: !1953, line: 81, baseType: !35, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1999, file: !1953, line: 82, baseType: !766, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1482, file: !288, line: 433, baseType: !2004, size: 64, offset: 768)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!367, !1468, !1791, !1791, !274}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1482, file: !288, line: 435, baseType: !2008, size: 64, offset: 832)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!367, !1791}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1482, file: !288, line: 436, baseType: !2012, size: 64, offset: 896)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!949, !1791, !1264, !1264}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1482, file: !288, line: 438, baseType: !2016, size: 64, offset: 960)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !1791, !2019, !2019}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1482, file: !288, line: 439, baseType: !2021, size: 64, offset: 1024)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{!367, !1468, !1488}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1482, file: !288, line: 442, baseType: !2025, size: 64, offset: 1088)
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = !DISubroutineType(types: !2027)
!2027 = !{!367, !2028, !726, !2030}
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !288, line: 66, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1482, file: !288, line: 444, baseType: !2032, size: 64, offset: 1152)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !726}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1482, file: !288, line: 445, baseType: !2036, size: 64, offset: 1216)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!367, !1913, !1951}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1469, file: !288, line: 486, baseType: !35, size: 64, offset: 896)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1469, file: !288, line: 487, baseType: !893, size: 320, offset: 960)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1469, file: !288, line: 488, baseType: !2042, size: 32, offset: 1280)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2043, line: 8, baseType: !61)
!2043 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1469, file: !288, line: 489, baseType: !708, size: 32, offset: 1312)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1469, file: !288, line: 490, baseType: !417, size: 128, offset: 1344)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1469, file: !288, line: 491, baseType: !355, size: 64, offset: 1472)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1459, file: !1428, line: 180, baseType: !2048, size: 64, offset: 320)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!1261, !726, !1372, !1458, !962, !766, !1264}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1459, file: !1428, line: 182, baseType: !2048, size: 64, offset: 384)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1459, file: !1428, line: 184, baseType: !2053, size: 64, offset: 448)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!367, !726, !1372, !1458, !1608}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1447, file: !1428, line: 90, baseType: !2057, size: 64, offset: 192)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1447, file: !1428, line: 91, baseType: !2059, size: 64, offset: 256)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1418, file: !1367, line: 120, baseType: !2061, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!2064, !1390}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2066)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !282, line: 39, size: 384, elements: !2067)
!2067 = !{!2068, !2069, !2073, !2077, !2086, !2090}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2066, file: !282, line: 40, baseType: !281, size: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2066, file: !282, line: 41, baseType: !2070, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{!949}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2066, file: !282, line: 42, baseType: !2074, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!355}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2066, file: !282, line: 43, baseType: !2078, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!2081, !2083}
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !2085, line: 17, flags: DIFlagFwdDecl)
!2085 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2066, file: !282, line: 44, baseType: !2087, size: 64, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!2081}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2066, file: !282, line: 45, baseType: !1140, size: 64, offset: 320)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1418, file: !1367, line: 121, baseType: !2092, size: 64, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DISubroutineType(types: !2094)
!2094 = !{!2081, !1390}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1418, file: !1367, line: 122, baseType: !2096, size: 64, offset: 320)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !1390, !2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1366, file: !1367, line: 70, baseType: !2102, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2104, line: 190, size: 1152, elements: !2105)
!2104 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2204, !2205, !2206, !2207, !2208, !2211}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2103, file: !2104, line: 191, baseType: !362, size: 32)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2103, file: !2104, line: 192, baseType: !362, size: 32, offset: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2103, file: !2104, line: 202, baseType: !2102, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2103, file: !2104, line: 203, baseType: !952, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2103, file: !2104, line: 205, baseType: !407, size: 192, align: 64, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2103, file: !2104, line: 207, baseType: !2081, size: 64, offset: 384)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2103, file: !2104, line: 208, baseType: !33, size: 32, offset: 448)
!2113 = !DIDerivedType(tag: DW_TAG_member, scope: !2103, file: !2104, line: 209, baseType: !2114, size: 256, offset: 512)
!2114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2103, file: !2104, line: 209, size: 256, elements: !2115)
!2115 = !{!2116, !2125, !2129}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2114, file: !2104, line: 210, baseType: !2117, size: 256)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2104, line: 153, size: 256, elements: !2118)
!2118 = !{!2119, !2120, !2121, !2124}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2117, file: !2104, line: 154, baseType: !35, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2117, file: !2104, line: 156, baseType: !576, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2117, file: !2104, line: 162, baseType: !2122, size: 64, offset: 128)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2104, line: 162, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2117, file: !2104, line: 167, baseType: !35, size: 64, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2114, file: !2104, line: 211, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2104, line: 170, size: 64, elements: !2127)
!2127 = !{!2128}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2126, file: !2104, line: 171, baseType: !2102, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2114, file: !2104, line: 212, baseType: !2130, size: 256)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2104, line: 174, size: 256, elements: !2131)
!2131 = !{!2132, !2199, !2202, !2203}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2130, file: !2104, line: 175, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2135)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2104, line: 271, size: 768, elements: !2136)
!2136 = !{!2137, !2159, !2163, !2167, !2172, !2176, !2180, !2184, !2185, !2186, !2187, !2195}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2135, file: !2104, line: 276, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!367, !2141}
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2104, line: 251, size: 1216, elements: !2143)
!2143 = !{!2144, !2145, !2146, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157, !2158}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2142, file: !2104, line: 253, baseType: !2102, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2142, file: !2104, line: 254, baseType: !726, size: 64, offset: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2142, file: !2104, line: 255, baseType: !2147, size: 64, offset: 128)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2085, line: 24, flags: DIFlagFwdDecl)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2142, file: !2104, line: 256, baseType: !355, size: 64, offset: 192)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2142, file: !2104, line: 259, baseType: !754, size: 256, offset: 256)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2142, file: !2104, line: 260, baseType: !754, size: 256, offset: 512)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2142, file: !2104, line: 261, baseType: !367, size: 32, offset: 768)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2142, file: !2104, line: 262, baseType: !417, size: 128, offset: 832)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2142, file: !2104, line: 263, baseType: !962, size: 64, offset: 960)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2142, file: !2104, line: 265, baseType: !1264, size: 64, offset: 1024)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2142, file: !2104, line: 266, baseType: !949, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2142, file: !2104, line: 267, baseType: !949, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2142, file: !2104, line: 268, baseType: !1653, size: 64, offset: 1152)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2135, file: !2104, line: 277, baseType: !2160, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{null, !2141}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2135, file: !2104, line: 290, baseType: !2164, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{!367, !2147, !355}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2135, file: !2104, line: 292, baseType: !2168, size: 64, offset: 192)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!355, !2147, !2171}
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2135, file: !2104, line: 293, baseType: !2173, size: 64, offset: 256)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!355, !2147, !355, !2171}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2135, file: !2104, line: 294, baseType: !2177, size: 64, offset: 320)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{null, !2147, !355}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2135, file: !2104, line: 296, baseType: !2181, size: 64, offset: 384)
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!1261, !2141, !962, !1264, !766}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2135, file: !2104, line: 306, baseType: !1264, size: 64, offset: 448)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2135, file: !2104, line: 313, baseType: !949, size: 8, offset: 512)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2135, file: !2104, line: 314, baseType: !2181, size: 64, offset: 576)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2135, file: !2104, line: 317, baseType: !2188, size: 64, offset: 640)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!2191, !2141, !2193}
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2192, line: 59, baseType: !33)
!2192 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !288, line: 61, flags: DIFlagFwdDecl)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2135, file: !2104, line: 320, baseType: !2196, size: 64, offset: 704)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!367, !2141, !1608}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2130, file: !2104, line: 176, baseType: !2200, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2104, line: 35, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2130, file: !2104, line: 177, baseType: !766, size: 64, offset: 128)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2130, file: !2104, line: 178, baseType: !2102, size: 64, offset: 192)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2103, file: !2104, line: 215, baseType: !355, size: 64, offset: 768)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2103, file: !2104, line: 221, baseType: !43, size: 64, offset: 832)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2103, file: !2104, line: 223, baseType: !80, size: 16, offset: 896)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2103, file: !2104, line: 224, baseType: !1112, size: 16, offset: 912)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2103, file: !2104, line: 225, baseType: !2209, size: 64, offset: 960)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2104, line: 36, flags: DIFlagFwdDecl)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2103, file: !2104, line: 227, baseType: !734, size: 128, align: 64, offset: 1024)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1366, file: !1367, line: 71, baseType: !2213, size: 32, offset: 448)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2214, line: 19, size: 32, elements: !2215)
!2214 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2215 = !{!2216}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2213, file: !2214, line: 20, baseType: !357, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1366, file: !1367, line: 73, baseType: !33, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1366, file: !1367, line: 74, baseType: !33, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1366, file: !1367, line: 75, baseType: !33, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1366, file: !1367, line: 76, baseType: !33, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1366, file: !1367, line: 77, baseType: !33, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1363, file: !244, line: 47, baseType: !1353, size: 64, offset: 512)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1363, file: !244, line: 48, baseType: !1372, size: 64, offset: 576)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1363, file: !244, line: 49, baseType: !2225, size: 64, offset: 640)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !244, line: 49, flags: DIFlagFwdDecl)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1363, file: !244, line: 50, baseType: !2228, size: 64, offset: 704)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1354, file: !244, line: 418, baseType: !2230, size: 64, offset: 1408)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !244, line: 53, size: 448, elements: !2232)
!2232 = !{!2233, !2234, !2239, !2243, !2247, !2251}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2231, file: !244, line: 54, baseType: !1435, size: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2231, file: !244, line: 55, baseType: !2235, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DISubroutineType(types: !2237)
!2237 = !{!1261, !2230, !2238, !962}
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2231, file: !244, line: 57, baseType: !2240, size: 64, offset: 192)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!1261, !2230, !2238, !952, !1264}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2231, file: !244, line: 59, baseType: !2244, size: 64, offset: 256)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{null, !1353, !952}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2231, file: !244, line: 60, baseType: !2248, size: 64, offset: 320)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!367, !1353}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2231, file: !244, line: 61, baseType: !2252, size: 64, offset: 384)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{null, !1353}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1354, file: !244, line: 419, baseType: !952, size: 64, offset: 1472)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1354, file: !244, line: 420, baseType: !952, size: 64, offset: 1536)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1354, file: !244, line: 421, baseType: !1372, size: 64, offset: 1600)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1354, file: !244, line: 424, baseType: !2259, size: 64, offset: 1664)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2261)
!2261 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !244, line: 424, flags: DIFlagFwdDecl)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1354, file: !244, line: 425, baseType: !2263, size: 64, offset: 1728)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !885)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1354, file: !244, line: 426, baseType: !33, size: 32, offset: 1792)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1354, file: !244, line: 435, baseType: !754, size: 256, offset: 1856)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1354, file: !244, line: 437, baseType: !2268, size: 64, offset: 2112)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2270, line: 69, size: 320, elements: !2271)
!2270 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2271 = !{!2272, !2273, !2274, !2291, !2293, !2297, !2298}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2269, file: !2270, line: 70, baseType: !952, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2269, file: !2270, line: 71, baseType: !1353, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2269, file: !2270, line: 72, baseType: !2275, size: 64, offset: 128)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2277)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2270, line: 47, size: 256, elements: !2278)
!2278 = !{!2279, !2280, !2286, !2290}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2277, file: !2270, line: 49, baseType: !33, size: 32)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2277, file: !2270, line: 51, baseType: !2281, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!367, !952, !2284}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2269)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2277, file: !2270, line: 53, baseType: !2287, size: 64, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DISubroutineType(types: !2289)
!2289 = !{!367, !962, !2284}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2277, file: !2270, line: 55, baseType: !1140, size: 64, offset: 192)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2269, file: !2270, line: 73, baseType: !2292, size: 16, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2269, file: !2270, line: 74, baseType: !2294, size: 8, offset: 208)
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !44, line: 16, baseType: !2295)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !46, line: 20, baseType: !2296)
!2296 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2269, file: !2270, line: 75, baseType: !130, size: 8, offset: 216)
!2298 = !DIDerivedType(tag: DW_TAG_member, scope: !2269, file: !2270, line: 76, baseType: !2299, size: 64, offset: 256)
!2299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2269, file: !2270, line: 76, size: 64, elements: !2300)
!2300 = !{!2301, !2302, !2309}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2299, file: !2270, line: 77, baseType: !355, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2299, file: !2270, line: 78, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2305)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2270, line: 86, size: 128, elements: !2306)
!2306 = !{!2307, !2308}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2305, file: !2270, line: 87, baseType: !33, size: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2305, file: !2270, line: 88, baseType: !962, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2299, file: !2270, line: 79, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2312)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2270, line: 92, size: 256, elements: !2313)
!2313 = !{!2314, !2315, !2316, !2318, !2319}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2312, file: !2270, line: 94, baseType: !33, size: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2312, file: !2270, line: 95, baseType: !33, size: 32, offset: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2312, file: !2270, line: 96, baseType: !2317, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2312, file: !2270, line: 97, baseType: !2275, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2312, file: !2270, line: 98, baseType: !355, size: 64, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1354, file: !244, line: 438, baseType: !33, size: 32, offset: 2176)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1354, file: !244, line: 441, baseType: !33, size: 32, offset: 2208)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1354, file: !244, line: 442, baseType: !2259, size: 64, offset: 2240)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1354, file: !244, line: 443, baseType: !2263, size: 64, offset: 2304)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1354, file: !244, line: 444, baseType: !949, size: 8, offset: 2368)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1354, file: !244, line: 451, baseType: !949, size: 8, offset: 2376)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1354, file: !244, line: 454, baseType: !33, size: 32, offset: 2400)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1354, file: !244, line: 455, baseType: !2328, size: 64, offset: 2432)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2330, line: 23, size: 96, elements: !2331)
!2330 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2331 = !{!2332, !2333, !2334}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2329, file: !2330, line: 24, baseType: !367, size: 32)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2329, file: !2330, line: 24, baseType: !367, size: 32, offset: 32)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2329, file: !2330, line: 24, baseType: !367, size: 32, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1354, file: !244, line: 458, baseType: !2336, size: 64, offset: 2496)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!367}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1354, file: !244, line: 460, baseType: !2340, size: 4032, align: 512, offset: 2560)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2341, size: 4032, elements: !2357)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !244, line: 362, size: 576, elements: !2342)
!2342 = !{!2343, !2344, !2345}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2341, file: !244, line: 363, baseType: !355, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2341, file: !244, line: 364, baseType: !33, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2341, file: !244, line: 367, baseType: !2346, size: 448, offset: 128)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !244, line: 319, size: 448, elements: !2347)
!2347 = !{!2348, !2349}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2346, file: !244, line: 320, baseType: !1353, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2346, file: !244, line: 321, baseType: !2350, size: 384, offset: 64)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2351, line: 40, size: 384, elements: !2352)
!2351 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2352 = !{!2353}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2350, file: !2351, line: 41, baseType: !2354, size: 384, align: 64)
!2354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 384, align: 64, elements: !2355)
!2355 = !{!2356}
!2356 = !DISubrange(count: 2)
!2357 = !{!2358}
!2358 = !DISubrange(count: 7)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1354, file: !244, line: 463, baseType: !2360, size: 192, offset: 6592)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2361, line: 8, size: 192, elements: !2362)
!2361 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2362 = !{!2363, !2364, !2366}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2360, file: !2361, line: 10, baseType: !33, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2360, file: !2361, line: 11, baseType: !2365, size: 64, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2360, file: !2361, line: 12, baseType: !2367, size: 64, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2369, line: 59, size: 48, elements: !2370)
!2369 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2370 = !{!2371, !2374, !2375, !2376, !2377, !2378}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2368, file: !2369, line: 60, baseType: !2372, size: 16)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !44, line: 18, baseType: !2373)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !46, line: 23, baseType: !921)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2368, file: !2369, line: 61, baseType: !2372, size: 16, offset: 16)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2368, file: !2369, line: 63, baseType: !33, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2368, file: !2369, line: 64, baseType: !33, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2368, file: !2369, line: 65, baseType: !33, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2368, file: !2369, line: 66, baseType: !33, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1354, file: !244, line: 465, baseType: !35, size: 64, offset: 6784)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1354, file: !244, line: 469, baseType: !33, size: 32, offset: 6848)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1354, file: !244, line: 470, baseType: !417, size: 128, offset: 6912)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1354, file: !244, line: 471, baseType: !2383, size: 64, offset: 7040)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2385, line: 33, size: 96, elements: !2386)
!2385 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2386 = !{!2387, !2388, !2389, !2390}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2384, file: !2385, line: 37, baseType: !367, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2384, file: !2385, line: 43, baseType: !367, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2384, file: !2385, line: 45, baseType: !80, size: 16, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2384, file: !2385, line: 47, baseType: !80, size: 16, offset: 80)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1354, file: !244, line: 476, baseType: !2392, size: 64, offset: 7104)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !244, line: 378, size: 256, elements: !2394)
!2394 = !{!2395, !2411, !2412, !2413}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2393, file: !244, line: 379, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2398, line: 204, baseType: !2399)
!2398 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2398, line: 197, size: 192, elements: !2400)
!2400 = !{!2401, !2403, !2404, !2405, !2407, !2409}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2399, file: !2398, line: 198, baseType: !2402, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2398, line: 21, baseType: !62)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2399, file: !2398, line: 199, baseType: !132, size: 8, offset: 32)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2399, file: !2398, line: 200, baseType: !132, size: 8, offset: 40)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2399, file: !2398, line: 201, baseType: !2406, size: 16, offset: 48)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2398, line: 17, baseType: !79)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2399, file: !2398, line: 202, baseType: !2408, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2398, line: 16, baseType: !45)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2399, file: !2398, line: 203, baseType: !2410, size: 64, offset: 128)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2398, line: 22, baseType: !45)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2393, file: !244, line: 380, baseType: !33, size: 32, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2393, file: !244, line: 381, baseType: !962, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2393, file: !244, line: 382, baseType: !962, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1354, file: !244, line: 477, baseType: !2393, size: 256, offset: 7168)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1354, file: !244, line: 480, baseType: !2416, size: 64, offset: 7424)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !244, line: 480, flags: DIFlagFwdDecl)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1354, file: !244, line: 483, baseType: !2419, size: 64, offset: 7488)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !244, line: 483, flags: DIFlagFwdDecl)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1354, file: !244, line: 488, baseType: !962, size: 64, offset: 7552)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1354, file: !244, line: 492, baseType: !355, size: 64, offset: 7616)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1354, file: !244, line: 493, baseType: !33, size: 32, offset: 7680)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1354, file: !244, line: 495, baseType: !355, size: 64, offset: 7744)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1354, file: !244, line: 496, baseType: !33, size: 32, offset: 7808)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1354, file: !244, line: 499, baseType: !33, size: 32, offset: 7840)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1354, file: !244, line: 500, baseType: !2428, size: 64, offset: 7872)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2430, line: 45, baseType: !2431)
!2430 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !367)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1354, file: !244, line: 503, baseType: !33, size: 32, offset: 7936)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1354, file: !244, line: 504, baseType: !2434, size: 64, offset: 8000)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2437, line: 96, size: 192, elements: !2438)
!2437 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2438 = !{!2439, !2440, !2505, !2508}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2436, file: !2437, line: 97, baseType: !33, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2436, file: !2437, line: 98, baseType: !2441, size: 64, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2437, line: 24, size: 3072, elements: !2443)
!2443 = !{!2444, !2446, !2447, !2448, !2449, !2463, !2464, !2465, !2466, !2478, !2490, !2491, !2502, !2503, !2504}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2442, file: !2437, line: 26, baseType: !2445, size: 128)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !747, size: 128, elements: !2355)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2442, file: !2437, line: 27, baseType: !2445, size: 128, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2442, file: !2437, line: 28, baseType: !367, size: 32, offset: 256)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2442, file: !2437, line: 31, baseType: !708, size: 32, align: 512, offset: 512)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2442, file: !2437, line: 32, baseType: !2450, size: 960, offset: 576)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2451, line: 206, size: 960, elements: !2452)
!2451 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2452 = !{!2453, !2454, !2457, !2459, !2460, !2462}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2450, file: !2451, line: 207, baseType: !737, size: 64)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2450, file: !2451, line: 208, baseType: !2455, size: 256, offset: 64)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2456, size: 256, elements: !813)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2450, file: !2451, line: 209, baseType: !2458, size: 256, offset: 320)
!2458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, elements: !813)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2450, file: !2451, line: 213, baseType: !144, size: 64, offset: 576)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2450, file: !2451, line: 215, baseType: !2461, size: 256, offset: 640)
!2461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !813)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2450, file: !2451, line: 216, baseType: !130, size: 8, offset: 896)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2442, file: !2437, line: 33, baseType: !35, size: 64, offset: 1536)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2442, file: !2437, line: 34, baseType: !35, size: 64, offset: 1600)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2442, file: !2437, line: 35, baseType: !949, size: 8, offset: 1664)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2442, file: !2437, line: 36, baseType: !2467, size: 320, offset: 1728)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2468, line: 11, size: 320, elements: !2469)
!2468 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2469 = !{!2470, !2471, !2472, !2477}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2467, file: !2468, line: 16, baseType: !808, size: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2467, file: !2468, line: 17, baseType: !35, size: 64, offset: 128)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2467, file: !2468, line: 18, baseType: !2473, size: 64, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null, !2476}
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2467, file: !2468, line: 19, baseType: !61, size: 32, offset: 256)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2442, file: !2437, line: 37, baseType: !2479, size: 256, offset: 2048)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2480, line: 98, size: 256, elements: !2481)
!2480 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2481 = !{!2482, !2483, !2484}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2479, file: !2480, line: 99, baseType: !747, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2479, file: !2480, line: 100, baseType: !417, size: 128, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2479, file: !2480, line: 101, baseType: !2485, size: 64, offset: 192)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2480, line: 21, baseType: !2486)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{null, !2489}
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2442, file: !2437, line: 38, baseType: !734, size: 128, align: 64, offset: 2304)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2442, file: !2437, line: 39, baseType: !2492, size: 64, offset: 2432)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2437, line: 49, size: 768, elements: !2494)
!2494 = !{!2495, !2496, !2497, !2498, !2499, !2500, !2501}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2493, file: !2437, line: 50, baseType: !708, size: 32)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2493, file: !2437, line: 51, baseType: !2458, size: 256, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2493, file: !2437, line: 53, baseType: !2458, size: 256, offset: 320)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2493, file: !2437, line: 54, baseType: !35, size: 64, offset: 576)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2493, file: !2437, line: 55, baseType: !2492, size: 64, offset: 640)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2493, file: !2437, line: 56, baseType: !367, size: 32, offset: 704)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2493, file: !2437, line: 57, baseType: !367, size: 32, offset: 736)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2442, file: !2437, line: 40, baseType: !35, size: 64, offset: 2496)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2442, file: !2437, line: 42, baseType: !367, size: 32, offset: 2560)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2442, file: !2437, line: 43, baseType: !2435, size: 64, offset: 2624)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2436, file: !2437, line: 99, baseType: !2506, offset: 128)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2507, line: 211, elements: !719)
!2507 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2436, file: !2437, line: 100, baseType: !2509, size: 64, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2437, line: 63, size: 3008, elements: !2511)
!2511 = !{!2512, !2513, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2543}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2510, file: !2437, line: 64, baseType: !2492, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2510, file: !2437, line: 65, baseType: !2514, size: 192, offset: 64)
!2514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2492, size: 192, elements: !792)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2510, file: !2437, line: 67, baseType: !367, size: 32, offset: 256)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2510, file: !2437, line: 68, baseType: !754, size: 256, offset: 320)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2510, file: !2437, line: 69, baseType: !708, size: 32, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2510, file: !2437, line: 70, baseType: !754, size: 256, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2510, file: !2437, line: 71, baseType: !35, size: 64, offset: 896)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2510, file: !2437, line: 72, baseType: !35, size: 64, offset: 960)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2510, file: !2437, line: 73, baseType: !35, size: 64, offset: 1024)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2510, file: !2437, line: 74, baseType: !35, size: 64, offset: 1088)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2510, file: !2437, line: 75, baseType: !35, size: 64, offset: 1152)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2510, file: !2437, line: 76, baseType: !35, size: 64, offset: 1216)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2510, file: !2437, line: 77, baseType: !35, size: 64, offset: 1280)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2510, file: !2437, line: 78, baseType: !35, size: 64, offset: 1344)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2510, file: !2437, line: 79, baseType: !949, size: 8, offset: 1408)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2510, file: !2437, line: 80, baseType: !35, size: 64, offset: 1472)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2510, file: !2437, line: 81, baseType: !754, size: 256, offset: 1536)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2510, file: !2437, line: 82, baseType: !1573, size: 256, offset: 1792)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2510, file: !2437, line: 84, baseType: !362, size: 32, offset: 2048)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2510, file: !2437, line: 87, baseType: !35, size: 64, offset: 2112)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2510, file: !2437, line: 88, baseType: !35, size: 64, offset: 2176)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2510, file: !2437, line: 89, baseType: !2535, size: 704, offset: 2240)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2480, line: 111, size: 704, elements: !2536)
!2536 = !{!2537, !2538, !2539, !2542}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2535, file: !2480, line: 112, baseType: !2479, size: 256)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2535, file: !2480, line: 113, baseType: !2467, size: 320, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2535, file: !2480, line: 116, baseType: !2540, size: 64, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2480, line: 18, flags: DIFlagFwdDecl)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2535, file: !2480, line: 117, baseType: !367, size: 32, offset: 640)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2510, file: !2437, line: 90, baseType: !2435, size: 64, offset: 2944)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1354, file: !244, line: 515, baseType: !2545, size: 64, offset: 8064)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2547, line: 117, size: 128, elements: !2548)
!2547 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2548 = !{!2549, !2550, !2551}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2546, file: !2547, line: 118, baseType: !885, size: 32)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2546, file: !2547, line: 119, baseType: !885, size: 32, offset: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2546, file: !2547, line: 120, baseType: !144, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1354, file: !244, line: 516, baseType: !33, size: 32, offset: 8128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1354, file: !244, line: 519, baseType: !33, size: 32, offset: 8160)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1354, file: !244, line: 520, baseType: !2555, size: 64, offset: 8192)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1354, file: !244, line: 523, baseType: !2557, size: 64, offset: 8256)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !244, line: 523, flags: DIFlagFwdDecl)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1354, file: !244, line: 524, baseType: !33, size: 32, offset: 8320)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1354, file: !244, line: 525, baseType: !2562, size: 64, offset: 8384)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2565, line: 28, size: 192, elements: !2566)
!2565 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2566 = !{!2567, !2568, !2569}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2564, file: !2565, line: 29, baseType: !952, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2564, file: !2565, line: 30, baseType: !952, size: 64, offset: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2564, file: !2565, line: 31, baseType: !35, size: 64, offset: 128)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1354, file: !244, line: 526, baseType: !33, size: 32, offset: 8448)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1354, file: !244, line: 533, baseType: !355, size: 64, offset: 8512)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1354, file: !244, line: 534, baseType: !33, size: 32, offset: 8576)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1354, file: !244, line: 535, baseType: !2574, size: 64, offset: 8640)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1354, file: !244, line: 536, baseType: !33, size: 32, offset: 8704)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1354, file: !244, line: 539, baseType: !367, size: 32, offset: 8736)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1354, file: !244, line: 540, baseType: !2578, size: 64, offset: 8768)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2580, line: 32, size: 64, elements: !2581)
!2580 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2581 = !{!2582, !2583}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2579, file: !2580, line: 33, baseType: !885, size: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2579, file: !2580, line: 34, baseType: !885, size: 32, offset: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1354, file: !244, line: 563, baseType: !417, size: 128, offset: 8832)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1354, file: !244, line: 565, baseType: !417, size: 128, offset: 8960)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1354, file: !244, line: 568, baseType: !2587, size: 64, offset: 9088)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{null}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1354, file: !244, line: 570, baseType: !362, size: 32, offset: 9152)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1330, file: !288, line: 2382, baseType: !1329, size: 64, offset: 448)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1330, file: !288, line: 2383, baseType: !804, size: 64, offset: 512)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1330, file: !288, line: 2385, baseType: !2594, offset: 576)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2507, line: 206, elements: !719)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1330, file: !288, line: 2386, baseType: !2594, offset: 576)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1330, file: !288, line: 2387, baseType: !2594, offset: 576)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1330, file: !288, line: 2388, baseType: !2598, offset: 576)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2594, elements: !792)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1330, file: !288, line: 2390, baseType: !2594, offset: 576)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1330, file: !288, line: 2391, baseType: !2594, offset: 576)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1330, file: !288, line: 2392, baseType: !2594, offset: 576)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1330, file: !288, line: 2393, baseType: !2594, offset: 576)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1321, file: !288, line: 1197, baseType: !2604, size: 64, offset: 384)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2606)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !288, line: 2057, size: 1664, elements: !2607)
!2607 = !{!2608, !2612, !2616, !2617, !2621, !2625, !2629, !2630, !2631, !2635, !2639, !2643, !2644, !2645, !2651, !2655, !2656, !2660, !2661, !2662, !2663, !2667, !2671, !2718, !2733, !2734}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2606, file: !288, line: 2058, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!1108, !1320}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2606, file: !288, line: 2059, baseType: !2613, size: 64, offset: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{null, !1108}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2606, file: !288, line: 2060, baseType: !2613, size: 64, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2606, file: !288, line: 2062, baseType: !2618, size: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{null, !1108, !367}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2606, file: !288, line: 2063, baseType: !2622, size: 64, offset: 256)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!367, !1108, !1785}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2606, file: !288, line: 2064, baseType: !2626, size: 64, offset: 320)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!367, !1108}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2606, file: !288, line: 2065, baseType: !2613, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2606, file: !288, line: 2066, baseType: !1349, size: 64, offset: 448)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2606, file: !288, line: 2067, baseType: !2632, size: 64, offset: 512)
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!367, !1320, !367}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2606, file: !288, line: 2068, baseType: !2636, size: 64, offset: 576)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{!367, !1320, !287}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2606, file: !288, line: 2069, baseType: !2640, size: 64, offset: 640)
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = !DISubroutineType(types: !2642)
!2642 = !{!367, !1320}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2606, file: !288, line: 2070, baseType: !2636, size: 64, offset: 704)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2606, file: !288, line: 2071, baseType: !2640, size: 64, offset: 768)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2606, file: !288, line: 2072, baseType: !2646, size: 64, offset: 832)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!367, !1073, !2649}
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !288, line: 62, flags: DIFlagFwdDecl)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2606, file: !288, line: 2073, baseType: !2652, size: 64, offset: 896)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!367, !1320, !2365, !962}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2606, file: !288, line: 2074, baseType: !1349, size: 64, offset: 960)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2606, file: !288, line: 2076, baseType: !2657, size: 64, offset: 1024)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!367, !2147, !1073}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2606, file: !288, line: 2077, baseType: !2657, size: 64, offset: 1088)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2606, file: !288, line: 2078, baseType: !2657, size: 64, offset: 1152)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2606, file: !288, line: 2079, baseType: !2657, size: 64, offset: 1216)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2606, file: !288, line: 2081, baseType: !2664, size: 64, offset: 1280)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!1261, !1320, !367, !962, !1264, !766}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2606, file: !288, line: 2082, baseType: !2668, size: 64, offset: 1344)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DISubroutineType(types: !2670)
!2670 = !{!1261, !1320, !367, !952, !1264, !766}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2606, file: !288, line: 2083, baseType: !2672, size: 64, offset: 1408)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!2675, !1108}
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !293, line: 296, size: 1664, elements: !2678)
!2678 = !{!2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2703, !2704, !2705}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2677, file: !293, line: 297, baseType: !808, size: 128)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2677, file: !293, line: 298, baseType: !417, size: 128, offset: 128)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2677, file: !293, line: 299, baseType: !417, size: 128, offset: 256)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2677, file: !293, line: 300, baseType: !417, size: 128, offset: 384)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2677, file: !293, line: 301, baseType: !754, size: 256, offset: 512)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2677, file: !293, line: 302, baseType: !708, size: 32, offset: 768)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2677, file: !293, line: 303, baseType: !362, size: 32, offset: 800)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2677, file: !293, line: 304, baseType: !1320, size: 64, offset: 832)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2677, file: !293, line: 305, baseType: !2688, size: 64, offset: 896)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !293, line: 68, size: 64, elements: !2689)
!2689 = !{!2690, !2702}
!2690 = !DIDerivedType(tag: DW_TAG_member, scope: !2688, file: !293, line: 69, baseType: !2691, size: 32)
!2691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2688, file: !293, line: 69, size: 32, elements: !2692)
!2692 = !{!2693, !2694, !2695}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2691, file: !293, line: 70, baseType: !834, size: 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2691, file: !293, line: 71, baseType: !852, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2691, file: !293, line: 72, baseType: !2696, size: 32)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2697, line: 24, baseType: !2698)
!2697 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2697, line: 22, size: 32, elements: !2699)
!2699 = !{!2700}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2698, file: !2697, line: 23, baseType: !2701, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2697, line: 20, baseType: !840)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2688, file: !293, line: 74, baseType: !292, size: 32, offset: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2677, file: !293, line: 306, baseType: !766, size: 64, offset: 960)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2677, file: !293, line: 307, baseType: !35, size: 64, offset: 1024)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2677, file: !293, line: 308, baseType: !2706, size: 576, offset: 1088)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !293, line: 205, size: 576, elements: !2707)
!2707 = !{!2708, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2706, file: !293, line: 206, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !293, line: 66, baseType: !430)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2706, file: !293, line: 207, baseType: !2709, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2706, file: !293, line: 208, baseType: !2709, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2706, file: !293, line: 209, baseType: !2709, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2706, file: !293, line: 210, baseType: !2709, size: 64, offset: 256)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2706, file: !293, line: 211, baseType: !2709, size: 64, offset: 320)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2706, file: !293, line: 212, baseType: !2709, size: 64, offset: 384)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2706, file: !293, line: 213, baseType: !909, size: 64, offset: 448)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2706, file: !293, line: 214, baseType: !909, size: 64, offset: 512)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2606, file: !288, line: 2085, baseType: !2719, size: 64, offset: 1472)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!144, !1320, !2722}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2724, line: 15, size: 256, elements: !2725)
!2724 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2725 = !{!2726, !2727, !2728, !2729, !2730}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2723, file: !2724, line: 16, baseType: !1316, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2723, file: !2724, line: 19, baseType: !367, size: 32, offset: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2723, file: !2724, line: 26, baseType: !35, size: 64, offset: 64)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2723, file: !2724, line: 33, baseType: !35, size: 64, offset: 128)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2723, file: !2724, line: 36, baseType: !2731, size: 64, offset: 192)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !259, line: 33, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2606, file: !288, line: 2087, baseType: !2719, size: 64, offset: 1536)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2606, file: !288, line: 2089, baseType: !1349, size: 64, offset: 1600)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1321, file: !288, line: 1198, baseType: !2736, size: 64, offset: 448)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2738)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !293, line: 324, size: 704, elements: !2739)
!2739 = !{!2740, !2744, !2748, !2752, !2753, !2754, !2755, !2756, !2761, !2766, !2770}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2738, file: !293, line: 325, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!367, !2676}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2738, file: !293, line: 326, baseType: !2745, size: 64, offset: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!2676, !1320, !367}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2738, file: !293, line: 327, baseType: !2749, size: 64, offset: 128)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{null, !2676}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2738, file: !293, line: 328, baseType: !2741, size: 64, offset: 192)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2738, file: !293, line: 329, baseType: !2741, size: 64, offset: 256)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2738, file: !293, line: 330, baseType: !2741, size: 64, offset: 320)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2738, file: !293, line: 331, baseType: !2632, size: 64, offset: 384)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2738, file: !293, line: 334, baseType: !2757, size: 64, offset: 448)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!2760, !1108}
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2738, file: !293, line: 335, baseType: !2762, size: 64, offset: 512)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!367, !1108, !2765}
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2738, file: !293, line: 337, baseType: !2767, size: 64, offset: 576)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!367, !1108, !2760}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2738, file: !293, line: 339, baseType: !2771, size: 64, offset: 640)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!367, !1320, !2774}
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1321, file: !288, line: 1199, baseType: !2776, size: 64, offset: 512)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2778)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !293, line: 430, size: 704, elements: !2779)
!2779 = !{!2780, !2784, !2785, !2789, !2790, !2791, !2806, !2829, !2833, !2834, !2857}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2778, file: !293, line: 431, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!367, !1320, !367, !367, !1230}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2778, file: !293, line: 432, baseType: !2632, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2778, file: !293, line: 433, baseType: !2786, size: 64, offset: 128)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!367, !1320, !33}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2778, file: !293, line: 434, baseType: !2786, size: 64, offset: 192)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2778, file: !293, line: 435, baseType: !2632, size: 64, offset: 256)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2778, file: !293, line: 436, baseType: !2792, size: 64, offset: 320)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!367, !1320, !367, !2795}
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !293, line: 417, size: 256, elements: !2797)
!2797 = !{!2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2796, file: !293, line: 418, baseType: !367, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2796, file: !293, line: 419, baseType: !33, size: 32, offset: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2796, file: !293, line: 420, baseType: !33, size: 32, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2796, file: !293, line: 422, baseType: !33, size: 32, offset: 96)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2796, file: !293, line: 423, baseType: !33, size: 32, offset: 128)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2796, file: !293, line: 424, baseType: !33, size: 32, offset: 160)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2796, file: !293, line: 425, baseType: !33, size: 32, offset: 192)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2796, file: !293, line: 426, baseType: !33, size: 32, offset: 224)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2778, file: !293, line: 437, baseType: !2807, size: 64, offset: 384)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!367, !1320, !2688, !2810}
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !293, line: 345, size: 960, elements: !2812)
!2812 = !{!2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2811, file: !293, line: 346, baseType: !367, size: 32)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2811, file: !293, line: 347, baseType: !43, size: 64, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2811, file: !293, line: 348, baseType: !43, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2811, file: !293, line: 349, baseType: !43, size: 64, offset: 192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2811, file: !293, line: 350, baseType: !43, size: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2811, file: !293, line: 351, baseType: !43, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2811, file: !293, line: 352, baseType: !43, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2811, file: !293, line: 353, baseType: !428, size: 64, offset: 448)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2811, file: !293, line: 355, baseType: !428, size: 64, offset: 512)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2811, file: !293, line: 356, baseType: !367, size: 32, offset: 576)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2811, file: !293, line: 357, baseType: !367, size: 32, offset: 608)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2811, file: !293, line: 358, baseType: !43, size: 64, offset: 640)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2811, file: !293, line: 359, baseType: !43, size: 64, offset: 704)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2811, file: !293, line: 360, baseType: !43, size: 64, offset: 768)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2811, file: !293, line: 361, baseType: !428, size: 64, offset: 832)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2811, file: !293, line: 362, baseType: !367, size: 32, offset: 896)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2778, file: !293, line: 438, baseType: !2830, size: 64, offset: 448)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!367, !1320, !2774, !2810}
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2778, file: !293, line: 440, baseType: !2807, size: 64, offset: 512)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2778, file: !293, line: 441, baseType: !2835, size: 64, offset: 576)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2836, size: 64)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!367, !1320, !2838}
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !293, line: 411, size: 1408, elements: !2840)
!2840 = !{!2841, !2842}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2839, file: !293, line: 412, baseType: !33, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2839, file: !293, line: 413, baseType: !2843, size: 1344, offset: 64)
!2843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2844, size: 1344, elements: !792)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !293, line: 397, size: 448, elements: !2845)
!2845 = !{!2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2856}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2844, file: !293, line: 398, baseType: !33, size: 32)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2844, file: !293, line: 399, baseType: !33, size: 32, offset: 32)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2844, file: !293, line: 401, baseType: !33, size: 32, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2844, file: !293, line: 402, baseType: !33, size: 32, offset: 96)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2844, file: !293, line: 403, baseType: !33, size: 32, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2844, file: !293, line: 404, baseType: !33, size: 32, offset: 160)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2844, file: !293, line: 405, baseType: !33, size: 32, offset: 192)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2844, file: !293, line: 406, baseType: !47, size: 64, offset: 256)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2844, file: !293, line: 407, baseType: !2855, size: 64, offset: 320)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !363, line: 132, baseType: !43)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2844, file: !293, line: 408, baseType: !2855, size: 64, offset: 384)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2778, file: !293, line: 442, baseType: !2786, size: 64, offset: 640)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1321, file: !288, line: 1200, baseType: !2859, size: 64, offset: 576)
!2859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2861)
!2861 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !288, line: 54, flags: DIFlagFwdDecl)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1321, file: !288, line: 1201, baseType: !35, size: 64, offset: 640)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1321, file: !288, line: 1202, baseType: !35, size: 64, offset: 704)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1321, file: !288, line: 1203, baseType: !35, size: 64, offset: 768)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1321, file: !288, line: 1204, baseType: !1073, size: 64, offset: 832)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1321, file: !288, line: 1205, baseType: !893, size: 320, offset: 896)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1321, file: !288, line: 1206, baseType: !367, size: 32, offset: 1216)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1321, file: !288, line: 1207, baseType: !362, size: 32, offset: 1248)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1321, file: !288, line: 1209, baseType: !355, size: 64, offset: 1280)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1321, file: !288, line: 1211, baseType: !2871, size: 64, offset: 1344)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2874)
!2874 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !288, line: 1211, flags: DIFlagFwdDecl)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1321, file: !288, line: 1223, baseType: !2876, size: 64, offset: 1408)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1085, line: 34, size: 64, elements: !2877)
!2877 = !{!2878}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2876, file: !1085, line: 35, baseType: !1088, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1321, file: !288, line: 1224, baseType: !417, size: 128, offset: 1472)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1321, file: !288, line: 1225, baseType: !2881, size: 64, offset: 1600)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2882, size: 64)
!2882 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !288, line: 1225, flags: DIFlagFwdDecl)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1321, file: !288, line: 1226, baseType: !2884, size: 64, offset: 1664)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !288, line: 1226, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1321, file: !288, line: 1227, baseType: !2887, size: 64, offset: 1728)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !288, line: 50, flags: DIFlagFwdDecl)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1321, file: !288, line: 1228, baseType: !2890, size: 64, offset: 1792)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !288, line: 1228, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1321, file: !288, line: 1229, baseType: !808, size: 128, offset: 1856)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1321, file: !288, line: 1230, baseType: !33, size: 32, offset: 1984)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1321, file: !288, line: 1231, baseType: !2895, size: 2496, offset: 2048)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !293, line: 521, size: 2496, elements: !2896)
!2896 = !{!2897, !2898, !2899, !2901, !2933}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2895, file: !293, line: 522, baseType: !33, size: 32)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2895, file: !293, line: 523, baseType: !893, size: 320, offset: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2895, file: !293, line: 524, baseType: !2900, size: 192, offset: 384)
!2900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 192, elements: !792)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2895, file: !293, line: 525, baseType: !2902, size: 1728, offset: 576)
!2902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2903, size: 1728, elements: !792)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !293, line: 222, size: 576, elements: !2904)
!2904 = !{!2905, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2903, file: !293, line: 223, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !293, line: 445, size: 256, elements: !2908)
!2908 = !{!2909, !2910, !2923, !2924}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2907, file: !293, line: 446, baseType: !367, size: 32)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2907, file: !293, line: 447, baseType: !2911, size: 64, offset: 64)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2913)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !293, line: 312, size: 512, elements: !2914)
!2914 = !{!2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2913, file: !293, line: 313, baseType: !2632, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2913, file: !293, line: 314, baseType: !2632, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2913, file: !293, line: 315, baseType: !2632, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2913, file: !293, line: 316, baseType: !2632, size: 64, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2913, file: !293, line: 317, baseType: !2741, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2913, file: !293, line: 318, baseType: !2741, size: 64, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2913, file: !293, line: 319, baseType: !2741, size: 64, offset: 384)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2913, file: !293, line: 320, baseType: !2771, size: 64, offset: 448)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2907, file: !293, line: 448, baseType: !1353, size: 64, offset: 128)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2907, file: !293, line: 449, baseType: !2906, size: 64, offset: 192)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2903, file: !293, line: 224, baseType: !367, size: 32, offset: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2903, file: !293, line: 226, baseType: !417, size: 128, offset: 128)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2903, file: !293, line: 227, baseType: !35, size: 64, offset: 256)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2903, file: !293, line: 228, baseType: !33, size: 32, offset: 320)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2903, file: !293, line: 229, baseType: !33, size: 32, offset: 352)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2903, file: !293, line: 230, baseType: !2709, size: 64, offset: 384)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2903, file: !293, line: 231, baseType: !2709, size: 64, offset: 448)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2903, file: !293, line: 232, baseType: !355, size: 64, offset: 512)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2895, file: !293, line: 526, baseType: !2934, size: 192, offset: 2304)
!2934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2911, size: 192, elements: !792)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1321, file: !288, line: 1233, baseType: !2936, size: 2368, offset: 4544)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !288, line: 1184, size: 2368, elements: !2937)
!2937 = !{!2938, !2939, !2940}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2936, file: !288, line: 1185, baseType: !80, size: 16)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2936, file: !288, line: 1186, baseType: !80, size: 16, offset: 16)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2936, file: !288, line: 1187, baseType: !2941, size: 2304, offset: 64)
!2941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2942, size: 2304, elements: !792)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2943, line: 12, size: 768, elements: !2944)
!2943 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2944 = !{!2945, !2953, !2954, !2959, !2960}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2942, file: !2943, line: 13, baseType: !2946, size: 384)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2947, line: 17, size: 384, elements: !2948)
!2947 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2948 = !{!2949, !2950, !2951, !2952}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2946, file: !2947, line: 18, baseType: !367, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2946, file: !2947, line: 19, baseType: !367, size: 32, offset: 32)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2946, file: !2947, line: 20, baseType: !817, size: 192, offset: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2946, file: !2947, line: 22, baseType: !734, size: 128, align: 64, offset: 256)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2942, file: !2943, line: 14, baseType: !2317, size: 64, offset: 384)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2942, file: !2943, line: 15, baseType: !2955, size: 64, offset: 448)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2956, line: 16, size: 64, elements: !2957)
!2956 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2957 = !{!2958}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2955, file: !2956, line: 17, baseType: !348, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2942, file: !2943, line: 16, baseType: !817, size: 192, offset: 512)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2942, file: !2943, line: 17, baseType: !362, size: 32, offset: 704)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1321, file: !288, line: 1240, baseType: !355, size: 64, offset: 6912)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1321, file: !288, line: 1243, baseType: !61, size: 32, offset: 6976)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1321, file: !288, line: 1245, baseType: !909, size: 64, offset: 7040)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1321, file: !288, line: 1246, baseType: !909, size: 64, offset: 7104)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1321, file: !288, line: 1248, baseType: !62, size: 32, offset: 7168)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1321, file: !288, line: 1249, baseType: !2967, size: 64, offset: 7232)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !288, line: 634, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1321, file: !288, line: 1252, baseType: !2970, size: 256, offset: 7296)
!2970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !103)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1321, file: !288, line: 1253, baseType: !2972, size: 128, offset: 7552)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2973, line: 21, baseType: !2974)
!2973 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2973, line: 19, size: 128, elements: !2975)
!2975 = !{!2976}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2974, file: !2973, line: 20, baseType: !2977, size: 128)
!2977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 128, elements: !2978)
!2978 = !{!2979}
!2979 = !DISubrange(count: 16)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1321, file: !288, line: 1255, baseType: !33, size: 32, offset: 7680)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1321, file: !288, line: 1261, baseType: !754, size: 256, offset: 7744)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1321, file: !288, line: 1267, baseType: !952, size: 64, offset: 8000)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1321, file: !288, line: 1269, baseType: !2984, size: 64, offset: 8064)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2986)
!2986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1075, line: 128, size: 1024, align: 512, elements: !2987)
!2987 = !{!2988, !2992, !2993, !3000, !3006, !3010, !3014, !3018, !3019, !3023, !3027, !3032, !3036}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2986, file: !1075, line: 129, baseType: !2989, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!367, !1073, !33}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2986, file: !1075, line: 130, baseType: !2989, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2986, file: !1075, line: 131, baseType: !2994, size: 64, offset: 128)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!367, !2997, !2999}
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1074)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2986, file: !1075, line: 132, baseType: !3001, size: 64, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!367, !2997, !33, !952, !3004}
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1093)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2986, file: !1075, line: 134, baseType: !3007, size: 64, offset: 256)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!367, !2997}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2986, file: !1075, line: 135, baseType: !3011, size: 64, offset: 320)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!367, !1073}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2986, file: !1075, line: 136, baseType: !3015, size: 64, offset: 384)
!3015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3016, size: 64)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !1073}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2986, file: !1075, line: 137, baseType: !3015, size: 64, offset: 448)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2986, file: !1075, line: 138, baseType: !3020, size: 64, offset: 512)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !1073, !1108}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2986, file: !1075, line: 139, baseType: !3024, size: 64, offset: 576)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!962, !1073, !962, !367}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2986, file: !1075, line: 140, baseType: !3028, size: 64, offset: 640)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!1068, !3031}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2986, file: !1075, line: 141, baseType: !3033, size: 64, offset: 704)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!367, !1230, !949}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2986, file: !1075, line: 142, baseType: !3037, size: 64, offset: 768)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!1073, !1073, !3040}
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1109)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1321, file: !288, line: 1271, baseType: !3043, size: 448, offset: 8128)
!3043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2724, line: 63, size: 448, elements: !3044)
!3044 = !{!3045, !3050, !3051, !3052, !3053, !3054, !3055}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3043, file: !2724, line: 64, baseType: !3046, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!35, !3049, !2722}
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3043, file: !2724, line: 66, baseType: !3046, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3043, file: !2724, line: 69, baseType: !144, size: 64, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3043, file: !2724, line: 70, baseType: !367, size: 32, offset: 192)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3043, file: !2724, line: 71, baseType: !33, size: 32, offset: 224)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3043, file: !2724, line: 74, baseType: !417, size: 128, offset: 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3043, file: !2724, line: 85, baseType: !3056, size: 64, offset: 384)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1321, file: !288, line: 1274, baseType: !747, size: 64, offset: 8576)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1321, file: !288, line: 1280, baseType: !747, size: 64, offset: 8640)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1321, file: !288, line: 1283, baseType: !367, size: 32, offset: 8704)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1321, file: !288, line: 1286, baseType: !2042, size: 32, offset: 8736)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1321, file: !288, line: 1289, baseType: !2540, size: 64, offset: 8768)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1321, file: !288, line: 1290, baseType: !804, size: 64, offset: 8832)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1321, file: !288, line: 1297, baseType: !1035, size: 64, offset: 8896)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1321, file: !288, line: 1304, baseType: !3065, size: 64, offset: 8960)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3066, line: 49, size: 64, elements: !3067)
!3066 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3067 = !{!3068}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3065, file: !3066, line: 50, baseType: !3069, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3066, line: 41, size: 512, align: 512, elements: !3071)
!3071 = !{!3072, !3073, !3078}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3070, file: !3066, line: 43, baseType: !708, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3070, file: !3066, line: 45, baseType: !3074, size: 192, offset: 64)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3066, line: 29, size: 192, elements: !3075)
!3075 = !{!3076, !3077}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3074, file: !3066, line: 30, baseType: !417, size: 128)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3074, file: !3066, line: 32, baseType: !144, size: 64, offset: 128)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3070, file: !3066, line: 46, baseType: !144, size: 64, offset: 256)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1321, file: !288, line: 1305, baseType: !3065, size: 64, offset: 9024)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1321, file: !288, line: 1306, baseType: !734, size: 128, align: 64, offset: 9088)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1321, file: !288, line: 1307, baseType: !2479, size: 256, offset: 9216)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1321, file: !288, line: 1309, baseType: !754, size: 256, offset: 9472)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1321, file: !288, line: 1314, baseType: !367, size: 32, offset: 9728)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1321, file: !288, line: 1317, baseType: !708, size: 32, align: 512, offset: 10240)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1321, file: !288, line: 1318, baseType: !417, size: 128, offset: 10304)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1321, file: !288, line: 1320, baseType: !708, size: 32, offset: 10432)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1321, file: !288, line: 1321, baseType: !417, size: 128, offset: 10496)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1109, file: !288, line: 656, baseType: !1468, size: 64, offset: 512)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1109, file: !288, line: 659, baseType: !355, size: 64, offset: 576)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1109, file: !288, line: 663, baseType: !35, size: 64, offset: 640)
!3091 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !288, line: 671, baseType: !3092, size: 32, offset: 704)
!3092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1109, file: !288, line: 671, size: 32, elements: !3093)
!3093 = !{!3094, !3096}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3092, file: !288, line: 672, baseType: !3095, size: 32)
!3095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3092, file: !288, line: 673, baseType: !33, size: 32)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1109, file: !288, line: 675, baseType: !1183, size: 32, offset: 736)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1109, file: !288, line: 676, baseType: !766, size: 64, offset: 768)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1109, file: !288, line: 677, baseType: !1219, size: 128, offset: 832)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1109, file: !288, line: 678, baseType: !1219, size: 128, offset: 960)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1109, file: !288, line: 679, baseType: !1219, size: 128, offset: 1088)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1109, file: !288, line: 680, baseType: !708, size: 32, offset: 1216)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1109, file: !288, line: 681, baseType: !80, size: 16, offset: 1248)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1109, file: !288, line: 682, baseType: !130, size: 8, offset: 1264)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1109, file: !288, line: 683, baseType: !130, size: 8, offset: 1272)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1109, file: !288, line: 684, baseType: !2855, size: 64, offset: 1280)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1109, file: !288, line: 691, baseType: !35, size: 64, offset: 1344)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1109, file: !288, line: 692, baseType: !893, size: 320, offset: 1408)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1109, file: !288, line: 694, baseType: !35, size: 64, offset: 1728)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1109, file: !288, line: 695, baseType: !35, size: 64, offset: 1792)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1109, file: !288, line: 697, baseType: !808, size: 128, offset: 1856)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1109, file: !288, line: 698, baseType: !417, size: 128, offset: 1984)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1109, file: !288, line: 707, baseType: !417, size: 128, offset: 2112)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1109, file: !288, line: 708, baseType: !417, size: 128, offset: 2240)
!3115 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !288, line: 709, baseType: !3116, size: 128, offset: 2368)
!3116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1109, file: !288, line: 709, size: 128, elements: !3117)
!3117 = !{!3118, !3119}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3116, file: !288, line: 710, baseType: !804, size: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3116, file: !288, line: 711, baseType: !734, size: 128, align: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1109, file: !288, line: 713, baseType: !749, size: 64, offset: 2496)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1109, file: !288, line: 714, baseType: !749, size: 64, offset: 2560)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1109, file: !288, line: 715, baseType: !362, size: 32, offset: 2624)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1109, file: !288, line: 716, baseType: !362, size: 32, offset: 2656)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1109, file: !288, line: 717, baseType: !362, size: 32, offset: 2688)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1109, file: !288, line: 719, baseType: !362, size: 32, offset: 2720)
!3126 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !288, line: 721, baseType: !3127, size: 64, offset: 2752)
!3127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1109, file: !288, line: 721, size: 64, elements: !3128)
!3128 = !{!3129, !3255}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3127, file: !288, line: 722, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3132)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !288, line: 1914, size: 2112, elements: !3133)
!3133 = !{!3134, !3135, !3139, !3143, !3147, !3148, !3149, !3155, !3168, !3172, !3176, !3177, !3181, !3182, !3186, !3191, !3192, !3196, !3200, !3206, !3207, !3211, !3212, !3218, !3222, !3223, !3228, !3232, !3236, !3240, !3244, !3245, !3251}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3132, file: !288, line: 1915, baseType: !1353, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3132, file: !288, line: 1916, baseType: !3136, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!766, !726, !766, !367}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3132, file: !288, line: 1917, baseType: !3140, size: 64, offset: 128)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!1261, !726, !962, !1264, !2171}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3132, file: !288, line: 1918, baseType: !3144, size: 64, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!1261, !726, !952, !1264, !2171}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3132, file: !288, line: 1919, baseType: !1910, size: 64, offset: 256)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3132, file: !288, line: 1920, baseType: !1910, size: 64, offset: 320)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3132, file: !288, line: 1921, baseType: !3150, size: 64, offset: 384)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!367, !1913, !3153, !33}
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !288, line: 53, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3132, file: !288, line: 1923, baseType: !3156, size: 64, offset: 448)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!367, !726, !3159}
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !288, line: 1858, size: 128, elements: !3161)
!3161 = !{!3162, !3167}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3160, file: !288, line: 1859, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !288, line: 1855, baseType: !3164)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!949, !3159, !952, !367, !766, !43, !33}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3160, file: !288, line: 1860, baseType: !766, size: 64, offset: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3132, file: !288, line: 1924, baseType: !3169, size: 64, offset: 512)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!2191, !726, !2193}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3132, file: !288, line: 1925, baseType: !3173, size: 64, offset: 576)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!144, !726, !33, !35}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3132, file: !288, line: 1926, baseType: !3173, size: 64, offset: 640)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3132, file: !288, line: 1927, baseType: !3178, size: 64, offset: 704)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!367, !726, !1608}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3132, file: !288, line: 1928, baseType: !35, size: 64, offset: 768)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3132, file: !288, line: 1929, baseType: !3183, size: 64, offset: 832)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!367, !1108, !726}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3132, file: !288, line: 1930, baseType: !3187, size: 64, offset: 896)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!367, !726, !3190}
!3190 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !288, line: 1061, baseType: !355)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3132, file: !288, line: 1931, baseType: !3183, size: 64, offset: 960)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3132, file: !288, line: 1932, baseType: !3193, size: 64, offset: 1024)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!367, !726, !766, !766, !367}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3132, file: !288, line: 1933, baseType: !3197, size: 64, offset: 1088)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!367, !367, !726, !367}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3132, file: !288, line: 1934, baseType: !3201, size: 64, offset: 1152)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!367, !726, !367, !3204}
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !288, line: 1063, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3132, file: !288, line: 1935, baseType: !723, size: 64, offset: 1216)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3132, file: !288, line: 1936, baseType: !3208, size: 64, offset: 1280)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!367, !367}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3132, file: !288, line: 1937, baseType: !3201, size: 64, offset: 1344)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3132, file: !288, line: 1938, baseType: !3213, size: 64, offset: 1408)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!1261, !3216, !726, !2171, !1264, !33}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !350, line: 59, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3132, file: !288, line: 1939, baseType: !3219, size: 64, offset: 1472)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!1261, !726, !2171, !3216, !1264, !33}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3132, file: !288, line: 1940, baseType: !2032, size: 64, offset: 1536)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3132, file: !288, line: 1941, baseType: !3224, size: 64, offset: 1600)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!367, !726, !367, !3227, !1887}
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3132, file: !288, line: 1942, baseType: !3229, size: 64, offset: 1664)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!144, !726, !367, !766, !766}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3132, file: !288, line: 1944, baseType: !3233, size: 64, offset: 1728)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{null, !2147, !726}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3132, file: !288, line: 1948, baseType: !3237, size: 64, offset: 1792)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!1261, !726, !766, !726, !766, !1264, !33}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3132, file: !288, line: 1950, baseType: !3241, size: 64, offset: 1856)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!766, !726, !766, !726, !766, !766, !33}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3132, file: !288, line: 1953, baseType: !3193, size: 64, offset: 1920)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3132, file: !288, line: 1954, baseType: !3246, size: 64, offset: 1984)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!367, !3249, !33}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !288, line: 1911, flags: DIFlagFwdDecl)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3132, file: !288, line: 1955, baseType: !3252, size: 64, offset: 2048)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DISubroutineType(types: !3254)
!3254 = !{!367, !3249, !3153, !33}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3127, file: !288, line: 723, baseType: !2613, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1109, file: !288, line: 725, baseType: !3257, size: 64, offset: 2816)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !288, line: 725, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1109, file: !288, line: 726, baseType: !1469, size: 1536, align: 64, offset: 2880)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1109, file: !288, line: 727, baseType: !417, size: 128, offset: 4416)
!3261 = !DIDerivedType(tag: DW_TAG_member, scope: !1109, file: !288, line: 728, baseType: !3262, size: 64, offset: 4544)
!3262 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1109, file: !288, line: 728, size: 64, elements: !3263)
!3263 = !{!3264, !3265, !3268, !3269}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3262, file: !288, line: 729, baseType: !3216, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3262, file: !288, line: 730, baseType: !3266, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !288, line: 730, flags: DIFlagFwdDecl)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3262, file: !288, line: 731, baseType: !962, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3262, file: !288, line: 732, baseType: !33, size: 32)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1109, file: !288, line: 735, baseType: !62, size: 32, offset: 4608)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1109, file: !288, line: 738, baseType: !62, size: 32, offset: 4640)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1109, file: !288, line: 739, baseType: !2967, size: 64, offset: 4672)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1109, file: !288, line: 750, baseType: !355, size: 64, offset: 4736)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1074, file: !1075, line: 91, baseType: !3275, size: 256, offset: 448)
!3275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 256, elements: !103)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1074, file: !1075, line: 94, baseType: !3277, size: 64, offset: 704)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3278, line: 25, size: 64, elements: !3279)
!3278 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3279 = !{!3280}
!3280 = !DIDerivedType(tag: DW_TAG_member, scope: !3277, file: !3278, line: 26, baseType: !3281, size: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3277, file: !3278, line: 26, size: 64, elements: !3282)
!3282 = !{!3283, !3284}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3281, file: !3278, line: 28, baseType: !45, size: 64, align: 64)
!3284 = !DIDerivedType(tag: DW_TAG_member, scope: !3281, file: !3278, line: 30, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3281, file: !3278, line: 30, size: 64, elements: !3286)
!3286 = !{!3287, !3288}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3285, file: !3278, line: 31, baseType: !708, size: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3285, file: !3278, line: 32, baseType: !367, size: 32, offset: 32)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1074, file: !1075, line: 95, baseType: !2984, size: 64, offset: 768)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1074, file: !1075, line: 96, baseType: !1320, size: 64, offset: 832)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1074, file: !1075, line: 97, baseType: !35, size: 64, offset: 896)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1074, file: !1075, line: 98, baseType: !355, size: 64, offset: 960)
!3293 = !DIDerivedType(tag: DW_TAG_member, scope: !1074, file: !1075, line: 100, baseType: !3294, size: 128, offset: 1024)
!3294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !1075, line: 100, size: 128, elements: !3295)
!3295 = !{!3296, !3297}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3294, file: !1075, line: 101, baseType: !417, size: 128)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3294, file: !1075, line: 102, baseType: !3298, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1074, file: !1075, line: 104, baseType: !417, size: 128, offset: 1152)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1074, file: !1075, line: 105, baseType: !417, size: 128, offset: 1280)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1074, file: !1075, line: 113, baseType: !3302, size: 128, offset: 1408)
!3302 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1074, file: !1075, line: 109, size: 128, elements: !3303)
!3303 = !{!3304, !3305, !3306}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3302, file: !1075, line: 110, baseType: !808, size: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3302, file: !1075, line: 111, baseType: !1084, size: 128)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3302, file: !1075, line: 112, baseType: !734, size: 128, align: 64)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1069, file: !1070, line: 72, baseType: !1320, size: 64, offset: 64)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1069, file: !1070, line: 73, baseType: !367, size: 32, offset: 128)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1069, file: !1070, line: 74, baseType: !1148, size: 64, offset: 192)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1064, file: !1065, line: 10, baseType: !1073, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !727, file: !288, line: 1015, baseType: !1108, size: 64, offset: 1344)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !727, file: !288, line: 1016, baseType: !3130, size: 64, offset: 1408)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !727, file: !288, line: 1018, baseType: !43, size: 64, offset: 1472)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !727, file: !288, line: 1020, baseType: !355, size: 64, offset: 1536)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !727, file: !288, line: 1023, baseType: !355, size: 64, offset: 1600)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !727, file: !288, line: 1027, baseType: !3317, size: 64, offset: 1664)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !727, file: !288, line: 1029, baseType: !1468, size: 64, offset: 1728)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !727, file: !288, line: 1030, baseType: !2042, size: 32, offset: 1792)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !727, file: !288, line: 1031, baseType: !2042, size: 32, offset: 1824)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !694, file: !259, line: 756, baseType: !35, size: 64, offset: 704)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !694, file: !259, line: 757, baseType: !35, size: 64, offset: 768)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !694, file: !259, line: 760, baseType: !35, size: 64, offset: 832)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !694, file: !259, line: 761, baseType: !35, size: 64, offset: 896)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !694, file: !259, line: 763, baseType: !35, size: 64, offset: 960)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !694, file: !259, line: 764, baseType: !3327, size: 64, offset: 1024)
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1623, line: 299, baseType: !3329)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1623, line: 299, size: 64, elements: !3330)
!3330 = !{!3331}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3329, file: !1623, line: 299, baseType: !3332, size: 64)
!3332 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1628, line: 18, baseType: !35)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !694, file: !259, line: 773, baseType: !362, size: 32, offset: 1088)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !694, file: !259, line: 785, baseType: !362, size: 32, offset: 1120)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !694, file: !259, line: 795, baseType: !3336, size: 64, offset: 1152)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !259, line: 726, size: 128, elements: !3338)
!3338 = !{!3339, !3340}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3337, file: !259, line: 727, baseType: !43, size: 64)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3337, file: !259, line: 728, baseType: !367, size: 32, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !694, file: !259, line: 801, baseType: !35, size: 64, offset: 1216)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !694, file: !259, line: 804, baseType: !747, size: 64, offset: 1280)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !694, file: !259, line: 806, baseType: !367, size: 32, offset: 1344)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !694, file: !259, line: 808, baseType: !708, size: 32, offset: 1376)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !694, file: !259, line: 823, baseType: !893, size: 320, offset: 1408)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !694, file: !259, line: 825, baseType: !417, size: 128, offset: 1728)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !694, file: !259, line: 845, baseType: !367, size: 32, offset: 1856)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !694, file: !259, line: 849, baseType: !35, size: 64, offset: 1920)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !694, file: !259, line: 850, baseType: !35, size: 64, offset: 1984)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !694, file: !259, line: 852, baseType: !35, size: 64, offset: 2048)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !694, file: !259, line: 853, baseType: !35, size: 64, offset: 2112)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !694, file: !259, line: 854, baseType: !749, size: 64, offset: 2176)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !694, file: !259, line: 855, baseType: !35, size: 64, offset: 2240)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !694, file: !259, line: 856, baseType: !35, size: 64, offset: 2304)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !694, file: !259, line: 857, baseType: !35, size: 64, offset: 2368)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !694, file: !259, line: 858, baseType: !35, size: 64, offset: 2432)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !694, file: !259, line: 865, baseType: !564, size: 32, offset: 2496)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !694, file: !259, line: 867, baseType: !708, size: 32, offset: 2528)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !694, file: !259, line: 869, baseType: !35, size: 64, offset: 2560)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !694, file: !259, line: 869, baseType: !35, size: 64, offset: 2624)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !694, file: !259, line: 869, baseType: !35, size: 64, offset: 2688)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !694, file: !259, line: 869, baseType: !35, size: 64, offset: 2752)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !694, file: !259, line: 870, baseType: !35, size: 64, offset: 2816)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !694, file: !259, line: 870, baseType: !35, size: 64, offset: 2880)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !694, file: !259, line: 870, baseType: !35, size: 64, offset: 2944)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !694, file: !259, line: 871, baseType: !35, size: 64, offset: 3008)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !694, file: !259, line: 871, baseType: !35, size: 64, offset: 3072)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !694, file: !259, line: 871, baseType: !35, size: 64, offset: 3136)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !694, file: !259, line: 871, baseType: !35, size: 64, offset: 3200)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !694, file: !259, line: 873, baseType: !3371, size: 3328, offset: 3264)
!3371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 3328, elements: !3372)
!3372 = !{!3373}
!3373 = !DISubrange(count: 52)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !694, file: !259, line: 875, baseType: !3375, size: 1280, offset: 6592)
!3375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1010, size: 1280, elements: !813)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !694, file: !259, line: 877, baseType: !3377, size: 64, offset: 7872)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3378, size: 64)
!3378 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !259, line: 877, flags: DIFlagFwdDecl)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !694, file: !259, line: 880, baseType: !3380, size: 1088, offset: 7936)
!3380 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3381, line: 72, baseType: !3382)
!3381 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3381, line: 23, size: 1088, elements: !3383)
!3383 = !{!3384, !3385, !3386, !3387, !3388, !3391, !3392, !3393, !3394, !3419, !3420, !3421}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3382, file: !3381, line: 28, baseType: !43, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3382, file: !3381, line: 38, baseType: !749, size: 64, offset: 64)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3382, file: !3381, line: 40, baseType: !35, size: 64, offset: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3382, file: !3381, line: 43, baseType: !893, size: 320, offset: 192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3382, file: !3381, line: 44, baseType: !3389, size: 64, offset: 512)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3381, line: 44, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3382, file: !3381, line: 48, baseType: !35, size: 64, offset: 576)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3382, file: !3381, line: 59, baseType: !754, size: 256, offset: 640)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3382, file: !3381, line: 60, baseType: !355, size: 64, offset: 896)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3382, file: !3381, line: 61, baseType: !3395, size: 64, offset: 960)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3397)
!3397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3398, line: 13, size: 1216, elements: !3399)
!3398 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3399 = !{!3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3397, file: !3398, line: 14, baseType: !355, size: 64)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3397, file: !3398, line: 15, baseType: !35, size: 64, offset: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3397, file: !3398, line: 17, baseType: !35, size: 64, offset: 128)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3397, file: !3398, line: 17, baseType: !35, size: 64, offset: 192)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3397, file: !3398, line: 18, baseType: !35, size: 64, offset: 256)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3397, file: !3398, line: 18, baseType: !35, size: 64, offset: 320)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3397, file: !3398, line: 19, baseType: !2081, size: 64, offset: 384)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3397, file: !3398, line: 21, baseType: !144, size: 64, offset: 448)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3397, file: !3398, line: 23, baseType: !144, size: 64, offset: 512)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3397, file: !3398, line: 24, baseType: !144, size: 64, offset: 576)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3397, file: !3398, line: 25, baseType: !144, size: 64, offset: 640)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3397, file: !3398, line: 26, baseType: !144, size: 64, offset: 704)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3397, file: !3398, line: 27, baseType: !144, size: 64, offset: 768)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3397, file: !3398, line: 28, baseType: !144, size: 64, offset: 832)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3397, file: !3398, line: 29, baseType: !144, size: 64, offset: 896)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3397, file: !3398, line: 30, baseType: !144, size: 64, offset: 960)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3397, file: !3398, line: 31, baseType: !144, size: 64, offset: 1024)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3397, file: !3398, line: 32, baseType: !144, size: 64, offset: 1088)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3397, file: !3398, line: 33, baseType: !144, size: 64, offset: 1152)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3382, file: !3381, line: 63, baseType: !362, size: 32, offset: 1024)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3382, file: !3381, line: 69, baseType: !78, size: 16, offset: 1056)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3382, file: !3381, line: 70, baseType: !2372, size: 16, offset: 1072)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !259, line: 882, baseType: !35, size: 64, offset: 9024)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !694, file: !259, line: 885, baseType: !708, size: 32, offset: 9088)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !694, file: !259, line: 886, baseType: !3425, size: 64, offset: 9152)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !259, line: 732, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !694, file: !259, line: 901, baseType: !1035, size: 64, offset: 9216)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !694, file: !259, line: 904, baseType: !726, size: 64, offset: 9280)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !694, file: !259, line: 906, baseType: !3430, size: 64, offset: 9344)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !259, line: 906, flags: DIFlagFwdDecl)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !694, file: !259, line: 930, baseType: !362, size: 32, offset: 9408)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !694, file: !259, line: 933, baseType: !362, size: 32, offset: 9440)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !694, file: !259, line: 935, baseType: !3435, size: 64, offset: 9472)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !305, line: 103, size: 64, elements: !3436)
!3436 = !{!3437}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3435, file: !305, line: 104, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !305, line: 101, flags: DIFlagFwdDecl)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !694, file: !259, line: 940, baseType: !747, size: 64, offset: 9536)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !694, file: !259, line: 942, baseType: !2479, size: 256, offset: 9600)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !691, file: !259, line: 986, baseType: !3443, offset: 10240)
!3443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, elements: !212)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !349, file: !350, line: 882, baseType: !690, size: 64, offset: 9792)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !349, file: !350, line: 884, baseType: !367, size: 32, offset: 9856)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !349, file: !350, line: 885, baseType: !367, size: 32, offset: 9888)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !349, file: !350, line: 886, baseType: !367, size: 32, offset: 9920)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !349, file: !350, line: 888, baseType: !367, size: 32, offset: 9952)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !349, file: !350, line: 890, baseType: !35, size: 64, offset: 9984)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !349, file: !350, line: 893, baseType: !33, size: 32, offset: 10048)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !349, file: !350, line: 896, baseType: !33, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !349, file: !350, line: 897, baseType: !33, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !349, file: !350, line: 898, baseType: !33, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !349, file: !350, line: 899, baseType: !33, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !349, file: !350, line: 919, baseType: !33, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !349, file: !350, line: 922, baseType: !33, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !349, file: !350, line: 923, baseType: !33, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !349, file: !350, line: 925, baseType: !33, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !349, file: !350, line: 939, baseType: !33, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !349, file: !350, line: 941, baseType: !33, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !349, file: !350, line: 944, baseType: !33, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !349, file: !350, line: 956, baseType: !33, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !349, file: !350, line: 962, baseType: !33, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !349, file: !350, line: 966, baseType: !33, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !349, file: !350, line: 969, baseType: !35, size: 64, offset: 10176)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !349, file: !350, line: 971, baseType: !3467, size: 448, offset: 10240)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !299, line: 25, size: 448, elements: !3468)
!3468 = !{!3469, !3470, !3475}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3467, file: !299, line: 26, baseType: !35, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3467, file: !299, line: 27, baseType: !3471, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!144, !3474}
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, scope: !3467, file: !299, line: 28, baseType: !3476, size: 320, offset: 128)
!3476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3467, file: !299, line: 28, size: 320, elements: !3477)
!3477 = !{!3478, !3488, !3513}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3476, file: !299, line: 37, baseType: !3479, size: 320)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3476, file: !299, line: 30, size: 320, elements: !3480)
!3480 = !{!3481, !3483, !3484, !3485, !3486, !3487}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3479, file: !299, line: 31, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3479, file: !299, line: 32, baseType: !61, size: 32, offset: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3479, file: !299, line: 33, baseType: !61, size: 32, offset: 96)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3479, file: !299, line: 34, baseType: !61, size: 32, offset: 128)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3479, file: !299, line: 35, baseType: !43, size: 64, offset: 192)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3479, file: !299, line: 36, baseType: !3482, size: 64, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3476, file: !299, line: 47, baseType: !3489, size: 192)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3476, file: !299, line: 39, size: 192, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3512}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3489, file: !299, line: 40, baseType: !555, size: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3489, file: !299, line: 41, baseType: !298, size: 32, offset: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, scope: !3489, file: !299, line: 42, baseType: !3494, size: 64, offset: 64)
!3494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3489, file: !299, line: 42, size: 64, elements: !3495)
!3495 = !{!3496, !3504}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3494, file: !299, line: 43, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3499, line: 7, size: 128, elements: !3500)
!3499 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3500 = !{!3501, !3503}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3498, file: !3499, line: 8, baseType: !3502, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !557, line: 93, baseType: !430)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3498, file: !3499, line: 9, baseType: !430, size: 64, offset: 64)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3494, file: !299, line: 44, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3507, line: 7, size: 64, elements: !3508)
!3507 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3508 = !{!3509, !3511}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3506, file: !3507, line: 8, baseType: !3510, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3507, line: 5, baseType: !885)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3506, file: !3507, line: 9, baseType: !885, size: 32, offset: 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3489, file: !299, line: 46, baseType: !43, size: 64, offset: 128)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3476, file: !299, line: 55, baseType: !3514, size: 256)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3476, file: !299, line: 49, size: 256, elements: !3515)
!3515 = !{!3516, !3519, !3520, !3521, !3522}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3514, file: !299, line: 50, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !299, line: 14, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3514, file: !299, line: 51, baseType: !367, size: 32, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3514, file: !299, line: 52, baseType: !367, size: 32, offset: 96)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3514, file: !299, line: 53, baseType: !35, size: 64, offset: 128)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3514, file: !299, line: 54, baseType: !35, size: 64, offset: 192)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !349, file: !350, line: 973, baseType: !3524, size: 32, offset: 10688)
!3524 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !363, line: 27, baseType: !3525)
!3525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !557, line: 28, baseType: !367)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !349, file: !350, line: 974, baseType: !3524, size: 32, offset: 10720)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !349, file: !350, line: 978, baseType: !35, size: 64, offset: 10752)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !349, file: !350, line: 987, baseType: !348, size: 64, offset: 10816)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !349, file: !350, line: 990, baseType: !348, size: 64, offset: 10880)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !349, file: !350, line: 995, baseType: !417, size: 128, offset: 10944)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !349, file: !350, line: 996, baseType: !417, size: 128, offset: 11072)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !349, file: !350, line: 997, baseType: !348, size: 64, offset: 11200)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !349, file: !350, line: 1005, baseType: !417, size: 128, offset: 11264)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !349, file: !350, line: 1006, baseType: !417, size: 128, offset: 11392)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !349, file: !350, line: 1009, baseType: !796, size: 64, offset: 11520)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !349, file: !350, line: 1010, baseType: !3537, size: 512, offset: 11584)
!3537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 512, elements: !813)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !349, file: !350, line: 1011, baseType: !417, size: 128, offset: 12096)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !349, file: !350, line: 1012, baseType: !417, size: 128, offset: 12224)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !349, file: !350, line: 1014, baseType: !2228, size: 64, offset: 12352)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !349, file: !350, line: 1017, baseType: !2365, size: 64, offset: 12416)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !349, file: !350, line: 1020, baseType: !2365, size: 64, offset: 12480)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !349, file: !350, line: 1023, baseType: !355, size: 64, offset: 12544)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !349, file: !350, line: 1025, baseType: !43, size: 64, offset: 12608)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !349, file: !350, line: 1026, baseType: !43, size: 64, offset: 12672)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !349, file: !350, line: 1031, baseType: !43, size: 64, offset: 12736)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !349, file: !350, line: 1032, baseType: !3548, size: 192, offset: 12800)
!3548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !350, line: 324, size: 192, elements: !3549)
!3549 = !{!3550, !3551, !3552}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3548, file: !350, line: 326, baseType: !43, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3548, file: !350, line: 327, baseType: !43, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3548, file: !350, line: 328, baseType: !510, size: 32, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !349, file: !350, line: 1041, baseType: !35, size: 64, offset: 12992)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !349, file: !350, line: 1042, baseType: !35, size: 64, offset: 13056)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !349, file: !350, line: 1045, baseType: !43, size: 64, offset: 13120)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !349, file: !350, line: 1048, baseType: !43, size: 64, offset: 13184)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !349, file: !350, line: 1051, baseType: !35, size: 64, offset: 13248)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !349, file: !350, line: 1052, baseType: !35, size: 64, offset: 13312)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !349, file: !350, line: 1055, baseType: !3560, size: 640, offset: 13376)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3561, line: 132, size: 640, elements: !3562)
!3561 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3562 = !{!3563, !3569, !3570}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3560, file: !3561, line: 133, baseType: !3564, size: 576)
!3564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3565, size: 576, elements: !792)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3561, line: 117, size: 192, elements: !3566)
!3566 = !{!3567, !3568}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3565, file: !3561, line: 118, baseType: !43, size: 64)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3565, file: !3561, line: 119, baseType: !570, size: 128, offset: 64)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3560, file: !3561, line: 134, baseType: !33, size: 32, offset: 576)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3560, file: !3561, line: 135, baseType: !33, size: 32, offset: 608)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !349, file: !350, line: 1058, baseType: !3572, size: 448, offset: 14016)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3561, line: 144, size: 448, elements: !3573)
!3573 = !{!3574, !3575, !3576}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3572, file: !3561, line: 145, baseType: !734, size: 128, align: 64)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3572, file: !3561, line: 146, baseType: !754, size: 256, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3572, file: !3561, line: 147, baseType: !33, size: 32, offset: 384)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !349, file: !350, line: 1064, baseType: !844, size: 64, offset: 14464)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !349, file: !350, line: 1067, baseType: !844, size: 64, offset: 14528)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !349, file: !350, line: 1070, baseType: !844, size: 64, offset: 14592)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !349, file: !350, line: 1074, baseType: !877, size: 64, offset: 14656)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !349, file: !350, line: 1084, baseType: !3582, size: 128, offset: 14720)
!3582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2978)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !349, file: !350, line: 1086, baseType: !3584, size: 64, offset: 14848)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !350, line: 55, flags: DIFlagFwdDecl)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !349, file: !350, line: 1089, baseType: !3587, size: 64, offset: 14912)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3588, line: 12, size: 64, elements: !3589)
!3588 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3589 = !{!3590}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3587, file: !3588, line: 13, baseType: !3591, size: 64)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3588, line: 8, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !349, file: !350, line: 1090, baseType: !3594, size: 128, offset: 14976)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3595, line: 13, size: 128, elements: !3596)
!3595 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3596 = !{!3597}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3594, file: !3595, line: 14, baseType: !417, size: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !349, file: !350, line: 1097, baseType: !3599, size: 64, offset: 15104)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !350, line: 50, flags: DIFlagFwdDecl)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !349, file: !350, line: 1100, baseType: !3602, size: 64, offset: 15168)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !350, line: 1100, flags: DIFlagFwdDecl)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !349, file: !350, line: 1103, baseType: !3605, size: 64, offset: 15232)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !350, line: 53, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !349, file: !350, line: 1107, baseType: !3608, size: 64, offset: 15296)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !350, line: 56, flags: DIFlagFwdDecl)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !349, file: !350, line: 1110, baseType: !3611, size: 64, offset: 15360)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3613, line: 93, size: 8768, elements: !3614)
!3613 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3614 = !{!3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3662, !3671, !3672, !3674, !3675, !3676, !3679, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3717, !3718, !3725, !3735, !3738, !3739, !3742, !3743, !3744, !3745, !3746, !3747}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3612, file: !3613, line: 94, baseType: !357, size: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3612, file: !3613, line: 95, baseType: !362, size: 32, offset: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3612, file: !3613, line: 96, baseType: !367, size: 32, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3612, file: !3613, line: 97, baseType: !367, size: 32, offset: 96)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3612, file: !3613, line: 98, baseType: !417, size: 128, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3612, file: !3613, line: 100, baseType: !817, size: 192, offset: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3612, file: !3613, line: 103, baseType: !348, size: 64, offset: 448)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3612, file: !3613, line: 106, baseType: !3623, size: 192, offset: 512)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1040, line: 32, size: 192, elements: !3624)
!3624 = !{!3625, !3626}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3623, file: !1040, line: 33, baseType: !417, size: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3623, file: !1040, line: 34, baseType: !3627, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3628, line: 25, baseType: !3629)
!3628 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3628, line: 23, size: 64, elements: !3630)
!3630 = !{!3631}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3629, file: !3628, line: 24, baseType: !641, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3612, file: !3613, line: 109, baseType: !804, size: 64, offset: 704)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3612, file: !3613, line: 112, baseType: !367, size: 32, offset: 768)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3612, file: !3613, line: 114, baseType: !367, size: 32, offset: 800)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3612, file: !3613, line: 115, baseType: !348, size: 64, offset: 832)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3612, file: !3613, line: 118, baseType: !367, size: 32, offset: 896)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3612, file: !3613, line: 119, baseType: !33, size: 32, offset: 928)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3612, file: !3613, line: 121, baseType: !3639, size: 64, offset: 960)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3613, line: 80, size: 448, elements: !3641)
!3641 = !{!3642, !3643, !3649}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3640, file: !3613, line: 81, baseType: !362, size: 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3640, file: !3613, line: 82, baseType: !3644, size: 128, offset: 64)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3613, line: 75, size: 128, elements: !3645)
!3645 = !{!3646, !3647}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3644, file: !3613, line: 76, baseType: !348, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3644, file: !3613, line: 77, baseType: !3648, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3640, file: !3613, line: 83, baseType: !1573, size: 256, offset: 192)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3612, file: !3613, line: 132, baseType: !33, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3612, file: !3613, line: 133, baseType: !33, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3612, file: !3613, line: 138, baseType: !33, size: 32, offset: 1056)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3612, file: !3613, line: 139, baseType: !417, size: 128, offset: 1088)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3612, file: !3613, line: 142, baseType: !485, size: 512, offset: 1216)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3612, file: !3613, line: 143, baseType: !493, size: 64, offset: 1728)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3612, file: !3613, line: 150, baseType: !3657, size: 256, offset: 1792)
!3657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3658, size: 256, elements: !2355)
!3658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3613, line: 38, size: 128, elements: !3659)
!3659 = !{!3660, !3661}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3658, file: !3613, line: 39, baseType: !43, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3658, file: !3613, line: 40, baseType: !43, size: 64, offset: 64)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3612, file: !3613, line: 156, baseType: !3663, size: 192, offset: 2048)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3613, line: 66, size: 192, elements: !3664)
!3664 = !{!3665}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3663, file: !3613, line: 67, baseType: !3666, size: 192)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3613, line: 47, size: 192, elements: !3667)
!3667 = !{!3668, !3669, !3670}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3666, file: !3613, line: 48, baseType: !749, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3666, file: !3613, line: 49, baseType: !749, size: 64, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3666, file: !3613, line: 50, baseType: !749, size: 64, offset: 128)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3612, file: !3613, line: 160, baseType: !3560, size: 640, offset: 2240)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3612, file: !3613, line: 163, baseType: !3673, size: 256, offset: 2880)
!3673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 256, elements: !813)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3612, file: !3613, line: 169, baseType: !796, size: 64, offset: 3136)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3612, file: !3613, line: 172, baseType: !367, size: 32, offset: 3200)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3612, file: !3613, line: 174, baseType: !3677, size: 64, offset: 3264)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3613, line: 174, flags: DIFlagFwdDecl)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3612, file: !3613, line: 185, baseType: !3680, size: 64, offset: 3328)
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !560, line: 860, baseType: !3681)
!3681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !560, line: 853, size: 64, elements: !3682)
!3682 = !{!3683, !3684}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3681, file: !560, line: 858, baseType: !1079, size: 32)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3681, file: !560, line: 859, baseType: !708, size: 32, offset: 32)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3612, file: !3613, line: 186, baseType: !43, size: 64, offset: 3392)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3612, file: !3613, line: 186, baseType: !43, size: 64, offset: 3456)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3612, file: !3613, line: 186, baseType: !43, size: 64, offset: 3520)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3612, file: !3613, line: 186, baseType: !43, size: 64, offset: 3584)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3612, file: !3613, line: 187, baseType: !43, size: 64, offset: 3648)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3612, file: !3613, line: 188, baseType: !43, size: 64, offset: 3712)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3612, file: !3613, line: 189, baseType: !3548, size: 192, offset: 3776)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3612, file: !3613, line: 190, baseType: !35, size: 64, offset: 3968)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3612, file: !3613, line: 190, baseType: !35, size: 64, offset: 4032)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3612, file: !3613, line: 190, baseType: !35, size: 64, offset: 4096)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3612, file: !3613, line: 190, baseType: !35, size: 64, offset: 4160)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3612, file: !3613, line: 191, baseType: !35, size: 64, offset: 4224)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3612, file: !3613, line: 191, baseType: !35, size: 64, offset: 4288)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3612, file: !3613, line: 191, baseType: !35, size: 64, offset: 4352)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3612, file: !3613, line: 191, baseType: !35, size: 64, offset: 4416)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3612, file: !3613, line: 192, baseType: !35, size: 64, offset: 4480)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3612, file: !3613, line: 192, baseType: !35, size: 64, offset: 4544)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3612, file: !3613, line: 192, baseType: !35, size: 64, offset: 4608)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3612, file: !3613, line: 192, baseType: !35, size: 64, offset: 4672)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3612, file: !3613, line: 193, baseType: !35, size: 64, offset: 4736)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3612, file: !3613, line: 193, baseType: !35, size: 64, offset: 4800)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3612, file: !3613, line: 194, baseType: !3707, size: 448, offset: 4864)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3708, line: 12, size: 448, elements: !3709)
!3708 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3709 = !{!3710, !3711, !3712, !3713, !3714, !3715, !3716}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3707, file: !3708, line: 15, baseType: !43, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3707, file: !3708, line: 17, baseType: !43, size: 64, offset: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3707, file: !3708, line: 19, baseType: !43, size: 64, offset: 128)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3707, file: !3708, line: 21, baseType: !43, size: 64, offset: 192)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3707, file: !3708, line: 29, baseType: !43, size: 64, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3707, file: !3708, line: 35, baseType: !43, size: 64, offset: 320)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3707, file: !3708, line: 44, baseType: !43, size: 64, offset: 384)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3612, file: !3613, line: 202, baseType: !47, size: 64, offset: 5312)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3612, file: !3613, line: 213, baseType: !3719, size: 2048, offset: 5376)
!3719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3720, size: 2048, elements: !2978)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3721, line: 43, size: 128, elements: !3722)
!3721 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3722 = !{!3723, !3724}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3720, file: !3721, line: 44, baseType: !1266, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3720, file: !3721, line: 45, baseType: !1266, size: 64, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3612, file: !3613, line: 216, baseType: !3726, size: 448, offset: 7424)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3613, line: 30, size: 448, elements: !3727)
!3727 = !{!3728, !3729, !3730, !3731, !3732, !3733, !3734}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3726, file: !3613, line: 31, baseType: !367, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3726, file: !3613, line: 32, baseType: !144, size: 64, offset: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3726, file: !3613, line: 33, baseType: !35, size: 64, offset: 128)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3726, file: !3613, line: 34, baseType: !43, size: 64, offset: 192)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3726, file: !3613, line: 34, baseType: !43, size: 64, offset: 256)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3726, file: !3613, line: 35, baseType: !35, size: 64, offset: 320)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3726, file: !3613, line: 35, baseType: !35, size: 64, offset: 384)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3612, file: !3613, line: 219, baseType: !3736, size: 64, offset: 7872)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3613, line: 219, flags: DIFlagFwdDecl)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3612, file: !3613, line: 222, baseType: !33, size: 32, offset: 7936)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3612, file: !3613, line: 223, baseType: !3740, size: 64, offset: 8000)
!3740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3741, size: 64)
!3741 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3613, line: 223, flags: DIFlagFwdDecl)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3612, file: !3613, line: 230, baseType: !949, size: 8, offset: 8064)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3612, file: !3613, line: 231, baseType: !921, size: 16, offset: 8080)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3612, file: !3613, line: 232, baseType: !921, size: 16, offset: 8096)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3612, file: !3613, line: 234, baseType: !690, size: 64, offset: 8128)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3612, file: !3613, line: 237, baseType: !754, size: 256, offset: 8192)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3612, file: !3613, line: 243, baseType: !893, size: 320, offset: 8448)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !349, file: !350, line: 1111, baseType: !3749, size: 64, offset: 15424)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3613, line: 20, size: 16640, elements: !3751)
!3751 = !{!3752, !3753, !3754, !3755}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3750, file: !3613, line: 21, baseType: !708, size: 32)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3750, file: !3613, line: 22, baseType: !357, size: 32, offset: 32)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3750, file: !3613, line: 23, baseType: !817, size: 192, offset: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3750, file: !3613, line: 24, baseType: !3756, size: 16384, offset: 256)
!3756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3757, size: 16384, elements: !107)
!3757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1040, line: 51, size: 256, elements: !3758)
!3758 = !{!3759}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3757, file: !1040, line: 52, baseType: !3760, size: 256)
!3760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1040, line: 37, size: 256, elements: !3761)
!3761 = !{!3762, !3769, !3770, !3774}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3760, file: !1040, line: 39, baseType: !3763, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3764, line: 83, baseType: !3765)
!3764 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3764, line: 82, baseType: !3767)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{null, !367}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3760, file: !1040, line: 40, baseType: !35, size: 64, offset: 64)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3760, file: !1040, line: 46, baseType: !3771, size: 64, offset: 128)
!3771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3764, line: 86, baseType: !3772)
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3764, line: 85, baseType: !2588)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3760, file: !1040, line: 48, baseType: !3627, size: 64, offset: 192)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !349, file: !350, line: 1112, baseType: !3627, size: 64, offset: 15488)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !349, file: !350, line: 1113, baseType: !3627, size: 64, offset: 15552)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !349, file: !350, line: 1115, baseType: !3627, size: 64, offset: 15616)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !349, file: !350, line: 1116, baseType: !3623, size: 192, offset: 15680)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !349, file: !350, line: 1117, baseType: !35, size: 64, offset: 15872)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !349, file: !350, line: 1118, baseType: !1264, size: 64, offset: 15936)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !349, file: !350, line: 1119, baseType: !33, size: 32, offset: 16000)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !349, file: !350, line: 1121, baseType: !737, size: 64, offset: 16064)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !349, file: !350, line: 1125, baseType: !3784, size: 64, offset: 16128)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !350, line: 43, flags: DIFlagFwdDecl)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !349, file: !350, line: 1127, baseType: !834, size: 32, offset: 16192)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !349, file: !350, line: 1128, baseType: !33, size: 32, offset: 16224)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !349, file: !350, line: 1130, baseType: !3789, size: 128, offset: 16256)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3790, line: 37, size: 128, elements: !3791)
!3790 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3791 = !{!3792, !3793, !3794}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3789, file: !3790, line: 38, baseType: !367, size: 32)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3789, file: !3790, line: 39, baseType: !362, size: 32, offset: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3789, file: !3790, line: 40, baseType: !3795, size: 64, offset: 64)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3790, line: 24, flags: DIFlagFwdDecl)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !349, file: !350, line: 1131, baseType: !3798, size: 256, offset: 16384)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3799, line: 12, size: 256, elements: !3800)
!3799 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3800 = !{!3801, !3802, !3803, !3804}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3798, file: !3799, line: 13, baseType: !962, size: 64)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3798, file: !3799, line: 14, baseType: !35, size: 64, offset: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3798, file: !3799, line: 15, baseType: !35, size: 64, offset: 128)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3798, file: !3799, line: 16, baseType: !949, size: 8, offset: 192)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !349, file: !350, line: 1134, baseType: !43, size: 64, offset: 16640)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !349, file: !350, line: 1135, baseType: !43, size: 64, offset: 16704)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !349, file: !350, line: 1138, baseType: !708, size: 32, offset: 16768)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !349, file: !350, line: 1141, baseType: !510, size: 32, offset: 16800)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !349, file: !350, line: 1143, baseType: !3810, size: 64, offset: 16832)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !350, line: 735, size: 64, elements: !3811)
!3811 = !{!3812}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3810, file: !350, line: 736, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !349, file: !350, line: 1147, baseType: !573, size: 128, offset: 16896)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !349, file: !350, line: 1149, baseType: !348, size: 64, offset: 17024)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !349, file: !350, line: 1151, baseType: !3817, size: 64, offset: 17088)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !350, line: 1151, flags: DIFlagFwdDecl)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !349, file: !350, line: 1188, baseType: !355, size: 64, offset: 17152)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !349, file: !350, line: 1191, baseType: !3821, size: 64, offset: 17216)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !350, line: 44, flags: DIFlagFwdDecl)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !349, file: !350, line: 1194, baseType: !3824, size: 64, offset: 17280)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !350, line: 45, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !349, file: !350, line: 1197, baseType: !3827, size: 64, offset: 17344)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !350, line: 61, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !349, file: !350, line: 1199, baseType: !3830, size: 64, offset: 17408)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3832, line: 99, size: 128, elements: !3833)
!3832 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3833 = !{!3834, !3835, !3836}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3831, file: !3832, line: 100, baseType: !747, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3831, file: !3832, line: 101, baseType: !362, size: 32, offset: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3831, file: !3832, line: 103, baseType: !80, size: 16, offset: 96)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !349, file: !350, line: 1202, baseType: !3838, size: 64, offset: 17472)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !350, line: 48, flags: DIFlagFwdDecl)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !349, file: !350, line: 1205, baseType: !35, size: 64, offset: 17536)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !349, file: !350, line: 1206, baseType: !3842, size: 64, offset: 17600)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1040, line: 14, baseType: !3844)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1040, line: 12, size: 384, elements: !3845)
!3845 = !{!3846}
!3846 = !DIDerivedType(tag: DW_TAG_member, scope: !3844, file: !1040, line: 13, baseType: !3847, size: 384)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3844, file: !1040, line: 13, size: 384, elements: !3848)
!3848 = !{!3849, !3850, !3851, !3852}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3847, file: !1040, line: 13, baseType: !367, size: 32)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3847, file: !1040, line: 13, baseType: !367, size: 32, offset: 32)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3847, file: !1040, line: 13, baseType: !367, size: 32, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3847, file: !1040, line: 13, baseType: !3853, size: 256, offset: 128)
!3853 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3854, line: 37, size: 256, elements: !3855)
!3854 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3855 = !{!3856, !3861, !3874, !3880, !3889, !3916, !3921}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3853, file: !3854, line: 42, baseType: !3857, size: 64)
!3857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3853, file: !3854, line: 39, size: 64, elements: !3858)
!3858 = !{!3859, !3860}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3857, file: !3854, line: 40, baseType: !3525, size: 32)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3857, file: !3854, line: 41, baseType: !840, size: 32, offset: 32)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3853, file: !3854, line: 50, baseType: !3862, size: 192)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3853, file: !3854, line: 45, size: 192, elements: !3863)
!3863 = !{!3864, !3866, !3867, !3873}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3862, file: !3854, line: 46, baseType: !3865, size: 32)
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !557, line: 95, baseType: !367)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3862, file: !3854, line: 47, baseType: !367, size: 32, offset: 32)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3862, file: !3854, line: 48, baseType: !3868, size: 64, offset: 64)
!3868 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3854, line: 11, baseType: !3869)
!3869 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3854, line: 8, size: 64, elements: !3870)
!3870 = !{!3871, !3872}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3869, file: !3854, line: 9, baseType: !367, size: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3869, file: !3854, line: 10, baseType: !355, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3862, file: !3854, line: 49, baseType: !367, size: 32, offset: 128)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3853, file: !3854, line: 57, baseType: !3875, size: 128)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3853, file: !3854, line: 53, size: 128, elements: !3876)
!3876 = !{!3877, !3878, !3879}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3875, file: !3854, line: 54, baseType: !3525, size: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3875, file: !3854, line: 55, baseType: !840, size: 32, offset: 32)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3875, file: !3854, line: 56, baseType: !3868, size: 64, offset: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3853, file: !3854, line: 66, baseType: !3881, size: 256)
!3881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3853, file: !3854, line: 60, size: 256, elements: !3882)
!3882 = !{!3883, !3884, !3885, !3886, !3888}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3881, file: !3854, line: 61, baseType: !3525, size: 32)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3881, file: !3854, line: 62, baseType: !840, size: 32, offset: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3881, file: !3854, line: 63, baseType: !367, size: 32, offset: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3881, file: !3854, line: 64, baseType: !3887, size: 64, offset: 128)
!3887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !557, line: 94, baseType: !1263)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3881, file: !3854, line: 65, baseType: !3887, size: 64, offset: 192)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3853, file: !3854, line: 105, baseType: !3890, size: 256)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3853, file: !3854, line: 69, size: 256, elements: !3891)
!3891 = !{!3892, !3893}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3890, file: !3854, line: 70, baseType: !355, size: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, scope: !3890, file: !3854, line: 79, baseType: !3894, size: 192, offset: 64)
!3894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3890, file: !3854, line: 79, size: 192, elements: !3895)
!3895 = !{!3896, !3897, !3898, !3905, !3910}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3894, file: !3854, line: 81, baseType: !367, size: 32)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3894, file: !3854, line: 86, baseType: !921, size: 16)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3894, file: !3854, line: 92, baseType: !3899, size: 192)
!3899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3894, file: !3854, line: 88, size: 192, elements: !3900)
!3900 = !{!3901, !3903, !3904}
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3899, file: !3854, line: 89, baseType: !3902, size: 64)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !551)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3899, file: !3854, line: 90, baseType: !355, size: 64, offset: 64)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3899, file: !3854, line: 91, baseType: !355, size: 64, offset: 128)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3894, file: !3854, line: 97, baseType: !3906, size: 96)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3894, file: !3854, line: 94, size: 96, elements: !3907)
!3907 = !{!3908, !3909}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3906, file: !3854, line: 95, baseType: !3902, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3906, file: !3854, line: 96, baseType: !62, size: 32, offset: 64)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3894, file: !3854, line: 103, baseType: !3911, size: 128)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3894, file: !3854, line: 99, size: 128, elements: !3912)
!3912 = !{!3913, !3914, !3915}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3911, file: !3854, line: 100, baseType: !35, size: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3911, file: !3854, line: 101, baseType: !62, size: 32, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3911, file: !3854, line: 102, baseType: !62, size: 32, offset: 96)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3853, file: !3854, line: 111, baseType: !3917, size: 128)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3853, file: !3854, line: 108, size: 128, elements: !3918)
!3918 = !{!3919, !3920}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3917, file: !3854, line: 109, baseType: !144, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3917, file: !3854, line: 110, baseType: !367, size: 32, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3853, file: !3854, line: 118, baseType: !3922, size: 128)
!3922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3853, file: !3854, line: 114, size: 128, elements: !3923)
!3923 = !{!3924, !3925, !3926}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3922, file: !3854, line: 115, baseType: !355, size: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3922, file: !3854, line: 116, baseType: !367, size: 32, offset: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3922, file: !3854, line: 117, baseType: !33, size: 32, offset: 96)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !349, file: !350, line: 1208, baseType: !3707, size: 448, offset: 17664)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !349, file: !350, line: 1215, baseType: !43, size: 64, offset: 18112)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !349, file: !350, line: 1217, baseType: !43, size: 64, offset: 18176)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !349, file: !350, line: 1219, baseType: !43, size: 64, offset: 18240)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !349, file: !350, line: 1223, baseType: !3932, size: 64, offset: 18304)
!3932 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3933, line: 99, baseType: !3934)
!3933 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3934 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3933, line: 99, size: 64, elements: !3935)
!3935 = !{!3936}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3934, file: !3933, line: 99, baseType: !641, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !349, file: !350, line: 1225, baseType: !1079, size: 32, offset: 18368)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !349, file: !350, line: 1226, baseType: !367, size: 32, offset: 18400)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !349, file: !350, line: 1227, baseType: !367, size: 32, offset: 18432)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !349, file: !350, line: 1231, baseType: !3941, size: 64, offset: 18496)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !350, line: 1231, flags: DIFlagFwdDecl)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !349, file: !350, line: 1233, baseType: !417, size: 128, offset: 18560)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !349, file: !350, line: 1240, baseType: !3945, size: 64, offset: 18688)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !350, line: 62, flags: DIFlagFwdDecl)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !349, file: !350, line: 1242, baseType: !3948, size: 64, offset: 18752)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !3950, line: 392, size: 96, elements: !3951)
!3950 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!3951 = !{!3952, !3958, !3960}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3949, file: !3950, line: 393, baseType: !3953, size: 32)
!3953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !3950, line: 388, size: 32, elements: !3954)
!3954 = !{!3955}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3953, file: !3950, line: 389, baseType: !3956, size: 32)
!3956 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !3957, line: 46, baseType: !61)
!3957 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !3949, file: !3950, line: 394, baseType: !3959, size: 32, offset: 32)
!3959 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !3957, line: 42, baseType: !885)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !3949, file: !3950, line: 395, baseType: !3956, size: 32, offset: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !349, file: !350, line: 1244, baseType: !417, size: 128, offset: 18816)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !349, file: !350, line: 1245, baseType: !3963, size: 64, offset: 18944)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !350, line: 51, flags: DIFlagFwdDecl)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !349, file: !350, line: 1246, baseType: !754, size: 256, offset: 19008)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !349, file: !350, line: 1247, baseType: !33, size: 32, offset: 19264)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !349, file: !350, line: 1250, baseType: !3968, size: 64, offset: 19328)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !350, line: 57, flags: DIFlagFwdDecl)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !349, file: !350, line: 1251, baseType: !754, size: 256, offset: 19392)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !349, file: !350, line: 1252, baseType: !417, size: 128, offset: 19648)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !349, file: !350, line: 1259, baseType: !1701, size: 64, offset: 19776)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !349, file: !350, line: 1260, baseType: !921, size: 16, offset: 19840)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !349, file: !350, line: 1261, baseType: !921, size: 16, offset: 19856)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !349, file: !350, line: 1314, baseType: !3976, size: 64, offset: 19904)
!3976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3977, size: 64)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3978, line: 62, size: 256, align: 256, elements: !3979)
!3978 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3979 = !{!3980, !3981, !3982, !3983, !3984, !3985, !3986}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3977, file: !3978, line: 75, baseType: !62, size: 32)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3977, file: !3978, line: 90, baseType: !62, size: 32, offset: 32)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3977, file: !3978, line: 112, baseType: !45, size: 64, offset: 64)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3977, file: !3978, line: 132, baseType: !62, size: 32, offset: 128)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3977, file: !3978, line: 140, baseType: !62, size: 32, offset: 160)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3977, file: !3978, line: 149, baseType: !62, size: 32, offset: 192)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3977, file: !3978, line: 154, baseType: !3987, offset: 224)
!3987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !212)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !349, file: !350, line: 1315, baseType: !61, size: 32, offset: 19968)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !349, file: !350, line: 1316, baseType: !61, size: 32, offset: 20000)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !349, file: !350, line: 1321, baseType: !35, size: 64, offset: 20032)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !349, file: !350, line: 1325, baseType: !367, size: 32, offset: 20096)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !349, file: !350, line: 1326, baseType: !367, size: 32, offset: 20128)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !349, file: !350, line: 1327, baseType: !367, size: 32, offset: 20160)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !349, file: !350, line: 1328, baseType: !367, size: 32, offset: 20192)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !349, file: !350, line: 1329, baseType: !734, size: 128, align: 64, offset: 20224)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !349, file: !350, line: 1332, baseType: !3997, size: 128, offset: 20352)
!3997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3998, line: 51, size: 128, elements: !3999)
!3998 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3999 = !{!4000, !4005, !4006}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3997, file: !3998, line: 60, baseType: !4001, size: 64)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4002, line: 7, size: 64, elements: !4003)
!4002 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4003 = !{!4004}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4001, file: !4002, line: 12, baseType: !638, size: 64)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3997, file: !3998, line: 63, baseType: !949, size: 8, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3997, file: !3998, line: 70, baseType: !949, size: 8, offset: 72)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !349, file: !350, line: 1335, baseType: !3216, size: 64, offset: 20480)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !349, file: !350, line: 1337, baseType: !4009, size: 128, offset: 20544)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3998, line: 39, size: 128, elements: !4010)
!4010 = !{!4011, !4012, !4013}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4009, file: !3998, line: 40, baseType: !1488, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4009, file: !3998, line: 42, baseType: !62, size: 32, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4009, file: !3998, line: 43, baseType: !62, size: 32, offset: 96)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !349, file: !350, line: 1340, baseType: !4015, size: 64, offset: 20672)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !350, line: 69, flags: DIFlagFwdDecl)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !349, file: !350, line: 1351, baseType: !367, size: 32, offset: 20736)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !349, file: !350, line: 1352, baseType: !367, size: 32, offset: 20768)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !349, file: !350, line: 1354, baseType: !35, size: 64, offset: 20800)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !349, file: !350, line: 1364, baseType: !43, size: 64, offset: 20864)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !349, file: !350, line: 1365, baseType: !43, size: 64, offset: 20928)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !349, file: !350, line: 1412, baseType: !35, size: 64, offset: 20992)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !349, file: !350, line: 1453, baseType: !4024, size: 64, offset: 21056)
!4024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4025, size: 64)
!4025 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !350, line: 1453, flags: DIFlagFwdDecl)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !349, file: !350, line: 1457, baseType: !4027, size: 64, offset: 21120)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !305, line: 61, size: 576, elements: !4029)
!4029 = !{!4030, !4031, !4050, !4053, !4054, !4087, !4097}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4028, file: !305, line: 62, baseType: !304, size: 32)
!4031 = !DIDerivedType(tag: DW_TAG_member, scope: !4028, file: !305, line: 64, baseType: !4032, size: 192, offset: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4028, file: !305, line: 64, size: 192, elements: !4033)
!4033 = !{!4034, !4045}
!4034 = !DIDerivedType(tag: DW_TAG_member, scope: !4032, file: !305, line: 65, baseType: !4035, size: 192)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4032, file: !305, line: 65, size: 192, elements: !4036)
!4036 = !{!4037, !4044}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4035, file: !305, line: 66, baseType: !4038, size: 128)
!4038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4039, line: 50, size: 128, elements: !4040)
!4039 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4040 = !{!4041, !4042, !4043}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4038, file: !4039, line: 52, baseType: !35, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4038, file: !4039, line: 54, baseType: !33, size: 32, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4038, file: !4039, line: 55, baseType: !33, size: 32, offset: 96)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4035, file: !305, line: 67, baseType: !35, size: 64, offset: 128)
!4045 = !DIDerivedType(tag: DW_TAG_member, scope: !4032, file: !305, line: 70, baseType: !4046, size: 192)
!4046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4032, file: !305, line: 70, size: 192, elements: !4047)
!4047 = !{!4048, !4049}
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4046, file: !305, line: 71, baseType: !734, size: 128, align: 64)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4046, file: !305, line: 72, baseType: !35, size: 64, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4028, file: !305, line: 76, baseType: !4051, size: 64, offset: 256)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !305, line: 76, flags: DIFlagFwdDecl)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4028, file: !305, line: 77, baseType: !35, size: 64, offset: 320)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4028, file: !305, line: 79, baseType: !4055, size: 64, offset: 384)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4039, line: 25, size: 256, elements: !4057)
!4057 = !{!4058, !4064, !4068}
!4058 = !DIDerivedType(tag: DW_TAG_member, scope: !4056, file: !4039, line: 26, baseType: !4059, size: 128)
!4059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4056, file: !4039, line: 26, size: 128, elements: !4060)
!4060 = !{!4061, !4063}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4059, file: !4039, line: 27, baseType: !4062, size: 128)
!4062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 128, elements: !2978)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4059, file: !4039, line: 28, baseType: !4062, size: 128)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4056, file: !4039, line: 31, baseType: !4065, size: 64, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4067)
!4067 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4039, line: 23, flags: DIFlagFwdDecl)
!4068 = !DIDerivedType(tag: DW_TAG_member, scope: !4056, file: !4039, line: 33, baseType: !4069, size: 64, offset: 192)
!4069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4056, file: !4039, line: 33, size: 64, elements: !4070)
!4070 = !{!4071, !4077, !4082}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4069, file: !4039, line: 38, baseType: !4072, size: 64)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4069, file: !4039, line: 34, size: 64, elements: !4073)
!4073 = !{!4074, !4075, !4076}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4072, file: !4039, line: 35, baseType: !885, size: 32)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4072, file: !4039, line: 36, baseType: !130, size: 8, offset: 32)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4072, file: !4039, line: 37, baseType: !130, size: 8, offset: 40)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4069, file: !4039, line: 42, baseType: !4078, size: 16)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4069, file: !4039, line: 39, size: 16, elements: !4079)
!4079 = !{!4080, !4081}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4078, file: !4039, line: 40, baseType: !130, size: 8)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4078, file: !4039, line: 41, baseType: !130, size: 8, offset: 8)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4069, file: !4039, line: 46, baseType: !4083, size: 16)
!4083 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4069, file: !4039, line: 43, size: 16, elements: !4084)
!4084 = !{!4085, !4086}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4083, file: !4039, line: 44, baseType: !130, size: 8)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4083, file: !4039, line: 45, baseType: !130, size: 8, offset: 8)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4028, file: !305, line: 81, baseType: !4088, size: 64, offset: 448)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !305, line: 85, size: 384, elements: !4090)
!4090 = !{!4091, !4092, !4093, !4094, !4095, !4096}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4089, file: !305, line: 86, baseType: !4051, size: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4089, file: !305, line: 87, baseType: !35, size: 64, offset: 64)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4089, file: !305, line: 88, baseType: !35, size: 64, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4089, file: !305, line: 89, baseType: !35, size: 64, offset: 192)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4089, file: !305, line: 90, baseType: !949, size: 8, offset: 256)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4089, file: !305, line: 92, baseType: !4088, size: 64, offset: 320)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4028, file: !305, line: 82, baseType: !33, size: 32, offset: 512)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !349, file: !350, line: 1463, baseType: !4099, offset: 21184)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !350, line: 739, elements: !719)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !349, file: !350, line: 1470, baseType: !734, size: 128, align: 64, offset: 21184)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !349, file: !350, line: 1471, baseType: !357, size: 32, offset: 21312)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !349, file: !350, line: 1472, baseType: !367, size: 32, offset: 21344)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !349, file: !350, line: 1474, baseType: !348, size: 64, offset: 21376)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !349, file: !350, line: 1475, baseType: !2467, size: 320, offset: 21440)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !349, file: !350, line: 1478, baseType: !4106, size: 64, offset: 21760)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !350, line: 1478, flags: DIFlagFwdDecl)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !349, file: !350, line: 1482, baseType: !357, size: 32, offset: 21824)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !349, file: !350, line: 1489, baseType: !355, size: 64, offset: 21888)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !349, file: !350, line: 1504, baseType: !355, size: 64, offset: 21952)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !349, file: !350, line: 1505, baseType: !45, size: 64, offset: 22016)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !349, file: !350, line: 1506, baseType: !43, size: 64, offset: 22080)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !349, file: !350, line: 1507, baseType: !45, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !349, file: !350, line: 1508, baseType: !45, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !349, file: !350, line: 1509, baseType: !45, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !349, file: !350, line: 1510, baseType: !734, size: 128, align: 64, offset: 22208)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !349, file: !350, line: 1511, baseType: !367, size: 32, offset: 22336)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !349, file: !350, line: 1515, baseType: !4119, size: 64, offset: 22400)
!4119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !377, line: 56, size: 64, elements: !4120)
!4120 = !{!4121}
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4119, file: !377, line: 57, baseType: !380, size: 64)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !349, file: !350, line: 1518, baseType: !4119, size: 64, offset: 22464)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !349, file: !350, line: 1528, baseType: !734, size: 128, align: 64, offset: 22528)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !349, file: !350, line: 1552, baseType: !4125, size: 35328, offset: 23040)
!4125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4126, line: 430, size: 35328, elements: !4127)
!4126 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4127 = !{!4128, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4157, !4158, !4159, !4160, !4161, !4162, !4165, !4166, !4167, !4168}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4125, file: !4126, line: 432, baseType: !4129, size: 192)
!4129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4130, size: 192, elements: !792)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4131, line: 16, size: 64, elements: !4132)
!4131 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4132 = !{!4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4130, file: !4131, line: 17, baseType: !78, size: 16)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4130, file: !4131, line: 18, baseType: !78, size: 16, offset: 16)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4130, file: !4131, line: 19, baseType: !78, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4130, file: !4131, line: 19, baseType: !78, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4130, file: !4131, line: 19, baseType: !78, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4130, file: !4131, line: 19, baseType: !78, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4130, file: !4131, line: 19, baseType: !78, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4130, file: !4131, line: 20, baseType: !78, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4130, file: !4131, line: 20, baseType: !78, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4130, file: !4131, line: 20, baseType: !78, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4130, file: !4131, line: 20, baseType: !78, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4130, file: !4131, line: 20, baseType: !78, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4130, file: !4131, line: 20, baseType: !78, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4125, file: !4126, line: 436, baseType: !35, size: 64, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4125, file: !4126, line: 440, baseType: !80, size: 16, offset: 256)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4125, file: !4126, line: 441, baseType: !80, size: 16, offset: 272)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4125, file: !4126, line: 442, baseType: !80, size: 16, offset: 288)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4125, file: !4126, line: 443, baseType: !80, size: 16, offset: 304)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4125, file: !4126, line: 447, baseType: !35, size: 64, offset: 320)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4125, file: !4126, line: 448, baseType: !35, size: 64, offset: 384)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4125, file: !4126, line: 459, baseType: !4154, size: 256, offset: 448)
!4154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4155, size: 256, elements: !813)
!4155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4156, size: 64)
!4156 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4126, line: 428, flags: DIFlagFwdDecl)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4125, file: !4126, line: 461, baseType: !35, size: 64, offset: 704)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4125, file: !4126, line: 463, baseType: !35, size: 64, offset: 768)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4125, file: !4126, line: 465, baseType: !35, size: 64, offset: 832)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4125, file: !4126, line: 466, baseType: !35, size: 64, offset: 896)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4125, file: !4126, line: 467, baseType: !35, size: 64, offset: 960)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4125, file: !4126, line: 473, baseType: !4163, size: 64, offset: 1024)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4126, line: 10, flags: DIFlagFwdDecl)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4125, file: !4126, line: 480, baseType: !35, size: 64, offset: 1088)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4125, file: !4126, line: 482, baseType: !33, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4125, file: !4126, line: 491, baseType: !61, size: 32, offset: 1184)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4125, file: !4126, line: 501, baseType: !29, size: 33792, offset: 1536)
!4169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !363, line: 42, baseType: !35)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4173, size: 64)
!4173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4174)
!4174 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4175)
!4175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4176, size: 64)
!4176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !2430, line: 26, size: 192, elements: !4177)
!4177 = !{!4178, !4179, !4180}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4176, file: !2430, line: 27, baseType: !355, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4176, file: !2430, line: 28, baseType: !355, size: 64, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !4176, file: !2430, line: 29, baseType: !367, size: 32, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !4)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !144)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!4192 = !{!0, !7, !12, !17, !23, !4193, !4195, !4221, !4223}
!4193 = !DIGlobalVariableExpression(var: !4194, expr: !DIExpression())
!4194 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace357", scope: !25, file: !19, line: 57, type: !355, isLocal: true, isDefinition: true)
!4195 = !DIGlobalVariableExpression(var: !4196, expr: !DIExpression())
!4196 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_x86_fpu_xstate_check_failed404", scope: !4197, file: !19, line: 87, type: !355, isLocal: true, isDefinition: true)
!4197 = distinct !DISubprogram(name: "trace_x86_fpu_xstate_check_failed", scope: !19, file: !19, line: 87, type: !26, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4198)
!4198 = !{!4199, !4200, !4203, !4206, !4208, !4210, !4213, !4216, !4218, !4219}
!4199 = !DILocalVariable(name: "fpu", arg: 1, scope: !4197, file: !19, line: 87, type: !28)
!4200 = !DILocalVariable(name: "__idx", scope: !4201, file: !19, line: 87, type: !367)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !19, line: 87, column: 1)
!4202 = distinct !DILexicalBlock(scope: !4197, file: !19, line: 87, column: 1)
!4203 = !DILocalVariable(name: "pscr_ret__", scope: !4204, file: !19, line: 87, type: !367)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !19, line: 87, column: 1)
!4205 = distinct !DILexicalBlock(scope: !4201, file: !19, line: 87, column: 1)
!4206 = !DILocalVariable(name: "__vpp_verify", scope: !4207, file: !19, line: 87, type: !2081)
!4207 = distinct !DILexicalBlock(scope: !4204, file: !19, line: 87, column: 1)
!4208 = !DILocalVariable(name: "pfo_val__", scope: !4209, file: !19, line: 87, type: !61)
!4209 = distinct !DILexicalBlock(scope: !4204, file: !19, line: 87, column: 1)
!4210 = !DILocalVariable(name: "__ret_warn_on", scope: !4211, file: !19, line: 87, type: !367)
!4211 = distinct !DILexicalBlock(scope: !4212, file: !19, line: 87, column: 1)
!4212 = distinct !DILexicalBlock(scope: !4201, file: !19, line: 87, column: 1)
!4213 = !DILocalVariable(name: "__flags", scope: !4214, file: !19, line: 87, type: !367)
!4214 = distinct !DILexicalBlock(scope: !4215, file: !19, line: 87, column: 1)
!4215 = distinct !DILexicalBlock(scope: !4211, file: !19, line: 87, column: 1)
!4216 = !DILocalVariable(name: "it_func_ptr", scope: !4217, file: !19, line: 87, type: !4175)
!4217 = distinct !DILexicalBlock(scope: !4201, file: !19, line: 87, column: 1)
!4218 = !DILocalVariable(name: "__data", scope: !4217, file: !19, line: 87, type: !355)
!4219 = !DILocalVariable(name: "__UNIQUE_ID_rcu402", scope: !4220, file: !19, line: 87, type: !4175)
!4220 = distinct !DILexicalBlock(scope: !4217, file: !19, line: 87, column: 1)
!4221 = !DIGlobalVariableExpression(var: !4222, expr: !DIExpression())
!4222 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace405", scope: !4197, file: !19, line: 87, type: !355, isLocal: true, isDefinition: true)
!4223 = !DIGlobalVariableExpression(var: !4224, expr: !DIExpression())
!4224 = distinct !DIGlobalVariable(scope: null, file: !4225, line: 191, type: !4226, isLocal: true, isDefinition: true)
!4225 = !DIFile(filename: "arch/x86/kernel/fpu/xstate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85473f77f0706e565168985886d520eb")
!4226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !4227)
!4227 = !{!4228}
!4228 = !DISubrange(count: 29)
!4229 = !{!4230, !4231, !4234, !4237, !4239, !4241, !4244, !4247, !4249, !4250}
!4230 = !DILocalVariable(name: "fpu", arg: 1, scope: !25, file: !19, line: 57, type: !28)
!4231 = !DILocalVariable(name: "__idx", scope: !4232, file: !19, line: 57, type: !367)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !19, line: 57, column: 1)
!4233 = distinct !DILexicalBlock(scope: !25, file: !19, line: 57, column: 1)
!4234 = !DILocalVariable(name: "pscr_ret__", scope: !4235, file: !19, line: 57, type: !367)
!4235 = distinct !DILexicalBlock(scope: !4236, file: !19, line: 57, column: 1)
!4236 = distinct !DILexicalBlock(scope: !4232, file: !19, line: 57, column: 1)
!4237 = !DILocalVariable(name: "__vpp_verify", scope: !4238, file: !19, line: 57, type: !2081)
!4238 = distinct !DILexicalBlock(scope: !4235, file: !19, line: 57, column: 1)
!4239 = !DILocalVariable(name: "pfo_val__", scope: !4240, file: !19, line: 57, type: !61)
!4240 = distinct !DILexicalBlock(scope: !4235, file: !19, line: 57, column: 1)
!4241 = !DILocalVariable(name: "__ret_warn_on", scope: !4242, file: !19, line: 57, type: !367)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !19, line: 57, column: 1)
!4243 = distinct !DILexicalBlock(scope: !4232, file: !19, line: 57, column: 1)
!4244 = !DILocalVariable(name: "__flags", scope: !4245, file: !19, line: 57, type: !367)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !19, line: 57, column: 1)
!4246 = distinct !DILexicalBlock(scope: !4242, file: !19, line: 57, column: 1)
!4247 = !DILocalVariable(name: "it_func_ptr", scope: !4248, file: !19, line: 57, type: !4175)
!4248 = distinct !DILexicalBlock(scope: !4232, file: !19, line: 57, column: 1)
!4249 = !DILocalVariable(name: "__data", scope: !4248, file: !19, line: 57, type: !355)
!4250 = !DILocalVariable(name: "__UNIQUE_ID_rcu354", scope: !4251, file: !19, line: 57, type: !4175)
!4251 = distinct !DILexicalBlock(scope: !4248, file: !19, line: 57, column: 1)
!4252 = !{!"rsp"}
!4253 = !{i32 7, !"Dwarf Version", i32 5}
!4254 = !{i32 2, !"Debug Info Version", i32 3}
!4255 = !{i32 1, !"wchar_size", i32 2}
!4256 = !{i32 8, !"cf-protection-branch", i32 1}
!4257 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4258 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4259 = !{i32 1, !"Code Model", i32 2}
!4260 = !{i32 1, !"override-stack-alignment", i32 8}
!4261 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4262 = distinct !DISubprogram(name: "copy_fpstate_to_sigframe", scope: !228, file: !228, line: 188, type: !4263, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4265)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!949, !355, !355, !367, !61}
!4265 = !{!4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4277}
!4266 = !DILocalVariable(name: "buf", arg: 1, scope: !4262, file: !228, line: 188, type: !355)
!4267 = !DILocalVariable(name: "buf_fx", arg: 2, scope: !4262, file: !228, line: 188, type: !355)
!4268 = !DILocalVariable(name: "size", arg: 3, scope: !4262, file: !228, line: 188, type: !367)
!4269 = !DILocalVariable(name: "pkru", arg: 4, scope: !4262, file: !228, line: 188, type: !61)
!4270 = !DILocalVariable(name: "tsk", scope: !4262, file: !228, line: 190, type: !348)
!4271 = !DILocalVariable(name: "fpstate", scope: !4262, file: !228, line: 191, type: !37)
!4272 = !DILocalVariable(name: "ia32_fxstate", scope: !4262, file: !228, line: 192, type: !949)
!4273 = !DILocalVariable(name: "ret", scope: !4262, file: !228, line: 193, type: !367)
!4274 = !DILocalVariable(name: "xbuf", scope: !4275, file: !228, line: 210, type: !4191)
!4275 = distinct !DILexicalBlock(scope: !4276, file: !228, line: 209, column: 19)
!4276 = distinct !DILexicalBlock(scope: !4262, file: !228, line: 209, column: 6)
!4277 = !DILabel(scope: !4262, name: "retry", file: !228, line: 219)
!4278 = !DILocation(line: 188, column: 44, scope: !4262)
!4279 = !DILocation(line: 188, column: 62, scope: !4262)
!4280 = !DILocation(line: 188, column: 74, scope: !4262)
!4281 = !DILocation(line: 188, column: 84, scope: !4262)
!4282 = !DILocation(line: 190, column: 2, scope: !4262)
!4283 = !DILocation(line: 190, column: 22, scope: !4262)
!4284 = !DILocation(line: 190, column: 28, scope: !4262)
!4285 = !DILocation(line: 191, column: 2, scope: !4262)
!4286 = !DILocation(line: 191, column: 18, scope: !4262)
!4287 = !DILocation(line: 191, column: 28, scope: !4262)
!4288 = !DILocation(line: 191, column: 33, scope: !4262)
!4289 = !DILocation(line: 191, column: 40, scope: !4262)
!4290 = !DILocation(line: 191, column: 44, scope: !4262)
!4291 = !DILocation(line: 192, column: 2, scope: !4262)
!4292 = !DILocation(line: 192, column: 7, scope: !4262)
!4293 = !DILocation(line: 192, column: 23, scope: !4262)
!4294 = !DILocation(line: 192, column: 30, scope: !4262)
!4295 = !DILocation(line: 192, column: 27, scope: !4262)
!4296 = !DILocation(line: 193, column: 2, scope: !4262)
!4297 = !DILocation(line: 193, column: 6, scope: !4262)
!4298 = !DILocation(line: 195, column: 15, scope: !4262)
!4299 = !{i8 0, i8 2}
!4300 = !DILocation(line: 206, column: 7, scope: !4301)
!4301 = distinct !DILexicalBlock(scope: !4262, file: !228, line: 206, column: 6)
!4302 = !DILocation(line: 206, column: 6, scope: !4262)
!4303 = !DILocation(line: 207, column: 3, scope: !4301)
!4304 = !DILocation(line: 209, column: 6, scope: !4276)
!4305 = !DILocation(line: 209, column: 6, scope: !4262)
!4306 = !DILocation(line: 210, column: 3, scope: !4275)
!4307 = !DILocation(line: 210, column: 30, scope: !4275)
!4308 = !DILocation(line: 210, column: 37, scope: !4275)
!4309 = !DILocation(line: 216, column: 21, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4275, file: !228, line: 216, column: 7)
!4311 = !DILocation(line: 216, column: 27, scope: !4310)
!4312 = !DILocation(line: 216, column: 7, scope: !4310)
!4313 = !DILocation(line: 216, column: 7, scope: !4275)
!4314 = !DILocation(line: 217, column: 4, scope: !4310)
!4315 = !DILocation(line: 218, column: 2, scope: !4276)
!4316 = !DILocation(line: 218, column: 2, scope: !4275)
!4317 = !DILocation(line: 209, column: 16, scope: !4276)
!4318 = !DILocation(line: 219, column: 1, scope: !4262)
!4319 = !DILocation(line: 226, column: 2, scope: !4262)
!4320 = !DILocation(line: 227, column: 6, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4262, file: !228, line: 227, column: 6)
!4322 = !DILocation(line: 227, column: 6, scope: !4262)
!4323 = !DILocation(line: 228, column: 3, scope: !4321)
!4324 = !DILocation(line: 230, column: 2, scope: !4262)
!4325 = !DILocation(line: 231, column: 32, scope: !4262)
!4326 = !DILocation(line: 231, column: 40, scope: !4262)
!4327 = !DILocation(line: 231, column: 8, scope: !4262)
!4328 = !DILocation(line: 231, column: 6, scope: !4262)
!4329 = !DILocation(line: 232, column: 2, scope: !4262)
!4330 = !DILocation(line: 233, column: 2, scope: !4262)
!4331 = !DILocation(line: 235, column: 6, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4262, file: !228, line: 235, column: 6)
!4333 = !DILocation(line: 235, column: 6, scope: !4262)
!4334 = !DILocation(line: 236, column: 21, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4336, file: !228, line: 236, column: 7)
!4336 = distinct !DILexicalBlock(scope: !4332, file: !228, line: 235, column: 11)
!4337 = !DILocation(line: 236, column: 29, scope: !4335)
!4338 = !DILocation(line: 236, column: 38, scope: !4335)
!4339 = !DILocation(line: 236, column: 8, scope: !4335)
!4340 = !DILocation(line: 236, column: 7, scope: !4336)
!4341 = !DILocation(line: 237, column: 4, scope: !4335)
!4342 = !DILocation(line: 238, column: 3, scope: !4336)
!4343 = !DILocation(line: 242, column: 7, scope: !4344)
!4344 = distinct !DILexicalBlock(scope: !4262, file: !228, line: 242, column: 6)
!4345 = !DILocation(line: 242, column: 20, scope: !4344)
!4346 = !DILocation(line: 242, column: 24, scope: !4344)
!4347 = !DILocation(line: 242, column: 36, scope: !4344)
!4348 = !DILocation(line: 242, column: 58, scope: !4344)
!4349 = !DILocation(line: 242, column: 63, scope: !4344)
!4350 = !DILocation(line: 242, column: 40, scope: !4344)
!4351 = !DILocation(line: 242, column: 6, scope: !4262)
!4352 = !DILocation(line: 243, column: 3, scope: !4344)
!4353 = !DILocation(line: 245, column: 6, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4262, file: !228, line: 245, column: 6)
!4355 = !DILocation(line: 245, column: 17, scope: !4354)
!4356 = !DILocation(line: 245, column: 40, scope: !4354)
!4357 = !DILocation(line: 245, column: 48, scope: !4354)
!4358 = !DILocation(line: 245, column: 62, scope: !4354)
!4359 = !DILocation(line: 245, column: 21, scope: !4354)
!4360 = !DILocation(line: 245, column: 6, scope: !4262)
!4361 = !DILocation(line: 246, column: 3, scope: !4354)
!4362 = !DILocation(line: 248, column: 2, scope: !4262)
!4363 = !DILocation(line: 249, column: 1, scope: !4262)
!4364 = distinct !DISubprogram(name: "get_current", scope: !4365, file: !4365, line: 39, type: !4366, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4368)
!4365 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!348}
!4368 = !{!4369, !4371, !4373}
!4369 = !DILocalVariable(name: "pscr_ret__", scope: !4370, file: !4365, line: 41, type: !348)
!4370 = distinct !DILexicalBlock(scope: !4364, file: !4365, line: 41, column: 9)
!4371 = !DILocalVariable(name: "__vpp_verify", scope: !4372, file: !4365, line: 41, type: !2081)
!4372 = distinct !DILexicalBlock(scope: !4370, file: !4365, line: 41, column: 9)
!4373 = !DILocalVariable(name: "pfo_val__", scope: !4374, file: !4365, line: 41, type: !43)
!4374 = distinct !DILexicalBlock(scope: !4370, file: !4365, line: 41, column: 9)
!4375 = !DILocation(line: 41, column: 9, scope: !4370)
!4376 = !DILocation(line: 41, column: 9, scope: !4372)
!4377 = !DILocation(line: 41, column: 9, scope: !4374)
!4378 = !{i64 2148434431}
!4379 = !DILocation(line: 41, column: 9, scope: !4364)
!4380 = !DILocation(line: 41, column: 2, scope: !4364)
!4381 = distinct !DISubprogram(name: "__access_ok", scope: !4382, file: !4382, line: 85, type: !4383, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4385)
!4382 = !DIFile(filename: "./arch/x86/include/asm/uaccess_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c63bf78a3e0eae48ab190f2bbecab5d")
!4383 = !DISubroutineType(types: !4384)
!4384 = !{!949, !2081, !35}
!4385 = !{!4386, !4387, !4388}
!4386 = !DILocalVariable(name: "ptr", arg: 1, scope: !4381, file: !4382, line: 85, type: !2081)
!4387 = !DILocalVariable(name: "size", arg: 2, scope: !4381, file: !4382, line: 85, type: !35)
!4388 = !DILocalVariable(name: "sum", scope: !4389, file: !4382, line: 90, type: !35)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !4382, line: 89, column: 9)
!4390 = distinct !DILexicalBlock(scope: !4381, file: !4382, line: 87, column: 6)
!4391 = !DILocation(line: 85, column: 51, scope: !4381)
!4392 = !DILocation(line: 85, column: 70, scope: !4381)
!4393 = !DILocation(line: 87, column: 27, scope: !4390)
!4394 = !DILocation(line: 87, column: 32, scope: !4390)
!4395 = !DILocation(line: 87, column: 6, scope: !4390)
!4396 = !DILocation(line: 87, column: 46, scope: !4390)
!4397 = !DILocation(line: 87, column: 49, scope: !4390)
!4398 = !DILocation(line: 87, column: 54, scope: !4390)
!4399 = !DILocation(line: 87, column: 6, scope: !4381)
!4400 = !DILocation(line: 88, column: 10, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4390, file: !4382, line: 87, column: 68)
!4402 = !DILocation(line: 88, column: 3, scope: !4401)
!4403 = !DILocation(line: 90, column: 3, scope: !4389)
!4404 = !DILocation(line: 90, column: 17, scope: !4389)
!4405 = !DILocation(line: 90, column: 23, scope: !4389)
!4406 = !DILocation(line: 90, column: 45, scope: !4389)
!4407 = !DILocation(line: 90, column: 30, scope: !4389)
!4408 = !DILocation(line: 90, column: 28, scope: !4389)
!4409 = !DILocation(line: 91, column: 10, scope: !4389)
!4410 = !DILocation(line: 91, column: 34, scope: !4389)
!4411 = !DILocation(line: 91, column: 37, scope: !4389)
!4412 = !DILocation(line: 91, column: 59, scope: !4389)
!4413 = !DILocation(line: 91, column: 44, scope: !4389)
!4414 = !DILocation(line: 91, column: 41, scope: !4389)
!4415 = !DILocation(line: 0, scope: !4389)
!4416 = !DILocation(line: 91, column: 3, scope: !4389)
!4417 = !DILocation(line: 92, column: 2, scope: !4390)
!4418 = !DILocation(line: 93, column: 1, scope: !4381)
!4419 = distinct !DISubprogram(name: "use_xsave", scope: !4420, file: !4420, line: 8, type: !2071, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227)
!4420 = !DIFile(filename: "arch/x86/kernel/fpu/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64a68e595d8dee7f95a00f7be469efe1")
!4421 = !DILocation(line: 10, column: 9, scope: !4419)
!4422 = !DILocation(line: 10, column: 2, scope: !4419)
!4423 = distinct !DISubprogram(name: "__clear_user", scope: !4382, file: !4382, line: 165, type: !4424, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4426)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!35, !355, !35}
!4426 = !{!4427, !4428}
!4427 = !DILocalVariable(name: "addr", arg: 1, scope: !4423, file: !4382, line: 165, type: !355)
!4428 = !DILocalVariable(name: "size", arg: 2, scope: !4423, file: !4382, line: 165, type: !35)
!4429 = !DILocation(line: 165, column: 77, scope: !4423)
!4430 = !DILocation(line: 165, column: 97, scope: !4423)
!4431 = !DILocation(line: 167, column: 2, scope: !4423)
!4432 = !DILocation(line: 168, column: 2, scope: !4423)
!4433 = !DILocation(line: 174, column: 2, scope: !4423)
!4434 = !{i64 5503664, i64 5503669, i64 2152991890, i64 2152991896, i64 2152991912, i64 2152991928, i64 2152991955, i64 2152992278, i64 2152991489, i64 2152992284, i64 2152992332, i64 2152992396, i64 2152992460, i64 2152992517, i64 2152991570, i64 2152991595, i64 2152992801, i64 2152992942, i64 2152992862, i64 2152992956, i64 2152991687, i64 5503766, i64 2152993021, i64 2152993065, i64 2152993088, i64 2152993121, i64 2152993152, i64 2152993191}
!4435 = !DILocation(line: 183, column: 2, scope: !4423)
!4436 = !DILocation(line: 185, column: 9, scope: !4423)
!4437 = !DILocation(line: 185, column: 2, scope: !4423)
!4438 = distinct !DISubprogram(name: "fpregs_lock", scope: !4439, file: !4439, line: 69, type: !2588, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227)
!4439 = !DIFile(filename: "./arch/x86/include/asm/fpu/api.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "69298eced5ce9b488888ff68abf966e3")
!4440 = !DILocation(line: 72, column: 3, scope: !4441)
!4441 = distinct !DILexicalBlock(scope: !4438, file: !4439, line: 71, column: 6)
!4442 = !DILocation(line: 75, column: 1, scope: !4438)
!4443 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !4444, file: !4444, line: 116, type: !4445, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4447)
!4444 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4445 = !DISubroutineType(types: !4446)
!4446 = !{!367, !339, !367}
!4447 = !{!4448, !4449}
!4448 = !DILocalVariable(name: "ti", arg: 1, scope: !4443, file: !4444, line: 116, type: !339)
!4449 = !DILocalVariable(name: "flag", arg: 2, scope: !4443, file: !4444, line: 116, type: !367)
!4450 = !DILocation(line: 116, column: 59, scope: !4443)
!4451 = !DILocation(line: 116, column: 67, scope: !4443)
!4452 = !DILocation(line: 118, column: 9, scope: !4443)
!4453 = !DILocation(line: 118, column: 2, scope: !4443)
!4454 = distinct !DISubprogram(name: "fpregs_restore_userregs", scope: !2, file: !2, line: 54, type: !2588, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4455)
!4455 = !{!4456, !4457, !4458, !4461, !4463, !4465, !4468}
!4456 = !DILocalVariable(name: "fpu", scope: !4454, file: !2, line: 56, type: !28)
!4457 = !DILocalVariable(name: "cpu", scope: !4454, file: !2, line: 57, type: !367)
!4458 = !DILocalVariable(name: "pscr_ret__", scope: !4459, file: !2, line: 57, type: !367)
!4459 = distinct !DILexicalBlock(scope: !4460, file: !2, line: 57, column: 12)
!4460 = distinct !DILexicalBlock(scope: !4454, file: !2, line: 57, column: 12)
!4461 = !DILocalVariable(name: "__vpp_verify", scope: !4462, file: !2, line: 57, type: !2081)
!4462 = distinct !DILexicalBlock(scope: !4459, file: !2, line: 57, column: 12)
!4463 = !DILocalVariable(name: "pfo_val__", scope: !4464, file: !2, line: 57, type: !61)
!4464 = distinct !DILexicalBlock(scope: !4459, file: !2, line: 57, column: 12)
!4465 = !DILocalVariable(name: "__ret_warn_on", scope: !4466, file: !2, line: 59, type: !367)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !2, line: 59, column: 6)
!4467 = distinct !DILexicalBlock(scope: !4454, file: !2, line: 59, column: 6)
!4468 = !DILocalVariable(name: "__flags", scope: !4469, file: !2, line: 59, type: !367)
!4469 = distinct !DILexicalBlock(scope: !4470, file: !2, line: 59, column: 6)
!4470 = distinct !DILexicalBlock(scope: !4466, file: !2, line: 59, column: 6)
!4471 = !DILocation(line: 56, column: 2, scope: !4454)
!4472 = !DILocation(line: 56, column: 14, scope: !4454)
!4473 = !DILocation(line: 56, column: 21, scope: !4454)
!4474 = !DILocation(line: 56, column: 30, scope: !4454)
!4475 = !DILocation(line: 56, column: 37, scope: !4454)
!4476 = !DILocation(line: 57, column: 2, scope: !4454)
!4477 = !DILocation(line: 57, column: 6, scope: !4454)
!4478 = !DILocation(line: 57, column: 12, scope: !4460)
!4479 = !DILocation(line: 57, column: 12, scope: !4459)
!4480 = !DILocation(line: 57, column: 12, scope: !4462)
!4481 = !DILocation(line: 57, column: 12, scope: !4464)
!4482 = !{i64 2155453150}
!4483 = !DILocation(line: 59, column: 6, scope: !4466)
!4484 = !DILocation(line: 59, column: 6, scope: !4470)
!4485 = !DILocation(line: 59, column: 6, scope: !4469)
!4486 = !DILocation(line: 59, column: 6, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4469, file: !2, line: 59, column: 6)
!4488 = !DILocation(line: 59, column: 6, scope: !4489)
!4489 = distinct !DILexicalBlock(scope: !4469, file: !2, line: 59, column: 6)
!4490 = !{i64 2155454543, i64 2155454572, i64 2155454618, i64 2155454676, i64 2155454730, i64 2155454784, i64 2155454839, i64 2155454870, i64 2155455178, i64 2155455184, i64 2155455231, i64 2155455254, i64 2155455280}
!4491 = !DILocation(line: 59, column: 6, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4469, file: !2, line: 59, column: 6)
!4493 = !DILocation(line: 59, column: 6, scope: !4467)
!4494 = !DILocation(line: 59, column: 6, scope: !4454)
!4495 = !DILocation(line: 60, column: 3, scope: !4467)
!4496 = !DILocation(line: 62, column: 26, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4454, file: !2, line: 62, column: 6)
!4498 = !DILocation(line: 62, column: 31, scope: !4497)
!4499 = !DILocation(line: 62, column: 7, scope: !4497)
!4500 = !DILocation(line: 62, column: 6, scope: !4454)
!4501 = !DILocation(line: 74, column: 31, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4497, file: !2, line: 62, column: 37)
!4503 = !DILocation(line: 74, column: 36, scope: !4502)
!4504 = !DILocation(line: 74, column: 3, scope: !4502)
!4505 = !DILocation(line: 76, column: 19, scope: !4502)
!4506 = !DILocation(line: 76, column: 3, scope: !4502)
!4507 = !DILocation(line: 77, column: 19, scope: !4502)
!4508 = !DILocation(line: 77, column: 3, scope: !4502)
!4509 = !DILocation(line: 77, column: 8, scope: !4502)
!4510 = !DILocation(line: 77, column: 17, scope: !4502)
!4511 = !DILocation(line: 78, column: 2, scope: !4502)
!4512 = !DILocation(line: 79, column: 2, scope: !4454)
!4513 = !DILocation(line: 80, column: 1, scope: !4454)
!4514 = distinct !DISubprogram(name: "pagefault_disable", scope: !4515, file: !4515, line: 225, type: !2588, scopeLine: 226, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227)
!4515 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!4516 = !DILocation(line: 227, column: 2, scope: !4514)
!4517 = !DILocation(line: 232, column: 2, scope: !4514)
!4518 = !{i64 2152999447}
!4519 = !DILocation(line: 233, column: 1, scope: !4514)
!4520 = distinct !DISubprogram(name: "copy_fpregs_to_sigframe", scope: !228, file: !228, line: 159, type: !4521, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4523)
!4521 = !DISubroutineType(types: !4522)
!4522 = !{!367, !4191, !61}
!4523 = !{!4524, !4525}
!4524 = !DILocalVariable(name: "buf", arg: 1, scope: !4520, file: !228, line: 159, type: !4191)
!4525 = !DILocalVariable(name: "pkru", arg: 2, scope: !4520, file: !228, line: 159, type: !61)
!4526 = !DILocation(line: 159, column: 70, scope: !4520)
!4527 = !DILocation(line: 159, column: 79, scope: !4520)
!4528 = !DILocation(line: 161, column: 6, scope: !4529)
!4529 = distinct !DILexicalBlock(scope: !4520, file: !228, line: 161, column: 6)
!4530 = !DILocation(line: 161, column: 6, scope: !4520)
!4531 = !DILocation(line: 162, column: 33, scope: !4529)
!4532 = !DILocation(line: 162, column: 10, scope: !4529)
!4533 = !DILocation(line: 162, column: 3, scope: !4529)
!4534 = !DILocation(line: 163, column: 6, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4520, file: !228, line: 163, column: 6)
!4536 = !DILocation(line: 163, column: 6, scope: !4520)
!4537 = !DILocation(line: 164, column: 65, scope: !4535)
!4538 = !DILocation(line: 164, column: 10, scope: !4535)
!4539 = !DILocation(line: 164, column: 3, scope: !4535)
!4540 = !DILocation(line: 166, column: 64, scope: !4535)
!4541 = !DILocation(line: 166, column: 10, scope: !4535)
!4542 = !DILocation(line: 166, column: 3, scope: !4535)
!4543 = !DILocation(line: 167, column: 1, scope: !4520)
!4544 = distinct !DISubprogram(name: "pagefault_enable", scope: !4515, file: !4515, line: 235, type: !2588, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227)
!4545 = !DILocation(line: 241, column: 2, scope: !4544)
!4546 = !{i64 2152999650}
!4547 = !DILocation(line: 242, column: 2, scope: !4544)
!4548 = !DILocation(line: 243, column: 1, scope: !4544)
!4549 = distinct !DISubprogram(name: "fpregs_unlock", scope: !4439, file: !4439, line: 77, type: !2588, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227)
!4550 = !DILocation(line: 80, column: 3, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4549, file: !4439, line: 79, column: 6)
!4552 = !DILocation(line: 83, column: 1, scope: !4549)
!4553 = distinct !DISubprogram(name: "use_fxsr", scope: !4420, file: !4420, line: 13, type: !2071, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227)
!4554 = !DILocation(line: 15, column: 2, scope: !4553)
!4555 = distinct !DISubprogram(name: "save_fsave_header", scope: !228, file: !228, line: 69, type: !4556, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4558)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!949, !348, !355}
!4558 = !{!4559, !4560, !4561, !4564, !4576, !4637, !4640, !4641, !4642, !4643, !4645, !4647, !4648, !4649, !4650, !4651, !4653, !4654, !4657, !4658, !4660, !4662, !4663, !4664, !4665}
!4559 = !DILocalVariable(name: "tsk", arg: 1, scope: !4555, file: !228, line: 69, type: !348)
!4560 = !DILocalVariable(name: "buf", arg: 2, scope: !4555, file: !228, line: 69, type: !355)
!4561 = !DILocalVariable(name: "xsave", scope: !4562, file: !228, line: 72, type: !4191)
!4562 = distinct !DILexicalBlock(scope: !4563, file: !228, line: 71, column: 18)
!4563 = distinct !DILexicalBlock(scope: !4555, file: !228, line: 71, column: 6)
!4564 = !DILocalVariable(name: "env", scope: !4562, file: !228, line: 73, type: !4565)
!4565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_i387_ia32_struct", file: !4566, line: 8, size: 864, elements: !4567)
!4566 = !DIFile(filename: "./arch/x86/include/asm/user32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d24615e6a7dd7f30d3c67f7cc47fb8bf")
!4567 = !{!4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575}
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4565, file: !4566, line: 9, baseType: !61, size: 32)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4565, file: !4566, line: 10, baseType: !61, size: 32, offset: 32)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4565, file: !4566, line: 11, baseType: !61, size: 32, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4565, file: !4566, line: 12, baseType: !61, size: 32, offset: 96)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4565, file: !4566, line: 13, baseType: !61, size: 32, offset: 128)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4565, file: !4566, line: 14, baseType: !61, size: 32, offset: 160)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4565, file: !4566, line: 15, baseType: !61, size: 32, offset: 192)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4565, file: !4566, line: 16, baseType: !70, size: 640, offset: 224)
!4576 = !DILocalVariable(name: "fp", scope: !4562, file: !228, line: 74, type: !4577)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4578, size: 64)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_fpstate_32", file: !4579, line: 107, size: 4992, elements: !4580)
!4579 = !DIFile(filename: "./arch/x86/include/uapi/asm/sigcontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "327abd771cf7c66287c9e3382680e4d3")
!4580 = !{!4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4595, !4596, !4597, !4599, !4600, !4601, !4609, !4615, !4623}
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "cw", scope: !4578, file: !4579, line: 109, baseType: !62, size: 32)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !4578, file: !4579, line: 110, baseType: !62, size: 32, offset: 32)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !4578, file: !4579, line: 111, baseType: !62, size: 32, offset: 64)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "ipoff", scope: !4578, file: !4579, line: 112, baseType: !62, size: 32, offset: 96)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "cssel", scope: !4578, file: !4579, line: 113, baseType: !62, size: 32, offset: 128)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "dataoff", scope: !4578, file: !4579, line: 114, baseType: !62, size: 32, offset: 160)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "datasel", scope: !4578, file: !4579, line: 115, baseType: !62, size: 32, offset: 192)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "_st", scope: !4578, file: !4579, line: 116, baseType: !4589, size: 640, offset: 224)
!4589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4590, size: 640, elements: !551)
!4590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_fpreg", file: !4579, line: 85, size: 80, elements: !4591)
!4591 = !{!4592, !4594}
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "significand", scope: !4590, file: !4579, line: 86, baseType: !4593, size: 64)
!4593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 64, elements: !813)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "exponent", scope: !4590, file: !4579, line: 87, baseType: !79, size: 16, offset: 64)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4578, file: !4579, line: 117, baseType: !79, size: 16, offset: 864)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4578, file: !4579, line: 118, baseType: !79, size: 16, offset: 880)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "_fxsr_env", scope: !4578, file: !4579, line: 122, baseType: !4598, size: 192, offset: 896)
!4598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 192, elements: !15)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4578, file: !4579, line: 123, baseType: !62, size: 32, offset: 1088)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4578, file: !4579, line: 124, baseType: !62, size: 32, offset: 1120)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "_fxsr_st", scope: !4578, file: !4579, line: 125, baseType: !4602, size: 1024, offset: 1152)
!4602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4603, size: 1024, elements: !551)
!4603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_fpxreg", file: !4579, line: 91, size: 128, elements: !4604)
!4604 = !{!4605, !4606, !4607}
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "significand", scope: !4603, file: !4579, line: 92, baseType: !4593, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "exponent", scope: !4603, file: !4579, line: 93, baseType: !79, size: 16, offset: 64)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4603, file: !4579, line: 94, baseType: !4608, size: 48, offset: 80)
!4608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 48, elements: !792)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "_xmm", scope: !4578, file: !4579, line: 126, baseType: !4610, size: 1024, offset: 2176)
!4610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4611, size: 1024, elements: !551)
!4611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmmreg", file: !4579, line: 98, size: 128, elements: !4612)
!4612 = !{!4613}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "element", scope: !4611, file: !4579, line: 99, baseType: !4614, size: 128)
!4614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !813)
!4615 = !DIDerivedType(tag: DW_TAG_member, scope: !4578, file: !4579, line: 127, baseType: !4616, size: 1408, offset: 3200)
!4616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4578, file: !4579, line: 127, size: 1408, elements: !4617)
!4617 = !{!4618, !4622}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4616, file: !4579, line: 128, baseType: !4619, size: 1408)
!4619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 1408, elements: !4620)
!4620 = !{!4621}
!4621 = !DISubrange(count: 44)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4616, file: !4579, line: 129, baseType: !4619, size: 1408)
!4623 = !DIDerivedType(tag: DW_TAG_member, scope: !4578, file: !4579, line: 132, baseType: !4624, size: 384, offset: 4608)
!4624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4578, file: !4579, line: 132, size: 384, elements: !4625)
!4625 = !{!4626, !4628}
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "padding2", scope: !4624, file: !4579, line: 133, baseType: !4627, size: 384)
!4627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 384, elements: !111)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4624, file: !4579, line: 134, baseType: !4629, size: 384)
!4629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_fpx_sw_bytes", file: !4579, line: 40, size: 384, elements: !4630)
!4630 = !{!4631, !4632, !4633, !4634, !4635}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "magic1", scope: !4629, file: !4579, line: 45, baseType: !62, size: 32)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "extended_size", scope: !4629, file: !4579, line: 54, baseType: !62, size: 32, offset: 32)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4629, file: !4579, line: 60, baseType: !45, size: 64, offset: 64)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "xstate_size", scope: !4629, file: !4579, line: 66, baseType: !62, size: 32, offset: 128)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4629, file: !4579, line: 69, baseType: !4636, size: 224, offset: 160)
!4636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 224, elements: !2357)
!4637 = !DILocalVariable(name: "__ret_pu", scope: !4638, file: !228, line: 84, type: !367)
!4638 = distinct !DILexicalBlock(scope: !4639, file: !228, line: 84, column: 7)
!4639 = distinct !DILexicalBlock(scope: !4562, file: !228, line: 83, column: 7)
!4640 = !DILocalVariable(name: "__ptr_pu", scope: !4638, file: !228, line: 84, type: !355)
!4641 = !DILocalVariable(name: "__val_pu", scope: !4638, file: !228, line: 84, type: !79)
!4642 = !DILocalVariable(name: "__x", scope: !4638, file: !228, line: 84, type: !79)
!4643 = !DILocalVariable(name: "__ptr", scope: !4638, file: !228, line: 84, type: !4644)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!4645 = !DILocalVariable(name: "__ret_pu", scope: !4646, file: !228, line: 85, type: !367)
!4646 = distinct !DILexicalBlock(scope: !4639, file: !228, line: 85, column: 7)
!4647 = !DILocalVariable(name: "__ptr_pu", scope: !4646, file: !228, line: 85, type: !355)
!4648 = !DILocalVariable(name: "__val_pu", scope: !4646, file: !228, line: 85, type: !79)
!4649 = !DILocalVariable(name: "__x", scope: !4646, file: !228, line: 85, type: !79)
!4650 = !DILocalVariable(name: "__ptr", scope: !4646, file: !228, line: 85, type: !4644)
!4651 = !DILocalVariable(name: "fp", scope: !4652, file: !228, line: 88, type: !4188)
!4652 = distinct !DILexicalBlock(scope: !4563, file: !228, line: 87, column: 9)
!4653 = !DILocalVariable(name: "swd", scope: !4652, file: !228, line: 89, type: !61)
!4654 = !DILocalVariable(name: "__ret_gu", scope: !4655, file: !228, line: 91, type: !367)
!4655 = distinct !DILexicalBlock(scope: !4656, file: !228, line: 91, column: 7)
!4656 = distinct !DILexicalBlock(scope: !4652, file: !228, line: 91, column: 7)
!4657 = !DILocalVariable(name: "__val_gu", scope: !4655, file: !228, line: 91, type: !33)
!4658 = !DILocalVariable(name: "__tmp", scope: !4659, file: !228, line: 91, type: !43)
!4659 = distinct !DILexicalBlock(scope: !4655, file: !228, line: 91, column: 7)
!4660 = !DILocalVariable(name: "__ret_pu", scope: !4661, file: !228, line: 91, type: !367)
!4661 = distinct !DILexicalBlock(scope: !4656, file: !228, line: 91, column: 36)
!4662 = !DILocalVariable(name: "__ptr_pu", scope: !4661, file: !228, line: 91, type: !355)
!4663 = !DILocalVariable(name: "__val_pu", scope: !4661, file: !228, line: 91, type: !61)
!4664 = !DILocalVariable(name: "__x", scope: !4661, file: !228, line: 91, type: !61)
!4665 = !DILocalVariable(name: "__ptr", scope: !4661, file: !228, line: 91, type: !3482)
!4666 = !DILocation(line: 69, column: 58, scope: !4555)
!4667 = !DILocation(line: 69, column: 76, scope: !4555)
!4668 = !DILocation(line: 71, column: 6, scope: !4563)
!4669 = !DILocation(line: 71, column: 6, scope: !4555)
!4670 = !DILocation(line: 72, column: 3, scope: !4562)
!4671 = !DILocation(line: 72, column: 23, scope: !4562)
!4672 = !DILocation(line: 72, column: 32, scope: !4562)
!4673 = !DILocation(line: 72, column: 37, scope: !4562)
!4674 = !DILocation(line: 72, column: 44, scope: !4562)
!4675 = !DILocation(line: 72, column: 48, scope: !4562)
!4676 = !DILocation(line: 72, column: 57, scope: !4562)
!4677 = !DILocation(line: 73, column: 3, scope: !4562)
!4678 = !DILocation(line: 73, column: 32, scope: !4562)
!4679 = !DILocation(line: 74, column: 3, scope: !4562)
!4680 = !DILocation(line: 74, column: 30, scope: !4562)
!4681 = !DILocation(line: 74, column: 35, scope: !4562)
!4682 = !DILocation(line: 76, column: 3, scope: !4562)
!4683 = !DILocation(line: 77, column: 8, scope: !4684)
!4684 = distinct !DILexicalBlock(scope: !4562, file: !228, line: 77, column: 7)
!4685 = !DILocation(line: 77, column: 7, scope: !4562)
!4686 = !DILocation(line: 78, column: 12, scope: !4684)
!4687 = !DILocation(line: 78, column: 17, scope: !4684)
!4688 = !DILocation(line: 78, column: 24, scope: !4684)
!4689 = !DILocation(line: 78, column: 28, scope: !4684)
!4690 = !DILocation(line: 78, column: 37, scope: !4684)
!4691 = !DILocation(line: 78, column: 4, scope: !4684)
!4692 = !DILocation(line: 79, column: 3, scope: !4562)
!4693 = !DILocation(line: 81, column: 27, scope: !4562)
!4694 = !DILocation(line: 81, column: 3, scope: !4562)
!4695 = !DILocation(line: 83, column: 22, scope: !4639)
!4696 = !DILocation(line: 83, column: 7, scope: !4639)
!4697 = !DILocation(line: 83, column: 46, scope: !4639)
!4698 = !DILocation(line: 84, column: 7, scope: !4638)
!4699 = !{i64 2155626912}
!4700 = !DILocation(line: 84, column: 7, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4638, file: !228, line: 84, column: 7)
!4702 = !DILocation(line: 84, column: 7, scope: !4639)
!4703 = !DILocation(line: 84, column: 48, scope: !4639)
!4704 = !DILocation(line: 85, column: 7, scope: !4646)
!4705 = !{i64 2155628009}
!4706 = !DILocation(line: 85, column: 7, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4646, file: !228, line: 85, column: 7)
!4708 = !DILocation(line: 85, column: 7, scope: !4639)
!4709 = !DILocation(line: 83, column: 7, scope: !4562)
!4710 = !DILocation(line: 86, column: 4, scope: !4639)
!4711 = !DILocation(line: 87, column: 2, scope: !4563)
!4712 = !DILocation(line: 87, column: 2, scope: !4562)
!4713 = !DILocation(line: 88, column: 3, scope: !4652)
!4714 = !DILocation(line: 88, column: 30, scope: !4652)
!4715 = !DILocation(line: 88, column: 35, scope: !4652)
!4716 = !DILocation(line: 89, column: 3, scope: !4652)
!4717 = !DILocation(line: 89, column: 7, scope: !4652)
!4718 = !DILocation(line: 91, column: 7, scope: !4655)
!4719 = !{i64 2155628905}
!4720 = !DILocation(line: 91, column: 7, scope: !4659)
!4721 = !DILocation(line: 91, column: 7, scope: !4656)
!4722 = !DILocation(line: 91, column: 33, scope: !4656)
!4723 = !DILocation(line: 91, column: 36, scope: !4661)
!4724 = !{i64 2155631027}
!4725 = !DILocation(line: 91, column: 36, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4661, file: !228, line: 91, column: 36)
!4727 = !DILocation(line: 91, column: 36, scope: !4656)
!4728 = !DILocation(line: 91, column: 7, scope: !4652)
!4729 = !DILocation(line: 92, column: 4, scope: !4656)
!4730 = !DILocation(line: 93, column: 2, scope: !4563)
!4731 = !DILocation(line: 95, column: 2, scope: !4555)
!4732 = !DILocation(line: 96, column: 1, scope: !4555)
!4733 = distinct !DISubprogram(name: "save_xstate_epilog", scope: !228, file: !228, line: 117, type: !4734, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4736)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!949, !355, !367, !37}
!4736 = !{!4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4746, !4747, !4748, !4749, !4750, !4752, !4753, !4755, !4757, !4758, !4759, !4760}
!4737 = !DILocalVariable(name: "buf", arg: 1, scope: !4733, file: !228, line: 117, type: !355)
!4738 = !DILocalVariable(name: "ia32_frame", arg: 2, scope: !4733, file: !228, line: 117, type: !367)
!4739 = !DILocalVariable(name: "fpstate", arg: 3, scope: !4733, file: !228, line: 118, type: !37)
!4740 = !DILocalVariable(name: "x", scope: !4733, file: !228, line: 120, type: !4191)
!4741 = !DILocalVariable(name: "sw_bytes", scope: !4733, file: !228, line: 121, type: !4629)
!4742 = !DILocalVariable(name: "xfeatures", scope: !4733, file: !228, line: 122, type: !61)
!4743 = !DILocalVariable(name: "err", scope: !4733, file: !228, line: 123, type: !367)
!4744 = !DILocalVariable(name: "__ret_pu", scope: !4745, file: !228, line: 132, type: !367)
!4745 = distinct !DILexicalBlock(scope: !4733, file: !228, line: 132, column: 9)
!4746 = !DILocalVariable(name: "__ptr_pu", scope: !4745, file: !228, line: 132, type: !355)
!4747 = !DILocalVariable(name: "__val_pu", scope: !4745, file: !228, line: 132, type: !62)
!4748 = !DILocalVariable(name: "__x", scope: !4745, file: !228, line: 132, type: !62)
!4749 = !DILocalVariable(name: "__ptr", scope: !4745, file: !228, line: 132, type: !4189)
!4750 = !DILocalVariable(name: "__ret_gu", scope: !4751, file: !228, line: 139, type: !367)
!4751 = distinct !DILexicalBlock(scope: !4733, file: !228, line: 139, column: 9)
!4752 = !DILocalVariable(name: "__val_gu", scope: !4751, file: !228, line: 139, type: !33)
!4753 = !DILocalVariable(name: "__tmp", scope: !4754, file: !228, line: 139, type: !43)
!4754 = distinct !DILexicalBlock(scope: !4751, file: !228, line: 139, column: 9)
!4755 = !DILocalVariable(name: "__ret_pu", scope: !4756, file: !228, line: 154, type: !367)
!4756 = distinct !DILexicalBlock(scope: !4733, file: !228, line: 154, column: 9)
!4757 = !DILocalVariable(name: "__ptr_pu", scope: !4756, file: !228, line: 154, type: !355)
!4758 = !DILocalVariable(name: "__val_pu", scope: !4756, file: !228, line: 154, type: !62)
!4759 = !DILocalVariable(name: "__x", scope: !4756, file: !228, line: 154, type: !62)
!4760 = !DILocalVariable(name: "__ptr", scope: !4756, file: !228, line: 154, type: !4189)
!4761 = !DILocation(line: 117, column: 52, scope: !4733)
!4762 = !DILocation(line: 117, column: 61, scope: !4733)
!4763 = !DILocation(line: 118, column: 27, scope: !4733)
!4764 = !DILocation(line: 120, column: 2, scope: !4733)
!4765 = !DILocation(line: 120, column: 29, scope: !4733)
!4766 = !DILocation(line: 120, column: 33, scope: !4733)
!4767 = !DILocation(line: 121, column: 2, scope: !4733)
!4768 = !DILocation(line: 121, column: 23, scope: !4733)
!4769 = !DILocation(line: 122, column: 2, scope: !4733)
!4770 = !DILocation(line: 122, column: 6, scope: !4733)
!4771 = !DILocation(line: 123, column: 2, scope: !4733)
!4772 = !DILocation(line: 123, column: 6, scope: !4733)
!4773 = !DILocation(line: 126, column: 27, scope: !4733)
!4774 = !DILocation(line: 126, column: 39, scope: !4733)
!4775 = !DILocation(line: 126, column: 2, scope: !4733)
!4776 = !DILocation(line: 127, column: 24, scope: !4733)
!4777 = !DILocation(line: 127, column: 27, scope: !4733)
!4778 = !DILocation(line: 127, column: 32, scope: !4733)
!4779 = !DILocation(line: 127, column: 8, scope: !4733)
!4780 = !DILocation(line: 127, column: 6, scope: !4733)
!4781 = !DILocation(line: 129, column: 7, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4733, file: !228, line: 129, column: 6)
!4783 = !DILocation(line: 129, column: 6, scope: !4733)
!4784 = !DILocation(line: 130, column: 11, scope: !4782)
!4785 = !DILocation(line: 130, column: 10, scope: !4782)
!4786 = !DILocation(line: 130, column: 3, scope: !4782)
!4787 = !DILocation(line: 132, column: 9, scope: !4745)
!4788 = !{i64 2155632590}
!4789 = !DILocation(line: 132, column: 9, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4745, file: !228, line: 132, column: 9)
!4791 = !DILocation(line: 132, column: 9, scope: !4733)
!4792 = !DILocation(line: 132, column: 6, scope: !4733)
!4793 = !DILocation(line: 139, column: 9, scope: !4751)
!4794 = !{i64 2155633717}
!4795 = !DILocation(line: 139, column: 9, scope: !4754)
!4796 = !DILocation(line: 139, column: 9, scope: !4733)
!4797 = !DILocation(line: 139, column: 6, scope: !4733)
!4798 = !DILocation(line: 152, column: 12, scope: !4733)
!4799 = !DILocation(line: 154, column: 9, scope: !4756)
!4800 = !{i64 2155636505}
!4801 = !DILocation(line: 154, column: 9, scope: !4802)
!4802 = distinct !DILexicalBlock(scope: !4756, file: !228, line: 154, column: 9)
!4803 = !DILocation(line: 154, column: 9, scope: !4733)
!4804 = !DILocation(line: 154, column: 6, scope: !4733)
!4805 = !DILocation(line: 156, column: 10, scope: !4733)
!4806 = !DILocation(line: 156, column: 9, scope: !4733)
!4807 = !DILocation(line: 156, column: 2, scope: !4733)
!4808 = !DILocation(line: 157, column: 1, scope: !4733)
!4809 = distinct !DISubprogram(name: "fpu__restore_sig", scope: !228, file: !228, line: 457, type: !4810, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4812)
!4810 = !DISubroutineType(types: !4811)
!4811 = !{!949, !355, !367}
!4812 = !{!4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820}
!4813 = !DILocalVariable(name: "buf", arg: 1, scope: !4809, file: !228, line: 457, type: !355)
!4814 = !DILocalVariable(name: "ia32_frame", arg: 2, scope: !4809, file: !228, line: 457, type: !367)
!4815 = !DILocalVariable(name: "fpu", scope: !4809, file: !228, line: 459, type: !28)
!4816 = !DILocalVariable(name: "buf_fx", scope: !4809, file: !228, line: 460, type: !355)
!4817 = !DILocalVariable(name: "ia32_fxstate", scope: !4809, file: !228, line: 461, type: !949)
!4818 = !DILocalVariable(name: "success", scope: !4809, file: !228, line: 462, type: !949)
!4819 = !DILocalVariable(name: "size", scope: !4809, file: !228, line: 463, type: !33)
!4820 = !DILabel(scope: !4809, name: "out", file: !228, line: 496)
!4821 = !DILocation(line: 457, column: 36, scope: !4809)
!4822 = !DILocation(line: 457, column: 45, scope: !4809)
!4823 = !DILocation(line: 459, column: 2, scope: !4809)
!4824 = !DILocation(line: 459, column: 14, scope: !4809)
!4825 = !DILocation(line: 459, column: 21, scope: !4809)
!4826 = !DILocation(line: 459, column: 30, scope: !4809)
!4827 = !DILocation(line: 459, column: 37, scope: !4809)
!4828 = !DILocation(line: 460, column: 2, scope: !4809)
!4829 = !DILocation(line: 460, column: 15, scope: !4809)
!4830 = !DILocation(line: 460, column: 24, scope: !4809)
!4831 = !DILocation(line: 461, column: 2, scope: !4809)
!4832 = !DILocation(line: 461, column: 7, scope: !4809)
!4833 = !DILocation(line: 462, column: 2, scope: !4809)
!4834 = !DILocation(line: 462, column: 7, scope: !4809)
!4835 = !DILocation(line: 463, column: 2, scope: !4809)
!4836 = !DILocation(line: 463, column: 15, scope: !4809)
!4837 = !DILocation(line: 465, column: 6, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4809, file: !228, line: 465, column: 6)
!4839 = !DILocation(line: 465, column: 6, scope: !4809)
!4840 = !DILocation(line: 466, column: 26, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4838, file: !228, line: 465, column: 22)
!4842 = !DILocation(line: 466, column: 3, scope: !4841)
!4843 = !DILocation(line: 467, column: 3, scope: !4841)
!4844 = !DILocation(line: 470, column: 30, scope: !4809)
!4845 = !DILocation(line: 470, column: 35, scope: !4809)
!4846 = !DILocation(line: 470, column: 9, scope: !4809)
!4847 = !DILocation(line: 470, column: 7, scope: !4809)
!4848 = !DILocation(line: 472, column: 13, scope: !4809)
!4849 = !DILocation(line: 479, column: 6, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4809, file: !228, line: 479, column: 6)
!4851 = !DILocation(line: 479, column: 17, scope: !4850)
!4852 = !DILocation(line: 479, column: 20, scope: !4850)
!4853 = !DILocation(line: 479, column: 6, scope: !4809)
!4854 = !DILocation(line: 480, column: 12, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4850, file: !228, line: 479, column: 32)
!4856 = !DILocation(line: 480, column: 16, scope: !4855)
!4857 = !DILocation(line: 480, column: 10, scope: !4855)
!4858 = !DILocation(line: 481, column: 8, scope: !4855)
!4859 = !DILocation(line: 482, column: 16, scope: !4855)
!4860 = !DILocation(line: 483, column: 2, scope: !4855)
!4861 = !DILocation(line: 485, column: 7, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4809, file: !228, line: 485, column: 6)
!4863 = !DILocation(line: 485, column: 6, scope: !4809)
!4864 = !DILocation(line: 486, column: 3, scope: !4862)
!4865 = !DILocation(line: 493, column: 31, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4867, file: !228, line: 492, column: 9)
!4867 = distinct !DILexicalBlock(scope: !4809, file: !228, line: 488, column: 6)
!4868 = !DILocation(line: 493, column: 36, scope: !4866)
!4869 = !DILocation(line: 493, column: 44, scope: !4866)
!4870 = !DILocation(line: 493, column: 13, scope: !4866)
!4871 = !DILocation(line: 493, column: 11, scope: !4866)
!4872 = !DILocation(line: 488, column: 37, scope: !4867)
!4873 = !DILocation(line: 496, column: 1, scope: !4809)
!4874 = !DILocation(line: 497, column: 6, scope: !4875)
!4875 = distinct !DILexicalBlock(scope: !4809, file: !228, line: 497, column: 6)
!4876 = !DILocation(line: 497, column: 6, scope: !4809)
!4877 = !DILocation(line: 498, column: 26, scope: !4875)
!4878 = !DILocation(line: 498, column: 3, scope: !4875)
!4879 = !DILocation(line: 499, column: 9, scope: !4809)
!4880 = !DILocation(line: 499, column: 2, scope: !4809)
!4881 = !DILocation(line: 500, column: 1, scope: !4809)
!4882 = !DISubprogram(name: "fpu__clear_user_states", scope: !4883, file: !4883, line: 33, type: !26, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4883 = !DIFile(filename: "./arch/x86/include/asm/fpu/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "754864fa967f893fd03b99839091f816")
!4884 = distinct !DISubprogram(name: "xstate_sigframe_size", scope: !228, file: !228, line: 447, type: !4885, scopeLine: 448, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4887)
!4885 = !DISubroutineType(types: !4886)
!4886 = !{!33, !37}
!4887 = !{!4888, !4889}
!4888 = !DILocalVariable(name: "fpstate", arg: 1, scope: !4884, file: !228, line: 447, type: !37)
!4889 = !DILocalVariable(name: "size", scope: !4884, file: !228, line: 449, type: !33)
!4890 = !DILocation(line: 447, column: 65, scope: !4884)
!4891 = !DILocation(line: 449, column: 2, scope: !4884)
!4892 = !DILocation(line: 449, column: 15, scope: !4884)
!4893 = !DILocation(line: 449, column: 22, scope: !4884)
!4894 = !DILocation(line: 449, column: 31, scope: !4884)
!4895 = !DILocation(line: 451, column: 9, scope: !4884)
!4896 = !DILocation(line: 451, column: 23, scope: !4884)
!4897 = !DILocation(line: 451, column: 28, scope: !4884)
!4898 = !DILocation(line: 451, column: 54, scope: !4884)
!4899 = !DILocation(line: 452, column: 1, scope: !4884)
!4900 = !DILocation(line: 451, column: 2, scope: !4884)
!4901 = distinct !DISubprogram(name: "__fpu_restore_sig", scope: !228, file: !228, line: 335, type: !4902, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !4904)
!4902 = !DISubroutineType(types: !4903)
!4903 = !{!949, !355, !355, !949}
!4904 = !{!4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4915, !4916, !4919}
!4905 = !DILocalVariable(name: "buf", arg: 1, scope: !4901, file: !228, line: 335, type: !355)
!4906 = !DILocalVariable(name: "buf_fx", arg: 2, scope: !4901, file: !228, line: 335, type: !355)
!4907 = !DILocalVariable(name: "ia32_fxstate", arg: 3, scope: !4901, file: !228, line: 336, type: !949)
!4908 = !DILocalVariable(name: "tsk", scope: !4901, file: !228, line: 338, type: !348)
!4909 = !DILocalVariable(name: "fpu", scope: !4901, file: !228, line: 339, type: !28)
!4910 = !DILocalVariable(name: "env", scope: !4901, file: !228, line: 340, type: !4565)
!4911 = !DILocalVariable(name: "success", scope: !4901, file: !228, line: 341, type: !949)
!4912 = !DILocalVariable(name: "fx_only", scope: !4901, file: !228, line: 341, type: !949)
!4913 = !DILocalVariable(name: "fpregs", scope: !4901, file: !228, line: 342, type: !4914)
!4914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!4915 = !DILocalVariable(name: "user_xfeatures", scope: !4901, file: !228, line: 343, type: !43)
!4916 = !DILocalVariable(name: "fx_sw_user", scope: !4917, file: !228, line: 346, type: !4629)
!4917 = distinct !DILexicalBlock(scope: !4918, file: !228, line: 345, column: 19)
!4918 = distinct !DILexicalBlock(scope: !4901, file: !228, line: 345, column: 6)
!4919 = !DILocalVariable(name: "mask", scope: !4920, file: !228, line: 431, type: !43)
!4920 = distinct !DILexicalBlock(scope: !4921, file: !228, line: 421, column: 19)
!4921 = distinct !DILexicalBlock(scope: !4901, file: !228, line: 421, column: 6)
!4922 = !DILocation(line: 335, column: 44, scope: !4901)
!4923 = !DILocation(line: 335, column: 62, scope: !4901)
!4924 = !DILocation(line: 336, column: 15, scope: !4901)
!4925 = !DILocation(line: 338, column: 2, scope: !4901)
!4926 = !DILocation(line: 338, column: 22, scope: !4901)
!4927 = !DILocation(line: 338, column: 28, scope: !4901)
!4928 = !DILocation(line: 339, column: 2, scope: !4901)
!4929 = !DILocation(line: 339, column: 14, scope: !4901)
!4930 = !DILocation(line: 339, column: 21, scope: !4901)
!4931 = !DILocation(line: 339, column: 26, scope: !4901)
!4932 = !DILocation(line: 339, column: 33, scope: !4901)
!4933 = !DILocation(line: 340, column: 2, scope: !4901)
!4934 = !DILocation(line: 340, column: 31, scope: !4901)
!4935 = !DILocation(line: 341, column: 2, scope: !4901)
!4936 = !DILocation(line: 341, column: 7, scope: !4901)
!4937 = !DILocation(line: 341, column: 16, scope: !4901)
!4938 = !DILocation(line: 342, column: 2, scope: !4901)
!4939 = !DILocation(line: 342, column: 22, scope: !4901)
!4940 = !DILocation(line: 343, column: 2, scope: !4901)
!4941 = !DILocation(line: 343, column: 6, scope: !4901)
!4942 = !DILocation(line: 345, column: 6, scope: !4918)
!4943 = !DILocation(line: 345, column: 6, scope: !4901)
!4944 = !DILocation(line: 346, column: 3, scope: !4917)
!4945 = !DILocation(line: 346, column: 24, scope: !4917)
!4946 = !DILocation(line: 348, column: 33, scope: !4947)
!4947 = distinct !DILexicalBlock(scope: !4917, file: !228, line: 348, column: 7)
!4948 = !DILocation(line: 348, column: 8, scope: !4947)
!4949 = !DILocation(line: 348, column: 7, scope: !4917)
!4950 = !DILocation(line: 349, column: 4, scope: !4947)
!4951 = !DILocation(line: 351, column: 25, scope: !4917)
!4952 = !DILocation(line: 351, column: 13, scope: !4917)
!4953 = !DILocation(line: 351, column: 11, scope: !4917)
!4954 = !DILocation(line: 352, column: 31, scope: !4917)
!4955 = !DILocation(line: 352, column: 18, scope: !4917)
!4956 = !DILocation(line: 353, column: 2, scope: !4918)
!4957 = !DILocation(line: 353, column: 2, scope: !4917)
!4958 = !DILocation(line: 354, column: 18, scope: !4959)
!4959 = distinct !DILexicalBlock(scope: !4918, file: !228, line: 353, column: 9)
!4960 = !DILocation(line: 357, column: 6, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4901, file: !228, line: 357, column: 6)
!4962 = !DILocation(line: 357, column: 6, scope: !4901)
!4963 = !DILocation(line: 359, column: 35, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4961, file: !228, line: 357, column: 29)
!4965 = !DILocation(line: 359, column: 43, scope: !4964)
!4966 = !DILocation(line: 359, column: 59, scope: !4964)
!4967 = !DILocation(line: 359, column: 10, scope: !4964)
!4968 = !DILocation(line: 359, column: 3, scope: !4964)
!4969 = !DILocation(line: 367, column: 29, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4901, file: !228, line: 367, column: 6)
!4971 = !DILocation(line: 367, column: 6, scope: !4970)
!4972 = !DILocation(line: 367, column: 6, scope: !4901)
!4973 = !DILocation(line: 368, column: 3, scope: !4970)
!4974 = !DILocation(line: 376, column: 2, scope: !4901)
!4975 = !DILocation(line: 377, column: 7, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4901, file: !228, line: 377, column: 6)
!4977 = !DILocation(line: 377, column: 6, scope: !4901)
!4978 = !DILocation(line: 386, column: 7, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4980, file: !228, line: 386, column: 7)
!4980 = distinct !DILexicalBlock(scope: !4976, file: !228, line: 377, column: 44)
!4981 = !DILocation(line: 386, column: 7, scope: !4980)
!4982 = !DILocation(line: 387, column: 13, scope: !4979)
!4983 = !DILocation(line: 387, column: 18, scope: !4979)
!4984 = !DILocation(line: 387, column: 4, scope: !4979)
!4985 = !DILocation(line: 388, column: 3, scope: !4980)
!4986 = !DILocation(line: 389, column: 2, scope: !4980)
!4987 = !DILocation(line: 390, column: 32, scope: !4901)
!4988 = !DILocation(line: 390, column: 2, scope: !4901)
!4989 = !DILocation(line: 391, column: 2, scope: !4901)
!4990 = !DILocation(line: 392, column: 2, scope: !4901)
!4991 = !DILocation(line: 394, column: 12, scope: !4901)
!4992 = !DILocation(line: 394, column: 17, scope: !4901)
!4993 = !DILocation(line: 394, column: 26, scope: !4901)
!4994 = !DILocation(line: 394, column: 9, scope: !4901)
!4995 = !DILocation(line: 395, column: 6, scope: !4996)
!4996 = distinct !DILexicalBlock(scope: !4901, file: !228, line: 395, column: 6)
!4997 = !DILocation(line: 395, column: 18, scope: !4996)
!4998 = !DILocation(line: 395, column: 22, scope: !4996)
!4999 = !DILocation(line: 395, column: 6, scope: !4901)
!5000 = !DILocation(line: 396, column: 41, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !5002, file: !228, line: 396, column: 7)
!5002 = distinct !DILexicalBlock(scope: !4996, file: !228, line: 395, column: 31)
!5003 = !DILocation(line: 396, column: 46, scope: !5001)
!5004 = !DILocation(line: 396, column: 7, scope: !5001)
!5005 = !DILocation(line: 396, column: 7, scope: !5002)
!5006 = !DILocation(line: 397, column: 4, scope: !5001)
!5007 = !DILocation(line: 398, column: 2, scope: !5002)
!5008 = !DILocation(line: 399, column: 25, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !5010, file: !228, line: 399, column: 7)
!5010 = distinct !DILexicalBlock(scope: !4996, file: !228, line: 398, column: 9)
!5011 = !DILocation(line: 399, column: 41, scope: !5009)
!5012 = !DILocation(line: 399, column: 7, scope: !5009)
!5013 = !DILocation(line: 399, column: 7, scope: !5010)
!5014 = !DILocation(line: 401, column: 4, scope: !5009)
!5015 = !DILocation(line: 405, column: 8, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !5017, file: !228, line: 405, column: 8)
!5017 = distinct !DILexicalBlock(scope: !5018, file: !228, line: 403, column: 34)
!5018 = distinct !DILexicalBlock(scope: !5010, file: !228, line: 403, column: 7)
!5019 = !DILocation(line: 405, column: 23, scope: !5016)
!5020 = !DILocation(line: 405, column: 32, scope: !5016)
!5021 = !DILocation(line: 405, column: 31, scope: !5016)
!5022 = !DILocation(line: 405, column: 29, scope: !5016)
!5023 = !DILocation(line: 405, column: 8, scope: !5017)
!5024 = !DILocation(line: 406, column: 5, scope: !5016)
!5025 = !DILocation(line: 413, column: 7, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5010, file: !228, line: 413, column: 7)
!5027 = !DILocation(line: 413, column: 7, scope: !5010)
!5028 = !DILocation(line: 414, column: 4, scope: !5026)
!5029 = !DILocation(line: 414, column: 18, scope: !5026)
!5030 = !DILocation(line: 414, column: 25, scope: !5026)
!5031 = !DILocation(line: 414, column: 35, scope: !5026)
!5032 = !DILocation(line: 418, column: 19, scope: !4901)
!5033 = !DILocation(line: 418, column: 2, scope: !4901)
!5034 = !DILocation(line: 420, column: 2, scope: !4901)
!5035 = !DILocation(line: 421, column: 6, scope: !4921)
!5036 = !DILocation(line: 421, column: 6, scope: !4901)
!5037 = !DILocation(line: 431, column: 3, scope: !4920)
!5038 = !DILocation(line: 431, column: 7, scope: !4920)
!5039 = !DILocation(line: 431, column: 14, scope: !4920)
!5040 = !DILocation(line: 431, column: 31, scope: !4920)
!5041 = !DILocation(line: 431, column: 29, scope: !4920)
!5042 = !DILocation(line: 433, column: 37, scope: !4920)
!5043 = !DILocation(line: 433, column: 3, scope: !4920)
!5044 = !DILocation(line: 433, column: 17, scope: !4920)
!5045 = !DILocation(line: 433, column: 24, scope: !4920)
!5046 = !DILocation(line: 433, column: 34, scope: !4920)
!5047 = !DILocation(line: 434, column: 29, scope: !4920)
!5048 = !DILocation(line: 434, column: 34, scope: !4920)
!5049 = !DILocation(line: 435, column: 23, scope: !4920)
!5050 = !DILocation(line: 434, column: 14, scope: !4920)
!5051 = !DILocation(line: 434, column: 13, scope: !4920)
!5052 = !DILocation(line: 434, column: 11, scope: !4920)
!5053 = !DILocation(line: 436, column: 2, scope: !4921)
!5054 = !DILocation(line: 436, column: 2, scope: !4920)
!5055 = !DILocation(line: 437, column: 28, scope: !5056)
!5056 = distinct !DILexicalBlock(scope: !4921, file: !228, line: 436, column: 9)
!5057 = !DILocation(line: 437, column: 14, scope: !5056)
!5058 = !DILocation(line: 437, column: 13, scope: !5056)
!5059 = !DILocation(line: 437, column: 11, scope: !5056)
!5060 = !DILocation(line: 440, column: 6, scope: !5061)
!5061 = distinct !DILexicalBlock(scope: !4901, file: !228, line: 440, column: 6)
!5062 = !DILocation(line: 440, column: 6, scope: !4901)
!5063 = !DILocation(line: 441, column: 3, scope: !5061)
!5064 = !DILocation(line: 443, column: 2, scope: !4901)
!5065 = !DILocation(line: 444, column: 9, scope: !4901)
!5066 = !DILocation(line: 444, column: 2, scope: !4901)
!5067 = !DILocation(line: 445, column: 1, scope: !4901)
!5068 = distinct !DISubprogram(name: "fpu__alloc_mathframe", scope: !228, file: !228, line: 503, type: !5069, scopeLine: 505, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5071)
!5069 = !DISubroutineType(types: !5070)
!5070 = !{!35, !35, !367, !2574, !2574}
!5071 = !{!5072, !5073, !5074, !5075, !5076}
!5072 = !DILocalVariable(name: "sp", arg: 1, scope: !5068, file: !228, line: 503, type: !35)
!5073 = !DILocalVariable(name: "ia32_frame", arg: 2, scope: !5068, file: !228, line: 503, type: !367)
!5074 = !DILocalVariable(name: "buf_fx", arg: 3, scope: !5068, file: !228, line: 504, type: !2574)
!5075 = !DILocalVariable(name: "size", arg: 4, scope: !5068, file: !228, line: 504, type: !2574)
!5076 = !DILocalVariable(name: "frame_size", scope: !5068, file: !228, line: 506, type: !35)
!5077 = !DILocation(line: 503, column: 36, scope: !5068)
!5078 = !DILocation(line: 503, column: 44, scope: !5068)
!5079 = !DILocation(line: 504, column: 23, scope: !5068)
!5080 = !DILocation(line: 504, column: 46, scope: !5068)
!5081 = !DILocation(line: 506, column: 2, scope: !5068)
!5082 = !DILocation(line: 506, column: 16, scope: !5068)
!5083 = !DILocation(line: 506, column: 50, scope: !5068)
!5084 = !DILocation(line: 506, column: 59, scope: !5068)
!5085 = !DILocation(line: 506, column: 66, scope: !5068)
!5086 = !DILocation(line: 506, column: 70, scope: !5068)
!5087 = !DILocation(line: 506, column: 29, scope: !5068)
!5088 = !DILocation(line: 508, column: 17, scope: !5068)
!5089 = !DILocation(line: 508, column: 15, scope: !5068)
!5090 = !DILocation(line: 508, column: 3, scope: !5068)
!5091 = !DILocation(line: 508, column: 10, scope: !5068)
!5092 = !DILocation(line: 509, column: 6, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5068, file: !228, line: 509, column: 6)
!5094 = !DILocation(line: 509, column: 17, scope: !5093)
!5095 = !DILocation(line: 509, column: 20, scope: !5093)
!5096 = !DILocation(line: 509, column: 6, scope: !5068)
!5097 = !DILocation(line: 510, column: 14, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5093, file: !228, line: 509, column: 32)
!5099 = !DILocation(line: 511, column: 6, scope: !5098)
!5100 = !DILocation(line: 512, column: 2, scope: !5098)
!5101 = !DILocation(line: 514, column: 10, scope: !5068)
!5102 = !DILocation(line: 514, column: 3, scope: !5068)
!5103 = !DILocation(line: 514, column: 8, scope: !5068)
!5104 = !DILocation(line: 516, column: 9, scope: !5068)
!5105 = !DILocation(line: 517, column: 1, scope: !5068)
!5106 = !DILocation(line: 516, column: 2, scope: !5068)
!5107 = distinct !DISubprogram(name: "fpu__get_fpstate_size", scope: !228, file: !228, line: 519, type: !5108, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5110)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{!35}
!5110 = !{!5111}
!5111 = !DILocalVariable(name: "ret", scope: !5107, file: !228, line: 521, type: !35)
!5112 = !DILocation(line: 521, column: 2, scope: !5107)
!5113 = !DILocation(line: 521, column: 16, scope: !5107)
!5114 = !DILocation(line: 521, column: 35, scope: !5107)
!5115 = !DILocation(line: 521, column: 22, scope: !5107)
!5116 = !DILocation(line: 523, column: 6, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5107, file: !228, line: 523, column: 6)
!5118 = !DILocation(line: 523, column: 6, scope: !5107)
!5119 = !DILocation(line: 524, column: 7, scope: !5117)
!5120 = !DILocation(line: 524, column: 3, scope: !5117)
!5121 = !DILocation(line: 534, column: 37, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5107, file: !228, line: 533, column: 6)
!5123 = !DILocation(line: 533, column: 6, scope: !5107)
!5124 = !DILocation(line: 535, column: 7, scope: !5122)
!5125 = !DILocation(line: 535, column: 3, scope: !5122)
!5126 = !DILocation(line: 537, column: 9, scope: !5107)
!5127 = !DILocation(line: 538, column: 1, scope: !5107)
!5128 = !DILocation(line: 537, column: 2, scope: !5107)
!5129 = distinct !DISubprogram(name: "_static_cpu_has", scope: !5130, file: !5130, line: 173, type: !5131, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5133)
!5130 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!5131 = !DISubroutineType(types: !5132)
!5132 = !{!949, !78}
!5133 = !{!5134, !5135, !5136}
!5134 = !DILocalVariable(name: "bit", arg: 1, scope: !5129, file: !5130, line: 173, type: !78)
!5135 = !DILabel(scope: !5129, name: "t_yes", file: !5130, line: 187)
!5136 = !DILabel(scope: !5129, name: "t_no", file: !5130, line: 189)
!5137 = !DILocation(line: 173, column: 49, scope: !5129)
!5138 = !DILocation(line: 183, column: 24, scope: !5129)
!5139 = !DILocation(line: 184, column: 30, scope: !5129)
!5140 = !DILocation(line: 184, column: 34, scope: !5129)
!5141 = !DILocation(line: 184, column: 26, scope: !5129)
!5142 = !DILocation(line: 185, column: 70, scope: !5129)
!5143 = !DILocation(line: 185, column: 74, scope: !5129)
!5144 = !DILocation(line: 185, column: 25, scope: !5129)
!5145 = !DILocation(line: 175, column: 2, scope: !5129)
!5146 = !{i64 2149343606, i64 2149343639, i64 2149343645, i64 2149343661, i64 2149343680, i64 2149343711, i64 2149344664, i64 2149343253, i64 2149344670, i64 2149344718, i64 2149344782, i64 2149344846, i64 2149344903, i64 2149345110, i64 2149345158, i64 2149345222, i64 2149345286, i64 2149345343, i64 2149343371, i64 2149343396, i64 2149345553, i64 2149345681, i64 2149345614, i64 2149345695, i64 2149345709, i64 2149345825, i64 2149345770, i64 2149345839, i64 2149343530, i64 1858027, i64 1858067, i64 1858076, i64 1858126, i64 1858147, i64 1858167}
!5147 = !DILocation(line: 187, column: 1, scope: !5129)
!5148 = !DILocation(line: 188, column: 2, scope: !5129)
!5149 = !DILocation(line: 189, column: 1, scope: !5129)
!5150 = !DILocation(line: 190, column: 2, scope: !5129)
!5151 = !DILocation(line: 191, column: 1, scope: !5129)
!5152 = distinct !DISubprogram(name: "might_fault", scope: !5153, file: !5153, line: 202, type: !2588, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227)
!5153 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!5154 = !DILocation(line: 202, column: 40, scope: !5152)
!5155 = distinct !DISubprogram(name: "stac", scope: !5156, file: !5156, line: 36, type: !2588, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227)
!5156 = !DIFile(filename: "./arch/x86/include/asm/smap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f3f8be6e1b47df7f19894949839b589")
!5157 = !DILocation(line: 39, column: 2, scope: !5155)
!5158 = !{i64 2152484428, i64 2152484456, i64 2152484462, i64 2152484478, i64 2152484494, i64 2152484521, i64 2152484835, i64 2152484178, i64 2152484841, i64 2152484889, i64 2152484953, i64 2152485017, i64 2152485074, i64 2152484259, i64 2152484284, i64 2152485281, i64 2152485417, i64 2152485342, i64 2152485431, i64 2152484376}
!5159 = !DILocation(line: 40, column: 1, scope: !5155)
!5160 = distinct !DISubprogram(name: "clac", scope: !5156, file: !5156, line: 30, type: !2588, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227)
!5161 = !DILocation(line: 33, column: 2, scope: !5160)
!5162 = !{i64 2152482761, i64 2152482789, i64 2152482795, i64 2152482811, i64 2152482827, i64 2152482854, i64 2152483168, i64 2152482511, i64 2152483174, i64 2152483222, i64 2152483286, i64 2152483350, i64 2152483407, i64 2152482592, i64 2152482617, i64 2152483614, i64 2152483750, i64 2152483675, i64 2152483764, i64 2152482709}
!5163 = !DILocation(line: 34, column: 1, scope: !5160)
!5164 = distinct !DISubprogram(name: "local_bh_disable", scope: !5165, file: !5165, line: 18, type: !2588, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5166)
!5165 = !DIFile(filename: "./include/linux/bottom_half.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b933219b2ffe4299c2e8936a7abfd81d")
!5166 = !{!5167}
!5167 = !DILocalVariable(name: "__here", scope: !5168, file: !5165, line: 20, type: !35)
!5168 = distinct !DILexicalBlock(scope: !5164, file: !5165, line: 20, column: 24)
!5169 = !DILocation(line: 20, column: 24, scope: !5168)
!5170 = !{i64 2149612044}
!5171 = !DILocation(line: 20, column: 24, scope: !5164)
!5172 = !DILocation(line: 20, column: 2, scope: !5164)
!5173 = !DILocation(line: 21, column: 1, scope: !5164)
!5174 = distinct !DISubprogram(name: "__local_bh_disable_ip", scope: !5165, file: !5165, line: 11, type: !5175, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5177)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{null, !35, !33}
!5177 = !{!5178, !5179}
!5178 = !DILocalVariable(name: "ip", arg: 1, scope: !5174, file: !5165, line: 11, type: !35)
!5179 = !DILocalVariable(name: "cnt", arg: 2, scope: !5174, file: !5165, line: 11, type: !33)
!5180 = !DILocation(line: 11, column: 65, scope: !5174)
!5181 = !DILocation(line: 11, column: 82, scope: !5174)
!5182 = !DILocation(line: 13, column: 2, scope: !5174)
!5183 = !DILocation(line: 14, column: 2, scope: !5174)
!5184 = !{i64 2149611832}
!5185 = !DILocation(line: 15, column: 1, scope: !5174)
!5186 = distinct !DISubprogram(name: "__preempt_count_add", scope: !5187, file: !5187, line: 78, type: !3767, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5188)
!5187 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!5188 = !{!5189, !5190, !5192}
!5189 = !DILocalVariable(name: "val", arg: 1, scope: !5186, file: !5187, line: 78, type: !367)
!5190 = !DILocalVariable(name: "pao_ID__", scope: !5191, file: !5187, line: 80, type: !2431)
!5191 = distinct !DILexicalBlock(scope: !5186, file: !5187, line: 80, column: 2)
!5192 = !DILocalVariable(name: "pto_val__", scope: !5193, file: !5187, line: 80, type: !61)
!5193 = distinct !DILexicalBlock(scope: !5194, file: !5187, line: 80, column: 2)
!5194 = distinct !DILexicalBlock(scope: !5195, file: !5187, line: 80, column: 2)
!5195 = distinct !DILexicalBlock(scope: !5191, file: !5187, line: 80, column: 2)
!5196 = !DILocation(line: 78, column: 53, scope: !5186)
!5197 = !DILocation(line: 80, column: 2, scope: !5186)
!5198 = !DILocation(line: 80, column: 2, scope: !5191)
!5199 = !DILocation(line: 80, column: 2, scope: !5195)
!5200 = !DILocation(line: 80, column: 2, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5195, file: !5187, line: 80, column: 2)
!5202 = !{i64 2149584273}
!5203 = !DILocation(line: 80, column: 2, scope: !5194)
!5204 = !DILocation(line: 80, column: 2, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5194, file: !5187, line: 80, column: 2)
!5206 = !{i64 2149584568}
!5207 = !DILocation(line: 80, column: 2, scope: !5193)
!5208 = !{i64 2149585273}
!5209 = !DILocation(line: 81, column: 1, scope: !5186)
!5210 = distinct !DISubprogram(name: "const_test_bit", scope: !5211, file: !5211, line: 166, type: !5212, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5217)
!5211 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5212 = !DISubroutineType(types: !5213)
!5213 = !{!949, !35, !5214}
!5214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5215, size: 64)
!5215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5216)
!5216 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !35)
!5217 = !{!5218, !5219, !5220, !5221, !5222}
!5218 = !DILocalVariable(name: "nr", arg: 1, scope: !5210, file: !5211, line: 166, type: !35)
!5219 = !DILocalVariable(name: "addr", arg: 2, scope: !5210, file: !5211, line: 166, type: !5214)
!5220 = !DILocalVariable(name: "p", scope: !5210, file: !5211, line: 168, type: !4170)
!5221 = !DILocalVariable(name: "mask", scope: !5210, file: !5211, line: 169, type: !35)
!5222 = !DILocalVariable(name: "val", scope: !5210, file: !5211, line: 170, type: !35)
!5223 = !DILocation(line: 166, column: 30, scope: !5210)
!5224 = !DILocation(line: 166, column: 64, scope: !5210)
!5225 = !DILocation(line: 168, column: 2, scope: !5210)
!5226 = !DILocation(line: 168, column: 23, scope: !5210)
!5227 = !DILocation(line: 168, column: 50, scope: !5210)
!5228 = !DILocation(line: 168, column: 57, scope: !5210)
!5229 = !DILocation(line: 168, column: 55, scope: !5210)
!5230 = !DILocation(line: 169, column: 2, scope: !5210)
!5231 = !DILocation(line: 169, column: 16, scope: !5210)
!5232 = !DILocation(line: 169, column: 23, scope: !5210)
!5233 = !DILocation(line: 170, column: 2, scope: !5210)
!5234 = !DILocation(line: 170, column: 16, scope: !5210)
!5235 = !DILocation(line: 170, column: 23, scope: !5210)
!5236 = !DILocation(line: 170, column: 22, scope: !5210)
!5237 = !DILocation(line: 172, column: 12, scope: !5210)
!5238 = !DILocation(line: 172, column: 18, scope: !5210)
!5239 = !DILocation(line: 172, column: 16, scope: !5210)
!5240 = !DILocation(line: 172, column: 10, scope: !5210)
!5241 = !DILocation(line: 172, column: 9, scope: !5210)
!5242 = !DILocation(line: 173, column: 1, scope: !5210)
!5243 = !DILocation(line: 172, column: 2, scope: !5210)
!5244 = distinct !DISubprogram(name: "_test_bit", scope: !5245, file: !5245, line: 139, type: !5212, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5246)
!5245 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5246 = !{!5247, !5248}
!5247 = !DILocalVariable(name: "nr", arg: 1, scope: !5244, file: !5245, line: 139, type: !35)
!5248 = !DILocalVariable(name: "addr", arg: 2, scope: !5244, file: !5245, line: 139, type: !5214)
!5249 = !DILocation(line: 139, column: 25, scope: !5244)
!5250 = !DILocation(line: 139, column: 59, scope: !5244)
!5251 = !DILocation(line: 141, column: 25, scope: !5244)
!5252 = !DILocation(line: 141, column: 32, scope: !5244)
!5253 = !DILocation(line: 141, column: 30, scope: !5244)
!5254 = !DILocation(line: 141, column: 2, scope: !5244)
!5255 = !DILocation(line: 142, column: 23, scope: !5244)
!5256 = !DILocation(line: 142, column: 27, scope: !5244)
!5257 = !DILocation(line: 142, column: 9, scope: !5244)
!5258 = !DILocation(line: 142, column: 2, scope: !5244)
!5259 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5260, file: !5260, line: 66, type: !5261, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5266)
!5260 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5261 = !DISubroutineType(types: !5262)
!5262 = !{null, !5263, !1264}
!5263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5264, size: 64)
!5264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5265)
!5265 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5266 = !{!5267, !5268}
!5267 = !DILocalVariable(name: "v", arg: 1, scope: !5259, file: !5260, line: 66, type: !5263)
!5268 = !DILocalVariable(name: "size", arg: 2, scope: !5259, file: !5260, line: 66, type: !1264)
!5269 = !DILocation(line: 66, column: 73, scope: !5259)
!5270 = !DILocation(line: 66, column: 83, scope: !5259)
!5271 = !DILocation(line: 68, column: 19, scope: !5259)
!5272 = !DILocation(line: 68, column: 22, scope: !5259)
!5273 = !DILocation(line: 68, column: 2, scope: !5259)
!5274 = !DILocation(line: 69, column: 2, scope: !5259)
!5275 = !DILocation(line: 70, column: 1, scope: !5259)
!5276 = distinct !DISubprogram(name: "arch_test_bit", scope: !5277, file: !5277, line: 237, type: !5212, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5278)
!5277 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5278 = !{!5279, !5280}
!5279 = !DILocalVariable(name: "nr", arg: 1, scope: !5276, file: !5277, line: 237, type: !35)
!5280 = !DILocalVariable(name: "addr", arg: 2, scope: !5276, file: !5277, line: 237, type: !5214)
!5281 = !DILocation(line: 237, column: 29, scope: !5276)
!5282 = !DILocation(line: 237, column: 63, scope: !5276)
!5283 = !DILocation(line: 239, column: 30, scope: !5276)
!5284 = !DILocation(line: 239, column: 9, scope: !5276)
!5285 = !DILocation(line: 239, column: 54, scope: !5276)
!5286 = !DILocation(line: 239, column: 58, scope: !5276)
!5287 = !DILocation(line: 239, column: 36, scope: !5276)
!5288 = !DILocation(line: 240, column: 26, scope: !5276)
!5289 = !DILocation(line: 240, column: 30, scope: !5276)
!5290 = !DILocation(line: 240, column: 8, scope: !5276)
!5291 = !DILocation(line: 239, column: 2, scope: !5276)
!5292 = distinct !DISubprogram(name: "kasan_check_read", scope: !5293, file: !5293, line: 40, type: !5294, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5296)
!5293 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!949, !5263, !33}
!5296 = !{!5297, !5298}
!5297 = !DILocalVariable(name: "p", arg: 1, scope: !5292, file: !5293, line: 40, type: !5263)
!5298 = !DILocalVariable(name: "size", arg: 2, scope: !5292, file: !5293, line: 40, type: !33)
!5299 = !DILocation(line: 40, column: 58, scope: !5292)
!5300 = !DILocation(line: 40, column: 74, scope: !5292)
!5301 = !DILocation(line: 42, column: 2, scope: !5292)
!5302 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5303, file: !5303, line: 229, type: !5304, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5306)
!5303 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5304 = !DISubroutineType(types: !5305)
!5305 = !{null, !5263, !1264, !367}
!5306 = !{!5307, !5308, !5309}
!5307 = !DILocalVariable(name: "ptr", arg: 1, scope: !5302, file: !5303, line: 229, type: !5263)
!5308 = !DILocalVariable(name: "size", arg: 2, scope: !5302, file: !5303, line: 229, type: !1264)
!5309 = !DILocalVariable(name: "type", arg: 3, scope: !5302, file: !5303, line: 230, type: !367)
!5310 = !DILocation(line: 229, column: 60, scope: !5302)
!5311 = !DILocation(line: 229, column: 72, scope: !5302)
!5312 = !DILocation(line: 230, column: 15, scope: !5302)
!5313 = !DILocation(line: 230, column: 23, scope: !5302)
!5314 = distinct !DISubprogram(name: "constant_test_bit", scope: !5277, file: !5277, line: 204, type: !5315, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5317)
!5315 = !DISubroutineType(types: !5316)
!5316 = !{!949, !144, !5214}
!5317 = !{!5318, !5319}
!5318 = !DILocalVariable(name: "nr", arg: 1, scope: !5314, file: !5277, line: 204, type: !144)
!5319 = !DILocalVariable(name: "addr", arg: 2, scope: !5314, file: !5277, line: 204, type: !5214)
!5320 = !DILocation(line: 204, column: 52, scope: !5314)
!5321 = !DILocation(line: 204, column: 86, scope: !5314)
!5322 = !DILocation(line: 206, column: 19, scope: !5314)
!5323 = !DILocation(line: 206, column: 22, scope: !5314)
!5324 = !DILocation(line: 206, column: 15, scope: !5314)
!5325 = !DILocation(line: 207, column: 4, scope: !5314)
!5326 = !DILocation(line: 207, column: 9, scope: !5314)
!5327 = !DILocation(line: 207, column: 12, scope: !5314)
!5328 = !DILocation(line: 206, column: 44, scope: !5314)
!5329 = !DILocation(line: 207, column: 37, scope: !5314)
!5330 = !DILocation(line: 206, column: 2, scope: !5314)
!5331 = distinct !DISubprogram(name: "variable_test_bit", scope: !5277, file: !5277, line: 224, type: !5315, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5332)
!5332 = !{!5333, !5334, !5335}
!5333 = !DILocalVariable(name: "nr", arg: 1, scope: !5331, file: !5277, line: 224, type: !144)
!5334 = !DILocalVariable(name: "addr", arg: 2, scope: !5331, file: !5277, line: 224, type: !5214)
!5335 = !DILocalVariable(name: "oldbit", scope: !5331, file: !5277, line: 226, type: !949)
!5336 = !DILocation(line: 224, column: 52, scope: !5331)
!5337 = !DILocation(line: 224, column: 86, scope: !5331)
!5338 = !DILocation(line: 226, column: 2, scope: !5331)
!5339 = !DILocation(line: 226, column: 7, scope: !5331)
!5340 = !DILocation(line: 231, column: 33, scope: !5331)
!5341 = !DILocation(line: 231, column: 46, scope: !5331)
!5342 = !DILocation(line: 228, column: 2, scope: !5331)
!5343 = !{i64 2148244022, i64 2148244096}
!5344 = !DILocation(line: 233, column: 9, scope: !5331)
!5345 = !DILocation(line: 234, column: 1, scope: !5331)
!5346 = !DILocation(line: 233, column: 2, scope: !5331)
!5347 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !5348, file: !5348, line: 313, type: !5349, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5351)
!5348 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!5349 = !DISubroutineType(types: !5350)
!5350 = !{null, !952}
!5351 = !{!5352}
!5352 = !DILocalVariable(name: "op", arg: 1, scope: !5347, file: !5348, line: 313, type: !952)
!5353 = !DILocation(line: 313, column: 66, scope: !5347)
!5354 = !DILocation(line: 313, column: 72, scope: !5347)
!5355 = distinct !DISubprogram(name: "fpregs_state_valid", scope: !2, file: !2, line: 36, type: !5356, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5358)
!5356 = !DISubroutineType(types: !5357)
!5357 = !{!367, !28, !33}
!5358 = !{!5359, !5360, !5361, !5363, !5365}
!5359 = !DILocalVariable(name: "fpu", arg: 1, scope: !5355, file: !2, line: 36, type: !28)
!5360 = !DILocalVariable(name: "cpu", arg: 2, scope: !5355, file: !2, line: 36, type: !33)
!5361 = !DILocalVariable(name: "pscr_ret__", scope: !5362, file: !2, line: 38, type: !28)
!5362 = distinct !DILexicalBlock(scope: !5355, file: !2, line: 38, column: 16)
!5363 = !DILocalVariable(name: "__vpp_verify", scope: !5364, file: !2, line: 38, type: !2081)
!5364 = distinct !DILexicalBlock(scope: !5362, file: !2, line: 38, column: 16)
!5365 = !DILocalVariable(name: "pfo_val__", scope: !5366, file: !2, line: 38, type: !43)
!5366 = distinct !DILexicalBlock(scope: !5362, file: !2, line: 38, column: 16)
!5367 = !DILocation(line: 36, column: 50, scope: !5355)
!5368 = !DILocation(line: 36, column: 68, scope: !5355)
!5369 = !DILocation(line: 38, column: 9, scope: !5355)
!5370 = !DILocation(line: 38, column: 16, scope: !5362)
!5371 = !DILocation(line: 38, column: 16, scope: !5364)
!5372 = !DILocation(line: 38, column: 16, scope: !5366)
!5373 = !{i64 2155441242}
!5374 = !DILocation(line: 38, column: 16, scope: !5355)
!5375 = !DILocation(line: 38, column: 13, scope: !5355)
!5376 = !DILocation(line: 38, column: 52, scope: !5355)
!5377 = !DILocation(line: 38, column: 55, scope: !5355)
!5378 = !DILocation(line: 38, column: 62, scope: !5355)
!5379 = !DILocation(line: 38, column: 67, scope: !5355)
!5380 = !DILocation(line: 38, column: 59, scope: !5355)
!5381 = !DILocation(line: 0, scope: !5355)
!5382 = !DILocation(line: 38, column: 2, scope: !5355)
!5383 = !DISubprogram(name: "restore_fpregs_from_fpstate", scope: !4883, file: !4883, line: 36, type: !5384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5384 = !DISubroutineType(types: !5385)
!5385 = !{null, !37, !43}
!5386 = distinct !DISubprogram(name: "fpregs_activate", scope: !2, file: !2, line: 47, type: !26, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5387)
!5387 = !{!5388, !5389, !5393}
!5388 = !DILocalVariable(name: "fpu", arg: 1, scope: !5386, file: !2, line: 47, type: !28)
!5389 = !DILocalVariable(name: "__vpp_verify", scope: !5390, file: !2, line: 49, type: !2081)
!5390 = distinct !DILexicalBlock(scope: !5391, file: !2, line: 49, column: 2)
!5391 = distinct !DILexicalBlock(scope: !5392, file: !2, line: 49, column: 2)
!5392 = distinct !DILexicalBlock(scope: !5386, file: !2, line: 49, column: 2)
!5393 = !DILocalVariable(name: "pto_val__", scope: !5394, file: !2, line: 49, type: !43)
!5394 = distinct !DILexicalBlock(scope: !5391, file: !2, line: 49, column: 2)
!5395 = !DILocation(line: 47, column: 48, scope: !5386)
!5396 = !DILocation(line: 49, column: 2, scope: !5392)
!5397 = !DILocation(line: 49, column: 2, scope: !5391)
!5398 = !DILocation(line: 49, column: 2, scope: !5390)
!5399 = !DILocation(line: 49, column: 2, scope: !5394)
!5400 = !{i64 2155450157}
!5401 = !DILocation(line: 50, column: 31, scope: !5386)
!5402 = !DILocation(line: 50, column: 2, scope: !5386)
!5403 = !DILocation(line: 51, column: 1, scope: !5386)
!5404 = distinct !DISubprogram(name: "clear_ti_thread_flag", scope: !4444, file: !4444, line: 92, type: !5405, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5407)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{null, !339, !367}
!5407 = !{!5408, !5409}
!5408 = !DILocalVariable(name: "ti", arg: 1, scope: !5404, file: !4444, line: 92, type: !339)
!5409 = !DILocalVariable(name: "flag", arg: 2, scope: !5404, file: !4444, line: 92, type: !367)
!5410 = !DILocation(line: 92, column: 61, scope: !5404)
!5411 = !DILocation(line: 92, column: 69, scope: !5404)
!5412 = !DILocation(line: 94, column: 12, scope: !5404)
!5413 = !DILocation(line: 94, column: 36, scope: !5404)
!5414 = !DILocation(line: 94, column: 40, scope: !5404)
!5415 = !DILocation(line: 94, column: 2, scope: !5404)
!5416 = !DILocation(line: 95, column: 1, scope: !5404)
!5417 = !DILocation(line: 57, column: 1, scope: !25)
!5418 = !DILocation(line: 57, column: 1, scope: !4233)
!5419 = !DILocation(line: 57, column: 1, scope: !4232)
!5420 = !DILocation(line: 57, column: 1, scope: !4235)
!5421 = !DILocation(line: 57, column: 1, scope: !4238)
!5422 = !DILocation(line: 57, column: 1, scope: !4240)
!5423 = !{i64 2155092659}
!5424 = !DILocation(line: 57, column: 1, scope: !4236)
!5425 = !DILocation(line: 57, column: 1, scope: !4242)
!5426 = !DILocation(line: 57, column: 1, scope: !4246)
!5427 = !DILocation(line: 57, column: 1, scope: !4245)
!5428 = !DILocation(line: 57, column: 1, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !4245, file: !19, line: 57, column: 1)
!5430 = !DILocation(line: 57, column: 1, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !4245, file: !19, line: 57, column: 1)
!5432 = !{i64 2155093851, i64 2155093880, i64 2155093926, i64 2155093984, i64 2155094038, i64 2155094092, i64 2155094147, i64 2155094178, i64 2155094486, i64 2155094492, i64 2155094539, i64 2155094562, i64 2155094588}
!5433 = !DILocation(line: 57, column: 1, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !4245, file: !19, line: 57, column: 1)
!5435 = !DILocation(line: 57, column: 1, scope: !4243)
!5436 = !DILocation(line: 57, column: 1, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !4232, file: !19, line: 57, column: 1)
!5438 = !{i64 2155094944}
!5439 = !DILocation(line: 57, column: 1, scope: !4248)
!5440 = !DILocation(line: 57, column: 1, scope: !4251)
!5441 = !DILocation(line: 57, column: 1, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !4251, file: !19, line: 57, column: 1)
!5443 = !DILocation(line: 57, column: 1, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5442, file: !19, line: 57, column: 1)
!5445 = !DILocation(line: 57, column: 1, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !4248, file: !19, line: 57, column: 1)
!5447 = !DILocation(line: 57, column: 1, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5446, file: !19, line: 57, column: 1)
!5449 = !DILocation(line: 57, column: 1, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5448, file: !19, line: 57, column: 1)
!5451 = !DILocation(line: 57, column: 1, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !4232, file: !19, line: 57, column: 1)
!5453 = !{i64 2155101779}
!5454 = !DILocation(line: 57, column: 1, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5452, file: !19, line: 57, column: 1)
!5456 = !DILocation(line: 57, column: 1, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5455, file: !19, line: 57, column: 1)
!5458 = !{i64 2155101938}
!5459 = distinct !DISubprogram(name: "static_key_false", scope: !2547, file: !2547, line: 205, type: !5460, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5474)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{!949, !5462}
!5462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5463, size: 64)
!5463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2547, line: 85, size: 128, elements: !5464)
!5464 = !{!5465, !5466}
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5463, file: !2547, line: 86, baseType: !362, size: 32)
!5466 = !DIDerivedType(tag: DW_TAG_member, scope: !5463, file: !2547, line: 101, baseType: !5467, size: 64, offset: 64)
!5467 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5463, file: !2547, line: 101, size: 64, elements: !5468)
!5468 = !{!5469, !5470, !5471}
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5467, file: !2547, line: 102, baseType: !35, size: 64)
!5470 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5467, file: !2547, line: 103, baseType: !2545, size: 64)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5467, file: !2547, line: 104, baseType: !5472, size: 64)
!5472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5473, size: 64)
!5473 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2547, line: 104, flags: DIFlagFwdDecl)
!5474 = !{!5475}
!5475 = !DILocalVariable(name: "key", arg: 1, scope: !5459, file: !2547, line: 205, type: !5462)
!5476 = !DILocation(line: 205, column: 65, scope: !5459)
!5477 = !DILocation(line: 207, column: 28, scope: !5459)
!5478 = !DILocation(line: 207, column: 9, scope: !5459)
!5479 = !DILocation(line: 207, column: 2, scope: !5459)
!5480 = distinct !DISubprogram(name: "cpu_online", scope: !637, file: !637, line: 1080, type: !5481, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5483)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{!949, !33}
!5483 = !{!5484}
!5484 = !DILocalVariable(name: "cpu", arg: 1, scope: !5480, file: !637, line: 1080, type: !33)
!5485 = !DILocation(line: 1080, column: 44, scope: !5480)
!5486 = !DILocation(line: 1082, column: 26, scope: !5480)
!5487 = !DILocation(line: 1082, column: 9, scope: !5480)
!5488 = !DILocation(line: 1082, column: 2, scope: !5480)
!5489 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !5187, file: !5187, line: 93, type: !2071, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5490)
!5490 = !{!5491}
!5491 = !DILocalVariable(name: "c", scope: !5492, file: !5187, line: 95, type: !949)
!5492 = distinct !DILexicalBlock(scope: !5489, file: !5187, line: 95, column: 9)
!5493 = !DILocation(line: 95, column: 9, scope: !5492)
!5494 = !{i64 2149588629, i64 2149588722}
!5495 = !DILocation(line: 95, column: 9, scope: !5489)
!5496 = !DILocation(line: 95, column: 2, scope: !5489)
!5497 = distinct !DISubprogram(name: "arch_static_branch", scope: !5498, file: !5498, line: 25, type: !5499, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5501)
!5498 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!5499 = !DISubroutineType(types: !5500)
!5500 = !{!949, !5462, !949}
!5501 = !{!5502, !5503, !5504}
!5502 = !DILocalVariable(name: "key", arg: 1, scope: !5497, file: !5498, line: 25, type: !5462)
!5503 = !DILocalVariable(name: "branch", arg: 2, scope: !5497, file: !5498, line: 25, type: !949)
!5504 = !DILabel(scope: !5497, name: "l_yes", file: !5498, line: 33)
!5505 = !DILocation(line: 25, column: 67, scope: !5497)
!5506 = !DILocation(line: 25, column: 77, scope: !5497)
!5507 = !DILocation(line: 30, column: 13, scope: !5497)
!5508 = !DILocation(line: 30, column: 28, scope: !5497)
!5509 = !DILocation(line: 30, column: 26, scope: !5497)
!5510 = !DILocation(line: 27, column: 2, scope: !5497)
!5511 = !{i64 528067, i64 528111, i64 2148015086, i64 2148015107, i64 2148015133, i64 2148015166, i64 2148015200, i64 2148015224}
!5512 = !DILocation(line: 32, column: 2, scope: !5497)
!5513 = !DILocation(line: 33, column: 1, scope: !5497)
!5514 = !DILocation(line: 34, column: 2, scope: !5497)
!5515 = !DILocation(line: 35, column: 1, scope: !5497)
!5516 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !637, file: !637, line: 502, type: !5517, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5519)
!5517 = !DISubroutineType(types: !5518)
!5518 = !{!949, !367, !4181}
!5519 = !{!5520, !5521}
!5520 = !DILocalVariable(name: "cpu", arg: 1, scope: !5516, file: !637, line: 502, type: !367)
!5521 = !DILocalVariable(name: "cpumask", arg: 2, scope: !5516, file: !637, line: 502, type: !4181)
!5522 = !DILocation(line: 502, column: 50, scope: !5516)
!5523 = !DILocation(line: 502, column: 77, scope: !5516)
!5524 = !DILocation(line: 504, column: 9, scope: !5516)
!5525 = !DILocation(line: 504, column: 2, scope: !5516)
!5526 = distinct !DISubprogram(name: "cpumask_check", scope: !637, file: !637, line: 148, type: !5527, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5529)
!5527 = !DISubroutineType(types: !5528)
!5528 = !{!33, !33}
!5529 = !{!5530}
!5530 = !DILocalVariable(name: "cpu", arg: 1, scope: !5526, file: !637, line: 148, type: !33)
!5531 = !DILocation(line: 148, column: 64, scope: !5526)
!5532 = !DILocation(line: 150, column: 20, scope: !5526)
!5533 = !DILocation(line: 150, column: 2, scope: !5526)
!5534 = !DILocation(line: 151, column: 9, scope: !5526)
!5535 = !DILocation(line: 151, column: 2, scope: !5526)
!5536 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !637, file: !637, line: 140, type: !5537, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5539)
!5537 = !DISubroutineType(types: !5538)
!5538 = !{null, !33, !33}
!5539 = !{!5540, !5541}
!5540 = !DILocalVariable(name: "cpu", arg: 1, scope: !5536, file: !637, line: 140, type: !33)
!5541 = !DILocalVariable(name: "bits", arg: 2, scope: !5536, file: !637, line: 140, type: !33)
!5542 = !DILocation(line: 140, column: 60, scope: !5536)
!5543 = !DILocation(line: 140, column: 78, scope: !5536)
!5544 = !DILocation(line: 145, column: 1, scope: !5536)
!5545 = distinct !DISubprogram(name: "clear_bit", scope: !5546, file: !5546, line: 39, type: !5547, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5550)
!5546 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5547 = !DISubroutineType(types: !5548)
!5548 = !{null, !144, !5549}
!5549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5550 = !{!5551, !5552}
!5551 = !DILocalVariable(name: "nr", arg: 1, scope: !5545, file: !5546, line: 39, type: !144)
!5552 = !DILocalVariable(name: "addr", arg: 2, scope: !5545, file: !5546, line: 39, type: !5549)
!5553 = !DILocation(line: 39, column: 44, scope: !5545)
!5554 = !DILocation(line: 39, column: 72, scope: !5545)
!5555 = !DILocation(line: 41, column: 26, scope: !5545)
!5556 = !DILocation(line: 41, column: 33, scope: !5545)
!5557 = !DILocation(line: 41, column: 31, scope: !5545)
!5558 = !DILocation(line: 41, column: 2, scope: !5545)
!5559 = !DILocation(line: 42, column: 17, scope: !5545)
!5560 = !DILocation(line: 42, column: 21, scope: !5545)
!5561 = !DILocation(line: 42, column: 2, scope: !5545)
!5562 = !DILocation(line: 43, column: 1, scope: !5545)
!5563 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5260, file: !5260, line: 80, type: !5261, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5564)
!5564 = !{!5565, !5566}
!5565 = !DILocalVariable(name: "v", arg: 1, scope: !5563, file: !5260, line: 80, type: !5263)
!5566 = !DILocalVariable(name: "size", arg: 2, scope: !5563, file: !5260, line: 80, type: !1264)
!5567 = !DILocation(line: 80, column: 74, scope: !5563)
!5568 = !DILocation(line: 80, column: 84, scope: !5563)
!5569 = !DILocation(line: 82, column: 20, scope: !5563)
!5570 = !DILocation(line: 82, column: 23, scope: !5563)
!5571 = !DILocation(line: 82, column: 2, scope: !5563)
!5572 = !DILocation(line: 83, column: 2, scope: !5563)
!5573 = !DILocation(line: 84, column: 1, scope: !5563)
!5574 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5277, file: !5277, line: 72, type: !5547, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5575)
!5575 = !{!5576, !5577}
!5576 = !DILocalVariable(name: "nr", arg: 1, scope: !5574, file: !5277, line: 72, type: !144)
!5577 = !DILocalVariable(name: "addr", arg: 2, scope: !5574, file: !5277, line: 72, type: !5549)
!5578 = !DILocation(line: 72, column: 21, scope: !5574)
!5579 = !DILocation(line: 72, column: 49, scope: !5574)
!5580 = !DILocation(line: 74, column: 27, scope: !5581)
!5581 = distinct !DILexicalBlock(scope: !5574, file: !5277, line: 74, column: 6)
!5582 = !DILocation(line: 74, column: 6, scope: !5581)
!5583 = !DILocation(line: 74, column: 6, scope: !5574)
!5584 = !DILocation(line: 76, column: 6, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5581, file: !5277, line: 74, column: 32)
!5586 = !DILocation(line: 77, column: 13, scope: !5585)
!5587 = !DILocation(line: 77, column: 12, scope: !5585)
!5588 = !DILocation(line: 75, column: 3, scope: !5585)
!5589 = !{i64 2148231698, i64 2148231737, i64 2148231758, i64 2148231795, i64 2148231818, i64 2148231688}
!5590 = !DILocation(line: 78, column: 2, scope: !5585)
!5591 = !DILocation(line: 80, column: 8, scope: !5592)
!5592 = distinct !DILexicalBlock(scope: !5581, file: !5277, line: 78, column: 9)
!5593 = !DILocation(line: 80, column: 32, scope: !5592)
!5594 = !DILocation(line: 79, column: 3, scope: !5592)
!5595 = !{i64 2148231983, i64 2148232022, i64 2148232043, i64 2148232080, i64 2148232103, i64 2148231973}
!5596 = !DILocation(line: 82, column: 1, scope: !5574)
!5597 = distinct !DISubprogram(name: "kasan_check_write", scope: !5293, file: !5293, line: 44, type: !5294, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5598)
!5598 = !{!5599, !5600}
!5599 = !DILocalVariable(name: "p", arg: 1, scope: !5597, file: !5293, line: 44, type: !5263)
!5600 = !DILocalVariable(name: "size", arg: 2, scope: !5597, file: !5293, line: 44, type: !33)
!5601 = !DILocation(line: 44, column: 59, scope: !5597)
!5602 = !DILocation(line: 44, column: 75, scope: !5597)
!5603 = !DILocation(line: 46, column: 2, scope: !5597)
!5604 = distinct !DISubprogram(name: "pagefault_disabled_inc", scope: !4515, file: !4515, line: 208, type: !2588, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227)
!5605 = !DILocation(line: 210, column: 2, scope: !5604)
!5606 = !DILocation(line: 210, column: 11, scope: !5604)
!5607 = !DILocation(line: 210, column: 29, scope: !5604)
!5608 = !DILocation(line: 211, column: 1, scope: !5604)
!5609 = distinct !DISubprogram(name: "xsave_to_user_sigframe", scope: !4225, file: !4225, line: 263, type: !5610, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5612)
!5610 = !DISubroutineType(types: !5611)
!5611 = !{!367, !4191}
!5612 = !{!5613, !5614, !5615, !5616, !5617, !5618}
!5613 = !DILocalVariable(name: "buf", arg: 1, scope: !5609, file: !4225, line: 263, type: !4191)
!5614 = !DILocalVariable(name: "fpstate", scope: !5609, file: !4225, line: 270, type: !37)
!5615 = !DILocalVariable(name: "mask", scope: !5609, file: !4225, line: 271, type: !43)
!5616 = !DILocalVariable(name: "lmask", scope: !5609, file: !4225, line: 272, type: !61)
!5617 = !DILocalVariable(name: "hmask", scope: !5609, file: !4225, line: 273, type: !61)
!5618 = !DILocalVariable(name: "err", scope: !5609, file: !4225, line: 274, type: !367)
!5619 = !DILocation(line: 263, column: 69, scope: !5609)
!5620 = !DILocation(line: 270, column: 2, scope: !5609)
!5621 = !DILocation(line: 270, column: 18, scope: !5609)
!5622 = !DILocation(line: 270, column: 28, scope: !5609)
!5623 = !DILocation(line: 270, column: 37, scope: !5609)
!5624 = !DILocation(line: 270, column: 44, scope: !5609)
!5625 = !DILocation(line: 270, column: 48, scope: !5609)
!5626 = !DILocation(line: 271, column: 2, scope: !5609)
!5627 = !DILocation(line: 271, column: 6, scope: !5609)
!5628 = !DILocation(line: 271, column: 13, scope: !5609)
!5629 = !DILocation(line: 271, column: 22, scope: !5609)
!5630 = !DILocation(line: 272, column: 2, scope: !5609)
!5631 = !DILocation(line: 272, column: 6, scope: !5609)
!5632 = !DILocation(line: 273, column: 2, scope: !5609)
!5633 = !DILocation(line: 273, column: 6, scope: !5609)
!5634 = !DILocation(line: 274, column: 2, scope: !5609)
!5635 = !DILocation(line: 274, column: 6, scope: !5609)
!5636 = !DILocation(line: 277, column: 6, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5609, file: !4225, line: 277, column: 6)
!5638 = !DILocation(line: 277, column: 6, scope: !5609)
!5639 = !DILocation(line: 278, column: 11, scope: !5637)
!5640 = !DILocation(line: 278, column: 8, scope: !5637)
!5641 = !DILocation(line: 278, column: 3, scope: !5637)
!5642 = !DILocation(line: 280, column: 10, scope: !5609)
!5643 = !DILocation(line: 280, column: 8, scope: !5609)
!5644 = !DILocation(line: 281, column: 10, scope: !5609)
!5645 = !DILocation(line: 281, column: 15, scope: !5609)
!5646 = !DILocation(line: 281, column: 8, scope: !5609)
!5647 = !DILocation(line: 282, column: 21, scope: !5609)
!5648 = !DILocation(line: 282, column: 30, scope: !5609)
!5649 = !DILocation(line: 282, column: 2, scope: !5609)
!5650 = !DILocation(line: 284, column: 2, scope: !5609)
!5651 = !DILocation(line: 285, column: 2, scope: !5609)
!5652 = !{i64 2155604093, i64 2155604104, i64 2155604157, i64 2155604161, i64 2155604493, i64 2155604516, i64 2155604549, i64 2155604580, i64 2155604619}
!5653 = !DILocation(line: 286, column: 2, scope: !5609)
!5654 = !DILocation(line: 288, column: 9, scope: !5609)
!5655 = !DILocation(line: 289, column: 1, scope: !5609)
!5656 = !DILocation(line: 288, column: 2, scope: !5609)
!5657 = distinct !DISubprogram(name: "fxsave_to_user_sigframe", scope: !5658, file: !5658, line: 55, type: !5659, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5661)
!5658 = !DIFile(filename: "arch/x86/kernel/fpu/legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7556b3c5930796eb76e8136771db9108")
!5659 = !DISubroutineType(types: !5660)
!5660 = !{!367, !4187}
!5661 = !{!5662, !5663}
!5662 = !DILocalVariable(name: "fx", arg: 1, scope: !5657, file: !5658, line: 55, type: !4187)
!5663 = !DILocalVariable(name: "err", scope: !5664, file: !5658, line: 60, type: !367)
!5664 = distinct !DILexicalBlock(scope: !5665, file: !5658, line: 60, column: 10)
!5665 = distinct !DILexicalBlock(scope: !5657, file: !5658, line: 57, column: 6)
!5666 = !DILocation(line: 55, column: 71, scope: !5657)
!5667 = !DILocation(line: 60, column: 10, scope: !5664)
!5668 = !{i64 2155505782, i64 2155505810, i64 2155505816, i64 2155505832, i64 2155505848, i64 2155505875, i64 2155506189, i64 2155505498, i64 2155506195, i64 2155506243, i64 2155506307, i64 2155506371, i64 2155506428, i64 2155505579, i64 2155505604, i64 2155506635, i64 2155506771, i64 2155506696, i64 2155506785, i64 2155505696, i64 2155505160, i64 2155505178, i64 2155505208, i64 2155507187, i64 2155507193, i64 2155507209, i64 2155507225, i64 2155507252, i64 2155507566, i64 2155506875, i64 2155507572, i64 2155507620, i64 2155507684, i64 2155507748, i64 2155507805, i64 2155506956, i64 2155506981, i64 2155508012, i64 2155508148, i64 2155508073, i64 2155508162, i64 2155507073, i64 2155505223, i64 2155508176, i64 2155508220, i64 2155508243, i64 2155508276, i64 2155508307, i64 2155508346}
!5669 = !DILocation(line: 60, column: 10, scope: !5665)
!5670 = !DILocation(line: 60, column: 3, scope: !5665)
!5671 = distinct !DISubprogram(name: "fnsave_to_user_sigframe", scope: !5658, file: !5658, line: 50, type: !5672, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5674)
!5672 = !DISubroutineType(types: !5673)
!5673 = !{!367, !4188}
!5674 = !{!5675, !5676}
!5675 = !DILocalVariable(name: "fx", arg: 1, scope: !5671, file: !5658, line: 50, type: !4188)
!5676 = !DILocalVariable(name: "err", scope: !5677, file: !5658, line: 52, type: !367)
!5677 = distinct !DILexicalBlock(scope: !5671, file: !5658, line: 52, column: 9)
!5678 = !DILocation(line: 50, column: 70, scope: !5671)
!5679 = !DILocation(line: 52, column: 9, scope: !5677)
!5680 = !{i64 2155494118, i64 2155494146, i64 2155494152, i64 2155494168, i64 2155494184, i64 2155494211, i64 2155494525, i64 2155493834, i64 2155494531, i64 2155494579, i64 2155494643, i64 2155494707, i64 2155494764, i64 2155493915, i64 2155493940, i64 2155494971, i64 2155495107, i64 2155495032, i64 2155495121, i64 2155494032, i64 2155493490, i64 2155493508, i64 2155493538, i64 2155495523, i64 2155495529, i64 2155495545, i64 2155495561, i64 2155495588, i64 2155495902, i64 2155495211, i64 2155495908, i64 2155495956, i64 2155496020, i64 2155496084, i64 2155496141, i64 2155495292, i64 2155495317, i64 2155496348, i64 2155496484, i64 2155496409, i64 2155496498, i64 2155495409, i64 2155493553, i64 2155496512, i64 2155496556, i64 2155496579, i64 2155496612, i64 2155496643, i64 2155496682}
!5681 = !DILocation(line: 52, column: 9, scope: !5671)
!5682 = !DILocation(line: 52, column: 2, scope: !5671)
!5683 = distinct !DISubprogram(name: "fpu_state_size_dynamic", scope: !5684, file: !5684, line: 123, type: !2071, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5685)
!5684 = !DIFile(filename: "./arch/x86/include/asm/fpu/xstate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1e36e4fe3e49ced604a87bdcedf9e5ac")
!5685 = !{!5686}
!5686 = !DILocalVariable(name: "branch", scope: !5687, file: !5684, line: 125, type: !949)
!5687 = distinct !DILexicalBlock(scope: !5683, file: !5684, line: 125, column: 9)
!5688 = !DILocation(line: 125, column: 9, scope: !5687)
!5689 = !DILocation(line: 125, column: 9, scope: !5690)
!5690 = distinct !DILexicalBlock(scope: !5691, file: !5684, line: 125, column: 9)
!5691 = distinct !DILexicalBlock(scope: !5687, file: !5684, line: 125, column: 9)
!5692 = !DILocation(line: 125, column: 9, scope: !5691)
!5693 = !DILocation(line: 125, column: 9, scope: !5683)
!5694 = !DILocation(line: 125, column: 2, scope: !5683)
!5695 = distinct !DISubprogram(name: "xfeatures_need_sigframe_write", scope: !4225, file: !4225, line: 236, type: !5696, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5698)
!5696 = !DISubroutineType(types: !5697)
!5697 = !{!43}
!5698 = !{!5699}
!5699 = !DILocalVariable(name: "xfeaures_to_write", scope: !5695, file: !4225, line: 238, type: !43)
!5700 = !DILocation(line: 238, column: 2, scope: !5695)
!5701 = !DILocation(line: 238, column: 6, scope: !5695)
!5702 = !DILocation(line: 241, column: 22, scope: !5695)
!5703 = !DILocation(line: 241, column: 20, scope: !5695)
!5704 = !DILocation(line: 244, column: 20, scope: !5695)
!5705 = !DILocation(line: 247, column: 9, scope: !5695)
!5706 = !DILocation(line: 248, column: 1, scope: !5695)
!5707 = !DILocation(line: 247, column: 2, scope: !5695)
!5708 = !DISubprogram(name: "xfd_validate_state", scope: !4225, file: !4225, line: 145, type: !5709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5709 = !DISubroutineType(types: !5710)
!5710 = !{null, !37, !43, !949}
!5711 = distinct !DISubprogram(name: "xfeatures_in_use", scope: !5712, file: !5712, line: 30, type: !5696, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227)
!5712 = !DIFile(filename: "./arch/x86/include/asm/fpu/xcr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4a4ca9d5af4ab411b641640c541b3b7f")
!5713 = !DILocation(line: 32, column: 9, scope: !5711)
!5714 = !DILocation(line: 32, column: 2, scope: !5711)
!5715 = distinct !DISubprogram(name: "xgetbv", scope: !5712, file: !5712, line: 8, type: !5716, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5718)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{!43, !61}
!5718 = !{!5719, !5720, !5721}
!5719 = !DILocalVariable(name: "index", arg: 1, scope: !5715, file: !5712, line: 8, type: !61)
!5720 = !DILocalVariable(name: "eax", scope: !5715, file: !5712, line: 10, type: !61)
!5721 = !DILocalVariable(name: "edx", scope: !5715, file: !5712, line: 10, type: !61)
!5722 = !DILocation(line: 8, column: 39, scope: !5715)
!5723 = !DILocation(line: 10, column: 2, scope: !5715)
!5724 = !DILocation(line: 10, column: 6, scope: !5715)
!5725 = !DILocation(line: 10, column: 11, scope: !5715)
!5726 = !DILocation(line: 12, column: 56, scope: !5715)
!5727 = !DILocation(line: 12, column: 2, scope: !5715)
!5728 = !{i64 8054868}
!5729 = !DILocation(line: 13, column: 9, scope: !5715)
!5730 = !DILocation(line: 13, column: 21, scope: !5715)
!5731 = !DILocation(line: 13, column: 16, scope: !5715)
!5732 = !DILocation(line: 13, column: 25, scope: !5715)
!5733 = !DILocation(line: 13, column: 13, scope: !5715)
!5734 = !DILocation(line: 14, column: 1, scope: !5715)
!5735 = !DILocation(line: 13, column: 2, scope: !5715)
!5736 = distinct !DISubprogram(name: "pagefault_disabled_dec", scope: !4515, file: !4515, line: 213, type: !2588, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227)
!5737 = !DILocation(line: 215, column: 2, scope: !5736)
!5738 = !DILocation(line: 215, column: 11, scope: !5736)
!5739 = !DILocation(line: 215, column: 29, scope: !5736)
!5740 = !DILocation(line: 216, column: 1, scope: !5736)
!5741 = distinct !DISubprogram(name: "local_bh_enable", scope: !5165, file: !5165, line: 31, type: !2588, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5742)
!5742 = !{!5743}
!5743 = !DILocalVariable(name: "__here", scope: !5744, file: !5165, line: 33, type: !35)
!5744 = distinct !DILexicalBlock(scope: !5741, file: !5165, line: 33, column: 23)
!5745 = !DILocation(line: 33, column: 23, scope: !5744)
!5746 = !{i64 2149612610}
!5747 = !DILocation(line: 33, column: 23, scope: !5741)
!5748 = !DILocation(line: 33, column: 2, scope: !5741)
!5749 = !DILocation(line: 34, column: 1, scope: !5741)
!5750 = !DISubprogram(name: "__local_bh_enable_ip", scope: !5165, file: !5165, line: 24, type: !5175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5751 = distinct !DISubprogram(name: "fxsave", scope: !5658, file: !5658, line: 103, type: !5752, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5754)
!5752 = !DISubroutineType(types: !5753)
!5753 = !{null, !4187}
!5754 = !{!5755}
!5755 = !DILocalVariable(name: "fx", arg: 1, scope: !5751, file: !5658, line: 103, type: !4187)
!5756 = !DILocation(line: 103, column: 48, scope: !5751)
!5757 = !DILocation(line: 108, column: 46, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5751, file: !5658, line: 105, column: 6)
!5759 = !DILocation(line: 108, column: 3, scope: !5758)
!5760 = !{i64 8009343}
!5761 = !DILocation(line: 109, column: 1, scope: !5751)
!5762 = !DISubprogram(name: "convert_from_fxsr", scope: !4883, file: !4883, line: 21, type: !5763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5763 = !DISubroutineType(types: !5764)
!5764 = !{null, !5765, !348}
!5765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4565, size: 64)
!5766 = distinct !DISubprogram(name: "__copy_to_user", scope: !4515, file: !4515, line: 131, type: !5767, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5769)
!5767 = !DISubroutineType(types: !5768)
!5768 = !{!35, !355, !2081, !35}
!5769 = !{!5770, !5771, !5772}
!5770 = !DILocalVariable(name: "to", arg: 1, scope: !5766, file: !4515, line: 131, type: !355)
!5771 = !DILocalVariable(name: "from", arg: 2, scope: !5766, file: !4515, line: 131, type: !2081)
!5772 = !DILocalVariable(name: "n", arg: 3, scope: !5766, file: !4515, line: 131, type: !35)
!5773 = !DILocation(line: 131, column: 29, scope: !5766)
!5774 = !DILocation(line: 131, column: 45, scope: !5766)
!5775 = !DILocation(line: 131, column: 65, scope: !5766)
!5776 = !DILocation(line: 133, column: 2, scope: !5766)
!5777 = !DILocation(line: 134, column: 6, scope: !5778)
!5778 = distinct !DILexicalBlock(scope: !5766, file: !4515, line: 134, column: 6)
!5779 = !DILocation(line: 134, column: 6, scope: !5766)
!5780 = !DILocation(line: 135, column: 10, scope: !5778)
!5781 = !DILocation(line: 135, column: 3, scope: !5778)
!5782 = !DILocation(line: 136, column: 26, scope: !5766)
!5783 = !DILocation(line: 136, column: 30, scope: !5766)
!5784 = !DILocation(line: 136, column: 36, scope: !5766)
!5785 = !DILocation(line: 136, column: 2, scope: !5766)
!5786 = !DILocation(line: 137, column: 20, scope: !5766)
!5787 = !DILocation(line: 137, column: 26, scope: !5766)
!5788 = !DILocation(line: 137, column: 2, scope: !5766)
!5789 = !DILocation(line: 138, column: 26, scope: !5766)
!5790 = !DILocation(line: 138, column: 30, scope: !5766)
!5791 = !DILocation(line: 138, column: 36, scope: !5766)
!5792 = !DILocation(line: 138, column: 9, scope: !5766)
!5793 = !DILocation(line: 138, column: 2, scope: !5766)
!5794 = !DILocation(line: 139, column: 1, scope: !5766)
!5795 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !5796, file: !5796, line: 76, type: !5797, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5799)
!5796 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!5797 = !DISubroutineType(types: !5798)
!5798 = !{null, !355, !2081, !1264, !1264}
!5799 = !{!5800, !5801, !5802, !5803}
!5800 = !DILocalVariable(name: "to", arg: 1, scope: !5795, file: !5796, line: 76, type: !355)
!5801 = !DILocalVariable(name: "from", arg: 2, scope: !5795, file: !5796, line: 76, type: !2081)
!5802 = !DILocalVariable(name: "to_copy", arg: 3, scope: !5795, file: !5796, line: 77, type: !1264)
!5803 = !DILocalVariable(name: "left", arg: 4, scope: !5795, file: !5796, line: 77, type: !1264)
!5804 = !DILocation(line: 76, column: 52, scope: !5795)
!5805 = !DILocation(line: 76, column: 68, scope: !5795)
!5806 = !DILocation(line: 77, column: 18, scope: !5795)
!5807 = !DILocation(line: 77, column: 34, scope: !5795)
!5808 = !DILocation(line: 79, column: 1, scope: !5795)
!5809 = distinct !DISubprogram(name: "kmsan_unpoison_memory", scope: !5796, file: !5796, line: 70, type: !5810, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5812)
!5810 = !DISubroutineType(types: !5811)
!5811 = !{null, !2081, !1264}
!5812 = !{!5813, !5814}
!5813 = !DILocalVariable(name: "address", arg: 1, scope: !5809, file: !5796, line: 70, type: !2081)
!5814 = !DILocalVariable(name: "size", arg: 2, scope: !5809, file: !5796, line: 70, type: !1264)
!5815 = !DILocation(line: 70, column: 54, scope: !5809)
!5816 = !DILocation(line: 70, column: 70, scope: !5809)
!5817 = !DILocation(line: 72, column: 1, scope: !5809)
!5818 = distinct !DISubprogram(name: "should_fail_usercopy", scope: !5819, file: !5819, line: 18, type: !2071, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227)
!5819 = !DIFile(filename: "./include/linux/fault-inject-usercopy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c50bc45f7dd45d85340e9f2bf0c47d5")
!5820 = !DILocation(line: 18, column: 49, scope: !5818)
!5821 = distinct !DISubprogram(name: "instrument_copy_to_user", scope: !5260, file: !5260, line: 110, type: !5822, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5824)
!5822 = !DISubroutineType(types: !5823)
!5823 = !{null, !355, !2081, !35}
!5824 = !{!5825, !5826, !5827}
!5825 = !DILocalVariable(name: "to", arg: 1, scope: !5821, file: !5260, line: 110, type: !355)
!5826 = !DILocalVariable(name: "from", arg: 2, scope: !5821, file: !5260, line: 110, type: !2081)
!5827 = !DILocalVariable(name: "n", arg: 3, scope: !5821, file: !5260, line: 110, type: !35)
!5828 = !DILocation(line: 110, column: 38, scope: !5821)
!5829 = !DILocation(line: 110, column: 54, scope: !5821)
!5830 = !DILocation(line: 110, column: 74, scope: !5821)
!5831 = !DILocation(line: 112, column: 19, scope: !5821)
!5832 = !DILocation(line: 112, column: 25, scope: !5821)
!5833 = !DILocation(line: 112, column: 2, scope: !5821)
!5834 = !DILocation(line: 113, column: 2, scope: !5821)
!5835 = !DILocation(line: 114, column: 21, scope: !5821)
!5836 = !DILocation(line: 114, column: 25, scope: !5821)
!5837 = !DILocation(line: 114, column: 31, scope: !5821)
!5838 = !DILocation(line: 114, column: 2, scope: !5821)
!5839 = !DILocation(line: 115, column: 1, scope: !5821)
!5840 = distinct !DISubprogram(name: "check_object_size", scope: !4444, file: !4444, line: 218, type: !5841, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5843)
!5841 = !DISubroutineType(types: !5842)
!5842 = !{null, !2081, !35, !949}
!5843 = !{!5844, !5845, !5846}
!5844 = !DILocalVariable(name: "ptr", arg: 1, scope: !5840, file: !4444, line: 218, type: !2081)
!5845 = !DILocalVariable(name: "n", arg: 2, scope: !5840, file: !4444, line: 218, type: !35)
!5846 = !DILocalVariable(name: "to_user", arg: 3, scope: !5840, file: !4444, line: 219, type: !949)
!5847 = !DILocation(line: 218, column: 50, scope: !5840)
!5848 = !DILocation(line: 218, column: 69, scope: !5840)
!5849 = !DILocation(line: 219, column: 15, scope: !5840)
!5850 = !DILocation(line: 220, column: 3, scope: !5840)
!5851 = distinct !DISubprogram(name: "raw_copy_to_user", scope: !4382, file: !4382, line: 131, type: !5767, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5852)
!5852 = !{!5853, !5854, !5855}
!5853 = !DILocalVariable(name: "dst", arg: 1, scope: !5851, file: !4382, line: 131, type: !355)
!5854 = !DILocalVariable(name: "src", arg: 2, scope: !5851, file: !4382, line: 131, type: !2081)
!5855 = !DILocalVariable(name: "size", arg: 3, scope: !5851, file: !4382, line: 131, type: !35)
!5856 = !DILocation(line: 131, column: 31, scope: !5851)
!5857 = !DILocation(line: 131, column: 48, scope: !5851)
!5858 = !DILocation(line: 131, column: 67, scope: !5851)
!5859 = !DILocation(line: 133, column: 43, scope: !5851)
!5860 = !DILocation(line: 133, column: 48, scope: !5851)
!5861 = !DILocation(line: 133, column: 53, scope: !5851)
!5862 = !DILocation(line: 133, column: 9, scope: !5851)
!5863 = !DILocation(line: 133, column: 2, scope: !5851)
!5864 = distinct !DISubprogram(name: "copy_user_generic", scope: !4382, file: !4382, line: 105, type: !5767, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5865)
!5865 = !{!5866, !5867, !5868}
!5866 = !DILocalVariable(name: "to", arg: 1, scope: !5864, file: !4382, line: 105, type: !355)
!5867 = !DILocalVariable(name: "from", arg: 2, scope: !5864, file: !4382, line: 105, type: !2081)
!5868 = !DILocalVariable(name: "len", arg: 3, scope: !5864, file: !4382, line: 105, type: !35)
!5869 = !DILocation(line: 105, column: 25, scope: !5864)
!5870 = !DILocation(line: 105, column: 41, scope: !5864)
!5871 = !DILocation(line: 105, column: 61, scope: !5864)
!5872 = !DILocation(line: 107, column: 2, scope: !5864)
!5873 = !DILocation(line: 112, column: 2, scope: !5864)
!5874 = !{i64 5502114, i64 5502119, i64 2152988809, i64 2152988815, i64 2152988831, i64 2152988847, i64 2152988874, i64 2152989197, i64 2152988408, i64 2152989203, i64 2152989251, i64 2152989315, i64 2152989379, i64 2152989436, i64 2152988489, i64 2152988514, i64 2152989720, i64 2152989861, i64 2152989781, i64 2152989875, i64 2152988606, i64 5502216, i64 2152989940, i64 2152989984, i64 2152990007, i64 2152990040, i64 2152990071, i64 2152990110}
!5875 = !DILocation(line: 120, column: 2, scope: !5864)
!5876 = !DILocation(line: 121, column: 9, scope: !5864)
!5877 = !DILocation(line: 121, column: 2, scope: !5864)
!5878 = distinct !DISubprogram(name: "save_sw_bytes", scope: !228, file: !228, line: 105, type: !5879, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5882)
!5879 = !DISubroutineType(types: !5880)
!5880 = !{null, !5881, !949, !37}
!5881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!5882 = !{!5883, !5884, !5885}
!5883 = !DILocalVariable(name: "sw_bytes", arg: 1, scope: !5878, file: !228, line: 105, type: !5881)
!5884 = !DILocalVariable(name: "ia32_frame", arg: 2, scope: !5878, file: !228, line: 105, type: !949)
!5885 = !DILocalVariable(name: "fpstate", arg: 3, scope: !5878, file: !228, line: 106, type: !37)
!5886 = !DILocation(line: 105, column: 56, scope: !5878)
!5887 = !DILocation(line: 105, column: 71, scope: !5878)
!5888 = !DILocation(line: 106, column: 22, scope: !5878)
!5889 = !DILocation(line: 108, column: 2, scope: !5878)
!5890 = !DILocation(line: 108, column: 12, scope: !5878)
!5891 = !DILocation(line: 108, column: 19, scope: !5878)
!5892 = !DILocation(line: 109, column: 28, scope: !5878)
!5893 = !DILocation(line: 109, column: 37, scope: !5878)
!5894 = !DILocation(line: 109, column: 47, scope: !5878)
!5895 = !DILocation(line: 109, column: 2, scope: !5878)
!5896 = !DILocation(line: 109, column: 12, scope: !5878)
!5897 = !DILocation(line: 109, column: 26, scope: !5878)
!5898 = !DILocation(line: 110, column: 24, scope: !5878)
!5899 = !DILocation(line: 110, column: 33, scope: !5878)
!5900 = !DILocation(line: 110, column: 2, scope: !5878)
!5901 = !DILocation(line: 110, column: 12, scope: !5878)
!5902 = !DILocation(line: 110, column: 22, scope: !5878)
!5903 = !DILocation(line: 111, column: 26, scope: !5878)
!5904 = !DILocation(line: 111, column: 35, scope: !5878)
!5905 = !DILocation(line: 111, column: 2, scope: !5878)
!5906 = !DILocation(line: 111, column: 12, scope: !5878)
!5907 = !DILocation(line: 111, column: 24, scope: !5878)
!5908 = !DILocation(line: 113, column: 6, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5878, file: !228, line: 113, column: 6)
!5910 = !DILocation(line: 113, column: 6, scope: !5878)
!5911 = !DILocation(line: 114, column: 3, scope: !5909)
!5912 = !DILocation(line: 114, column: 13, scope: !5909)
!5913 = !DILocation(line: 114, column: 27, scope: !5909)
!5914 = !DILocation(line: 115, column: 1, scope: !5878)
!5915 = distinct !DISubprogram(name: "check_xstate_in_sigframe", scope: !228, file: !228, line: 27, type: !5916, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !5918)
!5916 = !DISubroutineType(types: !5917)
!5917 = !{!949, !4187, !5881}
!5918 = !{!5919, !5920, !5921, !5922, !5923, !5924, !5927, !5928, !5930}
!5919 = !DILocalVariable(name: "fxbuf", arg: 1, scope: !5915, file: !228, line: 27, type: !4187)
!5920 = !DILocalVariable(name: "fx_sw", arg: 2, scope: !5915, file: !228, line: 28, type: !5881)
!5921 = !DILocalVariable(name: "min_xstate_size", scope: !5915, file: !228, line: 30, type: !367)
!5922 = !DILocalVariable(name: "fpstate", scope: !5915, file: !228, line: 32, type: !355)
!5923 = !DILocalVariable(name: "magic2", scope: !5915, file: !228, line: 33, type: !33)
!5924 = !DILocalVariable(name: "__ret_gu", scope: !5925, file: !228, line: 51, type: !367)
!5925 = distinct !DILexicalBlock(scope: !5926, file: !228, line: 51, column: 6)
!5926 = distinct !DILexicalBlock(scope: !5915, file: !228, line: 51, column: 6)
!5927 = !DILocalVariable(name: "__val_gu", scope: !5925, file: !228, line: 51, type: !33)
!5928 = !DILocalVariable(name: "__tmp", scope: !5929, file: !228, line: 51, type: !43)
!5929 = distinct !DILexicalBlock(scope: !5925, file: !228, line: 51, column: 6)
!5930 = !DILabel(scope: !5915, name: "setfx", file: !228, line: 56)
!5931 = !DILocation(line: 27, column: 73, scope: !5915)
!5932 = !DILocation(line: 28, column: 32, scope: !5915)
!5933 = !DILocation(line: 30, column: 2, scope: !5915)
!5934 = !DILocation(line: 30, column: 6, scope: !5915)
!5935 = !DILocation(line: 32, column: 2, scope: !5915)
!5936 = !DILocation(line: 32, column: 15, scope: !5915)
!5937 = !DILocation(line: 32, column: 25, scope: !5915)
!5938 = !DILocation(line: 33, column: 2, scope: !5915)
!5939 = !DILocation(line: 33, column: 15, scope: !5915)
!5940 = !DILocation(line: 35, column: 23, scope: !5941)
!5941 = distinct !DILexicalBlock(scope: !5915, file: !228, line: 35, column: 6)
!5942 = !DILocation(line: 35, column: 31, scope: !5941)
!5943 = !DILocation(line: 35, column: 38, scope: !5941)
!5944 = !DILocation(line: 35, column: 6, scope: !5941)
!5945 = !DILocation(line: 35, column: 6, scope: !5915)
!5946 = !DILocation(line: 36, column: 3, scope: !5941)
!5947 = !DILocation(line: 39, column: 6, scope: !5948)
!5948 = distinct !DILexicalBlock(scope: !5915, file: !228, line: 39, column: 6)
!5949 = !DILocation(line: 39, column: 13, scope: !5948)
!5950 = !DILocation(line: 39, column: 20, scope: !5948)
!5951 = !DILocation(line: 39, column: 40, scope: !5948)
!5952 = !DILocation(line: 40, column: 6, scope: !5948)
!5953 = !DILocation(line: 40, column: 13, scope: !5948)
!5954 = !DILocation(line: 40, column: 27, scope: !5948)
!5955 = !DILocation(line: 40, column: 25, scope: !5948)
!5956 = !DILocation(line: 40, column: 43, scope: !5948)
!5957 = !DILocation(line: 41, column: 6, scope: !5948)
!5958 = !DILocation(line: 41, column: 13, scope: !5948)
!5959 = !DILocation(line: 41, column: 27, scope: !5948)
!5960 = !DILocation(line: 41, column: 36, scope: !5948)
!5961 = !DILocation(line: 41, column: 43, scope: !5948)
!5962 = !DILocation(line: 41, column: 47, scope: !5948)
!5963 = !DILocation(line: 41, column: 56, scope: !5948)
!5964 = !DILocation(line: 41, column: 25, scope: !5948)
!5965 = !DILocation(line: 41, column: 66, scope: !5948)
!5966 = !DILocation(line: 42, column: 6, scope: !5948)
!5967 = !DILocation(line: 42, column: 13, scope: !5948)
!5968 = !DILocation(line: 42, column: 27, scope: !5948)
!5969 = !DILocation(line: 42, column: 34, scope: !5948)
!5970 = !DILocation(line: 42, column: 25, scope: !5948)
!5971 = !DILocation(line: 39, column: 6, scope: !5915)
!5972 = !DILocation(line: 43, column: 3, scope: !5948)
!5973 = !DILocation(line: 51, column: 6, scope: !5925)
!5974 = !{i64 2155623596}
!5975 = !DILocation(line: 51, column: 6, scope: !5929)
!5976 = !DILocation(line: 51, column: 6, scope: !5926)
!5977 = !DILocation(line: 51, column: 6, scope: !5915)
!5978 = !DILocation(line: 52, column: 3, scope: !5926)
!5979 = !DILocation(line: 54, column: 6, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5915, file: !228, line: 54, column: 6)
!5981 = !DILocation(line: 54, column: 6, scope: !5915)
!5982 = !DILocation(line: 55, column: 3, scope: !5980)
!5983 = !DILocation(line: 56, column: 1, scope: !5915)
!5984 = !DILocation(line: 57, column: 37, scope: !5915)
!5985 = !DILocation(line: 57, column: 46, scope: !5915)
!5986 = !DILocation(line: 57, column: 53, scope: !5915)
!5987 = !DILocation(line: 57, column: 2, scope: !5915)
!5988 = !DILocation(line: 60, column: 2, scope: !5915)
!5989 = !DILocation(line: 60, column: 9, scope: !5915)
!5990 = !DILocation(line: 60, column: 16, scope: !5915)
!5991 = !DILocation(line: 61, column: 2, scope: !5915)
!5992 = !DILocation(line: 61, column: 9, scope: !5915)
!5993 = !DILocation(line: 61, column: 21, scope: !5915)
!5994 = !DILocation(line: 62, column: 2, scope: !5915)
!5995 = !DILocation(line: 62, column: 9, scope: !5915)
!5996 = !DILocation(line: 62, column: 19, scope: !5915)
!5997 = !DILocation(line: 63, column: 2, scope: !5915)
!5998 = !DILocation(line: 64, column: 1, scope: !5915)
!5999 = distinct !DISubprogram(name: "restore_fpregs_from_user", scope: !228, file: !228, line: 277, type: !6000, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6002)
!6000 = !DISubroutineType(types: !6001)
!6001 = !{!949, !355, !43, !949}
!6002 = !{!6003, !6004, !6005, !6006, !6007, !6008}
!6003 = !DILocalVariable(name: "buf", arg: 1, scope: !5999, file: !228, line: 277, type: !355)
!6004 = !DILocalVariable(name: "xrestore", arg: 2, scope: !5999, file: !228, line: 277, type: !43)
!6005 = !DILocalVariable(name: "fx_only", arg: 3, scope: !5999, file: !228, line: 277, type: !949)
!6006 = !DILocalVariable(name: "fpu", scope: !5999, file: !228, line: 279, type: !28)
!6007 = !DILocalVariable(name: "ret", scope: !5999, file: !228, line: 280, type: !367)
!6008 = !DILabel(scope: !5999, name: "retry", file: !228, line: 284)
!6009 = !DILocation(line: 277, column: 51, scope: !5999)
!6010 = !DILocation(line: 277, column: 60, scope: !5999)
!6011 = !DILocation(line: 277, column: 75, scope: !5999)
!6012 = !DILocation(line: 279, column: 2, scope: !5999)
!6013 = !DILocation(line: 279, column: 14, scope: !5999)
!6014 = !DILocation(line: 279, column: 21, scope: !5999)
!6015 = !DILocation(line: 279, column: 30, scope: !5999)
!6016 = !DILocation(line: 279, column: 37, scope: !5999)
!6017 = !DILocation(line: 280, column: 2, scope: !5999)
!6018 = !DILocation(line: 280, column: 6, scope: !5999)
!6019 = !DILocation(line: 283, column: 14, scope: !5999)
!6020 = !DILocation(line: 283, column: 19, scope: !5999)
!6021 = !DILocation(line: 283, column: 28, scope: !5999)
!6022 = !DILocation(line: 283, column: 11, scope: !5999)
!6023 = !DILocation(line: 283, column: 2, scope: !5999)
!6024 = !DILocation(line: 284, column: 1, scope: !5999)
!6025 = !DILocation(line: 285, column: 2, scope: !5999)
!6026 = !DILocation(line: 287, column: 19, scope: !5999)
!6027 = !DILocation(line: 287, column: 24, scope: !5999)
!6028 = !DILocation(line: 287, column: 2, scope: !5999)
!6029 = !DILocation(line: 288, column: 2, scope: !5999)
!6030 = !DILocation(line: 289, column: 35, scope: !5999)
!6031 = !DILocation(line: 289, column: 40, scope: !5999)
!6032 = !DILocation(line: 289, column: 45, scope: !5999)
!6033 = !DILocation(line: 289, column: 54, scope: !5999)
!6034 = !DILocation(line: 290, column: 7, scope: !5999)
!6035 = !DILocation(line: 290, column: 17, scope: !5999)
!6036 = !DILocation(line: 289, column: 8, scope: !5999)
!6037 = !DILocation(line: 289, column: 6, scope: !5999)
!6038 = !DILocation(line: 291, column: 2, scope: !5999)
!6039 = !DILocation(line: 293, column: 6, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !5999, file: !228, line: 293, column: 6)
!6041 = !DILocation(line: 293, column: 6, scope: !5999)
!6042 = !DILocation(line: 305, column: 7, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6044, file: !228, line: 305, column: 7)
!6044 = distinct !DILexicalBlock(scope: !6040, file: !228, line: 293, column: 21)
!6045 = !DILocation(line: 305, column: 7, scope: !6044)
!6046 = !DILocation(line: 306, column: 4, scope: !6043)
!6047 = !DILocation(line: 307, column: 3, scope: !6044)
!6048 = !DILocation(line: 310, column: 7, scope: !6049)
!6049 = distinct !DILexicalBlock(scope: !6044, file: !228, line: 310, column: 7)
!6050 = !DILocation(line: 310, column: 11, scope: !6049)
!6051 = !DILocation(line: 310, column: 7, scope: !6044)
!6052 = !DILocation(line: 311, column: 4, scope: !6049)
!6053 = !DILocation(line: 313, column: 26, scope: !6054)
!6054 = distinct !DILexicalBlock(scope: !6044, file: !228, line: 313, column: 7)
!6055 = !DILocation(line: 313, column: 31, scope: !6054)
!6056 = !DILocation(line: 313, column: 36, scope: !6054)
!6057 = !DILocation(line: 313, column: 45, scope: !6054)
!6058 = !DILocation(line: 313, column: 8, scope: !6054)
!6059 = !DILocation(line: 313, column: 7, scope: !6044)
!6060 = !DILocation(line: 314, column: 4, scope: !6054)
!6061 = !DILocation(line: 315, column: 3, scope: !6044)
!6062 = !DILocation(line: 327, column: 6, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !5999, file: !228, line: 327, column: 6)
!6064 = !DILocation(line: 327, column: 42, scope: !6063)
!6065 = !DILocation(line: 327, column: 45, scope: !6063)
!6066 = !DILocation(line: 327, column: 6, scope: !5999)
!6067 = !DILocation(line: 328, column: 24, scope: !6063)
!6068 = !DILocation(line: 328, column: 29, scope: !6063)
!6069 = !DILocation(line: 328, column: 3, scope: !6063)
!6070 = !DILocation(line: 330, column: 2, scope: !5999)
!6071 = !DILocation(line: 331, column: 2, scope: !5999)
!6072 = !DILocation(line: 332, column: 2, scope: !5999)
!6073 = !DILocation(line: 333, column: 1, scope: !5999)
!6074 = distinct !DISubprogram(name: "__copy_from_user", scope: !4515, file: !4515, line: 93, type: !5767, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6075)
!6075 = !{!6076, !6077, !6078, !6079}
!6076 = !DILocalVariable(name: "to", arg: 1, scope: !6074, file: !4515, line: 93, type: !355)
!6077 = !DILocalVariable(name: "from", arg: 2, scope: !6074, file: !4515, line: 93, type: !2081)
!6078 = !DILocalVariable(name: "n", arg: 3, scope: !6074, file: !4515, line: 93, type: !35)
!6079 = !DILocalVariable(name: "res", scope: !6074, file: !4515, line: 95, type: !35)
!6080 = !DILocation(line: 93, column: 24, scope: !6074)
!6081 = !DILocation(line: 93, column: 47, scope: !6074)
!6082 = !DILocation(line: 93, column: 67, scope: !6074)
!6083 = !DILocation(line: 95, column: 2, scope: !6074)
!6084 = !DILocation(line: 95, column: 16, scope: !6074)
!6085 = !DILocation(line: 97, column: 2, scope: !6074)
!6086 = !DILocation(line: 98, column: 35, scope: !6074)
!6087 = !DILocation(line: 98, column: 39, scope: !6074)
!6088 = !DILocation(line: 98, column: 45, scope: !6074)
!6089 = !DILocation(line: 98, column: 2, scope: !6074)
!6090 = !DILocation(line: 99, column: 6, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !6074, file: !4515, line: 99, column: 6)
!6092 = !DILocation(line: 99, column: 6, scope: !6074)
!6093 = !DILocation(line: 100, column: 10, scope: !6091)
!6094 = !DILocation(line: 100, column: 3, scope: !6091)
!6095 = !DILocation(line: 101, column: 20, scope: !6074)
!6096 = !DILocation(line: 101, column: 24, scope: !6074)
!6097 = !DILocation(line: 101, column: 2, scope: !6074)
!6098 = !DILocation(line: 102, column: 27, scope: !6074)
!6099 = !DILocation(line: 102, column: 31, scope: !6074)
!6100 = !DILocation(line: 102, column: 37, scope: !6074)
!6101 = !DILocation(line: 102, column: 8, scope: !6074)
!6102 = !DILocation(line: 102, column: 6, scope: !6074)
!6103 = !DILocation(line: 103, column: 34, scope: !6074)
!6104 = !DILocation(line: 103, column: 38, scope: !6074)
!6105 = !DILocation(line: 103, column: 44, scope: !6074)
!6106 = !DILocation(line: 103, column: 47, scope: !6074)
!6107 = !DILocation(line: 103, column: 2, scope: !6074)
!6108 = !DILocation(line: 104, column: 9, scope: !6074)
!6109 = !DILocation(line: 104, column: 2, scope: !6074)
!6110 = !DILocation(line: 105, column: 1, scope: !6074)
!6111 = distinct !DISubprogram(name: "xfeatures_mask_supervisor", scope: !4225, file: !4225, line: 59, type: !5696, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227)
!6112 = !DILocation(line: 61, column: 24, scope: !6111)
!6113 = !DILocation(line: 61, column: 37, scope: !6111)
!6114 = !DILocation(line: 61, column: 2, scope: !6111)
!6115 = distinct !DISubprogram(name: "os_xsave", scope: !4225, file: !4225, line: 184, type: !6116, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6118)
!6116 = !DISubroutineType(types: !6117)
!6117 = !{null, !37}
!6118 = !{!6119, !6120, !6121, !6122, !6123, !6124, !6126, !6129, !6131}
!6119 = !DILocalVariable(name: "fpstate", arg: 1, scope: !6115, file: !4225, line: 184, type: !37)
!6120 = !DILocalVariable(name: "mask", scope: !6115, file: !4225, line: 186, type: !43)
!6121 = !DILocalVariable(name: "lmask", scope: !6115, file: !4225, line: 187, type: !61)
!6122 = !DILocalVariable(name: "hmask", scope: !6115, file: !4225, line: 188, type: !61)
!6123 = !DILocalVariable(name: "err", scope: !6115, file: !4225, line: 189, type: !367)
!6124 = !DILocalVariable(name: "__ret_warn_on", scope: !6125, file: !4225, line: 191, type: !367)
!6125 = distinct !DILexicalBlock(scope: !6115, file: !4225, line: 191, column: 2)
!6126 = !DILocalVariable(name: "__flags", scope: !6127, file: !4225, line: 191, type: !367)
!6127 = distinct !DILexicalBlock(scope: !6128, file: !4225, line: 191, column: 2)
!6128 = distinct !DILexicalBlock(scope: !6125, file: !4225, line: 191, column: 2)
!6129 = !DILocalVariable(name: "__ret_warn_on", scope: !6130, file: !4225, line: 197, type: !367)
!6130 = distinct !DILexicalBlock(scope: !6115, file: !4225, line: 197, column: 2)
!6131 = !DILocalVariable(name: "__flags", scope: !6132, file: !4225, line: 197, type: !367)
!6132 = distinct !DILexicalBlock(scope: !6133, file: !4225, line: 197, column: 2)
!6133 = distinct !DILexicalBlock(scope: !6130, file: !4225, line: 197, column: 2)
!6134 = !DILocation(line: 184, column: 45, scope: !6115)
!6135 = !DILocation(line: 186, column: 2, scope: !6115)
!6136 = !DILocation(line: 186, column: 6, scope: !6115)
!6137 = !DILocation(line: 186, column: 13, scope: !6115)
!6138 = !DILocation(line: 186, column: 22, scope: !6115)
!6139 = !DILocation(line: 187, column: 2, scope: !6115)
!6140 = !DILocation(line: 187, column: 6, scope: !6115)
!6141 = !DILocation(line: 187, column: 14, scope: !6115)
!6142 = !DILocation(line: 188, column: 2, scope: !6115)
!6143 = !DILocation(line: 188, column: 6, scope: !6115)
!6144 = !DILocation(line: 188, column: 14, scope: !6115)
!6145 = !DILocation(line: 188, column: 19, scope: !6115)
!6146 = !DILocation(line: 189, column: 2, scope: !6115)
!6147 = !DILocation(line: 189, column: 6, scope: !6115)
!6148 = !DILocation(line: 191, column: 2, scope: !6125)
!6149 = !DILocation(line: 191, column: 2, scope: !6128)
!6150 = !DILocation(line: 191, column: 2, scope: !6127)
!6151 = !DILocation(line: 191, column: 2, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6127, file: !4225, line: 191, column: 2)
!6153 = !DILocation(line: 191, column: 2, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6127, file: !4225, line: 191, column: 2)
!6155 = !{i64 2155588657, i64 2155588686, i64 2155588732, i64 2155588790, i64 2155588844, i64 2155588898, i64 2155588953, i64 2155588984, i64 2155589292, i64 2155589298, i64 2155589345, i64 2155589368, i64 2155589394}
!6156 = !DILocation(line: 191, column: 2, scope: !6157)
!6157 = distinct !DILexicalBlock(scope: !6127, file: !4225, line: 191, column: 2)
!6158 = !DILocation(line: 191, column: 2, scope: !6115)
!6159 = !DILocation(line: 192, column: 21, scope: !6115)
!6160 = !DILocation(line: 192, column: 30, scope: !6115)
!6161 = !DILocation(line: 192, column: 2, scope: !6115)
!6162 = !DILocation(line: 194, column: 2, scope: !6115)
!6163 = !{i64 2155590911, i64 2155590944, i64 2155590950, i64 2155590965, i64 2155590984, i64 2155591015, i64 2155593642, i64 2155590155, i64 2155593648, i64 2155593696, i64 2155593760, i64 2155593824, i64 2155593881, i64 2155594088, i64 2155594136, i64 2155594200, i64 2155594264, i64 2155594321, i64 2155594528, i64 2155594576, i64 2155594640, i64 2155594704, i64 2155594761, i64 2155590309, i64 2155590334, i64 2155594968, i64 2155595116, i64 2155595029, i64 2155595130, i64 2155595144, i64 2155595292, i64 2155595205, i64 2155595306, i64 2155595320, i64 2155595468, i64 2155595381, i64 2155595482, i64 2155590506, i64 2155589808, i64 2155589827, i64 2155589862, i64 2155595496, i64 2155595542, i64 2155595567, i64 2155595602, i64 2155595928, i64 2155595981, i64 2155596012, i64 2155596043, i64 2155596121, i64 2155596155, i64 2155596193, i64 2155596236, i64 2155596259, i64 2155596297, i64 2155596319, i64 2155596350, i64 2155596435, i64 2155596469, i64 2155596507, i64 2155596550, i64 2155596573, i64 2155596611, i64 2155596633, i64 2155596667, i64 2155596729, i64 2155596752, i64 2155595668, i64 2155596870, i64 2155595779}
!6164 = !DILocation(line: 197, column: 2, scope: !6130)
!6165 = !DILocation(line: 197, column: 2, scope: !6133)
!6166 = !DILocation(line: 197, column: 2, scope: !6132)
!6167 = !DILocation(line: 197, column: 2, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6132, file: !4225, line: 197, column: 2)
!6169 = !DILocation(line: 197, column: 2, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6132, file: !4225, line: 197, column: 2)
!6171 = !{i64 2155597456, i64 2155597485, i64 2155597531, i64 2155597589, i64 2155597643, i64 2155597697, i64 2155597752, i64 2155597783, i64 2155598091, i64 2155598097, i64 2155598144, i64 2155598167, i64 2155598193}
!6172 = !DILocation(line: 197, column: 2, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6132, file: !4225, line: 197, column: 2)
!6174 = !DILocation(line: 197, column: 2, scope: !6115)
!6175 = !DILocation(line: 198, column: 1, scope: !6115)
!6176 = distinct !DISubprogram(name: "set_ti_thread_flag", scope: !4444, file: !4444, line: 87, type: !5405, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6177)
!6177 = !{!6178, !6179}
!6178 = !DILocalVariable(name: "ti", arg: 1, scope: !6176, file: !4444, line: 87, type: !339)
!6179 = !DILocalVariable(name: "flag", arg: 2, scope: !6176, file: !4444, line: 87, type: !367)
!6180 = !DILocation(line: 87, column: 59, scope: !6176)
!6181 = !DILocation(line: 87, column: 67, scope: !6176)
!6182 = !DILocation(line: 89, column: 10, scope: !6176)
!6183 = !DILocation(line: 89, column: 34, scope: !6176)
!6184 = !DILocation(line: 89, column: 38, scope: !6176)
!6185 = !DILocation(line: 89, column: 2, scope: !6176)
!6186 = !DILocation(line: 90, column: 1, scope: !6176)
!6187 = distinct !DISubprogram(name: "__fpu_invalidate_fpregs_state", scope: !2, file: !2, line: 31, type: !26, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6188)
!6188 = !{!6189}
!6189 = !DILocalVariable(name: "fpu", arg: 1, scope: !6187, file: !2, line: 31, type: !28)
!6190 = !DILocation(line: 31, column: 62, scope: !6187)
!6191 = !DILocation(line: 33, column: 2, scope: !6187)
!6192 = !DILocation(line: 33, column: 7, scope: !6187)
!6193 = !DILocation(line: 33, column: 16, scope: !6187)
!6194 = !DILocation(line: 34, column: 1, scope: !6187)
!6195 = distinct !DISubprogram(name: "__cpu_invalidate_fpregs_state", scope: !2, file: !2, line: 26, type: !2588, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6196)
!6196 = !{!6197, !6201}
!6197 = !DILocalVariable(name: "__vpp_verify", scope: !6198, file: !2, line: 28, type: !2081)
!6198 = distinct !DILexicalBlock(scope: !6199, file: !2, line: 28, column: 2)
!6199 = distinct !DILexicalBlock(scope: !6200, file: !2, line: 28, column: 2)
!6200 = distinct !DILexicalBlock(scope: !6195, file: !2, line: 28, column: 2)
!6201 = !DILocalVariable(name: "pto_val__", scope: !6202, file: !2, line: 28, type: !43)
!6202 = distinct !DILexicalBlock(scope: !6199, file: !2, line: 28, column: 2)
!6203 = !DILocation(line: 28, column: 2, scope: !6200)
!6204 = !DILocation(line: 28, column: 2, scope: !6199)
!6205 = !DILocation(line: 28, column: 2, scope: !6198)
!6206 = !DILocation(line: 28, column: 2, scope: !6202)
!6207 = !{i64 2155437567}
!6208 = !DILocation(line: 29, column: 1, scope: !6195)
!6209 = !DISubprogram(name: "copy_sigframe_from_user_to_xstate", scope: !4225, file: !4225, line: 51, type: !6210, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6210 = !DISubroutineType(types: !6211)
!6211 = !{!367, !348, !2081}
!6212 = !DISubprogram(name: "convert_to_fxsr", scope: !4883, file: !4883, line: 23, type: !6213, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6213 = !DISubroutineType(types: !6214)
!6214 = !{null, !4187, !6215}
!6215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6216, size: 64)
!6216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4565)
!6217 = distinct !DISubprogram(name: "os_xrstor_safe", scope: !4225, file: !4225, line: 314, type: !6218, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6220)
!6218 = !DISubroutineType(types: !6219)
!6219 = !{!367, !37, !43}
!6220 = !{!6221, !6222, !6223, !6224, !6225, !6226}
!6221 = !DILocalVariable(name: "fpstate", arg: 1, scope: !6217, file: !4225, line: 314, type: !37)
!6222 = !DILocalVariable(name: "mask", arg: 2, scope: !6217, file: !4225, line: 314, type: !43)
!6223 = !DILocalVariable(name: "xstate", scope: !6217, file: !4225, line: 316, type: !4191)
!6224 = !DILocalVariable(name: "lmask", scope: !6217, file: !4225, line: 317, type: !61)
!6225 = !DILocalVariable(name: "hmask", scope: !6217, file: !4225, line: 318, type: !61)
!6226 = !DILocalVariable(name: "err", scope: !6217, file: !4225, line: 319, type: !367)
!6227 = !DILocation(line: 314, column: 50, scope: !6217)
!6228 = !DILocation(line: 314, column: 63, scope: !6217)
!6229 = !DILocation(line: 316, column: 2, scope: !6217)
!6230 = !DILocation(line: 316, column: 22, scope: !6217)
!6231 = !DILocation(line: 316, column: 32, scope: !6217)
!6232 = !DILocation(line: 316, column: 41, scope: !6217)
!6233 = !DILocation(line: 317, column: 2, scope: !6217)
!6234 = !DILocation(line: 317, column: 6, scope: !6217)
!6235 = !DILocation(line: 317, column: 14, scope: !6217)
!6236 = !DILocation(line: 318, column: 2, scope: !6217)
!6237 = !DILocation(line: 318, column: 6, scope: !6217)
!6238 = !DILocation(line: 318, column: 14, scope: !6217)
!6239 = !DILocation(line: 318, column: 19, scope: !6217)
!6240 = !DILocation(line: 319, column: 2, scope: !6217)
!6241 = !DILocation(line: 319, column: 6, scope: !6217)
!6242 = !DILocation(line: 322, column: 19, scope: !6217)
!6243 = !DILocation(line: 322, column: 2, scope: !6217)
!6244 = !DILocation(line: 324, column: 6, scope: !6217)
!6245 = !DILocation(line: 324, column: 6, scope: !6246)
!6246 = distinct !DILexicalBlock(scope: !6217, file: !4225, line: 324, column: 6)
!6247 = !DILocation(line: 325, column: 3, scope: !6246)
!6248 = !{i64 2155621918, i64 2155621929, i64 2155621982, i64 2155621986, i64 2155622324, i64 2155622347, i64 2155622380, i64 2155622411, i64 2155622450}
!6249 = !DILocation(line: 327, column: 3, scope: !6246)
!6250 = !{i64 2155622523, i64 2155622534, i64 2155622587, i64 2155622591, i64 2155622929, i64 2155622952, i64 2155622985, i64 2155623016, i64 2155623055}
!6251 = !DILocation(line: 329, column: 9, scope: !6217)
!6252 = !DILocation(line: 330, column: 1, scope: !6217)
!6253 = !DILocation(line: 329, column: 2, scope: !6217)
!6254 = distinct !DISubprogram(name: "fxrstor_safe", scope: !5658, file: !5658, line: 72, type: !5659, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6255)
!6255 = !{!6256, !6257}
!6256 = !DILocalVariable(name: "fx", arg: 1, scope: !6254, file: !5658, line: 72, type: !4187)
!6257 = !DILocalVariable(name: "err", scope: !6258, file: !5658, line: 77, type: !367)
!6258 = distinct !DILexicalBlock(scope: !6259, file: !5658, line: 77, column: 10)
!6259 = distinct !DILexicalBlock(scope: !6254, file: !5658, line: 74, column: 6)
!6260 = !DILocation(line: 72, column: 53, scope: !6254)
!6261 = !DILocation(line: 77, column: 10, scope: !6258)
!6262 = !{i64 2155512730, i64 2155512744, i64 2155512974, i64 2155513020, i64 2155513045, i64 2155513080, i64 2155513402, i64 2155513455, i64 2155513486, i64 2155513517, i64 2155513595, i64 2155513629, i64 2155513667, i64 2155513710, i64 2155513733, i64 2155513771, i64 2155513793, i64 2155513824, i64 2155513909, i64 2155513943, i64 2155513981, i64 2155514024, i64 2155514047, i64 2155514085, i64 2155514107, i64 2155514141, i64 2155514203, i64 2155514226, i64 2155513146, i64 2155514342, i64 2155513257}
!6263 = !DILocation(line: 77, column: 10, scope: !6259)
!6264 = !DILocation(line: 77, column: 3, scope: !6259)
!6265 = !DISubprogram(name: "fpregs_mark_activate", scope: !4439, file: !4439, line: 32, type: !2588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6266 = !DILocation(line: 87, column: 1, scope: !4197)
!6267 = !DILocation(line: 87, column: 1, scope: !4202)
!6268 = !DILocation(line: 87, column: 1, scope: !4201)
!6269 = !DILocation(line: 87, column: 1, scope: !4204)
!6270 = !DILocation(line: 87, column: 1, scope: !4207)
!6271 = !DILocation(line: 87, column: 1, scope: !4209)
!6272 = !{i64 2155383985}
!6273 = !DILocation(line: 87, column: 1, scope: !4205)
!6274 = !DILocation(line: 87, column: 1, scope: !4211)
!6275 = !DILocation(line: 87, column: 1, scope: !4215)
!6276 = !DILocation(line: 87, column: 1, scope: !4214)
!6277 = !DILocation(line: 87, column: 1, scope: !6278)
!6278 = distinct !DILexicalBlock(scope: !4214, file: !19, line: 87, column: 1)
!6279 = !DILocation(line: 87, column: 1, scope: !6280)
!6280 = distinct !DILexicalBlock(scope: !4214, file: !19, line: 87, column: 1)
!6281 = !{i64 2155385182, i64 2155385211, i64 2155385257, i64 2155385315, i64 2155385369, i64 2155385423, i64 2155385478, i64 2155385509, i64 2155385817, i64 2155385823, i64 2155385870, i64 2155385893, i64 2155385919}
!6282 = !DILocation(line: 87, column: 1, scope: !6283)
!6283 = distinct !DILexicalBlock(scope: !4214, file: !19, line: 87, column: 1)
!6284 = !DILocation(line: 87, column: 1, scope: !4212)
!6285 = !DILocation(line: 87, column: 1, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !4201, file: !19, line: 87, column: 1)
!6287 = !{i64 2155386275}
!6288 = !DILocation(line: 87, column: 1, scope: !4217)
!6289 = !DILocation(line: 87, column: 1, scope: !4220)
!6290 = !DILocation(line: 87, column: 1, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !4220, file: !19, line: 87, column: 1)
!6292 = !DILocation(line: 87, column: 1, scope: !6293)
!6293 = distinct !DILexicalBlock(scope: !6291, file: !19, line: 87, column: 1)
!6294 = !DILocation(line: 87, column: 1, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !4217, file: !19, line: 87, column: 1)
!6296 = !DILocation(line: 87, column: 1, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6295, file: !19, line: 87, column: 1)
!6298 = !DILocation(line: 87, column: 1, scope: !6299)
!6299 = distinct !DILexicalBlock(scope: !6297, file: !19, line: 87, column: 1)
!6300 = !DILocation(line: 87, column: 1, scope: !6301)
!6301 = distinct !DILexicalBlock(scope: !4201, file: !19, line: 87, column: 1)
!6302 = !{i64 2155393415}
!6303 = !DILocation(line: 87, column: 1, scope: !6304)
!6304 = distinct !DILexicalBlock(scope: !6301, file: !19, line: 87, column: 1)
!6305 = !DILocation(line: 87, column: 1, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6304, file: !19, line: 87, column: 1)
!6307 = !{i64 2155393574}
!6308 = distinct !DISubprogram(name: "xfd_update_state", scope: !4225, file: !4225, line: 157, type: !6116, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6309)
!6309 = !{!6310, !6311, !6314, !6318, !6320}
!6310 = !DILocalVariable(name: "fpstate", arg: 1, scope: !6308, file: !4225, line: 157, type: !37)
!6311 = !DILocalVariable(name: "xfd", scope: !6312, file: !4225, line: 160, type: !43)
!6312 = distinct !DILexicalBlock(scope: !6313, file: !4225, line: 159, column: 32)
!6313 = distinct !DILexicalBlock(scope: !6308, file: !4225, line: 159, column: 6)
!6314 = !DILocalVariable(name: "pscr_ret__", scope: !6315, file: !4225, line: 162, type: !43)
!6315 = distinct !DILexicalBlock(scope: !6316, file: !4225, line: 162, column: 7)
!6316 = distinct !DILexicalBlock(scope: !6317, file: !4225, line: 162, column: 7)
!6317 = distinct !DILexicalBlock(scope: !6312, file: !4225, line: 162, column: 7)
!6318 = !DILocalVariable(name: "__vpp_verify", scope: !6319, file: !4225, line: 162, type: !2081)
!6319 = distinct !DILexicalBlock(scope: !6315, file: !4225, line: 162, column: 7)
!6320 = !DILocalVariable(name: "pfo_val__", scope: !6321, file: !4225, line: 162, type: !43)
!6321 = distinct !DILexicalBlock(scope: !6315, file: !4225, line: 162, column: 7)
!6322 = !DILocation(line: 157, column: 53, scope: !6308)
!6323 = !DILocation(line: 159, column: 6, scope: !6313)
!6324 = !DILocation(line: 159, column: 6, scope: !6308)
!6325 = !DILocation(line: 160, column: 3, scope: !6312)
!6326 = !DILocation(line: 160, column: 7, scope: !6312)
!6327 = !DILocation(line: 160, column: 13, scope: !6312)
!6328 = !DILocation(line: 160, column: 22, scope: !6312)
!6329 = !DILocation(line: 162, column: 7, scope: !6316)
!6330 = !DILocation(line: 162, column: 7, scope: !6315)
!6331 = !DILocation(line: 162, column: 7, scope: !6319)
!6332 = !DILocation(line: 162, column: 7, scope: !6321)
!6333 = !{i64 2155587723}
!6334 = !DILocation(line: 162, column: 37, scope: !6317)
!6335 = !DILocation(line: 162, column: 34, scope: !6317)
!6336 = !DILocation(line: 162, column: 7, scope: !6312)
!6337 = !DILocation(line: 163, column: 18, scope: !6317)
!6338 = !DILocation(line: 163, column: 4, scope: !6317)
!6339 = !DILocation(line: 164, column: 2, scope: !6313)
!6340 = !DILocation(line: 164, column: 2, scope: !6312)
!6341 = !DILocation(line: 165, column: 1, scope: !6308)
!6342 = distinct !DISubprogram(name: "__restore_fpregs_from_user", scope: !228, file: !228, line: 251, type: !6343, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6345)
!6343 = !DISubroutineType(types: !6344)
!6344 = !{!367, !355, !43, !43, !949}
!6345 = !{!6346, !6347, !6348, !6349, !6350, !6353}
!6346 = !DILocalVariable(name: "buf", arg: 1, scope: !6342, file: !228, line: 251, type: !355)
!6347 = !DILocalVariable(name: "ufeatures", arg: 2, scope: !6342, file: !228, line: 251, type: !43)
!6348 = !DILocalVariable(name: "xrestore", arg: 3, scope: !6342, file: !228, line: 252, type: !43)
!6349 = !DILocalVariable(name: "fx_only", arg: 4, scope: !6342, file: !228, line: 252, type: !949)
!6350 = !DILocalVariable(name: "init_bv", scope: !6351, file: !228, line: 255, type: !43)
!6351 = distinct !DILexicalBlock(scope: !6352, file: !228, line: 254, column: 19)
!6352 = distinct !DILexicalBlock(scope: !6342, file: !228, line: 254, column: 6)
!6353 = !DILocalVariable(name: "ret", scope: !6351, file: !228, line: 256, type: !367)
!6354 = !DILocation(line: 251, column: 52, scope: !6342)
!6355 = !DILocation(line: 251, column: 61, scope: !6342)
!6356 = !DILocation(line: 252, column: 15, scope: !6342)
!6357 = !DILocation(line: 252, column: 30, scope: !6342)
!6358 = !DILocation(line: 254, column: 6, scope: !6352)
!6359 = !DILocation(line: 254, column: 6, scope: !6342)
!6360 = !DILocation(line: 255, column: 3, scope: !6351)
!6361 = !DILocation(line: 255, column: 7, scope: !6351)
!6362 = !DILocation(line: 255, column: 17, scope: !6351)
!6363 = !DILocation(line: 255, column: 30, scope: !6351)
!6364 = !DILocation(line: 255, column: 29, scope: !6351)
!6365 = !DILocation(line: 255, column: 27, scope: !6351)
!6366 = !DILocation(line: 256, column: 3, scope: !6351)
!6367 = !DILocation(line: 256, column: 7, scope: !6351)
!6368 = !DILocation(line: 258, column: 7, scope: !6369)
!6369 = distinct !DILexicalBlock(scope: !6351, file: !228, line: 258, column: 7)
!6370 = !DILocation(line: 258, column: 7, scope: !6351)
!6371 = !DILocation(line: 259, column: 36, scope: !6369)
!6372 = !DILocation(line: 259, column: 41, scope: !6369)
!6373 = !DILocation(line: 259, column: 10, scope: !6369)
!6374 = !DILocation(line: 259, column: 8, scope: !6369)
!6375 = !DILocation(line: 259, column: 4, scope: !6369)
!6376 = !DILocation(line: 261, column: 37, scope: !6369)
!6377 = !DILocation(line: 261, column: 10, scope: !6369)
!6378 = !DILocation(line: 261, column: 8, scope: !6369)
!6379 = !DILocation(line: 263, column: 8, scope: !6380)
!6380 = distinct !DILexicalBlock(scope: !6351, file: !228, line: 263, column: 7)
!6381 = !DILocation(line: 263, column: 12, scope: !6380)
!6382 = !DILocation(line: 263, column: 15, scope: !6380)
!6383 = !DILocation(line: 263, column: 7, scope: !6351)
!6384 = !DILocation(line: 264, column: 29, scope: !6380)
!6385 = !DILocation(line: 264, column: 4, scope: !6380)
!6386 = !DILocation(line: 265, column: 10, scope: !6351)
!6387 = !DILocation(line: 265, column: 3, scope: !6351)
!6388 = !DILocation(line: 266, column: 2, scope: !6352)
!6389 = !DILocation(line: 266, column: 13, scope: !6390)
!6390 = distinct !DILexicalBlock(scope: !6352, file: !228, line: 266, column: 13)
!6391 = !DILocation(line: 266, column: 13, scope: !6352)
!6392 = !DILocation(line: 267, column: 37, scope: !6393)
!6393 = distinct !DILexicalBlock(scope: !6390, file: !228, line: 266, column: 25)
!6394 = !DILocation(line: 267, column: 10, scope: !6393)
!6395 = !DILocation(line: 267, column: 3, scope: !6393)
!6396 = !DILocation(line: 269, column: 36, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6390, file: !228, line: 268, column: 9)
!6398 = !DILocation(line: 269, column: 10, scope: !6397)
!6399 = !DILocation(line: 269, column: 3, scope: !6397)
!6400 = !DILocation(line: 271, column: 1, scope: !6342)
!6401 = !DISubprogram(name: "fault_in_readable", scope: !1871, file: !1871, line: 1212, type: !6402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6402 = !DISubroutineType(types: !6403)
!6403 = !{!1264, !952, !1264}
!6404 = distinct !DISubprogram(name: "os_xrstor_supervisor", scope: !4225, file: !4225, line: 215, type: !6116, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6405)
!6405 = !{!6406, !6407, !6408, !6409}
!6406 = !DILocalVariable(name: "fpstate", arg: 1, scope: !6404, file: !4225, line: 215, type: !37)
!6407 = !DILocalVariable(name: "mask", scope: !6404, file: !4225, line: 217, type: !43)
!6408 = !DILocalVariable(name: "lmask", scope: !6404, file: !4225, line: 218, type: !61)
!6409 = !DILocalVariable(name: "hmask", scope: !6404, file: !4225, line: 219, type: !61)
!6410 = !DILocation(line: 215, column: 57, scope: !6404)
!6411 = !DILocation(line: 217, column: 2, scope: !6404)
!6412 = !DILocation(line: 217, column: 6, scope: !6404)
!6413 = !DILocation(line: 217, column: 13, scope: !6404)
!6414 = !DILocation(line: 218, column: 2, scope: !6404)
!6415 = !DILocation(line: 218, column: 6, scope: !6404)
!6416 = !DILocation(line: 218, column: 14, scope: !6404)
!6417 = !DILocation(line: 219, column: 2, scope: !6404)
!6418 = !DILocation(line: 219, column: 6, scope: !6404)
!6419 = !DILocation(line: 219, column: 14, scope: !6404)
!6420 = !DILocation(line: 219, column: 19, scope: !6404)
!6421 = !DILocation(line: 221, column: 2, scope: !6404)
!6422 = !{i64 2155601556, i64 2155601584, i64 2155601590, i64 2155601606, i64 2155601622, i64 2155601649, i64 2155601995, i64 2155601159, i64 2155602001, i64 2155602049, i64 2155602113, i64 2155602177, i64 2155602234, i64 2155601240, i64 2155601265, i64 2155602441, i64 2155602589, i64 2155602502, i64 2155602603, i64 2155601357, i64 2155600891, i64 2155600910, i64 2155602617, i64 2155602661, i64 2155602684, i64 2155602717, i64 2155602748, i64 2155602787}
!6423 = !DILocation(line: 222, column: 1, scope: !6404)
!6424 = distinct !DISubprogram(name: "xfd_set_state", scope: !4225, file: !4225, line: 151, type: !6425, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6427)
!6425 = !DISubroutineType(types: !6426)
!6426 = !{null, !43}
!6427 = !{!6428, !6429, !6433}
!6428 = !DILocalVariable(name: "xfd", arg: 1, scope: !6424, file: !4225, line: 151, type: !43)
!6429 = !DILocalVariable(name: "__vpp_verify", scope: !6430, file: !4225, line: 154, type: !2081)
!6430 = distinct !DILexicalBlock(scope: !6431, file: !4225, line: 154, column: 2)
!6431 = distinct !DILexicalBlock(scope: !6432, file: !4225, line: 154, column: 2)
!6432 = distinct !DILexicalBlock(scope: !6424, file: !4225, line: 154, column: 2)
!6433 = !DILocalVariable(name: "pto_val__", scope: !6434, file: !4225, line: 154, type: !43)
!6434 = distinct !DILexicalBlock(scope: !6431, file: !4225, line: 154, column: 2)
!6435 = !DILocation(line: 151, column: 38, scope: !6424)
!6436 = !DILocation(line: 153, column: 23, scope: !6424)
!6437 = !DILocation(line: 153, column: 2, scope: !6424)
!6438 = !DILocation(line: 154, column: 2, scope: !6432)
!6439 = !DILocation(line: 154, column: 2, scope: !6431)
!6440 = !DILocation(line: 154, column: 2, scope: !6430)
!6441 = !DILocation(line: 154, column: 2, scope: !6434)
!6442 = !{i64 2155584426}
!6443 = !DILocation(line: 155, column: 1, scope: !6424)
!6444 = distinct !DISubprogram(name: "wrmsrl", scope: !6445, file: !6445, line: 260, type: !6446, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6448)
!6445 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!6446 = !DISubroutineType(types: !6447)
!6447 = !{null, !33, !43}
!6448 = !{!6449, !6450}
!6449 = !DILocalVariable(name: "msr", arg: 1, scope: !6444, file: !6445, line: 260, type: !33)
!6450 = !DILocalVariable(name: "val", arg: 2, scope: !6444, file: !6445, line: 260, type: !43)
!6451 = !DILocation(line: 260, column: 40, scope: !6444)
!6452 = !DILocation(line: 260, column: 49, scope: !6444)
!6453 = !DILocation(line: 262, column: 19, scope: !6444)
!6454 = !DILocation(line: 262, column: 30, scope: !6444)
!6455 = !DILocation(line: 262, column: 34, scope: !6444)
!6456 = !DILocation(line: 262, column: 24, scope: !6444)
!6457 = !DILocation(line: 262, column: 58, scope: !6444)
!6458 = !DILocation(line: 262, column: 62, scope: !6444)
!6459 = !DILocation(line: 262, column: 52, scope: !6444)
!6460 = !DILocation(line: 262, column: 2, scope: !6444)
!6461 = !DILocation(line: 263, column: 1, scope: !6444)
!6462 = distinct !DISubprogram(name: "native_write_msr", scope: !6445, file: !6445, line: 143, type: !6463, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6465)
!6463 = !DISubroutineType(types: !6464)
!6464 = !{null, !33, !61, !61}
!6465 = !{!6466, !6467, !6468}
!6466 = !DILocalVariable(name: "msr", arg: 1, scope: !6462, file: !6445, line: 143, type: !33)
!6467 = !DILocalVariable(name: "low", arg: 2, scope: !6462, file: !6445, line: 143, type: !61)
!6468 = !DILocalVariable(name: "high", arg: 3, scope: !6462, file: !6445, line: 143, type: !61)
!6469 = !DILocation(line: 143, column: 31, scope: !6462)
!6470 = !DILocation(line: 143, column: 40, scope: !6462)
!6471 = !DILocation(line: 143, column: 49, scope: !6462)
!6472 = !DILocation(line: 145, column: 10, scope: !6462)
!6473 = !DILocation(line: 145, column: 15, scope: !6462)
!6474 = !DILocation(line: 145, column: 20, scope: !6462)
!6475 = !DILocation(line: 145, column: 2, scope: !6462)
!6476 = !DILocation(line: 147, column: 6, scope: !6477)
!6477 = distinct !DILexicalBlock(scope: !6462, file: !6445, line: 147, column: 6)
!6478 = !DILocation(line: 147, column: 6, scope: !6462)
!6479 = !DILocation(line: 148, column: 22, scope: !6477)
!6480 = !DILocation(line: 148, column: 33, scope: !6477)
!6481 = !DILocation(line: 148, column: 28, scope: !6477)
!6482 = !DILocation(line: 148, column: 38, scope: !6477)
!6483 = !DILocation(line: 148, column: 46, scope: !6477)
!6484 = !DILocation(line: 148, column: 44, scope: !6477)
!6485 = !DILocation(line: 148, column: 3, scope: !6477)
!6486 = !DILocation(line: 149, column: 1, scope: !6462)
!6487 = distinct !DISubprogram(name: "__wrmsr", scope: !6445, file: !6445, line: 92, type: !6463, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6488)
!6488 = !{!6489, !6490, !6491}
!6489 = !DILocalVariable(name: "msr", arg: 1, scope: !6487, file: !6445, line: 92, type: !33)
!6490 = !DILocalVariable(name: "low", arg: 2, scope: !6487, file: !6445, line: 92, type: !61)
!6491 = !DILocalVariable(name: "high", arg: 3, scope: !6487, file: !6445, line: 92, type: !61)
!6492 = !DILocation(line: 92, column: 50, scope: !6487)
!6493 = !DILocation(line: 92, column: 59, scope: !6487)
!6494 = !DILocation(line: 92, column: 68, scope: !6487)
!6495 = !DILocation(line: 97, column: 17, scope: !6487)
!6496 = !DILocation(line: 97, column: 27, scope: !6487)
!6497 = !DILocation(line: 97, column: 38, scope: !6487)
!6498 = !DILocation(line: 94, column: 2, scope: !6487)
!6499 = !{i64 1011952, i64 1011973, i64 2149228428, i64 2149228472, i64 2149228495, i64 2149228528, i64 2149228559, i64 2149228598}
!6500 = !DILocation(line: 98, column: 1, scope: !6487)
!6501 = !DISubprogram(name: "do_trace_write_msr", scope: !6445, file: !6445, line: 64, type: !6502, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6502 = !DISubroutineType(types: !6503)
!6503 = !{null, !33, !43, !367}
!6504 = distinct !DISubprogram(name: "xrstor_from_user_sigframe", scope: !4225, file: !4225, line: 294, type: !6505, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6507)
!6505 = !DISubroutineType(types: !6506)
!6506 = !{!367, !4191, !43}
!6507 = !{!6508, !6509, !6510, !6511, !6512, !6513}
!6508 = !DILocalVariable(name: "buf", arg: 1, scope: !6504, file: !4225, line: 294, type: !4191)
!6509 = !DILocalVariable(name: "mask", arg: 2, scope: !6504, file: !4225, line: 294, type: !43)
!6510 = !DILocalVariable(name: "xstate", scope: !6504, file: !4225, line: 296, type: !4191)
!6511 = !DILocalVariable(name: "lmask", scope: !6504, file: !4225, line: 297, type: !61)
!6512 = !DILocalVariable(name: "hmask", scope: !6504, file: !4225, line: 298, type: !61)
!6513 = !DILocalVariable(name: "err", scope: !6504, file: !4225, line: 299, type: !367)
!6514 = !DILocation(line: 294, column: 72, scope: !6504)
!6515 = !DILocation(line: 294, column: 81, scope: !6504)
!6516 = !DILocation(line: 296, column: 2, scope: !6504)
!6517 = !DILocation(line: 296, column: 22, scope: !6504)
!6518 = !DILocation(line: 296, column: 62, scope: !6504)
!6519 = !DILocation(line: 297, column: 2, scope: !6504)
!6520 = !DILocation(line: 297, column: 6, scope: !6504)
!6521 = !DILocation(line: 297, column: 14, scope: !6504)
!6522 = !DILocation(line: 298, column: 2, scope: !6504)
!6523 = !DILocation(line: 298, column: 6, scope: !6504)
!6524 = !DILocation(line: 298, column: 14, scope: !6504)
!6525 = !DILocation(line: 298, column: 19, scope: !6504)
!6526 = !DILocation(line: 299, column: 2, scope: !6504)
!6527 = !DILocation(line: 299, column: 6, scope: !6504)
!6528 = !DILocation(line: 301, column: 21, scope: !6504)
!6529 = !DILocation(line: 301, column: 30, scope: !6504)
!6530 = !DILocation(line: 301, column: 37, scope: !6504)
!6531 = !DILocation(line: 301, column: 41, scope: !6504)
!6532 = !DILocation(line: 301, column: 50, scope: !6504)
!6533 = !DILocation(line: 301, column: 2, scope: !6504)
!6534 = !DILocation(line: 303, column: 2, scope: !6504)
!6535 = !DILocation(line: 304, column: 2, scope: !6504)
!6536 = !{i64 2155604890, i64 2155604901, i64 2155604954, i64 2155604958, i64 2155605296, i64 2155605319, i64 2155605352, i64 2155605383, i64 2155605422}
!6537 = !DILocation(line: 305, column: 2, scope: !6504)
!6538 = !DILocation(line: 307, column: 9, scope: !6504)
!6539 = !DILocation(line: 308, column: 1, scope: !6504)
!6540 = !DILocation(line: 307, column: 2, scope: !6504)
!6541 = distinct !DISubprogram(name: "fxrstor_from_user_sigframe", scope: !5658, file: !5658, line: 80, type: !5659, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6542)
!6542 = !{!6543, !6544}
!6543 = !DILocalVariable(name: "fx", arg: 1, scope: !6541, file: !5658, line: 80, type: !4187)
!6544 = !DILocalVariable(name: "err", scope: !6545, file: !5658, line: 85, type: !367)
!6545 = distinct !DILexicalBlock(scope: !6546, file: !5658, line: 85, column: 10)
!6546 = distinct !DILexicalBlock(scope: !6541, file: !5658, line: 82, column: 6)
!6547 = !DILocation(line: 80, column: 74, scope: !6541)
!6548 = !DILocation(line: 85, column: 10, scope: !6545)
!6549 = !{i64 2155519351, i64 2155519379, i64 2155519385, i64 2155519401, i64 2155519417, i64 2155519444, i64 2155519758, i64 2155519067, i64 2155519764, i64 2155519812, i64 2155519876, i64 2155519940, i64 2155519997, i64 2155519148, i64 2155519173, i64 2155520204, i64 2155520340, i64 2155520265, i64 2155520354, i64 2155519265, i64 2155518728, i64 2155518746, i64 2155518776, i64 2155520756, i64 2155520762, i64 2155520778, i64 2155520794, i64 2155520821, i64 2155521135, i64 2155520444, i64 2155521141, i64 2155521189, i64 2155521253, i64 2155521317, i64 2155521374, i64 2155520525, i64 2155520550, i64 2155521581, i64 2155521717, i64 2155521642, i64 2155521731, i64 2155520642, i64 2155518791, i64 2155521745, i64 2155521789, i64 2155521812, i64 2155521845, i64 2155521876, i64 2155521915}
!6550 = !DILocation(line: 85, column: 10, scope: !6546)
!6551 = !DILocation(line: 85, column: 3, scope: !6546)
!6552 = distinct !DISubprogram(name: "os_xrstor", scope: !4225, file: !4225, line: 205, type: !5384, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6553)
!6553 = !{!6554, !6555, !6556, !6557}
!6554 = !DILocalVariable(name: "fpstate", arg: 1, scope: !6552, file: !4225, line: 205, type: !37)
!6555 = !DILocalVariable(name: "mask", arg: 2, scope: !6552, file: !4225, line: 205, type: !43)
!6556 = !DILocalVariable(name: "lmask", scope: !6552, file: !4225, line: 207, type: !61)
!6557 = !DILocalVariable(name: "hmask", scope: !6552, file: !4225, line: 208, type: !61)
!6558 = !DILocation(line: 205, column: 46, scope: !6552)
!6559 = !DILocation(line: 205, column: 59, scope: !6552)
!6560 = !DILocation(line: 207, column: 2, scope: !6552)
!6561 = !DILocation(line: 207, column: 6, scope: !6552)
!6562 = !DILocation(line: 207, column: 14, scope: !6552)
!6563 = !DILocation(line: 208, column: 2, scope: !6552)
!6564 = !DILocation(line: 208, column: 6, scope: !6552)
!6565 = !DILocation(line: 208, column: 14, scope: !6552)
!6566 = !DILocation(line: 208, column: 19, scope: !6552)
!6567 = !DILocation(line: 210, column: 21, scope: !6552)
!6568 = !DILocation(line: 210, column: 30, scope: !6552)
!6569 = !DILocation(line: 210, column: 2, scope: !6552)
!6570 = !DILocation(line: 211, column: 2, scope: !6552)
!6571 = !{i64 2155599354, i64 2155599382, i64 2155599388, i64 2155599404, i64 2155599420, i64 2155599447, i64 2155599793, i64 2155598957, i64 2155599799, i64 2155599847, i64 2155599911, i64 2155599975, i64 2155600032, i64 2155599038, i64 2155599063, i64 2155600239, i64 2155600387, i64 2155600300, i64 2155600401, i64 2155599155, i64 2155598689, i64 2155598708, i64 2155600415, i64 2155600459, i64 2155600482, i64 2155600515, i64 2155600546, i64 2155600585}
!6572 = !DILocation(line: 212, column: 1, scope: !6552)
!6573 = distinct !DISubprogram(name: "frstor_from_user_sigframe", scope: !5658, file: !5658, line: 98, type: !5672, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6574)
!6574 = !{!6575, !6576}
!6575 = !DILocalVariable(name: "fx", arg: 1, scope: !6573, file: !5658, line: 98, type: !4188)
!6576 = !DILocalVariable(name: "err", scope: !6577, file: !5658, line: 100, type: !367)
!6577 = distinct !DILexicalBlock(scope: !6573, file: !5658, line: 100, column: 9)
!6578 = !DILocation(line: 98, column: 72, scope: !6573)
!6579 = !DILocation(line: 100, column: 9, scope: !6577)
!6580 = !{i64 2155525305, i64 2155525333, i64 2155525339, i64 2155525355, i64 2155525371, i64 2155525398, i64 2155525712, i64 2155525021, i64 2155525718, i64 2155525766, i64 2155525830, i64 2155525894, i64 2155525951, i64 2155525102, i64 2155525127, i64 2155526158, i64 2155526294, i64 2155526219, i64 2155526308, i64 2155525219, i64 2155524684, i64 2155524702, i64 2155524732, i64 2155526710, i64 2155526716, i64 2155526732, i64 2155526748, i64 2155526775, i64 2155527089, i64 2155526398, i64 2155527095, i64 2155527143, i64 2155527207, i64 2155527271, i64 2155527328, i64 2155526479, i64 2155526504, i64 2155527535, i64 2155527671, i64 2155527596, i64 2155527685, i64 2155526596, i64 2155524747, i64 2155527699, i64 2155527743, i64 2155527766, i64 2155527799, i64 2155527830, i64 2155527869}
!6581 = !DILocation(line: 100, column: 9, scope: !6573)
!6582 = !DILocation(line: 100, column: 2, scope: !6573)
!6583 = distinct !DISubprogram(name: "instrument_copy_from_user_before", scope: !5260, file: !5260, line: 127, type: !6584, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6586)
!6584 = !DISubroutineType(types: !6585)
!6585 = !{null, !2081, !2081, !35}
!6586 = !{!6587, !6588, !6589}
!6587 = !DILocalVariable(name: "to", arg: 1, scope: !6583, file: !5260, line: 127, type: !2081)
!6588 = !DILocalVariable(name: "from", arg: 2, scope: !6583, file: !5260, line: 127, type: !2081)
!6589 = !DILocalVariable(name: "n", arg: 3, scope: !6583, file: !5260, line: 127, type: !35)
!6590 = !DILocation(line: 127, column: 46, scope: !6583)
!6591 = !DILocation(line: 127, column: 69, scope: !6583)
!6592 = !DILocation(line: 127, column: 89, scope: !6583)
!6593 = !DILocation(line: 129, column: 20, scope: !6583)
!6594 = !DILocation(line: 129, column: 24, scope: !6583)
!6595 = !DILocation(line: 129, column: 2, scope: !6583)
!6596 = !DILocation(line: 130, column: 2, scope: !6583)
!6597 = !DILocation(line: 131, column: 1, scope: !6583)
!6598 = distinct !DISubprogram(name: "raw_copy_from_user", scope: !4382, file: !4382, line: 125, type: !5767, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6599)
!6599 = !{!6600, !6601, !6602}
!6600 = !DILocalVariable(name: "dst", arg: 1, scope: !6598, file: !4382, line: 125, type: !355)
!6601 = !DILocalVariable(name: "src", arg: 2, scope: !6598, file: !4382, line: 125, type: !2081)
!6602 = !DILocalVariable(name: "size", arg: 3, scope: !6598, file: !4382, line: 125, type: !35)
!6603 = !DILocation(line: 125, column: 26, scope: !6598)
!6604 = !DILocation(line: 125, column: 50, scope: !6598)
!6605 = !DILocation(line: 125, column: 69, scope: !6598)
!6606 = !DILocation(line: 127, column: 27, scope: !6598)
!6607 = !DILocation(line: 127, column: 48, scope: !6598)
!6608 = !DILocation(line: 127, column: 53, scope: !6598)
!6609 = !DILocation(line: 127, column: 9, scope: !6598)
!6610 = !DILocation(line: 127, column: 2, scope: !6598)
!6611 = distinct !DISubprogram(name: "instrument_copy_from_user_after", scope: !5260, file: !5260, line: 144, type: !6612, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6614)
!6612 = !DISubroutineType(types: !6613)
!6613 = !{null, !2081, !2081, !35, !35}
!6614 = !{!6615, !6616, !6617, !6618}
!6615 = !DILocalVariable(name: "to", arg: 1, scope: !6611, file: !5260, line: 144, type: !2081)
!6616 = !DILocalVariable(name: "from", arg: 2, scope: !6611, file: !5260, line: 144, type: !2081)
!6617 = !DILocalVariable(name: "n", arg: 3, scope: !6611, file: !5260, line: 145, type: !35)
!6618 = !DILocalVariable(name: "left", arg: 4, scope: !6611, file: !5260, line: 145, type: !35)
!6619 = !DILocation(line: 144, column: 45, scope: !6611)
!6620 = !DILocation(line: 144, column: 68, scope: !6611)
!6621 = !DILocation(line: 145, column: 19, scope: !6611)
!6622 = !DILocation(line: 145, column: 36, scope: !6611)
!6623 = !DILocation(line: 147, column: 24, scope: !6611)
!6624 = !DILocation(line: 147, column: 28, scope: !6611)
!6625 = !DILocation(line: 147, column: 32, scope: !6611)
!6626 = !DILocation(line: 147, column: 30, scope: !6611)
!6627 = !DILocation(line: 147, column: 2, scope: !6611)
!6628 = !DILocation(line: 148, column: 1, scope: !6611)
!6629 = distinct !DISubprogram(name: "set_bit", scope: !5546, file: !5546, line: 26, type: !5547, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6630)
!6630 = !{!6631, !6632}
!6631 = !DILocalVariable(name: "nr", arg: 1, scope: !6629, file: !5546, line: 26, type: !144)
!6632 = !DILocalVariable(name: "addr", arg: 2, scope: !6629, file: !5546, line: 26, type: !5549)
!6633 = !DILocation(line: 26, column: 42, scope: !6629)
!6634 = !DILocation(line: 26, column: 70, scope: !6629)
!6635 = !DILocation(line: 28, column: 26, scope: !6629)
!6636 = !DILocation(line: 28, column: 33, scope: !6629)
!6637 = !DILocation(line: 28, column: 31, scope: !6629)
!6638 = !DILocation(line: 28, column: 2, scope: !6629)
!6639 = !DILocation(line: 29, column: 15, scope: !6629)
!6640 = !DILocation(line: 29, column: 19, scope: !6629)
!6641 = !DILocation(line: 29, column: 2, scope: !6629)
!6642 = !DILocation(line: 30, column: 1, scope: !6629)
!6643 = distinct !DISubprogram(name: "arch_set_bit", scope: !5277, file: !5277, line: 52, type: !5547, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !227, retainedNodes: !6644)
!6644 = !{!6645, !6646}
!6645 = !DILocalVariable(name: "nr", arg: 1, scope: !6643, file: !5277, line: 52, type: !144)
!6646 = !DILocalVariable(name: "addr", arg: 2, scope: !6643, file: !5277, line: 52, type: !5549)
!6647 = !DILocation(line: 52, column: 19, scope: !6643)
!6648 = !DILocation(line: 52, column: 47, scope: !6643)
!6649 = !DILocation(line: 54, column: 27, scope: !6650)
!6650 = distinct !DILexicalBlock(scope: !6643, file: !5277, line: 54, column: 6)
!6651 = !DILocation(line: 54, column: 6, scope: !6650)
!6652 = !DILocation(line: 54, column: 6, scope: !6643)
!6653 = !DILocation(line: 56, column: 6, scope: !6654)
!6654 = distinct !DILexicalBlock(scope: !6650, file: !5277, line: 54, column: 32)
!6655 = !DILocation(line: 57, column: 12, scope: !6654)
!6656 = !DILocation(line: 55, column: 3, scope: !6654)
!6657 = !{i64 2148230410, i64 2148230449, i64 2148230470, i64 2148230507, i64 2148230530, i64 2148230400}
!6658 = !DILocation(line: 59, column: 2, scope: !6654)
!6659 = !DILocation(line: 61, column: 8, scope: !6660)
!6660 = distinct !DILexicalBlock(scope: !6650, file: !5277, line: 59, column: 9)
!6661 = !DILocation(line: 61, column: 32, scope: !6660)
!6662 = !DILocation(line: 60, column: 3, scope: !6660)
!6663 = !{i64 2148230695, i64 2148230734, i64 2148230755, i64 2148230792, i64 2148230815, i64 2148230685}
!6664 = !DILocation(line: 63, column: 1, scope: !6643)
